SECTION "ROM Bank $09f", ROMX[$4000], BANK[$9f]

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    pop hl
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ret nz

    rst $38
    jp $c7fc


    ei
    db $fc
    rst $38
    inc c
    di
    ld e, $e1
    ld a, $c1
    ld a, $c1
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

jr_09f_403b:
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

    ld e, $e1
    ld e, $e1
    ld c, $f1
    ld c, $f1
    inc b
    ei
    nop
    rst $38
    cp $ff
    ld bc, $c0fe
    rst $38
    db $10
    rst $28
    jr nz, jr_09f_403b

    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $08fe
    rst $30
    ld bc, $08fe
    rst $30
    ld bc, $80fe
    rst $38
    ldh [rIE], a
    add c
    rst $38
    pop bc
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    cp a
    ld a, a
    ld a, a
    sbc a
    rst $08
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    ld bc, $0301
    inc bc
    rst $00
    rst $00
    ld l, $2e
    dec e
    inc e
    ld a, [hl-]
    jr c, jr_09f_411f

    ld [hl], b
    add sp, -$20
    ldh a, [$e0]
    and b
    and b
    jr nz, jr_09f_40d4

    jr nz, jr_09f_40d6

    jr nz, jr_09f_40d8

    jr nz, jr_09f_40da

    jr nz, jr_09f_40dc

    jr nz, jr_09f_40de

    jr nz, jr_09f_40e0

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
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

jr_09f_40d4:
    ld a, a
    add b

jr_09f_40d6:
    rst $38
    nop

jr_09f_40d8:
    rst $38
    nop

jr_09f_40da:
    rst $38
    nop

jr_09f_40dc:
    rst $38
    nop

jr_09f_40de:
    rst $38
    nop

jr_09f_40e0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    db $fd
    cp $fe
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
    inc bc
    rst $38
    ld bc, $00ff
    cp $01
    db $fc
    add e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    ld hl, sp+$1f
    ldh [rIE], a
    nop
    rst $38

jr_09f_411f:
    nop
    rst $38
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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    or $09
    or $09
    ld [hl], d
    adc l
    ld [hl+], a
    db $dd
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rrca
    ldh a, [rSTAT]
    cp [hl]
    rst $38
    nop
    rst $38
    nop
    jp c, Jump_000_2525

    jp c, $fc03

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc d
    ld [hl], l
    nop
    rst $38
    db $e3
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $08ff
    rst $38
    nop
    rst $38
    ld h, $ff
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    jr nc, jr_09f_41ba

    ld [hl], b
    ld [hl], b
    ldh [$e0], a
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a

jr_09f_41b1:
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09f_41ba:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    jr jr_09f_41b1

    inc e
    or $0c
    rst $30
    ld c, $f3
    ld c, $f3
    rrca
    ld h, c
    sbc a
    add c
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, l
    cp $3f
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
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
    rst $38
    add b
    rst $38
    sub b
    rst $28
    sbc b
    rst $20
    sbc c
    and $9d
    ld [c], a
    sbc l
    ld [c], a

Jump_09f_41fe:
    sbc l
    ld [c], a
    cp l
    jp nz, $c0bf

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$8f], a
    ldh a, [$8f]
    ldh a, [$03]
    cp $fb
    ld b, $03
    rst $38
    ei
    ld b, $53
    xor [hl]
    ei
    ld b, $fb
    ld b, $eb
    ld d, $b3
    ld c, [hl]
    ld e, e
    and [hl]
    ei
    ld b, $fb
    ld b, $fb
    ld b, $a3
    ld e, [hl]
    inc bc
    cp $33
    adc $0b
    or $0b
    or $03
    or $0b
    or $c3
    cp $03
    cp $9a
    rst $30
    ld [de], a
    rst $38
    ld a, [de]
    rst $30
    dec bc
    rst $30
    ld [de], a
    cp $0b
    rst $30
    ld d, d
    cp $12
    cp $12
    cp $16
    cp $fe
    cp $fe
    cp $fe
    cp $02
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
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
    daa
    ld [$08a7], sp
    sub e
    inc b
    ld d, e
    inc b
    ld c, c
    ld [bc], a
    xor c
    ld [bc], a
    and h
    ld bc, $81d4
    rst $38
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

jr_09f_429c:
    ld l, b
    sub a

jr_09f_429e:
    ld [$ff15], a
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
    jr nz, jr_09f_429c

    jr nz, jr_09f_429e

    jr nz, @-$5f

    ld h, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rst $38
    rst $38
    ldh a, [rIF]
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    db $fd
    ld [bc], a
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
    ld d, a
    xor b
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop

jr_09f_4316:
    nop
    nop

jr_09f_4318:
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
    ret nz

    ccf
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop

jr_09f_432a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_09f_4316

    jr nz, jr_09f_4318

    jr nz, jr_09f_432a

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $54fe
    xor e
    ld d, h
    xor e
    db $f4
    dec bc
    or $09
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    cp $f1
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
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
    rst $38
    rst $38
    inc e
    db $e3
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09f_4394:
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ld h, [hl]
    sbc c
    ld h, h
    sbc e
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    jr nz, @+$41

    ld h, b
    ld a, a
    ldh [rIE], a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld h, b
    ld h, b
    ret nz

    ret nz

    xor d
    cp $55
    rst $38
    xor d
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    cp $07
    cp $07
    cp $07
    cp $07
    cp $07
    cp $07
    cp $07
    cp $07
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38

jr_09f_4405:
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_09f_4394

    ld a, b

jr_09f_440e:
    rst $38
    rst $38
    inc hl
    db $fc
    inc hl
    db $fc
    and a
    ld a, b

jr_09f_4416:
    and a
    ld a, b
    xor a
    ld [hl], b
    rst $28
    jr nc, @-$0f

    jr nc, jr_09f_440e

    jr nc, @+$01

    jr nz, @+$01

    jr nz, jr_09f_4405

    jr nz, jr_09f_4416

    cpl
    rst $28
    cpl
    rst $28

jr_09f_442b:
    cpl
    rst $28
    cpl
    rst $28
    cpl
    rst $28
    cpl
    xor a
    ld l, a
    xor a
    ld l, a
    xor a
    ld l, a
    xor a
    ld l, a
    jr nz, jr_09f_442b

    jr nz, @-$1e

    cpl
    ldh a, [$2d]
    ld a, [c]
    dec h
    ld a, [$ff20]
    rst $38
    rst $38
    ld b, h
    ei
    ld b, [hl]
    ld sp, hl
    ld c, a
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [$5f]
    ldh [$5f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    ld e, a
    ldh [$57], a
    add sp, $77
    ret z

    ld d, e
    db $ec
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    add b
    add b
    ret nz

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
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
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
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, c
    rst $38
    ld e, c
    rst $38
    ld e, l
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
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
    cp $01
    db $fc
    inc bc
    rst $38
    rst $38
    sbc $21
    rst $18
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
    rst $38
    nop
    rst $38
    nop
    ld bc, $fd00
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    ld bc, $01fc
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld hl, sp+$07
    rst $38
    rst $38
    ld [hl], b
    adc a
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
    ld a, e
    add h
    ld d, d
    xor l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $fc
    add e
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
    ld a, a
    add b
    rst $38
    rst $38
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
    cp $01
    jp c, Jump_09f_5a25

    and l
    ld b, b
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    cp a
    ld b, b
    ccf
    ret nz

    rra
    ldh [$7f], a
    rst $38
    add d
    rst $38
    jp nz, $d23f

    cpl
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ld a, [$fb07]
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $ff
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
    inc b
    rst $38
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    call nz, $e43f
    rra
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    push af
    ld c, $fd
    ld b, $fd
    ld b, $f5
    ld c, $f7
    inc c
    push af
    ld c, $fd
    ld b, $f5
    ld c, $7d
    add [hl]
    inc [hl]
    rst $08
    inc d
    rst $28
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
    daa
    reti


    add a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_09f_469e:
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc

jr_09f_46a8:
    cp $01
    cp $01
    rst $38
    rst $38
    ld b, b
    cp a
    ld b, c
    cp [hl]
    ld h, e
    sbc h
    rst $20
    jr jr_09f_469e

    jr jr_09f_46a8

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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $ff
    ld a, h
    add e
    ld a, l
    add e
    ld a, l
    add d
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
    ld sp, hl
    ld b, $a9
    ld d, [hl]
    and c
    ld e, [hl]
    and e
    ld e, h
    add e
    ld a, h
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
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    inc bc
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
    rlca
    nop
    rlca
    nop
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld [bc], a
    dec b
    nop
    rlca
    nop
    rlca
    nop
    rlca
    inc b
    rrca
    inc b
    rrca
    ld b, $0f
    ld b, $0f
    inc bc
    rrca
    inc bc
    rrca
    ld bc, $010f
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    jp $c7fc


    cp b
    ld c, a
    or b
    ld c, a
    or b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
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
    ld a, [hl]
    add c
    cp h
    jp Jump_09f_7ff8


    sbc a
    ld h, a
    sbc b
    ld h, a
    sbc h
    ld h, e
    sbc h
    ld h, e
    call c, $de23
    ld hl, $21de
    cp $01
    cp $01
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    ld a, [$7a07]
    add a
    ld a, d
    add a
    ld a, d
    add a
    ld [hl], d
    adc a
    ld [hl-], a
    rst $08
    or d
    rst $08
    or d
    rst $08
    db $f4
    rst $08
    db $e4
    rst $18
    ld h, h
    rst $38
    ld h, h
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld b, $7f
    inc bc
    ld a, a
    inc bc
    ld a, a
    ld bc, HeaderManufacturerCode
    ccf
    nop
    rra
    nop
    rra
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_09f_4850

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    ld c, a
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rBGP]
    ld hl, sp+$47
    ld hl, sp-$3d
    db $fc

jr_09f_4850:
    ld a, c
    cp $47
    rst $38
    ld c, b
    rst $30
    adc c
    or $99
    and $9b
    db $e4
    sbc e
    db $e4
    cp e
    call nz, $c4bb
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    nop
    nop
    nop
    nop
    nop
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

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ldh [$8f], a
    ldh a, [$cf]
    ldh a, [$cf]
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
    rst $30
    ld [$08f7], sp
    db $e3
    inc e
    jp $813c


    cp $f8
    ld a, a
    rst $20
    rra
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
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
    nop
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    di
    inc c
    di
    inc c
    di
    inc c
    db $e3
    inc e
    db $e3
    inc e
    pop bc
    ld a, $c1
    ld a, $81
    ld a, [hl]
    ld bc, $00fe
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
    inc d
    dec d
    ld d, $14
    inc d
    inc d
    inc d
    inc d
    rla
    jr jr_09f_4929

    ld a, [de]
    dec de
    inc e
    dec e
    ld [de], a
    ld e, $1f
    jr nz, @+$04

    ld hl, $2204
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_09f_494c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2c

jr_09f_4929:
    cpl
    jr nc, jr_09f_495d

    ld [hl-], a
    inc sp
    inc d
    inc d
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09f_496f

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc d
    inc d
    scf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc d
    inc d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_09f_494c:
    inc d
    ld c, e
    ld c, h
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

jr_09f_495d:
    ld c, l
    ld c, l
    ld c, l
    inc d
    ld e, e
    ld e, h
    ld e, l
    inc d
    inc d
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    inc d
    ld h, d
    ld h, e
    ld c, l
    ld c, l

jr_09f_496f:
    ld c, l
    ld h, h
    ld h, l
    inc d
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc d
    ld l, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    inc d
    ld h, e
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld h, e
    inc d
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld c, l
    ld c, l
    ld c, l
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
    ld c, l
    ld c, l
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
    inc d
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    inc d
    cp a
    ld h, e
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

    inc d
    inc d
    inc d
    pop de
    jp nc, $1414

    db $d3
    call nc, $d6d5
    rst $10
    ret c

    inc d
    reti


    jp c, Jump_000_14db

    inc d
    call c, Call_000_14dd
    inc d
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    inc d
    db $e4
    push hl
    and $14
    rst $20
    add sp, -$17
    ld e, $ea
    db $eb
    db $ec
    db $ed
    xor $ee
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    inc d
    inc d
    ld hl, sp-$07
    xor $ee
    xor $ee
    ld bc, $0000
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    jr nz, jr_09f_4a56

jr_09f_4a56:
    ld bc, $0001
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    ld bc, $0201
    ld [bc], a
    ld b, $02
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    ld bc, $4100
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0021
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    nop
    ld bc, $0202
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    jr nz, @+$03

    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    jp hl


    ld d, [hl]
    ld sp, hl
    ld b, [hl]
    db $fd
    ld b, d
    db $fd
    ld b, d
    db $fd
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_09f_4ba6

    jr nz, jr_09f_4ba8

    jr nz, jr_09f_4baa

    jr nz, jr_09f_4bac

    jr nz, jr_09f_4bae

    jr nz, jr_09f_4bb0

    jr nz, jr_09f_4bb2

    jr nz, jr_09f_4bb4

    jr nz, jr_09f_4bb6

    jr nz, jr_09f_4bb8

    jr nz, jr_09f_4bba

    jr nz, jr_09f_4bbc

    jr nz, jr_09f_4bbe

    jr nz, jr_09f_4bc0

    jr nz, jr_09f_4bc2

    jr nz, jr_09f_4bc4

    jr nz, jr_09f_4bc6

jr_09f_4ba6:
    jr nz, jr_09f_4bc8

jr_09f_4ba8:
    db $10
    db $10

jr_09f_4baa:
    db $10
    db $10

jr_09f_4bac:
    db $10
    db $10

jr_09f_4bae:
    db $10
    db $10

jr_09f_4bb0:
    db $10
    db $10

jr_09f_4bb2:
    db $10
    db $10

jr_09f_4bb4:
    db $10
    db $10

jr_09f_4bb6:
    db $10
    db $10

jr_09f_4bb8:
    db $10
    db $10

jr_09f_4bba:
    db $10
    db $10

jr_09f_4bbc:
    db $10
    db $10

jr_09f_4bbe:
    db $10
    db $10

jr_09f_4bc0:
    db $10
    db $10

jr_09f_4bc2:
    db $10
    db $10

jr_09f_4bc4:
    db $10
    db $10

jr_09f_4bc6:
    db $10
    db $10

jr_09f_4bc8:
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ld sp, hl
    ld c, $f8
    rrca
    rst $38
    rrca
    ld hl, sp+$0f
    ret c

    cpl
    ld sp, hl
    ld c, $fb
    inc c
    ei
    inc c
    rst $18
    inc h
    rst $30
    inc c
    rst $38
    inc b
    rst $30
    inc c
    rst $20
    inc e
    or a
    ld c, h
    rst $20
    inc e
    rst $28
    inc d
    and a
    ld e, h
    rst $08
    inc [hl]
    rst $10
    inc l
    xor a
    ld d, h
    ld c, a
    or h
    or a
    ld c, h
    ld c, a
    or h
    rst $00
    inc a
    sub a
    ld l, h
    ld d, a
    xor h
    and e
    ld e, [hl]
    ld h, e
    sbc [hl]
    jp $033e


    cp $83
    ld a, [hl]
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [c], a
    rra
    ld a, [c]
    rrca
    ld a, [$fb07]
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $ff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc $21
    jp z, $8a35

    ld [hl], l
    rlca
    rst $38
    ld hl, sp-$01
    ld b, d
    cp l
    ld d, d
    xor l
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
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld a, [$ea87]
    sub a
    db $ec
    sub a
    xor h
    rst $10
    xor b
    rst $18
    xor b
    rst $18
    or b
    rst $18
    or b
    rst $18
    and b
    rst $38
    and b
    rst $38
    adc $f1
    ld h, [hl]
    ld sp, hl
    ld h, a
    ld hl, sp+$33
    db $fc
    ld de, $19fe
    cp $9c
    ld l, a
    call nc, $d62f
    cpl
    sub $2b
    push af
    dec bc
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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld [hl], a
    ret z

    db $76
    ret


    ld h, h
    db $db
    ld e, a
    rst $38
    ldh [rIE], a
    ld c, h
    di
    ld e, l
    ld [c], a
    ld a, l
    jp nz, $c07f

    ld a, a
    ret nz

    rst $38
    jr nz, @+$01

    jr nz, jr_09f_4da1

    jr nz, jr_09f_4da3

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_09f_4da9

    jr nz, jr_09f_4dab

    jr nz, @+$22

    jr nz, jr_09f_4d9f

    db $10

jr_09f_4d90:
    rst $38
    db $10

jr_09f_4d92:
    rst $38
    db $10

jr_09f_4d94:
    rst $30
    jr @-$07

    jr jr_09f_4d90

    jr jr_09f_4d92

    jr jr_09f_4d94

    jr jr_09f_4d94

jr_09f_4d9f:
    ld a, [de]
    pop af

jr_09f_4da1:
    ld e, $f8

jr_09f_4da3:
    rrca
    ld hl, sp+$0f
    add sp, $1f
    jp hl


jr_09f_4da9:
    rra
    ret


jr_09f_4dab:
    ccf
    jp z, $ca3f

    ccf
    call z, $cc3f
    ccf
    ret z

    ccf
    adc b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    jr nz, @+$01

    and b
    ld a, [hl]
    ret nz

    ld a, [hl]
    ld b, b
    db $fc
    add b
    db $fc
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
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
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    jp Jump_09f_633f


    sbc a
    inc hl
    rst $18
    ld sp, $91cf
    rst $28
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    and b
    rst $38
    or b
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    add l
    rst $38
    jp $c3bf


    cp a
    pop hl
    sbc a
    pop hl
    sbc a
    pop af
    adc a
    pop af
    adc a
    ld sp, hl
    add a
    ld sp, hl
    add a
    ld sp, hl
    add a
    ld sp, hl
    add a
    ld sp, hl
    add a
    db $fd
    ld b, e
    db $fd
    ld b, e
    db $fd
    ld b, e
    db $fd
    ld b, e
    db $fd
    ld b, e
    db $fd
    ld b, e
    db $fd
    ld b, e
    rst $38
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    rst $38
    ld b, c
    db $fd
    ld b, e
    db $fd
    ld b, e
    ld a, c
    rst $00
    ld l, c
    rst $10
    ld h, a
    rst $18
    ld sp, hl
    rst $38
    ld b, c
    rst $38
    ld e, c
    rst $20
    ld a, l
    jp $c37d


    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld hl, $21ff
    db $fc
    jr nz, @+$01

    daa
    db $fc
    inc h
    cp $26
    rst $38
    daa
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    inc h
    db $f4
    inc l
    ld a, [c]
    ld l, $e6
    ld a, [hl-]
    and $3e
    and $3e
    ld [$ea3e], a
    ld a, $f2
    ld a, $d3
    ccf
    ld h, b
    cp [hl]

jr_09f_4e8e:
    jr nz, jr_09f_4e8e

    ld b, b
    db $fc
    ld b, b
    db $fc
    add b
    ld hl, sp-$80
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    sbc b
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    db $fc
    rst $38
    ld a, [c]
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    adc a
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
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$03]
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rra
    ldh a, [$1f]
    rst $38
    nop
    rst $38
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
    sbc a
    rra
    jr nz, jr_09f_4f45

jr_09f_4f45:
    ccf
    rst $38
    rst $38
    rst $38
    nop
    ld [$ffea], a
    rst $38
    nop
    nop
    rlca
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $03fe
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
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    or c
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $80fe
    rst $38
    ld a, a
    rst $38
    inc d
    db $eb
    ld a, $c1
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
    or $09
    ld a, [c]
    dec c
    nop
    rst $38
    rst $38
    rst $38
    inc b
    ei
    ld d, $e9
    ld e, $e1
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
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    ldh [$7f], a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$03], a
    db $fc
    nop
    rlca
    nop
    add $c0
    ld h, $00
    and $51
    ld d, a
    ld sp, hl
    rlca
    ld hl, $ff27
    rst $38
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $010f
    rrca
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc c
    dec c
    ld a, a
    ld a, [bc]
    ccf
    dec c
    ccf
    ld c, $17
    rlca
    stop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]

Call_09f_502b:
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    ld a, b
    rst $38
    inc a
    rst $38
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
    rst $38
    nop
    ld a, a
    add b

jr_09f_5080:
    rst $38
    rst $38
    ld [$89ff], sp
    ld a, [hl]
    srl h
    srl h
    db $eb
    inc e
    db $eb
    inc e
    rst $28
    jr jr_09f_5080

    jr @+$01

    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$18ef], sp
    db $eb
    inc e
    xor e
    ld e, h
    adc c
    ld a, [hl]
    add hl, bc
    cp $08
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    inc h
    rst $18
    ld h, h
    sbc a
    db $e4
    rra
    db $e4
    rra
    db $e4
    rra
    push af
    ld c, $f5
    ld c, $f5
    ld c, $f7
    inc c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $18
    inc h
    rst $08
    inc [hl]
    call $8536
    ld a, [hl]
    add l
    ld a, [hl]
    dec b
    cp $04
    ld a, a
    inc b
    ld a, a
    inc b
    ccf
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    call nz, $ffff
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
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
    add b
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
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
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
    ld [$09f7], sp
    or $fb
    db $f4
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
    ldh [$1f], a
    rst $38
    add h
    ld a, e
    call nz, $c43b
    dec sp
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $18
    jr nz, @+$4d

    or h
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, e
    cp h
    ld b, e
    cp h
    swap h
    db $eb
    inc d
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

jr_09f_5173:
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
    push af
    ld a, [bc]
    call nc, Call_09f_502b
    xor a
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
    cp $fe
    nop
    rst $38

jr_09f_5192:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_09f_5192

    jr nz, jr_09f_5173

    ld b, b
    cp [hl]
    ld b, b
    cp l
    ld b, b
    ld a, l
    add b
    ld a, d
    add b
    ld a, d
    add b
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, h
    or e
    call $dd32
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    add c
    ld a, a
    xor c
    ld d, a
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
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
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $ed
    inc de
    ld l, c
    sub a
    ld h, c
    sbc a
    ld bc, $0fff
    rst $38
    pop af
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    pop de
    cpl
    push af
    dec bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    db $ed
    inc de
    db $ed
    inc de
    db $ed
    inc de
    xor c
    ld d, a
    add c
    ld a, a
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    rrca
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, e
    ld bc, $0357
    sub a
    ld [bc], a
    xor a
    ld b, $2f
    inc b
    ld e, a
    inc c
    ld e, a
    ld [$18bf], sp
    ldh a, [$1f]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $abff
    ld d, a
    xor e
    ld d, a
    rst $28
    inc de
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
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    dec de
    db $e4
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

    rla
    add sp, $13
    db $ec
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
    inc bc
    db $fc
    scf
    ret z

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
    cp $01
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    inc [hl]
    rlc h
    ei
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
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    add a
    add a
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $30
    rrca
    rst $08
    ccf
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$df], a
    ldh [$80], a
    rst $38
    nop
    rst $38
    ld bc, $fffe
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
    cp $01
    rst $38
    rst $38
    ld b, h
    cp e
    call nc, $f42b
    dec bc
    cp $01
    cp $01
    rst $38
    nop
    ld a, [$7205]
    adc l
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    sub b
    ld l, a
    sbc b
    ld h, a
    ret c

    daa
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
    or a
    ld c, b
    scf
    ret z

    inc d
    db $eb
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld h, a
    sbc b
    ld a, [c]
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
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    db $fd
    db $fd
    cp a
    cp a
    ld e, a
    ld e, a
    xor e
    xor e
    ld e, c
    ld e, c
    jr z, jr_09f_53a8

    jr @+$01

    ld [$08ff], sp
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
    ldh a, [rIF]
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
    ld a, a
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc

jr_09f_53a8:
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    rst $38
    add b
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
    nop
    rst $38
    ld h, b
    sbc a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    cp $ff
    ld b, c
    rst $38
    ld b, l
    ld a, [$f24d]
    ld c, a
    ldh a, [$5f]
    ldh [$5f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld a, e
    call nz, $c679
    ld [hl], b
    rst $08
    ld d, b
    rst $28
    ld b, b
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    cp $5b
    db $e4
    ld a, e
    call nz, $c07f
    cp $41
    cp $41
    db $fc
    ld b, e
    ld hl, sp+$47
    ld hl, sp+$47
    ldh a, [rVBK]
    ldh [$5f], a
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, a
    ret nz

    db $e3
    rra
    add a
    ld a, a
    rst $38
    rst $38
    pop bc
    cp [hl]
    rst $18
    jr nz, jr_09f_545b

    db $dd
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ld bc, $8001
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    ld e, [hl]
    ld a, [hl]
    ld c, a
    ld e, a
    ld b, a
    ld c, a
    ld b, e

jr_09f_545b:
    ld b, a
    ld b, c
    ld b, e
    ld b, b
    ld b, c
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
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
    cp $01
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
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld a, [bc]
    db $fd
    dec e
    di
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
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_09f_54c1:
    ld a, a
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    and b
    ld e, a
    jr nz, jr_09f_54c1

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
    ld [hl], l
    sbc e
    add a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    ret nz

    push hl
    dec de
    adc a
    ld a, a
    ld a, e
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    xor a
    sub b
    rst $28
    db $10
    ld sp, $e5ce
    cp $ff
    rst $38
    ld a, a
    ld a, a
    db $10
    stop
    nop
    nop
    ld bc, $0100
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    jr c, jr_09f_557a

    inc a
    inc a
    ld l, $2e
    scf
    daa
    dec hl
    inc sp
    inc h
    jr z, jr_09f_556f

    inc h
    ld hl, $2022
    jr nz, @+$22

    jr nz, jr_09f_5555

jr_09f_5555:
    nop
    nop
    nop
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc

jr_09f_556f:
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09f_557a:
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
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc e
    rst $38
    add hl, de
    cp $37
    ld hl, sp+$7c
    ei
    sbc e
    rst $38
    ld l, [hl]
    sbc a
    sbc b
    ld a, a
    ld h, b
    rst $38
    ret nz

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
    ld b, e
    rst $38
    ld c, h
    rst $38
    ldh a, [rIE]
    ld b, b
    rst $38
    ld b, b
    cp $40
    cp $42
    db $fc
    ld b, d
    db $fc
    ld b, d
    db $fc
    ld b, d
    db $fc
    ld b, a
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$43
    db $fc
    ld b, e
    db $fc
    ld b, c
    cp $81
    cp $80
    rst $38
    add b
    rst $38
    add b
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
    add c
    cp $81
    cp $81
    cp $80
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
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    dec a
    jp $ff0f


    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    db $fc
    rrca
    ldh a, [$ea]
    rla
    db $d3
    ccf
    dec de
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ccf
    scf
    ld c, b
    rst $30
    ld [$0df2], sp
    db $10
    rst $28
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $9e01
    sbc [hl]
    ldh a, [$f0]
    ldh [$e0], a
    ld h, b
    ld h, b
    jr nc, jr_09f_5680

    sbc h
    inc e
    ld e, [hl]
    sbc [hl]
    ccf
    ld e, a
    rra
    ccf
    inc de
    inc de
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0111
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38

jr_09f_5676:
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]

jr_09f_5680:
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    rrca
    cp $37
    rst $38
    ld b, a
    ei
    sbc l
    db $e3
    dec sp
    rst $00
    db $e4
    rra
    sbc c
    ld a, [hl]
    ld h, e
    db $fc
    add a
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    rst $38
    ld a, [de]
    db $fd
    ld l, e
    db $f4
    xor a
    ret nc

    jr nc, jr_09f_5676

    add c
    ld c, $0e
    ld [hl], c
    ld bc, $06fe
    ld sp, hl
    ld bc, $00fe
    rst $38
    nop
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
    xor $11
    add sp, $17
    ld h, b
    sbc a
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], h
    adc e
    cp $01
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

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$87]
    ld hl, sp-$3f
    cp $f0
    rst $38
    ld hl, sp-$01
    call nz, $8b3f
    ld [hl], l
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    ld hl, sp-$23
    ld [c], a

jr_09f_571c:
    rst $00
    jr c, jr_09f_571c

    ld [bc], a
    ld c, e
    or l
    ld h, a
    sbc a
    ld h, e
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_09f_572c:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    cp $fe
    ccf
    ccf
    sbc a
    rra
    ld c, a
    adc a
    daa
    ld b, a
    inc de
    inc hl
    add hl, bc
    ld de, $0804
    ld [bc], a
    inc b
    ld bc, $e702
    ld hl, sp-$71
    ldh a, [$3e]
    pop bc
    ld a, c
    add a
    rst $20
    ld e, $df
    jr c, jr_09f_572c

    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$3f
    pop de
    cp $15
    ld a, [$38d7]
    rst $20
    inc b
    rlca
    inc d
    rlca
    db $f4
    rst $20
    inc d
    rlca
    db $f4
    rst $20
    inc d
    rlca
    db $f4
    rst $20
    inc d
    rlca
    inc b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @-$3f

    ld h, b
    cp a
    ld h, b
    cpl
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rBGP]
    ld hl, sp+$45
    ld a, [$fa45]
    rst $38
    rst $38
    ld c, d
    push af
    ld c, e
    db $f4
    ld e, a
    ldh [$5f], a
    ldh [$7f], a
    ret nz

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
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    db $e3
    db $fc
    cp a
    cp $f7
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    jp hl


    rst $38
    nop
    ld e, $e1
    cp a
    ld [hl], e
    rst $10
    ccf
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
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld hl, sp-$09
    ld l, $31
    ld a, [hl-]
    dec h
    ld e, b
    ld h, a
    ret nz

    rst $38
    db $fc
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
    inc bc
    inc bc
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
    adc a
    rrca
    ld b, a
    add a
    inc hl
    ld b, e
    inc de
    inc hl
    dec bc
    inc de
    rlca
    dec bc
    inc bc
    rlca
    inc bc
    inc bc
    adc a
    ld a, b
    ccf
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
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    rrca
    rst $30
    ld a, b
    adc a
    ldh a, [$1f]

jr_09f_5877:
    ldh [$9f], a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    xor a
    ld d, b
    and l
    ld e, d
    and l
    ld e, d
    rst $38
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    and h
    db $db
    add b
    rst $38
    jr z, jr_09f_5877

    add d
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
    ld a, a
    ld a, a
    ld a, l
    ld a, [hl]
    rst $38
    ldh a, [$99]
    and $ef
    ret nc

    db $e3
    call c, $fcc3
    rst $30
    ld a, d
    dec sp
    cp $f8
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2f01
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    rlca
    rlca
    rst $38
    rst $38
    ld hl, sp-$08
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
    ld sp, hl
    ld e, $e3
    ld a, h
    xor e
    call nc, $40bf
    cp $00
    ldh a, [rSB]
    pop af
    ld b, $f6
    ld bc, $06f1
    or $01
    pop af
    ld b, $f6
    ld bc, $06f1
    or $01
    pop af
    ld b, $f6
    ld bc, $06f0
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    cp l
    ld b, d
    dec [hl]
    jp z, $ea15

    rst $38
    rst $38
    dec c
    ld a, [c]
    sbc a
    ld h, b
    cp a
    ld b, b
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
    rst $38
    nop
    rst $38
    add b
    ccf
    ret nz

    ld bc, $b6fe
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
    rst $30
    rst $38
    rst $38
    ret nz

    call nz, $f87b
    rrca
    db $db
    db $e4
    and c
    ld e, [hl]
    ld h, d
    sbc [hl]
    ld c, e
    rst $38
    ld e, a
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
    rst $38
    rst $38
    rst $38
    cpl
    cpl
    ccf
    ccf
    ld a, a
    ld a, a
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
    cp $fe
    nop
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    cp $fe
    nop
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$3f
    add $f9
    rrca
    ldh a, [$9f]
    ld h, b
    cp a
    ld b, b
    db $fc
    nop
    ldh [$03], a
    inc bc
    inc e
    inc e
    db $e3
    db $e3
    inc e
    inc e
    db $e3
    db $e3
    inc e
    inc e
    db $e3
    db $e3
    inc e
    inc e
    db $e3
    db $e3
    inc e
    inc e
    db $e3
    ldh [rNR32], a
    inc bc
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
    ret c

    daa
    adc b
    ld [hl], a
    ret z

    rst $30
    ccf
    rst $38
    ld hl, $31df
    rst $08
    or c
    ld c, a
    or c
    ld c, a
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ei
    ld b, $fb
    ld b, $fa
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$f207]
    rrca
    ld a, [c]
    rrca
    db $e4

Jump_09f_5a25:
    rra
    call nz, Call_000_043f
    rst $38
    inc b
    rst $38
    add h
    rst $38
    add h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    cp $81
    cp $cc
    inc sp
    rst $38
    nop
    ld a, [hl]
    add c
    sbc $e1
    ld a, l
    di
    inc sp
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
    rst $38
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
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    db $fc
    rrca
    ldh a, [$7f]
    sub c
    cp $11
    cp $13
    db $fc
    rla
    ld hl, sp+$17
    ld hl, sp-$64
    ld [hl], b
    add b
    ld b, e
    inc bc
    inc a
    inc a
    jp Jump_000_3cc3


    inc a
    jp Jump_000_3cc3


    inc a
    jp Jump_000_3cc3


    inc a
    jp Jump_000_3cc3


    inc a
    jp $3cc0


    inc bc
    ret nz

    ccf
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$8f], a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [rIE]
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a

jr_09f_5aeb:
    add b
    ld a, a
    add b
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
    ccf
    ret nz

    rra
    ldh [rNR34], a
    pop hl
    ld c, $f1
    inc b
    ei
    nop
    rst $38
    ld c, $f1
    pop af
    ld c, $df
    ccf
    jr z, jr_09f_5aeb

    set 7, a
    ld l, c
    rst $38
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0900], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_09f_5b42

jr_09f_5b42:
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    nop
    nop
    nop
    nop
    ld de, $1c1b
    dec e
    ld e, $1f
    jr nz, jr_09f_5b75

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_09f_5b85

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    nop
    nop
    nop
    jr nc, jr_09f_5b9d

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09f_5bad

    add hl, sp

jr_09f_5b75:
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

jr_09f_5b85:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, h
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld b, h
    ld b, h
    ld d, d
    ld d, e
    nop
    nop
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    inc bc
    ld e, c
    nop
    ld e, d

jr_09f_5b9d:
    ld b, h
    ld b, h
    ld b, h
    ld e, e
    nop
    nop
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h

jr_09f_5bad:
    ld b, h
    ld b, h
    ld b, h
    ld h, l
    nop
    nop
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
    ld b, h
    ld b, h
    ld b, h
    ld [hl], b
    ld [hl], c
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld c, h
    ld a, b
    ld a, c
    ld de, $4444
    ld b, h
    ld a, d
    ld a, e
    nop
    ld a, h
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    inc bc
    add c
    add d
    add e
    ld b, h
    ld b, h
    ld b, h
    add h
    nop
    nop
    nop
    nop
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld e, d
    ld b, h
    ld b, h
    ld b, h
    adc h
    nop
    nop
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    ld d, b
    sub [hl]
    ld b, h
    ld b, h
    sub a
    sbc b
    sbc c
    sbc d
    sbc d
    sbc e
    sbc h
    sbc d
    sbc l
    sbc [hl]
    sbc a
    and b
    nop
    and c
    and d
    and e
    and h
    sbc d
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    ld c, l
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
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    nop
    nop
    nop
    nop
    dec [hl]
    add $c7
    ret z

    ld d, h
    nop
    nop
    nop
    nop
    ret


    jp z, $cccb

    nop
    nop
    nop
    nop
    call Call_000_00ce
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0201
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
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0201
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld hl, $0202
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0402
    inc b
    inc b
    inc b
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld hl, $0201
    ld b, h
    inc b
    inc b
    inc b
    ld bc, $0001
    ld bc, $0141
    ld bc, $0101
    ld bc, $0201
    inc b
    inc b
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld [bc], a
    inc h
    inc b
    inc b
    inc b
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc h
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0201
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
    ld bc, $0000
    nop
    nop
    ld b, c
    ld bc, $0101
    ld b, c
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
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
    nop
    nop
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $1f01
    ld e, $ff
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
    ld a, a
    add b
    rrca
    rst $30
    ccf
    ld hl, sp-$21
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

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
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
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
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    adc a
    add b
    ld c, a
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    ld b, a
    ret nz

    daa
    ldh [$27], a
    ldh [$27], a
    ldh [$27], a
    ldh [$27], a
    ldh [$27], a
    ldh [rNR13], a
    ldh a, [rNR13]
    ldh a, [rNR13]
    ldh a, [rNR13]
    ldh a, [rNR13]
    ldh a, [rNR13]
    ldh a, [$0b]
    ld hl, sp+$09
    ld hl, sp-$07
    ld hl, sp+$01
    nop
    ld bc, $0f00
    ld c, $ff
    ldh a, [rIE]
    nop
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    di
    inc c
    pop af
    ld c, $f0
    rrca
    ldh [$1f], a
    pop hl
    rra
    xor $1f
    ld hl, sp-$09
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
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
    db $e3
    rra
    call nz, Call_000_083f
    rst $38
    db $10
    rst $38
    jr nz, @+$01

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
    cp $01
    db $fc
    inc bc
    rst $38
    rlca
    ld a, b
    cp a
    ldh a, [$cf]
    ld a, l
    add d
    ld a, l
    add d
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld sp, hl
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    pop hl
    rra
    ld [c], a
    rra
    call nz, $883f
    ld a, a
    db $10
    rst $38
    ld [hl+], a
    rst $38
    ld b, d
    rst $38
    add d
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    dec de
    rst $38
    sbc b
    rst $38
    ret c

    rst $38
    ret z

    cp $01

jr_09f_5f11:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    pop hl
    ld e, $ff
    ldh [rIE], a
    jr nz, jr_09f_5f11

    ld [hl], b
    adc a
    pop af
    ld c, $f1
    ld c, $fd
    ld [bc], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ld bc, $02ff
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
    jr nz, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    cp $50
    db $fc
    ld b, b
    ld hl, sp+$40
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
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_09f_5fca

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_09f_5fd2

    jr nz, jr_09f_5fd4

jr_09f_5fb4:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_09f_5fba:
    db $10
    db $10

jr_09f_5fbc:
    db $10
    db $10

jr_09f_5fbe:
    db $10
    db $10
    rst $30
    jr jr_09f_5fba

    jr jr_09f_5fbc

    jr jr_09f_5fbe

    jr jr_09f_5fb4

    inc e

jr_09f_5fca:
    jp hl


    ld e, $e9
    ld e, $c9
    ld a, $c8
    ccf

jr_09f_5fd2:
    ret z

    ccf

jr_09f_5fd4:
    ret z

    ccf
    adc a
    ld a, a
    jr c, @+$01

    ret z

    rst $38
    inc b
    rst $38
    ld b, h
    cp a
    call nz, $c43f
    ccf
    db $e4
    rra
    db $e4
    rra
    db $f4
    rrca
    push af
    ld c, $f5
    ld c, $f5
    ld c, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add c
    ld a, a
    add d
    ld a, a
    inc b
    rst $38
    ld [$30ff], sp
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
    cp $03
    db $fc
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
    xor $11
    xor $11
    adc $31
    rst $08
    inc sp
    call c, $e63f
    ld sp, hl
    ld e, $e1
    ld a, $c1
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
    cp a
    ret nz

    sbc a
    ldh [$80], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld b, d
    rst $38
    ld c, h
    rst $38
    ld d, b
    rst $38
    ld h, b
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
    ldh a, [rP1]
    ldh [rP1], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
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
    ld h, b
    rst $38
    sbc b
    ld a, a
    add [hl]
    ld a, a
    pop bc
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
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
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, a
    add a
    inc a
    ei
    db $fc
    jp $c33c


    inc a
    jp $837c


    ld a, h
    add e
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    cp $01
    cp $01
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    jp $843f


    ld a, a
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    cp $00
    db $fc
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    cp $41
    cp $41
    cp $43
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld hl, $21fe
    cp $21
    cp $20
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    rst $38
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld de, $11fe
    cp $11
    cp $11
    cp $10
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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$17ff], sp
    rst $38
    daa
    rst $38
    ld b, a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    nop
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
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
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
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$0e], a
    pop af
    inc b
    ei
    cp $ff
    ld bc, $23ff
    call c, $9c63
    rst $20
    jr @-$0f

    db $10
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
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
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
    rra
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38

Jump_09f_633f:
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop

jr_09f_6352:
    rst $38
    nop
    rst $38
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

    ccf
    rst $28
    jr nc, jr_09f_6352

    ccf
    rst $28
    jr c, @-$4f

    ld a, b
    xor a
    ld a, b
    cpl
    ld hl, sp-$11
    ld hl, sp+$2f
    ld hl, sp+$6f
    cp b
    ld l, a
    cp b
    rst $28
    jr c, @-$13

    inc a
    db $eb
    inc a
    jp hl


    ld a, $e9
    ld a, $e8
    ccf
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    db $ec
    ccf
    ld l, $ff
    ld l, $ff
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
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
    rst $38
    rrca
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
    nop
    rst $38
    rlca
    rst $38
    rst $38
    ld hl, sp+$1f
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
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
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
    ret nz

    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    db $fc
    inc bc
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0fff
    rst $38
    add hl, bc
    cp $0a
    db $fd
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
    add b
    rst $38
    ret nz

    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    db $fc
    inc bc
    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    cp a
    ret z

    ld a, a
    adc b
    rst $38
    ld [$0bfc], sp
    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fc
    dec bc
    rst $38
    ld [$cbff], sp
    rst $18
    ld l, d
    rst $08
    ld a, d
    bit 7, [hl]
    ld c, d
    rst $38
    ld c, d
    rst $38
    set 7, a
    ld [$08ff], sp
    rst $38
    ld [$c8ff], sp
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
    nop
    rst $38
    rst $38
    rst $38
    inc b
    ei
    sub h
    ld l, e
    sbc h
    ld h, e
    cp [hl]
    ld b, c
    cp $01
    cp $01
    cp $01
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
    rlca
    nop
    rlca
    ret nz

    rlca
    ret nz

    nop
    rst $38
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
    cp $ff
    db $fd
    cp $fb
    db $fc
    rlca
    ld hl, sp+$7f
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
    rst $38
    nop
    rst $38
    add b
    cp $81
    ld hl, sp-$79
    ldh a, [rIE]
    sub b
    ld a, a
    ld d, b
    cp a
    ldh a, [rIE]
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
    nop
    nop
    nop
    rst $38
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
    rst $38
    nop
    ld a, a
    rst $38
    cp a
    ret nz

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
    ld a, a
    add b
    nop
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $38
    inc b
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $28
    add hl, de
    rst $28
    add hl, de
    rst $08
    add hl, sp
    adc a
    ld a, c
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    rla
    ld a, [$fa17]
    rla
    ld a, [$fa17]
    rla
    ld a, [$fa37]
    scf
    ld a, [$fb36]
    db $76
    ei
    or $fb
    or $fb
    or $fb
    db $ec
    rst $30
    add sp, -$09
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $30

jr_09f_6646:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    ld hl, sp-$79
    ld a, b
    rst $08
    jr nc, jr_09f_6646

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
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    cp $01
    dec a
    jp nz, Jump_09f_41fe

    db $fd
    ld b, d
    db $fc
    ld b, e
    push de
    ld l, d
    ret nc

    ld l, a
    ret nz

    ld a, a
    rst $38
    ld a, a
    add h
    ei
    and d
    db $dd
    and l
    jp c, $cdb2

    or l
    jp z, $c5ba

    db $fd
    add d
    ld a, [$fd85]
    add d
    ld a, [$fd85]
    add d
    ld a, [$f585]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld [$f515], a
    ld a, [bc]
    ld [$f515], a
    ld a, [bc]
    add sp, $17
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

jr_09f_66db:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$1f], a
    ldh a, [rIF]
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
    db $10
    rst $28
    jr z, jr_09f_66db

    inc d
    db $eb
    ld l, b
    sub a
    push de
    ld a, [hl+]
    ld [$d515], a
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d

jr_09f_672b:
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d

jr_09f_6733:
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, l
    cp d
    jr nz, jr_09f_672b

    nop
    rst $38
    ld h, b
    rst $38
    rra
    rst $38
    jr nz, jr_09f_6733

    ld de, $20ee
    rst $18
    ld d, c
    xor [hl]
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, b
    xor a
    and b
    ld e, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rra
    rra
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
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
    ld b, h
    cp e
    and d
    ld e, l
    ld b, h
    cp e
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    ld d, l
    ld d, l
    xor e
    xor e
    ld d, l
    ld d, l
    xor e
    xor e
    ld d, l
    ld d, l
    xor e
    xor e
    ld d, l
    ld d, l
    xor e
    xor e
    ld d, l
    ld d, l
    xor e
    xor e
    ld d, l
    ld d, l
    xor e
    xor d
    ld d, a
    ld d, [hl]
    xor e
    xor d
    ld d, a
    ld d, [hl]
    xor e
    xor d
    ld d, a
    ld d, [hl]
    xor e
    xor d
    ld d, a
    ld d, [hl]
    xor e
    xor d
    ld d, a
    ld d, [hl]
    xor e
    xor d
    ld d, a
    ld d, [hl]
    xor e
    xor h
    ld d, a
    ld d, h
    xor a
    and h
    ld e, a
    ld b, h
    cp a
    inc b
    rst $38
    db $fc
    rst $38
    ld b, $ff
    dec b
    rst $38
    add h
    ld a, a
    ld b, h
    cp a
    add h
    ld a, a
    ld b, h
    cp a
    xor b
    ld e, a
    ld c, b
    cp a
    xor b
    ld e, a
    ld c, b
    cp a
    adc b
    ld a, a
    ld c, b
    cp a
    adc b
    ld a, a
    ld [$88ff], sp
    ld a, a
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
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    jr nc, jr_09f_68ab

    jr nc, jr_09f_68ad

    jr nc, jr_09f_68af

    jr nc, jr_09f_68b1

    jr nc, jr_09f_68b3

    jr nc, jr_09f_68b5

    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr @+$21

    jr jr_09f_68a1

    jr @+$21

    jr @+$21

    jr @+$21

    jr jr_09f_68a9

    jr jr_09f_68ab

    jr jr_09f_68ad

    ld [$080f], sp
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
    ld c, $0f
    rrca

jr_09f_68a1:
    rrca
    ld c, $0f
    ld b, $07
    ld b, $07
    inc b

jr_09f_68a9:
    rlca
    inc b

jr_09f_68ab:
    rlca
    inc b

jr_09f_68ad:
    rlca
    inc b

jr_09f_68af:
    rlca
    ld b, b

jr_09f_68b1:
    rst $38
    ld b, b

jr_09f_68b3:
    rst $38
    ld b, b

jr_09f_68b5:
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

    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
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
    cp $01
    cp $03
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]

jr_09f_6939:
    ldh a, [rIF]

jr_09f_693b:
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR22], a
    add sp, $17
    add sp, $17
    add sp, $13
    db $ec
    inc hl
    call c, $dc23
    ld hl, $21de
    sbc $20
    rst $18
    jr nz, jr_09f_6939

    jr nz, jr_09f_693b

    ld b, b
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
    cp a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ldh [rIE], a
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $03
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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

    scf
    ret z

    scf
    ret z

    daa
    ret c

    ld h, [hl]
    sbc c
    ld b, [hl]
    cp c
    ld b, [hl]
    cp c
    rst $38
    rst $38
    ld b, b
    cp a
    ld b, h
    cp e
    call nz, $cc3b
    inc sp
    call $8932
    db $76
    adc c
    db $76
    sbc c
    ld h, [hl]
    sbc e
    ld h, h
    cp e
    ld b, h
    rst $38
    nop
    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
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
    ldh [rIE], a
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
    ccf
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
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, $c1
    ld e, $e1
    inc e
    db $e3
    inc e
    db $e3
    ld [$08f7], sp
    rst $30
    rst $38
    rst $38
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    or c
    ld c, [hl]
    cp c
    ld b, [hl]
    cp c
    ld b, [hl]
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f3
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
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
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
    ldh [rIE], a
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
    ld bc, $0302
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_09f_6ac1

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc bc
    rra
    inc bc
    inc bc
    jr nz, jr_09f_6ad5

    ld [$2322], sp
    inc h
    dec h
    ld h, $27
    jr z, jr_09f_6ae6

    ld a, [hl+]
    dec hl
    inc l
    inc bc

jr_09f_6ac1:
    inc bc
    dec l
    ld l, $2f
    jr nc, jr_09f_6acf

    inc bc
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $03

jr_09f_6acf:
    inc bc
    inc bc
    inc bc
    scf
    jr c, jr_09f_6ad8

jr_09f_6ad5:
    inc bc
    add hl, sp
    ld a, [hl-]

jr_09f_6ad8:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, c
    ld b, d
    ld b, e
    inc bc

jr_09f_6ae6:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    inc bc
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    inc bc
    ld d, d
    ld [$5453], sp
    ld d, l
    ld d, [hl]
    ld d, a
    inc bc
    inc bc
    ld e, b
    inc bc
    inc bc
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld h, b
    ld h, c
    inc bc
    inc bc
    ld h, d
    ld h, e
    inc bc
    inc bc
    inc bc
    ld h, h
    ld h, l
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld h, [hl]
    ld h, a
    inc bc
    inc bc
    ld l, b
    ld l, c
    inc bc
    inc bc
    inc bc
    ld l, d
    ld l, e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld l, h
    ld h, a
    inc bc
    inc bc
    ld l, l
    ld l, [hl]
    ld l, a
    inc bc
    inc bc
    ld [hl], b
    ld [hl], c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [hl], d
    ld h, a
    inc bc
    inc bc
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, d
    ld h, a
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    ld [$8382], sp
    inc bc
    inc bc
    inc bc
    inc bc
    add h
    ld h, a
    add l
    inc bc
    add [hl]
    add a
    adc b
    inc bc
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    inc bc
    sub b
    sub c
    inc bc
    inc bc
    sub d
    sub e
    sub h
    inc bc
    sub l
    sub [hl]
    sub a
    adc e
    adc e
    adc e
    sbc b
    sbc c
    sbc d
    sbc e
    inc bc
    inc bc
    sbc h
    sbc l
    inc bc
    inc bc
    sbc [hl]
    sbc a
    and b
    adc e
    adc e
    and c
    and d
    add b
    and e
    and h
    inc bc
    inc bc
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    adc e
    adc e
    xor h
    xor l
    xor [hl]
    inc bc
    xor a
    inc bc
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    adc e
    adc e
    cp b
    cp c
    cp d
    cp e
    sbc b
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    adc e
    adc e
    push bc
    add $c7
    ret z

    adc e
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    ld [bc], a
    ld bc, $4100
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    rlca
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    ld b, $04
    inc b
    ld [bc], a
    inc b
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0607
    ld b, $04
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0201
    nop
    nop
    ld bc, $2202
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0201
    ld [bc], a
    ld b, d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0201
    ld [bc], a
    nop
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    call nz, $c23f
    ccf
    ld [c], a
    rra
    pop af
    rrca
    pop af
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $03fd
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    add d
    ld a, a
    call nz, $c43f
    ccf
    push hl
    sbc [hl]
    jp hl


    ld e, [hl]
    jp hl


    ld a, $f1
    ld e, $f1
    ld e, $d8
    ccf
    db $e4
    ccf
    and d
    ld a, a
    ld hl, $7cff
    jp $c17e


    ld a, a
    ret nz

    cp a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    add d
    ld a, a
    add d
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    jp nz, $c23f

    ccf
    jp nz, $c43f

    ccf
    call nz, $c43f
    ccf
    ret z

    ccf
    ret z

    ccf
    ret nc

    ccf
    ret nc

    ccf
    ret nc

    ccf
    ldh [$3f], a
    and b
    ld a, a
    and b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    adc a
    ldh a, [$8f]
    ldh a, [$9f]
    ldh [$1f], a
    ldh [rVBK], a
    or b
    ld l, a
    sub b
    ld [hl], a
    adc b
    ld a, e
    add h
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    sbc a
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
    ld a, a
    add b
    ld a, a
    add b

jr_09f_6e0c:
    cp a
    ret nz

    ld a, a
    ret nz

    rst $18
    ld h, b
    rst $28
    jr nc, jr_09f_6e0c

    jr @+$01

    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $f00f
    rra
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
    ldh [$1f], a
    ldh [rIF], a
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
    add b
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
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
    cp $01
    cp $01
    cp $01
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
    db $fc
    add e
    ld hl, sp+$47
    ldh [$3f], a
    ldh a, [$1f]
    add sp, $1f
    add sp, $1f
    db $f4
    rrca
    ld a, [c]
    rrca
    pop af
    rrca
    pop af
    ld c, $f9
    ld b, $f9
    ld b, $f9
    ld b, $fb
    inc b
    ei
    inc b
    ei
    inc b
    ei
    nop
    ei
    nop
    ei
    nop
    ld hl, sp+$00
    rst $38
    rlca
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
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
    nop
    ld a, a
    add b
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
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    rrca
    nop
    rra
    rlca
    rra
    rrca
    rra
    inc c
    inc e
    dec de
    jr c, jr_09f_6f88

    jr c, jr_09f_6f8a

    jr c, jr_09f_6f8c

    jr c, jr_09f_6f86

    ld [hl], b
    inc de
    ld [hl], b
    rla
    ld [hl], b
    rla
    ld [hl], b
    rla
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $30
    adc b
    rrca
    rst $00
    rlca
    ldh a, [rP1]

jr_09f_6f86:
    rst $38
    nop

jr_09f_6f88:
    rst $38
    nop

jr_09f_6f8a:
    rst $38
    nop

jr_09f_6f8c:
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
    ret nz

    ret nz

    cp $fe
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
    rla
    rst $38
    inc de
    rst $38

jr_09f_6faa:
    jr nz, jr_09f_6faa

jr_09f_6fac:
    jr nz, jr_09f_6fac

jr_09f_6fae:
    jr nz, jr_09f_6fae

jr_09f_6fb0:
    jr nz, jr_09f_6fb0

jr_09f_6fb2:
    jr nz, jr_09f_6fb2

jr_09f_6fb4:
    jr nz, jr_09f_6fb2

    jr nz, jr_09f_6fb4

    ld b, b
    db $fc
    ld b, b
    db $fc
    ld b, b
    db $fc
    ld b, b
    db $fc
    ld b, b
    db $fc
    ld b, b
    db $fc
    ld b, b
    db $fc
    ld b, b
    ld hl, sp+$40
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
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

jr_09f_6fdd:
    nop
    nop

jr_09f_6fdf:
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
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    nop
    or b
    jr nc, jr_09f_6fdd

    jr nc, jr_09f_6fdf

    jr nc, jr_09f_7061

    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
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
    cp $fe
    rst $38

jr_09f_7061:
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ld a, e
    add h
    rst $38
    nop
    ld a, a
    add b
    ld e, e
    and h
    dec de
    db $e4
    dec de
    db $e4
    dec bc
    db $f4
    inc bc
    db $fc
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rst $08
    ret nz

    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ei
    inc b
    rlca
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
    ret nz

    ccf
    ccf
    ret nz

    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ret nz

    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_09f_7112:
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
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    inc c
    di
    adc [hl]
    ld [hl], c
    sbc [hl]
    ld h, c
    rst $18
    jr nz, jr_09f_7112

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
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    sub a
    ld l, b
    add [hl]
    ld a, c
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    cp $07
    cp $07
    cp $07
    rst $38
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
    rrca
    rrca
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    ld e, $1f
    ld e, $1f
    inc e
    ld e, $1c
    ld e, $1c
    rra
    ld e, $1f
    rra
    rra
    jr jr_09f_71af

    rra
    db $10
    dec e
    nop
    dec de
    nop
    ccf
    inc bc
    dec a
    ccf
    jr jr_09f_71bb

    inc e
    dec e
    ld a, $3e
    rst $38
    ccf
    ccf
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    ld l, [hl]
    sbc a
    inc l
    rst $18
    inc d
    rst $28
    inc d

jr_09f_71af:
    rst $28
    ld [$00f7], sp
    rst $38
    ld d, b
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop

jr_09f_71bb:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$3f], a
    ret nz

    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_09f_71d9:
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    pop af
    rrca
    pop hl
    rra
    add b
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    jr nc, jr_09f_71d9

    ld a, b
    add a
    ld a, h
    add e
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
    rst $38
    nop
    rst $30
    ld [$0bf4], sp
    ret nc

    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $7f
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$1f]
    ret z

    rra
    ret z

    rra
    ld hl, sp+$1f
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh a, [$3f]
    or b
    ld a, a
    jr nc, @+$01

    ld [hl], b
    rst $38
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
    ld b, b
    rst $38
    and b
    ld a, a
    ldh [$1f], a
    ldh [$9f], a
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

jr_09f_7284:
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $80
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    adc [hl]
    pop af
    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld b, b
    ld b, b

jr_09f_72c2:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_09f_72ea

    jr nz, jr_09f_72ec

    jr nz, jr_09f_72ee

    jr nz, @+$22

    rst $28
    jr nc, jr_09f_72c2

    jr nc, jr_09f_7284

    ld [hl], b
    cpl
    ldh a, [$27]
    ld hl, sp+$16
    ld sp, hl
    ld [de], a
    db $fd
    ld [de], a
    db $fd
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

jr_09f_72ea:
    db $10
    rst $38

jr_09f_72ec:
    db $10
    rst $38

jr_09f_72ee:
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_09f_72ff:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    jr c, jr_09f_72ff

    ld a, h
    add e
    ld a, l
    add d
    rst $38
    nop
    rst $38
    nop
    xor a
    ld d, b
    cpl
    ret nc

    rrca
    ldh a, [rTAC]
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
    nop
    rst $38
    nop
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
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ld sp, hl
    ld b, $fb
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
    cp l
    ld b, d
    nop
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
    ldh [$e0], a
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
    rst $28
    db $10
    rst $08
    jr nc, jr_09f_73e4

    ld hl, sp+$01
    cp $00
    rst $38
    rst $38
    rst $38

jr_09f_73e4:
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f9
    ld b, $fb
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, b
    add a
    ld h, b
    sbc a
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
    ld hl, sp-$08
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
    nop
    rst $38
    nop

jr_09f_7434:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld hl, sp+$07

jr_09f_743e:
    ldh [$1f], a
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $43fe
    cp h
    rst $20
    jr jr_09f_7434

    jr jr_09f_743e

    db $10
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    cp $03
    cp $03
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    db $f4
    rrca
    db $f4
    rrca
    add sp, $1f
    ret z

    ccf
    ret z

    ccf
    adc b
    ld a, a
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
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
    ld bc, $fffe
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
    ld bc, $ff01
    ld bc, $01ff
    rst $38
    ld bc, $03fe
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ei
    ld b, $fd
    ld b, $fd
    ld b, $f5
    ld c, $e5
    ld e, $e5
    ld e, $c9
    ld a, $88
    ld a, a
    ld [$08ff], sp
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub b
    ld a, a
    and c
    ld a, [hl]
    and e
    ld a, h
    and a
    ld a, b
    and a
    ld a, b
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $38
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rla
    add sp, $07
    ld hl, sp+$05
    ld a, [$ff00]
    ccf
    rst $38
    rst $38
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
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    rst $38
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
    stop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add d
    ld a, l
    add $39
    add $39
    adc $31
    adc $31
    sbc $21
    sbc $21
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
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
    rst $38
    nop
    cp a
    ld b, b
    xor a
    ld d, b
    dec bc
    db $f4
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ccf
    ccf
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
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
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
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    cp a
    ld b, b
    cp l
    ld b, d
    dec a
    jp nz, $ef10

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
    db $fc
    rst $38
    or l
    xor $df
    ld h, $15
    xor $dd
    rst $20
    rst $28
    rst $30
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
    rst $38
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
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    ld a, $3e
    ld a, $3e
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
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    or b
    ld c, a
    add c
    ld a, a
    ld bc, $1fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    xor e
    db $fc
    or $0f
    ld a, h
    add e
    ld d, a
    and b
    push af
    ld h, [hl]
    ld [hl], $ef
    pop de
    rst $28
    add e
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld h, a
    ld h, a
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $00
    rst $00
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    rra
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
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
    ld e, $e1
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
    cp $01
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
    ld [$1ef1], sp
    ret nc

    ccf
    and b
    ld a, a
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
    ret


    rst $30
    rst $10
    add sp, -$5d
    ld a, h
    ld b, a
    cp a
    ld e, e
    or a
    adc e
    ld [hl], a
    dec sp
    rst $30
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    call z, $88ff
    rst $30
    db $fc
    inc bc
    ld e, h
    and e
    adc c
    or $d8
    rst $20
    db $e4
    ei
    ld sp, hl
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
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
    rst $38
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
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rrca
    rst $38
    ld a, [c]
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld de, $13fe
    db $fc
    daa
    ld hl, sp+$2f
    ldh a, [$2f]
    ldh a, [$5f]
    ldh [$7f], a
    ret nz

    cp a
    ret nz

    rst $38
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
    cp a
    ld b, b
    or a
    ld c, b
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    or e
    ld a, a
    sbc l
    ld [hl], e
    cp $01
    ld a, b
    add a
    or a
    rst $08
    xor a
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    db $ed
    ld a, [c]
    ldh a, [rIF]
    db $fc
    inc bc
    ld a, a
    add b
    rst $38
    nop
    add $39
    ld l, a
    sub c
    inc b
    ei
    ret c

    rst $30
    add b
    rst $38
    rst $28
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
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    cp $03
    cp $03
    db $fc
    rlca
    db $fd
    ld b, $fb
    inc c
    db $eb
    inc e
    db $d3
    inc a
    sub e
    ld a, h
    daa
    ld hl, sp+$27
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp-$71
    ldh a, [$80]
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
    inc e
    db $e3
    ld a, [hl]
    add c
    cp $01
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
    ldh [$1f], a
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
    db $eb
    rst $38
    push hl
    db $db
    add c
    rst $38
    cp a
    ld c, a
    rst $38
    and a
    rst $18
    rst $28
    rst $18
    ld sp, hl
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
    sbc c
    rst $38
    ld sp, $bffe
    ld a, b
    jp $f43c


    rrca
    inc a
    rst $00
    dec c
    ld a, [c]
    xor l
    ld d, d
    pop de
    ld l, $44
    cp a
    ld d, [hl]
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $ed
    db $ed
    ld [hl], h
    ld [hl], h
    ld a, $3e
    jr jr_09f_7996

    inc e
    inc e
    ld c, $0e
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_09f_7996:
    nop
    ld bc, $0302
    inc b
    dec b
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
    rlca
    ld [$0a09], sp
    nop
    nop
    nop
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    stop
    ld de, $1312
    inc d
    dec d
    ld d, $00
    nop
    nop
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    jr nz, jr_09f_79f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_09f_7a03

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    ld l, $00
    nop
    cpl
    jr nc, jr_09f_7a17

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09f_7a27

    nop
    nop
    ld a, [hl-]
    nop
    nop

jr_09f_79f3:
    nop
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    ccf
    ld b, b
    nop
    nop
    ld b, c
    ld b, d
    ld b, e

jr_09f_7a03:
    ld b, b
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_09f_7a17:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
    nop
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_09f_7a27:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, b
    ld h, c
    nop
    nop
    nop
    ld h, d
    nop
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
    nop
    nop
    nop
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $76
    ld [hl], a
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    nop
    ld a, [hl]
    ld a, a
    add b
    add c
    nop
    nop
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
    nop
    nop
    sub b
    sub c
    sub d
    sub e
    nop
    nop
    nop
    nop
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    nop
    nop
    sbc d
    sbc e
    nop
    nop
    nop
    nop
    nop
    sbc h
    sbc l
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    and b
    nop
    nop
    nop
    nop
    nop
    and c
    adc [hl]
    and d
    and e
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    nop
    nop
    nop
    nop
    and l
    and [hl]
    adc [hl]
    adc [hl]
    and a
    xor b
    xor b
    xor c
    xor d
    xor e
    nop
    xor h
    xor l
    nop
    nop
    xor [hl]
    and [hl]
    adc [hl]
    adc [hl]
    xor a
    or b
    or c
    or d
    nop
    nop
    nop
    nop
    or e
    or h
    or l
    or [hl]
    adc [hl]
    adc [hl]
    or a
    cp b
    ld d, $00
    nop
    nop
    nop
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
    ld b, $00
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0501
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
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
    dec b
    nop
    nop
    jr nz, @+$03

    ld bc, $0201
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
    dec b
    dec b
    ld bc, $0201
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0404
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0303
    dec b
    dec b
    dec b
    ld bc, $0404
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    nop
    dec b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0003
    dec b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    rlca
    ld b, $02
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0000
    rlca
    nop
    rlca
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0607
    rlca
    ld b, $02
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $2101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    nop
    sbc h
    inc bc
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld a, a
    add b
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
    cp $01
    ld sp, hl
    ld b, $f6
    ld [$10e8], sp
    ret nc

    jr nz, @-$5e

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
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0102
    inc b
    inc bc
    add hl, bc
    ld b, $12
    dec c
    dec h
    ld a, [de]
    nop
    add b
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop

jr_09f_7c89:
    db $fc
    ldh [$03], a
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    ldh a, [rNR41]
    ret nc

    ld h, b
    sub b
    ret nz

    jr nc, jr_09f_7c89

    nop
    ldh [rP1], a
    add b
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
    cp $01
    db $fc
    inc bc
    ld sp, hl
    rlca
    di
    rrca
    rst $08
    inc sp
    and e
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0205
    inc b
    inc bc
    ld a, [bc]
    dec b
    rla
    ld [$102f], sp
    ld d, b
    cpl
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, b
    xor [hl]
    and b
    ld e, h
    ld b, b
    cp h
    add b
    ld a, b
    nop
    ldh a, [rIE]
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    pop af
    rrca
    db $e3
    rra
    rst $00
    ccf
    rst $08
    ccf
    sbc a
    ld a, a
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
    ccf
    ccf
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
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0205
    ld [bc], a
    dec b
    ld a, [bc]
    dec b
    inc d
    dec bc
    jr z, jr_09f_7d53

    ld c, b
    scf
    and h
    ld e, e
    ld b, [hl]
    cp c
    ld a, [c]
    inc c
    ld hl, sp+$04
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    ldh a, [$e0]
    nop
    nop
    ret nz

    ld b, b
    add b
    nop

jr_09f_7d53:
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
    pop af
    rlca
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ld hl, sp+$04
    ld c, $f1
    pop af
    ld c, $fe
    ld bc, $fe00
    add b
    ld a, a
    add b
    ld a, a
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

jr_09f_7dd4:
    rst $38
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
    ld bc, $0200
    ld bc, $0205
    dec bc
    inc b
    rlca
    ld [$0817], sp
    cpl
    db $10
    ld d, e
    inc l
    and e
    ld e, h
    ld c, d
    or l
    sub b
    ld l, h
    jr z, jr_09f_7dd4

    ld d, b
    xor b
    and b
    ld d, b
    ld b, b
    and b
    nop
    ret nz

    nop
    add b
    nop
    add b
    rst $38
    ldh a, [rIF]
    rst $38
    ldh a, [rIF]
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

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$8f], a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, a
    ld b, $ff
    inc c
    rst $38
    db $10
    rst $38
    nop
    db $e3
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
    ld bc, $02ff
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $e1ff
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    rst $38
    jr c, jr_09f_7ef8

    sub b
    sub e
    db $ec
    add sp, -$09
    db $f4
    ei
    ld a, [hl]
    add a
    ccf
    rst $00
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$e7]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fc
    db $fd
    inc a
    db $fd
    inc a
    adc [hl]
    ld c, [hl]
    ld b, [hl]
    add [hl]
    adc e
    ld b, e
    add a
    ld b, e
    add c
    ld b, c
    add c
    ld b, c
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    ld hl, sp+$07

jr_09f_7ef8:
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
    rra
    ld h, b
    add b
    ld a, a
    add b
    dec sp
    add $3b
    rst $00
    inc sp
    sbc $64
    ei
    add a
    ld hl, sp+$03
    ld hl, sp+$01
    cp $f0
    rrca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$0d]
    cp $1f
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
    add c
    rst $38
    nop
    rra
    nop
    rra
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
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    and b
    ret nz

    and b
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ret nc

    sub b
    sub b
    sub b
    db $10
    sub b
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    add b
    nop
    ret nz

    add b
    and b
    add b
    and b
    add b
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
    ld bc, $0600
    nop
    ld [$3000], sp
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
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
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld a, b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    db $e3
    inc e
    ldh a, [rIF]
    ldh [$1f], a
    nop
    rst $38
    ld bc, $e3ff
    rra
    rst $38
    rlca
    rst $38
    ld b, $ff
    dec b
    rra
    db $e4
    and $fc
    ld a, [$fbfc]
    db $fc
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    nop
    nop

Jump_09f_7ff8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
