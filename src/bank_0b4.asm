SECTION "ROM Bank $0b4", ROMX[$4000], BANK[$b4]

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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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

jr_0b4_4037:
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
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    sbc a
    ld [hl], b
    adc a
    jr c, @-$37

    jr jr_0b4_4037

    inc c
    di
    ld c, $f1
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fd
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    adc a
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    ld l, a
    rra
    ld l, a
    rra
    ccf
    rrca
    ccf
    rrca
    rra
    rrca
    nop
    nop
    rlca
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
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    inc bc
    db $fc
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
    rst $38
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
    rrca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    rlca
    ld hl, sp+$07
    ld hl, sp+$7f
    add b
    add a
    rst $38
    rlca
    rst $38
    rst $38
    rlca
    add a
    ld a, a
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
    rst $38
    rst $38
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
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTMA]
    ld hl, sp+$02
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $01fe
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$c0], a
    nop
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $0180
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
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
    rrca
    nop
    rrca
    nop

Call_0b4_41ff:
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
    ld bc, $01fe
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
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
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ret nz

    nop
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
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
    rst $38
    nop
    rst $38
    nop
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
    cp $03
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
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
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

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    add b
    nop
    add b
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0404], sp
    inc b
    inc b
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, $17
    jr jr_0b4_4311

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b4_4325

    ld [hl+], a
    ld a, [bc]
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b4_4336

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_0b4_4311:
    dec l
    dec l
    dec l
    ld l, $2f
    jr nc, jr_0b4_4349

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b4_4359

    dec l
    dec l
    dec l
    dec l
    dec l

jr_0b4_4325:
    dec l
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    dec l
    dec l
    dec l
    ld b, d
    ld b, e
    dec l

jr_0b4_4336:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    jr c, jr_0b4_4386

    ld c, d
    ld c, e
    ld c, e
    dec l
    dec l
    dec l
    ld a, [bc]
    ld c, h
    dec l
    ld c, l
    ld c, [hl]
    ld c, a

jr_0b4_4349:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld b, c
    ld d, l
    dec l
    dec l
    dec l
    ld d, [hl]
    ld d, a
    dec l
    ld e, b
    ld e, c
    ld e, d

jr_0b4_4359:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    dec l
    dec l
    dec l
    dec l
    dec l
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
    dec l
    dec l
    dec l
    dec l
    dec l
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

jr_0b4_4386:
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
    sub d
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    ld a, [bc]
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
    dec l
    or a
    cp b
    cp c
    ld a, [bc]
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    dec l
    dec l
    push bc
    add $c7
    ld a, [de]
    ret z

    ret


    jp z, $cccb

    call Call_000_2d2d
    dec l
    adc $2d
    dec l
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $2d
    dec l
    dec l
    dec l
    dec l
    rst $10
    ret c

    dec l
    dec l
    reti


    jp c, $dcdb

    or l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    db $dd
    sbc $2d
    dec l
    rst $18
    ldh [$2d], a
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
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
    ld b, $06
    ld b, $02
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0b4_4490

jr_0b4_4490:
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $06
    ld bc, $0000
    nop
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    ld b, $00
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    ld b, $00
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld b, $03
    inc bc
    ld bc, $0001
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0103
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
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
    nop
    ld a, a
    nop
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
    ldh a, [rIF]
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
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ld e, $00
    ld a, $00
    inc a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

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
    rra
    rra
    rra
    ld e, $0f
    inc c
    rrca
    inc c
    rrca
    ld [$000f], sp
    rrca
    nop
    rra
    ld bc, $031f
    ccf
    inc bc
    ld a, a
    rlca
    ld [hl], a
    rlca
    rst $30
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $00
    rlca
    rst $00
    rlca
    add a
    rlca
    add a
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rra
    ldh a, [$1f]
    ret c

    ccf
    db $fc
    ccf
    cp [hl]
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
    ccf
    rst $38
    ccf
    rst $38
    ld bc, $00ff
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
    ld sp, hl
    rst $38
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
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    ret nz

    rst $38
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
    ld hl, sp-$01
    db $fd
    cp $fe
    db $fd
    cp $fd
    db $fc
    ei
    cp $fb
    cp $f7
    cp $e7
    cp $e7
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    sbc a
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
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    ld sp, hl
    ld hl, sp-$05
    ld hl, sp-$79
    add b
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    db $fc
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
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    di
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
    rst $20
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_0b4_4800:
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
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
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ldh a, [rIE]
    ld [hl], b
    db $fc
    inc bc
    cp $05
    cp $01
    db $fc
    rlca
    rst $38
    ld b, $fe
    rlca
    rst $38
    inc c
    cp $0b
    cp $8b
    cp $9f
    cp $8b
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $fe
    inc a
    cp $7c
    cp $7c
    cp $7c
    cp $7c
    cp $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
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
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    pop bc
    add c
    pop bc
    add c
    pop bc
    add c
    pop bc
    add c
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_0b4_48eb:
    inc b
    inc b
    inc b
    inc b
    inc b
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
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    sub b
    ld l, a
    ld b, b
    cp a
    add b
    ld a, a
    ld d, b
    xor a
    nop
    rst $38
    jr nz, jr_0b4_48eb

    adc b
    ld [hl], a
    rlca
    ld hl, sp-$01
    nop
    db $fd
    ld bc, $1191
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
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
    ld b, c
    ld b, c
    ld b, c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    rra
    ldh [rIE], a
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
    nop
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
    ld hl, sp-$01
    nop
    db $fc
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0404], sp
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
    inc b
    inc b
    inc b
    inc b
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ldh a, [rIE]
    nop
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
    db $fc
    nop
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $2121
    jr nz, jr_0b4_4a72

    jr nz, @+$22

    jr nz, jr_0b4_4a76

    jr nz, jr_0b4_4a78

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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_0b4_4a72:
    ld [$0408], sp
    inc b

jr_0b4_4a76:
    inc b
    inc b

jr_0b4_4a78:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add c
    add c
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
    rlca
    ld hl, sp-$01
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    cp $00
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0408], sp
    inc b
    inc b
    inc b
    add h
    add h
    add h
    add h
    add h
    add h
    add d
    add d
    add d
    add d
    add d
    add d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2021
    jr nz, jr_0b4_4b3b

    jr nz, jr_0b4_4b3d

    jr nz, jr_0b4_4b3f

    jr nz, @+$12

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    inc b

jr_0b4_4b3b:
    inc b
    inc b

jr_0b4_4b3d:
    inc b
    inc b

jr_0b4_4b3f:
    inc b
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
    ld bc, $8101
    add c
    add c
    add c
    add c
    add c
    add c
    add c
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
    jr nz, jr_0b4_4b8a

    jr nz, jr_0b4_4b8c

    jr nz, jr_0b4_4b8e

    jr nz, jr_0b4_4b90

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b4_4b8a:
    nop
    rst $38

jr_0b4_4b8c:
    nop
    rst $38

jr_0b4_4b8e:
    nop
    rst $38

jr_0b4_4b90:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    cp $00
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add h
    add h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld hl, $2121
    ld hl, $2121
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0408], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    add h
    add h
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    jr nz, jr_0b4_4bfc

    jr nz, jr_0b4_4bfe

    jr nz, jr_0b4_4c00

    jr nz, jr_0b4_4c02

    jr nz, jr_0b4_4c04

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    inc b
    inc b

jr_0b4_4bfc:
    inc b
    inc b

jr_0b4_4bfe:
    ld [bc], a
    ld [bc], a

jr_0b4_4c00:
    ld [bc], a
    ld [bc], a

jr_0b4_4c02:
    ld [bc], a
    ld [bc], a

jr_0b4_4c04:
    add d
    add d
    add d
    add d
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_0b4_4c3c

    jr nz, @+$22

    jr nz, @+$22

    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [$04f7], sp
    ei
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd

jr_0b4_4c3c:
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    adc b
    add a
    adc b
    add a
    ld b, h
    ld b, e
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    ld [hl+], a
    ld hl, $2122
    ld de, $1110
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    add h
    add h
    add h
    add h
    add h
    add h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $2020
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add d
    add d
    add d
    add d
    add d
    add d
    add c
    add c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    jr nz, jr_0b4_4cba

    jr nz, jr_0b4_4cbc

    jr nz, @+$22

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0408], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0b4_4cba:
    ld [bc], a
    ld [bc], a

jr_0b4_4cbc:
    ld bc, $0101
    ld bc, $0101
    add c
    add c
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    adc a
    ld a, a
    ld e, a
    cp a
    ld e, a
    cp a
    ccf
    rst $18
    ccf
    rst $18
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
    cpl
    rst $38
    ld h, $fe
    or [hl]
    ld a, [hl]
    or [hl]
    ld a, [hl]
    ld [hl], e
    ld a, $7b
    ld a, $79
    ld a, $3d
    ld a, $3d
    ld a, $3e
    ccf
    ld a, $3f
    ld a, $7f
    ld a, $7f
    ld e, $7f
    sbc h
    cp a
    sbc h
    cp a
    adc h
    cp a
    ld c, h
    ld e, a
    ld c, h
    ld e, a
    ld b, h
    ld e, a
    inc h
    cpl
    daa
    jr z, jr_0b4_4d9c

    jr jr_0b4_4d97

    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add d

jr_0b4_4d97:
    add d
    add d
    add d
    add c
    add c

jr_0b4_4d9c:
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    jr nz, @+$22

    jr nz, jr_0b4_4dc6

    jr nz, jr_0b4_4dc8

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $8181

jr_0b4_4dc6:
    add b
    add b

jr_0b4_4dc8:
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
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
    ldh [$1f], a
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
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
    ccf
    jp $c33f


    ccf
    jp $c33f


    ccf
    jp $837f


    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, [hl]
    add a
    ld a, [hl]
    add a
    ld a, h
    add a
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    rrca
    rrca
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $1f
    ld e, $1f
    ld e, $1f
    inc e
    rra
    inc e
    rra
    inc e
    rst $38
    inc e
    rst $38
    inc e
    ccf
    adc $1f
    xor $1f
    rst $20
    rrca
    rst $30
    rrca
    di
    rlca
    ei
    rlca
    ld sp, hl
    inc bc
    db $fd
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    jr nz, jr_0b4_4eab

    jr nz, @+$21

    db $10
    rrca
    db $10
    rrca
    jr jr_0b4_4e9b

    ld [$0807], sp
    rlca
    inc c
    inc bc
    inc b

jr_0b4_4e9b:
    inc bc
    ld b, $01
    ld [bc], a
    ld bc, $8182
    add e
    add b
    add c
    add b
    ld b, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_0b4_4eab:
    ld b, b
    jr nz, jr_0b4_4ece

    jr nz, jr_0b4_4ed0

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add c
    add c
    add c
    add c
    add c
    add c
    ld b, b
    ld b, b

jr_0b4_4ece:
    ld b, b
    ld b, b

jr_0b4_4ed0:
    nop
    nop
    nop
    nop
    rrca
    db $10
    inc bc
    jr jr_0b4_4ed9

jr_0b4_4ed9:
    ld e, $00
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    db $fc
    ld b, b
    db $fc
    ld b, b
    cp $46
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
    cp $8f
    cp $8f
    cp $8f
    db $fc
    adc a
    db $fc
    rrca
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld sp, hl
    ld a, $f8
    ccf

jr_0b4_4f56:
    ei
    inc a
    di
    inc a
    rst $30
    jr c, @-$07

    jr c, jr_0b4_4f56

    jr c, @-$0b

    ld a, h
    di
    ld a, h
    di
    ld a, h
    di
    ld a, h
    ld [hl], d
    dec a
    ld a, [hl-]
    dec e
    add hl, sp
    ld e, $9b
    inc c
    sbc b
    rrca
    ret z

    add a
    call nz, $e483
    jp $c1e2


    di
    pop hl
    pop af
    ldh [$f9], a
    ld [hl], b
    ld hl, sp+$70
    db $fc
    jr c, jr_0b4_5001

    cp b
    ld a, [hl]
    sbc h
    ld a, $dc
    ccf
    adc $1f
    xor $1f
    rst $20
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
    ld b, b
    ccf
    ld h, b
    rra
    jr nz, jr_0b4_4fc3

    jr nc, @+$11

    jr nc, @+$11

    db $10
    rrca
    jr @+$09

    jr @+$09

    inc c
    inc bc
    inc c
    inc bc
    ld b, $01
    ld b, $01
    ld b, $01
    inc bc
    nop
    inc bc
    nop
    add c
    add b
    add c
    add b
    nop
    nop
    nop

jr_0b4_4fc3:
    nop
    rst $38
    nop
    rst $38

jr_0b4_4fc7:
    nop

jr_0b4_4fc8:
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
    jr nc, jr_0b4_4ff5

    call z, $f303
    ret nz

    db $fc
    ldh a, [$fe]
    db $fc
    rst $38
    cp $ff
    rst $38

jr_0b4_4ff2:
    rst $38
    rst $38

jr_0b4_4ff4:
    rst $38

jr_0b4_4ff5:
    rst $38

jr_0b4_4ff6:
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38

jr_0b4_5001:
    ei
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
    rst $28
    rst $38
    pop hl
    rst $38
    call nz, Call_000_04db
    sbc e
    inc b
    sbc e
    dec c
    sub d
    ld bc, $129e
    and b
    add hl, de
    and d
    jr jr_0b4_4fc7

    jr jr_0b4_4fc8

    ld d, b
    and b
    nop
    ldh [rLCDC], a
    and b
    ld h, b
    add b
    jr nz, jr_0b4_4ff2

    jr nz, jr_0b4_4ff4

    jr nz, jr_0b4_4ff6

    nop
    ldh [rSB], a
    ldh [rOBP0], a
    ld sp, $1f00
    nop
    rrca
    nop
    rrca
    nop
    add a
    ld bc, $0484
    ldh [rDIV], a
    ldh [rTMA], a
    add b
    inc bc
    add b
    inc bc
    ret nz

    ld de, $1180
    ret nz

    dec bc
    db $f4
    inc bc
    db $fc
    add c
    cp $80
    ei
    ret nz

    ei
    jp $c0f4


    ld a, a
    ld h, b
    ccf
    ld h, b
    ccf
    jr nz, jr_0b4_5087

    jr nc, jr_0b4_5089

    db $10
    rrca
    ld [$8e07], sp
    rlca
    add h
    inc bc
    add $83
    jp $e381


    pop bc
    pop hl
    ret nz

    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp+$70
    ld sp, hl
    ld [hl], c
    rst $38
    add hl, sp
    ld a, a
    cp a
    ld a, a

jr_0b4_5087:
    sbc l
    ccf

jr_0b4_5089:
    db $dd
    ccf
    call z, $ec1f
    rra
    db $e4
    rrca
    db $f4
    rrca
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
    add b
    ld a, a
    add b
    ld a, a
    nop
    rlca
    nop
    rlca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rlca
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
    ret nz

    ccf
    jr nc, jr_0b4_50dd

    adc h
    inc bc
    db $e3
    add b
    ldh a, [$e0]
    db $fc
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b4_50dd:
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
    rst $08
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fc
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
    sbc a
    ld a, a
    adc a
    ld a, a
    add a
    ld a, a
    add a
    ccf
    rlca
    ccf
    add a
    rra
    ld b, a
    ccf
    inc hl
    rra
    ld bc, HeaderManufacturerCode
    ccf
    ld h, c
    rra
    ld h, c
    rra
    ld hl, $315f
    rst $08
    ld b, c
    cp a
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    add c
    ld a, a
    pop bc
    ccf
    push hl
    dec de
    push af
    dec bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    inc bc
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    ld b, e
    ld [bc], a
    ld h, e
    ld bc, $0173
    inc sp
    ld bc, $0317
    rla
    ld bc, $c1c7
    rst $28
    db $e3
    ld c, a
    or c
    rrca
    pop af
    rra
    db $eb
    rra
    rst $20
    rra
    db $e3
    ccf
    rst $10
    ccf
    rst $08
    ld a, a
    add a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38

jr_0b4_5159:
    ld a, [hl]
    rst $38

jr_0b4_515b:
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp $f9
    cp $f9
    cp $f9
    db $fc
    di
    db $fc
    di
    ld hl, sp-$19
    ld hl, sp-$19
    ldh a, [$6f]
    ldh a, [rIF]
    ldh a, [rIF]
    ret nz

jr_0b4_5177:
    rrca
    ret z

    rlca
    add sp, $47
    ld hl, sp+$7f
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    jr nc, jr_0b4_5159

    jr nc, jr_0b4_515b

    jr @-$17

    jr jr_0b4_5177

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
    inc bc
    nop
    inc e
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_0b4_51b5

    inc c
    inc bc
    jp $e000


    ret nz

    ld hl, sp-$20
    cp $f8
    rst $38
    cp $ff
    rst $38
    rst $38

jr_0b4_51b5:
    rst $38
    rst $38
    rst $38
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
    rst $08
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fc
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
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    cp $7f
    db $fc
    rst $38
    db $fc
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp-$01
    ldh a, [$fe]
    pop af
    cp $f1
    db $fc
    db $e3
    db $fc
    db $e3
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ldh a, [$8f]
    ldh a, [$8f]
    ldh [$9f], a
    ldh [$1f], a
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
    nop
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
    nop
    inc a
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
    ret nz

    ccf
    jr nc, jr_0b4_525d

    inc c
    inc bc
    inc bc
    nop
    ret nz

    nop
    ldh a, [$c0]
    db $fc
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38

jr_0b4_525d:
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
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$fe], a
    pop hl
    cp $e1
    cp $c1
    db $fc
    jp $83fc


    ld hl, sp-$79
    ld hl, sp-$79
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld h, b
    add b
    ld [bc], a
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
    inc bc
    db $fc
    ret nc

    jr nz, jr_0b4_5321

    db $10
    ccf
    inc a
    ccf
    ccf
    rst $38
    inc a
    rst $38
    add b
    rst $38
    add c
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    and $ff
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    cp $c1
    cp $81
    db $fc
    add e
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    nop

jr_0b4_5321:
    rst $38
    nop
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
    ld b, b
    ccf
    jr nz, @+$21

    db $10
    rrca
    ld b, e
    add b
    inc b
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nc, @+$11

    inc c
    inc bc
    inc bc
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    cp $81
    cp $81
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ret nz

    ccf
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
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    ld b, $07
    ld [$0509], sp
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, [bc]
    dec bc
    inc c
    dec c
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
    ld c, $05
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
    dec b
    dec b
    dec b
    dec b
    rrca
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
    dec b
    dec b
    dec b
    dec b
    dec b
    db $10
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld de, $1312
    inc d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec d
    ld d, $05
    dec b
    dec b
    dec b
    dec b
    rla
    nop
    nop
    jr jr_0b4_5401

    dec b
    dec b
    dec b
    dec b
    add hl, de

jr_0b4_5401:
    ld a, [de]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec de
    nop
    nop
    inc e
    dec b
    dec b
    dec b
    dec b
    dec b
    dec e
    ld e, $05
    dec b
    dec b
    dec b
    dec b
    rra
    jr nz, jr_0b4_543b

    ld [hl+], a
    dec b
    dec b
    dec b
    dec b
    dec b
    inc hl
    inc h
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
    dec b
    dec b
    dec b
    dec b
    nop
    dec h
    ld h, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_0b4_543b:
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    daa
    jr z, jr_0b4_5449

    dec b
    dec b
    dec b
    dec b
    dec b

jr_0b4_5449:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
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
    dec b
    dec b
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b4_5498

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b4_549e

    add hl, sp
    inc l
    ld a, [hl-]
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
    dec b
    dec b
    dec b
    dec sp
    ld a, [hl-]
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
    dec b
    dec b
    dec b

jr_0b4_5498:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_0b4_549e:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0b4_55b0

jr_0b4_55b0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rIE]
    ldh a, [rIE]
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
    ldh a, [rIE]
    ldh a, [rIE]
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
    ldh a, [rIE]
    ldh a, [rIE]
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
    cp $ff
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
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    inc bc
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
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
    ld bc, $00ff
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    ldh [rIE], a
    db $fc
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
    rst $38
    nop
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
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
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
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $ffff
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
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
    add b
    rst $38
    ldh a, [rIE]
    cp $ff
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
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    db $fc
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ld bc, $01ff
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
    rst $38
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

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
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
    nop
    rst $38
    nop
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
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    dec bc
    inc d
    dec d
    ld d, $17
    jr jr_0b4_59e3

    ld a, [de]
    inc de
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    dec bc
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b4_59fc

    ld [hl+], a
    nop
    nop
    nop
    inc hl
    nop
    nop
    nop

jr_0b4_59e3:
    dec bc
    inc h
    dec h
    ld h, $27
    jr z, jr_0b4_5a13

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    ld l, $00
    nop
    nop
    dec bc
    cpl
    jr nc, jr_0b4_5a28

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    dec hl

jr_0b4_59fc:
    ld [hl], $37
    nop
    ld l, $00
    nop
    nop
    dec bc
    jr c, jr_0b4_5a3f

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $2b
    ld [hl], $36
    ccf
    ld l, $00
    nop
    nop

jr_0b4_5a13:
    dec bc
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    dec hl
    ld [hl], $36
    ld b, a
    ld l, $00
    nop
    nop
    dec bc
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_0b4_5a28:
    ld c, h
    ld c, l
    ld c, [hl]
    dec hl
    ld [hl], $36
    ld c, a
    ld l, $00
    nop
    nop
    dec bc
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    dec hl
    ld [hl], $36
    ld d, a

jr_0b4_5a3f:
    ld l, $00
    nop
    nop
    ld e, b
    ld e, c
    ld e, d
    ld [hl], $5b
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [hl], $36
    ld h, b
    ld h, c
    nop
    nop
    nop
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld e, a
    ld [hl], $36
    ld l, d
    ld h, c
    nop
    nop
    nop
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld e, a
    ld [hl], $36
    ld [hl], e
    ld h, c
    nop
    nop
    nop
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld e, a
    ld [hl], $7c
    ld a, l
    ld h, c
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    ld e, a
    ld [hl], $86
    nop
    ld h, c
    nop
    nop
    nop
    ld a, [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    ld e, a
    adc [hl]
    nop
    nop
    ld h, c
    nop
    nop
    nop
    ld a, [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    nop
    nop
    nop
    sub a
    nop
    nop
    nop
    ld a, [hl]
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
    and b
    nop
    nop
    nop
    ld a, [hl]
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    sbc a
    nop
    nop
    nop
    and b
    nop
    nop
    nop
    xor b
    xor c
    and d
    xor d
    xor e
    and d
    and d
    xor h
    xor l
    nop
    nop
    nop
    and b
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
    dec b
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
    dec b
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
    dec b
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
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    inc b
    inc b
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
    dec b
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
    ld [bc], a
    dec b
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
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld bc, $0202
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
    dec b
    ld [bc], a
    ld bc, $0202
    ld bc, $0201
    dec b
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
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $f8
    rst $38
    ld sp, hl
    cp $fa
    db $fd
    ld sp, hl
    cp $f8
    rst $38
    ld sp, hl
    cp $fa
    db $fd
    ld sp, hl
    cp $fa
    db $fd
    ld sp, hl
    cp $f8
    rst $38
    ld sp, hl
    cp $f8
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
    rst $38
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    add b
    add b
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
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $2afe
    push de
    ld d, l
    xor d
    xor a
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    ld e, a
    and b
    cp a
    ld b, b
    ld a, l
    add b
    ld a, [$7500]
    add b
    ld [$5500], a
    add b
    xor d
    ld b, b
    ld d, l
    and b
    xor d
    ld d, h
    ld d, l
    xor d
    xor d
    ld d, l
    dec d
    ld [$f50a], a
    ld bc, $00fe
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
    rlca
    rst $38
    ccf
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    add e
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $ff
    rlca
    rst $38
    nop
    rst $38
    inc bc
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
    ld d, l
    xor d
    cp a
    ld b, b
    db $fd
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$d500], a
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
    ld [hl], l
    add b
    xor [hl]
    ld d, c
    ld d, l
    xor d
    xor a
    ld d, b
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec d
    ld [$f50a], a
    dec b
    ld a, [$f50a]
    dec d
    ld [$f50a], a
    dec d
    ld [$d5aa], a
    dec d
    ld [$d52a], a
    dec d
    ld [$f46b], a
    rst $30
    add sp, -$01
    db $fc
    push af
    ld [$f4fb], a
    pop bc
    cp $c0
    rst $38
    cp $ff
    rst $38
    rst $38
    ccf
    ei
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rlca
    rst $38
    inc a
    rst $38
    inc c
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rrca
    ldh a, [$5f]
    and b
    ld a, [$5500]
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
    and b
    nop
    ld d, b
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
    ld b, b
    nop
    cp d
    ld b, l
    ld a, a
    add b
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, a
    xor b
    cp a
    ld b, b
    ld [hl], h
    add b
    add sp, $00
    ret nc

    nop
    and d
    ld b, b
    call nz, $aa00
    nop
    push de
    nop
    xor d
    nop
    push af
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    ld d, l
    add b
    cp $fd
    db $fd
    ld a, [$00ff]
    rst $38
    nop
    xor $90
    db $fd
    ld hl, sp+$2e
    pop de
    rla
    add sp, $02
    db $fd
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    nop
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rP1]
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
    rra
    ldh [$e0], a
    rra
    rra
    ldh [rIE], a
    nop
    ldh a, [rIF]
    nop
    rst $38
    cpl
    ret nc

    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    di
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
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
    inc bc
    xor d
    ld d, l
    ld d, l
    xor d
    ld [$fd15], a
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, l
    ld a, [hl+]
    add d
    dec b
    nop
    nop
    nop
    nop
    stop
    jr z, jr_0b4_5ea6

jr_0b4_5ea6:
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
    push de
    nop
    db $eb
    nop
    ld a, a
    nop
    cp [hl]
    ld b, b
    push af
    nop
    db $eb
    nop
    rst $30
    nop
    xor d
    dec d
    ld d, a
    jr z, @+$01

    nop
    rst $30
    ld [$55aa], sp
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
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

Jump_0b4_5ef5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    db $fc
    nop
    ldh [rSB], a
    add c
    ld bc, $0180
    ret nz

    nop
    add b
    inc bc
    add b
    rlca
    nop
    rrca
    nop
    ccf
    jp $843f


    rra
    adc b
    rra
    sbc b
    ccf
    cp b
    ld a, a
    ld [hl], b
    rst $38
    nop
    rst $38
    dec b
    ld a, [$55aa]
    ld d, a
    xor b
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
    db $fd
    nop
    ei
    nop
    ld [hl], a
    add b
    rst $30
    nop
    ld b, d
    and l
    add c
    ld b, d
    nop
    nop
    rst $38
    nop
    ei
    nop
    sbc b
    nop
    add d
    nop
    ld b, a
    add b
    rst $30
    nop
    ld d, a
    xor b
    xor [hl]
    ld d, b
    ld d, l
    xor b
    xor b
    ld d, h
    ld d, d
    xor b
    ld a, [hl+]
    ret nc

    rra
    ldh [$0e], a
    pop af
    inc c
    di
    inc b
    ei
    ld a, [$ff05]
    nop
    cp $01
    push af
    ld a, [bc]
    ld a, [$ff05]
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
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    inc bc
    nop
    ld hl, sp-$04
    add $ff
    add c
    rst $38
    jp $bfff


    ld a, a
    db $eb
    rra
    add b
    nop
    ld b, b
    adc h
    ld b, $f9
    add b
    ld a, a
    adc a
    ld [hl], b
    sbc [hl]
    ld h, b
    cp h
    ld b, b
    rra
    ldh [rP1], a
    rst $38
    ld d, l
    xor d
    cp $01
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
    ld d, a
    xor b
    ld a, [bc]
    dec d
    rst $38
    nop
    rst $38
    nop
    cp h
    nop
    nop
    nop
    add [hl]
    nop
    adc $00
    ld a, a
    nop
    ld c, c
    nop
    ld b, b
    nop
    sbc $00
    sbc a
    ld h, b
    rra
    ldh [rNR22], a
    add sp, $2a
    push de
    db $10
    rst $28
    nop
    rst $38
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, a
    xor b
    cp [hl]
    ld b, b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    ret nz

    nop
    ldh a, [rP1]
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
    cp $01
    rst $38
    nop

jr_0b4_6026:
    rrca
    add b
    nop
    cp $e0
    sbc a
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    rra
    rst $38
    add a
    rst $38
    rst $38
    ldh [$f3], a
    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    ld d, l
    xor d
    xor d
    ld d, l
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    xor d
    add b
    ld b, b
    rst $38
    nop
    db $dd
    nop
    sbc [hl]
    nop
    jr nz, jr_0b4_6068

jr_0b4_6068:
    inc bc
    nop
    rst $30
    nop
    rst $30
    nop
    ld b, e
    nop
    jr nz, jr_0b4_6072

jr_0b4_6072:
    ei
    nop
    rst $18
    jr nz, jr_0b4_6026

    ld d, b
    ld d, e
    xor h
    dec bc

jr_0b4_607b:
    db $fc
    ld d, a
    db $fc
    add hl, hl
    cp $50
    rst $38
    nop
    rst $38
    ld d, l
    xor d
    add b
    ld b, b
    nop
    nop
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
    nop
    nop
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
    jr z, jr_0b4_607b

    push de
    ld a, [hl+]
    jp z, Jump_000_0d15

    ld [bc], a
    rrca
    ret nz

    rrca
    adc b
    dec c
    sbc [hl]
    ld e, $ff
    rst $30

jr_0b4_60b3:
    rst $38
    jp z, Jump_000_00ff

    rst $38
    ldh a, [rIF]
    ld h, b
    rra
    db $fc
    rrca
    ld a, $1f
    rlca
    jr c, jr_0b4_611a

    xor b
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
    cp a
    nop
    ld b, b
    cp a
    jr nz, jr_0b4_60b3

    jr nz, @-$1f

    db $10
    rst $28
    db $10
    rst $28
    inc c
    di
    dec bc
    ldh a, [$f9]
    nop
    db $fd
    nop
    cp $00
    cp $00
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    ld e, a
    nop
    rra
    nop
    xor $01
    db $ec
    inc bc
    db $f4
    inc bc
    cp h
    ld b, e
    ld a, $c1
    ld c, $f1
    rlca
    ld hl, sp+$03
    db $fc
    and d
    ld e, l
    ld d, l
    xor d
    ld [bc], a
    dec b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b4_611a:
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [bc], a
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
    rst $38
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
    nop
    ld sp, hl
    nop
    db $fd
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
    inc bc
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
    sbc a
    nop
    rst $08
    nop
    xor $01
    xor $01
    ld a, e
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $18
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [$aa], a
    ld d, l
    ld d, h
    xor e
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
    nop

jr_0b4_6195:
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    xor e
    nop
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
    nop
    nop
    nop
    nop
    rrca
    nop
    ld a, a
    nop
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld h, e
    sbc h
    ld [hl], e
    adc h
    cpl
    ret nc

    ld a, e
    add b
    ei
    nop
    pop af
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $10
    jr z, jr_0b4_6195

    ld d, l
    dec d
    ld [$f50a], a
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $80
    ld a, b
    ret nz

    nop
    ld b, b
    add b
    ld h, b
    nop
    jr nz, jr_0b4_6207

    nop
    ld a, a
    nop

jr_0b4_6207:
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
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
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
    ld d, a
    nop
    xor d
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
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [$08], a
    ret nz

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
    db $fc
    nop
    ldh a, [rP1]
    ld a, b
    nop
    cp [hl]
    nop
    ld e, e
    inc b
    add l
    ld a, [bc]
    adc $01
    ld b, l
    and d
    and d
    ld d, c
    ld e, a
    and b
    xor e
    ld d, h
    ld bc, $00fe
    ld hl, sp+$00
    nop
    ld bc, $0500
    ld [bc], a
    dec bc
    inc b
    rrca
    ld [hl], b
    rrca
    ldh a, [$03]
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $10
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
    push de
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
    ldh [rP1], a
    rst $38
    nop
    nop
    ldh a, [rP1]
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
    sbc $00
    cp $01
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
    ld bc, $000f
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
    ld d, a
    xor b
    xor [hl]
    ld d, c
    ld d, l
    xor d
    ld a, [bc]
    dec d
    dec b
    ld a, [bc]
    ld [$f515], a
    ld a, [bc]
    cp $01
    ld [bc], a
    nop
    dec b
    nop
    ld a, [hl+]
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
    nop
    nop
    nop
    nop
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    push af
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    xor a
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ldh a, [rIF]
    rst $38
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
    inc bc
    nop
    rrca
    ld bc, $021f
    rlca
    dec b
    rra
    dec bc
    inc a
    rla
    ld hl, sp+$2f
    ld hl, sp-$61
    ld [hl], b
    ld a, a
    and b
    rra
    ld b, b
    rrca
    nop
    rlca
    nop
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld a, [$e505]
    ld a, [de]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    nop
    nop
    ld d, l
    nop
    xor d
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld d, l
    nop
    xor d
    nop
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld d, l
    xor d
    ld [$d515], a
    ld a, [hl+]
    ld a, [$fd05]
    ld [bc], a
    ld a, [$ff05]
    nop
    ld bc, $80ff
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    nop
    rst $38
    nop
    ld a, a
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
    ld [bc], a
    rst $38
    ld d, l
    rst $38
    and a
    ld hl, sp+$5f
    ldh [$fe], a
    ld bc, $0002
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
    ld a, [bc]
    nop
    ld bc, $0000
    nop
    ld d, b
    nop
    xor d
    nop
    ld d, l
    nop
    cp [hl]
    nop
    rst $38
    jr nc, @+$01

    rrca
    rst $38
    rlca
    ld a, [$1d05]
    ld [bc], a
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
    nop
    rst $38
    nop
    xor $11
    ld d, l
    ld a, [bc]
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
    inc bc
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
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
    ld d, a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld [$f515], a
    ld a, [bc]
    ld [$d515], a
    ld a, [hl+]
    ld [$5515], a
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    or b
    ld b, b
    nop
    nop
    ld a, [hl+]
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor d
    nop
    ld d, l
    nop
    xor [hl]
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    add a
    nop
    ld b, e
    nop
    cp b
    nop
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    ld a, a
    ld e, a
    cp a
    xor a
    ld d, a
    ld d, l
    xor e
    ld [$d515], a
    ld a, [hl+]
    ld [$d517], a
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
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
    ld bc, $0300
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
    rst $38
    rst $38
    ld bc, $80ff
    ld a, a
    ld b, b
    cp a
    cp b
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    xor a
    ld e, a
    ld a, a
    rst $38
    xor b
    ld d, a
    ld d, e
    xor a
    xor b
    ld d, a
    ld d, h
    xor e
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
    ld [bc], a
    dec b
    ld d, l
    ld a, [bc]
    ld a, [$ff05]
    nop
    ld a, [$fd05]
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    ld a, [$7505]
    ld a, [bc]
    ld a, [$f705]
    ld a, [bc]
    ld [$5515], a
    xor d
    cp $75
    rst $10
    ccf
    db $eb
    rla
    ld a, a
    inc bc
    inc bc
    nop
    rst $38
    inc bc
    db $fd
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ld e, a
    ld a, a
    xor [hl]
    cp a
    ld e, a
    ld e, a
    cp a
    xor d
    ld d, l
    ld d, l
    xor e
    xor d
    ld d, l
    ld d, l
    xor d
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $00ff
    nop
    rst $38
    inc bc
    rst $38
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
    rlca
    ld hl, sp-$08
    rlca
    rlca
    ld hl, sp-$01
    nop
    ld hl, sp+$07
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld [hl], b
    rst $38
    adc [hl]
    ld a, a
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    jp nz, $e7ff

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
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ld bc, $01ff
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
    rst $38
    nop
    nop
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
    rst $38
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    inc hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc a
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    add e
    rst $38
    add a
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    rra
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
    ld a, a
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $fc
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ff01
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    ld a, [bc]
    add hl, bc
    dec bc
    inc c
    dec c
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    add hl, bc
    add hl, bc
    add hl, bc
    dec d
    ld d, $17
    jr jr_0b4_6722

jr_0b4_6722:
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    add hl, bc
    jr nz, jr_0b4_674f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b4_675f

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b4_676f

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b4_677f

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0b4_674f:
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

jr_0b4_675f:
    ld d, e
    ld d, h
    ld d, l
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
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

jr_0b4_676f:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld b, [hl]
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

jr_0b4_677f:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld b, [hl]
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
    ld b, [hl]
    add d
    ld b, [hl]
    add e
    add h
    add l
    add [hl]
    add a
    add hl, bc
    add hl, bc
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld b, [hl]
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
    jr jr_0b4_67fc

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

jr_0b4_67d3:
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

    jr z, jr_0b4_67d3

    sbc $df
    ldh [$e1], a
    add hl, bc
    ld [c], a

jr_0b4_67fc:
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    nop
    ld [$eceb], a
    db $ed
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    nop
    db $f4
    push af
    or $f7
    ld hl, sp+$09
    add hl, bc
    add hl, bc
    add hl, bc
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $00
    rst $38
    nop
    db $ec
    ld bc, $0902
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc bc
    inc b
    dec b
    ld b, $0d
    rlca
    ld [$ec09], sp
    ld a, [bc]
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    dec b
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
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    ld bc, $0002
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
    dec b
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
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    dec b
    dec b
    dec b
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
    ld [bc], a
    dec b
    dec b
    dec b
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
    dec b
    dec b
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
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    jr nz, jr_0b4_6936

jr_0b4_6936:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
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
    ld [bc], a
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    ld [$0000], sp
    nop
    nop
    nop
    ld [$080a], sp
    ld [$0820], sp
    ld [$0008], sp
    ld [$0008], sp
    nop
    nop
    nop
    nop
    ld [$0a0a], sp

TitlescreenScene1Image:: ; 0x6980
    INCBIN "gfx/bank0b4_titlescreen_scene1_6980.2bpp"

TitlescreenScene1Tilemap:: ; 0x7a70
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $02, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $1f, $20, $21, $22, $23, $02, $02, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c
    db $2d, $2e, $2f, $30, $30, $31, $32, $33, $34, $02, $02, $35, $36, $37, $38, $39
    db $3a, $3b, $3c, $3d, $3e, $30, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48
    db $49, $4a, $30, $4b, $30, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56
    db $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66
    db $30, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75
    db $30, $30, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83
    db $84, $85, $86, $87, $88, $89, $8a, $6d, $6d, $6d, $8b, $8c, $8d, $8e, $8f, $90
    db $91, $92, $93, $94, $95, $96, $6d, $6d, $6d, $6d, $6d, $6d, $97, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $6d, $9f, $79, $6d, $6d, $6d, $6d, $a0, $a1, $a2, $a3, $a4
    db $a5, $a6, $a7, $a8, $6d, $6d, $a9, $aa, $6d, $6d, $ab, $ac, $ad, $ae, $af, $b0
    db $30, $30, $b1, $b2, $b3, $6d, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd
    db $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd
    db $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $dd
    db $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed
    db $02, $02, $04, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $f9, $fa
    db $02, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06, $06, $06, $07
    db $08, $09, $0a, $0b, $0c, $06, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $06
    
bank0b4_7bb0:
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02
    db $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00
    db $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $00, $02
    db $02, $02, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $00, $02
    db $02, $02, $02, $02, $02, $00, $00, $00, $00, $00, $00, $02, $02, $02, $00, $00
    db $02, $02, $01, $02, $01, $02, $02, $00, $00, $00, $04, $04, $07, $02, $00, $05
    db $02, $02, $02, $02, $02, $02, $02, $00, $00, $00, $04, $07, $02, $02, $05, $05
    db $01, $02, $02, $02, $00, $00, $00, $00, $01, $06, $04, $07, $02, $05, $05, $02
    db $01, $01, $02, $02, $00, $00, $01, $01, $01, $03, $04, $04, $04, $05, $05, $02
    db $02, $02, $02, $00, $00, $01, $01, $01, $01, $01, $04, $04, $04, $05, $05, $00
    db $02, $02, $02, $00, $00, $01, $01, $01, $01, $01, $01, $01, $05, $05, $05, $00
    db $02, $02, $02, $00, $00, $01, $21, $01, $01, $01, $01, $06, $00, $05, $05, $00
    db $02, $02, $02, $00, $00, $00, $01, $01, $01, $01, $06, $00, $00, $05, $02, $02
    db $01, $01, $02, $00, $00, $00, $01, $01, $01, $01, $06, $00, $00, $00, $02, $00
    db $02, $02, $02, $02, $00, $00, $00, $00, $01, $01, $00, $02, $07, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02, $02
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $02
    db $00, $00, $20, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02
    db $00, $00, $00, $00, $00, $00, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

    db $ff, $ff, $7f, $ff, $7f, $ff, $bf, $ff
    db $77, $ff, $3f, $ff, $3f, $ff, $0f, $ff
    db $07, $ff, $03, $ff, $03, $ff, $04, $ff, $02, $ff
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $80, $7f, $00, $ff, $00, $ff, $00, $ff, $00, $ff
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $80, $7f

bank0b4_7d40:
    nop
    rst $38
    nop
    rst $38
    or b
    ld c, a
    or h
    ld c, e
    ldh a, [rIF]
    ld a, [c]
    dec c
    cp $01
    cp l
    ld [bc], a
    ld e, a
    nop
    cp a
    nop
    cp a
    nop
    rst $08
    nop
    rst $18
    nop
    rra
    nop
    adc a
    nop
    adc a
    nop
    rrca
    nop
    cpl
    nop
    cpl
    nop
    ld [hl], e
    nop
    ccf
    nop
    ld a, a
    nop
    dec bc
    nop
    dec d
    nop
    ld de, $1500
    nop
    ld b, a
    nop
    rlca
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $0000
    nop
    ld [$8000], sp
    nop
    nop
    nop
    ld bc, $9000
    nop
    jr nz, jr_0b4_7d92

jr_0b4_7d92:
    add b
    nop
    jr nz, jr_0b4_7d96

jr_0b4_7d96:
    stop
    ld b, d
    nop
    inc d
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    stop
    ld b, b
    nop
    jr nz, jr_0b4_7da8

jr_0b4_7da8:
    nop
    nop
    ld hl, $0200
    nop
    ld bc, $2000
    nop
    add d
    nop
    dec b
    nop
    rlca
    nop
    adc a
    nop
    rla
    nop
    inc c
    inc bc
    dec e
    ld [bc], a
    inc a
    inc bc
    or b
    rrca
    ret nc

    cpl
    ret nz

    ccf
    ret nz

    ccf
    and a
    ld a, a
    scf
    rst $38
    scf
    rst $38
    ld a, $ff
    pop af
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld [c], a
    rst $38
    cp h
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    db $10
    rst $28
    pop bc
    ld a, $00
    rst $38
    add b
    rst $38
    add c
    cp $27
    ld hl, sp-$21
    ldh [$7f], a
    add b
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
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    ld b, $ff
    inc bc
    rst $38
    rrca
    rst $38
    ld b, $ff
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
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    and b
    ld e, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ret nc

    cpl
    ret nz

    ccf
    ret nc

    cpl
    ret nc

    cpl
    ld h, b
    sbc a
    ldh [$1f], a
    ldh a, [rIF]
    or $09
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc $01
    ld a, [hl]
    ld bc, $001f
    rst $38
    nop
    daa
    jr @+$01

    nop
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, a
    nop
    cp $01
    rrca

Call_0b4_7e81:
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $01be
    ld a, [hl]
    ld bc, $02fd
    rst $30
    ld [$01fe], sp
    db $e4
    dec de
    add sp, $17
    ldh [$1f], a
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh [$1f], a
    add e
    ld a, a
    sbc a
    ld a, a
    ld [hl], d
    rst $38
    ret c

    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc e
    db $e3
    ret nz

    ccf
    inc bc
    db $fc
    ld c, $f1
    rst $20
    rst $38
    jr c, @+$01

    ldh [rIE], a
    add b
    rst $38
    ld bc, $03ff
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
    rst $28
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    xor a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld c, $ff
    rlca
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ret nc

    cpl
    cpl
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rla
    rst $38
    rrca
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
    ld [hl], b
    adc a
    and b
    ld e, a
    ld h, b
    sbc a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ldh a, [rIF]
    add sp, $17
    add b
    ld a, a
    add d
    ld a, l
    nop
    rst $38
    ldh [$1f], a
    ld [hl], b
    adc a
    ldh a, [rIF]
    ldh a, [rIF]
    call c, $fc23
    inc bc
    db $fc
    inc bc
    db $ec
    inc de
    ldh a, [rIF]
    db $f4
    dec bc
    ldh a, [rIF]
    ldh a, [rIF]
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
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
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    cpl
    rst $38
    ld b, b
    cp a
    ld bc, $0fff
    rst $38
    ld a, h
    rst $38
    pop hl
    cp $47
    ld hl, sp+$00
    rst $38
    ld b, c
    cp [hl]
    rst $20
    rst $38
    rra

jr_0b4_7fa3:
    rst $38
    inc c
    rst $38
    db $fc
    rst $38
    pop af
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    cp $01
    di
    rrca
    ldh [$1f], a
    jp Jump_000_0e3c


    pop af
    jr jr_0b4_7fa3

    ld a, [c]
    rrca
    di
    inc c
    pop af
    cp $fb
    cp $fd
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
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    add $ff
    add e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
