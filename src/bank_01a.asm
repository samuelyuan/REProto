SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    sbc c
    sbc c
    sbc l
    sbc l
    sbc b
    sbc b
    sbc c
    sbc c
    call nc, $d1d4
    pop de
    dec d
    dec d
    ld e, c
    ld e, c
    ld de, $4011
    ld b, b
    sub b
    sub b
    sub b
    sub b
    call nz, $08c4
    ld [$0000], sp
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    db $20, $c0
    ld h, b
    add b
    ld b, b
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
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    inc c
    rra
    inc d
    ccf
    ld [$107f], sp
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add c

jr_01a_4057:
    rst $38
    add c
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
    jr nc, jr_01a_4057

    jr nz, @+$01

    ret nc

    ld l, a
    and b
    rst $18
    and b

jr_01a_406f:
    rst $18
    ld b, c
    cp a
    ld b, e
    cp [hl]

jr_01a_4074:
    add e

jr_01a_4075:
    ld a, [hl]
    add [hl]
    ld a, l
    add [hl]
    ld a, l
    inc c
    ei
    jr jr_01a_4074

    jr jr_01a_4075

    jr nc, jr_01a_406f

    jr nc, jr_01a_406f

    ld h, b
    rst $10
    ret nz

    or a
    ret nz

    cp e
    add b
    ld a, h
    add b
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    add b
    db $fc
    ld l, b
    cp b
    call c, $d424
    xor h
    add sp, -$70
    ld hl, sp+$78
    ld a, b
    db $10
    ld a, b
    ld a, b
    ld a, b
    jr z, @+$7a

    jr c, jr_01a_411f

    ld [hl], b
    ld a, b
    ld e, b
    ld a, b
    ld a, b
    ld a, b
    ld e, b
    ld a, b
    ld l, b
    cp b
    sbc b
    jr c, jr_01a_40ec

    cp b
    cp b
    cp b
    cp b
    cp b
    sbc b
    cp b
    cp b
    cp b
    cp b
    cp b
    sbc b
    cp b
    cp b
    cp b
    xor b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    cp b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    ret c

    ret c

    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    sbc b
    add b
    add b
    sbc b
    sbc b

jr_01a_40ec:
    nop
    nop
    nop
    nop
    sub b
    sub b
    jr nz, jr_01a_4114

    jr nz, jr_01a_4116

    jr nz, jr_01a_4118

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
    dec b
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
    rra
    rra

jr_01a_4114:
    ccf
    ccf

jr_01a_4116:
    ccf
    ccf

jr_01a_4118:
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fe
    db $fd

jr_01a_411f:
    db $fd
    db $fc
    db $fd
    db $e4
    rst $38
    add h
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, jr_01a_419d

    jr nz, jr_01a_411f

    ld b, b
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc c
    ei
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld h, b
    rst $18
    ld b, b
    rst $38
    add b
    rst $38
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
    inc bc

jr_01a_415b:
    cp $03

jr_01a_415d:
    cp $06

jr_01a_415f:
    db $fd
    ld b, $fd
    inc c
    ei
    inc c
    ei
    jr jr_01a_415f

    jr jr_01a_41e1

    jr nc, jr_01a_415b

    jr nc, jr_01a_415d

    ld h, b
    rst $18
    ret nc

    ldh a, [$d8]
    ld hl, sp-$3f
    pop af
    pop bc
    pop af
    pop bc
    pop af
    pop bc
    pop af
    pop bc
    pop af
    pop bc
    pop af
    pop bc
    pop af
    ret nz

    pop af
    ldh [$f1], a
    ldh [$f1], a
    ldh [$f1], a
    ldh [$f1], a
    ldh [$f1], a
    ldh [$b1], a
    ldh [$f1], a
    ldh [$f1], a
    ldh [$f1], a
    ldh [$f1], a
    ldh [$f1], a
    pop hl
    pop af
    pop hl

jr_01a_419d:
    pop af
    pop bc
    pop de
    pop hl
    pop af
    pop bc
    pop de
    pop hl
    pop hl
    ldh [$f1], a
    ldh a, [$f1]
    pop bc
    pop hl
    ret nc

    pop af
    pop de
    pop de
    db $e3
    db $e3
    pop de
    pop de
    ld d, c
    ld d, c
    ld h, c
    ld h, c
    ld d, e
    ld d, e
    ld b, c
    ld b, c
    ld hl, $4121
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld bc, $0111
    ld bc, $0101
    inc de
    inc de
    inc bc
    inc bc
    inc de
    inc de
    inc hl
    inc hl
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_01a_41e1:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3901
    add hl, sp
    ccf
    ccf
    ld a, a
    ld a, a
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
    rst $30
    rst $18
    rst $18
    cp a
    xor a
    cp a
    cp a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    db $fd
    db $fd
    jp nz, Jump_000_04ff

    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    ei
    add b
    or $80
    rst $28
    nop
    rst $28
    nop
    rst $18
    ld bc, $01ff
    rst $18
    ld [bc], a
    rst $38
    ld [bc], a

jr_01a_423f:
    rst $38
    ld b, $fd
    ld [$08ff], sp
    rst $38
    jr jr_01a_423f

    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    rst $18
    ld b, b
    rst $38
    ret nz

    cp a
    ret nz

    cp a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $06

jr_01a_4265:
    db $fd
    ld b, $fd
    inc c
    ei
    inc c
    ei
    jr jr_01a_4265

    jr @-$07

    daa
    daa
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    add b
    add b
    nop
    rst $38
    ld a, a
    adc a
    ld a, a
    rst $00
    ld a, a
    call $ef7f
    ld a, a
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
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
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld l, c
    ld l, c
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr c, jr_01a_4302

    inc h
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    db $fc
    db $fc
    cpl
    cpl
    ei
    ei
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
    rst $18
    rst $10
    cp a
    cp a
    cp a
    cp a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    cp $fe
    db $fd
    db $fd
    ld bc, $04fd
    rst $38

jr_01a_4302:
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a

jr_01a_431f:
    rst $38
    ld [bc], a

jr_01a_4321:
    rst $38
    inc b

jr_01a_4323:
    rst $38
    inc b

jr_01a_4325:
    rst $38
    ld [$08ff], sp
    rst $38
    jr jr_01a_4323

    jr jr_01a_4325

    jr nc, jr_01a_431f

    jr nc, jr_01a_4321

    ld h, b
    rst $18
    ld h, b
    rst $18
    ld b, b
    rst $38
    ret nz

    cp a
    add b
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
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $ff
    rst $38
    ccf
    ccf
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    rst $38
    rst $38
    sbc [hl]
    rst $28
    sub b
    rst $28
    ret nc

    rst $28
    ret nc

    rst $28
    sub b
    rst $28
    pop de
    rst $28
    pop bc
    rst $38
    set 7, a
    call $cfff
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
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
    ei
    ei
    ei
    ei
    pop af
    pop af
    pop af
    pop af
    ret nz

    ret nz

    ld hl, sp-$08
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    db $fc
    db $fc
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    db $dd
    cp a
    or e
    cp a
    cp a
    ld a, a
    ld a, c
    ld a, a
    ld h, a
    rst $38
    rst $20
    rst $28
    rst $18
    rst $38
    rst $08
    rst $38
    rst $38
    ld e, a
    cp a
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc l
    di
    add hl, sp
    or $5c
    di
    ld e, c
    and $90
    rst $28
    sub d
    db $ed
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
    ld bc, $03fd
    cp $02
    rst $38
    ld b, $fd
    ld b, $fd
    inc b
    rst $38
    ld [$0aff], sp
    rst $38
    jr @-$07

    db $10
    rst $38
    db $10
    rst $38
    jr nc, @-$0f

    jr c, @-$0f

    ld h, b
    rst $18
    ld h, b
    rst $18
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    add b
    ld a, a
    add b
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
    nop
    nop
    nop
    nop
    db $fd
    rst $38
    ld a, a
    add c
    ccf
    pop bc
    ccf
    pop bc
    cpl
    jp nc, $ea17

    add d
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, l
    rst $38
    cp l
    rst $38
    rst $10
    rst $38
    cp a
    rst $38
    ld a, [$fafa]
    ld a, [$fafa]
    ld a, [$f5fa]
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    push af
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    db $eb
    rst $10
    rst $10
    rst $10
    rst $10
    sub $d6
    sub $d6
    call nc, $d6d4
    sub $00
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
    stop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $feff
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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
    rst $38
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
    ei
    cp $ee
    cp $ee
    db $fd
    db $fd
    db $fd
    db $dd
    db $fd
    db $ed
    ei
    ei
    dec sp
    ei
    ld l, a
    rst $18
    adc e
    ld a, a
    ret


    cp a
    inc d
    rst $38
    sub b
    rst $38
    jr z, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld d, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    and b
    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld bc, $03ff
    cp $02
    rst $38
    inc bc
    rst $38
    ld b, $fd
    ld b, $fd
    inc b
    rst $38
    inc c
    ei
    ld [$18ff], sp
    rst $30
    db $10
    ei
    db $10
    rst $38
    jr nc, @-$0f

    jr c, @-$0f

    ld hl, $61df
    rst $18
    ld h, c
    rst $18
    jp $c3bf


    cp a
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
    ld e, a
    rst $38
    di
    ld c, a
    ldh [$5f], a
    and $59
    db $e3
    sbc h
    add c
    rst $38
    add b
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    xor b
    rst $38
    ld [hl-], a
    ei
    ld sp, hl
    ei
    ld d, c
    pop de
    call nc, $d4d5
    call nc, Call_000_3434
    inc [hl]
    inc [hl]
    inc h
    inc h
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    cp $fc
    cp $fc
    cp $f8
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$02
    ld hl, sp-$02
    db $fc
    cp $fc
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
    rst $38
    rst $38
    rst $38
    call $a0c3
    sbc a
    ld e, h
    ccf
    cp [hl]
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, $fe
    dec e
    db $fc
    add a
    ld hl, sp-$10
    rst $38
    db $fc
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
    add b
    add b
    ldh a, [$f0]
    rst $38
    rst $38
    or a
    or a
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
    rst $30
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    cpl
    rst $38
    daa
    rst $38
    ld h, a
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    jp $c3bf


    db $e3
    add d
    cp e
    add [hl]
    db $76
    add [hl]
    or $06
    ld [hl], $04
    db $f4
    inc c

jr_01a_45d1:
    ld l, h
    inc c
    xor h
    inc c
    db $ec
    inc c
    db $ec
    ld e, b
    ld hl, sp+$68
    add sp, $18
    ret c

    cp b
    ld hl, sp+$2f
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rra
    cp $9f
    cp $3f
    cp $de
    sbc $f6
    or $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    daa
    rst $18
    and $9e
    and $1e
    xor $1e
    ret z

    jr c, jr_01a_45d1

    jr c, jr_01a_465b

    or b
    nop
    ldh [rNR41], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$03
    ldh a, [$f8]
    ldh [$f0], a
    ret nz

    ldh [$80], a
    ret nz

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
    ldh a, [$80]
    db $fc
    add b
    rst $38
    ldh [$f7], a
    ld hl, sp-$09
    ldh a, [$f9]
    rst $38
    ei
    ld hl, sp-$03
    db $fc
    cp $fe
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp [hl]
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    ld a, [hl]
    cp $fe
    cp $fe

jr_01a_465b:
    ld e, $0f
    ldh a, [$c0]
    rst $38
    ld hl, sp-$01
    rst $38
    cp $ff
    cp $ff
    cp $fc
    db $fd
    cp $fd
    cp $fd
    rst $38
    db $fd
    rst $38
    db $fd
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
    cp $7f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    ld hl, sp+$1f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [rIE]
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

jr_01a_46c2:
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
    rst $38
    rst $38
    ld a, [$fefe]
    cp $94
    cp h
    inc d
    cp h
    sbc h
    cp h
    and h
    or h
    inc b
    inc [hl]
    nop
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    nop
    nop
    ldh a, [rP1]
    ldh [rP1], a
    rst $38
    add b
    db $fc
    di
    rst $38
    ld a, a
    di
    ld a, $67
    inc a
    ld c, a
    jr c, jr_01a_477e

    jr nc, jr_01a_4780

    jr nc, jr_01a_46c2

    ld [hl], b
    sbc a
    ld [hl], b
    cp a
    ld h, b
    cp a
    ld h, b
    ccf
    ldh [$3f], a
    ldh [$cf], a
    nop
    ld [$03f0], sp
    db $fc
    ld [hl], b
    rst $38
    ld a, [hl]
    rst $08
    ld a, a
    pop bc
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
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    nop
    nop

jr_01a_477e:
    nop
    nop

jr_01a_4780:
    nop
    nop
    nop
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
    ld a, a
    nop
    dec a
    ld [bc], a
    jp $ff3c


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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    ccf
    rlca
    rst $00
    rlca
    rra
    rst $20
    rrca
    rst $38
    rst $28
    rst $38
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
    cp $07
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    ld d, [hl]
    ld bc, $0003
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    ld b, $01
    inc c
    inc bc
    jr jr_01a_482f

    jr nc, jr_01a_4839

    ld h, b
    rra
    ret nz

    ccf
    add b

jr_01a_482f:
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc

jr_01a_4839:
    rlca
    ld hl, sp+$0f
    db $fc
    rrca
    cp $1f
    rst $20
    ld a, $e3
    ld a, [hl]
    di
    ld a, [hl]
    di
    cp $f3
    cp $f3
    cp $f3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    cp $cf
    cp $cf
    cp $9f
    db $fc
    sbc a
    db $fc
    rra
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$7f
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    ld h, b
    rst $38
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
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

    db $00, $01, $01, $02, $03, $04, $05, $01, $01, $01, $01, $01, $01, $06, $07, $08
    db $09, $0a, $0b, $0c, $0c, $0c, $0d, $0e, $0f, $01, $01, $01, $10, $11, $12, $13
    db $14, $15, $16, $0c, $17, $18, $19, $0c, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21
    db $22, $01, $23, $24, $25, $26, $27, $0c, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f
    db $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $75, $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e
    db $8f, $90, $91, $92, $93, $75, $94, $95, $96, $97, $98, $99, $8b, $9a, $9b, $9c
    db $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $aa, $ab
    db $9d, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8, $b9, $ba
    db $9d, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $aa, $c4, $c5, $c6, $c7, $c8
    db $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8
    db $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $9d, $e4, $e5, $e6, $e7
    db $e8, $e9, $ea, $eb, $01, $01, $01, $01, $01, $01, $ec, $9d, $ed, $ee, $ef, $f0
    db $f1, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ec, $9d, $f2, $f3, $f4, $f5
    db $f1, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ec, $9d, $f6, $f7, $f8, $f9
    db $f1, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ec, $9d, $fa, $fb, $fc, $fd
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $07, $04, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $07, $04, $04, $04, $00, $00, $00
    db $01, $01, $06, $01, $01, $01, $01, $01, $00, $00, $00, $04, $04, $00, $00, $00
    db $01, $01, $06, $06, $06, $07, $06, $07, $00, $00, $00, $04, $04, $00, $00, $00
    db $01, $01, $06, $01, $01, $07, $06, $00, $00, $00, $00, $04, $04, $00, $00, $00
    db $01, $01, $06, $01, $01, $07, $06, $00, $00, $00, $00, $04, $04, $00, $00, $00
    db $01, $01, $07, $01, $01, $07, $01, $00, $00, $00, $00, $04, $04, $00, $00, $00
    db $00, $01, $07, $07, $07, $07, $07, $00, $00, $00, $03, $03, $04, $00, $00, $00
    db $00, $01, $01, $01, $01, $01, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00

    INCBIN "gfx/image_01a_4b50.2bpp"

    INCBIN "gfx/image_01a_5a50.2bpp"

    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld a, [bc]
    inc c
    dec c
    ld c, $00
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $0a
    rla
    jr jr_01a_5b58

    inc c
    dec c
    nop
    nop
    add hl, de
    ld a, [de]
    inc bc
    dec de
    inc e
    dec e

jr_01a_5b58:
    ld e, $0a
    rra
    jr nz, jr_01a_5b7e

    ld a, [bc]
    inc c
    dec c
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01a_5b74

    add hl, hl
    jr z, @+$0c

    ld a, [bc]
    inc c
    dec c
    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_01a_5b74:
    ld l, $2f
    jr nc, jr_01a_5ba9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld a, [bc]
    ld a, [bc]

jr_01a_5b7e:
    inc c
    dec c
    ld [hl], $37
    jr c, jr_01a_5bbd

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld a, [bc]
    inc c
    dec c
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
    ld a, [bc]
    ld a, [bc]
    inc c
    dec c
    ld c, a
    ld d, b
    ld b, l
    ld d, c
    ld d, d
    inc bc
    ld d, e
    ld d, h
    ld d, l

jr_01a_5ba9:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld a, [bc]
    inc c
    dec c
    ld e, d
    ld e, e
    ld b, l
    ld e, h
    ld e, l
    inc bc
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h

jr_01a_5bbd:
    ld h, l
    inc c
    dec c
    ld h, [hl]
    ld h, a
    ld b, l
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld a, [bc]
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    inc c
    dec c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld e, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    dec c
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    inc bc
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    inc c
    dec c
    add [hl]
    add a
    ld b, l
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    dec c
    adc [hl]
    adc a
    sub b
    sub c
    inc c
    dec c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    dec c
    dec d
    sbc e
    sbc h
    ld l, [hl]
    inc c
    dec c
    sbc l
    sbc [hl]
    ld b, l
    sbc a
    and b
    and c
    and d
    and e
    and h
    dec c
    and l
    and [hl]
    ld a, [bc]
    ld a, [bc]
    inc c
    dec c
    and a
    xor b
    ld b, l
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
    ld a, [bc]
    inc c
    dec c
    or e
    or h
    ld b, l
    or l
    or [hl]
    nop
    or a
    cp b
    cp c
    ld a, [bc]
    ld a, [bc]
    ld [hl], c
    cp d
    cp e
    inc c
    dec c
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_000_0d0d

    jp Jump_000_0ac4


    push bc
    jr z, @+$0e

    dec c
    add $c7
    ret z

    ret


    jp z, $cccb

    call Call_000_0d0d
    adc $cf
    ret nc

    ld a, [bc]
    inc c
    dec c
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_000_0d0d

    db $db
    call c, $0d0c
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
    ld bc, HeaderLogo
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
    inc b
    ld bc, $0404
    ld bc, $0004
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0404
    inc b
    ld bc, $0004
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0404
    ld bc, $0401
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
    ld bc, $0401
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
    ld bc, $0004
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
    ld bc, $0401
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
    ld bc, $0004
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
    ld bc, $0404
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
    ld bc, $0101
    ld bc, $0101
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
    inc b
    inc b
    nop
    inc h
    inc b
    inc b
    ld b, h
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
    nop
    inc b
    inc b
    ld bc, $0401
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
    ld bc, $0004
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $4401
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
    inc b
    inc b
    ld bc, $0404
    inc b
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
    inc b
    inc b
    inc b
    ld bc, $0004
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ccf
    rst $38
    rst $38
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
    rst $38
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
    cp $7e
    rst $38
    ccf
    cp a
    ld a, a
    ccf
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
    ldh [$1f], a
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    cp $01
    ret nz

    ccf
    ldh [$1f], a
    db $fc
    inc bc
    ld a, a
    add b
    rrca
    ldh a, [rP1]
    rst $38
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
    rst $38
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
    rst $38
    nop
    rst $38
    ld bc, $83fe
    ld a, h
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
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
    nop
    ld hl, sp+$07
    pop af
    ld c, $e6
    add hl, de
    ret c

    daa
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_01a_5eb2

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    rst $38

jr_01a_5eb2:
    rst $38
    rst $38
    ccf
    ccf
    add a
    add a
    ldh a, [$f0]
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    rst $08
    rst $08
    sbc a
    sbc a
    sbc a
    sbc a
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
    ccf
    ccf
    ccf
    ccf
    rst $38
    ccf
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    inc bc
    db $fc
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
    nop
    rst $38
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
    ld hl, sp+$1f
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    pop de
    ld l, $8b
    ld [hl], h
    ld c, $f1
    rst $38
    nop
    ld l, h
    sub e
    sub d
    ld l, l
    ld [hl+], a
    db $dd
    ld b, c
    cp [hl]
    add c
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
    cp $fe
    ld bc, $00ff
    rst $38
    ldh [rIE], a
    rst $38
    ld hl, sp-$08
    db $e3
    db $e3
    adc a
    adc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh [$e0], a
    ret nz

    nop
    ld hl, sp+$07
    cp $01
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    jp nz, Jump_000_043c

    ld hl, sp+$0c
    ldh a, [rNR32]
    ldh [$7c], a
    add b
    db $fc
    nop
    rst $38
    rra
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$3f
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
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
    sbc a
    ld h, b
    ld l, a
    sub b
    adc a
    ld [hl], b
    rra
    ldh [rIE], a
    nop
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
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
    ldh a, [$f0]
    inc c
    db $fc
    inc bc
    rst $38
    ret nz

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
    cp $fe
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
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    nop
    rst $38
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
    inc bc
    inc bc
    ccf
    ccf
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld a, $3d
    ld a, [$7ff5]
    ld a, a
    ccf
    nop
    ld a, a
    ld h, b
    ld a, h
    ld h, e
    db $76
    ld l, c
    ld [hl], a
    ld [$5d62], sp
    db $76
    ld l, c
    ld a, d
    ld h, l
    ccf
    ld a, [hl-]
    ld a, [hl+]
    dec [hl]
    ccf
    ld a, $1e
    rra
    dec d
    ld e, $17
    rla
    nop
    nop
    nop
    nop
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
    db $fc
    inc bc
    rst $38
    ret nz

    db $fc
    db $fc
    ldh [$e0], a
    db $dd
    db $dd
    cp e
    add e
    ld [hl], a
    ld [hl], a
    rrca
    rrca
    ccf
    ccf
    cpl
    cpl
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    ld h, a
    ld h, a

jr_01a_609a:
    rst $20
    rst $20
    rst $20
    rst $20
    rst $28
    rst $28
    rst $18
    rst $18
    ei
    ei
    ei
    ei
    db $db
    db $db
    ret


    ret


    ld c, c
    ld c, c
    ld l, b
    ld l, b
    jr nz, jr_01a_60d0

    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    ld bc, $0300
    nop
    rlca
    nop
    ld c, $01
    dec c
    ld [bc], a
    ld c, $01
    adc a
    adc b
    rst $38
    cp $ff
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38

jr_01a_60d0:
    rst $00
    jr c, jr_01a_609a

    jr c, @-$1a

    dec de
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    db $e3
    inc e
    jp $c53c


    ld a, [hl-]
    adc l
    ld [hl], d
    add [hl]
    ld a, c
    sbc [hl]
    ld h, c
    ld de, $00ee
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01a_60ff:
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc

jr_01a_6109:
    inc bc
    cp $01
    cp $01
    cp $01
    ld a, [hl+]
    push de
    db $10
    rst $28
    rst $38
    rst $38
    pop af
    ld c, $60
    rst $18
    ld [hl], b
    adc a
    inc b
    ei
    jr nz, jr_01a_60ff

    and d
    ld e, l
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_01a_6109

    ld d, l
    xor d
    xor d
    push de
    ld d, h
    xor e
    cp a
    cp a
    nop
    nop
    nop
    nop
    nop
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
    push af
    ldh a, [rIF]
    nop
    nop
    ld [hl], e
    ld [hl], e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    sbc a
    sbc a
    sbc a
    sbc a
    adc l
    adc l
    adc h
    adc h
    add b
    add b
    nop
    nop
    nop
    ret nz

    nop
    cp $00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    ld b, b
    cp a
    and b
    ld e, a
    ld h, b
    cp a
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
    ld [$d015], a
    cpl
    nop
    rst $38
    nop
    rst $38
    and e
    ld e, h
    pop bc
    ld a, $07
    ld hl, sp+$03
    db $fc
    ld c, $f1
    nop

jr_01a_61a3:
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [bc], a
    db $fd
    ld bc, $11fe

jr_01a_61b3:
    xor $29
    sub $2b
    call nc, $dc23
    daa
    ret c

    inc l
    db $d3
    ld d, b
    xor a
    nop
    rst $38
    jr nz, jr_01a_61a3

    ld bc, $20fe
    rst $18
    inc d
    db $eb
    jr jr_01a_61b3

    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$9f]
    ld h, b
    cp a

jr_01a_61d9:
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $10
    rst $28
    ld bc, $fffe
    rst $38
    or h
    ld c, e
    db $ec
    inc de
    ld h, b
    sbc a
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [hl+], a
    db $dd
    ld [hl], h
    xor e
    jr nz, jr_01a_61d9

    ld d, l
    xor d
    xor a
    ld a, a
    rla
    db $eb
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
    adc a
    adc a
    rst $38
    rst $38
    rrca
    rrca
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ldh [$e0], a
    sub d
    sub d
    ld l, [hl]
    ld l, [hl]
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
    adc h
    adc h
    ld bc, $0701

jr_01a_6243:
    rlca
    nop

jr_01a_6245:
    nop
    nop

jr_01a_6247:
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
    inc b
    ei
    nop
    rst $38
    ld bc, $03fe
    db $fc
    cpl
    ret nc

    ld a, [hl]
    add c
    rst $38
    nop
    ld c, a
    or b
    ld c, $f1
    inc c
    di
    inc b
    ei
    inc c
    di
    inc c

jr_01a_626b:
    di
    adc b
    ld [hl], a
    jr @-$17

    sbc c
    ld h, [hl]
    jr nc, jr_01a_6243

    jr nc, jr_01a_6245

    jr nc, jr_01a_6247

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ret nz

    ccf
    call nz, $803b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop

jr_01a_6289:
    rst $38
    jr nz, jr_01a_626b

    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    and b
    ld e, a
    nop
    rst $38
    rst $38
    rst $38
    ld [hl], b
    adc a
    jr nz, jr_01a_6289

    inc b
    ei
    nop
    rst $38
    add c
    ld a, [hl]
    sub d
    ld l, l
    ld bc, $08fe
    rst $30
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, c
    xor [hl]
    xor d
    ld d, l
    ld d, l
    xor [hl]
    nop
    nop
    cp l
    cp l
    rst $38
    rst $38
    inc bc
    inc bc
    ld hl, sp-$08
    xor l
    xor l
    add hl, bc
    add hl, bc
    add c
    add c
    jp $01c3


    ld bc, $3e3e
    rra
    rra
    ld c, a
    ld c, a
    ld l, a
    ld l, a
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
    add b
    nop
    cp $00

jr_01a_62ed:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    ld l, a
    ld b, b
    cp a
    ret nz

    ccf
    ld b, b
    cp a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    jr nc, jr_01a_62ed

    db $10
    rst $28
    db $10
    rst $28
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $40fe
    cp a
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    jr z, @+$01

    ld d, c
    rst $38
    ld h, b
    rst $38
    adc a
    ld a, a
    ld a, a
    cp a
    rst $38
    rst $00
    rst $38
    rst $20
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    rlca
    rlca
    ld hl, sp-$08
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
    ld hl, sp-$08
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
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    db $fc
    ld [bc], a
    db $fd
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
    ld bc, $03fe

jr_01a_63bf:
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

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
    ld bc, $00fe
    rst $38
    jr nz, jr_01a_63bf

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
    jp nz, $a23d

    ld e, l
    sbc d
    ld h, l
    rlca
    ld hl, sp-$01
    nop
    dec c
    ld a, [c]
    inc d
    db $eb
    inc h
    db $db
    call nz, $043b
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld d, d
    xor l
    rst $38
    rst $38
    xor e
    rst $38
    ld d, l
    cp $a2
    db $fd
    ld d, l
    ld a, [$fea1]
    ld e, h
    di
    cp d
    push af
    ld a, a
    db $e3
    rst $18
    push de
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $28
    rst $28
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
    ld b, b
    ld b, b
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
    nop
    nop
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$1f
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    rra
    ldh [$6f], a
    sub b
    adc a
    ld [hl], b
    rrca
    ldh a, [rIE]
    nop
    rlca
    ld hl, sp-$79
    ld a, b
    ld h, a
    sbc b
    rla
    add sp, $0f
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
    nop
    rst $38
    sub h
    ld l, e
    rst $38
    rst $38
    xor d
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    db $10
    rst $28
    add b
    ld a, a
    ld b, b
    cp a
    ld a, [bc]
    rst $38
    ld e, l
    rst $38
    db $eb
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $7f7f
    nop
    nop
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add c
    add c
    ld bc, $0001
    nop
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
    rrca
    rrca
    rrca

jr_01a_652b:
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
    ld d, a
    xor d
    rst $38
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    add b
    rst $38
    ld [$00f7], sp
    rst $38
    inc b
    rst $38
    and d
    rst $38
    push af
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    rst $00
    add a
    add a
    db $e3
    db $e3
    rst $20
    rst $20
    rst $38
    rst $38
    ld a, a
    ld a, a
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
    rst $18
    rst $18
    db $e3
    db $e3
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
    pop hl
    ld e, $c7
    jr c, jr_01a_652b

    ld a, l
    ld [$10f7], sp
    rst $28
    db $10
    rst $28
    nop
    rst $38
    adc b
    ld [hl], a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    db $fc
    inc bc
    ei
    inc b
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    di
    inc c
    db $f4
    dec bc
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
    ld bc, $7fff
    or e
    ldh [$e0], a
    ld hl, sp-$08
    ld e, a
    rst $38
    xor a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    jp Jump_000_00c3


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
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    db $e3
    db $e3
    ld b, $06
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    adc h
    ld [hl], e
    call z, $9e33
    ld h, c
    ld a, a
    add b
    add hl, bc
    or $08
    rst $30
    ld b, $f9
    ld b, $f9
    ld a, h
    add e
    dec b
    ld a, [$fe01]
    inc bc
    db $fc
    scf
    ret z

    ld hl, $20de
    rst $18
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, $22de
    db $dd
    xor h
    ld d, e
    ld [hl], b
    adc a
    rst $38
    nop
    ld e, b
    and a
    sub h
    ld l, e
    ld [de], a
    db $ed
    ld de, $10ee
    rst $28
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jp hl


    ld d, [hl]
    ld [$f1f4], a
    rst $28
    pop af
    rst $38
    ld sp, hl
    rst $30
    ld a, d
    db $fd
    cp c
    or [hl]
    or b
    cp a
    cpl
    dec l
    or e
    or e
    add hl, de
    add hl, de
    add e
    add e
    cpl
    cpl
    dec de
    dec de
    rrca
    rlca
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
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nz, jr_01a_6726

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    or b
    ldh a, [$5f]
    ccf
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
    rrca
    rrca
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01a_6726:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    cp a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    ccf

jr_01a_6737:
    ccf
    ld a, a
    ld a, a
    nop
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    jp nc, $902d

    ld l, a
    sbc b
    ld h, a
    jr jr_01a_6737

    inc b
    ei
    ld [hl], h
    adc e
    xor $11
    ld a, [de]
    push hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
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

    cp a
    ld b, b
    nop
    rst $38
    sub b
    rst $38
    rrca
    rrca
    ld a, a
    ld a, a
    ld [$d5d7], a
    ld l, d
    ld [hl+], a
    db $dd
    ld d, c
    cp $70
    xor a
    push af
    jp c, Jump_01a_75fe

    rst $38
    rst $38
    ei
    ei
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    jr c, @+$41

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
    ld bc, $fe01
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

jr_01a_67d0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld bc, $0001
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $8ffe
    ld [hl], b
    rst $08
    jr nc, jr_01a_67d0

    jr jr_01a_67ee

    db $fc
    inc b
    ei

jr_01a_67ee:
    inc b
    ei
    ld b, $f9
    ld b, $f9
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
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, l
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    xor e
    ld d, l
    ld b, a
    cp d
    add e
    ld a, l
    ld b, b
    cp a
    xor d
    ld d, l
    ld d, l
    xor $ee
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
    nop
    nop
    nop
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
    ld a, [$00ff]
    rra
    ldh [$ef], a
    ldh a, [$f1]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $30
    rst $30
    rst $30
    rst $30
    di
    di
    di
    di
    ldh [$e0], a
    pop hl
    pop hl
    add [hl]
    add [hl]
    inc c
    inc c
    jr nc, @+$32

    ret nz

    rst $08
    nop
    ccf
    nop
    rst $38
    ld e, $e1
    rst $38
    nop
    rst $38
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
    rra
    ldh [$3f], a
    ret nz

    ccf
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
    ld b, $f6
    add hl, bc
    pop af
    ld c, $f8
    rlca
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    ld d, l
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    ld [hl], a
    db $eb
    xor d

jr_01a_68e9:
    ld [hl], l
    ld d, l
    xor d
    nop
    rst $38
    sub b
    ld l, a
    jr z, jr_01a_68e9

    sbc l
    ld l, d
    rst $28
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    nop
    nop
    nop
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
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ldh a, [$30]
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    adc e
    ld [hl], h
    pop de
    ld l, $70
    adc a
    rst $38
    nop
    ld [hl], $c9
    ld c, c
    or [hl]
    ld b, h
    cp e
    add d
    ld a, l
    add c
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, l
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    push af
    db $fd
    xor a
    ld d, a
    ld d, l
    xor [hl]
    xor d
    ld d, l
    ld e, l
    xor d
    ld a, [hl+]
    push af
    ld [hl], h
    cp e
    db $fc
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $18
    rst $18
    rst $28
    rst $28
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
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01a_69ce

    nop
    nop
    nop
    nop
    db $10
    db $10
    rra
    rrca
    dec de
    rlca
    ld c, $05
    rrca
    ld [$0e0f], sp
    inc c
    inc c
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01a_69ce:
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
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$8f], a
    ld [hl], b
    ld h, a
    sbc b
    dec de
    db $e4
    ld d, l
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld [$fdff], a
    rst $38
    cp a
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    rst $38
    and c
    cp $77
    db $fc
    jp hl


    cp $f5
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    ccf
    rrca
    rrca
    rlca
    ld b, $01
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
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld e, [hl]
    cp $07
    add a
    inc bc
    rlca
    ld bc, $0203
    inc bc
    ld [bc], a
    ld bc, $0203
    ld bc, $0103
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    ldh a, [rIE]
    ldh [rIE], a
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
    ld a, a
    adc a
    ccf
    rst $00
    rra
    db $e3
    rrca
    pop af
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
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
    push de
    rst $38
    cp [hl]
    rst $38
    ld [hl], a
    rst $38
    dec hl
    rst $38
    ld bc, $0eff
    rst $38
    and $1f
    ld a, [$fd0f]
    rlca
    sbc $2b
    ld a, h
    or a
    cp b
    rst $28
    ld a, l
    rst $38
    cp $ff
    rst $08
    rst $08
    ld a, [$fffe]
    rst $38
    rst $28
    rst $28
    db $fd
    db $fd
    cp $fe
    ld a, a
    ld a, a
    ccf
    scf
    rrca
    add hl, bc
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
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    cp b
    ld hl, sp-$22
    cp [hl]
    ld [hl], a
    rst $18
    xor a
    ei
    ld e, e
    rst $30
    db $ed
    dec de
    or $8b
    db $db
    push hl
    push af
    ld a, [$fdfb]
    db $fd
    cp $7e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    ld a, a
    cp $7f
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    adc a
    ccf
    rst $00
    rra
    db $e3
    rrca
    pop af
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
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
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld b, $06
    dec d
    ld d, $17
    jr @+$1b

    dec c
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld b, $20
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_01a_6bd9

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01a_6be9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01a_6bcd

    add hl, sp
    ld a, [hl-]
    dec sp
    ld b, $3c
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_01a_6bcd:
    ld b, l
    ld b, [hl]
    dec c
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_01a_6bd9:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    dec c
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

jr_01a_6be9:
    ld e, a
    ld h, b
    ld h, c
    dec c
    dec c
    dec c
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
    dec c
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
    ld b, h
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
    dec c
    sbc a
    and b
    and c
    and d
    and e
    dec c
    dec c
    dec c
    dec c
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    ld d, h
    sbc a
    xor d
    xor e
    dec c
    dec c
    dec c
    dec c
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    dec c
    or d
    or e
    sbc a
    sbc a
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

    ld b, h
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call Call_000_0d0d
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_000_0d0d

    dec c
    db $db
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $0d
    rst $20
    add sp, -$17
    dec c
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    add sp, -$0b
    dec c
    dec c
    dec c
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    dec c
    xor b
    xor c
    dec c
    dec c
    ld bc, $0302
    inc b
    dec b
    dec c
    ld b, $07
    ld [$0a09], sp
    and $0d
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    dec b
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
    ld [bc], a
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
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0141
    ld bc, $0101
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec b
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0021
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    rlca
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $07
    rlca
    ld bc, $0101
    ld b, c
    nop
    nop
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld bc, $0501
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    dec b
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    add hl, bc
    ld bc, $0101
    ld bc, $0801
    ld [$0d0d], sp
    ld [$0d00], sp
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld bc, $0901
    add hl, bc
    add hl, bc
    cp $02
    cp $02
    ld a, h
    inc b
    ld c, $02
    adc a
    add c
    sbc a
    sbc b
    ld b, a
    ld b, h
    inc bc
    ld [bc], a
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    inc de
    db $10
    ld b, $04
    ld b, $04
    di
    nop
    cp a
    nop
    rst $20
    nop
    ld b, b
    nop
    add [hl]
    nop
    jp hl


    ld [$08c9], sp
    rst $18
    db $10
    sbc a
    db $10
    xor a
    jr nz, jr_01a_6e31

jr_01a_6e31:
    nop
    ld a, h
    nop
    ld [hl], b
    db $10
    ld [$6c08], sp
    inc c
    ld [c], a
    ld [bc], a
    db $e3
    ld [bc], a
    jp hl


    ld bc, $00c8
    db $db
    nop
    db $e3
    nop
    pop af
    db $10
    db $fc
    inc c
    cp $06
    ld hl, sp+$00
    ldh a, [rP1]
    ret nc

    db $10
    jp nz, $ff02

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, b
    ccf
    nop
    ld e, a
    nop
    ld e, a
    nop
    rst $18
    ld b, b
    ccf
    jr nz, jr_01a_6ea7

    stop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld de, $4000
    ld b, b
    nop
    nop
    jr nz, jr_01a_6eba

    inc c
    inc c
    inc b
    inc b
    inc bc
    inc bc
    inc b
    nop
    add b
    nop
    nop
    nop
    ld b, b

jr_01a_6ea7:
    nop
    jr nz, jr_01a_6eaa

jr_01a_6eaa:
    stop
    stop
    ld a, [bc]
    nop
    inc bc
    inc bc
    nop
    nop
    add c
    add c
    ld [$2508], sp
    dec h

jr_01a_6eba:
    ld a, [bc]
    ld a, [bc]
    sbc [hl]
    sbc [hl]
    inc [hl]
    inc [hl]
    cp $31
    ld hl, sp-$79
    ldh a, [$8f]
    ret nz

    ccf

jr_01a_6ec8:
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
    jr nz, jr_01a_6ee2

jr_01a_6ee2:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rst $00
    call nz, Call_000_22e3
    pop af
    sub c
    ld sp, hl
    add hl, bc
    ret z

    ld [$80f0], sp
    rst $38
    nop
    ccf
    nop
    db $dd
    nop
    ld c, a
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    inc bc
    nop
    add c
    nop
    add c
    nop
    pop bc
    nop
    pop de
    db $10
    adc c
    ld [$0455], sp
    ld a, e
    ld [bc], a
    cp $02
    ld sp, hl
    ld bc, $0043
    rst $00
    nop
    sbc a
    nop
    rst $18
    nop
    and a
    add b
    daa
    nop
    cpl
    nop
    rrca
    nop
    ccf
    jr nz, @+$41

    jr nz, jr_01a_6f6c

    jr nz, jr_01a_6f8e

    db $10
    ld c, a
    nop
    ld e, a
    db $10
    inc sp
    jr nz, jr_01a_6ec8

    sub b
    add l
    inc b
    and e
    ld [hl+], a
    add e

jr_01a_6f3d:
    ld [bc], a
    add e
    add b
    ldh a, [$30]
    db $fc
    inc b
    db $fd
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
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fd
    ld bc, $00f0
    jp nz, $8102

    ld bc, $0103
    ld bc, $8f01
    add b

jr_01a_6f6c:
    inc bc
    inc bc
    ld bc, $2001
    jr nz, jr_01a_6f3d

    nop
    nop
    nop
    inc b
    inc b
    add b
    nop
    ld [$0908], sp
    add hl, bc
    ld b, b
    ld b, b
    adc b
    adc b
    add c
    add c
    add [hl]
    add [hl]
    ld b, c
    ld bc, $2d2d
    ld [hl+], a
    ld [hl+], a
    add l
    add l

jr_01a_6f8e:
    ld d, $16

jr_01a_6f90:
    rst $38
    dec [hl]
    rst $38
    xor b
    rst $38
    ld [hl], c
    db $fc
    db $e3
    ldh a, [$8f]
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    stop
    ld b, h
    ld b, h
    nop
    nop
    ld bc, $3001
    jr nc, jr_01a_6fd3

    jr jr_01a_6fbd

jr_01a_6fbd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld b, b
    ld [$0800], sp
    nop
    or h
    jr nc, @-$26

    jr jr_01a_6f90

    nop
    pop bc
    nop
    cp d

jr_01a_6fd3:
    ld [bc], a
    ld a, b
    nop
    ld [$e002], a
    nop
    ldh a, [rP1]
    stop
    nop
    nop
    rst $20
    nop
    db $e4
    nop
    ld sp, hl
    nop
    ld h, e
    ld b, b
    ld b, b
    ld b, b
    add hl, hl
    add hl, hl
    db $fc
    nop
    ld hl, sp+$00
    rst $38
    inc bc
    db $fd
    ld bc, $00fc
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
    rst $30
    inc b
    di
    nop
    push bc
    inc b
    rst $00
    inc b
    rst $08
    ld [$0087], sp
    add e
    nop
    pop bc
    nop
    add l
    inc b
    rst $08
    ld a, [bc]
    rrc e
    add b
    nop
    nop
    nop
    add b
    nop
    sub b
    db $10
    ld b, $00
    nop
    nop
    db $10
    stop
    nop
    ld [bc], a
    ld [bc], a
    inc e
    nop
    jr jr_01a_7044

jr_01a_7044:
    add a
    nop
    ld l, [hl]
    nop
    rst $20
    nop
    rst $38
    add b
    db $eb
    add b
    ei
    add b
    jp nz, $0e80

    nop
    ld [bc], a
    nop
    nop
    nop
    add l
    ld bc, $0303

jr_01a_705c:
    inc de
    inc de
    xor c
    xor c
    rst $38
    dec bc
    rst $38
    inc hl
    rst $38
    dec l
    rst $38
    jp hl


    cp $d3
    db $fc
    cp a
    ldh a, [$cf]
    ldh [$7f], a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

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
    nop
    rst $38
    inc bc
    rst $38
    inc b

jr_01a_708b:
    rst $38
    ld [$10ff], sp
    rst $38
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
    db $10
    db $10
    ld [$0208], sp
    nop
    nop
    nop
    add hl, bc
    ld bc, $8080
    ret nc

    ret nc

    ld hl, sp+$58
    or b
    nop
    cp h
    inc h
    dec sp
    inc hl
    inc a
    jr nz, jr_01a_70d8

    db $10
    rra
    jr jr_01a_70c4

    inc b
    ld h, $04
    inc hl
    ld [bc], a
    add e
    ld [bc], a

jr_01a_70c4:
    add e
    ld [bc], a
    ld b, b
    nop
    ld hl, $8100
    add b
    ld b, c
    ld b, b
    inc sp
    jr nc, jr_01a_705c

    ld [$0047], sp
    ld a, a
    nop
    ld a, a
    nop

jr_01a_70d8:
    ld e, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    cpl
    nop
    rst $28
    ret nz

    ld c, a
    ld b, b
    cpl
    jr nz, jr_01a_716c

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
    cp a
    nop
    rra
    db $10
    cpl
    jr nz, jr_01a_7146

    jr nz, jr_01a_7148

    jr nz, jr_01a_708b

    add b
    add c
    add c
    add a
    add d
    jp $e342


    inc hl
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$00
    db $fc
    inc b
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ret nz

    nop
    add h
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc b
    nop
    inc b
    nop
    rlca
    nop
    ld e, $00
    ld b, $00
    add b
    nop
    nop
    nop
    add b
    nop
    ld bc, $0000
    nop

jr_01a_7146:
    and h
    nop

jr_01a_7148:
    xor b
    nop
    xor d
    nop
    call nc, $c000
    nop
    nop
    ld h, b
    add b
    ldh [$03], a
    inc hl
    inc bc
    inc bc
    sub [hl]
    sub [hl]
    ld a, c
    ld a, c
    ld a, a
    ld a, a
    xor e
    xor b
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01a_716c:
    nop
    rst $38
    nop
    rst $38
    nop
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
    call nz, $38ff
    rst $38
    jr z, @+$01

    ld b, [hl]
    rst $38
    add c
    rst $38
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
    inc h
    nop
    jr nz, jr_01a_7196

jr_01a_7196:
    nop
    nop
    inc b
    nop
    add d
    add b
    nop
    nop
    ld c, b
    ld [$1010], sp
    nop
    nop
    jr c, jr_01a_71a6

jr_01a_71a6:
    ld a, c
    nop
    db $fc
    nop
    cp $00
    cp $00
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
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [$f005]
    rrca
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
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, b
    rlca
    ld a, b
    rlca
    jr c, jr_01a_71ff

    jr jr_01a_7201

    inc e
    inc bc
    inc c
    inc bc
    inc l

jr_01a_71ff:
    inc bc
    ld [bc], a

jr_01a_7201:
    ld [bc], a
    jr nz, jr_01a_7204

jr_01a_7204:
    nop
    nop
    ld b, b
    ld b, b
    ld h, c
    ld h, c
    ld de, $1011
    db $10
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld [$2000], sp
    nop
    ld a, h
    nop
    ld [bc], a
    ld [bc], a
    inc hl
    inc hl
    ld [$0408], sp
    inc b
    sub c
    ld de, $0d0d
    dec sp
    dec sp
    ld e, $1e
    cp l
    dec a
    ld a, h
    ld a, h
    cp $75
    db $fc
    db $d3
    ld hl, sp-$39
    ldh a, [$8f]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
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
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, $ff
    ld bc, $03ff
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    add d
    add d
    add d
    add d
    ld [hl+], a
    ld [bc], a
    ld b, h
    ld b, h
    inc b
    inc b
    ld b, b
    ld b, b
    jr z, @+$2a

    jr z, jr_01a_72ae

    or c
    or b
    add b
    add b
    add b
    add b
    and h
    and b
    add b
    add b
    ld [hl+], a
    jr nz, jr_01a_7293

jr_01a_7293:
    nop
    sub b
    db $10
    ld [$0c08], sp
    ld [$088c], sp
    call nz, $a104
    ld bc, $0098
    add b
    nop
    pop hl
    ld bc, $00f0
    ldh a, [$03]
    call z, $8c33
    ld [hl], e

jr_01a_72ae:
    adc [hl]
    ld [hl], c
    adc a
    ld [hl], b
    add a
    ld a, b
    add [hl]
    ld a, c
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, c
    ld b, $f9
    ld [bc], a
    db $fd
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
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
    ld sp, hl
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $00
    cp $80
    db $fc
    ld b, b
    ld a, h
    jr nz, jr_01a_7334

    jr nz, jr_01a_7336

    jr jr_01a_7318

    inc b
    inc b
    ld b, d
    ld b, d
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    ld bc, $8c01
    adc h
    ld d, $16
    ld e, e
    ld e, e
    or [hl]
    or [hl]
    add hl, sp
    add hl, sp
    rst $38
    or $ff
    ld hl, sp-$01
    ld sp, hl
    cp $87

jr_01a_7318:
    ld hl, sp+$6f
    ldh a, [$8f]
    ldh [$1f], a
    add b
    ld a, a
    ret nz

    rst $38
    jr nc, @+$01

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
    ld bc, $02ff
    rst $38

jr_01a_7334:
    inc b
    rst $38

jr_01a_7336:
    jr @+$01

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
    jr nc, @+$01

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
    ldh [rP1], a
    ldh [rP1], a
    add c
    nop
    ld b, c
    nop
    stop
    ld b, b
    nop
    db $10
    db $10
    ld [$0808], sp
    ld [$0909], sp
    ld [hl], c
    ld de, $00a0
    add b
    nop
    ret nz

    nop
    ret z

    ld [$0888], sp
    rst $38
    jr @+$01

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld [hl], b
    xor a
    ld a, a
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    or b
    ccf
    pop de
    ccf
    ret nc

    ccf
    pop de
    ccf
    ret nc

    ccf
    pop de
    ccf
    ret nc

    ccf
    ret nc

    ccf
    ret nc

    ccf
    ret nc

    rra
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $0f
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    or $0f
    or $0f
    or $07
    ld a, [$fa07]
    rlca
    ld a, [$7b07]
    rlca
    ei
    rlca
    ld a, e
    add a
    ei
    rlca
    dec e
    rlca
    dec e
    ld b, a
    ld a, l
    rrca
    dec a
    rrca
    dec e
    rrca
    dec e
    cpl
    dec a
    ld c, a
    ld a, l
    cpl
    dec a
    sbc a
    sbc [hl]
    rra
    ld e, $1f
    ld e, $fe
    cpl
    cp $1f
    cp $2f
    cp $8f
    cp $1f
    cp $5f
    cp $cf
    rst $38
    rra
    db $e3
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
    inc bc
    rst $38
    inc b
    rst $38
    ret z

    rst $38
    jr c, @+$01

    ld h, $ff
    pop bc
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
    jr nc, @+$01

    dec c
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    ld bc, $0300
    nop
    inc de
    nop
    ld de, $9500
    add b
    sub b
    add b
    jp z, $50c0

    ld b, b
    ld c, c
    ld b, b
    ld e, b
    nop
    sub h
    nop
    inc sp
    jr nz, jr_01a_7472

    nop
    inc de
    nop
    nop
    nop
    ld [$8000], sp
    add b
    db $fc
    ld a, a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    inc a
    rst $38
    inc b
    add h
    rst $38

jr_01a_7472:
    inc b
    rst $38
    inc b
    cp a
    inc b
    ccf
    inc b
    ccf
    inc b
    ccf
    inc b
    ccf
    inc b
    ccf
    ld [bc], a
    ccf
    ld [bc], a
    cp a
    ld [bc], a
    cp a
    ld [bc], a
    cp a
    ld [bc], a
    cp a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    rst $18
    ld bc, $01df
    rst $18
    ld bc, $01df
    rst $00
    nop
    ret nz

    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    add b
    rst $38
    sbc h
    rst $18
    add e
    rst $18
    add c
    rst $18
    add c
    rst $18
    add c
    rst $18
    add c
    rst $18
    add c
    rst $18
    add c
    rst $28
    add c
    rst $28
    add c
    rst $28
    pop bc
    rst $28
    pop bc
    rst $28
    pop bc
    rst $28
    pop bc
    rst $20
    pop bc
    pop hl
    ret nz

    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    inc c
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    jr @+$01

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
    rst $38
    nop
    rst $38
    add b
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
    ld [$10ff], sp
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
    inc b
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    db $10
    db $10
    inc c
    inc c
    inc h
    inc b
    nop
    nop
    add b
    nop
    ret nz

    nop
    jp nz, $c202

    ld [bc], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    ld a, h
    nop
    db $fc
    nop
    xor h
    db $10
    xor $10
    and e
    inc e
    add b
    ld a, a
    nop
    rst $38
    ld hl, sp-$01
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
    ldh [$5e], a
    rst $38
    add d
    rst $38
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld [bc], a
    sbc a
    ld bc, $019f
    sbc a
    ld bc, $01df
    rst $18
    ld bc, $01df
    rst $18
    ld bc, $01df
    rst $18
    ld bc, $01df
    rst $18
    ld bc, $01df
    rst $08
    ld bc, $01cf
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $00
    nop
    ret nz

    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $18
    inc bc
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
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
    rst $28
    nop
    rst $20
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

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
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
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

Jump_01a_75fe:
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fd
    ld bc, $02fb
    di
    ld [bc], a
    rst $30
    inc b
    rst $28
    nop
    nop
    add b
    add b
    sub d
    add b
    ld b, d
    ld b, b
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    jr @+$1a

    ld b, $06
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_01a_7652

    jr nz, jr_01a_7654

    nop
    nop
    ld [$0800], sp
    nop
    inc b
    nop
    inc b
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [$7f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]

jr_01a_7652:
    ldh a, [$1f]

jr_01a_7654:
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp+$0f
    ld hl, sp+$0f
    sbc b
    ld l, a
    ret c

    ld l, a
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    cp $0f
    rst $38
    rrca
    rrca
    rst $38
    rst $08
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
    ld [$10ff], sp
    rst $38
    ldh [rIE], a
    jr c, @+$01

    ld b, [hl]
    rst $38
    add c
    rst $38
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
    ld bc, $01f9
    ei
    ld [bc], a
    rst $30
    inc b
    rst $28
    ld [$08cf], sp
    rst $18
    db $10
    cp a
    jr nz, jr_01a_7771

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
    nop
    rst $38
    dec b
    nop
    inc bc
    nop
    dec c
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0100
    nop
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
    inc b
    nop
    ld b, c
    ld b, c
    ld b, l
    ld b, c
    dec h
    ld hl, $2123
    ld sp, $1331
    ld de, $0101
    ld bc, $0101
    ld bc, $4105
    inc bc
    add c
    add hl, hl
    pop bc
    add hl, de
    pop hl
    add hl, de
    pop hl
    add hl, sp
    pop bc
    ld a, l
    add c
    db $fd
    ld bc, $c13d
    ld a, a
    add c
    ld a, h
    add b
    cp $00
    ld e, $e1
    db $fc
    ld bc, $51ae
    ld a, [$7e04]
    add c
    ld [de], a
    db $ed
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    inc a
    jp $f30c


    ld a, h

jr_01a_775d:
    add e
    db $fc
    inc bc
    ld a, h
    add e
    ld a, h
    add e
    db $fc
    inc bc
    ld a, h
    add e
    inc a

jr_01a_7769:
    jp $e31c


    inc a
    jp $c33c


    inc e

jr_01a_7771:
    db $e3
    inc a
    jp $e31c


    inc e
    db $e3
    inc a
    jp $e31c


    ld a, h
    add e
    call nc, $7c2b
    add e
    call c, Call_01a_7c23
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld [hl], h
    adc e
    ld a, h
    add e
    call c, Call_01a_7c23
    add e
    db $fc
    inc bc
    jr c, jr_01a_775d

    ld a, b
    add a
    ld a, b
    add a
    ret c

    daa
    ret c

    daa
    ld a, b
    add a
    jr c, jr_01a_7769

    ld hl, sp+$07
    ld a, b
    add a
    jr c, @-$37

    jr c, jr_01a_7771

    ld a, b
    add a
    ld hl, sp+$07
    ld sp, hl
    add a
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    ld c, h
    add b
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
    ld bc, $01f9
    ei
    ld [bc], a
    rst $30
    inc b
    rst $20
    adc b
    rst $08
    ld l, b
    rst $38
    inc e
    cp a
    inc hl
    ccf
    jr nz, jr_01a_785d

    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    db $fc
    db $fc
    db $ec
    db $ec
    ret z

    ret z

    jp z, $d2ca

    jp nc, $8282

    sub b
    sub b
    and [hl]
    and [hl]
    adc h
    adc h
    add b
    adc a
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
    ld a, a
    nop
    ld a, a
    nop

jr_01a_7835:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    ld a, a
    cp $7f
    db $fc
    rst $38

jr_01a_785d:
    db $fc
    rst $38
    ld sp, hl
    pop af
    rst $38
    ldh [rIE], a
    pop bc
    db $fd
    add c
    db $fd
    add c
    ei
    inc bc
    rst $30
    inc b
    rst $30
    inc b
    rst $28
    ld [$10df], sp
    cp a
    jr nz, jr_01a_7835

    jr nz, jr_01a_78f7

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
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
    db $e3
    db $e3
    rst $20
    rst $20
    add h
    add h
    ld [$0808], sp
    ld [$1010], sp
    ld de, $3111
    ld sp, $0c04
    ld [bc], a
    ld c, $02
    ld a, $00
    ld a, h
    ld bc, $017f
    rst $38
    ld bc, $01ff
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
    rst $38
    rra
    rst $38
    rra
    cp $1f
    db $fd
    ccf
    db $fd
    ccf
    ei
    rst $30
    ld [hl], a
    rst $20
    ld h, a
    ldh [$e0], a
    rst $28
    db $ec
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$df], a
    ldh [$c7], a
    cp b
    ldh a, [$cf]
    cp $f1
    rst $38

jr_01a_78f7:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    add e
    add e
    nop
    add b
    nop
    nop
    nop
    nop
    pop bc
    pop bc
    di
    di
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    sbc a
    rlca
    rst $00
    nop
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld h, c
    rst $38
    ld a, [de]
    rst $38
    ld b, $ff
    dec b
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
    ld a, a
    ld a, a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld a, $3e
    ld e, $1e
    ld c, $8e
    ld c, $8e
    ld b, $c6
    ld b, $e6
    inc b
    db $e4
    inc b
    db $f4
    inc b
    db $fc
    inc b
    db $fc
    ld c, $fc
    inc c
    db $fc
    ld c, $fc
    inc c
    db $fc
    inc c
    ld hl, sp+$0d
    ld hl, sp+$1c
    ld hl, sp+$1d
    ld hl, sp+$1e
    ld hl, sp+$1e
    ld hl, sp+$1f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ldh a, [$3f]
    ldh a, [$37]
    ld hl, sp+$37
    ld hl, sp+$77
    ld hl, sp+$73
    db $fc
    ld [hl], e
    db $fc
    di
    db $fc
    db $e3
    db $fc
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld h, e
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    db $e3
    db $fc
    db $fc
    rst $38
    rst $38
    rst $28
    ccf
    adc e
    ld c, a
    add e
    add e
    add e
    add $e3
    inc [hl]
    rst $38
    inc c
    rst $38
    nop
    ld a, $c1
    adc h
    ld [hl], e
    ld hl, sp-$79
    ld hl, sp-$09
    ldh a, [rIE]
    pop af
    xor $e1
    rst $38
    db $e3
    db $dd
    db $e3
    rst $18
    add $fa
    ld hl, sp-$40
    ldh [$e0], a
    add b
    add b
    add b
    add b
    nop
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
    inc b
    rst $38
    ld [$10ff], sp
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
    ret nz

    rst $38
    jr nc, @+$01

    inc c
    rst $38
    ret nz

    ret nz

    call nz, $c0c4
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add d
    add d
    add b
    add b
    add b
    add b
    sub b
    sub b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ld [$0008], sp
    nop
    ld bc, $0101
    ld bc, $4141
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $13
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc c
    rlca
    dec c
    rlca
    add hl, de
    rrca
    add hl, de
    rrca
    add hl, de
    rrca
    add hl, de
    ld c, $1a
    ld c, $aa
    rrca
    ld a, e
    rra
    ld [hl], b
    rra
    or e
    ld e, $f2
    ld e, $f2
    ld e, $f2
    ld e, $f2
    inc a
    db $e4
    inc a
    db $e4
    inc a
    db $e4
    inc a
    db $e4
    inc a
    db $e4
    inc a
    db $e4
    inc a
    rst $20
    ld a, h
    rst $00
    ld a, b
    rst $08
    ld a, b
    rst $08
    ld a, b
    rst $08
    ld a, b
    rst $08
    ld a, h
    rst $08
    rst $38
    add e
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    inc a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rra
    ld a, a
    rrca
    sbc a
    rst $00
    rst $28
    rst $20
    rst $38
    push hl
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    ccf
    db $e4
    ccf
    db $e4
    ccf
    add sp, $7f
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    add c
    rst $38
    add c
    rst $38
    ld h, d
    rst $38
    inc e
    rst $38
    rlca
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
    ret nz

    rst $38
    jr c, @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $5a00
    ld e, b
    ld b, b
    ld b, b
    nop
    nop
    add b
    add b
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
    rst $38
    pop hl
    ccf
    ldh [$3f], a
    ldh [$3f], a
    cp $01
    rst $38
    nop
    rst $38
    ld a, $ff
    ccf
    pop hl
    ccf
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $18
    add d
    rst $28
    add c
    rst $28
    add h
    rst $28
    add b
    rst $28
    add c
    rst $30
    nop
    rst $30
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
    db $fc
    ld a, h
    rst $38
    add e
    ld a, a
    ld a, h
    inc bc
    daa
    nop
    ld b, h
    nop
    add h
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    jr jr_01a_7b5d

jr_01a_7b5d:
    jr jr_01a_7b5f

jr_01a_7b5f:
    jr jr_01a_7b61

jr_01a_7b61:
    stop
    sub b
    nop
    ldh a, [rP1]
    ccf
    nop
    and a
    nop
    rst $30
    nop
    rst $38
    ret nz

    cp $fc
    ld a, $ff
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
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
    ccf
    rst $38
    rlca
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

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
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    jr @+$01

    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add h
    rst $38
    ld h, h
    rst $38
    jr @+$01

    ld c, $ff
    nop
    nop
    ld a, [bc]

jr_01a_7bc3:
    ld [$0000], sp
    jr nz, jr_01a_7bc8

jr_01a_7bc8:
    jr c, jr_01a_7bca

jr_01a_7bca:
    cp $00
    ld e, a
    nop
    ld [hl], $00
    ld [hl], a
    nop
    ld e, [hl]
    nop
    sub e
    nop
    inc c
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    rst $38
    ld [$00ff], sp
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
    rst $38
    rst $38
    rst $28
    nop
    rst $28
    nop
    ld l, a
    nop
    ld e, a
    nop
    rst $18
    nop
    rst $38
    ld c, b

jr_01a_7bfc:
    rst $38
    jr nz, jr_01a_7bfc

    adc b
    db $fd
    ld [hl], b
    db $fc
    and b
    db $fc
    ld c, b
    cp $10
    cp $48
    cp $82
    rst $38
    db $10
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ldh [$e0], a
    rst $38
    rra
    rst $38
    ldh [$1f], a
    rra
    nop

Call_01a_7c23:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld [bc], a
    nop
    ld b, $00
    ld b, $00
    inc b
    nop
    add h
    nop
    adc l
    nop
    adc h
    nop
    ld [$1800], sp
    nop
    jr jr_01a_7c41

jr_01a_7c41:
    jr jr_01a_7bc3

    add b
    ld hl, sp+$78
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
    ldh [rIE], a
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
    ret nz

    rst $38
    jr c, @+$01

    ld b, $ff
    ld bc, $00ff
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

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
    nop
    ld [hl-], a
    nop
    adc b
    nop
    nop
    nop
    ld [$1000], sp
    nop
    ld [$8800], sp
    nop
    add b
    nop
    call nz, RST_00
    nop
    nop
    nop
    jr nz, jr_01a_7cba

jr_01a_7cba:
    nop
    nop
    inc b
    nop
    stop
    nop
    add hl, bc
    nop
    inc c
    nop
    dec b
    nop
    dec b
    add b
    add e
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    add b
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
    stop
    stop
    ld de, $1200
    nop
    ld [hl+], a
    nop
    inc [hl]
    nop
    inc h
    nop
    xor b
    nop
    ld l, b
    nop
    ld [hl], b
    nop
    ld h, b
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
    add b
    add b
    db $fc
    ld a, h
    rst $38
    add e
    ld a, a
    ld a, h
    inc bc
    inc bc
    nop
    adc b
    ld bc, $0119
    add hl, de
    ld bc, $0331
    ld [hl-], a
    inc bc
    ld h, d
    inc bc
    ld h, d
    rlca
    call nz, $0407
    rlca
    dec b
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, bc
    ld e, $13
    ld e, $13
    ld e, $13
    cp h
    and a
    db $fc
    ld h, a
    db $fc
    rlca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    cp $1f
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
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ld a, b
    rst $38
    ld b, [hl]
    rst $38
    add c
    rst $38
    add b
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
    ld bc, $0100
    nop
    jr nz, jr_01a_7d70

jr_01a_7d70:
    nop
    nop
    jr nz, jr_01a_7d74

jr_01a_7d74:
    jr nz, jr_01a_7d76

jr_01a_7d76:
    ld [bc], a
    nop
    jr nz, jr_01a_7d7a

jr_01a_7d7a:
    jr nz, jr_01a_7d7c

jr_01a_7d7c:
    ld b, b
    nop
    ld b, b
    nop
    nop
    ld b, c
    nop
    ret nc

    nop
    and b
    nop
    add b
    nop
    ret nz

    ldh [$e0], a
    rst $38
    rra
    rst $38
    nop
    ldh [rIE], a
    rst $38
    rra
    rst $38
    ld bc, $4bfe
    cp $03
    cp $13
    cp $03
    db $fc
    rlca
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$090f], sp
    rrca
    add hl, bc
    rrca
    add hl, bc
    ld e, $13
    ld e, $13
    ld e, $13
    ld a, $23
    inc a
    daa
    inc a
    daa
    inc a
    daa
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ld a, b
    ld c, a
    ldh a, [$9f]
    ldh a, [$1f]
    ldh a, [$9f]
    ldh [$bf], a
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
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
    nop
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
    rlca
    cp $87
    cp $9f
    cp $ff
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
    rst $38
    cp a
    rst $38
    add a
    rst $38
    ld bc, $0001
    nop
    ld [hl], b
    nop
    ld [$0400], sp
    nop
    add b
    nop
    ret nz

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
    jr nz, jr_01a_7e2a

jr_01a_7e2a:
    jr nz, jr_01a_7e2c

jr_01a_7e2c:
    nop
    nop
    ld b, $04
    inc b
    ld d, $02
    ld a, [bc]
    nop
    nop
    ld bc, $7801
    ld a, b
    ld sp, hl
    adc c
    ld sp, hl
    adc c
    ld hl, sp+$08
    ldh a, [rNR12]
    ldh a, [rNR10]
    ldh [rNR43], a
    ldh [rNR50], a
    ldh [$3c], a
    ret nz

    ld a, [hl]
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
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $03
    cp $07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rra
    di
    rra
    di
    rra
    di
    ccf
    rst $20
    ccf
    rst $20
    ld a, a
    rst $00
    ld a, a
    rst $08
    ld a, a
    rst $08
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ccf
    ccf
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

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
    ld bc, $0302
    inc b
    dec b
    ld b, $06
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
    jr jr_01a_7f15

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01a_7f25

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01a_7f35

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01a_7f45

    ld [hl-], a

jr_01a_7f15:
    inc sp
    ld b, $34
    dec [hl]
    ld [hl], $37
    jr c, jr_01a_7f56

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_01a_7f25:
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

jr_01a_7f35:
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

jr_01a_7f45:
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

jr_01a_7f56:
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
    ld hl, sp-$19
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $6b02
    inc bc
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
