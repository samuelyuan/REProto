SECTION "ROM Bank $07d", ROMX[$4000], BANK[$7d]

    call z, $10f3
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
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    add sp, -$01
    add b
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
    ld [$dff7], sp
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
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
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
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
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
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
    ldh a, [rIE]
    ldh [rIE], a
    ld b, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$3f]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    add b
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
    ld l, e
    sub h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    cp $21
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    or a
    ld c, b
    ld e, h
    and e
    rst $28
    db $10
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
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
    db $fc
    inc bc
    rst $28
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
    nop
    rst $38
    nop
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
    ldh a, [$1f]
    ldh [$3f], a
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
    add b
    ld a, a
    ldh [$1f], a
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
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rra
    ldh [$3f], a
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
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
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
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    dec b
    ld b, $07
    nop
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld a, [bc]
    nop
    dec bc
    inc c
    dec c
    ld c, $00
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    stop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rla
    ld b, $00
    jr jr_07d_42e7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc bc
    jr nz, jr_07d_42f8

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07d_4308

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07d_4318

jr_07d_42e7:
    ld [hl-], a
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07d_4329

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld [hl-], a

jr_07d_42f8:
    nop
    ld b, c
    inc bc
    inc bc
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_07d_4300:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    inc bc
    inc bc
    ld c, e

jr_07d_4308:
    ld c, h
    ld c, l
    inc bc
    inc bc
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    jr c, jr_07d_434a

    ld d, d
    nop
    ld d, e
    inc bc
    inc bc
    inc bc

jr_07d_4318:
    ld d, h
    ld d, l
    inc bc
    inc bc
    inc bc
    ld d, [hl]
    ld d, a
    ld e, b
    jr c, jr_07d_435a

    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    inc bc
    ld d, h

jr_07d_4329:
    ld d, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    jr c, jr_07d_436a

    ld h, h
    ld h, l
    inc bc
    ld h, [hl]
    ld h, a
    inc bc
    ld d, h
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    jr c, jr_07d_437a

    ld l, a
    ld h, l
    inc bc
    ld [hl], b
    ld [hl], c
    inc bc
    ld d, h
    ld [hl], d

jr_07d_434a:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    jr c, jr_07d_438a

    ld a, c
    ld e, d
    ld a, d
    inc bc
    inc bc
    inc bc
    ld a, e
    ld a, h

jr_07d_435a:
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    inc bc
    jr c, @-$7c

    jr c, jr_07d_42e7

    add h
    inc hl
    add l
    inc bc
    add [hl]
    add a

jr_07d_436a:
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    jr c, jr_07d_4300

    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    add [hl]
    sub l

jr_07d_437a:
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    inc bc
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

jr_07d_438a:
    and l
    and [hl]
    inc bc
    inc bc
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    inc bc
    xor [hl]
    inc bc
    inc bc
    xor a
    or b
    nop
    or c
    or d
    inc bc
    inc bc
    or e
    or h
    or l
    or [hl]
    or a
    inc bc
    cp b
    inc bc
    inc bc
    inc bc
    cp c
    cp d
    cp e
    nop
    or c
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    inc bc
    jp nz, $0303

    inc bc
    inc bc
    inc bc

Jump_07d_43bc:
    jp Jump_000_00c4


    nop
    push bc
    add $c7
    ret z

    ret


    inc bc
    jp z, Jump_000_0302

    inc bc
    inc bc
    inc bc
    inc bc
    set 1, h
    nop
    nop
    nop
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
    nop
    nop
    dec b
    dec b
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
    dec b
    dec b
    ld bc, $0003
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
    nop
    dec b
    ld bc, $0301
    inc bc
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
    dec b
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld bc, $0101
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
    inc bc
    jr nz, jr_07d_4485

jr_07d_4485:
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    inc bc
    jr nz, jr_07d_4495

jr_07d_4495:
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0301
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0003
    nop
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    ld bc, $0101
    ld bc, $0006
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
    ld bc, $0101
    ld bc, $0005
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $07fe
    ld hl, sp+$0f
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
    rst $38
    nop
    rst $38
    rst $38
    rra
    rst $38
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $03fe
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
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    cp a
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
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    inc de
    db $ec
    rst $38
    nop
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
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
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
    cp $00
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
    rst $38
    nop
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
    inc bc
    rst $38
    ret nz

    rst $38
    ldh a, [$fe]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    dec bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $07fe
    ld hl, sp+$1f
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

    rst $38
    rst $38
    nop
    cp $00
    db $fc
    nop
    rst $38
    nop
    cp $00
    cp $00
    ldh a, [rP1]
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    cp $00
    ld a, a
    add b
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

jr_07d_46c4:
    db $dd
    jr nz, jr_07d_46c4

    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    jr c, @+$01

    ld c, $bf
    rlca
    rst $28
    pop bc
    set 6, b
    call nz, $e3f8
    ld a, h
    ldh [$7f], a
    ldh a, [$7f]
    ld hl, sp+$7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    cp $00
    ret nz

    nop
    ret nz

    nop
    rst $38
    ccf
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    pop bc
    ld a, $e7
    jr @+$01

    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
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
    rlca
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
    ld hl, sp+$1f
    rst $20
    ld a, a
    add a
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ld a, [c]
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $00
    rst $28
    nop
    db $fd
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, a
    cp $3f
    rst $38
    rrca
    rst $38
    add e
    rst $30
    pop hl
    ld sp, hl
    ld [hl], b
    cp $18
    ccf
    ld c, $cf
    inc bc
    scf
    ret nz

    ld [$06f0], sp
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $ff00
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
    ld a, a
    nop
    nop
    add b
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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    daa
    nop
    rra
    nop
    ld a, a
    nop
    ld a, a
    nop
    cpl
    nop
    ld e, a
    nop
    rst $28
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
    rra
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0000
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
    ld bc, $0100
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
    rra
    nop
    rrca
    nop
    rra
    nop
    sbc a
    nop
    ld c, a
    nop
    rra
    nop
    rrca
    nop
    scf
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    adc b
    rst $38
    add sp, -$01
    ld hl, sp+$7f
    ld hl, sp+$3f
    ld a, $0f
    rst $08
    add a
    rst $30
    pop bc
    ld sp, hl
    ld [hl], b
    ld a, h
    jr c, jr_07d_490b

    ld e, $9f
    adc a
    rst $18
    rlca
    ccf
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
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
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    add e
    nop
    inc bc

jr_07d_490b:
    ld b, b
    add e
    nop
    rlca
    nop
    rlca
    nop
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    xor $00
    rst $38
    nop
    and l
    nop
    add b
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    ld d, a
    nop
    inc bc
    nop
    ld de, $0800
    nop
    rla
    nop
    ld c, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_07d_4954

jr_07d_4954:
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    nop
    dec hl
    nop
    ld a, $00
    db $fc
    nop
    ld hl, sp+$00
    call nc, $fa00
    nop
    ld sp, hl
    nop
    db $fc
    nop
    db $f4
    nop
    ei
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
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    ccf
    jr c, jr_07d_49ad

    inc a
    rra
    call c, $8fcf
    rlca
    rra
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_07d_49ad:
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$1f], a
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
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    jp nz, Jump_000_0300

    nop
    ld bc, $0000
    nop
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    pop af
    ei
    ret nz

    cp $f0
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
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
    ld hl, sp+$07
    ld hl, sp-$71
    ld [hl], b
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
    nop
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
    ld hl, sp+$00
    and $00
    nop
    nop
    inc d
    nop
    ld b, h
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
    and a
    rst $38
    dec c
    rst $38
    ld b, b
    jp $8100


    nop
    add b
    nop
    jp $8700


    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    add c
    rst $00
    ld bc, $00cf
    rst $38
    add c
    rst $38
    ld bc, $01ff
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
    rrca
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
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
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
    nop
    db $fd
    nop
    cp $00
    ld hl, sp+$00
    db $e4
    nop
    ldh [rP1], a
    db $e4
    nop
    push af
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
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    xor $00
    ret z

    nop
    call nc, $b400
    nop
    jr z, jr_07d_4b1a

jr_07d_4b1a:
    ld h, b
    nop
    ld d, b
    nop
    ret nc

    nop
    rst $38
    cp $ff
    db $fd
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    jr z, @+$01

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
    dec c
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
    rra
    ldh [rIE], a
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
    ccf
    nop
    nop
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rIE], a
    ld b, e
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    ld b, l
    ld bc, $81ef
    rst $08
    rst $00
    rst $28
    rst $00
    rst $20
    rst $00
    rst $28
    rst $00
    rst $08
    rst $00
    rst $20
    jp $c3ef


    rst $28
    add e
    rst $28
    add e
    rst $08
    add e
    rst $28
    add c
    rst $28
    jp $81ef


    rst $30
    ld b, c
    rst $20
    add b
    rst $28
    nop
    rst $28
    add b
    rst $38
    ret nz

    rst $28
    add b
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    dec c
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    pop bc
    nop
    ld bc, $c120
    nop
    inc bc
    nop
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    cp a
    rst $38
    nop
    rst $38
    ld a, a
    nop
    dec hl
    nop
    rrca
    nop
    rra
    nop
    cpl
    nop
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    sbc a
    nop
    ccf
    nop
    ld a, a
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
    dec a
    nop
    ld [hl], a
    nop
    ld a, $00
    ld c, $00
    rlca
    nop
    inc bc
    nop
    add hl, bc
    nop
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    adc a
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
    add c
    nop
    add c
    nop
    ld hl, $3700
    nop
    dec hl
    nop
    adc l
    nop
    dec h
    nop
    inc de
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
    rrca
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
    inc bc
    db $fc
    add a
    rst $38
    rrca
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, e
    add h
    db $fd
    ld [bc], a
    or $09
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $28
    db $10
    ld e, a
    nop
    xor $01
    xor a
    nop
    ld a, a
    nop
    db $fd
    ld [bc], a
    ld e, a
    nop
    ld [hl], a
    ld [$06f9], sp
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
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
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
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
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
    di
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_07d_4d93:
    rst $38
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
    ld l, a
    sub b
    rst $38
    nop
    cp l
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and e
    ld e, h
    db $fc
    inc bc
    sub e
    ld l, h
    push af
    ld a, [bc]
    ld e, l
    and d
    and [hl]
    ld e, c
    cp a
    ld b, b
    ei
    inc b
    rst $10
    jr z, @+$6d

    sub h
    db $ec
    inc de
    or a
    ld c, b
    ld [$ba15], a
    ld b, l
    reti


    ld h, $fd
    ld [bc], a
    sub h
    ld l, e
    rst $38
    nop
    rst $20
    jr jr_07d_4d93

    ld b, c
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f01
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
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $79
    cp $71
    cp $71
    cp $63
    db $fc
    ld [hl], e
    db $fc
    inc hl
    db $fc
    ld b, e
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rNR34]
    pop hl
    ld e, $e1
    rst $38
    ld a, a
    ldh a, [rSVBK]
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    cp $00
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
    ccf
    rst $38
    rlca
    rst $38
    db $fc
    inc bc
    cp $01
    ldh [$1f], a
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, @+$01

    nop
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
    xor a
    ld d, b
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    rst $18
    jr nz, jr_07d_4ee2

    ret nz

    rst $38
    nop
    cp a
    ld b, b
    cp c
    ld b, [hl]

jr_07d_4eaa:
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
    cp $01
    ld a, a
    add b
    rst $18
    jr nz, jr_07d_4eaa

    db $10
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
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
    rra

jr_07d_4ed3:
    rra
    rra

jr_07d_4ed5:
    rra
    ccf

jr_07d_4ed7:
    ccf
    ld a, a

jr_07d_4ed9:
    ld a, a
    rst $30

jr_07d_4edb:
    rst $38
    rst $38

jr_07d_4edd:
    rst $38
    rst $38

jr_07d_4edf:
    rst $38
    rst $18

jr_07d_4ee1:
    rst $38

jr_07d_4ee2:
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    or a
    ld a, a
    or l
    ld a, a
    or l
    ld a, a
    sub l
    ld a, a
    dec d
    rst $38
    dec d
    rst $38
    sub l
    ld a, a
    dec d
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    ld e, l
    rst $38
    ld b, b
    rst $38
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
    rlca
    ld hl, sp+$38
    rst $00
    ccf
    ret nz

    ccf

jr_07d_4f27:
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    and b
    and b
    jr nc, jr_07d_4ed3

    jr nc, jr_07d_4ed5

    jr nc, jr_07d_4ed7

    jr nz, jr_07d_4ed9

    jr nz, jr_07d_4edb

    jr nz, jr_07d_4edd

    jr nz, jr_07d_4edf

    jr nz, jr_07d_4ee1

    jr nz, jr_07d_4f63

    and b
    and b
    jr nz, jr_07d_4f27

    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [rSVBK], a
    ldh a, [rOBP0]
    ld hl, sp+$44
    ld hl, sp+$44
    db $fc
    ld b, d
    cp $41
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a

jr_07d_4f63:
    ldh [rIE], a
    ldh [$7f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$bf]
    ldh a, [$6f]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $01
    rst $38
    ld bc, $ffff
    nop
    rst $38
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
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    ld a, a
    rst $38

Jump_07d_4fb0:
    db $fd
    rst $38
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
    ld a, [$fbff]
    rst $38
    ei
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$baff]
    rst $38
    or d
    rst $38
    or d
    rst $38
    or d
    rst $38
    or d
    rst $38
    and d
    rst $38
    or d
    rst $38
    or d
    rst $38
    xor b
    rst $30
    xor b
    rst $30
    xor b
    rst $30
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
    rst $30
    rst $38
    db $fc
    db $fc
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    add e
    ld a, h
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
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $01
    rst $38
    ld bc, $edff
    rst $38
    call $c9ff
    rst $38
    reti


    rst $38
    db $db
    rst $38
    ret c

    rst $38
    jp c, $daff

    rst $38
    ld d, d
    rst $38
    ld e, d
    rst $38
    ld [de], a
    rst $38
    ld d, d
    rst $38
    inc de
    cp $13
    cp $13
    cp $11
    cp $91
    cp $91
    cp $91
    cp $d1
    cp [hl]
    push de
    cp [hl]
    rst $20
    cp h
    ld h, e
    cp h
    ld h, a
    cp h
    ld h, a
    cp h
    ld h, e
    cp h
    ld h, e
    cp h
    ld h, d
    cp l
    ld [c], a
    dec a
    ld [c], a
    dec a
    ld [c], a
    dec a
    add $39
    jr nz, @+$01

    jr nz, @+$01

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
    rra
    ldh [$e1], a
    ld e, $fe
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
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
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
    rrca
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc sp
    cp $03
    cp $01
    rst $38
    ld bc, $22ff
    rst $38
    ld h, d
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld [c], a
    ld a, a
    ld h, [hl]
    rst $38
    db $e3
    ld a, [hl]
    rst $20
    ld a, [hl]
    ld h, l
    cp $45
    cp $45
    cp $45
    cp $45
    cp $45
    cp $47
    db $fc
    ld b, a
    db $fc
    ld b, a
    db $fc
    ld b, a
    db $fc
    add a
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    rst $00
    cp b
    sub [hl]
    jp hl


    sub $a9
    adc $b1
    sbc $a1
    rst $18
    and c
    ccf
    pop bc
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $7ffe
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
    rrca
    ldh a, [$f0]
    rrca
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
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $03
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
    or b
    ld a, a
    or b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
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
    ret nz

    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    add c
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
    rst $00
    rst $38
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
    rst $38
    nop
    rst $38
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
    add a
    ld a, b
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
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    rlca
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
    ld bc, $0202
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $02
    ld [bc], a
    ld [bc], a
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_07d_5217

    ld a, [de]
    dec de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07d_522a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07d_5213

    ld [bc], a
    ld [bc], a

jr_07d_5213:
    add hl, hl
    ld a, [hl+]
    ld e, $2b

jr_07d_5217:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07d_524e

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07d_525e

    ld e, $3a
    dec sp
    inc a
    dec a

jr_07d_522a:
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
    ld d, c
    ld d, d
    ld d, e
    ld d, h
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

jr_07d_524e:
    ld h, c
    ld h, d
    ld [bc], a
    ld [bc], a
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

jr_07d_525e:
    ld l, a
    ld [hl], b
    ld [bc], a
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
    ld [bc], a
    add b
    ld d, [hl]
    ld d, [hl]
    add c
    ld [bc], a
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
    ld e, $9e
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
    ld d, [hl]
    xor e
    xor h
    xor l
    ld [bc], a
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
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    cp c
    ld [bc], a
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cdcd
    call $cfce
    ret nc

    pop de
    jp nc, $d3ac

    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $cddb

    ld d, [hl]
    call c, $dedd
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    rst $18
    ldh [rRP], a
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0603
    ld b, $06
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $06
    ld b, $00
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld b, $06
    ld b, $00
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld b, $06
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0506
    dec b
    dec b
    inc bc
    ld b, $06
    ld b, $06
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    nop
    dec b
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
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
    add b
    rst $38

jr_07d_5476:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07d_547c:
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    dec bc
    db $f4
    rla
    add sp, $0e
    ldh a, [$3c]
    ret nz

    inc e
    ldh [rNR23], a
    ldh [$28], a
    ret nc

    jr z, jr_07d_5476

    ld [$18f0], sp
    ld h, b
    jr z, jr_07d_547c

    inc c
    ldh a, [rLCDC]
    cp h
    xor b
    ld d, [hl]
    db $10
    xor $00
    cp $00
    cp $11
    xor $90

jr_07d_54bb:
    ld c, a
    ld d, h
    dec hl
    jp nc, Jump_07d_7f2d

    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    ld a, a
    rlca
    ld a, a
    inc bc
    ccf

jr_07d_54d0:
    di
    rrca

jr_07d_54d2:
    ld [hl], e
    rrca
    ld h, a
    rra
    ld l, [hl]
    ld e, $58
    jr c, jr_07d_54bb

    ld h, c
    add b
    add a
    nop
    rra
    rlca
    ld a, b
    rrca
    ldh a, [rIF]
    ldh a, [$c7]
    jr c, jr_07d_54d0

    jr jr_07d_54d2

    dec de
    rst $28
    ld e, $fc
    inc e
    pop af
    ld [hl], b
    pop hl
    ld [c], a
    adc c
    add [hl]
    add hl, de
    ld b, $79
    ld b, $f8
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ei
    nop
    di
    nop
    pop hl
    nop
    add c
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp d
    ld b, l
    dec [hl]
    jp z, $ff00

    or b
    ld c, a
    rst $38
    nop
    cp e
    ld b, h
    ld a, d
    add l
    ld a, a
    add b
    ld e, c
    and [hl]
    ld e, l
    and d
    ld a, a
    add b
    ld a, $c1
    nop
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
    ld a, [$d42b]
    ld e, a
    and b
    db $fc
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add c
    cp $07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3e], a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ld a, h
    add b
    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ld a, $c0
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$79
    ld hl, sp-$7f
    cp $80
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
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
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e3], a
    add b
    adc a
    inc bc
    inc l
    rlca
    ldh [rTAC], a
    ldh a, [$67]
    sub b
    rst $20
    ld de, $13e3
    ld [c], a
    ld a, [de]
    ld hl, sp+$18
    pop af
    ld [hl], b
    pop hl
    call nz, $8489
    add hl, sp
    inc b
    ld a, c
    inc b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld a, [$f100]
    nop
    pop hl
    nop
    add c
    nop
    ld bc, $0000
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

    ld bc, $03c0
    ret nz

    rlca
    ldh [rIF], a
    ld h, b
    rra
    ld b, b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fd
    ld [bc], a
    ei
    inc b
    db $f4
    dec bc
    ld h, [hl]
    sbc c
    adc b
    ld [hl], a
    sbc b
    ld h, a
    ld hl, sp+$07
    ld h, d
    sbc l
    db $ec
    inc de
    pop af
    ld c, $ea
    dec d
    ld h, h
    sbc e
    nop
    rst $38
    ld e, b
    and a
    pop bc
    ld a, $83
    ld a, h
    sub b
    ld l, a
    jp z, $8235

    ld a, l
    nop
    rst $38
    ret nz

    ccf
    add sp, $17
    add b
    ld a, a
    db $e4
    dec de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc d
    ld [hl], l
    ld a, a
    add b
    db $fc
    nop
    nop
    nop
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    db $fc
    nop
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
    ld hl, sp+$00
    rst $38
    nop
    ld a, a
    add b
    inc c
    di
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f1]
    ret nz

    rst $00
    ld bc, $071e
    ld a, b
    rra
    ldh [$3f], a
    ret nz

    rst $38
    ld bc, $03ff
    cp $0e
    db $fc
    jr c, @-$0d

    ld [hl], b
    rst $20
    ret nz

    adc a

jr_07d_5681:
    add b
    ccf

jr_07d_5683:
    nop
    rst $38

jr_07d_5685:
    nop
    rst $38
    nop
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld bc, $0380
    add b
    rlca
    add b
    rrca
    ld b, b
    rra
    ld d, b
    rrca
    db $10
    ld c, a
    db $10
    rst $08
    jr nz, jr_07d_5681

    jr nz, jr_07d_5683

    jr nz, jr_07d_5685

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $853c


    ld a, d
    ld [hl+], a
    db $dd
    ld c, h
    or e
    ld c, d
    or l
    ld [$10f7], sp
    rst $28
    ld [$40f7], sp
    cp a
    nop
    rst $38
    inc b
    ei
    adc h
    ld [hl], e
    ld b, c
    cp [hl]
    ld b, b
    cp a
    ret nz

    ccf
    ret z

    scf
    add e
    ld a, h
    ld d, $e9
    ld e, $e1
    inc e
    db $e3
    dec [hl]
    jp z, $dc23

    ld h, e
    sbc h
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$a5f7], sp
    ld e, d
    cp $01
    inc hl
    nop
    nop
    nop
    nop
    rst $38
    cp $01
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

jr_07d_5719:
    nop
    dec b
    inc bc
    or $0e
    jr jr_07d_5719

    ldh [$e3], a
    add c
    adc [hl]

jr_07d_5724:
    inc bc
    inc a
    dec bc
    db $f4
    dec a
    jp nz, $837d

    rst $38
    rlca
    db $fc
    ld c, $f8
    jr c, jr_07d_5724

    ld h, d
    add $c1
    sbc [hl]
    ld bc, $013e
    cp $01
    cp $01
    db $fc
    nop
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
    rrca
    nop
    rra
    nop
    ccf
    nop
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
    pop af
    ld c, $f6
    add hl, bc
    rst $38
    nop
    db $fd
    ld [bc], a
    ccf
    ret nz

    ld [hl], e
    adc h
    rst $28
    db $10
    rst $38
    nop
    ld d, a
    xor b
    ld l, [hl]
    sub c
    ret


    ld [hl], $31
    adc $90
    ld l, a
    add b
    ld a, a
    add c
    ld a, [hl]
    add e
    ld a, h
    ld b, $f9
    ld h, $d9
    inc c
    di
    sbc h
    ld h, e
    sbc h
    ld h, e
    inc sp
    call z, $ca35
    jp nc, $802d

    ld a, a
    add d
    ld a, l
    ld b, b
    cp a
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
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $03fe
    db $fc
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    ld [$0ef7], sp
    pop af
    dec de
    db $e4
    ld [bc], a
    db $fd
    add a
    ld a, b
    ld h, c
    sbc [hl]
    ld b, b
    cp a
    ld c, c
    or [hl]
    ret c

    daa
    cp $01
    ld a, $01
    ld b, $01
    ccf
    rst $38
    rlca
    rst $38
    jp Jump_07d_783f


    rlca
    ld c, $01
    rlca
    nop
    ld bc, $0000
    nop
    ld bc, $0700
    inc bc
    inc e
    inc c
    ld d, b
    dec sp
    ld h, b
    rst $20
    add c
    sbc [hl]
    rlca
    ld a, b
    rra
    and b
    ccf
    add c
    cp a
    inc bc
    sbc $0e
    db $dd
    inc e
    db $d3
    ld d, b
    rst $08
    add b
    sbc a
    nop
    ld e, a
    nop
    xor $00
    db $ec
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    jr nz, jr_07d_582c

jr_07d_582c:
    stop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub e
    inc bc
    adc e
    dec bc
    ld c, e
    dec bc
    ld e, e
    dec de
    ld e, e
    dec de
    nop
    ld a, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    rst $38

jr_07d_5853:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07d_5865:
    nop
    rst $30
    ld [$08f7], sp
    sbc $21
    rst $08
    jr nc, jr_07d_58ad

jr_07d_586f:
    pop bc
    inc e
    db $e3
    ld sp, hl
    ld b, $72
    adc l
    ld a, e
    add h
    db $d3
    inc l
    add [hl]
    ld a, c
    inc c
    di
    add hl, bc
    or $08
    rst $30
    jr nc, jr_07d_5853

    jr nz, jr_07d_5865

    jr jr_07d_586f

    ld [$00f7], sp
    rst $38
    add c
    ld a, [hl]
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    add hl, bc
    or $00
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    adc a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$87]
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp-$79

jr_07d_58ad:
    ld hl, sp+$07
    ld hl, sp-$40
    ld hl, sp-$60
    ld hl, sp-$20
    ld hl, sp-$4c
    ld hl, sp-$2c
    ld hl, sp-$0c
    ld hl, sp-$28
    db $fc
    db $fc
    ld hl, sp+$7c
    ld hl, sp-$5c
    db $fc
    ld a, h
    db $fc
    cp h
    db $fc
    ld a, h
    db $fc
    db $fc
    db $fc
    call c, $fcfc
    db $fc
    call nc, $cefc
    db $fc
    sbc $fc
    cp $fe
    cp [hl]
    cp $be
    cp $9e
    cp $b6
    cp $7e
    cp $7e
    cp $3e
    cp $1e
    cp $1f
    rst $38
    rrca
    rst $38
    rrca
    ld a, a
    rrca
    ccf
    ld [hl], b
    rrca
    jr nc, jr_07d_5903

    jr nc, jr_07d_5905

    db $10
    rrca
    inc de
    rrca
    rlca
    rra
    inc c
    inc a
    jr nc, jr_07d_5972

    ret nz

    adc $00

jr_07d_5903:
    ld a, $0b

jr_07d_5905:
    db $f4
    dec sp
    push bc
    ld a, e
    add a
    cp $0c
    ld sp, hl
    jr @-$09

    ld [hl], d
    call $bdc2
    add d
    ld a, h
    ld [bc], a
    cp $00
    ld a, [c]
    nop
    pop hl
    nop
    pop bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0300
    nop
    rlca
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    and c
    nop
    add d
    nop
    and c

jr_07d_5949:
    nop
    ret nz

    nop
    add sp, $00
    cp $00
    rst $38
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
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38

jr_07d_5963:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_07d_5949

    ld hl, $807f
    ld e, e
    and h
    push af
    ld a, [bc]

jr_07d_5972:
    call nz, $c43b
    dec sp
    xor e
    ld d, h
    sbc l
    ld h, d
    cp l
    ld b, d
    cp c
    ld b, [hl]
    ld h, $d9
    dec e
    ld [c], a
    inc bc
    db $fc
    ld bc, $01fe
    cp $14
    db $eb
    jr z, jr_07d_5963

    ld a, [hl-]
    push bc
    ld de, $d6ee
    add hl, hl
    ld [$adf7], sp
    ld d, d
    ld c, $f1
    dec h
    jp c, $ff00

    dec h
    jp c, Jump_000_2bd4

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    jr c, @+$01

    ld a, $f9
    add hl, sp
    pop hl
    rst $20
    sub c
    adc a
    ld de, $3f6f
    rst $18
    ld a, a
    sbc a
    db $fd
    dec c
    ld a, [$e611]
    ld h, c
    call c, $3c83

jr_07d_59f9:
    inc bc
    db $fc

jr_07d_59fb:
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld e, h
    inc bc
    inc e
    inc bc
    sbc h
    inc bc
    sbc h
    inc bc
    sbc h
    inc bc
    sbc h
    inc bc
    sbc h
    inc bc
    ld a, b
    rlca
    ld h, b
    rra
    ld h, b
    rra
    jr nz, jr_07d_5a75

    jr nz, @-$1f

    jr nz, jr_07d_59f9

    jr nz, jr_07d_59fb

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    dec de
    nop
    ld a, a
    nop
    sbc a
    nop
    ld c, [hl]
    ld bc, $003f
    cpl
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, [$ff00]
    nop
    ld a, [$ff01]
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld l, a
    sub b
    ld [hl], a
    adc b
    rst $18
    jr nz, jr_07d_5aa6

    ret nz

    ld l, a
    sub b
    or e
    ld c, h
    ld d, $e9
    cp a
    ld b, b
    rst $30
    ld [$15ea], sp
    ld d, b

jr_07d_5a75:
    xor a
    inc bc
    db $fc
    inc de
    db $ec
    ld [$d215], a
    dec l
    ld d, a
    xor b
    daa
    ret c

    ld e, [hl]
    and c
    rst $20
    jr @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    ld [hl], e
    adc h
    ld c, a
    or b
    nop
    rst $38
    ld bc, $7ffe
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
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b

jr_07d_5aa6:
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    inc de
    nop
    ld bc, $0000
    nop
    ld de, $7f00
    nop
    rst $38
    nop

jr_07d_5adc:
    rst $38
    nop
    rst $38
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
    rst $18
    jr nz, jr_07d_5adc

    db $10
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    ld a, a
    add b
    ld e, e
    and h
    rst $18
    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    ei
    inc b
    ldh [$1f], a
    ld de, $73ee
    adc h
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$04fb], sp
    db $f4
    dec bc
    db $eb
    inc d
    cp e
    ld b, h
    rst $28
    db $10
    ei
    inc b
    cp $00
    cp $00
    db $fd
    nop
    push hl
    nop
    cp h
    nop
    cp [hl]
    nop
    db $ec
    nop
    cp b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    sbc $00
    db $fd
    nop
    rst $38
    nop
    db $fc
    nop

jr_07d_5b42:
    ei
    nop
    ei
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
    cp a
    ld b, b
    rst $18
    jr nz, jr_07d_5b42

    ld [de], a
    add hl, sp
    add $d0
    cpl
    ld a, c
    add [hl]
    xor l
    ld d, d
    rst $38
    nop
    cp $01
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    rst $30
    ld [$00ff], sp
    ld a, l
    add d
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    jp nz, $c3c3

    inc a
    ld l, a
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    db $fd
    nop
    ld b, c
    add b
    jp nc, $f300

    nop
    pop af
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    db $db
    inc h
    rrca
    ldh a, [$ef]
    db $10
    rst $30
    ld [$08f7], sp
    ld e, e
    and h
    or $09
    ld a, $c1
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    cp b
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
    cp $fe
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
    sbc b
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07d_5cd4

    add b
    cp a
    ld b, b
    rst $28
    db $10
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
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ldh a, [rIF]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $18
    nop
    rst $28
    nop
    ld sp, hl
    nop
    rst $28
    nop
    cp $00
    rst $38
    nop
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    and $00
    ld a, [$fa00]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    rst $38

jr_07d_5cd4:
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rlca
    rst $18
    inc bc
    sub a
    ld bc, $019f
    sbc a
    rlca
    cp a
    rrca
    rst $38
    rrca
    rst $18
    rrca
    rst $38
    rrca
    cp a
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    rlca
    nop
    ld bc, $0100
    nop
    ld b, a
    nop
    cpl
    nop
    rla
    nop
    rrca
    nop
    dec a
    nop
    ld a, l
    nop
    cp a
    nop
    cp a
    nop
    ei
    nop
    rst $00
    nop
    rst $18
    nop
    cp $01
    db $fd
    ld [bc], a
    inc bc
    db $fc
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld sp, hl
    nop
    ld hl, sp+$02
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$60], a
    xor $ee
    ld l, [hl]
    xor $6e
    xor $60
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
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
    or e
    nop
    rst $30
    nop
    cp $00
    ld hl, sp+$00
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
    cp $00
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    xor [hl]
    nop
    db $fc
    nop
    db $fc
    nop
    ei
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    cp $00
    ld [hl], c
    nop
    rst $10
    nop
    db $e4
    nop
    or h
    nop
    ld [$e000], a
    nop
    and b
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, [hl]
    nop
    dec de
    nop
    rlca
    nop
    ld a, $00
    dec de
    nop
    ld c, $00
    nop
    nop
    inc b
    nop
    ld b, $00
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    or $09
    cp a
    ld b, b
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
    cp [hl]
    ld b, c
    xor c
    ld d, [hl]
    db $e3
    inc e
    cp b
    ld b, a
    ret nc

    cpl
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    pop af
    ld c, $e2
    dec e
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
    rlca
    nop
    inc bc
    nop
    ld sp, hl
    nop
    ld bc, $f904
    nop
    inc bc
    nop
    rlca
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    db $fd
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    ld hl, sp+$00
    ldh [rP1], a
    or b
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
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    or $ff
    cp $ff
    rst $28
    rst $38
    ei
    rst $38
    cp $ff
    rst $28
    rst $38
    ld a, [$fbff]
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    cp $ff
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    dec de
    nop
    ld a, a
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

jr_07d_5ece:
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $28
    db $10
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_07d_5ece

    ld [de], a
    ld a, c
    add [hl]
    add hl, sp
    add $70
    adc a
    and c
    ld e, [hl]
    rlca
    ld hl, sp+$22
    db $dd
    ld a, [hl-]
    push bc
    rst $38
    nop
    inc a
    jp Jump_07d_4fb0


    ld b, c
    cp [hl]
    ld hl, $eade
    dec d
    ld l, b
    sub a
    jp nz, Jump_000_003d

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
    add b
    rst $38
    cp h
    rst $38
    and h
    rst $38
    and h
    rst $38
    and h
    rst $38
    cp h
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
    pop hl
    rst $38
    ret nz

    rst $38
    and d
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    sub c
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    and e
    rst $38
    and b
    rst $38
    ld e, e
    rst $38
    and d
    rst $38
    sub h
    rst $38
    ld b, b
    rst $38
    ld a, [bc]
    rst $38
    xor l
    rst $38
    pop de
    rst $38
    ld l, b
    rst $38
    cp e
    rst $38
    db $eb
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    ld e, d
    rst $38
    rst $28
    rst $38
    xor l
    rst $38
    rst $10
    rst $38
    ld a, l
    rst $38
    db $db
    rst $38
    ccf
    nop
    nop
    ld a, [c]
    nop
    sub a
    nop
    ld h, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld a, [c]
    ld bc, $21de
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    ld a, a
    add b
    rst $38
    nop
    swap h
    ld e, a
    and b
    db $db
    inc h
    ld e, e
    and h
    ld b, a
    cp b
    dec b
    ld a, [$db24]
    db $e3
    inc e
    pop bc
    ld a, $00
    rst $38
    ld b, c
    cp [hl]
    inc de
    db $ec
    ld b, l
    cp d
    ld [bc], a
    db $fd
    dec de
    db $e4
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    inc bc
    ccf
    rrca
    ccf
    rlca
    ld a, a
    rlca
    ld a, a
    dec bc
    rst $38
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    cpl
    nop
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0900
    nop
    ld bc, $0500
    nop
    ld bc, $ff00
    sbc a
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
    ld sp, $6100
    nop
    ld [bc], a
    nop
    rlca
    nop
    inc de
    nop
    rlca
    nop
    dec b
    ld [bc], a
    ld d, $00
    ld a, $00
    cp a
    nop
    cp [hl]
    nop
    cp b
    nop
    ld sp, hl
    nop
    rst $38
    nop
    db $fd
    nop
    cp $01
    rst $28
    db $10
    rst $28
    db $10
    rst $00
    jr c, jr_07d_60be

    cp b
    adc $31
    cp $01
    ld e, l
    and d
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld h, a
    sbc b
    ld d, e
    xor h
    or e
    ld c, h
    sbc $20
    rst $28
    db $10
    rst $30
    ld [$44bb], sp
    db $fd
    ld [bc], a
    call $1132
    xor $37
    ret z

    sub l
    ld l, d
    push de
    ld a, [hl+]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
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
    ret nz

jr_07d_60be:
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
    ld bc, $01ff
    rst $38
    ld bc, $feff
    ld bc, $01fe
    cp $01
    cp $01
    rst $38
    cp $ff
    cp $4f
    cp $07
    cp $1f
    cp $7f
    cp $af
    cp $6f
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $7f
    cp $ff
    cp $7f
    cp $3f
    cp $5f
    cp $ef
    cp $7f
    cp $ff
    cp $7f
    cp $7b
    cp $3f
    cp $3f
    cp $ff
    cp $f7
    cp $ff
    cp $ff
    cp $9f
    cp $3b
    cp $33
    cp $03
    cp $0f
    cp $07
    cp $33
    cp $13
    cp $0f
    db $fc
    rrca
    db $fc
    rrca
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
    db $fc
    rlca
    db $fc
    rlca
    db $fc

jr_07d_6138:
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
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
    ld hl, sp-$09
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp

jr_07d_6152:
    rst $30
    ld [$08f7], sp

jr_07d_6156:
    rst $30
    ld [$10ef], sp
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
    xor $10
    sbc $20
    sbc $20
    sbc $20
    rst $18
    jr nz, @-$1f

    jr nz, jr_07d_6152

    jr nz, @-$1f

    jr nz, jr_07d_6156

    jr nz, jr_07d_6138

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
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
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

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$1f], a
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
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$07
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
    db $e3
    nop
    pop bc
    nop
    add b
    nop
    ld c, $00
    ld [hl], b
    nop
    adc [hl]
    nop
    add c
    nop
    add b
    ld [bc], a
    add b
    ld [bc], a
    ld b, b
    ld [bc], a
    jr nz, jr_07d_6244

    sub c
    nop

jr_07d_6244:
    adc [hl]
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    di
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
    nop
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
    inc b
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
    nop
    add hl, bc
    ld a, [bc]
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
    ld c, $00
    rrca
    db $10
    ld de, $1312
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_07d_62c2

jr_07d_62c2:
    nop
    add hl, de
    ld a, [de]
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    ld c, $20
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_07d_6301

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07d_6311

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07d_6321

    ld a, [hl-]
    dec sp
    inc a
    rra
    rra
    rra
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    dec [hl]
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
    ccf

jr_07d_6301:
    ld c, [hl]
    ld c, a
    ld d, b
    nop
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

jr_07d_6311:
    ld e, l
    ld e, [hl]
    ld e, a
    nop
    ld d, c
    ld d, d
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

jr_07d_6321:
    ld l, d
    ld l, e
    ld l, h
    nop
    ld d, c
    ld d, d
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
    nop
    ld d, c
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
    ld [hl], l
    sub h
    sub l
    sub [hl]
    rra
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
    ld [hl], l
    and d
    rra
    rra
    rra
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
    ld [hl], l
    xor [hl]
    rra
    rra
    rra
    rra
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
    rra
    rra
    rra
    rra
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    rra
    rra
    rra
    rra
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d31f

    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $0cdb

    call c, Call_000_00dd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    inc bc
    dec b
    dec b
    inc bc
    ld b, $06
    ld b, $00
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    nop
    ld [bc], a
    inc bc
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0103
    ld bc, $0005
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0103
    ld bc, $0005
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc bc
    ld bc, $0501
    nop
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0600
    ld b, $06
    ld b, $03
    dec b
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0605
    ld b, $00
    ld b, $02
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0600
    ld b, $06
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld b, $06
    ld b, $00
    nop
    ld b, $01
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
    nop
    rst $38
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    inc c
    nop
    dec bc
    ret nz

    ld [$08c0], sp
    ret nz

    ld [$08c0], sp
    nop
    cp $00
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $8700
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    nop
    ccf
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
    inc bc
    nop
    inc bc
    nop
    add e
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    pop bc
    nop
    add c
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
    rlca
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
    ld bc, $03fe
    cp $03
    cp $03
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
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
    add b
    rst $38
    nop
    rst $38
    nop
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
    cp $00
    ld hl, sp+$00
    di
    nop
    db $f4
    nop
    ldh [rSC], a
    ldh [rSC], a
    db $f4
    nop
    di
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp $03
    cp $03
    cp $03
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
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
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fe
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
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
    rrca
    rrca
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
    rst $38
    rrca
    db $fd
    rrca
    db $f4
    rrca
    ld a, [$f20f]
    rrca
    ld hl, sp+$0f
    rst $30
    rrca
    rst $38
    rrca
    db $fd
    rrca
    ei
    rrca
    ld sp, hl
    rrca
    ld a, [c]
    rrca
    push af
    rrca
    ldh a, [rIF]
    ld [hl], b
    rrca
    jr nc, jr_07d_6755

    rra
    nop
    rst $18
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rst $38
    nop
    rra
    nop
    ccf

jr_07d_6755:
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
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    rlca
    ld [$0807], sp
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rra
    jr nz, jr_07d_679e

    inc hl
    rra
    inc hl
    rra
    inc hl
    ccf
    ld b, e
    ccf
    ld b, e
    ccf
    ld b, e
    ccf
    ld b, e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    db $fd
    rlca
    rst $38
    rlca

jr_07d_679e:
    db $fd
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    ei
    rrca
    rst $38
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld a, [$f50f]
    rra
    push af

jr_07d_67b7:
    rra
    ldh a, [$1f]
    ld hl, sp+$1f
    ldh a, [$1f]
    pop af
    rra
    ld sp, hl
    rra
    add sp, $3f
    db $fc
    ccf
    xor $3f
    db $ec
    ccf
    pop hl
    ccf
    rst $30
    ccf
    db $ed
    ccf
    jp hl


    ld a, a
    rst $20
    ld a, a
    rst $30
    ld a, a
    di
    ld a, a
    rst $28
    ld a, a
    rst $08
    ld a, a
    xor $7f

jr_07d_67de:
    sbc b
    rst $38
    ld [hl], d
    adc l
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [$6605]
    sbc c
    jp z, $cf35

    jr nc, jr_07d_67b7

    dec a
    swap h
    rst $20
    jr jr_07d_67de

    inc e
    di
    inc c
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, [c]
    dec c
    db $e4
    dec de
    call $e332
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
    call z, $ceff
    rst $38
    push bc
    rst $38
    xor h
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl-]
    rst $38
    sub l
    rst $38
    ld d, b
    rst $38
    nop

jr_07d_683b:
    rst $38
    jr nz, @+$01

    nop

jr_07d_683f:
    rst $38
    rst $38

jr_07d_6841:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_07d_684a:
    nop
    nop
    nop

jr_07d_684d:
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

jr_07d_6858:
    rst $38

jr_07d_6859:
    ccf

jr_07d_685a:
    rst $38
    jr nz, jr_07d_684d

    cpl

jr_07d_685e:
    rst $30
    jr z, jr_07d_6858

    jr z, jr_07d_685a

    jr z, @-$07

    jr z, jr_07d_685e

    jr z, jr_07d_6859

    cpl
    rst $38
    ldh [$3f], a
    ldh [$30], a
    rst $28
    ret z

    jr nz, jr_07d_683b

    jr nz, @-$36

    jr nz, jr_07d_683f

    jr nz, jr_07d_6841

    jr nz, jr_07d_684a

    jr nz, @-$3e

    jr nz, @+$01

    rst $38
    nop
    rst $38
    ld c, b
    and a
    rra
    ldh [rIF], a
    ldh a, [$0b]
    db $f4
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [$36]
    ret


    dec bc
    db $f4
    cp b
    ld b, a
    add b

jr_07d_6899:
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    nop

jr_07d_68a1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    daa
    ret c

    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_07d_6899

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $10fe
    rst $28
    ld a, [bc]
    push af
    add [hl]
    ld a, c
    jr nc, jr_07d_68a1

jr_07d_68d2:
    ld sp, $33ce
    call z, $ba45

jr_07d_68d8:
    adc e
    ld [hl], h

jr_07d_68da:
    ld h, [hl]
    sbc c
    and [hl]
    ld e, c
    and $19
    nop
    nop
    nop
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
    ei
    rst $38
    and a
    rst $38
    ld c, c
    rst $38
    dec h
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld b, b
    cp a
    ld sp, $03ff
    rst $38
    add b
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
    ldh [rIE], a
    jr nz, jr_07d_699c

    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    rst $38
    ld a, a
    ldh [$3f], a
    ld h, b
    cp a
    sbc a
    jr nz, jr_07d_68d2

    jr nz, @-$5f

    jr nz, @-$5f

    jr nz, jr_07d_68d8

    jr nz, jr_07d_68da

    jr nz, @+$21

    jr nz, @+$01

    rst $38
    ld bc, $50fe
    xor a
    ld l, b
    rla
    db $fd
    ld [bc], a
    db $fc
    nop
    ld hl, sp+$00
    cp $00
    ld a, [hl]
    add b
    inc e
    rst $38
    ld hl, sp-$01
    add sp, -$02
    db $fc
    cp $fc
    cp $f8
    cp $f0
    cp $f0
    cp $f0
    cp $e0
    cp $c0
    cp $e0
    cp $f0
    db $fd
    ldh [$fe], a
    ldh a, [rIE]
    ldh [rIE], a
    ld [hl], b
    add b
    ld [hl], b
    add b
    jr nc, @-$3e

    inc h
    ret nc

    inc l
    ret nc

    jr @-$1a

    ld c, $f0
    inc bc
    db $fc
    add hl, bc
    or $08
    rst $30
    inc b
    ld a, [$fe00]
    nop
    rst $38
    nop
    ld a, [c]
    nop
    cp $00
    rst $38
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

jr_07d_699c:
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $0bfe
    db $f4
    rrca
    ldh a, [$03]
    db $fc
    ld [de], a
    db $ed
    add hl, sp
    add $2d
    jp nc, $d02f

    rrca
    ldh a, [rNR22]
    add sp, $2e
    pop de
    dec bc
    ldh a, [rNR31]
    ldh [rNR33], a
    ldh [$2c], a
    ret nc

    rst $30
    ld [$807f], sp
    rst $38
    nop
    or h
    ld b, c
    ld [hl], c
    add d
    ld a, a
    add b
    ld a, a
    add b
    ld l, d
    sub c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp l
    rst $38
    inc c
    rst $38
    jr @+$01

    nop
    rst $38
    inc e
    rst $38
    rst $28
    db $10
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
    rst $28
    rst $38
    xor $ff
    xor $ff
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp d
    ld b, l
    ccf
    nop
    rrca
    nop
    ld e, e
    nop
    ld bc, $ff00
    ld a, a

jr_07d_6a32:
    rst $38
    ld a, a
    rst $38
    ccf

jr_07d_6a36:
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    cp a
    rra
    ccf
    rra
    ccf
    inc e
    cp a
    jr jr_07d_6acb

    inc a
    cp $fc
    cp $fc
    rst $38
    db $fc
    cp $fc
    rst $38
    db $fc
    cp $fc
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
    rst $38
    jr nz, jr_07d_6a32

    ld h, b
    add b
    jr nz, jr_07d_6a36

    ldh a, [rP1]
    and b
    ld b, b
    ld b, b
    add b
    ret nc

    nop
    ret nc

    nop
    ldh a, [rP1]
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
    db $f4
    nop
    and b
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
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_07d_6aa2

jr_07d_6aa2:
    ret nc

    nop
    ldh [rP1], a
    cp b
    nop
    or d
    nop
    ld hl, sp+$00
    sbc h
    nop
    sub d
    nop
    nop
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
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
    rst $30
    rst $38
    and d

jr_07d_6acb:
    rst $38
    nop

jr_07d_6acd:
    rst $38
    nop
    rst $38
    ret z

    rst $38
    sbc $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    push bc
    rst $38
    add l
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret z

    scf
    ldh [$1f], a
    jr nc, jr_07d_6acd

    xor d
    ld d, l
    ret nz

    ccf
    ld a, [hl+]
    ld d, l
    ld [hl+], a
    ld e, l
    ld bc, $003e
    rra
    nop
    rra
    add hl, bc
    ld b, $05
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
    ld a, a
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
    inc b
    nop
    ld c, $00
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
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
    inc a
    nop
    jr nc, jr_07d_6b74

jr_07d_6b74:
    nop
    nop
    nop
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
    rst $38
    adc a
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    nop
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
    db $fd
    rst $38
    ld a, [hl-]
    rst $38
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
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
    ld b, h
    cp e
    ld [hl], e
    rst $38
    cp [hl]
    rst $38
    ld a, [hl-]
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
    nop
    rst $38
    nop
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
    ld [hl+], a
    db $dd
    ld h, b
    sbc a
    ld hl, sp+$07
    db $fd
    ld [bc], a
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
    ld a, a
    nop
    db $dd
    ld [hl+], a
    ld h, b
    rra
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
    ld [$00d7], sp
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    rra
    nop
    ccf
    nop
    cp a
    add b
    ld a, a
    pop bc
    ld a, $fa
    dec b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    cp $01
    rst $38
    nop
    or $09
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
    ld [$0100], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc l
    rst $38
    xor b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $30
    ld [$ff00], sp
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
    rst $38
    rst $38
    rst $10
    rst $38
    ld b, e
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
    ld bc, $01ff
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
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
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    rlca
    ld hl, sp-$40
    ccf
    db $fc
    inc bc
    or $09
    db $fd
    ld [bc], a
    rst $28
    db $10
    cp d
    ld b, l
    cp b
    ld b, a
    ld h, h
    sbc e
    ld b, a
    cp b
    ld [$20f7], sp
    rst $18
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
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld bc, $00fe
    rst $38
    nop
    rst $38
    xor [hl]
    ld d, c
    di
    inc c
    jp nc, $c72d

    jr c, jr_07d_6d58

    and h
    db $fd
    ld [bc], a
    xor c
    ld d, [hl]
    ld c, a
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp h
    nop
    jr nz, jr_07d_6d1a

jr_07d_6d1a:
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
    ldh a, [$fe]
    ret nz

    ei
    ret nz

    rst $38
    add b
    or $80
    ccf
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $f10f
    rrca
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $08
    pop af
    ld a, l
    db $e3
    ld e, l
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec e
    db $e3

jr_07d_6d58:
    inc e
    db $e3
    dec e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    dec e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    cp $03
    db $fc
    inc bc
    inc bc
    inc bc
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
    rlca
    rst $00
    rst $00
    ccf
    rst $38
    rlca
    ld hl, sp+$07
    ldh [rIE], a
    ldh [rIE], a
    cp b
    ld a, a
    ld a, a
    adc a
    inc hl
    db $d3
    ldh [$f4], a
    sub $e1
    pop af
    ld h, b
    ld l, l
    adc b
    ld [hl], d
    add e
    ld [hl], h
    add b
    ld [hl], e
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld h, c
    adc b
    ld h, l
    adc b
    ld h, [hl]
    adc c
    ld h, [hl]
    adc c
    ld h, [hl]
    adc c
    ld h, $c9
    ld b, $e9
    ld b, $e9
    ld [bc], a
    db $ed
    ld [$08e7], sp
    rst $20
    nop
    rst $38
    nop
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

    rla
    add sp, $0e
    pop af
    dec b
    ld a, [$fa05]
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $02fe
    db $fd
    ld bc, $50fe
    xor a
    ld c, h
    or e
    db $10
    rst $28
    adc c
    db $76
    add h
    ld a, e
    nop
    rst $38
    ld bc, $01fe
    cp $c7
    jr c, jr_07d_6e37

    cp a
    ret nz

    ccf
    ld d, b
    xor a
    ld de, $fbee
    inc b
    ld [$db15], a
    inc h
    ld a, e
    add h
    or [hl]
    ld c, c
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rrca
    nop
    ld b, $00
    ld bc, $0000
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
    rrca
    rst $38
    rrca
    ld a, a
    inc bc
    cp a
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07d_6e37:
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
    ld b, e
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
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
    add b

jr_07d_6e55:
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
    db $10
    rst $28
    nop
    rst $38
    ld b, b
    cp a
    cp e
    ld b, h
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp+$78
    ld e, $1e
    add e
    ld b, a
    ld h, b
    add hl, de
    jr @+$04

    jp nz, $3181

    jr nz, jr_07d_6e55

    ld [$0637], sp
    ld de, $0601
    nop
    dec b
    nop
    add h
    nop
    db $e4
    nop
    ldh a, [rP1]
    ldh a, [rDIV]
    di
    inc b
    di
    inc b
    di
    inc b
    ld [hl], e
    add h
    inc sp
    call nz, $e40b
    dec bc
    db $e4
    dec bc
    db $e4
    add hl, bc
    and $08
    rst $20
    ld [$00e7], sp

jr_07d_6eb3:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc $31
    ld c, a
    or b
    sbc e
    ld h, h
    rst $28
    db $10
    ld c, $f1
    ld h, l
    sbc d
    add $39
    rlca
    ld hl, sp+$05
    ld a, [$9c63]
    sbc c
    ld h, [hl]
    adc b
    ld [hl], a
    inc b
    ei
    ld b, b
    cp a
    ld h, c
    sbc [hl]
    cpl
    ret nc

    or b
    ld c, a
    jr nc, jr_07d_6eb3

    and b
    ld e, a
    xor $11
    rst $08
    jr nc, jr_07d_6f27

    jp $10ef


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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    dec e
    nop
    rrca
    nop
    dec bc
    nop
    dec bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    add e
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

jr_07d_6f26:
    nop

jr_07d_6f27:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor b
    ld d, a
    nop
    rst $38
    ldh a, [rIF]
    db $fc
    inc bc
    ld a, [hl]
    ld bc, $000f
    inc bc
    nop
    ld bc, $0100
    nop
    add c

jr_07d_6f41:
    add b
    pop af
    ldh a, [$3f]
    inc a
    rlca
    adc a
    add c
    ld [hl], c
    ld [hl], b
    inc c
    inc e
    inc bc
    sub a
    add b
    ld [hl], b
    ld h, b
    adc h
    ld [$0667], sp
    add hl, sp
    ld bc, $0024
    inc hl
    nop
    jr nz, jr_07d_6f5e

jr_07d_6f5e:
    and b
    nop
    ret nz

    jr nz, @-$2e

    jr nz, jr_07d_6f41

    jr nz, jr_07d_6f26

    ld b, b
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    ld a, $c0
    ld e, $e0
    ld c, $f0
    ld b, $f8
    nop
    cp $01
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fc
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
    ld l, b
    sub a
    ret z

    scf
    ld l, b
    sub a
    db $fd
    ld [bc], a
    ld [$11f7], sp
    xor $af
    ld d, b
    and a
    ld e, b
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    ccf
    ret nz

    dec [hl]
    jp z, Jump_07d_43bc

    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
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
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    cpl
    nop
    scf
    nop
    rst $30
    rst $38
    cp $ff
    db $f4
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    rrca
    ld a, a
    inc bc
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    inc a
    ld a, a
    rrca
    rrca
    inc bc
    and e
    add b
    jr c, jr_07d_701b

    ld h, $0f
    nop
    and c
    add b
    ld h, b
    ld h, b
    jr jr_07d_7024

    ld b, [hl]
    ld b, $61
    ld bc, $0058
    ld b, [hl]
    nop
    ld b, c
    nop
    ld b, b
    nop
    nop
    add b
    ld h, b

jr_07d_701b:
    add b
    ld [hl], b
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, a
    add b

jr_07d_7024:
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
    rra
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
    cp a
    ld b, b
    rra
    ldh [$63], a
    sbc h
    db $db
    inc h
    ld sp, hl
    ld b, $fe
    ld bc, $00ff
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

jr_07d_7064:
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    db $fc
    nop
    db $fd
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
    db $fc
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1c
    ldh [$30], a
    ret nz

jr_07d_70bc:
    ld b, b
    add b
    ldh [$e0], a
    ld a, b
    ld hl, sp+$1f
    rra
    inc bc
    add a
    ret nz

    jr nc, jr_07d_7141

    inc b
    ld e, $01
    rla
    nop
    sub e
    add b
    rst $30
    ldh [$1f], a
    jr jr_07d_7064

    ld c, $63
    inc bc
    jr nc, jr_07d_70da

jr_07d_70da:
    inc l
    nop
    cpl
    nop
    cpl
    nop
    ld l, a
    nop
    adc a
    ld b, b
    xor a
    ld b, b
    cp a
    ld b, b
    and a
    ld b, b
    and c
    ld b, b
    and b
    ld b, b
    and b
    ld b, b

jr_07d_70f0:
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    jr nz, jr_07d_70bc

    ld bc, $01f0
    ld hl, sp+$01
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fc
    db $fc
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld sp, hl
    nop
    rst $38
    ld sp, hl
    ld b, $bf
    ld b, b
    rst $18
    jr nz, jr_07d_70f0

    ld h, $f9
    ld b, $fd
    ld [bc], a
    db $ed
    ld [de], a
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    cp a
    ld b, b
    rst $38
    nop
    sbc a
    ld h, b
    rst $38
    nop
    rst $18

jr_07d_7131:
    jr nz, jr_07d_7131

    ld bc, $00ff

jr_07d_7136:
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

jr_07d_7141:
    rst $38
    ei
    rst $38
    ld a, [$ffff]
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
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
    ld bc, $04fe
    ld a, [$c834]
    jr z, jr_07d_7136

    sbc d
    ld h, b
    ld l, b
    add b
    db $e4
    nop
    adc b
    nop
    nop
    nop
    rst $38
    ldh [rIE], a
    nop
    db $fc
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
    ret nz

    ret nz

    ldh a, [$f0]

jr_07d_7188:
    ld a, $3e
    rlca
    rlca
    pop bc
    ld hl, $18c0
    ret nz

    ld e, $c8
    rla
    call z, $9d13
    and d
    db $fd
    ld [c], a
    dec a
    ld a, [hl-]
    rra
    ld e, $87
    rlca
    sub c
    ld hl, $4438
    ld a, [hl-]
    ld b, h
    ld a, [hl-]
    ld b, l
    scf
    ld c, b
    scf
    ld c, b
    scf
    ld c, b
    ld [hl], a
    ld [$0887], sp
    add a
    ld [$0091], sp
    sub b
    nop
    sub b
    nop
    sub b
    nop
    stop
    stop
    jr nz, jr_07d_71c2

jr_07d_71c2:
    jr nz, jr_07d_71c4

jr_07d_71c4:
    jr nz, @-$7e

    jr nz, jr_07d_7188

    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    cp $ee
    ld de, $20df
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, c
    sbc [hl]
    rst $30
    ld [$0af5], sp
    rst $38
    nop
    rst $38
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
    jr nz, @+$01

    nop
    rst $38
    rst $38
    cp $ff
    ld a, h
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $dd
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, l
    rst $38
    cpl
    rst $38
    ld [$04ff], sp
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
    inc b
    ei
    db $10
    rst $28
    ld [$24f7], sp
    db $db
    ld [hl-], a
    call $eb14
    ld [de], a
    db $ed
    dec l
    jp nc, $f50a

    dec l
    jp nc, $c936

    dec e
    ld [c], a
    inc a
    pop bc
    ld e, c
    and b
    ld a, c
    add b
    ld a, [c]
    nop
    ld [c], a
    nop
    ret nz

    nop
    add b
    nop
    pop bc
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
    ld c, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc a
    ld a, h
    rrca
    rrca
    inc bc
    jp $f000


    nop
    db $fc
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38

jr_07d_728f:
    add b
    rst $38
    ldh [$7f], a
    ld a, b
    rra
    ld e, $87
    rlca
    and c
    ld b, c
    ret z

    jr nc, jr_07d_728f

    inc c
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
    ccf
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $30
    ld [$41be], sp
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
    nop
    nop
    nop
    nop
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
    ld b, $07
    dec b
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
    ld b, $08
    dec b
    dec b
    add hl, bc
    nop
    nop
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    dec b
    ld c, $0f
    stop
    nop
    ld de, $0012
    nop
    nop
    nop
    nop
    inc de
    dec c
    dec b
    inc d
    dec d
    ld d, $17
    jr jr_07d_7342

jr_07d_7342:
    nop
    add hl, de
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    dec b
    inc e
    dec e
    rla
    ld e, $1f
    jr nz, jr_07d_7373

    nop
    ld [hl+], a
    inc hl
    nop
    nop
    ld c, $24
    dec h
    ld h, $27
    jr z, jr_07d_7387

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07d_7397

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07d_73a7

    nop
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_07d_7373:
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
    ld d, c

jr_07d_7387:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    rla
    rla
    rla
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_07d_7397:
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rla
    rla
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    nop
    nop

jr_07d_73a7:
    nop
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
    ld [hl], h
    ld [hl], h
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
    nop
    nop
    nop
    nop
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
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    nop
    and b
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    xor c
    and e
    xor d
    xor e
    xor h
    nop
    xor l
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    ld bc, $0600
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
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0606
    nop
    nop
    nop
    inc b
    inc b
    inc b
    dec b
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    dec b
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $03
    nop
    nop
    ld [bc], a
    dec b
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, $01
    ld b, $00
    nop
    nop
    ld [bc], a
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0000
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
    rlca
    rlca
    nop
    nop
    dec b
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0601
    ld b, $02
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    ld b, $06
    ld [bc], a
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    ld b, $06
    ld b, $00
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    nop
    ld b, $06
    ld [bc], a
    nop
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
    ldh a, [$1f]
    ldh [$3f], a
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
    rst $38
    nop
    rst $38
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
    ldh a, [$1f]
    ldh [$3f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $07
    cp $07
    db $fc
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$07
    rst $38
    nop
    ld hl, sp+$00
    db $fc
    nop
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
    ld bc, $03fe
    db $fc
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
    ld bc, $03ff
    rst $38
    inc bc
    cp $07
    db $fc
    rrca
    cp $0f
    rst $38
    rra
    cp $3f
    ldh a, [$3f]
    ldh [$7f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ccf
    nop
    ccf
    ret nz

    cp a
    ld b, b
    ccf
    ld b, b
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
    inc bc
    db $fc
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    cp $03
    cp $07
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $1f
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
    ld bc, $00ff
    cp $00
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
    ld bc, $03fe
    db $fc
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
    rst $38
    rst $38
    ld bc, $03ff
    cp $07
    db $fd
    rlca
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$1f]
    ld hl, sp+$3f
    ret nz

    ld a, a
    ret nz

    ld a, a
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
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ld hl, sp+$3f
    db $fc
    rra
    db $fc
    rrca
    cp $07
    rst $38
    inc bc
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
    cp a
    add b
    cp a
    ld b, b
    ccf
    ld b, b
    ld a, a
    add c
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
    cp $07
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
    rst $38
    rlca
    cp $0f
    ld hl, sp+$1f
    ei
    rra
    db $fd
    ccf
    db $fc
    ccf
    db $fc
    ld a, a
    db $f4
    rst $38
    call z, $f8ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    db $e4
    nop
    ret nz

    rst $38
    cp $ff
    rst $38
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
    db $fc
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [$fcff]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $eb
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    and b
    rst $38
    add h
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
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $81ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ldh a, [$3f]
    ld hl, sp+$1f
    db $fc
    rrca
    cp $07
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38

Jump_07d_783f:
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    inc c
    rst $38
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    nop
    rst $38
    nop
    rst $38
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
    inc b
    ld hl, sp+$0c
    ldh a, [rNR32]
    ldh [$3c], a
    ret nz

    ld a, h
    add b
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld bc, $03fd
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
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    cp $80
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [$fe], a
    add b
    cp $80
    db $fc
    nop
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
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
    rst $08
    nop
    add a
    nop
    add l
    nop
    dec bc
    nop
    dec bc
    nop
    sub a
    nop
    ld l, l
    nop
    rst $10
    nop
    rst $28
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
    ld b, b
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
    ldh [rIE], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp+$47
    ld hl, sp+$43
    db $fc
    inc hl
    db $fc
    ld hl, $11fe
    cp $10
    rst $38
    ld [$88ff], sp
    rst $38
    rst $38
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
    add b
    ld a, a
    add e
    ld a, h
    add a
    ld a, b
    adc a
    ld [hl], b
    sbc a
    ld h, b
    sbc a
    ld h, b
    cp h
    ld b, b
    cp b
    ld b, b
    cp c
    ld b, b
    cp b
    ld b, d
    cp c
    ld b, b
    cp b
    ld b, b
    cp b
    ld b, b
    cp h
    ld b, b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    ld a, b
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld hl, sp+$7f
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
    ld a, a
    ldh [$7f], a
    ld [hl], b
    nop
    or $08
    ret nz

    ld a, $c0
    ld a, $82
    ld a, h
    ld [bc], a
    db $fc
    nop
    db $fc
    db $fc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc l
    rst $18
    ld bc, $87ff
    rst $18
    adc a
    rst $18
    adc a
    rst $08
    add a
    rst $18
    add a
    rst $18
    rlca
    rst $38
    rlca
    rst $18
    rlca
    rst $38
    inc bc
    rst $18
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    dec de
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
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    pop af
    rrca
    di
    rrca
    db $fc
    rrca
    ld sp, hl
    ld c, $f3
    inc c
    or $09
    or $09
    or $09
    ldh a, [rIF]
    or $09
    or $09
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    rst $30
    rrca
    di
    dec c
    di
    dec c
    di
    dec c
    di
    dec c
    di
    dec c
    ld [hl], e
    adc l
    dec sp
    push bc
    dec bc
    push af
    cp $fd
    cp $02
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $f900
    nop
    ld bc, $f904
    nop
    ld bc, $0100
    nop
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
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    jr @+$09

    inc e
    inc bc
    inc c
    inc bc
    dec b
    ld [bc], a
    ld b, $01
    ld e, $01
    cp d
    dec b
    xor $01
    ld a, [$7405]
    dec bc
    ld a, $01
    ld a, a
    nop
    dec sp
    nop
    rrca
    nop
    rlca
    nop
    ld [bc], a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
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
    ld hl, sp-$01
    sbc a
    ldh [$c0], a
    nop
    rlca
    nop
    ldh [$1f], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc a
    add b
    add e
    ret nz

    add b
    ret nz

    add b
    rst $00
    add b
    sbc [hl]
    add b
    db $dd
    add b
    db $fd
    add c
    rst $38
    sbc a
    rst $38
    cp c
    rst $38
    ret nz

    ldh a, [rSTAT]
    rst $38
    ld b, c
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    sbc h
    rst $38
    ldh a, [rSB]
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $81
    ld a, [hl]
    pop bc
    ld a, $c1
    ld a, $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp-$08
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$04
    ld hl, sp+$04
    db $fc
    ld [bc], a
    db $fc
    ld a, [$fafc]
    ld a, $f9
    cp $f9
    cp $f9
    rst $38
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
    cp $ff
    cp $ff
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
    add b
    ld a, a
    ret nz

    ccf
    ld hl, sp+$07
    cp $01
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld l, e
    nop
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    ld [bc], a
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
    inc bc
    nop
    ld bc, $feff
    ld bc, $0100
    db $fc
    inc bc
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$09ff], sp
    cp $13
    db $fc
    rla
    ld hl, sp+$17
    ld hl, sp+$2f
    ldh a, [$2f]
    ldh a, [$5f]
    ldh [$7f], a
    ret nz

    rst $38
    add b
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
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp-$10
    ld [$04f8], sp
    ld hl, sp+$04
    ld hl, sp-$7c
    db $fc
    add d
    db $fc
    add d
    db $fc
    add d
    cp $81
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$bf]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$3f]
    ldh a, [$1f]
    ld hl, sp+$5f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    cp a
    cp $df
    cp $a3
    cp $2f
    cp $73
    cp $e3
    rst $38
    ld h, b
    ld bc, $0100
    inc bc
    nop
    rlca
    nop
    ld c, $00
    ld hl, $0000
    nop
    nop
    nop
    cp $ff
    cp $ff
    cp $fb
    cp $f3
    cp $f3
    cp $c3
    cp $83
    cp $83
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fd
    ld b, $fc
    rlca
    rst $38
    inc b
    db $fd
    ld b, $ff
    inc b
    db $fd
    ld b, $ff
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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp

jr_07d_7cb0:
    rst $38
    db $10

jr_07d_7cb2:
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

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_07d_7cb0

    jr nz, jr_07d_7cb2

    jr nz, @-$1f

    jr nz, @-$3f

    ld b, b
    cp a
    ld b, e
    cp a
    ld b, e
    cp l
    ld b, e
    cp [hl]
    ld b, c
    cp $41
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ld b, b
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    db $fd
    ld b, c
    cp $40
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
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    inc bc
    rst $38
    ld bc, $03fe
    db $fc
    ld bc, $03fe
    db $fc
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    ld l, a
    sub b
    rst $18
    jr nz, @-$73

    ld [hl], h
    rst $08
    jr nc, jr_07d_7d88

    call nz, Call_000_21de
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    cp $01
    cp $01
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
    cp $03

jr_07d_7d88:
    cp $03
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    add a
    ei
    add a
    rst $38
    rst $20
    rst $38
    rst $38
    sbc a
    ld a, a
    ld [hl], e
    rrca
    sbc a
    nop
    ldh [rP1], a
    rst $30
    nop
    ldh a, [rP1]
    rlca
    ldh a, [$87]
    ldh a, [$c7]
    ldh a, [$f7]
    ldh a, [$7f]
    ld a, a
    sbc a
    rra
    ld a, b
    add b
    rlca
    ldh [rP1], a
    ldh a, [rTAC]
    ldh a, [rTAC]
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$f0]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    db $fc
    rst $38
    rst $08
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
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
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
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
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    and a
    rst $38
    sbc a
    rst $38
    ld d, a
    rst $28
    ld a, a
    rst $38
    rst $38
    rst $18
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
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
    rst $28
    rst $38
    ld l, e
    rst $38
    inc b
    rst $38
    ld [hl+], a
    rst $38
    sub b
    rst $38
    xor b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    add b
    cp $c0
    db $fc
    ldh [$fc], a
    ldh a, [$fc]
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh a, [$fe]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    inc bc
    db $fc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $81
    rst $38
    rst $38
    ld a, a
    rst $38
    inc a
    inc bc
    nop
    ret nz

    ret nz

    ccf
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
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $c0
    adc $3f
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
    ld [$ff00], sp
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, [hl]
    add b
    ld hl, sp+$00
    ldh a, [$80]
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
    ldh a, [$fe]
    rst $38
    rst $38
    ret nz

    ccf
    ccf
    nop
    ret nz

    nop
    rst $38
    nop
    nop

Jump_07d_7f2d:
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp $ff
    rst $38
    rst $38
    ld a, h
    add e
    ccf
    nop
    nop
    ret nz

    rst $38
    cp a
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
    ld bc, $ff00
    nop
    rst $38
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
    nop
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
    nop
    nop
    nop
    di
    nop
    ld bc, $f2f2
    ld bc, $00f3
    di
    nop
    di
    nop
    inc de
    ldh [$f3], a
    di
    ccf
    rst $38
    add e
    nop
    nop
    nop
    nop
    rst $38
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
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
    rst $08
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    ldh a, [rIE]
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
    nop
    rst $38
