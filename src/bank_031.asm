SECTION "ROM Bank $031", ROMX[$4000], BANK[$31]

    ld [bc], a
    ld [bc], a
    ld bc, $0103
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld b, d
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    rlca
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0007
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0007
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0007
    ld b, d
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    rlca
    nop
    ld b, d
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    inc bc
    ldh a, [rIF]
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
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
    nop
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
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
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
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
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
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$3f
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
    db $fc
    inc bc
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
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
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
    nop
    rlca
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
    ld bc, $0700
    nop
    ccf
    nop
    rst $38
    nop
    ld bc, $0ffe
    ldh a, [$7f]
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
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $1dfe
    cp $1c
    rst $38
    ccf
    inc a
    ccf
    jr z, jr_031_4324

    inc a
    ld a, a
    jr z, @+$01

    jr nz, @+$01

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
    ld bc, $1ffe

Jump_031_42ff:
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

jr_031_430e:
    cp $01
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38

jr_031_4318:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_031_4324:
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    nop
    ret nz

    add b
    ld b, b
    add b
    ld h, b
    ld b, b
    and b
    jr nz, jr_031_430e

    jr nz, jr_031_4318

    db $10
    add sp, $10
    add sp, $08
    db $f4
    inc b
    ld a, [$fb04]
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $7f
    rst $38
    ld a, a
    rst $38
    ccf
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
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07f8
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
    ld hl, sp-$01
    rlca
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

jr_031_43a4:
    nop
    nop
    rra
    nop
    rst $38
    nop
    ld a, a
    add b

jr_031_43ac:
    ld a, a
    add b
    ccf
    ret nz

    ld b, b
    nop
    ld h, b
    nop
    or b
    nop

jr_031_43b6:
    ret nc

    nop
    rst $18
    nop

jr_031_43ba:
    rst $08
    jr nz, jr_031_43ac

    jr nz, jr_031_43b6

    jr nc, jr_031_43a4

    inc b

jr_031_43c2:
    db $e3
    inc b

jr_031_43c4:
    pop hl
    ld [bc], a

jr_031_43c6:
    pop hl
    ld [bc], a
    ldh a, [rSB]
    ldh a, [rP1]
    ld hl, sp+$00

jr_031_43ce:
    ld hl, sp+$00
    rst $38
    rlca

jr_031_43d2:
    rst $38
    rlca

jr_031_43d4:
    rst $38
    rlca

jr_031_43d6:
    rst $38
    rlca

jr_031_43d8:
    rst $38
    rlca

jr_031_43da:
    rst $38
    rlca

jr_031_43dc:
    rst $38
    rlca

jr_031_43de:
    rst $38
    rlca

jr_031_43e0:
    db $fc
    nop

jr_031_43e2:
    db $fc
    nop

jr_031_43e4:
    db $fc
    nop
    db $fc
    nop
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, $c0
    ld a, $c0
    inc a
    ret nz

    jr c, jr_031_43ba

    jr c, @-$3e

    jr c, @-$3e

    jr c, @-$3e

    jr c, jr_031_43c2

    jr c, jr_031_43c4

    jr c, jr_031_43c6

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    jr c, jr_031_43ce

    inc a
    ret nz

    jr c, jr_031_43d2

    jr c, jr_031_43d4

    jr c, jr_031_43d6

    jr c, jr_031_43d8

    jr c, jr_031_43da

    jr c, jr_031_43dc

    jr c, jr_031_43de

    jr c, jr_031_43e0

    jr c, jr_031_43e2

    jr c, jr_031_43e4

    ld a, b
    add b
    ld a, b
    add b
    ld a, h
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, h
    add b
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    rlca
    db $fc
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    rst $00
    rlca
    sbc a
    rra
    ld a, a
    ld a, a
    rst $38
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
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    cp $ff
    add hl, bc
    rst $38
    inc bc
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
    nop
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
    nop
    cp $00
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
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    inc bc
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
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
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
    ld hl, sp-$01
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rra
    nop
    ld a, a
    nop
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    ccf
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
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
    inc bc
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $fc
    nop
    ldh a, [rIF]
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    ldh a, [rIF]
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    rra
    ldh [$03], a
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
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
    inc bc
    rst $38
    rrca
    add b
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
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    rra
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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
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
    ccf
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    ret c

    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    or b
    ld c, a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    sbc a
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    ccf
    ld h, b
    rra
    ld a, b
    rlca
    ld a, h
    inc bc
    ld a, a
    nop
    ld a, a
    nop

jr_031_4804:
    ld a, a
    nop

jr_031_4806:
    rst $38
    add b

jr_031_4808:
    rst $38
    ret nz

jr_031_480a:
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc

jr_031_4814:
    rst $38
    cp $ff
    rst $38

jr_031_4818:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b

jr_031_483a:
    ld [hl], b
    add b

jr_031_483c:
    ld [hl], b
    add b

jr_031_483e:
    ld [hl], b
    add b

jr_031_4840:
    ld [hl], b
    add b

jr_031_4842:
    jr nc, jr_031_4804

jr_031_4844:
    jr nc, jr_031_4806

jr_031_4846:
    jr nc, jr_031_4808

jr_031_4848:
    jr nc, jr_031_480a

jr_031_484a:
    jr nc, @-$3e

jr_031_484c:
    jr nc, @-$3e

jr_031_484e:
    jr nc, @-$3e

    jr c, @-$3e

    jr c, jr_031_4814

    jr c, @-$3e

    jr c, jr_031_4818

    jr jr_031_483a

    jr jr_031_483c

    jr jr_031_483e

    jr jr_031_4840

    jr jr_031_4842

    jr jr_031_4844

    jr jr_031_4846

    jr jr_031_4848

    jr jr_031_484a

    jr jr_031_484c

    jr jr_031_484e

    inc e
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [$0c], a
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [rIF]
    di
    rrca
    di
    rrca
    ld [hl], e
    rrca
    inc de
    rrca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    nop
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    add b
    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ldh [$fc], a
    ldh a, [$fc]
    ld hl, sp-$04
    db $fc
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
    ldh [rIE], a
    ldh [rIE], a
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    db $fc
    rst $38
    db $fc
    rst $38
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
    ld hl, sp-$01
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
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
    ld bc, $0002
    nop
    nop
    nop
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
    dec b
    ld b, $00
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
    ld [$0a09], sp
    dec bc
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
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    rla
    rla
    rla
    rla
    jr jr_031_4a64

    ld a, [de]
    nop
    dec de
    inc e
    dec e
    nop
    nop
    ld e, $1f
    jr nz, jr_031_4a77

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_031_4a7b

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_031_4a64:
    ld l, $2f
    jr nc, jr_031_4a99

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    ld [hl], $37
    jr c, jr_031_4aaa

    inc e
    inc e
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_031_4a77:
    ld a, $3f
    ld b, b
    ld b, c

jr_031_4a7b:
    ld b, d
    nop
    ld b, e
    ld b, h
    inc e
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
    nop
    ld d, c
    ld d, d
    inc e
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    inc e
    inc e
    inc e

jr_031_4a99:
    ld e, c
    ld e, d
    ld e, e
    nop
    ld e, h
    ld e, l
    inc e
    ld e, [hl]
    ld e, a
    ld h, b
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld h, c

jr_031_4aaa:
    ld h, d
    nop
    nop
    ld h, e
    ld h, h
    inc e
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    ld b, h
    ld [hl], b
    ld [hl], c
    inc e
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    nop
    ld a, e
    ld a, h
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
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
    inc e
    inc e
    add a
    ld a, a
    adc b
    adc c
    nop
    nop
    nop
    nop
    nop
    adc d
    adc e
    adc h
    ld [hl], $8d
    inc e
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    sub b
    sub c
    sub d
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    adc e
    sub h
    ld l, $1c
    sub l
    sub l
    rla
    rla
    rla
    rla
    sub [hl]
    sub [hl]
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld d, e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    sbc h
    nop
    nop
    ld d, e
    inc e
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
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    ld [bc], a
    ld bc, $0101
    ld b, $06
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    nop
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    nop
    ld b, $06
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
    ld bc, $0242
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0207
    ld bc, $0202
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    nop
    ld [bc], a
    ld [bc], a
    nop
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    cp $fe
    cp $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    rst $38
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    rst $38
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
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
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
    add c
    ld bc, $03c3
    jp $c703


    rlca
    rst $00
    rlca
    rst $08
    rrca
    call c, $c01f
    rra
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
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
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
    ld hl, sp-$01
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
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $fb
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$cf]
    ret nz

    adc [hl]
    add c
    ld c, $01
    inc b
    inc bc
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
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
    cp a
    nop
    cp a
    rrca
    or b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
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
    ldh [$e0], a
    rra
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
    ret nc

    rra
    ret nz

    rrca
    ldh [rIE], a
    ret nz

    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $80
    cp $80
    cp $c0
    cp $c0
    cp $c0
    cp $fe
    ret nz

    cp [hl]
    add b
    cp [hl]
    add b
    jr nz, jr_031_4eed

    nop
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
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

jr_031_4eed:
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rst $38
    nop
    nop
    nop
    ld hl, sp+$07
    db $fc
    inc bc
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
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld a, a
    add b
    ld b, b
    cp a
    ld b, b
    cp [hl]
    ld b, b
    xor b
    ld b, b
    add b
    nop
    add b
    ld a, a
    add b
    ld b, b
    cp b
    ld b, b
    and b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    nop
    add b
    ld a, a
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
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
    ld [bc], a
    db $fc
    ld bc, $01fc
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    pop bc
    ld a, $3e
    rst $38
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    ccf
    nop
    ccf
    nop
    ccf
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_031_50cd:
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
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$01
    db $fc
    ld bc, $02fc
    ld hl, sp+$04
    jr c, jr_031_50cd

    nop
    ei
    nop
    di
    nop
    rst $30
    nop
    rst $28
    nop
    rst $08
    nop
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $41fe
    cp [hl]
    ld b, c
    cp [hl]
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
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
    ld a, a
    rst $00
    rlca
    ret nz

    nop
    ret nz

    nop
    ldh [$e0], a
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
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
    ld bc, $0200
    nop
    ld [bc], a
    ld bc, HeaderLogo
    ld [$0803], sp
    rlca
    db $10
    rlca
    jr nz, jr_031_51e8

    jr nz, @+$21

    ld b, b
    ccf
    add b
    ccf
    nop
    ccf
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_031_51e8:
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop

jr_031_51f1:
    rst $38
    db $10
    rst $38
    jr c, jr_031_51f1

    db $10
    ei
    nop
    jp $eb00


    nop
    ei
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

    rst $38
    ld b, b
    ld a, a
    ld a, b
    rlca
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
    rrca
    ldh a, [$03]
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
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
    ld a, a
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
    ld bc, $02fc
    ld hl, sp+$04
    ld hl, sp+$05
    pop af
    ld [$0833], sp
    rlca
    db $10
    rlca
    db $10
    rrca
    jr nz, jr_031_5292

    ld b, b
    rra
    ld b, b
    ccf
    add b
    ld a, a
    nop
    ld a, a
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
    add b
    ld a, a
    ld hl, sp+$07

jr_031_5292:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, $c0
    inc b
    ld hl, sp+$00
    ld hl, sp-$01
    rst $38
    nop
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
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld a, a
    rst $38
    add d
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $03f9
    di
    db $e3
    inc de
    rst $00
    daa
    adc a
    ld c, a
    adc a
    ld c, a
    rra
    sbc a
    rrca
    ccf
    inc bc
    ccf
    ld bc, $017f
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
    rlca
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
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
    ret nz

    ret nz

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
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
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
    rst $38
    ld a, a
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
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    add b
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
    db $fc
    db $fc
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    ccf
    ret nz

    inc bc
    db $fc
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
    nop
    rst $38
    nop
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
    db $fc
    rst $38
    ldh [rIE], a
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
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ccf
    ccf
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
    ccf
    rst $38
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
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
    add b
    add b
    ldh [$e0], a
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, $3f
    ld [bc], a
    inc bc
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
    nop
    ld bc, $0100
    nop
    pop bc
    ret nz

    ld sp, hl
    ld hl, sp-$01
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
    nop
    nop
    nop
    ld bc, $0002
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0808], sp
    ld [$0008], sp
    nop
    add hl, bc
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld [$0808], sp
    nop
    nop
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld de, $0808
    ld [de], a
    inc de
    inc d
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
    ld d, $08
    ld [$0504], sp
    rla
    jr jr_031_569e

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_031_5691

jr_031_5691:
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_031_56c7

jr_031_569e:
    ld a, [hl+]
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_031_56d9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    ld [hl], $00
    nop
    scf
    jr c, jr_031_56ed

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $33
    ccf
    nop
    nop
    nop
    ld b, b
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_031_56c7:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    nop
    ld c, e
    nop
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_031_56d9:
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
    ld h, e
    ld h, h
    ld h, l
    nop
    nop

jr_031_56ed:
    ccf
    nop
    nop
    ld [$6608], sp
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    ld l, a
    nop
    nop
    ld [$7170], sp
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    nop
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    nop
    ld a, d
    nop
    nop
    ld a, e
    nop
    nop
    nop
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    nop
    nop
    add l
    add [hl]
    ld l, d
    add a
    adc b
    adc c
    ld [hl], h
    dec [hl]
    nop
    nop
    nop
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld [$5b8f], sp
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    sub c
    ld [$9392], sp
    sub h
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub l
    sub [hl]
    ld [$0808], sp
    sub a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub l
    sbc b
    sbc c
    ld [$0808], sp
    ld [$0008], sp
    nop
    nop
    nop
    nop
    sbc d
    ld a, l
    sbc e
    sbc h
    ld [$0808], sp
    ld [$0808], sp
    ld [$9e9d], sp
    sbc a
    rla
    and b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    ld b, $06
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    ld b, $06
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
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
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
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [hl+], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $2202
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0202
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
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld bc, $0101
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
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
    ccf
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
    ld bc, $0300
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
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    ld a, [$f900]
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    db $fc
    nop
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
    ccf
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
    rlca
    rst $38
    rlca
    rst $38
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$c7], a
    ld hl, sp+$03
    inc a
    inc bc
    ld a, h
    ld bc, $016e
    ld e, $00
    cp a
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
    add b
    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld e, $ff
    ld e, $ff
    rra
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
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $02
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
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$3c
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    pop hl
    ldh [$c1], a
    ldh [$c1], a
    ldh [$c1], a
    ldh [$c1], a
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

jr_031_5ae1:
    rst $38
    ret nz

jr_031_5ae3:
    rst $38
    ret nz

jr_031_5ae5:
    rst $38
    ret nz

jr_031_5ae7:
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    jr c, @+$01

    jr @+$01

    rra
    ldh a, [$1f]
    ldh a, [rNR31]
    ldh a, [$0b]
    ldh a, [rNR13]
    ldh [rNR13], a
    db $e3
    inc de
    db $e3
    inc de
    db $e3
    db $10
    db $e3
    db $10
    rst $20
    jr nz, jr_031_5ae1

    jr nz, jr_031_5ae3

    jr nz, jr_031_5ae5

    jr nz, jr_031_5ae7

    jr nz, @-$37

    jr nz, @-$37

    ld b, b
    add a
    ld b, b
    adc a
    ld b, b
    adc a
    ld b, b
    adc a
    ld b, b
    adc a
    ld b, b
    adc a
    adc a
    rrca
    add b
    rrca
    add b
    rrca
    add b
    rrca
    add b
    rrca
    add b
    rrca
    nop
    rrca
    nop
    rrca
    rra
    rra
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
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

    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld sp, hl
    db $fc
    ei
    db $fc
    ld sp, hl
    db $fc
    ei
    cp $fc
    cp $fd
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_031_5c02:
    nop
    rst $38
    nop
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
    ccf
    rst $38

jr_031_5c28:
    ret nz

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
    nop
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    add b
    nop
    cp a
    ld b, b
    cp e
    ld b, b
    cp e
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp l
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    sbc l
    nop
    sbc l
    nop
    sbc [hl]
    nop
    sbc [hl]
    nop
    sbc [hl]
    jr nz, jr_031_5c02

    jr nz, @-$20

    jr nz, jr_031_5c28

    add hl, de
    ret nz

    nop
    and h
    nop
    ld d, b
    ld bc, $0040
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    ld [hl], b
    ld h, b
    ldh a, [$60]
    ld hl, sp+$00
    jr jr_031_5c88

jr_031_5c88:
    jr jr_031_5c8a

jr_031_5c8a:
    jr jr_031_5c8c

jr_031_5c8c:
    ld [de], a
    nop
    ld sp, $2f00
    nop
    ccf
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
    cp a
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
    add e
    inc bc
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
    ccf
    rst $38
    ret nz

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
    rst $38
    rst $38
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

    ldh [rP1], a
    nop
    nop
    nop
    add b
    nop
    and b
    ld bc, $f3e0
    nop
    nop
    jr nz, jr_031_5ceb

jr_031_5ceb:
    db $f4
    nop
    ldh [rP1], a
    or b
    nop
    ldh a, [rP1]
    or b
    nop
    or b
    nop
    ldh a, [rP1]
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nz

    nop
    sub b
    dec c
    nop
    add h
    nop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    stop
    sub [hl]
    nop
    sub b
    nop
    ld [bc], a
    nop
    sbc e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rra
    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
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
    inc c
    nop
    rla
    nop
    inc bc
    nop
    rrca
    nop
    db $fd
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    dec b
    nop
    ld bc, $0900
    nop
    dec b
    nop
    dec c
    nop
    dec b
    nop
    dec c
    nop
    add hl, bc
    nop
    dec c
    nop
    dec d
    nop
    dec e
    nop
    rst $38
    nop
    ld e, a
    nop
    rrca
    nop
    ccf
    nop
    sub e
    nop
    rrca
    nop
    dec bc
    nop
    rlca
    nop
    adc a
    nop
    ld l, a
    nop
    cp a
    nop
    cpl
    nop
    xor a
    nop
    adc a
    nop
    sbc a
    nop
    rst $18
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
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    add b
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$0fff], sp
    rst $38
    db $f4
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
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $1fff
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $000f
    rrca
    nop
    rrca
    adc a
    rrca
    adc a
    rrca
    adc a
    rrca
    xor a
    rrca
    adc a
    rrca
    xor a
    rrca
    adc a
    rrca
    adc a
    rrca
    adc a
    rrca
    sbc a
    rrca
    adc a
    rrca
    sbc a
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $38
    rrca
    rst $18
    rrca
    rst $38
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $38
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    cp a
    rra
    rst $18
    rra
    rst $38
    rra
    sbc a
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    rra
    rra
    rra
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
    ld e, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    ld hl, sp-$01
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
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $30
    rlca
    rst $30
    inc bc
    rst $20
    ld bc, $01c7
    add a
    nop
    rlca
    nop
    rst $38
    db $fc
    rst $38
    db $fc
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
    ld a, a
    rst $38
    rra
    rst $38
    rlca
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
    rst $38
    nop
    rst $38
    ld bc, $7eff
    rst $38
    add b
    rst $38
    nop
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    pop bc
    ld a, a
    pop hl
    ccf
    pop af
    ccf
    di
    rra
    ei
    rrca
    rst $38
    adc a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    jp $e3ff


    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ldh a, [$7f]
    ld hl, sp+$3f
    ld hl, sp+$1f
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
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
    ldh [rIE], a
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
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
    rrca
    rst $38
    rrca

Jump_031_609f:
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
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$0f
    db $fc
    rrca
    db $fc
    rlca
    ld a, [hl]
    add e
    ld a, a
    add e
    ccf
    pop bc
    ccf
    pop bc
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
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
    ld a, $ff
    ld a, $ff
    ld a, $ff
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ldh [$7f], a
    rst $38
    ccf
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
    add e
    ld a, a
    add e
    ccf
    pop bc
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
    nop
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
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
    ld a, a
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
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    add c
    ld a, a
    add c
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$fc], a
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    rst $38
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
    ld bc, $01ff
    rst $38
    rrca
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    inc bc
    dec bc
    inc c
    dec c
    ld c, $00
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    inc bc
    ld d, $03
    rla
    jr jr_031_6307

    nop
    ld a, [de]
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_031_6319

    inc bc
    inc bc
    inc bc
    inc bc
    ld [hl+], a
    nop
    inc hl
    inc h
    nop
    dec h
    ld h, $27
    jr z, jr_031_632f

    ld a, [hl+]

jr_031_6307:
    dec hl
    inc l
    inc bc
    inc bc
    inc bc
    dec l
    ld l, $2f
    jr nc, jr_031_6311

jr_031_6311:
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_031_6319:
    jr c, jr_031_6354

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
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
    ld c, e
    ld c, h

jr_031_632f:
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
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
    nop
    nop

jr_031_6354:
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
    ld l, d
    halt
    nop
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
    nop
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
    add c
    add c
    add c
    nop
    nop
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    add c
    sub a
    sbc b
    sbc c
    sbc d
    ld d, c
    add c
    sbc e
    nop
    nop
    nop
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
    nop
    nop
    nop
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    nop
    xor a
    or b
    or c
    or d
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
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
    and l
    inc bc
    inc bc
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

    nop
    nop
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    nop
    nop
    nop
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    nop
    nop
    db $f4
    push af
    nop
    nop
    or $f7
    ld hl, sp-$07
    nop
    ld a, [$fcfb]
    db $fd
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    inc bc
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $2000
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
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
    rst $38
    rst $38
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
    sbc l
    rst $38
    sub b
    rst $38
    ld b, b
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
    add b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    db $10
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld de, $0cff
    rst $38
    add hl, hl
    rst $38
    add hl, de
    rst $38
    sub c
    rst $38
    add e
    rst $38
    add e
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $30
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
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld a, [$f0ff]
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    ld [hl], h
    rst $38
    cp h
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    jr @+$01

    inc e
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    ld h, e
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
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    dec d
    rst $38
    rla
    rst $38
    rst $10
    rst $38
    sbc $ff
    ld e, l
    rst $38
    ld a, a
    rst $38
    ccf
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
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    ld hl, sp-$01
    or b
    rst $38
    jr nc, @+$01

    db $10
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld bc, $e1ff
    rst $38
    and c
    rst $38
    ld b, a
    rst $38
    rst $30
    rst $38
    ei
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
    cp $ff
    cp $ff
    db $fd
    rst $38
    ld a, [$feff]
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    add sp, -$01
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $09ff
    rst $38
    ld bc, $04ff
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_031_6701:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
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
    db $10
    rst $28
    db $10
    rst $28
    jr nz, jr_031_6701

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, h
    rst $38
    jp nz, $daff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    ld hl, sp-$01
    inc a
    rst $38
    rra
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    add b
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
    jp Jump_031_42ff


    rst $38
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
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    cp $ff
    db $e4
    cp $e3
    db $fc
    or $f9
    db $ec
    di
    ld hl, sp-$19
    rst $38
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
    ld a, a
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld sp, $06ce
    ld sp, hl
    ld c, $f1
    ld b, $f9
    inc h
    db $db
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
    nop
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

    inc h
    rst $38
    jr c, @+$01

    jr c, @+$01

    add hl, sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    cp l
    rst $38
    ccf
    rst $38
    rra

jr_031_67f3:
    rst $38
    dec a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    ld c, h
    rst $38
    ld b, h
    rst $38
    ld d, b
    rst $38
    call nz, $c0ff
    rst $38
    and b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    ld b, c
    rst $38
    and c
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, $ff
    cp $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    set 7, a
    sbc c
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    ld b, h
    cp $c3
    db $fc
    add $f9
    call z, Call_000_18f3
    rst $20
    ld h, b
    rst $08
    add b
    rst $18
    jr nz, jr_031_67f3

    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rst $28
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    ld b, $ff
    ld b, $fc
    inc h
    call c, $9c64
    db $e4
    inc e
    push hl
    jr jr_031_68d7

    sbc l
    ld h, [hl]
    sbc c
    ld b, $f9
    ld [bc], a
    db $fd
    dec b
    rst $38
    rlca
    rst $38
    dec b
    ld [bc], a
    dec d
    ld [bc], a
    inc c
    inc bc
    dec c
    inc bc
    sbc c
    rlca
    sbc a
    ld bc, $038d
    adc a
    ld bc, $019f
    sub $01
    sub $01
    sbc $01
    cp $01
    call c, $dc03
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
    nop
    rst $38
    nop
    cp $01
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
    rst $18
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca

jr_031_68d7:
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    daa
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rlca
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
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    db $fd
    ld hl, sp-$0d
    ld hl, sp-$19
    ldh a, [$cf]
    ldh [$9f], a
    ret nz

    ld a, $81
    ld e, [hl]
    ld hl, $6f90
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3c], a
    ret nz

    ld [hl], h
    add b
    ld [hl], h
    add b
    ld hl, sp+$00
    cp $00
    cp $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    scf
    ccf
    scf
    rra
    rra
    rra
    ccf
    rra
    ld a, a
    ccf
    rst $18
    rst $38
    inc de
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld b, e
    rst $38
    inc de
    rst $38
    jp $f3ff


    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    call nc, $d400
    nop
    db $fc
    nop
    ld a, h
    add b
    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ccf
    ret nz

    ld a, [hl-]
    ret nz

    ld a, $c0
    ld a, $c0

jr_031_6998:
    ccf
    ret nz

jr_031_699a:
    ccf
    ret nz

jr_031_699c:
    ccf
    ret nz

    ld a, $c0
    ld a, $c0
    cp [hl]
    ld b, b
    cp e
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_031_69ea

    ret nz

    sbc [hl]
    ldh [$3e], a
    ret nz

    sbc [hl]
    ld h, b
    adc h
    ld [hl], b
    dec c
    ldh a, [$8c]
    ld [hl], b
    inc e
    ldh [$9e], a
    ld h, b

jr_031_69bc:
    sbc $20

jr_031_69be:
    rst $38
    nop

jr_031_69c0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_031_6998

    jr nc, jr_031_699a

    jr nc, jr_031_69bc

    db $10
    rst $28
    db $10
    rst $30
    ld [$1ce3], sp

jr_031_69d4:
    db $e3
    inc e
    rst $20
    jr jr_031_69c0

jr_031_69d9:
    jr jr_031_69be

    inc e
    pop af
    ld c, $e1
    ld e, $e3
    inc e
    rst $20
    jr jr_031_69d4

    db $10
    rst $10
    jr z, @+$01

    nop

jr_031_69ea:
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    cp $fc
    cp $f9
    db $fc
    di
    ld hl, sp-$01
    ldh a, [$ef]
    ldh [$df], a
    ret nz

    cp h
    add e
    ld h, b
    rra
    ret nc

    cpl
    pop bc
    ld a, $e3
    inc e
    rst $20
    jr jr_031_69d9

    jr nc, jr_031_699c

    ld [hl], b
    rra
    ldh [$3c], a
    ret nz

    ld [hl], b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    and b
    nop
    ldh [rP1], a
    rst $38
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
    rrca
    rst $38
    add e
    ld a, a
    jp $833f


    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    ret nz

    ccf
    db $ec
    inc de
    ldh a, [rIF]
    or $09
    cp $01
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    rst $38
    rst $38
    db $dd
    rst $38
    rst $20
    rst $38
    add l
    rst $38
    ld bc, $05ff
    rst $38
    ld b, e
    rst $38
    rst $00
    rst $38
    ld h, a
    rst $38
    ld e, a
    rst $38
    ld h, a
    rst $38
    rst $00
    rst $38
    ld d, a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    inc de
    rst $38
    ccf
    rst $38
    ld a, [bc]
    rst $38
    add hl, de
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    push hl
    rst $38
    push hl
    rst $38
    push af
    rst $38
    ld a, c
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    add e
    rst $38
    ld d, e
    rst $38
    ei
    rst $38
    di
    rst $38
    ld l, e
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    adc b
    rst $38
    adc b
    rst $38
    or b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    add c
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    jp z, $adff

    cp $fe
    db $fd
    db $fc
    ei
    db $fc
    di
    db $fc
    db $e3
    db $fc
    jp $83fc


    cp b
    rlca
    ld a, c
    ld b, $fb
    inc b
    rst $30
    ld [$00ff], sp
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
    cp a
    nop
    sub a
    nop
    add b
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
    ldh a, [rP1]
    ccf
    nop
    inc bc
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rra
    rst $38
    cpl
    rst $18
    ccf
    rst $18
    rra
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    adc a
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    rst $08
    ccf
    rst $30
    rra
    add c
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop hl
    rra
    pop hl
    rra
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ret c

    daa
    call c, $b823
    rlca
    ld hl, sp+$27
    ld e, b
    daa
    ld a, h
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    db $fd
    ld [bc], a
    ld a, a
    nop
    rst $28
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

jr_031_6b9b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    adc $ff
    ld e, h
    rst $38
    jr c, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld d, b
    rst $28
    jr nz, jr_031_6b9b

    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$1f], a
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
    rst $38
    nop
    add b
    nop
    stop
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
    nop
    nop
    nop
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
    rra
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
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    xor a
    ld a, a
    cpl
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    or a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    sub a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    add c
    ld a, a
    call $dd33
    inc hl
    db $fd
    inc bc
    call c, $b803
    rlca
    jr c, jr_031_6c75

    ld [hl], b
    rrca
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_031_6c75:
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
    ld a, a
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
    ld e, $00
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    ld sp, hl
    cp $f8
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    cp $d0
    rst $38
    pop de
    cp $d0
    rst $38
    ldh [rIE], a
    call nz, $c0fb
    rst $38
    ldh [rIE], a
    db $dd
    ld [c], a
    rst $08
    ldh a, [$d7]
    add sp, -$3a
    ld sp, hl
    and $f9
    add $f9
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ld [c], a
    db $fd
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    adc e
    rst $38
    sub b
    rst $28
    sub b
    rst $28
    add b
    rst $38
    ret nz

    rst $38
    ei
    rst $38
    rst $30
    rst $38
    push bc
    rst $38
    jr c, @+$01

    nop
    rst $38
    ld [$87f7], sp
    ld a, b
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    nop
    rrca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
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
    rra
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    inc hl
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
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
    adc a
    rst $38
    adc l
    rst $38
    adc c
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld d, c
    xor [hl]
    ld a, [hl+]
    push de
    inc c
    di
    inc [hl]
    rlc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    push de
    ccf
    ld [$c53f], a
    ccf
    ld [$d13f], a
    ccf
    ld [$d13f], a
    ccf
    ld [$c13f], a
    ccf
    ld [$d13f], a
    ccf
    jp z, $df3f

    ccf
    db $eb
    ccf
    rst $18
    ccf
    ei
    ccf
    db $db
    ccf
    ld a, [$ff7f]
    ld a, a
    rst $38
    ld a, a
    ei
    ld a, a
    ld a, e
    ld a, a
    ei
    ld a, a
    dec hl
    ld a, a
    ld d, c
    ld a, a
    dec sp
    ld a, a
    ld d, c
    ld a, a
    ld a, [de]
    ld a, a
    ld b, c
    ld a, a
    ld a, [bc]
    ld a, a
    ld bc, $027f
    ld a, a
    ld bc, $007f
    ld a, l
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, e
    add b
    ld a, a
    add b
    cpl
    add b
    ld e, a
    add b
    ccf
    nop
    ld [hl], a
    db $10
    dec sp
    and b
    ld e, a
    add b
    cpl
    add d
    ld e, a
    add b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    or $00
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc c
    nop
    ld [bc], a
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
    ret nz

    ccf
    ldh [$1f], a
    or b
    ld c, a
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rla
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rIE], a
    nop
    rst $38
    add b
    rst $38
    ld bc, $aaff
    rst $38
    ld e, c
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld a, l
    rst $38
    xor d
    rst $38
    ld a, l
    rst $38
    ld [$ffff], a
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    and b
    rst $38
    db $fd
    rst $38
    ld [$54ff], a
    rst $38
    ld a, [$7fff]
    rst $38
    ld a, [$5fff]
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    db $10
    rst $38
    xor d
    rst $38
    nop
    rst $38
    adc d
    rst $38
    inc d
    rst $38
    nop
    ld a, a
    nop
    cp $00
    rst $38
    nop
    rst $38
    or b
    rst $38
    inc b
    xor e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1400], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    pop hl
    ld e, $e5
    ld a, [de]
    rst $38
    nop
    cp a
    nop
    cp a
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
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    cp $00
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    and d
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, h
    rst $38
    and b
    rst $38
    ld d, h
    rst $38
    and b
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    nop
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    and b
    rst $38
    ld b, h
    rst $38
    and b
    rst $38
    nop
    rst $38
    ld h, $ff
    ld b, $fe
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    db $fd
    nop
    xor [hl]
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    db $fd
    nop
    cp $00
    db $fd
    nop
    ld a, [$fd00]
    ld d, b
    ld a, [$1500]
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
    rst $38
    rla
    rst $38
    add h
    rst $38
    ld [hl], b
    rst $38
    inc bc
    rst $38
    ld b, b
    cp a
    ld d, b
    xor a
    ld hl, sp+$07
    ld hl, sp+$07
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
    ld bc, $0100
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ret nc

    cpl
    ldh [$1f], a
    sbc b

jr_031_6fc3:
    ld h, a
    ret nc

    cpl
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld sp, hl
    ld b, $ff
    nop
    cp h
    ld b, e
    rst $18
    jr nz, jr_031_6fc3

    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ldh [rP1], a
    and b
    nop
    ret nz

    nop
    and b
    nop
    ret nz

    nop
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
    ret nz

    ld b, b
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
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
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
    rrca
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    inc bc
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
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, [$fafc]
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    ld a, [c]
    db $fc
    ld a, [c]
    db $fc
    or $f8
    or $f8
    and $f8
    add $f8
    sub $e8
    sub $e8
    sub $e8
    sbc $e0
    adc $e0
    db $ec
    ldh [rDMA], a
    ldh [rTMA], a
    ldh [$36], a
    db $e4
    ld d, $e4
    ld [de], a
    db $e4
    ld d, $e0
    ld [de], a
    ldh [$f2], a
    nop
    ld a, [$f2ff]
    rst $38
    db $fc
    ei
    db $f4
    ei
    db $fc
    ei
    push af
    ei
    ei
    db $fd
    ld a, [$fafd]
    db $fd
    ld a, [$fbfd]
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld a, a
    db $fc
    dec a
    cp $7f
    db $fc
    ld a, l
    cp $1d
    cp $1d
    cp $19
    cp $1d
    cp $1f
    cp $06
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld bc, $00ff
    rst $38
    dec b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $f3
    db $fc
    di
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$13
    ldh a, [$ed]
    ldh a, [$ed]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$ef], a
    ldh a, [$ce]
    ldh a, [$de]
    ldh [$dc], a
    ldh [$dc], a
    ldh [$cc], a
    ldh a, [$c8]
    ldh a, [$b8]
    ret nz

    cp b
    ret nz

    cp h
    ret nz

    cp b
    ret nz

    cp b
    ret nz

    cp b
    ret nz

    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld a, b
    add b
    ld a, b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ldh [rP1], a
    ld h, b
    add b
    ld b, b
    add b
    ret nz

    nop
    ret nc

    nop
    ret nc

    nop
    ret nz

    nop
    ret nz

    nop
    ret nc

    nop
    ret nc

    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
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
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    ld b, a
    nop
    rlca
    nop
    ld b, $01
    rlca
    rst $38
    and a
    ld a, a
    sub a
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $28
    rra
    rst $38
    rra
    ld l, a
    sbc a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    db $e3
    rst $38
    db $e3
    rst $38
    jp $81ff


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
    add e
    rst $38
    add c
    rst $38
    ld bc, $05ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $08ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    nop
    ld [bc], a
    ld bc, $0106
    ld [bc], a
    ld bc, $0107
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0301
    dec b
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    rla
    rrca
    rla
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    cpl
    rra
    cpl
    rra
    cpl
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ld e, a
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
    cp a
    ld a, a
    cp a
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
    ldh [$1f], a
    db $f4
    dec bc
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    pop af
    rrca
    pop af
    rrca
    pop hl
    rra
    pop hl
    rra
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
    rst $38
    rlca
    rst $38
    rlca
    push af
    rrca
    db $f4
    rrca
    or $0f
    db $f4
    rrca
    ldh a, [rIF]
    rst $38
    rrca
    db $fc
    rrca
    ld hl, sp+$0f
    ldh a, [rIF]
    add sp, $1f
    ldh [$1f], a
    rst $20
    rra
    add sp, $1f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$1f], a
    jp nc, $b93f

    ld a, a
    di
    ccf
    db $fc
    ccf
    cp h
    ld a, a
    cp l
    ld a, [hl]
    or l
    ld a, [hl]
    and h
    ld a, a
    and h
    ld a, a
    rst $38
    ld a, h
    rst $30
    ld a, h
    db $e3
    ld a, h
    ld a, h
    rst $38
    db $fc
    ld a, a
    ld [hl], h
    rst $38
    db $76
    rst $38
    cp $ff
    cp $ff
    ld a, [c]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    add sp, -$01
    db $fd
    rst $38
    cp $ff
    pop af
    cp $ef
    ldh a, [$eb]
    db $f4
    db $ec
    di
    ret z

    rst $30
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld [$f0fd], a
    rst $38
    or $ff
    ldh a, [rIE]
    or b
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nc

    rst $38
    ret nz

    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    ei
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
    ei
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    adc $f1
    nop
    rst $38
    ld b, $f9
    jp nz, $86fd

    ld sp, hl
    rst $08
    ldh a, [$1f]
    ldh [rNR24], a
    and $13
    db $ec
    ld bc, $01fe
    cp $11
    xor $2f
    ret nc

    scf
    ret z

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld e, a
    and b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld l, a
    sub b
    rra
    ldh [$1f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$bf], a
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    cp e
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a

jr_031_741b:
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld l, e
    sub h
    ei
    inc b
    ld l, h
    sub e
    inc c
    di
    ld e, $e1
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rra
    ldh [rDMA], a
    cp c
    db $10
    rst $28
    jr c, jr_031_741b

    ld b, $f9
    ld c, a
    ldh a, [$88]
    rst $30
    add c
    cp $01
    cp $41
    cp $03
    db $fc
    rlca
    ld hl, sp+$01
    cp $04
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
    add b
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    di
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
    cp $ff
    db $ec
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc b
    ei
    add hl, bc
    or $fd
    ld [bc], a
    ld a, a
    add b
    rst $20
    jr @+$01

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
    db $f4
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    ret nz

    rst $38
    sbc b
    rst $38
    jr c, @+$01

    cp b
    rst $38
    add c
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    push af
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $30
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
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    dec a
    jp nz, Jump_031_609f

    rra
    ldh [$3c], a
    jp $31ce


    push hl
    ld a, [de]
    cp $01
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ldh [$1f], a
    ldh [$1f], a
    sub b
    ld l, a
    ld bc, $10fe
    rst $28
    dec e
    rst $28
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld sp, hl
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    ret z

    rst $38
    add sp, -$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    jr jr_031_7583

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_031_7593

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_031_75a3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_031_75b3

    ld [hl-], a

jr_031_7583:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_031_75c3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_031_7593:
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

jr_031_75a3:
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

jr_031_75b3:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld d, d
    ld [hl], b

jr_031_75c3:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld l, e
    ld l, e
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
    ld d, d
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
    ld l, e
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
    ld d, d
    ld d, d
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
    ld d, d
    cp a
    ret nz

    pop bc
    jp nz, $c352

    call nz, $c6c5
    rst $00
    ld d, d
    ld d, d
    ld d, d
    ld d, d
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


    or h
    ld d, d
    jp c, $dcdb

    db $dd
    sbc $df
    ld d, d
    ld d, d
    ldh [$e1], a
    ld [c], a
    db $e3
    ld d, d
    db $db
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    db $e4
    push hl
    and $e7
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld h, e
    add sp, -$17
    ld [$5252], a
    ld d, d
    ld d, d
    db $eb
    db $ec
    db $ed
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld d, d
    ld d, d
    ld d, d
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $52
    ld d, d
    ld d, d
    ld d, d
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0112
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
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0100
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld hl, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp $ff
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    jp $faff


    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    jp hl


    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp c
    rst $38
    ld sp, hl
    rst $38
    add sp, -$01
    ld [hl], l
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    inc a
    rst $38
    xor h
    rst $38
    inc d
    rst $38
    sbc b
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $10
    rst $28
    nop
    rst $38
    inc [hl]
    rst $08
    inc c
    rst $30
    ld [$00f7], sp
    rst $38
    ld b, [hl]
    rst $38
    rst $00
    rst $38
    ld b, [hl]
    rst $38
    rst $20
    rst $38
    set 6, a
    and d
    rst $18
    add d
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
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
    inc c
    rst $38
    inc c
    rst $38
    sbc h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, [hl]
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add d
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
    inc b
    rst $38
    nop
    rst $38
    inc d
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    ld [hl+], a
    rst $38
    nop
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
    rlca
    ei
    add hl, de
    rst $38
    ld d, h
    rst $38
    ld [hl-], a
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    adc c
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add c
    cp $a0
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
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
    rst $20
    rst $38
    ld [hl], e
    rst $38
    ld [hl], c
    rst $38
    db $db
    rst $38
    dec d
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    jr c, @+$01

    xor b
    rst $38
    add l
    rst $38
    or c
    rst $38
    cp b

jr_031_78ff:
    rst $38
    adc a
    rst $38
    sub a
    rst $38
    ld d, $ff
    add a
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add h
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_031_78ff

    ld [$00f7], sp
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    inc e
    db $e3
    inc b
    ei
    ld bc, $01ff
    rst $38
    db $10
    rst $28
    ld d, d
    db $ed
    ld a, [bc]
    push af
    jp nz, $94fd

    db $eb
    ld [$48f7], sp
    rst $30
    ld [$0cf7], sp
    di
    ld c, $f1
    nop
    rst $38
    ld bc, $01fe
    cp $81
    cp $18
    rst $20
    adc h
    di
    add b
    rst $38
    add [hl]
    ld sp, hl
    add a
    ld sp, hl
    adc h
    di
    add $f9
    ld l, [hl]
    pop af
    cpl
    ldh a, [$3f]
    ldh [rTAC], a
    ld hl, sp+$05
    ld a, [$f807]
    inc c
    di
    inc bc
    db $fc
    dec de
    db $e4
    rrca
    ldh a, [$0d]
    ld a, [c]
    ld c, $f1
    ld b, $f9
    ld [hl+], a
    db $dd
    ld bc, $01ff
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    ld b, $ff
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rla
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    ld h, [hl]
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld e, e

jr_031_7999:
    rst $38
    inc b
    rst $38
    ld h, a
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld b, $ff
    daa
    rst $38
    ld hl, $01ff

jr_031_79a9:
    rst $38
    ld bc, $00ff
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
    jr nz, jr_031_7999

    nop
    rst $38
    add d
    ld a, a
    ld c, b
    or a
    add b
    ld a, a
    ld b, h
    cp a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_031_79a9

    nop
    rst $38
    nop
    rst $38
    ld [$f7f7], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    or e
    rst $38
    sub e
    rst $38
    sbc e
    rst $38
    ld c, e
    rst $38
    adc e
    rst $38
    add e
    rst $38
    ld bc, $81ff
    rst $38
    ld c, e
    db $fd
    inc hl
    db $fd
    ld bc, $05ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    nop
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $01fe
    cp $08

jr_031_7a1d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld bc, $c1ff
    ccf
    pop hl
    rra
    ldh [$1f], a
    ldh [$1f], a
    ld a, h
    add e
    ld a, h
    add e
    ret c

    daa
    push af
    ld a, [bc]
    ld [hl], l
    adc d
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld [hl], e
    adc h
    ld [hl], d
    adc l
    ld [hl], b
    adc a
    jr z, jr_031_7a1d

    ld l, b
    sub a
    ld h, h
    sbc e
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld l, l
    sub d
    ld e, a
    and b
    dec bc
    db $f4
    ld b, d
    cp l
    ld bc, $1bfe
    db $e4
    dec de
    db $e4
    ld hl, $a9de
    ld d, [hl]
    ld b, c
    cp $40
    rst $38
    ld b, h
    ei
    ld b, d
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld hl, $a1fe
    cp $03
    cp $81
    cp $40
    rst $38
    add b
    rst $38
    and h
    rst $38
    xor b
    rst $38
    nop
    rst $38
    add h
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    rst $00
    rst $38
    ret


    rst $38
    adc e
    rst $38
    jp nc, $d2ff

    rst $38
    or a
    rst $38
    or [hl]
    rst $38
    ld [hl], a
    rst $38
    ei
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
    db $ed
    rst $38
    inc a
    rst $38
    ccf
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
    ld c, a
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    ld e, d
    rst $38
    dec bc
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    jp hl


    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    cp $cf
    ldh a, [$df]
    ldh [$df], a
    ldh [$de], a
    ldh [$de], a
    ldh [$dc], a
    ldh [$d8], a
    ldh [$da], a
    ldh [$3e], a
    ldh [$df], a
    ldh [rIE], a
    ldh [$6f], a
    ldh a, [$ee]
    pop af
    ld l, $f1
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld d, c
    rst $38
    ld d, b
    rst $38
    ldh a, [rIE]
    ret c

    rst $38
    cp b
    rst $38
    ld a, [hl-]
    rst $38
    cp d
    ld a, a
    jr c, @+$01

    ld e, b
    cp a
    add hl, hl
    rst $38
    add hl, sp
    rst $38
    dec de
    rst $38
    ld c, b
    cp a
    inc e
    rst $38
    inc e
    rst $38
    inc [hl]
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    adc h
    ld a, a
    sbc h
    ld a, a
    sbc [hl]
    ld a, a
    adc [hl]
    ld a, a
    ld c, $ff
    sbc [hl]
    ld a, a
    or [hl]
    ld a, a
    add $3f
    jp nz, $463f

    cp a
    add $3f
    add [hl]
    ld a, a
    add a
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add c
    ld a, a
    add d
    ld a, l
    ld bc, $01ff
    rst $38
    inc de
    rst $28
    inc de
    rst $28
    nop
    rst $38
    inc c
    rst $38
    ld d, $ef
    ld c, $ff
    ld e, $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $2fff
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    xor a
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    ld d, c
    rst $38
    db $dd
    rst $38
    sbc b
    rst $38
    push bc
    rst $38
    adc e
    rst $38
    ld de, $a1ff
    rst $38
    ldh [rIE], a
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_031_7bb2:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    jr nz, jr_031_7bb2

    and b
    ldh a, [$30]
    ldh a, [$2a]
    ldh a, [$8b]
    ld hl, sp+$09
    ld hl, sp-$74
    ld sp, hl
    sub l
    db $fc
    sub h
    db $fc
    sub h
    cp $be
    sub $bf
    sub $af
    rst $10
    xor a
    rst $10
    adc c
    rst $30
    xor a
    db $d3
    cp e
    rst $00
    sub a
    db $eb
    sbc a
    db $e3
    rst $38
    jp $e3dc


    ret c

    db $e3
    ret c

    db $e3
    ret nc

    db $eb
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    jp hl


    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld [$08f6], sp
    or $09
    rst $30
    ld b, c
    cp $61
    cp $e4
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld l, $f0
    ld l, $f0
    ld h, $f8
    xor [hl]
    ldh a, [$be]
    ldh a, [$97]
    ld hl, sp-$69
    ld hl, sp+$17
    ld hl, sp-$29
    ld hl, sp-$69
    ld hl, sp-$29
    ld hl, sp-$69
    ld hl, sp-$29
    ld hl, sp+$53
    db $fc
    inc de
    db $fc
    ld a, [de]
    db $fd
    ld e, d
    db $fd
    dec bc
    db $fc
    ld a, [bc]
    db $fd
    add hl, bc
    cp $09
    cp $08
    rst $38
    ld [$09ff], sp
    cp $09
    cp $2d
    cp $2d
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $06
    rst $38
    ld h, $ff
    ld h, $ff
    ld b, $ff
    ld b, $ff
    add d
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    add e
    rst $38
    jp $93ff


    rst $28
    jp $c3ff


    rst $38
    add e
    rst $38
    jp $c3ff


    rst $38
    jp $e1ff


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
    pop af
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    ld [hl], d
    db $fd
    ld [hl], d
    db $fd
    ld [hl], d
    db $fd
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$fcfd]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $fc
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
    ld a, a
    add b
    dec de
    db $e4
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    ld h, c
    cp $e0
    rst $38
    pop hl
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
    rst $18
    ccf
    rra
    rra
    rra
    rra
    sbc a
    ccf
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
    rra
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    cp a
    ld a, a
    rst $38
    ccf
    sbc a
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
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    ld e, a
    cp a
    rra
    rst $38
    ld e, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld [hl], e
    cp a
    ld l, a
    cp e
    ld l, a
    cp e
    dec bc
    rst $38
    dec bc
    db $fc
    inc hl
    db $fc
    inc bc
    db $fc
    rrca
    db $fc
    ld d, e
    db $fc
    ld e, d
    push af
    ld d, e
    db $f4
    ld d, b
    rst $30
    ld d, b
    rst $30
    ld d, b
    rst $30
    ld d, b
    rst $30
    ld b, e
    db $f4
    ld d, e
    db $e4
    scf
    ldh [rNR52], a
    ldh [rNR50], a
    ldh [rNR50], a
    ldh [rNR41], a
    ldh [$28], a
    ldh [$28], a
    ldh [$28], a
    ldh [$08], a
    ldh [$a8], a
    ret nz

    and b

jr_031_7d8b:
    ret z

    add b
    ret z

    add b
    ret z

    adc b
    ret nz

    adc b
    ret nz

    adc b
    ret nz

    adc b
    ret nz

    ret z

    ret nz

    sub b
    ret nz

    sub b
    ret nz

    ret z

    sub b
    ret nz

    sub b
    ret nz

    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    or b
    sub b
    ld [hl-], a
    sub b
    ccf
    sub b
    cpl
    sub b
    xor a
    db $10
    xor a
    db $10
    sbc a
    jr nc, jr_031_7d8b

    ccf
    ret nz

    ccf
    db $db
    ccf
    ld e, a
    cp a
    ld e, a
    cp a
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, a
    sbc a
    cp a
    ld e, a
    ld a, a
    sbc a
    xor a
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    rra
    ldh [$2b], a
    call nc, $14eb
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    nop
    rra
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
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop bc
    cp $c0
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    pop hl
    cp $f1
    cp $c0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    jp nz, $e3fd

    db $fc
    db $e3
    db $fc
    jp $c0fc


    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp hl


    cp $f1
    cp $0b
    db $f4
    rrca
    ldh a, [$c0]
    rst $38
    rst $00
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
    cp a
    ld b, b
    ccf
    ret nz

    cpl
    ret nc

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    nop
    scf
    nop
    ccf
    nop
    cp [hl]
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    ccf
    inc c
    rst $38
    ld a, l
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    add b
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
    ld bc, $01ff
    rst $38
    xor c
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ldh a, [rIE]
    sbc l
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
    cp $ff
    jr c, @+$01

    jr @+$01

    ld b, b
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld [$09f7], sp
    or $11
    xor $11
    xor $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$37
    ret z

    ld [hl], a
    adc b
    ld b, a
    cp b
    adc a
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
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
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
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    and b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
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
    ld c, a
    rst $38
    inc bc
    rst $38
    ld b, $ff
    nop
    rst $38
    ld bc, $0500
    nop
    rra
    nop
    rra
    nop
    ld e, a
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    or c
    ld c, a
    inc bc
    rst $38
    rlca
    rst $38
    add d
    rst $38
    ld b, $ff
    ld b, $ff
    nop
    rst $38
    ld [bc], a
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
    ld hl, $00de
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
    rst $28
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    di
    nop
    inc bc
    nop
    ld [hl], a
    adc b
    inc e
    di
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    di
    rst $38
    add c
    rst $38
    add b
    rst $38
    nop
    rst $38
    add d
    db $fd
    nop
    rst $38
    rlca
    ld hl, sp+$27
    ret c

    rla
    add sp, $3f
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

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
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $f4
    rst $38
    ret nz

    rst $38
    add $ff
    db $f4
    rst $38
    sub $ff
    sub [hl]
    rst $38
    add [hl]
    rst $38
