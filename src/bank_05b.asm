SECTION "ROM Bank $05b", ROMX[$4000], BANK[$5b]

    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    ld e, a
    ccf
    inc h
    rra
    sbc a
    nop
    dec hl
    add b
    ld a, e
    add b
    ld e, e
    add b
    call nz, Call_05b_449b
    sbc e
    ld b, h
    sbc e
    ld b, a
    sbc b
    rst $00
    sbc b
    push bc
    sbc d
    ld b, l
    sbc d
    rst $00
    sbc b
    push bc
    sbc d
    push bc
    sbc d
    push bc
    sbc d
    push bc
    sbc d
    push bc
    sbc d
    push bc

Call_05b_403b:
    sbc d
    push bc
    sbc d
    ld b, c
    sbc [hl]
    ld b, l
    sbc d
    pop bc
    sbc [hl]
    jp $439e


    sbc [hl]
    jp $c39e


    sbc [hl]
    jp $c39e


    sbc [hl]
    jp $c39e


    sbc [hl]
    jp nz, $839f

    sbc $82
    rst $18
    add e
    sbc $83
    sbc $83
    sbc $82
    rst $18
    and d
    rst $18
    and d
    rst $18
    and e
    sbc $a2
    rst $18
    and e
    rst $18
    and e
    rst $18
    and a
    rst $18
    and a
    rst $18
    and a
    rst $18
    and e
    rst $18
    ret nz

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
    ld bc, $0dfe
    cp $b8
    ld b, a
    adc a
    ld [hl], b
    rlca
    ld hl, sp+$01
    cp $77
    xor e
    rst $38
    ld a, d
    add sp, $5f
    rst $18
    xor e
    sbc a
    ld a, e
    rlca
    ei
    rlca
    ld sp, hl
    add d
    rst $38
    add $f9
    rst $38
    rst $08
    rst $18
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ei
    cp $fe
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
    rst $30
    nop
    rst $38
    nop
    push af
    nop
    pop hl
    nop
    ld bc, $0300
    nop
    rlca
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    db $fd
    nop
    cp $01
    rst $00
    ccf
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    cp $70
    add b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    add b
    ld [hl], h
    add b
    ld e, c
    and b
    inc e
    ldh [$9e], a
    ld h, b
    ld b, a
    jr c, jr_05b_4128

    inc d
    ld h, e
    inc e
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0102
    inc bc
    ld bc, $03fc
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
    add sp, $17
    db $dd
    inc hl
    ld a, [bc]
    ld bc, $0156
    dec hl
    ld bc, $012b

jr_05b_4128:
    ld d, [hl]
    ld bc, $00af
    ld e, a
    nop
    ld e, [hl]
    ld bc, $bf43
    and d
    ld a, a
    rst $10
    ld a, [hl]
    ld l, [hl]
    db $fd
    rst $18
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$bf]
    ldh [$c9], a
    or $42
    db $fd
    add b
    rst $38
    nop
    rst $38
    ld a, h
    add e
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop hl
    ld e, $a1
    ld e, $20
    rst $18
    sbc [hl]
    ld a, a
    db $e4
    dec de
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
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

    ld a, a
    add c
    ld a, [hl]
    ld b, c
    cp $c9
    or $c0
    cp a
    add b
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    add e
    ld a, [hl]
    rst $18
    ld h, $f8
    ld e, b
    ret nz

    ret nz

    nop
    nop
    rlca
    nop
    db $fc
    nop
    pop bc
    nop
    ld a, b
    rlca
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
    add $f8
    adc a
    nop
    jr jr_05b_41a8

jr_05b_41a8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor [hl]
    ld bc, $00b7
    ld e, a
    nop
    xor [hl]
    ld bc, $00bf
    ld e, a
    nop
    cp $01
    cp l
    ld [bc], a
    ld b, d
    nop
    add a
    nop
    add $00
    and c
    ld b, [hl]
    inc sp
    rst $38
    ld [hl], e
    rst $38
    rst $20
    rst $38
    adc $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp d
    ld b, l
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld sp, $63ff
    rst $38
    rst $00
    rst $38
    call z, $9cff
    rst $38
    nop
    rst $38
    dec l
    jp nz, $825c

    dec h
    add d
    ld d, d
    xor a
    and d
    ld e, a
    ld e, e
    and [hl]
    jp c, $bb27

    ld b, [hl]
    ei
    ld b, $fa
    rlca
    ei
    ld b, $7b
    add [hl]
    ld d, d

Call_05b_4203:
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07

jr_05b_420c:
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    ret c

    rlca
    db $fc
    inc bc
    sbc h
    db $e3
    ldh [$1f], a
    ld l, e
    add b
    ld c, $f0
    nop
    rst $38
    nop
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
    cp a
    ld hl, sp-$01
    db $fc
    cp e
    jr @-$17

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc sp
    db $fc
    db $e3
    sbc [hl]
    rst $28
    ld [hl-], a
    xor h
    call nc, $80e0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    sub [hl]
    ld l, c
    inc de
    db $ec
    ret nc

    cpl
    rst $18
    cpl
    sbc b
    ld h, a
    rst $18
    jr nz, jr_05b_420c

    ld h, b
    rra
    ldh [$e0], a
    nop
    ld b, $01
    rst $08
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05b_427e:
    rst $38
    rst $38
    adc h
    ldh a, [$3f]
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop

jr_05b_428c:
    nop
    nop
    ld bc, $b200
    ld bc, $02d9
    di
    inc b
    rst $20
    ld [$08d7], sp
    rst $28
    db $10
    rst $08
    jr nz, jr_05b_427e

    jr nz, jr_05b_42e2

    nop
    add d
    ld bc, $0280
    ld h, h
    ld [bc], a
    add b
    db $f4
    db $10
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh [$f5], a
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    pop af
    nop
    ld a, [c]
    nop
    ld a, [c]
    nop
    ld a, [c]
    ld [bc], a
    sub d
    ld [c], a
    ld a, [de]
    ld [c], a
    dec sp

jr_05b_42c3:
    db $e3
    ld a, l
    ldh [$fe], a
    ret nz

    ld b, $f8
    rst $08
    jr nc, jr_05b_428c

    nop
    sbc a
    nop
    ld d, b
    xor a
    or b
    ld c, a
    add sp, $17
    db $fc
    inc bc
    ret c

    daa
    db $fc
    inc bc
    rst $38
    nop
    rst $08
    nop
    ld [de], a
    nop

jr_05b_42e2:
    ld hl, sp+$00
    ld e, e
    and h
    ld [de], a
    db $ed
    nop
    rst $38
    jr z, jr_05b_42c3

    ldh [$1f], a
    ccf
    ret nz

    ld bc, $21fe
    sbc $f8
    rlca
    ret nz

    ccf
    nop
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld hl, sp+$1c
    ldh [$6f], a
    ldh a, [rVBK]
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
    ld b, b
    cp a
    inc bc
    rst $38
    rlca
    ld hl, sp-$74
    ei
    db $fd
    add [hl]
    dec l

jr_05b_431b:
    db $d3
    rrca
    pop af
    ld a, [de]
    db $ec
    rst $30
    ld hl, sp-$61
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    jp $0504


    ld b, $05
    ld b, $05
    ld b, $84
    rlca
    add b
    rlca
    db $e4
    rla
    inc a
    rst $00
    ld a, h
    add a
    db $fc
    rlca
    cp h
    ld b, a
    sbc h
    rst $20
    inc c
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    ld [hl], d
    rrca
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ccf
    ret nz

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    sbc a
    jr nz, jr_05b_43a8

    ld b, b
    jr c, jr_05b_43b3

    ld a, h
    add e
    cp $02
    db $fc
    inc b
    db $f4
    inc c
    add sp, $18
    ldh a, [rNR10]
    ret nc

    jr nc, jr_05b_431b

    ld h, b
    ret nz

    ld b, b
    jp hl


    add b
    rst $38
    add b
    or [hl]
    nop
    ret nz

    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    rst $30
    nop
    ld [hl], a
    add b
    db $ed
    nop
    rst $38
    nop
    nop
    or [hl]
    nop
    ld bc, $0100
    ret nz

    ld bc, $01c4
    ld bc, $ff01
    rst $38
    jr z, jr_05b_43a6

jr_05b_43a6:
    nop
    nop

jr_05b_43a8:
    nop
    nop
    nop
    nop
    add b
    nop
    ret z

    nop
    ccf
    ret nz

    dec d

jr_05b_43b3:
    ld [c], a
    rra
    ldh [rTAC], a
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    add e
    ld a, h
    ld bc, $c07e
    ccf
    ldh [$1f], a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld d, b
    xor a
    add b
    ld a, a
    db $fc
    inc bc
    di
    inc c
    call z, Call_05b_4203
    add c
    ld l, $c1
    ldh a, [rIF]
    ldh a, [rIF]
    sub b
    rrca
    ldh [$1f], a
    add b
    rst $38
    ld a, b
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
    rst $38
    ld a, [hl+]
    rst $38
    db $f4
    ldh a, [$af]
    add b
    ld a, a
    add e
    db $fc
    adc b
    ld [hl], b
    ld b, b
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
    nop

jr_05b_440c:
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

    rra
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    pop af
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    ld hl, sp-$01
    add b
    rst $38
    add b
    rst $38
    add b
    ldh [$80], a
    ret nz

    add b
    ld c, $c6
    rrca
    adc $11
    rst $08
    ld bc, $04ce
    ret nz

    jr nz, jr_05b_440c

    ld hl, $20ce
    ret nz

    cp h
    jp $ff80


    add d
    db $fd
    sbc a
    ldh [$84], a
    rst $38
    add e
    db $fc
    add b
    rst $38
    sbc a
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
    sbc a
    ldh [$80], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $30
    adc b
    rst $30
    adc b
    rst $30
    adc b
    rst $30
    adc b
    rst $30
    add b
    rst $38
    adc b
    rst $30
    add b
    rst $38
    adc b
    rst $30
    add b
    rst $38
    adc h
    di
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
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b

Call_05b_449b:
    nop
    add b
    nop
    add b
    nop
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
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
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld a, h
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    inc de
    db $ed
    ld bc, $03ff
    rst $38
    ld b, a
    cp e
    ld h, $1f
    ld [hl], $09
    add hl, sp
    ld b, $3e
    ld bc, $3f01
    ld bc, HeaderManufacturerCode
    ccf
    inc bc
    inc a
    rrca
    jr nc, jr_05b_44ea

    jr nc, jr_05b_44ec

    jr nc, jr_05b_44ee

    jr nc, @-$0e

    ccf
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]

jr_05b_44ea:
    ldh a, [$3f]

jr_05b_44ec:
    ldh a, [$3f]

jr_05b_44ee:
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ld hl, sp+$3f
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$01
    nop
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    jr nc, jr_05b_456d

    db $10
    ld l, a
    db $10
    ld l, a
    db $10
    ld l, a
    db $10
    ld l, a
    db $10
    ld l, a
    db $10

jr_05b_4529:
    ld l, a
    nop
    ld a, a
    db $10
    ld l, a
    db $10
    ld l, a
    db $10
    rst $28
    nop
    rst $38
    jr nc, @-$2f

    db $10
    rst $28
    jr jr_05b_4529

    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    nop
    ld [$0800], sp
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
    jr jr_05b_456a

jr_05b_456a:
    ret nz

    nop
    db $fc

jr_05b_456d:
    nop
    rrca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    cp [hl]
    rrca
    or $07
    rst $38
    rlca
    rst $38
    ld a, $df
    cp c
    cp $ff
    ld a, [$9ebf]
    ccf
    inc c
    jr c, jr_05b_4591

    add hl, sp
    rlca
    ccf
    inc bc
    ld a, $01
    ccf

jr_05b_4591:
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    cp a
    nop
    ccf
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, $00
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
    db $fd
    db $fd
    rst $38
    rst $38
    cp $ff
    ld a, a
    ld e, a
    cp [hl]
    rst $38
    rst $10
    rst $18
    rst $28
    sbc [hl]
    rst $28
    ld a, [hl]
    cp a
    call c, Call_05b_7eff
    jp $a877


    ld [hl], a
    adc a
    rst $18
    rst $38
    rst $18
    ei
    rst $38
    cp $3f
    call nz, Call_000_3ac5
    ldh [$7f], a
    pop hl
    ld e, $e0
    rra
    db $fc
    nop
    di
    ld [bc], a
    db $fd
    ld b, $fd
    inc bc
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
    nop
    nop
    ldh a, [rP1]
    rra
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
    ld bc, $0000
    nop
    rst $38
    rst $18
    rst $18
    ld l, d
    ld bc, $01fe
    cp $07
    ld sp, hl
    scf
    db $eb
    ccf
    rst $30
    ccf
    ei
    ccf
    rst $30
    ld a, a
    ei
    ld a, a
    ei
    rst $38
    rst $08
    xor $f5
    ldh [rIE], a
    ld a, [hl]
    ld sp, hl
    ld c, [hl]
    ret


    add b
    ld b, a
    add d
    ld b, l
    add b
    ld b, a
    ld b, $c2
    ret nz

    nop
    inc b
    inc bc
    add $81
    call nz, $b483
    ret nz

    ld a, [c]
    rlca
    or e
    rst $00
    and e
    rst $00
    inc hl
    call nz, $c007
    inc hl
    rst $00
    inc hl
    rst $00
    db $db
    db $e4
    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$cf], a
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    pop hl
    cp $e1
    cp $e1
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    rst $38
    nop
    rst $38
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
    ld hl, sp+$00
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    rst $08
    cp a
    ld e, a
    rst $38
    ld e, a
    rst $38
    sbc l
    db $fd
    sub d
    cp $7b
    db $fc
    cp a
    db $fc
    cp a
    db $fc
    rst $30
    ld hl, sp-$79
    ldh a, [rIF]
    ret nz

    ld a, a
    ld b, c
    cp [hl]
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add e
    ld a, h
    ld h, b
    add b
    ld c, $09
    ldh [$9f], a
    ld [$1cf7], sp
    add sp, -$40
    nop
    ld [hl], c
    rra
    inc b
    rst $38
    dec h
    rst $38
    inc e
    ldh a, [$ce]
    inc bc
    add b
    rst $38
    inc c
    rst $38
    ld hl, sp-$20
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    inc bc
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
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05b_475b:
    nop
    ld a, [hl]
    nop
    nop

jr_05b_475f:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    ld a, a
    add b
    rlca
    ld hl, sp-$10
    rrca
    rst $38
    nop
    ldh [$df], a
    ld hl, sp-$19
    ldh a, [rIE]
    ldh a, [$6f]
    db $10
    rst $38
    jr nc, jr_05b_475b

    db $10
    rst $28
    jr nz, jr_05b_475f

    ld hl, $61fe
    cp a
    db $e3
    ld a, a
    rst $20
    ld a, [$e7fe]
    db $fc
    rst $38
    cp $3d
    ld a, h
    rst $38
    ld a, b
    cp b
    inc bc
    nop
    ld a, h
    ld e, a
    ld e, $e9
    rra
    or $70
    ldh a, [$03]
    ld bc, $bfc7
    nop
    rst $38
    dec b
    rst $38
    ld [hl], b
    ret nz

    ld a, [hl-]
    rlca
    ld h, c
    rst $38
    ld h, e
    cp $c0
    add b
    nop
    nop
    ccf
    ret nz

    rra
    ldh [$39], a
    add $0f
    ldh a, [rNR34]
    pop hl
    dec bc
    db $f4
    dec b
    ld a, [$f906]
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
    rst $38
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    di
    nop
    inc bc
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    ld e, $00
    nop
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
    ld hl, sp-$01
    db $fc
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
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
    jr jr_05b_4853

    ld a, [de]
    dec bc
    inc c
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05b_4864

    jr nz, jr_05b_4867

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    dec bc
    jr z, jr_05b_4878

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_05b_4853:
    ld l, $2f
    jr nc, jr_05b_4888

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05b_4898

    ld a, [hl-]
    dec sp
    inc a
    dec bc
    dec a

jr_05b_4864:
    ld a, $3f
    ld b, b

jr_05b_4867:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec bc
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    dec bc
    ld c, e
    ld c, h
    ccf
    ld c, l
    ld c, [hl]

jr_05b_4878:
    ld c, a
    ld d, b
    ld d, c
    dec bc
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    dec bc
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_05b_4888:
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
    ld l, h

jr_05b_4898:
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
    dec bc
    adc e
    adc h
    adc l
    adc [hl]

jr_05b_48bb:
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
    inc c
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    jr nz, jr_05b_4914

    jr nz, jr_05b_48bb

    add $c7
    dec bc
    dec bc
    ret z

    ret


    jp z, $cccb

    call $cfce
    jr nz, jr_05b_4924

    ret nc

    pop de
    jp nc, Jump_000_0bd3

    dec bc
    dec bc
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

jr_05b_4914:
    db $dd
    sbc $df
    ldh [$0b], a
    dec bc
    dec bc
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17

jr_05b_4924:
    ld [$eceb], a
    dec bc
    dec bc
    pop hl
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    dec bc
    ld a, [$0bfb]
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
    jr nz, jr_05b_496d

    rla
    dec bc
    jr jr_05b_4974

    ld a, [de]
    dec bc
    dec de
    jr nz, jr_05b_497c

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

jr_05b_496d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05b_4974:
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop

jr_05b_497c:
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
    ld bc, $0007
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
    ld bc, $0005
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
    rlca
    ld bc, $0105
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    ld bc, $0303
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    dec b
    ld b, $01
    rlca
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    dec b
    ld b, $01
    dec b
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0303
    ld b, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
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
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    nop
    nop

jr_05b_4a7b:
    nop
    nop
    nop
    nop
    ld [$090e], sp
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    dec bc
    dec bc
    nop
    add hl, bc
    ld [$0008], sp

jr_05b_4a9d:
    ld [$0800], sp
    ld [hl], c
    cp e
    ld a, c
    pop af
    ld d, e
    xor c
    ld h, c
    cp c
    ld de, $08e0
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$08]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$0c]
    ldh a, [$c8]
    jr nc, jr_05b_4a7b

    jr c, jr_05b_4a9d

    inc e
    ldh [rNR32], a
    ldh [rNR32], a
    ld [c], a
    inc e
    ld [c], a
    inc e
    ld a, [c]
    inc c
    ld a, [c]
    inc c
    ldh a, [$0e]
    ldh [rNR34], a
    ldh a, [$0e]
    ldh a, [$0e]
    ldh [rNR34], a
    ld [hl], c
    adc [hl]
    ld d, c
    adc [hl]
    pop de
    ld c, $79
    add [hl]
    pop af
    ld c, $b0
    ld c, a
    cp b
    ld b, a
    ld a, b
    add a
    ld a, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, b
    add a
    sbc h
    ld h, e
    cp b
    ld b, a
    sbc b
    ld h, a
    sbc h
    ld h, e
    call c, Call_05b_7c23
    add e
    db $fc
    inc bc
    inc a
    jp $03fc


    jp Jump_000_3f3c


    ret nz

    rst $38
    nop
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
    db $fd
    ld [bc], a
    pop de
    ld l, $f7
    ld [$22df], sp
    rst $38
    ld a, [de]
    db $e3
    inc e
    rra
    ldh [$c0], a
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    add e
    ld a, l
    ld a, a
    adc [hl]
    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
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
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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
    inc b
    nop
    ld b, b
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    add a
    nop
    nop
    nop
    add l
    nop
    ld b, $00
    ld [hl], l
    nop
    db $fc
    nop
    ld sp, hl
    nop
    rst $38
    nop
    cp $00
    xor [hl]
    nop
    add hl, sp
    nop
    nop
    nop
    ld [$0200], sp
    nop
    add d
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    di
    inc c
    rst $38
    cp $7f
    rst $38
    rst $38
    rst $38
    rst $30
    rst $18
    ld b, e
    cp [hl]
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
    add c
    ld a, [hl]
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld e, a
    jr nz, jr_05b_4be4

    jr nz, @+$21

    jr nz, jr_05b_4c08

    nop
    ccf
    nop
    rra
    jr nz, jr_05b_4c0e

    nop
    cpl
    db $10
    ccf
    nop
    cpl
    db $10
    ccf
    nop
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rla
    ld [$001f], sp

jr_05b_4be4:
    rla
    ld [$0897], sp
    sub a
    ld [$08a7], sp
    add a
    ld [$0887], sp
    rlca
    adc b
    rlca
    adc b
    rrca
    add b
    rrca
    add b
    ld c, e
    add h
    ld c, e
    add h
    ld c, e
    add h
    nop
    rst $38
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop

jr_05b_4c08:
    rst $38
    nop
    rlca
    nop
    rst $38
    nop

jr_05b_4c0e:
    rst $38
    nop
    nop
    rst $38
    rst $28
    db $10
    rst $38
    ld bc, $3df3
    ccf
    ret nz

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
    rrca
    rst $38
    ld a, b
    rst $38
    ret nz

    rst $38
    add e
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    nop
    nop
    nop
    nop
    ld h, c
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld hl, sp+$00
    jr nz, jr_05b_4c60

jr_05b_4c60:
    nop
    nop
    jp nz, $8000

    nop
    and b
    nop
    jr nz, jr_05b_4c6a

jr_05b_4c6a:
    rra
    nop
    sbc b
    nop
    inc a
    nop
    daa
    nop
    ld c, a
    nop
    sub a
    nop
    add a
    nop
    rst $38
    nop
    ld a, a
    add b
    nop
    rst $38
    pop bc
    ld a, $ff
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    add a
    ei
    db $e3
    cp a
    db $e3
    rst $38
    inc bc
    db $fc
    inc bc
    rst $38
    and a
    ld e, c
    di
    ld c, h
    ld [hl], d
    db $fd
    ld [hl], l
    adc d
    ld l, d
    sub l
    inc sp
    call Call_000_00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    rst $30
    nop
    db $fd
    nop
    rst $30
    nop
    rst $38
    nop
    db $f4
    nop
    jr nz, jr_05b_4ccc

jr_05b_4ccc:
    ld a, [$fb00]
    nop
    nop
    rst $38
    sbc a
    ld h, b
    rst $38
    inc c
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rrca
    rst $38
    ccf
    ld hl, sp-$01
    rst $38
    cpl
    ret nc

    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    jr jr_05b_4d14

jr_05b_4d14:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05b_4d1e

jr_05b_4d1e:
    add b
    nop
    jr nz, jr_05b_4d22

jr_05b_4d22:
    ld [bc], a
    nop
    add b
    nop
    inc b
    nop
    jr nz, jr_05b_4d2a

jr_05b_4d2a:
    nop
    nop
    rla
    nop
    rlca
    nop
    nop
    nop
    ld bc, $0000
    nop
    rlca
    nop
    dec de
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    cp $fb
    rst $38
    pop de
    ldh [$3f], a
    ret z

    ld [hl], a
    ld bc, $97ff
    db $ed
    db $ec
    rst $30
    call $f372
    cp h
    ld [hl], $e9
    dec sp
    call nz, $bf70
    di
    ld l, h
    and b
    nop
    ret nz

    nop
    add b
    nop
    sub b
    nop
    ret nz

    nop
    add b
    nop
    ldh [rP1], a
    ldh [rP1], a
    db $fc
    nop
    ldh a, [rP1]
    db $fc
    nop
    db $f4
    nop
    ld a, [$fc00]
    nop
    db $f4
    nop
    ld hl, sp+$00
    ld hl, sp+$07
    db $fc
    inc bc
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $00
    db $fc
    nop
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $0e
    cp $1f
    pop hl
    stop
    ld h, e
    nop
    rst $38
    nop
    ld a, a
    nop
    db $fd
    nop
    rlca
    nop
    ld a, d
    nop
    ldh [rP1], a
    inc bc
    db $fc
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
    ld [hl], a
    adc b
    ld a, a
    sbc a
    rst $38
    ldh [rIE], a
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
    ld bc, $07ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
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
    nop
    nop
    ld b, b
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
    add e
    nop
    add b
    nop
    jr c, jr_05b_4e2c

jr_05b_4e2c:
    jr c, jr_05b_4e2e

jr_05b_4e2e:
    ld c, c
    nop
    ei
    nop
    ccf

jr_05b_4e33:
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
    rst $18
    nop
    ei
    nop
    ld a, [$f400]
    nop
    ldh a, [rP1]
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    db $10

jr_05b_4e51:
    rst $38
    jr nc, jr_05b_4e33

    jr nc, @+$01

    ld sp, $31ff
    cp $ff
    jr nz, jr_05b_4e51

    dec de
    ld e, l
    xor $ff
    nop
    pop bc
    ccf
    pop bc
    ccf
    rst $38
    ld bc, $f70a
    rra
    ldh [rP1], a
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
    rst $38
    cp b
    nop
    rst $38
    nop
    rst $18
    nop
    db $fc
    nop
    ldh a, [rP1]
    nop
    nop
    ld [$0000], sp
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
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
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    nop
    nop
    inc b
    nop
    inc bc
    nop
    ld h, c
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
    nop
    nop
    ld bc, $2000
    nop
    ld bc, $9c00
    nop
    cp $00
    add e
    nop
    jr nz, jr_05b_4f12

jr_05b_4f12:
    ei
    nop
    cp e
    nop
    ld d, e
    nop
    xor a
    nop
    rst $38
    nop
    ld [$ff00], a
    nop
    dec b
    nop
    and b
    nop
    stop
    nop
    nop
    ld [bc], a
    nop
    db $fd
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld de, $71ee
    sbc [hl]
    ld a, d
    add a
    jr z, @-$27

    rst $38
    dec bc
    sbc a
    ld hl, $5fe1
    sbc h
    sbc h
    xor l
    ld d, $a6
    sbc c
    rst $38
    ld e, e
    ret nz

    rst $18
    rst $30
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    ret nz

    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    cp a
    rst $38
    rst $38
    add e
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
    reti


    ld h, $ff
    nop
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
    nop
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05b_4faf:
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
    nop
    rst $30
    ld [$00ff], sp
    nop
    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    rrca
    nop
    ld hl, sp+$07
    ld sp, hl
    ld b, $b9
    ld b, [hl]
    inc bc
    db $fc
    dec l
    jp nc, $0ef1

    jp Jump_000_3f3c


    rst $00
    rst $38
    rst $38
    rra
    ldh [$3a], a
    push bc
    jr c, jr_05b_4faf

    inc hl
    call c, Call_000_00ff
    rst $38
    nop
    ld e, a
    and b
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop

jr_05b_4ffa:
    call $ff00
    nop
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ld a, a
    ld h, b
    rst $18
    ld l, h
    rst $38
    inc h
    db $db
    add b
    add b
    jp nc, Jump_000_19af

    rst $30
    nop
    nop
    ld b, c
    cp [hl]
    nop
    rst $18
    ld b, b
    ld b, b
    add b
    ld a, a
    rst $38
    stop
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
    rra
    nop
    rst $28
    ldh a, [$ef]
    ldh a, [$af]
    ld d, b
    cpl
    ld d, b
    ccf
    ld b, b
    cpl
    ld d, b
    xor a
    ld d, b
    rra
    jr nz, jr_05b_508c

    jr nc, jr_05b_50ae

    jr nc, @-$0f

    jr nc, jr_05b_50b2

    jr nc, jr_05b_5074

    jr nc, jr_05b_5076

    jr nc, jr_05b_5078

    jr nc, jr_05b_4ffa

    jr nc, jr_05b_507d

    ccf
    rst $38
    ld hl, sp+$20
    rst $18
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
    nop
    rst $38
    cp $01
    rst $38
    nop
    ld sp, hl
    ld b, $ff
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
    nop

jr_05b_5074:
    rst $38
    rst $38

jr_05b_5076:
    rst $38
    nop

jr_05b_5078:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05b_507d:
    nop
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
    rra

jr_05b_508c:
    rst $18
    jr nz, @+$01

    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0200
    nop
    nop
    nop

jr_05b_50ae:
    or a
    nop
    rra
    nop

jr_05b_50b2:
    ld [hl+], a
    nop
    ld bc, $0900
    nop
    ld sp, hl
    nop
    ld [hl], e
    nop
    inc bc
    nop
    sub e
    nop
    ld l, [hl]
    sub c
    rst $28
    db $10
    jp c, $fc25

    inc bc
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
    nop
    ld l, b
    sub a
    pop hl
    ld e, $e1

jr_05b_50d9:
    ld e, $cb
    inc [hl]
    call c, $de23
    ld hl, $0005
    pop af
    nop
    rlca
    nop
    ld b, $00
    nop
    nop
    pop bc
    nop
    rst $38
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $30
    ld l, a
    or e
    dec de
    db $ed
    ccf
    reti


    nop
    nop
    add c
    ld a, b
    jr nz, jr_05b_50d9

    ret nz

    nop
    jp nz, $c0f9

    ld sp, hl
    pop bc
    nop
    nop
    ld sp, hl
    ld sp, hl
    nop
    inc b
    nop
    ld [$ff00], sp
    nop
    ld a, a
    add b
    ld l, a
    sub b
    db $dd
    ld [hl+], a
    rst $38
    nop
    ld e, a
    and b
    ld [hl], l
    adc d
    dec hl
    call nc, Call_000_00d0
    sub b
    nop
    jp z, $d600

    nop
    ld a, [$9400]
    nop
    db $d3
    inc bc
    reti


    inc bc
    dec b
    ld a, [$fc03]
    inc bc
    db $fc
    dec b
    ld a, [$fe01]
    nop
    cp $03
    db $fc
    nop
    cp $00
    cp $00
    cp $01
    cp $01
    cp $01
    cp $01
    cp $f1
    cp $0e
    rst $38
    nop
    rst $38
    db $fc
    rst $38
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
    rst $38
    nop
    rst $38
    nop
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
    ld a, [hl]
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    nop
    rst $30
    ld [$fcff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38

jr_05b_5191:
    ld hl, sp-$01
    ret nz

    ld a, [$fc05]
    inc bc
    ld hl, sp+$07
    db $fd
    ld [bc], a
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
    adc e
    nop
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $18
    nop
    jr nc, jr_05b_5191

    ldh [$1f], a
    rlca
    ld hl, sp+$7f
    adc a
    rst $38
    rst $38
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
    or b
    ld c, a
    db $fc
    inc bc
    cp d
    ld b, l
    add l
    ld a, d
    nop
    rst $38
    db $10
    rst $28
    rst $38
    nop
    rst $08
    nop
    rst $28
    nop
    ld [hl-], a
    nop
    ld h, b
    nop
    rlca
    nop
    rst $38
    nop
    nop
    rst $38
    xor e
    ld e, h

jr_05b_51f2:
    ld a, a
    cp c

jr_05b_51f4:
    cp $fd

jr_05b_51f6:
    db $fc
    rst $38

jr_05b_51f8:
    rst $38

jr_05b_51f9:
    rst $38
    nop
    nop
    rst $08
    rst $38
    ld a, a
    cp a
    nop
    nop
    cp d
    rst $38
    or $ff
    nop
    nop
    add e
    rst $38
    scf
    ccf
    jr nz, jr_05b_520e

jr_05b_520e:
    jr nz, jr_05b_5210

jr_05b_5210:
    rst $18
    jr nz, jr_05b_51f2

    jr nz, jr_05b_51f4

    jr nz, jr_05b_51f6

    jr nz, jr_05b_51f8

    jr nz, jr_05b_51f9

    ld hl, $34cb
    rst $10
    jr z, @+$26

    nop
    ld sp, $3500
    nop
    ld [hl-], a
    nop
    cp c
    nop
    jr nc, jr_05b_522c

jr_05b_522c:
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ret z

    nop
    add sp, $00
    db $fc
    nop
    rst $38
    nop
    push bc
    nop
    rst $38
    nop
    nop
    nop
    add sp, $00
    ret nc

    nop
    ldh [rP1], a
    ret c

    nop
    xor $00
    push af
    nop
    ei
    nop
    nop
    rst $38
    nop
    nop
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
    ldh a, [rIE]
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    ld a, [$3005]
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
    ccf
    nop
    db $db
    nop
    nop
    nop
    inc e
    nop
    ld l, a
    nop
    ld a, h
    nop
    cp a
    nop
    cp $00
    ld [hl], h
    nop
    rst $38
    nop
    ei
    nop
    db $db
    nop
    db $fc
    nop
    ld [hl], h
    nop
    db $ed
    nop
    adc e
    nop
    jp nc, $e000

    nop
    rra
    and $ff
    ccf
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
    dec b
    nop
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
    cp a
    nop
    rst $38
    nop
    rrca
    nop
    rrca
    nop
    ld c, $00
    cp a
    nop
    rst $38
    nop
    inc bc
    db $fc
    db $fd
    cp $af
    rst $38
    push af
    sbc a
    or a
    rst $18
    rst $38
    jr nc, jr_05b_52fb

jr_05b_52fb:
    nop
    ldh [rIE], a
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $f4
    nop
    ld a, [c]
    nop
    db $f4
    nop
    ldh a, [rP1]
    db $f4
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
    nop
    nop
    nop
    nop
    dec d
    ld [$ff00], a
    rst $38
    nop
    nop
    ccf
    rra
    jr nz, jr_05b_5342

    inc [hl]
    rst $38
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop

jr_05b_5342:
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
    ld bc, $b0fe
    ld c, a
    ld a, [$ff05]
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fd], a
    jp nz, $80ff

    rst $38
    nop
    cp $01
    daa
    ret c

    ccf
    ret nz

    ld a, b
    add a
    dec sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    xor a
    nop
    rst $28
    nop
    ccf
    nop
    dec c
    nop
    add b
    nop
    rla
    add sp, $07
    ld hl, sp+$47
    cp b
    and c

jr_05b_53a7:
    ld e, [hl]
    ei
    dec b
    cpl
    db $d3
    rst $38
    rlca
    rst $38
    db $e3
    rst $38
    nop
    rst $30
    adc b

jr_05b_53b4:
    push af
    adc d
    db $e3

jr_05b_53b7:
    call c, $ecf3
    rst $38
    ldh a, [rIE]

jr_05b_53bd:
    db $fc
    rst $38
    rst $38

jr_05b_53c0:
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    sub d
    jr nz, jr_05b_53a7

    nop
    rst $38

jr_05b_53ca:
    ld e, b
    and a
    add a
    ld a, b
    ld b, b
    cp a
    rst $20
    nop
    rst $38
    nop
    db $fc
    nop
    inc c
    nop
    dec c
    nop
    adc [hl]
    nop
    rst $38
    nop
    ld hl, sp+$07
    add b
    rst $38
    call z, $ccb3
    di
    adc [hl]
    di
    ei
    dec bc
    nop
    nop
    nop
    di
    nop
    di
    nop
    nop
    ld [bc], a
    di
    ld de, $00f3
    nop
    nop
    di
    di
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05b_5408

jr_05b_5408:
    nop
    nop
    jr nz, jr_05b_540c

jr_05b_540c:
    ld [bc], a
    nop
    ret nz

    nop
    and b
    nop
    inc c
    nop
    ld d, d
    nop
    ld l, b
    nop
    call nz, $e000
    nop
    ret nc

    ldh [$d0], a
    ldh [$c0], a
    jr nz, jr_05b_53b7

    jr nz, jr_05b_53a7

    jr nz, @+$13

    and b
    add h
    jr nc, @+$03

    jr nc, jr_05b_53b4

    jr nc, @+$05

    jr nc, jr_05b_53b4

    jr nc, @+$09

    jr nc, @+$09

    jr nc, jr_05b_543e

    jr nc, jr_05b_53c0

    jr nc, jr_05b_53ca

    jr nc, jr_05b_53bd

    ccf

jr_05b_543e:
    ld hl, sp+$3f
    rla
    add sp, $03
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    dec bc
    rst $38
    ld [hl], a
    rst $38
    nop
    cp $00
    rst $38
    cp $fd
    cp $f5
    cp $03
    cp $00
    cp $00
    db $fc
    ld [bc], a
    ld bc, $3c00
    ld bc, $003d
    ld [bc], a
    ld bc, $0100
    add b
    ld bc, $0001
    ld bc, $0700
    nop
    ld bc, $0100
    nop
    ld b, c
    nop
    dec b
    nop
    dec b
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    pop bc
    nop
    rst $38
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
    ld a, e
    nop
    rst $00
    jr c, @+$01

    rlca
    ld a, a
    sbc a
    rst $38
    ld e, a
    rst $38
    db $ec
    db $fd
    ld [c], a
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, b
    rst $38
    inc e
    rst $38
    ld b, $ff
    nop
    rst $18
    jr nz, jr_05b_54fc

    ret nz

    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    ldh [$1f], a
    ret nz

    ccf
    ld h, b
    sbc a
    ldh [$1f], a
    ld [hl], b
    adc a
    rla
    nop
    ld c, $00
    inc e
    nop
    ld a, h
    nop
    dec hl
    nop
    rra
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$0c
    di
    ld bc, $b3ff
    ld c, a
    adc a
    ld a, a
    rst $38
    sub a
    nop
    nop
    inc bc
    rst $38
    ccf
    db $e3
    nop
    nop
    nop
    rst $38
    cpl
    db $fd
    inc bc
    nop
    ld [bc], a
    rst $38
    rst $38
    nop

jr_05b_54fc:
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc b
    inc bc
    rlca
    nop
    dec b
    ld [bc], a
    rlca
    nop
    dec b
    ld [bc], a
    ld b, $01
    rlca
    nop
    dec b
    ld [bc], a
    rlca
    nop
    inc bc
    inc b
    rlca
    nop
    dec c
    ld [bc], a
    dec b
    ld [bc], a
    ld c, $01
    ld c, d
    dec b
    ld c, a
    nop
    adc d
    dec b
    adc d
    dec b
    db $dd
    ld [bc], a
    ld a, [$fd05]
    ld [bc], a
    ld hl, sp+$07
    push af
    ld a, [bc]
    ld hl, sp+$07
    ld a, [c]
    dec c
    ld hl, sp+$07
    ld a, l
    add d
    rst $28
    rst $38
    cp a
    ld a, a
    nop
    rst $38
    nop
    rst $38

jr_05b_5546:
    nop
    rst $38

jr_05b_5548:
    nop
    rst $38

jr_05b_554a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $18
    jr nz, @+$01

    db $e3
    rst $38
    ld b, e
    rst $38
    sbc b
    rst $38
    ld a, c
    ld a, a
    adc a
    ld a, a
    add c
    add b
    nop
    add b
    nop

jr_05b_5564:
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
    add c
    nop
    nop
    add b
    nop
    add b
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    inc b
    ret nz

    jr nz, jr_05b_5546

    jr nz, jr_05b_5548

    jr nc, jr_05b_554a

    inc sp
    ret nz

    cp e
    ld b, b
    ccf
    ret nz

    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    inc sp
    nop
    ccf
    db $10
    cpl
    ccf
    ld b, b
    ld a, a
    or b
    ld a, h
    ei
    ld a, l
    ld [c], a

jr_05b_55a4:
    ld a, a
    and b

jr_05b_55a6:
    ld a, a
    ld hl, sp+$7f
    cp $3f
    rst $38
    rra
    xor a
    rrca
    sub e
    rrca
    sub c
    rrca
    sub b
    rrca
    ldh a, [rIF]
    ldh a, [$8f]
    ld [hl], b
    rra
    add sp, -$61
    ld l, h
    rst $38
    and b
    rst $18
    db $ec
    rst $28
    rst $38
    adc a
    ld [hl], b
    inc bc
    call z, $cc03
    inc bc
    call z, $cc03
    nop
    rst $08
    call z, $cf30
    jr nc, jr_05b_55a4

    jr nc, jr_05b_55a6

    jr nc, @-$2f

    jr nc, @-$2f

    jr nc, jr_05b_5564

    ld a, b
    add a
    ld a, b
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
    nop
    rst $38
    rst $38
    rst $38
    or d
    nop
    nop
    ld [bc], a
    rst $38
    rst $38
    ld a, [hl]
    db $fc
    nop
    nop
    rst $38
    cp $02
    ld a, [bc]
    nop
    ld [bc], a
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp l
    ld b, d
    push af
    ld a, [bc]
    call $d732
    ld a, [hl+]
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    ld a, l
    add d
    ld l, l
    sub d
    ld l, c
    sub [hl]
    add l
    ld a, d
    ld l, l
    sub d
    xor c
    ld d, [hl]
    sub c
    ld l, [hl]
    ld c, c
    or [hl]
    add c
    ld a, [hl]
    add hl, hl
    sub $51
    xor [hl]
    ld hl, $51de
    xor [hl]
    sub c
    ld l, [hl]
    ld d, c
    xor [hl]
    ld bc, $52fe
    xor l
    dec bc
    db $f4
    ld b, d
    cp l
    inc a
    rst $38
    ld e, e
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
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

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
    inc bc
    ld [hl], h
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
    ld a, a
    add c
    ccf
    jp $e71f


    rra
    rst $28
    ccf
    adc $ff
    jr nz, jr_05b_5706

    sub h
    ccf
    ret nz

    ld bc, $e0fe
    rra
    ldh a, [$8f]
    cp $21

jr_05b_5692:
    ld a, a
    sbc b
    cp a
    ld b, h
    rst $18
    jr nz, jr_05b_5692

    ld b, $fe
    add c
    rst $38
    ldh [rIE], a

jr_05b_569f:
    ldh a, [rIE]
    cp $ff
    ld a, a
    ld a, a
    sbc a
    rst $38
    rlca
    rst $18
    inc hl
    dec bc
    db $f4
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add b
    rst $38
    nop
    rst $18
    jr nz, @-$17

    jr jr_05b_569f

    dec de
    add a
    ld a, b
    pop af
    ld c, $0f
    nop
    ld de, $9200
    nop
    or l
    nop
    cp d
    nop
    add e
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $30
    rst $30
    nop
    nop
    rst $20
    add d
    rst $20
    rst $20
    ld h, $00
    rlca
    rst $20
    rst $20
    add b
    ld h, a
    ld bc, $e7e0
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
    ei
    inc b
    sbc $21
    db $eb
    inc d
    sub h
    ld l, e
    jp hl


    ld d, $00
    rst $38
    rst $38
    rst $38
    ld [bc], a
    db $fd

jr_05b_5704:
    nop
    rst $38

jr_05b_5706:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [hl], b
    db $fd
    ld a, [hl-]
    db $fc
    inc de
    db $fc
    ld b, e
    db $fc
    inc bc
    inc e
    db $e3
    inc e
    db $e3
    adc [hl]
    ld [hl], c
    cp $01
    cp $01
    rst $38
    nop
    ld a, a
    and b
    rst $38
    ld bc, $13ef
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ld sp, hl
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
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_05b_5704

    ld l, d
    jr nz, jr_05b_5772

jr_05b_5772:
    ld de, $fe00
    nop
    ld a, [$bb00]
    nop
    cp a
    nop
    rst $38
    nop
    cp $00
    pop af
    rst $28
    db $fd
    ei
    cp $ff
    ld a, [$ffff]
    db $fc
    db $10
    db $10
    inc h
    rst $18
    db $f4
    or h
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    call c, $ff48
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
    ld e, a
    and b
    rst $38
    nop
    pop af
    ld c, $ae
    ld d, c
    ld e, d
    and l
    jr c, @-$37

    ld d, h
    xor e
    ld c, d
    or l
    inc h
    db $db
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
    dec b
    ld a, [$ff00]
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
    ld b, b
    nop
    or b
    nop
    ld hl, sp+$00
    nop
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

    cp a
    ldh [$9f], a
    ldh [$df], a
    ldh a, [$cf]
    di
    call z, $ebf4
    cp $e1
    rst $38
    ldh a, [rIE]
    ldh [$fe], a
    pop hl
    cp $e1
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
    ld [$8800], sp
    nop
    rrca
    nop
    ld c, [hl]
    nop
    call nz, $8400
    nop
    inc b
    nop
    xor a
    nop
    ld b, b
    rst $38
    ld b, c
    rst $38
    jp nz, $c2ff

    rst $38
    and c
    add c
    rlca
    inc b
    sub $ff
    nop
    nop
    db $fd
    rst $38
    dec c
    rst $38
    ei
    nop
    cp $0b
    inc b
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

jr_05b_5855:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05b_585b:
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    jp hl


    ld d, $d4
    dec hl
    ld e, b
    and a
    and h
    ld e, e
    ret nc

    cpl
    jr nz, jr_05b_585b

    jr z, jr_05b_5855

    ld b, b
    cp a
    ld b, b
    cp a
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
    ld bc, $e9ff
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
    ld b, b
    cp a
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
    ret nz

    nop
    ldh a, [rP1]
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
    reti


    nop
    dec a
    nop
    jr nz, jr_05b_58e0

jr_05b_58e0:
    jr nz, jr_05b_58e2

jr_05b_58e2:
    nop
    nop
    ld d, b
    nop
    ld c, h
    nop
    inc b
    nop
    nop
    nop
    add b
    nop
    push bc
    nop
    jr jr_05b_58f2

jr_05b_58f2:
    ld [$2c00], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld [hl], $00
    db $76
    rst $38
    sbc h
    rst $18
    ld a, b
    sbc a
    ld h, e
    sbc a
    db $ed
    sbc a
    inc hl
    sbc a
    ld [hl], $bf
    cp [hl]
    rra
    cp a
    ccf
    sub a
    ccf
    cp e
    inc a
    rlca
    inc a
    dec bc
    inc a
    daa
    nop
    inc bc
    nop
    ld bc, $fa02
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$f307]
    rrca
    rst $30
    dec bc
    xor a
    ld d, e
    pop af
    rrca
    ld d, a
    xor e
    rst $10
    dec hl
    daa
    db $db
    add a
    ld a, e
    ld d, e
    xor a
    daa
    db $db
    and e
    ld e, a
    ld b, e
    cp a
    inc de
    rst $28
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
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    rlca
    cp $07
    cp $0f
    cp $a8
    ld [hl], a
    ld [hl], e
    adc h
    ld c, $f1
    ld bc, $00fe
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
    stop
    ld [$c000], sp
    nop

jr_05b_5982:
    nop
    nop

jr_05b_5984:
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
    sub d
    nop
    sbc b
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
    cp a
    nop
    rst $28
    nop
    ld e, a
    nop
    ld h, [hl]
    nop
    stop
    jr jr_05b_59b6

jr_05b_59b6:
    stop
    jr nz, jr_05b_59ba

jr_05b_59ba:
    ld b, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    cp e
    nop
    ld b, d
    nop
    dec c
    nop
    ld c, $00
    ld a, a
    nop
    rst $30
    ld a, l
    ld b, a
    rst $38
    rst $30
    rst $18
    rst $38
    rst $38
    rst $38
    ld l, c
    ld a, [c]
    adc h
    ret z

    or b
    ldh [$80], a
    add [hl]
    ld hl, sp+$3e
    ret nz

    ld a, $c0
    rra
    ldh [rIF], a
    ldh a, [$3a]
    push bc
    ld bc, $30cf
    rst $08
    call $ee02
    ld de, $3fc3
    rra
    rst $38
    ld a, h
    rst $38
    add $38
    db $fc
    nop
    ld a, b
    add b
    jr c, jr_05b_5982

    jr z, jr_05b_5984

    inc h
    add b
    inc h
    add b
    and [hl]
    nop

jr_05b_5a0a:
    ld h, $80
    and e

jr_05b_5a0d:
    ld [bc], a
    and [hl]
    rlca
    ld h, c
    rlca
    ld h, l
    rlca

jr_05b_5a14:
    ld h, a
    nop
    ld h, b
    rlca
    ld h, e
    inc b
    ld h, c
    rlca
    ld c, h
    rlca
    ld h, d
    rlca
    ld c, l
    rlca
    ld a, c
    inc b
    pop de
    inc c
    pop bc
    jr jr_05b_5a0a

    jr jr_05b_5a14

    db $10
    push hl
    db $10
    rst $18
    jr nz, jr_05b_5a31

jr_05b_5a31:
    rst $38
    inc e
    db $e3
    di
    inc c
    inc c
    di
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    sbc a
    jr c, jr_05b_5a0d

    inc c
    di
    inc bc
    db $fc
    dec c
    ld a, [c]
    ld [bc], a
    db $fd
    ld bc, $00fe
    nop
    ccf
    nop
    rrca
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
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
    nop
    nop
    or b
    nop
    ld hl, sp+$00
    db $fd
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
    ld a, a
    nop
    cpl
    nop
    rlca
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    add hl, de
    nop
    ld [bc], a
    nop
    nop
    nop
    and b
    nop
    ld b, b
    nop
    ld d, b
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    rrca
    rst $38
    ld a, $ff
    ld [hl], a
    ld hl, sp-$2e
    pop hl
    ld b, b
    add e
    nop
    inc bc
    inc b
    inc bc
    sbc h
    inc hl
    inc hl
    ld a, a
    inc bc
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    jp $477f


    rst $38
    rst $00
    rst $38
    ld l, a
    rst $30
    ldh a, [rIF]
    ld b, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld d, b
    adc a
    nop
    rrca
    ld b, $01
    ld c, $01
    ld bc, $1d43
    ld b, e
    ld c, a
    dec de
    rst $20
    dec de
    rst $00
    dec sp
    sub e
    ld a, a
    adc a
    ccf
    sub a
    xor a
    and a
    sbc a
    scf
    sbc a
    cpl
    sbc a
    cpl
    sbc a
    cpl
    sbc a
    ld c, [hl]
    cp a
    ld e, [hl]
    xor a
    rst $18
    cpl
    sbc a
    rst $28
    ld c, $ff
    rst $08
    ld a, a
    rst $08
    ld a, a
    rst $28
    ld e, a
    cp a
    ld e, a
    cp h
    ld e, a
    sbc a
    ld a, a
    dec a
    rst $18
    dec e
    rst $38
    adc a
    ld a, a
    rra
    rst $38
    rlca
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
    nop
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
    ld h, b
    sbc a
    nop
    rst $38
    nop
    nop
    call z, $f200
    nop
    ld sp, hl
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
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
    add b
    nop
    ldh a, [rP1]
    nop
    nop
    ld sp, $0800
    nop
    ld b, h
    nop
    jr jr_05b_5b6a

jr_05b_5b6a:
    nop
    nop
    nop
    nop
    inc c
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    call nz, $f500
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $08
    nop
    di
    nop
    pop af
    nop
    ei
    nop
    db $fd
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rla
    nop
    cp $00
    rst $38
    nop
    ccf
    nop
    rra
    nop
    cpl
    nop
    scf
    nop
    dec de
    nop
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    ld a, a
    ld a, a
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    nop
    pop bc
    nop
    ret nz

    nop
    pop bc
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    add d
    nop
    add c
    nop
    add c
    nop
    add b
    nop
    adc e
    nop
    add e
    nop
    inc bc
    nop
    dec bc
    nop
    rlca
    nop
    rlca
    nop
    cp a
    nop
    rrca
    nop
    cpl
    nop
    ld e, a
    nop
    ccf
    nop
    ccf
    nop
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
    nop
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
    ret nz

    rst $38
    ldh [rIE], a
    ld a, b
    rst $38
    add b
    rst $38
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
    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    and b
    rst $18
    ret c

    rst $20
    db $f4
    ei
    ld hl, sp-$01
    or $ff
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld de, $0100
    nop
    nop
    nop
    add h
    nop
    adc $00
    adc $00
    rst $08
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $28
    nop
    ldh a, [rP1]
    pop af
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0709], sp
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
    jr @+$09

    add hl, de
    ld a, [de]
    dec de
    inc e
    rlca
    dec e
    ld e, $1f
    jr nz, jr_05b_5cb6

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05b_5cc6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05b_5cd6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    rlca
    rlca
    ld [hl], $37
    jr c, jr_05b_5ce8

    ld c, $3a
    dec sp
    inc a
    dec a
    ld a, $3f

jr_05b_5cb6:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rlca
    ld b, l
    ld b, [hl]
    rlca
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_05b_5cc6:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    rlca
    rlca
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_05b_5cd6:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    inc h
    ld h, e
    rlca
    ld h, h
    ld h, l
    ld h, [hl]
    ld d, $67
    ld l, b
    ld l, c
    ld l, d

jr_05b_5ce8:
    ld l, e
    rlca
    ld l, h
    ld l, l
    ld l, [hl]
    ld b, e
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
    rlca
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
    rlca
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
    rlca
    rlca
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
    rlca
    xor h
    xor l
    xor [hl]
    xor a
    ld [hl-], a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    rlca
    rlca
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_000_07c3

    call nz, $07c5
    add $c7
    ret z

    ret


    jp z, $cb32

    call z, $cecd
    rst $08
    ret nc

    rlca
    pop de
    jp nc, $07d3

    call nc, $d6d5
    rst $10
    ld [hl-], a
    ret c

    reti


    jp c, $dcdb

    rlca
    db $dd
    sbc $07
    rst $18
    rlca
    ldh [$e1], a
    ld [c], a
    db $e3
    ld [hl-], a
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$07eb], a
    rlca
    rlca
    db $ec
    db $ed
    xor $ef
    ld [hl-], a
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    rlca
    or $f7
    ld l, d
    rlca
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    rlca
    ld [$0a09], sp
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    rlca
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0401
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, b
    nop
    nop
    ld b, $01
    ld bc, $0001
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
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
    ld b, $01
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld b, $41
    ld bc, $0101
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    nop
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
    ld b, $01
    ld bc, $0101
    nop
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
    ld b, $06
    ld bc, $0101
    nop
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
    ld b, $00
    nop
    nop
    nop
    nop
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
    ld b, $00
    nop
    nop
    nop
    nop
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
    ld b, $00
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp
    dec bc
    ld [$f900], sp
    cp [hl]
    cp c
    ld e, a
    inc d
    ei
    rra
    cp $1f
    rst $28
    rla
    db $fd
    rra
    rst $30
    rrca
    db $f4
    db $eb
    ld [hl], a
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp a
    rst $18
    cp a
    rst $38
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
    ld sp, hl
    ld b, $f8
    rlca
    ld a, [$3305]
    call z, $fd02
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    rst $38
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    ld c, [hl]
    sbc $92
    or [hl]
    ld l, h
    ld l, h
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld l, l
    cp $db
    rst $38
    sub d
    rst $38
    ret c

    nop
    db $ec
    nop
    inc hl
    call c, $a45b
    ei
    inc b
    ei
    inc b
    nop
    rst $38
    nop
    rst $38
    adc [hl]
    ld [hl], c
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld c, $00
    inc e
    nop
    ld [hl], b
    nop
    ret nz

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
    rst $28
    sub b
    rst $30
    ld [$00ff], sp
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    inc a
    rst $38
    ld de, $07ff
    rst $38
    dec sp
    rst $38
    ret nz

    add b
    rst $38
    nop
    rst $38
    ld h, a
    sbc b
    sbc a
    ld h, e
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    cp a

jr_05b_5fc7:
    ld b, b
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
    stop
    cp $fd
    rst $38
    db $fc
    db $fc
    db $db
    sbc [hl]
    ld h, c
    add e
    ld a, h
    cpl
    rst $10
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    jr c, jr_05b_5fc7

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
    inc bc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $30
    rrca
    inc [hl]
    rrca
    ld [hl], e
    inc c
    ldh [rNR14], a
    pop de
    dec h
    db $db
    dec h
    or d
    ld b, h
    ld b, c
    add [hl]
    add b
    rlca
    db $e4
    inc bc
    cp h
    ld b, e
    db $fc
    inc bc
    pop af
    ld b, $84
    inc bc
    call nz, Call_05b_6c03
    add e
    inc a
    jp $e31c


    adc h
    ld [hl], e
    call nz, Call_05b_403b
    cp a
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rst $38
    inc e
    db $e3
    ld [$00f7], sp
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
    ccf
    nop
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld c, $00
    jr c, jr_05b_6070

jr_05b_6070:
    ldh [rP1], a
    add b
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
    jr nz, jr_05b_6082

jr_05b_6082:
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    ld c, $00
    rst $38
    ld a, a
    adc d
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rst $18
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    rst $20
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
    ld a, e
    rst $38
    inc sp
    db $f4
    inc d
    rst $38
    inc bc
    rst $08
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rlca
    rst $38
    rst $00
    ccf
    ld b, a
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    add a
    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rla
    rst $38
    add a
    ld a, a
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$00
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
    sbc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    nop
    nop
    ret nz

    ccf
    nop
    rst $38
    rst $38
    or b
    rst $38
    cp $ff
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
    nop
    rst $38
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
    ld [$000c], sp
    inc e
    nop
    jr jr_05b_61b6

jr_05b_61b6:
    jr nc, jr_05b_61b8

jr_05b_61b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    db $d3
    rst $38
    xor e
    rst $38
    sub $ff
    set 7, a
    dec d
    rst $38
    scf
    rst $38
    ld e, a
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    add sp, -$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    cp $fd
    db $f4
    db $fd
    ldh a, [$fd]
    stop
    nop
    db $fc
    db $fc
    add b
    add b
    db $fc
    inc a
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    ld [bc], a
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld bc, $01fe
    rst $38
    ld bc, $01fe
    cp $01
    cp $fe
    nop
    cp $00
    cp $00
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
    ld b, $00
    jr jr_05b_623e

jr_05b_623e:
    ldh a, [rP1]
    ccf
    pop bc
    rst $38
    rlca
    rst $38
    inc c
    rst $38
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
    inc bc
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    db $10
    rst $38
    rrca
    rst $38
    ld e, a
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    ei
    ld [hl], l
    rst $38
    ret nc

    rst $38
    sub d
    rst $38
    xor h
    rst $38
    ld b, d
    rst $38
    adc b
    rst $38
    pop bc
    rst $28
    db $db
    rst $18
    push hl
    call $bfff
    nop
    cp a
    rst $38
    rst $38
    nop
    cpl
    ei
    db $fd
    add e
    rst $38
    and b
    db $fd
    rst $30
    ld a, a
    add b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b
    or a
    ld c, b
    ld l, a
    sub b
    dec hl
    call nc, $a05f
    dec h
    jp c, $e817

    ld [de], a
    db $ed
    inc de
    db $ec
    ld a, [bc]
    push af
    dec b
    ld a, [$fd02]
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    sbc a
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    db $f4
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc b
    nop
    rrca
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

jr_05b_6346:
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rst $38
    nop
    nop
    rst $38
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
    add b
    rst $38
    ld hl, sp+$00
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
    ldh [rIE], a
    ldh a, [rIE]
    and b
    rst $38
    add b
    rst $38
    nop
    rst $30
    ld [$d07f], sp
    ld a, a
    or h
    db $fd
    ld [hl], d
    db $fd
    ld a, [de]
    rst $38
    jr c, jr_05b_6346

    ld e, b
    rst $18
    jr nz, @+$01

    and h
    rst $38
    ld d, h
    rst $38
    ld d, d
    add [hl]
    rst $38
    cp $00
    xor e
    cp $fe
    nop
    rst $38
    ld a, [$fe39]
    cp $00
    ccf
    add sp, -$10
    nop
    and b
    nop
    ret nc

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rNR10], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    cp b
    ld b, b
    ldh a, [rP1]
    cp h
    ld b, b
    ld e, d
    and b
    xor [hl]
    ld d, b
    ld a, [hl-]
    ret nz

    sbc l
    ld h, b
    ld b, a
    cp b
    dec l
    ret nc

    rla
    add sp, $2f
    ret nc

    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$80
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, b
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
    ld bc, $07ff
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
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    ld l, b
    sub a
    ldh a, [rIF]
    ldh [$1f], a
    ld l, h
    sub e
    ld a, [c]
    dec c
    rst $38
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rrca
    nop
    ld e, a
    nop
    rra
    nop
    rra
    nop
    ld a, a
    nop
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05b_643a

jr_05b_643a:
    pop hl
    nop
    add b
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    db $eb
    rst $38
    push af
    rst $38
    rst $20
    rst $38
    db $eb
    rst $38
    ld b, e
    rst $38
    dec b
    rst $38
    ld b, $ff
    rlca
    rst $38
    ld b, $ff
    ld bc, $01ff
    cp a
    ld b, b
    rst $38
    ld bc, $19ef
    rst $38
    dec bc
    rst $38
    rrca
    ld c, a
    rst $38
    ld a, [hl]
    nop
    cpl
    ld a, a
    ld a, a
    nop
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, h
    nop
    ld [hl], e
    ld a, a
    inc b
    ld [$0800], sp
    nop
    ld [$0804], sp
    inc b
    ld [$0c00], sp
    ld b, $08
    ld b, $08
    nop
    ld c, $05

jr_05b_6493:
    ld a, [bc]
    nop
    rrca
    add d
    dec c
    nop
    rrca
    ld bc, $000e
    rrca
    ret nz

    rrca
    add b
    rrca
    and b
    rrca
    ld d, b
    rrca
    ret nz

    ccf
    db $db
    inc h
    jr nc, jr_05b_6493

    adc b
    ld h, a
    add b
    ld a, a
    ret c

    ld a, a
    adc d
    ld [hl], a
    ld h, b
    rst $38
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [de]
    rst $38
    and b
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
    rst $38
    ld c, $ff
    ld a, h
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    cp $ff
    ld a, a
    dec sp
    rst $08
    ld bc, $00ff
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
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and $00
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    rra
    nop
    rst $38
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
    rst $38
    and c
    rst $38
    db $e3
    rst $38
    or b
    rst $38
    ld l, e
    rst $38
    ld e, h
    rst $38
    ei
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    xor c
    rst $38
    xor c
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    inc c
    nop
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    and b
    nop
    add b
    nop
    sub b
    nop
    ld c, b
    add b
    xor b
    nop
    jr nc, @-$7e

    ret nc

    nop
    ld l, c
    add b
    ld e, b
    add b
    ret z

    nop
    add b
    nop
    ld l, d
    add b
    ld l, d
    add b
    ld a, d
    add b
    daa
    ret c

    db $10
    adc a
    nop
    rra
    ld [$ffff], sp
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
    rlca
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    nop
    rst $38
    add b
    rst $38
    ldh a, [$fc]
    rst $38
    jr c, @+$01

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
    db $fc
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
    inc bc
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
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
    inc b
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    ld c, d
    rst $38
    sub d
    rst $38
    inc d
    rst $38
    add h
    rst $38
    add h
    rst $38
    ld l, b
    rst $38
    call c, $f8ff
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
    ld [hl], $44
    rst $38
    ld a, a
    ld bc, $3c7f
    ld b, b
    ccf
    ccf
    nop
    ld b, b
    ccf
    ccf
    nop
    ld b, b
    ccf
    ld a, [hl-]
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
    ld [bc], a
    nop
    ld bc, $4000
    nop
    inc b
    ld [bc], a
    ld d, b
    rlca
    add b
    rlca
    inc b
    inc bc
    sub b
    rlca
    xor b
    rlca
    ret z

    rlca
    ld b, d
    cp a
    inc bc
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
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$03
    ld a, [$fbfc]
    db $fc
    ei
    rst $38
    rst $38
    ld a, a
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ldh [rP1], a
    ld b, b
    nop
    add e
    nop
    inc bc
    nop
    nop
    nop
    add b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld bc, $1700
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_05b_66d2

jr_05b_66d2:
    stop
    inc e
    nop
    ld [bc], a
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
    adc b
    rst $38
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [$12ff], sp
    rst $38
    ld [hl], $ff
    dec l
    rst $38
    ld b, d
    rst $38
    adc $ff
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
    ld a, [bc]
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    dec de
    rst $38
    rst $38
    nop
    ld d, b
    rst $38
    sbc a
    nop
    ld c, b
    rst $38
    ld b, b
    cp a
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
    nop
    ld a, [bc]
    nop
    inc bc
    nop
    add l
    nop
    scf
    nop
    inc de
    nop
    cpl
    nop
    rla
    nop
    ld e, e
    nop
    cp a
    nop
    inc hl
    inc e
    rrca
    inc a
    add a
    inc a
    ret nc

    inc c
    ld c, $fd
    adc a
    ld a, h
    add a
    ld a, h
    dec de
    db $fc
    ld hl, sp-$01
    and b
    ld a, a
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld c, c
    nop
    nop
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    ld bc, $ffff
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
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    ldh a, [rP1]
    ldh a, [rP1]
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
    nop
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
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
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
    ldh [rP1], a
    ret nz

    nop
    pop hl
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
    rst $38
    rra
    rst $38
    jr nz, @+$01

    xor h
    rst $38
    ld de, $40ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add [hl]
    rst $38
    add h
    rst $38
    add b
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ld b, a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    nop
    ld a, l
    ccf
    ld a, a
    nop
    ld h, b
    ccf
    ld a, a
    nop
    ld h, b
    ccf
    ccf
    nop
    ld bc, $0700
    inc bc
    ld [$0007], sp
    rrca
    ld [$000f], sp
    rlca
    jr z, jr_05b_6827

    rst $30
    rrca
    rst $38
    rlca
    rst $30
    rrca
    rst $30

jr_05b_6827:
    rrca
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $30
    rrca
    rst $00
    ccf
    and a
    ld e, a
    rst $30
    rrca
    ldh [$1f], a
    add a
    ld a, a
    ld b, a
    cp a
    rlca
    rst $38
    ld b, a
    cp a
    rlca
    rst $38
    ld bc, $c0ff
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld de, $00ff
    rst $38
    dec b
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
    pop af
    nop
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    jp hl


    ld d, $ef
    db $10
    rst $38
    nop
    rst $18
    jr nz, @+$11

    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    dec sp
    call nz, Call_000_00d2
    ld [$3f00], sp
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
    rst $38
    add a
    rst $38
    rlca
    rst $38
    db $fc
    rst $38
    and b
    rst $38
    inc b
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc e
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    db $eb
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ldh a, [$f8]
    ld hl, sp+$08
    cp $f8
    rst $38
    nop
    rst $38
    db $e4
    ld hl, sp-$08
    ld hl, sp-$18
    cp a
    ld e, [hl]
    cp a
    ld a, [hl]
    rst $38
    ld e, a
    rst $38
    ld a, $ff
    nop
    add b
    ld a, a
    rst $18
    nop
    sbc a
    nop
    sbc a
    nop
    rst $18
    nop
    rst $38
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    add d
    nop
    rst $00
    nop
    adc h
    nop
    cp h
    nop
    ld hl, sp+$00
    ret nc

    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    call nc, Call_000_0300
    nop
    rst $38
    nop
    xor b
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
    rrca
    nop
    cp $e1
    rst $38
    ccf
    rst $38
    inc e
    rst $38
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    inc bc
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
    ret nz

    rst $38
    nop
    nop
    nop
    adc h
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    inc h
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
    cp $01
    rst $38
    nop
    ld a, e
    inc b
    rrca
    nop
    rrca
    nop
    rlca
    nop
    add a
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
    jr nz, jr_05b_69ac

jr_05b_69ac:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    ld l, [hl]
    rst $38
    db $f4
    rst $38
    call z, $d5ff
    rst $38
    sub e
    rst $38
    cpl
    rst $38
    ld l, l
    rst $38
    jp z, $f1ff

    rst $38
    ld a, [c]
    rst $38
    sub c
    rst $38
    ld [c], a
    rst $38

jr_05b_69cf:
    ld a, [c]
    ld [hl], $ff
    ld b, d
    rst $38
    cp $1f
    dec e
    ld [$0815], sp
    ld a, a
    rrca
    rst $38
    nop
    rst $38
    jr nz, jr_05b_6a54

    ld [hl], e
    ccf
    ld [hl-], a
    rst $38
    sub c
    rst $38
    ld [hl], b
    rst $38
    ld c, h
    rst $38
    sbc $de
    xor l
    jr nz, jr_05b_69cf

    rst $38
    nop
    nop
    nop
    inc bc
    nop
    ld c, $00
    inc e
    nop
    ld h, b
    nop
    jr nz, jr_05b_69fe

jr_05b_69fe:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld b, $00
    stop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    add b
    ld a, a
    rst $38
    ret nz

    rst $38
    ld a, $ff
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, b
    cp $3d
    rst $38
    ld e, $ff
    rra
    ccf
    rst $08
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_05b_6a54:
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
    nop
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
    rra
    ldh [$fc], a
    nop
    ld a, h
    nop
    inc a
    nop
    db $fc
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp [hl]
    rst $38
    cp $fe
    rst $38
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    add c
    rst $38
    ld h, l
    rst $38
    ret c

    rst $38
    sub b
    db $fd
    ld [de], a
    rst $38
    ld b, l
    rst $38
    ld a, [bc]
    rst $38
    ld c, a
    ld c, [hl]
    rst $38
    ld b, h
    rst $38
    and b
    rst $38
    db $dd
    adc b
    ld d, h
    adc b
    ld [hl], e
    sbc h
    rst $38
    nop
    rst $38

jr_05b_6aaf:
    jr nz, jr_05b_6aaf

    xor [hl]
    rst $30
    dec e
    rst $38
    adc b
    cp $e5
    rst $38
    ld h, d
    rst $38
    ld a, [bc]
    ld e, [hl]
    and c
    nop
    rst $38
    rst $38
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
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rra
    nop
    ld sp, $8100
    nop
    add c
    nop
    nop
    nop
    ld d, $00
    ld [hl], b
    nop
    ld a, $00
    pop de
    nop
    rst $38
    nop
    rrca
    nop
    ccf
    nop
    ccf
    nop
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    cp $01
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
    nop
    rst $38
    nop
    ld a, l
    add d
    db $fd
    ld [bc], a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    pop af
    rst $38
    rst $38
    rst $38
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
    add b
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

jr_05b_6b47:
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jp $c3ff


    rst $38
    ret


    rst $18
    jr nz, jr_05b_6b47

    ld hl, $20df
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    ldh [$f7], a
    add sp, -$01
    ret nz

    cp $e1
    rst $30
    ld c, b
    rst $38
    ld h, d
    rst $38
    db $fc
    rst $38
    ld d, [hl]
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld d, $ff
    ld h, l
    rst $38
    ld c, c
    rst $38
    ld b, b
    ld b, $05
    ld bc, $9000
    sub b
    sub b
    db $10
    rst $30
    ld h, a
    rst $38
    ld e, $ff
    ld [hl], $ff
    rla
    or e
    ld b, d
    nop
    rst $38
    rst $38
    nop
    ldh [rP1], a
    ldh a, [rP1]
    sbc b
    nop
    adc h
    nop
    adc b
    nop
    ld [$1b00], sp
    nop
    sbc l
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    cp a
    nop
    rra
    nop
    ld bc, $8400
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    pop bc
    nop
    nop
    nop
    ld bc, $fc00
    nop
    nop
    rst $38
    ldh [$1f], a
    ei
    inc b
    push de
    ld a, [hl+]
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld a, b
    rst $38
    ld e, $ff
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
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp $ff
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
    nop
    nop
    nop

Call_05b_6c03:
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
    nop
    nop
    nop
    nop
    nop
    jr jr_05b_6c20

jr_05b_6c20:
    ld [$8000], sp
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
    rst $38
    sub $ff
    rst $18
    rst $38
    adc l
    rst $38
    ld a, [de]
    cp a
    ld e, a
    cp a
    ld e, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rlca
    ccf
    rst $08
    ld e, a
    and a
    ld a, a
    add a
    ld a, a
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    xor d
    rst $38
    cp l
    rst $38
    inc d
    push bc
    rst $00
    rlca
    nop
    dec bc
    dec bc
    rrca
    rrca
    di
    ld b, d
    db $e3
    ld bc, $c3c3
    pop bc
    ret nz

    rst $38
    ld d, l
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
    add b
    nop
    ldh a, [rP1]
    or $00
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    ld a, e
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    rra
    nop
    inc b
    nop
    ret nz

    nop
    ld hl, sp+$00
    rst $38
    nop
    rra
    nop
    rlca
    nop
    ldh a, [rP1]
    rst $38
    nop
    dec h
    nop
    adc d
    nop
    ld bc, $0200
    nop
    nop
    nop
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    add b
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
    ld a, a
    nop
    ld hl, sp+$00
    add $00
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld h, b
    nop
    nop
    nop
    rst $38
    rst $30
    rst $38
    ld [hl], c
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $30
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
    cp [hl]
    cp $ff
    db $fd
    rst $38
    ld a, [$7cff]
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    rst $00
    ld hl, sp+$04
    ld hl, sp-$06
    ld a, c
    jp $ffc3


    nop
    ei
    ld b, h
    and $f9
    db $fd
    ld d, [hl]
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc e
    nop
    db $e4
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $30
    nop
    push hl
    nop
    nop
    nop
    nop
    nop
    rst $00
    nop
    ld a, [c]
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
    dec de
    nop
    dec b
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    ccf
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
    ld [$3000], sp
    nop
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    add b
    nop
    pop bc
    nop
    rst $08
    nop
    ld a, a
    add b
    rst $38
    nop
    ld b, $00
    ld b, $00
    ld c, $00
    rst $28
    cp [hl]
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $e9
    add sp, -$69
    ret nc

    cp a
    and b
    rst $08
    nop
    rst $28
    xor b
    ld b, a
    ld c, b
    adc a
    ld c, b
    adc a
    ld c, b
    rst $08
    ld c, h
    add a
    ld [$8807], sp
    rlca
    sbc e
    adc h
    db $fd
    ld [de], a
    cp d
    ld b, l
    ccf
    ret nz

    cp [hl]
    ld b, c
    push bc
    ld a, d
    pop bc
    ld a, $00
    rst $38
    rst $38
    nop
    ld hl, $4100
    nop
    pop bc
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    inc c
    nop
    ld [hl], b
    nop
    ldh [rP1], a
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
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    jr nz, jr_05b_6e1e

jr_05b_6e1e:
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld hl, sp+$00
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    ld bc, $0000
    nop
    ld h, b
    nop
    ld a, $00
    ld a, a
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_05b_6e4c

jr_05b_6e4c:
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld b, b
    nop
    stop
    jr c, jr_05b_6e62

jr_05b_6e62:
    jr jr_05b_6e64

jr_05b_6e64:
    ldh a, [rP1]
    ldh a, [rP1]
    ret nz

    nop
    ld h, b
    nop
    ld [hl+], a
    nop
    rrca
    nop
    ld a, [de]
    db $ed
    cp b
    ld a, a
    ld sp, hl
    db $76
    ldh [$df], a
    ret nz

    ccf
    add b
    rst $38
    ret nc

    xor a
    ret nz

    rst $38
    add c
    ld a, [hl]
    add a
    ei
    rrca
    rst $30
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $10
    ld e, a
    and a
    ld e, $e7
    dec bc
    rst $30
    rla
    xor $08
    rst $30
    ld a, [de]
    push hl
    ld [hl], b
    rst $08
    ldh [$df], a
    ld d, a
    xor b
    rst $38
    ld bc, $21e9
    pop af
    sbc b
    rlca
    ld hl, sp+$3f
    pop bc
    rrca
    di
    ld d, [hl]
    xor d
    call z, $0c30
    ldh a, [$dc]
    nop
    call c, $dc00
    nop
    call c, $dc00
    nop
    call c, $dc00
    nop
    call z, $9800
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    and b
    nop
    jr nz, jr_05b_6ecc

jr_05b_6ecc:
    ld [$0000], sp
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    jr z, jr_05b_6f26

    ld [hl], b
    nop
    nop
    nop
    di
    nop
    rst $38
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
    nop
    inc bc
    nop
    ldh [rP1], a
    ld l, $00
    rla
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    nop
    ei
    nop
    xor c
    nop
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
    ld a, [de]
    nop
    ret nz

    nop
    nop
    nop
    ldh a, [rP1]
    add sp, $00
    ld [hl], b
    nop
    inc d
    nop
    rlca
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

jr_05b_6f26:
    nop
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    cp $01
    rst $38
    nop
    and b
    nop
    ld c, a
    nop
    inc bc
    nop
    ld h, c
    nop
    nop
    nop
    nop
    nop
    jr c, jr_05b_6f46

jr_05b_6f46:
    jr c, jr_05b_6f48

jr_05b_6f48:
    nop
    nop
    jr jr_05b_6f4c

jr_05b_6f4c:
    inc b
    nop
    inc bc
    nop
    nop
    nop
    stop
    ld bc, $0200
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
    call nz, $eef5
    rst $20
    rst $18
    rst $00
    dec a
    inc bc
    db $fc
    rrca
    ld a, [c]
    ld c, $f1
    ld bc, $bbff
    ld b, l
    rst $38
    xor a
    cp a
    rst $30
    rst $38
    rst $38
    rst $38
    sbc a
    ld a, e
    cp h
    db $ed
    ld d, a
    ld [hl], l
    xor d
    ret nz

    ccf
    ld b, $fd
    inc b
    ei
    ld h, $dd
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    db $fc
    rst $38
    db $fc
    pop af
    ld [hl], c
    ld bc, $ff00
    nop
    rst $38
    ld b, e
    ld sp, hl
    ld sp, hl
    nop
    nop
    rst $38
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0f00
    nop
    rlca
    nop
    inc bc
    inc b
    rrca
    nop
    nop
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
    ld e, a
    nop
    or l
    nop
    db $fc
    nop
    inc b
    nop
    ldh [rP1], a
    ld l, [hl]
    nop
    ld a, [hl]
    nop
    dec c
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    and $00
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
    db $fc
    nop
    add d
    nop
    ret


    nop
    nop
    nop
    ld bc, $0500
    nop
    ccf
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
    ccf
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    rst $38
    rst $08
    jr nc, jr_05b_709a

    add b
    ld a, a
    add c
    rst $38
    rlca
    rst $38
    rra
    rst $38
    jr nz, @+$01

    nop
    ld a, [$e305]
    inc e
    db $e3
    inc e
    ld sp, hl
    ld b, $ff
    nop
    nop
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0e
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_05b_7074

    ld a, [de]
    dec de
    inc e
    ld c, $0e
    dec e
    ld e, $1f
    jr nz, jr_05b_7086

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05b_7096

    ld a, [hl+]
    dec hl
    ld c, $2c
    dec l
    ld l, $2f

jr_05b_7074:
    jr nc, jr_05b_70a7

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld c, $38
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $0e
    ccf

jr_05b_7086:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld c, $0e
    ld b, l
    ld b, [hl]
    ld c, $47
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_05b_7096:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_05b_709a:
    ld d, c
    ld c, $0e
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

jr_05b_70a7:
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
    ld c, $0e
    ld c, $68
    ld l, c
    ld l, d
    ld l, e
    ld a, [hl-]
    ld c, $6c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld c, $0e
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
    sub c
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
    ld c, $0e
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

    ld c, $0e
    ld c, $c0
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    adc $d5
    sub $d7
    ret c

    reti


    jp c, $cddb

    call $dddc
    sbc $df
    ldh [$e1], a
    adc $e2
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    call $eace
    db $eb
    db $ec
    db $ed
    call $eecd
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $cd
    call $f8f7
    ld sp, hl
    call $facd
    ei
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $cd02
    call Call_000_03cd
    inc b
    call $05cd
    ld b, $cd
    rlca
    ld [$cd09], sp
    ld a, [bc]
    dec bc
    call $cdcd
    call $cd0c
    call RST_00
    nop
    nop
    nop
    ld b, $00
    nop
    inc bc
    inc bc
    inc bc
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
    ld b, $00
    nop
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
    ld b, $00
    nop
    inc bc
    inc bc
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
    ld b, $00
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
    ld bc, $0000
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
    ld b, $01
    ld bc, $0101
    nop
    inc bc
    nop
    jr nz, jr_05b_71fc

jr_05b_71fc:
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0303
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld b, $01
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld b, $01
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0001
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05b_7281

jr_05b_7281:
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
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
    ld bc, $0101
    rlca
    nop
    nop
    ld [$0808], sp
    nop
    nop
    nop
    ld [$0008], sp
    nop
    ld [$0008], sp
    ld [$0808], sp
    nop
    ld [$0008], sp
    nop
    nop
    nop
    ld [$0000], sp
    ld a, b
    and a
    ld l, e
    or a
    rst $10
    ld l, c
    ret nz

    ccf
    ld b, l
    cp d
    rlca
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$0ff7], sp
    db $fc
    ld a, a
    cp a
    ld a, a
    or e
    ld e, a
    and [hl]
    rrca
    db $f4
    rra
    cp $3f
    call $ff00
    dec de
    db $fc
    sub b
    ld l, a
    ldh [$3f], a
    and b
    ld e, a
    add d
    db $fd
    ld sp, hl
    ld b, $ce
    nop
    ld a, a
    jp nz, $ffd2

    add $ff
    ld hl, sp-$01
    ei
    rst $38
    ld bc, $fdff
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
    nop
    rst $38
    nop
    rst $38
    nop

jr_05b_7315:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fd
    rst $28
    rra
    jr jr_05b_733a

    ld e, b
    jr jr_05b_7315

    ld [hl], b
    ldh [$c0], a
    add b
    add b
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    rrca
    nop
    ld a, [$ff00]
    nop

jr_05b_733a:
    ldh [rP1], a
    dec b
    nop
    ld d, c
    nop
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [rIE], a
    rst $38
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rlca
    rst $38
    ld a, [hl]
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
    cp $01
    cp $81
    rst $38
    ldh a, [rIE]
    rst $38
    ldh [rIE], a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    db $fc
    inc bc
    pop hl
    ld e, $97
    ld a, a
    ld e, a
    ld hl, sp-$41
    ld sp, hl
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f1
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    ld c, e
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    ld [hl], c
    adc a
    or e
    ld c, l
    ld hl, $1cfe
    ei
    ld e, $e9
    ld [hl+], a
    db $dd
    inc a
    jp $ff03


    add a
    rst $38
    ld a, a
    sbc a
    rst $38
    rst $08
    cp a
    ld e, a
    rra
    rst $30
    rst $18
    xor a
    add c
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    ld e, $e7
    db $10
    rst $28
    ld [$fff7], sp
    nop
    rst $38
    inc e
    rst $38
    ccf
    ld h, e
    rst $38
    ld [hl], c
    rst $38
    jr nc, @+$01

    adc c
    rst $38
    dec b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $61de
    rst $18
    ldh [rIE], a
    add b
    rst $38
    nop
    ld bc, $0300
    ld bc, $0202
    inc c
    inc b
    inc a
    inc e
    db $10
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    db $f4
    nop
    nop
    nop
    rst $38
    nop
    ld e, a
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $dffe
    jr nz, @+$01

    rst $38
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
    ld bc, $00ff
    rst $38
    nop
    rst $30
    ld [$10ef], sp
    db $fc
    inc bc
    ret nz

    ccf
    inc bc
    db $fc
    ccf
    rst $00
    ld hl, sp+$7f
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
    ld a, [c]
    nop
    add b
    nop
    ld bc, $0100
    nop
    rlca
    nop
    ld e, $00
    ld a, b
    nop
    rra
    rst $20
    ld a, a
    sbc a
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    ld a, b
    rst $38
    ldh [rIE], a
    add b
    rst $38
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
    stop
    stop
    nop
    nop
    dec de
    db $ec

jr_05b_7492:
    nop
    rst $38
    ld b, b
    cp a
    ldh a, [$ef]
    ld sp, hl
    or $f1
    cp $01
    rst $38
    dec b
    ei
    rlca
    rst $38
    ld l, a
    sbc a
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
    or $01
    rst $38
    dec h
    db $db
    ld [bc], a
    db $fd
    inc bc
    rst $38
    add e
    ld a, l
    ld bc, $01fe
    cp $ff
    nop
    rst $38
    nop
    sbc a
    inc b
    rst $10
    rst $10
    ld a, a
    rst $38
    ld a, e
    db $e4
    ld l, a
    ldh [$60], a
    ldh [$6f], a
    ldh [$e0], a
    ld b, b

jr_05b_74d6:
    ld h, b
    ld h, b
    ld b, b
    jr nz, jr_05b_751b

    ld h, b
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    adc a
    jr nc, jr_05b_7492

    jr nc, jr_05b_7514

    jr nc, jr_05b_74d6

    ldh a, [rIE]
    ldh [$3f], a
    ldh [$df], a
    jr nz, @+$01

    nop
    ldh [$e0], a
    ldh a, [$e0]
    ld e, b
    jr nc, jr_05b_752f

    jr jr_05b_74f9

jr_05b_74f9:
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
    ld b, b
    nop
    rrca
    nop
    cp $00
    rst $38
    nop
    rlca
    nop
    ld sp, hl
    nop
    rst $30
    ld [$609f], sp

jr_05b_7514:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05b_751b:
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
    nop
    ld a, a
    add a
    rst $38
    ld e, $e1

jr_05b_752f:
    cp $fc
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    xor $11
    ldh a, [rIF]
    pop hl
    ld e, $0f
    ldh a, [$1f]
    ldh [$7f], a
    add b
    rst $38
    ld c, $ff
    ld a, h
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
    ld [$1c00], sp
    nop
    jr jr_05b_7572

jr_05b_7572:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    cp a
    ld h, e
    sbc a
    ld a, a
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    dec a
    db $eb
    db $fc
    db $fd
    cp $ff
    rst $28
    rst $00
    ei
    set 7, a
    cp a
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
    db $dd
    ld c, [hl]
    cp l
    rrca
    rst $38
    rst $18
    cpl
    rst $38
    ccf
    and a
    ld e, c
    ld l, [hl]
    sub b
    cp $00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp-$40
    ld hl, sp+$20
    ld hl, sp+$40
    inc a
    nop
    db $fc
    nop
    ld [hl], h
    ld b, b
    ld a, d
    ld h, b
    cp $c0
    ld a, [hl]
    ld h, b
    ld a, h
    ld b, b
    ld a, h
    ld b, b
    pop bc
    ld a, h
    pop hl
    ld a, $e1
    ld a, [hl]
    jp $817c


    ld a, $80
    ccf
    and c
    ld e, $a0
    rra
    ld a, a
    nop
    ccf
    nop
    ccf
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
    cp $00
    ld de, $7e00
    nop
    ld b, b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, d
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $c3ff
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    inc e
    rst $38
    jr c, @+$01

    ldh [$fc], a
    jp $5fa0


    ld b, b
    cp a
    rlca
    nop
    jr nz, jr_05b_7624

jr_05b_7624:
    ld h, b
    nop
    nop
    nop
    inc de
    nop
    rra
    nop
    inc a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$1000], sp
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
    ld a, h
    cp a
    ld hl, sp-$01
    db $fd
    cp a
    ld sp, hl
    ccf
    ei
    rst $38
    ld a, e
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    ld a, a
    rst $38
    rst $18
    xor d
    rst $20
    ret c

    pop hl
    ld e, $82
    rst $38
    jp z, $f8f7

    rst $30
    db $f4
    rst $38
    add h
    rst $38
    rst $38
    nop
    rst $18
    or l
    rst $38
    push af
    rst $38
    dec d
    rst $38
    ld sp, hl
    rst $38
    ld bc, $0014
    add b
    cp $00
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    xor $00
    nop
    nop
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
    ld b, b
    nop
    ret nz

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp h
    nop
    ldh [rP1], a
    pop hl
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld a, h
    nop
    rst $38
    nop
    ld a, a
    nop
    ret nz

    ccf
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
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
    nop
    rst $38
    nop
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$03], a
    nop
    ld c, $00
    jr c, jr_05b_7706

jr_05b_7706:
    db $f4
    nop
    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld [hl], b

jr_05b_771f:
    nop
    nop
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
    rst $18
    ld a, a
    ld a, a
    cp a
    rst $38
    rst $38
    cp $fd
    cp $fd
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    xor a
    pop bc
    ccf
    ret


    or a
    sbc h
    db $e3
    jr z, jr_05b_771f

    nop
    rst $38
    ld b, b
    cp a
    ld c, $f5
    ld e, a
    cp a
    ld a, a
    xor d
    rst $38
    ld [hl+], a
    and l
    ld a, [$a5ff]
    rst $38
    ld a, e
    rst $38
    ld h, c
    rst $38
    ld h, b
    ld e, a
    nop
    sbc [hl]
    ld h, b
    dec e
    ld h, b
    ld a, [de]
    ld h, b
    dec e
    ld h, b
    rla
    ld h, b
    sbc e
    ld h, b
    sbc [hl]
    ld h, b
    cp l
    ld h, b
    cp $20
    ld a, e
    jr nz, jr_05b_77f2

jr_05b_7775:
    jr nz, jr_05b_7775

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$12

    jr nz, jr_05b_77b3

    nop
    jr nc, jr_05b_7786

jr_05b_7786:
    jr nc, jr_05b_7788

jr_05b_7788:
    jr nc, jr_05b_778a

jr_05b_778a:
    jr nc, jr_05b_778c

jr_05b_778c:
    jr nc, jr_05b_778e

jr_05b_778e:
    jr nc, jr_05b_7790

jr_05b_7790:
    jr nc, jr_05b_7792

jr_05b_7792:
    jr nc, jr_05b_7794

jr_05b_7794:
    jr nz, jr_05b_77a6

    nop
    db $10
    jr c, jr_05b_779a

jr_05b_779a:
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rrca
    nop
    nop
    nop
    adc b
    nop

jr_05b_77a6:
    ld e, h
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
    ret nz

jr_05b_77b3:
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
    rlca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld c, $00
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld h, b
    nop
    ld [hl], b
    nop
    ld e, l
    nop
    db $dd
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    db $fc
    nop
    add hl, sp
    nop

jr_05b_77f2:
    jr jr_05b_77f4

jr_05b_77f4:
    ld e, $00
    rra
    nop
    rrca
    nop
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
    jr jr_05b_7806

jr_05b_7806:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub a
    rst $28
    rst $10
    xor a
    sub a
    ei
    add a
    ld a, d
    sub b
    ld l, a
    sub b
    rst $28
    sub b
    rst $38
    or b
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ld h, b
    rst $38
    ld h, c
    cp $b2
    db $ed
    cp $3d
    ret nz

    ret nz

    cp $7f
    rst $38
    rst $38
    ld e, a
    ld e, a
    rst $30
    ld hl, sp-$04
    db $fc
    ld hl, sp+$27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05b_784b

jr_05b_784b:
    add b
    nop
    ret nz

    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ret nz

    nop
    ld d, b
    nop
    ld h, b
    nop
    and b
    nop
    ret z

    nop
    ld h, b
    nop
    jp c, $a800

    nop
    push de
    nop
    db $ec
    nop
    push af
    nop
    jp hl


    nop
    db $fd
    nop
    ld [$ff00], a
    nop
    ld a, [$f500]
    nop
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rlca
    nop
    ld hl, $2000
    nop
    nop
    nop
    ld bc, $ff00
    nop
    dec b
    nop
    add b
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ld bc, $0000
    nop
    nop
    nop
    add e
    nop
    ld [hl], a
    nop
    inc e
    nop
    ld [hl], b
    nop
    ret nz

    nop
    nop
    nop
    nop
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
    add b
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
    inc bc
    nop
    ccf
    nop
    ld sp, hl
    nop
    ld h, e
    nop
    add e
    nop
    rst $20
    nop
    rst $20
    nop
    add e
    nop
    rlca
    nop
    ld c, $00
    rlca
    nop
    rlca
    nop
    rrca
    nop
    cp a
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld sp, $3f00
    nop
    jr c, jr_05b_7904

jr_05b_7904:
    stop
    nop
    nop
    jr jr_05b_790a

jr_05b_790a:
    jr jr_05b_790c

jr_05b_790c:
    nop
    nop
    nop
    nop
    cp a
    rst $08
    cp a
    rst $38
    ccf
    ld hl, sp+$3f
    jp c, $df3f

    ccf
    rst $30
    ccf
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $28
    rrca
    rst $38
    rlca
    rst $38
    rst $38
    rra
    rst $38
    rra
    ldh a, [$30]
    ld a, a
    nop
    ccf
    ld a, a
    ld a, l
    nop
    ld a, a
    ccf
    ld a, a
    ld a, $7f
    nop
    ld e, a
    jr nz, jr_05b_795f

    nop
    nop
    nop
    nop
    jr nz, jr_05b_7945

jr_05b_7945:
    adc b
    nop
    and b
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
    pop hl
    nop
    ldh a, [rP1]
    rst $00
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    ld a, e

jr_05b_795f:
    nop
    rst $38
    nop
    rrca
    ldh a, [rNR13]
    db $ec
    inc e
    di
    rrca
    db $f4
    rlca
    ld a, [$f20f]
    ccf
    ret nz

    nop
    nop
    jr nc, jr_05b_7974

jr_05b_7974:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    adc b
    nop
    adc h
    nop
    add b
    nop
    add d
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
    add b
    nop
    ret nz

    nop
    add d
    nop
    ld bc, $3700
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld sp, hl
    nop
    ld a, e
    nop
    ld a, [de]
    nop
    jr z, jr_05b_79bc

jr_05b_79bc:
    nop
    nop
    nop
    nop
    db $dd
    xor d
    cp h
    rst $18
    ld a, [c]
    sbc a
    rst $28
    cp $eb
    or a
    rst $30
    cp $f7
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld c, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    and d
    nop
    rst $38
    rst $08
    rst $38
    ret nz

    ld c, a
    nop
    ld hl, sp-$01
    rst $38
    add b
    cp $01
    ld e, [hl]
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

jr_05b_79f9:
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld d, d
    ret nc

    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    db $fc
    dec bc
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    jr nz, jr_05b_79f9

    add b
    ld a, a
    call nc, Call_000_002b
    rst $38
    ldh [$1f], a
    rst $38
    nop
    sbc [hl]
    ld h, e
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    add [hl]
    ld hl, sp+$07
    ld c, [hl]
    or c
    inc e
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
    jr nz, jr_05b_7a4e

jr_05b_7a4e:
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld h, h
    nop
    ld e, $00
    rra
    nop
    add l
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_05b_7a7e

jr_05b_7a7e:
    jr c, jr_05b_7a80

jr_05b_7a80:
    add b
    nop
    inc b

jr_05b_7a83:
    nop
    ld d, b
    nop
    ld d, b

jr_05b_7a87:
    nop
    jr jr_05b_7a8a

jr_05b_7a8a:
    dec h
    nop
    sbc $00
    rst $08
    nop
    xor a
    nop
    ld b, c
    nop
    ld l, d
    nop
    ld b, h
    nop
    and c
    nop
    ld [hl], d
    nop
    ld [$0800], sp
    nop
    ld a, b
    rst $18
    jr nc, jr_05b_7a83

    db $10
    rst $28
    jr nz, jr_05b_7a87

    ldh a, [$3f]
    ei
    ld [hl], h
    rst $30
    cp d
    db $fc
    rst $18
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    add sp, -$01
    db $e4
    rst $38
    add b
    rst $38
    cp a
    db $e4
    ld h, a
    ld bc, $e700
    and $80
    ldh [$e7], a
    nop
    rst $20
    and $00
    nop
    rst $20
    add c
    nop
    ld bc, $0000
    ld bc, $0100
    nop
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    rst $38
    rst $38
    rst $30
    rst $38
    ld d, b
    rst $28
    inc [hl]
    db $eb
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
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
    db $fc
    nop
    ret c

    nop
    jr jr_05b_7b32

jr_05b_7b32:
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    nop
    or b
    nop
    nop
    nop
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    inc c
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    jr nz, jr_05b_7b64

jr_05b_7b64:
    inc c
    nop
    rrca
    nop
    adc a
    nop
    sbc a
    nop
    inc b
    nop
    nop
    nop
    ld a, [hl+]
    nop
    adc a
    nop
    db $db
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    pop af
    nop
    ld c, $00
    and $00
    ld [hl], b
    nop
    ld e, $00
    inc [hl]
    nop
    ldh [rP1], a
    rst $20
    nop
    ld h, e
    rst $38
    inc bc
    rst $38
    rlca

jr_05b_7b95:
    rst $38
    ld d, $ff
    ld d, d
    cp $b4
    cp $5c
    db $fc
    db $10
    db $fc
    ld bc, $04fe
    ei
    ld l, b
    sbc a
    add sp, $17
    jp nz, Jump_000_033d

    db $fc
    jr jr_05b_7b95

    inc de
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], a
    adc c
    nop
    nop
    ld a, a
    add hl, de
    ld hl, $81ff
    nop
    inc l
    rst $38
    rst $38
    db $fc
    db $fd
    inc bc
    nop
    rst $38
    ret nc

    nop
    add b
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
    add b
    nop
    add b
    nop
    add b
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
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, [bc]
    nop
    ld bc, $0500
    nop
    ld bc, $0400
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

Call_05b_7c23:
    nop
    nop
    nop
    ld d, b
    nop
    dec b
    nop
    ld [c], a
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    jr z, jr_05b_7c34

jr_05b_7c34:
    rlca
    nop
    inc e
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    rst $10
    rst $38
    cp [hl]
    rst $38
    ld h, [hl]
    cp $c6
    cp $d0
    cp $00
    db $fc
    ret nz

    db $fc
    add sp, -$08
    db $10
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [rSB]
    pop hl
    nop
    pop hl
    ret nz

    pop bc
    nop
    jp $c380


    add b
    add e
    rlca
    add a
    rlca
    rlca
    dec b
    rlca
    inc c
    rrca
    inc b
    rrca
    ld [bc], a
    rrca
    ld de, $0c1f
    rra
    nop
    rst $38
    ld c, $f5
    rrca
    db $fc
    ld e, $e9
    inc a
    jp $ff00


    nop
    rst $38
    jp $8fbf


    ld [hl], e
    ld e, a
    xor a
    ccf
    cp $7f
    cp $ff
    cp $c0
    ret nz

    nop
    nop
    cp $fe
    db $fc
    nop
    ld a, [c]
    inc c
    ld [bc], a
    db $fc
    db $fc
    nop
    add b
    db $fc
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
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    dec b
    nop
    inc bc
    nop
    ld h, $00
    ld a, [de]
    nop
    dec d
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
    add [hl]
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
    ld a, [$df05]
    nop
    ld a, a
    nop
    ld e, $ff
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra

jr_05b_7cf9:
    rst $38
    rra
    rst $38
    dec b
    rst $38
    jr nz, jr_05b_7cf9

    nop
    pop af
    nop
    di
    nop
    db $e3
    nop
    and $00
    add $80
    adc $04
    adc h
    inc e
    sbc h
    db $10
    jr jr_05b_7d13

jr_05b_7d13:
    ld hl, sp-$80
    ld sp, hl
    pop bc
    pop af
    nop
    pop af
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    rst $00
    ld [bc], a
    rst $00
    ld b, $87
    add [hl]
    adc a
    rrca
    adc a
    ld c, $0f
    ld e, $1f
    inc e
    rra
    rlca
    rra
    rra
    ccf
    cpl
    ccf
    cpl
    ccf
    rrca
    ld a, a
    cpl
    ld a, a
    inc bc
    ld a, a
    ld b, e
    rst $38
    ccf
    nop
    rra
    nop
    rst $00
    nop
    rst $28
    nop
    ld l, e
    nop
    ld bc, $0100
    nop
    add hl, bc
    nop
    add a
    nop
    rst $20
    nop
    ld a, $00
    ccf
    nop
    ccf
    nop
    di
    nop
    or $00
    db $eb
    nop
    rrca
    rst $38
    rra
    rst $38
    ccf
    sbc $3c
    rst $00
    cpl
    ld sp, hl
    ccf
    rst $38
    rst $38
    db $fd
    ldh a, [rIE]
    ld a, [c]
    rst $38
    rst $30
    rst $28
    adc a
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    rst $30
    sbc [hl]
    adc a
    nop
    rst $20
    rst $38
    ld b, a
    rst $38
    rst $38
    nop
    ldh a, [rIE]
    rst $38
    nop
    ld bc, $0500
    nop
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld a, [de]
    nop
    sub a
    nop
    dec b
    nop
    ld b, $00
    dec bc
    nop
    sbc d
    nop
    scf
    nop
    dec l
    nop
    rla
    nop
    dec hl
    nop
    dec c
    nop
    ld [hl], l
    nop
    xor e
    nop
    ld e, d
    nop
    ld l, a
    nop
    ld [hl], l
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
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
    rst $38
    rst $38
    rst $38
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
    ret nc

    rst $38
    ld sp, hl
    rst $38
    cp $fe
    db $fc
    cp $fc
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ei
    ei
    pop hl
    di
    ld a, [c]
    di
    db $e3
    rst $30
    and e
    rst $20
    rst $20
    rst $20
    rst $00
    rst $08
    rst $08
    rst $08
    adc a
    rst $08
    adc a
    sbc a
    rra
    sbc a
    dec c
    sbc a
    add hl, bc
    ccf
    nop
    ccf
    db $10
    ccf
    db $10
    ld a, a
    nop
    ld a, a
    ld b, h
    ld a, a
    ld c, e
    rst $38
    add hl, bc
    nop
    ld [bc], a
    nop
    add b
    nop
    and b
    nop
    ld h, b
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld h, b
    nop
    ret nz

    nop
    ld a, h
    nop
    db $ed
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    push de
    nop
    cp $00
    cp [hl]
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
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    scf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, c
    nop
    ld a, h
    nop
    ldh [rP1], a
    cp [hl]
    nop
    cp a
    nop
    ld a, e
    nop
    ld [hl], l
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    db $ed
    ei
    rst $28
    push de
    rra
    ei
    rst $38
    rra
    rrca
    cp $f0
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$19
    ret z

    rst $30
    ld [c], a
    db $fd
    ld a, [$fdf5]
    rst $38
    cp $fc
    rlca
    inc bc
    and c
    ld e, a
    ldh a, [rNR41]
    ld a, [$b007]
    rst $38
    rst $38
    add b
    db $fd
    ccf
    add h
    rst $38
    rst $38
    nop
    ld e, e
    nop
    xor a
    nop
    nop
    rst $38
    nop
    ld e, a
    nop
    ld [hl], a
    nop
    ld l, a
    nop
    cp a
    nop
    rst $38
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

jr_05b_7ea8:
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_05b_7ea8

    ld b, b
    rst $38
    nop
    adc a
    nop
    nop
    nop
    rst $28
    nop
    rst $38
    nop
    cp $00
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_05b_7eff:
    nop
    ld l, $00
    add b
    nop
    ld bc, $0000
    nop
    sub $00
    jr c, jr_05b_7f0c

jr_05b_7f0c:
    inc bc
    nop
    ld [$ef00], sp
    nop
    jr c, jr_05b_7f14

jr_05b_7f14:
    jr nz, jr_05b_7f16

jr_05b_7f16:
    ld h, b
    nop
    add b
    nop
    ldh [rP1], a
    sbc a
    nop
    dec hl
    nop
    ld c, $00
    sub h
    nop
    ld [hl], b
    nop
    rst $30
    nop
    rst $30
    nop
    di
    nop
    rst $18
    nop
    ld c, a
    nop
    halt
    push hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec a
    nop
    or [hl]
    nop
    ld a, [$a800]
    nop
    ldh a, [rP1]
    rst $30
    nop
    rst $38
    nop
    ld a, e
    nop
    cp a
    nop
    rla
    nop
    rst $00
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
    db $fc
    ld e, e
    ldh [rIE], a
    ld hl, sp-$29
    ld [hl], b
    adc a
    and c
    ld a, [hl]
    and b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    adc c
    rst $30
    adc a
    pop af
    call $8bb3
    db $f4
    nop
    nop
    db $f4
    inc bc
    or l
    ld a, [c]
    nop
    nop
    rst $20
    ld b, h
    rst $20
    jr nz, jr_05b_7f88

    inc bc
    rst $20
    and d

jr_05b_7f88:
    rst $20
    ld b, d
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
    ld b, a
    nop
    nop
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or a
    nop
    rst $18
    nop
    ld b, d
    nop
    ld d, $00
    cp $00
    rst $28
    nop
    sbc [hl]
    nop
    call z, $1100
    nop
    inc c
    nop
    cp h
    nop
    ret nc

    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ldh a, [rP1]
    ld h, b
    nop
    ld c, c
    nop
    cp a
    nop
    rst $28
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
    db $f4
    nop
    pop hl
    nop
    push hl
    nop
    nop
    nop
