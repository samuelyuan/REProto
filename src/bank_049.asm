SECTION "ROM Bank $049", ROMX[$4000], BANK[$49]

    inc h
    db $76
    ld [hl], a
    nop
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    dec [hl]
    adc d
    nop
    nop
    nop
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    nop
    nop
    nop
    nop
    nop
    sub c
    nop
    nop
    nop
    nop
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ld bc, $0000
    nop
    sub a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    sbc d
    sbc e
    sbc h
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc b
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    dec b
    dec b
    dec b
    nop
    nop
    nop
    inc b
    inc h
    inc h
    inc h
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    nop
    nop
    nop
    inc b
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
    inc bc
    dec b
    nop
    nop
    nop
    inc b
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
    inc bc
    dec b
    nop
    inc b
    inc b
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
    inc bc
    inc bc
    ld b, $04
    inc b
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
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc hl
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
    inc bc
    inc bc
    inc bc
    inc hl
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld b, $04
    inc b
    inc b
    inc b
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
    dec b
    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc bc
    inc bc
    inc bc
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
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    jr nz, jr_049_4182

jr_049_4182:
    nop
    nop
    inc b
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    call nz, $86fb
    ld sp, hl
    ld b, d
    db $fd
    ld [$6af5], a
    push af
    ld l, [hl]
    pop af
    ld c, [hl]
    pop af
    inc c
    di
    inc c
    di
    inc c
    ld [hl], e
    ld c, $71
    ld b, $79
    inc b
    dec sp
    ld [$1c3f], sp
    ccf
    inc c
    rra
    rrca
    ld c, $06
    rrca
    nop
    rlca
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
    ld bc, $0101
    ld bc, $caff
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ret


    ei
    ret nz

    ldh a, [$a0]
    ldh a, [rSVBK]
    rst $38
    ldh a, [rIE]
    cp a
    rst $38
    daa
    db $fc
    rrca
    ldh a, [$8f]
    ld hl, sp-$11
    ldh a, [rIF]
    ldh [$9f], a
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

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
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
    cp $01
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
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    ld bc, $39bc
    cp h
    ld sp, $113a
    jr nc, jr_049_42cd

    ld h, b
    inc bc
    ld l, b
    rlca
    nop
    rrca
    ldh [$1f], a
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
    rst $38
    nop
    rst $38
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

jr_049_42cd:
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
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
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    cp $3f
    cp $3f
    cp $3f
    cp $1f
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
    rlca
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
    rst $38
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
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    add e
    inc a
    jp $e31c


    inc b
    ei
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
    ld a, a
    ld a, a
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
    cp $ff
    cp $ff
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fa
    db $fd
    ld a, [$fbfd]
    db $fc
    push af
    ld a, [$fbf4]
    ldh a, [rIE]
    db $ed
    ld a, [c]
    db $ed
    ld a, [c]
    add sp, -$09
    ret nc

    rst $28
    ret nc

    rst $28
    sbc $e1
    sbc h
    db $e3
    add b
    rst $38
    and b
    rst $18
    and b
    rst $18
    nop
    rst $38
    ld a, b
    add a
    ld c, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
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
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    rst $38

jr_049_4415:
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b

jr_049_441f:
    rst $38
    add d
    db $fd
    add [hl]
    ld sp, hl
    add b
    rst $38
    inc b
    ei
    ld b, $f9
    ld b, $f9
    and l
    ld e, d
    adc [hl]
    ld [hl], c
    add sp, $17
    rrca
    ldh a, [$0c]
    di
    dec c
    ld a, [c]
    ld e, a
    and b
    inc e
    db $e3
    db $10
    rst $28
    sub b
    ld l, a
    dec de
    db $e4
    rra
    ldh [$3d], a
    jp nz, $cc33

    inc sp
    call z, $906f
    jr c, jr_049_4415

    jr nc, jr_049_441f

    ld b, b
    cp a
    ld e, b
    and a
    ld [hl], a
    adc b
    dec e
    ld [c], a
    db $76
    adc c
    ret nz

    ccf
    pop af
    ld c, $fb
    inc b
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
    nop
    rst $38
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    add b

jr_049_4477:
    ld a, a
    nop
    rst $38
    nop

jr_049_447b:
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
    nop
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

    jr nz, @-$1f

    jr nz, jr_049_4477

    and b
    ld e, a
    jr nz, jr_049_447b

    and d
    ld e, l
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ret nz

    ccf
    add d
    ld a, l
    jp $c13c


    ld a, $c2
    dec a
    adc a
    ld [hl], b
    pop bc
    ld a, $c2
    dec a
    jp $c73c


    jr c, @+$03

    cp $c1
    ld a, $c1
    ld a, $c5
    ld a, [hl-]
    ld c, a
    or b
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    pop bc
    ld a, $c4
    dec sp
    ld b, a
    cp b
    ld b, a
    cp b
    adc c
    db $76
    ld b, b
    cp a
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
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
    rrca
    rrca
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
    ld [$00f7], sp
    rst $38
    add a
    ld a, b
    rrca
    ldh a, [$5f]
    and b
    ld [hl], a
    adc b
    ld c, a
    or b
    ld b, a
    cp b
    ld e, a
    and b
    ld e, $e1
    db $f4
    dec bc
    db $fc
    inc bc
    or $09
    push af
    ld a, [bc]
    di
    inc c
    ld b, b
    cp a
    nop
    rst $38
    ld c, c
    or [hl]
    add h
    ld a, e
    add l
    ld a, d
    ldh [$1f], a
    ld b, b
    cp a
    pop de
    ld l, $50
    xor a
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
    rra
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, h
    inc bc
    ld a, [hl]
    ld bc, $0778
    ld a, a
    rlca
    ld h, a
    rra
    ld l, h
    inc de
    dec l
    ld d, d
    cpl
    ld d, b
    dec c
    ld [hl], d
    dec e
    ld [hl], d
    inc e
    ld [hl], e
    ld [hl], l
    ld a, d
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    jr nc, jr_049_462f

    jr nc, @+$81

    ld a, d
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
    ld a, a
    ld a, a
    ld a, a
    ld [hl], e
    ld a, a
    ld [hl], b
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
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
    ld a, a
    ld a, a
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    xor [hl]
    ld d, c
    or $09
    ld a, [c]
    dec c
    jp hl


    ld d, $a5
    ld e, d
    ld a, [hl-]
    push bc
    ld a, [hl]
    add c
    ld a, a
    add b
    cp l
    ld b, d
    ld d, h
    xor e
    inc l
    db $d3
    ld [c], a
    dec e
    ld a, [hl-]
    push bc
    ld [bc], a
    db $fd
    sub b
    ld l, a
    sbc a
    ld h, b
    call Call_000_0e32
    pop af
    ld [$f7f7], sp

jr_049_462f:
    ld [$00ff], sp
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
    ld bc, $0000
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    daa
    rst $18
    db $e4
    rra
    ldh [$1f], a
    ld l, b
    sbc a
    xor h
    ld e, a
    inc l
    rst $18
    inc a
    rst $18
    ld a, $df
    ccf
    rst $18
    ccf
    rst $18
    ld e, a
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

jr_049_4675:
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
    nop

jr_049_4681:
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
    nop
    rst $38
    ld b, $f9
    rrca
    ldh a, [rSB]
    cp $0a
    push af
    ld a, [hl+]
    push de
    jr jr_049_4681

    ld a, [hl]
    add c
    rst $28
    db $10
    inc l
    db $d3
    nop
    rst $38
    ldh [$1f], a
    jr nc, jr_049_4675

    ld a, b
    add a
    reti


    ld h, $fc
    inc bc
    call nc, Call_000_242b
    db $db
    push bc
    ld a, [hl-]
    add a
    ld a, b
    db $10
    rst $28
    dec hl
    call nc, $a05f
    xor l
    ld d, d
    xor a
    ld d, b
    push bc
    ld a, [hl-]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld e, [hl]
    cp [hl]
    cp $3e
    cp $3e
    cp $3e
    cp [hl]
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    ld a, $fe
    ld a, $fe
    ld a, $fe
    ld a, $fe
    ld a, $fe
    ld a, $fe
    ld a, $fe
    ld a, $fe
    ld a, $fe
    cp $fe
    ld a, [hl]
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    xor l
    jp nc, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    sbc a
    and b
    ld e, a
    cp b
    ld b, a
    cp h

jr_049_4735:
    ld b, e
    ld d, h
    xor e
    ld l, h
    sub e
    xor $11
    ld l, l
    sub d
    cp l
    ld b, d
    ld d, [hl]
    xor c
    ld a, [de]
    push hl
    ld b, d
    cp l
    ld h, c
    sbc [hl]
    or b
    ld c, a
    dec b
    ld a, [$6a95]
    call nz, Call_000_243b
    db $db
    ret z

    scf
    jr nz, jr_049_4735

    adc h
    ld [hl], e
    ld c, e
    or h
    jp hl


    ld d, $f8
    rlca
    sub b
    ld l, a
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc h
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    db $fd
    inc bc
    db $fc
    rlca
    ld hl, sp+$06
    ld sp, hl
    rrca
    ldh a, [$0d]
    ld a, [c]
    dec bc
    db $f4
    ld a, a
    add b
    ld h, a
    sbc b
    ld h, l
    sbc d
    ld b, $f9
    ld b, e
    cp h
    add b
    ld a, a
    call nz, Call_049_503b
    xor a
    jp z, Jump_000_1e35

    pop hl
    ld d, [hl]
    xor c
    ret nz

    ccf
    sub d
    ld l, l
    ret nc

    cpl
    nop
    rst $38
    add hl, de
    and $8a
    ld [hl], l
    ld de, $23ee
    call c, $d827
    ld d, $e9
    dec b
    ld a, [$ff00]
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
    rst $38
    rst $38
    rst $38
    rst $38

Jump_049_4800:
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, h
    cp e
    ld b, l
    cp d
    ld b, b
    cp a
    ld [bc], a
    db $fd
    inc b
    ei
    nop
    rst $38
    ld bc, $10fe
    rst $28
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    adc c
    db $76
    di
    inc c
    ei
    inc b
    rst $30
    ld [$02fd], sp
    ldh a, [rIF]
    ld [hl], a
    adc b
    ld c, a
    or b
    ccf
    ret nz

    ld a, [bc]
    push af
    adc d
    ld [hl], l
    ld b, h
    cp e
    pop af
    ld c, $8d
    ld [hl], d
    and [hl]
    ld e, c
    db $dd
    ld [hl+], a
    ld c, [hl]
    or c
    inc b
    ei
    inc b
    ei
    sub c
    ld l, [hl]

jr_049_4842:
    ld d, b
    xor a
    ld d, b
    xor a
    nop
    rst $38
    ldh a, [rIF]
    ld b, c
    cp [hl]
    inc d
    db $eb
    ld [de], a
    db $ed
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    db $fc
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]

jr_049_4883:
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rP1]
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
    ld a, h
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $18
    rlca
    ei
    ld [hl], l
    adc e
    sbc [hl]
    ld h, c
    add [hl]
    ld a, c
    add hl, sp

jr_049_48af:
    add $28
    rst $10
    sbc a
    ld h, b
    add hl, hl
    sub $49
    or [hl]
    inc de
    db $ec
    cp $01
    rst $08
    jr nc, jr_049_4842

    ld a, h
    push bc
    ld a, [hl-]
    rst $20
    jr jr_049_4883

    ld b, c
    ei
    inc b
    push af
    ld a, [bc]
    ld hl, sp+$07
    ldh a, [rIF]
    jr nz, jr_049_48af

    ret z

    scf
    add h
    ld a, e
    pop hl
    ld e, $c5
    ld a, [hl-]
    and c
    ld e, [hl]
    add h
    ld a, e
    add b
    ld a, a
    ld [de], a
    db $ed
    add [hl]
    ld a, c
    ld b, c
    cp [hl]
    db $e4
    dec de
    sub b
    ld l, a
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
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    nop

Jump_049_48ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    add b
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
    add b
    add b
    ldh [$e0], a
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
    ld a, a
    rra
    rst $38
    inc hl
    rst $18
    ld hl, sp+$07
    ld e, $e1
    ld c, b
    or a
    ld [hl], b
    adc a
    xor b
    ld d, a
    add [hl]
    ld a, c
    pop hl
    ld e, $fb
    inc b
    db $fc
    inc bc
    jp c, $9b25

    ld h, h
    pop hl
    ld e, $bb
    ld b, h
    ld de, $18ee
    rst $20
    rlca
    ld hl, sp-$6d
    ld l, h
    push de
    ld a, [hl+]
    ld h, l
    sbc d
    xor l
    ld d, d
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    sbc b
    ld h, a
    and b
    ld e, a
    inc c
    di
    ld e, l
    and d
    db $10
    rst $28
    add hl, de
    and $04
    ei
    inc bc
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    rst $38
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
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    add b
    ldh [$e0], a
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
    rra
    rst $38
    ld c, a
    cp a
    ld h, c
    sbc a
    add sp, $17
    ld b, $f9
    rrca
    ldh a, [$c2]
    dec a
    cp h
    ld b, e
    sub b
    ld l, a
    jp nz, Jump_000_203d

    rst $18
    add b
    ld a, a
    pop hl
    ld e, $b0
    ld c, a
    call nc, $d32b
    inc l
    and b
    ld e, a
    or b
    ld c, a
    ld bc, $80fe
    ld a, a
    rlca
    ld hl, sp+$02
    db $fd
    and c
    ld e, [hl]
    ld b, e
    cp h
    ld bc, $80fe
    ld a, a
    ld e, d
    and l
    inc c
    di
    sbc h
    ld h, e
    ld d, h
    xor e
    ret c

    daa
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
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38

jr_049_4a51:
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
    rst $08
    add e
    ld a, a
    inc bc
    db $fc
    ret nz

    ccf
    ld a, $c1
    inc c
    di
    db $e4
    dec de
    nop
    rst $38
    xor b
    ld d, a
    inc bc
    db $fc
    ld h, c
    sbc [hl]
    jr nz, jr_049_4a51

    nop
    rst $38
    add b
    ld a, a
    ld a, [bc]
    push af
    rlca
    ld hl, sp-$73
    ld [hl], d
    inc [hl]
    bit 7, c
    add [hl]
    ld l, h
    sub e
    ld l, c
    sub [hl]
    nop
    rst $38
    ld [$44f7], sp
    cp e
    ld [$00f7], sp
    rst $38
    ld h, h
    sbc e
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
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
    add b
    add b
    ldh [$e0], a
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

jr_049_4acf:
    rst $38
    ccf

jr_049_4ad1:
    rst $38
    rrca
    rst $38
    adc a
    ld [hl], e
    and b
    ld e, a
    ret nc

    cpl
    ld [bc], a
    db $fd
    nop
    rst $38
    ret nz

    ccf
    ld bc, $10fe
    rst $28
    ld d, $e9
    ld hl, $00de
    rst $38
    adc b
    ld [hl], a
    ld e, d
    and l
    jr nz, jr_049_4acf

    jr nz, jr_049_4ad1

    nop
    rst $38
    sub b
    ld l, a
    adc b
    ld [hl], a
    jr z, jr_049_4ad1

    ld [hl], b
    adc a
    ld [hl], $c9
    inc sp
    call z, Call_000_00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
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
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    db $fc
    db $fc
    rst $38

jr_049_4b2b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_049_4b33:
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $28
    inc b
    ei
    ld d, b
    xor a
    ld d, h
    xor e
    ld e, c
    and [hl]
    ld [$44f7], sp
    cp e
    add b
    ld a, a
    jr nz, jr_049_4b2b

    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    jr nz, jr_049_4b33

    ld bc, $80fe
    ld a, a
    or [hl]
    ld c, c
    ld [bc], a
    db $fd
    ld bc, $19fe
    and $00
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
    jr nz, jr_049_4b8a

    ld [$0808], sp
    ld hl, $2322
    inc h
    dec h

jr_049_4b8a:
    ld h, $27
    jr z, jr_049_4bb7

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $08
    ld [$0808], sp
    ld [$2f08], sp
    jr nc, jr_049_4bcd

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_049_4bdd

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
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_049_4bb7:
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
    ld [$0808], sp
    ld [$0808], sp
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_049_4bcd:
    ld e, l
    ld e, [hl]
    ld e, a
    ld d, [hl]
    ld h, b
    ld h, c
    ld h, d
    ld [$0808], sp
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_049_4bdd:
    ld l, c
    ld l, d
    ld l, e
    ld d, [hl]
    ld l, h
    ld l, l
    dec bc
    ld l, [hl]
    ld l, a
    dec bc
    dec bc
    dec bc
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld d, [hl]
    ld d, [hl]
    db $76
    ld [hl], a
    dec bc
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
    ld d, [hl]
    ld d, [hl]
    add e
    add h
    dec bc
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
    ld d, h
    and e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    sub h
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c354

    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, Jump_000_0b0b

    dec bc
    dec bc
    dec bc
    dec bc
    set 1, h
    dec bc
    dec bc
    call $cfce
    ret nc

    ld d, h
    pop de
    dec bc
    dec bc
    dec bc
    jp nc, $d4d3

    push de
    sub $0b
    dec bc
    rst $10
    ret c

    reti


    jp c, $dcdb

    dec bc
    dec bc
    dec bc
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    dec bc
    db $e3
    db $e4
    push hl
    and $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0001
    jr nz, jr_049_4d75

jr_049_4d75:
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
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0070
    rst $38
    nop
    rst $38
    inc [hl]
    rst $38
    inc a
    ld a, $38
    inc a
    nop
    rlca
    nop
    rlca
    nop
    dec b
    ld [bc], a
    inc b
    ld [bc], a
    dec b
    ld [bc], a
    ld b, $03
    ld b, $01
    rlca
    ld [bc], a
    rlca
    nop
    rlca
    nop
    ld b, $03
    ld [bc], a
    dec b
    inc bc
    inc c
    inc bc
    inc c
    ld bc, $0507
    inc bc
    rlca
    ld bc, $0007
    rlca
    nop
    rlca
    nop
    dec b
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
    inc bc
    ld bc, $0003
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
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    nop
    nop
    nop
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
    inc bc
    rst $38
    ld bc, $01ff
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, $ff
    nop
    rst $38
    ld d, b
    cp $f7
    db $fd
    ld a, [$00c0]
    ld bc, $0800
    rlca
    ret z

    scf
    add e
    ld a, h
    ret nz

    inc a
    ld sp, hl
    db $10
    pop hl
    nop
    rst $20
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
    inc bc
    inc bc
    inc hl
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, a
    rst $38
    dec de
    ccf
    rrca
    ccf
    rrca
    cp $0e
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [hl+], a
    cp $02
    ld a, [hl]
    jp nz, $927e

    cp $32
    cp $3a
    cp $2a
    cp $0a
    cp $8a
    ld a, [hl]
    jp z, $ca3e

    ld e, [hl]
    and d
    ld a, [hl]
    sub d
    cp $2a
    rst $18
    ld hl, $a9df
    rst $38
    add hl, bc
    ld a, a
    adc c
    rst $18
    add hl, hl
    cp a
    ld e, c
    rst $18
    dec [hl]
    rra
    dec h
    sbc a
    dec [hl]
    ccf
    dec b
    rst $38
    dec b
    cp a
    ld b, l
    xor a
    ld a, l
    rst $08
    dec a
    xor a
    dec a
    ld l, a
    dec e
    rst $38
    dec e
    rst $38
    dec b
    ld a, a
    dec b
    rst $18
    dec b
    sbc a
    dec d
    ccf
    dec b
    ccf
    dec b
    rst $38
    ld [bc], a
    add a
    ld e, [hl]
    add a
    ld e, d
    ld c, a
    sub [hl]
    adc a
    ld e, $9f
    ld [bc], a
    rst $18
    ld [de], a
    rst $38
    ld b, d
    rst $30
    ld a, [hl]
    ld a, a
    sbc [hl]
    ld e, a
    or [hl]
    rst $28
    db $76
    ld e, a
    or $ff
    ld b, [hl]
    rst $08
    ld b, $c7
    ld c, [hl]
    cp e
    ld e, [hl]
    ei
    ld d, l
    or a
    dec e
    sub a
    add hl, bc
    or a
    add hl, de
    daa
    sbc l
    rst $38
    push de
    ld [hl], a
    db $dd
    ld d, a
    db $fd
    push de
    ld a, a
    sub l
    or a
    rst $10
    push de
    db $d3
    push de
    rst $10
    push de
    sub e
    sbc l
    sub a
    sbc l
    rst $00
    db $fd
    add b
    rst $38
    ld a, [$34b7]
    inc sp
    ld a, c
    ld a, [hl]
    rst $08
    rst $08
    call c, $8ddc
    call c, $c080
    add [hl]
    and $83
    ldh [$d0], a
    ldh [rNR32], a
    ld [hl], b
    inc h
    ld e, h

jr_049_4f98:
    cp [hl]
    ret nc

    ld l, b
    ld d, b
    dec de
    ld l, b
    call c, Call_049_75eb
    inc a
    ld c, a
    jr c, jr_049_4ff0

    ld [hl-], a
    ld b, e
    jr c, jr_049_4fea

    inc a
    call nz, Call_049_5578
    jr z, jr_049_5014

    jr c, jr_049_500e

    jr z, jr_049_4f98

    ld [bc], a
    rst $18
    pop hl
    rst $38
    xor $f3
    ld c, $f5
    ld a, [de]
    ld sp, hl
    nop
    ld hl, sp+$20
    and c
    ld b, b
    jp nz, Jump_049_6a00

    inc b
    add e
    ld a, h
    ld c, c
    or $fa
    dec b
    dec de
    dec b
    rlca
    ld bc, $0f9f
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
    ld a, [$f0ff]
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38

jr_049_4fea:
    add b
    rst $38
    ret nz

    rst $38
    ld hl, sp+$07

jr_049_4ff0:
    nop
    nop
    nop
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

jr_049_500e:
    add b
    add b
    add b
    add b
    add b
    add b

jr_049_5014:
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
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

Call_049_503b:
    ld b, b
    ld hl, sp-$40
    rst $38
    jr nz, @+$71

    sbc b
    ld [hl], a
    sbc b
    rst $18
    inc h
    rst $38
    ld bc, $017f
    or a
    ld c, b
    rst $38
    nop
    ld a, c
    ld b, $e0
    rra
    jr z, jr_049_506b

    ccf
    inc b
    add hl, bc
    nop
    dec c
    ld [de], a
    dec b
    ld b, $01
    nop
    add b
    ld bc, $07c8
    ld hl, $7106

jr_049_5065:
    nop
    ld l, b
    or b
    db $fc
    ld b, d
    ld d, e

jr_049_506b:
    ld h, $d4
    ld h, b
    inc e
    jr nc, jr_049_5065

    inc l
    rst $38
    ld h, d
    ld sp, hl
    ld h, $9b
    ccf
    cp e
    adc [hl]
    sbc h
    ld l, b
    rst $08
    nop
    adc b
    rlca
    add b
    ld b, $8c
    nop
    add b
    inc e
    call nz, $b000
    nop
    dec de
    db $e3
    ld a, a
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
    db $fd
    rst $38
    sbc $ff
    inc h
    rst $38
    ld a, b
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $00
    rst $38
    ld bc, $00fe
    cp $03
    rst $38
    ld bc, $7fff
    ld [bc], a
    rlca
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
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
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
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ret nz

    add b
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$10
    db $fc
    add h
    cp $60
    sbc a
    ldh [rIF], a
    rst $38
    jp $077c


    ld hl, sp-$11
    ldh a, [rNR43]
    rst $38
    ret nc

    ld l, a
    jp Jump_049_7ffc


    db $10
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    add b
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
    ld bc, $0300
    nop
    rra
    nop
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
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$03
    nop
    rst $30
    nop
    rst $30
    nop
    rst $10
    dec b
    ld a, [hl-]
    rlca

jr_049_514a:
    cp l
    inc bc
    ld [hl], a
    sbc b
    ld l, a
    sub b
    ld a, a
    jr z, jr_049_514a

    adc b
    rst $30
    sbc b
    or $88
    rst $18
    and b
    ld a, a
    ret nz

    ld a, [hl-]
    pop hl
    dec sp
    ret nz

    sub e
    ldh a, [$3e]
    ldh [$37], a
    ret z

    ld a, a
    ret nz

    ld a, l
    jp nz, $c2dc

    ld a, h
    add d
    ld a, [hl-]
    jp z, $806f

    rst $00
    add b
    push bc
    add e
    ld b, e
    add b
    jp c, $9ac0

    ret nz

    ld [c], a
    jp nz, $c0d2

    db $d3
    add b
    add e
    add b
    sub e
    add b
    ld [hl-], a
    nop
    ld [hl], d
    ld b, b
    ld d, d
    ld b, b
    ld d, c
    ld b, b
    ld b, c
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    ld b, b
    add hl, de
    ld de, $1122
    ld [hl], c
    ld b, c
    ld [hl], c
    ld h, b
    ld [hl], c
    ld b, c
    ld h, d
    ld b, b
    dec sp
    nop
    dec hl
    nop
    dec sp
    nop
    ld c, e
    ld b, b
    ld b, e
    ld b, b
    ld b, e
    ld b, c
    ld bc, $0300
    nop
    inc bc
    nop
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    ld b, e
    ld b, b
    ld b, e
    ld b, b
    ld b, a
    nop
    ld b, a
    nop
    ld b, a
    ld b, b
    inc bc
    nop
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    ld h, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    ld b, l
    ld b, b
    ld b, l
    ld b, b
    ld d, l
    ld b, b
    ld d, l
    ld b, b
    ld d, l
    nop
    call nc, $d400
    nop
    push de
    nop
    push de
    ld bc, $01d5
    pop de
    ld bc, $00d5
    push de
    nop
    pop bc
    nop
    pop de
    nop
    pop de
    ld bc, $01d5
    pop de
    ld bc, $01d1
    push de
    ld bc, $01c5
    push bc
    ld bc, $01d5
    push bc
    ld bc, $01d5
    push de
    ld bc, $01d5
    push de
    ld bc, $01d5
    ld d, l
    ld bc, $0155
    ld d, l
    ld bc, $0171
    ld a, l
    ld bc, $00ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld a, [c]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f2], a
    ldh [$f2], a
    ld h, b
    ld a, [c]
    rlca
    ldh [$0d], a
    ldh a, [$0d]
    db $fc
    dec c
    db $fc
    dec l
    sbc h
    inc c
    db $fc
    inc c
    db $fc
    dec l
    db $fc
    rrca
    pop af
    ld c, $e9
    rra
    pop af
    rrca
    di
    rrca
    jp hl


    ld e, $fd
    ld l, $ff
    ld l, h
    db $fc
    ld c, $fd
    rrca
    ldh a, [$1f]
    add $7d
    jp nc, $f22f

    cpl
    ld hl, sp+$0f
    ld sp, hl
    rrca
    ld hl, sp+$2e
    ld hl, sp+$0c
    ld hl, sp+$1c
    call c, $bc2c
    inc b
    cp h
    inc e
    db $fc
    inc c
    db $fc
    inc h
    sbc b
    inc h
    cp h
    inc h
    cp b
    inc b
    cp h
    inc b
    jr c, jr_049_528e

    jr jr_049_5290

    jr z, jr_049_52a2

jr_049_528e:
    cp h
    inc d

jr_049_5290:
    ld e, h
    inc b
    ld a, h
    inc b
    db $fc
    sub h
    call c, Call_049_7c24
    inc h
    ld e, h
    inc b
    ld e, h
    inc b
    ld e, h
    inc b
    ld e, h
    inc b

jr_049_52a2:
    inc d
    inc b
    ld e, h
    inc b
    ld e, h
    inc b
    ld [hl], h
    inc b
    ld [hl], h
    inc b
    ld d, h
    inc b
    call nc, Call_049_5c04
    inc b
    ld a, h
    inc b
    ld e, h
    inc d
    call c, $dc04
    inc b
    ld e, h
    inc b
    ld e, h
    inc b
    ld e, h
    inc b
    ld e, h
    nop
    db $fc
    inc b
    ld e, h
    inc b
    ld e, h
    inc b
    ld e, h
    inc b
    call c, Call_049_5c04
    inc b
    inc e
    nop
    inc e
    inc b
    call c, $fc04
    inc b
    db $fc
    ld b, h
    db $fc
    ld b, h
    db $fc
    inc b
    ld a, a
    inc d
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    ld b, h
    db $fc
    inc b
    db $fc
    ld d, h
    db $fc
    ld b, h
    db $fc
    ld d, h
    db $fc
    ld d, h
    db $fc
    ld d, h
    db $fc
    inc d
    rst $38
    ld d, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    ld d, a
    rst $38
    ld d, a
    rst $38
    ld d, a
    rst $38
    ld d, a
    rst $38
    ld d, a
    rst $38
    ld d, a
    rst $38
    ld d, a
    rst $38
    ld d, l
    rst $38
    ld d, h
    rst $38
    ld d, b
    rst $38
    ld b, b
    rst $38
    rlca
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
    di
    rst $28
    inc bc
    rst $28
    inc bc
    xor a
    inc bc
    xor a
    inc bc
    xor a
    inc bc
    xor a
    inc bc
    cp a
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
    rlca
    rst $38
    db $eb
    rra
    rst $38
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
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
    ld a, a
    nop
    rra
    nop
    rlca
    nop
    rrca
    ld [$1817], sp
    jr nz, @+$41

    ret nz

    rst $38
    nop
    rst $38
    nop
    db $e3
    inc l
    ret nz

    cpl
    ret nz

    cpl
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    ld e, $c1
    ld e, $c7
    ld c, $df
    nop
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
    push de
    rst $38
    adc h
    rst $38
    rst $20
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    add sp, -$01
    db $e3
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    ld c, $ff
    rlca
    rst $38
    ld b, e
    rst $38
    ld h, e
    rst $38
    ld bc, $00ff
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
    ld [bc], a
    rst $38
    and h
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
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
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0300
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
    ret nz

    nop
    add b
    ld c, $06
    jr z, jr_049_543b

    add hl, hl
    inc b
    add hl, hl
    inc b

jr_049_543b:
    add hl, hl
    inc h
    ld c, c
    inc h
    ld c, c
    ld hl, $214a
    ld c, d
    ld bc, $812a
    ld a, [hl+]
    add c
    ld a, [hl+]
    add b
    ld [bc], a
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld [hl], b
    add a
    nop
    rst $28
    nop
    rst $28
    nop
    xor $01
    ret nz

    cpl
    inc bc
    rst $30
    inc bc
    rst $30
    nop
    rst $30
    nop
    rst $30
    inc b
    rst $30
    ld b, d
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld hl, sp-$01
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

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
    add b
    rst $38
    jp nz, $e0ff

    rst $38
    and b
    rst $38
    sbc b
    rst $38
    add sp, -$01
    and $ff
    di
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec c
    rst $38
    rra
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
    ccf
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
    ld a, a

jr_049_54d9:
    nop
    ld a, a
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
    sub b
    adc a
    db $10
    adc a
    ld d, b
    rst $08
    db $10
    rst $08
    db $10
    adc a
    db $10
    adc a
    db $10
    adc a
    db $10
    sbc a
    jr nz, jr_049_5516

    jr nz, jr_049_5518

    jr nz, jr_049_553a

    ld b, b
    rra
    jr nz, jr_049_551e

    jr nz, jr_049_5520

    and b
    rra
    ld b, b
    sbc a
    ld b, b
    rst $18
    nop
    rst $08
    jr nz, jr_049_54d9

    ld hl, $2fc0
    nop
    rst $28
    ld bc, $07f7
    rst $30
    scf
    rst $30

jr_049_5516:
    rra
    rst $38

jr_049_5518:
    rrca
    rst $38
    ld c, c
    rst $38
    ld a, $ff

jr_049_551e:
    ld c, a
    rst $38

jr_049_5520:
    ld b, a
    rst $38
    nop
    rst $38
    ld [$82ff], sp
    rst $38
    ret nc

    rst $38
    db $10
    rst $38
    jr @+$01

    ld c, $ff
    inc bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_049_553a:
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nc, @+$01

    and b
    rst $38
    sbc l
    rst $38
    rst $38
    rst $38
    rst $38

jr_049_554b:
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
    rra
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
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$8c]
    rst $18
    cp b
    rst $38
    cp a
    rst $38
    daa
    rst $38
    add b
    di
    jr c, @+$01

Call_049_5578:
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    db $10
    rst $38
    jr nz, jr_049_554b

    nop
    rst $38
    nop
    rst $38
    ccf
    cp a
    inc [hl]
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    ld [$00ff], sp
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
    rst $08
    nop
    rst $00
    nop
    di
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
    ld a, [$ff00]
    ld l, h
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
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop bc
    rst $08
    rst $00
    rst $38
    db $fc
    rst $38
    ret nc

    db $fc
    ret nz

    db $d3
    adc $ff
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
    ld e, a
    rst $38
    rra
    rst $38
    db $e4
    rst $38
    ld a, [$fcff]
    rst $38
    dec e
    rst $38
    rrca
    rst $38
    rla
    rst $38
    ld sp, $00ff
    rst $38
    inc b
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    inc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld bc, $01ff
    rst $38
    rrca
    rst $38
    cp [hl]
    rst $38
    db $fd
    rst $38
    rst $20
    rst $38
    rst $18
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
    rra
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
    ld b, e
    db $fc
    rlca
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rrca
    cp a
    add b
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    ld e, $ff
    ld c, $ff
    ld c, $ff
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
    cp $fe
    rst $38
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    cp $02
    cp $00
    cp $00
    cp $00
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
    ld a, a
    nop
    cp a
    ld e, h
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld c, $ff
    ld e, $ff
    cp b
    rst $38
    add b
    rst $38
    rrca
    rst $38
    db $fc
    rst $38
    ret nz

    ld hl, sp+$00
    rrca
    ld bc, $f0ff
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    pop hl
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
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    pop af
    rst $38
    ld a, e
    rst $38
    inc e
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ld [hl], b
    rst $38
    jr @+$01

    inc c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    inc c
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    sbc a
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
    rst $00
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
    rra
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$17
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$29
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$07
    ld hl, sp+$47
    ld hl, sp+$07
    ret c

    rlca
    ret c

    rlca
    ret c

    rlca
    ld hl, sp+$07
    ret c

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ld hl, sp+$07
    ret c

    rlca
    ld hl, sp+$07
    ret c

    rlca
    ret c

    rlca
    ret c

    ld b, a
    ld hl, sp-$79
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp-$39
    ld hl, sp-$29
    ld hl, sp-$39
    ld hl, sp-$2d
    rst $38
    set 7, a
    adc c
    rst $38
    db $10
    rst $38
    ld [$00ff], sp
    rst $38
    inc bc
    rst $38
    cp h
    rst $38
    ldh [rIE], a
    add d
    rst $38
    ldh [rIE], a
    inc e
    rst $38
    ld b, h
    rst $38
    ld c, e
    rst $38
    and b
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
    ld a, a
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    inc e
    rst $38
    ld c, $ff
    and c
    rst $38
    jr nc, @+$01

    ld [$04ff], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld [hl], b
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
    ld h, b
    rst $38
    add b
    rst $38
    rra
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
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
    adc h
    rst $38
    sbc [hl]
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    dec de
    rst $38
    and h
    rst $38
    db $10
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
    add b
    rst $38
    ld hl, sp-$01
    ld a, $ff
    dec c
    rst $38
    nop
    rst $38
    call nz, $f9ff
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
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    xor h
    rst $38
    cp b
    rst $38
    db $fd
    rst $38
    ld e, $ff
    rrca
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    ld h, b
    rst $38
    jr @+$01

    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec e

Call_049_5887:
    rst $38
    or a
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    or c
    rst $38
    xor $ff
    ld a, d
    rst $38
    db $eb
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$3f
    ret nz

    ld l, a
    ldh a, [$fc]
    rst $38
    ld a, [$bfff]
    rst $38
    cp a
    rst $38
    ld l, $ff
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    jr z, @+$01

    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    cp b
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
    ld a, a
    rst $38
    rra
    rst $38
    ld b, $ff
    pop de
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    or [hl]
    rst $38
    ld c, h
    rst $38
    ld a, [hl-]
    rst $38
    ccf
    rst $38
    ld hl, $0bff
    rst $38
    ld a, [hl-]
    rst $38
    call nz, Call_000_18ff
    rst $38
    ld b, $ff
    ld d, b
    rst $38
    and b
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $08
    ldh a, [$f0]
    rst $38
    ld a, [$ffff]
    rst $38
    rra
    rst $38
    db $e3
    rst $38
    ld a, c
    rst $38
    ld c, $ff
    nop
    rst $38
    ld b, b
    rst $38
    ld h, b
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
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    add hl, bc
    rst $38
    ld bc, $80ff
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    di
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    jr c, @+$01

    inc c
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    ld bc, $c6ff
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    inc [hl]
    rst $38
    and b
    rst $38
    ld bc, $0fff
    rst $38
    ld a, e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    sbc a
    ldh [$f3], a
    db $fc
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    db $d3
    rst $38
    db $10
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    ret nz

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
    nop
    rst $38
    and b
    rst $38
    adc h
    rst $38
    or b
    rst $38
    ld l, h
    rst $38
    inc c
    rst $38
    add l
    rst $38
    ld h, b
    rst $38
    ld e, h
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
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    xor l
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    dec a
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld h, a
    ld hl, sp-$05
    cp $fe
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    inc hl
    rst $38
    ld a, h
    rst $38
    adc a
    rst $38
    ld bc, $04ff
    rst $38
    nop
    rst $38
    db $10
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
    ld h, b
    rst $38
    jr @+$01

    add h
    rst $38
    add b
    rst $38
    db $76
    rst $38
    sbc c
    rst $38
    rst $00
    rst $38
    ld a, c
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld e, l
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
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
    db $f4
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    adc a
    ldh a, [rIE]
    add b
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
    rst $38
    nop
    adc a
    ldh a, [rNR32]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $dd
    rst $38
    ret nc

    rst $38
    dec l
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, c
    rst $38
    ld [hl], b
    rst $38
    inc d
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
    or b
    rst $38
    inc e
    rst $38
    adc h
    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    add b
    rst $38
    add b
    rst $38
    jp nz, Jump_000_08ff

    rst $38
    dec d
    rst $38
    cp $ff
    ldh [rIE], a
    nop
    rst $38
    ld bc, $1ffe
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
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
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
    cp $01
    cp $01
    or $01
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
    rst $20
    nop
    pop hl
    ld b, $c1
    nop
    ld c, b
    ld hl, $2488
    adc $20
    ld c, a
    nop
    rst $38
    nop
    sbc $21
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [$c9]
    cp $f6
    rst $38
    ccf
    rst $38
    rst $10
    rst $38
    dec hl
    rst $38
    rla
    rst $38
    pop bc
    rst $38
    ld a, [$1fff]
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    dec e
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
    cp $ff
    ld hl, sp-$01
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cpl
    ret nc

    rrca
    ret nz

    rrca
    ldh a, [$9f]
    nop
    cp a
    nop
    rst $38
    nop
    rrca
    nop
    pop hl
    ld b, $1b
    inc b
    rrca
    add b
    sbc [hl]
    ld hl, $219e
    cp [hl]
    ld bc, $00fb
    ld a, h
    add b
    ld a, [c]
    inc c
    ld [c], a
    inc c
    db $e4
    nop
    ld [hl], a
    add b
    ld e, a
    and b
    db $db
    inc h
    ld a, [hl]
    add b
    ld l, $00
    ld l, a
    nop
    rst $20
    ld [$04fb], sp
    db $fc
    ld bc, $01fc
    db $fd
    nop
    db $ed
    db $10
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    ld hl, sp+$04

Call_049_5c04:
    db $fd
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
    rst $30
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    push hl
    rst $38
    jr z, @+$01

    inc b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
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
    cp a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0101], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a09
    dec bc
    inc c
    ld b, $0d
    ld c, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f01
    db $10
    ld de, $0612
    inc de
    inc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec d
    ld d, $17
    jr @+$08

    add hl, de
    ld a, [de]
    ld bc, $1c1b
    ld bc, $0101
    ld bc, $1d01
    ld e, $1f
    jr nz, jr_049_5cc0

    ld b, $22
    inc hl
    ld bc, $2401
    dec h
    ld h, $27
    jr z, jr_049_5cab

    add hl, hl

jr_049_5cab:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld b, $22
    ld [hl+], a
    ld l, $01
    cpl
    jr nc, jr_049_5ce8

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_049_5cf8

    ld a, [hl-]

jr_049_5cc0:
    ld [hl+], a
    ld [hl+], a
    dec sp
    ld bc, $3d3c
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [hl+], a
    ld [hl+], a
    ld c, b
    ld bc, $0101
    ld c, c
    ld c, d
    ld bc, $4b01
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld [hl+], a
    ld d, c
    ld bc, $0101
    ld bc, $5352

jr_049_5ce8:
    ld bc, $5401
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld bc, $0101
    ld bc, $015c

jr_049_5cf8:
    ld bc, $5d01
    ld e, [hl]
    ld e, a
    ld h, b

Call_049_5cfe:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
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
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $73
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $7b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $82
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
    ld b, $06
    ld b, $06
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
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
    ld bc, $0201
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
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
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
    ld bc, $0101
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0102
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld bc, $0101
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld bc, $0301
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
    ld [bc], a
    ld [bc], a
    ld bc, $0003
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
    ld [bc], a
    ld [bc], a
    inc bc
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
    ld [bc], a
    ld [bc], a
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
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld bc, $ffff
    rra
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    add sp, $1f
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld [c], a
    rst $38
    sbc h
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc e
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$80], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rst $38
    rlca
    rst $38
    nop
    rst $38
    sub b
    rst $38
    db $ec
    rra
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
    db $fc
    ccf
    ei
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $f4
    rst $38
    pop bc
    rst $38
    dec c
    rst $38
    inc l
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    inc bc
    rst $38
    jr @+$01

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
    rst $38
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
    dec bc
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $f4
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    rrca
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    and $ff
    sub l
    rst $38
    ld hl, sp-$01
    and b
    rst $38
    nop
    rst $38
    ld bc, $04ff
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld e, b
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $30
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
    db $d3
    cpl
    ccf
    rst $38
    sbc $ff
    ld a, [$aaff]
    rst $38
    pop de
    rst $38
    rrca
    rst $38
    cp $ff
    rrca
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
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    nop
    add e
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    di
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
    jp $d03c


    inc bc
    pop bc
    ld a, [bc]
    add sp, $00
    ld a, [$f400]
    inc bc
    db $f4
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_049_60a2:
    rst $38
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
    rst $20
    rra
    ccf
    rst $38
    rst $38
    rst $38

jr_049_60b4:
    rst $38
    rst $38
    inc hl
    rst $38
    sub b
    rst $38
    ld c, d
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, de
    rst $38
    ret z

    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ld b, b
    dec sp
    inc b
    add a
    jr nc, jr_049_60b4

    jr z, jr_049_60a2

    inc e
    rla
    add b
    ret


    ld b, $c5
    ld a, [bc]
    and b
    ld b, c
    ld hl, $98d2
    ld h, b
    ld [$f810], a
    nop
    jp hl


    ld [de], a
    ldh [rNR23], a
    jp nz, $f835

    rlca
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    nop
    or $00
    push af
    ld [bc], a
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
    rst $38
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
    db $e3
    rra
    ccf
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

jr_049_617a:
    ccf
    rst $38
    rra
    rst $38
    ld b, e
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld [$20ff], sp
    rst $38
    ld b, $ff
    inc l
    rst $38
    ld b, e
    rst $38
    add a
    rst $38
    jr c, @+$01

    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [$001f], sp
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
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
    nop
    rst $38
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
    rst $30
    ld [$0af5], sp
    db $ed
    nop
    db $ec
    ld [bc], a
    ld h, d
    add c
    cp h
    ld bc, $003d
    ld c, a
    sub b
    ld e, e
    add b
    rrca
    db $10
    jp z, Jump_000_0014

    rra
    ld b, d
    sbc l
    ld a, [de]
    push bc
    inc hl
    call c, Call_049_5887
    and a
    ld [$00e7], sp
    rst $10
    ld [$0cd3], sp
    rst $08
    jr jr_049_617a

    ld h, b
    jp $c724


    db $10
    sbc e
    ld h, h
    ld c, e
    or h
    pop hl
    ld d, $13
    jr c, jr_049_6226

    call c, Call_000_0cf1
    ld sp, hl
    ld b, $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $07
    db $fc
    dec c
    ld hl, sp+$19
    ld hl, sp+$1b

jr_049_6226:
    sbc b
    ld a, l
    ld e, b
    cp $fe
    rst $38
    rra
    rst $38
    dec e
    rst $38
    ld e, h
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
    rst $38
    rst $38
    rst $38
    dec sp
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    pop bc
    rst $38
    ld [$3cff], sp
    rst $38
    sbc $ff
    inc e
    rst $38
    ldh a, [rIE]
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    jr @+$01

    ldh [rIE], a
    add e
    rst $38
    dec de
    rst $38

jr_049_6264:
    ld a, l
    rst $38
    cp d
    rst $38
    db $ec
    rst $38
    ld [hl], b
    rst $38
    ld bc, $217f
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    ld bc, $0307
    rlca
    inc bc
    rlca

jr_049_627e:
    dec b
    ld c, $ff
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
    adc a
    ld [hl], b
    sub a
    ld l, b
    add a
    ld a, b
    rst $28
    db $10
    ld l, a
    db $10
    rst $20

jr_049_62a5:
    db $10
    rlca
    ldh a, [$e1]
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_049_627e

    jr nc, jr_049_6328

    ld [$28d7], sp
    ld b, a
    or b
    inc hl
    ret nz

    inc bc
    call c, Call_000_02dc
    pop hl
    ld e, $fb
    nop
    db $e3
    db $10
    db $e3
    jr jr_049_62a5

    rra
    ldh [rNR34], a
    add sp, $10
    ldh [rNR11], a
    pop hl
    ld e, $e1
    ld e, $a3
    ld c, h
    rst $08
    jr nc, jr_049_6264

    ld d, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    cp a
    ld b, b
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
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    sbc h
    inc b
    rst $20
    inc b
    rst $00
    inc b
    rrca
    dec e
    rst $38
    db $f4
    rst $38
    and $ff
    inc b
    rst $38
    inc b
    rst $08
    inc b
    rrca
    inc b
    rra
    jr @-$3f

    ldh [rIE], a
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    adc e
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr @+$01

    ld [hl], b
    rst $38

jr_049_6328:
    ret nz

    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    ld a, [hl]
    rst $38
    adc [hl]
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    ld l, b
    rst $38
    ret nz

    rst $38
    ld bc, $07ff
    rst $38
    dec c
    db $fd
    ld a, $fe
    ld sp, hl
    ld hl, sp-$1d
    ldh [$f7], a
    ldh a, [rNR31]
    ld a, [de]
    ld e, b
    ld e, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    ld a, h
    inc bc
    ld sp, hl
    ld b, $e3
    inc d
    db $e3
    inc d
    inc bc
    inc d
    add hl, de
    ld h, [hl]
    ld a, c
    add h
    ld a, c
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop hl
    nop
    ret nz

    nop
    nop
    rst $08
    nop
    add c
    nop
    adc [hl]
    nop
    adc a
    add b
    ret nz

    add b
    rst $08
    nop
    pop bc
    add b
    ldh [rP1], a
    ld hl, sp+$08
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$04ff], sp
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
    rst $38
    rrca
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    sbc d
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    ld b, e
    rst $38
    xor $fe
    db $fc
    db $fc
    ld a, b
    ld hl, sp-$09
    or $e7
    db $e4
    ld e, a
    ldh a, [$27]
    pop bc
    ld b, $83
    ld c, $03
    add hl, de
    rrca
    ld l, h
    rra
    xor [hl]
    ld a, a
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
    rst $38
    cp $ff
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_049_63f5:
    nop
    rst $38
    nop
    call c, Call_000_1000
    jp nz, Jump_000_1864

    rra
    nop
    rst $20
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
    nop
    rst $38
    nop
    db $fc
    nop
    inc bc
    inc bc
    inc bc
    jp $c707


    jr jr_049_6434

    rra
    rst $18
    rra
    rst $18
    rra
    rra
    rra
    rst $18
    rra
    rra
    rrca
    rrca
    ld c, $ef
    ld c, h
    rst $28
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_049_6434:
    nop
    rst $38
    sub b
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $18
    rst $38
    pop hl
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld e, $fe
    rst $38
    rst $38
    cp $fc
    adc h
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ldh a, [$90]
    ldh a, [$30]
    ld a, b
    jr nc, jr_049_63f5

    ld hl, sp+$10
    ldh a, [rNR10]
    pop af
    dec c
    di
    call $8ef3
    pop af
    ld e, $e1
    inc b
    ei
    db $fc
    rst $38
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    db $fc
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    add a
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $00ff
    ld bc, $fe00
    add b
    rst $38
    nop
    ld a, a
    ld [bc], a
    adc a
    ld b, b
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    sbc d
    rst $38
    ldh a, [rIE]
    cp $ff
    or [hl]
    cp $c4
    db $fc
    or a
    rst $38
    rst $28
    db $ec
    add a
    adc b
    dec e
    ld bc, $0434
    sub [hl]
    rrca
    dec bc
    rrca
    rrca
    inc c
    ld c, $08
    inc c
    ld a, [bc]
    ld c, $08
    ld a, $08
    ld a, c
    ld c, $2b
    ccf
    adc [hl]
    ld [hl], a
    ld c, a
    di

jr_049_64f6:
    ld l, e
    or d
    or e
    jr nc, jr_049_64f6

    or c
    ld a, [hl]
    pop bc
    ld c, [hl]
    pop bc
    nop
    rst $38
    ld [$cfff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [$fe], a
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00

jr_049_6574:
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
    ccf
    ret nz

    rlca
    ld hl, sp+$04
    rst $38
    dec b
    rlca
    ld bc, $00ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    ld b, $fe
    nop
    db $fc
    ld bc, $8bfc
    db $ec
    ld l, b
    ret nc

    jr nz, jr_049_6574

    ld h, b
    ret nz

    ld hl, sp+$00
    ld e, $00
    ret c

    nop
    ld [hl], b
    nop
    db $fd
    add b
    push af
    add b
    db $fc
    add b
    call z, Call_049_7400
    inc c
    ld e, b
    ld b, $19
    ld b, $00
    rrca
    jp nz, $f001

    nop
    ld hl, sp+$00
    nop
    add h
    jp c, $f2cc

    ld a, [hl]
    add e
    ld a, [hl]
    jp $42fc


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
    db $fc
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_049_6627:
    add b
    ccf
    ld hl, sp+$03
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    dec b
    cp $57
    pop af
    ld a, a
    pop af
    cp a
    and b
    ld h, a
    nop
    add e
    nop
    jp Jump_000_3340


    ld l, h
    ld [hl], h
    ld b, a
    ld a, a
    nop
    ld e, b
    jr nz, jr_049_6627

    ld a, b
    adc a
    or $cb
    pop af
    ret c

    ld [$00ff], sp
    daa
    nop
    inc hl
    nop
    ld [de], a
    nop
    jr jr_049_665a

jr_049_665a:
    ld [de], a
    inc c
    ld a, [c]
    rlca
    sub e
    ld [bc], a
    inc d
    inc bc
    ld e, $07
    dec bc
    ld c, $5a
    inc c
    rst $10
    add hl, bc
    jp nc, Jump_000_3307

    rlca
    inc e
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
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
    add b
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
    add b
    rst $38
    ldh [$cf], a
    nop
    ld c, b
    add a
    ldh a, [$1f]
    ldh [$1f], a
    ld h, l
    cp [hl]
    pop bc
    ld a, [hl]
    di
    inc e
    db $ec
    ld e, $3f

jr_049_66af:
    ld [$08ce], sp
    pop bc
    nop
    ld sp, $74c0
    ld [$003c], sp
    ld hl, sp+$04
    db $fc
    ld [bc], a
    and d
    ld d, b
    di
    nop
    db $e3
    add b
    and h
    ret nz

    inc c
    nop
    ld bc, $1508
    ld [$9cf3], sp
    rst $20
    ld a, b
    rst $28
    rra
    adc [hl]
    inc a
    ld a, h
    ld a, b
    ld l, l
    db $fc

jr_049_66d8:
    ld a, [hl]
    cp b

jr_049_66da:
    ld [$c0bc], a
    cp h
    ld b, h
    cp b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
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
    nop
    ld bc, $0502
    inc bc
    ld d, $03
    db $fc
    inc bc
    db $f4
    rrca
    ldh a, [$1f]
    ld a, [$fd05]
    ld [bc], a
    ld l, d
    sub b
    rra
    ldh [$3a], a
    add e
    ld e, l
    add [hl]
    jr c, jr_049_66d8

    jr nz, jr_049_66da

    and b
    ld b, b
    ld h, b
    jr nz, jr_049_66af

    add b
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    and c
    nop
    ld b, c
    ld bc, $0320
    dec [hl]
    rlca
    inc sp
    ccf
    ld b, a
    ccf
    sbc a
    ld a, a
    rrca
    rst $38
    cp e
    cp $f3
    rst $38
    ld de, $a4fe
    ld a, a
    ret z

    rst $38
    ld c, h
    rst $30
    ld e, h
    rst $20
    inc d
    rst $38
    ld [$c9ff], sp
    rst $38
    ret c

    rst $38
    ei
    rst $38
    cp e
    ld a, a
    rst $38
    rst $38
    pop af
    ldh a, [rSB]
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0100
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0001
    ld bc, $0102
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $0003
    ld bc, $0003
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0102
    ld bc, $0103
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0103
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    ld bc, $0503
    rlca
    ld bc, $0107
    rlca
    inc bc
    rlca
    ld bc, $0107
    rlca
    ld bc, $0707
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
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
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $02
    ld b, $02
    rlca
    ld [bc], a
    rrca
    ld b, $0f
    ld b, $0e
    ld b, $0e
    ld b, $0f
    ld b, $31
    nop
    sub h
    jr jr_049_6818

    ld b, $38
    rst $08
    ld [de], a
    db $fd
    inc bc
    db $fc
    inc hl
    db $fc
    pop hl
    ld a, $71
    adc [hl]

jr_049_680c:
    ld a, l
    add h
    ret nz

    nop
    ld [$d000], sp
    add b
    inc de
    nop
    rrca
    inc c

jr_049_6818:
    dec e
    ld [$100f], sp
    rrca
    inc b
    inc bc
    inc c
    dec sp
    inc a
    ld l, e
    ccf
    or [hl]
    dec e
    adc a
    inc e
    cp $1d
    jp nc, $af3d

    inc e
    sbc a
    inc e
    inc a
    rra
    inc e
    ccf
    ld e, l
    ccf
    db $76
    dec de
    rst $20
    ld e, $27
    sbc [hl]
    rst $20

Jump_049_683d:
    ld e, $cb
    sbc h
    sub a
    inc e
    ld d, a
    adc b
    sbc a
    ld [$943f], sp
    cp a
    db $10
    sbc b
    db $10
    sbc h
    db $10
    cp h
    adc b
    rst $38
    jr nc, jr_049_680c

    ld l, [hl]
    sub l
    ld a, d
    rst $10
    ld a, d
    ld e, [hl]
    pop af
    sub $e9
    db $dd
    or $ba
    ld b, h
    sbc $e0
    ccf
    ldh a, [$36]
    ld hl, sp+$3b
    sub $7d
    rst $00
    dec a
    rst $00
    rst $30
    ret nz

    cp $d0
    xor l
    ldh a, [$33]
    ret c

    db $d3
    db $ec
    db $fd
    add $59
    add $59
    add $7c
    jp $d1ee


    ld a, [$7d85]
    sub d
    db $fd
    sub d
    cp b
    rst $18
    db $fd
    add e
    ld a, [$fc8d]
    add e
    cp [hl]
    pop bc
    cp $81
    cp $81
    db $ec
    add a
    db $ed
    add d
    rst $18
    and b
    rst $20
    adc b
    db $ec
    add b
    add sp, -$80
    xor b
    add b
    db $ec
    add b
    db $ed
    add b
    db $dd
    add b
    cp h
    add b
    db $fc
    add b
    db $f4
    add b
    ld sp, hl
    nop
    rst $18
    nop
    db $dd
    nop
    rst $10
    nop
    rst $08
    nop
    pop bc
    nop
    pop bc
    nop
    ld b, l
    nop
    ld b, l
    nop
    ld d, c
    nop
    ld de, $d900
    nop
    sbc c
    nop
    sbc d
    nop
    ld a, [de]
    nop
    ld a, [bc]
    ld [$003a], sp
    sbc [hl]
    nop
    ld a, [hl-]
    nop

jr_049_68d4:
    ld a, [de]
    nop
    ld a, $00
    cp d
    nop
    cp d
    nop
    cp [hl]
    nop
    adc d
    nop
    ld a, [de]
    nop
    adc d
    ld [$00b2], sp
    or d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    xor d
    nop
    cp h
    nop
    ldh [rP1], a
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
    db $e3
    ld [de], a
    ld a, e
    ld h, $66
    ld h, b
    and b
    ld b, b
    rra
    nop
    cpl
    db $10
    rst $08
    jr nc, jr_049_68d4

    ld b, b
    ld e, e
    add b
    ei
    add b
    ld c, a
    or b
    db $db
    inc h
    ei
    inc b
    rst $38
    add b
    ld [hl], a
    dec b
    ld a, a
    add hl, bc
    ld l, l
    ld c, $6c
    rrca
    cp $9f
    db $fc
    sbc a
    db $fc
    rst $18
    db $e4
    rlca
    db $fc
    rra
    ld sp, hl
    sbc a
    ld hl, sp-$61
    ld hl, sp+$1f
    cp b
    rra
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$3f
    ret c

    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    cp $09
    cp $09
    rst $38
    ld c, h
    ld b, b
    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

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
    ret nz

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
    ret nz

    nop
    ld b, b
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

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
    rlca
    nop
    ld [bc], a
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ld [$0e00], sp
    nop
    db $76
    ld [$10ef], sp
    rst $38
    ld h, $fb
    daa
    db $ec
    inc bc
    add hl, sp
    ld [bc], a
    ld a, [hl-]
    ld bc, $031c
    inc hl
    inc e
    xor e
    inc d
    call c, $ec33
    inc de
    db $fc
    jp $efdf


    cp $fe
    db $fc
    db $fc
    adc $c6
    rst $20
    ld h, $2f
    rst $08
    nop
    ldh [rNR41], a
    ldh [$0a], a
    jp z, $c606

    inc bc
    jp $d797


    dec bc
    adc e
    dec de
    db $db
    dec h
    push af
    inc c
    db $fc
    add hl, bc
    ld sp, hl

Jump_049_6a00:
    ld d, c
    reti


    ld [hl+], a
    ld a, [$fd05]
    ld b, b
    ld hl, sp+$20
    ldh [rNR41], a
    ldh [rOCPS], a
    ld [$32d2], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    cp a
    nop
    rst $18
    ld [$04ff], sp
    ld a, a

jr_049_6a1f:
    nop
    cp [hl]
    nop
    inc c
    nop
    ld hl, sp+$00
    cp b
    ld b, b
    ret nz

    nop
    rst $28
    nop
    rst $30
    rrca
    rst $30
    inc a
    ld e, a
    ldh a, [$0e]
    ld sp, hl
    db $76
    adc b
    ld c, e
    add h
    ld a, $c7
    ld b, d
    db $fd
    ld h, a
    sbc b
    jr nc, jr_049_6a1f

    ld c, d
    or b
    dec b
    ld a, [$ff08]
    ldh a, [$1f]
    ld d, $f9
    and $f9
    db $76
    rst $38
    ld h, l
    sbc a
    ld l, [hl]
    ei
    db $76
    db $fd
    ld de, $01ff
    rst $38
    ld l, c
    cp $bf
    rst $38
    rst $00
    cp $7d
    cp $7b
    ld a, h
    ld e, c
    ld e, [hl]
    pop bc
    sbc $00
    cp $04
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
    ret nz

    nop
    db $fc
    nop
    rst $30
    nop
    jp Jump_000_3800


    rlca
    ccf
    nop
    ld bc, $0100
    nop
    rst $08
    ld sp, $fc43
    rst $38
    ldh a, [$bf]
    call nz, $8c7b
    ld [hl], e
    sub b
    adc c
    ldh a, [$6f]
    ld hl, sp+$5d
    ld hl, sp+$76
    ret z

    cp a
    ldh [rNR24], a
    and $f9
    add a
    adc a
    nop
    call z, $c283
    db $dd
    ld e, e
    adc a
    dec d
    rst $38
    cp $8f
    adc d
    rrca
    cp $ce
    cpl
    inc bc
    di
    nop
    ld hl, sp+$08
    rst $30
    rrca
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    rrca
    rst $38
    rrca
    pop af
    rrca
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    dec b
    ld b, $07
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    rrca
    db $10
    ld de, $1312
    nop
    inc d
    dec d
    ld d, $17
    jr jr_049_6b78

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_049_6b88

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_049_6b98

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_049_6ba8

    ld [hl-], a

jr_049_6b78:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_049_6bb8

    ld a, [hl-]
    dec sp
    inc l
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_049_6b88:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    inc l
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_049_6b98:
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
    ld h, b

jr_049_6ba8:
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

jr_049_6bb8:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    inc l
    inc l
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
    inc l
    inc l
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
    inc l
    inc l
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
    inc l
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
    inc l
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

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0404
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0106
    ld bc, $0101
    ld bc, $0404
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    inc b
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
    inc b
    inc b
    dec b
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
    inc b
    inc b
    dec b
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
    inc b
    inc b
    dec b
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
    inc b
    inc b
    dec b
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
    inc b
    dec b
    dec b
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
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0303
    rlca
    inc bc
    rrca
    dec e
    rra
    ld de, $351f
    ccf
    ld [hl], b
    ld a, a
    db $eb
    rst $38
    call nz, $dbff
    rst $38
    jp z, $f0ff

    rst $38
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
    ld bc, $0301
    ld bc, $0103
    rlca
    inc bc
    rrca
    dec bc
    rra
    rlca
    ccf
    rla
    ccf
    inc d
    ld a, a
    ld d, h
    rst $38
    ret z

    rst $38
    jp z, $d2ff

    rst $38
    db $e4
    rst $38
    ld b, h
    rst $38
    pop de
    rst $38
    and a
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rrca
    rst $38
    ld e, $ff
    ccf
    rst $38
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0607
    rrca
    rrca
    rra
    ld b, $3f
    dec c
    ld a, a
    jr jr_049_6e7d

    ld c, b
    rst $38
    ld [$80ff], sp
    rst $38
    sub c
    rst $38
    and e
    rst $38
    set 7, a
    sub e
    rst $38
    ld a, [de]
    rst $38
    add hl, hl
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld a, [hl+]
    rst $38
    db $e3
    rst $38
    ld [hl], e
    rst $38
    ld h, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    db $eb
    rst $38
    db $e3
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
    ccf
    ccf
    rrca
    rrca
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
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    rrca
    inc c
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    inc de
    rra
    dec de
    ccf
    cpl
    ccf
    dec hl
    ccf
    dec hl
    ccf
    dec hl
    ccf
    daa
    ccf
    inc hl
    ccf
    ld hl, $233f
    ccf
    dec hl
    ccf
    inc hl
    ccf
    inc hl
    ccf
    add hl, hl
    ccf
    dec hl
    ccf

jr_049_6e7d:
    inc hl
    rra
    ld a, [de]
    rra
    add hl, de
    rra
    db $10
    rra
    inc de
    inc e
    inc d
    jr jr_049_6ea2

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

jr_049_6ea2:
    inc bc
    nop
    rlca
    nop
    ld b, $01
    ld b, $01
    inc c
    inc bc
    ld [$1007], sp
    rrca
    rra
    rra
    ld b, $1f
    inc d
    ccf
    ld [bc], a
    ld a, a
    ld sp, $617f
    rst $38
    ld h, l
    rst $38
    db $eb
    rst $38
    ld a, e
    rst $38
    daa
    rst $38
    cpl
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    ld e, [hl]
    rst $38
    ld e, l
    rst $38
    dec a
    rst $38
    ld [hl], d
    rst $38
    and $ff
    ld c, h
    rst $38
    db $ec
    rst $38
    ld [$b9ff], a
    rst $38
    ld a, e
    rst $38
    inc sp
    rst $38
    ld h, a
    rst $38
    rst $10
    rst $38
    rst $08
    rst $38
    sbc $ff
    cp l
    rst $38
    ld a, h
    rst $38
    cp d
    rst $38
    ld a, c
    rst $38
    ld [hl], d
    rst $38
    db $f4
    rst $38
    pop hl
    rst $38
    db $e4
    rst $38
    jp nc, $c4ff

    rst $38
    sub b
    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    ld a, a
    ld c, $0f
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0001
    add c
    nop
    add c
    nop
    add c
    add b
    pop bc
    nop
    pop bc
    add b
    pop bc
    add b
    pop bc
    ret nz

    pop bc
    ld b, b
    pop hl
    ld b, b
    pop hl
    ld b, b
    pop hl
    ld b, b
    pop hl
    ld b, b
    pop hl
    ld b, b
    pop hl
    ld b, b
    pop hl
    nop
    pop hl
    ld c, b
    pop hl
    ld e, b
    pop hl
    call c, $fcc1
    pop bc
    db $fc
    pop hl
    call c, $9ce1
    pop hl
    db $dd
    db $e3
    ld a, h
    and e
    sbc h
    inc hl
    inc e
    inc hl
    inc e
    inc hl
    dec e
    ld h, e
    dec e
    ld h, a
    add hl, de
    ld [hl], a
    ld [$03ff], sp
    ei
    nop
    pop af
    ld b, $e0
    ld c, $e0
    inc c
    pop hl
    add hl, bc
    jp $c303


    inc de
    pop hl
    ld [$07fb], sp
    rst $38
    inc bc
    db $fc
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    dec b
    call nz, $8704
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
    nop
    ld bc, $ff00
    ld a, e
    rst $38
    db $76
    rst $38
    or $ff
    db $fd
    rst $38
    db $ed
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    ld l, [hl]
    rst $38
    call $9cff
    rst $38
    sbc d
    rst $38
    ld e, c
    rst $38
    ld a, [hl-]
    rst $38
    ld a, c
    rst $38
    ld [hl], d
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    ldh [rIE], a
    ret z

    rst $38
    pop de
    rst $38
    and c
    rst $38
    add d
    rst $38
    ld b, d
    rst $38
    ld b, $ff
    ld b, h
    rst $38
    ld [$88ff], sp
    rst $38
    ld bc, $10ff
    rst $38
    ld [de], a
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld d, b
    rst $38
    pop bc
    rst $38
    add c
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
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$3f], a
    ldh [$3f], a
    ldh [$1f], a
    ldh [$2f], a
    ldh a, [$fd]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $38
    ld c, e
    rst $38
    scf
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    inc bc
    rst $38
    ld d, a
    ret z

    ld c, l
    add b
    ld a, [hl]
    adc b
    db $dd
    cp a
    ld c, c
    rst $38
    ld c, d
    rst $38
    ld e, c
    rst $30
    inc bc
    db $fd
    add c

jr_049_7083:
    ld l, $c1
    ld b, a
    jp $ff47


    ld [hl], $ff
    add a
    rst $38
    adc a
    di
    rla
    db $e3
    inc l
    add e
    rrca
    rlca
    sbc e
    rst $08
    rrca
    rst $38
    di
    db $fd
    ld sp, hl
    adc $fe
    add e
    rst $38
    and b
    and b
    sbc b
    jr jr_049_7083

    add [hl]
    ld a, a
    ld h, e
    rra
    rra
    rlca
    rlca
    inc bc
    rlca
    ld b, $0f
    inc bc
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [$eaff], a
    rst $38
    ld [$9aff], a
    rst $38
    or e
    rst $38
    rla
    rst $38
    ld h, b
    rst $38
    dec h
    rst $38
    ld b, b
    rst $38
    push bc
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    ld [de], a
    rst $38
    jr nz, @+$01

    ld a, [hl+]
    rst $38
    ld b, h
    rst $38
    ld d, d
    rst $38
    ld c, c
    rst $38
    add c
    rst $38
    ld b, l
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    sbc b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld h, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $cbff
    ld a, a
    rst $08
    rst $38
    ld l, a
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
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
    ld sp, hl
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    and $ff
    ret nz

    ld a, c
    nop
    ld l, c
    add b
    ld a, a
    ret nz

    ld [hl+], a
    rst $18
    sub b
    rst $38
    nop
    rst $38
    ld b, $ff
    add [hl]
    rst $38
    inc l
    rst $38
    ld c, $ff
    sub e
    rst $38
    rlca
    rst $18
    add e
    rst $38
    inc de
    rst $38
    rst $38
    jp Jump_000_3fff


    rst $38
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    cp a
    db $fc
    rrca
    db $fd
    rst $00
    ccf
    ccf
    ld c, $ff
    dec b
    ld a, a
    pop bc
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec de
    rst $38
    ld d, [hl]
    rst $38
    ld [hl], h
    rst $38
    ld l, h
    rst $38
    call z, $acff
    rst $38
    ld e, b
    rst $38
    sbc b
    rst $38
    jr @+$01

    sbc b
    rst $38
    inc [hl]
    rst $38
    add hl, sp
    rst $38
    or b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    inc bc
    cp $03
    cp $03
    cp $03
    cp $07

Jump_049_71df:
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    rst $38
    sbc a
    rst $38
    rra
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
    rst $38
    rst $38
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
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    adc b
    ld a, a
    inc e
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    xor $ff
    cp a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $76
    rst $38
    sbc $ff
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
    ld d, c
    rst $38
    rla
    add hl, bc
    inc de
    nop
    cp a
    db $10
    push bc
    ld a, [hl-]
    xor e
    cp $05
    rst $38
    xor l
    rst $38
    scf
    rst $38
    ld c, a
    ld [hl], d
    push af
    ei
    set 6, l
    add e
    rst $38
    res 6, a
    add e
    db $fd
    rst $38
    inc bc
    rst $38
    ld hl, $7dff
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    ccf
    ld sp, hl
    sbc a
    ei
    ld c, a
    rst $38
    rst $08
    db $fd
    rst $10
    db $fd
    rst $00
    db $fd
    add a
    db $fd
    add a
    db $fd
    rst $00
    rst $38
    rst $08
    ei
    ld c, a
    ei
    ld c, a
    ei
    adc a
    ei
    rrca
    ld sp, hl
    rra
    ldh a, [$9f]
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $30
    rra
    rst $30
    ccf
    db $e3
    ccf
    db $e3
    ccf
    db $e3
    ld a, a
    db $e3
    ld a, a
    jp $c77f


    ld a, a
    rst $00
    ld a, a
    rst $00
    rst $38
    add a
    cp a
    rst $00
    rst $38
    add a
    rst $18
    and a
    rst $18
    daa
    ccf
    rst $18
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld b, $ff
    rlca
    rst $38
    nop
    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
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
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
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
    inc e
    rst $38
    add a
    rst $38
    ld c, d
    rst $38
    and e
    rst $38
    daa
    rst $38
    ld [hl], $ff
    ld h, $ff
    ld h, b
    rst $38
    ld l, a
    rst $38
    ld a, c
    rst $38
    rst $08
    rst $38
    add h
    rst $38
    ld h, [hl]
    rst $38
    db $e4
    rst $38
    ld h, c
    rst $38
    ld h, [hl]
    rst $38
    daa
    rst $38
    dec b
    rst $38
    ret nc

    rst $38
    jp hl


    rst $38
    xor c
    cp $a9
    cp $6b
    rst $38
    ld h, e
    rst $38
    ld sp, $b5fe
    rst $38
    sub b
    rst $38
    db $f4
    rst $38
    call nc, Call_049_5cfe
    cp $f3
    cp $7b
    db $fc
    ld h, e
    cp $7b
    cp $df
    db $fc
    ld [hl], e
    db $fd
    ld e, c
    cp $c4
    rst $38
    push hl
    ld a, a
    ld hl, sp+$7e
    db $fd
    cp $d9
    cp $cd
    cp $ea
    cp $ec
    db $fc
    db $f4
    db $fc
    pop af
    db $fc
    push af
    ld hl, sp-$1c
    ld hl, sp-$0c
    db $fc
    db $fd
    ld hl, sp-$03
    ld hl, sp-$13
    ld hl, sp-$11
    ld hl, sp-$07
    db $fc
    ei
    ld hl, sp-$08
    ld sp, hl
    db $fd
    ld hl, sp-$05
    ldh a, [$f9]
    pop af
    ld hl, sp-$0f
    ld sp, hl
    pop af
    ei
    di
    ei
    di
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    cp $00
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    and $fa
    push hl
    rst $38
    ldh [$f5], a
    ld [$eff0], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh [rIE], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld hl, sp-$39
    rst $00
    add b
    ret nz

    nop
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    db $e4
    add b
    ld [c], a
    pop bc
    ld [c], a
    pop bc
    ld [c], a
    pop bc
    and $c1
    and $c1
    and $c1
    and $c1
    db $e4
    jp $c3e4


    db $fc
    jp $c3fc


    call z, $c0f3
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38

Call_049_7400:
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    db $fc
    jp $ffc0


    pop bc
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc c
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
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
    ld a, l
    rst $38
    inc h
    rst $38
    ld [bc], a
    rst $38
    add hl, hl
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    ld a, [hl+]
    rst $38
    ld b, c
    rst $38
    ld a, b
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, e
    rst $38
    ld b, c
    rst $38
    ret nz

    rst $38
    ld h, c
    rst $38
    ld b, b
    rst $38
    inc e
    rst $38
    dec bc
    rst $38
    nop
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rlca
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    rst $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    ccf
    ld a, [de]
    ccf
    dec bc
    ccf
    dec de
    ld a, a
    ld a, $7f
    ld l, a
    ld a, a
    rst $28
    rst $38
    cp a
    rst $38
    rst $20
    rst $38
    ld de, $f0ff
    rrca
    rrca
    nop
    db $10
    rrca
    rrca
    nop
    rst $38
    nop
    rst $10
    ld hl, sp-$02
    rst $38
    or h

jr_049_74a5:
    rst $38
    sub $3f
    ld a, $c7
    ld e, [hl]
    or a
    jp Jump_000_1b3c


    push af
    inc bc
    db $fc
    dec b
    ld a, [$8f70]
    ld [de], a
    db $ed
    ld [$18f7], sp
    rst $20
    jr jr_049_74a5

    cpl
    jp nc, $cd33

    inc bc
    db $fc
    ld [$3df7], sp
    jp $ff00


    dec c
    di
    ld [$08f7], sp
    rst $30
    rst $00
    add hl, sp
    ccf
    nop
    inc bc
    nop
    ld bc, $0201
    nop
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld bc, $00ff
    rst $38
    nop
    pop af
    ld c, $0c
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    jp nz, $f1ff

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    inc d
    rst $38
    nop
    rst $38
    ld c, h
    rst $38
    ld b, b
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    inc a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    ldh [rIE], a
    inc h
    rst $38
    ld sp, $73ff
    rst $38
    inc [hl]
    rst $38
    ld a, d
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $18
    rst $38
    push bc
    rst $38
    jp c, $f1ff

    rst $38
    cp $ff
    db $ed
    rst $38
    sbc $ff
    rst $38
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
    ld b, b
    rst $38
    cp a
    rst $38
    adc a
    adc a
    add e
    add e
    add b
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $10
    rst $28
    db $fd
    ld [bc], a
    jp Jump_049_4800


    or a
    ret


    scf
    swap [hl]
    adc l
    or $7f
    rst $38
    db $ec
    rst $38
    ld c, a
    rst $38
    ld [hl], $ff
    ld [hl], e
    cp l
    rst $28
    ld [hl], e
    nop
    rst $38
    or c
    ld l, [hl]
    jr nz, @+$01

    rst $20
    ld a, b
    ld l, h
    di
    ld h, e
    db $fc
    ld h, b
    rst $38
    scf
    add sp, $10
    rst $28
    nop
    rst $38
    jr nc, @-$0f

    ldh a, [$ef]
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld b, b
    rst $38
    ld a, b
    add a
    rlca
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    ret nz

    ret nz

    ret nz

    ret nz

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
    add sp, -$01
    rst $38
    rst $38
    ei
    rst $38
    add b
    rst $38
    jr z, @+$01

    ld d, b
    rst $38
    nop
    rst $38
    and d
    rst $38
    ld h, h
    rst $38
    di
    rst $38
    ldh a, [rIE]
    db $dd
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    ei

Call_049_75eb:
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    ld b, a
    rst $38
    ld b, c
    rst $38
    push de
    rst $38
    sbc a
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    nop
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    ld [$40ff], a
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    add hl, de
    rst $38
    dec de
    rst $38
    ld [hl], $ff
    cpl
    rst $38
    ld d, d
    rst $38
    ld b, l
    rst $38
    ld a, c
    rst $38
    or [hl]
    rst $38
    ld a, l
    rst $38
    ld [hl], a
    rst $38
    cp a
    rst $38
    ld l, $ff
    cp l
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    ld bc, $03ff
    rst $38
    dec b
    rst $38
    ld a, [hl]
    rst $38
    db $fd
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
    rst $38
    nop
    add b
    nop
    cp $00
    rst $38
    jr nz, @+$01

    ld a, l
    db $fd
    cp $fe
    rra
    rra
    inc bc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_049_7657:
    rst $38
    ld h, b
    sbc a
    rst $38
    nop
    ld de, $bae0
    ld b, a
    add hl, sp
    rrca
    rst $38
    nop
    ld a, a
    ldh [rIE], a
    rst $38
    or e
    rst $38
    dec bc
    rst $38
    ccf
    rst $38
    jr jr_049_7657

    db $fc
    dec de
    dec d
    db $eb
    inc b
    ei
    pop hl
    ld e, $00
    rst $38
    add b
    ld a, a
    or e
    ld c, h
    inc bc
    db $fd
    inc bc
    db $fc
    ld [de], a
    db $fd
    inc bc
    db $fc
    ld bc, $00ff
    rst $38
    nop

jr_049_768b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $f8fe
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_049_768b

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
    pop bc
    rst $38
    ld bc, $e1ff
    rst $38
    jp $c7ff


    rst $38
    or $ff
    ldh a, [rIE]
    add b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld sp, hl
    rst $38
    ld a, e
    rst $38
    cp $ff
    ei
    rst $38
    reti


    rst $38
    ld [hl-], a
    rst $38
    ld h, e
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld b, d
    rst $38
    sub d
    rst $38
    sbc b
    rst $38
    ccf
    rst $38
    dec l
    rst $38
    sbc b
    rst $38
    ld [$e0ff], a
    rst $38
    jp $b1ff


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
    nop
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    adc h
    rst $38
    xor d
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    rst $18
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
    nop
    nop
    nop
    add b
    nop
    cp $00
    rst $38
    ldh a, [rIE]
    inc bc
    inc bc
    ld hl, $9b21
    sbc e
    nop
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
    add b
    ret nz

    ld b, a
    call nz, $01f6
    adc c
    ldh a, [$e8]
    ldh a, [$a3]
    cp $e3
    rst $38
    cp e
    rst $38
    inc e
    rst $38
    ld e, h
    rst $30
    ld [hl], e
    rst $08
    ld a, [hl-]
    rst $10
    rst $18
    ld a, [hl-]
    ld b, l
    cp [hl]
    pop bc
    ld a, [hl]
    db $dd
    and $9e
    ld h, a
    ld a, h
    adc a
    ld h, b
    rst $38
    db $dd
    ld l, [hl]
    sub $6f
    ld c, [hl]
    cp a
    add d
    ld a, a
    pop af
    ld a, $62
    cp a
    ld [bc], a
    rst $38
    jp z, $b9fd

    rst $38
    cp $3d
    inc a
    dec sp
    cp a
    sbc b
    ccf
    db $10
    ccf
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
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    or b
    ld a, a
    nop
    rst $38
    ld bc, $00ff
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
    rst $38
    inc h
    rst $38
    ld a, c
    rst $38
    ldh a, [rIE]
    sub b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld c, a
    rst $38
    ld b, a
    rst $38
    rra
    rst $38
    inc e
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    ld a, [$e8ff]
    rst $38
    add $ff
    adc $ff
    rst $08
    rst $38
    ld b, a
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    rrca
    rst $38
    sbc c
    rst $38
    xor e
    rst $38
    cp b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    dec de
    rst $38
    add hl, bc
    rst $38
    jr nz, @+$01

    jr c, @+$01

    db $10
    rst $38
    nop
    rst $38
    ld [c], a
    rst $38
    ld a, [$efff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    or a
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
    cp $00
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    and d
    rst $38
    dec [hl]
    ccf
    inc b
    rlca
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
    rst $38
    nop
    db $f4
    nop
    ld b, c
    cp [hl]
    call nz, $ef3b
    ld a, [de]
    rst $38
    sub d
    ld [c], a
    cp $eb
    rst $30
    di
    rst $38
    rst $38
    cp a
    cp a
    ld b, a
    inc l
    rst $18
    bit 6, [hl]
    nop
    rst $38
    ld a, [bc]
    push af
    nop
    rst $38
    ld [$1ff7], sp
    db $e4
    add hl, de
    or $90
    ld l, a
    dec sp

jr_049_7857:
    call nz, $f40b
    ld [$9015], a
    ld a, a
    push de
    xor [hl]
    ld sp, hl
    ld b, $3d
    cp $fc
    adc a
    jr nc, jr_049_7857

    db $10
    rst $38
    db $e3
    db $fd
    rst $20
    jp c, Jump_049_71df

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
    jr z, @+$01

    jp z, Jump_049_48ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld e, h
    rst $38
    call c, $f8ff
    rst $38
    sbc h
    rst $38
    xor [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    ld a, [de]
    rst $38
    add hl, hl
    rst $38
    ld a, [bc]
    rst $38
    sub a
    rst $38
    ld a, l
    rst $38
    add hl, sp
    rst $38
    dec h
    rst $38
    adc c
    rst $38
    sub e
    rst $38
    jp c, $f5ff

    rst $38
    xor [hl]
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    and b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    sub $ff
    ld c, $ff
    db $10
    rst $38
    add b

jr_049_78ef:
    rst $38
    add b
    rst $38
    nop
    rst $38
    add sp, -$01
    ld a, [$faff]
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    and b
    rst $38
    ld [de], a
    rst $38
    db $db
    rst $38
    ld a, [de]
    rra
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    ldh [rP1], a
    ccf
    nop
    or e
    nop
    ld bc, $58e0
    ldh [$f4], a
    jr nz, jr_049_78ef

    ld hl, sp-$4f
    cp $25
    rst $38
    ccf
    rst $38
    cp h
    rst $38
    rra
    db $fc
    dec d
    ei
    jp Jump_049_683d


    rst $10
    add d
    ld a, a
    ld c, h
    cp a
    rlca
    ei
    ld bc, $09ff
    rst $30
    dec b
    ei
    dec b
    rst $38
    ldh a, [rIF]
    add hl, sp
    rst $00
    nop
    rst $38
    and a
    ld a, b
    ld b, c
    cp $a1
    rst $38
    add b
    rst $38
    add [hl]
    ld a, c
    add e
    ld a, l
    ld a, a
    pop bc
    ld [c], a
    ld hl, $0100
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
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
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
    dec bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    dec c
    ld c, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rrca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $10
    ld de, $1312
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $17
    jr jr_049_79c5

    ld a, [de]
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec e
    ld e, $1f
    jr nz, jr_049_79da

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $02
    daa
    jr z, jr_049_79eb

    ld a, [hl+]
    dec hl
    inc l

jr_049_79c5:
    dec l
    ld [bc], a
    ld l, $2f
    jr nc, jr_049_79fc

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_049_7a0c

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_049_79da:
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
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_049_79eb:
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

jr_049_79fc:
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

jr_049_7a0c:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld d, h
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
    ld d, h
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
    ld d, h
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
    nop
    nop
    nop
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
    ld b, $06
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
    rlca
    ld b, $06
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
    rlca
    ld b, $06
    ld b, $06
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
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    ld bc, $0700
    ld b, $06
    ld b, $06
    ld b, $07
    ld b, $06
    ld b, $07
    rlca
    rlca
    ld bc, $0202
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $03
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld b, $06
    ld b, $01
    ld bc, $0303
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
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
    ld b, $06
    ld bc, $0101
    ld bc, $0505
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0504
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0505
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0501
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
    ld bc, $0101
    ld bc, $0301
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0301
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld [$0808], sp
    ld [$79ff], sp
    rst $38
    add hl, de
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh [rIE], a
    inc e
    rra
    rlca
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
    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    nop

Call_049_7c24:
    nop
    nop
    nop
    ld c, $00
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ld [hl], b
    ld a, a
    ld c, $0f
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
    nop
    rra
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
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    ld e, $ff
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr c, jr_049_7cc8

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
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    dec de
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rSB], a
    ldh [rSB], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a

jr_049_7cc8:
    ldh [rP1], a
    ldh [$e0], a
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $0f00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    ccf
    nop
    cp a
    nop
    rst $38
    nop
    rra
    nop
    adc a
    nop
    ld e, a
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
    ccf
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    cpl
    nop
    ld a, a
    nop
    ld l, a
    nop
    cpl
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
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
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
    ld bc, $0100
    nop
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    db $fc
    nop
    db $fc
    nop
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
    ld a, $00
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    jr c, jr_049_7dd3

jr_049_7dd3:
    jr c, jr_049_7dd5

jr_049_7dd5:
    jr jr_049_7dd7

jr_049_7dd7:
    jr jr_049_7dd9

jr_049_7dd9:
    jr jr_049_7ddb

jr_049_7ddb:
    jr jr_049_7ddd

jr_049_7ddd:
    jr jr_049_7ddf

jr_049_7ddf:
    ld [$0101], sp
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    add b
    ccf
    add b
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, h
    nop
    ld [hl], c
    nop
    ld b, a
    nop
    ld e, $00
    ld [bc], a
    add b
    ld de, $19c0
    ldh [$0c], a
    ldh a, [rTMA]
    db $fc
    ld [bc], a
    cp $00
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld b, $ff
    dec c
    rst $18
    ld a, [de]
    ccf
    dec [hl]
    ld a, a
    ld l, d
    rst $38
    push de
    rst $38
    xor e
    rra
    rra
    adc a
    adc a
    rst $28
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $28
    di
    db $d3
    pop hl
    and c
    pop hl
    ld b, c
    pop hl
    pop hl
    ldh a, [$d0]
    ld a, b
    ld a, b
    ld a, $34
    ccf
    ld a, [hl+]
    rra
    dec d
    rrca
    ld a, [bc]
    rlca
    dec b
    inc bc
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
    nop
    inc bc
    nop
    dec de
    nop
    rra
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
    jr nz, jr_049_7e69

jr_049_7e69:
    jr nz, jr_049_7e6b

jr_049_7e6b:
    ld h, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ret nc

    nop
    add b
    nop
    sub b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    add sp, $00
    call nz, $c000
    nop
    ret nz

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
    add b
    nop
    add b
    nop
    add b
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
    db $fc
    ld d, a
    ld a, a
    xor e
    ld a, $d6
    ld e, $ea
    rra
    ld [hl], a
    rra
    dec hl
    rrca
    scf
    rrca
    dec sp
    rrca
    dec [hl]
    rrca
    ld a, $1b
    ld l, c
    inc sp
    ld a, [c]
    ld h, c
    ld b, c
    ld b, c
    ld b, b
    ld sp, $3391
    and d
    ccf
    ld e, l
    ccf
    xor $1f
    rst $30
    rra
    ld l, d
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, l
    rst $38
    cp $ff
    ld a, l
    rst $18
    rst $18
    jp $ffc3


    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$b0]
    ld hl, sp+$58
    cp $ae
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    ld a, a
    ld d, l
    ccf
    ld a, $0f
    rrca
    ld bc, $0001
    rlca
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

jr_049_7f4b:
    rst $38
    nop
    rst $38
    nop

jr_049_7f4f:
    rst $38
    add b
    inc a
    add b
    ld [hl], d
    add [hl]
    ld a, [hl]
    add e
    ld [hl], e
    add e
    ld [hl], a
    add c
    dec c
    add c
    dec b
    add e
    rla
    add b
    inc b
    add b
    rrca
    add b
    dec d
    add c
    dec b
    add b
    ld a, [bc]
    add b
    ld bc, $0080
    add b
    db $10
    add b
    ld [hl+], a
    add c
    dec a
    add b
    ld [hl+], a
    add h
    dec l
    add [hl]
    rra
    adc h
    ld e, $8c
    dec a
    adc a
    rra
    adc a
    ccf
    adc a
    ccf
    adc [hl]
    ccf
    add [hl]
    ld c, $82
    ld [bc], a
    pop bc
    ld bc, $05c5
    rrc b
    ld a, c
    ld h, $4f
    jr nz, jr_049_7f4f

    ld c, l
    and $19
    ld a, d
    add hl, bc
    rst $30
    dec sp
    and b
    ld a, a
    ld d, b
    cpl
    inc d
    rst $28
    ld e, h
    cp a
    inc e
    rst $38
    jr c, @-$0f

    inc c
    ld a, a
    rrca
    ld a, l
    ld a, [hl]
    rst $38
    ld a, [de]
    rst $38
    jr nc, jr_049_7fe2

    dec e
    add hl, de
    rst $30
    rlca
    or e
    inc sp
    or a
    inc sp
    db $fd
    ld a, l
    rst $38
    ld a, l
    db $e3
    rra
    ld h, c
    rst $38
    adc [hl]
    rst $38
    ld h, b
    ld a, a
    nop
    stop
    jr nc, jr_049_7f4b

    ldh [$80], a
    ldh [$80], a
    db $e4
    ret nz

    db $e4
    or $f6
    db $fd
    ld a, l
    db $f4
    and b
    ld a, [$fed0]
    xor d
    rst $38
    ld d, a
    rst $38
    db $fd
    rst $20
    push bc

jr_049_7fe2:
    di
    and e
    ldh [rSTAT], a
    jp nz, $c283

    ld b, e
    and $e7
    db $fc
    ld d, l
    or $a3
    db $fc
    ld d, [hl]
    db $fc
    xor a
    db $fc
    rst $18
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38

Jump_049_7ffc:
    rst $38
    rst $38
    rst $38
    ei
