SECTION "ROM Bank $071", ROMX[$4000], BANK[$71]

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
    and [hl]
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
    and [hl]
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
    jr jr_071_40a5

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    and [hl]
    jr nz, jr_071_40b6

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

jr_071_40a5:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $a6
    scf
    jr c, jr_071_40e7

    ld a, [hl-]
    dec sp
    ld bc, $0101
    ld bc, $0101

jr_071_40b6:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0107
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0005
    rlca
    ld bc, $0101

jr_071_40e7:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0005
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    nop
    nop
    dec b
    dec b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0005
    nop
    dec b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
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
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    add hl, bc
    add hl, bc
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
    inc bc
    rst $38
    pop bc
    ccf
    ld b, c
    cp a
    ld [bc], a
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
    rst $28
    rst $38
    or l
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    pop hl
    rra
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    push af
    inc bc
    cp d
    ld b, a
    ld a, [hl-]
    rst $00
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld c, [hl]
    rst $38
    sbc $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    add b
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, $ff
    inc e
    rst $38
    jr c, @+$01

    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    scf
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    ld a, [hl+]
    db $dd
    inc h
    db $db
    ld [hl], h
    adc e
    db $fc
    inc bc
    ld hl, sp+$07
    add sp, $17
    adc $31
    ld b, h
    cp e
    and [hl]
    reti


    jp nz, $c2fd

    db $fd
    ld [c], a
    db $fd
    add sp, -$01
    ld h, l
    cp $ed
    cp $fd
    cp $dd
    cp $d1
    cp $18
    rst $38
    inc c
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    add hl, sp
    rst $38
    ld a, [hl-]
    rst $38
    ld h, $ff
    ld [hl], d
    rst $38
    db $fc
    rst $38
    cp $fd
    rst $38
    db $fc
    rst $38
    db $fc
    call $c9fe
    cp $ca
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a

jr_071_42e7:
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    jr z, jr_071_42e7

    ld c, h
    or e
    ld b, b
    cp a
    nop
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    inc sp
    call z, $c03f
    ccf
    ret nz

    ccf
    ret nz

    rlca
    ld hl, sp+$27
    ret c

    ld h, $d9
    ld e, [hl]
    and c
    ld a, a
    add b
    ld a, a
    add b
    dec a
    ret nz

    cp l
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    inc b
    ei
    ld e, $e1
    inc a
    jp $a758


    ldh [$1f], a
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc de
    db $fc

Jump_071_433c:
    ld [hl-], a
    db $fd
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ret nc

    rst $38
    db $10
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    cp $c0
    rst $38
    add c
    cp $02
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld [hl+], a
    rst $38
    ld h, e
    rst $38
    db $e3
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, b
    cp a
    ld [de], a
    rst $28
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld b, h
    rst $38
    inc c

jr_071_4381:
    rst $38
    nop
    rst $38
    add hl, de
    cp $1b
    db $fc
    jr @+$01

    ld e, $fd
    cp l
    ld a, [hl]
    dec a
    cp $0e
    rst $38
    ld c, $ff
    rlca
    rst $38
    ld bc, $04ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    adc b
    ld [hl], a
    jr nz, jr_071_4381

    add e
    ld a, h
    ld bc, $01fe
    rst $38
    inc bc
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
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
    rst $30
    rst $38
    rst $38

jr_071_43cb:
    rst $38
    ld h, a
    rst $38
    and $7f
    cp a
    ld a, [hl]
    ld a, a
    cp h
    add hl, sp
    cp $f1
    cp $c0
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    or b
    rst $38
    sub b
    rst $38
    add b
    rst $38
    ld [$07ff], sp
    cp $04
    rst $38
    ld b, $ff
    cpl
    cp $0d
    cp $28
    add b
    pop af
    nop
    ret z

    jr nc, jr_071_43cb

    ld [$847b], sp
    ld l, b
    add a
    cp a
    ld b, b
    cp a
    ld b, b
    ld e, $e0
    rra
    ldh [$8b], a
    ld [hl], h
    jp nz, Jump_000_0e3c

    ldh a, [rDIV]
    ld hl, sp-$5c
    ld e, b
    db $fc
    nop
    cp a
    ld b, a
    rst $38
    rlca
    rst $38
    inc bc

jr_071_4416:
    rst $38
    ld [hl+], a
    rst $38
    inc [hl]
    rst $38
    jr z, jr_071_4416

    rla
    ei
    inc b
    rlca
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    ld b, $f9
    ld c, $f1
    ld e, $e1
    sbc h
    ld h, e
    sbc h
    ld h, e
    rst $38
    nop
    cp l
    ld b, b
    rst $30
    ld [$f00f], sp
    adc b
    rst $30
    add [hl]
    rst $38
    ld a, a
    rst $38
    inc a
    rst $38
    and b
    ld a, a
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld d, e
    rst $38
    ld a, e
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, d
    db $fd
    db $76
    ld sp, hl
    adc $f1
    add $f9
    rlca
    ld hl, sp+$67
    ld hl, sp+$64
    ld hl, sp-$27
    db $e4
    add hl, de
    db $e4
    dec bc
    db $f4
    add hl, bc
    or $8b
    or $00
    rst $38
    ld hl, $21fe
    cp $22
    rst $38
    inc hl
    rst $38
    inc c
    di
    inc e

jr_071_4485:
    di
    ld b, $f9
    inc bc
    db $fd
    add d
    ld a, l
    ld [bc], a
    db $fd
    db $e3
    dec e
    ld [$fa15], a
    dec b
    inc e
    jp $c3cd


    db $dd
    db $e3
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    ld c, a
    rst $38
    pop af
    rst $08
    cp c
    rst $00
    xor b
    rst $00
    cp h
    jp $c1ba


    dec a
    ret nz

    adc h
    ldh a, [rSC]

jr_071_44b5:
    ldh a, [$ab]
    ldh a, [$c6]
    ld sp, hl
    or $f9
    ld a, [$e0fd]
    rst $38
    pop af
    cp $e0
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    db $e4
    rst $38
    db $fc
    rst $30
    ld a, [de]
    rst $30
    sub b
    ld a, a
    sbc c
    ld a, a
    ld e, e
    cp a
    jr c, jr_071_44b5

    ld a, [de]
    db $fc
    ld e, $f8
    ld [$17f8], sp
    ld hl, sp-$6f
    ldh a, [$5d]
    ldh [rSTAT], a
    ldh [rNR44], a
    ret nz

    ld l, a
    add b
    and e
    inc e
    or e
    inc c
    ld c, b
    ccf
    sub e
    ld a, h
    daa
    jr jr_071_4485

    ld l, h
    ld a, [$1b04]
    inc b
    cp c
    ld b, [hl]
    ld l, $d0
    ld [hl], a
    add b
    ld [hl], a
    add b
    cpl

Call_071_4501:
    ret nc

    ld b, a
    cp b
    rrca
    ldh a, [$0b]
    ldh a, [$0e]
    ldh a, [$3e]
    ret nz

    xor l
    ld b, c
    and c
    ld b, c
    db $eb
    db $fc
    ld [c], a
    db $fc
    ld a, [c]
    db $fc
    ldh a, [$fc]
    jp nz, $e3fc

    db $fc
    ldh a, [$fe]
    ldh a, [rIE]
    ld a, a
    sbc a
    ld a, a
    adc e
    ld a, a
    add c
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ld bc, $00fe
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
    ld hl, $80fe
    rst $38
    ld d, c
    cp $78
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    pop hl
    cp $f1
    cp $e9
    or $e1
    cp $e1
    cp $e0
    rst $38
    db $f4
    cp $f0
    xor $15
    xor $2b
    add $bb
    rst $00
    rst $28
    rst $00
    call nc, Call_071_74e7
    rst $20
    ld a, c
    rst $20
    ld h, a
    di
    ccf
    ld a, [c]
    dec a
    ld a, [$f83b]
    inc sp
    ld hl, sp+$72
    ld sp, hl
    db $76
    ld sp, hl
    inc e
    ld sp, hl
    ld e, $f9
    add hl, bc
    cp $0e
    db $fd
    ld l, h
    sbc a
    ld l, $df
    ccf
    adc $3f
    adc $1f
    xor $77
    adc [hl]
    jp z, $faf7

    rst $38
    db $db
    rst $38
    add e
    rst $38
    add a
    rst $38
    add e
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ret


    rst $30
    pop bc
    rst $38
    push bc
    rst $38
    db $ed
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], h
    ei
    or a
    ld a, b
    or [hl]
    ld a, b
    inc a
    ldh a, [$b0]
    ld a, a
    ld a, $ff
    and b
    ld a, a
    ld b, h
    cp a
    ld b, c
    cp a
    inc d
    ei
    dec bc
    cp $4f
    or [hl]
    sub [hl]
    inc l
    cp h
    ld [$188b], sp
    ld l, $d0
    db $eb
    ldh a, [$ee]
    pop af
    ld l, b
    inc de
    ld e, h
    inc hl
    ld h, l
    inc bc
    ld h, l
    inc bc
    add d
    rlca
    add e
    rrca
    add c
    rrca
    ld de, $010f
    rrca
    sbc e
    rlca
    ei
    rlca
    cp e
    rlca
    ld h, a
    rrca
    ld e, a
    jr nz, @+$7a

    inc b
    ret c

    inc h
    dec sp
    ld b, h
    db $10
    db $ec
    rlca
    ld hl, sp-$1e
    dec e
    ld hl, sp+$07
    add e
    ld a, h
    add b
    ld a, a
    and b
    rlca
    ld de, $1402
    ld b, $00
    nop
    ld h, c
    ld h, c
    ei
    ei
    add a
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0186
    ld [$f505], a
    dec bc
    ld h, a
    ld h, b
    inc c
    inc bc
    sbc b
    rlca
    add b
    rra
    ld h, b
    sbc a
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    ei
    inc b
    ld [hl], l
    adc d
    push bc
    ld a, [hl-]
    pop bc
    ld a, $e0
    rra
    add b
    ld a, a
    add c
    ld a, [hl]
    inc bc

Jump_071_463f:
    db $fc
    ld bc, $01fe
    cp $21
    cp $24
    rst $38
    and c
    ld a, [hl]
    and h
    ld a, a
    and h
    ld a, a
    ld c, l
    cp $89
    ld a, [hl]
    add b
    ld a, a
    or b
    ld c, a
    ld b, b
    xor a
    ld [hl], b
    adc a
    sbc c
    add a
    ld e, c
    add a
    ld e, [hl]
    add c
    jp nz, $cc09

    ld bc, $4499
    xor b
    ld b, h
    dec [hl]
    jp nz, $e259

    cp e
    ret nz

    push af
    nop
    xor d
    db $10
    ccf
    nop
    ld [de], a
    inc c
    db $dd
    ld c, $e7
    rra
    rrca
    sbc a
    rlca
    sbc a
    daa
    rst $18
    db $76
    rst $38
    sub e
    rst $38
    ld h, e
    rst $18
    scf
    rst $08
    or c
    rst $08
    ccf
    jp Jump_071_53af


    db $ed
    inc bc
    db $eb
    rlca
    rst $30
    rrca
    add [hl]
    ld a, a
    ld [hl+], a
    rst $18
    xor b
    rst $10
    jp $cef4


    pop af
    xor [hl]
    pop af
    sbc b
    pop hl
    and h
    pop de
    or [hl]
    pop bc
    cp d
    pop bc
    and [hl]
    ret


    db $fd
    add [hl]
    cp $07
    ld [$9007], a
    rrca
    ret


    rra
    cp e
    ld a, h
    call z, Call_000_2030
    nop
    ld c, b
    add b
    ld h, b
    add c
    ret nz

    ld bc, $03a0
    ldh [rSC], a
    inc b
    ld [bc], a
    ld b, $00
    inc b
    nop
    ld c, $00
    ld h, $08
    inc h
    jr jr_071_46df

    ld [hl], b
    ld bc, $a880
    ld b, b
    inc c
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    adc c
    or $e8

jr_071_46df:
    rst $30
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    add sp, -$09
    ld b, $f9
    rrca
    ldh a, [$9c]
    db $e3
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    inc de
    di
    cp a
    ld e, a
    sbc a
    ld a, a
    rst $28
    rrca
    cp a
    ccf
    inc a
    ret nz

    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, a
    nop
    ccf
    nop
    ld [hl+], a
    ld bc, $0083
    ld b, a
    add b
    nop
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    add e
    ld a, h
    ld b, a
    jr c, jr_071_4749

    jr @-$52

    sub b
    xor c
    sub c
    xor c
    sub c
    xor e
    sub e
    dec hl
    inc de
    and e
    sub e
    inc sp
    inc bc
    inc sp
    jp $ab13


    add hl, de
    ld hl, $3804
    ld c, $10
    inc b
    dec de
    inc c
    rst $38
    inc c
    rst $38
    call z, $8cff
    rst $38

Jump_071_4748:
    inc b

jr_071_4749:
    rst $38
    inc c
    rst $38
    ld c, $ff
    db $fc
    rst $38
    add l
    ld a, [de]
    sbc l
    nop
    sbc a
    nop
    add e
    nop
    ld b, e
    add b
    ld b, d
    add b
    jr nz, @-$7e

    add hl, de
    ret nz

    sbc d
    ld h, h
    rrca
    cp a
    ld l, a
    sbc a
    ld a, b
    add a
    ld [hl+], a
    ld d, c
    dec d
    ld h, b
    rst $08
    jr nc, jr_071_47bb

    or c
    xor l
    ld [hl], b
    and c
    ld a, [hl]
    db $fc
    ld [hl], e
    ld a, b
    ldh a, [$f2]
    ld sp, hl
    or c
    rst $38
    sbc l
    rst $38
    sub [hl]
    ld hl, sp-$41
    ret c

    cp a
    ret c

    cp [hl]
    ret c

    xor l
    jp c, $cfb0

    add h
    rst $38
    call nc, $95ef
    xor $a9
    sub $e0
    sbc $71
    adc $60
    sbc $62
    call c, $dc66
    ld b, h
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR22], a
    ldh [rNR41], a
    sub b
    nop
    nop
    ld h, b
    nop
    and b
    nop
    ret nz

    nop
    inc a
    db $e3
    ld sp, $44fe
    cp c
    inc b
    nop
    ld bc, $0600
    nop
    push hl

jr_071_47bb:
    nop
    sub b
    ldh [$50], a
    nop
    ld hl, sp+$07
    ld a, l
    ld [bc], a
    ld c, [hl]
    jr nz, jr_071_47e5

    jr nz, jr_071_47bb

    inc b
    ld a, [hl-]
    dec b
    jr nc, jr_071_47dd

    db $10
    rrca
    ld h, c
    ld e, $0b
    inc e
    add hl, bc
    ld e, $a1
    ld e, $04
    rst $38
    inc bc
    db $fc
    rst $28

jr_071_47dd:
    db $10
    ld c, a
    or b
    rst $18
    jr nz, jr_071_47f2

    ldh [$2f], a

jr_071_47e5:
    ret nz

    cpl
    ret nz

    rra
    ret nz

    rrca
    ret nz

    ld [hl], b
    adc a
    rlca
    rst $38
    dec e
    pop hl

jr_071_47f2:
    dec e
    pop hl
    db $fd
    ld bc, $1927
    add d
    cp h
    add e
    sbc h
    ret nz

    rst $08
    ret nz

    ret nz

    db $dd
    ccf
    ld c, a
    ccf
    ld b, c
    ccf
    ld b, h
    dec sp

jr_071_4808:
    ld b, l
    ld a, [hl-]
    ld d, a
    jr z, jr_071_4808

    nop
    cp c
    ld b, b
    ret


    nop
    pop bc
    nop
    or d
    ld bc, $01fe
    inc a
    jp $ff00


    add c
    rst $38
    rst $30
    rst $38
    jr c, @+$09

    ld d, b
    ld c, a
    db $fc
    db $e3
    db $ec
    db $e3
    or $f1
    or $f1
    rst $30
    ldh a, [$f7]
    ldh a, [rIF]
    rst $38
    dec bc
    cp $1f
    cp $02
    xor $16

jr_071_4839:
    ld a, [hl]
    dec b
    db $e4
    inc e
    cp $3e
    ld a, $ef
    ld [hl], d
    rst $28
    ld d, e
    rst $18
    scf
    rst $38
    rst $30
    rst $38
    db $db
    rst $38
    ld sp, hl
    rst $38
    ld bc, $f0ff
    di
    ldh a, [$f5]
    ldh a, [$c7]
    rst $00
    dec a
    dec a
    ld h, a
    ld h, a
    db $eb
    db $eb
    rst $28
    xor $ff
    rst $08
    xor d
    db $10
    cp $ff
    ccf
    rst $38
    rla
    rst $38
    jr nc, jr_071_4839

    ld [bc], a
    add c
    add sp, $00
    add d
    nop
    ld de, $9000
    nop
    call z, Call_000_3d00
    ld [bc], a
    jp c, Jump_000_2025

    rst $38
    add b
    rst $38
    rst $28
    rra
    sbc a
    rrca
    rlca

jr_071_4883:
    rrca
    db $f4
    rrca
    db $f4
    rrca
    rlca
    rst $38
    ld d, $ff
    ld h, [hl]
    sbc a
    db $76
    adc a
    jp nz, $c03f

    ccf
    db $fd
    inc bc
    ld a, $01
    ld [bc], a
    ld bc, $0178
    ld l, d
    nop
    ld l, h
    ld [bc], a
    nop
    ld e, $04
    inc bc
    ld c, d
    rlca
    or b
    ld c, a
    xor $0f
    ld h, c
    rra
    cp h
    nop
    ld [hl], b
    add b
    sub b
    ret nz

    ret nz

    nop
    ret nz

    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret z

    nop
    or b
    ld b, b
    add b
    ld a, b
    jr c, jr_071_4883

    cp l
    nop
    ld c, l
    nop
    ld c, $01
    ld a, [hl]
    add c
    ld [hl], h
    add e
    ld a, [c]
    rlca
    ld a, [$ee07]
    rlca
    rst $10
    cpl
    rst $20
    rra
    pop bc
    ccf
    dec b
    ei
    inc b
    ei
    add h
    ld a, e
    ld sp, hl
    rlca
    push af
    rrca
    sub a
    ld l, a
    ld d, a
    xor a
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    add d
    ld a, a
    sub b
    ld a, a
    adc h
    rst $30
    jr c, jr_071_48f9

    sbc b
    add a
    adc h
    add e
    call z, $ccc3

jr_071_48f9:
    jp $c3cc


    call z, $dcc3
    jp Jump_071_4748


    ld c, h
    ld b, e
    ld c, [hl]
    ld b, c
    ld b, [hl]
    ld b, c
    db $76
    ld [hl], c
    ld [hl-], a
    ld sp, $383b
    add e
    add b
    ld bc, $03f0
    ldh [rTAC], a
    ret nz

    rrca
    nop
    ccf
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld a, [hl]
    cpl
    nop
    ld b, b
    nop
    ld b, e
    ccf
    ld b, c
    ccf
    ld c, a
    ccf
    rst $08
    ccf
    rst $08
    ccf
    ret z

    ccf
    inc c
    ccf
    adc b
    ccf
    ld c, h
    ccf
    ld c, h
    ccf
    adc $3f
    ld c, [hl]
    ccf
    adc $3f
    adc $3f
    xor $1f
    and $1f
    xor $1f
    ld h, [hl]
    rra
    ld h, [hl]
    rra
    ld h, [hl]
    rra
    ld l, a
    rra
    ld h, $1f
    ld c, $1f
    ld [hl], $1f
    rra
    rrca
    rra
    rrca
    sbc a
    rrca
    rra
    rrca
    ccf
    rrca
    rra
    rrca
    inc bc
    rrca
    inc bc
    rrca
    ld [hl], a
    ld a, a
    rst $30
    rst $38
    rst $30
    rst $38
    scf
    ccf
    rla
    rra
    rlca
    rlca
    ld h, a
    rrca
    ld b, a
    rrca
    rst $20
    rrca
    ccf
    rst $08
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
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $20
    rra
    rst $38
    rlca
    rst $20
    rra
    rst $00

jr_071_4991:
    ccf
    rst $08
    scf
    rst $08
    scf
    db $e3
    rra
    sub c
    rrca
    ld b, a
    rlca
    sub b
    rlca
    inc bc
    ld b, $99
    ld b, $27
    ld hl, sp+$7c
    pop af
    db $76
    ld hl, sp-$4e
    db $fc
    ldh [$fe], a
    or b
    ld a, a
    dec a
    inc bc
    ret nc

    nop
    db $e4
    jr jr_071_49f6

    jr c, jr_071_49d3

    nop
    adc b
    nop
    ld c, $00
    ld [$d010], sp
    jr nc, jr_071_49d1

    ldh [$34], a
    ret nz

    ld h, b
    sub b
    ld [hl], b
    add b
    sbc b
    jr nz, jr_071_4991

    jr nz, jr_071_4a0b

    nop
    inc a
    nop
    db $fd

jr_071_49d1:
    nop
    inc a

jr_071_49d3:
    ret nz

    inc c
    ldh [$8b], a
    ldh [$ac], a
    jp $81dc


    ret nz

    add c
    inc sp
    pop bc
    ld a, d
    add c
    ld h, b
    add e
    ldh a, [$03]
    ld h, h
    sub e
    ld l, c
    sub a
    ld h, c
    sbc a
    ld b, e
    cp a
    rlca
    rst $38
    ld [hl], $87
    ld l, [hl]
    add a
    ld c, $9f

jr_071_49f6:
    ld b, $9f
    ld d, $8f
    xor e
    ld b, $de
    daa
    ccf
    rst $38
    daa
    rst $38
    cpl
    ret nz

    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld [c], a

jr_071_4a0b:
    nop
    ei
    nop
    ld a, b
    nop
    ld a, h
    add b
    inc a
    ret nz

    rst $10
    ld h, b
    xor [hl]
    ld [hl], c
    cp l
    ld a, a
    sbc $3f
    ld c, b
    cp a
    ld e, c
    cp [hl]
    nop
    nop
    nop
    nop
    ld bc, $01fe
    cp $ff
    rst $38
    nop
    rst $38
    or $09
    cp $01
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    ld a, a
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

jr_071_4a5f:
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
    cp a
    rst $38
    ccf
    rst $38
    ccf
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

jr_071_4a8c:
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    call nz, $dfff
    rst $38
    rst $38
    rst $38
    adc c
    adc c
    pop hl
    pop hl
    add c
    add c
    dec c
    dec c
    or b
    ld c, a
    ld hl, sp+$07
    ld sp, hl
    rlca
    or l
    dec bc
    xor a
    inc bc
    sub e
    rrca
    ld h, a
    sbc a
    ld a, a
    rst $38
    rst $10
    rrca
    dec c
    inc bc
    jr @+$03

    jr nc, jr_071_4ab9

    ld h, b

jr_071_4ab9:
    db $10
    jr jr_071_4b1c

    inc b
    jr c, @+$09

    jr c, jr_071_4b2b

    db $10
    add sp, $10
    call nz, $c430
    jr nc, jr_071_4a8c

    jr nc, @-$26

    jr nz, jr_071_4a5f

    ld h, b
    adc d
    ld [hl], b
    adc b
    ld [hl], b
    sub h
    ld h, b
    ld a, [bc]
    ldh [$03], a
    ldh [rNR44], a
    ret nz

    dec hl
    ret nz

    ld hl, $20c0
    ret nz

    ld sp, $0dc0
    ldh [$15], a
    ldh [rTAC], a
    ldh a, [rTAC]
    ldh a, [$94]
    db $e3
    jp nc, $e2e1

    pop af
    dec sp
    ld hl, sp+$3f
    ld hl, sp-$01
    ld hl, sp-$03
    ld hl, sp+$7f
    ld hl, sp+$07
    ld hl, sp-$67
    db $fc
    cp $fd
    sub $fd
    cp $04
    ld hl, sp+$04
    ld a, b
    inc b
    ld a, d
    inc b
    ld a, a
    inc b
    ld [de], a
    inc c
    ld b, $00
    ld [hl+], a
    inc b
    ld l, d
    inc b
    or l
    ld c, [hl]
    call c, $befe
    db $fc
    ld [hl], $ec

jr_071_4b1c:
    and [hl]
    ld a, h
    rst $28
    inc a
    inc a
    inc a
    nop
    nop
    db $10
    rst $28
    db $f4
    dec bc
    rst $38
    rst $38
    nop

jr_071_4b2b:
    rst $38
    add b
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ld hl, sp-$19
    db $fc
    db $e3
    rst $38
    ldh [rIE], a
    ldh [$fe], a
    pop hl
    jp hl


    or $f4
    db $eb
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$09
    ldh [rIE], a
    ldh [rIE], a
    db $e4
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$10
    rst $38
    ld b, b
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
    ret z

    rst $30
    call c, $d9e3
    rst $20
    xor h
    jp $81ce


    adc a
    add b
    inc bc
    add b
    dec hl
    add b
    ld l, a
    add b
    or l

Jump_071_4bb5:
    ret z

    ld e, b
    add b
    pop bc
    nop
    ld a, c
    nop
    ld b, a
    jr nc, @-$72

    ld h, e
    ld b, [hl]
    nop
    ld c, d
    nop
    ld c, $00
    pop bc
    inc c
    add b

jr_071_4bc9:
    ld c, h
    sub e
    ld c, h
    ret nz

    inc e
    ld e, [hl]
    jr jr_071_4c00

    jr jr_071_4bd7

    jr jr_071_4c46

    jr jr_071_4c37

jr_071_4bd7:
    jr jr_071_4c1b

    inc a
    rst $08
    ccf
    adc $3f
    ld c, h
    cp a
    ld c, [hl]
    cp a
    ld e, $ff
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    inc a
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    swap b
    reti


    jr nz, jr_071_4bc9

    jr nz, jr_071_4c49

    and b
    db $db
    jr nz, jr_071_4c16

    db $e4
    add hl, bc
    or $23
    db $fc

jr_071_4c00:
    ld e, e
    cp a
    sbc c
    ld a, a
    jr jr_071_4c85

    ld c, b
    jr c, jr_071_4c1f

    ld [$0814], sp
    ld de, $0508
    ld [$0857], sp
    ld [hl], a
    ld [$50af], sp

jr_071_4c16:
    sub c
    ld a, h
    add e
    ld a, h
    xor [hl]

jr_071_4c1b:
    ld [hl], b
    sub d
    ld l, h
    ld [hl+], a

jr_071_4c1f:
    call c, RST_00
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    add b
    ld b, $f9
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_071_4c37:
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    add a
    ld a, a
    add a
    ld a, a
    ld bc, $00ff
    rst $38

jr_071_4c46:
    ld b, b
    cp a
    nop

jr_071_4c49:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_071_4c52:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_071_4c6f:
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
    inc b
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    inc de
    nop

jr_071_4c85:
    rst $38
    nop
    rst $38
    add b
    rst $38
    add h
    add h
    call nz, $cfc4
    rst $08
    rst $08
    rst $38
    ld c, a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    cp $97
    cp $8b
    db $76
    jr c, @+$01

    ld e, a
    nop
    ld [bc], a
    nop
    dec c
    ld [bc], a
    and b
    rra
    ld sp, hl
    nop
    ldh a, [rP1]
    ld [hl], c
    adc [hl]
    ld c, l
    sbc [hl]
    dec l
    sbc $9d
    ld c, $08
    rra
    dec l
    rra
    cpl
    rra
    ld b, $3f
    ld c, [hl]
    jr nc, @+$0b

    jr nc, jr_071_4c52

    jr nz, @+$41

    nop
    ccf
    nop
    rra
    jr nz, jr_071_4d25

    ld hl, $306f
    add hl, bc
    or $60
    sbc $81
    cp $30
    rst $38
    ld b, b
    rst $38
    ld a, a
    ret nz

    rst $18
    ret nz

    cp a
    ret nz

    cp $81
    ret c

    add a
    ld a, [c]
    adc l
    cp $00
    dec sp
    inc b
    sbc a
    nop
    rst $18
    nop
    sub h
    nop
    jp c, $d724

    jr z, jr_071_4c6f

    ld a, a
    db $fd
    rst $38
    ldh a, [rIE]
    ret c

    rst $38
    and c
    ld e, a
    ld h, b
    rra
    db $d3
    inc c
    rst $38
    nop
    rst $08

Call_071_4cff:
    jr nc, jr_071_4d70

    db $10
    rst $20
    jr jr_071_4d81

    add b
    ld e, l
    add b
    adc h
    ld [hl], b
    db $10
    xor $00
    ld c, e
    nop
    ld a, [hl]
    ld [hl-], a
    ld [hl-], a
    jr nc, @+$32

    ld a, b
    rst $38
    nop
    rst $38
    db $fd
    cp $07
    db $fc
    rst $10
    inc l
    rst $18
    inc h
    rst $30
    call z, $dce7
    rst $10

jr_071_4d25:
    db $fc
    call $ccfe
    rst $38
    call z, $ccff
    rst $38
    call nc, $ccff
    rst $38
    call c, Call_071_7cff
    rst $38
    ld e, l
    rst $38
    ld h, l
    rst $18
    ld b, c
    rst $38
    ld b, d
    db $fd
    ld h, d
    db $dd
    ld h, d
    db $dd
    ld [hl], d
    call $dd62
    ld b, d
    db $fd
    ld h, d
    db $dd
    ld b, e
    db $fd
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    pop hl
    sbc a
    pop bc
    cp a
    add c
    rst $38
    pop bc
    cp a
    pop bc
    cp a
    pop bc
    cp a
    pop bc
    cp a
    add c
    rst $38
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38

jr_071_4d70:
    sub e
    rst $38
    sub d
    cp $82
    cp $83
    rst $38
    add e
    rst $38
    add e
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    add e

jr_071_4d81:
    rst $38
    rla
    rst $38
    daa
    rst $38
    rlca
    rst $38
    inc bc
    ei

jr_071_4d8a:
    rlca
    rlca
    inc bc
    inc bc
    rst $28
    rst $28
    rst $38
    rst $38
    add a
    rst $38
    ld [bc], a
    rst $38
    db $e4
    inc bc
    inc e
    inc bc
    ldh a, [rIF]
    ld b, e
    cp a
    ld l, a
    rra
    scf
    rrca
    ld hl, sp+$07
    dec a
    jp Jump_071_4bb5


    adc c
    rlca
    ld l, a
    ld bc, $29d4
    ld b, c
    cp h
    ld c, [hl]
    cp h

jr_071_4db2:
    dec c
    cp $3f
    rst $38
    ei
    rst $38
    jp hl


    rra
    or e
    rrca
    pop af
    rrca
    ld [hl], e
    rrca
    ld a, c
    rlca
    dec [hl]
    dec bc
    push af
    dec bc
    ld sp, $170f
    rrca
    ld bc, $201f
    rra
    ld l, c
    rla
    ret z

    scf
    ld c, d
    or l
    ld l, h
    inc de
    ld l, h
    inc de
    xor h
    inc de
    cp h
    inc de

jr_071_4ddc:
    ld sp, hl
    ld d, $6c
    sub e
    rst $08
    jr nc, jr_071_4db2

    jr nc, jr_071_4ddc

    ld [$28d7], sp
    ld e, a
    jr nz, jr_071_4d8a

    ld h, b
    xor a
    ld [hl], b
    cp $ff
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld e, c
    rlca
    add d
    ld bc, $0041
    inc bc
    nop
    ccf
    nop
    ld d, c
    nop
    ld bc, $0400
    jr nz, jr_071_4e0b

jr_071_4e0b:
    ld sp, $8f00
    nop
    daa
    nop
    nop
    jr nz, jr_071_4e34

    add a
    rst $00
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld b, a
    rst $00
    ld b, e
    jp $ffff


    rst $38
    rst $38
    ret nz

    ret nz

    cp $fe
    db $e4
    db $e4
    ldh [$e0], a
    ldh a, [$f0]
    add sp, -$18
    add sp, -$18

jr_071_4e34:
    add b
    add b
    add b
    add b
    adc b
    adc b
    and d
    and d
    add b
    add b
    add hl, sp
    cp c
    add b
    add b
    nop
    add b
    add b
    add b
    ret nc

    ret nc

    sub $d6
    sub b
    sub b
    add b
    add b
    add b
    add b
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
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
    add e
    rst $38
    ld bc, $03ff
    rst $38
    add e
    rst $38
    add d
    rst $38
    sub b
    rst $38
    add d
    rst $38
    nop
    rst $38
    call z, Call_071_66f3
    sbc c
    ld l, $d1
    inc a
    jp $ff0f


    rst $08

jr_071_4e8d:
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    sbc d
    push hl
    ld l, a
    add b
    db $ed
    add b
    call c, $e1e3
    rst $38
    rst $38
    rst $38
    cp [hl]
    ld a, a
    cp $01
    add $01
    jr jr_071_4e8d

    cp a
    ret nz

    ld a, a
    add b
    push af
    nop
    ld a, c
    add b
    ld a, c
    add b
    ld [hl], l
    add b
    ld a, h
    add e
    ld a, h
    add e
    cp $81
    cp [hl]
    pop bc
    or $89
    adc [hl]
    pop af
    sbc l
    db $e3
    pop hl
    rst $38
    add d
    db $fd
    ld b, $f9
    rrca
    ldh a, [$5f]
    and b
    ccf
    ret nz

    rrca
    ldh a, [rIF]
    ldh a, [$fc]
    inc bc
    cp h
    inc bc
    db $fc
    inc bc
    call c, $d023
    cpl
    ld [hl], b
    rrca
    sub d
    dec c
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rst $00
    ccf
    rst $20
    rra
    db $eb
    rla
    ld a, [$f007]
    rrca
    ld b, $ff
    ccf
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld a, l
    cp $3c
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc hl
    rst $38
    daa
    rst $38
    dec c
    rst $38
    adc l
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    jr @+$01

    inc c
    rst $38
    ld c, $ff
    ld b, $ff
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nc

    rst $38
    ret c

    rst $38
    jp hl


    rst $38
    cp c
    rst $38
    add hl, sp
    rst $38
    ld h, $ff
    jr nc, @+$01

    rlca
    ld hl, sp+$5f
    and b
    rst $38
    nop
    nop
    rst $38
    ld b, b
    rst $38
    ld a, [hl+]
    push af
    xor $f1
    ld hl, sp-$09
    inc [hl]
    rst $38
    inc bc
    db $fc
    db $10
    rst $28
    ldh a, [rIF]
    db $fc
    inc bc

jr_071_4f98:
    ld c, c
    or a
    xor $ff
    sbc e
    db $fc
    ld h, e
    sbc h
    scf
    ret z

    ld b, a
    cp b
    ld a, h
    add e
    jr c, @-$37

    and c
    ld a, a
    adc a
    ld [hl], c
    call c, Call_071_5c23

jr_071_4faf:
    inc hl
    add hl, de
    and $38
    rst $20
    jr z, @-$07

    jr z, jr_071_4faf

    ld h, b
    rst $38
    ld h, b
    rst $38
    db $e4
    ei
    ld l, $f1
    ld a, d
    db $fd
    ld a, h
    rst $38
    rst $28
    ld a, a
    bit 7, a
    rst $38
    ld a, a
    rst $28
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld [hl], e
    add b
    ld a, [$f281]
    add b
    jr nc, jr_071_4f98

    ret nc

    ldh [$62], a
    ldh a, [$fa]
    ldh a, [$fa]
    ldh a, [$c8]
    ldh a, [$c0]
    ld hl, sp-$80
    ld hl, sp-$78
    ld hl, sp-$7c
    ld hl, sp-$1e
    sbc l
    ld [c], a
    sbc l
    or c
    rst $08
    db $dd
    db $e3
    db $ec
    di
    and $f9
    ld [hl-], a
    db $fd
    add hl, bc
    cp $22
    sbc $69
    sub [hl]
    ret nz

    ccf
    ldh [$1f], a
    ld a, [$7e05]
    add c
    inc [hl]
    res 3, c
    and $9d
    ld [c], a
    rst $18
    ldh [$df], a
    ldh [$ce], a
    pop af
    jp $c3ff


    rst $38
    rst $00
    rst $38
    and c
    rst $18
    ld h, c
    sbc a
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    xor e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld h, d
    rst $38
    ld b, $ff
    ld c, a
    rst $38
    ccf
    rst $38
    ld l, l
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, c
    rst $38
    pop af
    rst $38
    di
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, d
    rst $38
    or e
    rst $38
    ld [hl], e
    rst $38
    ld h, $ff
    ld l, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $f8
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld a, l
    cp $fd
    cp $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    adc h
    rst $38
    jr c, @+$01

    ld a, [de]
    rst $38
    rst $08
    ccf
    rrca
    rst $38
    ccf
    rst $38
    jp $03ff


    rst $38
    rst $18
    rst $38
    db $db
    rst $38
    ld b, b
    rst $38
    pop af
    rrca
    ld bc, $01ff
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    add sp, $17
    ldh a, [rIF]
    ld hl, sp+$07
    add b
    ld a, a
    ld [hl], b
    rst $38
    di
    rst $38
    ld [hl], d
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    inc e
    rst $38
    ld [bc], a
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
    ld b, b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc b
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e00
    ld bc, $ff01
    ld b, b
    rst $38
    ret c

    rst $20
    ret nz

    rst $38
    ld b, c
    or $3a
    ret nz

    ld a, d
    add b
    ld a, a
    add b
    ld l, $10
    inc e
    ld [bc], a
    ld c, $00
    jr nz, jr_071_5102

jr_071_5102:
    ld [hl+], a
    nop
    add e
    nop
    nop
    nop
    add b
    nop
    ld [$5b80], sp
    add b
    ei
    nop
    ld a, b
    add b
    cp $ff
    scf
    rst $38
    xor $ff
    jp hl


    add $e0
    ret nz

    pop bc
    ld hl, sp-$30
    rst $28
    dec l
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    cp $ff
    rst $30
    rst $38
    rlca
    rst $38
    dec [hl]
    db $eb
    sbc a
    ldh [$9b], a
    db $e4
    add e
    db $fc
    add l
    cp $91
    xor $9b
    db $e4
    set 6, h
    ld l, c
    or [hl]
    dec bc
    or h
    ld b, e
    cp h
    ld l, e
    sbc h
    or e
    call z, $e69d
    ld [$34e7], sp
    db $e3
    push bc
    inc sp
    ld [$6e11], a
    sub c
    cp $81
    sbc $81
    ld b, [hl]
    add c
    add l
    ld b, c
    sub b
    ld b, c
    add e
    ld h, c
    cp l
    ld h, e
    add a
    ld a, a
    add c
    ld a, a
    ld l, l
    inc de
    rst $30
    inc bc
    ld l, a
    inc bc
    push af
    inc bc
    call Call_071_5b03
    add a
    ld e, a
    add a
    or a
    rst $08
    and a
    rst $18
    adc a
    rst $38
    rst $08
    cp a
    ld e, a
    cp a
    rst $18
    ccf
    rst $28
    rra
    rst $38
    rra
    rst $28
    rra
    sbc a
    ld a, a
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    jr @+$01

    ret nz

    rst $38
    ld h, b
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
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
    dec de
    rst $38
    ld a, [de]
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    dec e
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    sbc b
    rst $38
    sbc h
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    ld bc, $0110
    ld [bc], a
    ld bc, $0300
    nop
    inc bc
    inc b
    inc bc
    ld [bc], a
    dec b
    ld [de], a

jr_071_51df:
    dec c
    ld [de], a
    dec c
    ld [$061d], a
    add hl, sp
    or [hl]
    ld c, c
    dec e
    ldh [$d1], a
    and b
    jp nc, Jump_071_7080

    add b
    xor e
    ret nc

    ld b, a
    or b
    ld [hl], l
    nop
    rst $30
    nop
    and $01
    jp nz, $6001

    inc bc
    ld [hl], b
    rlca
    adc h
    inc bc
    ret


    rlca
    ld h, e
    rlca
    inc bc
    rlca
    add e
    rlca
    add e
    rlca
    pop hl
    rlca
    dec bc
    rst $30
    ld e, l
    daa
    dec a
    rst $00
    add c
    rst $38
    and e
    call nz, $c24d
    jr z, jr_071_51df

    ld e, l
    jp $c15f


    ld b, h
    pop bc
    add d
    ld b, c
    ld b, b
    pop bc
    ldh [$c1], a
    push hl
    ret nz

    ld h, b
    pop bc
    ldh a, [$c1]
    ei
    pop bc
    db $fc
    jp $c3fc


    push bc
    ei
    ld b, l
    ei
    cp e
    ld a, a
    adc e
    ld a, a
    ld de, $82ef
    ld a, l
    add c
    ld a, [hl]
    cp b
    ld a, a
    xor b
    ld a, a
    add b
    ld a, a
    inc de
    ld l, a
    add a
    ld a, a
    adc a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
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
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    adc $ff
    adc [hl]
    rst $38
    adc h
    rst $38
    inc b
    rst $38
    adc h
    rst $38
    call z, $ccff
    rst $38
    call c, Call_071_7cff
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], d
    db $fd
    ldh a, [rIE]
    jr @+$01

    db $ec
    rst $38
    db $f4
    rst $38
    cp $ff
    rst $38
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
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
    cp l
    rst $38
    add [hl]
    rst $38
    call nc, $e8bf
    sbc a
    db $f4
    sbc a
    and a

jr_071_52e5:
    rst $18
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    sbc a
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
    rst $28
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    sbc [hl]
    rlca
    ld c, b
    add a
    jr z, jr_071_52e5

    call c, $97e3
    db $e3
    sbc e
    rst $20
    inc l
    db $d3
    inc d
    db $eb
    ld a, $c3
    ld e, a
    add e
    ld sp, hl
    inc bc
    add hl, hl
    sub e
    ld hl, $1593
    db $e3
    ld sp, $3dc3
    jp $c37f


    jp $fdff


    db $e3
    ld e, $e1
    add hl, bc
    rst $30
    ld bc, $01ff
    rst $38
    ld bc, $e3ff
    rst $38
    db $eb
    rst $38
    and c
    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    ld a, [$f8ff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rla
    rst $38
    sub $ff
    rst $38
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf

jr_071_5395:
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    cpl
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
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a

Jump_071_53af:
    rst $38
    ld b, c
    cp a
    or b
    ld c, a
    jr nz, jr_071_5395

    ld b, b
    cp a
    ld b, b
    cp a
    ld h, b
    sbc a
    add b
    rst $38
    add d
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    or b
    rst $38
    jr @+$01

    inc c
    rst $38
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
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
    rst $20
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

Call_071_5423:
    rst $38
    add b
    rst $38
    ldh [rIE], a
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    reti


    rst $38
    ld sp, $01ff
    rst $38
    ld b, e
    rst $38
    rst $00
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld c, $ff
    ld c, $ff
    adc a
    rst $38
    sbc a
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add e
    rst $38
    jp $c3ff


    rst $38
    db $e3
    rst $38
    ld h, c
    rst $38
    ld bc, $20ff
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr c, @+$01

    cp b
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld b, e
    cp a
    rst $38
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0bff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f9ff]
    rst $38
    rst $38
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
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    jp hl


    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
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
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    sbc a
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
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ret


    rst $38
    db $e4
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    jr @+$01

    ld a, b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    db $fd
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
    jr jr_071_55e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_071_55f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_071_5603

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_071_5613

    ld [hl-], a

jr_071_55e3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_071_5623

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_071_55f3:
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

jr_071_5603:
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

jr_071_5613:
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

jr_071_5623:
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
    jr jr_071_56e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_071_56ff

    ld hl, $2322
    dec l
    inc h
    dec h
    ld h, $27
    jr z, jr_071_5705

    ld a, $2a
    dec hl
    inc l
    dec l
    ld l, $2f

jr_071_56e3:
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld a, $36
    scf
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_071_56ff:
    ld bc, $0101
    ld bc, $0101

jr_071_5705:
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    ld [bc], a
    ld [bc], a
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
    ld bc, $0701
    rlca
    rlca
    rlca
    ld bc, $0107
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    rrca
    rrca
    rrca
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
    ld bc, $0909
    add hl, bc
    ld b, c
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld a, [c]
    db $fd
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
    ldh a, [rIE]
    ld hl, sp-$01
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    jp hl


    rst $38
    add sp, -$01
    ldh [rIE], a
    ldh [rIE], a
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $f4
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    db $e3
    rst $38
    jp $86ff


    rst $38
    and [hl]
    rst $38
    rst $20
    rst $38
    push bc
    rst $38
    jp $cbff


    rst $38
    add e
    rst $38
    add e
    rst $38
    ld b, $ff
    nop
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $ec
    rst $38
    adc h
    rst $38
    add h
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    ld de, $01ff
    rst $38
    ld bc, $09ff
    rst $38
    add hl, bc
    rst $38
    ld bc, $09ff
    rst $38
    add hl, bc
    rst $38
    ld c, c
    rst $38
    add hl, bc
    rst $38
    ld bc, $08ff
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld c, l
    rst $38
    db $ed
    rst $38
    call z, $ccff
    rst $38
    db $e4
    rst $38
    and $ff
    db $ec
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    jp nc, $83ff

    rst $38
    or e
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $38
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld a, [$f8ff]
    rst $38
    ldh a, [rIE]
    rst $00
    rst $38
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $3bff
    rst $38
    ld a, e
    rst $38
    ld c, [hl]
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, $ff
    inc b
    rst $38
    ld [hl+], a
    rst $18
    ld b, $ff
    db $f4
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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    dec a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld [hl], c
    cp $35
    ld a, [$f837]
    ld l, $f1
    ccf
    ldh [$7f], a
    ldh [$57], a
    ldh [$7d], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    dec a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rNR32], a
    db $e3
    db $e3
    rst $38
    rst $38
    rst $38
    di
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
    add b
    rst $38
    ld bc, $59ff
    rst $38
    ld e, c
    rst $38
    ld a, c
    rst $38
    ld c, c
    rst $38
    ld h, d
    rst $38
    ld h, a
    rst $38
    ld [hl], $ff
    ld [hl], $ff
    jr @+$01

    ld a, $ff
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc [hl]
    rst $38
    adc $ff
    adc $ff
    sub $ff
    add $ff
    push bc
    rst $38
    rlca
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    or d
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    cp e
    rst $38
    xor b
    rst $38
    jr @+$01

    ld [$19ff], sp
    rst $38
    ld [$88ff], sp
    rst $38
    adc b
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    ld e, $ff
    rra
    rst $38
    cp a
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
    ld a, a
    rst $38
    rst $38
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
    ld a, [$feff]
    rst $38
    cp [hl]
    rst $38
    add a
    rst $38
    add a
    rst $38
    xor a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    dec b
    ei
    ld b, $f9
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld bc, $07fe
    ld hl, sp+$06
    ld sp, hl
    rrca
    ldh a, [rTMA]
    ld sp, hl
    ld c, $f1
    dec bc
    push af
    dec c
    di
    add hl, bc
    rst $30
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    jp nz, $c3ff

    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    ld a, [de]
    db $fd
    rrca
    db $fc
    rrca
    db $fc
    dec c
    cp $2d
    sbc $7d
    adc [hl]
    ld h, a
    sbc h
    inc bc
    db $fc
    jp nz, $863d

    ld a, c
    inc b
    ei
    dec h
    ld a, [$fa85]
    db $ed
    ld [de], a
    add hl, hl
    ld d, $6d
    ld [de], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $dd
    ld [hl+], a
    call nc, $9d23
    ld h, e
    sbc h
    ld h, e
    ld l, [hl]
    di
    di
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add d
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    ld c, c
    rst $38
    add hl, bc
    rst $38
    adc d
    db $fd
    ld [bc], a
    db $fd
    add b
    rst $38
    add b
    rst $38
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nc

    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    jr @+$01

    jr @+$01

    dec e
    cp $19
    cp $18
    rst $38
    ld [$02ff], sp
    db $fd
    ld [bc], a
    db $fd
    ld [hl+], a
    db $dd
    and b
    rst $18
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $10ff
    rst $38
    ld bc, $a1ff
    rst $38
    inc hl
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a

Call_071_5b03:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    di
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    add d
    db $fd
    add c
    cp $c1
    cp $c1
    cp $83
    db $fc
    ld [hl], $f8
    and l
    ld hl, sp+$70
    db $fc
    ld a, [hl]
    db $fc
    ld a, [hl]
    db $fc
    ld a, a
    db $fc
    ld a, l
    cp $fd
    cp $fd
    cp $fd
    cp $9d
    cp $9c
    rst $38
    cp $ff
    cp $ff
    cpl
    cp $2f
    cp $6f
    or $74
    cp $fc
    cp $7d
    cp $e9
    cp $da
    dec a
    ld [$da1d], a
    dec b
    db $fc
    inc bc
    call nz, $0339
    ld hl, sp+$6e
    pop af
    ld c, $f1
    ld l, $f1
    ld [hl-], a
    pop hl
    db $10
    pop hl
    db $10
    pop hl
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ret nc

    inc bc
    add l
    ld b, e
    cp a
    ld b, e
    rra
    jp $c738


    ld a, a
    rst $00
    cp a
    rst $00
    sub a
    rst $28
    ld c, a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    call nc, $09fb
    rst $30
    ld bc, $06ff
    ld sp, hl
    inc b
    ei
    jr nz, @+$01

    db $fc
    rst $38

jr_071_5baa:
    cp h
    rst $38
    cp h
    rst $38
    cp [hl]
    db $fd
    cp [hl]
    db $fd
    sbc h
    rst $38
    xor l
    rst $38
    db $dd
    rst $38
    sbc l
    rst $38
    cp [hl]
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    db $e3
    db $fc
    ld h, a
    ld hl, sp-$11
    ldh a, [$5f]
    ldh [rVBK], a
    ldh a, [$1f]
    ldh [$9f], a
    ld h, b
    rst $08
    jr nc, jr_071_5baa

    jr nc, jr_071_5c2b

    or c
    ret z

    scf
    ret nz

    ccf
    sub e
    ld a, a
    dec de
    rst $38
    ld [hl], e
    rst $38
    or $ff
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc

jr_071_5bf1:
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    or $ff
    db $f4
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_071_5c23:
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp $e3ff


jr_071_5c2b:
    rst $38
    jp $e3ff


    rst $38
    add a
    ld [bc], a
    dec h
    add d
    rra
    add b
    rlca
    add b
    ld e, c
    add b
    ld h, e
    add b
    ret nz

    ld [bc], a
    jr nc, jr_071_5c80

    ld [bc], a
    ld h, b
    ld bc, $c062
    ld [hl-], a
    rst $00
    jr c, @-$73

    ld a, h
    call z, $e639
    add hl, de
    ld h, a
    add hl, de
    rst $20
    add hl, de
    rst $00
    jr nc, jr_071_5bf1

    ld h, e
    ld a, b
    inc bc
    ld l, c
    ld [bc], a
    ld c, l
    ld [bc], a
    rlca
    nop
    ld l, e
    nop
    xor a
    nop
    ld c, e
    nop
    or l
    nop
    ld e, l
    add b
    ld e, [hl]
    add b
    ld d, h
    add b
    cp [hl]
    nop
    rst $30
    add b
    cp l
    jp nz, $f3e8

    add sp, -$0d
    ld l, b
    di
    nop
    di
    ld [hl], d
    add l
    scf
    ret nz

    ld a, [c]
    inc b

jr_071_5c80:
    sub [hl]
    ld h, b
    sbc $60
    sbc $e0
    sbc [hl]
    ret nz

    cp a
    ret nz

    or $80
    ld a, a
    add b
    or $01
    cp d
    ld b, l
    ld l, b
    rst $18
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    call c, $d9ff
    rst $38
    sbc b
    rst $38
    add hl, bc
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $30ff
    rst $08
    and b
    rst $18
    add c
    rst $38
    and a
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
    ld d, c
    rst $38
    ld b, $f9
    inc sp
    call z, $9867
    ld b, a
    cp b
    ld b, e
    cp h
    dec de
    db $e4
    ld c, c
    or $20
    rst $18
    nop
    rst $38
    ld b, b
    rst $38
    call nz, Call_000_0c7b
    di
    adc e
    ld [hl], a
    jp Jump_071_463f


    cp a
    ld b, [hl]
    cp a
    ld b, d
    cp a
    pop bc
    cp [hl]
    pop bc
    cp [hl]
    nop
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld c, $ff
    ld e, $ff
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld l, $ff
    inc h
    rst $38
    inc a
    rst $38
    inc [hl]
    rst $38
    cp [hl]
    rst $38
    sub a
    rst $38
    rst $10
    rst $38
    sub $ff
    add $ff
    and b
    rst $38
    pop bc
    rst $38
    ld bc, $01ff
    rst $38
    add a
    rst $38
    rlca
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    cp d
    inc e
    cp [hl]
    jr @-$5c

    inc e
    xor h
    ld e, $76
    inc c
    ld c, b
    inc b
    ld h, a
    nop
    ld b, e
    nop
    ld b, e
    nop
    add hl, bc
    nop
    ld [$0200], sp
    nop
    nop
    nop
    xor b
    nop
    sub d
    nop
    ld [$9080], sp
    adc b
    ld l, h
    sub b
    ld a, [hl-]
    ldh a, [$b4]
    ld l, b
    inc e
    ld l, b
    xor l
    ld e, b
    dec a
    ld e, b
    db $76
    dec e
    sbc $3f
    cp [hl]
    ccf
    ld [hl], h
    ccf
    ld [hl], d
    dec a
    ld [de], a

jr_071_5d69:
    ld a, l
    or c
    ld a, b
    xor l
    ld [hl], b
    ldh [$78], a
    ld b, c
    ld hl, sp+$15
    add sp, $35
    ret z

    inc sp
    call z, $c82f
    xor a
    ret z

    ld d, c
    adc [hl]
    ld [hl-], a
    rrca
    db $76
    rrca
    ld b, d
    rra
    ldh [$1f], a
    ld h, b
    sbc a
    jr nz, jr_071_5d69

    ldh [$9f], a
    ld b, d
    sbc l
    sbc $39
    sub $39
    dec l
    di
    ld hl, $29ff
    rst $38
    push af
    rst $28
    inc h
    rst $38
    ld hl, $01ff
    rst $38
    rlca
    rst $38
    ld bc, $45ff
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    add a
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    add a
    rst $38
    add a
    rst $38
    add h
    rst $38
    adc h
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    pop bc
    cp a
    pop hl
    sbc a
    pop af
    adc a
    inc hl
    rst $18
    inc sp
    rst $08
    add e
    ld a, a
    dec sp
    rst $38
    dec de
    rst $38
    inc bc
    rst $38
    inc hl
    rst $18
    add e
    rst $38
    jp nz, $c2ff

    rst $38
    ld [c], a
    rst $38
    pop hl
    rst $38
    pop hl
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
    rst $20
    rst $38
    rst $20
    rst $38
    di
    rst $38
    sbc a
    rst $38
    cp d
    rst $38
    or d
    rst $38
    or $ff
    or $ff
    or $ff
    cp $ff
    db $fd
    rst $38
    db $dd
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    ld e, d
    rst $38
    ld a, e
    rst $38
    ld h, c
    rst $38
    ld b, e
    rst $38
    dec e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld l, e
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    or a
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $18
    ld hl, $334d
    ld e, c
    ccf
    dec a
    ld a, a
    inc bc
    ld a, a
    jr nz, jr_071_5e5b

    ld a, l
    rrca
    ld e, l
    rrca
    dec h
    ld c, [hl]
    inc c
    ld b, e
    ld b, h
    inc bc
    call nz, $dc03
    inc bc
    sub h
    inc bc
    xor b
    inc de
    ld c, $31
    dec d
    dec sp
    ld a, b
    rra
    ld a, [hl]
    dec e
    xor h
    rra
    add h
    rra
    or b

jr_071_5e5b:
    rrca
    ld [hl-], a
    dec c
    add hl, sp
    rrca
    ld [hl], c
    rrca
    ld l, e
    rlca
    ld l, c
    rlca
    add hl, sp
    rlca
    jp hl


    rla
    xor c
    ld d, a
    add b
    ld a, a
    ld [$c2ff], sp
    ccf
    ldh a, [$2f]
    pop hl
    ccf
    and b
    ld a, a
    jr nz, jr_071_5ef9

    ret nz

    ld a, a
    ld b, h
    rst $38
    call nz, Call_000_05ff
    cp $1d
    cp $34
    rst $38
    ld a, $ff
    ccf
    cp $35
    cp $3f
    cp $7f
    rst $38
    ld e, a
    rst $38
    ei
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $f4
    rst $38
    ld a, [$bbff]
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    reti


    rst $38
    cp $ff
    rst $28
    rst $38
    rst $28
    rst $38
    push hl
    rst $38
    and b
    rst $38
    and b
    rst $38
    add b
    rst $38
    and b
    rst $38
    cp b
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    add b
    rst $38
    call z, $80ff
    rst $38
    add b
    rst $38
    ld a, c
    rst $38
    rrca

jr_071_5ef9:
    rst $38
    ld bc, $fcff
    rst $38
    nop
    rst $38
    ldh [$1f], a
    sub b
    ld l, a
    inc b
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    adc $ff
    rst $38
    rst $38
    nop
    rst $38
    inc b
    ei
    dec b
    ld a, [$ff00]
    inc b
    ei
    daa
    rst $18
    rst $30
    rst $38
    ldh a, [rIE]
    adc c
    rst $38
    jp $e3ff


    rst $38
    di
    rst $38
    jp hl


    rst $38
    add c
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    ld b, a
    cp a
    nop
    rst $38
    ld b, b
    rst $38
    push af
    cp $00
    rst $38
    ld a, e
    add a
    inc c
    rst $38
    rlca
    ld hl, sp+$7f
    add b
    nop
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld l, [hl]
    rst $38
    or b
    rst $38
    jr nc, @+$01

    rla
    rst $38
    ld a, [de]
    rst $38
    jr z, @+$01

    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    ei
    rst $38
    add sp, -$01
    db $f4
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    rlca
    ld hl, sp+$7f
    add b
    inc c
    ldh a, [rNR32]
    ldh [$3e], a
    jp nz, $c139

    ld [hl], b
    add b
    ld h, e
    add e
    ld h, a
    add a
    ld h, a
    add a
    ld a, a
    adc a
    scf
    rst $00
    jr c, @-$3e

    ld e, $e0
    ld c, $f0
    ld b, $f8
    dec c
    pop af
    inc c
    ldh a, [$30]
    inc e
    jr nc, jr_071_5fb0

    ld [hl], h
    inc e
    and $1c
    rst $20
    inc e
    push bc
    inc e
    sub b
    inc e
    sub b
    inc e
    db $d3
    inc e
    jp hl


    inc c
    add sp, $0c
    ret z

    inc c
    sbc b
    inc c
    ei
    inc c
    db $fc
    inc c
    db $fc
    inc b

jr_071_5fb0:
    call nz, $84ff
    rst $38
    db $e4
    rst $38
    adc l
    or $2f
    db $f4
    dec l
    ldh a, [rTIMA]
    ld hl, sp-$60
    ret nc

    and a
    ret nc

    sbc d
    ldh [$c4], a
    ld hl, sp-$3e
    db $fc
    add b
    rst $38
    sub h
    db $eb
    sub h
    db $eb
    ldh [rIE], a
    and l
    rst $38
    ld bc, $40ff
    cp a
    ld hl, $80df
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    sbc b
    rst $38
    rst $38
    rst $38
    ld b, $ff
    add b
    ld a, a
    ld bc, $0bff
    rst $38
    ld b, $ff
    ld c, $ff
    cpl
    rst $38
    ld bc, $00ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    sbc b
    rst $38
    jr @+$01

    jr c, @+$01

    jr @+$01

    inc e
    rst $38
    ld [$01ff], sp
    cp $19
    cp $7c
    rst $38
    dec l
    rst $18
    ld l, l
    sbc a
    cpl
    rst $18
    sub a
    rst $38
    rra
    rst $38
    jp Jump_000_003f


    rst $38
    ld h, e
    cp h
    inc bc
    db $fc
    rrca
    ld hl, sp-$35
    db $fc
    rst $00
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$19
    ret c

    cp a
    ret nz

    rla
    add sp, $1f
    ldh [$89], a
    or $8e
    pop af
    adc a
    ldh a, [$8f]
    ldh a, [$0b]
    ldh a, [$7b]
    ldh a, [$63]
    ldh a, [$ec]
    di
    ldh [rIE], a
    ld a, $ff
    call c, $ec3f
    rra
    adc b
    ld a, a
    ld a, a
    rst $38
    add c
    rst $38
    dec e
    cp $1e
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    inc e
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld l, a
    rst $38
    ld c, $ff
    ld a, l
    cp $78
    rst $38
    inc e
    db $e3
    cp d
    ld b, l
    ld b, b
    ccf
    ld [c], a
    db $fc
    xor e
    ld b, h
    ld h, b
    rrca
    inc c
    inc bc
    add l
    add d
    push hl
    ld [c], a
    rst $00
    ret nz

    set 0, h
    sub e
    adc h
    dec de
    inc h
    or b
    ld c, a
    ldh a, [rIF]
    and b
    ld e, a
    ldh [$1f], a
    ld [$92f7], sp
    ld bc, $118f
    ld c, c
    sub a
    ld b, d
    cp l
    ld bc, $02ff
    db $fd
    cp $01
    sbc h
    nop
    rlca
    ld hl, sp-$79
    ld a, b
    ld h, l
    jr jr_071_60bb

    ld [$39c6], sp
    ld d, $f9
    ld a, e
    db $fc
    ld a, [de]
    db $fd
    add b
    rst $38
    adc d
    db $fd

Jump_071_60b4:
    nop
    rst $38
    adc b
    ld a, a
    call nc, Call_000_092f

jr_071_60bb:
    ld b, [hl]
    db $d3
    inc c
    xor l
    ld [bc], a
    di
    inc b
    dec b
    ld b, b
    dec b
    ld a, d
    ldh [rNR34], a
    ld c, c
    add [hl]
    nop
    rst $38
    and [hl]
    rst $18
    rrca
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    adc $ff
    ccf
    rst $38
    rrca
    rst $38
    adc h
    rst $38
    add c
    rst $38
    xor a
    rst $38
    rra
    rst $38
    xor a
    rst $38
    ld [bc], a

jr_071_60e5:
    rst $38
    ld b, $ff
    inc b
    rst $38
    inc bc
    rst $38
    ld bc, $07ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $00
    rst $38
    add hl, de
    rst $20
    jr jr_071_60e5

    nop
    rst $38
    jr nz, @+$01

    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    pop hl
    ld e, $ef
    ld e, $85
    cp $f8
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp $ff
    call $86ff
    ld a, c
    rst $38
    nop
    cp $01
    db $ec
    inc de
    call nz, $e13b
    rra
    pop af
    rrca
    pop hl
    rra
    db $f4
    dec bc
    ret nz

    ccf
    ret


    ld [hl], $47
    ld bc, $017b
    db $fd
    inc bc
    cp l
    inc bc
    ld e, a
    add b
    or $00
    rst $30
    nop
    ld l, h
    sub d
    ld bc, $c8fe
    scf
    rst $38
    nop
    ld b, e
    cp h
    ld [hl], c
    adc [hl]
    add a
    ld hl, sp+$52
    xor a
    rst $08
    scf
    rlca
    rst $38
    ld [$0eff], sp
    ld sp, hl
    ld h, b
    rst $38
    inc a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    dec e
    rst $38
    ret nc

    ccf
    nop
    rst $38
    inc c
    di
    rrca
    ldh [$38], a
    rlca
    db $ed
    ld [bc], a
    rst $28
    nop
    cp h
    ld b, e
    sbc b
    ld h, c
    inc a
    inc bc
    sbc a
    nop
    inc d
    cpl
    rst $38
    rlca
    push bc
    ld c, $95

jr_071_6185:
    ld [$8718], sp
    ld d, [hl]
    rrca
    rla
    rrca
    rst $20
    rra
    and b
    ld e, a
    or e
    ld c, h
    ld hl, sp+$07
    ld d, c
    xor [hl]
    ld c, h
    cp a
    add b
    rst $38
    nop
    rst $38
    sub b
    ld a, a

Jump_071_619e:
    ret nz

    ccf
    ldh a, [rIF]
    db $10
    rst $28
    jr nz, jr_071_6185

    add c
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rst $08
    ccf
    rst $28
    rra
    rrca
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $f4
    rst $38
    ld [hl+], a
    db $fd
    jp c, $f625

    ld [$2c53], sp
    ld hl, $3a02
    nop
    ld c, [hl]
    ld sp, $f320
    sbc [hl]
    ld h, c
    add c
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc d
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $03fe
    rst $38
    rrca
    rst $38
    ld bc, $81ff
    rst $38
    and c
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld c, a
    or b
    and h
    ld e, e
    ld l, h
    add e
    ld [hl], a
    add b
    rst $30
    add b
    ld a, a
    add b
    dec h
    jp c, $4ab5

    or e
    ld c, h
    ld a, a
    add b
    ld h, a
    add b
    ld b, a
    add b
    ld b, b
    add b
    ld [hl-], a
    pop bc
    dec a
    jp $877b


    inc bc
    rst $38
    rst $08
    ccf
    and $18
    ld a, [de]
    ldh [$3c], a

jr_071_6223:
    ret nz

    sbc [hl]
    ret nz

    sub e
    ret nz

    or e
    ret nz

    dec e
    ld [c], a
    add l
    ld a, d
    ld l, c
    sbc [hl]
    rst $30
    ld hl, sp+$76
    ld sp, hl
    jp hl


    rst $30
    ldh a, [rIE]
    dec a
    cp $0c
    di
    rst $20
    dec de
    adc c
    rlca
    jr nc, @+$09

    jr nz, jr_071_6223

    jp $e23f


    rra
    add $3f
    ld b, $ff
    pop bc
    rst $38

jr_071_624e:
    pop bc
    rst $38
    add $ff
    ld l, h
    rst $38
    cp h
    ld a, a
    ld a, h
    rst $38
    xor $ff
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld a, b
    rst $38
    ldh [$1f], a
    inc b
    ei
    add e
    ld a, h
    sbc [hl]
    ld h, b
    ld h, a
    nop
    add b
    ld b, a
    ld e, c
    and [hl]
    ld d, l
    and b
    jr z, jr_071_624e

    ldh a, [$c8]
    inc sp
    ret nz

    add d
    ld h, c
    ret


    inc sp
    ld d, $f9
    add hl, hl
    db $f4
    jp z, Jump_071_60b4

    sbc h
    sub [hl]
    ld hl, sp-$7a
    ld sp, hl
    ld b, $f9
    ld l, b
    sbc a
    inc c
    rst $38
    sbc c
    cp $f0
    rst $38
    pop af
    cp $fb
    db $fc
    pop af
    cp $32
    db $fc
    ld a, [de]
    db $fc
    add hl, sp
    cp $fa
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    db $dd
    cp $da
    db $fd

jr_071_62b6:
    scf
    db $fc
    ld bc, $0dfe
    ld a, [c]
    sbc l
    jp nz, Jump_071_6718

    ld l, $c1
    adc a
    ld [hl], b
    db $fd
    ld [de], a
    ld b, h
    cp a
    db $e4
    rra
    add sp, $1f
    dec e
    rst $38
    ld a, [c]
    rst $38
    ld b, c
    rst $38
    pop hl
    rst $38
    inc hl
    rst $38
    ld [hl], a
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jp hl


    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    adc [hl]
    ld a, a
    cp h
    rst $38
    ld h, h
    rst $38
    db $fc
    rst $38
    rst $00
    ld sp, hl
    ld [bc], a
    rst $38
    inc c
    rst $38
    ld bc, $bffe
    ret nz

    ld b, b
    cp a
    ld [hl], e
    adc h
    ld a, e
    add b
    ld a, [$0c00]
    di
    dec d
    cp $7e
    ldh a, [$3f]
    ldh a, [rNR50]
    ei
    add hl, de
    rst $30
    ld [bc], a
    db $fd
    dec b
    ld a, [$7cfb]
    ld a, c

jr_071_6315:
    cp $fb
    db $fc
    db $fc
    rst $38
    ld sp, hl
    db $fc
    sbc b
    db $fc
    cp d
    inc b
    add e
    jr nc, jr_071_6315

    ld bc, $c130
    ld hl, $11c0
    ldh [$27], a
    ldh a, [$cb]
    jr nc, jr_071_62b6

    ld a, b
    ld a, [$f907]
    nop
    add a
    ld a, b
    ld d, $ff
    pop hl
    rra
    dec de
    ldh a, [$bc]
    ldh a, [$f0]
    ldh a, [$f5]
    ld hl, sp+$2e
    ldh a, [$e3]
    db $fc
    ld a, b
    rst $38
    ld hl, sp+$7f
    ld a, a
    rst $38
    rst $08
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    inc bc
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    ld [$fcff], sp
    rst $38
    add h
    rst $38
    jr nc, @+$01

    pop af
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    jp $f7ff


    rst $38
    scf
    rst $38
    rra
    rst $38
    di
    rra
    rst $20
    rra
    inc sp
    rrca
    ld [hl], e
    adc a
    ld a, e
    add a
    sub e
    rrca
    ld [hl], e
    rrca
    dec hl
    rra
    dec sp
    rra
    ld c, e
    ccf
    and b
    ld a, a
    ld [hl], h
    db $eb
    ld a, c
    rst $20
    dec a
    rst $20
    cp c
    ld b, a
    add h
    dec bc
    call nz, $c80b
    rlca
    add b
    ld a, a
    or c
    rst $38
    jp $3bff


    rst $00
    pop hl
    rra
    nop
    rra
    ld d, b
    rrca
    ld de, $370f
    rrca
    dec de
    rlca
    db $db
    rlca
    or e
    rrca
    rst $10
    dec hl
    and e
    rst $38
    add a
    rst $38
    rst $08
    cp a
    rst $00
    ccf
    add a
    ld a, a
    sub a
    ld a, a
    adc $3f
    add a
    ld a, a
    rlca
    rst $38
    cpl
    rst $18
    add a
    ld a, a
    scf
    rst $38
    ld a, a
    rst $38
    or a
    ld a, a
    scf
    rst $38
    inc de
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    ret nz

    rst $38
    ld c, $ff
    dec sp
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

    rst $38
    inc sp
    rst $38
    inc h
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld b, c
    cp a

jr_071_63f0:
    ld a, a
    rst $38
    cp $ff
    xor $ff
    ld b, [hl]
    rst $38
    ld a, d
    rst $38
    rra
    ldh [$bf], a

jr_071_63fd:
    ld b, b
    adc e
    ld [hl], h
    adc h
    ld [hl], b
    adc [hl]
    ld [hl], b
    jp z, $2b31

    ld [hl], a
    rst $38
    ld a, a
    rst $00
    ld hl, sp+$3c
    ret nz

    ld [hl], e
    add b
    or b
    nop
    ld hl, sp+$07
    db $d3
    cpl
    daa
    rst $38
    ld l, $d7
    ld d, $03
    add [hl]
    inc bc
    ld d, d
    dec c
    ret


    ccf
    ld a, h
    add e
    ld a, a
    add b
    ldh a, [rP1]
    rst $08
    nop
    ld e, a
    nop
    db $e4
    nop
    cp $01
    ld a, a
    rst $38
    dec bc
    rst $38
    ret nc

    cpl
    db $10
    rst $28
    ld a, b
    add a
    jr z, jr_071_6443

    dec h
    inc bc
    ld [$6803], sp
    rlca
    ld e, b

jr_071_6443:
    jr nz, jr_071_63fd

    nop
    ret


    jr nc, jr_071_63f0

    ld a, b
    ld hl, $04fe
    ei
    jr @+$01

    ld b, c
    rst $38
    sbc b
    db $e3
    cp c
    add $00
    rst $38
    nop
    rst $38
    ld e, a
    or b
    inc d
    ld sp, hl
    ret c

    ldh a, [$d4]
    ld hl, sp-$27
    db $fc
    ret z

    db $fc
    pop hl
    cp $88
    or $a8
    or $a8
    or $e0
    cp $68
    or $66
    ld a, [$fe72]
    ld h, d
    rst $38
    ldh a, [$ef]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$cc], a
    rst $38
    rst $18
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    db $ec
    di
    db $e4
    ei
    db $e4
    ld sp, hl
    and $f9
    rst $38
    pop af
    rst $38
    pop af
    pop af
    rst $38
    xor $f1
    adc [hl]
    pop af
    ldh [rIE], a
    ld a, [hl]
    rst $38
    ld a, d
    rst $38
    ld a, [$faff]
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
    ld a, [$feff]
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    adc $ff
    cp $ff
    cp $ff
    rst $38

jr_071_64c5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    adc $ff
    ld a, [hl]
    rst $38
    ld a, c
    rst $38
    sbc c
    rst $38
    inc c
    rst $38
    inc hl
    rst $38
    ld [hl], e
    rst $38
    ldh a, [rIE]
    jr z, @+$01

    ld [hl-], a
    call $f807
    ld b, a
    cp b
    sbc [hl]
    ldh [$1f], a
    ldh [$0c], a
    di
    rst $38
    rst $38
    ret nc

    rst $28
    rra
    ldh [$5f], a
    and b
    rst $28
    nop
    inc hl
    ret nz

    ccf
    ret nz

    add h
    ld h, e
    add h
    db $e3
    cp $00
    jr nz, jr_071_6520

    ld a, a
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ld sp, $0bc0
    nop
    jr jr_071_650f

    ld [hl], b

jr_071_650f:
    inc bc
    add sp, $17
    db $e3
    rst $38
    db $fd
    rst $38
    call nz, Call_000_04ff
    rst $38
    scf
    ld hl, sp-$52
    ret nz

    db $e3
    ret nz

jr_071_6520:
    ret c

    ldh [$64], a
    ldh a, [$cd]
    jr nc, jr_071_64c5

    nop
    inc de
    inc c
    ld l, a
    db $10
    sub c
    ld h, b
    sbc a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    sbc l
    ld hl, sp+$73
    ld hl, sp+$32
    ld hl, sp+$10
    ldh [$d0], a
    ldh [$e5], a
    ld hl, sp+$6d
    ld [bc], a
    adc [hl]
    ld bc, $00c2
    db $fc
    inc bc
    sub l
    inc bc
    rst $30
    rrca
    ld b, a
    cp a
    ld c, [hl]
    rst $38
    cp $ff
    ld a, b
    rst $38
    rst $20
    jr @-$1f

    jr nz, jr_071_65b9

    rra
    ld h, b
    ei
    ldh [$08], a
    ld hl, $c100
    nop
    ld h, c
    nop
    ld [bc], a
    nop
    ld h, d
    add b
    ld l, h
    add b
    ld b, $0c
    ld [$0506], sp
    ld c, $0d
    ld e, $1f
    ld e, $06
    rra
    ld l, $1f
    jp nz, $3f3f

    rla
    ld de, $1f7f
    ld h, b
    nop
    nop
    add e
    nop
    dec c
    add d
    ld b, e
    add b
    ld b, c
    add b
    add b
    ld b, b
    pop bc
    nop
    add b
    ld a, e
    and b
    ld [hl], e
    ld b, d
    push hl
    add c
    db $eb
    ret nz

    db $eb
    ret nz

    db $e3
    ldh [$fb], a
    ldh [$f9], a
    nop
    db $fd
    add h
    ei
    sbc l
    ldh [$92], a
    db $e4
    ld a, [c]
    db $e4
    sub $e0
    sub $e0
    sub h
    ldh [$34], a
    ret nz

    ld sp, $34c0
    ret nz

    ld h, h
    pop de
    cpl
    ret nc

    rrca

jr_071_65b9:
    rst $38
    ld l, $df
    xor a
    sbc $ac
    sbc $3f
    call z, $cc9f
    ld e, d
    adc h
    ld l, d
    sbc h
    xor e
    call c, $fc9b
    db $eb
    sbc h
    db $eb
    sbc h
    add sp, -$61
    ld l, c
    sbc [hl]
    ld l, b
    sbc a
    ld l, h
    sbc e
    ld h, h
    sbc e
    db $10
    rst $38
    ld [hl], l
    sbc d
    ld a, $80
    ccf
    nop
    push hl
    nop
    and h
    ld b, e
    inc h
    ld b, b
    ld de, $7060
    ldh [$e2], a
    ldh a, [$dd]
    ldh a, [$7d]
    cp $a4
    ld a, a
    or $0f
    jp nc, $ed07

    inc bc
    add d
    ld bc, $0093
    inc bc
    nop
    pop bc
    nop
    ld h, b
    add b
    ld [hl], b
    add b
    add e
    db $fc
    ld b, [hl]
    ld sp, hl
    ld a, a
    ret nz

    rst $38
    ret nz

    sub [hl]
    jp hl


    add sp, -$09
    db $f4
    rst $38
    db $f4
    rst $38
    ld [hl], b
    rst $38
    ld a, c
    add [hl]
    add hl, de
    ld b, $74
    dec bc
    ld b, c
    nop
    ld [de], a
    add c
    add sp, $07
    ld a, d
    rlca
    rst $30
    ld [$0035], sp
    ld l, a
    nop
    rst $28
    db $10
    ret nz

    ccf
    ld d, e
    adc b
    sbc b
    ldh [$e9], a
    nop
    ld h, $18
    add hl, bc
    ld b, $39
    nop
    inc bc
    nop
    add e
    nop
    xor c
    nop
    and b
    nop
    ld d, b
    add b
    ld c, d
    db $e4
    add l
    cp $d7
    xor b
    ld a, $c0
    cp a
    nop
    cp $31
    db $fc
    scf
    db $fc
    inc bc
    di
    call c, Call_071_74ff
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    call nc, $edff
    rst $38
    add hl, sp
    rst $38
    db $dd
    rst $38
    cp l
    rst $38
    ei
    rst $38
    or a
    cp $fd
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    dec sp
    ld a, b
    rst $20
    ld a, b
    or a
    ld [hl], b
    cp a
    jr nc, @-$0f

    jr nz, @+$01

    nop
    rst $38
    cp $b9
    cp $f9
    rst $38
    ret c

    rst $38
    rst $18
    rst $38
    cp $ef
    ld a, a
    ld h, d
    rst $38
    db $10
    sbc h
    db $10
    sbc b
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    cp $20
    rst $18
    ld h, h
    sbc e
    inc e
    db $e3
    db $fc
    ld l, a
    rst $38

jr_071_66a5:
    inc a
    cp l
    adc $9c
    rst $38
    cp h
    jp $d1bf


    cp a
    db $dd
    jp $bd00


    ld [bc], a
    xor c
    ld e, $e8
    rra
    inc e
    rst $38
    ld a, h

jr_071_66bb:
    rst $38
    cp [hl]
    ld a, l
    sbc e
    ld a, h
    sbc [hl]
    ld a, h
    sbc e
    ld a, h
    sbc c
    ld a, [hl]
    ret c

    ccf
    sbc e
    ld a, a
    add b
    ld a, a
    sbc l
    ld h, d
    sbc l
    ld h, d
    inc e
    db $e3
    jr c, jr_071_66bb

    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc bc
    rst $38
    inc sp
    rst $08
    sbc l
    ld l, a
    ld e, b
    daa
    adc [hl]
    ld [hl], c
    sbc $31
    rst $00
    jr c, jr_071_66e7

jr_071_66e7:
    rrca
    ld sp, hl
    rlca
    inc bc
    rrca
    and d
    dec e
    add c
    nop
    ld [hl], b
    nop
    sub h

Call_071_66f3:
    nop
    rst $28
    nop
    ld d, b
    add b
    ld [hl], c
    add b
    ld h, c
    ld e, $e6
    jr jr_071_66a5

    ld b, b
    sub c
    ld [$000e], sp
    ld a, [bc]
    ld bc, $0f70
    sub l
    ld l, [hl]
    pop af
    ld c, $ce
    nop
    db $76
    add c
    ld sp, hl
    rlca
    ldh a, [rIF]
    ld sp, $3ece
    ret nz

Jump_071_6718:
    dec e
    ret nz

    or d
    nop
    ld [hl+], a
    nop
    inc bc
    ldh [$ae], a
    ld [hl], c
    ld [hl], b
    rst $38
    inc bc
    db $fc
    jp c, $b000

    rrca
    sbc [hl]
    ld a, a
    add d
    ld a, a
    ld a, b
    add a
    ld e, a
    ccf
    scf
    rra
    ld a, a
    rra
    ld e, a
    rrca
    ld a, a
    rrca
    ccf
    rlca
    and a
    rlca
    adc e
    rlca
    inc bc
    jp Jump_000_03c1


    dec bc
    ld bc, $031d
    add hl, sp
    inc bc
    and l
    nop
    jr jr_071_6751

    pop hl
    rlca
    ld [hl], c

jr_071_6751:
    adc [hl]
    nop
    rst $38
    ld bc, $81fe
    ld a, [hl]
    ldh [$5f], a
    ld hl, sp+$27
    ldh [rIE], a
    rst $38
    ld h, a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $10
    rst $18
    rst $28
    rst $38
    rrca
    rrca
    rst $30
    and [hl]
    db $db
    cp a
    ld a, d
    cp a
    ld a, a
    ld a, a
    cp d

Call_071_6778:
    ld a, a
    cp [hl]
    rst $38
    jr c, jr_071_67fb

    xor l
    ld l, l
    sbc $40
    cp a
    ld a, e
    sbc l
    ld l, a
    sbc a
    ld a, a
    cp $ff
    db $fc
    rst $28
    sbc d
    ld c, a
    ld sp, hl
    nop
    rst $38
    ld a, [hl]
    cp $1c

jr_071_6793:
    cp $1c
    cp $9c
    db $fc
    sbc h
    rst $38
    cp [hl]
    db $fd
    dec d
    ld a, [$fb74]
    ld [hl], a
    ld hl, sp-$69
    ld a, b
    pop af
    ld a, d
    call nz, Call_071_6778
    ld hl, sp+$56
    xor c
    sbc $01
    rra
    nop
    ld [bc], a
    add hl, bc
    dec e
    ld [bc], a
    cp d
    ld bc, $38c1
    add e
    ld hl, sp+$63
    sbc b
    ld h, a
    sbc b
    ld a, [$bc04]
    ld b, d
    sub $00
    rst $28
    db $10
    jr z, @-$27

    ld h, e
    sbc a
    ld h, b
    sbc a
    ld d, b
    adc a
    db $fd
    inc bc
    rst $38
    inc bc
    di
    rrca
    rst $20
    rra
    scf
    rst $18
    ld a, [c]
    db $fd
    ld a, [$3cfd]
    rst $38
    cp [hl]
    ld b, a
    ld l, d
    add a
    ld a, b
    add a
    sbc h
    ld h, e
    inc bc
    db $fc
    ld [hl], l
    ld hl, sp+$72
    db $fc
    db $e3
    db $fc
    inc sp
    call nz, $0340
    ld b, c
    inc bc
    dec bc
    rlca
    ld h, e
    rra
    ld e, a
    sbc a
    inc b

jr_071_67fb:
    rrca
    ld b, $00
    nop
    nop
    ld bc, $4400
    nop
    add b
    nop
    nop
    add b
    add b
    nop
    ld d, b
    nop
    nop
    nop
    ret nz

    nop
    jr jr_071_6793

    ld a, a
    rst $38
    dec l
    sbc $1d
    ld c, $0f
    rrca
    xor e
    rlca
    dec de
    rlca
    db $fd
    inc bc
    inc c
    di
    inc e
    db $e3
    pop hl
    inc bc
    ld sp, hl
    ld b, $42
    cp h
    dec bc
    ldh a, [rVBK]
    or b
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $ed
    rst $38
    rst $00
    rst $38
    sbc $ff
    ei
    rst $38
    ldh [rIE], a
    ld b, e
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    ccf
    rra
    ccf
    ld a, a
    rra
    rra
    rst $38
    cpl
    rst $18
    nop
    rst $08
    adc b
    rst $00
    ld b, b
    rlca
    ld hl, sp+$77
    ld hl, sp-$01
    ret c

    cpl
    db $fc
    db $e3
    cp $71
    db $fc
    ld [hl], e
    db $fc
    ld a, e
    db $fd
    cp $ff
    db $e4
    and $fd
    ldh [$df], a
    ldh a, [$ef]
    ldh a, [$ef]
    ld [c], a
    db $fd
    ld [c], a
    rst $38
    rst $20
    ret c

    rst $20
    rst $18
    rst $20
    rst $18
    rst $08
    or $cf
    ccf
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    cp a
    sbc a
    rst $38
    jr nz, jr_071_6911

    db $10
    ld l, a
    db $10
    rst $28
    ld b, b
    rst $38
    ld b, h
    rst $38
    dec d
    xor $9a
    ld h, l
    inc c
    di
    sbc h
    ld h, e
    ld b, b
    cp a
    ld b, $ff
    ei
    rlca
    add a
    inc bc
    rst $30
    dec bc
    rra
    db $e3
    ld h, a
    add e
    sbc d
    rlca
    add e
    ld c, $ae
    inc de
    rrca
    di
    ld c, a
    di
    sbc e
    ld h, a
    rst $18
    daa
    rst $30
    rrca
    ld [hl], a
    rrca
    sub a
    ld l, a
    rrca
    rst $38
    pop de
    rst $28
    ld d, [hl]
    rst $28
    ld [hl], e
    rst $08
    cp e
    rst $00
    or c
    rst $08
    and l
    rst $18
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    ld h, c
    rst $38
    ldh [rIE], a
    ld a, b
    rst $38
    sub a
    ld a, c
    sbc $21
    dec e
    db $e3
    db $ec
    inc bc
    adc d
    rlca
    ret c

    rlca
    db $fc
    inc bc
    add [hl]
    ld a, c
    jr @+$69

    ret nz

    inc bc
    inc c
    add e
    add hl, bc
    add a
    sbc h
    rst $00
    cp $c7
    rlca
    rst $38
    rla
    rrca
    inc bc
    rrca
    nop
    rrca
    adc [hl]
    rlca
    xor l
    rlca
    rrca
    add a
    rlca
    adc a
    rrca
    rra
    ld a, a
    ccf
    ld c, a
    rst $38
    rst $38

jr_071_6911:
    rst $08
    ld c, a
    sbc a
    rst $08
    rra
    rst $18
    ccf
    ld b, e
    rst $38
    ld h, c
    rst $38
    pop af
    rst $38
    db $e3
    db $fd
    and [hl]
    ld sp, hl
    db $e3
    db $fc
    scf
    ld hl, sp-$41
    ld a, b
    jp c, $be3d

    ld a, l
    call c, Call_071_6e3f
    rra
    add l
    rst $38
    add a
    rst $38
    add [hl]
    rst $38
    adc l
    rst $38
    adc [hl]
    rst $38
    reti


    rst $38
    call c, $9aff
    rst $38
    ld e, h
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    add sp, -$01
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
    and a
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
    ld l, e
    rst $38
    cpl
    rst $38
    cp a
    rst $38
    cp $ff
    rst $38
    rst $38
    ld [hl], e
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    inc de
    rst $28
    sub d
    rst $28
    ld a, [de]
    rst $20
    sub d
    rst $28
    ld a, [bc]
    rst $30
    add d
    rst $38
    ld b, $ff
    ld b, [hl]
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $00
    ccf
    inc bc
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $01ff
    rst $38
    ld hl, $20df
    ld e, a
    adc c
    ld a, a
    ld a, b
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    sub e
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec a
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $30
    adc c
    rst $30
    ld a, e
    rst $30
    inc de
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    jp $c7ff


    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    jp hl


    rst $38
    pop bc
    rst $38
    ret


    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    di
    rst $38
    inc sp
    rst $38
    rst $20
    rra
    rst $20
    rrca
    ld a, a
    add a
    ld c, e
    rst $38
    db $fd
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
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
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
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
    ld h, b
    rst $38
    ldh [rIE], a
    ld sp, hl
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    db $fd
    rst $38
    reti


    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    add l
    rst $38
    add c
    rst $38
    ld hl, $83ff
    rst $38
    inc bc
    rst $38
    daa
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    rst $28
    rst $38
    cp a
    rst $38
    rra
    rst $38
    sbc a
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
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, b
    rst $38
    ccf
    rst $38
    sbc a
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $00
    rst $38
    di
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    db $db
    rst $38
    sub b
    rst $38
    ld bc, $81ff
    rst $38
    cp c
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    push bc
    ei
    add e
    rst $38
    jp $f0ff


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
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ei
    rst $38
    ld sp, hl
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
    add a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    add a
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld h, e
    rst $38
    daa
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    sbc [hl]
    rst $38
    push bc
    rst $38
    or c
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld bc, $51ff
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $38
    rst $38
    add sp, -$01
    ldh a, [rIE]
    ret nz

    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    pop hl
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
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    cp b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    and e
    rst $38
    cp d
    rst $38
    sbc a
    rst $38
    jr @+$01

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
    jr jr_071_6c23

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_071_6c33

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_071_6c43

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_071_6c53

    ld [hl-], a

jr_071_6c23:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_071_6c63

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_071_6c33:
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

Call_071_6c3e:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_071_6c43:
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

jr_071_6c53:
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

jr_071_6c63:
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
    jr jr_071_6d23

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
    jr z, jr_071_6d43

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld [hl+], a
    jr nc, @+$33

jr_071_6d23:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_071_6d64

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_071_6d43:
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

jr_071_6d64:
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
    ld bc, $0701
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    dec b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    ld bc, $0403
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
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

Call_071_6e3f:
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
    cp a
    rst $38
    db $e3
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    cp b
    rst $38
    xor b
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
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $00
    rst $38
    inc bc
    rst $38
    ld bc, $23ff
    rst $38
    add hl, bc
    rst $38
    db $10
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    cpl
    rst $38
    rrca
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
    ld bc, $81ff
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ld e, h
    rst $38
    ld e, b
    rst $38
    jr c, @+$01

    ld c, [hl]
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    cpl

jr_071_6ed5:
    rst $38
    ld d, a

jr_071_6ed7:
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ret c

    rst $38
    ret c

    rst $38
    db $f4
    ei
    ld a, [bc]
    db $fd
    inc b
    rst $38
    xor h
    rst $38
    and h
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rra
    db $e3
    inc de
    rst $28
    and c
    rst $18
    rrca
    di
    rrca
    di
    rrca
    di
    ld a, [bc]
    rst $30
    dec de
    rst $20
    ld [hl], e
    adc a
    ld [hl], b
    adc a
    jr nc, jr_071_6ed5

    jr nc, jr_071_6ed7

    inc b
    rst $38
    ld [$18ff], sp
    rst $38
    db $10
    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, b
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    add a
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    ei
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    ld c, h
    rst $38
    ld d, b
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
    ld [hl], $ff
    ld [hl-], a
    rst $38
    ld h, d
    rst $38
    ld b, [hl]
    rst $38
    ld c, $ff
    inc b
    rst $38
    ld c, h
    rst $38
    sbc c
    rst $38
    db $fc
    rst $38
    and b
    rst $38
    ld l, b
    rst $38
    ld c, b
    rst $38
    ld bc, $00fe
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    adc $ff
    nop
    rst $38
    add hl, de
    rst $38
    dec c
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
    ld a, a
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    pop af
    rst $38
    pop hl
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    and $ff
    call nz, $ccff
    rst $38
    adc h
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    jp Jump_071_73ff


    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    add sp, -$01
    ld [hl], b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    ld b, a
    cp b
    ld c, $f9
    ld d, a
    xor b
    rra
    ldh [$1f], a
    ldh [$bd], a
    ld b, d
    inc a
    jp $c23d


    dec a
    jp nz, $e01f

    ld a, $c1
    sbc [hl]
    pop hl
    sub $e9
    sub [hl]
    jp hl


    add [hl]
    ld sp, hl
    ld d, $e9
    ld e, $e1
    ld d, $e9
    ld c, $f1
    inc hl
    call c, $fd82
    ld b, b
    cp a
    ld [bc], a
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
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
    cp $ff
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
    ld a, a

jr_071_7033:
    rst $38
    cp a
    rst $38
    cp $ff
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
    ld a, [hl]
    rst $38
    ldh [rIE], a
    and b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add sp, -$01
    db $e4
    rst $38
    add sp, -$01
    db $e4
    rst $38
    xor $ff
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    jr c, jr_071_7033

    ld a, [hl]
    add c
    rst $38
    nop
    pop af
    rrca
    ld a, l
    add e
    dec a
    jp $c33c


    inc c
    di
    ld [bc], a
    db $fd
    add c
    rst $38
    ret nc

    rst $38

Jump_071_7080:
    ld h, a
    rst $38
    rst $30
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rra
    rst $38
    inc hl
    rst $38
    pop af
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [$f0ff]
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [c], a
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    ld h, l
    rst $38
    ld l, [hl]
    rst $38
    ld c, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld e, e
    rst $38
    ld d, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    db $10
    rst $38
    ld [$b8f7], sp
    rst $00
    inc a
    jp $c33c


    inc e
    db $e3
    ccf
    ret nz

    inc a
    jp $e39c


    ret c

    rst $20
    db $e4
    ei
    adc l
    di
    set 6, a
    rst $18
    rst $38
    rst $18
    rst $38
    call c, $dcff
    rst $38
    call c, $d8ff
    rst $38
    add b
    rst $38
    sbc c
    cp $c4
    rst $38
    add b
    rst $38
    add b
    rst $38
    add h
    rst $38
    call nz, $c0ff
    rst $38
    pop bc
    cp $c0
    rst $38
    call nc, $deff
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    push af
    cp $fb
    cp $c2
    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ld [$40ff], sp
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    push af
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    inc e
    rst $38
    cpl
    ret nc

    rst $28
    nop
    db $e3
    nop
    ld [hl+], a
    ret nz

    nop
    rst $38
    add sp, -$01
    call z, $c6ff
    rst $38
    jp nz, $e7ff

    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    and c
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    cp b
    rst $38
    jr c, @+$01

    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    ccf
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    db $db
    rst $38
    rst $08
    rst $38
    add l
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
    ld a, b
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    ld a, [hl-]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, l
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
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    add hl, de
    and $6a
    push hl
    set 4, h
    set 4, h
    db $db
    db $e4
    db $db
    db $e4
    db $db
    db $e4
    rst $18
    db $e4
    db $e4
    rst $28
    and $ef
    sub $ef
    rst $30
    rst $28
    ld [hl], a
    rst $28
    and $ff
    reti


    and $37
    ret nz

    rlca

jr_071_71fd:
    ldh a, [rLYC]
    or d

Call_071_7200:
    add hl, bc
    or $00
    rst $38
    jr jr_071_71fd

    add hl, bc
    or $00
    rst $38
    ld c, [hl]
    di
    adc h
    di
    ld h, d
    pop af
    and $f1
    db $ec
    di
    db $fc
    di
    adc h
    di
    ld c, e
    rst $30
    ccf
    rst $30
    rla
    rst $38
    add a
    ld a, a
    cpl
    rst $18
    rra
    rst $28
    ld b, e
    cp a
    add e
    ld a, a
    adc d
    ld a, a
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld b, a
    rst $38
    rrca
    rst $38
    xor a
    ld a, a
    xor a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    db $e3
    ccf
    sub c
    ld a, a
    pop de
    ccf
    pop hl
    rra
    db $eb
    rla
    ld l, c
    sub a
    ld l, d
    sub a
    db $eb
    rla
    ld h, e
    sbc a
    ld h, e
    sbc a
    db $e3
    rra
    jp nc, $f93f

    ld [hl], $f0
    rst $38
    db $f4
    ei
    rst $20
    ldh a, [$fb]
    ldh [$c5], a
    ei
    rst $08
    rst $38
    call z, Call_000_3a3f
    dec b
    adc [hl]
    ld bc, $c138
    ld a, a
    add b
    cp e
    inc b
    rst $28
    nop
    inc c
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    jp nz, $e2ff

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld b, b
    rst $38
    jr nc, @+$01

    jr c, @+$01

    and c

jr_071_728b:
    rst $38
    ld l, b

jr_071_728d:
    rst $38
    cp h

jr_071_728f:
    rst $38
    db $f4
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ld c, $ff
    inc l
    rst $18
    ld b, [hl]
    cp a
    ld b, d
    cp a
    ld h, d
    sbc a
    jr nz, jr_071_728b

    jr nz, jr_071_728d

    jr nz, jr_071_728f

    ld l, h
    sub e
    sub d
    db $fd
    db $f4
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add $ff
    adc l
    rst $38
    add h
    rst $38
    add h
    rst $38

jr_071_72c6:
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
    ld h, d
    cp a
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
    rra
    rst $38
    ret z

    ccf
    rst $00
    jr c, jr_071_72c6

    inc e
    sbc h
    ld h, b
    sbc $20
    ei
    inc b
    jp z, $0234

    db $fc
    ld bc, $09fc
    cp $bf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld sp, $c2ff
    dec a
    rlca
    ld hl, sp+$17
    add sp, $4e
    or b
    inc c
    ldh a, [$27]
    ret c

    inc bc
    db $fc
    ld a, [bc]
    push af
    inc e
    db $e3
    ldh a, [rIF]
    ld b, h
    cp e
    jr c, @+$01

    ld sp, hl
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    db $db
    rst $20
    sub e
    rst $28
    sub e
    rst $28
    ld [bc], a
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld h, a
    rst $38
    xor $ff
    add $ff
    rst $00
    rst $38
    add e
    rst $38
    add e
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    adc l
    rst $38
    adc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $28
    cp l
    jp $837c


    ld sp, hl
    ld b, $44
    cp a
    and b
    rst $38
    call nc, $97e9
    add sp, -$78
    rst $38
    cp d
    ld a, a
    ei
    ld a, a
    ld l, a
    rst $38
    rrca
    rst $38
    cpl
    rst $18
    rla
    rst $28
    and e
    rst $18
    db $db
    db $e4
    ld l, a
    ldh a, [rNR23]
    rst $38
    ld [hl], a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ld bc, $7afe
    db $f4
    ld [hl], h
    ld hl, sp+$79
    cp $3f
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld c, $ff
    ld b, $ff
    nop
    rst $38
    ld bc, $0cfe
    di
    ld bc, $03fe
    db $fc
    inc de
    db $fc
    inc bc
    db $fc
    adc a
    db $fc
    ld sp, hl
    cp $fd
    cp $f7
    cp $fd
    cp $fd
    cp $fc
    rst $38
    sbc $ff
    cp $ff
    cp [hl]
    rst $38
    ld a, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    sbc b
    rst $38
    sub c
    cp $90
    rst $38
    sub b
    rst $38
    ld a, [hl-]
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld de, $10fe
    rst $38
    inc e
    di

jr_071_73cc:
    adc b
    ld [hl], a
    add b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    ld h, c
    rst $38
    ld c, l
    rst $38
    push de
    rst $38
    call c, $deff
    rst $38
    di
    rst $38
    inc bc
    rst $38
    adc e
    ld [hl], a
    cp c
    ld b, a
    xor b
    ld b, a
    inc e
    ld h, e
    ret c

    ld h, $d2
    inc l
    and c
    ld a, h
    cp c
    db $76
    ldh a, [rIE]
    ld sp, hl
    ldh a, [$ef]
    ldh a, [$ef]

jr_071_73f9:
    ldh a, [$e4]
    ei
    add sp, -$09
    ld a, b

Jump_071_73ff:
    rst $20
    jr z, jr_071_73f9

    and $39
    rst $00
    jr c, @-$77

    jr c, jr_071_73cc

    inc a
    jr @-$17

    ld a, e
    rst $00
    ld e, e
    rst $20
    ld a, [hl]
    pop hl
    xor $f1
    cp $f1
    ld a, [c]
    db $fd
    ld a, [$fbfd]
    db $fc
    ei
    db $fc
    ld a, [$5dfd]
    rst $38
    ld a, l
    rst $38
    ld sp, hl
    rst $38
    ldh [rIE], a
    jr z, @+$01

    sbc b
    ld a, a
    jr c, @+$01

    jr c, @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld [$48ff], sp
    rst $38
    dec e
    rst $38
    cp [hl]
    ld a, a
    cp $3f
    sbc a
    ld a, a
    ccf

jr_071_7443:
    cp $38
    cp $c2
    inc a
    add a
    ld a, b
    ld b, d
    db $fc
    ld hl, $e6fc
    jr jr_071_7443

    nop
    ld a, [$7600]

jr_071_7455:
    add b
    ld a, [c]
    add b
    or [hl]
    ret nz

    jr jr_071_7443

    ld c, $f1
    inc [hl]
    jp $8f54


    db $ec
    db $10
    rra
    ldh [$d9], a
    ldh [$d3], a
    db $fc
    jr c, @+$01

    db $fc
    rst $38
    add l
    ld a, a
    inc b
    nop
    jr jr_071_747b

    ld l, [hl]
    inc de
    ld b, $fb
    ld l, h
    di
    ld c, b

jr_071_747b:
    pop af
    dec bc
    ldh a, [rNR13]
    ldh [$0b], a
    ldh a, [rTMA]
    ld sp, hl
    jr nc, jr_071_7455

    ld b, $f8
    pop bc
    ld a, $00
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add h
    ld a, a
    and c
    ld e, [hl]
    pop de
    ld l, $e1
    ld e, $95
    ld l, [hl]
    ret nc

    cpl
    ld b, [hl]
    add hl, sp
    ld [c], a
    dec e
    push hl
    ld a, [de]
    push hl
    sbc d
    di
    inc c
    inc sp
    call z, $ed13
    inc bc
    db $fc
    rst $20
    add hl, de
    rst $20
    sbc c
    pop hl
    ld e, $61
    ld e, $db
    inc h
    inc bc
    db $fc
    inc de
    db $ec
    inc de
    db $ec
    ld d, e
    db $ec
    ld hl, $70fe
    rst $28
    ld d, d
    db $ed
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $38

jr_071_74ca:
    ld b, [hl]
    cp a
    ld b, $ff
    add d
    rst $38
    or l
    adc $d4
    rst $28
    cp l
    adc $ae
    call c, $9867
    ld b, a
    sbc b
    xor a
    ld e, b
    sbc b
    ld a, a
    dec hl
    db $fd
    and [hl]
    ld sp, hl
    ld b, [hl]
    cp c
    rlca

Call_071_74e7:
    cp b
    xor $01
    ld b, $01
    jp nz, $4401

    inc bc
    ld b, a
    add b
    adc l
    ld b, d
    ld c, e
    nop
    pop hl
    ld [bc], a
    add l
    ld h, d
    add hl, bc
    ld a, [c]
    ld a, c
    add d
    ld l, l

Call_071_74ff:
    add d
    ld d, b
    add [hl]
    jr jr_071_74ca

    xor l
    ld b, d
    and c
    ld c, [hl]
    or e
    ld c, h
    ld a, $cd
    adc a
    rst $38
    add a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    ld d, $e2
    ld c, $f2
    dec bc
    or $f9
    or $f1
    cp $e1
    cp $80
    rst $38
    add h
    ei
    ret c

    rst $30
    pop de
    rst $38
    db $fc
    di
    db $fd
    di
    db $fc
    di
    xor $f1
    cp $f1
    db $ec
    di
    rst $20
    ld hl, sp-$0c
    ret z

    ld l, l
    sbc b
    ld l, e
    inc e
    add l
    nop
    add b
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    ld hl, $f200
    nop
    jr nz, jr_071_756c

    add sp, $07
    call z, $bb03
    nop
    ld a, e
    add b
    scf
    ret z

    ld d, $c8
    ld e, l
    add b
    xor e
    nop
    adc [hl]
    nop
    add b
    nop
    ld b, h
    nop
    sbc h
    nop

jr_071_756c:
    daa
    ret nz

    rlca
    ld hl, sp+$00
    nop
    rla
    ldh [$80], a
    rst $38
    pop bc
    cp $04
    ld a, [$9668]
    ld bc, $28ee
    rst $00
    jr c, jr_071_75c9

    ld [hl], b
    add b
    ldh [rP1], a
    stop
    add b
    nop
    ret z

    db $10
    add h
    jr @-$3a

    jr @+$01

    rrca
    rst $38
    add a
    rst $38
    cp a
    rst $28
    pop hl
    pop bc
    ret nz

    add sp, -$32
    inc a
    ld b, $ff
    ld b, [hl]
    ld e, h
    and e
    nop
    rst $38
    rra
    ldh [$3f], a
    ret nz

    ld [hl], b
    add b
    db $e3
    inc bc
    and $06
    rst $28
    rrca
    xor b
    ret nc

    sbc b
    ldh [$30], a
    ret nz

    adc [hl]
    ldh a, [$cc]
    ldh a, [$e7]
    ld hl, sp-$37
    or $de
    rst $28
    add sp, $00
    db $fc
    nop
    xor d
    inc d
    inc d
    adc d
    ld h, c

jr_071_75c9:
    sbc [hl]
    add c
    ld a, [hl]
    ret z

    daa
    ldh a, [$2f]
    add d
    ld a, l
    adc d
    ld a, l
    ld h, $d9
    or [hl]
    ld c, c
    cp d
    ld b, c
    ld b, e
    sbc c
    ld b, l
    sbc e
    dec [hl]
    db $db
    add e
    ld a, a
    ld d, e
    cp a
    ld b, c
    cp a
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    jr z, @+$59

    adc l
    ld d, [hl]
    push bc
    ld d, $09
    sub [hl]
    rrca
    sub [hl]
    ld l, $97
    rrca
    sub a
    ld b, a
    sbc a
    ld [hl], h
    adc a
    sbc a
    nop
    jp nc, $b201

jr_071_7601:
    ld bc, $01aa
    ld a, [$4401]
    dec sp
    call nc, $d83b
    ccf
    cp b
    rst $38
    ld [hl], d
    db $fd
    ld [hl], $f9
    ld [hl-], a
    db $fd
    cp c
    ld [hl], a
    cp [hl]
    ld [hl], c
    sbc l
    ld [hl], d
    sbc b
    ld [hl], a
    ld sp, hl
    scf
    dec hl
    ld a, l
    jr c, @+$7f

    and h
    ld a, c
    ld d, a
    add sp, -$61
    ld h, b
    sbc a
    ld h, b
    rra
    ldh [$3b], a
    call nz, $c936
    jr nc, jr_071_7601

    ld [hl], $cf
    ld [hl-], a
    rst $08
    ld e, h
    add e
    ld h, l
    add b
    db $10
    add b
    add b
    nop
    ld a, d
    nop
    adc h
    inc de
    ld sp, $0206
    inc e
    rra
    ld b, $d2
    rlca
    ret nz

    rlca
    ldh a, [rTAC]
    ld a, a
    nop
    ld b, [hl]
    jr c, jr_071_769e

    ld [hl], $07
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ld e, a
    ccf
    inc hl
    rra
    inc l
    inc bc
    ld b, a
    nop
    ld a, [$7c01]
    inc bc
    jr nz, jr_071_7687

    ld [hl], d
    rrca
    ret nz

    rra
    xor h
    ld b, e
    sbc $21
    ret nz

    ccf
    rst $00
    jr c, jr_071_76bc

    cp b
    rst $28
    db $10
    ld h, a
    jr jr_071_76a2

    jr jr_071_76e2

    ld a, [de]
    ld h, l
    ld a, [de]
    ret nz

    ccf
    ld bc, $017e
    ld a, $63

jr_071_7687:
    inc e
    jr nz, jr_071_76a6

    ld b, a
    jr c, @-$1c

    ld [hl], c
    ld c, e
    rlca
    ld a, b
    rrca
    add h
    ld a, b
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    sbc d
    ld bc, $0fc9

jr_071_769e:
    call nz, $8001
    ld b, e

jr_071_76a2:
    or b
    ld [hl], b
    ld e, $d6

jr_071_76a6:
    dec [hl]
    ld h, c
    jr nz, jr_071_76b1

    ld e, b
    ld b, a
    jr nc, jr_071_76e5

    ld hl, sp-$09
    rla

jr_071_76b1:
    rrca
    inc sp
    rrca
    inc sp
    rrca
    ld hl, $011f
    rra
    ld h, e
    rra

jr_071_76bc:
    and e
    ld e, a
    rlca
    rst $38
    rrca
    nop
    ld d, a
    ld [$0c33], sp
    jr nc, @+$11

    ld h, b
    rra
    pop hl
    rra
    pop hl
    rra
    db $fc
    ld a, a
    ld a, a
    inc c
    ld [hl], a
    rrca
    ldh a, [$8f]
    ldh a, [$8f]
    di
    adc a
    or b
    rst $08
    or b
    rst $08
    jr nc, jr_071_772f

    cp c
    rst $08

jr_071_76e2:
    jr c, @+$51

    or b

jr_071_76e5:
    rst $08
    jr nc, jr_071_7737

    ld [hl], b
    rrca
    rst $30
    adc a
    push af
    adc a
    db $fd
    adc a
    ldh a, [$8f]
    pop af
    adc a
    ld [hl], b
    rrca
    and h
    rst $18
    ldh [$df], a
    inc b
    ccf
    ld l, h
    ld e, a
    db $ec
    rst $18
    ld b, l
    ld a, a

jr_071_7702:
    ld c, l
    ld a, a
    call z, Call_071_4cff
    ld a, a
    inc c
    ccf
    dec c
    ccf
    ld c, e
    ld a, a
    cpl
    ccf
    dec c
    ccf
    rrca
    ccf
    rra
    ccf
    cpl
    ccf
    rrca
    ccf
    cpl
    ccf
    xor a
    cp a
    ccf
    ccf
    cp a
    cp a
    cp h
    cp a
    cp b
    cp a
    jr c, jr_071_7767

    ld [hl-], a
    ld a, $2c
    inc a
    nop
    nop
    nop

jr_071_772f:
    nop
    and b
    nop
    ld bc, $cdc0
    add b
    inc bc

jr_071_7737:
    add b
    inc e
    nop
    add hl, bc
    nop
    ld b, $01

jr_071_773e:
    ld b, $01
    jr nz, jr_071_7702

    ld [de], a
    ld hl, sp-$50
    ld c, b
    add b
    nop
    ld [hl], c
    nop
    db $e4
    jr jr_071_773e

    ld c, $fc
    inc bc
    db $fc
    inc bc
    ld a, d
    dec b
    sbc c
    and $f1
    cp $e1
    cp $81
    cp $a1
    cp $61
    cp $81
    ld a, [hl]
    ldh [$1f], a
    ld [bc], a
    rst $38
    sbc a

jr_071_7767:
    ldh [$7f], a
    add b
    rst $38

jr_071_776b:
    nop
    ld sp, hl
    ld b, $78
    add a
    or $0f
    ld [hl], c
    ld c, $b1
    rlca
    jp $fa03


    ld bc, $00f5
    dec sp
    nop
    db $fd
    ld [bc], a
    and $18
    ldh [rNR32], a
    ldh [rNR34], a
    add sp, $10
    ld hl, sp+$00
    ld l, b
    sub b
    and d
    call c, $f8f8
    or h
    ld a, b
    inc [hl]
    inc c
    inc e
    inc b
    inc [hl]
    rrca
    ld c, b
    ccf
    inc h
    ld hl, sp+$14
    db $e3
    ld c, b
    add b
    rst $38
    cp a
    rst $38
    cp $ff
    cp $ff
    set 3, b
    ld h, a
    pop hl
    sbc $ff
    ld c, a
    cp a
    ld a, a
    cp l
    ld l, d
    adc a
    ld a, l
    adc $b5
    adc $b1
    pop bc
    cp [hl]
    and e
    call c, Call_000_1de2
    ret nz

    ccf
    jp $833f


    ld a, a
    adc a
    ld [hl], e
    ld a, [bc]
    rst $30
    sbc d
    rst $20
    ld de, $31ee
    adc $01
    cp $18
    jr jr_071_776b

    ld a, b
    ld hl, sp-$08
    inc a
    db $fc
    inc b
    db $fc
    and h
    call c, $dce4
    call nz, $c6fc
    cp $cf
    rst $38
    ld b, l
    db $fd
    ld e, l
    db $fd
    ld c, [hl]
    cp $ea
    sbc $ea
    sbc $f7
    rst $08
    ld a, [$f8ca]
    ret z

    ld hl, sp-$38
    ld a, b
    ret z

    ld a, d
    jp z, $cbbb

    ld sp, $b1c9
    ret


    and b
    ret c

    ldh a, [$c8]
    add sp, -$28
    jp hl


    reti


    db $db
    db $eb
    jp z, $ccfa

    db $fc
    ret z

    ld hl, sp-$40
    ld hl, sp-$37

jr_071_7813:
    ld sp, hl
    ret


    ld sp, hl
    ret z

    ld hl, sp-$28
    ld hl, sp-$38
    ld hl, sp-$22
    cp $db
    ei
    ld hl, sp-$03
    ld hl, sp-$04
    ldh [$fc], a
    ldh [$fc], a
    nop
    db $f4
    nop
    cp b
    nop
    jr nc, jr_071_782f

jr_071_782f:
    call nz, Call_000_018e
    jr c, jr_071_7839

    xor $11
    ld bc, $4000

jr_071_7839:
    nop
    ld h, b
    nop
    jr nz, @-$3e

    ld [$9480], sp
    ld a, a
    ld b, a
    ccf
    ld l, $1f
    inc d
    rrca
    ld d, l
    ld [bc], a
    jr nc, jr_071_784c

jr_071_784c:
    jr nc, jr_071_7856

    adc a
    db $10
    xor [hl]
    db $10
    ld c, $90
    xor $00

jr_071_7856:
    ldh a, [rP1]
    ldh [rP1], a
    call nz, Call_071_7200
    nop
    ret nc

jr_071_785f:
    nop
    and $19
    ld [hl], l
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    pop bc
    ccf
    and e
    ld e, h
    rlca
    ld hl, sp+$1b
    db $e4
    db $f4

jr_071_7871:
    nop
    ld [$e300], a
    ldh a, [rNR51]
    ld a, [c]
    jr nz, jr_071_7871

    sub h
    ld a, a
    ld a, e
    inc e
    ld l, e
    inc e
    inc bc
    inc a
    jp hl


    inc d
    add hl, bc
    db $10
    ld [de], a
    nop
    nop
    nop
    dec h
    jr jr_071_7813

    nop
    nop
    nop
    ld h, h
    nop
    dec bc
    nop
    ld b, d
    nop
    ld l, a
    add b
    dec b
    and b
    cp e

jr_071_789b:
    nop
    db $db
    add b
    ccf
    nop
    rst $38
    sbc [hl]
    rst $38
    ret z

    ei
    add l
    pop hl
    sbc [hl]
    inc hl
    call c, Call_071_7cf3
    ldh a, [$7f]
    ldh [$5f], a
    cp c
    ld a, [hl]
    add a
    ld a, b
    ld hl, $61c0
    rst $18
    adc h
    ld a, a
    push de
    cpl
    ld b, a
    cp b
    ld [$48e0], sp
    and b
    add c
    ldh [$1f], a
    ldh [$32], a
    add b
    ld h, a
    add b
    ld d, $80
    sbc l
    nop
    ld a, d
    inc b
    add l
    ld a, d
    jr jr_071_789b

    ld d, b
    adc a
    jr c, jr_071_785f

    db $10
    rrca
    jr jr_071_78e3

    jr z, jr_071_78f5

    db $ec
    inc de
    sub b
    rrca
    add hl, sp

jr_071_78e3:
    nop
    ld a, c
    nop
    ld a, d
    ld bc, $116e
    add $39
    ld c, $f1
    xor $f1
    jr nz, @+$01

    xor b
    ld [hl], a
    adc e

jr_071_78f5:
    ld [hl], h
    ld a, a
    add b
    reti


    nop
    jr nz, jr_071_78fc

jr_071_78fc:
    reti


    jr nz, jr_071_78ff

jr_071_78ff:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    jp $e0e3


    db $76
    jr nc, @-$43

    jr jr_071_7983

    add hl, bc
    db $10
    rst $28
    nop
    rst $38
    cp [hl]
    ld a, a
    ld a, d
    ccf
    ret nz

    ccf
    ld b, c
    cp a
    jr @+$01

    ld c, a
    ldh a, [$2c]
    di
    ld [$08f7], sp
    rst $30
    ret z

    scf
    adc b
    ld [hl], a
    dec c
    di
    add $39
    ld l, $11
    push hl
    inc bc
    and b
    nop
    rst $00
    nop
    sub [hl]
    ld sp, hl
    db $f4
    rst $38
    nop
    ld a, a
    dec d
    ld h, b
    sbc [hl]
    ld h, b
    ld b, a
    jr c, jr_071_7957

    pop hl
    ld e, b
    and b
    pop af
    nop
    ld h, a
    nop
    ld b, c

jr_071_7949:
    nop
    add c
    nop
    add b
    nop
    ld b, $00
    ld b, $00
    rrca
    ld b, $30
    rlca
    ld [hl], e

jr_071_7957:
    inc c
    ld c, a
    inc a
    rla
    db $fc
    adc e
    ld a, h
    and d
    ld e, l
    ld c, $f0
    db $fc
    ldh a, [$f9]
    ldh a, [$ce]
    pop af
    or b
    ret nz

    ld b, d
    add b
    ld b, h
    add e
    ld e, b
    and a
    ld b, c
    nop
    cp $00
    call nz, $073f
    rst $38
    jr nc, jr_071_7949

    ld h, a
    add b
    di
    inc c
    xor l
    ld e, $e1
    sbc $e0

jr_071_7983:
    rst $38
    ldh a, [rIF]
    rst $38
    ld c, c
    rst $38
    rst $38
    rst $38
    ret c

    ld sp, hl
    ld b, [hl]
    rst $38
    ld e, a
    db $fd
    ccf
    rst $38
    ld hl, sp-$01
    adc [hl]
    adc a
    ld [hl], e
    xor a
    ld d, e
    sub a
    ld l, e
    sub e
    ld a, l
    jp Jump_071_433c


    inc a
    jr z, jr_071_79a4

jr_071_79a4:
    inc sp
    nop
    sub b
    jr nz, jr_071_7a14

    inc b
    ld a, [de]
    rlca
    ld [hl], b
    adc [hl]
    ld d, b
    rrca
    db $f4
    inc bc
    ld e, h
    and e
    ld c, $f1
    add $f9
    ld c, b
    rst $30
    inc l
    ld a, [c]
    ld [hl-], a
    nop
    ld h, [hl]
    nop
    ret nz

    inc b
    ld b, h
    add b
    db $f4
    nop
    ld d, b
    nop
    ld b, c
    nop
    and d
    nop
    ldh a, [rP1]
    adc l
    nop
    ret nz

    ccf
    or b
    ld c, [hl]
    ld c, b

jr_071_79d5:
    add b
    call z, $8600
    nop
    add [hl]
    nop
    and b
    nop
    add b
    nop
    add h
    inc bc
    adc e
    nop
    inc c
    add e
    ld a, h
    add e
    ld d, l
    xor e
    ld b, l
    cp e
    ld b, a
    cp c
    ld bc, $01ff
    rst $38
    adc h
    ld [hl], e
    ld a, l
    add e
    ld a, $c1
    push de
    nop
    ld h, b
    nop
    adc h
    ld [hl], c
    ld hl, $34c0
    ret z

    ccf
    ret nz

    daa
    ret nz

    ld de, $b0e0
    ld b, b
    dec [hl]
    ret nz

    jr c, jr_071_79d5

    jr c, @-$37

    ld [hl], $c1
    inc e
    db $e3

jr_071_7a14:
    adc a
    ldh a, [$2f]
    ldh a, [rDMA]
    ld sp, hl
    ret nz

    rst $38
    ld bc, $49ff
    rst $30

jr_071_7a20:
    db $eb
    push de
    rla
    jp hl


    ld [hl], e
    call $ff41
    pop bc
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld [hl], h
    ei
    ld [hl], $c9
    ld l, a
    nop
    ld c, [hl]
    ld hl, $00af
    add hl, bc
    ret nz

    ld d, l
    jr z, jr_071_7aac

    ld e, $cd
    ld a, $ec
    rra
    db $76
    add hl, de
    jr c, jr_071_7a5d

    xor l
    db $10
    add c
    nop
    add $00
    and $00
    rra
    nop
    ld [bc], a
    nop
    call z, Call_071_4501
    ld a, [$42a4]
    add sp, $06
    db $e4
    rra
    and a

jr_071_7a5d:
    ld a, b
    jr nz, jr_071_7a20

    ld a, [bc]
    nop
    ld h, e
    rra
    ld c, a
    cp a
    or d
    ld a, a
    ld h, b
    ld a, a
    ld hl, sp+$7f
    ld d, a
    cp b
    ld [hl], a
    ld hl, sp+$47
    ccf
    add a
    ld a, a
    ld l, $f1
    xor h
    ret nz

    and l
    nop
    ld [$df00], a
    nop
    rst $28
    nop
    db $fc
    inc bc
    jp nz, $c03d

    ccf
    db $ec
    sub e
    db $fc
    set 7, [hl]
    db $fd
    ccf
    sbc $b0
    rst $08
    add b
    rst $38
    ret nc

    xor a
    ld sp, hl
    add $ff
    xor a
    rst $38
    ld c, $bf
    rst $08
    sbc a
    rst $20
    add a
    ld a, [hl]
    ld [hl], c
    ld a, $83
    ccf
    adc l
    inc bc
    ld c, b
    rlca
    db $10
    rst $28
    ld [hl-], a
    ret z

jr_071_7aac:
    ldh [$08], a
    ld h, c
    adc b
    sub a
    add sp, $34
    rst $08
    ld bc, $00ff
    rst $38
    add sp, $17
    ld de, $8400

jr_071_7abd:
    nop
    sub $01
    adc d
    dec b
    and l
    jr @+$01

    nop
    add b
    nop
    add c
    nop
    xor l
    nop
    ld bc, $4982
    add h
    sub l
    ld h, b
    ld d, a
    jr nz, jr_071_7b0e

    nop
    ld [de], a
    ld bc, $01f2
    sub a
    ld bc, $132c
    call c, Call_071_5423
    and c
    ccf
    add b
    ld a, $80
    ld a, l
    add b
    cpl
    ret nc

    jr nc, @-$2f

    jr nc, jr_071_7abd

    or b
    rst $08
    add b
    rst $38
    ld [de], a
    db $ed
    db $10
    rst $28
    nop
    rst $38
    ld a, [$b107]
    ld c, a
    adc h
    ld [hl], e
    xor $11
    add $39
    ld a, [de]
    push hl
    ld l, $d1
    xor $11
    ret nz

    ccf
    pop bc
    ld a, $08
    rst $30

jr_071_7b0e:
    ld [hl+], a
    rst $18
    ld bc, $82ff
    ld a, l
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    db $fc
    inc bc
    ld a, [hl-]
    push bc
    ret nz

    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    ld c, l
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
    db $eb
    rst $38
    dec h
    rst $18
    ld [hl], b
    adc a
    ld [hl], e
    adc h
    ld a, l
    add d
    add hl, hl
    add [hl]
    adc b
    rra

jr_071_7b3c:
    cpl
    db $10
    rst $38
    nop
    rrca

jr_071_7b41:
    ldh a, [$6f]
    or b
    ld c, $f0
    ld h, b
    rra
    db $e3
    rra
    ld c, c
    scf
    jp Jump_000_233f


    ret nz

    inc e
    ldh [rLCDC], a
    add b
    ld [$7f07], sp
    rrca
    ld e, h
    ccf
    db $e3
    db $fc
    add b
    nop
    ld a, $00
    add hl, sp
    nop
    ld a, $c1
    ret nz

    rst $38
    sub e
    rst $38
    inc de
    rst $38
    cp $01
    ld a, [$f705]
    ld [$f0ef], sp
    db $eb
    ldh a, [$6f]
    ldh a, [$df]
    jr nc, jr_071_7b41

    ccf
    add $39
    add c
    ld h, b
    ld a, [hl-]
    ret nz

    ld [hl], b
    adc a
    inc bc
    db $fc
    ld [bc], a
    db $fc
    dec c
    ld a, [c]
    ld b, h
    ldh [rP1], a
    ldh [$80], a
    ld b, b
    scf
    ret nz

    db $eb
    ldh a, [$9d]
    ld [c], a
    db $ed
    nop
    ld [hl], a
    ld [$1822], sp
    ld h, b
    jr jr_071_7b3c

    nop
    ld [hl], h
    ld [$1ce2], sp
    add sp, -$09
    db $fc
    rst $38
    ld l, h
    rst $38
    inc [hl]
    rst $08
    nop
    rrca
    jr jr_071_7bae

jr_071_7bae:
    ret c

    rlca
    ld h, c
    ld e, $40
    cp a
    sbc $ff
    dec c
    cp $86
    ld a, a
    cp b
    ld b, a
    ld a, [hl]
    add c
    ld a, h
    add e
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], b
    rst $38
    ld h, a
    ld hl, sp+$5f
    ldh [$2e], a
    ret nz

    cpl
    ret nz

    ret nz

    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld l, b
    rst $38
    rst $28
    rst $38
    ld a, h
    add e
    ld e, $e1
    ld c, $f1
    sub a
    ld l, c
    or [hl]
    ld c, c
    ld [hl], $c9
    ret nz

    rst $38
    and e
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld bc, $09ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $09ff
    rst $30
    add c
    rst $38
    ld [bc], a
    rst $38
    ld a, [de]
    rst $20
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld e, a
    cp a
    ld e, $ff
    ccf
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
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
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld h, b
    rst $38
    ld l, h
    rst $38
    dec c
    rst $38
    db $e4
    ei
    ldh [$1f], a
    ld d, c
    ld l, $ee
    rra
    sbc $3f
    dec a
    cp $e5
    ld e, $f1
    ld [$023d], sp
    ld l, a
    rra
    pop de
    ld a, $41
    db $fc
    cp l
    ret nz

    or h
    ret nz

    add b
    ldh a, [rSC]
    pop af
    ld hl, sp+$07
    call Call_071_6c3e
    sub b
    rst $20
    ld hl, sp-$06
    db $fc
    ccf
    ld hl, sp+$5a
    dec a
    sub a
    ld a, b
    cp a
    ld [hl], b
    inc hl
    db $fc
    ldh [rIE], a
    ld a, [c]
    rst $38
    ld a, [c]

jr_071_7c69:
    rst $38
    jr c, @+$01

    ret nc

    ccf
    add hl, de
    cp $c1
    ld b, $28
    jp Jump_000_04f3


    db $fc
    ld b, $3c
    add $0d
    or $88

jr_071_7c7d:
    db $76
    halt
    ld b, e
    ldh a, [$b0]
    ld b, b
    db $f4
    ld [$1866], sp
    ldh a, [$0c]
    ld [c], a
    inc e
    ld [hl], b
    inc c
    sub [hl]

jr_071_7c8f:
    ld [$384c], sp
    add b
    ld a, b
    adc b
    db $10
    adc b
    db $10
    ld b, b
    jr jr_071_7c8f

    jr jr_071_7c7d

    db $10
    ld [hl+], a
    ld de, $104b
    jp nc, $7001

    add c
    jr nz, jr_071_7c69

    jr nz, @-$3d

    ld [bc], a
    pop hl
    add e
    ld [hl], c
    db $eb
    ld de, $1962
    rst $30
    add hl, de
    ld b, e
    or l
    pop hl
    ld de, $c130
    add hl, hl
    ret nz

    ld a, b
    add b
    sub l
    ldh [$f4], a
    ldh [$ee], a
    ldh a, [$08]
    or $8c
    ld [hl], a
    ld [c], a
    dec e
    ld [c], a
    dec e
    add $3d

jr_071_7cce:
    xor e
    ld d, h
    dec c
    cp $3a
    rst $38
    add b
    rst $38
    ld a, [$f885]
    add a
    pop af
    adc [hl]
    add l
    cp $47
    cp $80
    rst $38
    add c
    rst $38
    add hl, bc
    rst $30
    sub l
    ld l, e
    ld sp, hl
    rlca
    add hl, sp
    rst $00
    inc bc
    rst $38
    rst $30
    rst $38
    add b
    rst $38
    add e

Call_071_7cf3:
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_071_7cff:
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld a, c
    rst $38
    ld [hl], c
    rst $38
    inc bc
    rst $38
    ld a, e
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld h, c
    rst $38
    rst $00
    rst $38
    ld c, $ff
    sbc [hl]
    ld a, a
    ld b, c
    rst $38
    ld b, e
    cp a
    ld h, b
    sbc a
    rst $00
    jr c, jr_071_7cce

    add sp, $6a
    sub c
    push af
    ld [bc], a
    jp c, $9804

    inc b
    call nz, $9b03
    rst $20
    and a
    ld a, a
    or e
    rrca
    adc c
    rlca
    ld [hl+], a
    ld bc, $00f9
    ld [hl], b
    adc a
    add d
    ld bc, $0106
    sbc [hl]
    ld bc, $01ee
    rlc b
    ld d, a
    nop
    dec a
    jp nz, $0ff0

    ld hl, sp+$07
    rst $38
    nop
    ccf
    ret nz

    inc a
    jp $ef10


    dec de
    db $e4
    ccf
    ret nz

    rst $38
    nop
    ld b, [hl]
    inc c
    adc h
    ld b, $bc
    ld b, $3a
    ld b, $bb
    ld b, $9a
    rlca
    sbc d
    rlca
    ld [bc], a
    rra
    add b
    rra
    rlca
    add hl, de
    ld a, [bc]
    dec e
    rrca
    inc e
    ld a, [bc]
    inc e
    ld [$2a1e], sp
    inc e
    ld bc, $181c
    inc e
    ccf
    inc e
    add hl, sp
    ld e, $f9
    ld e, $05
    ld a, $ae
    rra
    xor d
    rra
    ld [hl+], a
    rra
    ld h, b
    rra
    or e
    ld c, h
    ld [de], a
    db $ed
    ld d, b
    rst $28
    and b
    rst $38
    and e
    db $fc
    and h
    ld a, [$f09f]
    adc a
    ldh a, [$08]
    db $f4
    sub [hl]
    ldh a, [$88]
    ldh a, [$ae]
    ret nz

    call z, $c080
    sub b
    dec b
    add b
    adc c
    nop
    ld a, [de]
    ld bc, $0106
    ld h, $01
    jr z, jr_071_7dd1

    ret z

    rlca
    ld d, e
    adc a
    ld a, [de]
    rlca
    jp hl


jr_071_7dd1:
    rlca
    ld [$8c07], a
    inc hl
    db $dd
    inc hl
    ld b, d
    cp a
    rst $00
    ld a, $e2
    rra
    xor b
    ld e, a
    and l
    ld e, [hl]
    inc de
    db $fc
    ld bc, $1dfe
    ld [c], a
    ld d, h
    add sp, -$38
    ldh a, [$82]
    ldh a, [$a0]
    ret nc

    dec hl
    ret nc

    ld a, $c0
    inc e
    ldh [rNR14], a
    ldh [$88], a
    ldh a, [$8d]
    ldh a, [$0d]
    ldh [$2d], a
    ret nz

    ld a, c
    ret nz

    scf
    ret z

    ld l, a
    add b
    dec sp
    call nz, $c0be
    adc [hl]
    ldh a, [$80]
    ld hl, sp-$7b
    ld hl, sp-$7a
    ld hl, sp-$6f
    cp $b4
    rst $18
    cp h
    rst $18
    ld a, [hl]
    rst $18
    xor $df
    xor l
    sbc $85
    cp $8b
    db $fc
    sbc h
    db $ed
    sub b
    db $ed
    sbc h
    pop hl
    xor a
    pop de
    and l
    db $db
    sbc l
    jp $c33c


    sub e
    adc $35
    jp z, Jump_071_619e

    sbc [hl]
    ld h, c
    and a
    ld d, b
    sub a
    ld b, b
    cp l
    ld b, d
    add l
    ld a, d
    dec a
    jp nz, $cdb2

    sub e
    call z, $ccf3
    rst $08
    db $f4
    call $c9f6
    or $71
    cp $dd
    ld [c], a
    ld a, d
    add a
    inc de
    adc a
    add b
    ld a, a
    ldh a, [rIF]
    ld h, b
    rra
    inc e
    rst $38
    ld a, [c]
    rst $38
    ld h, c
    cp $cc
    inc sp
    ld [bc], a
    db $fd
    add b
    rst $38
    ld e, a
    cp a
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    dec de
    rst $38
    adc e
    ld a, a
    adc a
    ld a, a
    rst $00
    ccf
    pop bc
    ccf
    call nz, Call_000_263f
    rra
    ld h, a
    rra
    db $76
    rrca
    or [hl]
    rrca
    sub a
    ld c, $15
    adc [hl]
    inc de
    adc h
    inc de
    adc h
    rra
    add b
    ld l, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    sbc [hl]
    ld h, c
    cp $61
    ld l, $f1
    ld c, $f1
    call c, $b833
    rla
    pop bc
    ld e, $1b
    ld e, h
    db $eb
    inc e
    sub d
    dec l
    ld a, [de]
    dec h
    dec bc
    inc [hl]
    ccf
    inc d
    ld h, c
    ld e, $e1
    ld e, $54
    dec hl
    ld b, h
    dec sp
    call z, $883b
    ld a, a
    sbc b
    ld a, a
    add hl, de
    rst $38
    ld sp, $11ff
    rst $38
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    add hl, de
    rst $38
    inc d
    ei
    inc c
    di
    sbc h
    ld h, e
    cp b
    ld b, a
    cp h
    ld b, e
    ldh [$1f], a
    ld hl, sp+$0f

jr_071_7eda:
    ei
    inc c
    srl h
    sbc e
    ld a, h
    db $eb
    inc e
    sbc e
    ld l, h
    sbc b
    ld l, a
    adc b
    ld a, a
    ld [$6a7f], sp
    rra
    ld e, l
    dec bc
    ld [hl], l
    dec bc
    jp hl


    rrca
    ld sp, hl
    rrca
    ld e, b
    rrca
    db $ed
    ld a, [de]
    ld l, l
    ld a, [de]
    ld a, [c]
    add hl, bc
    or $09
    ld h, d
    add hl, de
    ld c, a
    db $10
    ld h, a
    jr jr_071_7f6c

    jr jr_071_7f6e

    jr jr_071_7eda

    ld c, $b1
    ld c, [hl]
    pop af
    ld c, [hl]
    or b
    ld c, a
    ld a, h
    adc a
    sub b
    rst $28
    xor b
    rst $38
    sub d
    db $fd
    sub [hl]
    ld sp, hl
    ld b, l
    ld a, [$ff42]
    ld h, a
    rst $18
    rra
    rst $38
    rla
    rst $38
    adc a
    rst $38
    xor c
    rst $18
    sub e
    rst $28
    sbc l
    db $e3
    xor l
    db $d3
    and l
    db $db
    and l
    db $db
    ld h, c
    rst $18
    ld d, c
    rst $28
    ld c, c
    rst $30
    ld hl, $a1ff
    ld a, a
    push hl
    ld a, a
    ld [hl], c
    cp a
    ld e, c
    cp a
    dec e
    rst $38
    ccf
    rst $18
    db $eb
    sbc a
    ld l, e
    sbc a
    ld l, b
    sbc a
    jp hl


    rra
    jp hl


    rra
    add sp, $1f
    ld l, b
    sbc a
    ld l, b
    sbc a
    ret


    ccf
    call z, $c93b
    ccf
    ld c, c
    cp a
    ld c, c
    cp a
    adc l
    rst $38
    call $fdff
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38

jr_071_7f6c:
    ld hl, sp-$01

jr_071_7f6e:
    ret c

    rst $38
    ld a, d
    add a
    ld a, [hl-]
    rst $00
    inc a
    jp $c33c


    dec a
    jp $c33d


    dec a
    jp $c13f


    ld a, $c1
    ld a, $c1
    cp [hl]
    ld b, c
    cp h
    ld b, e
    cp [hl]
    ld b, c
    cp h
    ld b, e
    or h
    ld c, e
    push de
    dec hl
    pop de
    cpl
    ret


    scf
    swap a
    push bc
    dec sp
    push bc
    dec sp
    push bc
    dec sp
    push af
    dec sp
    ld d, b
    cp a
    ld b, c
    cp a
    db $db
    cp a
    rrca
    rst $38
    cpl
    rst $18
    ld l, a
    rst $18
    rst $08
    ld a, a
    add a
    ld a, a
    rlca
    rst $38
    ld d, e
    xor a
    ld bc, $00ff
    rst $38
    ld bc, $2fff
    rst $38
    ld b, l
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    jr nc, @+$01

    or b
    rst $38
    and b
    rst $38
    jr nz, @+$01

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
    ld [bc], a
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    inc bc
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc e
    rst $38
