SECTION "ROM Bank $0c4", ROMX[$4000], BANK[$c4]

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
    rlca
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
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
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
    cp $01
    db $fc
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
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, $00
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    inc bc
    add sp, $17
    db $ec
    inc de
    ret z

    scf
    jp $c03f


    ccf
    add b
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    inc de
    rst $28
    add a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    ldh a, [$f0]
    rst $38
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
    rst $38
    ld a, a
    rst $38
    rst $38
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
    ret nz

    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc

Jump_0c4_413d:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
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
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    ldh a, [rIE]
    rst $38
    rst $38
    rst $20
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $00
    rst $38
    rst $18
    rst $38
    add a
    rst $38
    add e
    rst $38
    add e
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

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
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $ffe0
    ldh a, [rIE]
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add hl, bc
    or $0f
    ldh a, [rTAC]
    ld hl, sp+$3f
    ret nz

    rra
    ldh [$8f], a
    ldh a, [$3f]
    ret nz

    sbc a
    ldh [$df], a
    ldh [$93], a
    db $ec
    sbc e
    db $e4
    xor b
    rst $10
    cp h
    jp $e0df


    rst $38
    ret nz

    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$e0], a
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    rst $38
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
    cp $fe
    db $fc
    db $fc
    rst $38
    ld sp, hl
    ld a, [$fef9]
    ld sp, hl
    cp $f9
    cp $f0
    rst $30
    pop af
    or $f0
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    db $f4
    ldh [$f8], a
    ldh [$f1], a
    ldh [$e8], a
    ldh [$f1], a
    ldh [$bf], a
    ldh [rIF], a
    ldh a, [rIF]
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$06
    ld hl, sp+$06
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    cp $03
    cp $01
    cp $01
    cp $01
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    add hl, bc
    ld d, $20
    rst $18
    ld [hl], b
    adc a
    cp $01
    db $fc
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    db $fc
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld b, c
    cp a
    ld bc, $c2ff
    ccf
    pop hl
    rra
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $e4
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$e1]
    cp $c1
    sbc $c3
    db $fc
    add e
    cp h
    ld b, a
    jr c, jr_0c4_435a

    ret nc

    ld h, a
    sbc b
    ld h, a
    sbc b
    cp b
    nop
    ld hl, sp+$00
    ldh [rP1], a
    add sp, $00
    ldh a, [rP1]
    ld a, [c]
    nop
    ret nc

    nop
    rst $30
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    db $10
    cp $28
    cp $54
    rst $38
    adc b
    rst $38
    ld b, b
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a

jr_0c4_435a:
    rst $20
    nop
    rst $28
    nop
    rst $18
    nop
    ld a, a
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rst $18
    ld a, [bc]
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    ld [c], a
    rst $38
    rst $30
    rst $38
    ld a, [c]
    rst $38
    ldh a, [$f3]
    ldh a, [$fb]
    ldh a, [$7f]
    ldh [$37], a
    pop bc
    scf
    ldh [$33], a
    pop bc
    inc de
    ld [c], a
    dec [hl]
    ret nz

    nop
    ldh [rSB], a
    ldh [rNR13], a
    ldh [$03], a
    ldh [$03], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    ld hl, $26c0
    ret nz

    rla
    jp nz, $d73f

    ccf
    rst $38
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
    rlca
    ret nz

    ccf
    add b
    ld a, a
    db $10
    rst $28
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ld [$00ff], sp
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    add c
    ld a, [hl]
    cpl
    ret nc

    xor b
    ld d, a
    rst $30
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    ldh [$60], a
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp h
    nop
    inc a
    nop
    ld e, $00
    ld e, $00
    cp $00
    rst $08
    ld [bc], a
    ld c, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    and l
    nop
    ld d, a
    nop
    rst $00
    nop
    adc a
    nop
    rrca
    nop
    rrca
    nop
    ld e, a
    nop

jr_0c4_4458:
    rst $38
    ld [bc], a
    rst $38
    inc d
    rst $38
    jr z, jr_0c4_4458

    ld b, b
    sub d
    nop
    ccf
    nop
    rst $38
    jr z, @+$01

    ld d, c
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
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
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, a
    cp $ff
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld d, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    ld a, a
    dec e
    ld a, a
    ld [bc], a
    rst $30
    inc bc
    rst $28
    ld [bc], a
    rst $38
    nop
    rst $18
    nop
    ld e, a
    nop
    ld a, a
    nop
    rst $38
    ld b, h
    rra
    ld [$40ff], sp
    rst $38
    ld [$fcff], a
    rst $38
    ld hl, sp-$03
    db $f4
    rst $38
    add sp, -$42
    ldh a, [rNR32]
    ldh [rNR32], a
    ldh [rNR33], a
    ldh [$1f], a
    ldh [$1f], a
    ld [c], a
    rrca
    db $fd
    rrca
    rrca
    rlca
    rrca
    inc bc
    ld a, a
    inc bc
    rra
    inc bc
    rra
    ld bc, $003f
    ld a, a
    nop
    ccf
    rra
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    db $e3
    rst $38
    inc bc
    rst $38
    di
    rst $38
    ld sp, $39ff
    rst $38
    dec [hl]
    rst $38
    ld d, a
    rst $38
    ld h, e
    rst $38
    add e
    rst $38
    rst $08
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    add c
    rst $38
    inc hl
    rst $18
    ld [hl], c
    adc a
    ld b, $f8
    add hl, de
    ldh a, [rNR42]
    ldh [rSTAT], a
    add b
    add b
    nop
    nop
    nop
    ld [bc], a
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
    nop
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
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    add d
    nop
    rst $08
    ld [bc], a
    rst $30
    nop
    rst $20
    nop
    ld a, a
    nop
    rrca
    nop
    cpl
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    ld [$40fe], sp
    ld a, a
    ld [$147f], sp
    rst $38
    jr c, @+$01

    ld [hl], h
    rst $38
    ldh [rIE], a
    ld h, h
    rst $38
    ld [hl+], a
    ei
    nop
    ld e, a
    nop
    adc a
    nop
    and a
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld b, c
    rst $38
    ld [$fdff], a
    rst $38
    cp $ff
    rst $38
    rst $38
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
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    ldh [$f8], a
    ret nz

    db $f4
    and b
    db $fc
    ldh [$fc], a
    ldh [rIE], a
    ld d, b
    ei
    nop
    ld sp, hl
    nop
    rst $38
    add b
    ld sp, hl
    ld d, b
    rst $38
    jr nz, jr_0c4_461e

    db $10
    cp a
    ld [$059f], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03cf
    rst $18
    ld bc, $00ff
    cp a
    ld de, $001f
    ld bc, $0300
    nop
    rra
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    ld a, a
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld b, d
    nop
    add hl, bc
    nop
    inc e
    nop
    inc e
    nop
    inc c
    ld [$0008], sp
    nop
    nop
    jr nz, jr_0c4_45e0

jr_0c4_45e0:
    ld c, c
    nop
    dec bc
    nop
    ld e, $00
    inc e
    nop
    inc e
    nop
    rra
    nop
    rrca
    nop
    rrca
    ld bc, $000f
    rrca
    nop
    ccf
    nop
    cp a
    inc b
    rst $38
    nop
    rst $38
    ld bc, $02ff
    ld a, a
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0c4_461e:
    rst $38
    ld bc, $00ef
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
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    cp $00
    rst $38
    ld b, h
    rst $38
    adc b
    rst $38
    ld b, b
    rst $38
    adc d
    rst $38
    ld b, b
    rst $38
    ret nz

    push af
    ret nc

    push af
    ret nz

    push af
    ret nz

    rst $38
    ldh [$f7], a
    pop bc
    rst $38
    ret nz

    rst $38
    add c
    rrca
    nop
    rra
    nop
    rlca
    nop
    rrca
    nop
    daa
    nop
    ld c, a
    ld bc, $007f
    ld a, a
    ld bc, $00ff
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld [$10ff], sp
    rst $38
    and b
    rst $38
    nop
    rst $30
    add b
    rst $30
    ret nz

    rst $38
    add b
    cp $04
    db $fd
    ld [$04fe], sp
    rst $38
    ld [hl+], a
    rst $38
    inc d
    rst $38
    xor d
    rst $38
    ld d, a
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    ldh a, [$df]
    rst $38
    rrca
    rst $38
    ld a, a
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
    ld b, a
    nop
    rra
    ld bc, $001f
    rlca
    nop
    rlc b
    ld a, c
    nop
    dec a
    nop
    ccf
    nop
    rst $38
    nop
    cp a
    db $10
    ld a, a
    nop
    ccf
    inc d
    ccf
    jr nz, @+$01

    ld bc, $00ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    cp a
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    dec d
    rst $38
    nop
    rst $38
    ld bc, $0aff
    rst $38
    ld bc, $00ff
    rst $38
    dec b
    cp a
    ld [$143f], sp
    ccf
    ld [bc], a
    ccf
    nop
    sbc a
    nop
    rst $38
    nop
    ld a, a
    ld [bc], a
    rst $38
    inc b
    ld e, a
    ld [bc], a
    rst $08
    ld b, $07
    ld [bc], a
    or a
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
    cp a
    inc b
    rst $38
    add d
    rst $38
    ld d, d
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    adc b
    rst $38
    inc b
    rst $38
    adc d
    rst $38
    ld b, l
    rst $38
    xor d
    rst $38
    ld b, l
    rst $38
    db $eb
    rst $38
    ld [hl], c
    rst $38
    xor d
    rst $38
    ld [hl], c
    rst $38
    cp b
    rst $38
    ld e, h
    rst $38
    cp d
    rst $38
    ld e, h
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    ld c, $ff
    ld d, l
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    rra
    ldh a, [rIF]
    ldh a, [rTAC]
    ld a, [$fd07]
    inc bc
    cp $03
    rst $38
    inc bc
    cp $03
    rst $38
    rlca
    ei
    inc bc
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rrca
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
    rst $38
    and b
    rst $38
    nop
    ei
    add b
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
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
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $0aff
    rst $38
    dec b
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld de, $0aff
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    ld de, $0aff
    rst $38
    rlca
    rst $38
    ld a, [bc]
    rst $38
    ld b, l
    rst $38
    jr z, @+$01

    ld d, l
    rst $38
    and d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld [$51ff], a
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ld [hl+], a
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, c
    rst $38
    ld [$54ff], sp
    rst $38
    adc b
    rst $38
    inc b
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld a, [bc]
    rst $38
    ld de, $2aff
    rst $38
    dec d
    rst $38
    ld l, $ff
    ld e, l
    rst $38
    ld a, [hl+]
    rst $38
    ld e, a
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec e
    rst $38
    xor d
    rst $38
    rst $30
    rst $38
    xor d
    rst $38
    push bc
    rst $38
    adc d
    rst $38
    push de
    ld a, a
    db $eb
    ld a, a
    rst $18
    ld hl, sp-$01
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
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    jr z, @+$01

    inc d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [$05ff], sp
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld de, $38ff
    rst $38
    inc d
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    ld [$14ff], sp
    rst $38
    jr z, @+$01

    ld d, h
    rst $38
    jr z, @+$01

    ld d, h
    rst $38
    ld [hl+], a
    rst $38
    ld d, a
    rst $38
    ld [hl+], a
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    xor h
    rst $38
    dec d
    rst $38
    xor [hl]
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld b, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    cp d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld e, l
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    inc d
    rst $38
    add b
    rst $38
    inc b
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    adc d
    rst $38
    ld b, h
    rst $38
    and d
    rst $38
    dec d
    rst $38
    add d
    rst $38
    dec b
    rst $38
    adc d
    cp a
    dec d
    cp a
    adc d
    cp a
    rlca
    rst $38
    add e
    rst $38
    ld bc, $80ff
    rst $38
    ld b, c
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, c
    rst $38
    xor b
    rst $38
    ld d, c
    xor b
    nop
    ld d, l
    nop
    xor d
    nop
    push af
    nop
    cp a
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    jr z, @+$01

    dec d
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    ld [$05ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld b, c
    rst $38
    and b
    rst $38
    ld d, c
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    xor d
    rst $38
    ld b, c
    rst $38
    add sp, -$01
    ld d, b
    rst $38
    add d
    rst $38
    ld b, c
    rst $38
    add d
    rst $38
    ld bc, $82ff
    rst $38
    push bc
    rst $38
    ld [hl+], a
    rst $38
    dec d
    rst $38
    jr nz, @+$01

    ld d, c
    rst $38
    jr z, @+$01

    ld d, h
    rst $38
    ld h, d
    rst $38
    ld d, h
    rst $38
    nop
    ldh a, [rLCDC]
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    ld b, b
    jp $c300


    ld bc, $00c3
    db $db
    ld bc, $02df
    rst $00
    ld bc, $00ef
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld b, l
    rst $38
    dec bc
    rst $38
    ld b, l
    rst $38
    xor d
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld bc, $02ff
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    ld bc, $80ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $a2ff
    rst $38
    rla
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    rla
    rst $38
    xor a
    rst $38
    rla
    rst $38
    dec hl
    rst $38
    rrca
    rst $38
    ld l, $ff
    rla
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    rlca
    rst $38
    dec hl
    rst $38
    ld b, a
    rst $38
    dec hl
    rst $38
    ld b, a
    rst $38
    cpl
    rst $38
    ld b, a
    rst $38
    and [hl]
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    ld a, a
    rst $38
    cp e
    rst $38
    ld a, l
    cp a
    nop
    rra
    nop
    cp a
    ld bc, $3fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $10
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    push de
    rst $38
    xor e
    rst $38
    sub a
    rst $38
    adc e
    rst $38
    ld b, l
    rst $38
    adc e
    rst $38
    push bc
    rst $38
    ld [c], a
    rst $38
    rst $30
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld c, $ff
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld b, l
    rst $38
    xor e
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    rla
    rst $38
    ld l, $ff
    dec d
    rst $38
    ld a, [bc]
    rst $38
    ld d, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld d, l
    rst $38
    xor d
    rst $38
    push af
    rst $38
    ld [$f1ff], a
    rst $38
    ld [$55ff], a
    rst $38
    ld [$d4ff], a
    rst $38
    add sp, -$01
    ret nc

    rst $38
    xor d
    rst $38
    push de
    rst $38
    cp d
    rst $38
    pop de
    rst $30
    ld [c], a
    rst $30
    pop bc
    rst $38
    add d
    rst $38
    push bc
    rst $38
    adc d
    rst $38
    dec b
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, a
    rst $38
    cpl
    rst $38
    ld d, a
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
    cp $ff
    rst $38
    rst $38
    cp [hl]
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
    rst $18
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    add sp, -$03
    ld hl, sp-$03
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$07
    ldh a, [$f9]
    ldh [$f9], a
    ldh a, [$f9]
    ldh [$f9], a
    ret nc

    ld b, $59
    ld b, $e9
    ld [bc], a
    dec c
    ld hl, sp-$08
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
    ret nz

    rst $38
    ldh [rIE], a
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
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $30
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $30
    rst $38
    db $eb
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    adc a
    rst $38
    ld d, a
    rst $38
    add e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    rla
    rst $38
    ccf
    rst $38
    ld d, a
    rst $38
    cpl
    rst $38
    rra
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    cp a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
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
    rst $38
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
    ldh a, [rP1]
    rst $38
    nop
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
    rst $38
    ccf
    rst $38
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
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
    db $fc
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
    ldh a, [rIF]
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
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
    ld b, $07
    nop
    nop
    nop
    nop
    ld [$0a09], sp
    nop
    nop
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    nop
    nop
    nop
    rrca
    stop
    nop
    nop
    ld de, $0000
    ld [de], a
    inc de
    inc d
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_0c4_4d17

jr_0c4_4d17:
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    nop
    nop
    ld a, [de]
    dec de
    nop
    nop
    nop
    inc e
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    nop
    rra
    jr nz, jr_0c4_4d35

jr_0c4_4d35:
    nop
    nop
    ld hl, $2322
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_0c4_4d6b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0c4_4d4d

jr_0c4_4d4d:
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0c4_4d91

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
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

jr_0c4_4d6b:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop
    ld d, b
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
    nop
    nop
    nop
    nop
    nop
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

jr_0c4_4d91:
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or l
    or [hl]
    or a
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
    dec e
    or l
    or l
    or l
    or l
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    nop
    ld bc, $00c6
    rst $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    nop
    nop
    ret


    nop
    nop
    nop
    jp z, Jump_000_00cb

    nop
    call z, RST_00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    dec b
    rlca
    dec b
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0201
    dec b
    rlca
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld bc, $0301
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
    inc bc
    ld b, $04
    inc b
    inc b
    ld bc, $0301
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    dec b
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
    nop
    nop
    dec b
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
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0301
    nop
    nop
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
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0306
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $4b7f
    or a
    ld b, d
    inc de
    nop
    ld [$cd21], sp
    ld d, $08
    ld hl, $08a4
    inc de
    nop
    inc de
    nop
    and h
    ld [$0631], sp
    call Call_0c4_7f16
    ld c, e
    or a
    ld b, d
    ld sp, $0806
    ld hl, $0631
    call $8816
    ld bc, $08a4
    or a
    ld b, d
    ld [$3121], sp
    ld b, $a4
    ld [$0631], sp
    call Call_000_1316
    nop
    ld [$0821], sp
    ld hl, $4b7f
    or a
    ld b, d
    and h
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
    nop
    ret nz

    adc h
    ldh a, [$60]
    db $fc
    adc b
    rst $38
    ld [c], a
    rst $38
    ld hl, sp-$01
    ld a, $ff
    rlca
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
    rst $38
    ldh [rIE], a
    inc a

jr_0c4_5012:
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    jr z, jr_0c4_5012

    ret nc

    ldh [$a0], a
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
    nop
    nop
    nop
    nop
    ldh [$e0], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    ret nz

    adc a
    ldh a, [$03]
    db $fc
    add h
    rst $38
    rst $38
    pop af
    rst $38
    inc a
    rst $38
    rrca
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
    ldh [rIE], a
    sbc h
    rst $38
    di
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rra
    ld b, $01
    inc bc
    nop
    inc bc
    nop
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
    ld hl, sp-$08
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
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
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    rra
    rst $38
    add a
    rst $38
    pop af
    rst $38
    db $fc
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
    add b
    rst $38
    ld h, b
    rst $38
    call z, $f9ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_0c4_5197

    ld b, $07
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
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rst $18
    ret nz

    ccf
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0c4_5197:
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    inc bc
    ld e, $01
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    add b
    ldh [$e0], a
    db $fc
    db $fc
    ccf
    rst $38
    adc a
    rst $38
    rst $38
    inc e
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
    add b
    rst $18
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ld a, a
    inc c
    rrca
    nop
    ld bc, $fe00
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
    rrca
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    rrca
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
    rra
    rst $38
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
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
    ret nz

    ret nz

    ldh a, [$f0]
    ld a, h
    db $fc
    rra
    rst $38
    rst $00
    rst $38
    ld sp, hl
    rst $38
    cp $ff
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
    add b
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    di
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, $00
    inc a
    nop
    inc a
    rst $38
    cp h
    ld a, a
    db $fc
    dec sp
    rst $38
    jr c, @+$01

    jr c, @+$01

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
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
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
    ldh a, [rIE]
    nop
    cp $00
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rrca
    nop
    rlca
    add b
    inc bc
    ret nz

    ld bc, $01f0
    ld hl, sp+$00
    db $fc
    nop
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
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
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
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    ld a, $fe
    rst $08
    rst $38
    pop af
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
    ret nz

    rst $38
    ld hl, sp-$40
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld b, $87
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
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld a, a
    nop
    ccf
    nop
    rra
    add b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    rst $38
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
    ccf
    rra
    rra
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    jr jr_0c4_5405

    ld b, b
    ld a, a
    jr nz, jr_0c4_5429

    nop
    rra
    add b
    sbc a
    ldh [$ef], a
    rst $38
    add e
    rst $38
    ld h, b
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
    rst $38
    rra
    rst $38
    inc bc

jr_0c4_5405:
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    nop
    rra
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra

jr_0c4_5429:
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$01
    db $fc
    nop
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rlca
    rlca
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
    jr c, jr_0c4_54f0

    ld h, h
    ld a, h
    add [hl]
    cp $07
    rst $38
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
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
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    ccf
    rst $38
    dec bc
    rst $38
    ret


    rst $38
    jr c, @+$01

    jr c, @+$01

    jr @+$01

    jr c, @+$01

    jr c, @+$01

    jr @+$01

    ret z

    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl

jr_0c4_54f0:
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fcff]
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    add b
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
    ld h, [hl]
    ld e, c
    sub e
    inc l
    db $db
    inc b
    ld l, c
    ld b, $8c
    inc hl
    ld h, $91
    ld de, $0cca
    pop hl
    ld b, $f0
    inc bc
    ld hl, sp+$01
    db $fc
    nop
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $8001
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    cp $fe
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
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [rNR10], a
    ldh a, [$0c]
    db $fc
    ret nz

    db $fc
    ld h, b
    ld hl, sp-$70
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh a, [rNR10]
    ldh a, [rP1]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$dc], a
    db $fc
    rst $38
    jr nc, @+$01

    ld a, $ff
    daa
    rst $38
    inc hl
    rst $38
    inc l
    rst $38
    inc hl
    rst $38
    ld hl, $3cff
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    jp $c300


    add b
    pop bc
    nop
    pop bc
    nop
    ret nz

    nop
    ldh a, [$cf]
    rst $38
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
    ret nz

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    jp $c3ff


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fc]
    add b
    ret nz

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
    cp a
    cp a
    rst $18
    rst $18
    ld e, a
    ld e, a
    cpl
    cpl
    scf
    scf
    sbc e
    sbc e
    set 1, e
    ld b, l
    ld b, l
    ld e, l
    and d
    ld c, l
    ld [hl-], a
    ld h, [hl]
    add hl, de
    inc sp
    adc h
    add hl, de
    ld b, [hl]
    ld c, h
    inc hl
    inc h
    sub e
    ld [de], a
    ret


    dec c
    ldh [rTIMA], a
    ldh a, [rP1]
    ld a, [$fd00]
    nop
    cp $00
    cp $00
    rst $38
    add b
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    add c
    add c
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
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
    add b
    add b
    ldh [$e0], a
    ld a, b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh [rP1], a
    ldh [$80], a
    ldh a, [$78]
    db $fc
    inc c
    db $fc
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    rst $38
    ret nz

    rst $38
    db $fc
    jp $c0ff


    rst $38
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
    ldh [rIE], a
    ldh [rIE], a
    rst $28
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    cp $00
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    cp b
    cp b
    cp b
    cp b
    call c, $ecdc
    db $ec
    xor $ee
    rst $30
    rst $30
    rst $30
    rst $30
    ei
    ei
    db $fd
    db $fd
    ld a, l
    ld a, l
    cp [hl]
    cp [hl]
    rst $18
    rst $18
    ld e, a
    ld e, a
    rst $28
    rst $28
    or a
    or a
    ld [$84f7], sp
    ld a, e
    jp nz, Jump_0c4_413d

    ld a, $21
    sbc [hl]
    sub b
    ld c, a
    ld c, b
    daa
    dec l
    add d
    ld d, $c1
    ld [bc], a
    jp hl


    ld bc, $00f4
    ld a, [$fd00]
    ld bc, $00fc
    cp $80
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    add e
    add e
    pop bc
    pop bc
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38

jr_0c4_5717:
    rst $38
    ccf

jr_0c4_5719:
    ccf
    rra
    rra
    rrca
    rrca
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
    rlca
    ld hl, sp+$1f
    ldh [$7e], a
    add b
    db $fc
    nop
    ld hl, sp+$00

jr_0c4_573a:
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    cp $fe
    rst $38
    rst $38
    ret z

    jr nc, jr_0c4_5717

    jr c, jr_0c4_5719

    jr c, jr_0c4_573a

    inc e
    db $e3
    inc e
    pop af
    ld c, $f1
    ld c, $f8
    rlca
    add a
    add a
    add e
    add e
    jp $e1c3


    pop hl
    ld h, c
    ld h, c
    ld [hl], b
    ld [hl], b
    or b
    or b
    ret c

    ret c

    call c, $ecdc
    db $ec
    xor $ee
    or $f6
    ei
    ei
    ld a, e
    ld a, e
    cp l
    cp l
    cp [hl]
    cp [hl]
    and c
    ld e, [hl]
    db $10
    rst $28
    ld [$88f7], sp
    ld [hl], a
    ld b, h
    dec sp
    ld [hl+], a
    ld e, l
    and c
    ld e, $11
    ld c, [hl]
    ld [$04a7], sp
    db $db
    ld [bc], a
    db $ed
    ld bc, $01f6
    ld a, [$f902]
    nop
    db $fd
    add b
    ld a, [hl]
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    add e
    add e
    pop hl
    pop hl
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
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
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp-$01
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ei
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
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$08
    ldh [$30], a
    add b
    ret nz

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
    nop
    nop

jr_0c4_5827:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld c, c
    inc b
    ld c, c
    ld b, $84
    ld [bc], a
    ld l, h
    inc bc
    ld [c], a
    ld bc, $01e6

jr_0c4_583c:
    db $76
    ld bc, $00b5
    sub a
    nop
    ld e, a
    add b
    ld h, a
    add b
    scf
    ret nz

    scf
    ret nz

    rra
    ldh [rNR13], a
    ldh [$8b], a
    ld [hl], b
    adc l
    ld [hl], b
    rst $00
    jr c, jr_0c4_583c

    jr @-$1b

    inc e
    di
    inc c
    ld [hl], c
    adc [hl]
    ld a, b
    add a
    jr c, jr_0c4_5827

    jp Jump_0c4_63c3


    ld h, e
    ld h, c
    ld h, c
    or c
    or c
    ret c

    ret c

    ret c

    ret c

    db $ec
    db $ec
    db $f4
    db $f4
    db $76
    db $76
    cp e
    cp e
    cp l
    cp l
    db $dd
    db $dd
    xor $ee
    db $76
    db $76
    or a
    or a
    db $db
    db $db
    ld [de], a
    ld l, l
    ld d, d
    xor l
    add hl, hl
    sub $14
    db $eb
    ld a, [bc]
    push af
    add hl, bc
    or $85
    ld a, d
    jp nz, Jump_000_1e3d

    ld e, $0f
    rrca
    rst $00
    rst $00
    db $e3
    db $e3
    pop af
    pop af
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    jr c, jr_0c4_58af

jr_0c4_58af:
    jr c, jr_0c4_58b1

jr_0c4_58b1:
    rst $00
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rlca
    add a
    rrca
    rrca
    nop
    rrca
    ld [bc], a
    dec e
    dec b
    ld a, [hl-]
    nop
    ld a, a
    ld bc, $003e
    rra
    nop
    rrca
    nop
    rlca
    rlca
    inc bc
    rra
    ld bc, $007f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    scf
    scf
    scf
    scf
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    adc e
    adc e
    adc l
    adc l
    adc l
    adc l
    push bc
    push bc
    push bc
    push bc
    ld b, [hl]
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    inc sp
    inc sp
    ld de, $1111
    ld de, $0909
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    ld b, $06
    ld [bc], a
    ld [bc], a
    add d
    add d
    add c
    add c
    pop bc
    pop bc
    pop bc
    pop bc
    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr c, jr_0c4_598a

    jr c, jr_0c4_598c

    inc e
    inc e
    adc h
    adc h
    adc [hl]
    adc [hl]
    add $c6
    ld h, a
    ld h, a
    and e
    and e
    or e
    or e
    pop de
    pop de
    jp hl


    jp hl


    ld l, h
    ld l, h
    or h
    or h
    cp d
    cp d
    jp c, Jump_0c4_6dda

    ld l, l
    xor l
    xor l
    ld d, [hl]
    ld d, [hl]
    xor e
    xor e
    push de
    push de
    push de
    push de
    ld [$75ea], a
    ld [hl], l
    dec sp
    dec sp
    sbc a
    sbc a
    add $c6
    db $e4
    db $e4
    db $f4
    db $f4
    db $f4
    db $f4

jr_0c4_598a:
    ld [hl], h
    ld [hl], h

jr_0c4_598c:
    inc d
    inc d
    inc b
    inc b
    ld b, $06
    ld e, $1e
    ld e, $1e
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rst $38
    ldh [rIE], a
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
    ld a, a
    rst $38
    rst $28
    ld a, a
    db $eb
    ld a, a
    ld [$ea7f], a
    ld a, a
    ld [$ea7f], a
    ld a, l
    db $ed

jr_0c4_59bc:
    ld a, b
    add sp, -$10
    ldh a, [rNR33]
    ldh [$3e], a
    ret nz

    dec a
    ret nz

    ld a, d
    add b
    db $fd
    nop
    ld a, [hl]
    add b
    db $fc
    nop
    ld a, [hl]
    add b
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

jr_0c4_59da:
    ld e, a
    and b
    ld l, $d1
    inc bc
    db $fc
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
    pop hl
    nop
    di
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$18ff], sp
    rst $38
    jr c, jr_0c4_59da

    jr c, jr_0c4_59bc

    ld a, b
    ld e, a
    db $fc
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
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    or b
    or b
    or b
    or b
    cp b
    cp b
    ret c

    ret c

    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, h
    ld e, h
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, $0e
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    ld d, $16
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    dec bc
    dec bc
    inc hl
    inc hl
    dec h
    dec h
    dec b
    dec b
    ld de, $0311
    inc bc
    rlca
    rlca
    adc a
    adc a
    cp $fe
    cp $fe
    xor $ee
    db $ec
    db $ec
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr c, jr_0c4_5a98

    cp b
    cp b
    sbc l
    sbc l
    ld e, l
    ld e, l
    ld c, [hl]
    ld c, [hl]
    xor b
    xor b
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
    add b
    add b
    ret nz

    ret nz

    nop
    ret nz

    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    ld e, $00
    inc c
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

jr_0c4_5a98:
    rst $38
    cp $ff
    cp $7f
    ld a, a
    ccf
    ccf
    nop
    ccf
    nop
    rra
    ld c, b
    rlca
    or h
    inc bc
    ld d, c
    nop
    cp b
    nop
    jr z, jr_0c4_5aae

jr_0c4_5aae:
    nop
    nop
    sbc b
    nop
    call z, $8c00
    nop
    sbc $01
    db $fc
    inc bc
    cp $03
    sbc $27
    ld l, a
    sbc a
    rrca
    rst $28
    rrca
    rst $08
    rrca
    rst $08
    rrca
    adc a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    ld [$080f], sp
    rrca
    inc c
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
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
    add a
    add a
    ld hl, sp-$08
    inc a
    jp $df20


    jr nz, @-$20

    ld b, c
    cp [hl]
    ld b, b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
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
    ld a, a
    nop
    inc bc
    ld bc, $0701

jr_0c4_5b31:
    ld hl, sp+$60

jr_0c4_5b33:
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    nop
    add b
    ld a, e
    and c
    ld e, a
    rst $38
    db $fc
    rst $38
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    dec sp
    daa
    add hl, de
    rlca
    add hl, sp
    daa
    ld a, c
    ld h, a
    ld sp, hl
    rst $20
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    db $fc
    db $e3
    db $fc
    db $e3
    db $f4
    db $e3
    db $f4
    db $e3
    db $f4
    db $e3
    db $f4
    db $e3
    db $e4
    di
    db $e4
    di
    db $e4
    di
    db $e4
    di
    ld [$faf1], a
    ld bc, $c1fa
    ld a, [$faf1]
    pop af
    ld a, [$faf1]
    pop af
    ld a, d
    pop af
    ld a, [$f2f1]
    ld sp, hl
    push af
    ld hl, sp-$0b
    ld hl, sp-$0b
    ld hl, sp-$0b
    ld hl, sp-$0b
    ld hl, sp-$0b
    ld hl, sp-$40
    inc c
    ret nz

    inc c

jr_0c4_5b94:
    ret nz

    inc c

jr_0c4_5b96:
    ret nz

    rrca
    ret nz

    rrca
    ret nz

    ld c, $c0
    nop
    ret nz

    nop

jr_0c4_5ba0:
    rst $00
    nop
    cp $00
    ldh [rP1], a
    add b
    inc bc
    add b
    rra
    add b
    rra
    add b
    jr @-$7e

    jr jr_0c4_5b31

    jr jr_0c4_5b33

    jr jr_0c4_5bf5

    adc h
    ld b, b
    adc h
    ld b, b
    adc h
    ld b, b
    adc h
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    adc h
    ld b, b
    adc h
    ld b, b
    adc h
    ld b, b
    adc h
    ld b, b
    add [hl]
    ld b, b
    add [hl]
    jr nz, jr_0c4_5b94

    jr nz, jr_0c4_5b96

    rst $18
    jr @-$1f

    jr @-$1f

    rra
    ret c

    jr jr_0c4_5ba0

    nop
    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    nop
    cp $00
    add b
    dec a
    nop
    cp $00
    ldh [rP1], a
    ld bc, $0180
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0

jr_0c4_5bf5:
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $81c0
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    ld bc, $0080
    rst $38
    add c
    ld b, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    cp $03
    di
    ld de, $01f1
    pop hl
    db $e4
    db $db
    db $e4
    db $db
    rst $08
    or b
    rst $18
    and b
    cp $81
    db $fc
    ld [bc], a
    ld hl, sp+$06
    inc [hl]
    jp nz, Jump_000_008e

    jr jr_0c4_5c99

    ld a, [hl-]
    jp $0ff6


    xor $1f
    ld e, $1f
    ld e, $ff
    ld e, $ff
    rst $38
    pop hl
    rst $38
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rIE], a
    db $fc
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$07
    rst $38
    rlca
    rra
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    nop
    ld bc, $7f00
    nop
    cp $00

jr_0c4_5c99:
    ldh [rP1], a
    nop
    rlca
    nop
    ld a, a
    nop
    ldh a, [rP1]
    nop
    ld bc, $3f00
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    ld bc, $1f00
    nop
    ld a, h
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0c4_5cc1

jr_0c4_5cc1:
    jr nc, jr_0c4_5cc3

jr_0c4_5cc3:
    jr nc, jr_0c4_5cc5

jr_0c4_5cc5:
    inc sp
    nop
    ccf
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    ld bc, $7fff
    ldh [$e0], a
    ld e, $01
    add c
    ld a, [hl]
    ld a, a
    add b
    ret nz

    ccf
    rra
    ldh [$80], a
    ld a, a
    add b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ei
    ld [bc], a
    or $01
    jp hl


    nop
    add sp, $09
    reti


    inc bc
    db $d3
    inc de
    or e
    inc de
    or e
    and a
    ld hl, sp-$19
    ld hl, sp-$15
    call nc, Call_000_28d7
    ld [hl], h
    adc b
    ei
    rlca
    rst $30
    rrca
    rst $38
    rrca
    adc a
    ld a, a
    rra
    rst $38
    cp a
    ld e, a
    ccf
    ld a, a
    ld h, b
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    rst $38
    add c
    rst $38
    add c
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
    ld a, $ff
    ld a, $ff
    ld a, $ff
    add b
    rst $38
    add b
    db $fc
    add h
    db $fc
    call nz, $c4fc
    db $fc
    db $e4
    db $fc
    db $e4
    db $fc
    ld [c], a
    cp $e2
    cp $e2
    cp $e2
    cp $e2
    cp $e2
    cp $e2
    cp $e2
    cp $f2
    cp $f2
    cp $f3
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    rst $38
    ld c, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    nop
    rra
    nop
    sbc [hl]
    nop
    add b
    nop
    nop
    rlca
    nop
    ld a, a
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    nop
    rst $08
    nop
    ret z

    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ret z

    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
    di
    nop
    ldh a, [rP1]
    nop
    nop
    inc bc
    nop
    di
    nop
    ldh a, [$fe]
    cp $81
    add b
    ld a, b
    rlca
    rlca
    ld hl, sp-$04
    inc bc
    ld bc, $7ffe
    add b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld a, h
    rst $38
    adc a
    adc a
    sbc a
    sbc a
    jr c, jr_0c4_5e18

    ld h, b
    sbc a
    db $e3
    dec e
    rst $28
    rla
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    adc a
    ld l, a
    rst $18
    cpl
    rst $08
    rra
    adc a
    rrca
    ccf
    ccf
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
    db $fc
    nop
    ld [$f800], sp
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    ld a, b

jr_0c4_5e18:
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    rst $38
    add a
    rst $38
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
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
    rst $28
    nop
    rst $30
    inc bc
    ld a, [$0103]
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    ld bc, $0a0a
    inc b
    inc b
    push af
    ld a, [bc]
    cp $00
    db $fc
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
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    ldh [rP1], a
    nop
    rlca
    nop
    ld a, a
    nop
    ld hl, sp+$00
    add b
    nop
    nop
    rlca
    nop
    rst $38
    nop
    ld hl, sp+$00
    add b
    nop
    rlca
    nop
    ld a, a
    nop
    pop af
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    rrca
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    rrca
    nop
    rst $38
    nop
    ldh a, [rTAC]
    nop
    rst $38
    nop
    pop hl
    ld e, $1f
    ldh [$f0], a
    rrca
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh a, [rNR10]
    db $ed
    pop af
    pop af
    db $fd
    pop af
    rst $38
    pop af
    db $fd
    ei
    rst $30
    ei
    rst $30
    di
    ei
    di
    db $eb
    ei
    db $e3
    rst $38
    rst $20
    rst $30
    rst $00
    rst $30
    rst $00
    rst $20
    sub a
    rst $30
    rlca
    rrca
    rst $28
    ld a, a
    sbc a
    ld b, b
    ld a, a
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld b, b
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, c
    rst $38
    add [hl]
    rst $38
    add [hl]
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
    db $fd
    ld hl, sp+$0b
    ld hl, sp-$10
    ld [$08f0], sp
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh [rNR10], a
    ld c, d
    xor d
    inc b
    ld b, h
    push af
    ld a, [bc]
    rlca
    nop
    inc bc
    nop
    di
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$67]
    ld h, b
    rrca
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $06
    rlca
    ld b, $08
    add hl, bc
    ld b, $06
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld b, $06
    ld b, $06
    db $10
    ld b, $11
    add hl, bc
    ld b, $06
    ld [de], a
    inc de
    ld b, $14
    dec d
    ld d, $17
    jr jr_0c4_5fa3

    ld b, $06
    ld b, $19
    ld a, [de]
    add hl, bc

jr_0c4_5fa3:
    add hl, bc
    ld b, $06
    dec de
    inc e
    ld b, $06
    dec e
    ld e, $1f
    jr nz, jr_0c4_5fd0

    ld b, $22
    inc hl
    inc h
    dec h
    add hl, bc
    add hl, bc
    ld b, $06
    ld h, $27
    ld b, $06
    jr z, jr_0c4_5fe7

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c4_5ff7

    add hl, bc
    add hl, bc
    ld b, $06
    ld [hl-], a
    inc sp
    inc [hl]
    ld b, $06
    dec [hl]

jr_0c4_5fd0:
    ld [hl], $37
    jr c, jr_0c4_5fda

    ld b, $39
    ld b, $3a
    add hl, bc
    add hl, bc

jr_0c4_5fda:
    ld b, $06
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, h

jr_0c4_5fe7:
    ld b, l
    ld b, [hl]
    ld b, a
    add hl, bc
    ld c, b
    ld b, $06
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_0c4_5ff7:
    ld d, d
    ld d, d
    ld d, d
    ld d, e
    add hl, bc
    add hl, bc
    ld d, h
    ld b, $06
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
    add hl, bc
    ld c, b
    ld h, d
    ld b, $06
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld b, $69
    ld l, d
    ld l, e
    ld e, a
    ld l, h
    ld l, l
    add hl, bc
    ld d, h
    nop
    ld b, $06
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld b, $06
    jr c, @+$08

    rlca
    ld de, $7548
    db $76
    ld b, $06
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld b, $7e
    ld a, a
    add b
    add c
    add hl, bc
    add d
    add e
    add h
    ld b, $06
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
    ld b, $06
    ld b, $06
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
    ld b, $a1
    ld b, $06
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    ld b, $a9
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    ld b, $06
    ld b, $06
    ld b, $06
    or c
    or d
    or e
    ld b, $06
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    ld b, $06
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


    jp z, $0606

    set 1, h
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $0606

    db $db
    call c, $dd52
    sbc $06
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, $06
    ld b, $e9
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp+$06
    ld b, $01
    ld bc, $0501
    nop
    nop
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
    ld bc, $0101
    dec b
    nop
    nop
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
    dec b
    ld bc, $0301
    inc bc
    nop
    inc bc
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
    dec b
    dec b
    ld bc, $0301
    nop
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
    dec b
    inc bc
    ld bc, $0301
    inc bc
    nop
    inc bc
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
    dec b
    inc bc
    inc bc
    ld bc, $0301
    nop
    inc bc
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
    dec b
    dec b
    inc bc
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
    nop
    nop
    dec b
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
    dec b
    dec b
    inc bc
    inc bc
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
    nop
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld [bc], a
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
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    nop
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0201
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
    nop
    nop
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld bc, $0000
    nop
    rlca
    ld b, $01
    ld bc, $0000
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
    rlca
    rlca
    ld bc, $0201
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    nop
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0503
    inc bc
    ld bc, $0101
    rlca
    ld b, $06
    dec b
    dec b
    dec b
    nop
    nop
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    ld bc, $0707
    ld b, $00
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0105
    ld bc, $0701
    rlca
    ld bc, $0306
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0105
    ld bc, $0707
    ld bc, $0601
    ld [bc], a
    inc bc
    dec b
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0706
    rlca
    ld bc, $0101
    ld bc, $0206
    inc bc
    dec b
    dec b
    nop
    nop
    jp nc, $eb66

    db $10
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    sbc b
    ld a, $b1
    dec h
    push hl
    inc a
    sbc b
    ld a, $b1
    dec h
    add hl, bc
    nop
    nop
    nop
    or c
    dec h
    add hl, bc
    nop
    nop
    nop
    db $eb
    db $10
    or c
    dec h
    db $eb
    db $10
    jp nc, $e566

    inc a
    sbc b
    ld a, $b1
    dec h
    db $eb
    stop
    nop
    jp nc, $b166

    dec h
    db $eb
    stop
    nop
    jp nc, $e566

    inc a
    nop
    nop
    or c
    dec h
    ld hl, $000f
    add hl, de
    ld a, [hl]
    or a
    jp z, Jump_0c4_62ff

    cp $01
    jp z, Jump_0c4_630f

    cp $02
    jp z, Jump_0c4_631f

    cp $03
    jp z, Jump_0c4_632a

    cp $04
    jp z, Jump_0c4_6335

    cp $05
    jp z, Jump_0c4_633f

    cp $06
    jp z, Jump_0c4_634a

    cp $07
    jp z, Jump_0c4_6355

    cp $08
    jp z, Jump_0c4_6360

    cp $09
    jp z, Jump_0c4_636b

    cp $2e
    jp z, Jump_0c4_637b

    cp $2f
    jp z, Jump_0c4_6386

    cp $30
    jp z, Jump_0c4_6396

    cp $31
    jp z, Jump_0c4_63a0

    cp $32
    jp z, Jump_0c4_63b0

    cp $33
    jp z, Jump_0c4_63c0

    cp $34
    jp z, Jump_0c4_63cb

    cp $35
    jp z, Jump_0c4_63d6

    cp $36
    jp z, Jump_0c4_63e0

    cp $37
    jp z, Jump_0c4_63eb

    cp $3c
    jp z, Jump_0c4_63fb

    cp $3d
    jp z, Jump_0c4_6406

    cp $3e
    jp z, Jump_0c4_6416

    ld a, $ff
    ret


Jump_0c4_62fa:
    ld a, $ff
    ret


Jump_0c4_62fd:
    xor a
    ret


Jump_0c4_62ff:
    ld a, [$c11f]
    cp $04
    jp z, Jump_0c4_62fa

    cp $05
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_630f:
    ld a, [$c11f]
    cp $01
    jp z, Jump_0c4_62fa

    cp $03
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_631f:
    ld a, [$c11f]
    cp $02
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_632a:
    ld a, [$c11f]
    cp $04
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_6335:
    ld a, [$c480]
    or a
    jp z, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_633f:
    ld a, [$c11f]
    cp $01
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_634a:
    ld a, [$c11f]
    cp $02
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_6355:
    ld a, [$c11f]
    cp $04
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_6360:
    ld a, [$c11f]
    cp $00
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_636b:
    ld a, [$c11f]
    cp $01
    jp z, Jump_0c4_62fa

    cp $02
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_637b:
    ld a, [$c11f]
    cp $06
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_6386:
    ld a, [$c11f]
    cp $01
    jp z, Jump_0c4_62fa

    cp $03
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_6396:
    ld a, [$c11f]
    or a
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_63a0:
    ld a, [$c11f]
    cp $04
    jp z, Jump_0c4_62fa

    cp $05
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_63b0:
    ld a, [$c11f]
    cp $01
    jp z, Jump_0c4_62fa

    cp $02
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_63c0:
    ld a, [$c11f]

Jump_0c4_63c3:
    cp $03
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_63cb:
    ld a, [$c11f]
    cp $02
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_63d6:
    ld a, [$c11f]
    or a
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_63e0:
    ld a, [$c11f]
    cp $01
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_63eb:
    ld a, [$c11f]
    cp $03
    jp z, Jump_0c4_62fa

    cp $04
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_63fb:
    ld a, [$c11f]
    cp $05
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_6406:
    ld a, [$c11f]
    cp $01
    jp z, Jump_0c4_62fa

    cp $02
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_6416:
    ld a, [$c11f]
    cp $03
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


    ld a, [$c1c2]
    cp $e0
    jp z, Jump_0c4_6445

    cp $ec
    jp z, Jump_0c4_6450

    cp $ee
    jp z, Jump_0c4_645b

    cp $f0
    jp z, Jump_0c4_6466

    cp $f1
    jp z, Jump_0c4_6480

    ld a, $ff
    ret


Jump_0c4_6440:
    ld a, $ff
    ret


Jump_0c4_6443:
    xor a
    ret


Jump_0c4_6445:
    ld a, [$c11f]
    cp $02
    jp z, Jump_0c4_6440

    jp Jump_0c4_6443


Jump_0c4_6450:
    ld a, [$c11f]
    cp $02
    jp z, Jump_0c4_6440

    jp Jump_0c4_6443


Jump_0c4_645b:
    ld a, [$c11f]
    cp $03
    jp z, Jump_0c4_6440

    jp Jump_0c4_6443


Jump_0c4_6466:
    ld a, [$c11f]
    cp $02
    jp z, Jump_0c4_6440

    cp $04
    jp z, Jump_0c4_6440

    cp $06
    jp z, Jump_0c4_6440

    cp $07
    jp z, Jump_0c4_6440

    jp Jump_0c4_6443


Jump_0c4_6480:
    ld a, [$c11f]
    cp $05
    jp z, Jump_0c4_6440

    jp Jump_0c4_6443


    ldh a, [rIE]
    dec b
    nop
    ld c, $00
    stop
    ld b, $00
    dec b
    nop
    ld c, $00
    stop
    ld a, [$dcff]
    rst $38
    ld a, [de]
    nop
    ld h, b
    nop
    cp d
    rst $38
    add sp, -$01
    inc c
    nop
    jr nc, jr_0c4_64ab

jr_0c4_64ab:
    ld a, [de]
    nop
    and b
    rst $38
    jr z, jr_0c4_64b1

jr_0c4_64b1:
    jr nc, jr_0c4_64b3

jr_0c4_64b3:
    ld h, h
    nop
    sbc d
    rst $38
    jr z, jr_0c4_64b9

jr_0c4_64b9:
    adc h
    nop
    db $ec
    rst $38
    sbc h
    rst $38
    jr z, jr_0c4_64c1

jr_0c4_64c1:
    ld e, $00
    ret c

    rst $38
    ldh a, [rIE]
    ld e, $00
    jr jr_0c4_64cb

jr_0c4_64cb:
    ldh [rIE], a
    and b
    rst $38
    ld l, $00
    ld l, $00
    cp b
    rst $38
    ld [$2800], sp
    nop
    jr nz, jr_0c4_64db

jr_0c4_64db:
    ld [hl], d
    nop
    dec bc
    nop
    jr jr_0c4_64e1

jr_0c4_64e1:
    ld a, [de]
    nop
    jr z, jr_0c4_64e5

jr_0c4_64e5:
    push hl
    rst $38
    jr jr_0c4_64e9

jr_0c4_64e9:
    dec l
    nop
    inc h
    nop
    xor $ff
    jr jr_0c4_64f1

jr_0c4_64f1:
    jr jr_0c4_64f3

jr_0c4_64f3:
    inc h
    nop
    ldh [rIE], a
    jr jr_0c4_64f9

jr_0c4_64f9:
    jr jr_0c4_64fb

jr_0c4_64fb:
    ld a, [$c17c]
    cp $04
    jp z, Jump_0c4_653b

    cp $06
    jp z, Jump_0c4_654c

    cp $07
    jp z, Jump_0c4_6557

    cp $32
    jp z, Jump_0c4_656d

    cp $37
    jp z, Jump_0c4_6578

    cp $38
    jp z, Jump_0c4_6583

    cp $3b
    jp z, Jump_0c4_658e

    cp $3e
    jp z, Jump_0c4_6599

    cp $3f
    jp z, Jump_0c4_65a5

    cp $4c
    jp z, Jump_0c4_65b1

    cp $58
    jp z, Jump_0c4_65bc

    cp $5d
    jp z, Jump_0c4_65c7

    ret


Jump_0c4_653b:
    ld a, [$c31f]
    or a
    ret z

    ld hl, $648b
    call Call_0c4_65d6
    ld hl, $6493
    jp Jump_0c4_65d6


Jump_0c4_654c:
    ld a, [$c487]
    or a
    ret nz

    ld hl, $649b
    jp Jump_0c4_65d6


Jump_0c4_6557:
    ld a, [$c485]
    or a
    jr z, jr_0c4_6567

    ld a, [$c513]
    ld c, a
    ld a, [$c530]
    add c
    or a
    ret nz

jr_0c4_6567:
    ld hl, $64a3
    jp Jump_0c4_65d6


Jump_0c4_656d:
    ld a, [$c4d8]
    or a
    ret nz

    ld hl, $64ab
    jp Jump_0c4_65d6


Jump_0c4_6578:
    ld a, [$c498]
    or a
    ret nz

    ld hl, $64b3
    jp Jump_0c4_65d6


Jump_0c4_6583:
    ld a, [$c498]
    or a
    ret z

    ld hl, $64bb
    jp Jump_0c4_65d6


Jump_0c4_658e:
    ld a, [$c4c2]
    or a
    ret z

    ld hl, $64c3
    jp Jump_0c4_65d6


Jump_0c4_6599:
    ld a, [$c2e1]
    cp $02
    ret z

    ld hl, $64cb
    jp Jump_0c4_65d6


Jump_0c4_65a5:
    ld a, [$c2e2]
    cp $04
    ret z

    ld hl, $64d3
    jp Jump_0c4_65d6


Jump_0c4_65b1:
    ld a, [$c4de]
    or a
    ret nz

    ld hl, $64db
    jp Jump_0c4_65d6


Jump_0c4_65bc:
    ld a, [$c49c]
    or a
    ret nz

    ld hl, $64e3
    jp Jump_0c4_65d6


Jump_0c4_65c7:
    ld hl, $64eb
    ld a, [$c4a6]
    or a
    jr z, jr_0c4_65d3

    ld hl, $64f3

jr_0c4_65d3:
    jp Jump_0c4_65d6


Call_0c4_65d6:
Jump_0c4_65d6:
    ld a, [hl+]
    ld [$c170], a
    ld c, a
    ld a, [hl+]
    ld [$c171], a
    ld b, a
    inc hl
    inc hl
    ld a, [hl+]
    add c
    ld [$c172], a
    ld a, [hl-]
    adc b
    ld [$c173], a
    dec hl
    dec hl
    ld a, [hl+]
    ld [$c174], a
    ld c, a
    ld a, [hl+]
    ld [$c175], a
    ld b, a
    inc hl
    inc hl
    ld a, [hl+]
    add c
    ld [$c176], a
    ld a, [hl+]
    adc b
    ld [$c177], a
    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_0c4_66e7
    push de
    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_0c4_66e7
    ld l, e
    ld h, d
    pop de
    jp Jump_0c4_6621


Jump_0c4_6621:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    cp $ff
    ret nz

    ld a, [$c172]
    sub e
    ld a, [$c173]
    sbc d
    or a
    ret nz

    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    cp $ff
    ret nz

    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    or a
    ret nz

    push de
    push hl
    ld a, [$c315]
    ld e, a
    ld a, [$c316]
    ld d, a
    ld a, [$c317]
    ld l, a
    ld a, [$c318]
    ld h, a
    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    or a
    jr nz, jr_0c4_6682

    ld a, [$c174]
    ld e, a
    ld a, [$c175]
    ld d, a
    call Call_0c4_670c
    ld a, e
    sub $01
    ld [$c313], a
    ld a, d
    sbc $00
    ld [$c314], a
    pop hl
    pop de
    ret


jr_0c4_6682:
    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    cp $ff
    jr nz, jr_0c4_66a8

    ld a, [$c176]
    ld e, a
    ld a, [$c177]
    ld d, a
    call Call_0c4_670c
    ld a, e
    add $08
    ld [$c313], a
    ld a, d
    adc $00
    ld [$c314], a
    pop hl
    pop de
    ret


jr_0c4_66a8:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    or a
    jr nz, jr_0c4_66cd

    ld a, [$c170]
    ld e, a
    ld a, [$c171]
    ld d, a
    call Call_0c4_670c
    ld a, e
    sub $01
    ld [$c311], a
    ld a, d
    sbc $00
    ld [$c312], a
    pop hl
    pop de
    ret


jr_0c4_66cd:
    ld a, [$c172]
    ld e, a
    ld a, [$c173]
    ld d, a
    call Call_0c4_670c
    ld a, e
    add $08
    ld [$c311], a
    ld a, d
    adc $00
    ld [$c312], a
    pop hl
    pop de
    ret


Call_0c4_66e7:
    ld a, d
    cp $80
    jr c, jr_0c4_66ff

    call Call_0c4_672b
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_0c4_672b
    ret


jr_0c4_66ff:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_0c4_670c:
    ld a, d
    cp $80
    jr c, jr_0c4_6721

    call Call_0c4_672b
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    call Call_0c4_672b
    ret


jr_0c4_6721:
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    ret


Call_0c4_672b:
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0c4_6dda:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0c4_7f16:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
