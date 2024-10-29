SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

jr_01f_4000:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    ret nz

    jr nz, jr_01f_4000

    sub b
    ldh a, [$c8]
    ld hl, sp+$66
    cp $39
    rst $38
    jr c, @+$01

    sbc h
    rst $38
    rst $08
    rst $38
    ld h, a
    rst $38
    nop
    di
    nop
    ld sp, hl
    nop
    db $fc
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
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    ld b, $06
    rrca
    rrca
    ld b, $06
    add $3f
    rst $38
    rst $38
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    ld e, [hl]
    cp [hl]
    ld a, [hl]
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $18
    db $10
    ret nz

    inc c
    ldh [rTAC], a
    ldh a, [$03]
    ld hl, sp+$01
    ld hl, sp+$00
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
    cp $00
    rst $18
    nop
    ld [hl], a
    nop
    dec a
    nop
    inc c
    nop
    rlca
    nop
    ld bc, $4000
    ld bc, $0020
    db $10
    dec bc
    nop
    add b
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
    db $f4
    nop
    dec bc
    nop
    rst $38
    nop
    ret nz

    nop
    ld bc, $5000
    nop
    nop
    nop
    inc bc
    nop

jr_01f_40c9:
    jr nz, jr_01f_40cb

jr_01f_40cb:
    nop
    nop
    nop

jr_01f_40ce:
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
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_01f_40ce

    adc b
    ld hl, sp-$3c
    db $fc
    ld [c], a
    cp $f1
    rst $38
    ld a, b
    rst $38
    cp h
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    nop
    reti


    nop
    db $ed
    nop
    or $00
    ei
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $8101
    add c
    add c
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
    add b
    add b
    add c
    add c
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    add b
    rrca
    ret nz

    rlca
    jr nz, jr_01f_4139

    or b
    inc bc
    ret c

jr_01f_4139:
    inc bc
    ret z

    inc bc
    ld [hl], h
    inc bc
    ld [hl], b
    add e
    jr nc, jr_01f_40c9

    nop
    rst $08
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    di
    nop
    ei
    ld [bc], a
    ld sp, hl
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
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld e, a
    nop
    ccf
    adc b
    rlca
    db $10
    rlca
    nop
    rst $30
    nop
    ld a, a
    nop
    ei
    nop
    rst $38
    nop
    push hl
    nop
    inc bc

jr_01f_417a:
    nop
    rst $38
    nop
    add sp, $00
    rrca
    ret nz

    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1fff
    rst $38
    ldh a, [$f7]
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_01f_417a

    db $10
    ldh a, [$8c]
    db $fc
    jp nz, Jump_000_10fe

    pop hl
    inc b
    ldh a, [rSC]
    ld a, h
    nop
    ld a, $00
    sbc a
    nop
    rst $28
    nop
    ld [hl], a
    nop
    cp e
    nop
    call c, $ef00
    nop
    rst $30
    nop
    ei
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    rlca
    nop
    adc a
    nop
    rlca
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
    inc b
    di
    ld a, $01
    ld e, $40
    adc a
    jr nz, @+$49

    nop
    inc hl
    add b
    ld sp, $18c0
    jp nz, $e10c

    ld c, $f0
    rlca
    ld hl, sp+$03
    ld hl, sp+$01
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    sbc a
    nop
    rrca
    nop
    rrca
    nop
    rlca
    add b
    inc bc
    nop
    rlca
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
    ld bc, $0002
    inc bc
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [$0900], sp
    ld a, [bc]
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
    dec c
    nop
    nop
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    nop
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_01f_4274

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    nop
    nop
    nop

jr_01f_4274:
    nop
    nop
    nop
    nop
    nop
    ld h, $00
    daa
    jr z, jr_01f_42a7

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
    ld h, $00
    dec l
    ld l, $2f
    jr nc, jr_01f_42c1

    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    nop
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_01f_42db

    nop
    nop
    nop
    nop
    nop

jr_01f_42a7:
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e

jr_01f_42c1:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, b

jr_01f_42db:
    ld d, c
    nop
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    nop
    ld e, h
    ld e, l
    nop
    ld e, [hl]
    ld e, a
    ld h, b
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    nop
    ld h, l
    nop
    ld h, [hl]

Call_01f_4302:
    ld h, a
    ld l, b
    ld l, c
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld d, h
    ld [hl], h
    nop
    ld [hl], l
    nop
    nop
    nop
    halt
    ld l, c
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    ld c, [hl]
    ld c, [hl]
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
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
    inc bc
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
    inc bc
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
    inc bc
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
    inc bc
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
    inc bc
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
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    nop
    nop
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
    ld bc, $0101
    ld bc, $0000
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
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
    ccf
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop

Call_01f_44d5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    jr nz, jr_01f_44df

jr_01f_44df:
    jr nz, @+$05

    jr nz, jr_01f_44ea

    jr nz, jr_01f_44ec

    jr nz, jr_01f_4522

    ld b, b
    dec a
    ld b, b

jr_01f_44ea:
    ld a, $00

jr_01f_44ec:
    dec sp
    add b
    dec sp
    add b
    dec e
    add b
    dec e
    nop
    rlca
    nop
    rra
    nop
    ld c, e
    nop
    dec hl
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38

jr_01f_450e:
    xor a
    rst $38
    nop
    rst $28
    nop
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
    rst $28

jr_01f_4522:
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    db $fc
    nop
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
    nop
    rst $38
    inc bc
    ldh a, [$03]
    jr nz, @+$03

    jr nz, jr_01f_454c

    jr nz, jr_01f_450e

    nop
    ret


    nop
    call $c900
    nop
    ret c

    nop
    db $dd
    ld [bc], a

jr_01f_454c:
    db $dd
    nop
    call z, Call_000_1800
    nop
    and b
    nop
    sub [hl]
    nop
    cp d
    nop
    inc l
    ld b, b
    add [hl]
    nop
    sbc e
    nop
    sbc l
    ld b, b
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
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    nop
    rlca
    nop
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
    add b
    ld a, [hl]
    add b
    ld a, $80
    ld a, $c0
    ccf
    nop
    daa
    ld b, b
    rlca
    ld d, b
    ld b, a
    db $10
    ld b, a
    jr nc, jr_01f_45e0

    jr nc, @+$09

    jr nc, @+$09

    jr nc, jr_01f_45e6

    jr nz, jr_01f_45ec

    jr nz, jr_01f_45ee

    jr nz, jr_01f_4614

    nop
    ld h, l
    db $10
    ld h, l
    db $10
    ld h, l
    nop
    inc hl
    nop
    and e
    stop
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
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    nop
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
    nop
    rst $38

jr_01f_45ce:
    nop
    rst $38

jr_01f_45d0:
    nop
    rst $38

jr_01f_45d2:
    nop
    rst $38
    rst $38
    nop
    ld hl, sp+$00
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01f_45e0:
    nop
    rst $38
    nop
    rst $38
    jr c, jr_01f_45e6

jr_01f_45e6:
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop

jr_01f_45ec:
    ld a, a
    nop

jr_01f_45ee:
    ld a, [hl]
    nop
    ccf
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    sbc [hl]
    nop
    rst $18
    nop
    rst $18
    jr nz, jr_01f_45ce

    jr nz, jr_01f_45d0

    jr nz, jr_01f_45d2

    db $10
    rst $08
    jr nc, jr_01f_45ce

    db $10
    rst $00
    ld [$08c3], sp
    jp $e00c


    inc c
    nop
    nop
    nop
    nop

jr_01f_4614:
    nop
    nop
    nop
    nop
    rst $38
    nop
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
    inc a
    add e
    nop
    add d
    nop
    ld a, $00
    cp [hl]
    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, $00
    ccf
    nop
    ld a, $00
    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    ccf
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and c
    nop
    db $10
    ld b, b
    stop
    ld [$0400], sp
    nop
    ld b, $00
    inc bc
    add b
    add hl, bc
    add b
    ld bc, $0040
    ldh a, [rP1]
    and b
    nop
    ld h, b
    nop
    ld [de], a
    nop
    ld e, $00
    adc h
    nop
    xor [hl]
    nop
    or $08
    db $f4
    nop
    ld a, [$f804]
    nop
    db $fd
    ld [bc], a
    ld a, l
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
    nop
    rst $38
    jp $3f3f


    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld hl, sp+$07
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
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
    ld bc, $07fc
    ld hl, sp-$08
    ld bc, $3f00
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
    ld c, e
    ld [bc], a
    ld [hl], b
    inc bc
    jr nc, @+$06

    db $10
    ld [bc], a
    ld [$4c00], sp
    nop
    xor [hl]
    nop
    ld a, e
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
    ld b, $00
    rrca
    nop
    rla
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    ld [$f8f0], sp
    nop
    add b
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
    jr nc, jr_01f_4721

jr_01f_4721:
    ld [$8400], sp
    nop
    ld [bc], a
    add b
    dec b
    ret nz

    ld [bc], a
    jr nz, jr_01f_472d

    add b

jr_01f_472d:
    nop
    jr jr_01f_4730

jr_01f_4730:
    nop
    nop
    nop
    add b
    ld [bc], a
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fd
    nop
    cp $00
    cp l
    nop
    ld d, $00
    ld a, [de]
    nop
    add hl, bc
    nop
    inc b
    nop
    add [hl]
    rlca
    ld hl, sp+$01
    ld a, $00
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_01f_4773

    nop
    inc bc
    nop

jr_01f_4773:
    rst $38
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
    add e
    nop
    nop
    nop
    stop
    ld b, h
    nop
    db $e3
    nop
    pop af
    nop
    ld a, b
    nop
    sbc h
    nop
    ld l, $00
    ld a, $00
    ld bc, $4200
    nop
    jr nz, jr_01f_4799

jr_01f_4799:
    stop
    ld [$0400], sp
    nop
    ld b, $00
    ld bc, $0000
    inc b
    nop
    nop
    and b
    nop
    ld h, b
    nop
    ld h, b
    nop
    and b
    nop
    ret nc

    cp $01
    rst $38
    nop
    nop
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld bc, $063f
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ret nz

    ccf
    ccf
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
    ld [bc], a
    nop
    rlca
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    add e
    nop
    pop bc
    nop
    ld sp, $1800
    nop
    inc c
    nop
    add [hl]
    add b
    ld b, c
    ld b, b
    jr nc, jr_01f_4819

    jr jr_01f_480b

    ld c, $00
    rla
    nop
    dec bc
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

jr_01f_480b:
    ld a, [bc]
    adc b
    inc b
    add b
    ld [bc], a
    nop
    dec a
    ret nz

    nop
    nop
    nop
    nop
    ld hl, sp+$00

jr_01f_4819:
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    nop
    jr nc, @+$01

    ld bc, $033f
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    nop
    ld c, $00
    add c
    nop
    ldh [rP1], a
    jr nc, jr_01f_485b

jr_01f_485b:
    inc e
    nop
    rlca
    nop
    add c
    db $10
    ret nz

    nop
    ld [hl], b
    nop
    jr c, jr_01f_4867

jr_01f_4867:
    inc e
    nop
    dec bc
    nop
    add e
    nop
    ld hl, $1900
    nop
    adc a
    nop
    ld a, [hl]
    nop
    ccf
    nop
    inc bc
    nop
    ret nz

    nop
    rst $38
    nop
    rlca
    nop
    nop
    ld [$80f7], sp
    rst $38
    inc [hl]
    ei
    jr @+$01

    rlca
    rst $38
    inc bc
    ld a, a
    nop
    rra
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    ld e, a
    nop
    scf
    nop
    rrca
    nop
    rlca
    nop
    add c
    nop
    ret nc

    nop
    ld [hl], b
    nop
    stop
    inc c
    nop
    ld b, $00
    add e
    nop
    ret nz

    nop
    rst $20
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    add b
    nop
    add sp, $00
    ld a, a
    nop
    inc bc
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    add b
    ld [bc], a
    ldh a, [rP1]
    inc b
    jr c, jr_01f_48e2

jr_01f_48e2:
    ld a, h
    ret nz

    ld a, a
    ldh a, [$7f]
    db $fc
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
    nop
    nop
    nop
    ld h, a
    nop
    rra
    nop
    ld bc, $0000
    cp a
    ld b, b
    sbc a
    nop
    or b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ret nc

    nop
    db $fc
    nop
    ei
    nop
    cp $00
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
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $8000
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
    nop
    nop
    pop hl
    nop
    rst $38
    nop
    ccf
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    inc e
    nop
    ccf
    cp a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    rrca
    ccf
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld a, a
    add b
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
    dec b
    nop
    add sp, $00
    ld b, h
    nop
    nop
    nop
    add b
    nop
    or c
    nop
    rst $20
    nop
    rst $38
    nop
    sbc $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    ei
    nop
    cp a
    nop
    rst $08
    nop
    inc hl
    nop
    sub b
    nop
    jr z, jr_01f_49cf

jr_01f_49cf:
    inc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cpl
    nop
    pop af
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld [hl], b
    nop
    cp $00
    sbc a
    nop
    add c
    nop
    add b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    di
    rst $18
    rst $38
    rla
    ccf
    rlca
    rrca
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
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    add b
    nop
    add b
    nop
    stop
    stop
    add c
    nop
    db $ec
    nop
    cp h
    nop
    db $fd
    nop
    rst $38
    nop
    rst $20
    nop
    adc [hl]
    nop
    cp $00
    rst $38
    nop
    cp a
    nop
    adc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    db $e3
    nop
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    rst $30
    nop
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, a
    nop
    rra
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
    inc bc
    nop
    add b
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    ccf
    rlca
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld b, b
    nop
    pop bc
    nop
    ld bc, $1100
    nop
    dec hl
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    rst $00
    nop
    rlca
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    add a
    nop
    jp $ff00


    nop
    rst $38
    nop
    sbc a
    nop
    ld b, a
    nop
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    ret nc

    nop
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
    inc de
    nop
    ld bc, $8000
    nop
    ld hl, sp+$00
    rst $38
    nop
    ccf
    nop
    dec b
    nop
    ld bc, $0100
    nop
    nop
    nop
    xor $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rra
    ccf
    rlca
    rrca
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
    ldh a, [rP1]
    rst $38
    nop
    rrca
    ldh a, [rP1]
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    ld a, a
    inc c
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    db $e3
    nop
    db $e3
    nop
    jp $e100


    nop
    rst $38
    nop
    rst $38
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
    rlca
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rra
    nop
    and a
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld e, $00
    adc $00
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
    ld a, a
    rst $38
    rra
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    db $e3
    nop
    rst $38
    nop
    ccf
    jr c, jr_01f_4bc1

    nop
    rst $38
    nop

jr_01f_4bc1:
    rst $38
    nop
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
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
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    nop
    ret nz

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
    db $fc
    nop
    ld a, h
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ei
    ld bc, $00f8
    ld hl, sp+$00
    db $fc
    nop
    ld a, [$f800]
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    ld a, $00
    rrca
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
    rst $30
    nop
    or $00
    ld a, l
    nop
    rst $28
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    cp $ff
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
    ldh a, [rP1]
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
    rlca
    ldh [rP1], a
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
    db $fc
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [$00c0], sp
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    db $eb
    nop
    db $fc
    nop
    rst $38
    nop
    rst $18
    nop
    di
    rst $38
    rst $38
    rra
    ccf
    rlca
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
    ld b, b
    daa
    ld c, h
    jr nc, jr_01f_4d45

    ld a, $40
    ccf
    ld b, b
    rra
    ld b, b
    rra
    ld b, b
    rra
    nop
    ccf
    nop
    sbc a
    ld b, b
    rra
    ld b, b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    nop
    rra
    nop
    rra
    nop
    sbc a
    nop
    ld e, a
    nop
    rst $18
    nop
    sbc a
    nop
    sbc a
    nop
    add e
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01f_4d45:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    and e
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
    ld bc, $0302
    inc b
    dec b
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
    rlca
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
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_01f_4d90

jr_01f_4d90:
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    jr nz, jr_01f_4dc3

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    daa
    jr z, jr_01f_4ddc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    ld l, $2f

jr_01f_4dc3:
    jr nc, jr_01f_4df6

    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01f_4e07

    nop
    nop
    nop
    nop
    ld a, [hl-]
    dec sp
    inc a
    inc a
    inc a
    dec a
    ld a, $3e
    ccf
    ld b, b

jr_01f_4ddc:
    ld b, c
    ld b, d
    nop
    nop
    nop
    nop
    ld b, e
    ld b, h
    inc a
    inc a
    inc a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    nop
    nop
    nop
    ld a, [de]
    ld c, h
    ld c, l
    inc a
    inc a

jr_01f_4df6:
    inc a
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    inc a
    inc a
    inc a
    ld d, a

jr_01f_4e07:
    ld a, $3e
    ld a, $58
    ld e, c
    ld e, d
    ld e, e
    nop
    nop
    nop
    ld e, h
    ld e, l
    inc a
    inc a
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld c, d
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    inc a
    inc a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld c, d
    ld l, h
    ld l, l
    ld l, [hl]
    ld h, l
    nop
    nop
    ld l, a
    ld [hl], b
    inc a
    inc a
    inc a
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld c, d
    ld [hl], l
    db $76
    ld [hl], a
    ld h, l
    nop
    ld a, b
    ld a, c
    ld a, d
    inc a
    inc a
    inc a
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld h, l
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
    nop
    nop
    nop
    nop
    ld a, [de]
    sub h
    add l
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
    ld c, d
    ld c, d
    ld c, d
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
    ld c, d
    ld c, d
    xor h
    xor l
    xor [hl]
    xor a
    or b
    ld c, d
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
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
    ld bc, $0002
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    nop
    nop
    ld b, $00
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    ld b, $00
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0106
    ld bc, $0101
    ld bc, $0101
    ld hl, $2101
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
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
    ret nz

    jp nc, $e780

    ret nz

    db $eb
    pop hl
    xor a
    and c
    cp h
    and b
    ld a, [$bab0]
    and b
    xor a
    inc bc
    ld e, a
    ld bc, $5d5f
    ld a, a
    ld a, l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    add hl, sp
    ld a, a
    ld a, c
    ld a, a
    ld a, c
    rst $38
    ld [hl], e
    rst $38
    adc a
    ld l, a
    rrca
    rra
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$10
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rra
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
    rlca
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
    ei
    ei
    ld sp, hl
    ei
    ld sp, hl
    rst $38
    db $fc
    rst $38
    cp $f6
    or $ff
    and $c6
    call nz, $80e7
    rst $28
    ret nz

    ld [$dec2], a
    ret nz

    call z, $998c
    sub c
    sub l
    sub c
    sub l
    sub c
    sbc a
    ld bc, $09ab
    ei
    jr c, @+$01

    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$10
    nop
    rrca
    nop
    rst $38
    nop
    db $fc
    nop
    add e
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
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    db $e3
    rst $30
    ld [hl], c
    ei
    ld [hl], c
    ld sp, hl
    ld [hl], c
    db $fd
    ld l, b
    db $fd
    ld hl, sp-$03
    ld hl, sp-$01
    ld hl, sp-$01
    push de
    rst $18
    sub l
    rst $18
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc l
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$e0]
    nop
    rra
    nop
    rst $38
    nop
    ldh [rP1], a
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
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    xor $fe
    adc [hl]
    cp $c6
    cp $6e
    cp $ec
    db $fc
    and b
    db $fc
    and b
    db $fc
    call nc, $dcfc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$e0]
    nop
    rra
    nop
    db $fc
    nop
    add e
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
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
    ld bc, $00ff
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
    cp a
    dec l
    rst $38
    dec a
    ld a, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld l, a
    ld [hl+], a
    xor $24
    db $ec
    and h
    xor $ec
    xor $2c
    ei
    ld a, b
    ei
    pop af
    ei
    ld [hl], c
    rst $38
    pop de
    rst $38
    or e
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    ccf
    nop
    ldh [rP1], a
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
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    nop
    rst $38
    ret nz

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
    rst $18
    rst $38
    rst $38
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
    ret nz

    ret nz

    nop
    inc a
    nop
    add e
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
    cp $ff
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
    rrca
    rst $38
    rlca
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
    ldh [rIE], a
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
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld sp, hl
    db $ed
    db $ed
    db $fd
    ret


    rst $38
    db $dd
    db $fd
    db $dd
    rst $38
    call Call_01f_5fdf
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ldh [$80], a
    nop
    ld h, b
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00fe
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
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc

Call_01f_52ff:
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
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$80
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
    rst $38
    rst $38
    rst $38
    rst $20
    rst $28
    push hl
    rst $38
    rst $28
    rst $38
    or $ff
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
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    add b
    nop
    inc bc
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
    inc bc
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
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
    rlca
    nop
    rlca

Call_01f_53ac:
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $20
    rst $28
    ld h, a
    rst $38
    rst $20
    rst $38
    and a
    rst $28
    xor a
    rst $38
    cpl
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_01f_53ff:
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $fe
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
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    db $fc
    nop
    push hl
    nop
    rst $38
    nop
    db $fc
    nop
    db $f4
    db $e4
    rst $38
    add sp, -$01
    db $e4
    rst $38
    ret nc

    rst $38
    add sp, -$01
    push de
    cp $e8
    rst $38
    call nc, $e8ff
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    nop
    ldh a, [rP1]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    rst $38
    nop
    add c
    ld a, [hl]
    ld bc, $01c2
    ld [bc], a
    ld bc, $0122
    jp nz, Jump_000_0201

    ld bc, $0102
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld b, $01
    ld b, $01
    cp $01
    adc $01
    adc $01
    xor $01
    xor $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $38
    ld bc, $09ff
    cp $09
    cp $f1
    rst $38
    pop hl
    rst $38
    add c
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    ld b, $01
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
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, [$fa07]
    rlca
    ld a, [$fe07]
    rst $38
    cp $ff
    or $b7
    rst $30
    and a
    cp a
    cpl
    cp a
    cpl
    xor a
    daa
    xor a
    daa
    cp a
    scf
    cp a
    or a
    ld a, a
    scf
    ld a, a
    ccf
    ld [hl], a
    daa
    rst $30
    or a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
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
    inc bc
    nop
    ld a, b
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fc
    ld b, b
    add b
    ld b, b
    add b
    rst $20
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    ret nz

    rst $38
    add b
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    db $f4
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $e3
    db $e3
    daa
    daa
    ld h, e
    ld h, e
    inc sp
    inc sp
    ld [hl-], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    dec sp
    dec sp
    rst $38
    rst $38
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
    cp $fe
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
    ld c, $01
    db $e3
    rra
    ld a, a
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
    rst $38
    ld b, $f8
    nop
    nop
    ld bc, $e700
    rra
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
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld b, e
    rst $38
    ldh a, [$f0]
    rrca
    rrca
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
    ld b, b
    rst $38
    sub h
    rst $38
    call nz, Call_01f_52ff
    rst $38
    jp nc, $faff

    rst $38
    or $ff
    jp nc, $daff

    rst $38
    db $db
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
    db $fc
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_01f_56f9

    rrca
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

jr_01f_56f9:
    rst $38
    nop
    rst $38
    ld c, $f0
    rlca
    nop
    inc e
    inc bc
    sbc a
    ld a, a
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
    rst $38
    nop
    ldh [$1f], a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr z, @+$01

    cpl
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $20ff
    rst $38
    and b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    di
    rst $38
    ld a, e
    rst $38
    ld [hl], l
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, d
    rst $38
    ld a, l
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    add b
    rlca
    nop
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld l, a
    ldh a, [$7f]
    ld h, b
    rst $28
    ld [hl], b
    rst $28
    ldh a, [$fc]
    di
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, a
    ldh a, [$7f]
    ld hl, sp+$7f
    db $fc
    ccf
    cp $3f
    rst $38
    ld a, $fe
    add hl, sp
    cp $ff
    jr c, jr_01f_57f8

    ld hl, sp+$3b
    db $fc
    ld a, [$fcfd]
    rst $38
    cp $ff
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
    rst $18
    rst $38
    rst $38
    rst $38
    ld [$ff08], sp
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
    ld [$06ff], sp
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld d, $ff
    ld b, [hl]
    rst $38
    jp $c6ff


    rst $38
    rst $00
    rst $38

jr_01f_57f8:
    rst $10
    rst $38
    rst $10
    rst $38
    rst $28
    rst $38
    set 7, a
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    pop af
    nop
    db $e3
    nop
    db $e3
    nop
    rst $00
    nop
    rst $00
    nop
    adc a
    nop
    adc a
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [$9f], a
    add b
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    ld hl, sp+$01
    add b
    rlca
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
    inc bc
    rst $38
    db $e3
    rra
    db $e3
    rra
    ei
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    cp a
    pop hl
    rra
    pop hl
    rra
    db $e3
    rra
    rst $20
    rra
    inc bc
    rst $38
    rrca
    rst $38
    ld b, e
    cp a
    rst $00
    ccf
    rlca
    rst $38
    adc a
    ld a, a
    inc hl
    rst $38
    daa
    rst $38
    ld e, a
    rst $38
    inc sp
    rst $38
    ld l, a
    rst $38
    dec sp
    rst $38
    or e
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
    rrca
    rst $38
    rst $38
    rst $38
    ld bc, $40ff
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    ld a, [hl]
    ld a, [hl]
    ei
    ei
    ld hl, sp-$07
    ld a, h
    ld a, l
    call nc, Call_01f_44d5
    ld b, l
    ld a, b
    rst $38
    ld d, b
    rst $38
    call c, Call_01f_5dff
    rst $38
    ld sp, hl
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    db $ec
    rst $38
    rst $38
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
    rst $38
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    ld a, a
    add a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ccf
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp $3f
    cp $7f
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $20
    ld a, a
    rst $28
    ld a, a
    xor $bf
    db $ed
    rst $38
    cp $7f
    cp $7f
    cp $ff
    cp $ff
    cp $7f
    ld a, [c]
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    db $fd
    ccf
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    cp a
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
    cp $ff
    rst $38
    rst $08
    inc bc
    rst $08
    ld bc, $01cf
    rst $08
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    jp $c300


    nop
    jp $c300


    nop
    jp $ff00


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
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
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
    ld a, [hl]
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $30
    or $ff
    db $fc
    rst $38
    call z, $f4ff
    rst $38
    cp h
    rst $38
    ld a, [hl]
    cp $ea
    cp $ea
    ld a, [hl]
    ld l, d
    cp $4a
    cp $aa
    cp $aa
    cp $b7
    rst $38
    rst $30
    rst $38
    and a
    rst $30
    and a
    rst $38
    jp Jump_01f_53ff


    ei
    set 5, a
    ld c, e
    rst $38
    ld [$c3ff], a
    rst $38
    and c
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    rst $30
    ld [hl], l
    rst $30
    ld [hl], l
    rst $30
    ld [hl], l
    rst $38
    push af
    rst $38
    push af
    rst $38
    or e
    rst $38
    pop af
    ei
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld h, c
    rst $38
    jr nc, @+$01

    add hl, sp
    rst $38
    dec de
    rst $38
    dec e
    rst $38
    rra
    rst $38
    rrca
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    push hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld e, a
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
    rst $18
    rst $18
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld a, a
    ld b, a
    ld l, a
    ld c, a
    ld l, a
    ld b, a
    ld l, a
    ld h, a
    ld l, a
    ld l, l
    ld l, a
    dec l
    cpl
    dec b
    or a
    dec b
    or a
    dec d
    or a
    rla
    or a
    rla
    or a
    rla
    or e
    sub a
    sub e
    add e
    db $db
    adc e
    db $db
    db $db
    db $db
    db $d3
    db $db
    jp $c9db


    rst $38
    ret


    db $fd
    db $ed
    db $fd
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, l
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
    rst $38
    rst $38
    rst $28
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    ld bc, $0c0b
    dec c
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_01f_5b86

jr_01f_5b86:
    ld bc, $1a19
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01f_5bb1

    inc d
    inc d
    inc d
    inc d
    inc d
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01f_5bc6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01f_5bd6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01f_5be6

    ld a, [hl-]
    dec sp
    inc d
    rlca

jr_01f_5bb1:
    inc a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld a, $37
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec a
    dec a
    dec a
    dec a

jr_01f_5bc6:
    dec a
    dec a
    dec a
    ld b, [hl]
    scf
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    dec a
    dec a
    dec a
    dec a

jr_01f_5bd6:
    dec a
    dec a
    dec a
    ld b, [hl]
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    inc d
    inc d
    ld d, d
    ld d, e
    dec a
    dec a
    dec a
    dec a

jr_01f_5be6:
    dec a
    dec a
    dec a
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    inc d
    inc d
    ld e, c
    rlca
    ld e, d
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld e, e
    scf
    ld e, h
    ld e, l
    ld e, [hl]
    inc d
    inc d
    inc d
    ld b, h
    ld e, a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    inc d
    inc d
    inc d
    ld c, h
    ld h, [hl]
    dec a
    dec a
    dec a
    dec a
    dec a
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc d
    inc d
    inc d
    ld d, d
    ld l, l
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld h, l
    inc d
    inc d
    ld [hl], d
    ld [hl], e
    ld [hl], h
    cpl
    ld [hl], l
    ld sp, $3131
    ld [hl-], a
    db $76
    ld [hl], a
    nop
    ld a, b
    inc d
    inc d
    inc d
    ld a, c
    ld a, d
    ld a, e
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    inc d
    inc d
    ld a, d
    ld a, e
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    add c
    add d
    add e
    add h
    add l
    inc d
    inc d
    ld a, e
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    add [hl]
    add a
    adc b
    adc c
    adc d
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
    adc e
    adc h
    adc l
    adc [hl]
    adc a
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
    sub b
    sub c
    sub d
    sub e
    sub h
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
    ld e, c
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    inc d
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
    ld bc, $0101
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0304
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $2101
    ld bc, $2121
    ld hl, $0121
    ld b, $01
    ld b, $01
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
    ld hl, $0101
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

Call_01f_5dff:
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $18
    ldh [rIE], a
    ldh [rIE], a
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$03
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    cp $fa
    cp $fa
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
    inc bc
    rst $38
    inc bc
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
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
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
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $fd
    db $f4
    rst $38
    sub $ff
    sub $ff
    sub [hl]
    rst $38
    sbc $ff
    ld e, [hl]
    rst $38
    cp [hl]
    ei
    cp e
    rst $38
    cp a
    rst $38
    cp a
    cp a
    ccf
    ccf
    ccf
    cp a
    cp a
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    ld e, l
    rst $38
    ld a, l
    rst $38
    ld e, l
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    rst $38
    ld [hl], a
    rst $38
    ld [hl], h
    rst $38
    inc a
    rst $38
    inc l
    rst $38
    dec a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add e
    rst $38
    jp $e1ff


    rst $38
    pop hl
    rst $38
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
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    db $dd
    db $dd
    db $dd
    db $dd
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    db $db
    cp e
    cp e
    cp d
    cp d
    cp d
    cp d
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp a
    cp [hl]
    cp l
    cp h
    db $fd
    ld a, h
    db $fd
    ld e, h
    db $fc
    ld e, b
    ld a, $38
    ld a, [hl]
    jr c, jr_01f_6045

    jr c, jr_01f_6046

    jr c, jr_01f_6048

    ld [hl], h
    rst $38
    di
    db $fd
    ldh a, [$fd]
    pop af
    rst $38
    di
    rst $38
    di
    ei
    di
    ei
    di
    ei
    ei
    ei
    ld a, e
    rst $38

Call_01f_5fdf:
    ld a, e
    rst $38
    ld l, e
    rst $38
    ld h, a
    rst $38
    ld h, l
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    db $76
    rst $38
    ld a, [hl]
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
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
    ldh [rIE], a
    ldh [rIE], a
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
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $38

jr_01f_6045:
    rst $08

jr_01f_6046:
    rst $38
    rst $00

jr_01f_6048:
    rst $38
    rst $20
    rst $38
    di
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    db $fd
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
    ei
    rst $38
    push af
    rst $38
    di
    rst $38
    db $eb
    cp a
    sbc e
    cp a
    sbc e
    cp a
    sbc e
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sbc e
    rst $18
    sbc e
    rst $38
    xor e
    rst $38
    xor e
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $28
    xor a
    rst $38
    cp a
    rst $38
    xor $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    cp $c0
    cp $80
    cp $80
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    pop af
    nop
    pop af
    nop
    pop af
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
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    add b
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
    db $fd
    db $fd
    db $fd
    push af
    db $fd
    or l
    db $fd
    or l
    db $fc
    or h
    cp $b6
    cp $ba
    rst $38
    cp c
    rst $30
    sub a
    rst $30
    sub a
    rst $30
    sub e
    rst $30
    sub l
    rst $38
    rst $18
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
    sbc a
    nop
    sbc a
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
    ld a, a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    db $dd
    db $dd
    cp e
    cp e
    ld e, c
    ld e, c
    cp $f8
    push af
    ldh a, [$ee]
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    pop af
    ld a, a
    ld [hl], l
    cp $f6
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
    rst $20
    nop
    di
    nop
    di
    nop
    pop af
    nop
    pop af
    nop
    ld sp, hl
    nop
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
    nop
    nop
    nop
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
    rst $18
    rst $18
    rst $38
    rst $08
    rst $38
    ld c, e
    ei
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld h, a
    ld a, a
    daa
    cp a
    and a
    rst $38
    rst $20
    cp a
    and [hl]
    rst $38
    and $af
    xor c
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    nop
    ldh [rP1], a
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
    ccf
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
    add a
    nop
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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
    rst $30
    rst $30
    or a
    or e
    push af
    and c
    xor a
    and a
    rst $38
    and $fe
    ld [$eaff], a
    rst $38
    ld [$d2ff], a
    rst $38
    sub e
    rst $38
    db $d3
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    ld a, e
    rst $28
    ld c, a
    rst $30
    rst $00
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $18
    call c, $fcff
    rst $38
    ld a, d
    rst $38
    ld h, d
    rst $38
    db $76
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rTAC], a
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
    nop
    nop
    nop
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
    rst $18
    rst $10
    rst $38
    or $df
    sub [hl]
    rst $38
    or [hl]
    ld a, l
    inc h
    rst $38
    or d
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    call $68ff
    rst $38
    ld b, e
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    ld bc, $fd00
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
    db $fc
    ld [bc], a
    db $fd
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
    rrca
    rst $38
    rrca
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
    ld a, a
    ld a, a
    cp a
    cp a
    rst $38
    rst $38
    cp a
    cp a
    rst $18
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
    rrca
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ld bc, $0001
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
    rrca
    ret nz

    ld a, b
    nop
    ld a, d
    nop
    dec [hl]
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor e
    inc bc
    ld e, a
    rrca
    sbc a
    sbc a
    nop
    rrca
    nop
    inc l
    nop
    inc c
    nop
    dec l
    nop
    dec l
    nop
    dec [hl]
    nop
    dec [hl]
    ld sp, $0035
    inc b
    nop
    inc b
    db $10
    inc d
    jr nc, jr_01f_64bf

    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    add [hl]
    and $86
    add $86
    add $86
    add $86
    and $c6
    or $e6
    cp $66
    ld a, a
    rst $00
    add $ff
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rrca
    nop
    nop
    nop

jr_01f_64bf:
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    xor b
    nop
    ld d, h
    nop
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld [hl], l
    inc b
    ld [hl], l
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$1f]
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    add b
    rlca
    ret nz

    nop
    add b
    nop
    cp a
    nop
    add b
    nop
    cp a
    rrca
    or b
    nop
    ccf
    nop
    ld a, a
    ld a, a
    ld a, a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0505
    rrca
    rst $28
    rst $38
    rlca
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
    cp $ff
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
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp+$3f
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $00
    cp $8f
    cp $1f
    cp $3f
    cp $3f
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    sbc a
    ld e, a
    sbc a
    ld e, a
    sbc a
    rra
    rst $18
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    ld hl, sp-$40
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
    rst $38
    nop
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
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp [hl]
    or a
    or [hl]
    or a
    or [hl]
    or a
    ld [hl], $b6
    inc [hl]
    ei
    or c
    rst $38
    reti


    rst $38
    db $db
    rst $38
    and b
    rst $38
    cp [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    ld a, a
    ld a, e
    ld a, a
    ld a, e
    rst $38
    ei
    rst $38
    ld a, [$faff]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    nop
    ld b, b
    nop
    add e
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
    rst $38
    ld hl, sp-$01
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
    db $fd
    cp $7c
    cp $7c
    cp $7c
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    sbc $5c
    sbc $5c
    db $fd
    ld a, h
    rst $38
    rst $38
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    rra
    ccf
    nop
    ret nz

    nop
    rrca
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    ldh a, [rIE]
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
    or d
    rst $20
    and b
    rst $00
    add b
    rst $20
    and [hl]
    db $e3
    jp nz, $c2e3

    di
    jp nc, $d2f3

    ei
    jp c, $eafb

    ei
    db $eb
    rst $38
    rst $28
    rst $38
    db $76
    rst $38
    or [hl]
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rra
    nop
    ldh [rP1], a
    ld a, a
    nop
    add c
    nop
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fa
    cp $fa
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    ld b, e
    rst $38
    ld d, e
    rst $38
    ld d, e
    rst $28
    ld b, e
    rst $28
    ld b, e
    rst $28
    ld c, e
    rst $38
    ld e, e
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rra
    nop
    ldh [rP1], a
    rst $38
    nop
    rlca
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
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld [bc], a
    ld [bc], a
    dec bc
    inc c
    dec c
    ld c, $0f
    ld [bc], a
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $02
    ld [bc], a
    ld [bc], a
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01f_67f0

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld l, $2f
    jr nc, jr_01f_6804

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01f_67df

    ld [bc], a
    ld [bc], a

jr_01f_67df:
    ld [bc], a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    jr nc, jr_01f_682b

    ld b, d
    ld b, e
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_01f_67ef:
    ld [bc], a

jr_01f_67f0:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, b
    jr nc, jr_01f_6833

    ld d, c

jr_01f_6804:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld [bc], a

jr_01f_680e:
    ld [bc], a
    ld [bc], a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    jr nc, jr_01f_687d

    ld h, h
    ld h, l
    ld h, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    jr nc, @+$71

    ld [hl], b

jr_01f_682b:
    ld [hl], c
    ld [hl], d

jr_01f_682d:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], e
    ld [hl], h
    ld l, c

jr_01f_6833:
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld e, h
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    ld a, a
    add b
    add c
    ld d, b
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
    ld [bc], a
    ld [bc], a
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ld l, d
    sub d
    sub e
    jr nc, jr_01f_67ef

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
    jr nc, jr_01f_680e

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
    jr nc, jr_01f_682d

    or e
    or h

jr_01f_687d:
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    ld l, c
    ld l, c
    ld l, c
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    cp b
    push bc
    ld d, b
    ld l, c
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


    jp c, $0202

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $db
    call c, $dedd
    rst $18
    ldh [rSC], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    pop hl
    ld [c], a
    db $e3
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
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec b
    ld b, $06
    ld b, $05
    dec b
    dec b
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
    dec b
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
    ld [bc], a
    ld bc, $0501
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
    ld [bc], a
    ld bc, $0501
    nop
    nop
    nop
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
    ld bc, $0501
    nop
    nop
    nop
    nop
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
    ld b, $06
    ld b, $06
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $00f8
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
    rst $38
    nop
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
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add c
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    cp $fc
    cp $f8
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $30
    rst $30
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    cp $f8
    db $fc
    ldh [$f8], a
    ret nz

    ldh a, [$80]
    pop bc
    nop
    add e
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    jp $8700


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    rst $38
    ldh a, [rIE]
    pop bc
    rst $38
    add e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, l
    ld a, a
    inc a
    ld a, a
    ld a, $bf
    ccf
    cp a
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$02
    ldh a, [$f8]
    ldh [$f0], a
    add b
    pop hl
    nop
    jp $0700


    nop
    rrca
    nop
    ccf
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    jp $8700


    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
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
    dec a
    ld a, a
    rra
    ccf
    dec d
    ccf
    rla
    ccf
    db $10
    rra
    nop
    rra
    ld [$001f], sp
    rra
    ld bc, $011f
    rrca
    ld bc, $010f
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
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$78
    rst $38
    rst $38
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
    ret nz

    rst $38
    ld c, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $28
    rst $18
    rst $08
    cp a
    sub e
    db $fd
    pop bc
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $10
    rst $38
    xor $ff
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    pop af
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    cp $f0
    db $fc
    ldh [$f8], a
    ret nz

    pop af
    add b
    jp $8700


    nop
    rrca
    nop
    ccf
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    pop bc
    nop
    add e
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
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
    ld hl, sp-$23
    rst $38
    jr @+$01

    db $ec
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    rst $38
    rst $38
    add c
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
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr @+$01

    db $10
    rst $38
    jr @+$01

    ld d, b
    rst $38
    rrca
    ld a, a
    ld bc, $207f
    ld a, a
    jr nz, jr_01f_6d0b

    ld d, $7f
    dec de
    ccf
    dec sp
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    rra
    rra
    rlca
    rra
    rlca
    rra
    inc bc
    rrca
    di
    rst $38
    pop af
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
    rlca
    rst $38
    inc bc
    cp $e3
    rst $38
    rst $38
    ei
    di
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $77
    cp $f7
    cp $fb
    cp $ff
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
    pop bc
    pop hl
    nop
    ret nz

    nop
    inc c
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
    rst $00
    nop
    add b
    nop
    nop
    nop
    inc e
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
    sub b
    rst $38
    call z, $90ff
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b

jr_01f_6d0b:
    rst $38
    ld d, a
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
    ld b, b
    rst $38
    ld hl, sp-$01
    dec bc
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $f4
    rst $38
    rst $20
    rst $38
    ldh a, [rIE]
    db $fc
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
    add c
    rst $38
    add b
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
    rst $08
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    ld h, l
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ccf
    inc bc
    rlca
    nop
    nop
    nop
    ldh [rP1], a
    cp $00
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
    inc bc
    nop
    add b
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
    nop
    nop
    nop
    nop
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

    ret z

    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ei
    ei
    rst $30
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    ld [hl], l
    ld a, l
    push af
    db $fd
    push af
    db $fd
    rst $38
    rst $38
    ei
    rst $38
    cp $fe
    cp $fe
    ld a, [$fafe]
    cp $fc
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
    ldh a, [rIE]
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    db $fd
    ldh [$f9], a
    ld sp, hl
    ld sp, hl
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fc
    inc a
    db $fc
    nop
    cp $00
    cp $00
    cp $a2
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc d
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
    ccf
    rst $38
    rlca
    rra
    nop
    inc bc
    nop
    add b
    nop
    ldh a, [rP1]
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
    inc bc
    nop
    add b
    nop
    ldh a, [rP1]
    cp $00
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
    inc bc
    rrca
    inc bc
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    add b
    adc a
    add e
    adc a
    add e
    adc a
    add e
    adc a
    add e
    adc a
    add e
    adc a
    add c
    adc a
    add c
    add a
    pop bc
    rst $00
    pop bc
    rst $00
    pop bc
    rst $00
    pop bc
    rst $00
    pop bc
    rst $00
    pop bc
    rst $00
    pop bc
    rst $00
    pop bc
    rst $00
    pop hl
    db $e3
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh a, [$f3]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    ld a, h
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    cp $ff
    cp $af
    cp $0f
    cp $ef
    rst $38
    rst $20
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
    rst $38
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
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld a, a
    inc bc
    rrca
    nop
    ld bc, $e000
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
    nop
    ld a, a
    nop
    rrca
    nop
    ld bc, $8000
    nop
    ldh a, [rP1]
    cp $00
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
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
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
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    inc bc
    ld a, a
    nop
    ld a, a
    sbc h
    rst $38
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ld sp, $3e0f
    rrca
    ccf
    rrca
    ccf
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    ccf
    rst $20
    rra
    rlca
    rra
    inc bc
    rrca
    add e
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    inc sp
    rrca
    inc bc
    rrca
    inc bc
    rrca
    jp nz, $ff0f

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
    nop
    ldh [$e0], a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    rra
    rst $38
    ldh [$1f], a
    rst $38
    ldh [rIE], a
    rst $38
    db $fc
    rst $38
    db $fc
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
    rra
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    cp $ef
    cp $ef
    cp $e7
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
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
    nop
    ld a, a
    nop
    adc a
    nop
    pop af
    add b
    cp $f0
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add e
    ld a, a
    db $fc
    add e
    rst $38
    db $fc
    rrca
    rst $38
    nop
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
    rra
    rst $38
    pop hl
    rst $38
    cp $bf
    rst $38
    cp e
    rst $38
    ei
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
    rst $38
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    or a
    rst $38
    or a
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    xor a
    rst $38
    rst $20
    rst $38
    or $ff
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $00
    nop
    ld hl, sp-$40
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$10
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    ldh [$1f], a
    rst $38
    ldh [$7f], a
    rst $38
    rlca
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
    rra
    rst $38
    pop hl
    rst $38
    cp $b5
    rst $38
    or a
    rst $38
    or [hl]
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    ld [hl], d
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    xor $ff
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    db $e3
    nop
    db $fc
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
    rlca
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add e
    ld a, a
    db $fc
    add e
    rst $38
    db $fc
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop hl
    rst $38
    cp $5f
    rst $38
    cp c
    rst $38
    cp b
    rst $38
    ret c

    rst $38
    call c, $dcff
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
    rst $28
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ccf
    nop
    rst $00
    nop
    ld hl, sp-$40
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ldh [$1f], a
    rst $38
    ldh [rIE], a
    rst $38
    rrca
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
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $28
    rst $38
    and $ff
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc $ff
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    set 7, a
    db $db
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    db $eb
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    db $e3
    nop
    db $fc
    ldh [rIE], a
    db $fc
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
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
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
    rrca
    rst $38
    ldh a, [rIF]
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
    rrca
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
    rst $38
    rra
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    adc a
    ld a, a
    rst $38
    adc a
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rrca
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
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [$df]
    rst $38
    ld l, a
    rst $38
    ld h, [hl]
    rst $38
    ld l, d
    rst $38
    ld l, e
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $dd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    pop af
    add b
    cp $f0
    sbc a
    cp $9f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, $ff
    ld e, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    inc a
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
    ld a, h
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
    rst $28
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    nop
    rst $38
    add b
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
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    ccf
    rst $38
    jr c, @+$01

    ld l, c
    rst $38
    ld [hl], c
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, [hl]
    rst $38
    and $ff
    and $ff
    rst $28
    rst $38
    xor a
    cp $bf
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    ei
    db $fd
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
    nop
    ccf
    nop
    rst $00
    nop
    ld hl, sp-$40
    rst $38
    ld hl, sp-$19
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $20
    nop
    rst $20
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
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
    nop
    nop
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
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
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
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    pop bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    adc a
    rst $38
    add a
    rst $38
    sub [hl]
    rst $38
    ld [hl], d
    ld a, a
    and [hl]
    rst $38
    and $ff
    xor [hl]
    rst $38
    db $ec
    cp $fc
    cp $fc
    cp $fc
    cp $f8

jr_01f_7629:
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    jr nz, jr_01f_7629

    ldh [rP1], a
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
    rst $30
    nop
    rst $38
    db $fc
    inc bc
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
    cp $ff
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
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
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
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    di
    cp $f3
    cp $e3
    cp $e3
    cp $e7
    db $fc
    rst $20
    db $fc
    rst $08
    db $fc
    rst $08
    ld hl, sp-$31
    ld hl, sp-$21
    ld hl, sp-$61
    ld hl, sp-$61
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    cp b
    rst $38
    cp b
    rst $38
    cp b
    cp a
    cp b
    cp a
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
    jr c, @+$01

    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld a, b
    ld a, a
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    cp $e3
    cp $c3
    cp $c7
    db $fc
    rst $00
    db $fc
    add a
    db $fc
    adc a
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    jp $83fe


    cp $83
    cp $87
    db $fc
    add a
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
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
    add b
    rst $38
    ret nz

    rst $18
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_01f_7884

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $0c
    rra
    jr nz, jr_01f_7895

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01f_78a5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01f_78b5

jr_01f_7884:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01f_78c5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_01f_7895:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    dec sp
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_01f_78a5:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, [hl-]
    ld e, c
    ld e, d
    ld c, h
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_01f_78b5:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld c, d
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

jr_01f_78c5:
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
    ld a, [hl-]
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
    inc c
    inc c
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

    inc c
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
    inc c
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
    inc c
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
    ld bc, $020c
    inc bc
    inc b
    dec b
    pop hl
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
    jr jr_01f_7992

    ld a, [de]
    dec de
    dec de
    inc e
    dec e
    ld e, $1f
    dec de
    dec de
    jr nz, jr_01f_79a5

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld h, $27
    nop
    nop

jr_01f_7992:
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $07
    rlca
    ld bc, $0201
    rlca
    nop
    nop
    nop
    nop
    nop

jr_01f_79a5:
    nop
    nop
    ld b, $01
    ld bc, $0606
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_01f_79ee

jr_01f_79ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
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
    dec b
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
    dec b
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
    dec b
    ld bc, $0901
    add hl, bc
    ld bc, $080e
    ld a, [bc]
    rrca
    ld b, $08
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0e08], sp
    ld c, $0e
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
    ld c, $0e
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ldh [rIE], a
    inc bc
    db $fc
    dec bc
    ldh a, [$03]
    ld hl, sp+$13
    add sp, -$77
    db $f4
    ld b, l
    ld hl, sp+$21
    db $fc
    ld b, c
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [$01f6], sp
    cp $04
    ei
    nop
    rst $38
    ld [hl+], a
    db $dd
    db $10
    rst $28
    xor [hl]
    ld d, c
    ld [$17f7], sp
    add sp, $1f
    ldh [rIF], a
    ldh a, [$3f]
    ret nz

    ld a, [hl]
    add c
    ld a, e
    add h
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    ld a, e
    add h
    db $f4
    dec bc
    db $ed

jr_01f_7b0b:
    ld [de], a
    db $fd

jr_01f_7b0d:
    ld [bc], a
    cp a
    ld b, b
    or $09
    ld a, [hl]
    add c
    db $fc
    inc bc
    push de
    ld a, [hl+]
    ld a, [$a505]
    ld e, d
    sub c
    ld l, [hl]
    ld c, d
    or l
    xor l
    ld d, d
    ld h, [hl]
    sbc c

jr_01f_7b24:
    ld e, b
    and a

jr_01f_7b26:
    add e
    ld a, h

jr_01f_7b28:
    ccf
    ret nz

jr_01f_7b2a:
    db $fc
    inc bc
    jp Jump_000_3f3c


jr_01f_7b2f:
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
    db $fc
    nop
    jp Jump_000_3f03


    ccf
    rst $38
    db $fc
    rst $38
    ret nz

    ld hl, sp+$04
    ldh [rNR23], a

jr_01f_7b48:
    ret nz

    jr c, jr_01f_7b0b

    jr c, jr_01f_7b0d

jr_01f_7b4d:
    jr c, jr_01f_7b2f

jr_01f_7b4f:
    inc e
    ldh [rNR32], a
    ld h, b
    sbc h
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    jr nc, jr_01f_7b28

    jr nc, jr_01f_7b2a

    jr c, jr_01f_7b24

    jr c, jr_01f_7b26

    jr jr_01f_7b48

    jr @-$18

    jr jr_01f_7b4d

    jr jr_01f_7b4f

    inc c
    di
    inc c
    di
    inc c
    di
    inc a
    di
    inc sp
    ldh a, [$f3]
    ldh a, [$fb]
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$03
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
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
    nop
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
    rst $38
    nop
    ldh a, [rP1]
    inc b
    dec bc
    ld bc, $05fe
    ld a, [$fe01]
    inc b
    ei
    add b
    ld a, a
    ld bc, $21fe
    sbc $06
    ld sp, hl
    inc bc
    db $fc
    add a
    ld a, b
    add c
    ld a, [hl]
    add e
    ld a, h
    sbc [hl]
    ld h, c

Call_01f_7bf2:
    sub [hl]
    ld l, c
    or a
    ld c, b
    swap h
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp-$23
    ld [hl+], a
    sub $29
    xor a
    ld d, b
    ld d, [hl]
    xor c
    and d
    ld e, l
    ld d, h
    xor e
    add e
    ld a, h
    ccf
    ret nz

    db $fc
    inc bc
    jp Jump_000_3f3c


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
    ld hl, sp+$00
    add a
    rlca
    ld a, a
    ld a, a
    ei
    db $fc
    rst $38
    add b
    rst $30
    ld c, $bf
    ld a, a
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
    ccf
    ccf
    ldh [rIE], a
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
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    ld bc, $01c1
    pop bc
    ld bc, $01c1
    pop bc
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    pop hl
    daa
    ret c

    inc [hl]
    rr a
    pop hl
    rra
    rst $00
    ccf
    rst $08
    ccf
    rst $18
    ccf
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    adc $3f
    call z, $c83f
    ccf
    ret nz

    ccf
    ldh [$1f], a
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
    inc bc
    rst $38
    rst $38
    nop
    ret nz

    nop
    nop
    ccf
    nop
    rst $38
    ld b, b
    cp a
    inc b
    ei
    add b
    ld a, a
    ret nc

    cpl
    ld b, b
    cp a
    ldh a, [rIF]
    ld a, h
    add e
    cp e
    ld b, h
    rst $10
    jr z, jr_01f_7d53

    add a
    sub $29
    or l
    ld c, d
    add $11
    push de
    ld [hl+], a
    or d
    ld c, c
    ld e, b
    and l
    adc l
    ld [hl], d
    jp c, $8525

    ld a, d
    dec d
    ld [$956a], a
    pop de
    ld l, $a5
    ld e, d
    ld d, d
    xor l
    ld c, c
    or [hl]
    inc d
    db $eb
    ldh [$1f], a
    add e
    ld a, h
    ccf
    ret nz

    ld hl, sp+$07
    add a
    ld a, b
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
    db $fc
    nop
    pop af
    nop
    rrca
    rrca
    ld a, a
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    db $fc
    inc bc
    ret nz

    ccf
    ld [bc], a
    db $fc
    ld a, $c1
    or a
    ld c, b
    ld l, [hl]
    sub c
    rst $38
    add b
    rst $28
    sub b
    ei
    add h
    cp e
    call nz, $cab5
    ei
    call nz, $d0e9
    ld sp, hl
    call nz, $e2dd
    db $f4
    jp hl


    ld hl, sp-$1c
    db $fd
    ld [c], a
    db $ec
    ld a, [c]
    ld hl, sp-$0c
    cp $f1
    db $fc
    ld a, [c]
    or $f8
    db $fc
    ld a, [$f9fe]
    db $fc
    ld hl, sp-$06

jr_01f_7d53:
    db $fd
    db $fc
    db $fc
    db $fd
    cp $fe
    db $fc
    db $fd
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
    cp $ff
    di
    db $fc
    sub l
    ld [$4ab5], a
    scf
    ret z

    ld [hl], a
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    xor l
    ret nz

    ld e, a
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
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38

jr_01f_7da9:
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
    add h
    ld a, e
    ret nz

    ld a, a

jr_01f_7db8:
    pop hl
    ccf
    ei
    db $10
    db $f4
    jr jr_01f_7db8

    ld c, $0a
    dec c
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_01f_7da9

    nop
    rst $38
    add b
    ld a, a
    db $10
    rst $28
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [$80f7], sp
    ld a, a
    db $fc
    inc bc
    ld a, l
    add d
    call $db32
    inc h
    ld l, [hl]
    sub c
    cp e
    ld b, h
    push de
    ld a, [hl+]
    ld l, a
    sub b
    push de
    ld a, [hl+]
    xor [hl]
    ld d, c
    ld e, e
    and h
    and h
    ld e, e
    cpl
    ret nc

    dec hl
    call nc, Call_01f_53ac
    ld d, b
    xor a
    add a
    ld a, b
    ld a, a
    add b
    ld hl, sp+$07
    add a
    ld a, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    inc bc
    ld bc, $1f1f
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$07
    add b
    ld a, a
    ld bc, $7ffe
    add b
    rst $20
    jr jr_01f_7ea1

    inc bc
    rra
    ld h, b
    ld a, l
    ld [bc], a
    ld a, $41
    ccf
    nop
    dec e
    and d
    rra
    add b
    ld e, $01
    rrca
    sub b
    sub a
    ld [$800f], sp
    add a
    ld [$4087], sp
    call Call_01f_4302
    and h
    adc c
    ld b, d
    ld b, b
    add c
    dec h
    ld b, b
    ld b, b
    ld [hl+], a
    inc b
    ld [hl+], a
    jr nz, jr_01f_7e8e

    jr nz, jr_01f_7e60

    inc d
    nop
    inc b
    jr nz, jr_01f_7e69

    add c
    dec h
    ld a, [bc]
    rrca
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_01f_7e60:
    cp $ff
    di
    db $fc
    call Call_01f_7bf2
    add h
    rst $10

jr_01f_7e69:
    jr z, jr_01f_7eea

    add b
    rst $38
    nop
    cp $01
    cp a
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_01f_7e8e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor b
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

jr_01f_7ea1:
    rst $38
    nop
    rst $38
    nop
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

jr_01f_7eaf:
    rst $38
    nop
    rst $38
    ld [$0ef7], sp
    ei
    ccf
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    ret nz

    inc bc
    ldh a, [rP1]
    db $fc
    add b
    ld a, a
    nop
    rst $38
    ld bc, $00fe

jr_01f_7ecd:
    rst $38
    jr nz, jr_01f_7eaf

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld h, b
    sbc a
    ld d, b
    xor a
    add b
    ld a, a
    xor d
    ld d, l
    db $fd
    ld [bc], a
    xor $11
    ld [hl], l
    adc d
    xor [hl]
    ld d, c
    ld a, e
    add h

jr_01f_7eea:
    call $aa32
    ld d, l
    ld c, c
    or [hl]
    xor c
    ld d, [hl]
    ld c, d
    or l
    jr z, jr_01f_7ecd

    add a
    ld a, b
    ld a, a
    add b
    ldh a, [rIF]
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
    ldh a, [rP1]
    add b
    nop
    rlca
    inc bc
    ccf
    rra
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    cp $01
    ldh a, [rIF]
    ld bc, $01fe
    cp $88
    ld [hl], a
    jp z, $c535

    ld a, [hl-]
    add l
    ld a, d
    db $e3
    inc e
    ld [$e515], a
    ld a, [de]

jr_01f_7f2a:
    ei
    inc b
    rst $18
    jr nz, jr_01f_7faa

    add h
    rst $18
    jr nz, jr_01f_7f2a

    ld [$49b6], sp
    ld l, a
    sub b
    or a
    ld c, b
    rra
    jr nz, jr_01f_7fa8

    sub h
    adc l
    ld [hl-], a
    sub a
    ld c, b
    ld h, $89
    adc e
    ld d, h
    add $08
    add e
    ld d, h
    ld h, [hl]
    adc b
    ld b, d
    and h
    ld hl, $4252
    and l
    ld [hl], a
    rrca
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret


    or $73
    adc h
    and a
    ld e, b
    sbc a
    ld h, b
    ld a, a
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
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
    cp [hl]
    ld [$c4f7], sp
    ei

jr_01f_7fa8:
    ld hl, sp+$3f

jr_01f_7faa:
    cp $07
    rst $38
    ld bc, $00fc
    ld [c], a
    ld bc, $128d
    rrca
    ld [hl], b
    ld c, a
    or b
    rrca
    ldh a, [rTAC]
    ld hl, sp+$42
    cp l
    ld bc, $31fe
    adc $08
    rst $30
    ld e, $e1
    ld c, [hl]
    or c
    ld c, $f1
    sbc a
    ld h, b
    rst $00
    jr c, @+$75

    adc h
    ld a, l
    add d
    ld e, e
    and h
    rst $30
    ld [$54ab], sp
    ld a, l
    add d
    sub $29
    push af
    ld a, [bc]
    ld c, d
    or l
    ld a, b
    add a
    add a
    ld a, b
    ld a, a
    add b
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    rrca
    rlca
    ld a, a
    ccf
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
