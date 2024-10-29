SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

    db $fc
    ld a, a
    db $fc
    ld a, a
    cp $3f
    cp $3f
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
    rlca
    ld a, a
    add a
    ld a, a
    add e
    ld a, a
    add e
    ccf
    pop bc
    ccf
    pop bc
    ld a, a
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    rst $38
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
    ld hl, sp+$00
    ldh a, [rP1]
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
    rlca
    ld hl, sp+$0f
    pop af
    rra
    ld a, [c]
    rra
    db $e4
    ccf
    call nz, $887f
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
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
    cp $01
    rst $38
    inc bc
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
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rrca
    rrca
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

jr_012_409f:
    ld a, a
    rst $38
    rlca
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

jr_012_40ad:
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld a, a
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    jp $cc7f


    ld a, a
    ldh a, [$3f]
    ldh [$3f], a
    ld [hl], b
    sbc a
    jr nc, jr_012_40ad

    jr c, jr_012_409f

    jr @-$0f

    inc e
    rst $20
    inc c
    rst $30
    ld c, $f3
    ld c, $f3
    rlca
    ld sp, hl
    add a
    ld sp, hl
    add e
    db $fc
    jp $c0fd


    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$fe]
    ldh [$fc], a
    ret nz

    ld hl, sp-$80
    ldh [$80], a
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
    ld bc, $0000
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    ld bc, $01ff
    cp $03
    db $fc
    rlca
    ld sp, hl
    rrca
    ld a, [c]
    rra
    db $e4
    ccf
    call nz, $c87f
    ld a, a
    sub b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    ld bc, $0381
    inc bc
    inc bc
    inc bc
    rst $30
    rst $30
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [rIE]
    nop

jr_012_4181:
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

jr_012_418b:
    rst $38
    rra

jr_012_418d:
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $0dfe
    rst $30
    inc a
    jp $cf7c


    ld a, [hl]
    pop af
    ld a, [hl]
    pop hl
    ld a, $e1

jr_012_41a3:
    ld a, $60
    cp a
    ld [hl], b
    sbc a
    ld [hl], b

jr_012_41a9:
    sbc a
    jr nc, jr_012_418b

    jr nc, jr_012_418d

    jr c, @-$2f

    jr c, jr_012_4181

    jr jr_012_41a3

    inc e
    rst $20
    ld e, $e7
    jr jr_012_41a9

    nop
    rst $38
    add b
    rst $38
    pop bc
    cp $80
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

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
    ld bc, $061f
    ccf
    ld [$387f], sp
    rst $38
    jr @+$01

    jr c, @+$03

    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add c
    ld bc, $03c2
    push bc
    rlca
    jp hl


    rrca
    ld a, [$f40f]
    rra
    add sp, $3f
    ret z

    ld a, a
    sub b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$1f]
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca

jr_012_425a:
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    cp a
    cp a
    rst $38
    rst $38
    pop bc
    pop bc
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
    rlca
    rst $38
    rra
    rst $20
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    ldh [$1f], a
    ldh [rIF], a
    ld hl, sp+$3f
    ld sp, hl
    rst $38
    ldh [rIE], a
    add b
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    jr c, jr_012_425a

    ld hl, sp+$0f
    ld hl, sp+$37
    ld hl, sp-$39
    ld hl, sp-$79
    ld hl, sp-$7d
    db $fc
    add e
    db $fc
    add e
    ld a, h
    add e
    ld a, h
    jp $c37c


    ld a, h
    jp $e73c


    ccf
    ld [hl], b
    sbc a
    ldh a, [$bf]
    ldh [rIE], a
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

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
    add b
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld a, b
    add a
    sbc h
    inc bc
    sbc h
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
    cp $01
    cp $01
    inc bc
    ld bc, $0307
    dec b
    rlca
    ld a, [bc]
    rrca
    inc d
    rra
    jr z, jr_012_433b

    jr nc, @+$41

    ld d, b
    ld a, a
    and b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$0f
    rst $38
    rra
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
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0101

jr_012_433b:
    ld bc, $c3c3
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
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
    rst $38
    rst $38
    rst $38
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
    inc bc
    rlca
    rlca
    rlca
    rlca
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ldh [$7f], a
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld [hl], b
    pop hl
    ld a, [hl]
    pop hl
    ld a, [hl]
    pop hl
    ld a, [hl]
    rst $38
    ld a, $f1
    ld a, $f0
    ccf
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
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
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    nop
    rst $38
    nop

jr_012_43b3:
    rst $38
    nop
    rst $38
    ld bc, $01f8

jr_012_43b9:
    ldh a, [rSB]
    ldh [rP1], a

jr_012_43bd:
    ret nz

    nop
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld b, b
    add b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    ret c

    jr nz, jr_012_43b3

    jr nz, jr_012_43b9

    jr nz, jr_012_43bd

    jr nz, jr_012_43f1

    nop
    stop
    stop
    db $10
    db $10
    jr nc, jr_012_441a

    ld h, b
    ld a, b
    and b
    ld hl, sp-$40
    ld hl, sp-$79

jr_012_43f1:
    ld hl, sp+$07
    rst $38
    rlca
    rst $38
    inc b
    db $fc
    ld [$00f8], sp
    ldh a, [$1f]
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $fe
    inc a
    inc a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b

jr_012_441a:
    add b
    add b
    nop
    nop
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    rst $38
    rst $38
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
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_012_447c:
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
    cpl
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rlca
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a

jr_012_449c:
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    db $10
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $c1fe
    jr nc, jr_012_447c

    jr nc, jr_012_449c

    db $10
    db $e3
    db $10
    pop hl
    db $10
    rlca
    ldh [rTMA], a
    pop hl
    rlca
    ld [hl], b
    ld b, $71
    rlca
    ld [hl], b
    rlca
    ld [hl], b
    rlca
    ld [hl], b
    rlca
    ld [hl], b
    inc bc
    jr c, @+$05

    jr c, @+$05

    jr c, @+$05

    jr c, jr_012_44dc

    jr c, jr_012_44de

    inc a

jr_012_44dc:
    inc bc
    inc a

jr_012_44de:
    inc bc
    inc a
    ld bc, $011c
    inc e
    add c
    inc e
    add c
    ld c, $c1
    ld c, $e1
    ld c, $e1
    ld c, $f1
    ld b, $ff
    ld [bc], a
    rst $38
    cp $ff
    cp $3f
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    add b
    add b
    ld bc, $0101
    ld bc, $0303
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    rst $00
    rst $00
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
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
    rst $38
    rst $38
    sbc a
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_012_458e

    rst $38
    rst $28
    ld a, $c7
    ld a, [hl]
    add e
    ld a, [hl]
    cp a
    ld a, [hl]
    add e
    ld a, a
    add a
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3

jr_012_458e:
    ccf
    jp $c33f


    ccf
    jp $c1ff


    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    rst $38
    pop bc
    rst $38
    ret nz

    ld hl, sp-$80
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
    inc bc
    db $fc
    inc e
    ldh [$e0], a
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
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld b, b
    nop
    ret nz

    nop
    ld b, b
    nop
    ldh [rP1], a
    ld h, b
    nop
    ld h, b
    nop
    ld a, a
    rra
    ld h, b
    rra
    jr nz, jr_012_4601

    ld [hl], b
    rrca
    jr nc, jr_012_45f5

    ld [hl], b
    rrca
    jr nc, jr_012_45f9

    jr nc, jr_012_45fb

    jr nc, jr_012_45fd

    ccf
    rlca
    push hl
    dec e
    push bc
    dec a
    rst $20

jr_012_45f5:
    rra
    rst $00
    ccf
    db $e4

jr_012_45f9:
    inc e
    ld h, b

jr_012_45fb:
    sbc h
    ld h, b

jr_012_45fd:
    sbc h
    ld [hl+], a
    sbc $33

jr_012_4601:
    rst $08
    and e
    rst $18
    sub e
    rst $28
    add e
    rst $38
    add a
    rst $38
    ld a, a
    ld a, a
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    cp $fe
    rst $38
    rst $38
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    add c
    add c
    add c
    add c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $30
    rst $30
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]

jr_012_4652:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    rlca
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
    nop
    nop
    rst $38
    nop
    jr c, jr_012_4652

    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    ld hl, sp-$10
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
    ldh a, [rIE]
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, b
    ld a, b
    rra
    rra
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    ret nz

    ret nz

    pop bc
    pop bc
    add c
    add c
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    cp $fe
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rst $28
    rst $28
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
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
    ccf
    ccf
    ccf
    ccf
    jr nc, jr_012_4791

    inc sp
    ccf
    ld [hl-], a
    ccf
    ld a, [c]
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
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
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    inc sp
    rst $38
    jr nc, @+$01

    ccf
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
    rst $38
    ld bc, $0006
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
    nop

jr_012_4791:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    ld b, $07
    ld b, $07
    ld b, $07
    cp $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    pop hl
    pop hl
    pop bc
    pop bc
    pop bc
    pop bc
    add e
    add e
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    pop bc
    pop bc
    pop bc
    pop bc
    add c
    add c
    add e
    add e
    inc bc
    inc bc
    ei
    ei
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
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
    cp a
    cp a
    add b
    add b
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
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    nop
    rst $38
    rst $30
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
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
    ld a, a
    call nc, $f77f
    ld a, a
    ret nz

    ld a, a
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
    pop bc
    ld a, $00
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
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rst $38
    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    adc e
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    ld a, [$03ff]
    rst $38
    ld hl, sp-$01
    adc e
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    ld a, [$03ff]
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    jp $83ff


    rst $38
    add a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$1f
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    add c
    add c
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    db $ed
    pop hl
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $ffff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    pop af
    rra
    pop af
    rra
    ldh a, [$1f]
    rst $38
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $28
    rst $38
    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    rst $28
    rst $38
    nop
    rst $38
    rst $28
    rst $38
    jr z, @+$01

    nop
    rst $10
    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    rst $28
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
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    add c
    add c
    pop hl
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
    cp $fe
    ccf
    ccf
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
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
    rra
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld hl, sp-$08
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_012_4a4d:
    ld a, a
    ld a, a
    ld a, a
    inc bc
    rst $38
    ld hl, sp-$01
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_012_4a67:
    nop
    rst $38

jr_012_4a69:
    nop
    rst $38

jr_012_4a6b:
    rst $28
    ld a, [hl-]

jr_012_4a6d:
    rst $28
    ld a, [$1bef]

jr_012_4a71:
    rst $28
    ld hl, sp-$11
    rra
    rst $28
    jr jr_012_4a67

    jr jr_012_4a69

    jr jr_012_4a6b

    jr jr_012_4a6d

    jr @-$0f

    jr jr_012_4a71

    jr @-$0f

    jr c, jr_012_4a4d

    nop
    nop
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
    ldh [$1f], a
    rst $38
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
    add b
    rst $38
    cp [hl]
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    ld a, $ff
    add b
    rst $38
    cp [hl]
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    ld a, $ff
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    add e
    rst $38
    rlca
    rst $38
    rlca
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
    cp $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
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
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    rst $20
    rst $20
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    di
    rst $38
    inc bc
    rst $38
    di
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
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
    rst $30
    rra
    rst $30
    rra
    rst $30
    rst $38
    rst $30
    rrca
    rst $30
    rst $38
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc e
    db $e3
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
    ldh [rIE], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
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
    rst $38
    rst $38
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
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, a
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
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
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
    rra
    rra
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
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
    rst $28
    rst $28
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
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
    rst $38
    nop
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
    ld bc, $01fe
    cp $f1
    cp $ff
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$08
    rlca
    ld e, $01
    rra
    nop
    rra
    nop
    ccf
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    pop bc
    ret nz

    ccf
    cp $01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    add $f8
    cp $f8
    db $fc
    ld hl, sp-$04
    ldh a, [$fc]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f0], a
    rst $38
    rst $38
    rst $38
    ccf
    ccf
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
    rst $38
    pop af
    pop af
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    rra
    rra
    rrca
    rrca
    rrca
    rrca
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
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
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
    ld h, b
    ld h, b
    cp a
    cp a
    jr @+$21

    jr jr_012_4d4f

    ld hl, sp-$01
    jr c, jr_012_4d53

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

jr_012_4d4f:
    ld a, [hl]
    rst $38
    ccf
    rst $38

jr_012_4d53:
    rra
    rst $38
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ldh [rIE], a
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
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
    ccf
    rst $38
    rrca
    jr jr_012_4d82

jr_012_4d82:
    stop
    stop
    stop
    jr nz, jr_012_4d8a

jr_012_4d8a:
    jr nz, jr_012_4d8c

jr_012_4d8c:
    jr z, jr_012_4d8e

jr_012_4d8e:
    jr nz, jr_012_4d91

    ld c, b

jr_012_4d91:
    ld bc, $0140
    ld d, b
    ld bc, $0140
    ld h, h
    inc bc
    ld h, h
    inc bc
    ld b, h
    add e
    ld l, h
    add e
    add a
    nop
    add a
    nop
    rlca
    nop
    rlca
    inc b
    inc bc
    rlca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    jr nc, jr_012_4dc1

    jr nc, jr_012_4dc3

    jr nz, jr_012_4dd5

    ld h, b
    rra
    ld h, b
    rra
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38

jr_012_4dc1:
    ccf
    rst $38

jr_012_4dc3:
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_012_4dd5:
    rst $38
    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
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
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $30
    rst $30
    rst $38
    rst $38
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [rIE], a
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, c
    cp a
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    jp $c37f


    ld a, a
    jp $c37f


    ld a, a
    rst $00
    rst $38
    rlca
    cp $bf
    ld b, $43
    ld [bc], a
    and e
    inc bc
    ld b, h
    ld bc, $0184
    ld b, [hl]
    nop
    add [hl]
    nop
    ld [hl], a
    rlca
    ld [hl], a
    rlca
    ld [hl], a
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    inc bc
    rst $00
    inc bc
    rst $00
    inc bc
    rst $08
    ld bc, $01cf
    adc $00
    adc $00
    adc [hl]
    nop
    sbc [hl]
    nop
    sbc h
    nop
    sbc h
    nop
    sbc h
    nop
    inc a
    nop
    jr c, jr_012_4ea6

jr_012_4ea6:
    jr c, jr_012_4ea8

jr_012_4ea8:
    ld hl, sp-$40
    jr c, @-$3e

    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    rst $38
    inc bc
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ccf
    ccf
    ccf
    ccf
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
    rrca
    rrca
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
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
    rra
    rra
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
    ld bc, $ff01
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
    ld c, $ff
    ld e, $fb
    ccf
    ld sp, hl
    ld a, a
    ldh a, [$7f]
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    rla
    rst $38
    inc de
    rst $38
    ld [hl], c
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret c

    rst $38
    add h
    ei
    add [hl]
    ei
    add [hl]
    di
    adc l
    di
    adc h
    di
    dec c
    di
    dec c
    db $e3
    dec e
    and $1b
    and $1b
    and $1b
    add $3b
    db $ec
    scf
    db $ec
    scf
    db $ec
    rst $30
    dec c
    or $19
    xor $1b
    db $ec
    inc de
    db $fc
    inc bc
    ld a, l
    rlca
    ld a, c
    add a
    add hl, sp
    adc [hl]
    inc sp
    add $1b
    ret nz

    rra
    pop hl
    ld c, $e1
    ld c, $e0
    rlca
    ldh a, [rTAC]
    ldh a, [$03]
    ld hl, sp+$03
    ld hl, sp+$01
    db $fd
    ld bc, $00fc
    cp $00
    ld a, $3f
    ld a, $3f
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01f9
    ld sp, hl
    ld bc, $00f9
    ld hl, sp-$10
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp+$7f
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add e
    cp $c1
    cp $ff
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    cp $07
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
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    add c
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    call nz, $fcff
    rst $38
    ld [c], a
    ld a, a
    pop af
    ld a, a
    ld hl, sp+$3f
    db $fc
    rra
    cp $0f
    rst $38
    rlca
    rst $38
    add e
    ld a, a
    jp $c17f


    ccf
    ldh a, [$3f]
    ret c

    ld a, a
    sbc b
    ld a, a
    sbc h
    ld h, a
    cp [hl]
    rst $28
    inc sp
    db $ed
    scf
    db $dd
    ld h, a
    db $db
    ld l, a
    sbc e
    rst $28
    cp e
    rst $08
    or a
    rst $18
    scf
    rst $18
    ld [hl], a
    sbc a
    ld l, a
    cp a
    rst $28
    ccf
    rst $28
    ccf
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $38
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    cp $7f
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    sbc a
    ccf
    add b
    rra
    ret nz

    rra
    ret nz

    rrca
    ldh [rIF], a
    ldh [rTAC], a
    ldh [rTAC], a
    ldh a, [$03]
    ldh a, [$03]
    ld hl, sp+$01
    ld hl, sp+$01
    db $fc
    nop
    db $fc
    nop
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rra
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
    cp $7f
    ld a, a
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
    rst $38
    ldh a, [rVBK]
    db $fc
    jp $80ff


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
    add b
    rst $38
    ld b, c
    rst $38
    inc hl
    rst $38
    rra
    rst $38
    rrca
    cp $1f
    db $fc
    cp a
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    set 7, a
    pop de
    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    adc h
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    ld c, $f1
    ld c, $f3
    inc e
    ei
    sbc h
    ei
    db $fc
    rst $20
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    rrca
    pop af
    ld c, $f3
    ld e, $e3
    ccf
    rst $20
    ld a, [hl]
    rst $30
    ld e, $ff
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
    ccf
    ld bc, $801f
    rra
    add b
    rrca
    ret nz

    rrca
    ret nz

    rlca
    ldh [rTAC], a
    ldh [rTAC], a
    ldh [$03], a
    ldh a, [$03]
    ldh a, [rSB]
    ld hl, sp+$01
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
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

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [rIE], a
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
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
    ldh [rIE], a
    ldh [$bf], a
    ldh a, [$3f]
    ldh a, [$1f]
    ld hl, sp+$1f
    ld hl, sp+$0f
    db $fc
    rrca
    db $fc
    sbc a
    db $fc
    ld a, a
    db $fc
    inc bc
    ld a, [$f107]
    rrca
    ldh a, [rIF]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    ld a, a
    cp $3f
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    add e
    ld a, a
    pop bc
    ccf
    pop hl
    ccf
    ldh [$7f], a
    sub b
    ld a, a

jr_012_5267:
    sbc b
    rst $30
    inc e
    rst $20
    ld a, $e3
    ld a, $e1
    ccf
    ret nz

    ld a, a
    ret nz

    ld a, a
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
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld sp, hl
    rrca
    pop af
    ld c, $f3
    ld e, $e3
    inc e
    rst $20
    inc a
    rst $00
    jr c, jr_012_5267

    db $fc
    adc a
    ld hl, sp-$21
    ld a, b
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
    ccf
    nop
    rra
    nop
    rra
    add b
    rrca
    add b
    rrca
    ret nz

    rlca
    ret nz

    rlca
    ldh [$03], a
    ldh [$03], a
    ldh a, [rSB]
    ldh a, [rSB]
    ld hl, sp+$00
    ld hl, sp+$00
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
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    inc b
    inc b
    inc b
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    inc b
    inc b
    inc b
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    inc bc
    ld e, $1f
    jr nz, jr_012_533a

    inc b
    inc b
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_012_534c

    ld a, [hl+]
    dec hl
    ld de, $2d2c
    ld l, $04
    inc b
    cpl
    jr nc, jr_012_535f

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_012_5339

    add hl, sp
    ld a, [hl-]
    dec sp

jr_012_5339:
    inc a

jr_012_533a:
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
    ld de, $4a49
    ld c, e
    ld c, h
    ld c, l

jr_012_534c:
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
    ld e, [hl]
    ld e, a

jr_012_535f:
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
    ld [hl], c
    ld [hl], d
    add e
    ld a, [bc]
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
    ld a, [bc]
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $9dcb

    call z, $cecd
    rst $08
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
    ldh a, [rDIV]
    pop af
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $04
    inc b
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc b
    inc b
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_012_5427

    inc b
    inc b
    add hl, de
    ld a, [de]

jr_012_5427:
    dec de
    inc e
    inc b
    inc b
    dec e
    ld e, $1f
    jr nz, @+$23

    nop
    rlca
    inc b
    ld bc, $0401
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    rlca
    ld bc, $0401
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    rlca
    ld bc, $0404
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    rlca
    ld bc, $0401
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    rlca
    ld bc, $0504
    nop
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0505
    nop
    nop
    rlca
    ld bc, $0401
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    dec b
    nop
    rlca
    ld bc, $0004
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0501
    dec b
    inc bc
    dec b
    dec b
    nop
    ld bc, $0504
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    ld bc, $0403
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    inc bc
    dec b
    dec b
    nop
    inc bc
    ld bc, $0505
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0203
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0203
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    dec b
    dec b
    dec b
    dec b
    nop
    inc bc
    ld bc, $0505
    inc bc
    ld bc, $0101
    ld bc, $0500
    dec b
    dec b
    inc bc
    dec b
    rlca
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0301
    dec b
    dec b
    dec b
    rlca
    inc b
    ld bc, $0704
    rlca
    inc bc
    ld bc, $0101
    ld bc, $0501
    dec b
    rlca
    rlca
    ld bc, $0401
    inc b
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    rlca
    inc b
    ld bc, $0101
    inc b
    dec c
    dec bc
    ld a, [bc]
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    add hl, bc
    add hl, bc
    ld bc, $0c01
    inc c
    ld [$0a08], sp
    dec c
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0101
    inc c
    dec c
    ld [$0008], sp
    nop
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$7f], a
    ld h, b
    rra
    nop
    nop
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
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
    nop
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
    ld bc, $feff
    rra
    ldh [rIE], a
    inc bc
    rst $38
    inc a
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
    ldh a, [$3f]
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $7f
    ld b, $1f
    ld b, $07
    ld b, $03
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
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
    rst $38
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
    nop
    nop
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
    rrca
    ldh a, [rIE]
    inc bc
    rst $38
    inc a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    nop
    nop
    add b
    add b
    rst $38
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
    db $fc
    inc bc
    cp $01
    rst $38
    nop

jr_012_5718:
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
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
    ld a, a
    inc bc
    rra
    inc bc
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    nop
    nop
    nop
    nop
    rst $38
    add b
    ld a, a
    call c, $df23
    jr nz, jr_012_5718

    ld h, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    di
    rrca
    db $f4
    rra
    db $e4
    sbc a
    ld l, l
    adc a
    ld a, b
    sbc [hl]
    ld a, b
    cp [hl]
    ld [hl], b
    cp [hl]
    ld [hl], b
    cp a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    rlca
    ld hl, sp-$01
    rlca
    rst $38
    ld a, b
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
    ld bc, $07ff
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
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
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    rst $38
    rst $38
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    add c
    ld a, [hl]
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    cp $7f
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $7f
    ld b, $1f
    ld b, $07
    ld b, $03
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
    ret nz

    nop
    ldh a, [rP1]
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
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    cp $01
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    ld bc, $0f00
    nop
    ld a, a
    inc bc
    db $fc
    ld a, a
    add a
    rst $38
    ld a, b
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
    cp $00
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
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
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld sp, $1808
    inc b
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    ld b, $01
    inc bc
    nop
    add c
    nop
    add b
    nop
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$7d
    ld a, h
    pop bc
    ld a, $e0
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $3f
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec de
    rst $38
    add hl, de
    rst $38
    jr @+$01

    jr @+$01

    rst $38
    jr @+$01

    jr jr_012_5974

    jr jr_012_5916

    jr jr_012_5900

    nop
    inc bc
    nop
    nop
    nop
    nop
    nop

jr_012_5900:
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
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf

jr_012_5916:
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fd
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
    nop
    ld a, h
    jr c, @+$7e

    ld a, b
    ld a, h
    ld a, b
    ld a, h
    jr c, jr_012_59bc

    ld a, b
    ld a, h
    db $10
    ld a, h
    ld [bc], a
    nop
    ld [bc], a
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    ld bc, $3ffe
    rst $08
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
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rra
    rst $38
    nop
    add b
    nop
    nop
    ld bc, $ff01
    rst $38
    ld hl, sp-$08

jr_012_5974:
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    ld sp, hl
    ld b, $fc
    inc bc
    db $fc
    inc bc
    ld a, [hl]
    ld bc, $003f
    rra
    add b
    sbc a
    ld b, b
    rst $08
    jr nz, jr_012_59f8

    jr nz, jr_012_5a16

    db $10
    inc sp
    ld [$0419], sp
    ld [$0404], sp
    ld [bc], a

jr_012_59bc:
    ld b, $01
    add e
    nop
    ld a, $c1
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$7d
    ld a, h
    jp $f13c


    ld c, $f8
    ld h, a
    db $fc
    di
    cp $f9
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    ld a, a
    ld [hl], e
    rra
    inc de
    rlca
    inc bc
    inc bc
    inc bc
    nop
    nop

jr_012_59f8:
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    rst $38
    rra
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ldh a, [rP1]
    add b
    nop

jr_012_5a16:
    nop
    nop
    nop
    nop
    ld h, b
    ld a, h
    ld a, b
    ld a, [hl]
    ld l, h
    ld l, [hl]
    ld l, h
    ld a, [hl]
    ld h, h
    ld l, [hl]
    ld h, h

Jump_012_5a25:
    db $76
    ld h, h
    ld a, [hl]
    ld h, h
    ld a, [hl]
    ld h, h
    ld l, [hl]
    ld h, h
    db $76
    ld a, h
    ld a, [hl]
    ld l, h
    ld a, [hl]
    ld l, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld h, b
    ld a, h
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    rra
    rst $28
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
    cp $0f
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    ld bc, $0701
    rlca
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop

jr_012_5a88:
    ldh a, [$f0]

jr_012_5a8a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld [bc], a
    cp $01
    cp $01
    ld a, a
    add b

jr_012_5a98:
    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ld h, b
    rst $08
    jr nc, jr_012_5a88

    jr jr_012_5a8a

    jr jr_012_5a98

    inc c
    ld sp, hl
    ld b, $f9
    ld b, $7c
    inc bc
    ld a, [hl]
    ld bc, $813e
    sbc a
    ld b, b
    adc a
    ld b, b
    ld c, a
    jr nz, jr_012_5b1e

    db $10
    inc sp
    ld [$0419], sp
    add hl, bc
    inc b
    inc b
    ld [bc], a
    add d
    ld bc, $00c3
    pop hl
    nop
    ld [hl], b
    nop
    jr c, jr_012_5aca

jr_012_5aca:
    inc e
    nop
    ld c, $00
    rlca
    nop
    db $fc
    inc bc
    cp $81
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp+$7f
    db $fc
    ccf
    cp $2f
    rst $38
    rst $38
    daa
    rst $38
    dec h
    rst $38
    inc h

jr_012_5ae6:
    rst $38
    inc h
    ld a, a
    inc h
    rra
    inc b
    rlca
    inc b
    inc bc
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
    rrca
    nop
    ldh [$1f], a
    sbc $21
    rst $18
    jr nz, jr_012_5ae6

    inc h
    sbc a
    ld l, d
    rst $18
    ld a, [hl+]
    rst $18
    dec sp
    cp h
    ld [hl], b
    cp h
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_012_5b1e:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rrca
    rrca
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
    ld bc, $1fff
    rst $38
    nop
    ret nz

    inc bc
    inc bc
    rst $38
    rst $38
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    ccf
    ccf
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
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    inc bc
    inc c
    inc bc
    inc c
    ld bc, $0106
    add [hl]
    nop
    add e
    add b
    ld b, e
    add b
    ld b, c
    ret nz

    ld hl, $20c0
    ldh [rNR10], a
    ldh a, [$08]
    ldh a, [$08]
    ld hl, sp+$04
    ld hl, sp+$04
    ld a, h
    add d
    ld a, h
    add d
    pop bc
    nop
    ld h, c
    nop
    ld h, b
    nop
    jr nc, jr_012_5ba8

jr_012_5ba8:
    jr jr_012_5baa

jr_012_5baa:
    inc c
    nop
    inc c
    nop
    ld b, $00
    ld a, h
    inc bc
    inc a
    add e
    cp [hl]
    ld b, c
    sbc a
    ld b, b
    ld c, a
    jr nz, jr_012_5be2

    db $10
    inc sp
    ld [$0813], sp
    adc c
    inc b
    call nz, $e202
    ld bc, $0061
    ld sp, $1800
    nop
    inc l
    jr nc, jr_012_5c45

    ld [hl], b
    db $fc
    ei
    cp $f1
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $f7
    rst $38
    rst $30
    rst $38
    rst $38
    push af

jr_012_5be2:
    ld a, a
    ld [hl], l
    rra
    dec d
    rlca
    dec b
    inc bc
    ld bc, $0000
    ret nz

    nop
    ldh a, [rP1]
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
    ccf
    rst $38
    rlca
    nop
    rst $38
    ldh a, [rIF]
    cp $01
    ld h, e
    nop
    ld b, b
    nop
    inc b
    nop
    dec b
    ld bc, $0206
    rst $38
    ld b, $ff
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
    cp a
    ld b, b
    ld b, c
    nop
    pop hl
    nop
    pop hl
    nop
    rst $30
    rlca
    cp $7f
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $7fe1
    rst $38
    ld hl, sp-$08
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
    ccf

jr_012_5c45:
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rst $38
    rst $38
    ldh [$e0], a
    ret nz

    ret nz

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
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a

jr_012_5c72:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_012_5c7c:
    inc bc
    inc bc
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
    nop
    add b
    nop
    ccf
    ret nz

    ccf
    ret nz

jr_012_5c94:
    rra
    ld h, b
    rra
    ld h, b
    rrca
    jr nc, jr_012_5caa

    jr nc, jr_012_5ca4

    jr @+$09

    jr jr_012_5ca4

    inc c
    inc bc
    inc c

jr_012_5ca4:
    ld bc, $8186
    ld b, [hl]
    add b
    ld b, e

jr_012_5caa:
    ret nz

    inc hl
    ret nz

    ld hl, $11e0
    ldh [rNR10], a
    ldh a, [$08]
    ld a, b
    add h

jr_012_5cb6:
    jr c, jr_012_5c7c

    inc a
    jp nz, Jump_012_629c

    adc $31
    and $19
    rst $20
    jr jr_012_5cb6

    inc c
    ld a, c
    ld b, $39
    add [hl]
    inc a
    add e
    sub e
    ld c, h
    ld c, a
    jr nc, jr_012_5cee

    jr nz, jr_012_5cf0

    jr nz, jr_012_5c72

    jr nz, jr_012_5c94

    ld b, b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    add b
    rst $30
    ret c

    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    ld e, e
    ld a, a
    ld a, d

jr_012_5cee:
    rra
    ld a, [de]

jr_012_5cf0:
    rlca
    rlca
    inc bc
    inc bc
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
    sbc a
    nop
    adc a
    nop
    ld b, e
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    pop bc
    add b
    ld b, c
    add b
    ld b, c
    add b
    ld b, c
    nop
    ld h, c
    nop
    ld h, c
    nop
    ld h, c
    nop
    ld h, c
    nop
    ld h, c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld sp, hl
    ret nz

    ld a, c
    ret nz

    ld a, e
    jp nz, $c67f

    ld a, a
    rst $38
    jr jr_012_5d4a

    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    add c
    add c
    inc bc
    inc bc
    rst $20
    rst $20
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    add b
    add b

jr_012_5d4a:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    adc a
    adc a
    nop
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
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $28
    add hl, de
    rst $28
    rrca
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    ld b, $fb
    ld b, $fb
    ld b, $fb
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    ld bc, $01fe

jr_012_5d9d:
    cp $01

jr_012_5d9f:
    cp $07

jr_012_5da1:
    adc b
    nop
    adc a
    adc a
    ld [hl], b
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
    add b
    add b
    pop bc
    pop bc
    rst $38
    jp nz, $fcff

    jp $c1fe


    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    nop
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    jr c, jr_012_5de9

    rst $20
    jr c, @-$37

    jr z, jr_012_5d9d

    jr z, jr_012_5d9f

    jr z, jr_012_5da1

    add hl, hl
    add $2b
    call nz, $c827
    daa
    ret z

    daa
    ret z

    daa
    ret z

    daa
    ret z

    daa

jr_012_5de9:
    ret z

    daa
    ret z

    daa
    ret z

    daa
    ret z

    ret z

    nop
    ret z

    nop
    rst $08
    rlca
    ret c

    rlca
    ret c

    rlca
    ret c

    rlca
    ret nz

    rlca
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    pop bc
    pop bc
    add e
    add e
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0303
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    rst $38
    rst $38
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
    nop
    nop
    nop
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
    ld bc, $ffff
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    ld b, b

jr_012_5e5d:
    rst $38
    inc sp
    rst $38
    inc a
    rst $38
    nop

jr_012_5e63:
    rst $38
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
    rrca
    ldh a, [rIE]
    add c
    rst $38
    sbc [hl]
    rst $38
    ret c

    ld a, a
    db $d3
    ld a, a
    db $d3
    ld a, a
    ld l, c
    cp a
    ld a, a
    cp a
    ld l, c
    cp a
    jr c, jr_012_5e5d

    ld [hl], $df
    scf
    rst $18
    jr nc, jr_012_5e63

    rra
    rst $28
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    nop
    ld hl, sp+$08
    jr jr_012_5e9e

    jr jr_012_5ea0

    jr jr_012_5ea2

    jr jr_012_5ea4

    jr jr_012_5ea6

jr_012_5e9e:
    jr jr_012_5ea8

jr_012_5ea0:
    jr jr_012_5ea2

jr_012_5ea2:
    jr jr_012_5ea4

jr_012_5ea4:
    jr jr_012_5ea6

jr_012_5ea6:
    jr nc, jr_012_5ea8

jr_012_5ea8:
    ccf
    rrca
    jr c, @+$11

    dec sp
    rrca
    ld a, [hl-]
    rrca
    ld a, [hl-]
    rrca
    ld a, [hl-]
    rrca
    ld a, [hl-]
    rrca
    ld a, [hl-]
    rrca
    cp e
    adc a
    ld hl, sp-$31
    rst $38
    add b
    rst $38
    or $8b
    rst $38
    adc e
    rst $38
    adc e
    rst $38
    adc e
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld [$fb0f], sp
    rrca
    ld a, [$fa0f]
    rrca
    ld a, [$fa0f]
    rrca
    ld a, [$fb0f]
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ei
    rrca
    ld a, [$0aff]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    ld a, $3e
    rst $38
    rst $38
    rst $00
    rst $00
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    pop bc
    pop bc
    pop bc
    pop bc
    add e
    add e
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ret nz

    rst $38
    ld b, e
    rst $38
    db $fc
    rst $38
    ld b, b
    rst $38
    ld hl, $ffff
    cp $ff
    ld bc, $fffe
    ld b, b
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    ld a, $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ldh [rIE], a
    rra
    rst $38
    ldh a, [rIE]
    rra
    rst $38
    rst $38
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld h, e
    db $eb
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $20
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld a, a
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
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], a
    db $eb
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld a, [$3fff]
    ccf
    db $fc
    db $fc
    rst $08
    rst $08
    rst $20
    rst $20
    ld a, a
    ld a, a
    db $fc
    db $fc
    rst $38
    rst $38
    adc a
    adc a
    rrca
    rrca
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
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
    rra
    rra
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    db $fc
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    ei
    ld c, h
    ei
    call z, $ccfb
    ei
    inc c
    ei
    inc c
    ei
    db $fc

jr_012_6063:
    ei
    db $fc
    inc bc
    db $fc
    ei
    inc e
    ei
    jr jr_012_6063

    ret c

    rst $30
    ret c

    rst $30
    ld e, b
    rst $30
    ld e, b
    rst $30
    ld hl, sp-$09
    ld e, b
    rst $30
    ld e, b
    rst $30
    ld e, b
    rst $30
    ret c

    rst $30
    ret c

    rst $30
    rst $30
    db $10
    rst $30
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
    db $fc
    inc bc
    cp $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $00
    ld b, $00
    ld b, $00
    cp $f8
    ld c, $f8
    ld l, [hl]
    ld hl, sp+$4e
    ld hl, sp+$4e
    ld hl, sp+$4e
    ld hl, sp+$4e
    ld hl, sp+$4f
    ld hl, sp+$6f
    ld hl, sp+$0f
    ld hl, sp-$01
    nop
    rst $38
    ld l, [hl]
    reti


    rst $38
    reti


    rst $38
    reti


    rst $38
    ld hl, sp-$02
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
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld [$6ff8], sp
    ld hl, sp+$4f
    ld hl, sp+$4f
    ld hl, sp+$4f
    ld hl, sp+$4f
    ld hl, sp+$4f
    ld hl, sp+$6f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$6f
    ld hl, sp+$4f
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    rst $38
    rst $38
    ld a, h
    ld a, h
    rst $38
    rst $38
    db $e3
    db $e3
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$09]
    ldh [rNR11], a
    pop hl
    ld [de], a
    pop hl
    ld [de], a
    ld bc, $e3f2
    inc d
    pop hl
    ld e, $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38

jr_012_618b:
    nop
    rst $38

jr_012_618d:
    nop
    rst $38

jr_012_618f:
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
    ld bc, $03ff
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    add a
    add a
    cp $06
    cp $7e
    add $7e
    add $7e
    add $fe
    call nz, $c4fc
    db $fc
    nop
    nop
    ld bc, $0300
    nop
    rst $38
    nop
    rst $38
    jr c, jr_012_61f1

    rst $08
    jr jr_012_618b

    jr jr_012_618d

    jr jr_012_618f

    ret z

    rlca
    ret z

    daa
    ret


    ld h, $c1
    ld h, $c1
    ld h, $c1
    ld h, $c1
    ld h, $c1
    ld h, $d1
    ld h, $d1
    ld h, $d9
    ld h, $d9
    ld h, $26
    nop
    ld h, $00
    rst $30
    rst $00
    ld [hl], $c7
    ld [hl], $c7
    ld [hl], $c7
    ld [hl], $c7
    ld [hl], $c7
    rst $38

jr_012_61f1:
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
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
    rst $38
    rst $38
    add b
    ld b, c
    add b
    ld b, c
    add c
    ld b, d
    ld bc, $0182
    add d
    inc bc
    add h
    inc bc
    add h
    inc bc
    add h
    inc bc
    inc b
    rlca
    ld [$0807], sp
    rlca
    ld [$100f], sp
    rrca
    db $10
    rrca
    db $10
    ld e, $21
    ld e, $21
    ld e, $21
    inc e
    inc hl
    inc a
    ld b, e
    inc a
    ld b, e
    add hl, sp
    ld b, [hl]
    ld a, c
    add [hl]
    ld [hl], e
    adc h
    adc h
    nop
    inc c
    nop
    jr jr_012_6266

jr_012_6266:
    jr jr_012_6268

jr_012_6268:
    jr jr_012_626a

jr_012_626a:
    jr nc, jr_012_626c

jr_012_626c:
    jr nc, jr_012_626e

jr_012_626e:
    ld h, b
    nop
    sbc a
    ld h, b
    sbc [hl]
    ld h, b
    ld a, $c0
    ld a, $c7
    rst $18
    cpl
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    cp $fe
    db $fc
    db $ec
    ld hl, sp-$18
    ldh a, [$e0]
    ldh a, [$a0]
    pop hl
    and b
    jp $c380


    add b

jr_012_629a:
    add a
    add b

Jump_012_629c:
jr_012_629c:
    rrca
    nop

jr_012_629e:
    rra
    nop

jr_012_62a0:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cpl
    nop
    daa
    nop
    inc hl
    nop
    ld hl, $2000
    nop
    jr nz, jr_012_62c8

jr_012_62c8:
    jr nz, jr_012_62ca

jr_012_62ca:
    jr nz, jr_012_62cc

jr_012_62cc:
    jr nz, jr_012_62ce

jr_012_62ce:
    jr nz, jr_012_62d0

jr_012_62d0:
    jr nz, jr_012_62d2

jr_012_62d2:
    jr nz, jr_012_62d4

jr_012_62d4:
    ldh [$c0], a
    jr nz, @-$3e

    jr nz, jr_012_629a

    jr nz, jr_012_629c

    jr nz, jr_012_629e

    jr nz, jr_012_62a0

    rst $38
    rst $38
    add e
    add e

jr_012_62e4:
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    rst $38
    rst $38
    inc bc
    inc bc
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    rst $38

jr_012_6312:
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
    rst $38
    rst $38
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
    ld b, $00
    ld b, $00
    inc c
    nop
    inc c
    nop
    inc c
    nop
    jr jr_012_633c

jr_012_633c:
    jr jr_012_633e

jr_012_633e:
    jr nc, jr_012_6340

jr_012_6340:
    rst $08
    jr nc, jr_012_6312

    jr nc, jr_012_62e4

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld a, $c0
    ld a, $c0
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $08
    rrca
    rst $08
    rra
    rst $08
    rra
    adc a
    rra
    sbc a
    cpl
    rra
    cpl
    ccf
    ld c, a
    cp [hl]
    ld c, [hl]
    ld a, [hl]
    adc [hl]
    ld a, h
    adc h
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [$80]
    ldh [$80], a
    ldh [rP1], a
    ld bc, HeaderManufacturerCode
    ld a, a
    inc bc
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
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
    ldh a, [$fc]
    ret nz

    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nc

    ccf
    add sp, $1f
    call z, $c41f
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld b, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    inc sp
    ld a, a
    inc c
    ld a, a
    inc bc
    ld a, a
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    add b
    add e
    cp $ff
    ccf
    ccf
    rra
    rra
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    rlca
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
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
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
    db $fc
    ld bc, $01f8
    ld sp, hl
    ld [bc], a
    pop af
    ld [bc], a
    di
    dec b
    db $e3
    dec b
    rst $20
    dec bc
    rst $00
    dec bc
    rst $08
    rla
    adc a
    rla
    sbc a
    cpl
    rra
    cpl
    ccf
    ld e, [hl]
    ccf
    ld a, [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp $ff
    ld a, [hl]
    rst $38
    or $ff
    or $ff
    and $fe
    add $fe
    add $fc
    call nz, $c0f8
    ld hl, sp-$40
    ldh a, [$c0]
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld bc, $0300
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
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    db $fc
    add b
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld hl, $33de
    call z, $8f73
    ld a, e
    sbc a
    ld [hl], a
    sbc a
    rst $30
    ccf
    rst $08
    rlca
    rst $08
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
    ld a, a
    add e
    add e
    inc bc
    jp $c303


    inc bc
    db $e3
    inc bc
    di
    inc bc
    ei
    inc bc
    rst $38
    db $e3
    rra
    db $fc
    db $e3
    rst $38
    inc e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    nop
    rlca
    nop
    ld bc, $ffff
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rst $38
    rst $38
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
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
    ccf
    ccf
    rra

jr_012_651f:
    rra
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38

jr_012_6531:
    ldh a, [$fe]
    or b
    db $fc
    or b
    db $fc
    jr nc, jr_012_6531

    jr nc, @-$0e

    jr nc, @-$0e

    jr nc, jr_012_651f

    jr nz, jr_012_6541

jr_012_6541:
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
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
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [$fe], a
    add b
    ld hl, sp+$00
    rrca
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
    sbc a
    nop
    rrca
    rlca
    dec a
    inc a
    ld [$94e0], a
    add c
    ld a, [hl+]
    ld bc, $0f10
    ld [bc], a
    add hl, bc
    nop
    rra
    nop
    rra
    db $10
    rrca
    nop
    dec bc
    db $10
    rlca
    nop
    rrca
    nop
    ld [bc], a
    inc b
    ld bc, $0007
    rrca
    nop
    nop
    ld bc, $0400
    nop
    nop
    nop
    ld [$f400], sp
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $e0ff
    rra
    db $fc
    jp $30ff


    rst $38
    ld c, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    pop af
    pop af
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$40
    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

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
    ld bc, $0300
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

jr_012_6634:
    rst $38
    rst $38

jr_012_6636:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_012_663c:
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    or b
    rst $38
    pop af
    rst $38
    ld a, [c]
    cp a
    ld [hl], d
    ld a, a
    or a
    ccf
    ldh a, [$78]
    or b
    cp b
    ld [hl], b
    ld a, b
    or b
    ccf
    ldh a, [$7f]
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ldh a, [$30]
    ld [hl], b
    jr nc, jr_012_66b1

    ld [hl], b
    jr nc, jr_012_6634

    jr nc, jr_012_6636

    jr nc, jr_012_66f8

    jr nc, jr_012_66ba

    jr nc, jr_012_663c

    or b
    ldh a, [$f0]
    ldh a, [$f0]

jr_012_6691:
    ldh a, [$f0]
    jr nc, jr_012_6691

    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    db $fc
    add e
    rst $38
    ld h, b
    rst $38
    jr @+$01

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

jr_012_66b1:
    ld a, a
    nop
    rra
    nop
    rrca
    db $fc
    rst $38
    cp $ff

jr_012_66ba:
    rst $38
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

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
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
    nop
    nop
    add b
    add b
    nop
    nop
    ld bc, $0300
    nop
    inc bc
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_012_66f8:
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
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    nop
    cp $00
    ld hl, sp+$00
    rra
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
    ret


    nop
    inc c
    nop
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    pop hl
    sbc [hl]
    pop hl
    ld e, [hl]
    pop af
    ld c, [hl]
    di
    ld l, h
    db $e3
    inc a
    di
    inc a
    ei
    inc e
    ei
    inc e
    ei
    inc e
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld c, $ff
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
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    nop
    nop
    nop
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
    rst $38
    rst $38
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
    ld bc, $0001
    ld bc, $0202
    inc bc
    inc b
    dec b
    dec b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    ld bc, $0202
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_012_67ca

    ld a, [de]
    dec de
    inc e
    ld [bc], a
    inc bc
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_012_67ec

    ld a, [hl+]
    dec hl
    ld [bc], a
    inc l
    dec l
    ld l, $2f

jr_012_67ca:
    jr nc, jr_012_67fd

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_012_680d

    ld a, [hl-]
    dec hl
    dec sp
    inc a
    ld [bc], a
    dec a
    dec b
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

jr_012_67ec:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    dec b
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_012_67fd:
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
    ld l, d
    ld l, e
    ld l, h
    ld l, l

jr_012_680d:
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
    ld b, d
    ld a, [hl]
    ld a, a
    add b
    ld [hl], d
    ld [hl], e
    ld [hl], h
    add c
    add d
    add e
    ld a, b
    add h
    ld a, d
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    ld h, h
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
    ld d, l
    dec b
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
    dec b
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
    ld [bc], a
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld [bc], a
    ld b, $07
    ld [$0202], sp
    add hl, bc
    ld a, [bc]
    dec b
    dec bc
    inc c
    sbc c
    dec c
    ld c, $0f
    db $10
    ld de, $0512
    inc de
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    ld d, $17
    jr jr_012_68e9

    ld bc, $0101
    ld bc, $0304
    nop
    nop
    nop
    inc b
    rlca
    inc b
    inc bc
    rlca
    ld bc, $0401
    ld bc, $0101
    ld bc, $0304
    inc bc
    inc bc

jr_012_68e9:
    inc bc
    rlca
    rlca
    inc bc
    rlca
    ld bc, $0001
    rlca
    ld bc, $0101
    inc b
    inc bc
    dec b
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    rlca
    ld bc, $0101
    inc b
    dec b
    nop
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0501
    inc bc
    nop
    rlca
    ld bc, $0401
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    inc bc
    rlca
    ld bc, $0504
    dec b
    dec b
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0303
    inc bc
    nop
    inc bc
    inc bc
    inc b
    dec b
    dec b
    dec b
    dec b
    rlca
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0303
    nop
    nop
    nop
    inc bc
    ld bc, $0203
    dec b
    inc bc
    rlca
    ld bc, $0121
    ld bc, $4303
    jr nz, jr_012_6984

    nop
    inc bc
    ld bc, $0223
    dec h
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0505
    dec h
    dec b
    dec b
    inc bc
    ld bc, $0505
    dec b
    inc bc
    rlca
    ld bc, $0101
    nop
    inc bc
    inc bc
    inc hl
    nop

jr_012_6984:
    inc bc
    inc bc
    inc b
    dec b
    dec b
    dec b
    nop
    rlca
    ld bc, $0101
    ld bc, $0503
    dec b
    nop
    inc bc
    inc bc
    inc b
    dec b
    dec b
    dec b
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    rlca
    inc b
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0501
    inc bc
    dec b
    dec b
    rlca
    inc b
    inc b
    nop
    inc bc
    inc bc
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0303
    nop
    nop
    rlca
    ld bc, $0004
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    rlca
    ld bc, $0504
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    rlca
    ld bc, $0504
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0901
    add hl, bc
    ld [$0f08], sp
    add hl, bc
    ld bc, $080c
    ld [$0000], sp
    ld [$010a], sp
    add hl, bc
    add hl, bc
    nop
    ld [$0c0f], sp
    add hl, bc
    inc c
    dec bc
    nop
    ld [$0000], sp
    ld [$090a], sp
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
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld e, $00
    ccf
    rst $38
    ccf
    rst $20
    ld e, $c8
    rlca
    add d
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld [hl], l
    nop
    xor d
    add b
    ld d, l
    ld b, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    db $eb
    inc d
    rst $38
    nop
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    cp $ff
    nop
    ld hl, sp+$00
    rlca
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
    ld bc, $1eff
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    db $fc
    rst $38
    rst $38
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rra
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
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rrca
    dec c
    rrca
    dec c
    rrca
    ld c, $0f
    add hl, bc
    rrca
    ld c, $0f
    rrca
    rrca
    ld [$0f0f], sp
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
    ld [$0f0f], sp
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
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    inc a
    adc a
    ld e, e
    rrca
    ccf
    rrca
    ld c, a
    inc e
    xor a
    nop
    ld b, a
    add hl, de
    add a
    cpl
    rlca
    ld e, a
    rrca
    cp a
    rrca
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    ld h, c
    cp $f0
    cp $c0
    pop af
    ld bc, $0fcf
    ccf
    inc sp
    rst $38
    jp $03ff


    ld b, $ff
    dec c
    rst $38
    inc hl
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    di
    di
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

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
    rst $08
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    jp $c3ff


    rst $38
    jp Jump_012_7fff


    ld b, e
    ccf
    inc bc
    rra
    inc bc
    rra
    inc bc
    rrca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
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
    ldh a, [rP1]
    ld hl, sp+$00
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
    ccf
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$50]
    ld hl, sp+$58
    cpl
    ld hl, sp+$2f
    ld hl, sp+$4f
    db $fc
    cpl
    db $fc
    ld l, [hl]
    db $fc
    ld c, $fc
    ld l, [hl]
    db $fc
    ld l, [hl]
    db $fc
    ld l, h
    db $fc
    ld l, h
    db $fc
    ld l, h
    db $fc
    ld l, h
    db $fc
    inc c
    db $fc
    ld l, h
    db $fc
    ld l, h
    db $fc
    ld l, [hl]
    db $fc
    ld l, [hl]
    db $fc
    ld l, [hl]
    db $fc
    ld l, [hl]
    db $fc
    ld c, $fc
    ld l, [hl]
    db $fc
    ld l, [hl]
    db $fc
    ld l, a
    db $fc
    ld l, a
    db $fc
    db $fc
    ld l, h
    db $fc
    ld c, h
    db $fc
    inc a
    ldh a, [$f0]
    ret nz

    ret nz

    inc bc
    inc bc
    inc e
    rra
    ld h, b
    ld a, a
    add c
    rst $38
    ld b, $ff
    jr @+$01

    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    add b
    ldh a, [$80]
    ret nz

    add b
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    rst $38
    rst $38
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
    rrca
    rrca
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
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
    scf
    rst $38
    scf
    rst $38
    rst $38
    inc sp
    rst $38
    inc sp
    ld a, a
    inc sp
    ld a, a
    inc sp
    ccf
    inc sp
    rra
    inc de
    rrca
    inc bc
    rlca
    inc bc
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    add b
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
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    ld a, a
    inc bc
    ccf
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    and $01
    and e
    nop
    and e
    nop
    inc hl
    nop
    inc hl
    nop
    ld h, c
    nop
    ld [hl], l
    inc b
    ld l, e
    ld a, [bc]
    sbc $2b
    rst $18
    dec sp
    cp h
    ld [hl], b
    cp h
    ld [hl], b
    cp $01
    cp $01
    cp $01
    cp $01
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0106
    inc b
    inc bc
    inc b
    inc bc
    inc c
    inc bc
    sbc b
    rlca
    rrca
    nop
    rra
    nop
    ccf
    inc bc
    ld a, l
    rrca
    pop af
    ccf
    add d
    rst $38
    inc e
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    nop
    ldh a, [rP1]
    ldh [$3f], a
    rst $38
    cp $fe
    db $fc
    db $fc
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

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
    rst $38
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
    nop
    nop
    nop
    nop
    db $f4
    ld [$08f4], sp
    ld a, [$fa04]
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    db $fc
    db $fc
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, l
    ccf
    dec a
    rra
    dec e
    rra
    dec e
    rrca
    dec c
    rlca
    dec b
    inc bc
    ld bc, $0103
    add c
    ld bc, $00c0
    ldh [rP1], a
    rst $38
    rst $38
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
    add e
    nop
    ld bc, $0000
    rst $38

jr_012_6dd2:
    nop
    rst $38

jr_012_6dd4:
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$7f], a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, $41
    ccf
    ld b, b
    ccf
    ld b, b
    rrca
    jr nz, jr_012_6e54

    jr nz, jr_012_6dd2

    jr nz, jr_012_6dd4

    db $10
    ld b, c
    sub b

jr_012_6e54:
    ld b, c
    adc b
    and c
    ld c, b
    and b
    ld c, b
    and b
    ld b, h
    ret nc

    inc h
    ret nc

    inc h
    add sp, $12
    add sp, $13
    di
    inc c
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, @-$1f

    jr nz, @-$1f

    jr nz, jr_012_6e91

    nop
    jr nz, jr_012_6e74

jr_012_6e74:
    and b
    add b
    and b
    add b
    ldh [$c0], a
    ldh [$c0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $18
    ld a, [hl]
    sbc $7f
    sbc $7f
    rst $18
    ld a, a
    ld e, a
    ld a, [hl]
    ld a, a

jr_012_6e91:
    ld e, [hl]
    ccf
    ld e, $1f
    ld e, $0f
    ld c, $0f
    ld c, $87
    rlca
    jp nz, $e003

    nop
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, $fe
    ld a, $fe
    ld a, $01
    cp $9f
    ld a, [hl]
    adc a
    ld a, [hl]
    add a
    ld a, [hl]
    inc bc
    ld a, [hl]
    ld bc, $037e
    ld a, [hl]
    rrca
    ld a, [hl]
    rrca
    ld a, [hl]
    rrca
    ld a, [hl]
    rrca
    ld a, [hl]
    rrca
    ld a, [hl]
    rrca
    ld a, [hl]
    rrca
    ld a, [hl]
    rrca
    ld a, [hl]
    rrca
    ld a, [hl]
    rrca
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    add c
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
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
    nop
    pop hl
    ldh [rIE], a
    cp $7f
    ld a, [hl]
    rst $38
    cp $03
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    cp $fe
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
    add b
    nop
    add b
    nop
    add e
    nop
    add d
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fb01
    inc bc
    rst $38
    inc bc
    rst $38
    ei
    ld l, a
    rrca
    ld h, a
    rlca
    ld h, e
    inc bc
    ld h, e
    inc bc
    ld h, e
    inc bc
    ld h, e
    inc bc
    rst $38
    sbc a
    ld h, e
    sbc a
    inc hl
    ccf
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $38
    rrca
    rst $38

jr_012_6f9b:
    rra
    ccf
    rra
    ccf
    rra
    ld b, b
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld b, b
    ccf

jr_012_6fa8:
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld e, a
    ccf
    ld c, c
    ccf
    ld c, l
    ccf
    ld c, l
    ccf
    ld c, l
    ccf
    ld c, c
    ccf
    ld c, c
    ccf
    ld c, c
    ccf
    ld c, c
    ccf
    ld e, a
    ccf

jr_012_6fc2:
    ld e, a
    jr nz, jr_012_7024

    jr nz, jr_012_7026

    jr nz, jr_012_7028

    jr nz, jr_012_702a

    jr nz, jr_012_702c

    jr nz, jr_012_702e

    jr nz, jr_012_7030

    ccf
    ld b, b
    ccf
    ld e, a
    jr nz, jr_012_7036

    jr nz, jr_012_6fa8

    jr nc, jr_012_6f9b

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nc

    jr nc, jr_012_6fc2

    ccf
    rst $18
    ccf
    rst $18
    ccf
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
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
    rst $38
    rst $38

jr_012_7024:
    rst $38
    rst $38

jr_012_7026:
    rst $38
    rst $38

jr_012_7028:
    rst $38
    rst $38

jr_012_702a:
    rst $38
    rst $38

jr_012_702c:
    rst $38
    rst $38

jr_012_702e:
    add b
    add b

jr_012_7030:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_012_7036:
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld hl, sp+$01
    ldh a, [$03]
    nop
    inc bc
    ld bc, $0186
    add [hl]
    nop
    add a
    ld bc, $0186
    add [hl]
    ld bc, $0186
    add [hl]
    ld bc, $0186
    add [hl]
    ld bc, $0186
    add [hl]
    ld bc, $0186
    add [hl]
    ld bc, $0186
    add [hl]
    ld bc, $0186
    add [hl]
    ld bc, $0102
    cp $01
    cp $05
    add d
    adc c
    ld b, [hl]
    add e
    ld c, h
    add e
    ld c, h
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    nop
    rst $38
    rst $38
    ld [hl], b
    adc a
    dec bc
    adc h
    ld [$088c], sp
    adc h
    ld [$7bff], sp
    adc h
    ld a, e
    adc h
    ld a, e
    rst $38
    rst $38
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
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$03
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    db $fd
    ld hl, sp-$03
    nop
    dec b
    nop
    dec b
    nop
    rlca
    nop
    ld [hl], a
    nop
    rst $30
    nop
    rst $30
    nop
    ld hl, sp-$01
    rst $38
    rst $38
    add a
    add a
    rst $38
    rst $38
    cp $fe
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    pop bc
    pop bc
    ret nz

    ret nz

    ret nz

    ret nz

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
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    dec de
    db $fc
    cpl
    ldh a, [$38]
    ldh [$50], a
    ldh [$73], a
    ret nz

    and h
    jp $806f


    ld c, b
    add a
    ld c, b
    add b
    ld c, e
    add h
    ld c, e
    add h
    ld c, e
    add h
    ld c, e
    add h
    ld b, h
    add e
    ld b, e
    add b
    ld b, b
    add b
    ld h, c
    add c
    ld a, a
    add c
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $28
    ld sp, $3121
    ld hl, $2131
    pop af
    pop hl
    ccf
    rst $28
    ld sp, $ffef
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
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    nop
    rst $28
    nop
    rst $30
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    ld a, [$fe13]
    dec bc
    rst $38
    dec d
    rst $38
    jr nz, @-$06

    nop
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ld sp, hl
    ld bc, $00fc
    nop
    cp $00
    nop
    rst $38
    nop
    ld bc, $ff00
    inc bc
    rlca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    rlca
    rlca
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
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    add b
    add b
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
    ld bc, $0100
    nop
    jp nc, $d221

    ld hl, $c122
    jp nz, Jump_000_0201

    ld bc, $c1c6
    cp $c1
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    dec a
    add $04
    add $04
    add $04
    add $04
    rst $38
    dec a
    add $3d
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
    ld bc, $00ff
    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$1f], a
    ret z

    ld a, a
    ret nc

    rst $38
    xor b
    rst $38
    inc b
    rst $38
    ld bc, $80c0
    rst $38
    ldh [$f0], a
    ldh [$f8], a
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rra
    rra
    rst $28
    rst $28
    rst $38
    rst $38
    cp $fe
    cp $fe
    rrca
    rrca
    nop
    nop
    add b
    add b
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
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
    nop
    rst $38
    rra
    add b
    rrca
    ret nz

    nop
    ret nz

    add b
    ld h, c
    add b
    ld h, c
    nop
    pop hl
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld b, b
    add b
    ld a, a
    add b
    ld a, a
    and b
    ld b, c
    sub c
    ld h, d
    pop bc
    ld [hl-], a
    pop bc
    ld [hl-], a
    di
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
    rst $38
    nop
    rst $38
    rst $30
    rra
    rla
    jr jr_012_7318

    jr jr_012_731a

    jr jr_012_731c

    rst $38
    rst $30
    jr @-$07

    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_012_7318:
    nop
    nop

jr_012_731a:
    rst $38
    nop

jr_012_731c:
    rst $38
    db $fc
    rst $38
    ld hl, sp+$20
    rst $08
    xor a
    rst $08
    xor a
    rst $08
    and b
    rst $08
    and b
    rst $08
    and b
    rst $08
    and b
    rst $08
    and b
    rst $08
    xor a
    ret nz

    xor a
    ret nz

    adc a
    ldh [$8f], a
    ldh [$af], a
    ret nz

    xor a
    ret nz

    xor a
    ret nz

    adc a
    ldh [$af], a
    ret nz

    xor d
    push bc
    add b
    rst $28
    add b
    rst $38
    sub b
    rst $28
    add b
    rst $38
    db $10
    rst $28
    rrca
    rst $38
    rst $38
    rrca
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh a, [$f0]
    rst $38
    rst $38
    rlca
    rlca
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    rst $38
    rst $38
    db $fc
    db $fc
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
    ret nz

    nop
    ld b, b
    nop
    add c
    nop
    add c
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    cp $00
    ld [bc], a
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
    jr nc, jr_012_73dc

jr_012_73dc:
    ld a, e
    ld b, c
    ld a, a
    ld e, [hl]
    rst $38
    ccf
    db $fc
    ld hl, sp-$08
    ldh a, [$78]
    ld h, b
    ld a, b
    ld h, b
    ld a, b
    ld h, b
    rst $38
    rst $30
    ld a, b
    rst $38
    cp $1f
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    nop
    rst $38
    db $fc
    cp $fc
    cp $02
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    cp $fc
    sub d
    db $fc
    sub [hl]
    db $fc
    jp c, $bafc

    db $fc
    sbc d
    db $fc
    sub [hl]
    db $fc
    sbc [hl]
    db $fc
    cp $fc
    cp $00
    add d
    ld a, h
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    rst $38
    db $fc
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
    rst $38
    rlca
    inc b
    rst $38
    db $fc
    ccf
    inc a
    rra
    inc e
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
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
    rrca
    rrca
    rst $38
    rst $38
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
    rlca
    rlca
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
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld [$1000], sp
    nop
    stop
    jr nz, jr_012_7498

jr_012_7498:
    jr nz, jr_012_749a

jr_012_749a:
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    rst $38
    nop
    ld sp, hl
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    ld bc, $0201
    ld bc, $0202
    inc b
    inc b
    adc b
    adc b
    ld [hl], b
    pop af
    ld [$04fb], sp
    db $fc
    inc bc
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
    ld b, $04
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    cp $06
    cp $de
    ld l, [hl]

jr_012_74d3:
    ld c, [hl]
    ld l, [hl]

jr_012_74d5:
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ld l, [hl]
    ld c, [hl]
    ld l, [hl]

jr_012_74db:
    ld c, [hl]
    cp $de
    ld l, b

jr_012_74df:
    ret c

    nop
    rst $38
    nop

jr_012_74e3:
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rlca
    ld hl, sp+$27
    ld a, b
    ld h, a

jr_012_74f5:
    jr c, jr_012_755e

    jr c, jr_012_755c

    jr c, jr_012_755c

    jr c, jr_012_755d

    jr c, jr_012_755f

    jr c, jr_012_7541

    jr c, jr_012_7543

    jr c, jr_012_7545

    jr c, @+$42

    jr c, jr_012_7549

    jr c, jr_012_754b

    jr c, jr_012_754d

    jr c, @-$3e

    jr c, @-$3e

    jr c, jr_012_74d3

    jr c, jr_012_74d5

    jr c, jr_012_74db

    jr c, @-$3a

    jr c, jr_012_74df

    jr c, jr_012_74e3

    jr c, jr_012_74f5

    jr c, jr_012_7559

    db $10
    jr c, jr_012_7524

jr_012_7524:
    jr c, jr_012_7526

jr_012_7526:
    jr c, jr_012_7528

jr_012_7528:
    jr c, jr_012_752a

jr_012_752a:
    jr c, jr_012_752c

jr_012_752c:
    jr c, jr_012_752e

jr_012_752e:
    jr c, jr_012_7530

jr_012_7530:
    cp $3e
    rst $38
    ccf
    ret nz

    nop
    ldh a, [$30]
    rst $38
    rst $38

jr_012_753a:
    inc bc
    inc bc
    ld bc, $ff01
    rst $38
    ccf

jr_012_7541:
    ccf
    rra

jr_012_7543:
    rra
    rst $38

jr_012_7545:
    rst $38
    cp $fe
    rst $38

jr_012_7549:
    rst $38
    rst $38

jr_012_754b:
    rst $38
    rst $38

jr_012_754d:
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38

jr_012_7559:
    rst $38
    rst $38
    rst $38

jr_012_755c:
    rst $38

jr_012_755d:
    rst $38

jr_012_755e:
    nop

jr_012_755f:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    ld a, [$f404]
    ld [$10e8], sp
    jp hl


    db $10
    pop de
    jr nz, jr_012_753a

    ld b, b
    ld b, [hl]
    add c
    adc l
    ld [bc], a
    dec de
    inc b
    scf
    ld [$106f], sp
    ld l, a
    db $10
    ret c

    ld hl, $43b0
    ld h, b
    add e
    ret nz

    rlca
    add b
    rrca
    add b
    ld e, $80
    inc a
    add b
    ld a, b
    nop
    ldh a, [rSB]
    ldh [$03], a
    ret nz

    rlca
    add b
    adc a
    ld bc, $039f
    cp a
    rrca
    ld a, a
    sbc a
    ld a, a
    cp [hl]
    ld a, a
    ld a, [$f2ff]
    rst $38
    jp nc, $92ff

    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    db $fc
    sub b
    ld hl, sp-$70
    ldh [$80], a
    add b
    add b
    nop
    nop
    inc bc
    nop
    rrca
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
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
    rlca
    nop
    rlca
    rlca
    rlca
    rlca

jr_012_7626:
    add c
    rlca
    add b
    rlca
    ret nz

    rlca
    ldh [rTAC], a
    ldh [rTAC], a
    nop
    rlca
    cp $ff
    ld a, a
    ld a, a
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    rst $38
    rst $38
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
    ld bc, $0001
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    pop de
    jr nz, jr_012_7626

    ld b, b
    ld b, [hl]
    add c
    ld c, l
    add d
    adc l
    ld [bc], a
    dec de
    inc b
    scf
    ld [$106f], sp
    jr nz, jr_012_7692

jr_012_7692:
    ld b, b
    nop
    ld b, c
    nop
    add e
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    ld bc, $7f83
    ld b, $ff
    inc c
    rst $38
    jr @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld c, c
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    cp $7f
    db $fc
    rst $38
    db $fc
    rst $38
    call c, $dcff
    rst $38
    call c, $dc7f
    ld a, a
    call c, $dc7f
    ld a, a
    call c, $d87e
    ld a, b
    ret nz

    ld h, b
    ld b, b
    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
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
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    add b
    db $fc
    nop
    ret nz

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
    rlca
    rst $38
    ld a, b
    rst $38
    ld b, e
    ld b, e
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, a
    ld e, e
    ld a, [hl]
    ld b, b
    ld a, a
    ld e, e
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    ld a, [hl]
    ld d, d
    cp $d2
    cp $d2
    ld a, [hl]
    jp nc, $d27e

    ld a, [hl]
    jp nc, $d27e

    ld e, d
    rst $38
    ld b, e
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    add b
    add b
    ldh [$e0], a
    rst $38
    rst $38
    rlca
    rlca
    ld bc, $0001
    nop
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
    pop bc
    pop bc
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
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
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
    ld b, b
    nop
    add c
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, $00
    ld a, h
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    add b
    add b
    add b
    add b
    rst $38
    add c
    rst $38
    add e
    rst $38
    add a
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    call z, $ccff
    rst $38
    call z, $ccff
    rst $38
    call z, $ccff
    rst $38
    rst $38
    call z, $ccfc
    ld hl, sp-$38
    ldh [$c0], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
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
    rst $38
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    nop
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    call nz, $c47f
    ld a, a
    adc $7f
    ret nz

    ld [hl], c
    ret nz

    ld [hl], c
    ret nz

    ld [hl], c
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

    ld a, a
    ret nz

    rst $38
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld hl, sp+$78
    rst $08
    ld a, a
    ldh a, [$7f]
    rst $08
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rra
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ld a, b
    ld a, b
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    add b
    add b
    ret nz

    ret nz

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

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ret c

    rst $38
    sbc b
    rst $38
    jr @+$01

    jr @+$01

    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

jr_012_78b7:
    jr jr_012_78b7

    jr jr_012_78b7

    jr @-$0e

    db $10

jr_012_78be:
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
    inc bc
    nop
    rrca
    nop
    ccf
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
    cp $ff
    ld hl, sp-$01
    ret nz

jr_012_78e0:
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    jr jr_012_78f0

jr_012_78f0:
    rst $20
    jr @-$37

    jr c, @-$37

    jr c, jr_012_78be

    jr c, jr_012_78e0

    jr jr_012_78be

    inc a
    jp $e3bc


    sbc h

jr_012_7900:
    rst $20
    ret c

jr_012_7902:
    rst $00
    ld a, b
    rst $20
    ld a, b
    rst $30
    jr c, jr_012_7900

    jr c, jr_012_7902

    jr c, @+$01

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
    add b
    ldh a, [$f0]
    rra
    rst $38
    pop hl
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
    nop
    rst $38
    ret nz

    rst $38
    nop
    rrca
    db $fc
    rst $38
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    cp $fe
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
    add b
    add b
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    or b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    cp $30
    ld hl, sp+$30
    ldh [rNR41], a
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
    ld bc, $0700
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
    rst $38
    rst $38
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
    ld hl, sp+$00
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
    rlca
    nop
    nop
    nop
    rst $38
    ldh a, [$1f]
    rst $38
    pop bc
    rst $38
    jr c, @+$01

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
    ld a, a
    nop
    rra
    nop
    inc bc
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    ld bc, $0001
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
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    sbc b
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    rst $38
    jr @+$01

    jr @+$01

jr_012_7a55:
    jr jr_012_7a55

    jr jr_012_7a55

    jr @-$0e

    db $10
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
    inc bc
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
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
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$1f]
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    ld c, $ff
    ld bc, $c0ff
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
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
    rrca
    cp $0e
    ld [$0007], sp
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
    inc bc
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
    rst $38
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
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
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
    ldh [$3f], a
    db $fc
    rlca
    rst $38
    ret nz

    rst $38
    inc a
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
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
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
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
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
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_012_7be3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1e
    rra
    jr nz, jr_012_7bf4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_012_7c04

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_012_7c14

jr_012_7be3:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_012_7c24

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_012_7bf4:
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
    ld b, l
    ld b, l
    ld b, l

jr_012_7c04:
    ld c, a
    ld d, b
    ld b, l
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    dec a
    ld d, [hl]
    ld e, $57
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_012_7c14:
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
    ld l, b
    ld l, c
    ld l, d
    ld l, e

jr_012_7c24:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld e, $74
    dec a
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld b, l
    ld a, c
    ld b, l
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
    dec a
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld e, $9b
    sbc h
    sub c
    ld d, a
    sbc l
    sbc [hl]
    sbc a
    sub e
    and b
    and c
    ld b, l
    and d
    ld b, l
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    ld e, $ac
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
    ld e, $b9
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
    rrca
    add $c7
    ret z

    dec a
    ret


    jp z, $cccb

    call $cfce
    ret nc

    ld h, c
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
    ld e, $e4
    sub c
    ld e, $e5
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ld e, $1e
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
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_012_7d01

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_012_7d11

    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    inc bc
    dec b
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0501

jr_012_7d01:
    dec b
    dec b
    nop
    nop
    nop
    dec b
    dec b
    nop
    dec b
    inc bc
    ld bc, $0101
    nop
    nop
    inc bc

jr_012_7d11:
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    dec b
    inc bc
    rlca
    inc bc
    inc bc
    rlca
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld bc, $0301
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0101
    nop
    ld bc, $0303
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    rlca
    ld bc, $0100
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    dec b
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    rlca
    ld bc, $0101
    nop
    ld bc, $0501
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld bc, $0121
    ld bc, $0101
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0101
    nop
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    nop
    inc bc
    rlca
    ld bc, $0001
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0101

jr_012_7e00:
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0909
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    add hl, bc
    ld hl, $0909
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $18
    jr nz, jr_012_7e00

    ld [hl-], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    rst $28
    db $10

jr_012_7e3a:
    cp $01
    or $09
    or $09
    or $09
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ld a, [$7d05]
    add d
    db $fd
    ld [bc], a
    or l
    ld c, d
    or l
    ld c, d
    cp a
    ld b, b
    ld a, [$da05]
    dec h
    rst $10
    jr z, jr_012_7e3a

    jr nz, @-$11

    ld [de], a
    cp l
    ld b, d
    ld b, $00
    stop
    and c
    nop
    inc bc
    nop
    inc bc
    add b
    inc c
    add b
    nop
    ret nz

    ld bc, $00c0
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$03], a
    ldh [rDIV], a
    ldh a, [rP1]
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
    db $fc
    nop
    cp $00
    cp $00
    cp $01
    cp $00
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
    cp $00
    ld [bc], a
    db $fc
    add h
    ld a, b
    adc b
    ld [hl], b
    adc a
    ld [hl], b
    rst $00
    ccf
    jp $c33f


    ccf
    db $e3
    inc e
    ld e, $00
    ld c, $00
    ld c, $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
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
    jr z, @+$21

    inc a
    rrca
    ld d, $0f
    ld d, a
    rrca
    ld d, a
    rrca
    rra
    rlca
    rrca
    rlca
    dec hl
    rlca
    add hl, hl
    rlca
    adc c
    rlca
    add c
    rlca
    sub l
    inc bc
    sub l
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    ld c, e
    ld bc, $0102
    ld [hl+], a
    ld bc, $0023
    ld hl, $0500
    nop
    dec d
    nop
    sub c
    nop
    sub d
    nop
    db $ed
    ld [de], a
    push af
    ld a, [bc]
    or a
    ld c, b
    or [hl]
    ld c, c
    or $09
    jp c, Jump_012_5a25

    and l
    db $db
    inc h
    ld e, c
    and [hl]
    xor l
    ld d, d
    xor l
    ld d, d
    xor l
    ld d, d
    db $fd
    ld [bc], a
    sub $29
    sub $29
    sub $29
    ld a, [hl]
    add c
    db $eb
    inc d
    ld l, e
    sub h
    ld a, e
    add h
    cp l
    ld b, d
    cp l
    ld b, d
    xor l
    ld d, d
    db $fd
    ld [bc], a
    ld de, $8900
    nop
    add hl, bc
    nop
    ld bc, $0500
    nop
    inc b
    nop
    inc b
    nop
    ld b, $80
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    ret nz

    ld bc, $01c0
    ret nz

    ld b, c
    and b
    and b
    nop
    jr nz, jr_012_7fb0

jr_012_7fb0:
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$f807], sp
    di
    db $fc
    ld a, [$fbfd]
    db $fc
    ld [bc], a
    db $fd
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rSVBK]
    ld [hl], c
    ld [hl], c
    rst $38
    rst $38
    di
    di
    db $e3
    db $e3
    rst $20
    rst $20
    rlca
    rlca
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
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b

Jump_012_7fff:
    add b
