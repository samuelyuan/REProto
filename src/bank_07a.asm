SECTION "ROM Bank $07a", ROMX[$4000], BANK[$7a]

    or h
    ld c, e
    ldh a, [rIF]
    ld e, b
    and a
    ld [hl], h
    adc e
    add sp, $17
    cp h
    ld b, e
    cp [hl]
    ld b, c
    ld e, [hl]
    and c
    sbc $21
    jp z, $ee35

    ld de, $906f
    rst $28
    db $10
    or a
    ld c, b
    db $db
    inc h
    cp $01
    db $fd
    ld [bc], a
    ld a, l
    add d
    push de
    xor d
    ld a, [hl-]
    push bc
    ld a, [hl-]
    push bc
    inc e
    db $e3
    db $dd
    ld [hl+], a
    ld d, l
    ld a, [hl+]
    xor a
    ld d, b
    ld c, [hl]
    or c
    rst $10
    db $28, $b7
    ld c, b

jr_07a_4038:
    di
    inc c
    ld e, e
    and h
    db $fd
    add d
    ld l, c
    sub $7c
    jp $e13e


    xor [hl]
    ld [hl], c
    sbc a
    ld [hl], b
    db $dd
    ld [hl-], a
    rst $08
    jr c, jr_07a_4038

    inc e
    ld l, $d5
    pop af
    ld c, $a7
    ld e, d
    and b
    ld e, a
    or e
    ld c, l
    xor h
    ld d, e
    ld d, h
    xor e
    sbc $a1
    ld l, a
    ret nc

    ld c, l
    ld [c], a
    ld sp, $22e2

jr_07a_4065:
    push af
    ld a, [de]
    pop af
    jr jr_07a_4065

    dec bc
    db $fc
    rlca
    db $fc
    rlca
    cp $82
    rst $38
    ld b, c
    rst $38
    ld bc, $80ff
    ld a, a
    ld b, b
    cp a
    ld b, b
    cp a
    jr nz, @-$1f

    db $10
    rst $28
    ld c, b
    or a
    ld h, b
    sbc a
    and h
    db $db
    sub d
    db $ed
    ret z

    rst $30
    ret z

    rst $30
    ld a, [c]
    db $fd
    pop af
    cp $f9
    cp $fd
    cp $dc
    rst $38
    ld c, [hl]
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    pop hl
    rst $18
    ld d, c
    rst $28
    ld bc, $80ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    add d
    db $fd
    nop
    rst $38
    inc bc
    db $fc
    inc d
    db $eb
    inc e
    ldh [$e0], a
    nop
    ld a, [c]
    nop
    db $fd
    nop
    db $fc
    inc bc
    di
    inc c
    rst $38
    nop
    rst $30
    ld [$46b9], sp
    ld sp, $01ce
    cp $08
    rst $30
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
    add b
    add b
    add b

jr_07a_40e6:
    add b
    ret nz

jr_07a_40e8:
    add b
    jp nz, $c2c0

    ret nz

    ld [c], a
    ret nz

    pop hl
    ld h, b
    pop hl
    ld h, b
    pop af
    jr nz, jr_07a_40e6

jr_07a_40f6:
    jr nc, jr_07a_40e8

    or b
    ld [hl], b
    sub b
    ld a, b

jr_07a_40fc:
    jr jr_07a_40f6

    jr jr_07a_40fc

    inc l
    call c, $fc0c
    sub h
    xor $ae
    cp $fe

jr_07a_4109:
    cp $46
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    ld sp, $03ef
    rst $38
    ld bc, $00ff

jr_07a_4119:
    rst $38
    db $10
    rst $38
    sbc b
    ld a, a
    sbc d
    ld a, a
    add $3f
    ld d, [hl]
    cp a
    inc l
    rst $18
    and d
    ld e, a
    and d
    ld e, a
    ld d, e
    xor a
    ld d, c
    xor a
    add hl, hl
    rst $10
    jr z, jr_07a_4109

    ld [$12f7], sp
    rst $28
    ld b, $fb
    add l
    ld a, e
    add b
    ld a, a
    xor h
    ld e, e
    call nz, $c03b
    ccf
    ldh [$1f], a
    ld h, c
    sbc a
    ld [hl-], a
    rst $08
    jr nc, jr_07a_4119

    and c
    ld e, a
    nop
    rst $38
    ret nc

    cpl
    ret nz

    ccf
    ld [$8017], a
    ld a, a
    call nc, Call_07a_502b
    xor a
    jp z, Jump_07a_68b5

    rst $10
    ld c, c
    or $3d
    ld [c], a
    dec hl
    push af
    sbc h
    ld [hl], e
    sub d
    ld a, l
    srl h
    ld l, c
    sbc [hl]
    ld h, l
    sbc [hl]
    and l
    ld e, [hl]
    inc bc
    cp $52
    xor a
    xor c
    rst $10
    add c
    rst $18
    or b
    rst $08
    ld d, h
    db $eb
    ld a, [hl-]
    push hl
    ld a, [hl+]
    push af
    sbc c
    db $76
    dec d
    ld a, [$ff18]
    ld d, $fd
    ld de, $0dfe
    ld a, [$ff00]
    inc c
    ei
    adc [hl]
    ld a, c
    rst $08
    jr c, @-$3b

    inc a
    ld c, e
    cp h
    ld d, $ed
    add l
    cp $8e
    push af
    push bc
    cp $ce
    rst $38
    jp nz, $c0ff

    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    db $fc
    rst $38
    dec c
    ld a, [c]
    and l
    ld e, d
    ccf
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    stop
    nop
    nop
    jr c, jr_07a_41c5

    inc e
    ldh [$df], a
    nop
    rst $38
    nop
    rst $38

jr_07a_41c5:
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    or l
    ld c, d
    ld e, c
    and [hl]
    jr @-$17

    ld [$08f7], sp
    rst $30
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rNR41]
    db $e3
    ld b, d
    rst $38
    and b
    rst $38
    sub d
    rst $38
    sbc a
    rst $38
    ld d, l
    rst $38
    ld e, c
    rst $38
    ld e, e
    rst $38
    nop
    ld l, a
    nop
    ccf
    nop
    dec a
    nop
    dec a
    nop
    ccf
    nop
    ccf
    nop
    ld e, a
    nop
    rra
    nop
    adc e
    add b
    xor b
    add b
    sbc b
    add b
    ret z

    add b
    sub $c7

jr_07a_421b:
    rst $28
    jp nz, Jump_07a_42e7

    rst $28
    ldh [$fb], a
    jr nz, jr_07a_421b

    or b
    push af
    jr nc, @+$01

    db $10
    rst $38
    jr @-$03

    sbc b
    rst $38
    adc b
    rst $38
    adc h
    rst $38
    call z, $a6ff
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    cp $ff
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld e, e
    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld e, b
    rst $38
    jr @+$01

    sbc h
    ei
    adc h
    ei
    ld e, h
    ei
    ld c, $fd
    ld l, $fd
    ld c, [hl]
    db $fd
    ld e, [hl]
    rst $38
    ld c, a
    cp $0f
    cp $a5
    ld a, [hl]
    rlca
    rst $38
    rla
    rst $38
    dec b
    rst $38
    jp Jump_000_037f


    rst $38
    add c
    ld a, a
    ld [hl], l
    xor a
    ld [bc], a
    rst $38
    sub b
    ld a, a
    ld a, [bc]
    rst $38
    sbc b
    rst $28
    add h
    rst $38
    ld b, h
    rst $38
    dec h
    rst $38
    ld [hl+], a
    rst $38
    sub e
    ld a, e
    sub c
    ld a, a
    ld c, d
    cp [hl]
    ld c, b
    cp a
    inc h
    rst $18
    and h
    ld e, a
    ld [de], a
    db $eb
    ld [bc], a
    rst $38
    ld hl, $21df
    rst $18
    call nc, $c02f
    ccf
    ldh a, [$1f]
    jp nc, Jump_07a_692d

    sbc [hl]
    adc h
    rst $38
    inc e
    rst $38
    inc h
    rst $38
    ld h, a
    rst $38
    ld hl, sp-$01
    ld e, e
    and h
    ld d, d
    xor l
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
    rlca
    nop
    ld h, c
    ld e, $66
    add b
    rst $20
    nop
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
    rst $18
    jr nz, @-$30

    ld sp, $9966
    and $19
    ld h, d
    sbc l
    ld [hl+], a
    db $dd
    ld [de], a

Jump_07a_42d9:
    db $ed
    ld [de], a
    db $ed
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_07a_42e4:
    nop
    rst $38
    nop

Jump_07a_42e7:
    rst $38
    nop
    cp $00
    ldh [rP1], a
    inc bc
    nop
    ccf
    nop
    ld b, c
    nop
    ld de, $1f00
    nop
    db $f4
    nop
    ld a, [c]
    nop
    ld sp, $3900
    nop
    cp l
    nop
    sbc h
    nop
    call c, $5e00
    nop
    cp $00
    xor $00
    rst $38
    nop
    rst $30
    nop
    rst $30
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, b
    cp $e0
    ldh [$80], a
    add c
    rst $00
    rst $08
    rst $38
    rst $38
    inc bc
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
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    add b
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
    ld bc, $00fe
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
    ldh a, [rP1]
    ldh [$80], a
    ld b, b
    add b
    ld b, b
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    add b
    add b
    add b
    rst $18
    add b
    rst $18
    ret nz

    rst $18
    ret nz

    rst $38
    ret nz

    rst $28
    ret nz

    rst $28
    ldh [$ef], a
    ldh [$f7], a
    ldh [$f7], a
    ldh [$f7], a
    ldh [$f7], a
    ldh a, [$f3]
    ldh a, [$fb]
    ld [hl], b
    ei
    ld [hl], b
    ld sp, hl
    jr c, @-$05

    jr c, @-$01

    jr c, @-$01

    cp h
    db $fc
    sbc h
    db $fc
    call c, $ccfe
    cp $ec
    cp $ee
    cp $00
    rst $38
    ld b, b
    rst $38
    rlca

jr_07a_43a5:
    rst $38
    ld hl, sp-$01
    inc b
    ei
    add b
    ld a, a
    ld e, c
    and [hl]
    rst $38
    nop
    ld h, l
    nop
    rla
    nop
    dec sp
    nop
    inc a
    inc bc
    add a
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    or $09
    ld a, [c]
    dec c
    ld h, b
    sbc a
    ld h, b
    sbc a
    jr nc, jr_07a_43a5

    jr nc, @-$2f

    db $10
    rst $28
    db $10
    rst $28
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
    ldh a, [rP1]
    inc bc
    nop
    ccf
    nop
    rst $38
    ld bc, $00ff
    rla
    nop
    ldh a, [rP1]
    nop
    nop
    jr nz, jr_07a_43f9

jr_07a_43f9:
    nop
    nop
    ld de, $9000
    nop
    jr jr_07a_4401

jr_07a_4401:
    adc h
    nop
    call z, $cc00
    nop
    call Call_07a_6c00
    nop
    ld l, [hl]
    nop
    xor [hl]
    nop
    and [hl]
    cp a
    rst $38
    ldh a, [$f8]
    add b
    ret nz

    ld bc, $1f07
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
    cp $fe
    ldh a, [$f0]
    add c
    add c
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

Call_07a_443f:
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

Call_07a_444a:
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
    ld a, a
    nop
    ld a, a
    add d
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    jr c, jr_07a_448c

    ld [$04fb], a
    ld a, [$fb05]
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $f1
    ld c, $d8
    daa
    ldh a, [rIF]
    ret nz

    ccf
    ld b, b
    cp a

jr_07a_448c:
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    nop
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
    rst $38
    nop
    ld sp, hl
    nop
    rlca
    nop
    ccf
    nop
    rst $38
    ld bc, $0eff
    rst $38
    ldh a, [rIE]
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0200
    nop
    sub [hl]
    nop
    or e
    rst $30
    rst $38
    rst $10
    rst $38
    db $d3
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    ld h, a
    rst $38
    ld l, [hl]
    rst $38
    ld h, b
    ldh a, [rP1]
    add c
    rlca
    rrca
    ccf
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
    cp $fe
    ldh a, [$f0]
    ret nz

    ret nz

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
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    rst $38
    call nz, Call_000_04ff
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add h
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    add h
    ld a, a
    ld b, $ff
    add a
    ld a, a
    rlca
    rst $38
    inc b
    rst $38
    add d
    ld a, a
    ld [bc], a
    rst $38
    ld bc, $0102
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0002
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0002
    inc bc
    ld [bc], a
    ld bc, $0102
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0100
    ld bc, $0003
    inc bc
    ld bc, $0101
    ld de, $1100
    ld bc, $0101
    ld bc, $4100
    nop
    sub c
    nop
    sub c
    ld bc, $01d1
    ld sp, hl
    nop
    pop af
    nop
    ret c

    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ei
    rst $38
    add hl, sp
    ld a, a
    jr c, jr_07a_45bf

    nop
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
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
    rst $18
    rst $18
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
    ld hl, sp-$01
    ldh [rIE], a
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

jr_07a_45bf:
    nop
    ld a, [c]
    dec b
    ld hl, sp+$07
    ld a, d
    dec b
    ld a, c
    ld b, $78
    rlca
    inc [hl]
    rlca
    inc de
    inc h
    ld [bc], a
    dec b
    cp $05
    ld [hl], d
    adc l
    sbc d
    ld h, l
    ld [c], a
    dec d
    or $09
    sla h
    inc hl
    ld b, h
    db $fd
    ld b, $f5
    ld b, $b6
    ld c, l
    or $0d
    xor l
    ld d, [hl]
    add sp, $17
    ld l, c
    ld d, $bc
    rlca
    sbc l
    ld h, [hl]
    ld d, h
    cpl
    sbc h
    ld h, a
    or c
    ld c, [hl]
    ld sp, $a4ce
    ld e, a
    pop hl
    ld e, $a0
    ld e, a
    dec b
    ld a, [hl]
    inc c
    ld [hl], a
    ld bc, $807e
    ld a, a
    and h
    ld e, a
    add h
    ld a, a
    and h
    ld e, a
    daa
    sbc $84
    ld a, a
    add h
    ld a, a
    add d
    ld a, a
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
    inc b
    rst $38
    ld a, [hl+]
    rst $38
    ld b, $ff
    ld [de], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [hl+]
    rst $38
    xor d
    rst $38
    sub d
    rst $38
    xor d
    rst $38
    ld a, d

jr_07a_4631:
    cp a
    and d
    rst $38
    cp [hl]
    rst $38
    or [hl]
    rst $38
    ld [hl], $ff
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, a

Jump_07a_463f:
    rst $38
    cp $ff
    ld a, a
    rst $38
    cp [hl]
    rst $38
    ld [hl], a
    ld sp, hl
    cp a
    ret nz

    ld a, e
    add h
    inc bc
    cp $44
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_07a_4631

    ld h, d
    db $fd
    dec a
    ld a, [$dd2a]
    inc a
    bit 6, h
    adc e
    inc a
    swap h
    bit 1, e
    rst $38
    xor e
    rst $38
    set 7, a
    ld [$6aff], a
    rst $38
    ld a, [hl-]
    rst $38
    ld c, $ff
    ld d, $ef
    adc e
    ld [hl], a
    dec a
    jp $a857


    dec bc
    db $f4
    rra
    ldh a, [$3f]
    ldh a, [$33]
    ldh a, [rNR24]
    ldh a, [$30]
    ldh a, [rSB]
    ldh a, [$03]
    pop af
    cpl
    ldh a, [$2f]
    ldh a, [$3e]
    ldh a, [$39]
    ld a, [c]
    dec a
    ld a, [c]
    inc a
    ld a, [c]
    ld a, h
    ld a, [c]
    ld a, h
    ld a, [c]
    ld l, h
    ld a, [c]
    ld l, h
    ld a, [c]
    ld l, h
    ld a, [c]
    db $ec
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $ed
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    pop hl
    cp $e9
    or $e5
    ld a, [$fee1]
    pop hl
    cp $e1
    cp $e3
    db $fc
    pop hl
    cp $e1
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld b, b
    and b
    inc d
    ldh [rNR21], a
    ldh [rNR14], a
    pop hl
    inc d
    ldh [rNR14], a
    ldh [rNR14], a
    ldh [rNR14], a
    ldh [rNR14], a
    ldh [rNR14], a
    ldh [rNR21], a
    ldh [rNR13], a
    db $e4
    ld [de], a
    db $e4
    inc de
    db $e4
    add hl, bc
    db $e4
    ld [bc], a
    db $e4
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    rst $38
    ccf
    rst $18
    dec l
    rst $18
    ld d, $ef
    rra
    rst $20
    rrca
    di
    dec b
    ei
    rlca
    ld sp, hl
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    sbc h
    ld b, d
    ld b, h
    add d
    ld c, h
    add d
    ld e, h
    add d
    ld l, b
    add [hl]
    ld c, d
    add h
    ld c, d
    add h
    ld l, e
    add h
    ld c, e
    add h
    ld d, e
    add h
    ld bc, $b584
    add h
    add l
    add h
    and h
    add h
    sub h
    add l
    nop
    add h
    add h
    rst $38
    call nz, Call_07a_4cff
    rst $38
    db $f4
    ld a, a
    ret c

    ccf
    db $ec
    rra
    ld a, a
    add a
    ld a, l
    add e
    ld a, [hl]
    ld bc, $003f
    rra
    nop
    adc a
    add b
    add a
    ld b, b
    pop bc
    jr nz, jr_07a_4785

    db $10
    sub h
    ld [$0e04], sp

jr_07a_4752:
    sub d
    dec bc
    sub e
    add hl, bc
    pop de
    ld [$08f0], sp
    ld a, [$e008]
    jr jr_07a_4752

    ld [$18e4], sp
    rst $38
    db $10
    or $18
    rst $20
    jr @+$01

    db $10
    or $18
    rst $38
    db $10
    rst $18
    jr nc, jr_07a_47d0

    or b
    ld e, a
    or b
    rra
    ldh a, [$af]
    ld [hl], b
    rst $38
    jr nc, jr_07a_47d1

    add hl, sp
    ld l, $b1
    ld a, [hl-]
    push af
    ld h, $f9
    ld c, $f1
    inc c

jr_07a_4785:
    di
    rlca
    ld sp, hl
    inc bc
    db $fd
    add d
    rst $38
    ld b, c
    rst $38
    ld hl, $33ff

jr_07a_4791:
    rst $38
    inc sp

jr_07a_4793:
    rst $38
    rrca
    di
    dec bc
    rst $30
    ld c, a
    rst $38
    jp $c7ff


    rst $38
    ld b, e
    rst $38
    inc b
    ret nz

    inc b

jr_07a_47a3:
    pop bc
    nop
    pop bc
    nop
    push bc
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    jp $c3ff


    rst $38
    add a
    rst $38
    rlca
    rst $38

Jump_07a_47b8:
    cpl
    rst $38
    adc a
    ld a, a
    sbc a
    ld a, a
    rst $08
    ccf
    ld a, a
    sbc a
    ld l, a
    sbc a
    cpl
    rst $18
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38

jr_07a_47d0:
    inc bc

jr_07a_47d1:
    ld [bc], a
    ld [bc], a
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
    nop
    add [hl]
    ld [$0805], sp
    sub a
    ld [$007d], sp
    rst $08
    db $10
    sbc l
    nop
    rst $08
    db $10
    sbc a
    db $10
    xor a
    db $10
    ld l, $90
    add sp, $10
    ld c, a
    db $10
    cp e
    db $10
    rst $28
    db $10
    ld l, a
    db $10
    ld e, a
    jr nz, @+$7d

    nop
    ld c, e
    jr nz, jr_07a_4847

    jr nz, jr_07a_4849

    jr nz, jr_07a_47a3

    jr nz, jr_07a_4793

    jr nz, @-$36

    jr nz, @-$2a

    jr nz, jr_07a_4791

    rst $38
    ldh [$7f], a
    ret nc

    ccf
    adc c
    ld a, a
    rst $10
    cpl
    db $eb
    rla
    cp a
    ld b, a
    scf
    ld c, a
    scf
    rrca
    ld d, a
    cpl
    ld h, a
    sbc a
    rla
    rst $28
    xor a
    ld e, a
    ld e, a
    cpl
    rra
    ld l, a
    cpl
    ld e, a
    adc [hl]
    ld a, a
    xor [hl]
    ld e, a
    adc a
    ld a, a
    adc [hl]
    ld a, a
    xor a
    ld e, a
    rra
    rst $38
    sbc a
    ld a, a
    rra
    rst $38
    inc e
    rra
    inc e
    rra
    inc a
    rra
    dec a

jr_07a_4847:
    ld e, $1c

jr_07a_4849:
    ccf
    inc e
    ccf
    jr jr_07a_488d

    jr jr_07a_488f

    ld a, b
    ccf
    ld a, b
    ccf
    ldh a, [$3f]
    jr nc, @+$81

    jr nc, @+$81

    or b
    ld a, a
    ld sp, hl
    ld [hl], a
    ld sp, hl
    ld [hl], a
    ld sp, hl
    ld a, a
    ld [hl], l
    rst $38
    rst $20
    ld a, a
    ld [hl], d
    rst $38
    ld h, c
    rst $38
    ld h, d
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    add $ff
    db $ec
    rst $30
    call nz, $c4ff
    rst $38
    call nz, $c4ff
    rst $38
    ret nz

    rst $38
    add h
    rst $38
    adc h
    rst $38
    adc l
    rst $38
    adc e
    rst $38
    xor e
    rst $38
    sbc c
    rst $38
    sbc e

jr_07a_488d:
    rst $38
    sbc l

jr_07a_488f:
    rst $38
    sbc [hl]
    rst $38
    rst $18
    rst $38
    cp $ff
    cp l
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    or a
    rst $38
    ccf
    rst $38
    ld e, [hl]
    rst $38
    ccf
    rst $38
    sbc [hl]
    ld a, a
    ld e, $ff
    ld c, $ff
    ld h, $5f
    rlca
    ccf
    inc de
    cpl
    dec bc
    rla
    inc de
    rrca
    rlca
    dec bc
    ld [bc], a
    dec b
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    ldh a, [rSB]
    push af
    nop
    rst $00
    jr nz, @-$30

    ld hl, $218e
    db $d3
    inc h
    push bc
    jr nz, @-$22

    ld hl, $01fc
    db $ed
    nop
    rst $10
    ld [$044b], sp
    ld [hl], $41
    ld e, [hl]
    ld bc, $423d
    ld e, a
    nop
    cp [hl]
    ld bc, $11ae
    cp [hl]
    ld bc, $813f
    ld l, l
    sub e
    or l
    dec bc
    ld [hl], h
    adc e
    ld a, a
    ld [bc], a
    ld a, a
    ld [bc], a
    ld e, a
    ld [hl+], a
    ld a, a
    ld [bc], a
    ld a, c
    ld b, $f1
    ld c, $c9
    ld [hl], $67
    sub h
    rst $30
    adc h
    ld [hl], a
    adc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    adc [hl]
    ld a, c
    sbc [hl]
    ld l, c
    db $db
    inc l
    adc e
    ld a, h
    jp $e73c


jr_07a_4911:
    jr jr_07a_4911

    ld de, $11fe
    ld a, l
    sub d
    sbc a
    ld [hl], b
    rrca
    ldh a, [$3f]
    ldh [$37], a
    add sp, $37
    add sp, $3f
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rHDMA3], a
    db $ec
    ld a, a
    ret nz

    ld a, d
    push bc
    and [hl]
    reti


    inc de
    db $ed
    rst $00
    cp c
    pop de
    xor a
    sub l
    db $eb
    xor b
    rst $10
    rrca
    ld a, [c]
    inc de
    xor $03
    cp $15
    xor $04
    rst $38
    ld d, $ed
    inc c
    rst $30
    nop
    rst $38
    ld bc, $0dfe
    ld a, [$f80f]
    ld a, [bc]
    db $fd
    inc d

jr_07a_4955:
    ei
    dec d

jr_07a_4957:
    ld a, [$f33c]
    inc e
    di
    jr jr_07a_4955

    jr z, jr_07a_4957

    inc h
    ei
    xor b
    rst $30
    ret nz

    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $30
    ret nz

    rst $38
    ld b, b
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add e
    rst $38
    db $db
    cp a
    dec de
    rst $38
    rla
    rst $38
    rla
    rst $38
    daa
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp $ff
    sbc $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    xor a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    ld e, $7f
    ld l, $3f
    ld [bc], a
    ccf
    jr @+$19

    ld [bc], a
    rrca
    ld bc, $050f
    rlca
    nop
    inc bc
    ld [bc], a
    inc bc

Jump_07a_49b6:
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    xor h
    ld [hl], e
    add sp, $37
    add sp, $37
    ld hl, sp+$27
    cp c
    ld h, [hl]
    cp b
    ld h, a
    ld a, [de]
    ld h, l
    reti


    ld h, [hl]
    pop de
    ld l, [hl]
    jp hl


    ld d, [hl]
    ld a, b
    rst $00
    daa
    ret c

    daa
    ret c

    inc c
    di
    cp h
    jp $84fb


    ld h, l
    sbc d
    ld c, e
    or h
    ld a, a
    add b
    ld a, d
    add l
    ld a, [hl-]
    push bc
    sub $e9
    db $76
    ld sp, hl
    ld sp, hl
    ccf
    rst $38
    rra
    rst $30
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    ld [hl], d
    adc a
    ld a, [$be07]
    ld b, a
    cp a
    ld b, [hl]
    db $fd
    ld b, $f5
    ld c, $ed
    ld e, $f8
    rrca
    jp c, $da2d

    dec l
    jp z, $fe3d

    add hl, de
    ld [hl], d
    sbc l
    db $f4
    dec de
    call nc, $c43b
    dec sp
    and h
    ld a, e
    ldh a, [$3f]
    cp d
    ld a, l
    inc a
    rst $28
    sub [hl]
    ld l, a
    ei
    ld b, a
    ld l, c
    rst $10
    ccf
    ret nz

    ccf
    ret nz

    ld [c], a
    sbc l
    rst $10
    xor b
    cp a
    ret nz

    xor a
    ret nc

    db $fc
    inc bc
    or $09
    rst $38
    ld bc, $05fb
    sbc b
    ld h, a
    sbc h
    ld h, e
    ld b, [hl]
    cp e
    dec h
    jp c, $0ff0

    jp z, $d435

    cpl
    ld e, [hl]
    and l
    ld [de], a
    db $ed
    inc de
    db $ed
    dec hl
    db $dd
    ld l, c
    sbc a
    or b
    ld e, a
    ld d, b
    cp a
    db $10
    rst $38
    ld d, b
    cp a
    inc h
    ei
    ld l, $fb
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    add h
    rst $38
    add h
    rst $38
    and c
    rst $38
    ret


    rst $38
    jp z, $d9ff

    rst $38
    db $d3
    rst $38
    rst $10
    rst $38
    or a
    rst $38
    rst $08
    rst $38
    xor [hl]
    rst $38
    cp h
    rst $38
    ld d, h
    rst $38
    dec a
    cp $a8
    rst $38
    db $fc
    ei
    ld hl, sp-$01
    or d
    db $fd
    ld [hl], l
    ld a, [$ffb0]
    ld h, b
    rst $38
    db $e3
    db $fd
    ld b, d
    db $fd
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add d
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld bc, $0bff
    rst $38
    db $d3
    rst $38
    ld d, e

jr_07a_4aa7:
    rst $38
    rst $20
    rst $38
    ld l, a
    rst $38
    db $fd
    rst $38
    ld a, $ff
    cp a
    rst $38
    dec e
    rst $38
    dec a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    ld b, a
    ld a, a
    ld b, e
    ld a, a
    dec e
    xor $4b
    cp h
    ld c, b
    cp a
    ld [$2eff], sp
    reti


    ld c, $f9
    ld d, $f9
    jr c, jr_07a_4aa7

    ld e, h
    or e
    ld l, h
    or e
    inc c
    di
    jr z, @-$07

    jr nz, @+$01

    cp b
    ld h, a
    ret c

    ld h, a
    ld e, b
    rst $20
    ld a, b
    rst $00
    ld [hl], b
    rst $08
    and d
    db $dd
    and h
    db $db
    and b
    rst $18
    and h
    db $db
    and b
    rst $18
    ld b, b
    cp a
    ld b, b
    cp a
    add d
    ld a, l
    ldh [$1f], a
    ldh [$1f], a
    and b
    ld e, a
    ld b, b
    cp a
    pop bc
    ccf
    pop bc
    ccf
    ld bc, $01ff
    rst $38
    add d
    ld a, a
    add e
    ld a, [hl]
    inc bc
    cp $02
    cp $05
    cp $04
    rst $38
    inc c
    db $fd
    rlca
    db $fc
    ld c, d
    cp l
    ld c, $f8
    add hl, de
    ld a, [$ba55]
    ld d, h
    cp e
    ld [hl-], a
    db $fd
    inc [hl]
    ei
    and [hl]
    ei
    pop hl
    cp $f9
    and $5f
    db $e4
    db $d3
    ld l, h
    ld d, [hl]
    jp hl


    ld h, $d9
    and h
    db $db
    ld h, [hl]
    sbc c
    ld b, h
    cp e
    nop
    rst $38
    xor b
    ld [hl], a
    adc b
    ld [hl], a
    or c
    ld c, a
    or l
    ld c, [hl]
    ld h, l
    rst $18
    and l
    rst $18
    ld bc, $0bff
    rst $38
    ld b, e
    cp a
    res 7, a
    ld b, a
    cp a
    ld b, $ff
    ld b, $ff
    ld c, $ff
    inc e
    rst $38
    inc l
    rst $38
    jr z, @+$01

    ld a, [de]
    db $fd
    jr @+$01

    ld d, b
    rst $38
    jr nc, @+$01

    inc sp
    rst $38
    ld l, d
    rst $38
    ld l, d
    rst $38
    db $eb
    rst $38
    jp z, $d6ff

    rst $38
    jp nz, $c4ff

    rst $38
    sub b
    rst $38
    inc h
    rst $38
    jr z, @+$01

    cp h
    rst $38
    db $dd
    rst $38
    ld l, l
    rst $38
    dec l
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    ld c, $ff
    ld b, $ff
    ld c, $ff
    inc c
    rst $38
    inc c
    rst $38
    ld e, $ff
    jr @+$01

    ld sp, $39ff
    rst $38
    ld l, e
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    set 7, a
    rst $08
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    cp d
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld a, a
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
    ei
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $0dfe
    or $0d
    or $0b

jr_07a_4bd9:
    db $f4
    inc bc
    db $fc
    ld e, $e8
    sbc b
    ld l, d
    adc b
    ld a, d
    and l
    ld e, d
    dec sp
    ret nc

    jr jr_07a_4bd9

    ld [de], a
    pop af
    ld l, $f1
    ld [hl+], a
    push af
    ld a, $e1
    ld l, [hl]
    pop hl
    ld c, h
    db $e3
    ld l, l
    jp nz, $c2dc

    set 2, h
    push bc
    sbc b
    or $89
    ld d, $a9
    rst $18
    jr nz, @+$31

    ld d, b
    and [hl]
    ld e, c
    ld e, h
    and e
    ld e, [hl]
    and c
    call c, Call_000_3f23
    jp nz, Jump_07a_47b8

    ret c

    daa
    cp b
    ld b, a
    xor b
    ld d, a
    ld de, $51ef
    xor a
    ld bc, $81ff
    ld a, a
    add e
    ld a, a
    jp nz, Jump_07a_463f

    cp a
    add [hl]
    ld a, a
    sub h
    ld l, a
    adc h
    ld a, a
    rrca
    db $fc
    ld c, $fd
    add hl, de
    cp $3d
    ld a, [$fd32]
    ld [hl], b
    rst $38
    ld a, d
    push af
    ld l, b
    rst $30
    ldh [rIE], a
    ld sp, hl
    xor $e1
    cp $ca
    push af
    ret nz

    rst $38
    add c
    cp $88
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    ld b, b
    cp a
    inc b
    ei
    ld bc, $11ff
    rst $28
    inc bc
    rst $38
    inc hl
    rst $18
    ld b, $ff
    ld b, [hl]
    cp a
    inc h
    rst $38
    inc c
    rst $38
    add hl, bc
    cp $18
    rst $38
    db $10
    rst $38
    ld sp, $25fe
    cp $e2
    db $fd
    ld [c], a
    db $fd
    push bc
    ei
    rst $28
    di
    xor a
    rst $30
    or [hl]
    rst $28
    ld c, c
    rst $38
    ld de, $12ff
    rst $38
    inc hl
    rst $38
    ld h, h
    cp a
    and l
    rst $38
    ld d, a
    rst $38
    ld d, a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    ld d, e
    rst $38
    sub $ff
    sbc $ff
    sbc $ff
    ld l, d
    rst $38
    reti


    rst $38
    or d
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    rst $20
    rst $38
    push af
    rst $38
    call nc, $f4ff
    rst $38
    db $ec
    rst $38
    ret z

    rst $38
    ld [hl-], a
    rst $38
    xor d
    rst $38
    ld b, [hl]
    rst $38
    ld d, l
    rst $38
    ld [hl], a
    rst $38
    rst $08
    rst $38
    cp a
    ret nz

    db $db
    and h
    db $db
    and h
    or a
    adc b
    ld [hl], $89
    ld l, a
    sub b
    ld l, h
    sub c
    ld a, d
    dec b
    ld e, [hl]
    ld hl, $027d
    ld [hl], l
    ld a, [bc]
    ld l, h
    inc de
    ld l, h
    inc de
    cp a
    ld b, b
    cp $01
    ld a, [hl]
    add c
    ld l, a
    add b
    ld e, l
    and d
    rst $38
    nop
    xor $11
    cp b
    ld b, a
    xor d
    ld d, l
    ret


    scf
    push de
    dec hl
    rst $10
    dec hl
    rst $00

jr_07a_4cf3:
    dec sp
    jp $863f


    ld a, a
    add a
    ld a, [hl]
    add l
    ld a, [hl]
    rst $08
    inc a
    rst $08

Call_07a_4cff:
    inc a
    ld c, e
    cp h
    ld e, a
    cp b
    sbc a
    ld a, b
    dec [hl]
    ld a, [$f23d]
    cp d
    ld [hl], l
    ld a, d
    push hl
    ld a, b
    rst $20
    push af
    ld [$ffc0], a
    pop hl
    sbc $95
    xor $91
    xor $d1
    xor [hl]
    ld b, e
    cp h
    and e
    ld e, h
    xor a
    ld d, b
    ld c, d
    or l
    ld b, d
    cp l
    add h
    ld a, e
    sbc h
    ld h, e
    jr c, jr_07a_4cf3

    ld sp, $b1ce
    ld c, [hl]
    add hl, hl
    sub $20
    rst $18
    ld c, b
    or a
    ld b, [hl]
    cp c
    inc h
    db $db
    dec h
    db $db
    inc bc
    rst $38
    ld c, e
    or a
    ld c, [hl]
    or a
    ld h, [hl]
    sbc a
    dec c
    cp $0d
    cp $8d

jr_07a_4d49:
    ld a, [hl]
    ld a, [de]
    db $fd
    ld [de], a
    db $fd
    inc [hl]
    ei
    jr nc, @+$01

    ld h, b
    rst $38
    ld h, c
    cp $c0
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add h
    ei
    ld [$01f7], sp
    cp $2f
    ret nc

    ld c, c
    or a
    inc e
    rst $28
    jr c, jr_07a_4d49

    ld [$20ff], sp
    rst $38
    inc h
    ei
    jp nz, $027f

    rst $38
    ld bc, $1bff
    rst $38
    dec sp
    rst $38
    inc hl
    rst $38
    ld [hl], a
    rst $38
    rrca
    rst $38
    xor [hl]
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    cp c
    rst $38
    ld a, c
    rst $38
    ld a, [c]
    rst $38
    pop de
    rst $38

jr_07a_4d8e:
    or c
    rst $38
    sbc [hl]
    rst $30
    and [hl]
    rst $38
    push bc
    rst $38

jr_07a_4d96:
    add $ff
    ld h, [hl]
    rst $38
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ld [hl], e
    rst $38
    sub e
    rst $38
    sub a
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    db $fc
    rst $38
    or $ff
    db $fd
    rst $38
    ld [c], a
    rst $38
    rst $28
    rst $38
    ld l, l
    sub e
    db $ed
    inc de
    rst $28
    inc de
    ld e, a
    and e
    ld e, d
    and a
    ld e, [hl]
    and a
    cp a
    ld b, [hl]
    scf
    adc $7d
    adc [hl]
    ld l, h
    sbc a
    ld e, b
    cp a
    ld sp, hl
    ld e, $d9
    ld a, $d7
    jr c, @+$01

    jr nc, jr_07a_4d96

    ld a, b
    rst $20
    ld a, b
    or $69
    ld d, h
    db $eb
    rst $38
    ret nz

    rst $30
    ret z

    db $ed
    jp nc, $94eb

    jp nc, Jump_07a_52ad

    xor l
    sbc e

jr_07a_4df3:
    ld h, h
    rst $10
    jr z, jr_07a_4d8e

    ld l, b
    or a
    ld c, b
    add l
    ld a, d
    db $ed
    ld [de], a
    call z, $b533
    ld c, d
    cp l
    ld b, d
    ld [$18f7], sp
    rst $20
    ld a, [de]
    push hl
    db $10
    rst $28
    add l
    ld a, d
    ld l, d
    push de
    ld b, $f9
    jr nz, jr_07a_4df3

    ld de, $71ef
    adc a
    ld e, e
    and a
    inc de
    rst $28
    dec bc
    rst $30
    rla
    rst $28
    ld d, $ef
    inc c
    rst $38
    inc l
    rst $18
    ret z

    cp a
    ld e, $fb
    jr nc, @+$01

    ld [hl-], a
    db $fd
    ld h, d
    db $fd
    jr z, @-$07

    ld h, b
    rst $38
    call nc, $8ceb
    di
    adc h
    di
    add e
    db $fd
    inc b
    ei
    ld b, c
    cp [hl]
    add d
    ld a, l
    inc b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld [bc], a
    rst $38
    ld e, b
    or a
    ret nz

    ccf
    add c
    ld a, a
    add h
    ld a, e
    add h
    ld a, e
    inc h
    db $db
    ld [bc], a
    db $fd
    ld de, $25ee
    db $db
    dec a
    jp Jump_000_1fe3


    cp [hl]
    ld a, a
    xor [hl]
    rst $38
    ld e, h
    rst $38
    ld [$58ff], sp
    cp a
    inc sp
    db $fd
    jr nz, @+$01

    ld l, d
    rst $38
    ret nc

    rst $38
    add h
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    sub e
    rst $38
    ld e, $ff
    ld a, $ff
    dec a
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    rst $18
    rst $38
    adc $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    di
    rst $38
    cp e
    rst $38
    rst $30
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    db $fc
    rst $38
    ld a, [$f6ff]
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    db $eb
    rst $38
    ld a, [$e8ff]
    rst $38
    db $fd
    rst $38
    ld e, a
    rst $38
    db $fd
    rst $38
    call $d6ff
    rst $38
    call c, $baff
    rst $38
    ld a, [c]
    rst $38
    rst $18
    rst $38
    sbc e
    rst $38
    cp [hl]
    rst $38
    sub c
    xor $b3
    call z, $807f
    db $ed
    db $10
    rst $28
    db $10
    add $39
    ld b, $f9
    add hl, hl
    sub $a9
    ld d, [hl]
    rl h
    db $eb
    inc d
    sub $29
    and $19
    call z, $e833
    rlca
    ld sp, hl
    ld b, $e1
    ld c, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    adc $31
    xor $11
    ld l, l
    ld [de], a
    ret c

    daa
    db $db
    dec h
    cp c
    ld b, a
    or a
    ld c, e
    or a
    ld c, e
    ld [$e617], a
    rra
    db $ec
    rra
    xor $1d
    sbc $3d
    sbc d
    ld a, l
    cp b
    ld a, a
    or h
    ld a, e
    add hl, sp
    or $78
    rst $30
    ld h, b
    rst $38
    ldh [rIE], a
    ret z

    rst $38
    add d
    db $fd
    and h
    ei
    jr z, @-$07

    ret


    or $c4
    ei
    sub b
    rst $28
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, $fb
    ld bc, $00fe
    rst $38
    nop
    rst $38
    dec b
    ei
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    inc sp
    db $ec
    ld bc, $01fe
    cp $10

jr_07a_4f3d:
    rst $38
    ld c, a
    or c
    and l
    ld a, e
    ld hl, $0aff
    rst $30
    inc d
    rst $28
    inc c
    rst $38
    dec c
    cp $39
    sbc $db
    inc a
    ld d, [hl]
    cp c
    inc b
    ei
    ld [$88f7], sp
    rst $30
    ret nz

    rst $38
    sbc h
    rst $28
    jr z, jr_07a_4f3d

    db $10
    rst $38
    ld hl, $65ff
    rst $38
    pop bc
    ld a, a
    adc e
    rst $38
    or e
    rst $18
    ld b, d
    cp a
    inc h
    rst $38
    ld d, h
    db $eb
    add b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    inc sp
    rst $38
    or [hl]
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    ld a, [hl]
    rst $38
    sbc h
    rst $38
    cp b
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    pop bc
    rst $38
    ret nz

    rst $38
    jp nz, $88ff

    rst $38
    or d
    ld a, a
    ld h, l
    rst $38
    ld l, c
    rst $38
    set 7, a
    sub d
    rst $38
    and l
    rst $38
    ld b, [hl]
    rst $38
    call nz, Call_000_20ff
    rst $38
    ld a, b
    rst $38
    set 7, a
    jp nz, Jump_000_04ff

    rst $38
    dec bc
    rst $38
    ld e, e
    rst $38
    scf
    rst $38
    ld l, a
    rst $38
    sbc a
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    db $fd
    db $fd
    ei
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
    jr jr_07a_4ff3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07a_5003

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07a_5013

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07a_5023

    ld [hl-], a

jr_07a_4ff3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07a_5033

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_07a_5003:
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

jr_07a_5013:
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

jr_07a_5023:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d

Call_07a_502b:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_07a_5033:
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
    add l
    add l
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
    add l
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
    jp nz, $85c3

    add l
    add l
    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    add l
    add l
    add l
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    add l
    add l
    add l
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$85eb], a
    add l
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
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$7f09], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_07a_516a

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07a_5115

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld a, a
    jr z, jr_07a_5126

    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_07a_5115:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_07a_5126:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc b
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

jr_07a_516a:
    nop
    nop
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
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld b, b
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    inc b
    dec b
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
    nop
    nop
    inc b
    dec b
    dec b
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
    inc b
    nop
    nop
    inc b
    dec b
    dec b
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
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [bc], a
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc de
    rst $28
    inc bc
    rst $38
    ld hl, $21df
    rst $18
    ld hl, $21df
    rst $18
    ld bc, $00ff
    rst $38
    nop
    rst $38
    sub b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor b
    rst $30
    cp $01
    cp $01
    rst $38
    nop
    rst $28
    db $10
    db $ed
    db $10
    xor a
    db $10
    xor $10
    ei
    inc b
    cp a
    nop
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    ld sp, hl
    ld b, $f9
    ld b, $7b
    add h
    ld l, e
    sub h
    reti


    ld h, $7c
    add e
    cp $01
    ld c, [hl]
    ld sp, $708f
    rrca
    ld [hl], b
    ld c, a
    jr nc, jr_07a_52da

    ld [hl-], a
    sbc l
    ld [hl+], a
    adc a
    jr nc, jr_07a_52ae

    and h
    dec bc
    or h
    res 6, h
    and a
    ret c

    and a
    ret c

    ld [c], a
    call c, $ecd1
    push de
    add sp, -$1c
    add sp, -$05
    db $e4
    pop hl
    or $61
    or $70
    or $75

Jump_07a_52ad:
    ld a, [c]

jr_07a_52ae:
    ld [hl], d
    ld hl, sp+$38
    ld a, [c]
    inc [hl]
    ld a, [$7abd]
    sbc [hl]
    ld a, c
    ret c

    dec a
    rst $38
    inc e
    ld a, l
    sbc [hl]
    ld l, h
    sbc [hl]
    inc l
    sbc $bc
    ld c, [hl]
    cp a
    ld c, [hl]
    and [hl]
    ld e, a
    and [hl]
    ld e, a
    rla
    rst $28
    ld b, a
    cp a
    ld d, e
    xor a
    dec de
    rst $20
    dec sp
    rst $00
    cp e
    ld b, a
    dec bc
    rst $30
    dec e
    db $e3

jr_07a_52da:
    ld e, c
    and a
    ld [hl], c
    adc a
    ld [hl], b
    adc a
    db $10
    rst $08
    ld a, [hl-]
    push bc
    ld [hl-], a
    push bc
    ld bc, $0df6
    ld a, [c]
    dec c
    ld a, [c]
    inc b
    ei
    inc e
    db $e3
    sbc d
    ld h, l
    adc h
    ld [hl], e
    ret z

    scf
    ret c

    daa
    db $fc
    inc bc
    pop af
    ld c, $31
    adc [hl]
    inc sp
    adc h
    ld [hl], e
    adc h
    ld de, $01ce
    sbc $30
    adc $81
    ld a, [hl]
    sub b
    ld l, a
    add b
    ld a, a
    ld [$08f7], sp
    rst $30
    inc c
    di
    ld b, h
    ei
    inc c
    di
    inc b
    ei
    inc c
    di
    inc c
    di
    inc c
    di
    inc b
    ei
    add h
    ld a, e
    ld a, [bc]
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
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    add b
    rst $38
    add b
    rst $38
    dec h
    jp c, $d924

    dec h
    ret c

    dec h
    ret c

    sub h
    jp hl


    add c
    db $ec
    add h
    add sp, -$80
    db $ec
    xor d
    call nz, $c6e8
    ld [c], a
    call nz, $c4e2
    jp $c4f4


    ld a, [c]
    pop af
    and $ad
    ld [hl], d
    and c
    ld [hl], d
    jp hl


    ld [hl-], a
    ldh [$3b], a
    ld [de], a
    cp c
    ld [de], a
    or c
    ld e, b
    or c
    ld d, h
    cp c
    or b
    ld e, c
    jr jr_07a_53cb

    dec l
    ld e, b
    ld e, b
    dec l
    ld a, [de]
    dec l
    sub c
    ld l, $a0
    rra
    ret nz

    ld e, $d0
    ld c, $d3
    inc c
    pop de
    ld c, $f1
    ld c, $c1
    ld c, $b6
    ld c, d
    xor [hl]
    ld b, e
    ldh a, [rTAC]
    ldh a, [rTAC]
    or c
    ld b, a
    sbc a
    ld h, c
    pop af
    dec b
    adc l
    ld h, d
    sub l
    ld h, d
    db $f4
    ld [bc], a
    ld [hl], d
    add b
    ld hl, sp+$02
    db $f4
    ld [bc], a
    push af
    ld [bc], a
    ld a, e
    nop
    cp $01

jr_07a_53a8:
    ld l, [hl]
    add c
    ld a, [hl]
    add c
    ld c, c
    or [hl]
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    sub l
    ld l, d
    ld b, $79
    adc $31
    rst $00
    jr c, jr_07a_53a8

    ld [de], a
    rst $28
    db $10
    dec b
    ret c

    cp a
    ld b, b
    inc sp
    ld c, h
    ld [de], a
    ld l, l
    inc de
    ld l, h
    ld d, e
    inc l
    inc bc

jr_07a_53cb:
    inc a
    add a
    jr c, @+$31

    sub b
    cpl
    sub b
    adc a
    sub b
    xor a
    ret nc

    xor [hl]
    pop de
    jp c, $f2c5

    call $e6c9
    ret nz

    rst $28
    add sp, -$19
    ld [$e8f5], a
    rst $30
    ld [hl], c
    or $78
    rst $30
    ld [hl], h

jr_07a_53eb:
    ei
    inc [hl]
    ei
    or l
    ld a, d
    cp h
    ld a, e
    sbc h
    ld a, e
    ld a, [de]
    db $fd
    inc e
    db $fd
    rra
    db $fc
    rra
    db $fc
    dec l
    sbc $9e
    ld l, [hl]
    cp [hl]
    ld c, [hl]
    sub [hl]
    ld l, a
    add $3f
    add a
    ld a, a
    xor e
    ld d, a
    ld l, e
    sub a
    daa
    db $db
    daa
    db $db
    dec d
    db $eb
    ld d, c
    xor a
    ld b, b
    cp a
    ld [hl+], a
    db $dd
    ld d, d
    xor l
    jr nc, jr_07a_53eb

    add hl, de

jr_07a_541d:
    and $19

jr_07a_541f:
    and $18
    rst $20
    inc c
    di
    ld [$48f7], sp
    or a
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    ld b, $f9
    inc b
    ei
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    jr nz, jr_07a_541d

    jr nz, jr_07a_541f

    ld l, l
    or d
    ld l, b
    or d
    ld e, b
    or d
    push de
    ld a, [hl-]
    push de
    ld a, [hl-]
    sub d
    ld a, l
    adc [hl]

jr_07a_544d:
    ld a, c
    ld c, $f9
    ld a, $d9
    xor d

jr_07a_5453:
    ld e, l
    ld c, $79
    xor e
    ld e, h
    adc l
    ld a, h
    ld b, [hl]
    cp l
    adc $3d
    call nz, $c43f
    ccf
    ld h, a
    sbc [hl]
    add a
    ld a, $c2
    ccf
    ld b, [hl]
    cp a
    ld b, d
    cp a
    ld b, d
    cp a
    ld [hl+], a
    rst $18
    daa
    db $db
    dec h
    db $db
    dec d
    rlc c
    rst $18
    ld bc, $11df
    rst $08
    jr nz, jr_07a_544d

    jr nz, @-$2f

    jr nz, @-$2f

    jr nc, jr_07a_5453

    or b
    ld c, a
    jr c, jr_07a_54cf

    db $10
    ld h, a
    sbc b
    ld h, a
    adc b
    ld [hl], a
    nop
    or a
    ld [$08b7], sp
    or a
    ld [$24b7], sp
    db $db
    inc b
    db $db
    ld h, $d9
    add h
    ld sp, hl
    inc h
    reti


    ld bc, $02dc
    db $dd
    db $d3
    ld c, h
    ld b, b
    ld l, [hl]
    add hl, bc
    ld h, [hl]
    add c
    ld h, [hl]
    ld [hl], b
    and a
    ld hl, $24b6
    di
    ld c, b
    or e
    sub h
    ld a, e
    or [hl]
    ld e, c
    ld [hl-], a
    db $dd
    ld h, d
    sbc l
    ld c, d
    cp l
    ld e, b
    xor a
    xor c
    ld c, [hl]
    xor b
    ld c, [hl]
    ld b, l
    sbc [hl]
    inc e
    add a
    inc c
    sub a
    ld h, h
    adc a
    and h
    ld c, a
    xor d

jr_07a_54cf:
    ld b, a
    sub d
    ld l, a
    and [hl]
    ld d, e
    xor [hl]
    ld d, e
    xor a
    ld d, e
    sbc l
    ld h, e
    ld e, c
    and e
    dec de
    pop hl
    add hl, de
    pop hl
    ld a, [hl-]
    pop bc
    ld [$8cf5], sp
    ld [hl], c
    sbc l
    ld h, b
    sbc $20
    adc a
    ld [hl], b
    db $ec
    ld [de], a
    xor d
    ld d, h
    jp nc, $d32c

jr_07a_54f3:
    inc l
    push de
    ld a, [hl+]
    ld a, l
    add d
    ld a, l
    add d
    ld l, a
    sub b
    inc c
    db $d3
    dec l
    jp nc, Jump_07a_49b6

    and [hl]
    ld c, c
    and l
    ld c, d
    ld b, d
    dec l
    add d
    dec l
    inc de
    xor h
    ld [de], a
    xor l
    xor d
    sub l
    adc $91
    sub [hl]
    ret


    rst $20
    ret z

    call z, $dde3
    ld [c], a
    set 4, h
    jp nc, Jump_07a_74e5

    db $e3
    ld h, c
    ld a, [c]
    ld l, d
    pop af
    ld h, h

jr_07a_5525:
    ld sp, hl
    jr nc, jr_07a_5525

    ld [hl], d
    db $fd
    inc sp
    db $fc
    ret c

    ld a, $1b
    db $fc
    add hl, de
    cp $1a
    db $fd
    inc e
    rst $38
    adc h
    ld a, a
    inc c
    rst $38

jr_07a_553a:
    ld b, $ff
    ld b, $ff
    ld d, $ef
    adc h
    inc sp
    adc l
    ld [hl], d
    dec hl
    ld d, h
    ld c, d
    or l
    sbc c
    ld d, h
    sub $11
    dec [hl]
    ret nc

    inc bc
    cp b
    pop bc
    jr c, jr_07a_54f3

    ld e, c
    xor c
    jr jr_07a_556a

    ld c, b
    ld d, c
    adc b
    and l
    ld e, b
    push de
    jr z, jr_07a_553a

    inc h
    ld a, [c]
    inc c
    xor e
    ld b, h
    rst $38
    inc b
    cp c
    ld b, [hl]
    xor c
    ld d, [hl]

jr_07a_556a:
    pop de
    ld l, $4d
    or d
    rst $00
    ld [hl-], a
    call $d632
    inc hl
    ld h, b
    sbc a
    ld b, h
    cp e
    and h
    db $db
    xor b
    db $d3
    xor h
    db $d3
    or h
    res 3, [hl]
    pop hl
    sub $e9
    sub $e9
    db $ec
    db $d3
    push bc
    ld a, [$f54a]
    ld e, l
    ld [c], a
    ld e, d
    push hl
    ld l, [hl]
    pop af
    ld h, e
    db $fc
    dec hl
    db $f4
    inc l
    di
    dec hl
    db $f4
    ld a, $f1
    ld h, $f9
    ld d, $f9
    sbc a
    ld [hl], b
    ld d, $f9
    inc d
    ei
    sbc h
    ld a, e
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld [$88ff], sp
    ld a, a
    inc b
    rst $38
    call nz, Call_07a_443f
    cp a
    ld b, h
    cp a
    inc b
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    ld [de], a
    rst $28
    ld c, d
    rst $30
    ld [bc], a
    ld a, a
    sub c
    ld l, a
    ld d, c
    xor a
    dec b
    cp e
    ld c, c
    or a
    dec hl
    push de
    inc hl
    db $dd
    ld [bc], a

jr_07a_55d5:
    db $dd
    add b
    ld e, a
    inc h
    db $db
    db $10
    rst $28
    nop
    rst $28
    ld b, b
    xor a
    ret z

    or a
    adc b

jr_07a_55e3:
    rst $30
    adc b
    rst $30
    add b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $18
    ld b, h
    ei
    ret nz

    ld a, a
    jp nz, $437d

    ld a, l
    jr nc, jr_07a_5665

    jr nz, jr_07a_5677

    xor b
    scf
    ld hl, $59b6
    or [hl]
    or h
    ld e, e
    or b
    ld e, a
    nop

jr_07a_5603:
    rst $38
    inc h
    db $db
    and d
    ld e, a
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld h, h
    sbc a
    and l
    ld e, a
    xor h

jr_07a_5613:
    ld d, a
    ld l, h
    sub a
    ld l, l
    sub a
    inc hl
    rst $18
    ld b, d
    cp a
    ld [de], a
    rst $28
    sub [hl]
    ld l, e
    and b
    ld e, a
    sbc c
    ld h, a
    sub c
    ld l, a
    sbc a
    ld h, c
    adc a
    ld [hl], c
    ld h, a
    sbc c
    db $ec
    inc de
    xor l
    ld d, d
    ld l, c
    sub [hl]
    ld [hl], b
    adc a
    cp b
    ld b, a
    cp l
    ld b, d
    or b
    ld c, a
    ld d, d
    xor l
    ld e, e
    and l
    sbc c
    ld h, a
    ret nc

    cpl
    jr nz, jr_07a_55e3

    jr nc, jr_07a_55d5

    ld [hl], b
    rrca
    jr nc, jr_07a_5659

    or b
    rrca
    and b
    rra
    jr nz, jr_07a_56af

    jr z, jr_07a_56a9

    jr c, jr_07a_569b

    db $10
    ld c, a
    ld e, b
    daa
    sbc b

jr_07a_5659:
    ld h, a
    jr jr_07a_5603

    adc h

jr_07a_565d:
    inc sp
    inc e
    inc hl
    sbc b
    inc hl
    sub h
    ld [hl+], a
    sbc h

jr_07a_5665:
    inc hl
    adc h
    inc sp
    sbc h
    inc hl
    adc h

jr_07a_566b:
    inc sp
    adc b
    scf
    xor h
    inc de
    add b
    ccf
    xor b
    rla
    and b
    rra
    or h

jr_07a_5677:
    dec bc
    dec [hl]
    adc d
    or h
    dec bc
    sub b
    cpl
    sbc b
    daa
    add h
    dec hl
    jr nz, jr_07a_5613

    inc d
    xor e
    ld l, b
    sub a
    ld a, [$6885]
    sub a
    ld l, d
    sub l
    ld c, h
    or e
    ld c, b
    or a
    jr z, jr_07a_566b

    jr jr_07a_565d

    xor c
    ld b, [hl]
    add hl, hl
    add $29

jr_07a_569b:
    add $10
    rst $28
    adc b
    ld [hl], a
    ld e, h
    and e
    ld b, d
    or l
    ld d, d
    and l
    ld d, d
    and l
    ret nz

jr_07a_56a9:
    scf
    add d
    ld [hl], l
    ld b, b
    or a
    ld c, d

jr_07a_56af:
    or l
    ld c, h
    or e
    inc c
    di
    dec h
    jp c, $db24

    inc b
    ei
    ld [bc], a
    db $fd
    dec c
    ld a, [$dd2a]
    add hl, bc
    cp $12
    db $ed
    ld [de], a
    db $ed
    ld b, b
    cp l
    jp nz, $cf3d

    inc [hl]
    inc bc
    db $fc
    ld bc, $01fe
    cp $81
    cp $83
    cp $83
    cp $83
    cp $82
    rst $38
    and [hl]
    rst $18
    dec b
    rst $38
    ld c, l
    rst $38
    ld c, e
    db $fd
    ld c, [hl]
    ld sp, hl
    ld d, [hl]
    ld sp, hl
    ld e, [hl]
    pop af
    ld l, $f1
    cp [hl]
    ld h, c
    cp a
    ld h, b
    ccf
    ldh [$2f], a
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$5f]
    or b
    inc bc
    ld hl, sp+$06
    ld sp, hl
    rlca
    ld hl, sp-$71
    ld a, b
    rrca
    ld hl, sp-$79
    ld a, b
    ld [bc], a
    db $fd
    ld b, b
    cp l
    ld b, a
    cp l
    ld b, $ff
    rlca
    cp $05
    cp $05
    cp $4d
    cp $0b
    cp $2a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    db $fc
    cp $fc
    db $fc
    db $fc
    db $fd
    db $fc
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ei
    ld sp, hl
    ei
    add l
    ld l, d
    add h
    ld l, d
    sbc d
    ld h, h
    ld a, [bc]
    push af
    ld c, [hl]
    or c
    dec hl
    call nc, $b449
    ld b, e
    or h
    ld h, e
    sub h
    ld [bc], a
    push af
    ld l, e
    db $f4
    ld h, d
    push af
    ld a, [bc]
    push af
    inc b
    ei
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
    rst $38
    rst $38
    rst $38
    cp h
    cp $b8
    db $fc
    ld hl, sp-$08
    add sp, -$08
    add sp, -$08
    ld hl, sp-$08
    add sp, -$08
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    db $f4
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
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fc
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
    ld b, b
    cp a
    ld d, b
    cp a
    ld hl, sp-$49
    jr nz, @+$01

    jr nz, @+$01

    ld e, b
    rst $28
    ld d, b
    rst $28
    ld d, $e9
    inc h
    db $db
    ld [bc], a
    db $fd
    ld [hl+], a
    db $dd
    ld [de], a
    db $ed
    ld [hl+], a
    db $dd
    ld a, [hl+]
    push de
    ld a, [bc]
    db $f4
    dec c
    db $f4
    cp e
    ld b, h
    ld a, [bc]
    db $f4
    dec bc
    or $33
    xor $34
    db $eb
    inc c
    di
    push hl
    ld a, e
    and a
    ld a, e
    dec h
    ei
    add hl, bc
    rst $30
    ld bc, $05ff
    ei
    ld bc, $43ff
    cp l
    ld [bc], a
    db $fd
    sub d
    db $fd
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp $ff
    sbc $fe
    db $fc
    rst $38
    ld a, h
    db $fd
    ld a, c
    db $fd
    ld a, c
    ei
    ld [hl], e
    ei
    ld [hl], b
    rst $30
    ld h, a
    rst $30
    and $f7
    rst $20
    rst $28
    adc a
    rst $28
    ld c, [hl]
    rst $28
    ret


    rst $18
    sbc h
    rst $18
    sub a
    rst $18
    sub l
    cp a
    inc d
    cp a
    inc [hl]
    cp a
    dec d
    ccf
    ld bc, $0b7f
    ld a, a
    ld l, e
    ld a, a
    ld d, e
    ld a, a
    ld d, e
    rst $38
    ld e, e
    rst $38
    set 7, a
    set 7, a
    nop
    rst $08
    nop
    push bc
    nop
    push bc
    nop
    push bc
    nop
    ld b, l
    nop
    call $cd00
    nop
    adc h
    adc b
    ld [hl], a
    add [hl]
    ld a, c
    ld l, h
    inc de
    and d
    ld e, l
    and d
    ld e, l
    adc d
    ld [hl], l
    ld h, h
    sbc e
    ld hl, $d25e
    dec l
    ld b, [hl]
    add hl, sp
    ld b, b
    ccf
    sbc d
    ld h, l
    inc bc
    ld a, h
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
    cp a
    rst $38
    add a
    rst $08
    rlca
    adc a
    rlca
    rrca
    rlca
    rrca
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
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
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
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
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
    rrca
    rra
    rrca
    rra
    rra
    ccf
    rra
    cp a
    ccf
    cp a
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    ld b, h
    cp a
    inc e
    rst $38
    jr @+$01

    cp b
    ld a, a
    rra
    rst $38
    ld a, a
    cp a
    ccf
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    rra
    rst $38
    ld e, a
    cp a
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
    rrca
    rst $38
    ccf
    rst $18
    ld c, $ff
    sbc $bf
    adc h
    rst $38
    adc $bf
    ld l, l
    cp a
    call c, Call_000_0c2f
    ld a, a
    ld [$4cff], sp
    rst $38
    ld l, c
    rst $18
    rst $38
    rst $38
    cp l
    rst $38
    push af
    ei
    push af
    ei
    or l
    ei
    db $dd
    di
    ld e, l
    di
    rst $18
    di
    ld h, e
    rst $38
    ld l, e
    rst $30
    ld l, b
    rst $30
    rst $28
    ldh a, [$6f]
    ldh a, [rIE]
    ldh [$df], a
    ldh [$df], a
    ldh [$d3], a
    db $ec
    db $d3
    db $ec
    pop de
    xor $a1
    sbc $a1
    sbc $a1
    sbc $81
    cp $cd

jr_07a_592f:
    cp [hl]
    adc b
    rst $38
    call z, $8cff
    rst $38
    adc l
    cp $98
    rst $38
    adc l
    cp $99
    cp $19
    cp $1f
    ldh [rNR31], a
    db $e4
    ld c, a

jr_07a_5945:
    or b
    inc e

jr_07a_5947:
    ld [c], a
    inc [hl]
    jp z, $d22e

    ld d, b
    xor e
    dec e
    ld [c], a
    inc c
    di
    inc d
    ld [$bf40], a
    jr z, jr_07a_592f

    ld a, [bc]
    push af
    inc b
    ei
    jr jr_07a_5945

    jr jr_07a_5947

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    dec b
    rst $38
    ld bc, $12ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    add hl, hl
    rst $38
    inc b
    rst $38
    inc c
    rst $30
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld a, [bc]
    rst $38
    inc l
    rst $38
    inc b
    cp $04
    db $fd
    inc d
    db $fd
    inc l
    db $fd
    nop
    db $fd
    nop
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$18
    ld a, [$fa08]
    db $10
    ldh a, [rNR10]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh a, [$80]
    ldh a, [rNR41]
    ldh a, [rLYC]
    ld a, [c]
    ld b, c
    xor $60
    xor $e0
    xor $e0
    db $eb
    ldh [$ef], a
    and $fe
    and $ff
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
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

jr_07a_59d6:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f0ff]
    rst $38
    pop af
    cp $f0
    cp $fe
    cp $f2
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
    di
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ret z

    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    inc bc
    db $fc
    ld b, $f9
    db $eb
    rst $38
    rst $00
    rst $38
    inc a
    jp Jump_000_00ff


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
    ld bc, $01ff
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
    ld a, a
    add b
    ld h, b
    add b
    ld b, b
    cp a
    and b
    nop
    and b
    nop
    jr nz, jr_07a_59d6

    ld h, b
    add b
    ldh [$80], a
    ld d, b
    and b
    ld e, l
    and b
    sbc a
    ldh [$8b], a
    db $f4
    add b
    rst $38
    add b
    rst $38
    cp a
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    cp $ff
    nop
    sbc $00
    db $dd
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    ldh [rP1], a
    rst $38
    rla
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $18
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ldh [rIE], a
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
    call nz, $9aff
    rst $20
    ld [hl], b
    add c
    dec [hl]
    ld [bc], a
    dec [hl]
    pop bc
    xor e
    ret nz

    or e
    ret nz

    ld e, a
    pop hl
    ld l, b
    sbc [hl]
    adc d
    db $fc
    ld hl, sp-$01
    ld hl, sp-$01
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    dec bc
    ld de, $031d
    dec c
    inc bc
    dec b
    inc bc
    inc hl
    ld bc, $c121
    dec bc
    pop hl
    dec l
    pop bc
    dec b
    pop hl
    ld a, [de]
    push hl
    inc b
    di
    ld bc, $09ff
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rra
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
    dec b
    ld a, [$8040]
    ld b, h
    add b
    ret nz

    nop
    ret nc

    nop
    nop
    rst $38
    rrca
    ldh a, [$7f]
    add e
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    scf
    scf
    adc c
    adc c
    ld b, d
    ld b, d
    ld hl, $e821
    add sp, -$03
    db $fd
    cp $fe
    rst $38
    ld a, a
    rst $38

Jump_07a_5b21:
    rst $28
    rst $38
    ld a, $ff
    dec bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $01
    ld b, $01
    inc bc
    db $fd
    inc b
    ld bc, HeaderLogo
    ld b, $01
    ld b, $01
    ld b, $01
    rrca
    ld bc, $055a
    ld a, [$f805]
    rlca
    ld b, b
    cp a
    nop
    rst $38
    db $fc
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    add l
    rst $38
    nop
    or a
    nop
    rst $28
    nop
    rst $28
    nop
    and a
    nop
    inc bc
    nop
    rst $38
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    jr nz, jr_07a_5b82

jr_07a_5b82:
    add b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    add b
    ldh a, [rP1]
    ld h, b
    sub b
    jr nc, jr_07a_5bd0

    and b
    ld d, b
    nop
    ldh a, [$08]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$58
    and b
    ret c

    ld hl, sp-$04
    ld hl, sp-$10
    ldh a, [$e0]
    ldh a, [$e0]
    pop af
    ret nz

    di
    ldh [$e1], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    call $efff
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    xor $ff
    ldh [rIE], a

jr_07a_5bd0:
    ldh a, [$e0]
    jr nz, @-$2e

    add b
    ldh a, [rNR41]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    xor $ff
    ld a, l
    rst $38
    rst $28
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    cp $7f
    ld a, a
    cp a
    cp a
    dec a
    dec a
    cp a
    or a
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    ld l, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    db $76
    adc c
    db $76
    adc c
    ld [hl], a
    adc c
    db $76
    adc c
    db $76
    adc c
    di
    inc c
    push af
    ld [$03f4], sp
    ld h, l

Call_07a_5c21:
    add d
    ld a, h
    add e
    ld a, c
    add d
    ld [hl], c
    add d
    ld a, b
    add e
    ld l, b
    add e
    ld d, h
    and e
    ld [hl], h
    add e
    ld d, l
    and d
    ld e, c
    and [hl]
    ld d, b
    and a
    ld e, b
    and a
    db $10
    rst $20
    ld d, b
    and a
    dec e
    ld [c], a
    dec bc
    or $08
    rst $30
    dec bc
    rst $30
    ld [$09f7], sp
    rst $30
    ld [$09f7], sp
    rst $30
    cpl
    rst $30
    and d
    rst $38
    ld l, c
    rst $30
    dec l
    rst $30
    and l
    rst $38
    and e
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $28
    rst $30
    rst $38
    rst $38
    ld e, $1f
    rrca
    rrca
    rlca
    rrca
    ld bc, $0107
    rlca
    ld bc, $0003
    inc bc
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
    inc bc
    ld [bc], a
    ccf
    ld b, d
    add a
    ld a, [hl+]
    rla
    nop
    rst $38
    and b
    rst $38
    sub h
    cp l
    adc b
    sbc a
    adc a
    add a
    inc bc
    adc a
    add e
    add a
    add c
    add a
    add e
    add $a6
    rst $38
    add [hl]
    rst $28
    nop
    and $e1
    or $f4
    rst $38
    cp $fd
    db $e4
    rst $38
    dec [hl]
    call z, $be04
    inc a
    cp $50
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld e, [hl]
    ld bc, $c001
    ret nz

    db $e4
    db $e4
    ldh a, [$f0]
    db $fc
    db $ec
    cp $fe
    rst $38
    or a
    rst $38
    rst $28
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    db $dd
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    inc b
    inc b
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    dec d
    dec d
    ld b, b
    ld b, b
    add b
    add b
    db $10
    db $10
    pop bc
    pop bc
    sub a
    ld a, a
    sbc a
    ld a, a
    dec d
    rst $38
    sub h
    ld a, a
    ld [bc], a
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    dec c
    rst $38
    sub a
    ld a, a
    dec [hl]
    rst $38
    dec e
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    dec hl
    rst $38
    dec c
    rst $38
    rla
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld e, a
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
    or a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
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
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rra
    ld a, a
    cpl
    ccf
    rrca
    ccf
    rlca
    rra
    rrca
    rra
    rlca
    rrca
    rlca
    rrca
    inc bc
    rra
    ld bc, $0063
    add a
    adc a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    jr c, @+$01

    ld a, c
    ld a, e
    ld a, c
    ld a, e
    ld [hl-], a
    ld a, e
    jr nc, jr_07a_5e0d

    ld [hl-], a
    ld a, a
    ld [hl], d
    ld a, [hl]
    ld [hl], b
    cp $70
    db $f4
    ld [hl], b
    ld [hl], h
    ld [hl], b
    db $fc
    ldh a, [$fe]
    ld h, b
    cp $04
    cp $04
    db $ec
    inc b
    add h
    inc b
    call nz, $0404
    inc b
    inc c
    inc b
    inc b
    ld [$0084], sp
    inc c
    ld [$0804], sp
    ld [$0888], sp
    adc b
    db $fc
    and b
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    adc a
    inc h
    inc h
    nop
    nop
    add b
    add b
    inc d
    inc d
    sub b
    sub b
    ld b, b
    ld b, b
    jr nz, jr_07a_5df0

    ret nz

    ret nz

    ldh a, [$f0]
    ld a, [$fc7a]
    db $fc
    cp $b6
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    dec b
    cp a
    cp a
    rlca
    rlca
    daa
    daa
    adc e
    adc e
    ld b, a
    ld b, a
    rla
    rla
    rrca
    rrca

jr_07a_5df0:
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $30
    cp $ff
    cp $fe
    cp $fe
    rst $38
    cp $ff
    cp [hl]
    cp $ff
    cp $ff

jr_07a_5e0d:
    cp $ff
    cp $fd
    cp $bd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $bc
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $fc
    rst $38
    ld a, h
    rst $38
    db $fd
    cp $fd
    cp $f8
    rst $38
    cp $fd
    rst $38
    db $fc
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$f9fd]
    cp $fd
    ld a, [$fff8]
    db $fc
    ei
    db $fd
    ld a, [$fafd]
    ld sp, hl
    cp $f9
    cp $f1
    cp $f8
    rst $38
    ld a, [$f1fd]
    cp $f8
    rst $38
    ld sp, hl
    cp $f1
    cp $f0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ld [hl], c
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    ld b, b
    rst $38
    ld h, b
    ret nz

    ld b, b
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
    db $fc
    ret nz

    ret nz

    add h
    add h
    nop
    nop
    ld c, d
    ld c, d
    dec b
    dec b
    ld [de], a
    ld [de], a
    dec bc
    dec bc
    rlca
    rlca
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, h
    ld b, h
    db $10
    db $10
    ld bc, $c401
    call nz, $e0e0
    pop af
    pop af
    ldh a, [$f0]
    db $f4
    or h
    ld a, [$fefa]
    sbc $fe
    cp $fd
    or l
    db $76
    ld [$2856], sp
    db $76
    ld [$2847], sp
    ld d, [hl]
    jr z, jr_07a_5ecf

    ld e, b
    ld l, l
    db $10
    ld b, d

jr_07a_5ecf:
    jr c, jr_07a_5f3e

    db $10
    and [hl]
    ld e, b
    xor d
    ld d, b
    db $ec
    db $10
    adc d
    db $10
    ld b, d
    db $10
    add sp, $10
    inc l
    ret nc

    ld b, d
    or b
    jp hl


    db $10
    ld c, b
    or h
    daa
    ret nc

    ld c, $f1
    sbc [hl]
    ld h, c
    cp d
    ld h, l
    ld l, [hl]
    and c
    ld l, l
    or c
    ld a, $e1
    sbc [hl]
    ld h, c
    adc h
    ld [hl], e
    ld [bc], a
    ld sp, hl
    sbc l
    ld h, d
    sbc b
    ld h, a
    dec e
    ld [c], a
    inc c
    ld a, [c]
    sub $ea
    ld e, d
    and $84
    ld a, d
    ret nz

    ld a, [hl]
    ret nz

    ld a, [hl]
    pop de
    ld l, [hl]
    ld e, c
    and $9b
    ld h, h
    adc c
    db $76
    inc sp
    call z, $ff00
    inc b
    rst $38
    inc bc
    db $fc
    inc b
    rst $38
    ld b, $fd
    add d
    db $fd
    add d
    db $fd
    add b
    rst $38
    adc b
    rst $38
    adc h
    ei
    ld [$04ff], sp
    ei
    add b
    rst $38
    ld [$08ff], sp
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38

jr_07a_5f3e:
    jr nz, @+$01

    ld bc, $17ff
    rst $38
    nop
    ld hl, sp+$0b
    inc b
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
    nop
    rst $38
    nop
    ccf
    add b
    rrca
    db $10
    rlca
    add b
    inc bc
    ld b, h
    nop
    ret z

    nop
    ld a, b
    nop
    rst $38
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    cp l
    rst $38
    or $ff
    ei
    ld a, a
    ld [hl], a
    ld a, a
    ld a, l
    rst $38
    rst $30
    ld a, a
    ld a, l
    ld a, a
    ld [hl], a
    ld a, a
    ld a, a
    ld a, h
    ld l, h
    ld a, a
    ld a, a
    ld a, h
    ld [hl], h
    ld a, h
    ld e, h
    dec c
    ld h, d
    ld b, $69
    inc b
    ld l, d
    call nc, Call_07a_444a
    ld c, d
    sub [hl]
    ld c, d
    db $fc
    ld b, d
    sbc h
    ld b, d
    cp h
    ld b, d
    nop
    cp $2e
    db $fc
    ld b, l
    add b
    db $10
    add l
    ld de, $3184
    add h
    nop
    add h
    ld h, [hl]
    add b
    ld [bc], a
    add h
    ld [bc], a
    add h
    nop
    add d
    and b
    ld [bc], a
    ld h, d
    ld [$0a01], sp
    ld b, d
    add hl, bc
    ld b, l
    ld a, [bc]
    and l
    ld a, [bc]
    ldh [$0b], a
    ld [hl], c
    adc [hl]
    push de
    ld a, [bc]
    add $19
    ld b, c
    ld a, [de]
    ld b, h
    dec de
    ld b, h
    dec de
    ret z

    rla
    ldh [$1f], a
    add sp, $17
    ret nc

    cpl
    ret nz

    ccf
    pop bc
    ccf
    pop bc
    ccf
    ret z

    scf
    ret nz

    ccf
    add c
    ld a, [hl]
    jp $033e


    cp $22
    cp $01
    cp $41
    cp $41
    cp $c1
    ld a, [hl]
    ld b, c
    cp $43
    db $fc
    ld b, c
    cp $46
    db $fd
    add d
    db $fd
    add d
    db $fd

jr_07a_6000:
    add d
    db $fd
    add b
    rst $38
    adc d
    db $fd
    adc h
    ei
    inc h
    ei
    jr z, @+$01

    sub h
    ei
    ld h, h
    ei
    ld b, d
    db $fd
    ld [hl], b
    rst $38
    nop
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
    add b
    rlca
    nop
    nop
    ld bc, $00d7
    xor l
    nop
    ld d, [hl]
    nop
    push af
    nop
    cp $00
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rla
    add b
    inc bc
    ret z

    ld bc, $00f0
    ld a, [c]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    cp $00
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld e, a
    ld e, a
    cpl
    cpl
    dec bc
    dec bc
    adc c
    adc c
    dec de
    ld [$0810], sp
    ld d, b
    ld [$1028], sp
    jr nz, jr_07a_6082

    and b
    db $10
    add b
    db $10
    jr nc, jr_07a_6000

    jr z, jr_07a_6082

    jr nz, jr_07a_60c4

    ld c, b
    jr nc, jr_07a_60bf

    jr nc, jr_07a_60de

    jr nc, jr_07a_6087

    ld [hl], c
    sbc b
    ld h, c
    sbc h
    ld h, c
    ld [hl-], a
    pop hl

jr_07a_6082:
    inc d
    pop hl
    ld e, d
    and c
    add hl, bc

jr_07a_6087:
    ld [c], a
    sbc h
    ld h, d
    inc [hl]
    jp nz, Jump_07a_42e4

    ld hl, sp+$46
    ld [hl], l
    jp z, $f20c

    ld a, [hl+]
    call nc, $f40a
    ld a, [bc]
    push af
    res 6, h
    ld [$c195], a
    cp [hl]
    add e
    db $fc
    add l
    ld a, [$bc43]
    ld b, [hl]
    cp c
    db $ec
    ei
    add l
    ld a, d
    ld [hl], h
    dec bc
    ld h, h
    dec de
    ldh [$1f], a
    and b
    rra
    ld [hl], b
    rra
    or b
    rra
    ld b, b
    ccf

jr_07a_60ba:
    ret c

    scf
    ret z

    scf
    ld h, b

jr_07a_60bf:
    ccf
    ret nz

    ccf
    add b
    ld a, a

jr_07a_60c4:
    and b
    ld a, a
    ldh [$3f], a
    nop
    rst $38
    nop
    rst $38
    pop bc
    ld a, [hl]
    inc d
    rst $38
    ret nz

    ld a, a
    ld b, h
    rst $38
    inc d
    rst $38
    ld d, b
    rst $38
    ld e, b
    rst $38
    add h
    rst $38
    sbc b
    rst $38

jr_07a_60de:
    adc b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    jp c, Jump_000_0005

    rst $38
    nop
    cp $00
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
    rrca
    ldh a, [$08]
    ldh a, [rTIMA]
    ld hl, sp+$02
    db $fc
    ld bc, $00fe
    rst $38
    nop
    db $fc
    rlca
    ld hl, sp+$0c
    add e
    jr c, jr_07a_6111

    rra
    nop
    ccf
    ret nz

    rrca
    ldh a, [$f8]

jr_07a_6111:
    rst $38
    cp $7f
    rst $38
    rra
    or a
    rrca
    db $dd
    inc bc
    cp a
    nop
    rst $30
    nop
    ld e, a
    nop
    ld [$b700], a
    nop
    push af
    nop
    xor d
    inc b
    jr nz, jr_07a_60ba

    nop
    inc b
    nop
    jr nz, jr_07a_612f

jr_07a_612f:
    ld [$9292], sp
    ld [$c108], sp
    pop bc
    ldh a, [$f0]
    db $f4
    db $f4
    ldh a, [$f0]
    ld a, [$fcfa]
    db $fc
    add d
    ld b, b
    add b
    ld b, b
    sbc d
    ld b, b
    nop
    ld b, b
    ld c, b
    nop
    dec l
    ld b, b
    sbc l
    nop
    ld hl, $0080
    add c
    ld b, $80
    ld bc, $0584
    add d
    add a
    ld [$0881], sp
    sub l
    ld [$0a15], sp
    rlca
    ld [$201f], sp
    add hl, de
    ld b, $09
    ld d, [hl]
    ld l, b
    rla
    xor b
    ld d, a
    ld l, c
    rla
    ld c, e
    dec [hl]
    sub $29
    ld [$50f7], sp
    xor a
    ld d, b

jr_07a_6177:
    xor a
    db $db

jr_07a_6179:
    ld h, $17
    ld [$6f90], a
    ldh [rVBK], a
    ld de, $3dee
    cp $2c
    rst $10
    inc a
    rst $00
    db $10
    rst $28
    ld d, d
    xor l
    ld b, c
    cp [hl]
    ld e, d
    xor l
    dec a
    jp z, $af50

    ld [hl], h
    adc e
    jr nz, jr_07a_6177

    jr nz, jr_07a_6179

    ld b, b
    cp a
    ld b, b
    cp a
    ld d, c
    cp a
    pop bc
    ccf
    ld b, c
    cp a
    nop
    rst $38
    ld h, b
    cp a
    ld [bc], a
    rst $38
    ld hl, $00fe
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    add b
    rst $38
    adc b
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
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$04
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    ld e, a
    add b
    cpl
    ret nz

    rla
    ldh [$0b], a
    ldh a, [rTIMA]
    ld hl, sp+$02
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
    nop
    ld hl, sp+$07
    nop
    inc bc
    ld [bc], a
    inc sp
    jp nz, $f50d

    ld b, $fa
    inc bc
    db $fd
    add c
    ld a, [hl]
    ret nz

    ccf
    ld hl, sp+$07
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp-$7f
    cp $40
    ld a, a
    db $10
    rra
    add a
    rlca
    pop hl
    inc bc
    ld a, b
    ld bc, $00ac
    or [hl]
    nop
    ld c, d
    db $10
    inc bc
    add b
    ld b, $20
    ld bc, $0008
    ld b, b
    nop
    ld [hl+], a
    nop
    ld [$8000], sp
    nop
    add c
    nop
    ld de, $8800
    db $ed
    db $10
    db $ed
    db $10
    db $ed
    db $10
    xor [hl]
    ld d, c
    jp c, Jump_07a_5b21

    and c
    sbc e
    ld h, c
    sbc d
    ld h, c
    call nc, $bc23

jr_07a_6253:
    ld b, e
    xor l
    ld b, e
    ld a, [hl-]

jr_07a_6257:
    ld b, d
    ld [hl], h
    ld b, d
    rla
    ld b, b
    ld h, c
    add h
    ld h, c
    add h
    ld a, [$6384]
    add h
    jr nc, @-$7a

    db $76
    adc b
    di
    ld [$08f3], sp
    db $e3
    jr jr_07a_62d4

    jr jr_07a_6257

    jr jr_07a_62a1

    sub b
    rst $28
    db $10
    ld l, b
    sub l
    db $eb
    inc d
    call c, Call_07a_5c21
    and c
    call z, $cc21
    inc hl
    sbc h
    ld h, e
    adc h
    ld h, e
    add hl, sp
    add $78
    rst $00
    jr c, jr_07a_6253

    ld hl, sp+$47
    jr c, jr_07a_6257

    inc l
    rst $10
    cp b
    rst $00
    db $e4
    sbc a
    and b
    rst $18
    ld b, b
    cp a
    ld [$80ff], sp
    ld a, a
    add b
    ld a, a
    add b

jr_07a_62a1:
    ld a, a
    ld de, $10ff
    rst $38
    ld de, $20ff
    rst $38
    jr nz, @+$01

    and b
    rst $38
    ld [hl-], a
    rst $38
    and e
    cp $01
    cp $54
    rst $38
    ld d, b
    rst $38
    ld d, h
    rst $38
    ld a, b
    rst $38
    jr nc, @+$01

    and b
    rst $38
    cp b
    rst $38
    call nc, Call_000_00ff
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
    rst $38
    nop
    rst $38

jr_07a_62d4:
    rst $38
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
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    ld e, a
    add b
    cpl
    ret nz

    rla
    ldh [$08], a
    ldh a, [$03]
    nop
    jp Jump_000_2300


    ret nz

    dec de
    ldh [$84], a
    ld a, b
    add d
    ld a, h
    ld b, c
    ld a, $60
    rra
    sub b
    rrca
    ld a, h
    sub e
    ld a, $cd
    dec c
    pop af
    rst $00
    add hl, sp
    di
    inc c
    db $fd
    ld [bc], a
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    add c
    ld a, [hl]
    jr nz, jr_07a_6339

jr_07a_631a:
    db $10
    rrca
    ld c, b
    rlca
    inc b
    inc bc
    add c
    inc bc
    and e
    ld b, c
    jr nz, jr_07a_6327

    nop

jr_07a_6327:
    ld b, h
    ld [bc], a
    add b
    nop
    inc b
    nop
    ld b, d
    nop
    ld [de], a
    pop bc
    cp h
    pop bc
    cp h
    ld b, l
    cp b
    ld de, $09a8

jr_07a_6339:
    cp b
    db $db
    jr z, jr_07a_631a

    ld a, [hl+]
    and l
    ld e, d
    push hl
    jr jr_07a_6357

    pop af
    ld h, d
    push af
    and $11
    xor h
    inc de
    add l
    dec hl
    add l

jr_07a_634d:
    dec hl
    add c
    scf
    sub c
    daa
    ld c, d

jr_07a_6353:
    scf
    ld d, d
    cpl
    or d

jr_07a_6357:
    ld c, a
    ld de, $b96e
    ld b, [hl]
    ld d, c
    xor [hl]
    ld d, h
    xor a
    ld b, $fd
    dec d
    xor $00
    rst $38
    ld c, b
    cp a
    ld c, b
    cp a
    ld c, c
    cp [hl]
    dec b
    ld a, [$ff10]
    add b
    ld a, a
    db $10
    rst $38
    nop
    rst $38
    ld bc, $2eff
    rst $38
    inc e
    db $e3
    ld e, $e3
    ld e, $e3
    ld a, [hl-]
    rst $00
    jr nc, jr_07a_6353

    jr c, jr_07a_634d

    inc l
    rst $10
    ld l, h
    sub a
    ld [hl], b
    adc a
    ldh a, [$8f]
    ld l, b
    sbc a
    ld l, b
    sbc a
    ld a, [hl+]
    rst $18
    and d
    ld e, a
    sub c
    ld a, a
    db $10
    rst $38
    add h
    ld a, a
    ld de, $8aff
    ld a, a
    ld a, [hl+]
    rst $38
    inc l
    rst $38
    inc c
    rst $38
    inc l
    rst $38
    ld d, [hl]
    rst $38
    ld e, b
    rst $38
    ld e, h
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
    rst $38
    ld bc, $fefe
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
    rst $38
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
    rrca
    nop
    ret nz

    nop
    ld [hl], b
    add b
    db $dd
    inc h
    rst $08
    ld sp, $38c7
    db $e3
    ld e, h
    ld a, c
    add [hl]
    ld a, $c9
    rlca
    ld a, [$f807]
    add c
    ld a, [hl]
    jr nc, jr_07a_6407

    db $ec
    ld h, e
    rst $10
    db $10
    rst $38
    ld a, [bc]
    db $fd

jr_07a_63ff:
    inc b
    cp $00
    rst $38
    ld bc, $00ff
    rst $38

jr_07a_6407:
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    ld [hl-], a
    ld l, c
    and b
    ld l, e
    sbc b
    ld h, a
    and l
    ld d, d
    push af
    ld b, d
    ld e, l
    jp nz, Jump_07a_42d9

    jr nc, jr_07a_63ff

    add hl, sp
    call nz, $adc4
    pop af

jr_07a_6435:
    adc h
    push af
    adc b
    db $76

jr_07a_6439:
    adc c
    ld d, [hl]
    xor b
    sub a
    ld l, b
    and h
    ld e, c
    add sp, $15
    db $ed
    ld [de], a
    and b
    ld d, a
    jp z, $4a35

    or l
    sbc d
    ld h, l
    adc b
    ld [hl], a
    ld e, b
    and a
    and b
    ld e, a
    and d
    ld c, a
    jr nz, jr_07a_6435

    and d
    ld e, l
    jr nz, jr_07a_6439

    ld [bc], a
    db $fd
    ld [hl+], a
    db $dd
    add d
    db $fd
    rlca
    rst $38
    inc b
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld d, $eb
    ld b, $fb
    ld a, [bc]
    rst $30
    nop
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld [$08ff], sp
    rst $38
    adc b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld de, $14ff
    rst $38
    ld a, [bc]
    rst $38
    ld [hl+], a
    rst $38
    ld a, [hl+]
    rst $38
    jr z, @+$01

    inc l
    rst $38
    ld d, c
    rst $38
    ld d, l
    rst $38
    ld e, e
    rst $38
    ld a, [hl-]
    rst $38
    xor a
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    inc bc
    ld bc, $ffff
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
    nop
    rst $38
    nop
    rrca
    nop
    ld h, b
    nop
    ld a, h
    nop
    cp $00
    rst $30
    ld [$1e61], sp
    ldh a, [rVBK]
    ret c

    rlca
    or $11
    ei
    ld [$00fc], sp
    cp $20
    rst $38
    ld [$08fb], sp
    cp l
    ld b, c
    rst $18
    inc hl
    rst $28
    ld de, $40ff
    ei
    inc h
    rst $38
    ret nz

    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    nop
    ld bc, $0202
    inc bc
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
    dec b
    ld b, $07
    ld [$0a09], sp
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
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_07a_6561

    ld a, [de]
    dec de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07a_6577

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07a_6560

    ld [bc], a
    ld [bc], a

jr_07a_6560:
    add hl, hl

jr_07a_6561:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07a_659a

    ld [hl-], a
    inc h
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $0a
    scf
    jr c, jr_07a_65ac

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_07a_6577:
    ld a, $3f
    ccf
    ld b, b
    ld b, c
    ld b, d
    inc sp
    inc sp
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ccf
    ccf
    ccf
    ld c, h
    ld c, l
    inc sp
    inc sp
    inc sp
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    inc sp
    ld d, e
    ccf
    ccf
    ccf

jr_07a_659a:
    ccf
    ld d, h
    ld d, l
    inc sp
    inc sp
    inc sp
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ccf
    ccf
    ccf
    ccf
    ld e, l

jr_07a_65ac:
    inc sp
    inc sp
    inc sp
    inc sp
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ccf
    ccf
    ld h, [hl]
    ld h, a
    inc sp
    inc sp
    inc sp
    inc sp
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    inc sp
    ld h, h
    ld h, l
    ccf
    ld l, [hl]
    inc sp
    inc sp
    inc sp
    inc sp
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
    dec h
    inc sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    nop
    nop
    nop
    inc b
    inc b
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
    nop
    nop
    nop
    inc b
    inc b
    inc b
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
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc b
    ld [bc], a
    ld [bc], a
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    ld [bc], a
    dec b
    dec b
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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    db $f4
    rst $38
    push af
    cp $fb
    rst $38
    ld a, [$fbff]
    cp $fc
    rst $38
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    rst $38
    rst $28
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
    ld a, a
    rst $38
    db $10
    rst $38
    sub h
    ld a, e
    db $f4
    ei
    ld l, h
    sbc e
    add sp, $1f
    cp d
    ld c, l
    ld [hl], $cd
    sub [hl]
    ld l, l
    dec d
    xor $58
    and a
    ld e, $e3
    ld [hl], $cb
    ld d, l
    db $eb
    adc h
    di
    adc e

jr_07a_680d:
    push af
    cp [hl]
    pop hl
    jp $edf8


    ld a, [c]
    rst $38
    ldh a, [$e6]
    ld sp, hl
    db $e4
    ei
    db $fc
    ei
    ld a, [$f5fd]
    cp $fc
    rst $38
    ld hl, sp-$01
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
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
    sbc e
    and [hl]
    ld l, e
    sub [hl]
    jr nc, jr_07a_680d

    ld l, a
    db $d3
    dec bc
    rst $30
    rlca
    rst $28
    daa
    rst $28
    rla
    rst $28
    rrca
    rst $30
    ld de, $1bff
    rst $30
    push af
    ei
    inc hl
    db $db
    pop af
    dec bc
    ret z

    daa
    cp b
    ld b, a
    ld hl, sp-$79
    ld a, d
    add l
    inc a
    jp Jump_07a_52ad


    db $fc
    ld b, e
    xor [hl]
    ld d, c
    sbc h
    ld h, c
    db $fc
    inc hl
    add e
    ld a, h
    ld c, d
    or h
    rra
    ldh a, [$a7]
    ld e, b
    add hl, sp
    jp z, $f80f

    inc bc
    db $fc
    add e
    db $fc
    add a
    db $fc
    and c
    sbc $50
    rst $28
    set 6, [hl]
    add b
    rst $38
    and c
    rst $38
    pop bc
    rst $38
    pop de
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add sp, -$01
    ld hl, sp-$01
    db $f4
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld a, [$feff]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $fe
    cp $fe
    rst $38
    rst $38
    cp a
    rst $38
    rst $38

Jump_07a_68b5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nc

    ldh [$fe], a
    ldh [$e2], a
    ldh [$f2], a
    ldh [$e2], a
    ldh a, [$f2]
    ldh a, [$f9]
    ldh a, [$f9]
    ldh a, [$f9]
    ld hl, sp-$07
    ld hl, sp-$04
    ld hl, sp-$08
    db $fc
    ld a, [$fefc]
    db $fc
    cp $fc
    db $fd
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38

jr_07a_68e7:
    rst $38
    rst $38

jr_07a_68e9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    rst $38
    jp nz, $d63f

    ccf
    ld b, a
    cp a
    ld b, [hl]
    cp a
    inc bc
    rst $38
    adc d
    ld a, a
    dec bc
    rst $38
    ld b, l
    cp a
    add l
    rst $38
    add l
    rst $38
    dec b
    rst $38
    ld b, [hl]
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    and d
    rst $38
    ld hl, $01ff
    rst $38
    ld h, b
    rst $38
    nop
    ld hl, sp+$20
    ret nz

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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

Jump_07a_692d:
    ret nz

    ret nz

    ret nz

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
    di
    db $fc
    pop bc
    nop
    pop hl
    nop
    ld a, l
    nop
    add h
    nop
    adc [hl]
    jr nc, jr_07a_68e7

    jr nz, jr_07a_68e9

    jr nz, jr_07a_69aa

    jr nz, jr_07a_69dc

    nop
    ld b, c
    db $10
    pop bc
    db $10
    pop hl
    db $10
    cp l
    nop
    or d
    ld [$08f3], sp
    rst $30
    ld [$08f7], sp
    cp e
    ld b, h
    db $eb
    inc d
    ei
    inc b
    db $db
    inc h
    push de
    ld a, [hl+]
    db $fd
    ld [bc], a
    ld h, a
    sbc d
    jp hl


    sub [hl]
    add sp, -$69
    add sp, -$69
    xor c
    rst $10
    pop de
    rst $28
    ret nc

    rst $28
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [$ef]
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$fb]

jr_07a_69aa:
    ld hl, sp-$01
    ld hl, sp-$04
    ld hl, sp-$01
    ld a, h
    cp $f4
    cp $44
    cp $32
    ccf
    jr c, jr_07a_69f9

    inc e
    ld e, $0e
    rrca
    ld b, $06
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07a_69dc:
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

jr_07a_69f9:
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $ff
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
    rst $28
    ldh a, [$df]
    nop
    ld sp, hl
    nop
    adc c
    nop
    ld c, c
    add b
    ld b, c
    adc b
    ld b, c
    adc b
    ld c, c
    add b
    ld l, l
    add b
    xor l
    ld b, b
    and d
    ld b, h
    dec hl
    ld b, h
    dec hl
    ld b, h
    sbc a
    ld h, b
    rst $18
    jr nz, jr_07a_6aa2

    and d
    ld e, l
    and d
    db $dd
    ld [hl+], a
    call $cd32
    ld [hl-], a
    cp [hl]
    ld d, c
    or [hl]
    ld e, c
    or $19
    ld a, [c]
    dec e
    and c
    ld e, [hl]
    ret


    ld a, $d9
    ld l, $d9
    ld l, $49
    cp [hl]
    add b
    ld a, a
    ld b, h
    cp a
    inc l
    rst $10
    inc b
    rst $38
    add h
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    inc bc
    rst $38
    ld c, h
    di
    ld a, e
    add a
    ld a, a
    cp a
    db $fc
    rst $38
    pop hl
    rst $38
    inc c
    cp $60
    pop af
    sub l
    rst $38
    xor h
    cp $20
    di
    add $ef
    ldh [rIE], a
    rlca
    rst $18
    jr @+$01

    ldh [rIE], a
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
    inc e
    ldh [$63], a
    add b
    sbc a
    nop
    ld a, a
    nop
    ld a, a
    nop

jr_07a_6aa2:
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    ld e, a
    add b
    ld e, a
    add b
    cpl
    ret nz

    cpl
    ret nz

    rla
    ldh [rNR22], a
    ldh [$0b], a
    ldh a, [$0b]
    ldh a, [rTIMA]
    ld hl, sp+$05
    ld hl, sp+$02
    db $fc
    ld [bc], a
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
    nop
    nop
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
    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fc
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ldh [$fe], a
    ld bc, $01fe
    db $fd
    ld [bc], a
    ld bc, $0d7a
    ld b, d
    dec b
    ld b, d
    xor l
    ld b, d
    xor $01
    rst $38
    nop
    adc $21
    sbc $21
    ld e, [hl]
    and c
    sbc $21
    sbc $21
    sbc $21
    db $ec
    inc de
    xor h
    ld d, e
    db $ed
    ld [de], a
    xor $11
    and l
    ld e, d
    add $39
    call nz, $c13b
    ld a, $46
    cp c
    ld c, b
    cp a
    ld b, b
    cp a
    ld c, b
    cp a
    ld b, b
    cp a
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
    ld b, [hl]
    rst $38
    ld b, c
    cp $04
    ei
    cpl
    rst $38
    ld a, a

jr_07a_6b51:
    rst $38
    ldh a, [rIE]
    add $ff
    jr nc, jr_07a_6b51

    add e
    rst $00
    ld [bc], a
    ccf
    sub b
    db $fd
    add e
    rst $28
    jr jr_07a_6be1

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
    inc bc
    db $fc
    inc e
    ldh [$63], a
    add b
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
    cp a
    nop
    rst $18
    nop
    ld e, a
    add b
    cpl
    ret nz

    cpl
    ret nz

    rla
    ldh [rNR22], a
    ldh [$0b], a
    ldh a, [$0b]
    ldh a, [rTIMA]
    ld hl, sp+$05
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    ld bc, $01fe
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
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$c0], a
    ldh [$c0], a
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $18
    ccf
    rst $38

jr_07a_6be1:
    rra
    rst $18
    ccf
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    rst $38
    rra
    cpl
    rst $18
    ld l, a
    sbc a
    xor a
    ld e, a
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    sbc a
    rst $28
    sbc a
    rst $28

Call_07a_6c00:
    rra
    rst $28
    adc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    nop
    ld b, a
    nop
    ld b, a
    ld [bc], a
    ld h, a
    ld [bc], a
    ld b, a
    inc b
    inc de
    nop
    rla
    nop
    db $fd
    nop
    pop hl
    rra
    rst $38
    cp $ff
    ld a, $7f
    ld a, [hl]
    rst $38
    adc $ff
    dec c
    cp a
    ld h, e
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
    inc bc
    db $fc
    inc e
    ldh [$63], a
    add b
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
    rst $38
    nop
    rst $38
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
    cp a
    nop
    cp h
    nop
    ld d, e
    add b
    inc l
    jp $ef10


    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, c
    cp [hl]
    add h
    ld a, a
    add b
    ld a, a
    ld a, d
    and l
    db $10
    rst $28
    call nc, $842b
    ld a, e
    call c, $8423
    ld a, e
    ld d, h
    xor e
    adc b
    ld [hl], a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    inc c
    di
    inc l
    db $d3
    jr z, @-$27

    ld [$1cf7], sp
    di
    sbc b
    rst $30
    sbc l
    di
    ld bc, $85ff
    ei
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    ld bc, $43ff
    rst $38
    ld bc, $03ff
    rst $38
    ld c, c
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld b, c
    rst $38
    ld a, [de]
    rst $38
    db $10
    db $fc
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc e
    ldh [$63], a
    add b
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
    cp $00
    ld sp, hl
    nop
    or $01
    ret z

    rlca
    jr nc, jr_07a_6cf3

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
    ld b, b
    rst $38
    ld b, b

jr_07a_6cf3:
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
    ld b, h

Jump_07a_6cff:
    ei
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr c, @+$01

    inc d
    rst $28
    inc c
    rst $30
    dec d
    rst $28
    ld de, $14ef
    rst $28
    ld b, h
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    add b
    pop bc
    cp $f2
    db $fc
    db $fd
    cp $bf
    rst $38
    sbc a
    rst $38
    rst $28
    db $e3
    cp d
    pop af
    adc [hl]
    rst $38
    add d
    rst $38
    add b
    rst $38
    or b
    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    dec e
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    inc e
    ldh [$63], a
    add b
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
    db $fc
    nop
    ei
    nop
    db $e4
    inc bc
    sbc b
    rlca
    ld h, b
    rra
    add b
    ld a, a
    nop
    rst $38
    ld l, [hl]
    rst $38
    jp nc, Jump_07a_6cff

    rst $38
    inc e
    rst $38
    ret z

    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ret nz

    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    ld d, b
    rst $38
    pop de
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    pop de
    rst $38
    ret nc

    rst $38
    pop de
    rst $38
    pop de
    rst $38
    sub c
    rst $38
    sub h
    rst $38
    ld [hl], e
    rst $38
    ld [hl], $ff
    dec [hl]
    rst $38
    ld [hl], h
    rst $38
    ld d, h
    rst $38
    dec [hl]
    ld a, a
    ld d, $1f
    inc b
    rrca
    nop
    inc bc
    nop
    ld bc, $0700
    nop
    dec e
    nop
    ld a, c
    nop
    pop hl
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $1d00
    nop
    ld a, a
    nop
    cp $00
    db $fc
    nop
    ret nz

    nop
    nop
    add b
    ld a, a
    ld b, b
    ccf
    and b
    rra
    ret nc

    rrca
    add sp, $07
    db $f4
    inc bc
    ld a, [$fd01]
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
    cp $00
    db $fd
    nop
    ld a, [c]
    ld bc, $03cc
    jr nc, jr_07a_6e11

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
    add b

jr_07a_6e11:
    ret nz

    add b
    ret nz

    sub b
    ret nz

    add b
    ret nz

    xor b
    ret nz

    xor d
    ret nz

    sub b
    ret nz

    adc b
    ret nz

    ld de, $95e0
    ret nz

    dec d
    ldh [$82], a
    ld hl, sp-$7f
    cp $80
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld [$02ff], sp
    rst $38
    add b
    rst $38
    ld c, d
    rst $38
    adc d
    rst $38
    ld c, h
    rst $38
    add b
    ld a, a
    ld a, [bc]
    rst $38
    add d
    ld a, a
    db $10
    rst $38
    ld b, d
    rst $38
    ret nc

    ld a, a
    db $10
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $11ff
    rst $38
    nop
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    inc d
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    nop
    rst $38
    inc b
    ld a, a
    ld [bc], a
    ccf
    ld [de], a
    rra
    inc b
    rlca
    inc bc
    inc bc
    ld bc, $fe01
    nop
    ld sp, hl
    nop
    and $01
    sbc b
    rlca
    ld h, b
    rra
    add c
    ld a, [hl]
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld l, $fe
    ld c, $fc
    ld c, $fc
    ld c, $fc
    ld c, $fc
    sbc h
    db $fc
    ld e, h
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    ld hl, sp+$1c
    ld hl, sp+$1c
    ld hl, sp-$64
    ld hl, sp-$04
    ld hl, sp-$06
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$06
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f9]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f4]
    ldh a, [$f4]
    ldh [$f4], a
    ldh [$f5], a
    ldh a, [$f2]
    ldh [$f1], a
    ldh [$f0], a
    ldh [$fc], a
    ldh a, [$fe]
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
    inc h

jr_07a_6ee1:
    ei
    ld b, a
    ld sp, hl
    ld b, b
    rst $38
    ld b, h
    ei
    ld h, h
    ei
    inc b
    ei
    ld [hl], b
    rst $38
    ld a, [c]
    rst $38
    ld [de], a
    rra
    ld [hl+], a
    ccf
    ld de, $001f
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    jr nz, jr_07a_6ee1

    jr nz, @+$01

jr_07a_6f04:
    jr nz, @+$01

    ld hl, $27fe
    ld sp, hl
    cpl
    rst $38
    add hl, sp
    rst $38
    add hl, hl
    rst $38
    xor c
    ld a, a
    ld c, c
    ld a, a
    ret


    ld a, a
    pop de
    ld a, a
    rst $10
    ld a, b
    rst $30
    ld b, b
    rst $20
    ld b, b
    di
    ld b, b
    sub b
    ld h, b
    jr jr_07a_6f04

    dec e
    ldh [rNR32], a
    ldh [$0c], a
    ldh a, [rNR32]
    ldh [$0e], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$03]
    db $fc
    inc bc
    db $fc
    add e
    ld a, h
    ret nz

    ccf
    add h
    ccf
    ld c, h
    ccf
    ldh [$1f], a
    ld a, b
    adc a
    ldh a, [rIF]
    cp b
    rrca
    ret nz

    ccf
    ld c, $f1
    ld b, $81
    dec e
    add e
    dec e
    add $11
    db $ec
    ld bc, $02f0
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    rrca
    rst $30
    rrca
    rst $30
    ld c, $f7
    ld c, $f7
    inc c
    rst $30
    inc c
    rst $38
    inc e
    rst $28
    inc e
    rst $28
    inc e
    rst $28
    inc e
    rst $28
    inc e
    rst $28
    ld e, $e7
    daa
    rst $00
    daa
    jp $8143


    ld b, c
    add c
    add c
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    or b
    ld b, b
    adc h
    ldh a, [$87]
    cp $13
    ld bc, $0343
    inc bc
    inc bc
    ld b, e
    inc bc
    ld b, e
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    daa
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rlca
    adc a
    rlca
    adc a
    rrca
    adc a
    rrca
    rrca
    rrca
    ld c, a
    rrca
    rra
    rrca
    ld e, [hl]
    rrca
    rra
    rrca
    ld e, a
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    sbc [hl]
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    ccf
    ccf
    ccf
    ccf
    cp a
    ccf
    ld a, a
    ccf
    cp a
    ccf
    cp a
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
    ld [$14f7], sp
    rst $28
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
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
    ld a, a
    ld sp, hl
    rra
    rst $20
    ld a, l
    sbc a
    push hl
    ccf
    push hl
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    ld h, $ff
    daa
    db $fc
    dec hl
    ldh a, [rRP]
    ldh [$64], a
    add b
    sub b
    nop
    add c
    nop
    ld b, $00
    inc l
    nop
    jr nz, jr_07a_7038

jr_07a_7020:
    sub b
    ld h, c
    ld hl, $26c2
    ret nz

    ld c, b
    add h
    inc [hl]
    ld [$1029], sp
    ld d, d
    ld hl, $4122
    add l
    inc bc
    adc e
    inc b
    call c, $f800
    nop

jr_07a_7038:
    pop hl
    jr nc, @+$60

    and b
    ccf
    ldh [$67], a
    ld hl, sp-$3e
    db $fd
    ret nz

    rst $38
    ld b, b
    rst $38
    ld bc, $81ff
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    and $1f
    dec a
    rrca
    ld h, l
    rra
    push hl
    rra
    pop de
    cpl
    ld a, h
    add e
    ld c, $f1
    nop
    rst $38
    ld h, b
    rra
    add sp, -$19
    cp $f9
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    pop af
    rst $38
    nop
    pop af
    nop
    pop af
    nop
    db $e3
    nop
    ld [c], a
    nop
    ld [c], a
    nop
    and $00
    ld [hl], h
    nop
    inc a
    sbc h
    rst $38
    call z, $f8ff
    ld a, a
    ld a, b
    ld a, a
    jr c, jr_07a_70a9

    jr jr_07a_709b

    ld [$180f], sp
    rra
    nop
    ld bc, $c000
    db $10
    ret nz

    jr @-$58

    ld [$00b7], sp

jr_07a_709b:
    or a
    ld b, $b0
    jr nc, jr_07a_7020

    ld e, $80
    ld [hl+], a
    ret nz

    ld e, b
    and b
    ld e, $e0
    inc e

jr_07a_70a9:
    ld [c], a
    ld a, b
    add [hl]
    ld [hl], d
    add h
    ld a, b
    add h
    db $10
    db $ec
    db $10
    db $ec

jr_07a_70b4:
    ld d, b
    xor h
    sub b
    ld h, b
    sbc b
    ld h, b
    jr nz, jr_07a_70b4

    nop
    ld hl, sp+$48
    ldh [$30], a
    ret z

    jr nz, jr_07a_711c

    db $e4
    jr jr_07a_70e7

    sbc $00
    cp $00
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $df
    cp $df
    cp $ee
    cp $fe
    cp $fc
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$02
    ld hl, sp-$02

jr_07a_70e7:
    ld hl, sp-$02
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$7fff], sp
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38

jr_07a_7106:
    ld e, a
    rst $38
    ld a, e
    rst $38
    sub b
    rst $28
    add sp, $17
    rst $38
    nop

jr_07a_7110:
    rst $38
    nop
    rst $28
    nop
    ld c, a
    nop
    ld a, a
    nop
    rst $28
    nop

jr_07a_711a:
    cp e
    nop

jr_07a_711c:
    ld c, e
    nop
    dec bc
    inc h
    rra
    add b
    ld a, [hl-]
    dec e
    ld e, a
    jr nz, @-$47

    ld b, b
    ld b, a
    ret nz

    ld c, a
    add b
    adc a
    add b
    sub a
    ld [$09b7], sp
    ld b, a
    add hl, de
    ld h, h
    dec de
    add a
    ld a, [hl-]
    ld c, h
    ld [hl-], a
    adc $32
    sbc h
    ld h, d
    ld a, [hl]
    add b
    jr z, jr_07a_7106

    ld hl, sp-$7c
    jr c, jr_07a_7106

    jr nc, jr_07a_7110

    jr z, jr_07a_711a

    rlca
    ld hl, sp+$1f
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    xor $ff
    cp $ef
    db $fc
    rst $08
    ld a, l
    adc [hl]
    dec hl
    call c, $fe09
    ld bc, $80fe
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    adc a
    rst $38
    ld [$18ff], sp
    rst $20
    dec a
    ret nz

    dec a
    ret nz

    ld sp, $3dcc
    call nz, $c43d
    inc [hl]
    call $ed1c
    jr @-$11

    dec de
    add sp, $00
    ld a, [$fa00]
    ld [de], a
    ld hl, sp+$1e
    ldh a, [rNR14]
    ldh a, [rP1]
    db $f4
    inc b
    ldh a, [rNR33]
    ldh [$28], a
    pop hl
    add hl, bc
    pop hl
    ld l, c
    pop bc
    ld [hl], e
    ret nz

    ld d, e
    ret nz

    jp nc, $92c2

    jp nz, $82c4

    and [hl]
    add b
    and b
    add h
    and h
    inc b
    call z, $4800
    nop
    ld b, c
    ld [$0809], sp
    add hl, bc
    nop
    sbc c
    nop
    add c
    db $10
    add e
    db $10
    ld [hl-], a
    nop
    ld [hl], b
    ld [bc], a
    ld h, h
    ld [bc], a
    ld h, [hl]
    nop
    ld b, h
    nop
    dec c
    nop
    ld e, h
    nop
    ld sp, hl
    add b
    pop hl
    ldh a, [$f5]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    adc a
    ld a, a
    inc bc
    rst $38
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld sp, hl
    ld b, $ff
    nop
    cp a
    ld b, b
    cp $01
    jp c, $ff25

    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$0f
    rst $38
    ld a, a
    add c
    ret nz

    dec d
    add b
    inc h
    nop
    nop
    nop
    sub h
    nop
    nop
    nop
    ld d, d
    nop
    inc h
    nop
    add b
    nop
    ld b, b
    nop
    add h
    nop
    and h
    nop
    ld bc, $a200
    nop
    add b
    nop
    add l
    nop
    ld b, b
    add b
    ld b, c
    add b
    nop
    ret nz

    ld [hl+], a
    ret nz

    inc [hl]
    ret nz

    rlca
    ld hl, sp+$1d
    cp $9e
    ld a, a
    ld e, $ff
    ld a, $ff

jr_07a_7242:
    cp h
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    jr @+$01

    ld [hl], d
    db $fd
    ld h, [hl]
    ld sp, hl
    ld l, [hl]
    pop af
    dec c
    di
    dec b
    ei
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
    ld [de], a
    pop hl
    ld hl, $20c0
    ret nz

    ld sp, $21c0
    sbc $60
    sbc a
    ld b, e
    rst $38
    di
    rst $38
    rrca
    rst $38
    add l
    ld a, a
    dec sp
    or $a6
    sbc a
    or a
    inc de
    daa
    inc de
    rlca
    ld [hl-], a
    ld [hl], $26
    ld h, $26
    ld l, d
    inc h
    ld l, h
    ld h, h
    ld h, h
    ld c, h
    ld c, h
    ld c, h
    call $9848
    ret


    reti


    adc c
    add c
    sbc c
    sbc e
    sub c
    or e
    ld [de], a
    ld [hl-], a
    ld [de], a
    ld [bc], a
    ld [hl-], a
    ld d, $22
    ld h, [hl]
    inc h
    ld h, h
    inc h
    ld c, h
    inc h
    ld l, b
    ld b, h
    ld c, b
    ld c, b
    ret z

    ld [$08d8], sp
    sbc b
    nop
    jr jr_07a_7242

    ld de, $b190
    db $10
    or c
    nop
    ld [hl+], a
    ld hl, $2123
    ld b, e
    ld hl, $0365
    ld b, l
    ld b, e
    push bc
    ld b, e
    rlc a
    ld c, e
    add a
    rrca
    add a
    add e
    rrca
    sub l
    rrca
    sub [hl]
    rrca
    scf
    rrca
    ld [hl], a
    rrca
    scf
    adc a
    sbc a
    rst $28
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
    inc bc
    db $fc
    ld bc, $0cfe
    ei
    inc b
    ei
    ld bc, $18fe
    rst $30
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
    cp a
    ld a, a
    sbc a
    ld a, a
    rst $30
    ld l, a
    ld e, e
    rst $28
    add hl, hl
    rst $18
    ld l, e
    sbc a
    jp nc, $c23e

    ld a, $f4
    ld c, $0e
    cp $fe
    db $fc
    jr c, jr_07a_7310

jr_07a_7310:
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
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, h
    ld a, h
    nop
    ld a, b
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld b, $f8
    ld [bc], a
    ld h, c
    rlca
    nop
    ld b, $80
    dec bc
    add b
    ld [bc], a
    nop
    ld bc, $0048
    ld d, b
    ld b, b
    ld [bc], a
    nop
    sub b
    ld d, d
    add b
    ld a, b
    add b
    inc l
    ldh a, [$74]
    ld hl, sp+$7c
    ld hl, sp-$10
    db $fc
    rst $30
    ld hl, sp-$33
    ld a, [c]
    adc c
    rst $30
    dec sp
    rst $00
    scf
    rst $08
    rst $30
    rrca
    rst $28

jr_07a_7359:
    rra
    rst $28
    rra
    ld c, a
    cp a
    rrca
    rst $38
    ld c, h
    rst $38
    ld sp, $0ffe
    ld hl, sp+$07
    ld hl, sp-$7d
    ld a, l
    add e
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    ld [$09ff], sp
    rst $38
    ld sp, $f3ff
    rst $38
    rst $18
    cp a
    dec a
    rst $00
    ld a, [$b3b4]
    cp e
    add hl, de
    inc l
    ld h, c
    ld h, b
    ld h, c
    ld b, c
    pop bc
    inc bc
    ld b, d
    add c
    jp $8581


    add e
    add l
    add e
    add e
    rlca
    adc e
    rlca
    rrca
    rlca
    rlca
    rrca
    ld b, $0f
    ld e, $0f
    rra
    rrca
    ld a, [bc]
    rra
    dec hl
    rra
    ccf
    rra
    rra
    ccf
    ld e, e
    ccf
    ld a, e
    ccf
    ld a, [hl-]
    ld a, a
    or d
    ld a, a
    ld a, [c]
    ld a, a
    ld bc, $0676
    ld [hl], h
    nop
    db $fc
    inc b
    ld hl, sp+$07
    ld hl, sp+$01
    ld a, [$f00f]
    dec b
    ldh a, [rIF]
    ldh a, [rNR21]
    add sp, $1e
    and b
    inc e
    pop hl
    dec l
    pop bc
    inc e
    pop bc
    add hl, de
    jp nz, $8378

    jr c, jr_07a_7359

    add hl, sp
    add [hl]
    ldh a, [rIF]
    ld d, l
    ld a, [hl+]
    ldh a, [rIF]
    ret nc

    cpl
    ld b, b
    cp a
    ldh [$1f], a
    add h
    ld a, e
    ld h, b
    cp a
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld b, e
    cp $81
    cp $85
    cp $07
    db $fc
    inc hl
    call c, $fd0a
    rrca
    ld hl, sp+$05
    ld a, [$f21d]
    add hl, bc
    or $30
    rst $28
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
    scf
    rrca
    rrca
    inc bc
    add l
    inc bc
    rst $38
    add sp, -$01
    call c, $fbff
    rst $38
    ld l, a
    rst $38
    ei
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    cp a
    cp a
    ld e, e
    ld e, e
    cpl
    inc l
    call nc, $ebeb
    sub h
    ld a, [hl]
    ld a, l
    ccf
    ccf
    ccf
    dec sp
    ccf
    ccf
    inc a
    inc a
    ld hl, sp-$08
    ld a, h
    ld a, h
    cp $fe
    ccf
    cpl
    ccf
    dec sp
    ld a, a
    ld a, a
    ld a, a
    ld l, l
    ld a, a
    ld a, e
    ld a, a
    ld [hl], a
    ld a, a
    ld [hl], a
    rst $38
    db $e3
    ccf
    add hl, hl
    ld a, a
    ld c, e
    ld a, a
    ld a, [de]
    rst $38
    nop
    ld a, a
    add b
    db $db
    ldh [$eb], a
    ldh a, [$eb]
    ldh a, [$ee]
    pop af
    jp z, $8ff7

    rst $38
    cpl
    rst $18
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    db $fc
    rst $38
    db $fc
    rst $38
    or b
    rst $38
    add e
    db $fc
    rra
    ldh [rIE], a
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
    ccf
    rst $38
    cp a
    rlca
    ld a, [$7689]
    ld bc, $06f6
    db $fd
    ld [bc], a
    db $fd
    ld [$0cff], sp
    ei
    ld b, $79
    inc c
    or e
    ld [$0c73], sp
    ld [hl], e
    jr jr_07a_74ff

    db $10
    rst $20
    ld a, [bc]
    push hl
    ld [hl+], a
    call $cb35
    inc [hl]
    sra l
    jp nc, $d7aa

    ret


    or $5c
    ld a, $30
    dec c
    db $e4
    add hl, bc
    ret nc

    ld a, [bc]
    pop de
    ld a, [bc]
    pop bc
    ld d, $a8
    dec d
    ld [bc], a
    add hl, sp
    nop
    dec hl
    add h
    dec sp
    adc b
    ld d, a
    nop
    ld d, a
    xor c
    ld d, a
    dec [hl]
    rl d
    rst $28
    ld c, e
    or [hl]
    ld b, e
    cp [hl]
    dec d
    xor $04
    rst $38
    jr nz, @+$61

    ld [$30ff], sp
    rst $18
    inc d
    ei
    add hl, de
    or $21
    cp $31
    xor $40
    rst $38
    ld h, b
    rst $38
    xor c
    rst $18
    or $8f
    dec sp

Jump_07a_74e5:
    add [hl]
    ld hl, sp+$07
    db $fd
    ld b, $f0
    rrca
    ld a, d
    dec c
    ret nz

    ccf
    ldh a, [$1f]
    ret nz

    ccf
    ldh [$3f], a
    ld [$00f7], sp
    rst $38
    ret nz

    ld a, a
    ld bc, $a0ff

jr_07a_74ff:
    rst $18
    sbc d
    rst $38
    ld b, b
    cp a
    db $10
    rst $38
    ld c, b
    rst $38
    ld [$d0ff], sp
    rst $38
    ret nc

    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld l, a
    rra
    or a
    rrca
    dec sp
    rlca
    ld a, a
    inc bc
    ld a, [hl]
    ld bc, $00bf
    db $fd
    jp nz, Jump_000_1fe0

    ld bc, $0ffe
    ldh a, [rIE]
    add b
    rst $38
    and b
    rst $38
    call nc, $e2ff
    cp a
    cp b
    ld c, a
    ld c, [hl]
    inc bc
    inc bc
    adc a
    adc a
    rla
    ld d, $af
    xor h
    rst $18
    call c, $f6ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    set 1, e
    rst $20
    rst $20
    db $d3
    ld d, e
    ret


    ret


    ld a, [c]
    nop
    ld a, [$fd00]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    daa
    ret nz

    cpl
    ret nz

    dec sp
    call nz, $9c6b
    ei
    inc a
    cp b
    ld a, a
    ei
    ld a, a
    rst $38
    rst $38
    ld b, [hl]
    reti


    ld c, $d1
    push bc
    cp e
    add h
    cp e
    dec c
    or d
    ld b, b
    ld a, $04
    ld a, d
    add b
    ld a, h
    adc b
    ld [hl], h
    ld h, h
    sbc b
    add hl, bc
    ld hl, sp-$7f
    ld a, b
    add hl, bc
    ldh a, [$72]
    sub b
    add h
    ld [hl], b
    ld h, h
    and b
    ld bc, $2be0
    ret nz

    ld b, a
    ret nz

    ld de, $14c2
    add e
    sub a
    add c
    or c
    rlca
    jr z, jr_07a_75b7

    dec sp
    ld b, $d8
    ld b, $ae
    ld d, h
    dec h
    sbc h
    cp e
    inc c
    ld l, l
    jr jr_07a_75e4

    ld e, b
    db $dd
    ld [hl-], a
    adc e
    ld [hl], h
    ld [hl], $e8
    ld l, $f1
    ld d, a

jr_07a_75b7:
    add sp, $52
    db $ed
    db $ed
    ret nc

    or [hl]
    ret


    add hl, hl
    db $d3
    ld a, l
    add d
    xor a
    ld d, d
    ret nc

    ld l, $e6
    inc e
    ld h, e
    sbc h
    ld e, d

jr_07a_75cb:
    xor l
    ld b, h
    cp e
    ld a, b
    sub l
    add c
    ld a, d
    ld [hl], b
    xor e
    nop
    rst $30
    ld e, b
    rst $20
    ld b, c
    xor $80
    rst $38
    and c
    rst $18
    ld d, [hl]
    xor e
    ld [bc], a
    cp a
    ret nz

    ccf

jr_07a_75e4:
    ld b, $ff
    ld bc, $04ff
    ei
    jr nz, jr_07a_75cb

    jr @-$07

    nop
    rst $38
    ld sp, $50ee
    rst $28
    ld b, $f9
    dec b
    ei
    dec c
    di
    ld a, [bc]
    rst $30
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc h
    rst $18
    ld c, h
    cp a
    sbc b
    ld a, a
    db $10
    rst $38
    ld b, b
    cp a
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, d
    rst $38
    add c
    rst $38
    adc c
    rst $38
    ld h, $ff
    inc hl
    cp $24
    rst $38
    ld [$2aff], sp
    rst $38
    db $10
    ccf
    rst $38
    ccf
    rst $28
    rra
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    adc d
    ld hl, sp+$07
    db $f4
    dec bc
    ld [$e115], a
    ld e, $d4
    dec hl
    ld [$fa15], a
    dec b
    rst $38
    nop
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

    cp $e1
    cp $c1
    db $fc
    jp $87f8


    ld hl, sp-$79
    ldh a, [$2f]
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], d
    dec c
    ld a, h
    inc bc
    ld sp, hl
    rlca
    di
    rrca
    rst $20
    rra
    ld c, a
    cp a
    rra
    rst $38
    cp $fe
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc b
    dec b
    ld b, $03
    rlca
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    inc bc
    inc bc
    ld c, $0f
    ld b, $03
    db $10
    ld de, $1312
    ld a, [bc]
    inc d
    dec d
    ld d, $17
    inc bc
    inc bc
    jr jr_07a_76af

    ld a, [de]
    inc bc
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc hl
    ld a, [de]
    inc bc
    inc h
    dec h
    ld h, $27
    jr z, jr_07a_76d6

    ld a, [hl+]
    dec hl

jr_07a_76af:
    inc l
    inc bc
    inc bc
    inc bc
    dec l
    ld l, $03
    cpl
    jr nc, jr_07a_76ea

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07a_76c4

    inc bc
    add hl, sp
    ld a, [de]

jr_07a_76c4:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    inc bc
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_07a_76d6:
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
    inc bc
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_07a_76ea:
    ld e, [hl]
    ld e, a
    ld h, b
    ld d, h
    ld d, h
    ld h, c
    ld h, d
    ld h, e
    inc bc
    inc bc
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
    inc bc
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
    ld d, h
    add b
    inc bc
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
    ld d, h
    adc l
    adc [hl]
    inc bc
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
    inc bc
    inc bc
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
    inc bc
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
    ld d, h
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    ld d, h
    ld d, h
    ld d, h
    ld d, h
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    ld d, h
    push hl
    ld d, h
    ld d, h
    ld d, h
    and $e7
    ld d, h
    add sp, -$17
    ld d, h
    ld [$eceb], a
    ld d, h
    ld d, h
    db $ed
    xor $ef
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $0a
    rst $30
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld hl, sp-$07
    ld a, [$02fb]
    ld [bc], a
    inc b
    nop
    nop
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
    ld [bc], a
    inc b
    inc b
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    nop
    nop
    inc b
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
    nop
    nop
    nop
    inc b
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
    nop
    nop
    nop
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
    nop
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
    nop
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
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    jr nz, jr_07a_78f4

jr_07a_78f4:
    ld [bc], a
    nop
    stop
    nop
    nop
    inc b
    nop
    nop
    nop
    stop
    nop
    nop
    ld bc, $1000
    nop
    ld [bc], a
    nop
    ld [$2100], sp
    nop
    inc b
    nop
    jr nz, jr_07a_7910

jr_07a_7910:
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    ld a, a
    add c
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
    ld [bc], a
    db $fd
    ld b, $f9
    ld c, $f1
    rrca
    ldh a, [$1f]
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
    nop
    nop
    add d
    nop
    ld [$2100], sp
    nop
    add d
    nop
    dec b
    nop
    ld c, d
    nop
    dec [hl]
    nop
    ld b, e
    nop
    add hl, bc
    ld bc, $0123
    inc bc
    inc bc
    sub a
    inc bc
    rlca
    rlca
    cpl
    rlca
    adc a
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
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    ret nz

    rst $38
    add c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
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
    ld hl, sp+$0f
    ld hl, sp+$1b
    call z, $cc3f
    ld a, l
    add [hl]
    ld a, [$fe07]
    inc bc
    ld a, l
    add e
    ld a, a
    add c
    ld a, [hl]
    add c
    ccf
    ret nz

    cp h
    ld b, e

jr_07a_7a16:
    sbc [hl]
    ld h, c
    sbc $21
    rst $28
    db $10
    rst $20
    jr jr_07a_7a16

    ld [$04fb], sp
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
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
    cp $00
    cp $00
    db $fc
    ld bc, $03fc
    ld sp, hl
    ld b, $f9
    ld b, $f3
    inc c
    and $18
    call nz, $cc38
    jr nc, jr_07a_7a69

    ldh [rNR23], a
    ldh [rIF], a
    rrca
    rra
    rrca
    rra
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
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_07a_7a69:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fd
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$fe], a
    pop bc
    db $fd
    add e
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a

jr_07a_7a96:
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
    cp $00
    db $fc
    nop
    rst $38
    ld [$0cff], sp
    rst $38
    inc e
    rst $38
    ld [hl], $ff
    ld d, [hl]
    cp a
    sbc $3f
    ei
    rra
    rst $28
    rra
    ei
    rrca
    rst $30
    rrca
    rst $38
    rlca
    ld sp, hl
    rlca
    ei
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    cp $01
    cp $01

jr_07a_7acc:
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    cp a
    ret nz

    ld e, a
    ldh [$df], a
    ld h, b
    xor a
    ld [hl], b
    ld a, a
    or b
    rst $18
    jr nc, jr_07a_7a96

    ld e, b
    dec hl
    sbc h
    ret c

    dec l
    add b
    ld a, a
    ldh [$1f], a
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    pop bc
    ccf
    db $e3
    rra
    add $0f
    jp nz, $8605

    ld [$108c], sp
    jr @+$22

    nop
    ld [hl], b
    jr nc, jr_07a_7acc

    ld h, b
    add b
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
    rst $38
    cp $ff
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$de]
    pop hl
    cp l
    jp $877b


    rst $30
    rrca
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
    db $10
    rst $38
    nop
    rst $38
    nop
    jp $8000


    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    nop
    cp $1c
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
    inc bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    ld hl, sp+$7f
    cp b
    ld a, a
    db $fc
    ccf
    call c, $d63f
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc e
    rst $38
    jr c, @+$01

    jr nc, @+$01

    pop hl
    cp $c1
    cp $c0
    rst $38
    add d
    db $fd
    ld bc, $08fe
    rst $30
    ld b, [hl]
    cp c
    inc h
    ld e, e
    inc b
    dec sp
    ld de, $040e
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
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    cp $ff
    db $fd
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$dd]
    db $e3
    cp e
    rst $00
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rra
    cp a
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    cp $80
    db $fc
    nop
    ld sp, hl
    nop
    pop af
    db $10
    pop hl
    nop
    ldh [rP1], a

jr_07a_7bf9:
    add $00
    sub b
    nop
    nop
    nop
    ld bc, $0300
    nop
    scf
    nop
    ld h, a
    nop
    rst $08
    nop
    xor h
    nop
    or h
    nop
    adc b
    ld b, b
    ld hl, sp-$68
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    call nz, $c4ff
    rst $38
    db $e4
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld e, $ff
    ld c, $ff
    ld c, $ff
    rrca
    rst $38
    rla
    rst $38
    dec [hl]
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    call nz, $88fb
    rst $30
    db $10
    rst $28
    jr @-$17

    ld h, b
    sbc a
    ld b, b
    cp a
    inc b
    ei
    add l
    ld a, d
    ld b, $f9
    ld c, $f1
    sub [hl]
    ld l, c
    xor d
    ld d, l
    jr z, @-$27

    ld a, [de]
    push hl
    ld d, h
    xor e
    ld d, h
    xor e
    ret nc

    cpl
    add b
    ld a, a
    and b
    ld e, a
    add h
    ld a, a
    add h
    ld a, a
    ld e, b
    ccf
    ld [$481f], sp
    rlca
    ld b, b
    jr nz, jr_07a_7cb7

    jr nz, jr_07a_7bf9

    nop
    nop
    add b
    ld b, b
    nop
    nop
    nop
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    jp hl


    rst $30
    sub l
    db $eb
    db $d3
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    cp $80
    db $fc
    add h
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    rlc b

jr_07a_7cb7:
    sbc a
    add b
    ld a, $00
    ccf
    nop
    scf
    nop
    rst $28
    nop
    rst $18
    nop
    cp a
    nop
    cpl
    nop
    ccf
    nop
    ld a, a
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    cp $00
    db $f4
    nop
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
    add c
    add b
    di
    ld [$01ff], sp
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    or b
    rst $38
    inc [hl]
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $11ff
    rst $28
    ld de, $22ef
    rst $18
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp $04
    ld hl, sp+$00
    ld hl, sp+$01
    ldh a, [rNR43]
    pop bc
    ld b, h
    add e
    ld [$1807], sp
    rrca
    nop
    ccf
    ld b, b
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
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    cp $42
    db $fc
    add b
    db $fc
    nop
    ld a, [$f000]
    nop
    pop hl
    jr nz, @-$36

    ld b, b
    add d
    add b
    inc bc
    nop
    inc bc
    nop
    rra
    nop
    rra
    nop
    dec sp
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
    nop
    ld a, a
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    dec b
    nop
    add hl, sp
    nop
    ld [bc], a
    nop
    jr nz, jr_07a_7dcf

jr_07a_7dcf:
    cp $00
    db $ec
    nop
    ret nz

    nop
    ldh [$c0], a
    ld hl, sp-$10
    rst $38
    reti


    rst $38
    ld hl, sp-$01
    add sp, -$01
    add sp, -$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, d
    rst $38
    ld a, $ff
    ld a, $ff
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rP1], a
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
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    pop hl
    nop
    jp $8708


    db $10
    rrca
    jr nz, jr_07a_7e75

    ld b, b
    ccf
    ld b, b
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
    ld [$00ff], sp
    rst $38
    ld b, b
    cp a
    nop
    ccf
    nop

jr_07a_7e75:
    halt
    ld c, a
    nop
    cpl
    nop
    ld e, a
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
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld a, [c]
    nop
    ldh a, [rP1]
    ldh [rP1], a
    add sp, $00
    sub c
    nop
    ld de, $0300
    nop
    rlca
    nop
    rlca
    nop
    dec c
    nop
    dec e
    nop
    dec de
    nop
    ld e, $00
    ccf
    nop
    ld a, h
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld a, [$b000]
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    jr jr_07a_7ebf

jr_07a_7ebf:
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, b
    ld hl, sp+$78
    rst $38
    ld h, l
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    inc h
    rst $38
    ld h, $ff
    ld [hl-], a
    rst $38
    inc [hl]
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld a, [de]
    rst $38
    ld [de], a
    rst $38
    ld a, [de]
    rst $38
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    add hl, de
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    adc l
    rst $38
    adc l
    rst $38
    adc h
    rst $38
    adc l
    rst $38
    and [hl]
    rst $38
    adc [hl]
    ld a, a
    ld bc, $000f
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
    rst $38
    nop
    rst $38
    dec b
    ld a, [$8740]
    add b
    rrca
    nop
    rra
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
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    ld hl, sp+$00
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    ei
    nop
    ld [$c000], a
    nop
    add c
    nop
    add e
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ld [hl], $00
    ld l, [hl]
    nop
    ld e, h
    nop
    ld hl, sp+$00
    cp b
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
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
    dec a
    nop
    jr c, jr_07a_7f79

jr_07a_7f79:
    ld [hl], b
    nop
    ld [hl], h
    nop
    ldh a, [rP1]
    ld b, b
    nop
    inc b
    nop
    inc bc
    nop
    dec bc
    nop
    ld e, $00
    ld a, [bc]
    nop
    ld a, a
    nop
    cp b
    ret nz

    ld hl, sp+$78
    rst $38
    ld a, [hl]
    rst $38
    ld a, e
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, e
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ccf
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    cp a
    rst $38
    cp a
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
    ld a, a
    rla
    rrca
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
    cp $00

jr_07a_7fdf:
    rst $38
    inc b
    ei
    nop
    rst $38
    add hl, bc
    or $15
    ld [$e817], a
    inc b
    ei
    ld b, $f9
    ld b, $f9
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld b, $f9
    inc b
    ei
    nop
    rst $30
    db $10
    rst $08
    jr nz, jr_07a_7fdf
