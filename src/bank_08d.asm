SECTION "ROM Bank $08d", ROMX[$4000], BANK[$8d]

    reti


    and $da
    push hl
    ld c, l
    ld a, [c]
    call $ad72
    ld [hl], d
    dec l
    ld a, [c]
    ld l, l
    or d
    ld d, [hl]
    cp c
    ld [hl], $d9
    ld [hl], $d9
    dec hl
    call c, $ec1b
    add hl, de
    xor $05
    cp $04
    rst $38
    ld h, $df
    ld [hl+], a
    rst $18
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    sub b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    ld l, b
    sbc a
    and b
    rst $18
    or b
    rst $08
    db $f4
    rst $08
    ret c

    rst $20
    jp z, $6ef7

    di
    ld h, h
    ei
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld a, [de]
    db $fd
    jr @+$01

    inc c
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    ld de, $11ef
    rst $28
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    add b
    rst $38
    call nz, $c0fb
    rst $38
    call nz, $e4fb
    ei
    and $f9
    ld [c], a
    db $fd
    pop af
    cp $f9
    cp $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    rrca
    ld a, a
    rst $00
    ccf
    db $e3
    rra
    db $e3
    rra
    pop af
    rrca
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc e
    db $e3
    ld c, $f1
    ret nz

    ccf
    db $ec
    inc de
    add $19
    ldh [$1f], a
    or d
    ld c, l
    db $76
    adc c
    ld sp, $71ce
    adc [hl]
    ld a, [hl]
    add l
    ld a, c
    add [hl]
    cp b
    ld b, a
    cp c
    ld b, [hl]
    cp l
    ld b, d
    db $dd
    ld [hl+], a
    add sp, $23
    sbc $21
    call nz, $6e33
    sub c
    ld l, h
    sub c
    ld h, a
    sbc b
    ld h, a
    sbc b
    dec [hl]
    jp z, Jump_08d_4ab5

    cp e
    ld b, h
    db $d3
    inc l
    reti


    ld h, $cd
    ld [hl-], a
    ld l, l
    sub d
    ld l, a
    sub d
    ld h, h
    sbc e
    call nc, $93ab
    db $ed
    ld l, d
    push de
    ld c, d
    push af
    ld c, c
    or $72

jr_08d_4127:
    db $ed
    inc hl
    db $fc
    ld hl, $24fe
    ei
    jr jr_08d_4127

    dec d
    ld a, [$fd12]
    inc c
    ei
    add hl, bc
    cp $09
    cp $06
    db $fd
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc bc
    cp $02
    rst $38
    nop
    rst $38
    ld bc, $21ff
    rst $38
    sub b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $18
    add d
    rst $38
    ret nz

    rst $38
    call nz, $c4ff
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    or b
    rst $38
    sbc b
    rst $38
    jr @+$01

    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld c, $f7
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld [de], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $80ff
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    add b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    cp $fd
    db $fd
    cp $7e
    rst $38
    ld a, $ff
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc d
    pop af
    inc h
    ld sp, hl
    inc bc
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$16
    ld hl, sp+$01
    db $fc
    dec hl
    db $fc
    ld [bc], a
    db $fc
    inc hl
    db $fc
    and a
    ld a, h
    sub [hl]
    ld a, l
    sub c
    ld a, [hl]
    ld bc, $15fe
    cp $c1
    ld a, $c8
    ccf
    jp z, Jump_000_043f

    cp a
    ld b, h
    sbc a
    ld h, h
    sbc a
    inc h
    rst $18
    inc [hl]
    rst $08
    or d
    ld c, a
    or d
    ld c, a
    sub d
    ld l, a
    ld a, [de]
    rst $20
    reti


    daa
    reti


    daa
    pop de
    daa
    db $ec
    inc de
    db $ec
    inc de
    ld l, [hl]
    sub c
    ld [hl], h
    adc e
    or $89
    db $76
    adc c
    ld [hl], d
    adc l
    cp e
    ld b, h
    db $db
    ld b, h
    cp e
    ld b, h
    dec e
    ld [c], a
    ld a, l
    and d
    ld e, l
    and d
    ld c, h
    or e
    ld c, [hl]
    or c
    ld a, [hl-]
    push de
    and h
    ld e, e
    sub l
    ld l, d
    sbc l
    ld l, d
    ld d, e
    xor h
    ld d, e
    xor h
    rlca
    db $fc
    xor [hl]
    ld d, l
    add hl, hl
    sub $29
    sub $ff
    add d
    cp c
    add $76
    ret


    ld [hl], e
    call $ed42
    ld e, d
    push hl
    ld [hl], $e9
    dec hl
    db $f4
    ld a, [hl+]
    push af
    ld d, h
    ei
    ld d, h
    ei
    dec d
    ld a, [$fe89]
    ld a, [bc]
    db $fd
    add hl, bc
    cp $02
    db $fd
    add [hl]
    db $fd
    add b
    rst $38
    add e
    cp $43
    cp $42
    rst $38
    ld d, c
    rst $38
    ld c, c
    rst $38
    add hl, bc
    rst $38
    inc [hl]

Jump_08d_427f:
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ld [c], a
    rst $18
    call nc, $d4ef
    rst $28
    ld [hl], h
    rst $28
    ld h, d
    rst $38
    ld a, [hl-]
    rst $30
    ld sp, $11ff
    rst $38
    ld e, $f9
    ld a, [de]
    db $fd
    ld c, $fd
    dec c
    cp $05
    cp $07
    cp $02
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    cp l
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
    nop
    rst $38
    ld [$2aff], sp
    rst $38
    jr z, @+$01

    jr @+$01

    inc b
    rst $38
    inc b
    rst $38
    inc b
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
    add h
    ei
    call c, $ad03

jr_08d_42e3:
    ld b, e
    dec b
    pop hl
    add b
    ld h, c
    ld b, e
    or c
    ld c, c
    or a
    ld d, c

jr_08d_42ed:
    xor a
    nop
    rst $38
    dec bc
    db $f4
    add [hl]
    ld a, c
    and b
    ld e, a
    add c
    ld a, a
    add c
    ld a, a
    push bc
    dec sp
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    and b
    ld e, a
    ld b, b
    cp a
    ld h, b
    sbc a
    jr nz, jr_08d_42ed

    ld e, b
    xor a
    ret nc

    xor a
    jr nc, jr_08d_42e3

    nop
    rst $38
    xor c
    rst $10
    ld d, b
    rst $28
    ld b, c
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    xor b
    ld a, a
    xor b

jr_08d_4333:
    ld a, a
    and b
    ld a, a
    sub b
    ld a, a
    sub h
    ld a, a
    ret nc

    ccf
    adc b
    ld a, a
    ld b, h
    cp a
    ld c, h
    cp a
    ld b, [hl]
    cp a
    ld l, h
    sbc a
    cpl
    rst $18
    add l
    ld a, a
    and h
    ld e, a
    sub d

jr_08d_434d:
    ld l, a
    add b
    ld a, a
    jp z, $8037

    ccf
    ld h, b
    rra
    ld h, d
    sbc a
    ld l, b
    sub a
    push hl
    sbc e
    pop af
    adc a
    jr nc, @-$2f

    or e
    ld c, l
    jr nc, jr_08d_4333

    jr jr_08d_434d

    add hl, bc
    or $89
    db $76
    sbc b
    ld h, a
    adc b
    ld [hl], a
    cp b
    ld d, a
    inc a
    db $d3
    ld h, d
    sbc l
    ld h, h
    sbc e
    db $f4
    dec bc
    ld d, h
    dec hl
    pop de
    ld l, $70
    adc a
    or d

Jump_08d_437f:
    adc l
    cp l
    add $b0
    rst $08
    ld a, b
    rst $00
    ld [hl], b
    rst $08
    ld e, b
    rst $20
    dec d
    db $eb
    dec [hl]
    db $eb
    ld a, [hl-]
    push hl
    ld a, [bc]
    push af
    inc e
    di
    ld b, $f9
    rlca
    ld hl, sp+$27
    ld hl, sp-$7d
    db $fc
    sub h
    db $fd
    ld d, [hl]
    db $fd
    ld b, c
    cp $52
    cp $13
    cp $22
    rst $38
    ld hl, $01ff
    rst $38
    sub b
    rst $38
    and d
    rst $18
    add sp, -$21
    ret nz

    rst $38
    ld b, b
    rst $38
    ld [hl], h

jr_08d_43b7:
    rst $28
    jr nz, @+$01

    jr nz, @+$01

    or c
    rst $38
    db $10
    rst $38
    jr @+$01

    ld c, b
    rst $38
    adc h
    rst $38
    inc l
    rst $38
    inc d
    rst $38
    ld d, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $00ff
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    db $ed
    ld a, [de]
    jp hl


    ld e, $bd
    ld c, d
    jr nc, jr_08d_43b7

    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    adc h
    rst $30
    adc h
    rst $30
    add b
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [$8f]
    ldh [$80], a
    ld hl, sp-$7f
    ld hl, sp-$80
    db $fc
    ret nz

    cp $c0
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$7f], a
    ldh a, [$5f]
    ldh a, [$3f]
    ldh a, [$1f]
    ldh a, [$9f]
    ldh a, [$9f]
    ld hl, sp-$31
    ld hl, sp-$51
    ld hl, sp-$31
    ld hl, sp+$6b
    db $fc
    ld a, e
    db $fc
    ld a, a
    db $fc
    ld l, a
    db $fc
    ld l, l
    cp $3c
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    sbc a
    rst $38
    dec de
    rst $38
    ld de, $19ff
    rst $38
    ld c, c
    rst $38
    ld [$19ff], sp
    rst $38
    sbc a
    rst $38
    adc l
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    sub a
    rst $38
    ld d, a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    adc [hl]
    cp $ca
    cp $4a
    cp $4e
    cp $07
    rst $38
    and a
    ld a, a
    daa
    rst $38
    ld h, e
    cp a
    rlca
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    ld c, e
    cp a
    ld b, d
    cp a
    ld b, $ff
    add hl, bc
    rst $38
    inc bc
    rst $38
    sbc h
    ld l, a
    inc b
    rst $38
    ld b, l
    cp a
    ld d, l
    xor a
    inc b
    rst $38
    ld c, $f7
    xor d
    rst $10
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld h, a

jr_08d_4499:
    db $db
    ld b, c
    rst $38
    pop de
    ld l, a
    or c
    ld l, a
    jr z, jr_08d_4499

    ld h, e
    cp l
    ld b, b
    cp a
    ret nc

    ccf
    ret nz

    ccf
    adc b
    ld a, a
    ld b, b
    cp a
    add sp, -$61
    ret nz

    cp a
    inc h
    rst $18
    ld b, h
    rst $38
    ld l, d
    rst $10
    ld b, d
    rst $38
    ld [hl-], a
    rst $28
    ld [hl], $eb
    ld c, c
    rst $30
    ld c, c
    rst $30
    db $d3
    db $fd
    sub b
    rst $38
    call Call_08d_48fb
    rst $38
    ld [$26ff], sp
    db $fd
    inc b
    rst $38
    inc b
    rst $38
    ld [hl+], a
    rst $18
    adc e
    cp $88
    rst $38
    adc c
    rst $38
    push bc
    rst $38
    ld b, c
    rst $38
    ld [hl], c
    rst $28
    and a
    ld b, c
    adc a
    ld h, c
    sbc [hl]
    ld h, c
    add sp, $23
    ld e, $e1
    call c, $dc23
    inc hl
    dec l
    jp nc, $936c

    ld l, a
    sub b
    rst $38
    nop
    rst $38

Call_08d_44f7:
    nop
    rst $38
    nop
    add b
    ld a, a
    nop
    add b
    ld a, b
    rlca
    nop
    ld hl, sp+$00
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

    nop
    ldh [rP1], a
    ld hl, sp+$00
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
    db $fc
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    ret nz

    ld a, $e0
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_08d_4534:
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

jr_08d_453e:
    rrca
    ret nz

jr_08d_4540:
    rla
    ret z

    inc sp
    db $fc
    jr nc, jr_08d_453e

    jr nc, jr_08d_4540

    jr nz, @+$01

    rlca
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$fe], a
    ldh [$fe], a
    or b
    rst $38
    ld h, e
    inc a
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
    add b
    rra
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    adc a
    ret nz

    rrca
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    ld c, a
    ret nz

    rst $00
    ldh [$c7], a
    ldh [$c7], a
    ldh [$e7], a
    ldh [$e7], a
    ldh [$e7], a
    ldh [$f3], a
    ldh [$e3], a
    ldh a, [$e3]
    ldh a, [$f3]
    ldh a, [$73]
    ldh a, [$73]
    ldh a, [$73]
    ldh a, [$71]
    ldh a, [$71]
    ld hl, sp+$31
    ld hl, sp+$19
    ld hl, sp+$39
    ld hl, sp+$39
    ld hl, sp+$19
    ld hl, sp+$38
    ld hl, sp+$18
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    adc h
    db $fc
    xor h
    cp $84
    cp $44
    cp $44
    cp $0a
    cp $2a
    cp $22
    cp $0a
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    add h
    ld a, e
    nop
    rst $38
    db $10
    rst $28
    ld l, $d5
    add hl, hl
    sub $4e
    or l
    ld c, $f5
    and $9d
    add [hl]
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    nop
    ret nz

    ccf
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
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ccf
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
    add b
    nop
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_08d_463a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
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
    ldh [rP1], a
    ld bc, $3e01
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
    rst $38
    nop
    rst $38
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
    ld de, $35c2
    jp nz, $c22d

    inc l
    jp $c32c


    ld c, $e1
    inc b
    db $e3
    inc c
    db $e3
    ld c, a
    and b
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    ldh [$1f], a
    nop
    inc bc
    db $fc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b

jr_08d_46c4:
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    add e
    inc b
    inc bc
    nop
    rra
    nop

jr_08d_46e2:
    rst $38
    nop
    inc bc
    db $fc
    rlca
    ldh a, [rTAC]
    nop
    rlca
    nop
    rlca
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec c
    ld [bc], a
    call $fd02
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ldh [rSB], a
    nop
    ld bc, $0f00
    nop
    rst $38
    ld a, [hl]
    rst $38
    add d
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    rrca
    rrca
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
    add a
    jr jr_08d_46c4

jr_08d_4733:
    ld a, [bc]
    or a
    ld [$023d], sp
    ld h, a
    jr @-$17

    jr jr_08d_46e2

    ld e, d
    rst $28
    jr jr_08d_4733

    dec e
    pop af
    ld e, $f7
    jr @-$09

    ld a, [de]
    ld a, [c]
    dec e
    or $19
    ld a, [c]
    dec e

jr_08d_474e:
    ldh a, [$1f]
    or $19
    push af
    ld a, [de]
    rst $30
    jr jr_08d_474e

    jr @-$01

    ld a, [de]
    ld a, [$fe1d]
    add hl, de
    cp $19
    db $f4
    dec de
    db $fd
    ld a, [de]
    ld hl, sp+$1f
    ldh a, [$1f]
    db $fc
    dec de
    ldh a, [$1f]
    cp $1b
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld sp, hl
    rra
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ei
    rra
    ld hl, sp+$1f
    db $fd
    rra
    di
    rra
    jp c, Jump_000_1a3f

    rst $38
    rla
    rst $38
    dec e
    rst $38
    rla
    rst $38
    dec d
    rst $38
    rra
    rst $38
    rla
    rst $38
    rla
    rst $38
    rra
    rst $38
    rra
    rst $38
    rla
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, $f1
    rra
    ldh a, [$1f]
    ldh a, [rIE]
    nop
    xor c
    cp $23
    db $fc
    cpl
    db $fc
    add hl, bc
    cp $00
    cp $ab
    ld a, h
    ld bc, $a1fe
    ld a, [hl]
    ld hl, $19fe
    cp $15
    cp $06
    db $fd
    dec b
    cp $a5
    ld a, [hl]
    ld [$04ff], sp
    rst $38
    add l
    adc [hl]
    add b
    rst $00
    and d
    pop bc
    or b
    pop bc
    cp b
    ret nz

    cp h
    ret nz

    xor [hl]
    ret nc

    and a
    ret z

    add e
    call nz, $c281
    and [hl]
    pop bc
    and c
    jp nz, $c1a0

    or b
    ret nz

    or b
    ret nz

    or b
    ret nz

    and b
    pop bc
    or b
    pop bc
    and b
    pop bc
    or b
    pop bc
    or b
    pop bc
    or b
    pop bc
    or b
    pop bc
    or b
    pop bc
    sub b
    pop hl
    or b
    pop bc
    sub b
    pop hl
    sub b
    pop hl
    sbc b
    pop hl
    cp h
    pop bc
    cp h
    pop bc
    sbc a
    ldh [$8e], a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8d]
    ld a, [c]
    adc c
    or $82
    db $fc
    add b
    cp $82
    db $fd
    add c
    cp $81
    cp $81
    cp $89
    or $81
    cp $81
    cp $c1
    ld a, [hl]
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rlca
    db $fc
    rlca
    cp $03
    cp $03
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    db $10
    ld [hl], e
    add b
    sbc c
    ld [bc], a
    ld bc, $4692
    sub c
    ld b, a
    sub b
    ld b, l
    sub d
    ld b, e

jr_08d_485f:
    sub h
    ld l, a

jr_08d_4861:
    sub b
    ld l, b
    sub a
    ld c, d
    or l
    ld l, d
    sub l
    ld b, e
    cp h
    adc c
    or $0c
    di
    call nz, $80bb
    rst $38
    ld [$04f7], sp
    ei
    jr jr_08d_485f

    jr jr_08d_4861

    add hl, bc
    ld [hl], a
    db $10
    cpl
    jr jr_08d_4887

    adc b
    rlca
    ret nz

    rlca
    ld sp, hl
    rra
    ld a, c

jr_08d_4887:
    sbc a
    cp b
    ld e, a
    ld a, c
    sbc a
    ld e, b
    ccf
    jr jr_08d_48cf

    ld a, [de]
    ccf
    jr jr_08d_48d3

    ld a, [de]
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, [hl-]
    ld a, a
    ld a, [hl-]
    ld a, a
    inc a
    ld a, a
    inc [hl]
    ld a, a
    ld a, [hl-]
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc [hl]
    ld a, a
    inc [hl]
    ld a, a
    ld a, $7f
    or h
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    db $76
    rst $38
    ld a, l
    rst $38
    ld a, e
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    ld l, l
    rst $38
    ld a, c
    rst $38
    ld a, [hl]

jr_08d_48cf:
    rst $38
    ld a, [hl]
    rst $38
    ld l, a

jr_08d_48d3:
    rst $38
    ld a, a
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    rst $38
    rra
    rst $18
    ccf
    rst $20
    rra
    rst $20
    rra
    rst $30

Call_08d_48fb:
    rrca
    rst $30
    rrca
    ei

Call_08d_48ff:
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$5f], a
    add b
    ld a, a
    add b
    ld a, a
    ld [$04f7], sp
    ei
    inc b
    ei
    inc c
    ei
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ld h, e
    cp $33
    cp $07
    cp $23
    cp $23
    cp $28
    rst $38
    jr nz, @+$01

    dec h
    cp $24
    rst $38
    jr z, @+$01

    inc c
    rst $38
    ld h, $fd
    ld b, $fd
    inc h
    rst $38
    ld h, d
    rst $38
    inc [hl]
    rst $38
    ld e, b
    rst $38
    add hl, bc
    cp $40
    rst $38
    ld [$40ff], sp
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    add l
    rst $38
    dec b
    rst $38
    add e
    rst $38
    add e
    rst $38
    adc e
    rst $38
    set 7, a
    sub e
    rst $38
    adc e
    rst $38
    sub e
    rst $38
    sbc e
    rst $38
    ld a, [de]
    rst $38
    ld [de], a
    rst $38
    ld c, $ff
    ld a, [hl+]
    rst $38
    dec hl
    rst $38
    daa
    rst $38
    cpl
    rst $38
    dec hl
    rst $38
    cpl
    rst $38
    rst $10
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $20
    rst $38
    ld [$ebff], a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    ld a, a
    rst $08
    ld a, a
    rst $08
    ccf
    rst $30
    ccf
    rst $30
    rra
    db $e3
    rra
    ei
    rrca
    ld sp, hl
    rrca
    db $fd
    rlca
    db $fc
    rlca
    cp $03
    rst $38
    inc bc

jr_08d_49e8:
    rst $38
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    ld [$3cd6], sp
    jp nz, $c619

    dec sp
    call nz, $847b

jr_08d_49fa:
    rst $38
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld [hl], e
    adc h
    ld h, e
    sbc h
    ld h, d
    sbc l
    ldh [rNR33], a
    rst $28

jr_08d_4a09:
    jr jr_08d_4a09

    add hl, bc
    and $19
    rst $20
    jr @-$17

    jr jr_08d_49fa

    jr jr_08d_49e8

    inc a
    add e
    ld a, h
    sub a
    ld a, b
    ld d, e
    cp h
    inc b
    ei
    ld l, b
    or a
    inc h
    ei
    ld bc, $31ff
    rst $28
    inc hl
    db $fd
    ld hl, $01ff
    rst $38
    ld b, e
    rst $38
    ld h, c
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld b, h
    rst $38
    add h
    rst $38
    call nz, $84ff
    rst $38
    add h
    rst $38
    add h
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    ld [$88ff], sp
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc de
    db $fd
    ld de, $23ff
    rst $38
    ld hl, $25ff
    rst $38
    xor c
    rst $38
    ld a, [hl+]
    rst $38
    dec hl
    rst $38
    ld c, d
    rst $38
    ld l, e
    rst $38
    push bc
    rst $38
    ld e, e
    rst $38
    db $dd
    rst $38
    ld e, a
    rst $38
    db $dd
    rst $38
    rst $30
    rst $38
    cp l
    rst $38
    cp e
    rst $38
    sbc a
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    ld a, a
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a

Jump_08d_4ab5:
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    ld a, a
    rst $28
    ld a, a
    rst $30
    ccf
    rst $30
    ccf
    di
    rra
    db $eb
    rra
    ld sp, hl
    rrca
    db $fd
    rrca
    db $fc
    rlca
    cp $07
    cp $03
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    jp hl


    ld d, $be
    db $10
    rst $20
    jr @+$7d

    db $10
    ret z

    ld sp, $31cc
    ld c, $b1
    ld a, [hl]
    and c
    ld bc, $3cf6
    db $e3
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    db $e3
    ld e, l
    ld a, [de]
    push hl
    dec de
    push hl
    inc c
    di
    inc h
    db $db
    sub [hl]

Jump_08d_4b05:
    db $eb
    ld [de], a
    rst $28
    sub b
    rst $28
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    ld bc, $04ff
    rst $38
    ld [bc], a
    rst $38
    ld [$09ff], sp
    rst $38
    ld b, b
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [hl], $df
    ld [bc], a
    rst $38
    dec d
    rst $38
    sbc d
    rst $38
    dec d
    rst $38
    add hl, de
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld c, a
    rst $38
    dec bc
    rst $38
    ld [de], a
    rst $38
    dec hl
    rst $38
    rra
    rst $38
    adc l
    rst $38
    inc e
    rst $38
    db $dd
    rst $38
    ld a, l
    rst $38
    ld a, $ff
    ld c, $ff
    ld [$2dff], sp
    rst $38
    sbc e
    rst $38
    db $f4
    rst $38
    pop af
    rst $38
    db $f4
    rst $38
    ld a, [$e8ff]
    rst $38
    and h
    rst $38
    ld [$e5ff], a
    rst $38
    db $e4
    rst $38
    db $fd
    rst $38
    db $ed
    rst $38
    db $dd
    rst $38
    db $ed
    rst $38
    cp a
    rst $38
    db $eb
    rst $38
    xor $ff
    xor $ff
    push af
    rst $38
    sbc $ff
    xor h
    rst $38
    cp $ff
    ei
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    db $fd
    rst $38
    di
    rst $38
    ld a, [$f1ff]
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    and $ff
    rst $28
    rst $38
    xor $ff
    rst $28
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
    ld a, a
    rst $38
    ld a, a
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
    ccf
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    add [hl]
    ld a, e
    add h
    ld a, e
    ret nz

    ld a, a
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld bc, $43ff
    rst $38
    inc bc
    rst $38
    sub c
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    ld d, [hl]
    cp a
    ld b, $ff
    add a
    ld a, a
    inc b
    rst $38
    inc e
    rst $38
    ld c, c
    rst $38
    add hl, de
    rst $38
    ld c, c
    rst $38
    ld e, c
    rst $38
    dec e
    rst $38
    dec sp
    rst $38
    rla
    rst $38
    rla
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    push af
    rst $38
    db $db
    rst $38
    ld e, a
    rst $38
    sbc $ff
    call c, $bdff
    rst $38
    push de
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    daa
    rst $38
    ld c, [hl]
    rst $38
    ld c, a
    rst $38
    adc $ff
    ld c, l
    rst $38
    dec a
    rst $38
    rra
    rst $38
    dec e
    rst $38
    ld a, l
    rst $38
    cp a
    rst $38
    dec sp
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    ld [hl], a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a

Call_08d_4c3b:
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $08
    rst $38
    and a
    rst $38
    sub e
    rst $38
    cp c
    rst $38
    reti


    rst $38
    db $d3
    rst $38
    ld d, c
    rst $38
    rla
    rst $38
    ld [hl-], a
    rst $38
    ld b, $ff
    add $ff
    call $e5ff
    rst $38
    xor l
    rst $38
    adc e
    rst $38
    ld l, a
    rst $38
    ld e, e
    rst $38
    sub [hl]
    rst $38
    sub $ff
    cp [hl]
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld a, l
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    db $eb
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    db $fd
    rst $38
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
    ret nz

    rst $38
    jp $a3ff


    rst $38
    and e
    rst $38
    adc d
    rst $38
    sub d
    rst $38
    inc h
    rst $38
    ld h, $ff
    ld h, l
    rst $38
    or l
    rst $38
    xor e
    rst $38
    xor e
    rst $38
    ld l, e
    rst $38
    ld [hl], a
    rst $38
    db $db
    rst $38
    sbc $ff
    sbc $ff
    adc $ff
    db $ed
    rst $38
    db $ed
    rst $38
    call Call_08d_4dff
    rst $38
    reti


    rst $38
    ld sp, hl
    rst $38
    db $db
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
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp [hl]
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
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$f9ff]
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    pop af
    rst $38
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    db $eb
    rst $38
    push hl
    rst $38
    rst $20
    rst $38
    db $db
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    db $db
    rst $38
    or e
    rst $38
    or e
    rst $38
    or a
    rst $38
    ld b, a
    rst $38
    ld d, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
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
    db $fd
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
    ei
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    rst $08
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    call c, $fcff
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    db $fd
    ei
    db $fd
    ei
    ld a, [c]
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    and c
    rst $38
    call Call_08d_44f7
    rst $38
    jp nz, $c8ff

    rst $38
    adc b
    rst $38
    add h
    rst $38
    ret nc

    cp a
    add l
    rst $38
    ld [de], a
    rst $38
    ld a, [de]
    rst $38
    sub l
    ld a, a
    inc sp
    rst $38
    daa

Call_08d_4dff:
    rst $38
    rst $08
    rst $38
    ld b, a
    rst $38
    ld b, e
    rst $38
    dec de
    rst $38
    sbc e
    rst $38
    sub a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    db $ec
    rst $38
    call c, $e9ff
    rst $38
    xor l
    rst $38
    cp d
    rst $38
    db $db
    rst $38
    db $76
    rst $38
    ld a, l
    rst $38
    db $eb
    rst $38
    xor $ff
    ld e, d
    rst $38
    or $ff
    rst $28
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f5ff]
    rst $38
    db $fd
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    sbc a
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
    ei
    rst $38
    sbc $ff
    sbc h
    rst $38
    ld c, h
    rst $38
    inc a
    rst $38
    jr c, @+$01

    ld a, [de]
    rst $38
    ret nc

    rst $38
    or b
    rst $38
    and h
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    jp nc, $92ff

    rst $38
    ret nc

    rst $38
    add h
    rst $38
    add e
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$21ff], sp
    rst $38
    ret nz

    ld a, a
    ld d, b
    rst $38
    ld c, b
    rst $38
    ld [$00ff], sp
    rst $38
    add l
    rst $38
    add l
    rst $38
    add hl, bc
    rst $38
    add hl, hl
    rst $38
    and e
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    ld d, a
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    rrca
    rst $38
    ld l, $ff
    inc e
    rst $38
    ld a, [de]
    rst $38
    jr c, @+$01

    db $f4
    rst $38
    ldh a, [rIE]
    push af
    rst $38
    db $eb
    rst $38
    xor $ff
    ld [c], a
    rst $38
    jp z, $d4ff

    rst $38
    add h
    rst $38
    add l
    rst $38
    adc c
    rst $38
    add hl, de
    rst $38
    dec d
    rst $38
    ld a, [hl-]
    rst $38
    xor d
    rst $38
    cp e
    rst $38
    db $dd
    rst $38
    call c, $ffff
    rst $38
    db $eb
    rst $38
    and e
    rst $38
    set 7, a
    cp e
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    or a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    sbc $ff
    rst $18
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    cp $ff
    db $ed
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    ld [hl], l
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    ret c

    rst $38
    or l
    rst $38
    db $fd
    rst $38
    ld a, [$75ff]
    rst $38
    db $e4
    rst $38
    set 7, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    cp $ff
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
    db $10
    rst $38
    db $10
    rst $38
    inc d
    ei
    nop
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add c
    rst $38
    ld bc, $03ff
    rst $38
    inc hl
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    ld b, $ff
    rlca
    cp $8c
    rst $38
    inc e
    rst $38
    ld e, $fd
    ld a, [hl-]
    db $fd
    ld a, [hl-]
    db $fd
    jr c, @+$01

    ld [hl-], a
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    db $ec
    rst $38
    add sp, -$01
    add sp, -$01
    call nz, $80ff
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld b, l
    rst $38
    add hl, de
    rst $38
    add c
    rst $38
    dec hl
    rst $38
    inc de
    rst $38
    ld b, $ff
    inc b
    rst $38
    add h
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    rlca
    rst $38
    daa
    rst $38
    ld c, e
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp h
    rst $38
    ei
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    or $ff
    db $fd
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add sp, -$01
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, $fbff
    rst $38
    ld a, [$f6ff]
    rst $38
    db $ec
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    sbc e
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    rst $38
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
    rst $38
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    add hl, bc
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_08d_5094

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08d_50a4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08d_50b4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08d_50c4

    ld [hl-], a

jr_08d_5094:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08d_50a4

    add hl, bc
    add hl, bc
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_08d_50a4:
    ld b, b
    add hl, bc
    ld b, c
    ld b, d
    ld b, e
    add hl, bc
    ld b, h
    ld b, l
    add hl, bc
    ld b, [hl]
    ld b, a
    dec sp
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_08d_50b4:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, d
    ld d, e
    dec sp
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_08d_50c4:
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, l
    ld e, [hl]
    dec sp
    dec sp
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld b, l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, e
    ld h, h
    dec sp
    dec sp
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
    ld h, l
    dec sp
    dec sp
    dec sp
    ld h, [hl]
    ld h, [hl]
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
    dec sp
    dec sp
    dec sp

Call_08d_50ff:
    dec sp
    ld [hl], b
    ld [hl], b
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
    dec sp
    dec sp
    dec sp
    dec sp
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    dec sp
    dec sp
    dec sp
    dec sp
    ld [hl], b
    ld [hl], b
    ld [hl], b
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    dec sp
    dec sp
    dec sp
    dec sp
    ld [hl], b
    ld [hl], b
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
    dec sp
    dec sp
    dec sp
    dec sp
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
    dec sp
    dec sp
    dec sp
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
    dec sp
    dec sp
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
    inc l
    cp l
    cp [hl]
    dec sp
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
    add hl, bc
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    add hl, bc
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
    add sp, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_08d_52be

jr_08d_52be:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, h
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    call z, $ecff
    rst $38
    add sp, -$01
    db $ec
    rst $38
    ret


    rst $38
    add sp, -$01
    call $c9ff
    rst $38
    call c, $d5ff
    rst $38
    reti


    rst $38
    reti


    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    adc $ff
    sub $ff
    add [hl]
    rst $38
    sbc l
    rst $38
    sbc [hl]
    rst $38
    cp l
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    rst $30
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $20
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
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    di
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
    rst $38
    rst $38
    db $fd
    cp $ed
    di
    ld d, b
    adc a
    add h
    ld a, a
    dec sp
    rst $38
    ld e, a
    rst $38
    ld e, $ff
    ld [hl], l
    rst $38
    add $ff
    ld c, c
    rst $38
    db $ed
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    db $db
    rst $38
    rst $10
    rst $38
    or a
    rst $38
    rst $10
    rst $38
    sub a
    rst $38
    xor e
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    add a
    rst $38
    or e
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $18
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
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ld a, [$f8ff]
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
    ld hl, sp-$01
    ld a, [$f9ff]
    rst $38
    di
    rst $38
    pop af
    rst $38
    push af
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    ei
    rst $38
    push af
    rst $38
    jp hl


    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    ld [$faff], a
    rst $38
    ld a, [$faff]
    rst $38
    cp $ff
    db $ed
    rst $38
    db $ed
    rst $38
    push af
    rst $38
    jp hl


    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $08

jr_08d_548b:
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    db $dd
    rst $38
    sub $ff
    cp l
    rst $38
    cp l
    rst $38
    cp e
    rst $38
    ld a, l
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add sp, -$09
    jr nc, jr_08d_548b

    pop af
    ccf
    rrca
    rst $38
    inc a
    rst $38
    ld a, c
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    rst $38
    ld a, e
    db $fc
    ld l, a
    ldh a, [$bf]
    ret nz

    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    db $db
    rst $38
    call c, $fdff
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    ld a, a
    rst $38
    cp l
    rst $38
    ld a, [hl]
    rst $38
    cp d
    rst $38
    sbc e
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, l
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
    ccf
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    ld b, l
    rst $38
    dec bc
    rst $38
    dec h
    rst $38
    dec hl
    rst $38
    ld h, e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    scf
    rst $38
    rra
    rst $38
    cpl
    rst $38
    scf
    rst $38
    dec hl
    rst $38
    daa
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    scf
    rst $38
    ld d, a
    rst $38
    sub a
    rst $38
    rla
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    and a
    rst $38
    and a
    rst $38
    adc a
    rst $38
    xor a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    add c
    rst $38
    dec b
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $18
    db $fc
    rst $28
    ldh a, [$bf]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rIE], a
    ld h, c
    rst $38
    jp Jump_08d_62ff


    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld c, d
    rst $38
    ld h, d
    rst $38
    ld b, d
    rst $38
    ld b, [hl]
    rst $38
    ld d, b
    rst $38
    db $e4
    rst $38
    pop hl
    rst $38
    jp $c7ff


    rst $38
    call $c7f7
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    xor $ff
    and $ff
    db $eb
    rst $38
    db $eb

Jump_08d_55ff:
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    adc e
    rst $38
    sub e
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
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
    rst $18
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
    cp a
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    rst $38
    add c
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $08
    rst $38
    ccf
    db $fc
    ccf
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
    and e
    rst $38
    ld hl, $71ff
    rst $38
    add hl, sp
    rst $38
    dec a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ld d, a
    rst $38
    ld e, l
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
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc $ff
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
    rst $18
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
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
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
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], h
    rst $38
    add sp, -$01
    ld sp, hl
    rst $38
    db $fd
    cp $f7
    ld hl, sp-$21
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, [hl]
    rst $38
    sub $ff
    sbc [hl]
    rst $38
    ld [hl], a
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    add a
    rst $38
    rst $10
    rst $38
    push bc
    rst $38
    ld b, l
    rst $38
    add h
    rst $38
    inc b
    rst $38
    dec e
    rst $38
    ld c, l
    rst $38
    ld l, $ff
    ld h, $ff
    ld l, a
    rst $38
    ld e, l
    rst $38
    cp h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $eb
    rst $38
    xor l
    rst $38
    xor c
    rst $38
    xor d
    rst $38
    sbc $ff
    cp b
    rst $38
    ld [$fcff], a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, [$f9ff]
    rst $38
    ld sp, hl
    rst $38
    db $db
    rst $38
    ld sp, hl
    rst $38
    ei
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
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    or $ff
    ei
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    db $fc
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f1ff]
    rst $38
    jp $efff


    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
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
    and $ff
    rst $20
    rst $38
    rst $20
    rst $38
    and $ff
    db $eb
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $28
    rst $38
    cp $ff
    db $76
    rst $38
    ld h, a
    rst $38
    or [hl]
    rst $38
    sub $ff
    ld d, a
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    cp a
    rst $38
    ld [hl], a
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    ld e, a
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
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    ld a, a
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
    db $fd
    rst $38
    db $fd
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
    rst $38
    rst $38
    db $fd
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
    ld hl, sp-$01
    db $e3
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc $ff
    ei
    db $fc
    rst $38
    ldh [rIE], a
    add b
    rst $38

Jump_08d_58cb:
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $30
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
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
    pop af
    rst $38
    adc a
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [$3f]
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
    rst $38
    ld a, a
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add a
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
    and b
    reti


    or b
    ret


    or e
    ret z

    ld sp, hl
    add b
    or b
    adc c
    ldh a, [$88]
    pop de
    xor b
    ld a, [$ea80]
    add b
    ld a, [c]
    adc b
    or $88
    ld [c], a
    sbc b
    jp nc, $f288

    adc b
    ld a, [$f280]
    adc b
    call nc, $e088
    adc b
    adc h
    ldh a, [$c4]
    adc b
    call c, $9c80
    ret nz

    add b
    rst $38
    add b
    ret nz

    add b
    ret nz

    rlca
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    inc b
    ret nz

    ld b, $c0
    rlca
    ret nz

Jump_08d_59a6:
    rlca
    ret nz

    nop
    ret nz

    rlca
    ret nz

    nop
    ret nz

    nop
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    nop
    ret nz

    nop
    ret nz

    rlca
    ret nz

    nop
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    nop
    ret nz

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    or b
    ld c, a
    sub d
    ld c, a
    ld e, h
    add e
    rrca
    ret nz

    ld e, a
    add b
    add l
    ld b, d
    add $01
    ld c, b
    inc bc
    ld d, h
    inc bc
    ld c, [hl]
    ld bc, HeaderDestinationCode
    ld c, d
    ld bc, HeaderDestinationCode
    ld a, [bc]
    ld b, c
    ld [$4a41], sp
    ld bc, $0942
    nop
    ld c, c
    jr nz, jr_08d_5a73

    ld d, d
    add hl, bc
    ld d, d
    add hl, bc
    ld b, d
    add hl, bc
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    call nz, RST_00
    nop
    db $fc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add h
    nop
    db $e4
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    call nz, $f400
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_08d_5a73:
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add h
    ld a, e
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    adc [hl]
    ld a, c
    add b
    ld a, a
    ld [bc], a
    db $fd
    dec b
    ld a, [$fa05]
    ld bc, $09fe
    cp $03
    db $fc
    ld bc, $03fe
    db $fc
    ld [bc], a
    db $fd
    dec b
    ld a, [$ff00]
    ld bc, $0bfe
    db $fc
    or c
    ld c, [hl]
    inc hl
    call c, $4cb3
    inc sp
    call z, $ec93
    or a
    ret z

    ld a, [c]
    adc l
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ld [c], a
    sbc l
    ldh a, [$8f]
    and b
    rst $18
    and b
    rst $18
    ret nc

    xor a
    call nz, $c0bf
    cp a
    ret z

    cp a
    sub b
    rst $28
    ret nc

    xor a
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    pop bc
    cp a
    ldh [$bf], a
    adc b
    rst $38
    adc b
    rst $38
    and c
    rst $38
    xor c

jr_08d_5af5:
    rst $38
    sbc c
    rst $38
    adc c
    rst $38
    xor c
    rst $38
    sub c

jr_08d_5afd:
    rst $38
    sub c
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
    nop
    nop
    nop
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
    nop
    add l
    ld a, a
    ld l, a

jr_08d_5b23:
    rst $18
    jr nc, jr_08d_5af5

    ld sp, $38cf
    rst $08
    or b
    rst $08
    jr nc, jr_08d_5afd

    and b
    ld e, a
    inc [hl]
    res 6, c

jr_08d_5b33:
    ld c, a
    or c
    ld c, a
    or e
    ld c, l
    or e
    ld c, l
    sub h
    ld l, e
    cp b
    ld c, a
    or d
    ld c, l
    or h
    ld c, e
    jr nz, jr_08d_5b23

    add b
    ld a, a
    nop
    rst $38
    ld [$98ff], sp
    ld l, a
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    jr nz, jr_08d_5b33

    and b
    ld e, a
    add h
    ld a, a
    and h
    ld e, a
    add h
    ld a, a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld c, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jr c, @+$01

    inc c
    rst $30
    ld de, $19ff
    rst $30
    sub b
    rst $38
    rra
    rst $38
    jr @+$01

    nop
    rst $38
    inc d
    rst $28
    inc h
    rst $38
    inc h
    rst $38
    inc b
    rst $38
    inc h
    rst $38
    add h
    rst $38
    and h
    rst $38
    db $e4
    rst $38
    inc h
    rst $38
    and h
    rst $38
    inc b
    rst $38
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ret z

    ccf
    inc [hl]
    rst $38
    call nc, Call_08d_50ff
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    ld [hl], $ff
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    ld b, b
    rst $38
    ld h, h
    rst $38
    ld b, h
    rst $38
    inc [hl]
    rst $38
    db $e4
    rst $38
    or h
    rst $38
    ld [hl], h
    rst $38
    or h
    rst $38
    ld h, h
    rst $38
    inc l
    rst $38
    ld h, h
    rst $38
    inc a
    rst $38
    and l
    rst $38
    dec h
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    inc h
    rst $38
    db $e4
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
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
    jr c, jr_08d_5c16

    jr nc, jr_08d_5c1a

    jr nc, @-$64

    and d
    ld b, b
    ld b, b
    nop
    nop

jr_08d_5c16:
    rst $38
    rst $38
    nop
    nop

jr_08d_5c1a:
    nop
    nop
    rst $38
    rst $38
    sbc $de
    adc $ff
    sbc $ff
    cp $ff
    sbc [hl]
    rst $38
    cp $ff
    xor $ff
    xor $ff
    cp $ff
    xor d
    rst $38
    cp $ff
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
    ld b, d
    ld a, a
    ld c, b
    ld [hl], a
    ld [hl], b
    ld c, a
    db $10
    ld l, a
    add hl, de
    ld h, a
    jr c, jr_08d_5cb3

    ld [$0877], sp
    ld [hl], a
    ret nc

    rst $28
    ret nz

    cp a
    ret z

    or a
    jp c, $98a7

    rst $20
    ldh [$9f], a
    ret nz

    cp a
    sbc h

jr_08d_5c5f:
    db $e3
    adc b

jr_08d_5c61:
    or a
    ret


    or a
    ld [bc], a
    rst $38
    ret nc

    xor a
    sub b
    xor a
    ld [$0cf7], sp

jr_08d_5c6d:
    or e
    ret nz

    ccf
    ld h, b
    sbc a
    ld e, b
    and a
    ld l, c
    sub [hl]
    inc h
    db $db
    db $ec
    inc de
    call nz, $a03b
    ld e, a
    xor b
    ld d, a
    ld b, h
    cp e
    and h
    ld e, e
    and h
    ld e, e
    call nz, $083b
    ld [hl], a
    xor b
    ld d, a
    jr nz, jr_08d_5c6d

    inc h
    db $db
    and d
    ld e, l
    and b
    ld e, a
    adc b
    ld [hl], a
    jr c, jr_08d_5c5f

    jr nc, jr_08d_5c61

    add hl, hl
    rst $10
    ld [bc], a

jr_08d_5c9d:
    db $fd
    ld h, d
    sbc l
    ld c, d
    or l
    ld [$68f7], sp
    sub a
    add hl, hl
    rst $10
    ld sp, $50cf
    xor a
    jr nz, @-$5f

    ld c, b
    or a
    ld c, b
    sub a
    ld l, b

jr_08d_5cb3:
    sub a
    db $10
    rst $28
    ld [bc], a
    rst $38
    ld b, b
    cp a
    ld a, [hl+]
    push de
    jr nz, jr_08d_5c9d

    ld hl, $00df
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [hl+], a
    ld e, l
    ld de, $106e
    cpl
    nop
    rra
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ret z

    rst $38
    ld c, h
    rst $38
    ld c, d
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld c, a
    rst $38
    ld c, h
    rst $38
    ld c, [hl]
    cp a
    ld c, [hl]
    cp a
    jp nz, $c937

    inc sp
    ret z

    ld sp, $30c8
    call z, $fe30
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
    dec bc
    rst $30
    cpl
    rst $10
    cpl
    rst $10
    inc bc
    rst $38
    bit 6, a
    dec bc
    rst $30
    ld hl, $a3df
    ld e, a
    dec bc
    rst $30
    inc bc
    rst $38
    dec bc
    rst $30
    add [hl]
    ei
    ld a, [bc]
    rst $30
    dec bc
    rst $30
    add hl, bc
    rst $30
    ld b, e
    cp a
    ld bc, $03ff
    rst $38
    add c
    rst $38
    ld hl, $03ff
    rst $38
    ld hl, $21ff
    rst $38
    db $10
    rst $28
    sub c
    ld l, a
    add c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add d
    ld a, a
    adc c
    ld a, a
    dec bc
    rst $38
    ld de, $51ff
    cp a
    pop bc
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    ld a, a
    db $10
    rst $38
    ld e, b
    cp a
    ld bc, $04ff
    rst $38
    ld d, h
    cp a
    ld e, h
    cp a
    jr @+$01

    ld bc, $09ff
    rst $30
    ld d, c
    cp a
    nop
    rst $38
    ld h, b
    cp a
    ld bc, $01ff
    rst $38
    add c
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    ld de, $01ff
    rst $38
    ld b, $fb
    db $10
    rst $38
    ld [de], a
    rst $38
    ld d, $fb
    inc b
    ei
    ld c, $fb
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    ld d, b
    rst $38
    ld e, d
    rst $38
    ld b, e
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    ld de, $14ff
    rst $38
    ld d, c
    rst $38
    jr @+$01

    inc [hl]
    rst $38
    dec [hl]
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    ld e, b
    rst $38
    ld [hl], b
    rst $38
    ld sp, $b9ff
    rst $38
    cp h
    rst $38
    call $9dff
    rst $38
    push de
    rst $38
    inc l
    rst $38
    ld l, h
    rst $38
    or l
    rst $38
    sub l
    rst $38
    ld l, a
    rst $38
    ld l, l
    rst $38
    ld a, $7f
    dec a
    ccf
    ld e, $1f
    inc e
    rrca
    add [hl]
    rrca
    jp nz, $e007

    inc bc
    ldh a, [rSB]
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
    jr nc, @+$01

    ld d, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    ret


    rst $38
    adc b
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    add sp, -$01
    add sp, -$01
    xor b
    rst $38
    ld a, b
    rst $38
    add sp, -$01
    add sp, -$01
    ret


    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld [hl], h
    rst $38
    db $fc
    rst $38
    call z, $fcff
    rst $38
    call nc, $ecff
    rst $38
    db $f4
    rst $38
    or $ff
    or [hl]
    rst $38
    db $fd
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
    cp a
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    cp $ff
    ld e, [hl]
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp [hl]
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    sbc $ff
    ld a, a
    rst $38
    rst $18
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
    ld a, a
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    ld a, a
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
    rst $38
    rst $38
    ccf
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rra
    rlca
    rrca
    add e
    rlca
    jp $e103


    ld bc, $00f0
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    sub a
    rst $38
    adc a
    rst $38
    sub a
    rst $38
    ld d, a
    rst $38
    sbc e
    rst $38
    sbc a
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    cp e
    rst $38
    xor e
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    or a
    rst $38
    ccf
    rst $38
    ei
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    dec a
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    dec sp
    rst $38
    ld a, l
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, $ff
    dec sp
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp a
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
    cp $ff
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
    ld a, a
    ccf
    ccf
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    add e
    rlca
    add e
    inc bc
    pop bc
    ld bc, $00e0
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld [hl], c
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
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
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    adc c
    rst $38
    pop bc
    rst $38
    ld b, c
    rst $38
    ret nz

    rst $38
    pop bc
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld [c], a
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    and $ff
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    di
    rst $38
    pop af
    rst $38
    jp hl


    rst $38
    ldh a, [rIE]
    cp b
    rst $38
    ld hl, sp-$01
    ld a, c
    rst $38
    ld a, [c]
    rst $38
    ei
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    reti


    rst $38
    pop af
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    cp d
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    xor $ff
    db $fd
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ccf
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    ld sp, hl
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], h
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
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    ld a, $ff
    ld a, $ff
    ld e, $ff
    ld a, [hl]
    rst $38
    ld e, d
    rst $38
    ld a, a
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, $ff
    rra
    rst $38
    ld e, $ff
    sbc a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    cpl
    rst $38
    sbc a
    rst $38
    xor a
    rst $38
    cpl
    rst $38
    ld c, a
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
    daa
    rst $38
    rlca
    rst $38
    scf
    rst $38
    daa
    rst $38
    scf
    rst $38
    scf
    rst $38
    sbc e
    rst $38
    scf
    rst $38
    or e
    rst $38
    sub e
    rst $38
    and e
    rst $38
    ld d, e
    rst $38
    ld b, e
    rst $38
    add e
    rst $38
    db $d3
    rst $38
    jp Jump_08d_55ff


    rst $38
    ld b, a
    rst $38
    ld d, a
    rst $38
    or a
    rst $38
    ld a, e
    rst $38
    ei
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
    db $db
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld e, l
    rst $38
    ld c, l
    rst $38
    ld c, h
    rst $38
    sub [hl]
    rst $38
    ld c, [hl]
    rst $38
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    sbc [hl]
    rst $38
    ld e, $ff
    sbc c
    rst $38
    ld c, h
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    ld c, l
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld l, l
    rst $38
    ld c, l
    rst $38
    ld a, l
    rst $38
    dec l
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    ld a, [hl]
    rst $38
    ld l, [hl]
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    rst $10
    rst $38
    set 7, a
    db $db
    rst $38
    rst $18
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [de], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08d_6212

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld hl, $3012
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08d_6234

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld hl, $3e12
    ccf
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
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_08d_6212:
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
    ld e, b
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
    ld e, b
    ld e, b
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e

jr_08d_6234:
    ld l, h
    ld l, l
    ld l, [hl]
    ld [de], a
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld e, b
    ld e, b
    ld e, b
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
    ld e, b
    ld e, b
    ld e, b
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
    ld e, b
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
    ld c, c
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
    ld e, b
    ld e, b
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


    jp z, Jump_08d_58cb

    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_000_00db

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_08d_62ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0400
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0005
    ld bc, $0400
    inc b
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
    ld bc, $0400
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
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    inc bc
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
    inc bc
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
    dec b
    dec b
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
    ldh a, [$f0]
    ldh [$f0], a
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
    ldh [$e0], a
    db $e3
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fd], a
    db $e3
    db $fc
    rst $38
    db $f4
    rst $38
    push af
    rst $38
    db $f4
    rst $38
    add sp, -$09
    ld hl, sp-$09
    jp hl


    or $e8
    rst $30
    add sp, -$09
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $ec
    rst $30
    ld [c], a
    rst $38
    ldh [rIE], a
    add sp, -$09
    add sp, -$09
    pop hl
    rst $38
    add sp, -$09
    add sp, -$09
    add sp, -$09
    pop hl
    rst $38
    db $ec
    rst $30
    db $ec
    rst $30
    db $ec
    rst $30
    db $ec
    rst $30
    db $e4
    rst $38
    rst $28
    ldh a, [$e8]
    ldh a, [$eb]
    ldh a, [$eb]
    ldh a, [$eb]
    ldh a, [$ea]
    ldh a, [$ea]
    ldh a, [$ea]
    ldh a, [$ea]
    ldh a, [$ea]
    ldh a, [$eb]
    ldh a, [$eb]
    ldh a, [$eb]
    ldh a, [$e8]
    ldh a, [$ef]
    ldh a, [$e2]
    db $fd
    ldh [rIE], a
    ldh [rIE], a
    ld [$e8fd], a
    rst $38
    db $eb
    db $fd
    jp hl


    rst $38
    jp hl


    rst $38
    add sp, -$01
    add sp, -$01
    jp hl


    rst $38
    db $ec
    rst $38
    ld hl, sp-$11
    add sp, -$01
    ei
    rst $38
    push af
    rst $38
    sbc $ff
    db $e4
    db $fc
    pop af
    ld sp, hl
    rst $20
    rst $20
    ret


    rst $08
    rst $30
    rst $38
    di
    db $ed
    pop af
    rst $28
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    ei
    pop hl
    rst $30
    pop hl
    ei
    pop hl
    di
    pop hl
    ld sp, hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    rst $28
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
    cp $ff
    ld sp, hl
    rst $38
    rst $20
    rst $38
    rst $18
    cp $ff
    ld hl, sp-$01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_08d_652b:
    nop
    inc bc
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
    ret nz

    ccf
    ldh [$ef], a
    ld [$00f7], sp
    rst $30
    jr jr_08d_652b

    db $10
    rst $28
    ld a, [de]
    rst $20
    adc d
    push af
    ld c, $f1
    ld a, [de]
    push hl
    ld c, $f1
    ld c, $f1
    inc b
    ld sp, hl
    db $10
    jp hl


    dec b
    ld hl, sp+$00
    ld sp, hl
    inc c
    pop af
    dec c
    ldh a, [$0c]
    pop af
    inc c
    pop af
    ld d, $e9
    rla
    add sp, $06
    ld sp, hl
    ld b, $f9
    ld l, $f1
    add [hl]
    ld sp, hl
    ld b, [hl]
    cp c
    ld [hl], c
    rst $38
    di
    db $fd
    push af
    rst $38
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    rst $38
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    jr jr_08d_6586

jr_08d_6586:
    inc a
    nop
    jr jr_08d_658a

jr_08d_658a:
    nop
    nop
    nop
    nop
    add c
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
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
    ld b, $fd
    nop
    rst $38
    nop
    ld hl, sp-$59
    rst $20
    adc h
    rst $08
    inc [hl]
    ccf
    ret z

    rst $38
    call nz, $caff
    rst $38
    call $8fff
    rst $38
    dec c
    rst $38
    ld bc, $e1ff
    rra
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld [c], a
    rra
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ae
    ld b, $7e
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
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
    cp $ff
    ld sp, hl
    rst $38
    rst $20
    rst $38
    sbc a
    ld hl, sp+$7f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
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
    ld hl, sp+$07
    adc d
    ld [hl], l
    add d
    dec a
    ld [hl+], a
    dec a
    ld sp, $3b06
    inc b
    dec de
    inc h
    ld [de], a
    inc h
    inc hl
    inc b
    inc sp
    inc b
    inc hl
    inc b
    inc hl
    inc b
    ld a, [hl-]
    dec b
    add hl, bc
    ld h, $00
    daa
    nop
    daa
    ld bc, $0126
    ld h, $83
    inc h
    sub b
    daa
    ld hl, $0306
    inc h
    ld b, c
    ld h, $01
    ld h, $01
    ld h, $81
    ld h, $d1
    ld h, $c1
    ld h, $40
    ld h, $af

jr_08d_6661:
    db $76
    cpl
    or $66
    cp a
    cp $07
    rrca
    rlca
    add hl, bc
    ld b, $c9
    ld b, $c8
    rlca
    jp z, Jump_08d_4b05

    inc b
    ld c, b
    rlca
    ld c, d
    dec b
    ld c, d
    dec b
    ld c, b
    rlca
    ret z

    rlca
    call z, $c807
    rlca
    add hl, bc
    ld b, $fd
    ld b, $f5
    cp $f9
    cp $3c
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    rst $00
    jr c, @-$3b

    inc a
    jp $d13c


    ld l, $c1
    ld a, $81
    ld a, [hl]
    pop bc
    ld a, $41
    cp [hl]
    ld a, a
    ld a, a
    rst $28
    rst $38
    ldh [rIE], a
    ld c, b
    rst $38
    xor h
    rst $38
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    ld a, [hl-]
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    sbc c
    ld a, [hl]
    ld hl, sp+$1f
    cp $09
    rst $38
    ld [$08ff], sp
    ld [$98ff], sp
    ld a, a
    ld hl, sp+$18
    ld e, b
    jr jr_08d_6661

    jr jr_08d_66e3

    jr jr_08d_66e5

    jr jr_08d_66fa

    dec hl

jr_08d_66d0:
    cpl
    cpl

jr_08d_66d2:
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    rst $20
    rst $38
    sbc h
    rst $38
    rst $38
    ld [hl], b
    rst $38

jr_08d_66e3:
    ldh [$bf], a

jr_08d_66e5:
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
    nop
    nop
    nop
    rlca
    nop
    ld a, a
    nop
    rst $38
    nop

jr_08d_66fa:
    rst $38
    nop

jr_08d_66fc:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    and d
    ld d, c
    ld c, b
    or e
    ld l, c
    sub d
    daa
    ret nc

    daa
    ret nc

    ld [hl+], a
    pop de
    ld h, c
    sub d
    ld l, b
    sub b
    ld b, b
    or b
    ld h, b
    sub b
    ld [hl+], a
    ret nc

    ld [hl+], a
    ret nc

    ld h, d
    sub b
    ld h, b
    sub b
    ld l, d
    sub b
    ld h, d
    sub b
    ld b, b
    or b
    ld h, b
    sub b
    ld h, b
    sub b
    jr z, jr_08d_66fc

    ld h, d
    sub b
    ld [hl+], a
    ret nc

    ld h, d
    sub b
    ld h, b
    sub b
    ld l, b
    sub b
    ld h, b
    sub b
    add b
    ldh a, [rBCPS]
    sub b
    inc l
    sub b
    jr nz, jr_08d_66d0

    jr nz, jr_08d_66d2

    ld l, b
    sub b
    ld c, b
    sub b
    ld c, h
    sub b
    inc b
    sub b
    ld [de], a
    add b
    ld b, $90
    ld c, $90
    xor a
    db $10
    jp nz, $473c

    cp b
    ret z

    ld [hl], $49
    or [hl]
    inc b
    cp e
    ld [$18f7], sp
    rst $30
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    db $fd
    ld bc, $41ff
    or a
    dec b
    ei
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $30
    dec b
    ei
    add hl, bc
    rst $30
    add c
    rst $38
    pop af
    rst $38
    rst $08
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld b, a
    rst $38
    push bc
    rst $38
    ld b, l
    rst $38
    db $ed
    ld d, a
    ld l, a
    push de
    ld b, l
    rst $38
    db $fd
    ld b, a
    rst $38
    ld b, l
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld b, l
    ld b, a
    ld b, l
    ld b, a
    ld e, l
    ld e, a
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    db $ed
    rst $38
    cp c
    rst $38
    ld [hl], c
    rst $38
    pop bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ccf
    pop bc
    rrca
    pop af
    rlca
    ld sp, hl
    nop
    rst $38
    rlca
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
    ld sp, hl
    ld b, $be
    ld b, b
    adc b
    ld b, a
    adc d
    ld b, h
    add b
    ld b, b
    adc b
    ld b, b
    adc b
    ld b, b
    ld c, b
    add b
    nop
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    ld b, b
    nop
    ret nz

    nop
    ld b, b
    nop
    ld c, b
    nop
    ld b, b
    nop
    nop
    nop
    ld [$4800], sp
    nop
    ld c, b
    nop
    ld [$4800], sp
    nop
    ld b, b
    nop
    ld c, b
    nop
    ld b, b
    nop
    ld b, h
    nop
    ret nz

    nop
    ld [$0c40], sp
    ld b, b
    ld c, b
    inc b
    ld c, b
    inc b
    inc c
    ld b, b
    ld c, h
    nop
    ld b, b
    ld [$0844], sp
    ld b, h
    ld [$0844], sp
    ld b, b
    inc c
    inc d
    ld c, b
    nop
    ld c, h
    nop
    ld c, h
    ld b, b
    inc c
    nop
    ld c, h
    inc b
    ld c, b
    ld d, h
    ld [$4817], sp
    ld d, a
    ld [$582e], sp
    ld h, $58
    daa
    ret c

    dec bc
    db $fc
    dec b
    ld a, [$fc03]
    add hl, bc
    ld a, [hl]
    ld b, b
    rst $38
    ld d, b
    rst $28
    sub b
    rst $28
    xor b
    rst $00
    adc d
    push bc
    xor d
    push bc
    adc b
    rst $00
    add b
    rst $08
    or d
    call $cfb0
    or b
    rst $08
    or d
    call $cff0
    ldh a, [$cf]
    or b
    rst $08
    ldh a, [$cf]
    sub b
    rst $28
    sub b
    rst $28
    db $d3
    xor $c3
    cp $c0
    rst $38
    and d
    rst $18
    add d
    rst $38
    add b
    rst $38
    add b
    rst $38
    add d
    db $fd
    cp $81
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

jr_08d_6893:
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
    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    nop
    rst $38
    ld b, $f9
    rrca
    ldh a, [$1f]
    ldh [$3f], a
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
    cp $01
    xor $11
    ld a, d
    add l
    ld c, d
    or l
    db $ec
    sub c
    ld h, [hl]

jr_08d_68d5:
    sbc c
    db $76
    adc c
    ld [hl], $89
    ld l, $81
    inc h
    adc e
    ld a, [hl]
    add c
    ld [hl-], a
    adc l
    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    ld d, [hl]
    xor c
    ld e, [hl]
    and c
    ld e, d
    and c
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld l, $c1
    sub $21
    ld e, [hl]
    and c
    ld d, [hl]
    xor c
    or $09
    cp [hl]
    ld b, c
    ld a, [hl]
    add c
    cp $01
    ld e, [hl]
    and c
    ld l, l
    sub c
    jr c, jr_08d_68d5

    inc e
    pop bc
    ld a, b
    add c
    ld e, d
    add c
    ld e, d
    add c
    ld d, e
    adc b
    jr c, jr_08d_6893

    jr nz, @-$6e

    and b
    ldh a, [rNR13]
    add b
    add b
    nop
    and b
    nop
    sub b
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
    add b
    jr nc, @-$7e

    ld [hl-], a
    add b
    add d
    nop
    add d
    nop
    ld [bc], a
    add b
    and e
    nop
    ld b, e
    add b
    inc de
    add b
    ld [hl], e
    add b
    ld d, e
    add b
    ld [de], a
    add c
    ld [hl-], a
    add c
    ld d, d
    add c
    ld h, d
    sub c
    ld h, d
    sub c
    ld [hl+], a
    pop de
    ld [hl+], a
    pop de
    ld d, d
    and c
    ld [bc], a
    pop af
    sub d
    pop hl
    sub d
    pop hl
    sub e
    ldh [$83], a
    ldh a, [$03]
    ldh a, [$91]
    ld a, [c]
    add c
    ld a, [c]
    add c
    ld a, [c]
    nop
    di
    add b
    di
    nop
    di
    add b
    di
    add b
    di
    db $10
    db $e3
    or b
    ld b, e
    nop
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [$60]
    sbc a
    sbc [hl]
    ld h, c
    rst $20
    jr jr_08d_6991

jr_08d_6991:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    nop
    rst $38
    nop
    rst $38
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
    push hl
    ld a, [de]
    inc b
    ld a, [de]
    add b
    ld e, $c0
    ld e, $58
    ld b, $50
    ld c, $58
    ld b, $07
    ld e, $85
    ld [de], a
    add [hl]
    nop
    ld d, $00
    jr jr_08d_69c2

    rlca
    nop

jr_08d_69c2:
    ld a, [hl+]
    nop
    ld d, e
    nop
    ld [bc], a
    nop
    add d
    nop
    jp nc, $c200

    nop
    add e
    nop
    ld [bc], a
    nop
    ld b, e
    nop
    add d
    nop
    sub d
    nop
    ld [de], a
    nop
    ld [de], a
    nop
    add a
    nop
    add b
    ld [bc], a
    add c
    ld [bc], a
    nop
    ld [bc], a
    ld b, a
    nop
    ld h, e
    nop
    ld h, e
    nop
    add e
    nop
    ld c, d
    nop
    jp z, $c000

    nop
    nop
    nop
    inc bc
    nop
    db $fc
    nop
    nop
    nop
    rst $38
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
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    add b
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
    cp $00
    rst $38
    nop
    nop
    rst $38
    add b
    nop
    ldh [rP1], a
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
    rlca
    nop
    nop
    nop
    ld e, $e0
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
    nop
    rst $38
    nop
    rra
    ldh [$e1], a
    ld e, $00
    nop
    ld bc, $1f00
    nop
    rst $38
    nop
    rst $38
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
    ld [c], a
    dec e
    call nc, Call_000_0a2b
    ccf
    inc b
    dec sp
    ld a, $01
    inc a
    ld bc, $013e
    ld l, h
    ld bc, $012c
    ld l, $01
    ld l, $01
    ld h, $01
    ld [hl-], a
    ld bc, $0136
    ld h, $01
    ld l, $01
    ld a, [de]
    ld bc, $0110
    ld sp, $3801
    ld bc, $0136
    jr nc, @+$03

    jr c, @+$03

    jr nc, jr_08d_6ab5

    db $10

jr_08d_6ab5:
    ld bc, $1100
    nop
    ld de, $1100
    nop
    ld de, $1141
    ld l, b
    ld de, $1168
    ld l, b
    ld de, $1168
    ld l, h
    ld de, $1128
    ld l, $11
    ld l, a
    ld de, $0000
    nop
    nop
    cp $00
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
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    adc h
    nop
    adc h
    nop
    inc c
    nop
    db $fc
    nop
    inc b
    ld hl, sp+$00
    nop
    nop
    inc b
    sub b
    inc b
    ret nc

    inc b
    ld hl, sp+$04
    ld a, [$fb04]
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rra
    nop
    inc bc
    nop
    rra
    ldh [$e0], a

jr_08d_6b23:
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

jr_08d_6b2d:
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_08d_6b37:
    nop
    rst $38

jr_08d_6b39:
    nop
    rst $38

jr_08d_6b3b:
    nop
    rst $38

jr_08d_6b3d:
    nop
    ld hl, sp+$07
    ret nc

    ccf
    jr nz, jr_08d_6b23

    jr jr_08d_6b3d

    nop
    rst $38
    db $10

jr_08d_6b49:
    rst $38
    db $10
    rst $38
    jr nc, jr_08d_6b2d

    or b

jr_08d_6b4f:
    ld e, a
    add b

jr_08d_6b51:
    ld e, a
    nop

jr_08d_6b53:
    rst $18
    nop

jr_08d_6b55:
    rst $18
    jr nz, jr_08d_6b37

    jr nz, jr_08d_6b39

    jr nz, jr_08d_6b3b

    nop

jr_08d_6b5d:
    rst $38
    jr nc, @-$1f

    ld de, $10fe
    rst $38
    jr jr_08d_6b5d

    nop
    rst $38
    jr nc, jr_08d_6b49

    jr z, @-$27

    jr c, @-$27

    jr nc, jr_08d_6b4f

    jr nz, jr_08d_6b51

    jr nz, jr_08d_6b53

    jr nz, jr_08d_6b55

    jr nz, @-$1f

    jr z, jr_08d_6b51

    jr z, jr_08d_6b53

    ld [hl+], a
    db $dd
    ld a, $df
    ccf
    ret nc

    daa
    ret c

    dec a
    jp nc, $da05

    and [hl]
    ld e, c
    dec h
    jp c, Jump_08d_59a6

    xor d
    ld d, l
    ld [hl], l
    ld a, d
    ld h, [hl]
    ld e, c
    ld [hl], a
    ld c, b
    ld a, a
    ld b, b
    ld [hl], a
    ld c, b
    ld l, a
    ld d, b
    ld a, a
    ld b, b
    ld [hl], a
    ld c, b
    ld h, l
    ld e, d
    ld [hl], l
    ld c, d
    ld h, [hl]
    ld e, c
    ld [hl], a
    ld c, b
    ld h, [hl]
    ld e, c
    ld b, h
    ld a, e
    ld h, h
    ld e, e
    ld d, l
    ld l, d
    ld [hl], h
    ld c, e
    ld [hl], h
    ld c, e
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld e, b
    ld l, a
    ld d, b
    ld l, a
    ld d, b
    ld l, a
    ld e, b
    ld l, a
    ld e, h
    ld l, e
    ld h, c
    ld e, [hl]
    ld c, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld e, b
    ld l, a
    ld e, b
    ld l, a
    ld e, b
    ld l, a
    ld e, b
    ld l, a
    ld c, b
    ld a, a
    ld e, b
    ld l, a
    ld c, b
    ld a, a
    ld e, b
    ld l, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld l, d
    ld a, a
    ld c, d
    ld a, a
    ld c, d

jr_08d_6be3:
    ld a, a
    ld b, d
    ld a, a
    ld l, d
    ld a, a
    ld l, d
    ld a, a
    ld h, d
    ld a, a
    ld l, d
    ld a, a
    ld [bc], a
    ld a, a
    rra
    ld h, b
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$8807]
    ld a, a
    or c
    adc [hl]
    ld [hl], b
    adc a
    jr nc, jr_08d_6be3

    nop
    rst $28
    ld d, b
    xor a
    ld d, c
    xor a
    ld b, c
    cp a
    ld a, $cf
    ld [hl-], a
    call $c3bc
    ld [hl-], a
    call $8d72
    ld [$0995], a
    or $47
    cp b
    rla
    add sp, $23
    ret c

    sub l
    add sp, -$6b
    add sp, -$29
    xor b
    add a
    add sp, -$29
    xor b
    inc de
    add sp, -$29
    xor b
    rlca
    add sp, -$0f
    adc [hl]
    ld c, a
    cp b
    dec [hl]
    jp z, $eb94

    ld d, $e9
    and l
    jp c, $e31c

    call nz, $0dbb
    ld a, [c]
    ld c, l
    or d
    adc l
    ld a, [c]
    ld e, a
    and b
    add sp, -$69
    ld e, $e1
    sbc l
    ld [c], a
    inc de
    add sp, -$29
    xor b
    ld d, e
    xor b
    di
    adc h
    add e
    db $fc
    add a
    ld hl, sp+$04
    ld a, [$fa85]
    ld [bc], a
    db $fd
    add c
    cp $81
    cp $01
    cp $81

jr_08d_6c77:
    cp $01
    cp $90
    rst $28
    nop
    rst $38
    sbc b
    rst $28
    sub b
    rst $28
    xor h
    rst $38
    ld [hl], b
    rst $38
    ret nz

    cp a
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
    and b
    rst $18
    add d
    rst $38
    jr z, jr_08d_6c77

    add d
    rst $38
    adc b
    rst $38
    add c
    rst $38
    xor b
    rst $18
    add b
    rst $38
    jp nz, $8ebf

    rst $20
    cpl
    rst $00
    and a
    rst $08
    rrca
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    adc a
    rst $38
    ret z

    ccf
    db $10
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    rst $38
    rra
    rst $38
    ld bc, $01ff
    rst $38

jr_08d_6cd7:
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38

jr_08d_6ce7:
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_08d_6cef:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    sub b
    ld a, a
    call Call_000_1bb7
    rst $20
    ld e, d
    and a
    jr z, @-$27

    sbc b
    rst $00
    jr c, @-$37

    jr nc, jr_08d_6cd7

    ld l, b
    sub a
    xor d
    push de
    xor b
    rst $10
    jr z, jr_08d_6ce7

    dec h
    jp c, $c639

    jr c, @-$37

    jr z, jr_08d_6cef

    jr c, @-$37

    add hl, sp
    add $3c
    jp $926d


    add hl, sp
    add $30
    rst $08
    xor c
    ld d, [hl]
    sbc [hl]
    ld h, e
    cp b
    ld b, a
    adc l
    ld h, d
    xor h
    ld b, e
    ld [hl], $cb
    jr nz, @-$2f

    ld [hl], $cb
    inc d
    db $eb
    ld a, $c3
    ld [de], a
    rst $28
    ld h, [hl]
    db $db
    ld [de], a
    rst $28
    ld d, $eb
    ld [bc], a
    rst $28
    ld d, $eb
    ld [de], a
    rst $28
    ld d, $eb
    and [hl]
    ld e, e
    ld [hl-], a
    rst $08
    sub d
    ld l, a
    ld [hl+], a
    rst $18
    and d
    ld e, a
    ld [hl+], a
    rst $18
    ld h, d
    rst $18
    ld [hl], d
    rst $08
    ld [c], a
    ld e, a
    ld [c], a
    ld e, a
    jp nz, $c27f

    ld a, a
    sbc e
    ld h, a
    add d
    ld a, a
    ld [c], a
    ld e, a
    jp z, $827f

    ld a, a
    ld [bc], a
    rst $38
    jp nz, Jump_08d_427f

    rst $38
    ld b, d
    rst $38
    jp nz, $d27f

    ld a, a
    ld b, d
    rst $38
    ld a, [hl]
    rst $38
    pop bc
    ld a, a
    ld c, a
    di
    rst $00
    ld a, e
    ld d, h
    db $eb
    ld c, b
    rst $30
    ld h, l
    db $db
    ld c, h
    di
    dec b
    ei
    ld e, l
    db $e3
    ret


    ld [hl], a
    ld b, h
    ei
    ld b, c
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    ld b, d
    cp $78
    rst $38
    ld a, a
    ldh a, [$c1]
    cp $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    nop
    rst $38
    ret nz

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
    db $fc
    rst $38
    rlca
    rst $38
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
    add a
    ei
    add a
    ei
    add a
    ei
    add a
    ei
    add a
    ei
    add a
    ei
    add a
    ei
    add a
    ei
    add a
    ei
    add a
    ei
    add a
    ld hl, sp-$79
    ld hl, sp-$01
    nop
    ei
    rlca
    cp h
    ld a, a
    add b
    rst $38
    ld a, [bc]
    rst $38
    ld [hl-], a
    rst $38
    ld [c], a
    rst $38
    sbc d
    ld a, a
    ld [$00ff], sp
    rst $38
    inc bc
    cp $01
    cp $13
    cp $12
    rst $38
    ld [de], a
    rst $38
    jr @+$01

    db $10
    rst $38
    ld d, d
    cp a
    ld [de], a
    rst $38
    rla
    rst $38
    ld d, $ff
    rla
    rst $38
    scf
    rst $18
    ld [hl], h
    sbc a
    ld d, $ff
    inc h
    rst $18
    ld [de], a
    rst $38
    ld [hl], $df
    ld [hl], $df
    ld h, $df
    db $ec
    rra
    ld [hl], d

jr_08d_6e2f:
    sbc a
    inc b
    rst $18
    ld h, $df
    or d
    ld e, a
    and d
    ld e, a
    db $76
    sbc a
    inc c
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    cp a
    ld a, [hl+]
    rst $18
    inc h
    rst $18
    ld [hl+], a
    rst $18
    ld [de], a
    rst $38
    sub b
    ld a, a
    ld e, d
    cp a
    cpl
    rst $18
    jr nz, jr_08d_6e2f

    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    ret nz

    cp a
    inc b
    ei
    inc b
    ei
    db $10
    rst $28
    ld b, b
    cp a
    nop
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
    nop
    rst $38
    ld b, b
    rst $38
    inc c
    ei
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld e, b
    rst $38
    jr nc, @+$01

    jr jr_08d_6e9a

    jr nz, jr_08d_6ea4

    jr c, jr_08d_6ebe

    jr nc, jr_08d_6eb8

    jr c, jr_08d_6ec2

    jr jr_08d_6ea4

    ld e, d
    ld e, e
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    cp d
    cp e
    ld a, [hl-]
    dec sp
    ld a, [hl-]
    dec sp
    ld a, $3f

jr_08d_6e9a:
    ld a, $3f
    ld l, [hl]
    ld l, a
    ldh [rP1], a
    nop
    add b
    ld hl, sp+$07

jr_08d_6ea4:
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
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ld hl, sp-$01

jr_08d_6eb8:
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38

jr_08d_6ebe:
    nop
    rst $38
    nop
    rst $38

jr_08d_6ec2:
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    adc a
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
    cp a
    ld a, [hl]
    sbc a
    rst $38
    or c
    rst $38
    sub h
    rst $38
    and [hl]
    rst $38
    and d
    rst $38
    and d
    rst $38
    ld a, [$daff]
    rst $38
    db $db
    rst $38
    sbc d
    rst $38
    jp z, $e2ff

    rst $38
    and d
    rst $38
    or d
    rst $38
    or d
    rst $38
    sub d
    rst $38
    ld [c], a
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    sbc e
    rst $38
    ld e, [hl]
    rst $38
    dec hl
    rst $38
    ld c, d
    rst $38
    sbc e
    rst $38
    ld a, [de]
    rst $38
    ld a, [$5bff]
    rst $38
    ld a, [$baff]
    rst $38
    ld d, [hl]
    rst $38
    add a
    rst $38
    db $d3
    rst $38
    sbc e
    rst $38
    jp nz, $7fff

    rst $38
    ld a, [$42ff]
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ret nz

    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    ld b, d
    rst $38
    jp $c2ff


    rst $38
    ld b, d
    rst $38
    ld b, c
    rst $38
    pop bc
    ld a, a
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    pop bc
    ld a, a
    ld b, c
    rst $38
    pop bc
    ld a, a
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, a
    rst $38
    ld b, c
    rst $38
    ld bc, $05ff
    rst $38
    jp Jump_08d_437f


    rst $38
    pop hl
    ld a, a
    jp $e37f


    ld a, a
    di
    ld a, a
    ld bc, $41ff
    rst $38
    ld b, e
    ld b, e
    inc bc
    inc bc
    ld d, c
    ld d, c
    ld [hl], c
    ld [hl], c
    ld d, l
    ld d, l
    inc sp
    inc sp
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    add hl, bc
    pop af
    dec bc
    di
    dec de
    db $e3
    dec de
    db $e3
    ccf
    rst $00
    ld a, a
    add a
    ei
    inc bc
    rrca
    rrca
    nop
    rst $38
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
    nop
    rst $38
    cp $ff
    ld bc, $00ff
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    inc bc
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
    adc h
    ld [hl], e
    ld d, $e9
    add c
    ld hl, sp+$60
    reti


    ld [bc], a
    ld sp, hl
    ld b, d
    ld sp, hl
    ld b, $f9
    add h
    ld sp, hl
    ld d, $e9
    ld [bc], a
    db $fd
    sub b
    rst $28
    inc d
    db $eb
    ld b, $f9
    ld b, $f9
    ld [hl+], a
    ld sp, hl
    ld b, d
    ld sp, hl
    ld c, [hl]
    ld sp, hl
    ld b, $f9
    and [hl]
    ld sp, hl
    add d
    db $fd
    ld b, h
    ei
    inc b
    ei
    add h
    ei
    rlca
    ld hl, sp+$03
    db $fc
    ld c, e
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$02
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    add c
    cp $87
    ld hl, sp+$03
    db $fc
    ld b, e
    db $fc
    inc bc
    db $fc
    ld hl, $eafc
    db $fc
    ld [de], a
    db $ec
    add e
    db $fc
    ld b, b
    rst $38
    ld [bc], a
    db $fd
    add h
    ei
    push bc
    ld a, [$fa05]
    ld d, $f9
    dec c
    ld a, [c]
    inc bc
    db $fc
    add hl, bc
    cp $ac
    ei
    ld bc, $61fe
    cp $64
    ei
    ld h, h
    ei
    call nz, $65fb
    ld a, [$fe41]
    and b
    rst $38
    and d
    db $fd
    add d
    db $fd
    xor c
    cp $80
    rst $38
    add h
    ei
    ld b, h
    ei
    db $fc
    ei
    ld [hl], b
    rst $38
    inc [hl]
    ei
    inc h
    ei
    add hl, hl
    cp $71
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
    di
    nop
    pop hl
    nop
    ret nz

    add b
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
    add b
    ldh [$cc], a
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld c, $ff
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
    ccf
    rst $38
    rlca
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
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    add b
    cpl
    ret nc

    ld a, [hl+]
    pop de
    ld a, $c1
    cpl

jr_08d_70bd:
    ret nc

    ld l, $d0
    ccf
    ret nz

    ld l, $d0
    ld a, $c0
    dec a
    ret nz

    dec d
    ret nz

    inc h
    pop de
    inc l
    pop de
    sbc a
    ldh [rNR11], a
    db $e4
    dec h
    ret nc

    ld l, h
    sub c
    inc c
    pop de
    xor [hl]
    ld d, c
    xor h
    ld d, c
    add sp, $15
    adc h
    ld d, c

jr_08d_70e0:
    adc c
    ld d, h
    dec c
    ret nc

jr_08d_70e4:
    xor c
    ld d, h
    jr z, jr_08d_70bd

    ld l, b
    push de
    ld l, c
    call nc, $d429
    jp hl


    inc d
    and e
    inc d
    rst $20
    jr jr_08d_70e0

    inc d
    rst $20
    jr jr_08d_70e4

    inc d
    and d
    ld e, l
    ld l, d
    sub l
    ccf
    ret nz

    ld e, h
    and c
    call c, $ec21
    ld de, $954a
    ld b, d
    sbc l
    sub $09
    or $09
    or e
    ld c, h
    sub d
    ld l, l
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl-], a

jr_08d_7117:
    call $8f70
    ld [hl], h
    adc e
    ld [hl], c
    adc [hl]
    ld h, l
    sbc d
    pop af
    ld c, $60
    sbc a
    ld sp, $22ce
    db $dd
    ld [hl+], a
    db $dd
    add hl, hl
    sbc $20
    rst $18
    pop af
    adc [hl]
    pop af
    adc [hl]
    ld h, b
    sbc a
    ld h, b
    sbc a
    jr nz, jr_08d_7117

    daa
    sbc $20
    rst $18
    dec h
    jp c, $db24

    db $db
    rst $38
    db $db
    rst $38
    reti


    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    jp c, $daff

    rst $38
    ld e, d
    ld a, a
    ld a, d
    ld a, a
    dec sp
    ccf
    dec sp
    ccf
    dec de
    rra
    dec de
    rra
    inc de
    rra
    add hl, sp
    ccf
    ld sp, hl
    rst $38
    rlca
    ld sp, hl
    add a
    ld sp, hl
    jp $2dfd


    ei
    cp e
    db $fd
    dec e
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ld a, a
    rst $38
    ld bc, $c1ff
    rst $38
    rst $38
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
    rlca
    rst $38
    rst $30
    rst $38
    rrca
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$88ff], sp
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
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
    jr jr_08d_71e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08d_71f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08d_7203

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08d_7213

    ld [hl-], a

jr_08d_71e3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08d_7223

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_08d_71f3:
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

jr_08d_7203:
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

jr_08d_7213:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld e, h
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_08d_7223:
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
    ld e, h
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    ret


    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $c9
    ret


    ret


    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    ret


    ret


    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd

jr_08d_72b8:
    cp $ff
    nop
    ld bc, $c9c9
    ret


    ret


    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ret


    ret


    ret


    ret


    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_08d_72f5

    ld a, [de]
    ret


    ret


    ret


    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08d_7308

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08d_72b8

    ret


    nop
    nop
    nop
    nop
    nop

jr_08d_72f5:
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

jr_08d_7308:
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
    dec b
    dec b
    dec b
    nop
    nop
    inc b
    rlca
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
    ld bc, $0101
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
    nop
    nop
    nop
    dec b
    ld bc, $0401
    inc b
    rlca
    rlca
    inc b
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
    rlca
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
    rlca
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld b, $06
    rlca
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld b, $06
    rlca
    rlca
    inc b
    inc b
    dec b
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld b, $02
    rlca
    nop
    inc b
    rlca
    dec b
    ld bc, $0001
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld b, $02
    nop
    nop
    nop
    rlca
    inc b
    inc b
    ld bc, $0000
    nop
    nop
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
    inc b
    inc b
    nop
    nop
    nop

jr_08d_73d3:
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
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0004
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
    ld [$0008], sp
    nop
    nop
    nop
    ld [$0808], sp
    ld [$090d], sp
    add hl, bc
    ld [$0808], sp
    ld [$0008], sp
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0d0d], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    rrca
    ld a, [hl]
    ld l, a
    ld l, $6f
    ld h, $7f
    ld [hl+], a
    db $ec
    inc hl
    call nz, $a521
    jr nz, jr_08d_73d3

    ld hl, $219c
    sbc h
    ld hl, $219c
    jr jr_08d_746d

    cp h
    ld bc, $003d
    dec c
    jr nc, jr_08d_747c

    db $10
    xor a
    db $10
    rst $28
    db $10
    push af
    db $10
    rst $28
    db $10
    rst $28
    db $10
    adc $10
    adc $10
    ld b, d
    jr @-$38

    jr @-$34

    db $10
    sub d
    ld c, b
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ld [hl], b

jr_08d_746d:
    adc b
    ld a, [c]
    ld [$08f2], sp
    ldh a, [$0a]
    or c
    ld c, d
    sub a
    ld l, b
    or e
    ld c, b
    or e
    ld c, b

jr_08d_747c:
    sub a
    ld l, b
    ld d, a
    xor b
    rst $10
    jr z, @-$1f

    jr nz, jr_08d_747c

    ld [$2cd3], sp
    ld a, [$fb05]

Call_08d_748b:
    inc b
    cp [hl]
    ld b, h
    and a
    ld d, h
    cp e
    ld b, h
    sbc a
    ld h, h
    cp a
    ld b, h
    cp e
    ld b, h
    dec sp
    call nz, $c639
    ld hl, $45ce
    xor d
    add hl, de
    and $79
    add [hl]
    add hl, de
    and $98
    rst $20
    adc l
    ld a, [c]
    sbc a
    ld [c], a
    inc c
    di
    adc a
    ld a, [c]
    adc l
    ld a, [c]
    dec e
    ld [c], a
    dec d
    ld [$e25d], a
    dec d
    ld [$ca75], a
    db $76
    ret


    ld d, [hl]
    jp hl


    ld d, [hl]
    jp hl


    ld h, [hl]
    reti


    ld b, [hl]
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    ld b, e
    db $fd
    ld d, [hl]
    jp hl


    inc hl
    db $fd
    ld b, d
    db $fd
    jr nz, @+$01

    nop
    rst $38
    inc hl
    db $fd
    jr nz, @+$01

    ld h, h
    ei
    db $e4
    ei
    ld [c], a
    db $fd
    push hl
    ld a, [$fde2]
    add b
    rst $38
    ld h, b
    cp a
    ld h, b
    cp a
    ld d, b
    cp a
    db $10
    rst $38
    ld d, b
    cp a
    db $10
    rst $38
    jr nc, @-$1f

    db $10
    rst $38
    ld de, $3bff
    rst $18
    rra
    rst $38
    rra
    rst $38
    ld c, $fe
    ld a, $de
    ccf
    rst $18

jr_08d_7504:
    ld a, l
    sbc a
    ld c, h
    cp a
    ld c, h
    cp a
    dec c
    cp $0c
    rst $38
    dec c
    cp $0c
    rst $38

jr_08d_7512:
    inc c
    rst $38

jr_08d_7514:
    inc c
    rst $38
    ld l, $dd
    inc a
    rst $08
    dec a
    adc $3c
    rst $08
    inc [hl]
    rst $08
    inc d
    rst $28
    or [hl]
    rst $08
    inc d
    rst $28
    ld d, $ef
    ld [hl], $cf

jr_08d_752a:
    ld [hl], $cf
    ld [hl], $cf
    ld [bc], a
    rst $28
    add b
    jr nz, jr_08d_7547

    jr nz, @-$79

    jr nz, @+$17

    jr nz, jr_08d_7550

    jr nz, @+$05

    jr nc, @+$11

    jr nc, jr_08d_7555

    jr nz, jr_08d_7567

    db $10
    ld b, $30
    ld [hl+], a
    db $10
    ld a, [hl+]

jr_08d_7547:
    db $10
    ld [hl], d
    db $10
    ld e, d
    jr nc, jr_08d_75bf

    db $10
    ld [hl], d
    db $10

jr_08d_7550:
    ld a, [hl-]
    ld d, b
    ld h, d
    jr jr_08d_75bd

jr_08d_7555:
    ld [de], a
    xor $10
    rst $28
    db $10
    rst $20

jr_08d_755b:
    jr jr_08d_7504

    jr jr_08d_7586

    sbc b
    push hl
    jr jr_08d_752a

    jr jr_08d_75b0

    sbc b
    add l

jr_08d_7567:
    jr jr_08d_7512

    jr jr_08d_7514

    jr jr_08d_755b

    add hl, de
    ld l, [hl]
    add hl, de
    ld a, h
    add hl, bc
    ld [hl], a
    ld [$0877], sp
    ld [hl], d
    dec c
    ld b, [hl]
    add hl, hl
    db $76
    add hl, bc
    ld h, e
    inc c
    jr nc, jr_08d_75cd

    ld [hl], c
    inc c
    ld bc, $514c
    inc c

jr_08d_7586:
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld a, [$ff04]
    inc b
    ld c, e
    inc [hl]
    dec bc
    inc [hl]
    ld l, c
    ld d, $bb
    inc b
    sbc c
    ld h, $99
    ld h, $99
    ld h, $99
    ld h, $90
    cpl
    add h
    dec hl
    inc d
    xor e
    ld d, $ab
    call z, $6e33
    sub e
    db $fc
    inc bc
    db $ec
    inc de
    db $ed
    ld [de], a

jr_08d_75b0:
    call $ed12
    ld [de], a
    call z, $cc13
    inc de
    ld b, b
    rla
    ret z

    rla
    ret z

jr_08d_75bd:
    rla
    ld l, b

jr_08d_75bf:
    rla
    db $ec
    inc de
    jr z, jr_08d_75db

    jr z, jr_08d_75dd

    ld h, h
    dec de
    ld [hl], b
    rrca
    ld l, c
    rla
    ld [hl], e

jr_08d_75cd:
    dec c
    ldh a, [rIF]
    sub $29
    push de
    dec hl
    or h
    dec bc
    call nc, Call_000_180b
    add a
    db $10

jr_08d_75db:
    adc a
    db $10

jr_08d_75dd:
    adc a
    ld b, b
    adc a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh [$9f], a
    ldh [$9f], a
    ret nz

    cp a
    ret z

    and a
    ret z

    and a
    and $ad
    jr nz, @-$0f

    nop
    rst $00
    ld [hl], b
    pop af
    db $fc
    db $fc
    add [hl]
    cp $03
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    ld h, e
    sbc a
    sbc a
    cp $ff
    ld a, b
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    jr c, @+$01

    cp b
    ld a, e
    ld a, [hl-]
    ei
    ld a, [hl]
    cp e
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld e, h
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc a
    db $fd
    inc e
    rst $38
    dec e
    db $fd
    inc e
    rst $38
    di
    ld [$4812], sp
    ld [hl], a
    ld [$102d], sp
    cp e
    nop
    db $ec
    ld [de], a
    inc a
    ld b, d
    ld a, a
    nop
    ld l, c
    nop
    cp $00
    ld d, h
    ld a, [hl+]

jr_08d_7646:
    ld e, h
    ld [hl+], a
    ld a, a
    nop
    call z, Call_000_0620
    jr z, jr_08d_7651

    inc l
    ld h, d

jr_08d_7651:
    inc c
    ld e, d
    inc h
    ld e, b
    inc h
    ld h, c
    inc c
    ld h, h
    dec c
    inc a
    dec b
    ld a, a
    nop
    ld a, c
    nop
    ld h, b
    add hl, bc
    db $e4
    ld bc, $005b
    ld h, c
    db $10
    ld e, l
    jr nz, jr_08d_76be

    jr nz, @+$73

    nop
    ld l, l
    db $10
    dec d
    ld b, b
    ld [hl], h
    ld bc, $10a3
    inc hl
    db $10
    ld b, b
    ld sp, $3005
    ld c, l
    jr nc, jr_08d_76e4

    db $10
    ld a, h
    ld bc, $308e
    add sp, $14
    push hl
    jr jr_08d_7646

    nop
    sbc h
    ld hl, $2893
    cp $00
    cpl
    sub b
    dec d
    xor b
    ld [de], a
    xor c
    inc d
    xor d
    or [hl]
    ld [$aa55], sp
    dec b
    cp d
    ld d, e
    xor b
    ld a, [c]
    inc c
    call nz, Call_08d_463a
    cp b
    or a
    ld c, b
    dec hl
    call nc, Call_08d_748b
    and h
    ld e, d
    xor d
    ld d, h
    inc sp
    call z, $d629
    and c
    ld e, [hl]
    ld a, [hl+]
    call c, $de29
    inc hl
    call c, $dc03

jr_08d_76be:
    ld hl, $28de
    rst $10
    dec hl
    call nc, $dc23
    or d
    ld c, l
    ld [de], a
    db $ed
    add d
    ld a, l
    ld [de], a
    db $ed
    ld b, d
    db $fd
    pop bc
    cp $c4
    ei
    adc h
    di
    ld d, h
    xor e
    ret nc

jr_08d_76d9:
    cpl
    add l
    ld a, [hl-]
    call nz, $f53b
    ld a, [bc]
    sub $2d
    ld c, c
    or [hl]

jr_08d_76e4:
    ld b, h
    cp e
    ld [hl], d
    xor l
    ld h, h
    sbc a
    ld h, h
    cp a
    ld h, h
    cp e
    ld h, b
    cp a
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    ld a, a
    dec bc
    ld a, a
    xor a
    rst $38
    adc h
    rst $38
    db $e3
    sbc l
    db $eb
    sbc a
    ld l, d
    sbc a
    ld a, [bc]
    rst $18
    jr c, jr_08d_76d9

    ld a, [hl-]
    rst $08
    rra
    adc $3e
    call $df12
    ld a, d
    rst $28
    ld a, [hl-]
    rst $28
    ld l, e
    rst $38
    ld sp, $3def
    rst $28
    rla
    db $ed
    add hl, de
    rst $28
    ld de, $17ef
    db $eb
    dec d
    db $eb
    inc de
    rst $28
    inc bc
    rst $38
    rla
    rst $28
    rla
    rst $28
    ld e, a
    xor a
    ld a, [hl+]
    ld d, l
    ld h, b
    rrca
    dec hl
    ld b, h
    sub b
    ld l, a
    or c
    ld c, [hl]
    ld a, [hl]
    dec b
    ld a, b
    rlca
    ld e, h
    daa
    ld de, $916e
    ld l, [hl]
    dec c
    db $76
    ld e, c
    ld h, $49
    ld h, $28
    ld d, a
    and c
    ld e, [hl]
    ld l, c
    ld d, $51
    ld l, $90
    cpl
    ret z

    scf
    and b
    ld e, a
    ld l, b
    rla
    ld h, b
    rra
    or d
    rrca
    adc h
    inc sp
    ld [$2037], sp
    rra
    ld d, h
    dec hl
    and h
    dec de
    or b
    rla
    adc b
    scf
    cp b
    rlca
    db $fc
    inc bc
    add $0b
    ld e, h
    inc hl
    call z, $9033
    cpl
    jp nc, $ec2d

    inc bc
    ld a, b
    add a
    call nz, $9833
    daa
    ld hl, sp+$07
    ld hl, sp+$07
    ld e, b
    and a
    ld [$a4b7], sp
    dec de
    add b
    rra
    di
    inc b
    ld d, d
    and l
    ld b, b
    cp a
    ld h, c
    sbc a
    ld b, h
    sbc e
    adc b
    ld d, a
    ld [$8af7], sp
    ld [hl], l
    ret nz

    ccf
    ld d, a
    rst $38
    ld d, e
    rst $38
    and e
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, [hl]
    rst $38
    ld l, d
    cp $5e
    cp $fc
    db $fc
    ld e, e
    ei
    xor e
    ei
    db $e4
    db $fc
    ld h, [hl]
    cp $7a
    cp $5e
    cp $4e
    cp $5a
    cp $da
    cp $de
    cp $5e
    cp $7e
    sbc $5e
    cp $5e
    cp $7e
    cp $94
    ld l, a
    ldh a, [rIF]
    and e
    ld e, [hl]
    ld h, b
    ld e, a
    add b
    ld a, a
    ld de, $b4ef
    ld c, a
    ld a, [bc]
    rst $30
    sub b
    ld a, a
    ld a, [hl-]
    rst $38
    dec de
    rst $38
    ld a, d
    rst $38
    cp d
    rst $38
    sbc [hl]
    rst $38
    cp h
    cp $dc
    cp $ff
    rst $38
    cp $ff
    db $fc
    cp $f8
    db $fc
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ld hl, sp-$10
    ld hl, sp-$20
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    rst $38
    ldh [rIE], a
    ldh a, [$fe]
    pop af
    ldh a, [rIE]
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    db $fc
    ret nz

    ld hl, sp-$40
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$80]

jr_08d_7821:
    ldh [rP1], a
    ret nz

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

    or b
    ld e, a
    and h
    ld e, e
    ld h, h
    sbc e
    ret nz

    ccf
    ret nz

    ccf
    ld c, l
    cp d
    add c
    ld a, [hl]
    add b
    ld a, a
    jr nz, jr_08d_7821

    add h
    ld a, e
    ld c, b
    ccf
    db $e4
    dec de
    and h
    ld e, e
    xor b
    ld e, a
    call z, Call_08d_4c3b
    dec sp
    cp d
    ld c, l
    cp b
    ld c, a
    ld hl, sp+$0f
    and b
    ld e, a
    adc h
    ld a, e
    ret nz

    ccf
    adc a
    ld a, b
    sub b
    ld l, a
    sbc d
    ld l, a
    ld [de], a
    db $ed
    sub e
    ld l, h
    add d
    ld a, l
    ld [hl+], a
    ld e, l
    ld d, c
    ld l, $41
    ld a, $d2
    dec l
    ld b, e
    inc a
    add c
    ld a, [hl]
    pop de
    ld l, $23
    call c, Call_000_24df
    ld a, e
    add h
    inc hl
    call c, $fc07
    inc bc
    db $fc
    ld e, a
    and h
    ld c, a
    or h
    rlca
    db $fc
    ld b, a
    cp h
    ld b, a
    cp h
    ld b, [hl]
    cp l
    ld b, [hl]
    cp l
    rlca
    db $fc
    ret nz

    cp a
    ld b, h
    cp a
    ld hl, $26de
    db $dd
    and b
    rst $18
    inc b
    rst $38
    call nc, Call_08d_48ff
    or a
    ld [bc], a
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $30
    nop
    rst $38
    jp z, Jump_000_08b7

    rst $30
    rlca
    ld a, [c]
    dec hl
    ld d, [hl]
    inc c
    or e
    ld a, [bc]
    or a
    ld [de], a
    ld l, a
    ld c, $f3
    ld a, [bc]
    rst $30
    adc d
    ld [hl], a
    ld b, d
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    cp $00
    ld hl, sp+$40
    pop bc
    nop
    rlca
    nop
    scf
    ld b, c
    ld [hl], a
    ld b, c
    ld [hl], a
    ld hl, $4177
    ld [hl], a
    ld h, e
    ld [hl], a
    ld h, e
    ld a, e
    ld l, d
    ld a, e
    ld l, e
    ld a, e
    ld [hl], e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld [hl], b
    ld a, a
    nop
    ld a, b
    nop
    ret nz

    nop
    add b
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
    nop
    nop
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
    ld a, $01
    ld a, b
    rlca
    ldh [$1f], a
    add b

jr_08d_790d:
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rra
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
    nop
    nop
    nop
    ld bc, $0700
    ld bc, $061e
    ld bc, $18ff
    rst $20
    ld [bc], a
    db $fd
    ld [hl+], a
    db $fd
    ld [bc], a
    db $fd
    nop

jr_08d_793b:
    rst $38
    nop
    rst $38
    ld b, b

jr_08d_793f:
    cp a
    nop

jr_08d_7941:
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    ld [hl], b
    xor a
    ld [hl], d
    xor l
    jr nc, jr_08d_793b

    ld [hl+], a
    db $ed
    jr nz, jr_08d_793f

    jr nz, jr_08d_7941

    ld sp, $b0ee
    ld l, a
    ld [hl], c
    xor [hl]
    ld [hl], b
    xor a
    ld [hl], b
    xor a
    db $10
    rst $28
    jr nc, @-$0f

    ldh [$f7], a
    ld hl, sp+$27
    add sp, $37
    ld [$c877], sp
    scf
    ld hl, sp+$27
    ld b, d
    dec [hl]
    jp z, $c935

    ld [hl], $c2
    dec a
    ld d, d
    cp a
    ret z

    scf
    adc $30
    sbc $20
    sub [hl]
    jr z, jr_08d_790d

    jr nc, jr_08d_79eb

    sub b
    and d
    db $10
    db $e4
    db $10
    ld h, e
    sub h
    jp nz, Jump_08d_4534

    or b
    call nz, $f630
    db $10
    ld l, a
    db $10
    cp $10
    rst $38
    db $10
    di
    db $10
    ld h, e
    sub b
    ld [hl], c
    sub b
    ld b, a
    or b
    ld d, a
    or b
    or e
    ld d, b
    dec bc
    ldh a, [$1f]
    ldh a, [rVBK]
    or b
    add a
    ld a, b
    cp a
    ld d, b
    ret nc

    dec a
    rlca
    ld hl, sp-$04
    rst $38
    db $fd
    rst $38
    cp $ff
    ld sp, hl
    rst $38

jr_08d_79b8:
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fc

jr_08d_79bf:
    cp $00

jr_08d_79c1:
    ldh a, [rP1]
    add c
    ld bc, $080f
    ld l, a
    ld [$09ef], sp
    rst $28
    ld c, b
    rst $28
    jr z, jr_08d_79bf

    jr z, jr_08d_79c1

    nop
    rst $28
    ld bc, $abef
    rst $28
    and a
    rst $28
    xor a
    rst $28
    rst $00
    rst $28
    db $eb
    rst $28
    rst $28
    rst $28
    db $ec
    rst $28
    jp Jump_000_00fc


    ret nz

    nop
    nop
    nop

jr_08d_79eb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $01
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
    ld bc, $3efe
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
    ld bc, $0700
    ld bc, $061e
    ld a, h
    inc e
    db $e4
    ld h, h
    add h
    add h
    inc b
    inc b
    and c
    inc b
    jr nz, jr_08d_79b8

    and b
    inc b
    ldh [rDIV], a
    ldh a, [rDIV]
    ldh [rDIV], a
    ldh a, [rDIV]
    call nz, $9404
    inc b
    add b
    inc b
    ld [hl+], a
    add h
    add b
    inc b
    ld b, b
    inc b
    ld d, b
    inc b
    add d
    inc b
    sub d
    inc b
    and d
    inc b
    add d
    inc b
    ret nz

    inc b
    ld a, [hl+]
    add h
    add hl, hl
    add h
    nop
    adc h
    ld a, [bc]
    add h
    ld a, [hl+]
    add h
    ld [$0986], sp
    add [hl]
    add hl, bc
    add [hl]
    ld [$a886], sp
    add [hl]
    sbc b
    add [hl]
    adc b
    add [hl]
    xor h
    add d
    ld c, b
    and [hl]
    jp hl


    add [hl]
    and b
    adc [hl]
    xor c
    add [hl]
    dec hl
    add [hl]
    ld bc, $83ae
    ld l, $23
    adc [hl]
    inc hl
    adc [hl]
    sub e
    ld l, $83
    ld l, $8b
    ld h, $8b
    ld h, $bf
    ld [bc], a
    cp a
    ld b, d
    xor e
    ld d, [hl]
    adc [hl]
    ld d, e
    xor [hl]

jr_08d_7a93:
    ld d, e
    ld a, $43
    ccf
    ld b, d
    inc a
    ld b, e
    ld [hl], $4b
    ld [hl], $4b
    db $10
    ld l, a
    or a
    ld c, d
    and l
    ld e, e
    add c
    ld a, [hl]
    sub c
    ld l, [hl]
    inc de
    xor $d1
    ld l, [hl]
    add hl, bc
    db $76
    pop bc
    ld a, [hl]
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    ldh [rP1], a
    nop
    add hl, bc
    dec b
    nop
    cp c
    ld [bc], a
    cp b
    nop
    or [hl]
    nop
    or [hl]
    inc b
    or e
    ld bc, $29af
    adc a
    nop
    sbc a
    ld bc, $009f
    sbc a
    ld bc, $24af
    xor a
    jr nc, jr_08d_7a93

    or [hl]
    or [hl]
    or [hl]
    or [hl]
    cp c
    cp c
    nop
    cp c
    rst $38
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld bc, $f000
    rrca
    nop
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
    ldh [$f0], a
    nop
    nop
    nop
    nop
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
    rrca
    inc bc
    inc a
    inc c
    ldh a, [$30]
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
    ld l, $10
    ld l, $10
    jr z, @+$12

    ld a, [hl-]
    nop
    ld [hl-], a
    nop
    jr nc, jr_08d_7b2c

jr_08d_7b2c:
    jr nz, @+$12

    stop
    stop
    nop
    stop
    stop
    stop
    stop
    db $10
    ret nz

    stop
    stop
    stop
    db $10
    add hl, bc
    stop
    db $10
    ld a, [bc]
    db $10
    inc c
    db $10
    inc c
    db $10
    adc b
    db $10
    adc d
    db $10
    adc h
    db $10
    and [hl]
    db $10
    and h
    db $10
    and b
    db $10
    add d
    db $10
    ld b, c
    db $10
    inc bc
    db $10
    adc a
    db $10
    add h
    ld de, $13a1
    ld b, e
    rla
    add a
    rra
    rst $08
    rra
    ld e, a
    sbc a
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    ld c, a
    rra
    rst $28
    rra
    xor a
    rra
    ccf
    rrca
    rst $38
    rrca
    ld a, a
    adc a
    rrca
    rst $18
    ccf
    rst $08
    cpl
    rst $18
    cpl
    rst $18
    xor a
    ld e, a
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $28
    rra
    rst $28
    rst $38
    rst $38
    rst $08
    ccf
    ccf
    rrca
    ld a, a
    rrca
    rst $38
    rrca
    ld a, a
    rrca
    rra
    rrca
    rst $08
    ccf
    rst $08
    ccf
    ld c, a
    cp a
    ld c, a
    cp a
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rlca
    nop
    nop
    ret nc

    nop
    sbc [hl]
    ld c, a
    sbc a
    ld c, a
    sbc a
    ld c, a
    rst $18
    rrca
    ld e, a
    rrca
    rrca
    ld e, a
    ld c, a
    rra
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    cp a
    ld e, a
    cp a
    ld e, a
    cpl
    rst $18
    cpl
    rst $18
    rrca
    rst $18
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    ldh [rP1], a
    db $fc
    nop
    rra
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld a, a
    rrca
    pop af
    ld [hl], c
    add c
    add c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0639
    xor e
    inc b
    adc e
    inc b
    and d
    dec c
    ld l, d
    add l
    dec hl
    add h
    ei
    inc b
    add hl, de
    add [hl]
    ld a, [$3205]
    adc l
    ld [hl-], a
    adc l
    and d
    dec c
    cp d
    dec b
    and d
    dec c
    ld a, [hl-]
    add l
    ld [hl-], a
    adc l
    sbc d
    dec b
    ld [de], a
    adc l
    ld a, [hl-]
    add l
    ld l, $85
    ret


    ld b, $ab
    inc b
    sub e
    inc c
    dec sp
    inc b
    jr c, jr_08d_7c56

    ccf
    rlca
    dec hl
    inc d

jr_08d_7c56:
    ld e, e
    inc h
    ld a, e
    inc b
    dec sp
    inc b
    inc sp
    inc b
    xor e
    inc b
    inc c
    rst $38
    ld a, a
    add b
    add b
    rst $38
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    db $fc
    add c
    db $fc
    add c
    db $ec
    add c
    db $ec
    add c
    xor h
    add c
    xor h
    add c
    xor h
    add c
    adc h
    add c
    add b
    adc a
    add b
    adc a
    adc a
    adc a
    add l
    adc d
    add l
    adc d
    add l
    adc d
    add l
    adc d
    add l
    adc d
    add l
    adc d
    add l
    adc d
    add l
    adc d
    add l
    adc d
    push bc
    adc d
    ret nz

    add b
    rst $08
    add b
    rst $08
    adc a
    rst $28
    add b
    rst $28
    add b
    db $ed
    add d
    push af
    adc d
    push af
    adc d
    or l
    jp z, $ceb1

    or e
    call z, $ee91
    nop
    ld a, a
    rlca
    nop
    nop
    ld bc, $7040
    ld a, h
    ld b, b
    ld b, b
    ld a, l
    ld a, l
    ld a, l
    ld b, b
    ld a, l
    ld b, b
    ld a, l
    ld b, b
    ld a, l
    ld b, b
    ld a, l
    ld b, b
    ld a, l
    ld b, b
    ld a, l
    ld b, b
    ld a, l
    ld a, l
    ld b, b
    ld b, b
    ld a, l
    ld a, l
    ld a, l
    ld h, b
    ld a, a
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
    rlca
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
    ld bc, $0fff
    rst $38
    ldh a, [$1f]
    nop
    ld a, a
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add [hl]
    ld l, c
    ld b, l
    xor c
    add h
    ld l, c
    inc c
    db $e3
    ld e, d
    and l
    sbc $21
    ld a, [c]
    dec l
    ld [hl], d
    xor l
    jp nc, $f22d

    dec l
    ld b, b
    cp a
    ld a, [c]
    dec l
    nop
    rst $28
    db $e3
    inc l
    inc bc
    xor h
    ld h, l
    xor d
    and d
    ld l, l
    ld h, $e9
    ld h, c
    xor [hl]
    ld h, e
    xor h
    rst $20
    jr z, @-$18

    add hl, hl
    and d
    dec l
    ld [c], a
    dec l
    or $29
    ld l, b
    rst $20
    xor b
    ld h, a
    ld l, c
    ld h, $7a
    dec h
    ld l, b
    daa
    ld l, d
    dec h
    ld l, d
    dec h
    daa
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
    db $db
    nop
    db $db
    nop
    db $db
    nop
    db $db
    nop
    db $db
    inc b
    db $db
    inc b
    db $db
    inc b
    db $db
    inc b
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    ld e, a
    ld hl, sp+$5f
    rst $38
    ld e, a
    ld hl, sp+$58
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    ld e, d
    db $fd
    nop
    nop
    rst $18
    nop
    rst $18
    rst $18
    dec c
    add d
    ld [hl], l
    ld [bc], a
    ld [hl], l
    ld [bc], a
    dec c
    add d
    ld e, l
    add d
    ld e, l
    add d
    ld e, l
    add d
    ld e, l
    add d
    ld e, l
    add d
    ld e, l
    add d
    rst $18
    nop
    nop
    rst $18
    rra
    nop
    nop
    rra
    inc bc
    rst $18
    call c, Call_000_00de
    rst $18
    nop
    rst $18
    nop
    rst $18
    ld e, a
    rst $18
    nop
    rst $18
    nop
    rst $18
    rra
    ret nz

    ret nz

    rra
    rra
    rst $18
    rst $18
    rst $18
    rra
    rst $38
    adc a
    ld a, a
    ldh [$1f], a
    nop
    nop
    ld b, $00
    rrca
    nop
    ld a, a
    nop
    cp $00
    db $fc
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
    rra
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    nop

jr_08d_7dfa:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    jr nz, jr_08d_7dfa

    jr nz, @+$01

    ld d, b
    rst $38
    ld d, b
    rst $30
    ret nc

    rst $28
    adc b
    db $db
    adc b
    scf
    inc b
    dec d
    inc b
    dec e
    inc b
    dec de
    ld [bc], a
    ld c, $02
    jr nz, @+$0a

    ld h, b
    ld [$0860], sp
    ld [$0000], sp
    ld [$0800], sp
    nop
    ld [$0840], sp
    ld b, b
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0820], sp
    nop
    ld [$0800], sp
    db $10
    ld [$0800], sp
    db $10
    ld [$0810], sp
    db $10
    ld [$0812], sp
    db $10
    ld [$0815], sp
    ld [bc], a
    jr jr_08d_7e9b

    jr jr_08d_7ecf

    ld [$0839], sp
    ld [$c0ff], sp
    ccf
    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    add hl, sp
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    add hl, sp
    inc b
    add hl, sp
    inc b
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld b, b
    cp a
    ld b, c
    cp [hl]
    ld b, l
    cp d
    ld b, l
    cp d
    nop
    nop
    rst $38
    nop
    rst $38

jr_08d_7e9b:
    rst $38
    db $eb
    inc d
    db $eb
    inc d
    ld b, e
    inc d
    ld b, c
    inc d
    ld b, c
    inc d
    ld b, c
    inc d
    ld b, c
    inc d
    ld b, c
    inc d
    ld b, c
    inc d
    ld b, c
    inc d
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $30
    nop
    rrca
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    rlca
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38

jr_08d_7ecf:
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
    ccf
    ret nz

    rra
    nop
    rrca
    ld b, $01
    ld [bc], a
    ld bc, $0003
    ld bc, $0300
    nop
    rra
    nop
    di
    inc c
    add c
    ld a, [hl]
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$78
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
    rst $38
    rst $38
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$7c71], sp
    cp c
    ld b, h
    cp c
    ld b, b
    dec a
    ld b, b
    dec e
    ld b, b
    inc l
    ld b, b
    cpl
    ld b, b
    ld c, a
    nop
    inc bc
    ld b, h
    inc bc
    ld b, h
    inc bc
    ld b, h
    inc bc
    ld b, h
    inc bc
    ld b, h
    inc b
    ld b, c
    push bc
    nop
    ld b, l
    nop
    ld b, l
    nop
    rst $00
    nop
    ld b, l
    nop
    ld c, $40
    add hl, bc
    ld b, h
    ld d, e
    inc b
    ld d, [hl]
    nop
    scf
    ld b, b
    and l
    ld b, b
    sub e
    ld b, b
    cp e
    ld b, b
    dec a
    ld b, b
    sub a
    ld b, b
    add a
    ld b, b
    sbc c
    ld b, b
    ld bc, $0040
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $ff
    cp $ff
    cp $ff
    nop
    rst $38
    ld d, h
    inc bc
    ld d, h
    inc bc
    ld d, h
    inc bc
    ld d, h
    inc bc
    ld d, h
    inc bc
    ld d, h
    inc bc
    ld d, h
    inc bc
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $03
    db $fc
    dec bc
    db $f4
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    dec bc
    db $f4
    inc bc
    db $fc
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $f4
    nop
    nop
    cp $00
    rst $38
    cp $ef
    ld [de], a
    rst $28
    ld [de], a
    rst $20
    ld [de], a
    ld h, a
    ld [de], a
    ld h, a
    ld [de], a
    ld h, a
    ld [de], a
    ld h, a
    ld [de], a
    ld h, a
    ld [de], a
    ld h, [hl]
    ld [de], a
    ld h, [hl]
    ld [de], a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
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
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
    ccf
    nop
    cp a
    nop
    sbc a
    nop
    rrca
    nop
    rlca
    add b
    inc bc
    ret nz

    ld bc, $01c0
    ldh [rP1], a
