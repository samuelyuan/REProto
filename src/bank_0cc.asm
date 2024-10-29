SECTION "ROM Bank $0cc", ROMX[$4000], BANK[$cc]

    nop
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
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    ld bc, $000e
    nop
    ld bc, $000f
    nop
    inc bc
    inc c
    nop
    nop
    inc c
    inc bc
    nop
    nop
    rlca
    inc bc
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rla
    nop
    nop
    ccf
    rlca
    nop
    nop
    ccf
    rlca
    nop
    nop
    inc a
    daa
    nop
    nop
    inc e
    inc de
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec c
    ld [bc], a
    nop
    nop
    ld [$0007], sp
    nop
    ld [$0007], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    dec de
    dec e
    nop
    nop
    dec de
    dec e
    nop
    nop
    rrca
    rra
    nop
    nop
    inc de
    dec c
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
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

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$38
    nop
    nop
    db $fc
    cp h
    nop
    nop
    db $fc
    call c, RST_00
    db $fc
    call c, RST_00
    ld hl, sp-$28
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld [hl], b
    ret nc

    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    ld bc, $000e
    nop
    ld bc, $000f
    nop
    inc bc
    inc c
    nop
    nop
    rrca
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rla
    nop
    nop
    ccf
    rlca
    nop
    nop
    ccf
    rlca
    nop
    nop
    inc a
    daa
    nop
    nop
    inc e
    inc de
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec c
    ld [bc], a
    nop
    nop
    inc c
    inc bc
    nop
    nop
    inc c
    inc bc
    nop
    nop
    inc c
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
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

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp-$48
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    call c, RST_00
    db $fc
    call c, RST_00
    ld hl, sp-$28
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld [hl], b
    ret nc

    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0006
    nop
    ld b, $01
    nop
    nop
    inc bc
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld c, $09
    nop
    nop
    rlca
    rrca
    nop
    nop
    rlca
    ld [$0000], sp
    rlca
    jr jr_0cc_4355

jr_0cc_4355:
    nop
    rlca
    jr jr_0cc_4359

jr_0cc_4359:
    nop
    rlca
    rra
    nop
    nop
    ld c, a
    rst $30
    nop
    ld bc, $ffff
    nop
    ld bc, $f3f3
    nop
    nop
    inc hl
    db $e3
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rrca
    nop
    nop
    ld bc, $000e
    nop
    add hl, bc
    ld b, $00
    nop
    inc c
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a

jr_0cc_43ca:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$70
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    inc a
    nop
    nop
    ld a, h
    sbc h
    nop
    nop
    cp $de

jr_0cc_43ee:
    nop
    nop
    cp $ee
    nop
    nop
    cp $ee
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    jr jr_0cc_43ee

    nop
    nop
    jr c, jr_0cc_43ca

    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    ret z

    jr nc, jr_0cc_4413

jr_0cc_4413:
    nop
    ret z

    jr nc, jr_0cc_4417

jr_0cc_4417:
    nop
    ld hl, sp-$48
    nop
    nop
    cp b
    ld hl, sp+$00
    nop
    cp b
    ld hl, sp+$00
    nop
    ret nz

    cp b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$60], a
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    add b
    ld h, b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    ld b, h
    jr c, jr_0cc_445b

jr_0cc_445b:
    nop
    ld h, $18
    nop
    nop
    rra
    rlca
    nop
    nop
    rrca
    rlca
    add b
    add b
    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    ld bc, $c001
    ret nz

    add e
    add e
    add b
    add b
    add a
    add a
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0006
    nop
    ld b, $01
    nop
    nop
    inc bc
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld c, $09
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    ld [$0000], sp
    rlca
    ld c, $00
    nop
    ld e, $17
    nop
    nop
    ld a, $3f
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    dec sp
    ld a, e
    nop
    nop
    inc bc
    inc sp
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0002
    nop
    dec b
    ld [bc], a
    nop
    nop
    ld bc, $0006
    nop
    ld bc, $0006
    nop
    dec b
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0000
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
    ld bc, $0001
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]

jr_0cc_454e:
    nop
    nop
    ld hl, sp-$08

jr_0cc_4552:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$70
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    inc a
    nop
    nop
    ld a, h
    sbc h
    nop
    nop
    cp $de
    nop
    nop
    cp $ee
    nop
    nop
    cp $ee
    nop
    nop
    db $fc
    db $ec

jr_0cc_457a:
    nop
    nop
    ld hl, sp-$18

jr_0cc_457e:
    nop
    nop
    ld hl, sp+$08

jr_0cc_4582:
    nop
    nop
    jr c, jr_0cc_454e

jr_0cc_4586:
    nop
    nop
    ld a, b
    sbc b

jr_0cc_458a:
    nop
    nop
    jr nc, jr_0cc_454e

    nop
    nop
    jr nc, jr_0cc_4552

    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08

jr_0cc_459e:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    jr c, jr_0cc_459e

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    jr nz, jr_0cc_457a

    nop
    nop
    jr nz, jr_0cc_457e

    nop
    nop
    jr nz, jr_0cc_4582

    nop
    nop
    jr nz, jr_0cc_4586

    nop
    nop
    jr nz, jr_0cc_458a

    nop
    nop
    nop
    ldh [rP1], a
    nop
    add b
    ld h, b
    nop
    nop
    add b
    ld h, b
    nop
    nop
    add b
    ld h, b
    nop
    nop
    add b
    ld h, b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0006
    nop
    ld b, $01
    nop
    nop
    inc bc
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    stop
    nop
    ld [$000f], sp
    nop
    inc b
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    ld bc, $000f
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld bc, $0000
    dec b
    ld [bc], a
    nop
    nop
    ld bc, $0006
    nop
    add hl, bc
    ld b, $00
    nop
    ld bc, $000e
    nop
    ld de, $000e
    nop
    ld bc, $001e
    nop
    nop
    ld e, $00
    nop
    ld [hl+], a
    inc e
    nop
    nop
    nop
    inc a
    nop
    nop
    inc a
    nop
    nop
    nop
    jr c, jr_0cc_46dc

    nop
    nop
    jr c, jr_0cc_46e0

    nop
    nop
    jr c, jr_0cc_46e4

    rlca
    rlca
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    dec c
    dec c
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0cc_46dc:
    ld hl, sp+$70
    nop
    nop

jr_0cc_46e0:
    ld hl, sp-$08
    nop
    nop

jr_0cc_46e4:
    db $fc
    inc a
    nop
    nop
    ld a, h
    sbc h
    nop
    nop
    cp $de
    nop
    nop
    cp $ee
    nop
    nop
    cp $ee
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    ld a, b
    cp b
    nop
    nop
    ld [hl], b
    add b
    nop
    nop
    ld [hl], b
    add b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    sub b
    ld h, b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    ld [$0070], sp
    nop
    ld b, b
    jr c, jr_0cc_475f

jr_0cc_475f:
    nop
    jr c, jr_0cc_4762

jr_0cc_4762:
    nop
    nop
    jr c, jr_0cc_479e

    nop
    nop
    jr c, jr_0cc_47a2

    nop
    nop
    jr c, jr_0cc_47a6

    nop
    nop
    jr c, jr_0cc_47aa

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop

jr_0cc_479e:
    nop
    rlca
    nop
    nop

jr_0cc_47a2:
    nop
    rlca
    nop
    nop

jr_0cc_47a6:
    ld bc, $0006
    nop

jr_0cc_47aa:
    ld b, $01
    nop
    nop
    inc bc
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    stop
    nop
    ld [$000f], sp
    nop
    inc b
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    add hl, de
    rla
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    dec sp
    ld a, e
    nop
    nop
    inc bc
    inc sp
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    add hl, bc
    ld b, $00
    nop
    ld de, $000e
    nop
    ld bc, $001e
    nop
    inc hl
    inc e
    nop
    nop
    dec b
    jr c, jr_0cc_4811

jr_0cc_4811:
    nop
    ld b, c
    jr c, jr_0cc_4815

jr_0cc_4815:
    nop
    ld [$0070], sp
    nop
    nop
    ld [hl], b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $c0c0
    ld a, a
    ld a, a
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$70
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    inc a
    nop
    nop
    ld a, h
    sbc h
    nop
    nop
    cp $de
    nop
    nop
    cp $ee
    nop
    nop
    cp $ee
    nop
    nop
    db $fc
    db $ec

jr_0cc_487a:
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    ld a, b
    cp b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    jr nz, jr_0cc_487a

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    add b
    ld h, b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    ld c, b
    jr nc, jr_0cc_48db

jr_0cc_48db:
    nop
    inc h
    jr jr_0cc_48df

jr_0cc_48df:
    nop
    ld e, $02
    nop
    nop
    ld c, $0e
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rra
    rra
    nop
    nop
    inc a
    inc a
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0006
    nop
    ld b, $01
    nop
    nop
    inc bc
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    jr jr_0cc_495b

    nop
    nop
    ld [$000f], sp
    nop
    ld bc, $000e
    nop
    ld bc, $000e
    nop
    inc bc
    dec e
    nop
    nop
    rlca
    ld a, [de]
    nop
    nop
    rlca

jr_0cc_495b:
    dec de
    nop
    nop
    ld c, a
    rst $30
    nop
    ld bc, $ffff
    nop
    ld bc, $f3f3
    nop
    nop
    inc hl
    db $e3
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld b, $01
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    ld [bc], a
    dec c
    nop
    nop
    ld [bc], a
    dec c
    nop
    nop
    ld a, [bc]
    dec b
    nop
    nop
    rrca
    nop
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$70
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    inc a
    nop
    nop
    ld a, h
    sbc h
    nop
    nop
    cp $de
    nop
    nop
    cp $ee
    nop
    nop
    cp $ee
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$68
    nop
    nop
    ld hl, sp+$48
    nop
    nop
    ld hl, sp-$08

jr_0cc_4a0a:
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ld b, b
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    jr nz, jr_0cc_4a0a

    nop
    nop
    nop
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    adc b
    ld [hl], b
    nop
    nop
    ld b, h
    jr c, jr_0cc_4a5b

jr_0cc_4a5b:
    nop
    ld h, $18
    nop
    nop
    rra
    rlca
    nop
    nop
    rrca
    rlca
    add b
    add b
    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    ld bc, $c001
    ret nz

    add e
    add e
    add b
    add b
    add a
    add a
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0006
    nop
    ld b, $01
    nop
    nop
    inc bc
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    stop
    nop
    ld [$000f], sp
    nop
    inc b
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    add hl, de
    rla
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    dec sp
    ld a, e
    nop
    nop
    inc bc
    inc sp
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0000
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
    ld bc, $0001
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$70
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    inc a
    nop
    nop
    ld a, h
    sbc h
    nop
    nop
    cp $de
    nop
    nop
    cp $ee
    nop
    nop
    cp $ee
    nop
    nop
    db $fc
    db $ec

jr_0cc_4b7a:
    nop
    nop
    ld hl, sp-$18

jr_0cc_4b7e:
    nop
    nop
    ld hl, sp+$28

jr_0cc_4b82:
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    ld a, b
    cp b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]

jr_0cc_4b96:
    nop
    nop
    ldh a, [$f0]

jr_0cc_4b9a:
    nop
    nop
    ld hl, sp-$08

jr_0cc_4b9e:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    jr nz, jr_0cc_4b7a

    nop
    nop
    jr nz, jr_0cc_4b7e

    nop
    nop
    jr nz, jr_0cc_4b82

    nop
    nop
    ld h, b
    add b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ld h, b
    add b
    nop
    nop
    jr nz, jr_0cc_4b96

    nop
    nop
    jr nz, jr_0cc_4b9a

    nop
    nop
    jr nz, jr_0cc_4b9e

    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0006
    nop
    ld b, $01
    nop
    nop
    inc bc
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    stop
    nop
    ld [$000f], sp
    nop
    inc b
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    ld bc, $000f
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc b
    inc bc
    nop
    nop
    nop
    rlca
    nop
    nop
    ld [$0007], sp
    nop
    nop
    rrca
    nop
    nop
    ld de, $000e
    nop
    ld bc, $001e
    nop
    nop
    ld e, $00
    nop
    ld [hl+], a
    inc e
    nop
    nop
    nop
    inc a
    nop
    nop
    inc a
    nop
    nop
    nop
    jr c, jr_0cc_4cdc

    nop
    nop
    jr c, jr_0cc_4ce0

    nop
    nop
    jr c, jr_0cc_4ce4

    rlca
    rlca
    ld hl, sp-$08
    ld bc, $fc01
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    dec c
    dec c
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop

jr_0cc_4cdc:
    ld hl, sp+$70
    nop
    nop

jr_0cc_4ce0:
    ld hl, sp-$08
    nop
    nop

jr_0cc_4ce4:
    db $fc
    inc a
    nop
    nop
    ld a, h
    sbc h
    nop
    nop
    cp $de
    nop
    nop
    cp $ee
    nop
    nop
    cp $ee
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, b
    adc b
    nop
    nop
    ld a, b
    cp b
    nop
    nop
    ld [hl], b
    add b
    nop
    nop
    ld [hl], b
    add b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ld h, b
    add b
    nop
    nop
    ld h, b
    add b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ret nz

    jr nz, jr_0cc_4d4b

jr_0cc_4d4b:
    nop
    add b
    ld h, b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    ld [$0070], sp
    nop
    ld b, b
    jr c, jr_0cc_4d5f

jr_0cc_4d5f:
    nop
    jr c, jr_0cc_4d62

jr_0cc_4d62:
    nop
    nop
    jr c, jr_0cc_4d9e

    nop
    nop
    jr c, jr_0cc_4da2

    nop
    nop
    jr c, jr_0cc_4da6

    nop
    nop
    jr c, jr_0cc_4daa

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop

jr_0cc_4d9e:
    nop
    rlca
    nop
    nop

jr_0cc_4da2:
    nop
    rlca
    nop
    nop

jr_0cc_4da6:
    ld bc, $0006
    nop

jr_0cc_4daa:
    ld b, $01
    nop
    nop
    inc bc
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    inc bc
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ld c, $09
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    ld [$0000], sp
    rlca
    ld c, $00
    nop
    ld e, $17
    nop
    nop
    ld a, $3f
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    dec sp
    ld a, e
    nop
    nop
    inc bc
    inc sp
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc b
    inc bc
    nop
    nop
    ld [$0007], sp
    nop
    db $10
    rrca
    nop
    nop
    ld bc, $001e
    nop
    inc hl
    inc e
    nop
    nop
    dec b
    jr c, jr_0cc_4e11

jr_0cc_4e11:
    nop
    ld b, c
    jr c, jr_0cc_4e15

jr_0cc_4e15:
    nop
    ld [$0070], sp
    nop
    nop
    ld [hl], b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $c0c0
    rst $38
    rst $38
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]

jr_0cc_4e4e:
    nop
    nop
    ld hl, sp-$08

jr_0cc_4e52:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp+$70
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    inc a
    nop
    nop
    ld a, h
    sbc h
    nop
    nop
    cp $de
    nop
    nop
    cp $ee
    nop
    nop
    cp $ee

jr_0cc_4e76:
    nop
    nop
    db $fc
    db $ec

jr_0cc_4e7a:
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    jr c, jr_0cc_4e4e

    nop
    nop
    ld a, b
    sbc b
    nop
    nop
    jr nc, jr_0cc_4e4e

    nop
    nop
    jr nc, jr_0cc_4e52

    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08

jr_0cc_4e9e:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    jr c, jr_0cc_4e9e

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0cc_4e76

    nop
    nop
    jr nz, jr_0cc_4e7a

    nop
    nop
    ld h, b
    add b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ret nz

    jr nz, jr_0cc_4ecb

jr_0cc_4ecb:
    nop
    add b
    ld h, b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    ld c, b
    jr nc, jr_0cc_4edb

jr_0cc_4edb:
    nop
    inc h
    jr jr_0cc_4edf

jr_0cc_4edf:
    nop
    ld e, $02
    nop
    nop
    ld c, $0e
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rra
    rra
    nop
    nop
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    ld bc, $000e
    nop
    ld bc, $000f
    nop
    inc bc
    inc c
    nop
    nop
    inc c
    inc bc
    nop
    nop
    rlca
    inc bc
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rla
    nop
    nop
    ccf
    rlca
    nop
    nop
    ccf
    rlca
    nop
    nop
    inc a
    daa
    nop
    nop
    inc e
    inc de
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec c
    ld [bc], a
    nop
    nop
    ld [$0007], sp
    nop
    ld [$0007], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    dec de
    dec e
    nop
    nop
    dec de
    dec e
    nop
    nop
    rrca
    rra
    nop
    nop
    inc de
    dec c
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0002
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$38
    nop
    nop
    db $fc
    cp h
    nop
    nop
    db $fc
    call c, RST_00
    db $fc
    call c, RST_00
    ld hl, sp-$28
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld [hl], b
    ret nc

    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    jr jr_0cc_5080

    ret nz

    ld b, b
    inc a
    inc a
    ld b, e
    add b
    db $fc
    db $fc
    ld c, c
    add [hl]
    db $fc
    db $fc
    ld h, c
    sbc [hl]
    adc $ce
    inc b
    ld hl, sp+$0e
    ld c, $f0
    nop
    ld b, $06

jr_0cc_5080:
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rrca
    inc b
    nop
    nop
    db $fc
    rst $20
    ld bc, $ff01
    rst $08
    inc bc
    inc bc
    rst $38
    rst $08
    inc bc
    inc bc
    rst $38
    add $03
    inc bc
    rst $38
    ret nz

    inc bc
    ld bc, $c4ff
    nop
    inc bc
    ld a, a
    call nz, $0102
    ccf
    cp e
    nop
    inc bc
    cp a
    nop
    nop
    inc bc
    ccf
    add b
    nop
    inc bc
    ccf
    add b
    nop
    inc bc
    ccf
    cp a
    nop
    inc bc
    ccf
    cp a
    inc bc
    inc bc
    cp a
    cp a
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    cp a
    ld a, a
    ld [bc], a
    ld bc, $bf7f
    nop
    nop
    rra
    ld [bc], a
    nop
    nop
    inc bc
    dec e
    nop
    nop
    ld bc, $001f
    nop
    ld bc, $001f
    nop
    ld bc, $001f
    nop
    ld bc, $001f
    nop
    ld [de], a
    inc c
    nop
    nop
    ld e, $00
    nop
    nop
    inc c
    ld [bc], a
    nop
    nop
    nop
    ld c, $00
    nop
    nop
    ld c, $00
    nop
    ld c, $00
    nop
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop

jr_0cc_512e:
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_512e

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    cp $9e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    db $fc
    ccf
    nop
    nop
    ldh a, [$27]
    nop
    nop
    ldh a, [$c7]
    nop
    nop
    pop hl
    ld b, $00
    nop
    jp hl


    ld b, $00
    nop
    ldh [$0e], a
    nop
    nop
    ldh [$ee], a
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    cp $00
    nop
    db $fc
    cp $00
    nop
    cp $fe
    nop
    nop
    ld a, [c]
    db $fc
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    sub b
    ld h, b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ld h, b
    stop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld a, a
    ld h, h
    nop
    nop
    db $fc
    rst $28
    ld bc, $ff01
    rst $08
    ld bc, $ff01
    rst $08
    ld bc, $ff01
    rst $00
    ld bc, $ff01
    ret nz

    ld bc, $ff00
    ld b, h
    nop
    nop
    rst $38
    ld h, h
    nop
    nop
    cp a
    ld a, e
    nop
    nop
    adc a
    ld h, b
    nop
    nop
    adc a
    ld h, b
    nop
    nop
    rst $08
    jr nz, jr_0cc_5259

jr_0cc_5259:
    nop
    ld c, a
    ccf
    nop
    nop
    ld c, a
    ccf
    nop
    nop
    ld c, a
    ccf
    nop
    nop
    ld c, a
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, a
    ld h, a
    nop
    nop
    rra
    jr nz, jr_0cc_527d

jr_0cc_527d:
    nop
    inc sp
    inc c
    nop
    nop
    ld [hl+], a
    inc e
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld a, [bc]
    inc [hl]
    nop
    nop
    jr c, @+$06

    nop
    nop
    ld [hl], h
    ld [$0000], sp
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld [$0070], sp
    nop
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop

jr_0cc_52ae:
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_52ae

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    rst $38
    rst $08
    nop
    nop
    rst $38
    sbc a
    add b
    add b
    rst $38
    sbc a
    ret nz

    ret nz

    rst $38
    sbc a
    ldh [$e0], a
    rst $38
    rra
    ldh [$e0], a
    rst $38
    ld d, $20
    ret nz

    db $fd
    stop
    ldh [$fc], a
    jr nc, jr_0cc_5307

jr_0cc_5307:
    ldh [$f9], a
    ld hl, sp+$20
    ret nz

    ld hl, sp+$01
    ld b, b
    add b
    ld a, [$8001]
    nop
    db $fc
    rlca
    add b
    nop
    rst $38
    rst $38
    nop
    nop
    cp $fc
    nop
    nop
    db $fc
    ld a, [$0000]
    cp $fe
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    add b
    nop
    nop
    inc b
    ld a, b
    nop
    nop
    inc b
    ld a, b
    nop
    nop
    ld b, h
    jr c, jr_0cc_5343

jr_0cc_5343:
    nop
    inc b
    jr c, jr_0cc_5347

jr_0cc_5347:
    nop
    nop
    inc a
    nop
    nop
    ld [$0034], sp
    nop
    jr c, jr_0cc_5356

    nop
    nop
    jr nc, jr_0cc_5362

jr_0cc_5356:
    nop
    nop
    jr nz, jr_0cc_5376

    nop
    nop
    nop
    inc e
    nop
    nop
    inc e
    nop

jr_0cc_5362:
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e

jr_0cc_5376:
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $fe
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rrca
    inc b
    nop
    nop
    db $fc
    rst $20
    ld bc, $ff01
    rst $08
    inc bc
    inc bc
    rst $38
    rst $08
    inc bc
    inc bc
    rst $38
    add $03
    inc bc
    rst $38
    ret nz

    inc bc
    ld bc, $c4ff
    ld [bc], a
    ld bc, $c47f
    inc b
    inc bc
    ccf
    ei
    inc b
    inc bc
    ld a, a
    add b
    nop
    rlca
    ccf
    add b
    nop
    rlca
    cp a
    nop
    dec c
    ld a, [bc]
    ccf
    ccf
    ld c, $1e
    ccf
    ccf
    ld c, $1e
    ccf
    ccf
    ld c, $1e
    ccf
    ccf
    ld [bc], a
    ld c, $3f
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    nop
    nop
    nop
    ld [bc], a
    dec a
    nop
    nop
    ld [bc], a
    dec a
    nop
    nop
    ld [hl+], a
    dec e
    nop
    nop
    ld [bc], a
    dec e
    nop
    nop
    ld [de], a
    dec c
    nop
    nop
    ld e, $01
    nop
    nop
    dec bc
    inc b
    nop
    nop
    ld bc, $0006
    nop
    dec b
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop

jr_0cc_542e:
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
    inc bc
    inc bc
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_542e

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    cp $9e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf

jr_0cc_547a:
    add b
    add b
    rst $38
    ccf
    add b
    add b
    db $fc
    ccf
    add b
    nop
    db $f4
    inc hl
    nop
    add b
    or $c1
    nop
    add b
    ldh [rTAC], a
    nop
    add b
    ldh [rTAC], a
    nop
    add b
    db $e4
    inc bc
    nop
    add b
    rst $20
    rst $20
    add b
    add b
    rst $30
    rst $30
    add b
    add b
    rst $38
    rst $30
    add b
    add b
    rst $30
    rst $38
    add b
    nop
    pop af
    or $00
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    jr nz, jr_0cc_547a

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    ret nz

    jr nz, jr_0cc_54d3

jr_0cc_54d3:
    nop
    db $10
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rrca
    inc b
    nop
    nop
    db $fc
    rst $20
    ld bc, $ff01
    rst $08
    inc bc
    inc bc
    rst $38
    rst $08
    inc bc
    inc bc
    rst $38
    add $03
    inc bc
    rst $38
    ret nz

    ld bc, $ff01
    call nz, Boot
    ld a, a
    call nz, Boot
    ccf
    ei
    nop
    ld bc, $c03f
    nop
    ld bc, $807f
    nop
    inc bc
    ld a, a
    add b
    inc bc
    inc bc
    ld a, a
    cp a
    rlca
    rlca
    cp a
    cp a
    rlca
    rrca
    cp a
    cp a
    rlca
    rrca
    cp a
    cp a
    nop
    rlca
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rlca
    jr c, jr_0cc_5579

jr_0cc_5579:
    nop
    ld b, d
    dec a
    nop
    nop
    ld [bc], a
    ld a, l
    nop
    nop
    ld [bc], a
    ld a, l
    nop
    nop
    ld c, d
    dec [hl]
    nop
    nop
    ld a, d
    dec b
    nop
    nop
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    db $10
    ld c, $00
    nop
    ld bc, $000e
    nop
    rrca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop

jr_0cc_55ae:
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    rrca
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_55ae

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    cp $9e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    db $fc
    ccf
    add b
    nop
    db $f4
    inc hl
    add b
    nop
    db $f4
    jp Jump_000_0080


    add sp, $07

jr_0cc_560e:
    add b
    nop
    jp hl


    ld b, $00
    nop
    pop af
    ld c, $00
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    sbc $fe
    nop
    nop
    ldh [$dc], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    jr nz, jr_0cc_560e

    nop
    nop
    ldh [rP1], a
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    add b
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rrca
    inc b
    nop
    nop
    db $fc
    rst $20
    ld bc, $ff01
    rst $08
    inc bc
    inc bc
    rst $38
    rst $08
    inc bc
    inc bc
    rst $38
    add $03
    inc bc
    rst $38
    ret nz

    ld bc, $ff01
    call nz, RST_00
    rst $38
    ld b, h
    nop
    nop
    cp a
    ld a, e
    ld bc, $3f00
    ret nz

    ld bc, $3f00
    ret nz

    ld [bc], a
    ld bc, $c03f
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    rlca
    rst $38
    rst $38
    nop
    inc bc
    ccf
    cp a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rlca
    jr c, jr_0cc_56f9

jr_0cc_56f9:
    nop
    ld b, d
    dec a
    nop
    nop
    ld [bc], a
    ld a, l
    nop
    nop
    inc b
    ld a, c
    nop
    nop
    nop
    ld a, c
    nop
    nop
    sub b
    ld l, c
    nop
    nop
    ld sp, hl
    nop
    nop
    nop
    ld bc, $00f0
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop

jr_0cc_572e:
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    inc bc
    nop
    ldh a, [rSVBK]
    ld bc, $f001
    ldh a, [rP1]
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_572e

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    cp $9e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    db $fc
    ccf
    add b
    nop
    ldh a, [$2f]
    add b
    nop
    pop af
    adc $00
    nop
    pop af
    ld c, $00
    nop
    ld a, [c]
    inc c
    nop
    nop
    ld [c], a
    inc e
    nop
    nop
    ld a, [$00fc]
    nop
    db $fc
    db $fc
    nop
    nop
    cp h
    db $fc
    nop
    nop
    cp h
    db $fc
    nop
    nop
    ret nz

    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    jr nz, @-$3e

    nop
    nop
    ldh a, [rP1]
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    ld [$0070], sp
    nop
    ld b, b
    jr c, jr_0cc_57df

jr_0cc_57df:
    nop
    inc b
    jr c, jr_0cc_57e3

jr_0cc_57e3:
    nop
    inc a
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $fe
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rrca
    inc b
    nop
    nop
    db $fc
    rst $20
    ld bc, $ff01
    rst $08
    inc bc
    inc bc
    rst $38
    rst $08
    inc bc
    inc bc
    rst $38
    add $03
    inc bc
    rst $38
    ret nz

    ld bc, $ff01
    call nz, RST_00
    rst $38
    ld b, h
    nop
    nop
    rst $38
    dec sp
    nop
    nop
    ccf
    ret nz

    nop
    nop
    ccf
    ret nz

    nop
    nop
    cp a
    ld b, b
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    db $fc
    nop
    ld bc, $feff
    nop
    nop
    ccf
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    add h
    nop
    nop
    adc b
    ld [hl], c
    nop
    nop
    ld [$01f1], sp
    nop
    add hl, bc
    ldh a, [rP1]
    ld bc, $f000
    nop
    ld bc, $b040
    ld bc, $c000
    jr nc, jr_0cc_5891

jr_0cc_5891:
    ld bc, $e010
    nop
    ld bc, $e000
    nop
    ld bc, $e000
    nop
    ld bc, $e000
    ld bc, $e000
    nop
    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    rrca
    rrca

jr_0cc_58ae:
    ldh [$e0], a
    rrca
    ld bc, $e0e0
    rlca
    rlca
    ldh [$e0], a
    ld bc, $e000
    jr nz, jr_0cc_58bd

jr_0cc_58bd:
    nop
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_58ae

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    cp $9e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    db $fd
    ld a, $00
    nop
    pop af
    ld l, $00
    nop
    ldh a, [$ce]
    nop
    nop
    ld [c], a
    inc e
    nop
    nop
    ldh [rNR32], a
    nop
    nop
    db $e4
    jr jr_0cc_5917

jr_0cc_5917:
    nop
    add sp, -$10
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    sub b
    ld [hl], b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    nop
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    add b
    ld [hl], b
    nop
    nop
    db $10
    ld h, b
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld b, b
    jr c, jr_0cc_5957

jr_0cc_5957:
    nop
    inc b
    jr c, jr_0cc_595b

jr_0cc_595b:
    nop
    jr nz, jr_0cc_597a

    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    rla
    rrca
    nop
    nop
    rrca
    rrca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rra
    rra

jr_0cc_597a:
    add b
    add b
    rra
    rra
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rrca
    inc b
    nop
    nop
    db $fc
    rst $20
    ld bc, $ff01
    rst $08
    inc bc
    inc bc
    rst $38
    rst $08
    inc bc
    inc bc
    rst $38
    add $03
    inc bc
    rst $38
    ret nz

    ld bc, $ff01
    call nz, RST_00
    rst $38
    ld b, h
    nop
    nop
    ld a, a
    dec sp
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    ccf
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    nop
    nop
    nop
    ld [bc], a
    dec a
    nop
    nop
    ld [bc], a
    dec a
    nop
    nop
    ld [bc], a
    dec a
    nop
    nop
    ld [bc], a
    dec a
    nop
    nop
    inc bc
    inc a
    nop
    nop
    daa
    jr jr_0cc_5a11

jr_0cc_5a11:
    nop
    inc a
    ld [bc], a
    nop
    nop
    ld bc, $001e
    nop
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    rra
    nop
    nop
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop

jr_0cc_5a2e:
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_5a2e

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    cp $9e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    db $fc
    ccf
    add b
    nop
    ldh a, [$2f]
    add b
    nop
    pop af
    adc $00
    nop
    pop hl
    ld c, $00
    nop
    ld [c], a
    inc c
    nop
    nop
    ld [c], a
    inc e
    nop
    nop
    ld a, [$00fc]
    nop
    db $fc
    db $fc
    nop
    nop
    cp h
    db $fc
    nop
    nop
    cp h
    db $fc
    nop
    nop
    ret nz

    ld hl, sp+$00
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    jr nz, @-$2e

    nop
    nop
    add sp, $10
    nop
    nop
    add b
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld b, h
    jr c, jr_0cc_5adb

jr_0cc_5adb:
    nop
    inc a
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rrca
    inc b
    nop
    nop
    db $fc
    rst $20
    ld bc, $ff01
    rst $08
    inc bc
    inc bc
    rst $38
    rst $08
    inc bc
    inc bc
    rst $38
    add $03
    inc bc
    rst $38
    ret nz

    ld bc, $ff01
    call nz, RST_00
    rst $38
    ld b, h
    nop
    nop
    rst $38
    dec sp
    nop
    nop
    ccf
    ret nz

    nop
    nop
    ccf
    ret nz

    nop
    nop
    cp a
    ld b, b
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    ld bc, $ffff
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    inc a
    nop
    nop
    inc a
    inc bc
    nop
    nop
    inc h
    dec de
    nop
    nop
    inc b
    dec de
    nop
    nop
    inc b
    dec de
    nop
    nop
    inc b
    dec de
    nop
    nop
    rlca
    jr jr_0cc_5b8d

jr_0cc_5b8d:
    nop
    ld d, $09
    nop
    nop
    ld e, $01
    nop
    nop
    ld bc, $000e
    nop
    add hl, bc
    ld b, $00
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop

jr_0cc_5bae:
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_5bae

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    cp $9e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    ccf

jr_0cc_5bf6:
    add b
    add b
    rst $38
    ccf

jr_0cc_5bfa:
    add b
    add b
    rst $38
    ccf
    add b
    add b
    db $fc
    ccf
    add b
    nop
    db $f4
    inc hl
    add b
    nop
    db $f4
    jp Jump_000_0080


    add sp, $07
    add b
    nop
    jp hl


    ld b, $00
    nop
    pop af
    ld c, $00
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    sbc $fe
    nop
    nop
    sbc $fe
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    jr nz, jr_0cc_5bf6

    nop
    nop
    jr nz, jr_0cc_5bfa

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    add b
    ld b, b
    nop
    nop
    and b
    ld b, b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    ldh a, [rP1]
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rrca
    inc b
    nop
    nop
    db $fc
    rst $20
    ld bc, $ff01
    rst $08
    inc bc
    inc bc
    rst $38
    rst $08
    inc bc
    inc bc
    rst $38
    add $03
    inc bc
    rst $38
    ret nz

    ld bc, $ff01
    call nz, RST_00
    rst $38
    ld b, h
    nop
    nop
    cp a
    ld a, e
    ld bc, $3f00
    ret nz

    ld bc, $3f00
    ret nz

    ld [bc], a
    ld bc, $c03f
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    rlca
    rst $38
    rst $38
    nop
    inc bc
    ccf
    cp a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    inc a
    nop
    nop
    inc a
    inc bc
    nop
    nop
    inc h
    dec de
    nop
    nop
    inc h
    dec de
    nop
    nop
    ld [$0017], sp
    nop
    ld [$0017], sp
    nop
    add hl, bc
    ld d, $00
    nop
    rra
    nop
    nop
    nop
    jr @+$09

    nop
    nop
    ld [$0007], sp
    nop
    ld [$0007], sp
    nop
    ld [$0007], sp
    nop
    rrca
    nop
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop

jr_0cc_5d2e:
    rrca
    rrca
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    rlca
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_5d2e

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    cp $9e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    db $fc
    ccf
    add b
    nop
    db $f4
    inc hl
    nop
    add b
    or $c1
    nop
    add b
    ldh [rTAC], a
    nop
    add b
    ldh [rTAC], a
    nop
    add b
    db $e4
    inc bc
    nop
    add b
    rst $20
    rst $20
    add b
    add b
    rst $30
    rst $30
    add b
    add b
    rst $30
    rst $30
    add b
    add b
    rst $30
    rst $38
    add b
    nop
    ld sp, hl
    or $00
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$60], a
    nop
    nop
    ld h, b
    and b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    ld b, b
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
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
    nop
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rrca
    inc b
    nop
    nop
    db $fc
    rst $20
    ld bc, $ff01
    rst $08
    inc bc
    inc bc
    rst $38
    rst $08
    inc bc
    inc bc
    rst $38
    add $03
    inc bc
    rst $38
    ret nz

    ld bc, $ff01
    call nz, Boot
    ld a, a
    call nz, Boot
    ccf
    ei
    ld [bc], a
    ld bc, $c03f
    ld [bc], a
    ld bc, $807f
    nop
    inc bc
    ld a, a
    add b
    inc bc
    inc bc
    ld a, a
    cp a
    rlca
    rlca
    cp a
    cp a
    rlca
    rrca
    cp a
    cp a
    rlca
    rrca
    cp a
    cp a
    nop
    rlca
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ld [$0000], sp
    jr jr_0cc_5e83

    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10

jr_0cc_5e83:
    rrca
    nop
    nop
    nop
    rra
    nop
    nop
    inc b
    dec de
    nop
    nop
    inc e
    inc bc
    nop
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    rra
    nop
    nop
    nop
    rra
    ld e, $00
    nop
    ld e, $1e
    nop
    nop

jr_0cc_5eae:
    cp $fe
    nop
    nop
    cp $1e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rra
    inc bc
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

jr_0cc_5ec7:
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_5eae

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    cp $9e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    rst $38
    inc a
    ret nz

    nop
    rst $30
    jr nz, jr_0cc_5ec7

    nop
    di
    ret nz

    ldh [rP1], a
    ld [c], a
    ld bc, $8060
    ldh [rSB], a
    ld h, b
    add b
    ldh [rSB], a
    ld h, b
    add b
    ldh [$e1], a
    ld h, b
    ldh [$f1], a
    pop af
    ldh [$e0], a
    di
    pop af

jr_0cc_5f22:
    ldh [$e0], a
    pop af
    di
    ldh [$c0], a
    ldh a, [$f1]
    ld b, b
    add b
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    add b
    nop
    nop
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
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ld b, b
    add b
    nop
    nop
    nop
    ret nz

    nop
    nop
    jr nz, jr_0cc_5f22

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [$0000], sp
    dec c
    ld c, $00
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rrca
    inc b
    nop
    nop
    db $fc
    rst $20
    ld bc, $ff01
    rst $08
    inc bc
    inc bc
    rst $38
    rst $08
    inc bc
    inc bc
    rst $38
    add $03
    inc bc
    rst $38
    ret nz

    inc bc
    ld bc, $c4ff
    nop
    inc bc
    ld a, a
    call nz, $0102
    ld a, a
    ei
    nop
    inc bc
    cp a
    nop
    nop
    inc bc
    ccf
    add b
    nop
    inc bc
    ccf
    add b
    nop
    inc bc
    ccf
    cp a
    nop
    inc bc
    ccf
    cp a
    inc bc
    inc bc
    cp a
    cp a
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    cp a
    ld a, a
    ld [bc], a
    ld bc, $bf7f
    nop
    nop
    ccf
    ld [bc], a
    nop
    nop
    inc hl
    dec e
    nop
    nop
    ld hl, $001f
    nop
    ld bc, $001f
    nop
    inc de
    inc c
    nop
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0cc_6062:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nc, jr_0cc_6062

    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    cp $9e
    nop
    nop
    rst $38
    rra
    nop
    nop
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    rst $38
    ccf
    add b
    add b
    db $fc
    rra
    nop
    nop
    ldh a, [rNR22]
    nop
    nop
    ldh a, [$f7]
    nop
    nop
    pop hl
    ld b, $00
    nop
    jp hl


    ld b, $00
    nop
    ldh [$0e], a
    nop
    nop
    ldh a, [$ee]
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    cp $00
    nop
    db $fc
    cp $00
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rla
    nop
    nop
    rla
    rst $28
    nop
    nop
    rlca
    rst $38
    add b
    add b
    rlca
    rst $38
    add b
    add b
    dec de
    db $e3
    add b
    add b
    ei
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
