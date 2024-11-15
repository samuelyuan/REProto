SECTION "ROM Bank $0ca", ROMX[$4000], BANK[$ca]

    nop
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
    rra
    dec de
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld e, $15
    nop
    nop
    jr jr_0ca_4037

    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    nop
    nop
    rra
    inc b
    ld bc, $fc01
    rst $20
    inc bc
    inc bc
    rst $38
    rst $20
    rlca
    rlca
    rst $38

jr_0ca_4037:
    rst $20
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    ldh [rSB], a
    inc bc
    rst $38
    pop hl
    nop
    inc bc
    ccf
    and c
    inc b
    inc bc
    ccf
    cp [hl]
    ld bc, $9f06
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    rra
    nop
    rlca
    rra
    rra
    rlca
    rlca
    rra
    rra
    rlca
    inc bc
    sbc a
    sbc a
    rlca
    inc bc
    cp a
    cp a
    rlca
    rlca
    ld a, $be
    inc b
    inc bc
    cp [hl]
    ld a, $00
    nop
    ld a, $02
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    inc h
    jr jr_0ca_4091

jr_0ca_4091:
    nop
    inc a
    nop
    nop
    nop
    jr c, jr_0ca_4098

jr_0ca_4098:
    nop
    nop
    nop
    jr c, jr_0ca_409d

jr_0ca_409d:
    nop
    nop
    jr c, jr_0ca_40a1

jr_0ca_40a1:
    nop
    jr c, jr_0ca_40a4

jr_0ca_40a4:
    nop
    nop
    jr c, jr_0ca_40e0

    nop
    nop
    jr c, jr_0ca_40e4

    nop
    nop

jr_0ca_40ae:
    jr c, jr_0ca_40e8

    nop
    nop
    jr c, jr_0ca_40ec

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop

jr_0ca_40c2:
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
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    jr nc, jr_0ca_40ae

    nop
    nop

jr_0ca_40e0:
    jr nz, jr_0ca_40c2

    nop
    nop

jr_0ca_40e4:
    ld b, b
    add b
    nop
    nop

jr_0ca_40e8:
    ldh a, [rLCDC]
    nop
    nop

jr_0ca_40ec:
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $08
    add b
    add b
    rst $38
    rst $08
    ret nz

    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    nop
    add b
    ld hl, sp+$0b
    nop
    add b
    ld hl, sp-$05
    ld b, b
    add b
    di
    nop
    nop
    ret nz

    ldh a, [rSB]
    nop
    ret nz

    ldh a, [rSB]
    nop
    ret nz

    ldh a, [$f1]
    nop
    ret nz

    ldh a, [$f1]
    nop
    ret nz

    pop af
    pop af
    ret nz

    ret nz

    di
    di
    ret nz

    add b
    ei
    ei
    ret nz

    add b
    ld sp, hl
    ei
    ret nz

    ret nz

    ld a, [$40f9]
    add b
    ld hl, sp-$80
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld c, b
    jr nc, jr_0ca_414f

jr_0ca_414f:
    nop
    ld a, b
    nop
    nop
    nop
    jr c, jr_0ca_4156

jr_0ca_4156:
    nop
    nop
    nop
    jr c, jr_0ca_415b

jr_0ca_415b:
    nop
    nop
    jr c, jr_0ca_415f

jr_0ca_415f:
    nop
    jr c, jr_0ca_4162

jr_0ca_4162:
    nop
    nop
    jr c, jr_0ca_419e

    nop
    nop
    jr c, jr_0ca_41a2

    nop
    nop
    jr c, jr_0ca_41a6

    nop
    nop
    jr c, jr_0ca_41aa

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
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
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    scf
    nop
    nop
    scf
    jr c, jr_0ca_4199

jr_0ca_4199:
    nop
    dec a
    ld a, [hl+]
    nop
    nop

jr_0ca_419e:
    jr nc, jr_0ca_41cf

    nop
    nop

jr_0ca_41a2:
    ld [de], a
    dec e
    nop
    nop

jr_0ca_41a6:
    ld [$0007], sp
    nop

jr_0ca_41aa:
    rst $38
    ret z

    rlca
    rlca
    ld hl, sp-$31
    rrca
    rrca
    rst $38
    rst $08
    rrca
    rrca
    rst $38
    rst $08
    rrca
    rrca
    rst $38
    rst $00
    rrca
    rrca
    rst $38
    ret nz

    rlca
    inc bc
    rst $38
    pop bc
    inc bc
    inc b
    ld a, a
    ld h, c
    nop
    rlca
    ccf
    ld a, $00
    rlca
    rra

jr_0ca_41cf:
    nop
    nop
    rlca
    rra
    nop
    inc b
    inc bc
    rra
    nop
    nop
    inc bc
    rra
    sbc a

jr_0ca_41dc:
    nop
    inc bc
    rra
    sbc a
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
    nop
    inc bc
    rst $38
    rst $38
    inc bc
    nop
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    adc a
    nop
    ld bc, $b24e
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
    nop
    ld a, b
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ld [hl], b
    add b
    nop
    nop
    nop
    ldh [rSB], a
    nop
    jr nz, jr_0ca_41dc

    nop
    ld bc, $c000
    ld bc, $c000
    nop
    ld bc, $c001
    ret nz

    ld bc, $c001
    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
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

jr_0ca_4250:
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    add b
    nop
    nop
    nop
    rst $38
    sbc a
    nop
    nop
    rst $38
    sbc a
    add b
    add b
    rst $38
    sbc a
    add b
    add b
    rst $38
    sbc a
    add b
    add b
    rst $38
    rrca
    add b
    add b
    db $fc
    dec bc
    ld b, b
    add b
    ld a, [$0009]
    ret nz

    ld sp, hl
    jr jr_0ca_4287

jr_0ca_4287:
    ldh [$f0], a
    ldh a, [$80]
    ld h, b
    ldh a, [rP1]
    jr nz, jr_0ca_4250

    ldh a, [rSB]
    ld b, b
    add b
    db $f4
    rlca
    add b
    nop
    rst $38
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    rst $30
    cp $00
    nop
    ei
    rst $38
    nop
    nop
    rst $38
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld b, b
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    nop
    nop
    inc h
    jr jr_0ca_42cf

jr_0ca_42cf:
    nop
    inc a
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    inc e
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
    inc e
    inc e
    nop
    nop
    ld a, $3e
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
    nop
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
    rra
    dec de
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld e, $15
    nop
    nop
    jr jr_0ca_4337

    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    nop
    nop
    rra
    inc b
    ld bc, $fc01
    rst $20
    inc bc
    inc bc
    rst $38
    rst $20
    rlca
    rlca
    rst $38

jr_0ca_4337:
    rst $20
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    ldh [rTAC], a
    ld bc, $e1ff
    rlca
    nop
    cp a
    ld hl, $0304
    cp a
    ld a, $00
    inc bc
    rra
    add b
    nop
    inc bc
    rra
    add b
    nop
    inc bc
    rra
    add b
    inc bc
    nop
    sbc a
    rra
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    sbc a
    ld e, a
    ld bc, $3f00
    cp a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ld hl, $0000
    ld hl, $001f
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    inc hl
    inc e
    nop
    nop
    ccf
    nop
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld h, $18
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
    nop
    nop

jr_0ca_43ae:
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop

jr_0ca_43c2:
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
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    jr nc, jr_0ca_43ae

    nop
    nop
    jr nz, jr_0ca_43c2

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $08
    add b
    add b
    rst $38
    rst $08
    ret nz

    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    nop
    ret nz

    ld hl, sp+$0b
    nop
    ret nz

    ld a, [$00f9]
    ret nz

    ld a, [c]
    ld bc, $c000
    di
    nop
    ret nz

    nop
    rst $30
    inc bc
    add b
    add b
    di
    rst $30
    add b
    add b
    rst $30
    di
    add b
    add b
    ldh a, [$f3]
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
    ldh a, [rP1]
    nop
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
    ldh a, [rP1]
    nop
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
    ldh a, [rP1]
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
    nop
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
    rra
    dec de
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld e, $15
    nop
    nop
    jr jr_0ca_44b7

    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    nop
    nop
    rra
    inc b
    ld bc, $fc01
    rst $20
    inc bc
    inc bc
    rst $38
    rst $20
    rlca
    rlca
    rst $38

jr_0ca_44b7:
    rst $20
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    ldh [rTAC], a
    ld bc, $e1ff
    nop
    rlca
    cp a
    ld hl, $0700
    cp a
    ld a, $00
    rlca
    sbc a
    nop
    nop
    rlca
    sbc a
    nop
    rlca
    nop
    sbc a
    nop
    inc bc
    inc bc
    sbc a
    sbc a
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    ld bc, $9f01
    sbc a
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
    rra
    ld de, $0000
    ld de, $000e
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
    ld e, $00
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld e, $00
    nop
    nop
    ld e, $00
    nop
    nop
    ld e, $00
    nop
    nop
    ld e, $00
    nop
    ld [de], a
    inc c
    nop
    nop
    ld e, $1e
    nop
    nop

jr_0ca_452e:
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop

jr_0ca_4542:
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
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    jr nc, jr_0ca_452e

    nop
    nop
    jr nz, jr_0ca_4542

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $08
    add b
    add b
    rst $38
    rst $08
    ret nz

    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    nop
    ret nz

    ld a, [$0009]
    ret nz

    ld a, [$00f9]
    ret nz

    di
    nop
    nop
    ret nz

    ldh a, [$03]
    ld b, b
    add b
    ldh a, [$03]
    nop
    add b
    ldh a, [$f3]
    nop
    add b
    ldh a, [$f3]
    nop
    add b
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    di
    rst $30
    add b
    add b
    pop af
    ld a, [c]
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    adc b
    ld [hl], b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld a, b
    add b
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ret z

    jr nc, jr_0ca_45db

jr_0ca_45db:
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
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
    rra
    dec de
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld e, $15
    nop
    nop
    jr jr_0ca_4637

    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    nop
    nop
    rra
    inc b
    ld bc, $fc01
    rst $20
    inc bc
    inc bc
    rst $38
    rst $20
    rlca
    rlca
    rst $38

jr_0ca_4637:
    rst $20
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    ldh [rSB], a
    rlca
    rst $38
    pop hl
    ld bc, $bf06
    ld hl, $0403
    cp a
    ld a, $00
    rlca
    sbc a
    nop
    inc b
    inc bc
    sbc a
    nop
    inc b
    inc bc
    sbc a
    nop
    inc bc
    inc bc
    sbc a
    sbc a
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    sbc a
    sbc a
    nop
    ld bc, $9f1f
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    stop
    nop
    ld de, $000e
    nop
    ld bc, $001e
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
    nop
    nop
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    nop
    ld e, $00
    nop
    ld [de], a
    inc c
    nop
    nop
    ld e, $1e
    nop
    nop

jr_0ca_46ae:
    ld e, $1e
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
    ld a, a
    ld a, a
    nop
    nop

jr_0ca_46c2:
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
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    jr nc, jr_0ca_46ae

    nop
    nop
    jr nz, jr_0ca_46c2

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $08
    add b
    add b
    rst $38
    rst $08
    ret nz

    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    nop
    ret nz

    ei
    ld [$c000], sp
    ei
    ld hl, sp-$80
    ld b, b
    ld a, [c]
    ld bc, $c000
    ld a, [c]
    ld bc, $8040
    ld a, [c]
    ld bc, $8040
    di
    di
    add b
    add b
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    di
    di
    add b
    add b
    ldh a, [$f3]
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld [$00f0], sp
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    adc b
    ld [hl], b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    adc b
    ld [hl], b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
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
    db $fc
    db $fc
    nop
    nop
    db $fc
    call nz, RST_00
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
    rra
    dec de
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld e, $15
    nop
    nop
    jr jr_0ca_47b7

    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    nop
    nop
    rra
    inc b
    ld bc, $fc01
    rst $20
    inc bc
    inc bc
    rst $38
    rst $20
    rlca
    rlca
    rst $38

jr_0ca_47b7:
    rst $20
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    ldh [rSB], a
    rlca
    rst $38
    pop hl
    nop
    rlca
    cp a
    ld hl, $0403
    cp a
    ld a, $03
    inc b
    sbc a
    nop
    inc b
    inc bc
    sbc a
    nop
    nop
    inc bc
    sbc a
    nop
    nop
    inc bc
    sbc a
    rra
    inc bc
    nop
    sbc a
    rra
    inc bc
    inc bc
    sbc a
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    sbc a
    rst $18
    ld bc, $1f00
    sbc a
    nop
    nop
    rra
    stop
    nop
    ld de, $000e
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
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld bc, $001e
    nop
    ld [de], a
    inc c
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

jr_0ca_482e:
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
    db $fc
    db $fc
    nop
    nop

jr_0ca_4842:
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
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    jr nc, jr_0ca_482e

    nop
    nop
    jr nz, jr_0ca_4842

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $08
    add b
    add b
    rst $38
    rst $08
    ret nz

    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    nop
    ei
    ld [$00c0], sp
    ei
    ld hl, sp-$80
    ld b, b
    di
    nop
    nop
    ret nz

    di
    nop
    ld b, b
    add b
    di
    nop
    add b
    nop
    di
    di
    add b
    add b
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    di
    di
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    adc b
    ld [hl], b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld a, b
    add b
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    adc b
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
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld h, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld b, b
    nop
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
    rra
    dec de
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld e, $15
    nop
    nop
    jr jr_0ca_4937

    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    nop
    nop
    rra
    inc b
    ld bc, $fc01
    rst $20
    inc bc
    inc bc
    rst $38
    rst $20
    rlca
    rlca
    rst $38

jr_0ca_4937:
    rst $20
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    ldh [rSB], a
    rlca
    rst $38
    pop hl
    nop
    rlca
    ccf
    and c
    inc b
    inc bc
    cp a
    ld a, $00
    inc bc
    rra
    add b
    nop
    inc bc
    rra
    add b
    nop
    inc bc
    rra
    add b
    inc bc
    nop
    sbc a
    rra
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    sbc a
    ld e, a
    ld bc, $3f00
    cp a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ld hl, $0000
    ld hl, $001f
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    inc hl
    inc e
    nop
    nop
    ccf
    nop
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld h, $18
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
    nop
    nop

jr_0ca_49ae:
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop

jr_0ca_49c2:
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
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    jr nc, jr_0ca_49ae

    nop
    nop
    jr nz, jr_0ca_49c2

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $08
    add b
    add b
    rst $38
    rst $08
    ret nz

    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    nop
    ei
    ld [$00c0], sp
    ld a, [$00f9]
    ret nz

    ld a, [c]
    ld bc, $c000
    di
    nop
    ret nz

    nop
    rst $30
    inc bc
    add b
    add b
    di
    rst $30
    add b
    add b
    rst $30
    di
    add b
    add b
    ldh a, [$f3]
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
    ldh a, [rP1]
    nop
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
    ldh a, [rP1]
    nop
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
    ldh a, [rP1]
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
    nop
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
    rra
    dec de
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld e, $15
    nop
    nop
    jr jr_0ca_4ab7

    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    nop
    nop
    rra
    inc b
    ld bc, $fc01
    rst $20
    inc bc
    inc bc
    rst $38
    rst $20
    rlca
    rlca
    rst $38

jr_0ca_4ab7:
    rst $20
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    ldh [rSB], a
    rlca
    rst $38
    pop hl
    nop
    rlca
    cp a
    ld hl, $0700
    cp a
    ld a, $01
    ld b, $9f
    nop
    inc b
    inc bc
    rra
    add b
    nop
    inc bc
    rra
    add b
    nop
    inc bc
    rra
    sbc a
    nop
    inc bc
    rra
    sbc a
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    sbc a
    rst $18
    ld bc, $1f00
    sbc a
    nop
    nop
    ccf
    ld bc, $0000
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    inc hl
    inc e
    nop
    nop
    ccf
    nop
    nop
    nop
    dec a
    ld [bc], a
    nop
    nop
    ld bc, $003e
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld [bc], a
    inc a
    nop
    nop
    ld h, $18
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
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

jr_0ca_4b2e:
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
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ca_4b42:
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
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    jr nc, jr_0ca_4b2e

    nop
    nop
    jr nz, jr_0ca_4b42

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $08
    add b
    add b
    rst $38
    rst $08
    ret nz

    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    nop
    ld a, [$0009]
    ret nz

    ld a, [$00f9]
    ret nz

    ld a, [c]
    ld bc, $c000
    ld a, [c]
    ld bc, $c000
    di
    nop
    ret nz

    nop
    di
    di
    add b
    add b
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    di
    di
    nop
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
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
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
    nop
    ldh a, [rP1]
    nop
    sub b
    ld h, b
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
    nop
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
    rra
    dec de
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld e, $15
    nop
    nop
    jr jr_0ca_4c37

    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    nop
    nop
    rra
    inc b
    ld bc, $fc01
    rst $20
    inc bc
    inc bc
    rst $38
    rst $20
    rlca
    rlca
    rst $38

jr_0ca_4c37:
    rst $20
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    ldh [rSB], a
    rlca
    rst $38
    pop hl
    ld bc, $bf06
    ld hl, $0403
    cp a
    ld a, $00
    rlca
    sbc a
    nop
    inc b
    inc bc
    sbc a
    nop
    inc b
    inc bc
    sbc a
    nop
    inc bc
    inc bc
    sbc a
    sbc a
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    inc bc
    inc bc
    sbc a
    sbc a
    nop
    ld bc, $9f1f
    nop
    nop
    ccf
    ld hl, $0000
    ld hl, $001e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    inc hl
    inc e
    nop
    nop
    ccf
    nop
    nop
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    inc hl
    inc e
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc e
    inc e
    nop
    nop

jr_0ca_4cae:
    inc e
    inc e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld b, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld bc, $0001
    nop

jr_0ca_4cc2:
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
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    jr nc, jr_0ca_4cae

    nop
    nop
    jr nz, jr_0ca_4cc2

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $08
    add b
    add b
    rst $38
    rst $08
    ret nz

    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    nop
    ret nz

    ei
    ld [$c000], sp
    ei
    ld hl, sp-$80
    ld b, b
    ld a, [c]
    ld bc, $c000
    ld a, [c]
    ld bc, $8040
    ld a, [c]
    ld bc, $8040
    di
    di
    add b
    add b
    rst $30
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    di
    di
    add b
    add b
    ldh a, [$f3]
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
    nop
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
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
    ldh a, [$f0]
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
    nop
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
    rra
    dec de
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld e, $15
    nop
    nop
    jr jr_0ca_4db7

    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    nop
    nop
    rra
    inc b
    ld bc, $fc01
    rst $20
    inc bc
    inc bc
    rst $38
    rst $20
    rlca
    rlca
    rst $38

jr_0ca_4db7:
    rst $20
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    ldh [rTAC], a
    ld bc, $e1ff
    rlca
    nop
    cp a
    ld hl, $0403
    cp a
    ld a, $01
    ld b, $9f
    nop
    dec b
    ld [bc], a
    sbc a
    nop
    inc bc
    nop
    sbc a
    nop
    inc bc
    inc bc
    sbc a
    sbc a
    inc bc
    inc bc
    rst $18
    sbc a
    inc bc
    inc bc
    sbc a
    rst $18
    ld bc, $9f01
    sbc a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ld bc, $0000
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    inc hl
    inc e
    nop
    nop
    ccf
    nop
    nop
    nop
    dec a
    ld [bc], a
    nop
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    ld bc, $003e
    nop
    inc hl
    inc e
    nop
    nop
    inc e
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

jr_0ca_4e2e:
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    inc c
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc b
    nop
    nop
    inc e
    inc e
    nop
    nop

jr_0ca_4e42:
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
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    jr nc, jr_0ca_4e2e

    nop
    nop
    jr nz, jr_0ca_4e42

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $08
    add b
    add b
    rst $38
    rst $08
    ret nz

    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    nop
    ret nz

    ld a, [$0009]
    ret nz

    ei
    ld hl, sp-$80
    ld b, b
    di
    nop
    add b
    ld b, b
    ld a, [c]
    ld bc, $8040
    ld a, [c]
    ld bc, $8000
    ld a, [c]
    pop af
    nop
    add b
    di
    ldh a, [$80]
    nop
    di
    di
    add b
    add b
    di
    rst $30
    add b
    add b
    di
    rst $30
    add b
    add b
    pop af
    ld a, [c]
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
    ldh a, [rP1]
    nop
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
    nop
    ldh a, [rP1]
    nop
    sub b
    ld h, b
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    dec de
    nop
    nop
    dec de
    inc e
    nop
    nop
    ld e, $15
    nop
    nop
    jr jr_0ca_4f6b

    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    nop
    nop
    rra
    inc b
    ld bc, $fc01
    rst $20
    inc bc
    inc bc
    rst $38
    rst $20
    rlca
    rlca
    rst $38

jr_0ca_4f6b:
    rst $20
    rlca
    rlca
    rst $38
    db $e3
    rlca
    rlca
    rst $38
    ldh [rSB], a
    inc bc
    rst $38
    pop hl
    nop
    inc bc
    ccf
    and c
    inc b
    inc bc
    ccf
    cp [hl]
    ld bc, $9f06
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    rra
    nop
    rlca
    rra
    rra
    rlca
    rlca
    rra
    rra
    rlca
    inc bc
    sbc a
    sbc a
    rlca
    inc bc
    cp a
    cp a
    rlca
    rlca
    ld a, $be
    inc b
    inc bc
    cp $7e
    nop
    nop
    cp $82
    nop
    nop
    ret nz

    cp h
    ld bc, $c001
    cp h
    ld bc, $c001
    db $fc
    inc bc
    inc bc
    db $e4
    ret c

    inc bc
    inc bc
    db $fc
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

jr_0ca_4fe2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ca_4ff6:
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
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    jr nc, jr_0ca_4fe2

    nop
    nop
    jr nz, jr_0ca_4ff6

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $08
    add b
    add b
    rst $38
    rst $08
    ret nz

    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    rst $38
    rrca
    ret nz

    ret nz

    rst $38
    rrca
    nop
    add b
    ld hl, sp+$0b
    nop
    add b
    ld hl, sp-$05
    ld b, b
    add b
    di
    nop
    nop
    ret nz

    ldh a, [rSB]
    nop
    ret nz

    ldh a, [rSB]
    nop
    ret nz

    ldh a, [$f1]
    nop
    ret nz

    ldh a, [$f1]
    nop
    ret nz

    pop af
    pop af
    ret nz

    ret nz

    di
    di
    ret nz

    add b
    ei
    ei
    ret nz

    add b
    ld sp, hl
    ei
    ret nz

    ret nz

    cp $fd
    ld b, b
    add b
    cp $82
    nop
    nop
    ld b, $7a
    nop
    nop
    rlca
    ld a, e
    nop
    nop
    rlca
    ld a, a
    nop
    nop
    ld c, a
    scf
    add b
    add b
    ld a, a
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    dec e
    nop
    nop
    inc e
    rra
    nop
    nop
    rla
    ld e, $00
    nop
    jr jr_0ca_50b7

    nop
    nop
    inc e
    dec de
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    ld [bc], a
    nop
    nop
    cp $f3
    ld bc, $ff01
    pop af
    inc bc
    inc bc
    rst $38

jr_0ca_50b7:
    pop af
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [rP1]
    ld bc, $f07f
    nop
    ld bc, $d01f
    nop
    ld bc, $df1f
    ld bc, $0f00
    ret nz

    ld bc, $2f00
    ret nz

    nop
    nop
    rrca
    ldh [rP1], a
    nop
    rrca
    rst $28
    nop
    nop
    rra
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    sbc a
    ld a, a
    nop
    nop
    rra
    stop
    nop
    ld de, $000f
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
    stop
    nop
    nop
    inc e
    nop
    nop
    nop
    inc e
    nop
    nop
    inc e
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
    inc e
    inc e
    nop
    nop
    ld e, $1e
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
    ld h, b
    and b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    nop
    ret nz

    nop
    nop
    add b
    ld b, b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, [hl]
    add $00
    nop
    rst $38
    rst $20
    nop
    nop
    rst $38
    rst $20
    add b
    add b
    rst $38
    rst $00
    add b
    add b
    rst $38
    rlca
    add b
    add b
    rst $38
    ld b, a
    add b
    nop
    db $fc
    ld b, a
    nop
    add b
    db $fc
    cp a
    add b
    nop
    ld a, [$0001]
    add b
    ld hl, sp+$03
    nop
    add b
    ld hl, sp+$03
    nop
    add b
    ld hl, sp-$05
    nop
    add b
    ld hl, sp-$05
    nop
    add b
    ei
    ei
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ei
    db $fd
    add b
    add b
    db $fc
    ei
    add b
    nop
    ldh a, [$80]
    nop
    nop
    add b
    ld [hl], b
    nop
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
    add b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ldh [rP1], a
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
    ldh [$e0], a
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
    nop
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
    rra
    dec e
    nop
    nop
    inc e
    rra
    nop
    nop
    rla
    ld e, $00
    nop
    jr jr_0ca_5237

    nop
    nop
    inc e
    dec de
    nop
    nop
    ld e, $1d
    nop
    nop
    ld a, a
    ld h, d
    nop
    nop
    cp $f3
    ld bc, $ff01
    pop af
    inc bc
    inc bc
    rst $38

jr_0ca_5237:
    pop af
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [rSB]
    nop
    rst $38
    ld [hl], b
    nop
    ld bc, $b87f
    nop
    ld bc, $df1f
    nop
    ld bc, $c01f
    nop
    ld bc, $c01f
    ld bc, $9f00
    ld b, b
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    rst $38
    sbc a
    nop
    nop
    rst $38
    rst $20
    nop
    nop
    rra
    ld h, c
    nop
    nop
    ld [hl+], a
    inc e
    nop
    nop
    nop
    inc a
    nop
    nop
    ld b, h
    jr c, jr_0ca_5289

jr_0ca_5289:
    nop
    jr nz, jr_0ca_52e4

    nop
    nop
    jr c, jr_0ca_52d0

    nop
    nop
    jr jr_0ca_52f4

    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ldh [rP1], a
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
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $f8f8
    ld bc, $fc01
    db $fc
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

jr_0ca_52d0:
    ldh a, [$f0]
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, @-$1e

    nop
    nop
    and b
    ld h, b
    nop
    nop

jr_0ca_52e4:
    ld b, b
    add b
    nop
    nop
    cp $4e
    nop
    nop
    ld a, a
    rst $08
    nop
    nop
    rst $38
    rst $20
    nop
    nop

jr_0ca_52f4:
    rst $38
    rst $20
    add b
    add b
    rst $38
    rst $00
    add b
    add b
    rst $38
    ld [bc], a
    ld b, b
    add b
    rst $38
    ld b, d
    nop
    ret nz

    db $fc
    ld b, l
    nop
    ret nz

    ld a, [$40b9]
    add b
    ldh a, [$03]
    add b
    nop
    db $f4
    inc bc
    nop
    nop
    ld sp, hl
    ld c, $00
    nop
    cp $fe
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
    db $f4
    db $fc
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$80]
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    jr nz, jr_0ca_53a6

    nop
    nop
    jr c, jr_0ca_5392

    nop
    nop
    ld e, b
    jr nz, jr_0ca_5357

jr_0ca_5357:
    nop
    nop
    jr c, jr_0ca_535b

jr_0ca_535b:
    nop
    nop
    jr c, jr_0ca_535f

jr_0ca_535f:
    nop
    jr c, jr_0ca_5362

jr_0ca_5362:
    nop
    nop
    jr c, jr_0ca_539e

    nop
    nop
    jr c, jr_0ca_53a2

    nop
    nop
    jr c, jr_0ca_53a6

    nop
    nop
    jr c, jr_0ca_53aa

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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

jr_0ca_5392:
    rrca
    rrca
    nop
    nop
    rrca
    ld c, $00
    nop
    dec bc
    rrca
    nop
    nop

jr_0ca_539e:
    inc c
    dec bc
    nop
    nop

jr_0ca_53a2:
    ld c, $0d
    nop
    nop

jr_0ca_53a6:
    rrca
    ld c, $00
    nop

jr_0ca_53aa:
    rrca
    add hl, bc
    nop
    nop
    ld a, a
    ld a, c
    nop
    nop
    rst $38
    ld hl, sp+$01
    ld bc, $fcff
    ld bc, $ff01
    db $fc
    ld bc, $ff01
    db $fc
    ld bc, $3f00
    db $fc
    nop
    ld bc, $c42f
    nop
    ld bc, $836f
    nop
    ld bc, $e007
    nop
    ld bc, $e007
    nop
    ld bc, $c027
    ld bc, $e701
    rst $20
    ld bc, $ef01
    rst $28
    ld bc, $ff01
    rst $28
    ld bc, $ef00
    rst $38
    nop
    nop
    adc a
    ld l, a
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
    rlca
    inc b
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
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    inc bc
    inc b
    nop
    nop
    ld [$0007], sp
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    rrca
    nop
    nop
    nop

jr_0ca_5426:
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

jr_0ca_544c:
    ldh a, [$f0]
    nop
    nop

jr_0ca_5450:
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    jr nz, jr_0ca_5426

    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ccf
    rst $20
    nop
    nop
    rst $38
    di
    add b
    add b
    rst $38
    di
    ret nz

    ret nz

    rst $38
    ld h, e
    ret nz

    ret nz

    rst $38
    inc bc
    ret nz

    ret nz

    rst $38
    inc hl
    ret nz

    add b
    cp $23
    ld b, b
    add b
    db $fc
    rst $18
    jr nz, jr_0ca_544c

    cp $01
    jr nz, jr_0ca_5450

    db $fc
    ld bc, $e000
    db $fd
    nop
    nop
    ldh [$fc], a
    db $fc
    or b
    ld d, b
    db $fc
    db $fc
    ld [hl], b
    ld a, b
    db $fc
    db $fc
    ld [hl], b
    ld a, b
    db $fc
    db $fc
    ld [hl], b
    ld a, b
    db $fc
    db $fc
    ld b, b
    ld [hl], b
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    nop
    nop
    nop
    ld b, b
    cp h
    nop
    nop
    ld b, b
    cp h
    nop
    nop
    ld b, h
    cp b
    nop
    nop
    ld b, b
    cp b
    nop
    nop
    ld c, b
    or b
    nop
    nop
    ld a, b
    add b
    nop
    nop
    ret nc

    jr nz, jr_0ca_54d3

jr_0ca_54d3:
    nop
    add b
    ld h, b
    nop
    nop
    and b
    ld b, b
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    add b
    add b
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
    add b
    add b
    nop
    nop
    ret nz

    ret nz

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
    rrca
    ld c, $00
    nop
    dec bc
    rrca
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0d
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    add hl, bc
    nop
    nop
    ld a, a
    ld a, c
    nop
    nop
    rst $38
    ld hl, sp+$01
    ld bc, $fcff
    ld bc, $ff01
    db $fc
    ld bc, $ff01
    db $fc
    ld bc, $3f00
    db $fc
    ld bc, $2f00
    call nz, Call_000_0001
    cpl
    jp Jump_000_0001


    rla
    ldh [rP1], a
    nop
    sub a
    ld h, b
    nop
    nop
    adc a
    ld [hl], b
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    rlca
    dec sp
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
    nop
    nop
    nop
    ld [$0007], sp
    nop
    ld [$0007], sp
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
    inc b
    inc bc
    nop
    nop
    rlca
    nop
    nop
    nop
    ld [$0007], sp
    nop
    ld bc, $000e
    nop
    nop
    ld c, $00
    nop
    ld c, $00
    nop
    nop

jr_0ca_55a6:
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
    ld c, $0e
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    jr nz, jr_0ca_55a6

    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ccf
    rst $20
    nop
    nop
    rst $38
    di
    add b
    add b
    rst $38
    di
    ret nz

    ret nz

    rst $38
    ld h, e
    ret nz

    ret nz

    rst $38
    inc bc
    ret nz

    ret nz

    rst $38
    inc hl
    add b
    add b
    cp $23
    nop
    add b
    db $fc
    rst $18
    nop
    add b
    db $fc
    inc bc
    nop
    add b
    cp $01
    nop
    add b
    cp $01
    nop
    ret nz

    cp $fd
    ret nz

    ret nz

    db $fd
    db $fd
    ldh [$e0], a
    db $fd
    db $fd
    ldh [$f0], a
    db $fd
    db $fd
    ldh [$f0], a
    db $fc
    db $fc
    nop
    ldh [$fc], a
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ldh [rNR32], a
    nop
    nop
    ld b, d
    cp h
    nop
    nop
    ld b, b
    cp [hl]
    nop
    nop
    ld b, b
    cp [hl]
    nop
    nop
    ld d, d
    xor h
    nop
    nop
    ld e, [hl]
    and b
    nop
    nop
    add h
    ld a, b
    nop
    nop
    add h
    ld a, b
    nop
    nop
    ld [$0070], sp
    nop
    add b
    ld [hl], b
    nop
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
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
    rrca
    ld c, $00
    nop
    dec bc
    rrca
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0d
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    add hl, bc
    nop
    nop
    ld a, a
    ld a, c
    nop
    nop
    rst $38
    ld hl, sp+$01
    ld bc, $fcff
    ld bc, $ff01
    db $fc
    ld bc, $ff01
    db $fc
    ld bc, $3f00
    db $fc
    ld bc, $0f00
    db $f4
    nop
    nop
    adc a
    ld [hl], e
    nop
    nop
    adc a
    ld [hl], b
    nop
    nop
    ld c, a
    jr nc, jr_0ca_56d5

jr_0ca_56d5:
    nop
    ld b, a
    jr c, jr_0ca_56d9

jr_0ca_56d9:
    nop
    ld e, a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    dec a
    ccf
    nop
    nop
    dec a
    ccf
    nop
    nop
    inc bc
    rra
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
    ld [$0000], sp
    ld [$0007], sp
    nop
    ld [$0007], sp
    nop
    ld [$0007], sp
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
    rrca
    nop
    nop
    nop
    ld bc, $000e
    nop
    db $10
    ld c, $00
    nop
    ld [bc], a
    inc e
    nop
    nop
    jr nz, jr_0ca_5740

    nop
    nop

jr_0ca_5726:
    inc a
    nop
    nop
    nop
    jr c, jr_0ca_5764

    nop
    nop
    jr c, jr_0ca_5768

    nop
    nop
    jr c, jr_0ca_576c

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a

jr_0ca_5740:
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
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    nop
    ldh [rP1], a
    nop

jr_0ca_5760:
    ld b, b
    and b
    nop
    nop

jr_0ca_5764:
    jr nz, jr_0ca_5726

    nop
    nop

jr_0ca_5768:
    ldh a, [rNR41]
    nop
    nop

jr_0ca_576c:
    ccf
    rst $20
    nop
    nop
    rst $38
    di
    add b
    add b
    rst $38
    di
    ret nz

    ret nz

    rst $38
    ld h, e
    ret nz

    ret nz

    rst $38
    inc bc
    ret nz

    ret nz

    rst $38
    inc hl
    add b
    add b
    rst $38
    ld [hl+], a
    nop
    nop
    db $fd
    sbc $00
    nop
    db $fc
    inc bc
    add b
    nop
    db $fc
    inc bc
    add b
    nop
    db $fc
    inc bc
    ld b, b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ldh [$fc], a
    db $fd
    nop
    ret nz

    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ldh [rNR32], a
    nop
    nop
    ld b, d
    cp h
    nop
    nop
    ld b, b
    cp [hl]
    nop
    nop
    jr nz, jr_0ca_5760

    nop
    nop
    nop
    sbc [hl]
    nop
    nop
    add hl, bc
    sub [hl]
    nop
    nop
    sbc a
    nop
    nop
    nop
    add b
    rrca
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
    nop
    rrca
    nop
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    ldh [$e0], a
    rrca
    ld c, $c0
    nop
    rrca
    rrca
    add b
    add b
    ld c, $0e
    nop
    nop
    nop
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
    rrca
    ld c, $00
    nop
    dec bc
    rrca
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0d
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    add hl, bc
    nop
    nop
    ld a, a
    ld a, c
    nop
    nop
    rst $38
    ld hl, sp+$01
    ld bc, $fcff
    ld bc, $ff01
    db $fc
    ld bc, $ff01
    db $fc
    nop
    nop
    cp a
    ld a, h
    nop
    nop
    adc a
    ld [hl], h
    nop
    nop
    rrca
    ld [hl], e
    nop
    nop
    ld b, a
    jr c, jr_0ca_5851

jr_0ca_5851:
    nop
    rlca
    jr c, jr_0ca_5855

jr_0ca_5855:
    nop
    daa
    jr jr_0ca_5859

jr_0ca_5859:
    nop
    rla
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
    ld c, $0f
    nop
    nop
    add hl, bc
    ld c, $00
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
    nop
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
    nop
    rrca
    nop
    nop
    ld bc, $000e
    nop
    ld [$0006], sp
    nop
    ld e, $00
    nop
    nop
    ld [bc], a
    inc e
    nop
    nop
    jr nz, jr_0ca_58b8

    nop
    nop
    inc b
    jr c, jr_0ca_58a1

jr_0ca_58a1:
    nop
    ld b, b
    jr c, jr_0ca_58a5

jr_0ca_58a5:
    nop

jr_0ca_58a6:
    add sp, -$10
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $e0e0
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]

jr_0ca_58b8:
    ld bc, $f801
    ld hl, sp+$00
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    jr nz, jr_0ca_58a6

    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ccf
    rst $20
    nop
    nop
    rst $38
    di
    add b
    add b
    rst $38
    di
    ret nz

    ret nz

    rst $38
    ld h, e
    ret nz

    ret nz

    rst $38
    inc bc
    ret nz

    ret nz

    rst $38
    inc hl
    add b
    add b
    rst $38
    ld [hl+], a
    nop
    nop
    rst $38
    call c, RST_00
    db $fc
    inc bc
    nop
    nop
    db $fc
    inc bc
    nop
    nop
    db $fd
    ld [bc], a
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
    ccf
    nop
    nop
    rst $38
    ld a, a
    nop
    add b
    db $fc
    ld a, a
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
    ld hl, $0000
    ld de, $008e
    nop
    db $10
    adc a
    nop
    nop
    sub b
    rrca
    add b
    nop
    nop
    rrca
    nop
    add b
    ld [bc], a
    dec c
    nop
    add b
    inc bc
    inc c
    add b
    nop
    ld [$0007], sp
    add b
    nop
    rlca
    nop
    add b
    nop
    rlca
    nop
    add b
    nop
    rlca
    nop
    add b
    rlca
    nop
    add b
    nop
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$80]
    rlca
    rlca
    ldh [$e0], a
    rlca
    inc b
    add b
    nop
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
    rrca
    ld c, $00
    nop
    dec bc
    rrca
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0d
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    add hl, bc
    nop
    nop
    ld a, a
    ld a, c
    nop
    nop
    rst $38
    ld hl, sp+$01
    ld bc, $fcff
    ld bc, $ff01
    db $fc
    ld bc, $ff01
    db $fc
    ld bc, $3f00
    db $fc
    ld bc, $0f00
    db $f4
    nop
    nop
    adc a
    ld [hl], e
    nop
    nop
    add a
    ld [hl], b
    nop
    nop
    ld b, a
    jr nc, jr_0ca_59d5

jr_0ca_59d5:
    nop
    ld b, a
    jr c, jr_0ca_59d9

jr_0ca_59d9:
    nop
    ld e, a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    dec a
    ccf
    nop
    nop
    dec a
    ccf
    nop
    nop
    inc bc
    rra
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
    nop
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
    ld [$0007], sp
    nop
    inc b
    dec bc
    nop
    nop
    rla
    ld [$0000], sp
    ld bc, $001e
    nop
    nop
    ld e, $00
    nop
    ld [hl+], a
    inc e
    nop
    nop
    inc a
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop

jr_0ca_5a26:
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
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
    ld hl, sp-$08
    nop
    nop
    ld a, h
    ld a, h
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
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    jr nz, jr_0ca_5a26

    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ccf
    rst $20
    nop
    nop
    rst $38
    di
    add b
    add b
    rst $38
    di
    ret nz

    ret nz

    rst $38
    ld h, e
    ret nz

    ret nz

    rst $38
    inc bc
    ret nz

    ret nz

    rst $38
    inc hl
    add b
    add b
    rst $38
    ld [hl+], a
    nop
    nop
    cp $dc
    nop
    nop
    cp $00
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
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
    cp $fc
    nop
    nop
    db $fc
    cp $00
    nop
    db $fc
    db $fc
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
    db $fc
    nop
    nop
    nop
    ld b, b
    cp h
    nop
    nop
    ld b, b
    cp h
    nop
    nop
    ld b, b
    cp h
    nop
    nop
    ld b, b
    cp h
    nop
    nop
    ret nz

    inc a
    nop
    nop
    db $e4
    jr jr_0ca_5acf

jr_0ca_5acf:
    nop
    inc a
    ld b, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld hl, sp+$00
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
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
    rrca
    nop
    nop
    rrca
    ld c, $00
    nop
    dec bc
    rrca
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0d
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    add hl, bc
    nop
    nop
    ld a, a
    ld a, c
    nop
    nop
    rst $38
    ld hl, sp+$01
    ld bc, $fcff
    ld bc, $ff01
    db $fc
    ld bc, $ff01
    db $fc
    ld bc, $3f00
    db $fc
    ld bc, $2f00
    call nz, Call_000_0001
    cpl
    jp Jump_000_0001


    rla
    ldh [rP1], a
    nop
    sub a
    ld h, b
    nop
    nop
    adc a
    ld [hl], b
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
    ld a, e
    ld a, a
    nop
    nop
    ld a, e
    ld a, a
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    inc c
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
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
    nop
    rlca
    nop
    nop
    ld [$0007], sp
    nop
    rrca
    nop
    nop
    nop
    ld c, $0e
    nop
    nop

jr_0ca_5ba6:
    ld e, $1e
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
    rrca
    rrca
    nop
    nop
    rlca
    rlca
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    jr nz, jr_0ca_5ba6

    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ccf
    rst $20
    nop
    nop
    rst $38
    di
    add b
    add b
    rst $38
    di
    ret nz

    ret nz

    rst $38
    ld h, e
    ret nz

    ret nz

    rst $38
    inc bc
    ret nz

    ret nz

    rst $38
    inc hl
    add b
    add b
    rst $38
    ld [hl+], a
    nop
    nop
    rst $38
    call c, RST_00
    db $fc
    inc bc
    nop
    nop
    db $fc
    inc bc
    nop
    nop
    db $fd
    ld [bc], a

jr_0ca_5c16:
    nop
    nop
    rst $38
    rst $38

jr_0ca_5c1a:
    nop
    nop
    rst $38
    rst $38

jr_0ca_5c1e:
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    add b
    db $fc
    rst $38
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    inc a
    nop
    nop
    inc a
    ret nz

    nop
    nop
    inc h
    ret c

    nop
    nop
    jr nz, jr_0ca_5c16

    nop
    nop
    jr nz, jr_0ca_5c1a

    nop
    nop
    jr nz, jr_0ca_5c1e

    nop
    nop
    ldh [rNR23], a
    nop
    nop
    ld l, b
    sub b
    nop
    nop
    ld a, b
    add b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ldh [rP1], a
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
    ldh [$e0], a
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
    nop
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
    rrca
    ld c, $00
    nop
    dec bc
    rrca
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0d
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    add hl, bc
    nop
    nop
    ld a, a
    ld a, c
    nop
    nop
    rst $38
    ld hl, sp+$01
    ld bc, $fcff
    ld bc, $ff01
    db $fc
    ld bc, $ff01
    db $fc
    ld bc, $3f00
    db $fc
    nop
    ld bc, $c42f
    nop
    ld bc, $836f
    nop
    ld bc, $e007
    nop
    ld bc, $e007
    nop
    ld bc, $c027
    ld bc, $e701
    rst $20
    ld bc, $ef01
    rst $28
    ld bc, $ef01
    rst $28
    ld bc, $ef00
    rst $38
    nop
    nop
    sbc a
    ld l, a
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    ld b, $00
    nop
    ld b, $05
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
    nop
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
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop

jr_0ca_5d26:
    inc bc
    nop
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
    inc bc
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
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    jr nz, jr_0ca_5d26

    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ccf
    rst $20
    nop
    nop
    rst $38
    di
    add b
    add b
    rst $38
    di
    ret nz

    ret nz

    rst $38
    ld h, e
    ret nz

    ret nz

    rst $38
    inc bc
    ret nz

    ret nz

    rst $38
    inc hl
    add b
    add b
    rst $38
    ld [hl+], a
    nop
    nop
    db $fd
    sbc $00
    nop
    db $fc
    inc bc
    add b
    nop
    db $fc
    inc bc
    add b
    nop
    db $fc
    inc bc
    ld b, b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ldh [$fc], a
    db $fd
    nop
    ret nz

    db $fc
    db $fc
    nop
    nop
    db $fc
    inc a

jr_0ca_5db2:
    nop
    nop
    inc a
    ret nz

    nop
    nop
    inc h
    ret c

    nop
    nop
    inc h
    ret c

    nop
    nop
    db $10
    add sp, $00
    nop
    db $10
    add sp, $00
    nop
    sub b
    ld l, b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    jr jr_0ca_5db2

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
    ldh a, [rP1]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    ldh [rP1], a
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
    rrca
    ld c, $00
    nop
    dec bc
    rrca
    nop
    nop
    inc c
    dec bc
    nop
    nop
    ld c, $0d
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    add hl, bc
    nop
    nop
    ld a, a
    ld a, c
    nop
    nop
    rst $38
    ld hl, sp+$01
    ld bc, $fcff
    ld bc, $ff01
    db $fc
    ld bc, $ff01
    db $fc
    inc bc
    nop
    rst $38
    inc a
    inc bc
    nop
    rst $28
    inc b
    rlca
    nop
    rst $08
    inc bc
    ld b, $01
    ld b, a
    add b
    ld b, $01
    rlca
    add b
    ld b, $01
    rlca
    add b
    ld b, $07
    rlca
    add a
    rlca
    rlca
    adc a
    adc a
    rlca
    rlca
    rst $08
    adc a
    rlca
    inc bc
    adc a
    rst $08
    ld [bc], a
    ld bc, $8f0f
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    ld [bc], a
    nop
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

jr_0ca_5ea6:
    ld c, $0f
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
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
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    and b
    nop
    nop
    jr nz, jr_0ca_5ea6

    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ccf
    rst $20
    nop
    nop
    rst $38
    di
    add b
    add b
    rst $38
    di
    ret nz

    ret nz

    rst $38
    ld h, e
    ret nz

    ret nz

    rst $38
    inc bc
    ret nz

    ret nz

    rst $38
    inc hl
    add b
    add b
    cp $23
    nop
    add b
    db $fc
    rst $18
    nop
    add b
    db $fc
    inc bc

jr_0ca_5f0e:
    ld b, b
    add b
    cp $01
    ld b, b
    add b
    cp $01
    nop
    ret nz

    cp $fd

jr_0ca_5f1a:
    ret nz

    ret nz

    db $fd
    db $fd
    ldh [$e0], a
    db $fd
    db $fd

jr_0ca_5f22:
    ldh [$f0], a
    db $fd
    db $fd
    ldh [$f0], a
    db $fc
    db $fc
    nop
    ldh [$fc], a
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    stop
    nop
    jr jr_0ca_5f1a

    nop
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    nop
    ld hl, sp+$00
    nop
    jr nz, jr_0ca_5f22

    nop
    nop
    jr c, jr_0ca_5f0e

    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, b
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld hl, sp-$40
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    dec e
    nop
    nop
    inc e
    rra
    nop
    nop
    rla
    ld e, $00
    nop
    jr jr_0ca_5feb

    nop
    nop
    inc e
    dec de
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    ld [bc], a
    nop
    nop
    cp $f3
    ld bc, $ff01
    pop af
    inc bc
    inc bc
    rst $38

jr_0ca_5feb:
    pop af
    inc bc
    inc bc
    rst $38
    ldh a, [$03]
    inc bc
    rst $38
    ldh a, [rP1]
    ld bc, $f07f
    nop
    ld bc, $d01f
    nop
    ld bc, $df1f
    ld bc, $0f00
    ret nz

    ld bc, $2f00
    ret nz

    nop
    nop
    rrca
    ldh [rP1], a
    nop
    rrca
    rst $28
    nop
    nop
    rra
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    ret nc

    ld bc, $d101
    rst $28
    inc bc
    inc bc
    pop bc
    rst $38
    inc bc
    inc bc
    pop bc
    rst $38
    inc bc
    inc bc
    or c
    adc [hl]
    inc bc
    inc bc
    cp a
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
    ld h, b
    and b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    nop
    ret nz

    nop
    nop
    add b
    ld b, b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ld a, [hl]
    add $00
    nop
    rst $38
    rst $20
    nop
    nop
    rst $38
    rst $20
    add b
    add b
    rst $38
    rst $00
    add b
    add b
    rst $38
    rlca
    add b
    add b
    rst $38
    ld b, a
    add b
    nop
    db $fc
    ld b, a
    nop
    add b
    db $fc
    cp a
    add b
    nop
    ld a, [$0001]
    add b
    ld hl, sp+$03
    nop
    add b
    ld hl, sp+$03
    nop
    add b
    ld hl, sp-$05
    nop
    add b
    ld hl, sp-$05
    nop
    add b
    ei
    ei
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ei
    db $fd
    add b
    add b
    db $fc
    ei
    add b
    nop
    ld hl, sp-$80
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    ld [$00f0], sp
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
    nop
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $39
    nop
    nop
    ld a, a
    ld a, e
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rla
    nop
    nop
    inc e
    rla
    nop
    nop
    inc e
    inc de
    nop
    nop
    inc e
    rra
    nop
    nop
    rrca
    nop
    nop
    nop
    ld c, $01
    nop
    nop
    ld c, $01
    nop
    nop
    ld c, $0f
    nop
    nop
    ld e, $1f
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
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
    ld bc, $0006
    nop
    ld bc, $0006
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

jr_0ca_61d2:
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
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
    ld h, b
    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$40

jr_0ca_61fa:
    nop
    nop
    ld hl, sp-$40

jr_0ca_61fe:
    nop
    nop
    ld a, b
    ret z

    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    add b
    nop
    nop
    jr nz, jr_0ca_61d2

    nop
    nop
    jr nz, @-$3e

    nop
    nop
    jr nz, jr_0ca_61fa

    nop
    nop
    jr nz, jr_0ca_61fe

    nop
    nop
    ldh [$e0], a
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    ldh [$f0], a
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    add b
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
    add b
    nop
    nop
    ldh [$e0], a
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ccf
    dec sp
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rla
    nop
    nop
    inc e
    rla
    nop
    nop
    inc e
    inc de
    nop
    nop
    inc e
    rra
    nop
    nop
    inc c
    inc bc
    nop
    nop
    rrca
    nop
    nop
    nop
    ld c, $01
    nop
    nop
    ld c, $0f
    nop
    nop
    ld e, $1f
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld e, $00
    nop
    rrca
    rrca
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
    dec b
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
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
    ld bc, $0006
    nop
    ld bc, $0006
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

jr_0ca_6352:
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
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
    ldh [$80], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$40

jr_0ca_637a:
    nop
    nop
    ld hl, sp-$40

jr_0ca_637e:
    nop
    nop
    ld a, b
    ret z

jr_0ca_6382:
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    add b
    nop
    nop
    jr nz, jr_0ca_6352

    nop
    nop
    jr nz, @-$3e

    nop
    nop
    jr nz, jr_0ca_637a

    nop
    nop
    jr nz, jr_0ca_637e

    nop
    nop
    jr nz, jr_0ca_6382

    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    ldh [$f0], a
    nop
    nop
    sub b
    ld h, b
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
    add b
    nop
    nop
    ldh [$e0], a
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $39
    nop
    nop
    ld a, a
    ld a, e
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rla
    nop
    nop
    rra
    stop
    nop
    inc e
    inc de
    nop
    nop
    ld e, $19
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
    rrca
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
    inc e
    rra
    nop
    nop
    rrca
    rrca
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
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
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
    ld bc, $0006
    nop
    ld bc, $0006
    nop
    ld bc, $0006
    nop
    ld bc, $0006
    nop
    rlca
    nop
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
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
    ret nz

    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
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
    ld h, b
    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp+$48
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rNR10], a
    nop
    nop
    ldh [rSVBK], a
    nop
    nop
    ld a, b
    add sp, $00
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    cp $00
    nop
    call c, Call_000_00de
    nop
    ret nz

    call z, RST_00
    ret nz

    ret nz

    nop
    nop
    add b
    add b
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
    add b
    ld b, b
    nop
    nop
    and b
    ld b, b
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
    and b
    ld b, b
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
    add b
    add b
    nop
    nop
    ldh [$e0], a
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $39
    nop
    nop
    ld a, a
    ld a, e
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rla
    nop
    nop
    rra
    inc d
    nop
    nop
    ld e, $11
    nop
    nop
    ld e, $1d
    nop
    nop
    ld c, $01
    nop
    nop
    ld c, $01
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    ld c, $00
    nop
    rra
    rra
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    nop
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
    add hl, bc
    ld b, $00
    nop
    ld bc, $000e
    nop
    db $10
    ld c, $00
    nop
    ld [bc], a
    inc e
    nop
    nop
    inc e
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
    inc e
    inc e
    nop
    nop
    ld e, $1e
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a

jr_0ca_664a:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
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
    ld h, b
    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0ca_664a

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
    ldh [rP1], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    add b
    ldh a, [rP1]
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    add b
    nop
    nop
    and b
    ld b, b
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
    add b
    ld [hl], b
    nop
    nop
    adc b
    ld [hl], b
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
    jr c, jr_0ca_66d7

jr_0ca_66d7:
    nop
    nop
    inc a
    nop
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
    rra
    rra
    ldh [$e0], a
    ccf
    ccf
    add b
    add b
    ld a, $3e
    nop
    nop
    or b
    or b
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $39
    nop
    nop
    ld a, a
    ld a, e
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rla
    nop
    nop
    rra
    inc d
    nop
    nop
    ld e, $11
    nop
    nop
    ld e, $1d
    nop
    nop
    rrca
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
    rra
    rra
    nop
    nop
    rrca
    rrca
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
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0006
    nop
    add hl, bc
    ld b, $00
    nop
    ld bc, $000e
    nop
    ld [de], a
    inc c
    nop
    nop
    inc h
    jr jr_0ca_67a1

jr_0ca_67a1:
    nop
    ld a, b
    ld b, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh [$e0], a
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
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
    ldh [$e0], a

jr_0ca_67ca:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
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
    ld h, b
    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0ca_67ca

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    sbc b
    add sp, $00
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    cp $00
    nop
    call c, Call_000_00de
    nop
    ret nz

    call z, RST_00
    ret nz

    ret nz

    nop
    nop
    ret nz

    nop
    nop
    nop
    and b
    ld b, b
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
    add b
    ld a, b
    nop
    nop
    call nz, RST_38
    nop
    and b
    inc e
    nop
    nop
    add d
    inc e
    nop
    nop
    db $10
    ld c, $00
    nop
    nop
    ld c, $00
    nop
    add hl, bc
    ld b, $00
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
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    cp $fe
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ldh [$e0], a
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
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $39
    nop
    nop
    ld a, a
    ld a, e
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rla
    nop
    nop
    rra
    ld d, $00
    nop
    rra
    ld [de], a
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    ld bc, $0000
    rra
    nop
    nop
    nop
    rra
    nop
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    ld [bc], a
    ld bc, $0000
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
    ld de, $000e
    nop
    ld [hl+], a
    inc e
    nop
    nop
    ld h, h
    jr jr_0ca_6921

jr_0ca_6921:
    nop
    ld hl, sp-$20
    ld bc, $f001
    ldh [rTAC], a
    rlca
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    ld bc, $c101
    pop bc
    nop
    nop
    pop hl
    pop hl
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
    ret nz

    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
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
    ld h, b
    add b

jr_0ca_696a:
    nop
    nop
    ret nz

    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    jr jr_0ca_696a

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ld [hl], b
    nop
    nop
    ret nz

    cp b
    nop
    nop
    ldh [$58], a
    nop
    nop
    ldh [$d8], a
    nop
    nop
    ld a, [c]
    rst $28
    nop
    nop
    rst $38
    rst $38
    nop
    add b
    rst $08
    rst $08
    nop
    add b
    call nz, Call_000_00c7
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

    nop
    nop
    nop
    ld h, b
    add b
    nop
    nop
    ld b, b
    and b
    nop
    nop
    ld b, b
    and b
    nop
    nop
    ld b, b
    or b
    nop
    nop
    ld b, b
    or b
    nop
    nop
    ld d, b
    and b
    nop
    nop
    ldh a, [rP1]
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
    ldh [rP1], a
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $39
    nop
    nop
    ld a, a
    ld a, e
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rla
    nop
    nop
    rra
    inc d
    nop
    nop
    ld e, $11
    nop
    nop
    ld e, $1d
    nop
    nop
    rrca
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
    rra
    rra
    nop
    nop
    rrca
    rrca
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
    inc b
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld b, $01
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
    ld b, $01
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rlca
    inc b
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a

jr_0ca_6aca:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
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
    ld h, b
    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0ca_6aca

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    sbc b
    add sp, $00
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    cp $00
    nop
    call c, Call_000_00de
    nop
    ret nz

    call z, RST_00
    ret nz

    ret nz

    nop
    nop
    add b
    nop
    nop
    nop
    nop
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
    jr nz, @-$3e

    nop
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
    ld b, b
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
    nop
    nop
    nop
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
    ldh [$e0], a
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $39
    nop
    nop
    ld a, a
    ld a, e
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rla
    nop
    nop
    rra
    inc d
    nop
    nop
    ld e, $11
    nop
    nop
    ld e, $1d
    nop
    nop
    ld c, $01
    nop
    nop
    ld c, $01
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    ld c, $00
    nop
    rra
    rra
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $05
    nop
    nop
    ld b, $01
    nop
    nop
    ld b, $01
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
    inc bc
    inc b
    nop
    nop
    ld bc, $0006
    nop
    add hl, bc
    ld b, $00
    nop
    ld bc, $000e
    nop
    db $10
    ld c, $00
    nop
    ld [bc], a
    inc e
    nop
    nop
    inc e
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
    inc e
    inc e
    nop
    nop
    ld e, $1e
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a

jr_0ca_6c4a:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
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
    ld h, b
    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$40

jr_0ca_6c7a:
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0ca_6c4a

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
    ldh [rP1], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    add b
    ldh a, [rP1]
    nop
    ret nz

    ret nz

    nop
    nop
    ld b, b
    add b
    nop
    nop
    jr nz, jr_0ca_6c7a

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
    adc b
    ld [hl], b
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
    jr c, jr_0ca_6cd7

jr_0ca_6cd7:
    nop
    nop
    inc a
    nop
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
    rra
    rra
    ldh [$e0], a
    ccf
    ccf
    add b
    add b
    ld a, $3e
    nop
    nop
    or b
    or b
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $39
    nop
    nop
    ld a, a
    ld a, e
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rla
    nop
    nop
    rra
    stop
    nop
    inc e
    inc de
    nop
    nop
    ld e, $19
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
    rrca
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
    inc e
    rra
    nop
    nop
    rrca
    rrca
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
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld b, $01
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
    inc bc
    inc b
    nop
    nop
    ld bc, $0006
    nop
    add hl, bc
    ld b, $00
    nop
    ld bc, $000e
    nop
    ld [de], a
    inc c
    nop
    nop
    inc h
    jr jr_0ca_6da1

jr_0ca_6da1:
    nop
    ld a, b
    ld b, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh [$e0], a
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
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
    ld h, b
    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$40

jr_0ca_6dfa:
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp+$48
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rNR10], a
    nop
    nop
    ldh [rSVBK], a
    nop
    nop
    ld a, b
    add sp, $00
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    cp $00
    nop
    call c, Call_000_00de
    nop
    ret nz

    call z, RST_00
    ret nz

    ret nz

    nop
    nop
    ld b, b
    add b
    nop
    nop
    jr nz, jr_0ca_6dfa

    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ld [$00f0], sp
    nop
    add b
    ld a, b
    nop
    nop
    call nz, RST_38
    nop
    and b
    inc e
    nop
    nop
    add d
    inc e
    nop
    nop
    db $10
    ld c, $00
    nop
    nop
    ld c, $00
    nop
    add hl, bc
    ld b, $00
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
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ldh [$e0], a
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
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    rra
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $39
    nop
    nop
    ld a, a
    ld a, e
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rla
    nop
    nop
    rra
    stop
    nop
    jr jr_0ca_6edf

    nop
    nop
    inc e
    inc bc
    nop
    nop
    ld de, $000e
    nop
    inc de
    inc c
    nop
    nop
    inc de
    inc c
    nop
    nop
    rra
    dec e
    nop
    nop
    dec e

jr_0ca_6edf:
    rra
    nop
    nop
    dec e
    rra
    nop
    nop
    inc bc
    dec e
    nop
    nop
    rrca
    rrca
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
    ld b, $00
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
    rlca
    nop
    nop
    nop
    ld bc, $0006
    nop
    add hl, bc
    ld b, $00
    nop
    ld de, $000e
    nop
    ld [hl+], a
    inc e
    nop
    nop
    ld h, h
    jr jr_0ca_6f21

jr_0ca_6f21:
    nop
    ld hl, sp-$20
    ld bc, $f001
    ldh [rTAC], a
    rlca
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    ld bc, $c101
    pop bc
    nop
    nop
    pop hl
    pop hl
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
    ret nz

    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
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
    ld h, b
    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$40

jr_0ca_6f7a:
    nop
    nop
    ld hl, sp-$40
    nop
    nop
    ld hl, sp+$48
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [rNR10], a
    nop
    nop
    ldh [rNR23], a

jr_0ca_6f92:
    nop
    nop
    ldh [rNR23], a

jr_0ca_6f96:
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ld a, [c]
    rst $28
    nop
    nop
    rst $38
    rst $38
    nop
    add b
    rst $08
    rst $08
    nop
    add b
    call nz, Call_000_00c7
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

    nop
    nop
    nop
    jr nz, jr_0ca_6f7a

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    add b
    ld [hl], b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    jr nc, jr_0ca_6f92

    nop
    nop
    jr nz, jr_0ca_6f96

    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ldh [rP1], a
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    ld e, $00
    nop
    rra
    inc e
    nop
    nop
    ccf
    dec a
    nop
    nop
    ccf
    dec sp
    nop
    nop
    ccf
    dec sp
    nop
    nop
    rra
    dec de
    nop
    nop
    rrca
    dec bc
    nop
    nop
    ld c, $0b
    nop
    nop
    ld c, $09
    nop
    nop
    ld c, $0f
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
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    inc bc
    jr jr_0ca_70be

    inc bc
    inc bc
    inc a
    inc a
    inc bc
    ld [bc], a
    ccf
    ccf
    jp nz, Jump_000_3f01

    ccf
    sub d
    ld h, c
    ld [hl], e
    ld [hl], e
    add [hl]
    ld a, c
    ld [hl], b
    ld [hl], b
    jr nz, jr_0ca_70db

    ld h, b
    ld h, b

jr_0ca_70be:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ca_70db:
    nop
    nop
    nop

jr_0ca_70de:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08

jr_0ca_7102:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    add b
    ld [hl], b
    nop
    nop
    add b
    ldh a, [rP1]
    nop
    ret nz

    jr nc, jr_0ca_711b

jr_0ca_711b:
    nop
    jr nc, jr_0ca_70de

    nop
    nop
    ldh [$c0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    db $fc
    ldh [rP1], a
    nop
    db $fc
    ldh [rP1], a
    nop
    inc a
    db $e4
    nop
    nop
    jr c, jr_0ca_7102

    nop
    nop
    jr nc, @-$0e

    nop
    nop
    or b
    ld b, b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ret c

    cp b
    nop
    nop
    ret c

    cp b
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ret z

    or b
    nop
    nop
    ret nz

    nop
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
    add b
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
