SECTION "ROM Bank $08c", ROMX[$4000], BANK[$8c]

    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    inc bc
    ld b, $06
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
    dec b
    dec b
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
    ld b, $06
    ld b, $06
    ld b, $00
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
    dec b
    dec b
    dec b
    ld b, $00
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld b, $05
    inc bc
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    ld bc, $0707
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld [$0808], sp
    ld [$0f0f], sp
    rrca
    add hl, bc
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
    rst $38
    rst $38
    ld b, $06
    add b
    add b
    ld e, [hl]
    ld e, [hl]
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

jr_08c_4118:
    rst $38
    nop
    or a
    ld b, b
    cp a
    ld b, b
    db $d3
    jr nz, jr_08c_4118

    nop
    ld e, a
    jr nz, jr_08c_4180

    jr nz, jr_08c_4195

    db $10
    ld sp, hl
    nop
    xor a
    db $10
    xor a
    db $10
    rst $38
    nop
    xor a
    db $10
    or a
    ld [$0897], sp
    rst $18
    nop
    rst $10
    ld [$04db], sp
    ld e, a
    add b
    rst $08
    nop
    ld l, e
    add h
    db $eb
    inc b
    xor a
    ld b, b

jr_08c_4146:
    db $eb
    inc b
    xor e
    ld b, h
    rst $30
    nop
    or a
    ld b, b
    rst $10
    jr nz, jr_08c_4146

    ld [bc], a
    db $eb
    db $10
    ei
    nop
    ei
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp h
    ld b, b
    ret nz

    jr nz, jr_08c_416d

jr_08c_416d:
    nop
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    db $fd
    cp $fd
    cp $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff

jr_08c_4180:
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

jr_08c_4195:
    rst $38
    rst $38
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
    cp a
    sbc a
    sbc a
    rst $18
    rst $18
    cp a
    cp a
    rst $18
    rst $18
    rst $08
    rst $08
    rst $28
    rst $28
    rst $38
    rst $38
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    and b
    and b
    ld de, $ff11
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub a
    nop
    rst $30
    nop
    or a
    ld b, b
    ret c

    daa
    cp $01
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    cp $01
    cp $01
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

Jump_08c_41ff:
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
    cp $01

jr_08c_420e:
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    cp $01
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
    inc bc
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
    rlca
    ld hl, sp+$3f
    ret nz

    rst $38
    inc bc
    rst $38
    rra
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    rst $30
    ccf
    rst $00
    jr c, jr_08c_420e

    cp a
    rst $00
    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9e], a
    pop hl
    ret


    rst $30
    rst $00
    rst $38
    rst $08
    rst $38
    call z, $cafc
    ld a, [$fae2]
    ld [c], a
    ld a, [$fde1]
    push hl
    ld sp, hl
    push hl
    ld sp, hl
    pop af
    db $fd
    ldh a, [$fc]
    ld a, [c]
    db $fc
    ldh a, [$fe]
    ldh a, [$fe]
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rla
    nop
    nop
    rla
    rla
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
    pop hl
    ld [bc], a
    ld b, b
    inc bc
    ld [c], a
    ld bc, $0320
    ld [c], a
    ld bc, $01a6
    xor d
    ld bc, $00e3
    ld a, [c]
    ld bc, $00f7
    pop af
    nop
    pop de
    nop
    ld [hl], c
    add b
    cp l
    ld b, b

jr_08c_42d8:
    ccf
    ret nz

    ld a, h
    add b

jr_08c_42dc:
    cp [hl]
    ld b, b
    ld e, [hl]
    and b
    ld e, a
    and b
    ld a, a
    add b
    call c, $df20
    jr nz, jr_08c_42d8

    db $10
    rst $18
    jr nz, jr_08c_42dc

    db $10
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
    cp $00
    ld hl, sp-$01
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$7f]
    add c
    rst $38
    rrca
    rst $38
    ld a, a
    cp $fe
    cp $fe
    cp h
    cp h
    cp b
    cp h
    ld bc, $011d
    dec e
    push hl
    ld sp, hl
    db $fd
    pop hl
    db $fc
    ldh [$fc], a
    ldh [$fc], a
    ldh [$1f], a
    nop
    rst $38
    ldh [$fe], a
    ld bc, $07f9
    rst $20
    rra
    sbc a
    ld a, a
    ld a, l
    db $fd
    db $f4
    push af
    jp nc, $2ad2

    ld a, [hl+]
    xor d
    xor d
    xor c
    xor c
    sub l
    sub l
    ld d, l
    ld d, l
    ld d, h
    ld d, h

Call_08c_4348:
    ld d, h
    ld d, h
    ld c, d
    ld c, d
    ld a, [hl+]
    dec hl
    xor b
    xor a
    and c
    xor a
    add a
    cp a
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $20
    call z, $fecb
    pop af
    ld a, $c1
    cp $01
    ld a, [hl]
    add c
    ld a, h
    add e
    ld a, h
    add e
    ld [hl], b
    adc a
    ld bc, $03ff
    db $e3
    inc bc
    jp nz, $c003

    rra
    ret nz

    rra
    ldh [$9f], a
    ldh [$9e], a
    pop hl
    sbc h
    db $e3
    adc b
    rst $30
    pop bc
    rst $38
    jp $c7fc


    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$19
    ld hl, sp-$1a
    cp $e0
    rst $20
    ldh [$e3], a
    ldh [$e3], a
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f1]
    ldh a, [$f1]
    ld hl, sp-$07
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    dec bc
    ld b, b
    ld b, b
    dec bc
    dec bc
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
    db $f4
    ld [$08f4], sp
    or h
    ld [$0cb0], sp
    or d
    inc c
    ld a, [c]
    inc c
    jp nc, Jump_08c_720c

    adc h
    ld a, [c]
    inc c
    ld a, b
    add [hl]
    ld d, b
    adc [hl]
    reti


    ld b, $d9
    ld b, $d9
    ld b, $f9
    ld b, $f9
    ld b, $f8
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ldh a, [rP1]
    nop
    add b

Call_08c_4400:
    nop
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ld bc, $077e
    ld a, b
    cp c
    ret nz

    rst $20
    add [hl]
    sbc c
    sbc b
    pop hl
    ldh [rTAC], a
    nop
    ld e, $01
    ld a, c
    rlca
    rst $20
    rra
    sbc a
    ld a, a
    ld a, a
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [$fe], a
    add $f8
    ld e, $e0
    ld a, [hl]
    add b
    and $00
    ld h, [hl]
    nop
    ld l, a
    ld [$0166], sp
    ld h, b
    rlca
    pop af
    adc a
    rst $00
    cp a
    rrca
    rst $38
    ccf
    rst $38
    ei
    ld sp, hl
    di
    ld a, [c]
    rst $38
    db $fc
    adc a
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    db $fc
    add e
    add b
    rst $38
    add b
    ld hl, sp-$40
    ldh [$e0], a
    ldh [$67], a
    ldh [$7f], a
    add b
    rst $38
    add b
    rst $38
    add b
    db $fc
    inc bc
    ld hl, sp+$07
    pop af
    rrca
    db $e3
    rra
    call nz, Call_000_093f
    cp $1b
    db $fc
    dec sp
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    db $fc
    rra
    db $f4
    rrca
    cp $07
    rst $30
    rlca
    jp Jump_000_0007


    rlca
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl], b
    adc b
    ld [hl], c
    adc b
    inc sp
    ret z

    ld h, $d8
    inc h
    ret c

jr_08c_449e:
    ld [$fff1], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    ld a, [bc]
    ret nz

    ret nz

    rla
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    stop
    ld [bc], a
    nop
    stop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld [$0900], sp
    nop
    ld [$0000], sp
    nop
    jr nz, jr_08c_44d8

jr_08c_44d8:
    inc b
    nop
    inc h
    nop
    ld b, h
    nop
    inc h
    nop
    inc h
    nop
    and h
    nop
    and h
    nop
    add b
    nop
    sub d
    nop
    nop
    add b
    ld [de], a
    add b
    inc b
    add b
    jp nc, $c02d

    ccf
    ret nz

    ccf
    rst $10
    dec hl
    ret nc

    jr z, jr_08c_44fb

jr_08c_44fb:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rlca
    ld hl, sp+$7f
    add e
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    pop de
    ld bc, $0bd0
    adc d
    dec b
    add h
    cp e
    ld a, [hl-]
    or c
    jr nc, jr_08c_449e

    nop
    adc [hl]
    ld bc, $0789
    rst $20
    rra
    sbc a
    ld a, a
    ld a, a
    rst $38
    cp $ff
    ld sp, hl
    cp $e2
    db $fc
    adc [hl]
    ldh a, [$38]
    ld b, b
    ld a, e
    inc bc
    ld a, [hl-]
    ld [bc], a
    jr c, jr_08c_4538

jr_08c_4538:
    ld hl, sp-$3f

Call_08c_453a:
    ld hl, sp-$39
    ld sp, $070f
    ccf
    ld a, $fe
    inc a
    db $fc
    rst $38
    rst $38
    db $e3
    db $fc
    rst $08
    ldh a, [$df]
    ldh [$df], a
    ldh [$df], a
    ldh [$3f], a
    ldh [$a0], a
    ld a, a
    and b
    ld a, [hl]
    or b
    ld a, b
    sbc b
    ld a, b
    add hl, de
    ld hl, sp+$1f
    ldh [$3f], a
    ldh [$7f], a
    ldh [$fe], a
    pop bc
    ld hl, sp-$79
    pop af
    rrca
    db $e3
    rra
    rst $00
    ccf
    adc a
    ld a, a
    rra
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $08
    sbc a
    sub a
    rst $38
    db $e3
    ld a, l
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$00
    pop hl
    ld bc, $0303
    ccf
    ld b, $ff
    inc b
    cp $00
    call z, Call_000_1a00
    inc bc
    jr nc, jr_08c_4597

    ld h, d
    ld bc, $00c7
    adc a

jr_08c_4597:
    db $10
    rra
    jr nz, jr_08c_45da

    nop
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub a
    sub a
    nop
    nop
    db $f4
    db $f4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [c], a
    nop
    rst $38
    nop
    rst $30
    nop
    ld b, b
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld l, h
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop

jr_08c_45da:
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
    ld a, b
    add b
    ld b, b
    add b
    ldh [$e0], a
    rra
    rra
    nop
    nop
    nop
    nop
    ld bc, $ff01
    rrca
    cp $7f
    db $fc
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
    ldh a, [rIF]
    rst $38
    nop
    cp $01
    ld sp, hl
    rlca
    rst $20
    rra
    sbc [hl]
    ld a, [hl]
    ld l, h
    xor $e8
    db $ec
    ret nz

    call nz, $c4c1
    add c
    call nz, $8458
    call c, Call_08c_4400
    nop
    ld b, [hl]
    ld bc, $87c0
    pop af
    adc a
    rst $00
    cp a
    rrca
    ld a, a
    ccf
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$7f]
    ret nz

    cp a
    ldh [$1f], a
    ldh [rNR30], a
    ldh [rNR30], a
    ldh [rNR10], a
    add $30
    add $30
    ld bc, $11f0
    ldh a, [$3e]
    ld sp, $233c
    add hl, sp
    rlca
    db $e3
    rra
    rst $00
    ccf
    adc a
    ld a, a
    dec de
    ei
    scf
    di
    cp $f2
    db $ed
    db $e4
    push hl
    push hl
    add $c6
    push de
    call nz, $c4de
    db $dd
    rst $20
    rst $18
    rst $20
    rst $08
    cp $ff
    db $fc
    cp $f8
    inc c
    nop
    jr jr_08c_467e

jr_08c_467e:
    ld sp, $6302
    nop
    rst $00
    ld [$1fc0], sp
    sbc b
    rlca
    ccf
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    dec bc
    ld [$0080], sp
    ld hl, sp+$00
    cp $00
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
    rla
    rla
    nop
    nop
    rrca
    nop
    inc bc
    nop
    ccf
    nop
    ld d, b
    nop
    nop
    nop
    and b
    nop
    and b
    nop
    add b
    add b
    add b
    add b
    ld b, b
    nop
    ld h, c
    nop
    ld h, b
    nop
    ld l, b
    nop
    ld hl, $6800
    nop
    ld h, c
    nop
    jr z, jr_08c_46d2

jr_08c_46d2:
    dec h
    nop
    jr z, jr_08c_46d6

jr_08c_46d6:
    jr nz, jr_08c_46d8

jr_08c_46d8:
    and b
    nop
    ld bc, $2001
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    sub e
    ld l, l
    inc d
    db $eb
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_08c_46f6:
    inc bc
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    di
    rrca
    rst $18
    rst $28
    rra
    rst $28
    inc e
    rst $28
    db $10
    rst $28
    db $10
    ld [$ea12], a
    jr jr_08c_46f6

    db $10
    ld [$ea10], a
    inc de
    add sp, $14
    db $eb
    adc e
    ld [hl], a
    rrca
    rst $30
    rst $08
    rst $30
    adc a
    rst $30
    rrca
    rst $30
    inc c
    rst $30
    rrca
    ld [hl], a
    inc c
    ld [hl], a
    adc h
    ld [hl], a
    adc a
    ld [hl], a
    inc c
    ld [hl], a
    ld c, a
    inc [hl]
    inc c
    ld [hl], e
    dec bc
    rst $30
    xor $f6
    add $fa
    add l
    ei
    add a
    ei
    inc b
    ld a, [$fa04]
    inc b
    ei
    dec b
    ld a, [$f906]
    inc b
    ld a, e
    inc b
    ld a, e
    dec b
    dec sp
    push bc
    dec sp
    push bc
    dec sp
    dec [hl]
    dec bc
    inc hl
    dec e
    jp $833d


    ld a, l
    ld [hl-], a
    db $fd
    ld a, [c]
    db $fd
    jp nz, $d2cd

    call $8da2
    and d
    adc l
    ld [bc], a
    ldh a, [$63]
    sub b
    ld [c], a
    db $10
    and e
    ld d, c
    and e
    pop de
    ld e, l
    or c
    cp e
    ld h, d
    ld [hl], a
    add $e0
    add a
    rst $08
    db $10
    sub a
    jr z, jr_08c_4778

    ld a, [hl]

jr_08c_4778:
    ld c, $71
    add e
    ld a, h
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    rst $30
    nop
    dec sp
    nop
    rst $18
    ret nz

    add a
    nop
    pop af

jr_08c_478b:
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
    rra
    nop
    inc hl
    jr nz, jr_08c_478b

    nop
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
    rrca
    rrca
    cp $00
    rst $38
    nop
    rst $38
    nop
    jp c, RST_00

    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    add d
    add b
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    ld hl, sp+$43
    cp h
    inc bc
    db $fc
    inc bc
    db $fc
    inc hl
    call c, $f810
    ld b, b
    ldh [rP1], a
    nop
    rlca
    ld hl, sp+$18
    rst $20
    db $e3
    rra
    rrca
    rst $38
    ccf
    rst $38
    cp $ff
    ld hl, sp-$01
    ret nz

    rst $38
    ld bc, $06ff
    rst $38
    ld [$f18f], sp
    cp $76
    ld sp, hl
    add hl, bc
    add a
    scf
    rst $08
    rst $08
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp a
    rst $38
    db $fd
    rst $38
    or c
    rst $38
    or c
    cp $b6
    ld sp, hl
    jp hl


    rst $30
    rst $30
    rst $08
    rst $08
    cp a
    cp [hl]
    ld a, a
    ld a, c
    rst $38
    or $ff
    ret z

    rst $38
    jr nc, jr_08c_48b1

    ld b, e
    ld a, h
    add h
    ei
    adc d
    push af
    ld [de], a
    ld l, l
    ld [hl+], a
    ld e, l
    jp nz, $023d

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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    dec b
    ld bc, $030b
    ld d, $07
    inc l
    rrca
    ld e, b
    rra
    or h
    dec sp
    ld h, b
    ld a, a
    call $c7f2
    ld hl, sp-$08
    rst $38
    ld a, $ff
    inc bc
    rst $38
    ldh [$1f], a
    ld e, $00
    add e
    nop
    ldh a, [rP1]
    rst $38
    nop
    sbc a
    nop
    db $fd
    nop
    ld a, [hl]
    nop
    rra
    nop
    jp $f800


    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    add e
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
    ccf
    nop
    rra
    nop
    rst $10
    db $10
    cp a
    rra
    rst $38
    nop
    rst $38
    nop
    ld b, $00
    nop
    nop
    dec b
    nop
    rlca
    nop
    or l
    nop
    nop

jr_08c_48b1:
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld h, e
    nop
    daa
    ret c

    or a
    ld c, b
    or a
    ld c, b
    or l
    ld c, d
    or l
    ld c, d
    ld bc, $1900
    nop
    db $ed
    inc c
    ccf
    db $fd
    di
    db $fd
    db $e3
    db $fd
    jp $83fd


    db $fd
    add e
    db $fd
    add e
    db $fd
    add e
    db $fd
    rst $38
    ld sp, hl
    dec de
    push hl
    ld h, a
    sbc l
    sbc a
    ld a, l
    ld a, e
    db $fd
    ei
    db $fd
    pop af
    cp $f1
    or $f1
    or $d1
    sub $57
    ld d, h
    ld e, l
    ld d, d
    ld d, e
    ld c, [hl]
    ld l, l
    ld e, [hl]
    db $dd
    ld a, $39
    cp $e1
    and $a9
    xor [hl]
    add hl, bc
    ld c, $66
    ld h, l
    ld l, h
    ld h, e
    db $10
    rrca
    jr nz, @+$21

    ld b, d
    cp a
    add d
    ld a, a
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
    ld bc, $0302
    inc b
    rlca
    ld [$100f], sp
    rra
    dec h
    ld a, [hl-]
    ld b, d
    ld a, l
    add b
    rst $38
    inc b
    ei
    nop
    rst $38
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    ld a, $00
    ld bc, $e000
    nop
    cp $00
    rst $38
    nop
    ld de, $e200
    ldh [rNR50], a
    inc h
    inc bc
    inc bc
    ret nz

    nop
    ld a, a
    nop
    rrca
    nop
    push de
    nop
    db $fd
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    nop
    rrca
    nop
    pop af
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
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
    rst $38
    rst $38
    ccf
    ccf
    pop bc
    ld bc, $00b4
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    add c
    nop
    xor e
    nop
    cp c
    nop
    xor e
    nop
    cp c
    nop
    ei
    nop
    ei
    nop
    cp l
    nop
    or a
    ld [$00ff], sp
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
    ei
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    db $fc
    ld bc, $01fc
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, l
    nop
    db $fd
    nop
    rst $38
    nop
    ld e, a
    nop
    sbc $00
    ld l, a
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld l, h
    nop
    db $dd
    nop
    call z, $c800
    nop
    ld c, c
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    add b
    nop
    and h
    nop
    add b
    nop
    inc b
    nop
    nop
    nop
    inc d
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
    jr nz, jr_08c_4a10

jr_08c_4a10:
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$8000], sp
    nop
    ld h, b
    nop
    ld d, b
    nop
    ld [bc], a
    nop
    nop
    nop
    add b
    nop
    inc e
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $18
    nop
    ld a, a
    nop
    ld b, $00
    ld [c], a
    nop
    cp $00
    ei
    nop
    ld a, $00
    adc a
    add b
    ld [hl], b
    ld [hl], b
    ld d, h
    inc d
    pop af
    ld bc, $00ff
    rst $38
    nop
    rst $10
    nop
    ld hl, sp+$00
    cp $00
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
    pop af
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    db $e3
    nop
    ld sp, hl
    nop
    rst $38
    nop
    push de
    ret nz

    ei
    ld hl, sp-$02
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
    rra
    rra
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    ld b, h
    inc b
    nop
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld b, b
    nop
    ld d, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, d
    nop
    ld b, d
    nop
    add d
    nop
    jp nz, $8200

    nop
    ret nz

    nop
    add b
    nop
    add [hl]
    nop
    add l
    nop
    add h
    nop
    add a
    nop
    rst $00
    nop
    jp $c100


    nop
    jp $c200


    ld bc, $00cb
    db $d3
    nop
    rst $00
    nop
    rst $00
    nop
    add a
    ld b, b
    and a
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
    rst $18
    nop
    rst $18
    nop
    sbc $00
    ld c, a
    nop
    adc $00
    add $00
    sub $00
    push bc
    nop

Jump_08c_4b00:
    add $00
    ld h, [hl]
    nop
    inc b
    nop
    ld b, h
    nop
    nop
    nop
    jr nz, jr_08c_4b0c

jr_08c_4b0c:
    jr nz, jr_08c_4b0e

jr_08c_4b0e:
    nop
    nop
    inc b
    nop
    ld b, b
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    nop
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
    jr nz, jr_08c_4b2a

jr_08c_4b2a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld de, $9000
    nop
    ld bc, $0200
    nop
    ld [c], a
    nop
    ld e, [hl]
    nop
    nop
    nop
    ret nz

    nop
    cp $00
    rst $20
    nop
    ld a, $00
    add a
    nop
    ldh [rP1], a
    cp $00
    rra
    nop
    jp Jump_08c_5b00


    nop
    ld bc, $0000
    nop
    add sp, $00
    db $ed
    nop
    rra
    nop
    rrca
    nop
    pop bc
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    sub $00
    cp $00

jr_08c_4b6e:
    ccf
    nop
    rst $08
    nop
    ldh [rP1], a
    or $00
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    dec e
    nop
    nop
    nop
    ret nc

    nop
    ld l, b
    nop
    ret z

    ret nz

    ld hl, sp-$08

jr_08c_4b8a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fb
    ld hl, sp-$09
    ldh a, [$f0]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38

jr_08c_4b9a:
    pop hl
    ld bc, $00ff
    db $eb
    nop
    ld [bc], a
    nop
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    nop
    rlca
    nop
    ld b, $00

jr_08c_4bac:
    rlca
    nop
    ld a, [hl+]
    nop
    sbc $00
    ld a, d
    nop
    ld a, d
    nop
    dec sp
    nop
    ld a, [hl+]
    db $10
    dec bc
    jr nc, jr_08c_4c00

    jr nc, @+$5d

    jr nz, jr_08c_4c1c

    jr nz, jr_08c_4c22

    jr nz, jr_08c_4c20

    jr nz, jr_08c_4c1e

    jr nz, jr_08c_4c20

    jr nz, jr_08c_4b9a

    jr nc, jr_08c_4bac

    jr nz, jr_08c_4b6e

    ld h, b
    rst $18
    jr nz, jr_08c_4b8a

    ld b, b
    rst $18
    jr nz, @+$01

    nop
    cp a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
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
    ld [hl], a
    nop
    ld h, a
    nop
    ld h, a
    nop
    rst $20
    nop
    rst $20
    nop
    halt
    halt

jr_08c_4c00:
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    ld b, [hl]
    nop
    ld b, h
    nop
    ld h, $00
    ld h, h
    nop
    ld d, h
    nop
    ld h, b
    nop
    ld b, c
    nop
    ld b, b
    nop
    nop
    nop
    ld [$0000], sp
    nop

jr_08c_4c1c:
    ld b, d
    nop

jr_08c_4c1e:
    nop
    nop

jr_08c_4c20:
    ld d, b
    nop

jr_08c_4c22:
    nop
    nop
    nop
    nop
    nop
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
    ld c, b
    nop
    nop
    nop
    stop
    nop
    nop
    adc [hl]
    nop
    nop
    nop
    ld [$c000], sp
    nop
    ld a, b
    nop
    adc a
    nop
    pop bc
    nop
    jp nz, $f700

    nop
    rst $08
    nop
    nop
    nop
    add d
    nop
    ld hl, sp+$00
    rst $18
    nop
    ei
    nop
    ld a, l
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    ccf
    nop
    ld [de], a
    nop
    ret nz

    nop
    ld a, [c]
    nop
    dec hl
    nop
    jp $f800


    nop
    cp $00
    rrca
    nop
    nop
    nop
    add e
    inc bc
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    ld [$0000], sp
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
    ld a, a
    add b
    ld l, h
    nop
    cp $fe
    ld sp, hl
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    push bc
    nop
    ld b, l
    nop
    push af
    nop
    rst $38
    nop
    cp $00
    or $00
    cp $00
    or $00
    jp $fe00


    nop
    rst $08
    nop
    xor d
    nop
    ld [$bf00], a
    nop
    ei
    nop
    sbc a
    nop
    db $eb
    nop
    db $eb
    nop
    xor e
    nop
    rst $38
    nop
    xor [hl]
    nop
    xor a
    nop
    xor a
    nop
    sbc [hl]
    nop
    cp a
    nop
    rst $18
    nop
    or a
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    ld bc, $0197
    sbc a
    ld bc, $01ff
    sbc a
    ld bc, $019f
    cp a
    ld bc, $015f
    rst $18
    ld bc, HeaderManufacturerCode
    ccf
    ld bc, HeaderComplementCheck
    dec l
    db $d3
    ld a, [hl]
    add d
    ld e, [hl]
    and d
    ld [hl], $ca
    ld [hl], $ca
    ld d, $ea
    ld a, d
    add [hl]
    ld [bc], a
    cp $0a
    or $12
    xor $02
    cp $02
    cp $02
    cp $02
    cp $14
    db $ec
    inc b
    db $fc
    inc d
    db $ec
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b

jr_08c_4d19:
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$00
    rst $38
    add b
    ld a, a
    jr nz, jr_08c_4d19

    nop
    rst $38
    sub b
    ld l, a
    ld bc, $14fe
    nop
    ld b, b
    nop
    ld l, b
    nop
    add l
    nop
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    add c
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $00
    nop
    ld sp, hl
    nop
    cp a
    nop
    rra
    nop
    ret nz

    nop
    ld hl, sp+$00
    cp $00
    ld a, a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld b, l
    nop
    add c
    nop
    add b
    nop
    ret nz

    nop
    jr nz, jr_08c_4d9a

    jr nz, jr_08c_4d9c

    add c
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
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
    ld a, a
    nop
    ei
    nop
    rst $38
    nop

jr_08c_4d9a:
    rst $38
    nop

jr_08c_4d9c:
    rst $38
    nop
    ld de, $9300
    add d
    ld d, c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld a, c
    nop
    ld sp, hl
    nop
    ld sp, $7900
    nop
    ld a, c
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], d
    nop
    ld a, [c]
    nop
    ei
    nop
    di
    nop
    ld a, [c]
    dec c
    di
    inc c
    ei
    inc b
    di
    inc c
    di
    inc c
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$04
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $03ff
    rst $38
    ld h, a
    sbc a
    rlca
    ld hl, sp+$50
    cp a
    ld d, b
    cp a
    ld e, [hl]
    cp a
    inc bc
    db $fd
    ld sp, $28fe
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $20ff
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    ld [hl], b
    nop
    rrca
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld l, d
    nop
    ld hl, sp+$00
    inc b
    nop
    nop
    nop
    ldh [rP1], a
    dec [hl]
    nop
    inc de
    nop
    ld b, b
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    ret nz

    nop
    and b
    nop
    ret nz

    nop
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $fd
    cp $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    ei
    db $fc
    cp $f9
    rst $38
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    jp $9fc3


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, b
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    ld hl, $2000
    nop
    jr nc, jr_08c_4ea6

jr_08c_4ea6:
    ld a, [hl+]
    nop
    ld l, [hl]
    inc b
    ld l, [hl]
    inc b
    ld a, d
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld b, c
    nop
    ld c, b
    nop
    ld b, l
    nop

jr_08c_4eb8:
    ld d, l
    nop
    ld e, l
    nop
    db $dd
    nop
    push de
    nop
    rst $10
    jr z, jr_08c_4eb8

    ld a, [hl+]
    rst $10
    jr z, @-$23

    inc h
    db $db
    inc h
    cp a
    ld b, b
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
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    db $fc
    inc bc
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
    db $fd
    rst $38
    ei
    ld [$11f7], sp
    rst $28
    inc hl
    rst $18
    rlca
    rst $38
    ld c, $ff
    inc a
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    jr nz, @-$1f

    db $10
    rst $28
    adc b
    rst $30
    add h
    ei
    ld b, h
    ei
    ld [hl+], a
    db $fd
    ld de, $08fe
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    ld bc, $0080
    ld a, h
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$1f], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$df], a
    ldh [$dc], a
    db $e3
    ld hl, sp-$39
    ld hl, sp-$39
    cp b
    rst $00
    cp b
    rst $00
    db $fc
    add a
    ld [hl], b
    adc a
    ld a, b
    adc a
    ld a, b
    adc a
    ld a, b
    adc a
    add sp, $1f
    ld hl, sp+$0f
    add sp, $1f
    add sp, $1f
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    db $fd
    rrca
    db $fd
    rrca
    db $fd
    rrca
    rst $38
    rrca
    db $fd
    rlca
    nop
    nop
    ld bc, $1501
    dec d
    xor a
    xor a
    nop

jr_08c_4f89:
    nop
    db $fd
    nop
    rst $38

jr_08c_4f8d:
    nop
    rst $38

jr_08c_4f8f:
    nop
    rst $38
    nop
    add c
    nop
    inc l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    nop
    nop
    ld a, [bc]
    ld [$0004], sp
    add [hl]
    nop
    add [hl]
    nop
    adc h
    nop
    sbc h
    nop
    or h
    nop
    cp l
    ld bc, $00dc
    cp $00
    db $fc
    nop
    cp h
    nop
    cp h
    nop
    cp h
    nop
    inc a
    nop
    inc a
    nop
    jr c, jr_08c_4f89

    cp b
    ld b, a
    jr c, jr_08c_4f8d

    jr c, jr_08c_4f8f

    ld hl, sp+$07
    ld a, b
    add a
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
    db $fc
    rst $38
    rst $38
    rst $38
    rst $00
    ccf
    nop
    rst $38
    inc b
    ei
    ld [$11f7], sp
    rst $28
    ld h, e
    sbc a
    adc a
    ld a, a
    ld e, $ff
    inc a
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $e1ff
    rra
    rra
    pop hl
    nop
    rst $38
    nop
    rst $38
    pop af
    rst $38
    rrca
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
    rlca
    rst $38
    add a
    ld a, a
    ld b, a
    cp a
    daa
    rst $18
    daa
    rst $18
    rla
    rst $28
    rrca
    rlca
    add a
    add a
    ld b, a
    ld b, a
    rst $00
    inc bc
    scf
    inc bc
    rlca
    inc bc
    rrca
    rrca
    rrca
    rrca
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, c
    add [hl]
    ld a, c
    add [hl]
    ld e, l
    and [hl]
    ld [hl], l
    adc [hl]
    add h
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
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    add hl, sp
    add $7f
    add a
    dec sp
    rst $00
    ccf
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$9f], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld e, $1e
    rst $18
    rst $18
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    db $ec
    nop
    add sp, $00
    ld hl, sp+$00
    cp $00
    ret nz

    nop
    jr z, jr_08c_5096

jr_08c_5096:
    and $00
    cp $00
    rst $28
    nop
    rst $38
    nop
    ld h, d
    ld b, b
    and l
    add c
    and [hl]
    add b
    and h
    add b
    and $80
    db $e4
    add b
    db $fd
    sub b
    db $fd
    sub b
    ld a, l
    db $10
    ld c, l
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld e, h
    inc b
    inc e
    inc b
    stop
    ld d, h
    inc b
    pop de
    nop
    sbc c
    ld h, [hl]
    sub c
    ld l, [hl]
    sbc c
    ld l, [hl]
    ld sp, $21ce
    sbc $a9
    ld e, [hl]
    ld de, $01ee
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    inc bc
    dec bc
    inc bc
    rst $28
    rst $20
    rst $28
    rst $20
    daa
    daa
    ld a, a
    ld a, a
    rst $38
    cp $ff
    cp $ff
    cp $3f
    ld a, $7e
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, l
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$f0]
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

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    adc b
    adc b
    add b
    add b
    add b
    add b
    add b
    add b

jr_08c_5138:
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
    rst $00
    ccf
    call c, $d723
    jr c, jr_08c_5138

    jr @-$03

    inc c
    di
    inc c
    ei
    inc c
    rst $38
    inc c
    db $eb
    inc e
    db $ec
    rra
    di
    rrca
    ei
    rlca
    db $e4
    dec de
    xor $1f
    rst $30
    rrca
    reti


    ccf
    rst $20
    rra
    ld sp, hl
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    nop
    ld d, b
    nop
    stop
    adc b
    nop
    or b
    nop
    ld h, b
    nop
    nop
    nop
    inc b
    nop
    jr nz, jr_08c_519c

jr_08c_519c:
    call nz, $0c00
    nop
    ld b, $02
    ld [hl+], a
    ld [bc], a
    or b
    db $10
    xor b
    nop
    jr z, jr_08c_51aa

jr_08c_51aa:
    jr z, jr_08c_51ac

jr_08c_51ac:
    ld c, b
    nop
    ret z

    add b
    ret c

    add b
    ld e, b
    nop
    ld e, b
    nop
    ld d, h
    nop
    nop
    nop
    or b
    nop
    and c
    nop
    and b
    nop
    xor b
    nop
    and b
    nop
    jr nz, jr_08c_51c6

jr_08c_51c6:
    jr nc, jr_08c_51c8

jr_08c_51c8:
    ld h, d
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ret nz

    add b
    db $e3
    add b
    pop hl
    add b
    pop hl
    add b
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    jp $c300


    nop
    jp Jump_08c_4b00


    nop
    inc de
    nop
    add e
    nop
    inc bc
    nop
    add [hl]
    nop
    add [hl]
    nop
    ld b, $00
    ld b, $00
    ld c, $00
    adc [hl]
    nop
    inc c
    nop
    inc c
    nop
    dec c
    nop
    dec c
    nop
    dec c
    nop
    dec e
    nop
    dec c
    nop
    dec de
    nop
    dec sp
    nop
    dec de
    nop
    dec de
    nop
    dec sp
    nop
    dec de
    nop
    ld [hl], a
    nop
    scf
    nop
    rla
    nop
    scf
    nop
    ld [hl], a
    nop
    cpl
    nop
    ld l, a
    nop
    ld l, a
    nop
    ld a, a
    nop
    cpl
    nop
    ccf
    nop
    ld e, a
    nop
    ld a, a
    nop
    ld e, a
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
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    ld [hl], a
    ld [$08f5], sp
    scf
    ld [$007f], sp
    ld a, a
    nop
    ei
    nop
    rst $18
    nop
    rst $18
    nop
    rra
    add b
    rra
    add b
    ld a, $80
    ccf
    nop
    cp [hl]
    nop
    dec sp
    add b
    dec hl
    add b
    dec hl
    add b
    dec hl
    nop
    and l
    nop
    dec h
    add b
    rlca
    add b
    ld d, a
    add b
    ld h, a
    add b
    ld d, a
    add b
    ld h, a
    add b
    ld b, e
    add b
    ld b, a
    add b
    ld b, $c0
    ld b, $c0
    ld a, [bc]
    ret nz

    ld [bc], a
    ret nz

    inc c
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    inc c
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    ld [$1800], sp
    nop
    add hl, sp
    nop
    ld de, $1100
    nop
    add hl, sp
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    inc sp
    nop
    ld [hl], e
    nop
    ld hl, $a302
    nop
    ld h, c
    ld [bc], a
    ld h, a
    nop
    ld h, a
    nop
    ld h, a
    nop
    ld h, a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    sbc a
    nop
    sbc a
    nop
    sbc l
    nop
    sbc a
    nop
    sbc a
    nop
    cp a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    db $fc
    nop
    db $dd
    nop
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    nop
    jp hl


    nop
    ei
    nop
    db $eb
    nop
    ld a, [c]
    nop
    di
    nop
    rst $30
    nop
    push af
    nop
    rst $30
    nop
    rst $20
    nop
    db $e3
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $08
    nop
    rst $18
    nop
    sbc a
    nop
    rst $18
    nop
    sbc a
    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop
    ccf
    nop
    ld a, e
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $30
    nop
    ld a, a
    nop
    cp $00
    cp $00
    rst $38
    ldh [$bf], a
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
    rst $30
    nop
    di
    nop
    ld [hl], e
    nop
    halt
    halt
    ld [hl], a
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    ld e, a
    jr nz, jr_08c_5422

    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    cp a
    ld b, b
    rst $38
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
    cp $00
    cp $00
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
    rst $38
    nop
    rst $28
    nop
    ei
    nop
    ei
    nop
    ld a, [$df00]
    nop
    cp $00
    cp $00
    or $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $ed
    nop
    jp hl


    nop
    ei
    nop
    ei
    nop
    db $db
    nop
    db $db
    nop
    rst $30
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
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop

Call_08c_5400:
    rst $18
    nop
    rst $18
    nop
    sbc a
    nop
    cp a
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

jr_08c_5422:
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    add sp, $00
    ldh [rP1], a
    ret nc

    nop
    ret z

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
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
    ld bc, $0102
    inc bc
    inc b
    dec b
    ld bc, $0706
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld bc, $2001
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_08c_54b8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08c_54c8

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08c_54c8

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld h, $43
    ld b, h
    add hl, hl
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

jr_08c_54b8:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    add hl, hl
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_08c_54c8:
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
    add hl, hl
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
    ld a, l
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
    xor c
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

    cp l
    cp [hl]
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dbbd

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    cp l
    cp l
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    cp l
    di
    db $f4
    push af
    or $bd
    cp l
    rst $30
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    cp l
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
    jr jr_08c_55a8

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08c_55b8

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08c_55c8

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_08c_55a8:
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop

jr_08c_55b8:
    nop
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
    nop

jr_08c_55c8:
    nop
    nop
    nop
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
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
    daa
    rlca
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld bc, $0101
    ld bc, $0707
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld bc, $0701
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
    dec b
    dec b
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
    dec b
    dec b
    ld b, $05
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
    ld b, $05
    dec b
    dec b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    dec b
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
    ld b, $03
    dec b
    dec b
    dec b
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
    ld b, $05
    dec b
    dec b
    dec b
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
    ld b, $03
    dec b
    dec b
    dec b
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
    ld b, $03
    dec b
    dec b
    dec b
    dec b
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
    ld b, $03
    dec b
    dec b
    dec b
    dec b
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
    ld b, $03
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $08
    ld c, $0e
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e0e], sp
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    ld c, $0e
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
    rst $38
    nop
    rst $38
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
    rst $18
    nop
    rst $38
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
    ld a, a
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
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    sbc a
    nop
    ld e, a
    nop
    sbc a
    nop
    adc a
    nop
    adc a
    nop
    rst $08
    nop
    rst $08
    nop
    adc a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $00
    nop
    rst $10
    nop
    rst $08
    nop
    rst $00
    nop
    jp $e300


    nop
    rst $20
    nop
    db $e3
    nop
    and $00
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    di
    nop
    di
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr nc, jr_08c_5794

jr_08c_5794:
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
    rst $38
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
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$e0]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    cp a
    nop
    rst $38
    nop
    cp a
    nop
    cp [hl]
    ld bc, $00bf
    rra
    nop
    ld e, [hl]
    ld bc, $007f
    ld e, a
    nop
    ld e, a
    nop
    cp [hl]
    ld bc, $008f
    adc $01
    rst $28
    nop
    rst $08
    nop
    rst $28
    nop
    rst $28
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
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    ei
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
    db $fd
    nop
    push af
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $18
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    push af
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    ld a, [$fb00]
    nop
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $dd
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $ec
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ld b, b
    nop
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
    cp $ff
    db $fd
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    cp a
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_08c_58a6:
    rst $38
    nop
    rst $38
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
    jr nz, @-$1f

    jr nz, jr_08c_58a6

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$807f], sp
    rst $30
    ld [$00ff], sp
    rst $30
    ld [$04fb], sp
    rst $38
    nop
    rst $30
    ld [$04fb], sp
    ei
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
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
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    rst $38

jr_08c_58f7:
    nop
    rst $38
    nop
    ld a, a

jr_08c_58fb:
    nop
    ld a, a

jr_08c_58fd:
    nop
    ld a, a

jr_08c_58ff:
    nop
    ld a, a

jr_08c_5901:
    nop
    cp a

jr_08c_5903:
    nop
    cp a

jr_08c_5905:
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ei
    inc b
    db $dd
    ld [bc], a
    call c, $fc03
    inc bc
    ld sp, hl
    ld b, $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fd
    nop
    db $fc
    nop
    reti


    jr nz, jr_08c_5901

    jr nz, jr_08c_58fb

    jr nz, jr_08c_58fd

    jr nz, jr_08c_58ff

    jr nz, jr_08c_5901

    jr nz, jr_08c_5903

    jr nz, jr_08c_5905

    jr nz, jr_08c_58f7

    jr nz, @+$62

    nop
    ld h, b
    nop
    ld b, b
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
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    ld sp, hl
    cp $f7
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$bf], a
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
    add sp, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $30
    nop
    or $00
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    sbc $20
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
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    ld l, a
    nop
    ld l, a
    nop
    cp $00
    ld a, [hl]
    nop
    cp [hl]
    nop
    sub $00
    rst $38
    nop
    ld a, [$b700]
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    dec sp
    nop
    dec de
    nop
    dec e
    nop
    db $db
    nop
    call c, $c800
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $f800
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    or $ff
    rst $30
    cp $f6
    rst $38
    rst $38
    rst $38
    ret


    rst $38
    sbc h
    db $e3
    ld l, e
    sub [hl]
    sub h
    rst $38
    rla
    ld sp, hl
    inc l
    di
    jp hl


    or $f3
    db $fc
    di
    db $fc
    ld b, $f9
    rlca
    ld hl, sp+$0f
    ldh a, [$87]
    ld a, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $db
    nop
    db $db
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    ld l, a
    nop
    ld l, a
    nop
    ld l, a
    nop
    ld l, a
    nop
    ld l, a
    nop
    rst $28
    nop
    rst $28
    nop
    xor $00
    rst $28
    nop
    rst $30
    nop
    xor a
    nop
    and a
    nop
    cp a
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    db $db
    nop
    rst $30
    nop
    db $db
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $eb
    nop
    db $eb
    nop
    db $eb
    nop
    ld a, [$e900]
    nop
    ld a, c
    nop
    jp hl


    nop
    ld sp, hl
    nop
    db $fd
    nop
    cp l
    nop
    db $fd
    nop
    push af
    nop
    cp l
    nop
    db $fc
    nop
    rst $38
    nop
    db $fd
    nop
    push af
    nop
    db $fc
    nop
    call c, $fc00
    nop
    sbc $00
    cp [hl]
    nop
    ld a, [hl]
    nop
    sbc $00
    ld a, [hl]
    nop

Jump_08c_5b00:
    ld e, [hl]
    nop
    ld a, d
    nop
    ld e, d
    nop
    ld a, [bc]
    nop
    jr jr_08c_5b0a

jr_08c_5b0a:
    nop
    nop
    inc b
    nop
    jr nz, jr_08c_5b10

jr_08c_5b10:
    ld a, [hl]
    adc a
    rst $18
    and $fd
    ld a, [c]
    rst $38
    ld hl, sp-$15
    db $fc
    rst $20
    db $fc
    db $dd
    and $bd
    add $fd
    ld b, $fd
    ld b, $79
    add [hl]
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
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
    jr c, jr_08c_5b3c

jr_08c_5b3c:
    ld a, h
    jr c, @-$02

    ld a, b
    ld hl, sp+$30
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc d
    nop
    ld e, c
    nop
    ld a, $00
    sbc a
    nop
    dec e
    nop
    sbc [hl]
    nop
    db $dd
    nop
    cp l
    nop
    cp [hl]
    nop
    rst $18
    nop
    db $dd
    nop
    sbc a
    nop
    sbc a
    nop
    sbc $00
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    xor $00
    cp $00
    db $fd
    nop
    and $00
    xor $00
    db $ed
    nop
    db $fc
    nop
    or $00
    xor $00
    or $00
    or $00
    or $00
    or $00
    or $00
    cp $00
    or $00
    ld [$f600], a
    nop
    sub $00
    ld a, [c]
    nop
    jp nc, $d300

    nop
    db $d3
    nop
    db $db
    nop
    db $eb
    nop
    jp hl


    nop
    jp hl


    nop
    pop hl
    nop
    push bc
    nop
    ld h, e
    nop
    ret


    nop
    ld h, c
    nop
    ld b, h
    nop
    pop hl
    ld b, c
    inc hl
    ld bc, $51d1
    ld b, l
    dec b
    rst $38
    rst $38
    rst $30
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $ee
    rst $38
    xor $ff
    xor $ff
    cp $01
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld e, d
    nop
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
    ld a, [hl]
    ld bc, $0007
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
    ld [bc], a
    nop
    ld b, $00
    inc c
    nop
    inc c
    nop
    jr jr_08c_5c38

jr_08c_5c38:
    jr jr_08c_5c3a

jr_08c_5c3a:
    jr nc, jr_08c_5c3c

jr_08c_5c3c:
    jr nz, jr_08c_5c3e

jr_08c_5c3e:
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld [de], a
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_08c_5c58

jr_08c_5c58:
    ld d, d
    ld [bc], a
    inc b
    nop
    ld a, [bc]
    ld [bc], a
    jr nz, jr_08c_5c60

jr_08c_5c60:
    add b
    nop
    jr nz, jr_08c_5c64

jr_08c_5c64:
    nop
    nop
    nop
    nop
    ld b, h
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    add b
    nop
    jr nz, jr_08c_5c78

jr_08c_5c78:
    jr z, jr_08c_5c7a

jr_08c_5c7a:
    jr nz, jr_08c_5c7c

jr_08c_5c7c:
    and b
    nop
    add b
    nop
    ldh [rP1], a
    sub b
    nop
    and b
    nop
    ret z

    nop
    add h
    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    and b
    nop
    ret nz

    nop
    jp nc, $8000

    nop
    ld b, c
    nop
    nop
    nop
    ret nz

    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    ld d, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld l, h
    ld h, h
    ld hl, $0420
    inc b
    ld a, [de]
    ld [de], a
    ld e, d
    ld d, d
    ld e, d
    ld d, d
    ld d, [hl]
    ld d, [hl]
    add d
    add d
    dec b
    dec b
    dec a
    dec a
    ld a, e
    ld a, e
    cp a
    cp a
    ld a, a
    ld a, a
    cp a
    cp a
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
    add a
    adc e
    rst $30
    sbc b
    rst $20
    cp a
    ret nz

    rst $38
    nop
    pop af
    ld c, $20
    rst $18
    inc bc
    db $fc
    ccf
    inc a
    dec a
    ld a, $3d
    ld a, $3c
    ccf
    cp $3e
    cp $3e
    cp $3e
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [$80]
    ld [hl], b
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
    nop
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
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, [$fa07]
    rlca
    push af
    rrca
    push af
    rrca
    push af
    rrca
    db $eb
    rra
    db $eb
    rra
    db $eb
    rra
    rst $10
    ccf
    rst $10
    ccf
    xor [hl]
    ld a, a
    xor [hl]
    ld a, a
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    inc bc
    ld bc, $0000
    stop
    dec b
    nop
    inc d
    nop
    ld b, b
    nop
    dec b
    nop
    inc d
    nop
    ld d, $02
    inc d
    nop
    inc d
    nop
    inc d
    nop
    add h
    nop
    inc d
    nop
    ld d, $00
    inc [hl]
    nop
    add h
    nop
    inc d
    nop
    inc d
    nop
    stop
    jr nc, jr_08c_5d7e

jr_08c_5d7e:
    ld d, h
    nop
    ld [bc], a
    nop
    inc d
    nop
    ld [de], a
    nop
    ld [de], a
    nop
    ld [hl], $00
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    ld a, [de]
    nop
    ld a, [bc]
    nop
    ld [$0800], sp
    nop
    jr jr_08c_5d98

jr_08c_5d98:
    stop
    ld [$1200], sp
    nop
    ld b, b
    nop
    add h
    add b
    ld d, b
    ld b, b
    inc b
    inc b
    jr nz, jr_08c_5dc8

    nop
    nop
    add [hl]
    add [hl]
    ld a, [hl+]
    ld a, [hl+]
    ld h, $22
    inc h
    jr nz, jr_08c_5dec

    add hl, hl
    jr z, jr_08c_5dde

    ld bc, $6101
    ld h, c
    ld c, [hl]
    ld c, d
    add hl, hl
    add hl, hl
    ld a, $3a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a

jr_08c_5dc8:
    rst $18
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    or b
    rst $08
    cp a
    ret nz

    cp a
    ret nz

    or b
    rst $08
    or a
    rst $08

jr_08c_5dde:
    or a
    rst $08
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

jr_08c_5dec:
    nop
    nop
    nop
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
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
    rst $28
    rra
    rst $28
    rra
    ldh [$1f], a
    sub $3f
    sub $3f
    xor l
    ld a, a
    xor l
    ld a, a
    ld l, l
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    cp e
    rst $38
    or a
    rst $38
    or a
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $18
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    inc b
    inc c
    inc b
    ld c, h
    inc b
    ld c, h
    inc b
    ret z

    nop
    ld c, h
    inc b
    ret z

    add b
    ld c, c
    nop
    ld c, c
    nop
    ld c, b
    nop
    ld c, c
    nop
    ld c, c
    nop
    ld c, l
    inc b
    ret


    add b
    add hl, bc
    nop
    add c
    add b
    ld c, c
    nop
    ld b, c
    nop
    ld c, c
    nop
    ld bc, $a100
    add b
    ld h, c
    nop
    pop hl
    add b
    ld [hl], c
    nop
    ld b, c
    nop
    add hl, bc
    nop
    add hl, hl
    nop
    add hl, bc
    nop
    add hl, de
    nop
    add hl, hl
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    ld e, c
    nop
    dec [hl]
    nop
    ld d, $00
    scf
    nop
    add hl, de
    nop
    jr c, jr_08c_5e8c

jr_08c_5e8c:
    jr z, jr_08c_5e8e

jr_08c_5e8e:
    ld sp, $3100
    nop
    ld [hl+], a
    nop
    ld hl, $2a00
    nop
    jr nz, jr_08c_5e9a

jr_08c_5e9a:
    add hl, bc
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld [bc], a
    ld [bc], a
    ld d, b
    ld d, b
    ld b, d
    ld b, d
    ld d, b
    ld d, b
    rst $18
    sbc $fe
    cp $f7
    rst $30
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
    nop
    rst $38
    ld b, b
    rst $38
    ld a, a
    ret nz

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
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    add b
    nop
    add b
    ld bc, $2480
    add b
    nop
    add b
    ld [hl-], a
    add b
    ld d, [hl]
    add b
    ld b, b
    add b
    ld c, b
    add b
    ld d, l
    add b
    ld b, b
    add b
    ld b, b
    add b
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
    db $fc
    inc a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    nop
    ld e, a
    nop
    rst $18
    nop
    ld a, a
    nop
    add b
    add b
    ld b, b
    ld b, b
    ld [hl], b
    ld b, b
    ld a, [hl]
    ld b, b
    rra
    nop
    ld b, b
    ld b, b
    ret nz

    ret nz

    pop af
    pop af
    ld [bc], a
    nop
    rst $38
    nop
    nop
    nop
    jp nz, $8240

    nop
    add d
    nop
    add d
    nop
    jp nz, $ca00

    nop
    ld [$e800], a
    nop
    add sp, $00
    cp c
    nop
    add sp, $00
    add sp, $00
    db $ed
    nop
    db $ec
    nop
    call $cd00
    nop
    call $c900
    nop
    ret


    nop
    add sp, $00
    call $ed00
    nop
    rst $08
    nop
    adc $00
    rst $18
    nop
    cp $00
    db $dd
    nop
    db $dd
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $08
    nop
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    rst $08
    add c
    rst $18
    ld [$00dd], sp
    sbc $08
    call c, $ce08
    ld c, d
    rst $18
    ld a, [bc]
    call Call_08c_4348
    ld b, d
    ld c, $06
    ld d, a
    ld d, a
    ld e, d
    ld d, d
    sub c
    sub c
    and [hl]
    and [hl]
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    nop
    nop
    rst $38
    ld [$fbff], sp
    inc c
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
    dec hl
    rst $38
    ld bc, $00ff
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
    nop
    nop
    nop
    nop
    ld b, $00
    ld [hl+], a
    nop
    nop
    nop
    add b
    nop
    cp a
    nop
    add h
    nop
    nop
    nop
    rst $38
    nop
    ld d, a
    nop
    inc b
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_08c_6000

jr_08c_6000:
    cp a
    nop
    ld c, $00
    ld b, $00
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    ld b, b
    ld b, b
    ld bc, $fd00
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    adc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    nop
    nop
    rst $18
    nop
    rst $38
    nop
    inc bc
    ld bc, $0103
    inc sp
    ld bc, $0032
    ld d, a
    ld bc, $0014
    inc d
    nop
    inc [hl]
    nop
    stop
    inc d
    nop
    inc d
    nop
    stop
    sub h
    nop
    inc d
    nop
    inc d
    nop
    sub h
    nop
    ld [hl], $00
    inc a
    nop
    inc a
    nop
    inc l
    nop
    db $ec
    ld b, b
    and b
    nop
    add b
    nop
    adc d
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    inc sp
    jr nc, jr_08c_6094

    db $fc
    daa
    db $fc
    ld h, $fc
    ld h, $fc
    ld [$24fc], sp
    db $fc
    inc c
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    inc h
    db $fc

jr_08c_6084:
    ld h, h
    db $fc
    jr nz, jr_08c_6084

    inc h
    db $fc
    inc l
    db $fc
    inc c
    db $fc
    inc l
    db $fc
    inc l
    db $fc
    inc e
    db $fc

jr_08c_6094:
    inc a
    db $fc
    inc l
    db $fc
    inc a
    db $fc
    ld e, h
    db $fc
    ld a, h
    db $fc
    inc [hl]
    db $fc
    db $fc
    rst $38
    db $fc

jr_08c_60a3:
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    call c, $e43f
    rra
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    add hl, de
    and $d8

jr_08c_60b7:
    daa
    ret c

    daa
    jr jr_08c_60a3

    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    jr jr_08c_60b7

    ret c

    daa
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    reti


    and $db
    rst $20
    inc bc
    jp $ff00


    sub d
    ld l, l
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ld a, l
    add d
    nop
    nop
    ld hl, sp+$00
    add sp, $00
    adc b
    nop
    rst $18
    nop
    nop
    nop
    nop
    nop
    ld l, $00
    rst $38
    nop
    dec bc
    nop
    nop
    nop
    and b
    nop
    add b
    nop
    ei
    nop
    rst $38
    nop
    reti


    nop
    rla
    rla
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ldh [rP1], a
    inc bc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld hl, $2900
    nop
    ld e, c
    jr nz, jr_08c_61b0

    nop
    ld a, c
    nop
    ld [hl], e
    nop
    inc sp
    nop
    inc sp
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    ei
    nop
    ld a, [$7a00]
    nop
    ld a, [c]
    nop
    halt
    ld a, [hl]
    nop
    ld l, d
    nop
    ld l, a
    nop
    xor $00
    and [hl]
    nop
    and d
    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    db $f4
    rst $38
    ldh a, [$fb]
    ldh a, [$fb]
    ldh a, [$fb]
    ldh [$f1], a
    ldh [$f1], a
    adc $ff
    ret nz

    pop af
    rst $38
    rst $38
    add b
    pop af
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc b
    rst $20
    add c
    rst $20
    add c
    rst $20
    add b
    jp nz, $c280

    add b
    jp nz, $c2c2

jr_08c_61b0:
    add b
    jp nz, $c280

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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld c, b
    nop
    ld d, b
    nop
    ccf
    ccf
    inc b
    inc b
    ld a, a
    nop
    ld l, a
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    ld b, b
    nop
    rst $18
    nop
    ld bc, $0000
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    dec [hl]
    nop
    ld hl, sp-$08
    sbc l
    sbc l
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    db $db
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
    db $10
    db $10
    ld a, a
    ld a, a
    db $ec
    nop
    rst $38
    nop
    inc b
    nop
    ld b, $00
    dec e
    nop
    ld e, l
    nop
    ld d, l
    nop
    sub [hl]
    nop
    sbc [hl]
    nop
    db $dd
    nop
    push de
    nop
    or a
    nop
    cp l
    nop
    xor l
    nop
    xor l
    nop
    cp l
    nop
    db $fd
    nop
    rst $28
    nop
    rst $28
    nop
    xor a
    nop
    and a
    nop
    dec h
    nop
    and h
    nop
    inc b
    nop
    add h
    nop
    nop
    nop
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
    add c
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    nop
    add c
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    nop
    rst $38
    nop
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
    nop
    nop
    ld [bc], a
    nop
    ld e, b
    nop
    inc h
    nop
    nop
    nop
    cp $00
    rst $18
    nop
    nop
    nop
    nop
    nop
    db $ec
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, e
    nop
    ld e, $1e
    cp b
    nop
    db $fc
    nop
    ld a, b
    nop
    ld d, h
    nop
    ld a, a
    ld a, a
    ld [bc], a
    nop
    rst $38
    nop
    add $00
    push af
    nop
    nop
    nop
    ld [hl], b
    nop
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $ff00
    rst $38
    nop
    nop
    ld sp, hl
    nop
    and b
    jr nz, jr_08c_6364

    add b
    ld b, d
    add b
    ld b, b
    add b
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    jp nz, $c800

    nop
    ldh a, [rP1]
    or b

jr_08c_6335:
    nop
    cp b
    nop
    jr c, jr_08c_633a

jr_08c_633a:
    jr c, jr_08c_633c

jr_08c_633c:
    ld l, $10
    jr z, @+$12

    xor h
    db $10
    ld l, h
    db $10
    ld l, b
    db $10
    ld l, b
    db $10
    ld l, b
    db $10
    ld l, b
    db $10
    ld l, c
    db $10
    ld e, h
    jr nz, jr_08c_6351

jr_08c_6351:
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    rlca
    inc bc
    inc bc
    rrca
    rrca
    nop
    rst $38
    rst $38
    nop

jr_08c_6364:
    ld de, $1100
    nop
    ld de, $f100
    ldh [$f1], a
    ldh [rNR10], a
    ld bc, $1100
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    adc a
    jr nz, jr_08c_6335

    ld [hl], b
    rst $38
    xor a
    xor a
    nop
    adc a
    rst $38
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
    rst $38
    nop
    nop
    ld b, b
    nop
    dec b
    nop
    adc d
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    ld [$0d08], sp
    dec c
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc d
    nop
    halt
    db $dd
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld [hl-], a
    nop
    xor l
    nop
    rlca
    nop
    ldh [$e0], a
    stop
    sub l
    nop
    nop
    nop
    dec l
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
    rst $00
    nop
    and b
    and b
    ld hl, sp+$00
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    ld bc, $4100
    nop
    ld bc, $4100
    nop
    ld bc, $0100
    nop
    ld b, c
    nop
    ld bc, $0000
    nop
    ld bc, $8100
    nop
    ld bc, $8100
    nop
    add e
    nop
    add c
    nop
    ld bc, $8300
    nop
    ld c, e
    nop
    ld b, c
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
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
    rlca
    ld hl, sp+$08
    ld hl, sp+$18
    adc b
    ld [$8f88], sp
    adc b
    adc a
    adc b
    adc b
    nop
    adc b
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ccf
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $ff
    cp $00
    cp $ff
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
    push af
    nop
    push af
    nop
    push hl
    nop
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
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
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    ld a, a
    ld a, a
    add b
    nop
    ld h, h
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    and $00
    nop
    nop
    inc e
    inc e
    nop
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    and h
    nop
    ld d, h
    nop
    ld a, [c]
    nop
    cp a
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    nop
    nop
    rst $18
    nop
    rst $20
    nop
    rst $38
    nop
    db $10
    stop
    nop
    ld hl, $0000
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ld e, a
    ld e, a
    inc hl
    jr nz, @+$01

    nop
    sub b
    nop
    inc de
    nop
    inc de
    nop
    inc sp
    nop
    scf
    nop
    inc sp
    nop
    inc sp
    nop
    scf
    nop
    scf
    nop
    dec [hl]
    ld [bc], a
    daa
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    ld l, a
    nop
    ld l, a
    nop
    ld l, a
    nop
    ld a, a
    nop
    ld l, a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    adc $00
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    db $fc
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
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    rst $38
    adc a
    rst $38
    adc a
    adc a
    rrca
    adc a
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
    db $e3
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, jr_08c_65d3

    add b
    ld b, a
    add b
    ld b, a
    rst $00
    ld b, a
    nop
    ld b, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    adc h
    inc c
    adc h
    inc c
    adc h
    inc c
    adc h
    inc c
    adc h
    adc h
    adc h
    inc b
    adc h
    nop
    adc h
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc b
    nop
    ld [de], a
    nop
    dec b
    dec b
    nop
    nop
    dec e
    nop
    nop
    nop
    ld [hl], l
    ld [hl], l
    dec d
    dec d
    xor b
    nop
    cp $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    nop
    or h
    nop
    rst $38
    nop
    rst $38
    nop
    ret z

    ret z

    nop
    nop
    and b
    nop
    rst $38
    nop
    sbc a
    nop
    nop
    nop
    or e
    or e
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    cp h
    nop
    ld bc, $fd00
    nop
    rst $38
    nop
    rrca
    nop
    ldh a, [$f0]
    rst $38
    nop
    rst $38
    nop
    ld [$4800], sp

jr_08c_65d3:
    nop
    ret c

    nop
    ret z

    nop
    call z, $dc00
    nop
    or h
    nop
    call c, $9400
    nop
    or h
    nop
    call nc, $f400
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
    db $fc
    nop
    xor $00
    xor $00
    xor $00
    cp $00
    cp $00
    ld a, [$fe00]
    ld bc, $01fe
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
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    jr jr_08c_6623

jr_08c_6623:
    jr jr_08c_6625

jr_08c_6625:
    jr jr_08c_6627

jr_08c_6627:
    jr jr_08c_6641

    jr jr_08c_662b

jr_08c_662b:
    jr @+$01

    nop
    nop
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

jr_08c_6641:
    ld a, a
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    jr c, jr_08c_6696

    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld [bc], a
    nop
    call nz, $c004
    nop
    ld [hl], $36
    nop
    nop
    rst $38
    nop
    dec l
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
    rst $30
    nop
    cp a
    nop
    ld [$ff08], sp
    rst $38
    jr nz, jr_08c_6688

jr_08c_6688:
    nop
    nop
    nop
    nop
    dec b
    nop
    call nc, $ffd4
    nop
    ld a, a
    nop
    add c
    nop

jr_08c_6696:
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    jp hl


    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld b, $00
    inc h
    nop
    inc h
    nop
    dec b
    nop
    inc b
    nop
    ld [$4900], sp
    nop
    ld c, b
    nop
    add hl, bc
    nop
    add hl, de
    nop
    dec de
    nop
    sbc c
    nop
    add hl, de
    nop
    ld de, $3300
    nop
    ld [hl], a
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    ld [hl], e
    adc h
    rst $20
    jr jr_08c_66d5

jr_08c_66d5:
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
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $fdff
    db $fd
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld c, b
    or a
    add c
    ld a, [hl]
    nop
    rst $38
    ld [hl], l
    rst $38
    add sp, $17
    ld bc, $0000
    nop
    rst $38
    rst $38
    stop
    inc b
    nop
    jr nz, jr_08c_675c

jr_08c_675c:
    add b
    add b
    nop
    nop
    jr nz, jr_08c_6762

jr_08c_6762:
    ld b, h
    nop
    ldh [rP1], a
    rst $38
    nop
    ld b, d
    nop
    nop
    nop
    ld b, b
    nop
    rst $18
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    stop
    ld bc, $0000
    nop
    or a
    or a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    cp $00
    nop
    nop
    inc b
    nop
    rst $38
    nop
    inc b
    inc b
    jr z, jr_08c_6794

jr_08c_6794:
    jr z, jr_08c_6796

jr_08c_6796:
    jr nz, jr_08c_6798

jr_08c_6798:
    jr nz, jr_08c_679a

jr_08c_679a:
    ld h, d
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    pop bc
    ld bc, $00c0
    ret nz

    nop
    call nz, $c000
    nop
    ret z

    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rst $38
    db $fd
    ld a, [$e4f9]
    pop hl
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, HeaderLogo
    ld c, $03
    ld [$0803], sp
    inc bc
    ld [$c803], sp
    jp Jump_000_3338


    ld hl, sp+$03
    sub b
    add a
    db $10
    rlca
    db $10
    rlca
    inc d
    rlca
    db $10
    rlca
    db $10
    rlca
    db $10
    rlca
    jr nz, jr_08c_6805

    jr nz, jr_08c_6807

    jr nz, jr_08c_6809

    jr z, jr_08c_680b

    xor b
    rrca
    jr nz, jr_08c_680f

    ld b, b
    rra
    ld d, b
    rra
    ld d, c

jr_08c_6805:
    rra
    ld b, b

jr_08c_6807:
    rra
    ld b, b

jr_08c_6809:
    rra
    ld b, b

jr_08c_680b:
    rra
    add c
    ccf
    add b

jr_08c_680f:
    ccf
    and b
    ccf
    and b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    ld b, b
    ld a, a
    ld bc, $007f
    ld a, a
    ld b, b
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    add d
    rst $38
    add h
    rst $38
    add [hl]
    rst $38
    inc b
    rst $38
    adc h
    adc h
    inc h
    inc h
    adc h
    adc h
    sbc h
    sbc h
    sbc h
    sbc h
    cp b
    cp b
    cp h
    cp h
    ld a, l
    ld a, l
    cp l
    rst $38
    ld a, a
    rst $38
    cp $fe
    cp $fe
    ld a, $fe
    ld a, $fe
    cp [hl]
    cp $8c
    ld e, h
    inc b
    db $fc
    nop
    db $fc
    db $fc
    db $fc
    dec l
    db $fd
    add c
    ld a, c
    ld bc, $81f1
    ld a, c
    ld bc, $01f9
    pop af
    ld b, d
    cp d
    add d
    ld h, d
    ld a, [c]
    ld [bc], a
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [c]
    inc b
    db $f4
    db $e4
    inc b
    ld h, h
    add h
    inc b
    db $e4
    add h
    rst $30
    ld [$a4f9], sp
    ld e, h
    ld [$01f6], sp
    rst $38
    add sp, -$01
    ld a, [$ff00]
    nop
    rst $38
    nop
    ld a, [$e800]
    nop
    dec sp
    dec sp
    add b
    nop
    rst $38
    nop
    ld b, b
    ld b, b
    stop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    inc d
    nop
    add h
    add b
    add b
    add b
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
    nop
    nop
    ld d, $02
    inc bc
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld b, $02
    nop
    nop
    jr nz, jr_08c_68ba

jr_08c_68ba:
    inc b
    inc b
    ld [bc], a
    nop
    add hl, bc
    nop
    ld h, $04
    nop
    nop
    nop
    nop
    ld [$2108], sp
    nop
    adc b
    ld [$0004], sp
    ld bc, $0300
    nop

jr_08c_68d2:
    ld bc, $0100
    nop
    ld de, $1110
    stop
    nop
    add b
    nop
    ld [bc], a
    nop
    jr nz, jr_08c_6902

    nop
    nop
    jr nz, jr_08c_6906

    nop
    nop
    inc b
    nop
    nop
    nop
    ld de, $8100
    nop
    ld l, b
    rst $10
    jr nz, jr_08c_68d2

    ld b, b
    cp $08
    or $00
    cp $80
    db $fc
    xor b
    call nc, $fc80
    ld d, c
    xor l

jr_08c_6902:
    ld bc, $11f9
    jp hl


jr_08c_6906:
    ld bc, $81f9
    ld a, c
    ld [bc], a
    ld a, [$f20a]
    ld [bc], a
    ld a, [$f202]
    inc bc
    di
    inc bc
    di
    rlca
    rst $30
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    ld d, $d6
    rla
    sub a
    rla
    sub a
    ld d, $96
    rla
    sub a
    dec h
    and l
    dec h
    and l
    inc h
    inc h
    inc h
    inc h
    jr nz, jr_08c_6960

    jr nz, @+$01

    ld h, b
    rst $38
    ld a, a
    ret nz

    ld e, a
    ldh [rVBK], a
    ldh a, [$63]
    db $fc
    pop af
    cp $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld l, e
    rst $38
    cpl
    rst $38
    dec l
    rst $38

jr_08c_6960:
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    inc bc
    nop
    inc bc
    inc b
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
    inc a
    inc bc
    sbc h
    add b

jr_08c_6983:
    ld c, a
    ldh [$27], a
    ld d, b
    or e
    jr nz, jr_08c_6983

    add sp, -$07
    inc b
    db $fc
    db $fc
    ld [bc], a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    inc c
    inc c
    jr jr_08c_69c6

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08c_69d6

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $0c
    daa
    jr z, jr_08c_69e7

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08c_69f7

jr_08c_69c6:
    ld [hl-], a
    inc sp
    inc c
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08c_6a08

    ld a, [hl-]
    dec sp
    inc a
    rlca
    dec a
    ld a, $3f

jr_08c_69d6:
    ld b, b
    inc c
    inc c
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
    inc c
    inc c

jr_08c_69e7:
    inc c
    inc c
    ld c, l
    ld c, [hl]
    ld c, a
    inc c
    ld d, b
    inc c
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    inc c

jr_08c_69f7:
    ld e, b
    ld e, c
    ld e, d
    inc c
    ld e, e
    ld e, h
    inc c
    inc c
    ld e, l
    ld e, [hl]
    ld d, l
    ld e, a
    ld h, b
    ld h, c
    inc c
    inc c
    ld h, d

jr_08c_6a08:
    inc c
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld d, l
    ld l, h
    ld l, l
    ld l, [hl]
    inc c
    ld l, a
    ld [hl], b
    inc c
    inc c
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
    inc c
    add h
    ld d, l
    ld d, l
    add l
    add [hl]
    add a
    adc b
    inc c
    adc c
    adc d
    inc c
    adc e
    adc h
    adc l
    inc c
    inc c
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    inc c
    sub l
    inc c
    ld h, $0c
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
    inc c
    and c
    and d
    and e
    inc c
    and h
    and l
    and [hl]
    inc c
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    inc c
    xor [hl]
    xor a
    or b
    inc c
    or c
    or d
    or e
    inc c
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    inc c
    cp e
    cp h
    cp l
    inc c
    cp [hl]
    cp a
    inc c
    inc c
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    inc c
    inc c
    add $c7
    ret z

    inc c
    ret


    jp z, $cb0c

    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d30c

    call nc, $d50c
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    inc c
    ldh [$0c], a
    pop hl
    ld [c], a
    db $e3
    inc c
    db $e4
    push hl
    and $e7
    ld d, l
    add sp, -$17
    ld [$eceb], a
    db $ed
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    ld bc, $0101
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
    rlca
    ld bc, $0101
    ld bc, $0707
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
    ld bc, $0101
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
    rlca
    rlca
    ld bc, $0107
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
    rlca
    ld bc, $0101
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
    rlca
    ld bc, $0101
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
    rlca
    ld bc, $0101
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
    rlca
    rlca
    ld bc, $0701
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
    rlca
    ld bc, $0101
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
    rlca
    rlca
    ld bc, $0701

Call_08c_6bcc:
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
    rlca
    rlca
    ld bc, $0701
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    call $e632
    add hl, de
    or $09
    db $eb
    inc d
    di
    inc c
    ld a, l
    ld [bc], a
    ld [hl], l
    ld a, [bc]
    ld a, l
    ld [bc], a
    ld a, $01
    ccf
    nop
    sbc [hl]
    ld bc, $009f
    rst $08
    nop
    rst $08
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
    cp c
    nop
    db $fd
    nop
    db $fc
    nop
    or $00
    ld [$7500], a
    nop
    ld l, e
    nop
    scf
    nop
    sub [hl]
    nop
    adc e
    nop
    call $cd00
    nop
    rst $20
    nop
    push hl
    nop
    ld a, [c]
    nop
    di
    nop
    ld sp, hl
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    nop
    rra
    nop
    ld c, a
    nop
    ld b, e
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
    ld [bc], a
    nop
    nop
    nop
    add b
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
    nop
    nop
    nop
    nop
    jr nz, jr_08c_6c98

jr_08c_6c98:
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld [bc], a
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
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_08c_6cd6

    nop
    nop
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [bc], a
    ld b, c
    ld b, c
    ret nz

    ret nz

    ldh a, [$f0]
    or c
    or c
    cp b
    cp b
    call z, Call_08c_6bcc
    ld l, e
    cp e
    cp e
    ld d, h
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop

jr_08c_6cd6:
    nop
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
    ld bc, $0400
    nop
    nop
    nop
    nop
    nop

jr_08c_6cec:
    nop
    nop
    ld bc, $1101
    ld bc, $0010
    ld c, d
    ld [bc], a
    ld c, d
    ld [bc], a
    ld d, b
    nop
    sbc h
    inc b
    sub h
    inc b
    jr z, jr_08c_6d08

    db $fc
    nop

jr_08c_6d02:
    xor $10
    ld a, [hl]
    add b
    ld a, a
    add b

jr_08c_6d08:
    ld [hl], a
    adc b
    cp a
    ld b, b
    or a
    ld c, b
    rst $18
    jr nz, jr_08c_6cec

    inc h
    rst $18
    jr nz, jr_08c_6d02

    ld [de], a
    db $ed
    ld [de], a
    or $09
    or $09
    jp c, $f725

    ld [$04fb], sp
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rrca
    nop
    sbc a
    nop
    ld d, a
    nop
    add a
    nop
    ld h, a
    nop
    and a
    nop
    db $d3
    nop
    or e
    nop
    reti


    nop
    reti


    nop
    call c, $cc00
    nop
    ld c, $00
    daa
    nop
    scf
    nop
    cpl
    nop
    sbc e
    nop
    sub $00
    rlc b
    rst $20
    nop
    db $e3
    nop
    ld a, [c]
    nop
    pop de
    nop
    ret c

    nop
    db $fd
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    ld a, [de]
    nop
    sbc e
    nop
    add hl, de
    nop
    sbc l
    nop
    rla
    nop
    adc d
    nop
    ld b, l
    nop
    rlca
    nop
    ld [bc], a
    nop
    stop
    dec b
    nop
    stop
    inc b
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
    nop
    nop
    add b
    add b
    ld [bc], a
    ld [bc], a
    ld bc, $8301
    add e
    push bc
    push bc
    db $e3
    db $e3
    rst $38
    rst $38
    ld bc, $0101

jr_08c_6da1:
    ld bc, $0303
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc b
    inc b
    inc c
    inc c
    ld [$0a08], sp
    ld [$1819], sp
    inc d
    db $10
    inc d
    db $10
    rla
    db $10
    inc e
    db $10
    ld l, h
    jr nz, jr_08c_6de3

    jr nz, jr_08c_6da1

    ld h, b
    ld b, b
    ld b, b
    ld b, d
    ld b, b
    ld b, b
    ld b, b
    add c
    add b
    add e
    add b
    nop
    nop
    ld bc, $0500
    nop
    dec b
    nop
    inc bc
    nop
    inc d
    nop
    rlca
    nop
    ld l, $00
    inc l
    nop
    dec h
    nop
    nop
    nop
    inc b

jr_08c_6de3:
    nop
    nop
    nop
    nop
    nop

jr_08c_6de8:
    ret nz

    nop
    add b
    nop
    add b
    nop
    pop bc
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    db $f4
    nop
    db $f4
    nop
    ld a, [$7e00]
    add b
    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ld h, b
    sbc a
    ld h, b
    swap h
    rst $10
    jr z, jr_08c_6de8

    ld [hl+], a
    db $eb
    inc d
    ld a, l
    add d
    or $09
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    cp $00
    ld l, [hl]
    nop
    rst $28
    nop
    ld l, a
    nop
    rlca
    nop
    scf
    nop
    sub e
    nop
    sbc e
    nop
    rlc b
    ld l, l
    nop
    and l
    nop
    and d
    nop
    ld [hl-], a
    nop
    add d
    nop
    ret


    nop
    ld sp, hl
    nop
    cp h
    nop
    ld d, h
    nop
    ld a, [de]
    nop
    and b
    nop
    and c
    nop
    adc b
    nop
    call nz, $0200
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
    ld [$1000], sp
    nop
    nop
    nop

jr_08c_6e68:
    nop
    nop
    nop

jr_08c_6e6b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    db $10
    jr c, jr_08c_6ebe

    ld a, $3e
    sbc a
    sbc a
    cp $fe
    ret nz

    ret nz

    ld b, c
    nop
    add c
    nop
    and e
    nop
    ld b, $00
    ld c, $00
    call z, Call_08c_5400
    nop
    ld e, c
    ld bc, $0191
    and c
    ld bc, $0313
    ld d, d
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [de], a
    ld [bc], a
    rst $00
    ld b, $23
    ld [bc], a
    call nz, $4504
    inc b
    sub a
    inc b
    ld d, $04
    adc e
    ld [$082a], sp
    dec bc
    ld [$189d], sp

jr_08c_6ebe:
    rla
    db $10
    dec d
    db $10
    ld de, $6110
    jr nz, jr_08c_6e68

    jr nz, jr_08c_6f29

    jr nz, jr_08c_6e6b

    jr nz, jr_08c_6f19

    ld b, b
    ld c, c
    ld b, b
    ld b, h
    nop
    nop
    nop
    jr nz, jr_08c_6ed6

jr_08c_6ed6:
    nop
    nop
    ld [$1400], sp
    nop
    inc b
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    add hl, bc
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
    add b
    nop
    add b

jr_08c_6ef7:
    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    add b
    and b
    ld b, b
    ldh [rP1], a
    or b
    ld b, b
    ld [hl], b
    add b
    ret c

    jr nz, jr_08c_6ef7

    db $10
    cp $00
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
    db $fd
    ld [bc], a
    db $fd

jr_08c_6f19:
    ld [bc], a
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    sbc a
    nop
    sbc a
    nop
    rst $08
    nop
    rst $08

jr_08c_6f29:
    nop
    push hl
    nop
    and $00
    db $e3
    nop
    ld a, [c]
    nop
    ld [hl], e
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    sbc h
    nop
    sbc h
    nop
    ld c, h
    nop
    ld h, $00
    ld a, [bc]
    nop
    dec h
    nop
    dec h
    nop
    ld bc, $0000
    nop
    ld [bc], a
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
    stop
    stop
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
    ld [$0c08], sp
    inc c
    ld c, [hl]
    ld c, [hl]
    rlca
    rlca
    rra
    rra
    cp $fe
    ldh [$e0], a
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    ld b, h
    nop
    ld hl, sp+$00
    cp b
    nop
    call c, $f800
    nop
    ld a, [$fc00]
    nop
    db $fc
    nop
    rst $38
    ld bc, $017d
    db $fd
    ld bc, $01fd
    cp b
    nop
    ld a, [$fa02]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld [c], a
    ld [bc], a
    ld h, d
    ld [bc], a
    inc b
    nop
    ld [bc], a
    nop
    ld b, $00
    ld d, d
    nop
    ld [de], a
    nop
    inc bc
    nop
    dec l
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    ld [$4000], sp
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
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
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ld a, [c]
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fd
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    add $00
    sbc $00
    cp [hl]
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    xor a
    nop
    dec l
    nop
    inc c
    nop
    ld b, $00
    jr nz, jr_08c_7022

jr_08c_7022:
    jr nc, jr_08c_7024

jr_08c_7024:
    ld [$0000], sp
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld [bc], a
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
    jr nc, jr_08c_7074

    ld a, b
    ld a, b
    cp $fe
    cp [hl]
    cp [hl]
    inc l
    inc l
    ld [$1808], sp
    jr jr_08c_7069

    jr @+$1a

    jr jr_08c_706d

    jr jr_08c_706f

    jr jr_08c_7071

    jr jr_08c_7093

    jr c, jr_08c_7095

    jr c, jr_08c_7097

    jr c, @+$32

    jr nc, jr_08c_70d3

    ld [hl], b
    jr nz, jr_08c_7086

    ld h, b
    ld h, b
    ld h, b

jr_08c_7069:
    ld h, b
    ldh [$e0], a
    ld b, b

jr_08c_706d:
    ld b, b
    ld b, b

jr_08c_706f:
    ld b, b
    nop

jr_08c_7071:
    nop
    add b
    add b

jr_08c_7074:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld a, [de]
    nop
    ld b, b
    nop
    ld l, [hl]
    nop
    rst $38
    nop
    sbc a
    nop

jr_08c_7086:
    rst $10
    nop
    adc l
    nop
    rra
    nop
    sbc l
    nop
    ld e, l
    nop
    ld h, $19
    ld d, l

jr_08c_7093:
    ld a, [bc]
    db $76

jr_08c_7095:
    add hl, bc
    push af

jr_08c_7097:
    ld a, [bc]
    db $76
    add hl, bc
    ld [hl], e
    inc c
    ld [hl], l
    ld a, [bc]
    ld [hl], e
    inc c
    ld a, e
    inc b
    cp d
    dec b
    cp e
    inc b
    cp c
    ld b, $b9
    ld b, $5d
    ld [bc], a
    ld e, [hl]
    ld bc, $025d
    ld e, [hl]
    ld bc, $012e
    ld l, $01
    cpl
    nop
    cpl
    nop
    rlca
    nop
    sub a
    nop
    sub a
    nop
    sub e
    nop
    ld b, e
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld l, c
    nop
    ld h, e
    nop
    dec h
    nop
    scf
    nop
    scf
    nop
    dec sp

jr_08c_70d3:
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    ld e, $00
    inc e
    nop
    jr jr_08c_70e0

jr_08c_70e0:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $fd
    cp $fd
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    nop
    xor $00
    add sp, $00
    ld l, b
    nop
    db $ec
    nop
    ret z

    nop
    ret c

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$ff05]
    nop
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
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    rst $28
    nop
    rst $28
    nop
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
    ld a, a
    add b
    ld a, a
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
    rst $18
    nop
    rst $38
    nop
    ld a, a
    nop
    ld e, a
    nop
    rra
    nop
    rrca
    nop
    ld c, $00
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
    ld hl, sp-$01
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    pop bc
    add b
    ret nz

    rst $38
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
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_08c_720c:
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld hl, sp+$00
    add b
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
    ld bc, $00fe
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_08c_7248

jr_08c_7248:
    nop
    nop
    jr nz, jr_08c_724c

jr_08c_724c:
    jr nz, jr_08c_724e

jr_08c_724e:
    jr nz, jr_08c_7250

jr_08c_7250:
    jr nz, jr_08c_7252

jr_08c_7252:
    jr nz, jr_08c_7254

jr_08c_7254:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    ld bc, $3fff
    rst $38
    ccf
    rst $38
    rra
    rst $38
    inc e
    rst $38
    add b
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $28
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
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    rst $18
    ld b, b
    sbc $40
    cp d
    nop
    sub h
    nop
    di
    ld b, b
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, [$ff00]
    nop
    ei
    nop
    rst $38
    nop
    ei
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
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
    rra
    nop
    rrca
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
    add b
    rst $38
    cp $01
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
    rst $38
    nop
    rst $38
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    add c
    nop
    sub c
    nop
    or c
    nop
    pop de
    nop
    ld e, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld l, a
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ld a, $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    sbc $00
    ld e, [hl]
    nop
    rst $38
    nop
    ld a, a
    nop
    ei
    nop
    ccf
    nop
    ld a, e
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rst $38
    nop
    rra
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $38
    nop
    cp a
    nop
    xor a
    nop
    cp a
    nop
    cp a
    nop
    sbc a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp d
    ld bc, $00f1
    ret nz

    nop
    add b
    ld bc, $0080
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
    rst $38
    rst $38
    rst $38
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
    pop af
    rst $38
    pop af
    rst $38
    db $fd
    ei
    db $fd
    ei
    ld e, $f9
    ld l, $d9
    ld l, [hl]
    sbc c
    db $eb
    inc e
    ld [$06ff], sp
    nop
    rra
    nop
    cp $00
    inc e
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
    db $e3
    inc e
    db $dd
    ld a, $dd
    ld a, $e3
    inc e
    rst $38
    nop
    nop
    nop
    dec c
    nop
    ld c, $00
    nop
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
    ldh [$1f], a
    rlca
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
    cp $ff
    nop
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
    ld a, [hl]
    add b
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    ld a, [hl]
    add b
    db $fd
    nop
    xor l
    ld d, b
    rra
    ldh [rSB], a
    ldh [rP1], a
    ld b, b
    nop
    ld b, b
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $18
    ccf
    ld [c], a
    dec e
    cp a
    ld b, b
    ld a, a
    add b
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
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
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    db $db
    inc b
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
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    cp $00
    cp $00
    ld a, [hl]
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    cp $00
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    db $fd
    nop
    db $fd
    nop
    db $ed
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp c
    nop
    rst $18
    nop
    ld sp, hl
    nop
    ei
    nop
    db $eb
    nop
    ei
    nop
    db $eb
    nop
    ei
    nop
    inc sp
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    ldh a, [rIE]
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rrca
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
    ld [$0808], sp
    ld [$0000], sp
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
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $20dd
    cp l
    ld b, b
    db $fd
    nop
    cp $01
    cp e
    inc b
    cp l
    ld [bc], a
    cp e
    inc b
    cp l
    ld [bc], a
    cp a
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld [hl], d
    nop
    di
    nop
    ld [hl], e
    nop
    di
    nop
    ld a, [c]
    nop
    di
    nop
    push af
    nop
    rst $20
    nop
    rst $00
    nop
    rlca
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
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ret nz

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
    ldh a, [rIE]
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rlca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    cp $01
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    di
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $20
    nop
    and a
    nop
    rst $38
    nop
    db $ed
    nop
    rst $28
    nop
    db $ed
    nop
    rst $18
    nop
    ld e, [hl]
    nop
    ret c

    nop
    ret c

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
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    call $c436
    ccf
    and $1f
    and $1f
    rst $28
    rra
    rst $28
    rra
    xor $1f
    xor $1f
    rrca
    ld c, $0f
    ld b, $06
    ld b, $06
    ld b, $00
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
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld bc, $ffff
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
    rst $08
    nop
    rst $00
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
    rst $28
    nop
    rst $28
    nop
    rst $08
    nop
    rst $18
    nop
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
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
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fd
    nop
    cp e
    nop
    ld sp, hl
    nop
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    cp $00
    db $fc
    nop
    call c, $f000
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
    nop
    nop
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp+$1f
    ld sp, hl
    rra
    rst $38
    rra
    rst $20
    rra
    rst $28
    rra
    rra
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
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
    rst $38
    nop
    ret nz

    ccf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    inc a
    nop
    cp $00
    cp $00

jr_08c_781a:
    ld a, d
    add h
    cp [hl]
    ld b, b
    cp l
    ld b, d
    ld sp, hl
    nop
    ei
    nop
    rst $10
    jr nz, jr_08c_781a

    nop
    rst $30
    nop
    rst $28
    nop
    rst $20
    nop
    rst $28
    nop
    xor $00
    rst $08
    nop
    sbc $00
    rst $08
    nop
    rst $08
    nop
    xor a
    nop
    sbc e
    nop
    sbc a
    nop
    cp d
    nop
    ld a, [hl-]
    nop
    scf
    ld bc, $0135
    ld a, h
    nop
    ld l, h
    nop
    ld a, d
    ld [bc], a
    add sp, $00
    ld hl, sp+$00
    reti


    nop
    pop de
    nop
    pop de
    nop
    and c
    nop
    and d
    nop
    and e
    nop
    add [hl]
    nop
    dec hl
    nop
    rrca
    nop
    rrca
    nop
    dec b
    nop
    inc bc
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
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    or b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    rra
    db $fc
    ld e, a
    db $fc
    ld a, e
    db $fc
    sub e
    db $fc
    scf
    ld hl, sp+$37
    ld hl, sp+$3f
    ldh a, [$30]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIF]
    rrca
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rlca
    rst $38
    rst $30
    rst $38
    or $ff
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $38
    pop af
    rst $38
    pop af
    rst $38

jr_08c_78ba:
    db $e3
    rst $38
    rst $20
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
    ld [bc], a
    nop
    nop
    nop
    inc bc
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld l, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    inc sp
    nop
    ld a, [c]
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    db $e3
    nop
    ld h, e
    nop
    jp $c700


    nop
    rst $20
    jr nz, jr_08c_78ba

    nop
    add a
    nop
    adc a
    nop
    adc a
    nop
    rra
    nop
    ld e, $00
    sbc [hl]
    add b
    ld e, $00
    inc a
    nop
    dec a
    nop
    dec a
    nop
    ld a, [hl-]
    nop
    ld e, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, c
    nop
    add hl, sp
    nop
    ld de, $0200
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rla
    rst $38
    rra
    di
    ld l, l
    di
    ld a, a
    pop hl
    ld e, [hl]
    pop hl
    rst $38
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    pop hl
    rst $38
    jp $c3ff


    rst $38
    add a
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
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add c
    add b
    add b
    add b
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ld hl, $0120
    nop
    rlca
    nop
    scf
    db $10
    xor $08
    ld a, [$f208]
    nop
    or $04
    db $fc
    inc b
    ei
    ld [bc], a
    ld a, d
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
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
    cp a
    nop
    cp [hl]
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp b
    nop
    or b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld b, b
    nop
    ldh [rP1], a
    and b
    nop
    and b
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $0300
    nop
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    rst $28
    rra
    rst $38
    rrca
    rst $30
    rrca
    rst $38
    rlca
    ei
    rlca
    db $fd
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $03fd
    ei
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_08c_7a84

    or b
    jr nz, @+$12

    db $10
    ld d, b
    stop
    nop
    ld c, b
    ld [$0849], sp
    push bc
    inc b
    pop hl
    nop
    ld [c], a
    ld [bc], a
    ldh [rP1], a
    pop hl
    ld bc, $01e1
    ldh a, [rP1]
    or b
    nop
    sub b
    nop
    jr jr_08c_7a84

jr_08c_7a84:
    ld e, d
    nop
    ld c, l
    nop
    dec h
    nop
    ld h, $00
    ld d, $00
    sub e
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    nop
    db $fd
    nop
    ld a, [$fa00]
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    ret z

    nop
    sub c
    nop
    sbc c
    nop
    and d
    nop
    ld h, $00
    ld d, c
    nop
    ld b, c
    nop
    adc d
    nop
    ld de, $0500
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
    dec c
    nop
    rra
    nop
    ld e, $00
    ld a, $00
    inc a
    nop
    ld l, b
    nop
    ld l, b
    nop
    ld d, b
    nop
    ret nc

    nop
    xor b
    nop
    ld b, $00
    nop
    nop
    inc b
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
    db $10
    db $10
    jr nc, jr_08c_7b32

    ld h, c
    ld h, c
    ld b, a
    ld b, a
    rst $08
    rst $08
    rst $18
    rst $18
    rst $38
    rst $38
    ld a, l
    ld a, l
    ld a, e
    ld a, e
    ei
    ei
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
    ld bc, $0000
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [$0400], sp
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld h, $00
    ld a, [bc]
    nop

jr_08c_7b32:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld h, d
    nop
    ld d, b
    nop
    ld [hl], d
    nop
    ld b, b
    nop
    inc sp
    ld [bc], a
    ld l, b
    nop
    jr c, jr_08c_7b44

jr_08c_7b44:
    jr c, jr_08c_7b46

jr_08c_7b46:
    inc e
    nop
    ld a, $00
    ld e, $00
    rrca
    nop
    add a
    nop
    ld b, e
    nop
    rst $00
    nop
    db $d3
    nop
    pop hl
    nop
    inc hl
    nop
    inc [hl]
    nop
    cp b
    add b
    sbc c
    add b
    ld e, h
    ld b, b
    sbc h
    nop
    and [hl]
    jr nz, jr_08c_7b69

    nop
    ld d, d

jr_08c_7b69:
    db $10
    db $d3
    db $10
    ld l, c
    ld [$0879], sp
    db $fd
    nop
    ei
    nop
    ld a, [$f700]
    nop
    or $00
    db $ec
    nop
    db $ec
    nop
    call c, $d800
    nop
    cp c
    nop
    cp e
    nop
    jp nz, $e100

    nop
    push hl
    nop
    rst $08
    nop
    adc e
    nop
    sub a
    nop
    ld d, a
    nop
    cpl
    nop
    ld c, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    cp a
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
    db $fc
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    di
    nop
    ld a, [c]
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    sub b
    nop
    jr nz, jr_08c_7bbe

jr_08c_7bbe:
    jr nz, jr_08c_7bc0

jr_08c_7bc0:
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $06
    ld b, $06
    inc c
    inc c
    jr jr_08c_7c12

    jr c, jr_08c_7c34

    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    db $e3
    db $e3
    ld l, e
    ld l, e
    rst $00
    rst $00
    adc $ce
    rst $38
    db $fc
    inc bc
    nop

jr_08c_7c12:
    inc sp
    jr nc, jr_08c_7c1e

    ld [$0808], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    add d
    ld [bc], a

jr_08c_7c1e:
    add c
    ld bc, $0000
    jr nz, jr_08c_7c24

jr_08c_7c24:
    sub b
    nop
    ld b, b
    nop
    stop
    ld [$0400], sp
    nop
    inc b
    nop
    ld b, d
    nop
    ld b, c
    nop

jr_08c_7c34:
    ld [bc], a
    nop
    add e
    nop
    ld b, c
    nop
    ret nz

    nop
    ld h, b
    nop
    ld d, b
    nop
    ld a, [c]
    nop
    sbc h
    nop
    ld c, e
    nop
    cp [hl]
    add b
    ld e, d
    ld b, b
    ld a, [bc]
    nop
    add hl, hl
    jr nz, jr_08c_7c6d

    db $10
    sub a
    db $10
    adc e
    ld [$00c3], sp
    db $e3
    nop
    push hl
    inc b
    ld a, [c]
    ld [bc], a
    ldh a, [rP1]
    ld sp, hl
    ld bc, $0078
    inc a
    nop
    inc e
    nop
    ld e, $00
    ld c, $00
    daa
    nop
    sub e

jr_08c_7c6d:
    nop
    or e
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
    jr jr_08c_7ca3

    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08c_7cb4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08c_7cc4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08c_7cd4

jr_08c_7ca3:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08c_7ce4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_08c_7cb4:
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

jr_08c_7cc4:
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

jr_08c_7cd4:
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

jr_08c_7ce4:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
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
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
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
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
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
    ld a, b
    ld a, b
    ld a, b
    ld a, b
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
    ld a, b
    ld a, b
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


    jp z, $bbcb

    cp e
    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    cp e
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
    ld [$ebdb], a
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
    cp e
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    cp e
    cp e
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    cp e
    dec d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$be43], sp
    inc hl
    sbc $22
    rst $18
    ld hl, $11df
    rst $28
    ld de, $00ef
    rst $38
    ld [$41f7], sp
    cp $11
    xor $01
    cp $80
    ld a, a
    sbc b
    ld [hl], a
    db $10
    ld a, a
    ld b, b
    ccf
    nop
    ccf
    or b
    rra
    and b
    rra
    add b
    rra
    ldh a, [rIF]
    ld [hl], b
    adc a
    ldh a, [$8f]
    cp b
    rst $00
    cp b
    rst $00
    ret z

    rst $20
    jp z, $d8e7

    rst $20
    ld l, l
    di
    ld l, c
    rst $30
    dec [hl]
    ei
    inc [hl]
    ei
    ld [de], a
    db $fd
    dec de
    db $fc
    add hl, de
    cp $0d
    cp $0d
    cp $0c
    rst $38
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    sub e
    rst $38
    jp Jump_08c_41ff


    rst $38
    ld h, c
    rst $38
    ld h, l
    rst $38
    ld [hl], h
    rst $38
    inc [hl]
    rst $38
    jr nc, @+$01

    jr @+$01

    jr @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld h, d
    rst $38
    ld [hl-], a
    rst $38
    ld sp, $11ff
    rst $38
    nop

jr_08c_7f79:
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
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
    jr nz, jr_08c_7f79

    and b
    rst $18
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld l, a
    sbc a
    cpl
    rst $18
    daa
    rst $18
    scf
    rst $08
    dec de
    rst $20
    dec bc
    rst $30
    ld bc, $21ff
    rst $18
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld sp, $5f8e
    add b
    rra
    ret nz

    ld l, $c0
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$7f
    ld a, [hl]
    add b
    ld a, a
    ldh [$1f], a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld a, b
    add a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    call nz, Call_08c_453a
    cp d
    db $ed
    ld [de], a
    add sp, $15
    ld l, d
    sub l
    ld h, d
    sbc l
    pop de
    xor [hl]
    sub c
    db $ee
