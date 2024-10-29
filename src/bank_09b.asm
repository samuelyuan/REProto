SECTION "ROM Bank $09b", ROMX[$4000], BANK[$9b]

    nop
    nop
    nop
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
    nop
    nop
    nop
    inc bc
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop

Call_09b_403b:
    nop
    nop
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
    inc bc
    inc bc
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
    inc bc
    dec b
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
    inc bc
    dec b
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
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rIE]
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
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$f0]
    rrca
    nop
    rst $38
    nop
    rst $38
    rra
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
    rst $38
    ld a, a
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
    rra
    rra
    rst $38
    rst $38
    ldh [rIE], a
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
    ccf
    ret nz

    ret nz

    ccf
    nop
    rst $38
    ld bc, $7eff
    rst $38
    add b
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
    rst $38
    nop
    rst $38
    jp $ffef


    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld [hl], a
    ld a, a
    ld [hl], a
    ld a, a
    ld [hl], a
    ld a, a
    ld [hl], a
    ld a, a
    ld [hl], a
    ld a, a
    dec sp
    ccf
    dec sp
    ccf
    dec sp
    ccf
    dec sp
    ccf
    dec sp
    ccf
    dec sp
    ccf
    dec e
    rra
    dec e
    rra
    dec e
    rra
    dec e
    rra
    dec e
    rra
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
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
    ld bc, $0101
    ld bc, $0101
    rrca
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, l
    cp $bd
    cp $bd
    cp $bd
    cp $bd
    cp $bd
    cp $be
    rst $38
    sbc $ff
    sbc $ff
    ld e, $ff
    rst $38
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
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $30
    rst $30
    rrca
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rst $20
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
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $18
    ldh [$c0], a
    ldh [$c0], a
    rst $38
    ldh a, [rIE]
    di
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ldh [$7f], a
    ldh [$7f], a
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    rst $38
    nop
    cp $00
    add b
    ld bc, $7f00
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
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
    ldh a, [rIF]
    add b
    ld a, a
    ld hl, sp+$00
    nop
    rlca
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
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
    rst $38
    nop
    ldh [rP1], a
    nop
    rra
    nop
    rst $38
    inc bc
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
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld c, a
    nop
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
    ldh a, [rIF]
    rst $30
    ld [$08f7], sp
    push af
    ld [$08f5], sp
    ldh a, [$08]
    ldh a, [$08]
    ld a, [c]
    ld [$08f2], sp
    ld a, [c]
    ld [$08f7], sp
    ldh a, [rIF]
    or $08
    or $08
    ld a, [$fa04]
    inc b
    ld a, [$fa04]
    inc b
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ei
    inc b
    rlca
    nop
    inc b
    nop
    inc b
    ld [bc], a
    inc b
    inc bc
    ld b, $03
    ld b, $03
    rlca
    inc bc
    rlca
    inc bc
    ei
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    add b
    inc bc
    nop
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    ldh a, [rIF]
    rrca
    ldh a, [$fb]
    inc e
    ld sp, hl
    ld a, $f9
    ld a, $f1
    ld a, [hl]
    pop af
    ld a, [hl]
    pop af
    ld a, [hl]
    ld sp, hl
    ld a, [hl]
    db $ed
    ld a, [hl]
    db $ed
    ld a, [hl]
    rst $38
    nop
    nop
    rst $38
    xor a
    ld bc, $01af
    xor a
    ld bc, $01af
    xor a
    ld bc, $01af
    xor a
    ld bc, $01af
    xor a
    nop
    ldh a, [rIF]
    pop af
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0080
    ret nz

    nop
    ldh [$80], a
    ldh [$c0], a
    ldh a, [rTAC]
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $7eff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_09b_4478:
    nop
    nop

jr_09b_447a:
    nop
    nop

jr_09b_447c:
    nop
    rlca

jr_09b_447e:
    nop
    ld a, a
    rst $38
    nop
    rrca
    ldh a, [$ef]
    db $10
    rst $28
    jr nc, jr_09b_4478

    jr nc, jr_09b_447a

    jr nc, jr_09b_447c

    jr nc, jr_09b_447e

    jr nc, jr_09b_44c1

    jr nz, jr_09b_44c3

    ld h, b
    or b
    ld h, b
    or b
    ld h, b
    stop
    ldh a, [rP1]
    ldh a, [$e0]
    or b
    and b
    rst $28
    or b
    rst $28
    or b
    rst $28
    or b
    rst $28
    or b
    rst $28
    or b
    rst $28
    or b
    rst $28
    db $10
    rrca
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$2f]
    ldh a, [$8f]

jr_09b_44c1:
    ld [hl], b
    rst $28

jr_09b_44c3:
    db $10
    rrca
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
    ldh a, [rP1]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
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
    rst $38
    nop

Call_09b_44ff:
    rst $38
    rst $38
    nop
    db $fc
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
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
    cp $01
    ldh a, [rIF]
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    rra
    db $10
    rra
    db $10
    inc e
    inc de
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
    ldh a, [rP1]
    nop
    rrca
    nop
    rst $38
    ld bc, $7eff
    rst $38
    add b
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
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    rlca
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

    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$f0]
    db $10
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR42], a
    ldh [$3f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rlca
    rst $38
    inc bc
    rst $38
    dec b
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
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08fe], sp
    adc b
    add hl, bc
    ld [$087f], sp
    rst $38
    ccf
    rst $38
    ret z

    rst $38
    nop
    rst $38
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
    rst $38
    dec bc
    db $f4
    daa
    ret nz

    di
    ret nz

    ld sp, hl
    ldh [$fc], a
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    ccf
    rst $38
    ld e, $ff
    db $10
    rst $38
    db $10
    rst $38
    rst $38
    db $10
    rst $38

jr_09b_4613:
    db $10
    rst $38
    jr nz, jr_09b_4613

    inc hl
    ldh a, [$28]
    jr nz, jr_09b_4643

    jr nz, @+$01

    inc hl
    rst $38
    db $fc
    rst $38
    jr nz, @+$01

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
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

jr_09b_4643:
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
    rra
    db $10
    ld a, a
    ld a, h
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    ld [bc], a
    cp $03
    db $fc
    rlca
    db $f4
    rrca
    db $e4
    rra
    add h
    ld a, a
    inc b
    db $f4
    inc b
    rrca
    inc b
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    db $10
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
    inc bc
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    rlca
    inc b
    nop
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
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
    ret nz

    nop
    ccf
    nop
    rst $38
    ccf
    rst $38
    ret nz

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
    ld hl, sp+$07
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    pop hl
    rra
    pop bc
    ccf
    add c
    ld a, a
    add c
    ld a, a
    ld bc, $02ff
    rst $38
    ld [bc], a
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
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$000f], sp

jr_09b_4755:
    di
    inc e

jr_09b_4757:
    db $fc
    rst $38

jr_09b_4759:
    rst $38
    inc bc

jr_09b_475b:
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$e0], a
    jr nz, @-$1e

    jr nz, jr_09b_4755

    jr nz, jr_09b_4757

    jr nz, jr_09b_4759

    jr nz, jr_09b_475b

    daa
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $81ff
    ld a, a
    add c
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

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
    ld a, a
    add b
    sbc a
    ldh [$e7], a
    ld a, b
    ld sp, hl
    ld a, $fe
    rrca
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
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
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
    dec b
    ld b, $07
    ld [$0404], sp
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
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
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
    add hl, bc
    dec c
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
    nop
    nop
    rrca
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    nop
    nop
    nop
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
    ld d, $14
    inc d
    nop
    nop
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
    rla
    jr jr_09b_4893

    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    inc d
    inc d
    inc d
    nop
    nop
    nop

jr_09b_4893:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc e
    inc d
    inc d
    inc d
    inc d
    nop
    nop
    nop
    nop
    dec b
    dec e
    ld e, $1f
    nop
    nop
    jr nz, jr_09b_48c0

    inc d
    inc d
    inc d
    inc d
    nop
    nop
    nop
    nop
    ld hl, $2322
    nop
    dec b
    inc h
    dec h
    inc d
    inc d
    inc d
    inc d
    inc d

jr_09b_48c0:
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $27
    jr z, jr_09b_48f3

    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld a, [hl+]
    dec hl
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09b_490a

    ld [hl-], a
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09b_48fb

    inc d
    add hl, sp
    ld a, [hl-]
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d

jr_09b_48f3:
    inc d
    inc d
    inc d
    inc d
    inc d
    ld de, $143b

jr_09b_48fb:
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc a

jr_09b_490a:
    dec a
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld de, $143e
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc a
    ccf
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld de, $4140
    inc d
    inc d
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0007
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_09b_49e6

jr_09b_49e6:
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_09b_49fa

jr_09b_49fa:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop

Call_09b_4b00:
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
    nop
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
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
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
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rNR34], a
    ldh [$08], a
    ldh a, [rP1]
    di
    nop
    rst $30
    rst $38
    nop
    ei
    nop
    ld a, [$fc01]
    ld bc, $01fc
    db $fc
    ld bc, $00fe
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
    ld hl, sp+$01
    ldh [$03], a
    ret nz

    rrca
    nop
    rra
    nop
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$01
    ldh [rTAC], a
    ret nz

    rrca
    nop
    ccf
    ld bc, $f87f
    rlca
    ldh a, [rIF]
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
    nop
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
    nop
    ld hl, sp+$01
    ldh [rTAC], a
    add b
    rrca
    nop
    ccf
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    ldh a, [$03]
    ldh [rTAC], a
    add b
    rra
    ld bc, $033f
    rst $38
    rrca
    rst $38
    rra
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
    cp $00
    db $fc
    ld bc, $03f0
    ret nz

    rrca
    add b
    rra
    inc bc
    ld a, a
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
    cp $00
    ld hl, sp+$01
    ldh a, [rTAC]
    ret nz

    rrca
    add c
    ccf
    inc bc
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $01
    jr jr_09b_4c5a

    ld de, $1308
    ld [$0813], sp

jr_09b_4c5a:
    inc de
    ld [$0813], sp
    inc de
    ld [$0813], sp
    inc de
    ld [$0813], sp
    inc de
    ld [$0813], sp
    db $10
    dec bc
    inc de
    ld [$001f], sp
    ld e, $00
    jr jr_09b_4c74

jr_09b_4c74:
    nop
    nop
    nop
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
    ld hl, sp+$01
    ldh [rTAC], a
    pop bc
    rra
    inc bc
    ccf
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
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
    ld [bc], a
    ld a, a
    ld c, $8f
    ld a, [hl]
    rrca
    cp [hl]
    ld c, a
    ld a, $8f
    ld a, [hl]
    ld c, a
    cp [hl]
    rst $08
    ld a, [hl]
    rst $28
    cp $ef
    cp $cf
    cp $8f
    ld a, [hl]
    ld c, a
    cp [hl]
    adc a
    ld a, [hl]
    ld c, a
    cp h
    sbc [hl]
    ld h, b
    ld a, b
    add b
    ldh [rP1], a
    add b
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc b
    nop
    ld [$1003], sp
    rlca
    ld h, b
    rrca
    add e
    rra
    ld b, h
    ccf
    sbc b
    ld a, a
    jr nz, @+$01

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
    nop
    nop
    nop
    nop
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
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    db $fc
    nop
    ld hl, sp+$03
    ldh [rTAC], a
    add c
    rra
    ld b, $7f
    ld [$30ff], sp
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
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
    cp $01
    cp $01
    cp $01
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
    db $fc
    inc bc
    ld hl, sp+$07
    di
    nop
    db $e3
    ld c, $83
    rra
    rlca
    ld a, a
    jr @+$01

    jr nz, @+$01

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
    ldh a, [rIF]
    ldh [$1f], a
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
    ret nz

    ccf
    ldh a, [$8f]
    db $fc
    db $e3
    rst $38
    ld hl, sp+$3f
    cp $0f
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
    ldh a, [$8f]
    db $fc
    db $e3
    rst $38
    ld hl, sp+$7f
    cp $1f
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
    ret nz

    ccf
    ldh a, [$8f]
    db $fc
    db $e3
    rst $38
    ld hl, sp-$01
    cp $3f
    rst $38
    rrca
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
    ldh a, [$8f]
    db $fc
    db $e3
    rst $38
    ld hl, sp-$01
    cp $7f
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $7fff
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$8f]
    db $fc
    db $e3
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    ld a, a
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
    nop
    ld bc, $0202
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
    inc b
    dec b
    ld b, $07
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    ld a, [bc]
    dec b
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $05
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    rrca
    db $10
    inc c
    inc c
    inc c
    inc c
    inc c
    ld de, $0512
    dec bc
    inc c
    inc c
    inc de
    inc d
    dec d
    ld d, $16
    rla
    jr jr_09b_4f04

    inc c
    inc c
    ld a, [de]
    dec de
    dec b
    dec bc
    inc c
    inc e
    dec d
    ld d, $16
    ld d, $16
    ld d, $16
    rla
    dec e
    inc c
    ld e, $1f
    dec b
    dec bc
    inc de
    jr nz, jr_09b_4f1a

jr_09b_4f04:
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $21
    add hl, de
    ld [hl+], a
    inc hl
    dec b
    dec bc
    inc h
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16

jr_09b_4f1a:
    ld d, $16
    dec h
    ld h, $27
    dec b
    dec bc
    jr nz, jr_09b_4f39

    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $28
    add hl, hl
    ld a, [hl+]
    dec b
    dec hl
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16

jr_09b_4f39:
    ld d, $16
    ld d, $16
    inc l
    ld a, [hl+]
    dec b
    dec l
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld l, $2f
    dec b
    dec bc
    jr nc, @+$18

    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $31
    add hl, hl
    ld a, [hl+]
    dec b
    dec bc
    ld [hl-], a
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    inc sp
    ld h, $27
    dec b
    dec bc
    inc [hl]
    jr nc, @+$18

    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $35
    ld [hl], $22
    inc hl
    dec b
    dec bc
    inc c
    scf
    jr c, @+$18

    ld d, $16
    ld d, $16
    ld d, $39
    ld a, [hl-]
    inc c
    ld e, $1f
    dec b
    dec bc
    inc c
    inc c
    inc [hl]
    dec sp
    inc a
    ld d, $3d
    ld a, $3f
    ld [hl], $0c
    inc c
    ld a, [de]
    dec de
    dec b
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld de, $0512
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $05
    ld b, b
    ld b, c
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    add hl, bc
    ld a, [bc]
    dec b
    nop
    ld bc, $0202
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
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2721
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2721
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2721
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2721
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2721
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2721
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2721
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2721
    nop
    jr nz, jr_09b_5132

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0020
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    rrca

jr_09b_5132:
    rst $38
    rrca
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
    ld bc, $7ffe
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$78
    ld hl, sp+$02
    ld hl, sp+$05
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [$15]
    ldh [$fa], a
    ldh [$f5], a
    ldh [$fa], a
    ldh [$f5], a
    ldh [$fa], a
    ldh [$f5], a
    ldh [$7a], a
    ldh [$15], a
    ldh [rNR30], a
    ldh [$15], a
    ldh [rNR30], a
    ldh [$15], a
    ldh [rNR30], a
    ldh [$15], a
    ldh [rNR30], a
    ldh [$15], a
    ldh [rNR30], a
    ldh [$15], a
    ldh [rNR10], a
    rst $28
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld d, l
    xor d
    xor d
    ld d, l
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
    rst $38
    rst $38
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    push af
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    db $fd
    nop
    rst $38
    nop
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    nop
    rst $38
    ld bc, $eafe
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    and b
    nop
    nop
    nop
    and b
    nop
    ld d, l
    nop
    ld a, [$5500]
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, a
    add b
    rst $38
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    xor d
    nop
    ld d, l
    xor b
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    ld d, b
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    nop
    ld d, l
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
    ld d, h
    nop
    xor d
    nop
    ld bc, $00fc
    rst $38
    rst $38
    rst $38
    xor d
    nop
    ld d, l
    nop
    xor b
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
    nop
    nop
    add b
    nop
    ld b, b
    nop
    xor b
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    nop
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
    nop
    nop
    add b
    nop
    ld d, l
    nop
    nop
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
    and b
    nop
    ld d, l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
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
    rst $38
    nop
    ld d, l
    nop
    xor d
    nop
    nop
    nop
    xor d
    nop
    push de
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    ld d, l
    nop
    xor d
    nop
    ld bc, $aa00
    nop
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    nop
    ld bc, $0000
    nop
    nop

Call_09b_5427:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec b
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
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0a00
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0200
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
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0000
    nop
    ld bc, $0000
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
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    nop
    rst $38
    nop

Call_09b_5523:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld e, b
    rlca
    xor a
    rlca
    ld e, a
    rlca
    xor a
    rlca
    ld e, a
    rlca
    xor a
    rlca
    ld e, a
    rlca
    xor [hl]
    rlca
    ld e, b
    rlca
    xor b
    rlca
    ld e, b
    rlca
    xor b
    rlca
    ld e, b
    rlca
    xor b
    rlca
    ld e, b
    rlca
    xor b
    rlca
    ld e, b
    rlca
    xor b
    rlca
    ld e, b
    rlca
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
    jr jr_09b_5583

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_09b_5593

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_09b_55a3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09b_55b3

    ld [hl-], a

jr_09b_5583:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09b_55c3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_09b_5593:
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

jr_09b_55a3:
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

jr_09b_55b3:
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

jr_09b_55c3:
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
    sub [hl]
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
    push bc
    or a
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
    xor $0e
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $0e
    ld c, $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$09fe], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0a
    dec bc
    inc c
    dec c
    ld c, $0f
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $10
    ld c, $11
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
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
    ld bc, $0701
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld hl, $0009
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    nop
    ld [hl], a
    nop
    halt
    ld l, h
    nop
    inc l
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld [$ba00], a
    nop
    rst $28
    nop
    xor [hl]
    nop
    xor $00
    xor a
    nop
    xor e
    nop
    sbc e
    nop
    jp nc, $f200

    nop
    db $d3
    nop
    db $d3
    nop
    jp nz, $d200

    nop
    sub b
    nop
    sub h
    nop
    sub h
    nop
    add hl, de
    nop
    add hl, de
    nop
    add hl, de
    nop
    add hl, sp
    nop
    ld sp, $9100
    nop
    reti


    nop
    reti


    nop
    cp e
    nop
    cp e
    nop
    sub l
    nop
    sbc l
    nop
    rst $18
    nop
    rst $18
    nop
    ret


    nop
    ret


    nop
    ret


    nop
    rst $10
    nop
    add a
    nop
    sub a
    nop
    and l
    nop
    and l
    nop
    push hl
    nop
    push bc
    nop
    push hl
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld l, h
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    ld a, l
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld [hl], c
    nop
    ld sp, $4900
    nop
    ld e, c
    nop
    ld e, c
    nop
    ld e, c
    nop
    ld e, c
    nop
    ld l, c
    nop
    db $ed
    nop
    db $ed
    nop
    db $ed
    nop
    rst $28
    nop
    xor $00
    adc $00
    rlc b
    rlc b
    ld l, e
    nop
    ld h, a
    nop
    ld h, a
    nop
    ld h, l
    nop
    ld h, l
    nop
    ld h, l
    nop
    ld h, a
    nop
    ld h, d
    nop
    ld a, d
    nop
    ld a, a
    nop
    ld l, a
    nop
    rst $28
    nop
    rst $28
    nop
    db $eb
    nop
    db $eb
    nop
    ld l, l
    nop
    add hl, sp
    nop
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    add hl, sp
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    db $fd
    ld sp, hl
    ld b, $9f
    nop
    rst $18
    nop
    rst $28
    nop
    cp d
    nop
    ei
    nop
    rst $38
    nop
    rst $18
    nop
    adc c
    nop
    adc c
    nop
    add hl, bc
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld d, [hl]
    nop
    call nc, $df00
    nop
    db $dd
    nop
    pop de
    nop
    ld e, a
    nop
    ld [hl], a
    nop
    ld [hl], l
    nop
    ld e, a
    nop
    ld e, e
    nop
    ld l, e
    nop
    ld l, c
    nop
    ld h, a
    nop
    ld h, a
    nop
    rlca
    nop
    ld b, a
    nop
    and e
    nop
    and e
    nop
    db $e3
    nop
    pop af
    nop
    or c
    nop
    db $d3
    nop
    db $d3
    nop
    sub e
    nop
    rst $10
    nop
    push de
    nop
    ld d, l
    nop
    ld e, l
    nop
    ld e, l
    nop
    ld [hl], a
    nop
    scf
    nop
    add hl, hl
    nop
    daa
    nop
    scf
    nop
    ld e, e
    nop
    ld c, e
    nop
    rlc b
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    db $ed
    nop
    ld e, l
    nop
    ld e, a
    nop
    dec sp
    nop
    dec sp
    nop
    dec hl
    nop
    xor e
    nop
    xor e
    nop
    xor e
    nop
    sbc e
    nop
    sbc e
    nop
    sbc l
    nop
    cp l
    nop
    cp c
    nop
    reti


    nop
    pop de
    nop
    sub c
    nop
    cp c
    nop
    or l
    nop
    push de
    nop
    rst $10
    nop
    sub a
    nop
    sub l
    nop
    or l
    nop
    dec [hl]
    nop
    dec [hl]
    nop
    ld d, l
    nop
    ld d, a
    nop
    ld d, a
    nop
    ld d, a
    nop
    sub l
    nop
    add l
    nop
    add l
    nop
    ld d, l
    nop
    ld e, l
    nop
    ld d, l
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld a, c
    nop
    ld l, e
    nop
    cp a
    inc bc
    rst $38
    ccf
    rst $38
    rst $38
    di
    rst $38
    ldh a, [rIE]
    jp nz, $f4ff

    rst $38
    db $fc
    rst $38
    ld e, e
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    rst $38

jr_09b_599f:
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
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
    inc b
    rst $38
    ld [$30ff], sp
    rst $28
    inc b
    ei
    jr z, jr_09b_599f

    add h
    ld a, e
    nop
    rst $38
    ld b, h
    cp e
    add d
    ld a, l
    ld d, h
    nop
    ld e, [hl]
    nop
    rst $38
    nop
    rst $10
    nop
    rst $30
    nop
    rst $28
    nop
    adc $00
    ld a, b
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld c, h
    nop
    ret c

    nop
    add sp, $00
    adc b
    nop
    stop
    sub b
    nop
    and b
    nop
    adc b
    nop
    add b
    nop
    and b
    nop
    jr nz, jr_09b_59fc

jr_09b_59fc:
    jr nz, jr_09b_59fe

jr_09b_59fe:
    jr nz, jr_09b_5a00

jr_09b_5a00:
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
    inc b
    nop
    ld [$0800], sp
    nop
    stop
    stop
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
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    ld [$0800], sp
    nop
    ld c, b
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
    add b
    nop
    add b
    nop
    nop
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
    ld c, b
    nop
    ld [$0800], sp
    nop
    ld [$2000], sp
    nop
    nop
    nop
    jr nc, jr_09b_5a54

jr_09b_5a54:
    jr nz, jr_09b_5a56

jr_09b_5a56:
    nop
    nop
    nop
    nop
    jr nz, jr_09b_5a5c

jr_09b_5a5c:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0140
    ld b, b
    ld bc, $0100
    ld b, b
    ld bc, $0140
    nop
    ld bc, $0100
    add b
    ld bc, $01c0
    and b
    ld bc, $01e0
    ld h, b
    ld bc, $01c0
    ld [hl], b
    ld bc, $0030
    ld l, [hl]
    nop
    ld a, e
    nop
    rst $38
    inc bc
    db $fc
    ccf
    rst $30
    rst $38
    rst $00
    rst $38
    db $dd
    rst $38
    ld a, e

jr_09b_5a8f:
    rst $38
    ld b, [hl]
    rst $38
    add b
    rst $38
    dec de
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
    call nz, Call_000_04ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    dec bc
    db $fc
    inc c
    di
    and d
    db $dd
    add b
    ld a, a
    jr nc, jr_09b_5a8f

    jr nz, @-$1f

    nop
    rst $38
    ld bc, $03fe
    db $fc
    add e
    ld a, h
    rrca
    ldh a, [$6f]
    sub b
    call c, Call_09b_5523
    nop
    dec a
    nop
    dec l
    nop
    xor b
    nop
    jr c, jr_09b_5ada

jr_09b_5ada:
    ret nc

    nop
    and b
    nop
    nop
    nop
    jr nz, jr_09b_5ae2

jr_09b_5ae2:
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
    ld [$0800], sp
    nop
    nop
    nop
    ld [$0100], sp
    nop
    nop
    nop
    ld bc, $8000
    nop
    add c
    nop
    dec b
    nop
    add h
    nop
    add h
    nop
    inc b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_09b_5b1e

jr_09b_5b1e:
    add b
    nop
    adc h
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    stop
    stop
    add b
    nop
    dec b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0800
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    sub b
    nop
    stop
    stop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rIF], a
    ret


    rra
    ret


    rra
    ret


    rra
    ret


    ccf
    ret


    rra
    ret


    ccf
    ret


    ccf
    ret


    dec e
    ret z

    inc e
    db $e3
    nop
    rst $38
    nop
    db $fc
    inc bc
    ret nz

    inc a
    inc bc
    db $fc

jr_09b_5b83:
    ccf
    ret nz

    rst $38
    ld a, b
    rst $38
    sbc c
    rst $38
    ld a, [c]
    rst $38
    xor h
    rst $38
    add h
    rst $38
    ld de, $60ff
    rst $38
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
    ld hl, sp-$01
    inc de
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    jr z, @+$01

    ld [hl+], a
    db $fd
    inc e
    di
    jr nc, jr_09b_5b83

    jp $033c


    db $fc
    ld bc, $17fe
    add sp, $0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    nop
    rst $38
    db $fd
    nop
    ld a, e
    nop
    rst $28
    nop
    or $00
    call z, Call_09b_4b00
    nop
    dec bc
    nop
    add hl, bc
    nop
    add c
    nop
    ld bc, $0100
    nop
    add b
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    add b
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
    stop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    jr nz, jr_09b_5c10

jr_09b_5c10:
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    add c
    nop
    add e
    nop
    ld b, d
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_09b_5c26

jr_09b_5c26:
    nop
    nop
    ld [$0000], sp
    nop
    ld [$0900], sp
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub h
    nop
    stop
    nop
    nop
    ld bc, $0800
    nop
    ld [$0800], sp
    nop
    inc b
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
    rst $38
    nop
    rst $38
    nop
    add c
    ld a, [hl]
    inc h
    cp $24
    rst $38
    inc h
    cp $24
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    xor $21
    ldh a, [rIF]
    nop
    db $fc
    inc bc
    ret nz

    inc a
    inc bc
    ret nz

    ccf
    nop
    rst $38
    jr nc, @+$01

    call z, Call_000_00ff
    rst $38
    ld [hl], b
    rst $38
    and b
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    sub d
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
    jr nz, @+$01

    sbc [hl]
    rst $38
    ld d, d
    db $fd
    ld [hl], h
    ei
    sbc b
    rst $20
    call z, Call_000_00b3
    rst $38
    ld [hl+], a
    db $dd
    ld bc, $0ffe
    ldh a, [$38]
    rst $00
    db $fc
    inc bc
    ld [c], a
    dec e
    ret nz

    ccf
    sbc c
    ld h, [hl]
    rst $30
    ld [$1ce3], sp
    nop
    rst $38
    rst $38
    nop
    ld l, h
    add d
    cp $00
    pop af
    nop
    cp [hl]
    nop
    dec b
    ld hl, sp+$7e
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $10
    ld bc, $007b
    rst $38
    nop
    rla
    nop
    ld b, c
    nop
    ld b, b
    nop

jr_09b_5ce2:
    ld b, e
    nop

jr_09b_5ce4:
    ld d, c
    nop
    ld b, b
    nop
    nop
    nop

jr_09b_5cea:
    nop
    nop
    nop
    nop

jr_09b_5cee:
    ld b, b
    nop

jr_09b_5cf0:
    inc b
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
    inc b
    nop
    inc c
    nop
    nop
    nop
    inc b
    nop
    ld b, b
    nop
    ld bc, $4000
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    jr nz, jr_09b_5d18

jr_09b_5d18:
    ld bc, $1400
    nop
    sub b
    nop
    sub b
    nop
    ld [hl+], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld bc, $0500
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
    ld [de], a
    nop
    ld [de], a
    nop
    stop
    stop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [$0900], sp
    nop
    ld a, [bc]
    nop
    rlca
    nop
    ld bc, $1400
    nop
    inc de
    nop
    ld b, c
    nop
    ld b, h
    nop
    ld l, d
    nop
    ld a, [hl+]
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    jr c, jr_09b_5ce2

    jr c, jr_09b_5ce4

    inc a
    add b
    inc a
    add b
    jr c, jr_09b_5cea

    ld [hl-], a
    add b
    jr nc, jr_09b_5cee

    jr nz, jr_09b_5cf0

    dec l
    add b
    add hl, hl
    add b
    ld [hl], $80
    ccf
    nop
    ld a, h
    inc bc
    add $3f
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld [$40f7], sp
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$19
    and $03
    db $fc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp h
    ld b, e
    nop
    rst $38
    ld a, b
    add a
    ld h, l
    sbc d
    rrca
    ldh a, [$78]
    add a
    ldh [$1f], a
    rst $38
    nop
    rst $30
    nop
    ld l, a
    add b
    db $ec
    inc bc
    rst $08
    nop
    rst $38
    nop
    ld d, a
    nop
    cp l
    ld [bc], a
    ld e, [hl]
    add c
    cp e
    jr nc, jr_09b_5e30

    sbc b
    xor [hl]
    call z, $e6d7
    db $eb
    di
    push af
    ld a, c
    ld a, [$fd3c]
    ld e, $9e
    rrca
    rst $30
    rlca
    ld [hl], a
    inc bc
    or l
    ld bc, $00b6
    push af
    nop
    db $dd
    nop
    sbc a
    nop
    sbc a
    nop
    rra
    nop
    ld e, $00
    dec e
    nop
    dec e
    nop
    dec d
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    ld de, $1300
    nop
    dec bc
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
    cp [hl]
    nop
    cp [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    halt
    halt
    halt
    ld d, a
    nop
    rla
    nop
    inc de
    nop
    ld d, a
    nop
    ld e, a
    nop
    ld e, a
    nop

jr_09b_5e30:
    ld e, a
    nop
    rra
    nop
    ccf
    nop
    sbc a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    dec de
    nop
    ld e, a
    nop
    sbc [hl]
    nop
    halt
    or $00
    rst $30
    nop
    rst $30
    nop
    sub a
    nop
    or a
    nop
    sub l
    ld [bc], a
    push de
    ld [bc], a
    push de
    ld [bc], a
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    db $dd
    ld [bc], a
    rst $18
    nop
    db $dd
    nop
    rst $10
    nop
    sub e
    nop
    rst $10
    nop
    sub a
    nop
    sbc a
    nop
    sbc e
    inc b
    ld e, a
    nop
    ld a, d
    dec b

jr_09b_5e72:
    ld c, a
    jr nc, jr_09b_5e72

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
    inc bc
    db $fc
    ld c, $f1
    ld a, b
    add a
    ldh a, [rIF]
    nop
    rst $38
    ld hl, sp+$07
    ret nz

    ccf
    rst $38
    nop
    nop
    rst $38
    inc e
    db $e3
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
    ld a, d
    add l
    nop
    rst $38
    ret nz

    ccf
    adc c
    db $76
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rst $38
    nop
    jp Jump_000_3f3c


    ret nz

    or $00
    rst $18
    jr nz, jr_09b_5ecf

    ei
    db $fc
    inc bc
    nop

jr_09b_5ecf:
    rst $38
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    rst $18
    add b
    rst $18
    add b
    ld l, a
    ld b, b
    or a
    jr nz, jr_09b_5f1e

    or d
    ld e, e
    sbc d
    xor l
    call z, $e6d6
    ld l, e
    ld [hl], e
    dec [hl]
    add hl, sp
    cp d
    inc a
    cp l
    ld l, $be
    daa
    rst $08
    inc bc
    ld c, a
    ld bc, $007f
    ld d, a
    nop
    rst $10
    nop
    ld d, a
    nop
    ld d, a
    nop
    ld [hl], e
    nop
    di
    nop

jr_09b_5f06:
    di
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, a
    nop
    ld l, a
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
    rst $28
    nop

jr_09b_5f1e:
    rst $28
    nop
    rst $38
    nop
    ld a, a
    nop
    ld l, a
    nop
    ld h, a
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    ld l, a
    nop
    rst $28
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
    cp a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    rst $08
    nop
    sbc $01
    sbc $01
    ld e, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $05fa
    ld [$7f15], a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c
    cp $01
    ld a, e
    add h
    rst $18
    jr nz, jr_09b_5f06

    ld h, [hl]
    xor a
    ld d, b
    db $fc
    inc bc
    jp c, $c03f

    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$ff00]
    inc [hl]
    rlc c
    cp $24
    db $db
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0c
    di
    ld sp, $c0ce
    ccf
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    db $e3
    inc e
    nop
    rst $38
    cp $01
    inc b
    ei
    rlca
    ld hl, sp+$38
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    db $e3
    inc bc
    db $fc
    nop
    rst $38
    rra
    ldh [$f3], a
    inc c
    rst $38
    nop
    ld a, a
    add b
    call z, $ff13
    nop
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld e, $e0
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
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    add b
    cp a
    add b
    ld e, a
    ld b, b
    xor a
    jr nz, jr_09b_604c

    sub b
    xor e
    ret z

    push de
    db $e4
    ld [$f572], a
    add hl, sp
    ld a, [$fd1c]
    ld c, $fe
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    ld bc, $0101
    ld b, c
    nop
    ld h, b
    nop
    ld a, b
    jr nz, jr_09b_6096

    jr c, jr_09b_609a

    inc h
    ld a, a
    ld [hl+], a
    ld a, a
    ld hl, $387f
    ld a, a
    inc l
    ld a, a
    inc hl
    ld a, a
    jr nz, jr_09b_60a9

    jr nz, jr_09b_60ab

    jr nz, jr_09b_60ad

    jr nz, jr_09b_60af

    jr nz, jr_09b_60b1

    jr nz, jr_09b_60b3

    jr nz, jr_09b_60b5

    jr nz, jr_09b_60b7

    jr nz, jr_09b_60b9

    jr nz, jr_09b_60bb

    jr nz, jr_09b_60bd

    inc a
    ld a, a
    daa
    ld a, a
    jr nz, jr_09b_60c3

    jr nz, jr_09b_60c5

    inc a
    ld a, a
    daa
    ld a, a
    jr nz, jr_09b_60cb

jr_09b_604c:
    nop
    ld a, a
    jr nz, jr_09b_60cf

    jr nz, jr_09b_60d1

    nop
    ld a, a
    jr nz, @+$81

    nop
    ld a, a
    jr nz, jr_09b_60d9

    nop
    ld a, a
    jr nz, jr_09b_60dd

    jr nz, @+$81

    nop
    ld a, a
    jr nz, jr_09b_60e3

    cpl
    ld a, a
    jr c, jr_09b_60e7

    nop
    ld a, a
    nop
    ld a, a
    inc bc
    ld a, h
    rra
    ld h, b
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld sp, hl
    rra
    ldh [$7f], a
    add b
    cp $01
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei

jr_09b_6096:
    nop
    rst $38
    nop
    rst $38

jr_09b_609a:
    nop
    rst $38
    ld c, $f1
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    rlca

jr_09b_60a9:
    ld hl, sp+$18

jr_09b_60ab:
    rst $20
    nop

jr_09b_60ad:
    rst $38
    nop

jr_09b_60af:
    rst $38
    ld a, b

jr_09b_60b1:
    add a
    ld a, a

jr_09b_60b3:
    add b
    rst $38

jr_09b_60b5:
    nop
    rst $38

jr_09b_60b7:
    nop
    ld a, h

jr_09b_60b9:
    add e
    rst $20

jr_09b_60bb:
    jr @+$01

jr_09b_60bd:
    nop
    rlca
    ld hl, sp-$01
    nop
    rst $38

jr_09b_60c3:
    nop
    rst $38

jr_09b_60c5:
    nop
    rst $38
    nop
    ld a, [$3f00]

jr_09b_60cb:
    ret nz

    ld hl, sp+$00
    nop

jr_09b_60cf:
    cp $10

jr_09b_60d1:
    rst $38
    jr @+$01

    ld [$0cff], sp
    rst $38
    inc b

jr_09b_60d9:
    rst $30
    ld [bc], a
    di
    ld [bc], a

jr_09b_60dd:
    db $e3
    ld bc, $01c1
    add c
    nop

jr_09b_60e3:
    nop
    nop
    nop
    nop

jr_09b_60e7:
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$01
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
    add b
    ld e, a
    ld b, b
    ld c, a
    ld b, b
    xor a
    jr nz, jr_09b_615e

    sub b
    xor e
    ret z

    push de
    ld h, h
    ld l, d
    or d
    dec [hl]
    reti


    db $ed
    ld [$04f6], sp
    di
    add d
    ld [hl], c
    ld b, c
    jr nc, @+$32

    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh [rLCDC], a
    ld hl, sp+$20
    db $fc

jr_09b_6126:
    jr jr_09b_6126

    call nz, $b2ff
    rst $38
    adc [hl]
    rst $38
    add d
    rst $38
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld a, [c]
    rst $38
    sbc [hl]
    rst $38
    add d
    rst $38

jr_09b_6147:
    add d
    rst $38
    ld a, [$8eff]
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    cp [hl]
    rst $38
    ldh [rIE], a
    nop
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38

jr_09b_615e:
    nop
    rst $38
    nop
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
    ld hl, sp+$1b
    db $e4
    ld l, c
    sub [hl]
    add a
    ld a, b
    ccf
    ret nz

    rst $38
    nop
    ret nz

    ccf
    ccf
    ret nz

    adc [hl]
    ld [hl], c
    jr c, jr_09b_6147

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
    inc bc
    db $fc
    db $f4
    dec bc
    rlca
    ld hl, sp+$7f
    add b
    ld a, c
    add [hl]
    ld b, $f9
    rst $38
    nop
    ld c, $f1
    db $10
    rst $28
    pop hl
    ld e, $00
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIE], a
    nop
    add sp, $17
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    or a
    nop
    inc d
    db $eb
    or a
    ld [$009b], sp
    ld a, h
    inc bc
    nop
    rla
    nop
    rst $38
    nop
    rst $38
    ld [$0aff], sp
    rst $38
    db $10
    rst $38
    rrca
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    ld a, a
    rra
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $20
    rra
    db $e3
    rra
    pop hl
    rra
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    ccf
    ret nz

    cp a
    ldh [$df], a
    ldh [$5f], a
    ld [hl], b
    xor a
    cp b
    rst $10
    call c, $ae6b
    ld [hl], l
    sub a
    ld a, d
    ld a, [bc]
    db $fd
    ld b, $fd
    inc bc
    cp $09
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $02ff
    rst $38
    ld a, [bc]
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld [de], a
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    dec c
    rst $38
    ld sp, $03ff
    rst $38
    add hl, bc
    rst $38
    ld bc, $08ff

jr_09b_623f:
    cp $02
    db $fc
    ld [de], a
    cp $02
    db $fc
    ld [bc], a
    cp $02
    cp $05
    ld hl, sp+$05
    db $fd
    dec b
    db $fd
    dec c
    ldh a, [rTIMA]
    db $fd
    dec a
    db $fd
    ret nz

    db $fd
    nop
    rst $38
    rlca
    ld hl, sp+$5f
    and b
    jr nz, jr_09b_623f

    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $03fe
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $38

jr_09b_626d:
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ldh [$1f], a
    ld hl, sp+$07
    ret nz

    ccf
    and b
    ld e, a
    add b
    ld a, a
    ld [bc], a
    db $fd
    ld bc, $4ffe
    or b
    ccf
    ret nz

    nop
    rst $38
    add b
    ld a, a
    ld a, [hl]
    add c
    ld c, b
    or a
    jr nz, jr_09b_626d

    ld [bc], a
    db $fd
    db $fc
    inc bc
    ldh a, [rIF]
    add d
    ld a, l
    nop
    rst $38
    ei

jr_09b_6299:
    inc b
    ld bc, $0ffe
    ldh a, [$f0]
    rrca
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and e
    ld e, h
    inc hl
    call c, Call_000_01fe
    rst $38
    nop
    rst $38
    nop
    rst $00
    jr c, jr_09b_6299

    inc e
    rst $38
    nop
    cp $01
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
    ld [de], a
    rst $38
    nop
    rst $38
    inc sp
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
    add b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38

jr_09b_62e5:
    rst $38
    rst $38
    rst $38
    ret nz

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
    ld hl, sp+$07
    ld hl, sp-$79
    ld a, b
    rst $00
    jr c, jr_09b_62e5

    jr @-$07

    adc b
    rst $38
    inc c
    cp $5e
    cp $fe
    cp $1e
    cp $3d
    db $fd
    ld a, l
    db $fd
    dec e
    db $fd
    dec c
    db $fd
    dec hl
    ei
    dec de
    ld a, [$7b8b]
    db $db
    cp b
    ld h, a
    rst $10
    rst $30
    ldh [rPCM34], a
    rst $30
    rst $28
    ldh [$ef], a

Call_09b_6323:
    rst $28
    rst $28
    ldh [$ef], a
    rst $28
    rst $18
    ret nz

    rst $18
    rst $18
    ld e, a
    ret nz

    rst $18
    rst $18
    cp a
    add b
    cp a
    cp a
    cp a
    add b
    ld a, a
    ld a, a
    ld a, a
    nop
    ld a, a
    ld a, a
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $0ef1


    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    pop bc
    ld a, $fe
    ld bc, $04fb
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
    ld h, b
    sbc a
    nop
    rst $38
    rra
    ldh [rP1], a

jr_09b_637b:
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ld a, b
    add a
    nop

jr_09b_6387:
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld hl, $c0de
    ccf
    jr jr_09b_637b

    ld a, d
    add l
    ld e, $e1
    pop bc
    ld a, $ce
    ld sp, $01fe
    rra
    ldh [rP1], a
    rst $38
    ret nz

    ccf
    cp $01
    jr nz, jr_09b_6387

    ld hl, sp+$07
    rst $38
    nop
    db $fc
    inc bc
    inc a
    jp $3fc0


    di
    inc c
    ldh [$1f], a
    dec b
    ld a, d
    rlca
    ld hl, sp+$03
    db $fc
    rst $38
    nop
    nop
    rst $38
    ei
    rst $38
    dec hl
    rst $38
    ld c, d
    rst $38
    add c
    rst $38
    sub d
    rst $38
    nop
    rst $38
    sbc e
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld a, a
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    inc de
    rst $28
    nop
    rst $38
    ld de, $08ff
    rst $38
    nop
    rst $38
    ret nz

    ccf
    dec e
    ld [c], a
    ret nz

    ccf
    cp d
    ld b, l
    cp $01
    rst $38
    nop
    rst $38

jr_09b_6451:
    nop
    ldh [$1f], a
    rrca
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $28
    db $10
    sbc e
    ld h, h
    inc bc
    db $fc
    rlca
    ld hl, sp+$0e
    pop af
    jr jr_09b_6451

    dec b
    ld a, [$fc03]
    rrca
    ldh a, [$5c]
    and e
    inc b
    ei
    ccf
    ret nz

    cp a
    ld b, b
    add a
    ld a, b
    nop
    rst $38
    rlca
    ld hl, sp-$01
    nop
    rra
    ldh [$c0], a
    ccf
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add a
    ld a, b
    ld [$fff7], sp
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    rst $38
    nop
    cp $01
    add a
    ld a, b
    ld hl, sp+$07
    nop
    rst $38
    cp $ff
    ld e, h
    rst $38
    rra
    rst $38
    sub b
    rst $38
    ld b, a
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    add b
    rst $38
    ret nz

    db $fc
    jp $ecf3


    cp $f1
    ld sp, hl
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$03
    ld a, [$f8ff]
    db $fd
    ld a, [$f9fe]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$07
    ld hl, sp+$05
    ld a, [$fb04]
    dec b
    ld a, [$f906]
    ld b, $f9
    ld b, $f9
    ld b, $f9
    dec b
    ld a, [$fb04]
    ld b, $f9
    rlca
    ld hl, sp+$05
    ld a, [$f2f5]
    push af
    ld [bc], a
    rst $30
    ldh a, [$f7]
    nop
    push af
    ld a, [c]
    push af
    ld [bc], a
    rst $30
    ldh a, [$f7]
    nop
    rst $30
    ldh a, [$f7]
    nop
    rst $30
    ldh a, [$f7]
    nop
    rst $30
    ldh a, [$f7]
    nop
    rst $30
    ldh a, [$f7]
    nop
    rst $30
    ldh a, [$f7]
    nop
    rst $28
    add sp, -$11
    nop
    rst $28
    add sp, -$11
    nop
    rst $28
    add sp, -$11
    nop
    rst $28
    add sp, -$11
    nop
    rst $28
    add sp, -$11
    nop
    rst $28
    add sp, -$11
    add sp, -$11
    nop
    rst $28
    add sp, -$11
    add sp, $00
    nop
    add sp, -$18
    rst $28
    rst $28
    db $ec
    rlca
    rst $38
    ld bc, $80ff
    rst $38
    rlca
    rst $38
    ld [$ff07], sp
    ld [hl], b
    rst $38
    nop
    rst $38
    db $e4
    rra
    ld e, $e1
    ld [hl], b
    adc a
    rlca
    ld hl, sp-$02
    ld bc, $00ff
    rst $38
    nop
    rst $30
    ld [$f00f], sp
    ei
    nop
    rst $28
    nop
    ldh [$1f], a
    ei
    nop
    ld [hl], a
    nop
    rst $38
    nop
    sbc c
    ld h, b
    ccf
    ret nz

    ld [hl], h
    add b
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rrca
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$87]
    ld a, b
    rst $38
    nop
    add b
    ld a, a
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call c, Call_09b_6323
    sbc h
    rst $38
    nop
    ld b, a
    cp b
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
    nop
    rst $38
    nop
    rst $38
    ld d, a
    rst $38
    ccf
    rst $38
    rst $30
    rst $38
    sub a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    add $3f
    inc a
    rst $00
    db $e4
    rra
    ld e, $e7
    cp [hl]
    ld b, a
    xor [hl]
    ld d, a
    ld a, $c7
    ld l, [hl]
    sub a
    xor [hl]
    ld d, a
    cp $07
    ld l, [hl]
    sub a
    cp $07
    cp $07
    call c, Call_09b_5427
    xor a
    db $f4
    rrca
    cp h
    ld b, a
    call c, $ed27
    rla
    db $fc
    rlca
    db $ec
    rla
    xor h
    ld d, a
    ld a, h
    add a
    ld a, [hl]
    add a
    xor $17
    cp [hl]
    ld b, a
    adc $37
    xor $17
    cpl
    rst $10
    ccf
    rst $00
    ld [hl], a
    adc e
    ld l, a
    sub e
    ld a, a
    add e
    db $eb
    rla
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $28
    inc de
    rst $38
    inc bc
    rst $38
    inc bc
    rst $30
    dec bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    or $0b
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    cp $03
    db $fc
    inc bc
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    cp $03
    cp $03
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    add b
    rst $20
    db $fc
    adc a
    db $fc
    ei
    inc e
    rst $38
    nop
    rst $38
    db $fc
    cp $ff
    cp $ff
    ld l, a
    rst $38
    dec c
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    sbc h
    ld h, e
    nop
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    sbc b
    ld h, a
    ld hl, sp+$07
    ldh [$1f], a
    ld a, [hl]
    add c
    ldh a, [rIF]
    cp b
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
    rst $38
    nop
    ccf
    ret nz

    ret nz

    ccf
    inc a
    jp $ff00


    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld hl, sp+$07
    add b
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    push af
    rst $38
    push de
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $dd
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld e, l
    rst $38
    inc de
    rst $38
    ld b, e
    rst $38
    dec bc
    rst $38
    ld bc, $85ff
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
    add b
    rst $38
    nop
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $29ff
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld [bc], a
    rst $38
    ld c, e
    rst $38
    dec c
    rst $38
    adc a
    rst $38
    sub a
    rst $38
    ld e, [hl]
    rst $38
    ld a, a
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
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rra
    rst $20
    rst $20
    rra
    db $e3
    rra
    rst $28
    inc de
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
    nop
    ld a, a
    add b
    inc bc
    db $fc
    ld a, [hl]
    add c
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    inc c
    di
    ldh [$1f], a
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
    or h
    rst $38
    or b
    rst $38
    ld a, [c]
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    and b
    rst $38
    add b
    rst $38
    and b
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
    nop
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
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    jp nc, $d0ff

    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [$80ff], sp
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ld d, b
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    call c, $fcff
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, a
    cp $7f
    cp $3f
    cp $3f
    cp $3f
    cp $1f
    cp $1f
    cp $0f
    cp $0f
    rst $38
    rlca
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $feff
    rst $38
    ret nz

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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
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
    add b
    rst $38
    add c
    rst $38
    ld bc, $80ff
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
    adc b
    rst $38
    ld [$20ff], sp
    rst $38
    jr z, @+$01

    xor b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

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
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $02
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $0b
    rla
    ld [bc], a
    ld [bc], a
    jr jr_09b_692e

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $02
    rra
    jr nz, @+$23

    ld [hl+], a
    dec bc
    inc hl
    inc h
    dec h
    ld [bc], a
    ld h, $27
    jr z, jr_09b_6951

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_09b_692e:
    dec bc
    dec bc
    jr nc, jr_09b_6963

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09b_6973

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
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_09b_6951:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
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

jr_09b_6963:
    ld h, c
    ld d, l
    ld d, l
    ld d, l
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

jr_09b_6973:
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
    ld [bc], a
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


    jp z, $cb55

    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    ld d, l
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_09b_6a4b

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101

jr_09b_6a4b:
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    cp $ff
    ld a, [$e2ff]
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    and b

jr_09b_6b87:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $10
    rst $28
    db $10
    rst $28
    jr nc, jr_09b_6b87

    ld sp, $21ce
    sbc $26
    reti


    dec h
    jp c, $da25

    dec b
    ld a, [$ea15]
    dec b
    ld a, [$fb04]
    ld b, $f9
    ld b, $f9
    inc b
    ei
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld b, $f9
    ld b, $f9
    ld c, $f1
    ld [bc], a
    db $fd
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
    ld [bc], a
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    ld de, $10ff
    rst $38
    ld de, $30ff
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl-], a
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld [hl], l
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
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
    ei
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    add d
    rst $38
    add d
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
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld b, $f9
    ld [bc], a
    db $fd
    add d
    ld a, l
    add d
    ld a, l
    and [hl]
    ld e, c
    and [hl]
    ld e, c
    db $e4
    dec de
    call z, $cc33
    inc sp
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add [hl]
    ld a, e
    sub [hl]
    ld l, e
    sbc h
    ld h, e
    sbc h
    ld h, e
    ld e, l
    and d
    ld e, l
    and d
    ld e, [hl]
    and c
    sbc h
    ld h, e
    sbc h
    ld h, e
    adc h
    ld [hl], a
    xor b
    ld d, a
    ld c, b
    or a
    ld c, b
    or a
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    add b
    ld a, a
    add d
    ld a, l
    ld a, [bc]
    push af
    inc c
    di
    inc c
    di
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld b, $ff
    add h
    rst $38
    ld d, h
    rst $38
    add hl, bc
    rst $38
    ld c, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld b, b
    rst $38
    ld d, c
    rst $38
    add d
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $21ff
    rst $38
    ld hl, $01ff
    rst $38
    add c
    rst $38
    add c
    rst $38
    add l
    rst $38
    adc l
    rst $38
    adc l
    rst $38
    sbc l
    rst $38
    cp l
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    and d
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld [hl-], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
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
    add l
    cp $85
    cp $81
    cp $80
    rst $38
    xor d
    db $fd
    jr z, @+$01

    ld hl, $05fe
    ld a, [$fe01]
    ld bc, $4afe
    push af
    ld b, $f9
    ld b, $f9
    ld l, $f1
    inc l
    db $d3
    cp h
    jp $93ec


    xor l
    ld d, d
    xor c
    ld d, [hl]
    ld c, c
    or [hl]
    ld de, $11ee
    xor $21
    sbc $a1
    ld e, [hl]
    and c
    ld e, [hl]
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    jr nz, @-$1f

    jr nz, @-$1f

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
    ld [$88ff], sp
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    ld b, $ff
    ld a, [hl-]
    rst $38
    ld [$11ff], sp
    rst $38
    pop hl
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    rla
    rst $38
    rla
    rst $38
    sbc a
    rst $38
    sbc a
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
    ld [hl], a
    rst $38
    ld d, a
    rst $38
    ld d, a
    rst $38
    scf
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld h, c
    rst $38
    ld b, c
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

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
    ld bc, $01fe
    cp $00
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add h
    ld a, e
    inc b
    ei
    ld [$0cf7], sp
    di
    inc c
    di
    sub h
    ld l, e
    sub h
    ld l, e
    sub h
    ld l, e
    or h
    ld c, e
    cp b
    ld b, a
    sbc b
    ld h, a
    sbc b
    ld h, a
    ret c

jr_09b_6e03:
    daa
    ret c

    daa
    ldh a, [rIF]
    or b
    ld c, a
    or c

jr_09b_6e0b:
    ld c, [hl]
    or b

jr_09b_6e0d:
    ld c, a
    and b

jr_09b_6e0f:
    ld e, a
    and b
    ld e, a
    sub b
    ld l, a
    sub b
    ld l, a
    or b
    ld c, a
    or b
    ld c, a
    or h
    ld c, e
    inc h
    db $db
    inc l
    db $d3
    inc l
    db $d3
    jr jr_09b_6e0b

    ld [$48f7], sp
    or a
    ld c, b
    or a
    jr z, jr_09b_6e03

    jr nz, jr_09b_6e0d

    jr z, jr_09b_6e0f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ld c, h
    rst $38
    ld c, l
    rst $38
    ld b, l
    rst $38
    ld d, e
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld h, a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
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
    ei
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    call nz, $c0fb
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add h
    ei
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    ld bc, $01ff
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    inc b
    ei
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
    add d
    ld a, a
    ld b, d
    cp a
    ld b, d
    cp a
    ld b, [hl]
    cp a
    add $3f
    add $3f
    add $3f
    add $3f
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    adc d
    ld a, a
    adc d
    ld a, a
    adc d
    ld a, a
    sbc d
    ld a, a
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl-]
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
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $db
    rst $38
    db $db
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $f9
    cp $f9
    cp $f1
    cp $f0
    rst $38
    pop af
    cp $fb
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    db $fc
    inc bc
    db $fc
    inc hl
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    db $10
    rst $38
    ld [hl-], a
    db $fd
    ld [de], a
    db $fd
    ld [de], a
    db $fd
    ld d, b
    rst $38
    db $10
    rst $38
    ld [de], a
    db $fd
    ld [bc], a
    db $fd
    sub d
    db $fd
    add b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    cp $83
    db $fc
    add e
    db $fc
    ld bc, $23fe
    db $fc
    ld bc, $03fe
    db $fc
    ld b, e
    db $fc
    rlca
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$07
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$38
    rst $38
    ld a, l
    ld a, [$fa7d]
    ld a, l
    ld a, [$fa7d]
    ld a, b
    rst $38
    ld a, a
    ld hl, sp+$7f
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ret c

    rst $38
    ei
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$0d
    db $fc
    rst $38
    ldh a, [$f7]
    ld hl, sp-$03
    ld a, [c]
    rst $30
    ld hl, sp-$0a
    ld sp, hl
    db $fc
    db $e3
    pop hl
    cp $ff
    ldh [$7f], a
    ldh [$ef], a
    ldh a, [$cc]
    di
    ret z

    rst $30
    ld sp, hl

jr_09b_7031:
    add $ef
    ret nc

    rst $38
    ret nz

    rst $38
    add b
    add a
    ld hl, sp-$61
    ldh [$80], a
    rst $38
    add c
    cp $00
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
    jr nz, jr_09b_7031

    inc h
    db $db
    ld h, l
    sbc d
    ld c, a
    or b
    ld c, [hl]
    or c
    ld e, a
    and b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $18

jr_09b_7063:
    jr nz, jr_09b_7063

    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    cp h
    ld b, e
    and b
    rst $38
    ldh [rIE], a
    xor b
    rst $38
    add [hl]
    rst $38
    or [hl]
    rst $38
    db $e4
    rst $38
    jp $a4ff


    rst $38
    add sp, -$01
    ldh a, [rIE]
    cp $ff
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
    rst $38
    nop
    rra
    ldh [$c0], a
    ccf
    call nz, Call_09b_403b
    cp a
    daa
    ret c

    cpl
    ret nc

    cpl
    ret nc

    ccf
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$57
    xor b
    ld d, a
    xor b
    ld d, a

jr_09b_70e1:
    xor b
    ld d, a
    xor b
    rlca
    ld hl, sp-$01
    nop
    add b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld b, $ff
    dec a
    ei
    rst $38
    ld bc, $03fc
    ld [hl], b
    adc a
    rst $38

jr_09b_70f9:
    nop
    ldh [$1f], a
    or [hl]
    ld c, c
    ld h, a
    sbc b
    jr nz, jr_09b_70e1

    ld a, b
    add a
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    sbc a
    ld h, b
    ld a, [hl]
    add c
    ld bc, $fefe
    ld bc, $00ff
    ld hl, sp+$07
    ld hl, sp+$07
    add b
    ld a, a
    rst $38
    nop
    inc bc
    db $fc
    rst $38
    nop
    rlca
    ld hl, sp+$78
    add a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc bc
    db $fc
    jr c, jr_09b_70f9

    ld a, a
    add b
    sbc l
    ld h, d
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    db $fd
    nop
    rst $38
    nop
    cp $00
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
    inc bc
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    ret c

    rst $38
    ld [$20ff], sp
    rst $38
    pop af
    rst $38
    jp hl


    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    nop
    rst $38
    add sp, -$01
    ld [c], a
    rst $38
    pop hl
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
    add a
    rlca
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    ld hl, sp+$78
    add a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    inc bc
    cp $01
    push de
    ld a, [hl+]
    call z, $c933
    ld [hl], $c9
    ld [hl], $1d
    ld [c], a
    rst $38
    nop
    db $10
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    jr c, @+$01

    cp $ff
    ldh [rIE], a
    ld de, $01ff
    cp $20
    rst $18
    jr nz, @-$1f

    nop
    rst $38
    ld [$10f7], sp
    rst $28
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld a, [hl]
    add c
    add b
    ld a, a
    nop
    rst $38
    ldh [$1f], a
    nop
    rst $38
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    cp $01
    db $fc
    inc bc
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    db $f4
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rra
    ldh [rIE], a
    nop
    db $f4
    dec bc
    rst $38
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
    sbc e
    ld h, h
    cp $00
    rst $28
    nop
    ld a, [$e900]
    nop
    ld hl, sp+$00
    cp e
    nop
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    sub b
    rst $38
    ld b, $ff
    add h
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    inc c
    rst $38
    call nz, Call_09b_44ff
    rst $38
    add h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    ld bc, $748b
    adc b
    ld [hl], a
    xor b
    ld d, a
    ld [c], a
    dec e

jr_09b_7266:
    ld [c], a
    dec e
    cp $01
    and $19
    rst $20
    jr @-$0f

    db $10
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    ei
    inc b
    db $fd
    ld [bc], a
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_09b_7266

    jr nz, @+$01

    nop
    db $db
    inc h
    reti


    ld h, $9b
    ld h, h
    di
    inc c
    db $e3
    inc e
    and e
    ld e, h
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    sbc [hl]
    ld h, c
    db $fc
    inc bc
    adc c
    db $76
    db $fd
    ld [bc], a
    sub l
    ld l, d
    dec h
    jp c, Jump_000_00ff

    ld hl, sp+$07
    jp nc, $ea2d

    dec d
    jp z, $ce35

    ld sp, $21de
    add b
    ld a, a
    ld a, a
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld a, [hl-]
    rst $38
    rst $10
    add sp, $00
    rst $38
    ld b, h
    rst $38
    db $10
    rst $38
    ld [$00ff], sp
    rst $38
    ld a, [bc]
    rst $38
    inc c
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
    inc b
    rst $38
    nop
    rst $38
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
    nop
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
    ld a, [hl]
    add c
    sub $01
    cp $01
    push af
    ld [bc], a
    rst $08
    nop
    cp a
    nop
    db $ed
    ld [de], a
    cp a
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    ld a, a
    nop
    db $10
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rra
    rst $38
    inc b
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
    ld bc, $01ff
    rst $38
    ld [bc], a
    cp $02
    cp $06
    db $fc
    rrca
    db $fc
    rrca
    ld hl, sp+$05
    cp $06
    db $fd

jr_09b_734e:
    rlca
    db $fc
    db $fd
    ld hl, sp+$1d
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec e
    nop
    dec b
    ld hl, sp+$65
    sbc b
    dec h
    ret c

    ld h, l
    sbc b
    ld b, l
    cp b
    inc b
    ld hl, sp+$17
    ld [$e917], a
    rla
    add sp, -$49
    ld c, b
    sub a
    ld l, b
    add a
    ld a, b
    add a
    ld a, b
    and a
    ld e, b
    add a
    ld a, b
    ld d, a
    xor b
    rla
    add sp, $07
    ld hl, sp-$79
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    rst $00
    jr c, jr_09b_734e

    ld a, [hl-]
    add l
    ld a, d
    add l
    ld a, d
    sub h
    ld l, d
    call nz, $c43a
    ld a, [hl-]
    push bc
    ld a, [hl-]
    add l
    ld a, d
    inc de
    db $ec
    ld h, d
    sbc l
    jp nz, $c23d

    dec a
    add $39
    jp nc, $e02d

    rra
    add b
    ld a, a
    add b
    ld a, a
    call nz, $c43b
    dec sp
    ld h, h
    sbc e
    inc h
    db $db
    db $10
    rst $28
    rst $10
    jr z, jr_09b_73be

    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld c, $ff

jr_09b_73be:
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
    add b
    rst $38
    nop
    rst $38
    ld hl, $00ff
    rst $38
    ld b, b
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    inc a
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld [$00f7], sp
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
    ld hl, sp+$07
    ret


    ld b, $bd
    ld [bc], a
    ld c, d
    ld hl, $2057
    adc b
    ld b, b
    cp e
    ld b, h
    ld a, a
    nop
    db $fd
    ld [bc], a
    adc h
    inc de
    cp $01
    cp [hl]
    ld bc, $00df
    rst $38
    nop
    rst $38
    nop
    db $fc
    rst $38
    rst $38
    rst $38
    add l
    rst $38
    rst $38
    cp $6b
    cp $ff
    db $fc
    rst $18
    ld hl, sp-$11
    ld hl, sp-$21
    ldh a, [$1f]
    ldh a, [$27]
    ldh [rSCX], a
    ret nz

    ld b, e
    ret nz

    add c
    add b
    add b
    add b
    nop
    ld bc, $0100
    ld bc, $0302
    inc b
    rlca
    ld [$0887], sp
    rst $08
    db $10
    sbc a
    ld h, b
    ld a, a
    add b
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    ld a, l
    ld bc, $027a
    ld [hl], l
    inc b
    ld l, e
    add hl, bc
    ld d, a
    ld [de], a
    cpl
    inc h
    rst $18
    ret z

    cp a
    db $10
    ld a, a

jr_09b_7467:
    jr nz, jr_09b_7467

    ld b, b
    rst $38
    add b
    cp $00
    cp $00
    db $f4
    nop
    or $00
    or [hl]
    nop
    or [hl]
    nop
    scf
    nop
    scf
    nop
    or a
    nop
    sub [hl]
    nop
    sbc [hl]
    nop
    sbc a
    nop
    rst $18
    nop
    rst $10
    nop
    or a
    nop
    cp a
    nop
    rst $30
    nop
    cp $00
    sbc $00
    adc $00
    xor $00
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    sbc a
    jr nz, @+$01

    nop
    cp $01
    rst $28
    db $10
    xor $11
    ld l, l
    sub d
    ld l, l
    sub d
    ld a, l
    add d
    ld c, l
    or d
    ld c, h
    or e
    ld b, a
    cp b
    ld b, a
    cp b
    db $eb
    inc d
    ld a, [$ff05]
    ldh a, [rTAC]
    rst $38
    rra
    rst $38
    ccf
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
    inc b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    and b
    rst $38
    db $e4
    rst $38
    ld [c], a
    rst $38
    add c
    rst $38
    jp nz, Jump_000_3fff

    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld b, c
    cp [hl]

jr_09b_74fa:
    cp $01
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    nop
    rst $38
    add b
    ld a, a
    cp $01
    ld h, b
    sbc a
    nop
    rst $38
    cpl
    ld d, b
    ld hl, sp+$07
    rst $38
    nop
    cp $01
    cp a
    ld b, b
    pop af
    ld c, $ff
    nop
    rst $38
    nop
    adc a
    ld [hl], b
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

jr_09b_752a:
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_09b_74fa

    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ei
    ld bc, $02f6
    db $ed
    inc b
    db $db
    add hl, bc
    or a
    inc de
    ld l, a
    ld h, $df
    ld c, h
    cp a
    sbc b
    ld a, a
    jr nc, @+$01

    ld h, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop

jr_09b_7562:
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    rst $28
    nop
    rst $38
    nop
    or [hl]
    nop
    or [hl]
    nop
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    db $fd
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    or $00
    db $dd
    jr nz, jr_09b_752a

    ld h, b
    rst $18
    jr nz, jr_09b_7562

    inc l
    db $db
    inc h
    add $20
    and [hl]
    ld b, b
    adc $01
    ld c, h
    add c
    call z, $bb03
    ld b, h
    di
    inc c
    db $d3
    inc l
    and e
    ld e, h
    db $eb
    inc d
    adc e
    ld [hl], h
    sbc e
    ld h, h
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    ld e, $ff
    ld hl, $2dff
    rst $38
    dec l
    rst $38
    dec h
    rst $38
    add hl, de
    ld a, a
    add [hl]
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    nop
    rst $38
    jr @+$01

    jp nz, $e0ff

    rst $38
    db $10
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

jr_09b_75e4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, h
    rst $38
    nop
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
    ldh [$1f], a
    nop
    rst $38
    ld [hl-], a
    call $ff00
    ld c, $f1
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl-], a
    call $fe01
    rst $38
    nop
    nop
    rst $38
    inc bc
    db $fc
    db $fd
    ld [bc], a
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
    rst $28
    db $10
    rst $18
    jr nz, jr_09b_75e4

    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ei
    ld bc, $03f7
    xor $06
    db $dd
    inc c
    ei
    add hl, de
    rst $30
    inc sp
    ld l, a
    ld h, [hl]
    rst $18
    ld c, [hl]
    cp a
    sbc d
    ld a, a
    jr nc, @+$01

    ld h, b
    rst $38
    ret nz

jr_09b_764c:
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
    ei
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fd
    nop
    sbc $00
    rst $38
    nop
    rst $18
    nop
    sbc $00
    cp [hl]
    nop
    sub a
    nop
    sub a
    nop
    sbc a
    nop
    cp a
    nop
    db $fd
    nop
    push af
    nop
    push af
    nop
    push hl
    nop
    rst $38
    nop
    rst $20
    nop
    rst $20
    nop
    rst $28
    nop
    rst $28
    nop
    db $fd
    nop
    ld a, a
    nop
    ld a, l
    nop
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    cp e
    ld b, b
    rst $28
    nop
    ei
    nop
    db $d3
    jr z, @+$58

    xor b
    ld [hl], $c8
    cp c
    ld b, d
    db $ec
    ld [bc], a
    db $fd
    ld [bc], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_09b_764c

    ld h, b
    sub a
    ld l, b
    sub b
    ld l, a
    sub e
    ld l, h
    sub l
    ld l, d
    sub h
    ld l, e
    inc d
    db $eb
    inc h
    db $db
    inc h

jr_09b_76bd:
    db $db
    add c
    ld a, [hl]
    ld hl, sp-$79
    rst $38

jr_09b_76c3:
    ld hl, sp-$08
    rst $38
    nop
    rst $38
    ld h, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add hl, de
    rst $38
    ret nc

    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    add e
    rst $38
    ld [$1fff], sp
    rst $38
    nop
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nc, jr_09b_76c3

    jr c, jr_09b_76bd

    ld a, a
    add b
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    dec e
    ld [c], a
    db $e3
    inc e
    pop bc
    ld a, $70
    adc a
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld bc, $fcfe
    inc bc
    cp $00
    db $fd
    nop
    ei
    ld bc, $03f7
    xor $06
    db $dd
    inc c
    cp e
    add hl, de
    ld [hl], a
    inc sp
    rst $28
    ld h, [hl]
    rst $18
    call z, $98bf
    ld a, a
    jr nc, @+$01

    ld h, b
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
    ld a, [$fb00]
    nop
    or $00
    db $f4
    nop
    db $e3
    nop
    db $ed
    nop
    ei
    nop
    db $ed
    nop
    db $fd
    nop
    db $ed
    nop
    push af
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    db $eb
    nop
    rst $30
    nop
    rst $30
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    or a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp $00
    cp [hl]
    nop
    ld a, $00
    inc [hl]
    nop
    or $00
    ccf
    nop
    cp a
    nop
    cp e
    nop
    ei
    nop
    cp e
    nop
    or e
    nop
    rst $20
    nop
    rst $20
    nop
    db $dd
    nop
    rst $28
    nop
    rst $18
    nop
    push de
    nop
    db $dd
    nop
    db $dd
    nop
    db $fd
    nop
    rst $38
    nop
    cp a
    ld b, b
    xor a
    ld b, b
    xor a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ld c, a
    or b
    inc b
    ei
    ld [de], a
    db $ed
    add $39
    inc a
    jp $fc03


    add e
    rst $38
    ld sp, $7bff
    rst $38
    cpl
    rst $38
    add c
    rst $38
    dec bc
    rst $38
    add e
    rst $38
    cp a
    rst $38
    ld bc, $37ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl-], a
    rst $38
    dec b
    rst $38
    pop af
    rst $38
    ld a, [bc]
    rst $38
    inc de
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
    add b
    ld a, a
    and b
    ld e, a
    ld bc, $00fe
    rst $38
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ld hl, sp+$07
    db $fc
    inc bc
    dec a
    jp nz, Jump_000_20df

    ld b, a
    cp b
    ld bc, $fffe
    nop
    adc a
    ld [hl], b
    ret nz

    ccf
    nop
    rst $38
    rst $28
    ld h, a
    rst $18
    adc $bf
    sbc h
    ld a, a
    jr c, @+$01

    ld [hl], b
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
    ld a, e
    nop
    dec hl
    nop
    cp [hl]
    nop
    cp e
    nop
    pop af
    nop
    sub a
    nop
    sbc d
    nop
    or e
    nop
    and a
    nop
    rst $20
    nop
    rst $20
    nop
    rst $28
    nop
    rst $28
    nop
    db $ed
    nop
    db $fd
    nop
    or l
    nop
    db $db
    nop
    ei
    nop
    push af
    nop
    cp c
    nop
    pop de
    nop
    pop af
    nop
    db $fd
    nop
    and l
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    xor c
    nop
    ld [hl], e
    nop
    ld d, a
    nop
    ld e, l
    nop
    ld h, c
    nop
    ld h, d
    nop
    and a
    nop
    dec sp
    nop
    rst $38
    nop
    rst $28
    nop
    di
    nop
    ei
    nop
    cp $00
    sbc $00
    db $db
    nop
    db $fc
    nop
    sbc h
    nop
    sbc h
    nop
    sbc l
    nop
    sbc c
    nop
    cp e
    nop
    di
    nop
    rst $38
    nop
    rst $10
    nop
    rst $30
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    dec a
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rrca
    rst $38
    db $f4

jr_09b_78bf:
    rst $38
    and a

jr_09b_78c1:
    rst $38
    inc bc
    rst $38
    and h
    rst $38
    ld bc, $d3ff
    rst $38
    ret c

    rst $38
    nop
    rst $38
    inc e
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
    inc bc
    db $fc
    jr nz, jr_09b_78c1

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
    sub h
    ld l, e
    jr nc, jr_09b_78bf

    ret nz

    ccf
    add h
    ld a, e
    ret nz

    ccf
    add $39
    ld [hl], b
    adc a
    adc b
    ld [hl], a
    ld a, [hl]
    add c
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
    cp $00
    cp $00
    cp $00
    cp $00
    xor $00
    and $00
    push hl
    nop
    and l
    nop
    xor [hl]
    nop
    push af
    nop
    add h
    nop
    add h
    nop
    dec a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $10
    nop
    ld [hl], l
    nop
    or l
    nop
    or a
    nop
    or a
    nop
    rst $30
    nop
    ld [hl], a
    nop
    ld d, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld d, a
    nop
    rst $30
    nop
    rst $10
    nop
    rst $10
    nop
    sbc a
    nop
    sbc a
    nop
    cp a
    nop
    sbc $00
    cp a
    nop
    rst $18
    nop
    ld e, a
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $18
    nop
    db $eb
    nop
    rst $38
    nop
    ld a, a
    nop
    xor a
    nop
    xor a
    nop
    rst $30
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
    ei
    nop
    db $eb
    nop
    cp e
    nop
    cp e
    nop
    cp e
    nop
    ld a, [$fa00]
    nop
    cp $00
    xor $00
    xor $00
    push hl
    nop
    push hl
    nop
    push bc
    nop
    call nz, $ec00
    nop
    db $ec
    nop
    ld l, h
    nop
    db $f4
    nop
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
    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    ld h, e
    rst $38
    adc l
    rst $38
    di
    rst $38
    ld e, c
    rst $38
    db $10
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    inc l
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
    inc c
    di
    rst $20
    jr jr_09b_79d3

jr_09b_79d3:
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$90f7], sp
    ld l, a
    ld bc, $20fe
    rst $18
    ld [$70f7], sp
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add sp, $00
    ld [$ee00], a
    nop
    rst $28
    nop
    rst $20
    nop
    rst $28
    nop
    xor c
    nop
    adc d
    nop
    adc d
    nop
    sbc [hl]
    nop
    sbc [hl]
    nop
    call nc, $d400
    nop
    call nc, $f400
    nop
    cp h
    nop
    cp h
    nop
    xor [hl]
    nop
    xor $00
    or $00
    rst $30
    nop
    rst $30
    nop
    rst $10
    nop
    rst $10
    nop
    rst $28
    nop
    ld l, a
    nop
    xor $00
    xor $00
    xor $00
    sbc $00
    cp [hl]
    nop
    cp [hl]
    nop
    cp $00
    rst $38
    nop
    or a
    nop
    or a
    nop
    rst $30
    nop
    or [hl]
    nop
    or b
    nop
    xor $00
    xor $00
    ld a, [$fb00]
    nop
    ld a, e
    nop
    ld a, d
    nop
    ld a, d
    nop
    ld a, d
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld [c], a
    nop
    ld [c], a
    nop
    ldh [rP1], a
    ldh a, [rP1]
    or b
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    and c
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    and d
    nop
    and c
    nop
    and c
    nop
    and c
    nop
    and c
    nop
    and l
    nop
    sub l
    nop
    push bc
    nop
    jp $c000


    inc bc
    and b
    rlca
    jr nc, jr_09b_7a8d

    ld sp, $1106
    ld b, $11
    ld b, $51

jr_09b_7a8d:
    ld b, $51
    ld b, $11
    ld b, $11
    ld b, $b1
    ld b, $b1
    ld b, $f9
    ld b, $f8
    rlca
    db $fc
    inc bc
    rst $38
    nop
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
    adc a
    rst $38
    cp $ff
    ccf
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld e, [hl]
    rst $38
    add b
    rst $38
    reti


    rst $38
    call c, Call_000_00ff
    rst $38
    nop
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
    ld bc, $80fe
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    ld b, b
    cp a
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld e, $e1
    call c, $cb23
    nop
    cp [hl]
    nop
    cp d
    nop
    and a
    nop
    and a
    nop
    add a
    nop
    adc a
    nop
    sbc e
    nop
    xor e
    nop
    xor a
    nop
    xor [hl]
    nop
    ld l, d
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld [hl], a
    nop
    or $00
    sub $00
    sub $00
    and $00
    ld h, [hl]
    nop
    ld [hl], $00
    xor e
    nop
    rst $00
    nop
    jp nz, $4200

    nop
    ld b, e
    nop
    jp $a300


    nop
    and e
    nop
    ld hl, $1100
    nop
    inc d
    nop
    stop
    inc b
    nop
    ld b, $00
    nop
    nop
    add [hl]
    nop
    sub a
    nop
    ld [bc], a
    nop
    ld [hl+], a
    nop
    jr nz, jr_09b_7b4a

jr_09b_7b4a:
    ld hl, $1100
    nop
    ld b, c
    nop
    jr nz, jr_09b_7b52

jr_09b_7b52:
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld d, b
    nop
    ld [hl], b
    nop
    ld a, d
    nop
    cp d
    nop
    cp c
    nop
    sbc c
    nop
    sbc b
    nop
    stop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    sub l
    rst $38
    dec d
    ccf
    pop bc
    inc bc
    db $fc
    ldh a, [rIF]
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
    rst $38
    rst $38
    add e
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld [bc], a
    rst $38
    jr c, @+$01

    ld e, b
    rst $38
    jp nz, Jump_000_18ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    db $f4
    ld b, b
    cp a
    nop
    rst $38
    sub b
    ld l, a
    db $10
    rst $28
    nop
    rst $38
    add d
    ld a, l
    nop
    rst $38
    add b
    ld a, a
    inc de
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec c
    ld a, [c]
    cp b
    nop
    add sp, $00
    db $f4
    nop
    cp l
    nop
    xor a
    nop
    xor [hl]
    nop
    inc l
    nop
    dec l
    nop
    dec l
    nop
    dec l
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    dec a
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    cp [hl]
    nop
    or a
    nop
    dec sp
    nop
    dec sp
    nop
    dec [hl]
    nop
    ld e, c
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    jp nc, $9600

    nop
    sub [hl]
    nop
    cp d
    nop
    cp d
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld [hl], h
    nop
    ld [hl], h
    nop
    ld [hl], l
    nop
    inc h
    nop
    and d
    nop
    add a
    nop
    adc c
    nop
    ld c, $00
    ld a, [bc]
    nop
    ld [bc], a
    nop
    ld [de], a
    nop
    jr nc, jr_09b_7c48

jr_09b_7c48:
    nop
    nop
    inc b
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    jr nz, jr_09b_7c54

jr_09b_7c54:
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    add b
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
    add b
    nop
    call nz, Call_000_2400
    nop
    dec h
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld c, l
    nop
    add b
    nop
    inc a
    nop
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
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    dec d
    rra
    ldh [rSB], a
    cp $f8
    rlca
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
    rst $38
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    cp h
    rst $38
    ld b, d
    rst $38
    jp nz, $feff

    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld bc, $09fe
    or $83
    ld a, h
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    and c
    ld e, [hl]
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call z, $8033
    nop
    jp nz, $c200

    nop
    jp nz, $c200

    nop
    add $00
    sbc $00
    cp $00
    sbc [hl]
    nop
    cp [hl]
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
    rst $28
    nop
    xor $00
    db $ec
    nop
    db $f4
    nop
    ld d, h
    nop
    ld [hl], h
    nop
    ld h, h
    nop
    ld h, h
    nop
    halt
    ld d, [hl]
    nop
    ld c, [hl]
    nop
    rrca
    nop
    ld e, $00
    ld d, $00
    dec h
    nop
    daa
    nop
    ld b, [hl]
    nop
    add [hl]
    nop
    add [hl]
    nop
    ld c, $00
    add [hl]
    nop
    ld d, $00
    inc h
    nop
    inc h
    nop
    ld b, b
    nop
    ld b, b
    nop
    stop
    ld [de], a
    nop
    inc bc
    nop
    dec bc
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    ld hl, $2100
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc

jr_09b_7d59:
    nop
    inc bc

jr_09b_7d5b:
    nop
    inc bc
    nop
    add e
    nop
    jp nz, $c200

jr_09b_7d63:
    nop
    ld b, d

jr_09b_7d65:
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, e
    nop
    dec de
    nop
    dec de
    nop
    add hl, de
    nop
    ld e, c
    nop
    ld [hl], c
    nop
    ld hl, $4100
    nop
    add hl, hl
    nop
    pop af
    nop
    ld bc, $05f0
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp-$7f
    ld a, b
    add c
    ld a, b
    add c
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    ret nz

    jr c, jr_09b_7d59

    jr c, jr_09b_7d5b

    jr c, @-$3a

    jr c, jr_09b_7d63

    jr c, jr_09b_7d65

    jr c, @-$7a

    ld a, b
    ld b, $f8
    adc a
    ld [hl], b
    rst $38
    nop
    rst $38
    add b
    rst $38

jr_09b_7dad:
    ld hl, sp-$01
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
    inc b
    ei
    inc b
    ei
    jr z, jr_09b_7dad

    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, $f9
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    ld b, h
    cp e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jr jr_09b_7e23

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_09b_7e33

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_09b_7e43

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09b_7e53

    ld [hl-], a

jr_09b_7e23:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09b_7e63

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_09b_7e33:
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
    ccf
    ld c, a
    ld d, b
    ld d, c

jr_09b_7e43:
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

jr_09b_7e53:
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

jr_09b_7e63:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ccf
    ccf
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
    add [hl]
    add [hl]
    sub l
    sub [hl]
    sub a
    ld l, l
    ccf
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
    add [hl]
    and d
    and e
    and h
    ccf
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
    ccf
    or h
    or l
    or [hl]
    or a
    ld a, a
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
    ccf
    jp nz, $c4c3

    push bc
    ld a, a
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
    sbc $3f
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$7feb], a
    db $ec
    ccf
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$3ffb]
    ccf
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$3f09], sp
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
    jr jr_09b_7f36

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
    ccf
    ccf
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    ld bc, $0101
    ld bc, $0101

jr_09b_7f36:
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld hl, $0100
    inc bc
    ld bc, $0102
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0301
    ld bc, $0302
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0301
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    db $01
    db $01
