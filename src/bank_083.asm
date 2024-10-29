SECTION "ROM Bank $083", ROMX[$4000], BANK[$83]

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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld l, $11
    dec hl
    inc d
    dec b
    ld a, [bc]
    ld [bc], a
    ld bc, $0000
    call nc, $fd20
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rSC]
    db $fd
    add b
    rst $38
    ldh [rIE], a
    ld a, [bc]
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
    ld [hl+], a
    db $fd
    inc hl
    db $fc
    inc bc
    db $fc
    dec de
    db $e4
    ld e, e
    and h
    ld e, e
    and h
    db $db
    inc h
    call c, $dc20
    jr nz, @-$02

    nop
    cp $00
    jp nc, $f220

    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld a, [c]
    nop
    ld [c], a
    nop
    ldh a, [rP1]
    ret nc

    nop
    or b
    nop
    ldh a, [rP1]
    ret nc

    nop
    ret nc

    nop
    ld d, b
    add b
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    and b
    nop
    ret nc

    nop
    ret nz

    nop
    ret nz

    nop
    ret nc

    nop
    adc b
    nop
    ret


    nop
    adc b
    nop
    ld c, c
    add b
    ret


    nop
    pop bc
    ld [$9069], sp
    db $ed
    db $10
    cp c
    ld b, b
    rst $28
    db $10
    ld a, l
    add d
    jr nz, @+$01

    ld b, d
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ld c, $ff
    or b
    rst $38
    and h
    rst $38
    di
    inc c
    ld a, e
    add h
    rst $38
    inc b
    ei
    inc b
    sbc d
    ld h, l
    ld e, b
    and a
    sbc b
    ld h, a
    ret c

    daa
    nop
    nop
    call nz, $7ec0
    ld a, [hl]
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add b
    ld a, [$fff2]
    db $fd
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
    ld c, a
    cp a
    rst $38
    nop
    cp $00
    push af
    nop
    and [hl]
    nop
    call c, Call_000_1f00
    ldh [rP1], a
    rst $38
    nop
    rst $38
    add [hl]
    ld a, c
    sbc d
    ld h, a
    add hl, hl
    sbc $63
    cp h
    rrca
    ldh a, [$7d]
    and d
    ld [hl], h
    bit 4, e
    sbc h
    ld c, a
    cp b
    rst $18
    and b
    cp $81
    ld a, [$858d]
    ei
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    add e
    rst $38
    rlca
    cp $1f
    cp $37
    ld hl, sp+$6f
    ldh a, [$db]
    inc h
    ld l, d
    sub l
    push af
    ld a, [bc]
    cp a
    ld b, b
    rst $38
    nop
    ccf
    nop
    rra
    nop
    cp a
    nop
    rst $38
    nop
    cp $01
    ld c, b
    or a
    nop
    rst $38
    nop
    cp $00
    rst $38
    add b
    rst $38
    jr nc, @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    xor h
    ld d, e
    ccf
    ret nz

    ld l, a
    sub b
    ld e, l
    and d
    db $fd
    ld [bc], a
    ld hl, sp+$03
    ld a, [c]
    nop
    ld a, [c]
    nop
    ldh a, [rP1]
    ret nz

    nop
    stop
    ld b, b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_083_416e

jr_083_416e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_083_4186

jr_083_4186:
    jr nz, jr_083_4188

jr_083_4188:
    jr nz, jr_083_418a

jr_083_418a:
    and h
    nop
    and h
    nop
    sub b
    nop
    or h
    nop
    or h
    nop
    ld d, h
    and b
    ld a, h
    add b
    rst $08
    jr nc, jr_083_418a

    db $10
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    sub d
    rst $38
    add d
    rst $38
    sbc [hl]
    rst $38
    sbc d
    rst $38
    sub [hl]
    rst $38
    sbc $ff
    rst $18
    rst $38
    rst $18
    rst $38
    ld [bc], a
    jr nz, jr_083_41f9

    nop
    ld a, [bc]
    nop
    ld [c], a
    ldh [rIE], a
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    rst $30
    ldh a, [$93]
    sub b
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
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
    ld a, $ff
    ld b, $cf
    ld b, $1f
    ld b, $6f
    ld b, $8f
    ld b, $ef
    ld b, $0e
    rst $30
    cp a
    rst $08
    scf
    rst $08
    rst $10
    ld l, a
    and a
    ld a, a
    rra
    rst $20
    ld l, a
    sub a
    rst $10
    cpl
    rst $20
    rra
    rst $08
    scf
    sbc d

jr_083_41f9:
    ld h, a
    ld [hl], h
    xor e
    reti


    and [hl]
    ld h, a
    cp b
    ld e, a
    and b
    ld e, a
    ldh [$bf], a
    ret nz

    cp $01
    ld sp, hl
    ld b, $fb
    dec b
    or $29
    rst $08
    ld [hl-], a
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
    ld b, c
    rst $38
    jr nz, @+$01

    inc e
    rst $38
    ldh a, [rIF]
    ret nc

    cpl
    ld h, b
    sub a
    ld [bc], a
    db $ed
    nop
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

    inc b
    rst $38
    ld bc, $60ff
    sbc a
    db $ec
    inc de
    db $fc
    inc bc
    cp h
    inc bc
    ld a, [de]
    add l
    dec c
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    jr nz, jr_083_4254

jr_083_4254:
    jr nz, jr_083_4256

jr_083_4256:
    jr nz, jr_083_4258

jr_083_4258:
    ld bc, $3100
    nop
    or l
    nop
    dec d
    nop
    ld a, h
    ld bc, $00ff
    ld [$da15], a
    dec h
    cp d
    ld b, l
    ld e, h
    and e
    sbc d
    ld h, l
    cp d
    ld b, l
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld c, b
    rst $30
    ld c, b
    rst $30
    add hl, bc
    rst $30
    ld e, c
    rst $30
    ld h, d
    nop
    inc sp
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    add d
    add b
    db $fc
    db $fc
    rst $38
    rrca
    rst $38
    ld c, $3f
    jr c, @+$01

    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    inc bc
    cp $f0
    sbc $e0
    rst $20
    add b
    rst $08
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    nop
    ccf
    nop
    inc sp
    nop
    pop bc
    nop
    ld a, $c0
    add c
    ld a, [hl]
    ld b, $fb
    inc d

Jump_083_42bd:
    ei
    ld a, b
    adc a
    sub c
    ld l, a
    and a
    ld e, b
    ld c, e
    or h
    sbc l
    ld h, [hl]
    ld a, [hl-]
    call $0bf4
    pop af
    rrca
    push hl
    ld e, $ca
    ld [hl], l
    sbc e
    db $76
    inc a
    bit 6, h
    adc a
    xor b
    ld [hl], a
    ld h, c
    sbc [hl]
    push hl
    ld a, [de]
    ld c, a
    or d
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld c, $ff
    ld c, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld a, a
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
    db $db
    rst $38
    db $fd

Jump_083_42ff:
    rst $38
    ld bc, $08fe
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, @+$01

    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    ret nz

    ccf
    inc [hl]
    dec bc
    inc h
    dec bc
    ld h, $09
    jr z, @+$09

    ld a, [bc]
    ld bc, $0023
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    nop
    ld bc, $0100
    ld [bc], a
    ld bc, $0100
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
    ld [bc], a
    nop
    ld c, d
    nop
    inc bc
    nop
    ld c, a
    nop
    adc a
    nop
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    rra
    nop
    ld c, [hl]
    ld de, $017e
    ld a, [hl]
    ld bc, $057a
    jr c, jr_083_43a5

    add sp, $17
    add sp, $17
    xor c
    ld d, [hl]
    xor c
    ld d, [hl]
    call nz, $803b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    add h
    ld a, a
    ret nz

    ccf
    dec b
    rst $38
    inc bc
    rst $38
    cp e
    ld a, a
    ld c, e
    cp a
    cpl
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    and e
    rst $38
    dec de
    rst $38
    cpl
    rst $38
    ld e, [hl]
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    ld bc, $87fe
    ld hl, sp-$26
    and l
    pop af
    adc [hl]
    cp $81
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    xor a
    ret nz

    sbc a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    sbc a

jr_083_43a5:
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp [hl]
    ret nz

    ld a, $c0
    dec a
    ret nz

    scf
    ret nz

    dec sp
    ret nz

    rst $08

jr_083_43b5:
    ld b, b
    rst $18
    ld b, b
    sbc a
    ld h, b
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [$90f7], sp
    rst $28
    jr nz, @-$1f

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr z, jr_083_43b5

    db $10
    rst $28
    pop hl
    ld a, $43
    cp l
    dec h
    jp c, $b946

    inc h
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add hl, de
    and $0e
    pop af
    ld b, d
    cp l
    rst $28
    db $10
    or b
    ld c, a
    ld a, [bc]
    push af
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    inc a
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [$06ff], sp
    rst $38
    ld [hl+], a
    rst $18
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    scf
    rst $38
    rlca
    rst $38
    rla

jr_083_4437:
    rst $38
    ld d, a
    rst $38
    cpl
    rst $38
    rla
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    ccf
    add b
    ccf
    nop
    ccf
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
    ld h, b
    cp a
    db $10
    rst $28
    jr nz, jr_083_4437

    db $10
    rst $28
    ld [de], a
    rst $28
    ld [bc], a
    rst $38
    nop
    rst $38
    add l
    ld a, a
    ld [hl+], a
    rst $38
    xor a
    ld a, a
    and e
    ld a, a
    daa
    rst $38
    add a
    ld a, a
    ld d, a
    rst $38
    ld e, e
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add e
    db $fc
    rrca
    ldh a, [$3c]
    jp $9f60


    ret


    ld [hl], $23
    call c, $ff71
    add h
    rst $38
    db $10
    rst $38
    ld hl, $44ff
    rst $38
    ld [$01ff], sp
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
    ld [$10ff], sp
    rst $38
    ld bc, $02ff
    rst $38
    ei
    inc b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
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
    nop
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld [$10f7], sp
    rst $28
    ld c, c
    or a
    ld b, b
    rst $38
    ld d, b
    xor a
    ld d, b
    cp a
    nop
    rst $38
    ld c, a
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld e, b
    rst $38
    add $ff
    add b
    rst $38
    ccf
    ret nz

    adc c
    ld [hl], h
    ld e, $e1
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ld b, b
    ld a, a
    add b
    and a
    ld e, b
    and c
    ld c, [hl]
    cp d
    ld b, l
    adc [hl]
    ld b, b
    rlca
    add sp, $48
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, $ff
    ld e, [hl]
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    scf
    rst $38
    ld d, a
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    ld [hl], a
    rst $38
    dec sp
    rst $38
    scf
    rst $38
    dec sp
    rst $38
    scf
    rst $38
    ld d, a
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rla
    rst $38
    ccf
    rst $38
    scf
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld l, a
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
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
    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fc
    rst $38
    ld [$80ff], a
    rst $38
    ld b, b
    rst $38
    xor e
    call nc, $936c
    rst $38
    nop
    ret nz

    ccf

jr_083_4588:
    pop de
    ld l, $05
    ld a, [$f20d]
    ld d, a
    xor b
    db $d3
    jr nz, jr_083_4588

    ld [bc], a
    db $76
    adc c
    rst $08
    jr nc, jr_083_4588

    db $10
    rst $38
    nop
    db $fc
    nop
    ld a, e
    add b
    ld [hl+], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    inc b
    rst $38
    add hl, bc
    rst $38
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$90ef], sp
    rst $38
    and b
    ld h, b
    rst $38
    adc c
    rst $30
    ld a, [bc]
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    cp a
    rst $38
    xor l
    rst $38
    ld [c], a
    rst $38
    ld hl, $00ff
    rst $38
    ld bc, $10ff
    rst $38
    nop
    rst $38
    ld e, a

jr_083_45f1:
    jr nz, jr_083_45f1

    nop
    ld a, [$d000]
    nop
    ret nz

    nop
    add b
    nop
    ldh [rP1], a
    adc b
    nop
    ld h, b
    add b
    or d
    ld b, b
    ld e, $a1
    add b
    rra
    ld e, $e1
    inc bc
    ld a, h
    db $10
    rst $38
    nop
    rst $38
    ld bc, $c7ff
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
    rst $38
    nop
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    and d
    rst $38
    jr nz, @+$01

    and b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    and b
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
    ld [hl], b
    rst $38
    ld b, d
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    jp nz, $e2ff

    rst $38
    ld h, b
    rst $38
    ld a, [c]
    rst $38
    ld a, [$faff]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    ldh a, [$f0]
    ldh [$f8], a
    ldh [$f3], a
    ldh [$f2], a
    ldh [$fa], a
    ldh [$fe], a
    ldh [$df], a
    ld hl, sp+$2f
    rst $38
    ld e, a
    rst $38
    inc h
    rst $38
    nop
    rst $38
    rra
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld l, $ff
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    nop
    rst $38
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
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $7eff
    add c
    nop
    rst $38
    sub [hl]
    rst $38
    add hl, bc
    rst $38
    inc [hl]
    rst $38
    jr nz, @+$01

    dec h
    rst $38
    ld b, d
    rst $38
    adc b
    rst $38
    ld bc, $07ff
    rst $38
    ld c, $ff
    dec b
    rst $38
    inc c
    rst $38
    add hl, de
    rst $38

Call_083_46ce:
    add hl, de
    rst $38
    ld [bc], a
    db $fd
    pop af
    ld c, $79
    add [hl]
    db $fc
    ld bc, $857a
    rst $28

Jump_083_46db:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec bc
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
    inc bc
    db $fc
    cp $ff
    jr nc, @+$01

    reti


    ld [hl], $50
    cp a
    db $10
    rst $38
    db $10
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    rla
    ld hl, sp+$10
    rst $38
    cp $ff
    ld a, [$f0ff]
    rst $38
    xor $ff
    ret nz

    rst $08
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
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld e, $e0
    rra
    ldh [$1f], a
    ldh [rNR33], a
    ld [c], a
    dec e
    ld [c], a
    dec c
    ld a, [c]
    dec bc
    db $f4
    dec d
    ld [$fa05], a
    ld bc, $00fe
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    or b
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
    db $d3
    rst $38
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, l
    nop
    dec c
    nop
    adc l
    nop
    call $cf00
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    adc e
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    add d
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld c, b
    rst $38
    add b
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld sp, hl
    ld b, $f7
    ld [$fc1f], sp
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    cp $bf
    cp $7f
    or $df
    db $fc
    rra
    db $fc
    ccf
    ld hl, sp-$01

jr_083_47d1:
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    rst $38
    rla
    rst $38
    adc a
    rst $38
    dec b
    rst $38
    nop
    rst $38
    inc d
    rst $38
    db $e4
    inc de
    ldh a, [$0d]
    ld a, [$7c05]
    inc bc
    sub $01
    dec bc
    nop
    rra
    nop
    dec de
    nop
    rrca
    nop
    rra
    nop
    dec l
    ld [bc], a
    ld e, h
    add e
    ld a, b
    add a
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    cpl
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $10
    jr nz, jr_083_47d1

    ld [hl+], a
    ld a, [c]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    and b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    jr nz, jr_083_4824

jr_083_4824:
    jr nz, jr_083_4826

jr_083_4826:
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_083_482e

jr_083_482e:
    nop
    nop
    nop
    nop
    and b
    nop
    nop
    nop
    and b
    nop
    and b
    nop
    nop
    nop
    ld [c], a
    nop
    and d
    nop
    rst $30
    nop
    call c, $de20
    jr nz, jr_083_4866

    ldh [rNR33], a
    ld [c], a
    dec b
    ld a, [$7e81]
    ret nz

    ccf
    jr nz, @+$01

    jr nz, @+$01

    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    jp $e7ff


    rst $38
    ld h, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    rra
    rra
    rra

jr_083_4866:
    ccf
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    jr z, @+$01

    ret nc

    cp a
    nop
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    dec d
    ld a, [$fe01]
    add hl, bc
    cp $f8
    rst $38
    ld de, $44ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0cff], sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld c, c
    rst $38
    pop hl
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    jr z, @+$01

    cp a
    ld b, b
    rst $28
    db $10
    cp a
    ld b, b
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    cp $81
    cp $81
    cp l
    ld b, d
    db $fd
    ld [bc], a
    db $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld c, $ff
    ld [$ffef], sp
    rst $38
    rst $38
    rst $18
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    cp a
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
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ret nz

    rra
    ldh [$1f], a
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    push de
    rst $38
    inc b
    ei
    db $fd
    nop
    pop hl
    nop
    cp a
    nop
    daa
    nop
    inc bc
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [hl+], a
    nop
    inc hl
    nop
    ld [c], a
    nop
    ccf
    nop
    ld a, l
    ld [bc], a
    db $dd
    ld [hl+], a
    call c, $d823
    daa
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
    ld [bc], a
    rst $38
    jp $e3ff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, c
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    sub $ff
    ld a, a
    rst $38
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ei
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld b, a
    rst $38
    add c
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    and e
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    and h
    rst $38
    inc b
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$21ff], sp
    rst $38
    ld bc, $42ff
    rst $38
    adc d
    rst $38
    ret nz

    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    cpl
    rst $38
    inc h
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add l
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, [hl]
    rst $38

Jump_083_49b6:
    sub h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld e, b
    rst $38
    sbc b
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
    cp a
    rst $38
    or a
    rst $38
    rst $30
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
    rst $38

jr_083_49dd:
    rst $38
    rst $38
    rst $38
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
    ld bc, $07ff
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and l
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $ec
    inc de
    jr nz, jr_083_49dd

    ldh [$1f], a
    call z, Call_083_5e13
    ld bc, $011e
    rra
    nop
    ld d, $01
    ld d, $01
    inc de
    nop
    rlca
    nop
    ld de, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    dec b
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0108
    ld [hl], $01
    ld a, $01
    ld a, $01
    cp [hl]
    ld bc, $01fe
    db $db
    dec h
    ret nc

    cpl
    ret c

    daa
    add c
    ld a, a
    add c
    ld a, a
    ld bc, $00ff
    rst $38
    ld bc, $21ff
    rst $38
    inc de
    rst $38
    ccf
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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    or l
    rst $38
    ld c, b
    rst $38
    xor b
    rst $38
    ld de, $09ff
    rst $30
    or b
    rst $28
    jr nz, @+$01

    nop
    rst $38
    ld b, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    rst $38
    dec d
    rst $38
    inc de
    rst $38
    dec h
    rst $38
    ld hl, $42ff
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    add d
    rst $38
    add h
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $81ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    add e
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
    inc c
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld [$01ff], sp
    db $fc
    dec c
    ldh [$8b], a
    ld [hl], h
    sbc d
    ld h, l
    ld a, [de]
    db $e4
    ld d, b
    xor [hl]
    ld d, h
    xor e
    ld c, h
    or e
    or $ff
    rst $30
    rst $38
    rst $30
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
    sbc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    ld c, c
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld h, b
    rra
    ldh [$1f], a
    ld h, b
    rra
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
    and b
    ld e, a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    ld de, $0eff
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld e, l
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_083_4b4e:
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    rst $38
    rst $38
    or e
    rst $38
    ld d, c
    rst $38
    ld b, e
    rst $38
    inc hl
    rst $38
    ld h, a
    rst $38
    ld l, $ff
    ld b, l
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    adc d
    rst $38
    nop
    rst $38
    ld [$65ff], sp
    sbc d
    ld b, [hl]
    cp c
    rst $08
    jr nc, jr_083_4b4e

    jr nc, jr_083_4bb2

    sbc $c0
    ccf
    add b
    ld a, a
    add h
    ld a, e
    sub h
    ld l, e
    ld a, d
    and l
    sbc l
    ld h, e
    ret


    scf
    cp c
    ld b, a
    cp l
    ld b, e
    dec a
    jp Jump_083_49b6


    ld a, $c1
    cp $01
    ld a, a
    add b
    dec a
    jp nz, $ff88

    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38

jr_083_4bb2:
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    adc $10
    rst $18
    nop
    ld e, a
    and b
    rst $18
    nop
    ld c, a
    and b
    ld h, a
    sbc b
    ld b, a
    or b
    dec h
    jp c, $fc01

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
    ld de, $1bff
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
    db $fd
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$12ff], sp
    rst $38
    ld d, d
    rst $38
    ld h, e
    rst $38
    jp nc, $c2ff

    rst $38
    ld b, d
    rst $38
    ret nc

    rst $38
    jp z, Jump_083_7aff

    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    cp h
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    call z, $a2ff
    rst $38
    add h
    rst $38
    add d
    rst $38
    add h
    rst $38
    add h
    rst $38
    add l
    rst $38
    add e
    rst $38
    add l
    rst $38
    add e
    rst $38
    adc e
    rst $38
    adc a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    cp a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $30
    ld hl, sp-$09
    ldh [$fc], a
    ldh [rIE], a
    ldh [$fe], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    add h
    cp $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    rst $38
    call z, Call_000_04ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    pop hl
    rra
    ldh a, [rIF]
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
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec sp
    nop
    ccf
    nop
    ld a, h
    inc bc
    pop bc
    ccf
    rst $00
    ccf
    rst $00
    ccf
    ret nz

    ccf
    adc b
    ld [hl], a
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
    ld bc, $40ff
    rst $38
    ld b, e
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    add b
    rst $38
    ld bc, $00ff
    rst $38
    sub b
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    db $fc
    cp $fc
    cp $fc
    cp $ff
    rst $38
    ld de, $01ff
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld hl, $60ff
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld hl, $61ff
    rst $38
    pop hl
    rst $38
    jp hl


    rst $38
    pop hl
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld a, b
    rst $38
    ld a, l
    rst $38
    dec sp
    rst $38
    ld a, e
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp nz, $c2ff

    rst $38
    jp Jump_083_42ff


    rst $38
    set 7, a
    rst $08
    rst $38
    jp $82ff


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
    add b
    jp nz, $c000

    nop
    or a
    nop
    ld h, $00
    add b
    nop
    db $ec
    nop
    rst $38
    nop
    rst $38
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
    ldh [rIE], a
    ldh [rIE], a
    cp $ff
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    sub h
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    dec e
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    ret z

    ccf

jr_083_4da4:
    ldh a, [rIF]
    rst $30
    ld [$08f7], sp
    rst $10
    jr z, jr_083_4da4

    ld [$08f7], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    or h
    nop
    ret nz

    ccf
    ccf
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp $ff
    ret c

    rst $38
    inc l
    db $db
    ld [$08ff], sp
    rst $38
    jr @+$01

    db $10
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr @+$01

    db $10
    rst $38
    jr c, @+$01

    ld a, e
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
    adc a
    rlca
    rlca
    inc bc

Jump_083_4e01:
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
    rrca
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    rrca
    cp $0f
    cp $0f
    cp $06
    cp $07
    cp $0e
    cp $0e
    cp $06
    cp $0e
    cp $0e
    cp $0e
    cp $0e
    cp $0c
    cp $0e
    cp $0c
    cp $4d
    cp $7d
    cp $1d
    cp $3d
    cp $7d
    cp $5d
    cp $7d
    cp $7c
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
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
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    dec sp
    rlca
    ccf
    nop
    ld bc, $c000
    nop
    dec a
    nop
    nop
    nop
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, d
    rst $38
    pop bc
    rst $38
    ld c, c
    rst $38
    ld d, c
    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    or b
    rst $38
    db $10
    rst $38
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [c], a
    nop
    ld e, $e0
    call $c5f0
    ld hl, sp-$76
    pop af
    ld a, $c1
    ld l, [hl]
    sub e
    ret c

    daa
    ld d, b
    xor a
    add b
    ld a, a
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    inc bc
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ld a, h
    add e
    ld a, [hl]
    add c
    ccf
    ret nz

    ld a, [hl-]
    push bc
    ld [hl], d
    adc l
    sub a
    ld [$009f], sp
    sbc a
    nop
    adc a
    nop
    sbc a
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
    rrca
    nop
    rra
    nop
    rra
    nop
    dec de
    nop
    rra
    nop
    dec d
    nop
    rra
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    dec e
    ld [bc], a
    ld [hl-], a
    ld bc, $0027
    ld [hl-], a
    ld bc, $0033
    cpl
    nop
    dec a
    ld [bc], a
    ld a, h
    inc bc
    ld a, h
    inc bc
    call c, $dc23
    inc hl
    ret nc

    cpl
    push de
    ld a, [hl+]
    pop bc
    ld a, $80
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld d, a
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
    ld a, a
    rst $38
    rst $18
    ccf
    cp a
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
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_083_4f8a:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add sp, -$01
    dec c
    cp $45
    cp $d4
    rst $38
    cp d
    rst $38
    add d
    rst $38
    and a
    rst $38
    jp Jump_083_61ff


    rst $38
    ret nz

    rst $38
    ld c, c
    cp $1b
    db $e4
    rst $18
    jr nz, jr_083_4f8a

    jr nz, @-$6f

    ld [hl], b
    rst $28
    db $10
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld d, h
    rst $38
    push bc
    rst $38
    db $db
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    add hl, bc
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    sub c
    rst $38
    cp $01
    xor $11
    rst $28
    db $10
    xor $11
    xor $11
    xor $11
    xor $11
    add sp, $13
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $13ff
    rst $38
    inc de
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    rla
    rst $38
    daa
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
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc hl
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld d, a
    rst $38
    inc [hl]
    rst $38
    ld l, h
    rst $38
    ld e, h
    rst $38
    ld e, b
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
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
    and c
    rst $38
    ld e, a
    rst $38
    set 7, a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld e, a
    rst $38
    ld e, [hl]
    rst $38
    ld a, a
    rst $38
    ld [hl], $ff
    ld a, [hl-]
    rst $38
    dec hl
    rst $38
    ld sp, $14ff
    rst $38
    ld [$08ff], sp
    rst $38
    inc e
    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    ld b, c
    rst $38
    dec b
    rst $38
    jr nz, @+$01

    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    ld b, b
    cp a
    inc [hl]
    rst $08
    pop bc
    cp [hl]
    add l
    ld a, [$df20]
    inc b
    ei
    jr z, @-$27

    and b
    ld e, a
    add b
    ld a, a
    ld e, b
    and a
    add sp, $37
    ld a, l
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [$09ff], sp
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    nop
    rst $18
    ld b, b
    cp a
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
    inc bc
    rst $38
    rlca
    rst $38
    ld a, [bc]
    rst $38
    db $10
    rst $38
    ld [hl], e
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
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    db $10
    rst $28
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld h, [hl]
    rst $38
    ld l, h
    rst $38
    inc l
    rst $38
    ret nz

    rst $38
    xor h
    rst $38
    ld c, h
    rst $38
    call z, Call_083_7dff
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    db $f4
    rst $38
    ld [c], a
    rst $38
    ld sp, hl
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    or h
    rst $38
    ld c, [hl]
    rst $38
    inc hl
    rst $38
    ld hl, $11ff
    rst $38
    db $10
    rst $38
    ld [$00ff], sp
    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld de, $08fe
    rst $38
    ld b, h
    cp a
    add b
    ld a, a
    ld [hl+], a
    rst $18
    add hl, bc
    rst $30
    ret


    or a
    nop
    rst $38
    ld b, d
    db $fd
    add c
    ld a, [hl]
    ld hl, $80fe
    ld a, a
    db $10
    rst $38
    ld b, b
    cp a
    adc b
    ld a, a
    sub h
    ld l, a
    xor b
    ld d, a
    xor b
    ld d, a
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
    jr jr_083_51d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_083_51e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_083_51f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_083_5203

    ld [hl-], a

jr_083_51d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_083_5213

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_083_51e3:
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

jr_083_51f3:
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

jr_083_5203:
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

jr_083_5213:
    ld d, [hl]
    ld b, [hl]
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
    ld b, [hl]
    add c
    ld b, [hl]
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
    sub l
    sub l
    sub l
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
    sub l
    sub l
    or c
    or d
    ld b, [hl]
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
    sub l
    cp a
    ret nz

    ld b, [hl]
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call Call_083_46ce
    ld b, [hl]
    rst $08
    ret nc

    pop de
    jp nc, $d3d2

    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, Jump_083_46db

    call c, $dedd
    rst $18
    jp nc, $e0d2

    pop hl
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
    jr nz, jr_083_52f5

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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_083_52f5:
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
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc b
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc b
    inc b
    inc b
    inc b
    ld b, $01
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0201
    ld b, $04
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld b, $04
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0404
    ld [bc], a
    ld bc, $0101
    ld b, $04
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
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
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, $ff
    cp [hl]
    rst $38
    ld a, $ff
    cp [hl]
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    add e
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    rla
    rst $38
    rlca
    rst $38
    rlca
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
    ld bc, $07ff
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    pop bc
    ccf
    add e

jr_083_5459:
    ld a, a
    add c
    ld a, a
    ld bc, $41ff
    cp a
    ld b, e

jr_083_5461:
    cp a
    jp Jump_000_03bf


    rst $38
    ld hl, $e5df
    ld e, a
    add e
    ld a, a
    db $10
    rst $28
    ld [de], a
    rst $28
    ld d, [hl]
    xor a
    call nz, $893f
    ld [hl], a
    cp c
    ld d, a
    jr nz, jr_083_5459

    ld b, b
    cp a
    ld b, b
    cp a
    inc e
    db $eb
    jr nz, jr_083_5461

    nop
    rst $38
    nop
    rst $38
    inc d
    rst $28
    db $10
    rst $28
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $21ff
    rst $38
    dec bc
    rst $38
    ld [de], a
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    ld b, $ff
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    sub d
    rst $38
    inc b
    rst $38
    add hl, bc
    rst $38
    add hl, bc
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
    db $10
    rst $38
    sub b
    ld a, a
    ld bc, $08ff
    rst $38
    ld b, b
    cp a
    ret nz

    cp a
    add h
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    ld de, $11ff
    rst $38
    db $10
    rst $38
    add b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    add h
    rst $38
    ld b, h
    rst $38
    ld b, d
    rst $38
    ld h, [hl]
    rst $38
    ld [hl-], a
    rst $38
    dec hl
    rst $38
    ld a, [hl-]
    rst $38
    dec h
    rst $38
    dec a
    rst $38
    ld d, $ff
    rra
    rst $38
    dec sp
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    rla
    rst $38
    dec e
    rst $38
    sub [hl]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    call nz, $c0ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop af
    rst $38
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
    ld a, h
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    ld a, e
    rst $38
    inc sp
    rst $38
    ld d, a
    rst $38
    ld e, b
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    db $e3
    db $fc
    pop hl
    cp $f0
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    inc bc
    rst $38
    rrca
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    sbc [hl]
    rst $38
    xor [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld e, $ff
    ld e, $ff
    inc a
    rst $38
    dec a
    rst $38
    sbc l
    rst $38
    sbc h
    rst $38
    dec e
    rst $38
    adc c
    rst $38
    ld c, l
    rst $38
    ld c, c
    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $38
    ld l, e
    rst $38
    or c
    rst $38
    or e
    rst $38
    or e
    rst $38
    ei
    rst $38
    ld d, e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    ld [hl], a
    rst $38
    inc hl
    rst $38
    rla
    rst $38
    rla
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    inc b
    rst $38
    inc b
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    and c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    ld bc, $40ff
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ld [hl], c
    rst $38
    ld e, b
    rst $38
    inc d
    rst $38
    ld e, d
    rst $38
    ld e, b
    rst $38
    ld [$0cff], sp
    rst $38
    ld c, c
    rst $38
    ld l, $ff
    dec h
    rst $38
    ld d, $ff
    rlca
    rst $38
    ld d, $ff
    add a
    rst $38
    adc e
    rst $38
    rst $38
    rst $38
    jp $85ff


    rst $38
    add e
    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    di
    rst $38
    ldh [rIE], a
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld [hl], a
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $d3
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    and b
    rst $38
    and c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add d
    rst $38
    ld b, $ff
    ld b, c
    rst $38
    jp $82ff


    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    jp nz, $03ff

    rst $38
    ld [bc], a
    rst $38
    ld [$08ff], sp
    rst $38
    jr @+$01

    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    add h
    rst $38
    add h
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    ld [de], a
    rst $38
    adc d
    rst $38
    ld b, $ff
    ld [$dbff], a
    rst $38
    rst $28
    rst $38
    db $ed
    rst $38
    and l
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld [hl], a
    rst $38
    ld a, c
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    ld l, c
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    ld [hl+], a
    rst $38
    inc [hl]
    rst $38
    or b
    rst $38
    ld a, b
    rst $38
    ld a, [hl-]
    rst $38
    jr c, @+$01

    ld e, h
    rst $38
    or b
    rst $38
    ld e, d
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    and a
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $10
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
    sub d
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
    reti


    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    db $dd
    rst $38
    ld [c], a
    rst $38
    sbc [hl]
    rst $38
    ret nc

    rst $38
    ld [bc], a
    rst $38
    dec sp
    rst $38
    adc a
    rst $38
    ld a, l
    rst $38
    add sp, -$01
    ret nz

    rst $38
    adc e
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $40ff
    rst $38
    nop
    rst $38
    ld [$0dff], sp
    rst $38
    sub $ff
    or b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld [$01ff], sp
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $08ff
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld bc, $16ff
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    or b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nc, @+$01

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
    ld [bc], a
    rst $38
    ld de, $8cff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$18ff], sp
    rst $38
    db $10
    rst $38
    ld [$88ff], sp
    rst $38
    add hl, bc
    rst $38
    dec c
    rst $38
    adc b
    rst $38
    dec e
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    ld [hl], $ff
    ld h, $ff
    ld h, $ff
    cpl
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $d3
    rst $38
    add c
    rst $38
    rst $18
    rst $38
    and e
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec a
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
    and c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, @+$01

    inc a
    rst $38
    pop bc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ldh [rIE], a
    ld b, a
    rst $38
    ld l, h
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $affe
    ldh a, [$3f]
    ldh [$1f], a
    ldh [rNR22], a
    ld hl, sp+$10
    rst $38
    db $10
    rst $28
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    ld h, $f9
    ld c, $f1
    add hl, bc
    or $2a
    push af
    dec b
    ld a, [$fb04]
    ld h, b
    rst $38
    ld bc, $09fe
    or $19
    and $b3
    db $ec
    add hl, hl
    or $37
    add sp, $47
    rst $38
    ld c, c
    rst $38
    ld l, c
    rst $38
    ld l, l
    rst $38
    ld h, a
    rst $38
    dec h
    rst $38
    ld a, [hl]
    rst $38
    dec a
    rst $38
    inc sp
    rst $38
    ld l, e
    rst $38
    inc sp
    rst $38
    scf
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [hl], b
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    reti


    rst $38
    ret c

    rst $38
    ret c

    rst $38
    cp b
    rst $38
    ret c

    rst $38
    xor a
    rst $38
    db $fd
    rst $38
    xor $ff
    cp $ff
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    jp $87ff


    rst $38
    add a
    rst $38
    add e
    rst $38
    add e
    rst $38
    set 7, a
    or e
    rst $38
    db $e3
    rst $38
    set 7, a
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
    rst $28
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nc

    rst $38
    and b
    rst $38
    ld d, $ff
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, @+$01

    add b
    rst $38
    add hl, bc
    rst $38
    ld d, l
    rst $38
    jr @+$01

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
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld b, b
    rst $38
    ld h, c
    rst $38
    ld bc, $00ff
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
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
    db $ec
    rst $38
    rst $38
    rst $38
    or c
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    rst $38
    ccf
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    db $10
    rst $38
    nop
    rst $38
    add b
    rst $38
    jr @+$01

    ld hl, $1fff
    rst $38
    xor [hl]
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    ei
    rst $38
    cp d
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    sbc $ff
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld [c], a
    rst $38
    pop hl
    rst $38
    db $f4
    rst $38
    pop hl
    rst $38
    or [hl]
    rst $38
    ld [hl], a
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
    rst $38
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
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    jp c, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    rla
    rst $38
    add e
    rst $38
    cpl
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    db $e3
    rst $38
    inc bc
    rst $38
    ld bc, $80ff
    rst $38
    nop
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
    rrca
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    xor $ff
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
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rra
    rrca
    rst $38
    rst $28
    rra
    rst $28
    rra
    ei
    rrca
    ei
    rrca
    rst $30
    rrca
    rlca
    rst $38
    ld a, a
    add a
    ei
    rlca
    rst $38
    inc bc
    ei
    rlca
    rst $38
    inc bc
    ld sp, hl
    rlca
    adc a
    ld [hl], c
    ld a, a
    add c
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    jr c, @+$01

    ldh [rIE], a
    nop
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ld e, l
    rst $38
    cpl
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld a, a
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
    jp $c7ff


    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $08
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
    db $fd
    rst $38
    or [hl]
    rst $38
    nop
    rst $38
    rrca
    nop
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    sbc a
    rra
    adc a
    rrca
    rst $00
    rlca
    rst $00
    rlca
    db $e3
    inc bc
    pop hl
    ld bc, $01f1
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
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
    cp a
    rst $38
    sbc a
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
    rst $28
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
    ld hl, sp-$01
    call nz, $d1ff
    rst $38
    ld a, [c]
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    cp $ff
    ei
    rst $38
    ld a, [$feff]
    rst $38
    or a
    rst $38
    di
    rst $38
    db $ed
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    rst $30
    ld a, a
    cp [hl]
    ld a, a
    db $f4
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
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
    jp hl


    rst $38
    cp c
    rst $38
    jp hl


    rst $38
    db $ed
    rst $38
    rst $28
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
    cp b
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    inc a
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
    cp e
    rst $38
    ld l, [hl]
    rst $38
    ret nc

    rst $38
    and b
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
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    or b
    ld c, a
    ld [hl], b
    rrca
    nop
    rrca
    add b
    rlca
    ret nz

    inc bc
    ldh [$03], a
    ldh a, [rSB]
    ldh a, [rSB]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $ff
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
    cp a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    ld a, a
    rst $38
    jp nz, $c0ff

    rst $38
    inc bc
    rst $38
    cp $ff
    db $fd
    rst $38
    sub $ff
    sub $ff
    pop hl
    rst $38
    add d
    rst $38
    ld e, l
    rst $38
    rst $28
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    add sp, -$01
    pop bc
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ret z

    rst $38
    inc de
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp l
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
    cp $ff
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
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
    rst $30
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    db $db
    nop
    ldh [rP1], a
    ld bc, $7f00
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    ld a, [$dfff]
    rst $38
    ei
    rst $38
    sub $ff
    ld h, b
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
    nop
    rra
    nop
    rrca
    nop
    rlca
    add b
    rlca
    add b
    inc bc
    ret nz

    ld bc, $01e0
    ldh [rP1], a
    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$05
    db $fc
    rst $38
    db $fc
    db $fd
    cp $ff
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
    cp a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rla
    rst $38
    rst $30
    rst $38
    jp Jump_000_17ff


    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld b, a
    rst $38
    ld e, h
    rst $38
    ld [hl], b
    rst $38
    sub b
    rst $38
    add b
    nop
    ldh [$80], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add d
    rst $38
    jp nz, $82ff

    rst $38
    and d
    rst $38
    or a
    rst $38
    and [hl]
    rst $38
    rst $28
    rst $38
    db $fd
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
    rst $30
    rst $38
    ld l, a
    rst $38
    ld b, e
    rst $38
    db $dd
    rst $38
    db $db

Call_083_5e13:
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    di
    rst $38
    sub $ff
    sbc e
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $10
    rst $38
    rst $00
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
    nop
    rst $38
    nop
    ld [$df00], a
    nop
    daa
    nop
    di
    nop
    db $fc
    add b
    cp $f8
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    xor a
    rst $38
    sub $ff
    xor l
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
    ld bc, $49ff
    rst $38
    ld d, $ff
    ld b, l
    rst $38
    db $eb
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
    add e
    ld a, a
    add e
    ld a, a
    pop bc
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp-$08
    ld sp, hl
    db $fc
    db $fc
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rra
    cp a
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
    dec hl
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    dec de
    rst $38
    adc a
    rst $38
    ld l, a
    rst $38
    db $e3
    rst $00
    add c
    add e
    sub e
    add hl, sp
    ld hl, $113d
    ld a, l
    add hl, bc
    ld a, l
    inc hl
    add hl, sp
    add e
    inc bc
    jp $cf87


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
    rst $38
    rst $38
    xor $ff
    and $ff
    rst $20
    rst $38
    and $ff
    add $ff
    and $ff
    xor $ff
    or $ff
    sub $ff
    sbc $ff
    adc $ff
    and $ff
    sbc $ff
    sbc $ff
    rst $18
    rst $38
    rst $10
    rst $38
    set 7, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    dec b
    rst $38
    nop
    rst $38
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$c0]
    ld hl, sp-$20
    ld a, l
    ldh a, [$3f]
    db $fc
    rlca
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
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    rst $18
    rst $38
    rst $28
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
    ld a, a
    rst $38
    ld a, h
    sbc a
    db $fc
    inc bc
    rst $38
    ld hl, sp-$04
    jr nc, jr_083_5fdd

    nop
    nop
    inc bc
    ld b, e
    rst $38
    rst $38
    rst $38
    rst $38
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
    adc e
    rst $38
    add hl, bc
    rst $38
    adc b
    rst $38
    jr @+$01

    jr @+$01

    sbc b
    rst $38
    cp b
    rst $38
    or c
    cp $b5
    ld a, [$fab5]
    db $fd
    ld a, [c]
    sbc a
    ldh a, [rIE]
    ldh a, [$bb]
    db $f4
    rrca
    ldh a, [$7e]
    pop af
    pop hl
    nop
    cp $1c
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $ed
    inc e
    db $fc
    inc d
    ld b, h
    inc b
    jp $cb03


    dec bc
    ld a, l
    inc a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ret nz

    rst $38
    rst $00

jr_083_5fdd:
    ld hl, sp-$3f
    cp $80
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add d
    db $fd
    add b
    rst $38
    nop
    rst $38
    dec c
    ld a, [c]
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    push bc
    dec sp
    jr nc, @-$6f

    cp d
    push bc
    add $f1
    pop hl
    ld hl, sp-$10
    nop
    ld a, b
    add b
    ld a, [hl]
    add b
    inc a
    ret nz

    rlca
    ld hl, sp+$03
    db $fc
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
    ld d, d
    rst $38
    add hl, bc
    rst $38
    ld d, a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sub a
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
    cp $ff
    ldh a, [rIE]
    add b
    rst $38

jr_083_603c:
    nop
    rst $38
    nop
    rst $38
    ret nc

    inc bc
    sub a
    rrca
    sbc a
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
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    cp e
    rst $38
    xor [hl]
    ldh a, [$4e]
    ldh a, [$0e]
    ldh a, [$6e]
    ret nc

    inc a
    ret nz

    jr z, jr_083_603c

    ld [hl], h
    add b
    ld d, h
    add b
    ld d, h
    add b
    db $e4
    db $10
    db $f4
    nop
    db $f4
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    sub b
    ld b, b
    add sp, $00
    and b
    nop
    xor b
    nop
    add b
    jr nz, jr_083_60af

    add b
    xor b
    ld b, b
    ld [$ca10], a
    jr nz, @-$54

    ld b, b
    jp c, $b520

    ld c, d
    cp [hl]
    ld b, b
    sbc $20
    cp l
    ld b, d
    rst $38
    nop
    rst $28
    db $10
    ld [$0015], a
    xor d
    nop
    ld [c], a
    ret nz

    ld [c], a
    ldh a, [rSVBK]
    db $fc
    call c, $839f
    rst $18
    rst $18
    rst $38

jr_083_60af:
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    ld b, b
    rst $38
    ld a, a
    ret nz

    rst $38
    ld b, b
    ld a, $c0
    rra
    ret nz

    sbc a
    ldh [$87], a
    ld hl, sp-$7f
    cp $80
    rst $38
    adc b
    ld a, a
    nop
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    ld bc, $3afe
    rst $20
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $28
    ld b, b
    cp a
    nop
    ret nz

    nop
    ldh [rP1], a
    ld a, a
    nop
    sbc a
    add b
    ld l, a
    ret nz

    scf
    ldh [rNR24], a
    ldh a, [$8e]
    inc a
    ret nz

    ld e, $f0
    rrca
    ld hl, sp+$07
    db $fc
    dec b
    cp $12
    rst $38
    ld b, $ff
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld d, a
    rst $38
    ld l, a
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
    cp $ff
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh [$3f], a
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
    and $ff
    and [hl]
    rst $38
    or [hl]
    rst $38
    cp [hl]
    rst $38
    sub $ff
    call c, $fcff
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    rst $20
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
    add b
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    xor a
    nop
    call z, $e600
    ld [$04f9], sp
    pop af
    inc c
    xor b
    ld d, l
    nop
    and d
    nop
    ld [hl+], a
    nop
    ld [bc], a
    nop
    nop
    ld b, b
    nop
    add hl, hl
    nop
    ret c

    add b
    ret nz

    nop
    add b
    rst $38
    jp z, $a0ff

    rst $38
    add b
    rst $38
    dec de
    db $e4
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$03]
    db $fc
    nop
    rst $38
    cp $ff
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_083_61a9:
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
    ld [bc], a

jr_083_61bb:
    rst $38
    ld bc, $00ff
    rst $38
    nop
    jr c, jr_083_61c3

jr_083_61c3:
    add a
    nop
    pop hl
    ret nz

    jr nc, jr_083_61a9

    jr jr_083_61bb

    rrca
    db $fc
    jp $e1fe


    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    cp $fe
    ldh a, [$f3]
    add b
    cp a
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    rst $00
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_083_61ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    dec a
    db $e3
    ld [$f415], a
    ld c, e
    ld d, d
    xor l
    ld l, b
    sub a
    add b
    ld a, a
    inc bc
    rst $38
    rrca
    rst $38
    ld a, $ff
    ei
    db $fc
    xor $f1
    nop
    nop
    nop

jr_083_6223:
    nop
    ld bc, $0000
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld a, [bc]
    nop
    ld l, $00
    xor a
    nop
    rst $18
    nop
    ei
    inc b
    cp d
    ld b, l
    and d
    ld e, l
    ld [c], a
    dec e
    ld h, b
    sbc a
    and b
    ld e, a
    jr nz, jr_083_6223

    ld a, [hl+]
    rst $18
    inc bc
    rst $38
    res 7, a
    xor a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rra
    ldh [$d5], a
    ld a, [hl+]
    rst $38
    nop
    cp $01
    db $ed
    ld [de], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    pop bc
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    dec b

jr_083_6285:
    rst $38
    ld [de], a
    rst $38
    ld [$01ff], sp
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld h, b
    sbc a
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
    sub b
    ld a, a
    ldh [$1f], a
    nop
    ldh a, [$c0]
    jr c, jr_083_6285

    inc e
    ldh a, [rIF]
    db $fc
    add e
    cp $e1
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh a, [$f1]
    add b
    sbc a
    nop
    cp $00
    db $fc
    ld bc, $cff0
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, $ff
    add hl, sp
    rst $38
    daa
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $dd
    ccf
    sbc a
    ld a, a
    cpl
    rst $18
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
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0500
    nop
    ld b, $01
    ld bc, $0100
    nop
    ld de, $1300
    nop
    add hl, sp
    ld [bc], a
    ld l, c
    ld [bc], a
    cp h
    inc bc
    cp h
    inc bc
    db $76
    add hl, bc
    jp c, $ea25

    dec d
    ld c, b
    or a
    ld b, b
    cp a
    and b
    ld e, a
    ld h, b
    sbc a
    jr nz, @-$1f

    ld b, b
    cp a
    nop
    rst $38
    inc c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    ld c, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    db $e4
    rst $38
    nop
    rst $38
    nop
    rst $38
    and d
    ld e, l
    sbc c
    ld h, [hl]
    xor a
    ld d, b
    ei
    nop
    rst $38
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
    ld b, $ff
    ld l, e
    rst $38
    cp a
    rst $38
    and l
    rst $38
    ld a, b
    rst $38
    ret nz

    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    ld e, d
    rst $38
    db $eb
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld c, d
    cp a
    jr z, @+$01

    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld de, $01ee
    rst $38
    and h
    ld e, a
    ret z

    ccf
    ldh a, [rIF]
    ld hl, sp-$39
    ldh [rNR32], a
    ldh a, [rIF]
    db $fc
    add e
    cp $c1
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    cp $fe
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    nop
    inc b
    inc bc
    ret nz

    rrca
    add b
    ccf
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
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    pop hl
    rst $38
    adc $ff
    ret c

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    db $d3
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rra
    ldh [$1f], a
    ret nz

    ccf
    ldh a, [rIF]
    ret nc

    cpl
    ret nc

    cpl
    ldh a, [rIF]
    ret nc

    rrca
    sub b
    ld c, a
    ldh [$1f], a
    and b
    ld e, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
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
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    dec c
    rst $38
    ld c, $ff
    adc $ff
    ld [hl+], a
    rst $38
    db $d3
    rst $38
    rst $10
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    db $f4
    rst $38
    jp hl


    rst $38
    db $ec
    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    ld a, a
    sub b
    ld l, a
    or l
    ld c, d
    ret nz

    ccf
    add b
    ld a, a
    ccf
    rst $38
    and a
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
    add sp, -$01
    rst $38
    rst $38
    ldh [rIE], a
    ld b, l
    rst $38
    inc d
    rst $38
    ld [bc], a
    rst $38
    inc a
    rst $38
    sbc $ff
    and e
    rst $38
    ldh a, [rIE]
    add e
    rst $38
    rrca
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
    nop
    rst $38
    db $10
    rst $38
    and b
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc [hl]
    rst $38
    ret nz

    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp $e17f


    ccf
    jr c, @-$2f

    add sp, -$09
    db $f4
    ei
    cp $f9
    inc sp
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    and $ff
    add sp, -$01
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp nz, $d4fd

    db $eb
    ret nz

    rst $38
    pop hl
    rst $18
    adc [hl]
    rst $38
    inc e
    rst $38
    pop af
    cp $c0
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    dec e
    rst $38
    ld e, h
    rst $38
    ld e, d
    rst $38
    ld a, [de]
    rst $38
    add hl, de
    rst $38
    dec [hl]
    rst $38
    inc sp
    rst $38
    dec d
    rst $38
    scf
    rst $38
    rst $10
    rst $38
    dec sp
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
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
    ld a, a
    rst $38
    sbc [hl]
    rst $38
    ld a, [$eeff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    db $fd
    add b
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [$f7]
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    ld bc, $29ff
    rst $38
    add a
    rst $38
    cpl
    rst $38
    sub e
    rst $38
    inc bc
    rst $38
    scf
    rst $38
    daa
    rst $38
    ldh a, [rIF]
    add b
    ld a, a
    inc h
    rst $18
    and b
    ld e, a
    ld a, [bc]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
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
    ccf
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    ld hl, sp-$01
    cp $ff
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
    rlca
    rst $38
    add c
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    sbc b
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    rra
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
    ld [$04ff], sp
    ei
    ld bc, $07ff
    rst $38
    inc e
    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    ld [bc], a
    rst $38
    ld [$20ff], sp
    rst $38
    nop
    rst $38
    and b
    rst $18
    jr nz, @+$01

    add b
    rst $38
    inc bc
    rst $38
    ld c, [hl]
    rst $38
    jr c, @+$01

    ldh [rIE], a
    rst $38
    ei
    di
    pop af
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop bc
    jp $c1c1


    jp $ffff


    sbc $ff
    db $fc
    rst $38
    cp b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    or c
    rst $38
    or c
    rst $38
    or c
    rst $38
    ret z

    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    or $ff
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $fc
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
    ld a, [$fbfc]
    db $fc
    ei
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    jr nc, @+$01

    inc [hl]
    ccf
    jr nc, jr_083_666d

    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$7f], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    push de
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_083_666d:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    ld [$08ff], sp
    rst $38
    jr @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    di
    rst $38
    rst $28
    rst $38
    and $ff
    adc $ff
    jp $e1ff


    rst $38
    cp c
    rst $38
    cp c
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $30
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
    ld a, a
    rst $38
    ccf
    rst $38
    adc a
    rst $38
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
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ldh [rIE], a
    ld a, b
    rst $38
    ld e, h
    rst $38
    add a
    rst $38
    inc hl
    rst $38
    dec h
    rst $38
    rlca
    rst $38
    ld e, $ff
    ld a, e
    rst $38
    pop hl
    rst $38
    adc b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    and b
    rst $38
    jr nz, @+$01

    inc bc
    rst $38
    ld c, l
    rst $38
    daa
    rst $38
    inc e
    rst $38
    ld a, b
    rst $38
    pop hl
    rst $38
    jp nz, Jump_000_04ff

    rst $38
    ld [$02ff], sp
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
    ld [$0e08], sp
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_083_6735

    ld a, [de]
    dec de
    ld [$1d1c], sp
    ld e, $1f
    jr nz, jr_083_6746

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_083_6735

    add hl, hl
    ld [$082a], sp
    ld [$2c2b], sp
    dec l

jr_083_6735:
    ld l, $2f
    jr nc, jr_083_676a

    ld [hl-], a
    inc sp
    inc [hl]
    ld [$3635], sp
    scf
    jr c, jr_083_677b

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_083_6746:
    ld [$3f3e], sp
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld [$4544], sp
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld [$4d4c], sp
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, b
    ld [$5251], sp
    ld [$0853], sp
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld c, [hl]

jr_083_676a:
    ld c, [hl]
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
    ld c, [hl]
    ld c, [hl]

jr_083_677b:
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
    ld [$4e74], sp
    ld c, [hl]
    ld [hl], l
    db $76
    ld [$7877], sp
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld [$8180], sp
    ld c, [hl]
    add d
    add e
    ld [$8584], sp
    add [hl]
    add a
    add a
    adc b
    adc c
    adc d
    adc e
    ld [$8d8c], sp
    ld c, [hl]
    rrca
    adc [hl]
    ld [$908f], sp
    sub c
    add a
    add a
    add a
    sub d
    sub e
    sub h
    ld [$9695], sp
    sub a
    sbc b
    sbc c
    ld [$9b9a], sp
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ld [$4ea4], sp
    and l
    and [hl]
    ld [$a8a7], sp
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
    ld [$b637], sp
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
    jp nz, $08c3

    call nz, $c54e
    add $c7
    ret z

    ret


    jp z, $cb08

    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $08
    ld [$0808], sp
    ld [$d8d7], sp
    reti


    jp c, $0fdb

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    ld [$e508], sp
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$61]
    pop af
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0602
    inc b
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0406
    inc b
    inc b
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $04
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0602
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $02
    ld bc, $0100
    ld bc, $0000
    ld bc, $0202
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    ld bc, $0201
    ld [bc], a
    ld b, $04
    inc b
    inc b
    ld [bc], a
    ld b, d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $02
    ld [bc], a
    ld [bc], a
    nop
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
    ld bc, $0100
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $4101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    add a
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    jp $83ff


    rst $38
    add e
    rst $38
    jp $c1ff


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $30
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    rst $38
    add b
    rst $38
    add e
    rst $38
    add d
    rst $38
    add d
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld de, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fd
    ei
    db $eb
    rst $30
    rst $18
    rst $28
    rst $38
    sbc a
    cp a
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
    ld a, a
    inc de
    nop
    nop
    nop
    call nz, $fdff
    rst $38
    call $eeff
    rst $38
    ld a, [hl]
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

jr_083_6a73:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $11ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    ei
    reti


    cp $64
    sbc e
    ld [hl], d
    adc l
    ld d, b
    xor a
    jr nz, jr_083_6a73

    ld l, b
    sub a
    db $10
    rst $28
    inc c
    rst $30
    ld [$00f7], sp
    rst $38
    ld [de], a
    rst $28
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    jr nz, @+$01

    ld [hl+], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $01ff
    rst $38
    ld bc, $10ff
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$00ff], sp
    rst $38
    jr @+$01

    jr @+$01

    sbc b
    rst $38
    sbc b
    rst $38
    sbc c
    rst $38
    cp b
    rst $38
    sub l
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add [hl]
    rst $38
    rst $18
    rst $38
    cp $ff
    rst $18
    rst $38
    jp $e3ff


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
    or $ff
    ld sp, hl
    rst $38
    rst $20
    rst $38
    adc a
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
    dec a
    cp $f5
    ei
    db $eb
    rst $30
    rst $18
    rst $28
    sbc a
    ld h, b
    ccf
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
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
    rst $38
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
    nop

jr_083_6b3f:
    nop
    ldh [rIE], a
    rst $38

jr_083_6b43:
    rst $38
    rst $38

jr_083_6b45:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    or b
    ld c, a
    cp b
    ld b, a
    jr jr_083_6b3f

    jr @-$17

    jr jr_083_6b43

    jr jr_083_6b45

    inc e
    db $e3
    rst $20
    rst $38
    rst $20
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    push af
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $40ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    inc d
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld [hl+], a
    rst $38
    ld a, $ff
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld [de], a
    rst $38
    ld bc, $11ff
    rst $38
    inc bc
    rst $38
    ld bc, $91ff
    rst $38
    add c
    rst $38
    sub b
    rst $38
    sub l
    rst $38
    adc b
    rst $38
    reti


    rst $38
    ld sp, hl
    rst $38
    cp c
    rst $38
    db $fd
    rst $38
    ld [hl], l
    rst $38
    rst $08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $30
    rst $38
    rst $08
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
    adc $ff
    db $dd
    cp $f9
    rst $38
    db $e3
    ld [$10cf], sp
    sbc a
    nop
    ccf
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
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
    rst $38
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld c, c
    rst $38
    add hl, bc
    rst $38
    ld bc, $49ff
    rst $38
    ld e, e
    rst $38
    ld l, e
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
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
    db $fd
    rst $38
    db $fc
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $08
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ldh a, [rIE]
    db $ec
    nop
    ld [hl], c
    nop
    jp $cf00


    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $07
    db $fc
    rra
    ld hl, sp+$3f
    ld hl, sp+$7f
    ld hl, sp-$01
    ldh a, [rIE]
    push af
    rst $38
    or $ff
    ret c

    rst $38
    cp $ff
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $38
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
    ld a, [de]
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $03ff
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    inc d
    rst $38
    ld e, l
    rst $38
    ld c, h
    rst $38
    inc bc
    rst $38
    push de
    rst $38
    ld e, e
    rst $38
    ld b, d
    rst $38
    ld d, d
    rst $38
    pop af
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ldh a, [rIF]
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
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    nop
    rst $38
    db $10
    rst $38
    sub e
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    di
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
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, [$fdff]
    rst $38
    rst $28
    rst $38
    add hl, bc
    or $00
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
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    inc [hl]
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc a
    rst $38
    inc l
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    ld a, $ff
    inc e
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], $ff
    or [hl]
    rst $38
    or [hl]
    rst $38
    ld [hl], a
    rst $38
    or a
    rst $38
    or $ff
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
    cp a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    cp c
    rst $38
    ld [hl], a
    rst $38
    rst $08
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh [$1f], a
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
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    nop
    rst $38
    and h
    rst $38
    call nz, Call_000_20ff
    rst $38
    or b
    rst $38
    db $ed
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    nop
    ccf
    nop
    ld bc, $4200
    nop
    xor a
    nop
    ld d, l
    nop
    dec hl
    nop
    or a
    ccf
    ret nz

    rla
    add sp, $00
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    ld bc, $01ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    or b
    rst $38
    db $10
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    rrca
    rst $38
    db $10
    rst $38
    jr @+$01

    rrca
    rst $38
    ld [$1eff], sp
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    sbc e
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    nop
    rst $38
    nop
    ccf
    nop
    db $e3
    ld bc, $00df
    rst $18
    inc bc
    rst $38
    rra
    rst $38
    ccf
    cp [hl]
    ld a, a
    ldh a, [rIE]
    db $e4
    rst $38
    nop
    rst $38
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, $ff
    nop
    rst $38
    ld c, b
    rst $38
    dec b
    rst $38
    sbc [hl]
    rst $38
    push bc
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
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    ld [hl], l
    nop
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
    ccf
    ret nz

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
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fc
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
    rst $38
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
    cp e
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
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    add h
    rst $38
    add b
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    call nz, $84ff
    rst $38
    call nz, $cfff
    rst $38
    rst $38
    nop
    ei
    nop
    rst $20
    nop
    rst $18
    nop
    rst $38
    ld bc, $037f
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sub c
    rst $38
    ld e, c
    rst $38
    ld hl, $22ff
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $00ff
    rst $38
    add b
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    ld [hl], e
    rst $38
    jr @+$01

    rst $38
    rst $38
    rst $38
    rrca
    sbc a
    ld h, a
    rst $08
    inc sp
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $ffff
    nop
    rst $38
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
    ld a, a
    nop
    xor $00
    ld a, e
    nop
    inc bc
    db $fc
    call nz, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    rst $38
    add $ff
    jp nz, $c2ff

    rst $38
    sub $ff
    jp nc, $c2ff

    rst $38
    jp nz, $3dff

    jp nz, Jump_083_42bd

    ld a, [hl-]
    ret nz

    ld [hl], $c0
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    ld [hl], $c8
    cp d
    ld b, b
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, [de]
    ldh [$2a], a
    ret nc

    dec sp
    ret nz

    cp e
    ld b, b
    xor [hl]
    ld d, b
    ldh [rIE], a
    ld h, b
    rst $38
    db $e4
    rst $38
    ldh a, [rIE]
    ld a, [$f4ff]
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    ret


    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    rst $20
    rst $38
    rst $38
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
    ld hl, $00ff
    rst $38
    and b
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
    rst $28
    rst $38
    inc b
    rst $38
    or d
    rst $38
    jr @+$01

    nop
    rst $38
    and b
    rst $38
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
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    inc b
    rst $38
    ld de, $b3ff
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
    ld a, [hl]
    nop
    ld [$5d00], a
    nop
    db $fd
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $10
    xor $10
    cp $00
    add sp, $10
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ret nc

    nop
    ld d, b
    nop
    jr nc, @-$7e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    nop
    nop
    ret nc

    nop
    or b
    nop
    sub b
    nop
    nop
    nop
    or b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [$fb00]
    nop
    rla
    add sp, -$79
    ld a, b
    rlca
    ld hl, sp+$05
    ld a, [$fe01]
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
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld bc, $00fe
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
    cp d
    rst $38
    ld l, l
    rst $38
    ld b, h
    rst $38
    sub a
    rst $38
    ld h, b
    rst $38
    dec b
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [$40ff], sp
    rst $38
    dec bc
    rst $38
    ld b, c
    rst $38
    sub d
    rst $38
    adc c
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    sub a
    nop
    ld [hl], h
    nop
    xor e
    nop
    db $fd
    nop
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    jp nz, $c300

    nop
    ld b, d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    add d
    nop
    jp z, $df00

    nop
    xor a
    ld d, b
    cp l
    ld b, d
    add hl, hl
    sub $c4
    inc bc
    inc [hl]
    jp $837c


    inc a
    jp $cf10


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    nop
    nop
    ldh [rP1], a
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
    cp a
    rst $38
    xor a
    rst $38
    ld [hl-], a
    rst $38
    inc hl
    rst $38
    ld de, $09ff
    rst $38
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ei
    nop
    cp h
    nop
    adc a
    nop
    ld a, [bc]
    nop
    rlca
    nop
    inc de
    db $ec
    jp nz, $ffff

    rst $38
    ld a, [de]
    nop
    ld a, [bc]
    nop
    dec c
    nop
    ld c, $00
    inc c
    nop
    ld [$0000], sp
    nop
    nop
    nop
    or d
    nop
    ld a, [de]
    nop
    inc sp
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    db $eb
    inc d
    adc c
    db $76
    rra
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
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    ccf
    rst $38
    db $e3
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld d, d
    rst $38
    ret nc

    rst $38
    ld [hl-], a
    rst $38
    rlca
    rst $38
    ld a, c
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
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, a
    nop
    ccf
    nop
    rst $38
    nop
    ld a, l
    nop
    add a
    nop
    sub $00
    nop
    rst $38
    rst $38
    rst $38
    sbc $01
    cp $01
    jp c, Jump_083_4e01

    ld bc, $0156
    ld c, [hl]
    ld bc, $010e
    rlca
    nop
    ld a, [de]
    ld bc, HeaderSGBFlag
    inc bc
    nop
    ld b, e
    nop
    ld b, a
    nop
    ld b, e
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    rlca
    nop
    rlca

jr_083_7371:
    nop
    dec b
    ld [bc], a
    dec b

jr_083_7375:
    ld [bc], a
    dec b
    ld [bc], a
    dec c
    ld [bc], a
    reti


    ld b, $e8
    rla
    cp l
    ld [bc], a
    reti


    ld b, $79
    add [hl]
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld e, b
    and a
    jr jr_083_7375

    db $10
    rst $28
    jr nz, jr_083_7371

    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    add h
    rst $38
    ld bc, $1aff
    nop
    rla
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    dec hl
    rst $38
    ld c, d
    rst $38
    ld [$4dff], sp
    rst $38
    ld b, l
    rst $38
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
    ld de, $03ff
    rst $38
    ld b, $ff
    ld [$22ff], sp
    rst $38
    inc de
    rst $38
    ld c, l
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
    nop
    rst $38
    nop
    rst $18
    nop
    ld l, a
    nop
    xor e
    nop
    rst $10
    nop
    ld a, a
    add b
    ld [c], a
    rst $38
    inc b
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
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ld a, [c]
    dec c
    ldh a, [rIF]
    ld h, b
    rra
    ldh [$1f], a
    or $09
    inc [hl]
    dec bc
    cp [hl]
    ld bc, $0dd2
    push de
    ld a, [bc]
    db $76
    add hl, bc
    db $ec
    inc de
    add sp, $17
    ld [$1315], a
    rst $38
    rra
    rst $38
    dec de
    rst $38
    ld [de], a
    rst $38
    inc de
    rst $38
    or a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    ld [$00f7], sp
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

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    ld bc, $23ff
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    rlca
    rst $38
    inc sp
    rst $38
    and a
    rst $38
    adc e
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
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    push hl
    add b
    di
    add b
    db $fd
    ret nz

    pop af
    add b
    pop af
    nop
    ldh a, [$80]
    ld hl, sp-$20
    db $fc
    ldh [$fc], a
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ld hl, sp+$7f
    ld hl, sp-$01
    db $fc
    ld a, e
    db $fc
    ccf
    db $fc
    ld l, l
    cp $03
    cp $ad
    rst $38
    dec bc
    rst $38
    inc h
    rst $38
    or d
    rst $38
    nop
    rst $38
    db $10
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
    db $10
    rst $38
    ld bc, $08ff
    rst $38
    ld l, c
    rst $38
    cp l
    rst $38
    ld a, e
    rst $38
    rrca
    rst $38
    ld d, a
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
    nop
    rst $28
    nop
    rst $38
    nop
    db $eb
    nop
    ld a, a
    nop
    cp a
    nop
    push de
    nop
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
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $20ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    inc b
    rst $38
    add [hl]
    rst $38
    add h
    rst $38
    inc b
    rst $38
    add h
    rst $38
    add h
    rst $38
    call z, $ccff
    rst $38
    adc h
    rst $38
    call c, $c8ff
    rst $38
    push de
    rst $38
    ld e, h
    rst $38
    call c, $e8ff
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38

jr_083_755a:
    ei
    rst $38

jr_083_755c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, $ff
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [de], a
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    add d
    rst $38
    add d
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rP1], a
    ld h, b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    jr c, jr_083_755a

    jr c, jr_083_755c

    inc e
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [$5e], a
    ldh a, [rNR34]
    ldh a, [rNR34]
    ld hl, sp+$5f
    ld hl, sp+$7f
    ld hl, sp+$3f
    db $fc
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add e
    rst $38
    inc bc
    rst $38
    add d
    rst $38
    add e
    rst $38
    add d
    rst $38
    add e
    rst $38
    sbc d
    rst $38
    add h
    rst $38
    add d
    rst $38
    add h
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    add l
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc c
    rst $38
    ld [$0cff], sp
    rst $38
    inc c
    rst $38
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    add hl, bc
    rst $38
    ld c, c
    rst $38
    ld c, e
    rst $38
    rra
    rst $38
    dec de
    rst $38
    db $db
    rst $38
    db $eb
    rst $38
    ld a, e
    rst $38
    rst $30
    rst $38
    rla
    rst $38
    rla
    rst $38
    rra
    rst $38
    rla
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    scf
    rst $38
    scf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    rst $00
    rst $38
    rst $30
    rst $38
    add hl, de
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld b, e
    rst $38
    ld bc, $80ff
    rst $38
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
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    add hl, bc
    cp $04
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$80]
    ld hl, sp-$80
    ld hl, sp-$40
    ld hl, sp-$40
    db $fc
    ret nz

    db $fc
    ldh [$fe], a
    ldh [$fe], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
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
    rra
    cp $0f
    cp $07
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
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    adc a
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    db $dd
    rst $38
    ld d, a
    rst $38
    dec e
    rst $38
    cpl
    rst $38
    dec de
    rst $38
    ccf
    rst $38
    ld a, e
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
    ld a, a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    ld h, a
    rst $38
    inc hl
    rst $38
    ld sp, $18ff
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld d, $e9
    daa
    ret c

    jp hl


    sub [hl]
    ld b, b
    rst $38
    ld c, c
    or $2d
    ld a, [c]
    ccf
    ldh [rNR34], a
    pop af
    inc d
    ei
    ld [$07ff], sp
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $00
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
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
    sbc h
    ld a, a
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    add sp, -$01
    db $f4
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld [$eaff], a
    rst $38
    ld a, [c]
    rst $38
    ld a, [$f3ff]
    rst $38
    db $eb
    rst $38
    ld [hl], a
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    db $ed
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
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
    rst $38
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
    db $fd
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
    ld a, a
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
    rrca
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ld [hl], b
    sbc a
    ld c, c
    rst $38
    inc b
    rst $38
    ld [$2517], a
    db $db
    add c
    ld a, a
    inc d
    db $eb
    ld a, c
    add [hl]
    cp e
    rst $38
    rst $38
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    push af
    adc d
    add b
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$04
    rst $38
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    ld bc, $90ff
    rst $28
    and b
    rst $18
    sub h
    db $eb
    ld a, [hl+]
    push de
    call nc, $e42b
    dec de
    ld a, [$f205]
    dec c
    db $fd
    ld [bc], a
    adc c
    rst $38
    ld d, c
    rst $38
    ret nz

    rst $38
    pop de
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub [hl]
    rst $38
    and e
    rst $38
    add b
    rst $38
    and b
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    inc h
    rst $38
    ld [$20ff], sp
    rst $38
    ld c, b
    rst $38
    ld c, c
    rst $38
    ld c, b
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    sub c
    rst $38
    add c
    rst $38
    ld de, $92ff
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    and [hl]
    rst $38
    and [hl]
    rst $38
    and [hl]
    rst $38
    ld l, l
    rst $38
    dec a
    rst $38
    dec l
    rst $38
    rst $28
    rst $38
    cp $ff
    ld a, h
    rst $38
    jp c, $cfff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    rst $28
    rst $38
    di
    rst $38
    ei
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    daa
    rst $38
    dec bc
    rst $38
    and c
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr @+$01

    ld e, h
    xor a
    db $f4
    rrca
    ld a, [$dd07]
    inc hl
    ld bc, $ffff
    nop
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ret nc

    rst $38
    ld d, a
    rst $38
    jr nz, @+$01

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
    rst $38
    nop
    ld e, a
    and b
    nop
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    db $fd
    ld [bc], a
    ld e, a
    and b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$5f], a
    ldh [rNR43], a
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld [$90ff], sp
    rst $38
    db $10
    rst $38
    ld de, $11ff
    rst $38
    ld de, $1aff
    rst $38
    ld hl, $92ff
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    and d
    rst $38
    ld h, $ff
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    call z, Call_083_7cff
    rst $38
    ld a, h
    rst $38
    call nc, $acff
    rst $38
    call nc, $8cff
    rst $38
    ret z

    rst $38
    add sp, -$01
    ret c

    rst $38
    sub b
    rst $38
    ld e, b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    sub c
    rst $38
    inc de
    rst $38
    sub e
    rst $38
    dec sp
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    ld d, [hl]
    rst $38
    ld l, d
    rst $38
    ld l, [hl]
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
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
    rst $30
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
    ld a, a
    rst $38
    cp a
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
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ldh [$7f], a
    ldh a, [$3f]
    ld hl, sp+$1f
    add sp, $1f
    inc d
    rst $28
    ld a, [$ed07]
    inc de
    rst $38
    ld bc, $ff00
    nop
    rst $38
    xor d
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
    push af
    rst $38
    ret z

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    jr c, @+$01

    jr @+$01

    inc a
    rst $38
    ld c, $ff
    ld b, $ff
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
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
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_083_7a63

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_083_7a73

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_083_7a83

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_083_7a93

    ld [hl-], a

jr_083_7a63:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_083_7aa3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_083_7a73:
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

jr_083_7a83:
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

jr_083_7a93:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld e, e
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_083_7aa3:
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
    ld e, e
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

Jump_083_7aff:
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
    jr jr_083_7b65

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

jr_083_7b65:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec b
    rlca
    rlca
    ld bc, $0701
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
    ld bc, $0607
    ld b, $07
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
    ld b, $01
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    rlca
    rlca
    rlca
    ld bc, $0606
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0707
    rlca
    nop
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0707
    rlca
    ld [bc], a
    rlca
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    nop
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc b
    dec b
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld bc, $0601
    ld bc, $0101
    ld bc, $0701
    rlca
    inc b
    inc b
    rlca
    rlca
    rlca
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    ld bc, $0404
    dec b
    rlca
    rlca
    ld b, $06
    ld c, $09
    add hl, bc
    rrca
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    dec c
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca

jr_083_7c8b:
    rrca
    inc c
    inc c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    add hl, bc
    rrca
    rrca

jr_083_7ca7:
    rrca
    rrca
    dec c
    rrca
    rrca
    rrca
    rrca
    dec c
    ld a, [bc]
    add b
    ld a, a
    sub b
    ld l, a
    sub b
    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ld h, b
    rst $18
    ld b, c
    cp $40
    rst $38
    db $10
    rst $28
    jr c, jr_083_7c8b

    jr nz, @+$01

    jr nz, jr_083_7ca7

    nop
    cp $00
    rst $38
    add b
    ld a, a
    add d
    ld e, l
    ld [bc], a
    db $fd
    ld a, [bc]
    db $fd
    adc d
    ld a, h
    adc d
    db $f4
    add h
    ld a, a
    inc b
    ei
    ld b, b

jr_083_7cdd:
    cp a
    ld b, b
    cp $4d
    ld a, [c]
    ld c, h
    di
    inc a
    db $e3

jr_083_7ce6:
    inc a
    db $e3
    ccf
    pop hl

jr_083_7cea:
    ld c, [hl]
    or c
    ld l, $d1
    ld l, a
    sub b
    ld a, b
    add b
    ld [hl], c
    adc b
    ld bc, $4c88
    add b
    ld l, b
    add h
    ld [hl], c
    add h
    ld [hl], a
    add b
    ld a, c

Call_083_7cff:
    add d
    nop
    jp nz, $c200

    ld b, b
    add c
    ld bc, $20e0
    pop bc
    jr nz, jr_083_7cdd

    jr nz, jr_083_7ce6

    jr nz, jr_083_7cea

    jr nc, jr_083_7d6c

    db $10
    ld a, [$fe18]
    ld [$08ff], sp
    rst $38
    inc c
    ei
    inc c
    rst $30
    inc b
    rst $38
    ld c, $f5
    ld b, $ff
    ld b, $fb
    ld b, $fb
    inc bc
    rst $38
    add e
    db $fd
    sub c
    rst $28
    and c
    sbc $80
    rst $38
    ret nc

    ld l, a
    ld d, b
    rst $28
    ld [hl], b
    rst $08
    ld h, h
    ei
    ld l, b
    or a
    or b
    ld l, a
    or d
    db $fd
    ld a, d
    sub l
    ld e, [hl]
    cp c
    add hl, sp
    sbc $38
    rst $08
    inc e
    db $eb
    inc e
    rst $28
    inc e
    rst $28
    ld c, $f5
    ld b, $ff
    ld [bc], a
    rst $38
    inc bc
    db $fc
    ld bc, $01ff
    rst $38
    ld bc, $00fe
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

    cp a

jr_083_7d6c:
    ret nz

jr_083_7d6d:
    rst $38
    ret nz

    rst $38
    ldh [$de], a
    ld h, b

jr_083_7d73:
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr c, jr_083_7d73

    jr @+$01

    jr @+$01

    inc e
    rst $28
    inc c
    rst $38
    ld c, $ff
    ld b, $ff
    rlca
    cp $03

jr_083_7d8b:
    rst $38
    inc hl
    rst $18
    inc bc
    db $fd
    ld hl, $21df
    rst $18
    jr z, jr_083_7d6d

    db $10

jr_083_7d97:
    rst $28
    db $10
    rst $28
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
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
    add b
    ld a, a
    add b
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    ld d, b
    xor a
    jr nz, jr_083_7d97

    nop
    rst $38
    jr nc, jr_083_7d8b

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc h
    db $db
    ld b, b
    cp a
    ld [hl+], a
    db $dd
    inc hl
    call c, $fd02
    add c
    ld a, [hl]
    ld [bc], a
    db $f4
    nop
    rst $38
    nop
    rst $10
    nop
    rst $18
    nop
    rst $10
    nop
    rst $30
    nop
    di
    ld b, b
    add e
    ei
    rst $38
    ld [bc], a
    rst $38
    jp nz, $e7ff

    rst $38
    and c
    rst $38
    and l
    ei
    and c
    ei
    db $f4
    db $e3
    or h
    db $e3
    call nc, $44e9
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    ld h, e
    db $fc
    ld h, h
    rst $38
    ld h, h
    rst $38
    inc a

Call_083_7dff:
jr_083_7dff:
    rst $38
    nop
    inc a
    db $10
    ld a, [hl+]
    db $10
    ld a, [hl+]
    db $10
    ld l, a
    nop
    rst $38
    ld [$89ff], sp
    ld a, [hl]
    add b
    ld a, a
    inc b
    ei
    ld b, h
    cp a
    ld b, h
    ld a, e
    ld b, b
    cp a
    ld [bc], a
    db $fd
    ld [hl+], a
    rst $38
    ld [hl+], a
    db $fd
    jr nz, jr_083_7dff

    ld de, $11ee
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$c4f7], sp
    cp e
    add h
    rst $38
    add h
    rst $38
    sub $a9
    ld d, d
    rst $28
    ld d, d
    rst $28
    ld a, d

jr_083_7e3b:
    add a
    inc sp
    db $ec
    dec h
    ei
    inc sp
    call $ea15
    ld [de], a
    db $fd
    ld a, [de]
    push hl
    inc c
    ei
    ld a, [bc]
    db $fd
    dec c
    ld a, [c]
    inc b
    rst $38
    inc b
    rst $38
    ld b, $fb
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add d
    ld a, a
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld b, c

jr_083_7e61:
    cp $40
    rst $38
    ld h, b
    rst $18
    jr nz, @+$01

    xor b
    ld [hl], a
    jr nc, jr_083_7e3b

    ld d, b
    cp a
    jr @-$07

    jr jr_083_7e61

    ld [$1cff], sp
    db $eb
    ld d, $ed
    inc b
    ld [hl], a
    ld b, $fb
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $01ff
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    xor b
    rst $10
    sub b
    rst $28
    ret nc

    xor a
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    jr @+$01

    jr @+$01

    inc e
    db $eb
    inc c
    rst $38
    inc d
    rst $28
    ld b, $ff
    ld c, $ff
    db $fc

jr_083_7eb1:
    ei
    ld a, [$fafd]
    db $fd
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
    db $fc
    cp $24
    cp $14

jr_083_7ec3:
    cp $0a
    cp $02
    cp $12
    cp $10
    rst $38
    ld a, [de]
    rst $38
    add hl, bc
    rst $38
    ld b, e
    cp l
    ld b, e
    cp l
    ld b, e
    cp h
    inc bc
    db $fc
    ld [bc], a
    rst $38
    inc bc
    db $fc
    ld bc, $01ff
    sbc [hl]
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    jr z, jr_083_7ec3

    jr nc, jr_083_7eb1

    ld [hl+], a
    pop bc
    ld h, c
    add b
    ld h, b
    add b
    and b
    ld b, b
    and b
    ld b, b
    or b
    ld b, b
    sbc a
    ld h, b
    ret nc

    cpl
    ld c, b
    or a
    nop
    add l
    nop
    rst $10
    nop
    db $d3
    nop
    ld e, c
    nop
    ld a, e
    ld [$00e3], sp
    ld l, l
    nop
    xor l
    nop
    xor a
    nop
    xor a
    inc b
    sub e
    nop
    push de
    nop
    rst $10
    nop

jr_083_7f1b:
    rst $18
    nop
    rst $18
    add d
    ld l, c
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    add b
    ld a, a
    ld [bc], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    inc b
    ei
    inc h
    rst $08
    jr nz, jr_083_7f1b

    nop
    rst $38
    nop
    rst $38
    ld [de], a
    push hl
    sub d
    ld l, a
    add d
    ld a, l
    adc b
    rst $30
    ret


    scf
    pop bc
    ld a, [hl]
    ld b, h
    ei
    ld h, h
    sbc a
    ld h, h
    sbc e
    ld h, d
    cp l
    ld h, d
    cp a
    ld h, d
    cp a
    ld [hl], d
    sbc l
    ld [hl], c
    sbc [hl]
    ld sp, $49df
    cp a
    xor b
    rst $18
    xor b
    rst $10
    add h
    ei
    ld b, h
    cp a
    ld b, h
    ei
    ld b, b
    ld a, a
    ld h, d
    sbc l
    ld [hl+], a
    db $fd
    jr nz, @+$01

    ld sp, $158e
    cp d
    inc d
    cp e
    db $10
    rst $08
    ld [$08d7], sp
    rst $18
    inc c
    or e
    inc b
    sbc e
    inc b
    sbc a
    inc b
    sbc a
    inc b
    res 0, d
    adc l
    ld [bc], a
    rst $08
    ld [bc], a
    call $c741
    ld bc, $00e6
    db $e3
    jr nz, jr_083_7fd9

    nop
    ld [hl], e
    nop
    di
    db $10
    and c
    nop
    cp c
    ld [$0bb1], sp
    db $fc
    ld hl, $45de
    cp $05
    cp $02
    rst $38
    ld d, $eb
    ld [bc], a
    rst $38
    ld bc, $6dff
    sbc d
    sbc b
    ld h, [hl]
    or c
    ld c, [hl]
    ld l, l
    sbc [hl]
    rrca
    cp $1e
    cp $87
    ld a, h
    ld e, a
    and b
    add hl, hl
    sub $99
    ld h, [hl]
    dec bc
    db $e4
    or c
    ld c, [hl]
    and e
    ld e, [hl]
    inc hl
    ld e, [hl]
    ld [bc], a
    ld a, a
    sub e
    ld l, a
    sub e
    cpl
    inc bc
    cp a
    dec bc
    or a
    sub c
    cp a
    or l

jr_083_7fd9:
    sbc e
    di
    sbc l
    sub c
    rst $18
    ret z

    rst $18
    ret c

    rst $08
    ld hl, sp-$31
    ldh a, [$cf]
    jp nz, $e2ef

    rst $28
    db $e3
    rst $28
    ldh [$ef], a
    jp hl


    rst $30
    jp hl


    rst $30
    pop af
    rst $30
    ldh a, [$f7]
    pop af
    rst $30
    push af
    ei
    db $f4
    ei
    db $fc
    ei
    db $fc
    ei
