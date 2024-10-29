SECTION "ROM Bank $07e", ROMX[$4000], BANK[$7e]

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$01
    rst $38
    rst $38
    cp $01
    nop
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
    nop
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

    ccf
    rst $38
    nop
    rst $38
    nop
    ld bc, $0202
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
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $07
    ld [$0202], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $0f
    db $10
    ld de, $0212
    ld [bc], a
    inc de
    inc d
    dec d
    ld d, $16
    rla
    jr jr_07e_407c

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    jr nz, @+$23

    ld d, $22
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07e_409e

    ld a, [hl+]
    dec hl
    rra
    inc l
    dec l
    ld l, $2f

jr_07e_407c:
    jr nc, jr_07e_40af

    ld d, $32
    inc sp
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07e_40c1

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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_07e_409e:
    ld c, l
    ld c, [hl]
    inc sp
    inc sp
    ld c, a
    ld d, b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_07e_40af:
    ld e, c
    inc sp
    inc sp
    ld e, d
    ld e, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

Call_07e_40bc:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc sp

jr_07e_40c1:
    inc sp
    ld h, l
    ld h, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, h
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    inc sp
    inc sp
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
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
    inc sp
    ld a, h
    ld a, l
    ld a, [hl]
    inc sp
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
    inc sp
    inc sp
    inc sp
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
    inc sp
    inc sp
    inc sp
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
    inc sp
    inc sp
    and [hl]
    and a
    xor b
    inc sp
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    inc sp
    inc sp
    inc sp
    or d
    or e
    or h
    or l
    or [hl]
    db $10
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    inc sp
    inc sp
    inc sp
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    rst $00
    jp z, Jump_000_02cb

    ld [bc], a
    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    rst $08
    reti


    jp c, $02db

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    call c, Call_000_1616
    ld d, $dd
    sbc $df
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ldh [rNR21], a
    ld d, $16
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    dec b
    dec b
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0002
    nop
    nop
    dec b
    inc bc
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    inc bc
    ld b, $00
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
    ld bc, $0000
    nop
    ld b, $00
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0606
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0001
    ld bc, $0106
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0602
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0201
    ld b, $01
    ld bc, $0101
    ld b, $01
    ld b, $06
    ld b, $05
    ld [bc], a
    ld bc, $0101
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0601
    ld bc, $0101
    ld bc, $0101
    ld bc, $0006
    ld b, $06
    ld [bc], a
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $00
    nop
    ld b, $06
    ld b, $02
    dec b
    inc bc
    ld b, $06
    ld b, $00
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
    dec b
    nop
    nop
    jr nz, jr_07e_4294

jr_07e_4294:
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
    ld [bc], a
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
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
    ld bc, $01ff
    cp $03
    cp $03
    db $fc
    rlca
    nop
    rst $38
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
    ldh a, [rP1]
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
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
    cp $03
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
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
    rst $38
    nop
    ldh a, [rP1]
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
    rrca
    nop
    stop
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    stop
    rra
    nop
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
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
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f

Jump_07e_43fc:
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    ld bc, $01ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    nop
    or b
    nop
    adc b
    nop
    add h
    nop
    add h
    nop
    add h
    nop
    db $e4
    nop
    db $fc
    nop
    jr jr_07e_4482

jr_07e_4482:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    ld bc, $01ff
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
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
    rst $38
    nop
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
    rrca
    cp $1f
    db $fc
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    ei
    ccf
    rst $28
    ccf
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
    ldh [$7f], a
    ldh [$7f], a
    ldh a, [$3f]
    ldh a, [$3f]
    ld hl, sp+$1f
    ld hl, sp+$1f
    db $fc
    rrca
    db $fc
    rrca
    cp $07
    cp $07
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    ret nz

    ccf
    ret nz

Call_07e_4533:
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop af
    ld c, $f3
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
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    inc a
    nop
    add hl, de
    nop
    ld a, [de]
    nop
    db $10
    ld bc, $0110
    ld a, [de]
    nop
    add hl, de
    nop
    inc e
    nop
    ld e, $00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    rrca
    rst $38
    rra
    db $fd
    rra
    rst $38
    rra
    rst $38
    ccf
    db $fd
    ccf
    db $fd
    ccf
    db $eb
    ld a, a
    rst $28
    ld a, a
    rst $18
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    dec hl
    call nc, $fb04

jr_07e_45d8:
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    db $10
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
    rst $38
    rst $38
    rst $38
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

    ld a, a

jr_07e_45fa:
    ldh [$7f], a

jr_07e_45fc:
    rst $38
    ld a, a

jr_07e_45fe:
    rst $38
    ccf

jr_07e_4600:
    rlca
    db $fc

jr_07e_4602:
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$79
    ld a, b
    rst $00
    jr c, @-$37

    jr c, jr_07e_45d8

    jr c, jr_07e_45fa

    jr jr_07e_45fc

    jr jr_07e_45fe

    jr jr_07e_4600

    jr jr_07e_4602

    jr @-$17

    jr @-$17

    jr @-$07

    ld [$0837], sp
    rla
    ld [$0887], sp
    ld h, a
    ld [$0817], sp
    rlca
    ld [$0807], sp
    rst $30
    ld [$0807], sp
    rla
    ld [$0837], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    ld [$0800], sp
    nop
    ld [$0f00], sp
    rrca
    rrca
    jr jr_07e_466a

    jr z, jr_07e_466c

    jr z, jr_07e_468e

    ld c, b
    ccf
    ld c, b
    ld a, a
    adc b
    ld a, a
    adc b
    rst $38
    ld [$0fff], sp
    rst $38
    rrca
    cp $0f
    rst $38
    rrca
    rst $38
    rrca
    cp $1f
    rst $38
    rra
    db $fd
    rra
    db $fd
    ccf

jr_07e_466a:
    cp $3f

jr_07e_466c:
    db $fc
    ccf
    ldh [$7f], a
    rst $28
    ld a, a
    ld a, [$ef7f]
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld h, d
    rst $38
    rst $20
    rst $38
    adc b
    ld [hl], a
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

jr_07e_468e:
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
    ret nz

    ccf
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
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld [hl+], a
    db $dd
    ld b, b
    cp a
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
    ld b, b
    cp a
    and c
    ld e, [hl]
    nop
    rst $38
    nop
    rst $38
    ld bc, $04fe
    ei
    ld bc, $05fe
    ld a, [$f000]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr nc, jr_07e_46f3

jr_07e_46f3:
    jr nc, jr_07e_46f5

jr_07e_46f5:
    jr nc, jr_07e_46f7

jr_07e_46f7:
    jr nc, jr_07e_46f9

jr_07e_46f9:
    jr nc, jr_07e_46fb

jr_07e_46fb:
    jr nc, jr_07e_46fd

jr_07e_46fd:
    ldh a, [rSB]
    rst $38
    rst $38
    rst $10
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    db $fc

jr_07e_472d:
    rst $38
    ldh [rIE], a
    ret nz

    nop
    add b
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $18
    nop
    cp a
    ld b, b
    sbc a
    ld h, b
    rlca
    ld hl, sp+$01
    cp $a1
    ld e, [hl]
    ld h, b
    sbc a
    ld b, b
    cp a
    add h
    ld a, e
    nop
    rst $38
    nop
    rst $38
    jr z, jr_07e_472d

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    db $fd
    nop
    rst $38
    dec b
    ld a, [$fb04]
    nop
    rst $38
    nop
    rst $38
    ld de, $03ee
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [rIF], a
    ldh a, [rNR22]
    add sp, $25
    jp c, $e01f

    ccf
    ret nz

    ld e, a
    and b
    ld e, a
    and b
    cpl
    ret nc

    dec de
    db $e4
    ld e, e
    and h
    ld c, a
    or b
    sbc [hl]
    ld h, c
    dec e
    ld [c], a
    nop
    nop
    nop
    nop
    nop
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
    rst $18
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
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $fffe
    nop
    cp $00
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop

jr_07e_47e6:
    rst $30
    nop
    rst $38
    nop
    ld a, [$c000]
    nop
    ret nz

    nop
    rst $38
    rst $38
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
    nop
    add b
    ld b, b
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$08
    ldh a, [rNR34]
    ldh [$0c], a
    ldh a, [$3c]
    ret nz

    inc e
    ldh [$3c], a
    ret nz

    jr c, @-$3e

    ld d, b
    and b
    add $30
    call z, $f830
    nop
    jr c, jr_07e_47e6

    ld [$20c0], sp
    ret nz

    and b
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
    add b
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $fc
    nop
    db $fc
    nop
    db $fc
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
    db $fc
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    db $d3
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $08
    rst $38
    nop
    sub b
    nop
    rst $38
    nop
    rst $38
    add e
    rst $38
    jp $c3f7


    rst $38
    jp $c3f7


    rst $38
    add e
    rst $30
    add c
    di
    ld bc, $00e7
    rst $30
    nop
    rst $00
    nop
    rst $18
    ld bc, $83cf
    rst $18
    adc a
    sbc a
    adc a
    rst $18
    adc a
    rst $18
    adc a
    rst $18
    adc a
    rst $18
    adc a
    rst $38

Jump_07e_48b7:
    rst $08
    rst $38
    rst $18
    rst $18
    adc a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $18
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    add b
    call nc, $ff80
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop

Jump_07e_48f5:
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_07e_4914

jr_07e_4914:
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
    rla
    ld a, a
    rrca
    rst $38
    ccf
    nop
    nop
    nop
    nop
    dec sp
    nop
    rra
    nop
    cpl
    nop
    rla
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
    ld a, a
    nop
    pop bc
    ld a, $60
    rra
    nop
    ccf
    ld e, $01
    ld [hl], h
    dec bc
    jr nz, jr_07e_4975

    nop
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    add c
    ld a, [hl]
    db $ec
    inc de
    or e
    ld c, h
    ld b, d
    dec a
    ld a, c
    ld b, $bb
    inc b
    rlca
    nop
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_4975:
    rlca
    ld e, a
    ld bc, $000f
    add a
    nop
    rst $08
    ld bc, $03c7
    rst $28
    inc bc
    rst $28
    inc bc
    rst $38
    inc bc
    rst $28
    inc bc
    rst $38
    inc bc
    rst $28
    inc bc
    rst $38
    inc bc
    rst $28
    inc bc
    rst $38
    rlca
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    xor e
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $18
    rst $38
    rst $38
    rlca
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
    inc e
    nop
    dec de
    nop
    rst $20
    rst $38
    rla
    cpl
    rla
    rst $28
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    rst $30
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    dec c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    di
    inc c
    di
    inc c
    ld a, h
    di
    cp $e1
    ld e, e
    db $fc
    add a
    sub $d1
    ret


    ld [hl], b
    ld [$d91a], a
    ld [bc], a
    pop bc
    ld [de], a
    rl c
    ret


    ld [de], a
    ret z

    ld [de], a
    ret


    ld [de], a
    ret


    ld [de], a
    ret


    ld [de], a
    ret


    ld [de], a
    ret


    ld [de], a
    ret


    ld [de], a
    ret


    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld sp, hl
    nop
    rst $38
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    ld [$f515], a
    ld a, [bc]
    xor e
    ld d, h
    ld d, e
    xor h
    dec c
    ld a, [c]
    rlca
    ld hl, sp+$3f
    ret nz

    ld l, l
    sub d
    ld a, a
    add b
    inc bc
    db $fc
    ld de, $7eee
    add c
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld h, b
    sbc a
    ld [hl], h
    adc e
    ei
    inc b
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
    dec b
    nop
    rra
    nop
    rra
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld sp, $0f00
    nop
    ccf
    nop
    ccf
    nop
    dec e
    nop
    rrca
    nop
    rra
    nop
    jr c, jr_07e_4a75

    ld a, h
    inc bc
    nop
    nop
    inc bc
    nop
    rlca

jr_07e_4a75:
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
    nop
    rst $38

jr_07e_4a82:
    inc bc
    db $fc
    inc b
    ei
    add hl, de
    rst $20
    ld h, b
    sbc a
    add d
    ld a, a
    ld [bc], a
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38

jr_07e_4ab7:
    nop
    rst $38
    nop
    rst $38
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
    rrca
    ldh a, [rIE]
    nop
    pop bc
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nc, jr_07e_4a82

    adc h
    ld c, h
    jp $d113


    adc l
    ld d, b
    ld c, [hl]
    or [hl]
    jr c, jr_07e_4ab7

    inc e
    sub $06
    db $d3
    dec bc
    call nc, $d608
    ld [$08d6], sp
    sub $08
    sub $08
    ld d, [hl]
    adc b
    ld d, $c8
    ld d, $c8
    ld d, $c8
    ld d, $c8
    ld [de], a
    call z, $fe00
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
    rst $38
    nop
    rra
    ldh [$2f], a
    ret nc

    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    swap h
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ldh [$1f], a
    add d
    ld a, l
    cp [hl]
    ld b, c
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    di
    rst $38
    rst $28
    rst $38
    sbc a
    add l
    ld a, a
    rrca
    rst $38
    xor a
    rst $38
    ld a, a
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
    ccf
    rst $38
    rra
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
    nop
    rst $38
    add e
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    cpl
    rra
    rla
    rrca
    dec d
    rrca
    dec d
    rrca
    ld d, $0f
    add [hl]
    rst $38
    ld [hl], d
    ld a, a
    rra
    sbc a
    rlca
    rst $20
    ld b, e
    cp e
    ld [hl], b
    adc h
    cp b
    rst $00
    ld a, b
    ld h, l
    sub b
    dec a
    call z, $f60d
    rlca
    ld sp, hl
    ld bc, $04f8
    ld hl, sp+$05
    ld hl, sp+$05
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld a, b
    add l
    add hl, sp
    call nz, $e419
    add hl, bc
    db $f4
    ld bc, $01fc
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $00fc
    rst $38
    nop
    rst $38
    nop
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

    add a
    ld a, b
    db $ed
    ld [de], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $ec
    inc de
    rst $38
    nop
    db $fd
    nop
    db $fd
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
    cp $00
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$05
    ld a, [$ffff]
    rst $38
    rst $38
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
    inc c
    di
    db $10
    rst $28
    ld h, c
    sbc a
    add e
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
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
    rst $38
    rst $38
    ret nc

    rst $38
    ld b, b
    rst $38
    rlca
    ld hl, sp+$0c
    ldh a, [$b8]
    ret nz

    and b
    ret nz

    ldh [$c0], a
    jr nc, @+$32

    inc e
    call c, $e707
    ld de, $18f9
    cp $8a
    rst $38
    push hl
    rst $38
    inc sp
    ld a, a
    sbc a
    rra
    and $0f
    jp $e133


    dec e
    add b
    ld a, [hl]
    ld h, $df
    ldh a, [rIF]
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    scf
    nop
    inc hl
    nop
    ld b, e
    add b
    add e
    ret nz

    pop bc
    rst $38
    pop hl
    rst $38
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
    ld e, [hl]
    and c
    ld a, e
    add h
    push af
    ld a, [bc]
    rst $38
    nop
    sub [hl]

jr_07e_4cc9:
    ld l, c
    rst $38
    nop
    rst $20
    jr @-$30

    ld sp, $1fe0
    ld [hl], b
    adc a
    ld a, b
    add a
    cp [hl]
    ld b, c
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    swap h
    cp e
    ld b, h
    rst $38
    nop
    rst $30
    nop
    ei
    nop
    ld a, e
    nop
    ei
    nop
    rst $38
    nop
    cp a
    ld b, b
    nop
    rst $38
    ld bc, $02fe
    db $fd
    inc c
    di
    jr nc, jr_07e_4cc9

    ld b, c
    cp a
    add e
    ld a, a

jr_07e_4cfe:
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_4d16:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    rst $38
    rst $28
    cp a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
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
    db $fc
    rst $38
    rst $20
    ld hl, sp-$50
    ret nz

    ld b, b
    add b
    add c
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
    add b
    ret nz

    ld h, b
    ld h, b
    jr c, jr_07e_4d16

    ld c, $ce
    inc bc
    or e
    or c
    dec c
    cp b
    ld b, $be
    ld bc, $80bf
    rst $38
    ld h, b
    ccf
    jr c, jr_07e_4cfe

    inc e
    xor [hl]
    rlca
    or c
    inc bc
    cp h
    ld bc, $00be
    cp [hl]
    ld bc, $413e
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $41
    ld a, $41
    ld e, $61
    dec c
    ld [hl], d
    dec b
    ld a, d
    ld bc, $017e
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $ec
    inc de
    cp [hl]
    ld b, c
    ld a, [hl]
    add c
    ld e, e
    and h
    push af
    ld a, [bc]
    rst $38
    nop
    rst $28
    db $10
    push hl
    ld a, [de]
    pop af
    ld c, $f0
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    ei
    inc b
    ld b, c
    cp a
    add l
    ld a, a
    dec bc
    rst $38
    ccf
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    xor a
    rst $38
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07e_4e73

    nop
    ld b, b
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
    add b
    nop
    ldh [$c0], a
    ld [hl], a
    ld a, b
    rra
    sbc a
    rlca
    rst $20
    ld b, b
    or c
    ld [hl], b
    adc h
    ld a, b
    add a
    ld a, [hl]
    add c
    rst $38
    add b
    rst $18
    ldh [$7f], a
    ld [hl], b
    sbc e
    inc a
    rst $18
    rrca
    rst $20
    inc bc
    ld hl, sp+$00
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
    db $fd
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop

jr_07e_4e73:
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
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
    rst $28
    db $fc
    db $e3
    db $fc
    dec bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop

jr_07e_4ed8:
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
    rrca
    nop
    rra
    nop
    rst $38
    nop
    rst $08
    ldh a, [$fe]
    rst $38
    rrca
    rst $38
    ld bc, $0e00
    pop af
    ld c, a
    or b
    rlca
    ld hl, sp-$79
    ld a, b
    rst $00
    jr c, jr_07e_4ed8

    jr nc, @+$03

    cp $fe
    rst $38
    ld a, [hl]
    ld bc, $8201
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
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

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [$80], a
    ldh [$c0], a
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f8]
    ld hl, sp-$04
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp

jr_07e_4fb8:
    rst $30
    ld [$08f7], sp

jr_07e_4fbc:
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    ld l, a
    sub b
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
    rst $18
    jr nz, jr_07e_4fb8

    jr nz, @-$1f

    jr nz, jr_07e_4fbc

    inc hl
    db $fc
    ccf
    ldh [$3f], a
    ldh [$3f], a
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

jr_07e_5000:
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_501e:
    rst $38
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a

jr_07e_5028:
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    ld e, $ed
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    rst $20
    jr jr_07e_501e

    jr jr_07e_5028

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_07e_5000

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
    rst $38
    nop
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
    rst $38
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
    rst $38
    nop
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
    cp a
    ld c, c
    or [hl]
    ld l, c
    sub [hl]
    db $d3
    inc l
    ld a, l
    add d
    cp $01
    ei
    inc b
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
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
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
    jr jr_07e_5103

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07e_5113

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07e_5123

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_07e_5103:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_07e_5113:
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
    jr nc, jr_07e_5170

    ld d, b
    ld d, c

jr_07e_5123:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_07e_512c:
    ld e, e
    jr nc, jr_07e_515f

    jr nc, jr_07e_518d

    ld e, l
    jr nc, jr_07e_5164

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
    jr nc, jr_07e_51b0

    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec [hl]
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
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l

jr_07e_515f:
    add [hl]
    add a

jr_07e_5161:
    adc b
    adc c
    adc d

jr_07e_5164:
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

jr_07e_5170:
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
    ld sp, $a3a2
    and h
    and l
    and [hl]
    and a
    jr nc, jr_07e_512c

jr_07e_5184:
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c

jr_07e_518d:
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
    jr nc, jr_07e_5161

    jp $c5c4


    add $c7

jr_07e_51a4:
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    jr nc, jr_07e_51df

    pop de

jr_07e_51b0:
    jr nc, jr_07e_5184

    db $d3
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$30], a
    jr nc, jr_07e_51a4

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
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd

jr_07e_51df:
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
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_07e_5214

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07e_5224

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $02
    ld [bc], a
    nop
    nop

jr_07e_5214:
    nop
    nop
    nop
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
    nop

jr_07e_5224:
    nop
    nop
    nop
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
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0001
    ld bc, $0002
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
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
    ld [bc], a
    ld bc, $0101
    ld bc, $0102
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0100
    ld bc, $0101
    dec b
    ld [bc], a
    ld bc, $0303
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0100
    ld bc, $0101
    dec b
    ld [bc], a
    ld bc, $0303
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0100
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0201
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0100
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0200
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0901
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    add hl, bc
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080a], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    ccf
    nop
    rst $38
    nop
    ld e, a
    nop
    cp e
    nop
    rst $38
    nop
    ld a, c
    ld [bc], a
    rra
    nop
    and a
    nop
    xor a
    nop
    cp l
    ld [bc], a
    rra
    nop
    rst $28
    nop
    db $d3
    jr nz, @+$01

    nop
    di
    nop
    ld a, e
    nop
    ld a, e
    rst $38
    ld a, a
    rst $38
    jp c, $3bff

    rst $38
    rst $28
    rst $38
    cp $ff
    ld l, l
    rst $38
    or a
    rst $38
    rla
    rst $38
    cp [hl]
    rst $38
    ld l, a
    rst $38
    jp nc, Jump_07e_6e7f

    rst $38
    ld a, [hl+]
    rst $38
    ld hl, sp-$01
    ld h, a
    rst $38
    ld e, [hl]
    rst $38
    sbc c
    rst $38
    ld h, a
    rst $38
    or a
    rst $38
    ld d, [hl]
    rst $38
    jp c, $937f

    ld a, a
    and a
    ld a, a
    jp hl


    ccf
    sbc [hl]
    ld a, a
    add l
    ld a, a
    inc d
    rst $38
    adc b
    ld a, a
    dec b
    rst $38
    ld bc, $4bff
    cp a
    xor b
    ld a, a
    inc b
    rst $38
    sub h
    ld a, a
    adc h
    ld a, a
    add d
    ld a, l
    add d
    ld a, l
    ld b, d
    cp l
    ld [$0cf7], sp
    di
    ld l, $f1
    ld b, $f9
    ld b, $f9
    and $19
    ld a, d
    adc l
    rst $38
    nop
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a

jr_07e_53d2:
    ld sp, hl
    ld b, $ff
    nop
    cp e
    ld b, h
    or a
    ld c, b
    rst $38
    nop
    ld a, l
    add d
    ld a, e
    add h
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop

jr_07e_53f0:
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $28
    db $10
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], a
    ld [$007f], sp
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld b, $fb
    inc b
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07e_53d2

    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    cp e
    ld b, b
    db $db
    jr nz, jr_07e_53f0

    ld b, b
    ei
    nop
    ld a, [$de01]
    ld bc, $00df
    cp a
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld l, e
    db $10
    pop bc
    ccf
    ld h, c
    sbc a
    pop bc
    ccf
    ldh [$1f], a
    ldh [$1f], a
    add sp, $17
    ldh a, [rIF]
    sub b
    ld l, a
    or b
    ld c, a
    ld hl, sp+$07
    ld sp, hl
    ld b, $fe
    ld bc, $08f7
    call nc, $b90b
    ld b, $f6
    add hl, bc
    ld a, a
    nop
    cp $01
    ei
    inc b
    ei
    inc b
    cp $01
    ld a, l
    ld [bc], a
    rst $38
    nop
    rst $30
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    dec sp
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp e
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ld a, $ff
    ld [$b3ff], a
    rst $38
    dec de

Call_07e_54ab:
    rst $38
    call $a3ff
    rst $38
    set 7, a
    ld h, e
    rst $38
    ld [de], a
    rst $38
    ld [$32ff], sp
    rst $38
    ld c, $ff
    ld bc, $0dff
    rst $38
    ld b, $ff
    add [hl]
    ld a, a
    add b
    ld a, a
    jp $c13f


    ccf
    swap a
    or a
    ld c, a
    ld b, e
    cp a
    add c
    ld a, a
    ld e, d
    and a
    ret


    scf
    ld h, h
    sbc e
    db $76
    adc e
    ld [hl], h
    adc e
    cp c
    ld b, [hl]
    call z, $8533
    ld a, e
    ld [hl], h
    adc e
    ld a, h
    add e
    ld a, d
    sub a
    or h
    ld e, e
    call nc, $cd2b
    inc sp
    call nz, $c83b
    scf
    and $19
    sub d
    ld l, l
    call nc, $f42b
    dec bc
    jp c, $db25

    inc h
    ei
    inc b
    ei
    dec b
    ld hl, sp+$07
    ld hl, sp+$07
    and $1b
    add sp, $17
    ld a, [$fc07]
    inc bc
    ld a, l
    adc d
    ld d, b
    xor a
    sub $29
    sub $29
    ld hl, sp+$07
    db $fc
    inc bc
    or d
    ld c, l
    ld a, [c]
    dec c
    ei
    inc c
    ld a, [$f30d]
    inc c
    ld a, [$f805]
    rlca
    db $d3
    inc l
    jp c, $f125

    ld c, $f9
    ld b, $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    ld h, l
    sbc d
    db $fc
    inc bc
    db $ec
    inc de
    ld sp, hl
    ld b, $b4
    ld c, e
    xor d
    ld d, l
    ld a, [c]
    dec c
    call z, $f633
    add hl, bc
    and h
    ld e, e
    rst $38
    ld bc, $53ac
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec e
    rst $38
    rra
    rst $38
    dec de
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    sbc e
    ld a, a
    sbc d
    ld a, a
    cpl
    rst $18
    inc bc
    rst $38
    dec h
    rst $18
    add c
    ld a, a
    add h
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    add d
    ld a, l
    ld [bc], a
    db $fd
    adc b
    ld [hl], a
    sub b
    ld l, a
    add c
    ld a, [hl]
    add b
    ld a, a
    db $dd
    ld [hl+], a
    ld a, c
    add [hl]
    ld l, c
    sub [hl]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    adc $01
    cp a
    nop
    cp [hl]
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    db $ec
    inc bc
    ld a, a
    nop
    cp a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    push hl
    rst $38
    inc sp
    rst $38
    ld h, [hl]
    rst $38
    dec b
    rst $38
    rla
    rst $38
    dec l
    rst $38
    ld [bc], a
    rst $38
    inc de
    rst $28
    dec b
    rst $38
    ld b, e
    rst $38
    ld [hl], b
    rst $28
    sub c
    rst $28
    add b
    ld a, a
    inc bc
    db $fd
    ld b, e
    cp l
    ld b, b
    cp a
    ld de, $29ef
    rst $10
    pop bc
    ccf
    pop bc
    ccf
    ld d, c
    cp a
    and c
    ld e, a
    ldh a, [rIF]
    ld b, h
    cp a
    sub a
    ld l, a
    add [hl]
    ld a, a
    ld d, a
    rst $38
    inc de
    rst $38
    dec c
    rst $38
    add hl, de
    rst $38
    ld d, l
    rst $38
    ld e, e
    rst $38
    add hl, sp
    rst $38
    dec a
    rst $38
    dec de
    rst $38
    scf
    rst $38
    xor e
    rst $38
    cp l
    ld a, a
    ld l, c
    rst $38
    dec hl
    rst $38
    inc sp
    rst $38
    rla
    rst $38
    dec [hl]
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rla
    rst $38
    ccf
    rst $38
    sbc l
    ld a, a
    cp a
    ld a, a
    ld e, e
    rst $38
    daa
    rst $38
    dec sp
    rst $38
    dec a
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    rst $18
    ld a, a
    ld a, a
    rst $38
    rst $18
    rst $38
    cpl
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld e, a
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sub $ff
    scf
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld [bc], a
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
    ret nz

    ccf
    ldh [$1f], a
    ld h, b
    sbc a
    and b
    ld e, a
    ld [hl], h
    adc e
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    rst $28
    db $10
    rst $30
    ld [$ffff], sp
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
    rst $38
    rst $38
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    ld l, a
    sub b
    rst $28
    db $10
    rst $28
    db $10
    cp a
    nop
    cp l
    ld [bc], a
    cp a
    nop
    rra
    nop
    ld a, a
    nop
    ld a, $00
    rst $18
    rst $38
    sbc a
    rst $38
    ld [hl], l
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld sp, $9dff
    rst $38
    rst $20
    rst $38
    ld a, d
    rst $18
    adc l
    ld a, a
    ld a, [de]
    rst $38
    ld c, l
    rst $38
    ld l, d
    rst $38
    xor e
    rst $38
    ld [hl], l
    rst $38
    xor $ff
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    cp a
    rst $38
    xor a
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
    cp $01
    cp $01
    rst $30
    ld [$00ff], sp
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    ld a, h
    inc bc
    ei
    inc b
    cp $01
    rst $38
    nop
    ld hl, sp+$07
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $f4
    dec bc
    ld hl, sp+$07
    db $fc
    inc bc
    db $ec
    inc de
    add sp, $17
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    pop hl
    rra
    or c
    ld c, a
    or e
    ld c, a
    sub e
    ld l, a
    add e
    ld a, a
    sub a
    ld l, a
    add a
    ld a, a
    db $fc
    rst $38
    cp $ff
    ld a, [$faff]
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $f4
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [c], a
    db $fd
    pop af
    cp $d5
    cp $87
    ld hl, sp+$23
    db $fc
    add a
    ld hl, sp-$59
    ld hl, sp+$07
    ld hl, sp+$43
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$2f]
    ldh a, [rIF]
    ldh a, [$bf]
    ret nc

    ccf
    ret nc

    rrca
    ldh a, [$0b]
    ldh a, [rNR22]
    add sp, $3d
    ret nz

    dec e
    ldh [$3c], a
    ret nz

    ccf
    ret nz

    ld a, l
    add b
    ld e, h
    and b
    cp $00
    cp $00
    call c, $fe20
    nop
    cp $ff
    ld a, [$feff]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld hl, sp-$01
    add sp, -$01
    ld hl, sp-$01
    db $e4
    rst $38
    add sp, -$01
    ldh a, [rIE]
    ret c

    rst $38
    add sp, -$01
    db $f4
    rst $38
    ret nz

    rst $38
    add sp, -$01
    ld hl, sp-$01
    add sp, -$01
    add sp, -$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    or h
    rst $38
    and h
    rst $38
    jr nz, @+$01

    ld b, h
    rst $38
    ldh [rIE], a
    call nz, Call_000_00ff
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    db $e4
    rst $38
    or b
    rst $38
    ld e, b
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ld a, d
    add l
    sbc a
    ld h, c
    and l
    ld e, e
    inc de
    rst $28
    add e
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld b, a
    ld hl, sp+$0f
    ldh a, [rTIMA]
    ld a, [$f58a]
    ld [$80f7], sp
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    jr nc, @+$01

    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    cp a
    ld e, a
    rst $28
    rra
    rst $28
    rra
    rst $08
    ccf
    rst $28
    rra
    rst $28
    rra
    cp a
    rrca
    and a
    rra
    xor a
    rra
    rst $30
    rrca
    rst $30
    rrca
    rla
    rrca
    sub a
    rrca
    ld d, a
    rrca
    ld [hl], a
    rrca
    rla
    rrca
    ccf
    rlca
    dec de
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec de
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec de
    rlca
    add hl, bc
    rlca
    dec c
    inc bc
    rrca
    inc bc
    dec c
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec c
    inc bc
    dec c
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld [bc], a
    ld bc, $0102
    ld b, $01
    ld [bc], a
    ld bc, $0106
    ld [bc], a
    ld bc, $0106
    inc bc
    ld bc, $0007
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0106
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0106
    ld b, $01
    ld [bc], a
    ld bc, $0106
    ld b, $01
    ld [bc], a
    ld bc, $0103
    ld bc, $0703
    ld bc, $030d
    rrca
    dec b
    add hl, hl
    rrca
    dec e
    rrca
    ccf
    rra
    scf
    rra
    ld d, $3f
    ld h, h
    ccf
    ldh [$3f], a
    jp z, $883f

    ccf
    ret nz

    ccf
    ret c

    ccf
    db $fc
    ccf
    cp h
    ld a, a
    db $fd
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
    ei
    inc b
    cp $00
    ld e, a
    and b
    ld a, a
    add b
    add hl, hl
    sub $06
    ld sp, hl
    ld [bc], a
    db $fd
    ret nc

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
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $f8
    rst $38
    db $f4
    rst $38
    jp nc, $b0fd

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp Jump_07e_43fc


    db $fc
    and a
    ld hl, sp+$0d
    ld a, [c]
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$17
    add sp, $1f
    ldh [$8f], a
    ldh a, [rNR31]
    db $e4
    dec [hl]
    jp z, $926d

    ld e, $e0
    ld l, $d0
    daa
    ret c

    ccf
    ret nz

    cpl
    ret nc

    ld a, a
    add b
    ld a, [hl]
    add b
    rst $38
    nop
    ld a, l
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    ld l, $d0
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    inc a
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    rst $18
    and b
    cp a
    ret nz

    rla
    add sp, -$7d
    db $fc
    add e
    db $fc
    add c
    cp $a0
    rst $38
    rst $38
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
    ldh a, [rIE]
    ld b, d
    db $fd
    adc a
    ldh a, [$0d]
    ld a, [c]
    dec c
    ld a, [c]
    rra
    ldh [$7f], a
    add b
    dec e
    ld [c], a
    inc bc
    db $fc
    ld e, $e1
    ld [bc], a
    db $fd
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    xor b
    rst $38
    sbc h
    rst $38
    sub b
    rst $38
    call nc, $feff
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld a, [$d2ff]
    rst $38
    ld d, b
    rst $38
    add sp, -$01
    sub e
    db $fc
    ld d, b
    rst $38
    cp $ff
    ei
    rst $38
    ld sp, hl
    rst $38
    rst $38
    nop
    rst $20
    rra
    rla
    rst $28
    daa
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
    cp $ff
    rst $38
    rst $38
    ldh [rIE], a
    add sp, -$01
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add $f9
    ld b, $f9
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    rrca
    ldh a, [$9f]
    ld h, b
    db $fc
    rst $38
    ld sp, hl
    cp $f7
    ld hl, sp-$0b
    ld a, [$f6fb]
    ei
    db $f4
    db $eb
    db $f4
    rst $30
    ld hl, sp-$0d
    db $fc
    rst $20
    ld hl, sp-$09
    ld hl, sp-$79
    ld hl, sp-$19
    ld hl, sp-$5d
    db $fc
    rst $20
    ld hl, sp+$77
    ld hl, sp+$52
    db $fd
    and e
    db $fc
    ld l, a
    ld hl, sp+$23
    db $fc
    sub a

jr_07e_5a59:
    ld hl, sp-$0b
    ld a, [$cc73]
    adc l
    ld a, [c]
    sbc a
    ldh [$cf], a
    ldh a, [$5b]
    db $e4
    rst $10
    add sp, $0b
    db $f4
    set 6, h
    pop hl
    cp $f8
    rst $38
    rst $38
    nop
    ld [hl], a
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
    ld a, a
    add b
    jr z, jr_07e_5a59

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    nop
    rst $38
    ld e, $e1
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, @-$3f

    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    scf
    ret z

    inc sp
    call z, $d827
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    or b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld l, e
    rst $38
    ld [bc], a
    cp $02
    cp $40
    db $fc
    call nc, $f4fc
    db $fd
    db $fd
    nop
    db $fd
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $e4
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    push af
    rst $18
    ld hl, sp-$21
    ld hl, sp-$21
    rst $38
    rst $18
    ldh a, [$c0]
    ld a, a
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld d, b
    rst $18
    ld d, b
    rst $18
    ld e, a
    ret nz

    ld e, a
    rst $18
    ld d, b
    rst $18
    ld d, b
    rst $18
    ld d, b
    rst $18
    ld d, b
    rst $18
    ld d, b
    rst $18
    ld [hl], b
    rst $18
    ld e, a
    ret nz

    ld a, a
    rst $18
    ld d, b
    rst $18
    ld [hl], b
    rst $18
    ld d, b
    rst $18
    ld d, b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld a, a
    ret nz

    ld a, a
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld a, a
    ret nz

    ld a, a
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    nop
    rst $38
    dec b
    ld a, [$40bf]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld [$f115], a
    ld c, $f0
    rrca
    ldh [$1f], a
    ldh a, [rIF]
    ld b, b
    cp a
    ret nz

    ccf
    pop bc
    ccf
    add l
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    add b
    rst $38
    add c
    sbc a
    add c
    cp a
    and c
    cp a
    cpl
    ccf
    dec l
    nop
    ld h, h
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
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ret c

    ccf
    jr nz, @+$01

    jr nc, @+$01

    inc [hl]
    db $eb
    db $fd
    rst $28
    ld sp, hl

jr_07e_5bf3:
    rst $28
    ld hl, sp+$0f
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    cp b

jr_07e_5bff:
    rst $28
    ld a, b

jr_07e_5c01:
    rst $28
    jr c, jr_07e_5bf3

    ld hl, sp+$0f
    ld hl, sp-$11
    jr c, @-$0f

    jr c, @-$0f

    jr c, @-$0f

    jr c, jr_07e_5bff

    jr c, jr_07e_5c01

    jr c, @-$0f

    add sp, $0f
    add sp, -$11
    jr c, @-$0f

    jr z, @-$0f

    jr z, @-$0f

    jr z, @-$0f

    jr z, @-$0f

    jr z, @-$0f

    add sp, $0f
    add sp, -$11
    jr z, @-$0f

    jr z, @-$0f

    jr z, @-$0f

    jr z, @-$0f

    jr z, @-$0f

    jr z, @-$0f

    add sp, $0f
    add sp, -$11
    jr c, @-$0f

    jr z, @-$0f

    jr c, @-$0f

jr_07e_5c3e:
    jr z, @-$0f

    jr z, @-$0f

    jr c, @-$0f

    ld hl, sp+$0f
    ld hl, sp-$11
    jr c, @-$0f

    jr c, @-$0f

    jr c, @-$0f

    jr c, @-$0f

    jr c, @-$0f

    ld hl, sp+$0f
    ld hl, sp-$11
    jr c, @-$0f

    jr c, @-$0f

    jr c, @-$0f

    jr c, @-$0f

    jr c, @-$0f

    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and l
    rst $38
    nop
    rst $38
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    add a
    rst $38
    inc sp
    rst $38
    call $9fff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07e_5c3e

    ld c, b
    sbc a
    ld h, b
    rra
    ldh [rTIMA], a
    ld a, [$fd02]
    inc bc
    db $fc
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    sub h
    rst $38
    add h
    rst $38
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    add b
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
    cp a
    rst $38
    sub e
    rst $38
    ld a, [bc]
    rst $38
    call z, $c43f
    ccf
    inc b
    rst $38
    dec a
    rst $38
    set 7, a
    rra
    nop
    ccf
    ret nz

    rst $18
    ldh [$80], a
    rst $38
    add d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld d, a
    rst $38
    add a
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    jp $e33f


    rra
    pop de
    cpl
    pop de
    cpl
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld a, b
    rlca
    ld a, h
    inc bc
    ld e, [hl]
    ld bc, $011e
    ld e, $01
    rra
    rst $38
    rst $08
    ccf
    rst $08
    ccf
    db $eb
    rra
    rst $30
    rrca
    or l
    ld c, a
    db $fd
    rlca
    di
    rrca
    ld a, [c]
    rrca
    cp e
    rlca
    ldh a, [rIF]
    ld a, [c]
    rrca
    or b
    rrca
    cp $07
    cp $03
    ld a, b
    rlca
    call c, Call_000_1c03
    inc bc
    sbc l
    inc bc
    inc c
    inc bc
    sbc [hl]
    ld bc, HeaderManufacturerCode
    sub $01
    cp $01
    ld a, d
    dec b
    ld a, d
    dec b
    ld sp, hl
    rlca
    db $ed
    inc de
    ld d, e
    xor a
    and a
    ld e, a
    adc a
    ld a, a
    ccf
    rst $38
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld bc, $01fe
    db $fd
    ld [bc], a
    or $09
    ret nz

    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $20ff
    rst $18
    ldh [$1f], a
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
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ldh [$1f], a
    ld l, b
    sub a
    ld h, h
    sbc e
    ld d, b
    xor a
    xor b
    ld d, a
    cp b
    ld b, a
    ld hl, sp+$07
    ld [hl+], a
    rst $18
    nop
    rst $38
    ld b, [hl]
    cp a
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    and a
    db $10
    rst $28
    jr nz, @-$1f

    ld [bc], a
    db $fd
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add h
    ld a, e
    cp $01
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $18
    nop
    cp a
    nop
    ei
    inc b
    ld a, [$2d05]
    db $d3
    rst $20
    rra
    adc a
    ld a, a
    rra
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, a
    cp $0c
    rst $38
    rrca
    cp $05
    cp $8d
    ld a, [hl]
    push bc
    ld a, $a5
    ld e, [hl]
    db $e4
    rra
    ld h, l
    sbc [hl]
    push hl
    ld e, $e7
    inc e
    db $e3
    inc e
    jp $e13c


    ld e, $f3
    inc c
    ld a, [c]
    inc c
    ld a, [c]
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    ld a, [c]
    inc c
    ei
    inc b
    pop af
    ld c, $f3
    inc c
    ld [hl], e
    inc c
    ld [hl], e
    inc c
    ei
    inc c
    ei
    inc c
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    pop hl
    ld e, $e1
    ld e, $e1
    ld e, $c9
    ld a, $cd
    ld a, $0d
    cp $0d
    cp $0d
    cp $0d
    cp $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    add e
    ld a, a
    add d
    ld a, a
    ret nz

    ccf
    ld hl, sp+$07
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    call c, $fa23
    dec b
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    add d
    ld a, a
    nop
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    sub a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    inc de
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc sp
    rst $38
    jr nz, @+$01

    jr @+$01

    inc e
    rst $38
    jr @+$01

    inc d
    ei
    rra
    rst $38
    ld e, a
    cp a
    rst $38
    ld e, $9f
    ld a, h
    cp d
    ld a, l
    ld a, h
    ld a, [$fce8]
    db $e4
    db $fd
    ei
    rst $30
    db $eb
    rst $30
    adc $ff
    call c, $f8ff
    rst $38
    ld hl, sp-$01
    ld a, [$fbfd]
    db $fc
    rst $20
    ld hl, sp-$21
    ldh [$df], a
    ldh [$8f], a
    ldh a, [$9f]
    ldh [$bf], a
    ret nz

    cp e
    ret nz

    cp l
    ret nz

    db $fd
    add b
    dec a
    ret nz

    ld a, d
    add b
    ld a, $c0
    db $76
    add b
    ld [hl], l
    add b
    ld a, [hl]
    add b
    add sp, $00
    add sp, $00
    ld h, b
    add b
    ret nc

    nop
    ld d, c
    add b
    ld b, b
    add b
    ldh [rP1], a
    ld h, b
    add b
    ret nz

    nop
    ldh [rIE], a
    db $e3
    db $fc
    and a
    ld hl, sp-$71
    ldh a, [$cf]
    ldh a, [$8f]
    ldh a, [$af]
    ret nc

    ccf
    ldh [$cf], a
    ldh a, [$c7]
    ld hl, sp+$6f
    ret nc

    cp [hl]
    pop bc
    sbc a
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    cp a
    ret nz

    ld a, l
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    scf
    ret nz

    rra
    ldh [$bf], a
    ret nz

    ld e, a
    ldh [$1f], a
    ldh [$5f], a
    ldh [$df], a
    ldh [$df], a
    ldh [$de], a
    pop hl
    adc c
    or $e0
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    or b
    ld a, l
    or b
    cp l
    ld hl, sp-$02
    db $fc
    rst $28
    cp $e7
    cp $73
    cp $19
    cp $05
    cp $03
    cp $06
    rst $38
    ld de, $3bff
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    ld a, e
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
    rst $38
    rst $38
    rst $30
    rst $38
    cp $ff
    ccf
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
    rst $30
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    ldh a, [$81]
    db $e3
    inc bc
    rst $00
    rlca
    add a
    rrca
    rra
    rra
    ccf
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    add c
    rst $38
    ld b, e
    cp a
    ld b, c
    cp a
    pop hl
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ldh [$1f], a
    ldh a, [rIF]
    ld h, b
    sbc a
    ldh a, [rIF]
    db $f4
    dec bc
    rst $38
    ld bc, $01ff
    ldh a, [rIF]
    rst $38
    ld bc, $01ff
    ld a, [hl]
    ld bc, $03bc
    db $dd
    ld [bc], a
    ccf
    nop
    ld e, a
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld l, a
    cp a
    rla
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc l
    ld a, a
    sub $3f
    adc d
    ld a, a
    srl a
    srl a
    ld b, h
    cp a
    push hl
    rra
    ld [c], a
    rra
    xor $17
    and d
    ld e, a
    push hl
    rra
    rst $38
    rrca
    pop af
    rrca
    ld [c], a
    rra
    call nz, $e73f
    rra
    adc d
    ld [hl], a
    jp nc, $a72f

    ld e, a
    rst $10
    ccf
    and d
    ld e, a
    sub c
    ld l, a
    db $f4
    rrca
    pop af
    rrca
    add sp, $17
    pop hl
    ld e, $e0
    rra
    or $0b
    cp $03
    db $ec
    inc de
    add sp, $17
    db $fc
    inc bc
    rst $38
    nop
    db $fd
    ld [bc], a
    db $f4
    dec bc
    ret nc

    cpl
    ld b, b
    cp a
    add b
    ld a, a
    sbc b
    ld a, a
    add hl, bc
    rst $38
    rla
    rst $38
    sbc b
    rst $38
    adc c
    rst $38
    ld h, e
    rst $38
    dec b
    rst $38
    ld l, a
    rst $38
    cp e
    nop
    ccf
    nop
    cp e
    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $30
    ld [$80ff], sp
    rst $38
    ret nz

    cp $e1
    db $fd
    ld a, [c]
    rst $30
    ld hl, sp-$05
    db $fc
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
    sbc a
    rst $38
    rst $28
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    rra
    rst $38
    dec hl
    rst $38
    dec h
    rst $38
    inc hl
    rst $38
    ld h, d
    rst $38
    rst $20
    ld a, a
    inc b
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    pop hl
    ld e, $d8
    daa
    ldh a, [rIF]
    ret c

    daa
    cp $01
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ld b, b
    sbc a
    nop
    sbc a
    nop
    ccf
    rst $38
    cp e
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $10
    rst $38
    or a
    rst $38
    ld c, [hl]
    rst $38
    ld a, [hl-]
    rst $38
    sub $ff
    db $dd
    rst $38
    ld h, a
    rst $38
    ld d, a
    rst $38
    scf
    rst $38
    ld e, d
    cp a
    pop bc
    ccf
    jp z, $a23f

    ld e, a
    add d
    ld a, a
    xor $1f
    ld sp, $3adf
    rst $18
    add hl, sp
    rst $18
    ld c, b
    rst $38
    adc e
    rst $38
    dec [hl]
    rst $38
    push de
    nop
    ld l, a
    nop
    adc $00
    ei
    inc b
    rst $28
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
    nop
    ld c, a
    or b
    rst $28
    db $10
    rst $38
    nop
    db $f4
    dec bc
    ld [hl], $c9
    inc e
    db $e3
    inc d
    db $eb
    dec b
    ld a, [$ff00]
    ld [bc], a
    db $fd
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_615a:
    ccf
    rst $38
    ld e, a
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
    push af
    rst $38
    or $ff
    call z, $c4ff
    rst $38

jr_07e_6172:
    add b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    ld bc, $01fe
    cp $81
    ld a, [hl]
    add d
    db $fd
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, a
    cp b
    ld h, l
    sbc d
    rst $18
    jr nz, jr_07e_615a

    jr nc, jr_07e_6172

    ld a, [de]
    rst $28
    db $10
    rst $38
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
    rst $38
    rst $38
    rst $30
    ld [$00ff], sp
    rst $18
    nop
    db $ec
    inc de
    rst $28
    db $10
    rst $38
    nop
    cp l
    ld [bc], a
    db $dd
    ld [bc], a
    cp l
    ld [bc], a
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
    ld [hl], d
    nop
    xor a
    nop
    sub e
    rst $38
    ld e, l
    rst $38
    sbc h
    rst $38
    ret nc

    rst $38
    ld d, b
    rst $38
    ret c

    rst $38
    db $ec
    di
    jr nz, @+$01

    xor c
    rst $38
    add c
    rst $38
    add b
    rst $38
    db $76
    rst $28
    ld b, d
    rst $38
    ld h, b
    rst $38
    or b
    rst $38
    and e
    rst $38
    or $ff
    ld h, a
    rst $38
    push af
    rst $38
    ld [hl], l
    rst $38
    ei
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
    ei
    inc b
    xor a
    ld d, b
    ld l, a
    sub b
    ld a, a
    add b
    ld l, a
    sub b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07e_628e

    add b
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    scf
    ret z

    inc de
    db $ec
    inc bc
    db $fc
    dec bc
    db $f4
    dec c
    ld a, [c]
    rlca
    ld hl, sp+$07
    ld hl, sp-$5d
    call c, $f689
    ret nc

    rst $28
    pop hl
    cp $f1
    cp $f9
    cp $fc
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
    ldh a, [rIE]
    ei
    rst $38
    pop af
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh a, [rIE]
    pop hl
    cp $b1
    cp $b1
    cp $b0
    rst $38
    add b
    rst $38
    and [hl]
    rst $38
    scf
    cp $5d
    or $53
    cp $63
    cp $45
    ld a, [$d827]
    rrca
    ldh a, [rNR22]
    ld hl, sp+$07
    ld hl, sp+$3b
    call nz, $8679
    dec a
    jp nz, $c738

    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop

jr_07e_628e:
    db $fd
    nop
    rst $38
    nop
    rst $30
    ld [$20dc], sp
    ei
    nop
    ei
    nop
    rst $38
    nop
    ei
    inc b
    cp e
    inc b
    ei
    inc b
    ld sp, hl
    nop
    ld [$ad00], a
    nop
    db $eb
    inc b
    rst $38
    nop
    ei
    inc b
    xor $10
    jp nc, $d4ff

    rst $38
    ld a, [hl+]
    rst $38
    adc e
    rst $38
    jp z, $62ff

    rst $38
    ld c, c
    rst $38
    ld b, d
    rst $38
    ld b, c
    rst $38
    scf
    rst $38
    jr nz, @+$01

    ld [bc], a
    db $fd
    ret nz

    ld a, a
    add h
    ei
    sbc b
    rst $20
    db $10
    rst $38
    sub b
    rst $38
    push de
    ld a, [hl-]
    ld h, c
    cp [hl]
    jr nz, @+$01

    sub b
    rst $28
    jr nz, @+$01

    sbc [hl]
    rst $38
    db $10
    rst $38
    ld l, b
    rst $38
    ld e, d
    rst $38
    rst $38
    rst $38
    ld e, d
    rst $38
    ld l, h
    rst $38
    sbc a
    rst $38
    ld d, e
    rst $38
    sbc h
    rst $38
    ld c, l
    rst $38
    ld l, e
    rst $38
    sub l
    rst $38
    and a
    rst $38
    adc d
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    ld a, [$fbff]
    rst $38
    sbc $ff
    db $dd
    rst $38
    rst $18
    rst $38
    cp $ff
    call $deff
    rst $38
    rst $10
    rst $38
    reti


    nop
    ld a, [$fc00]
    nop
    rst $38
    nop
    push af
    nop
    rst $38
    nop
    sbc $20
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07e_6327:
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    cp a

jr_07e_6331:
    ld b, b
    ld a, a
    add b
    ei
    inc b
    rst $28
    db $10
    ld l, a
    sub b
    xor l
    jp nc, $c0ff

    rst $28
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_07e_6327

    jr jr_07e_6331

    add hl, de
    and $31
    adc $73
    call z, $d46b
    ld b, c
    cp $57
    add sp, $5f
    ldh [rHDMA5], a
    ld [$e05f], a
    ld e, a
    ldh [$73], a
    call z, $c07f
    ld e, a
    ldh [$7f], a
    add b
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
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, a
    rst $38
    ld hl, sp-$01
    ld a, c
    rst $38
    or a
    rst $38
    ld [hl], a
    rst $38
    sbc [hl]
    rst $38
    or l
    rst $38
    ld h, c
    rst $38
    or $ff
    ld l, e
    rst $38
    xor b
    rst $38
    push de
    rst $38
    xor c
    rst $38
    and $ff
    sub d
    rst $38
    inc h
    rst $38
    ld d, a
    cp $cf
    rst $38
    and a
    rst $38
    ld [$76ff], a
    rst $38
    sub h
    rst $38
    jr z, @+$01

    ld b, d
    cp a
    ld d, d
    cp a
    rlca
    db $fc
    jp nc, Jump_000_25bd

    jp c, $fa05

    cp [hl]
    pop bc
    ld e, a
    ldh [$0c], a
    di
    inc l
    db $d3
    dec l
    jp nc, $837c

    ld sp, hl
    ld b, $f5
    ld a, [bc]
    sbc h
    ld h, e
    sbc a
    ld h, b
    cp l
    ld b, d
    sbc d
    ld h, l
    dec d
    ld a, [$f609]
    rrca
    ldh a, [rTIMA]
    ld a, [$609f]
    ld e, $e1
    add hl, sp
    and $09
    or $08
    rst $30
    or c
    xor $71
    xor $88
    rst $30
    jp nc, $14ef

    rst $28
    adc c
    rst $30
    jp nz, $84fd

    ei
    add hl, sp
    and $01
    cp $63
    db $fc
    call nc, $cafb
    db $fd
    db $d3
    db $fd
    inc de
    db $fd
    jp c, $b8fd

    rst $38
    ret z

    rst $38
    adc $fd
    sub d
    db $fd
    cp b
    rst $38
    ret c

    rst $38
    push de
    rst $38
    cp b
    rst $38
    ret nc

    rst $38
    xor $fd
    ld [$48ff], a
    rst $38
    jp c, $b5ff

    rst $38
    cp [hl]
    nop
    db $fd
    nop
    db $dd
    nop
    rst $38
    nop
    db $fd
    nop
    jp nc, $f500

    nop
    ld d, e
    add b
    rla
    add sp, $37
    ret z

    ld e, a
    and b
    ld l, a
    sub b
    cp a
    ld b, b
    adc a
    ld [hl], b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add b
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    cp $ff
    cp $ff
    db $fd
    rst $38
    cp [hl]
    rst $38
    call c, $edff
    rst $38
    push af
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    ld a, [c]
    rst $38
    add sp, -$01
    sub h
    rst $38
    xor h
    rst $38
    call z, $f0ff
    rst $38
    db $ec
    rst $38
    or b
    rst $38
    ld sp, $88ff
    rst $38
    ld a, l
    ei
    and c
    rst $38
    adc d
    rst $38
    or h
    rst $38
    ld b, c
    rst $38
    add sp, -$01
    pop de
    rst $38
    set 7, a
    ld b, b
    rst $38
    ld h, h
    rst $38
    ret nc

    rst $38
    sub [hl]
    rst $38
    dec sp
    db $fc
    db $eb
    db $fc
    dec sp
    db $fc
    db $d3
    db $fc
    ld [de], a
    db $fd
    ld b, d
    db $fd
    ld b, c
    cp $82
    db $fd
    ld de, $00ee
    rst $38
    ld [bc], a
    db $fd
    add hl, bc
    or $52
    xor l
    inc hl
    call c, $cc33
    ld l, e
    sub h
    rst $28
    db $10
    ld h, e
    sbc h
    ei
    inc c
    rst $28
    db $10
    di
    inc c
    ld [hl], e
    adc h
    ei
    inc b
    dec hl
    call nc, $f0cf
    ld [hl], e
    call c, $e619
    nop
    rst $38
    ld b, l
    cp d
    ld b, e
    cp h
    srl h
    ld h, h
    sbc e
    xor [hl]
    ld d, c
    ld a, a
    add b
    di
    inc c
    rst $30
    ld [$05fa], sp
    rst $38
    nop
    cp [hl]
    ld b, c
    rst $38
    nop
    or l
    ld c, d
    cp e
    ld b, h
    db $fc
    inc bc
    cp l
    ld b, d
    sbc $21
    sbc l
    ld h, d
    cp $01
    ccf
    ret nz

    xor a
    ld d, b
    rst $18
    and b
    scf
    ret z

    ccf
    ret nz

    dec e
    ld [c], a
    sbc a
    ldh [$2f], a
    ret nc

    rst $38
    nop
    ccf
    ret nz

    ld e, a
    and b
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld e, $e1
    sbc $21
    ld e, [hl]
    and c
    ld [hl], $c9
    ld e, $e1
    cp b
    rst $00
    ld e, [hl]
    and c
    xor h
    ld d, e
    call Call_07e_4533
    cp e
    adc l
    ld [hl], e
    dec b
    ei
    jr nz, jr_07e_6533

    add b

jr_07e_6533:
    ld bc, $0180
    add d
    ld bc, $01c2
    add e
    ld bc, $01f2
    inc bc
    ld bc, $ffed
    sbc $ff
    rst $28
    rst $38
    set 7, a
    or [hl]
    rst $38
    sbc e
    rst $38
    xor a
    rst $38
    db $db
    rst $38
    ld a, l
    rst $38
    and $ff
    di
    rst $38
    xor a
    rst $38
    sbc c
    rst $38
    add hl, hl
    rst $38
    add h
    rst $38
    ld l, b
    rst $18
    reti


    rst $38
    xor c
    rst $38
    xor l
    rst $38
    jp nc, $a1fd

    rst $38
    ld a, [bc]
    rst $38
    sbc b
    rst $30
    ldh [rIE], a
    add hl, de
    rst $38
    ld l, b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    and $fd
    inc hl
    db $fd
    add b
    rst $38
    or c
    rst $18
    adc e
    db $fd
    ld b, $f9
    jp Jump_07e_6dfd


    di
    ld b, a
    ld sp, hl
    dec b
    ei
    and c
    rst $38
    ld b, c
    rst $38
    rlca
    ei
    dec d
    db $eb
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    adc a
    di
    call $ab33
    ld [hl], a
    dec de
    rst $20
    inc de
    rst $28
    dec sp
    rst $00
    dec de
    rst $20
    or a
    ld c, a
    rst $30
    rrca
    or e
    ld c, a
    db $d3
    cpl
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30

jr_07e_65bf:
    rrca
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $20
    rra
    ld l, a
    sbc a
    rst $28
    rra
    xor a
    ld e, a
    adc a
    ld a, a
    ld c, a
    cp a
    rst $08
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $08
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
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
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, e
    inc b
    ld a, a
    nop
    ld [hl], e
    inc c
    rra
    ld h, b
    ld a, a
    nop
    ld a, [hl]
    ld bc, $443b
    ld e, e
    inc h
    reti


    ld h, $e4
    dec de
    call z, $d433
    dec hl
    rst $20
    jr jr_07e_65bf

    ld e, a
    add hl, sp
    rst $00
    add c
    ld a, a
    ld hl, $2adf
    rst $10
    ld [bc], a
    rst $38
    dec b
    cp $34
    rst $08
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld bc, $49ff
    rst $38
    ret nc

    rst $38
    ret


    rst $38
    ld a, [de]
    rst $38
    ld c, $ff
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
    jr jr_07e_6673

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07e_6683

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07e_6693

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07e_66a3

    ld [hl-], a

jr_07e_6673:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07e_66b3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_07e_6683:
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

jr_07e_6693:
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

jr_07e_66a3:
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
    ld c, a
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_07e_66b3:
    ld [hl], d
    ld [hl], e
    ld c, a
    ld c, a
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
    ld c, a
    ld a, [hl]
    ld a, a
    add b
    ld c, a
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
    ld c, a
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
    ld c, a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    add c
    xor b
    xor c
    xor d
    xor e
    xor h
    ld c, a
    ld c, a
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
    ld c, a
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


    jp z, $cb4f

    call z, $cecd
    rst $08
    ret nc

    pop de
    call nz, $d3d2
    call nc, $d6d5
    rst $10
    ret c

    ld c, a
    ld c, a
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
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_07e_6782

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07e_6792

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07e_67a2

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07e_6781

jr_07e_6781:
    nop

jr_07e_6782:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_07e_6792:
    nop
    nop
    nop
    nop
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

jr_07e_67a2:
    nop
    nop
    nop
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
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0201
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0909], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080a], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    and d
    db $fd
    ret nc

    rst $38
    add sp, -$01
    cp b
    rst $38
    call c, $83f7
    db $fc
    xor d
    db $fd
    or b
    rst $38
    rst $00
    ld hl, sp+$4a
    db $fd
    ld l, e
    db $fd
    ld a, [de]
    db $fd
    rst $18
    inc a
    ld h, e
    cp h
    ret z

    ccf
    ld b, b
    cp a
    add l
    ld a, a
    or b
    ld c, a
    jr nc, @-$2f

    ldh a, [$8f]
    ei
    add a
    ld h, e
    sbc a
    ld hl, sp-$79
    ei
    add h
    add sp, -$69
    ld e, b
    and a
    ld b, [hl]
    cp c
    inc l
    di
    ld a, e
    add h
    rst $20
    jr jr_07e_6939

    jp $85fa


    ld c, e
    or h
    ld c, e
    or h
    pop bc
    cp $0e
    pop af
    sbc h
    ld h, e
    and c
    ld e, [hl]
    xor e
    ld d, h
    sub [hl]
    ld l, c
    ld b, a
    cp b
    adc a
    ldh a, [$9f]
    ldh [$7d], a
    add d
    ld a, $c0
    rst $18
    nop
    ei
    nop
    or $00
    ld e, [hl]
    and b
    ld [hl], a
    add b
    db $fc
    nop
    db $eb
    db $10
    cp $00
    ld [hl], a
    add b
    ld d, $e1
    dec bc
    db $f4
    ld [hl], d
    dec c
    db $db
    ld [$08ea], sp
    xor $00
    db $e4

jr_07e_6939:
    db $10
    db $dd
    jr nz, jr_07e_6979

    nop
    reti


    nop
    dec sp
    nop
    adc c
    nop
    cp e
    nop
    jp c, $ff00

    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    db $f4
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    ei
    inc b
    ccf
    call nz, $807f
    or $00
    cp $00
    ld a, e
    nop
    ld a, a
    nop
    cp a
    nop
    di
    inc c
    xor $00
    ld a, a
    nop
    db $d3
    inc l
    rst $18
    inc a
    rst $28
    jr jr_07e_69b6

    ret nz

    ld a, e

jr_07e_6979:
    db $e4
    ld [hl], e
    db $ec
    cp a
    ld h, b
    ld b, a
    cp b
    rst $38
    nop
    ld [hl], $c0
    db $ed
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    di
    inc c
    db $ed
    ld [de], a
    ld a, a
    ld [bc], a
    cp a
    ld b, b
    cp $01
    ld l, a
    sub b
    ld d, a
    xor b
    ld [hl], l
    adc d
    or [hl]
    ld c, c
    ei
    inc b
    ld a, b
    add a
    ld b, e
    cp h
    ld [de], a
    db $ed
    sub b
    ld l, a
    ld [hl], d
    adc l
    and $19
    and $19
    inc e
    db $e3
    sub b
    ld l, a
    db $f4
    rrca
    di
    rrca
    pop af
    rrca

jr_07e_69b6:
    rst $38
    inc bc
    db $dd
    inc hl
    reti


    daa
    dec l
    db $d3
    ld h, b
    rst $18
    ld b, c
    cp $11
    cp $24
    db $db
    dec hl
    call c, Call_07e_54ab
    ld [hl], e
    adc h
    rst $38
    nop
    xor a
    ld d, b
    xor a
    ld d, b
    xor e
    ld d, h
    cp e
    ld b, h
    ld a, a
    add b
    cp a
    ld b, b
    sbc [hl]
    ld h, b
    xor [hl]
    ld d, b
    rst $38
    ld b, d
    cp a
    ld b, b
    or a
    ld c, b
    sbc [hl]
    ld h, c
    sbc a
    ld h, c
    rst $10
    add sp, -$35
    db $f4
    inc sp
    db $fd
    inc de
    db $fc
    ld l, e
    sub h
    cp l
    jp nz, $a05f

    sbc e
    db $e4
    db $fc
    jp Jump_07e_48b7


    cp l
    ld b, d
    cp l
    ld b, d

jr_07e_6a00:
    ld a, a
    add b

jr_07e_6a02:
    rst $18
    nop
    rst $38
    nop
    sbc $21
    rst $18
    jr nz, jr_07e_6a02

    ld [$08f7], sp
    rst $28
    db $10
    db $fc
    inc bc
    inc a
    jp $805f


    rst $18

jr_07e_6a17:
    jr nz, jr_07e_6a17

    nop
    or h
    ld a, [bc]
    or [hl]
    ld [$00cf], sp
    ld h, a
    nop
    push bc
    ld [bc], a
    call nz, $9503
    nop
    and $00
    inc h
    nop
    db $fc
    nop
    ld e, [hl]
    and b
    ld a, [hl-]
    call nz, Call_07e_40bc
    db $e4
    jr @-$41

    nop
    ld a, [hl+]
    nop
    xor c
    inc b
    ld e, [hl]
    inc b
    dec a
    ld [bc], a
    db $f4
    inc bc
    rst $38
    nop
    sbc a

jr_07e_6a45:
    jr nz, jr_07e_6a45

    jr nz, jr_07e_6a88

    nop
    add a
    jr jr_07e_6a00

    inc c
    or a
    ld [$0679], sp
    or [hl]
    ld c, e
    db $dd
    ld [bc], a
    sbc $01
    rst $28
    db $10
    ld a, a
    add b
    push hl
    ld [bc], a
    rst $30
    nop
    ld sp, hl
    nop
    rst $30
    db $10
    ei
    db $10
    push af
    nop
    cp a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    adc $31
    or a
    ld c, b
    jp nz, $e63d

    add hl, de
    ld e, b
    daa
    ld h, b
    rra
    ld h, h
    sbc e
    or d
    call Call_000_2ed5
    ld hl, sp+$07
    xor d
    ld d, l
    rst $18
    ld h, b

jr_07e_6a88:
    sub $29
    ld a, [$aa07]
    rla
    rst $30
    rrca
    ld hl, sp+$0f
    ld sp, hl
    rlca
    db $fd
    inc bc
    xor e
    ld d, l
    ei
    ld b, l
    ld a, [$dd45]
    inc hl
    ld a, [$3007]
    rst $08
    ld c, e
    rst $30
    ld [c], a
    ld a, a
    add a
    ld a, a
    or a
    rst $38
    ld e, a
    rst $38
    dec sp
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    rst $18
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $28
    nop
    cp a
    nop
    ld d, a
    nop
    cp $01
    db $e4
    ei
    ld d, c
    xor [hl]
    add sp, $17
    add sp, $17
    xor l
    ld [de], a
    cp $03
    ld e, h
    add e
    rst $28
    nop
    ld a, [c]
    ld bc, $008f
    ld e, e
    inc h
    ld l, e
    ld d, $da
    inc b
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, $ff86
    nop
    ld [$f411], a
    dec bc
    cp a
    ld b, b
    rst $38
    nop
    ld [hl], a
    ld [$708f], sp
    xor a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $ef
    db $10

jr_07e_6afc:
    add c
    ld a, [hl]
    db $ec
    ld e, a
    cp $47
    ld a, d
    add a
    or l
    ld c, e
    rst $18
    db $e3
    cp l
    jp $c37d


    sbc $61
    ld a, h
    jp $81fe


    or $81
    di
    nop
    rrca
    db $10
    ld c, d
    nop
    adc a
    nop
    ld e, $00
    sub [hl]
    nop
    ld [hl], e
    nop
    ld h, h
    nop
    jp z, $8200

    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc h
    nop
    ld hl, $6000
    nop
    ld [hl], e
    nop
    or a
    nop
    ld h, a
    nop
    rst $38
    nop
    xor h
    ld b, c
    rst $10
    jr nz, jr_07e_6afc

    ld b, $e9
    ld d, $fd
    ld [bc], a
    rst $30
    ld [$05fa], sp
    rst $38
    nop
    ld a, [$9705]
    ld h, b
    db $eb
    db $10
    ld a, l
    add b
    push de
    xor b
    ld [hl], $c9
    ld sp, hl
    add $d8
    rst $20
    jp hl


    ld d, [hl]
    db $fd
    inc bc
    and c
    ld e, a
    or $0b
    db $fd
    ld [bc], a
    rst $38
    nop
    push af
    ld a, [bc]
    or [hl]
    ld c, c
    ld c, e
    or h
    or b
    ld c, a
    jr z, @-$27

    adc $39
    ld c, $f9
    ld b, h
    cp e
    inc c
    ei
    add b
    rst $38
    call nc, $5cfb
    rst $38
    ld [hl+], a
    rst $38
    jr nz, @+$01

    add l
    rst $38
    ld b, e
    rst $38

jr_07e_6b8a:
    db $fd
    ld a, a
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    rst $38

jr_07e_6b92:
    cpl
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    xor l
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    nop
    rst $38
    nop
    cp $01
    cp [hl]
    ld bc, $037c
    ld sp, hl
    ld b, $f8
    rlca
    db $f4
    rrca
    ldh a, [rIF]
    ldh [$1f], a
    ret nc

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add [hl]
    ld a, c
    ld b, h
    cp e
    nop
    rst $38
    ld [hl+], a
    rst $18
    cp h
    ld c, a
    call z, Call_07e_7177
    adc [hl]
    rst $18
    jr nz, jr_07e_6b8a

    ret nz

    ld [hl], l
    adc d
    ccf
    ret nz

    cp l
    ld b, d
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    sbc h
    inc bc
    rst $18
    nop
    rst $28
    nop
    dec sp
    ret nz

    ld c, c
    add b
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    jr jr_07e_6c6e

    sbc b
    rst $30
    ld [$00ff], sp
    rst $18
    jr nz, jr_07e_6b92

    ld h, h
    sbc e
    ld h, [hl]
    db $db
    daa
    ei
    ld b, $e3
    inc e
    ld a, e
    add h
    rst $38
    nop
    cp e
    ld b, b
    ld a, l
    add b
    ld a, [hl]
    add b
    ld [hl], h
    add b
    xor $00
    dec [hl]
    ret nz

    ld h, $c0
    ld [hl], a
    add b
    rst $38
    nop
    db $db
    nop
    ld [hl], l
    nop
    ld c, c
    nop
    sub d
    nop
    jp nc, $8300

    nop
    and d
    nop
    ld bc, $0900
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    stop
    ld [bc], a
    nop
    ld bc, $4000
    nop
    pop bc
    nop
    add c
    nop
    ldh [rP1], a
    or [hl]

jr_07e_6c3f:
    nop
    ldh a, [rP1]
    ld a, [hl]
    nop
    ld a, e
    nop
    push af
    ld a, [bc]
    ei
    inc b
    ld h, a
    sbc b
    db $76
    adc c
    ld a, e
    add h
    cp $01
    or $09
    ld [hl], h
    adc e
    jr jr_07e_6c3f

    ld e, h
    and e
    ld d, a
    xor b
    rst $28
    ld de, $05fa
    ld e, e
    and l
    add hl, sp
    rst $00
    or b
    ld c, a
    sub $29
    ld l, e
    sub l
    adc e
    ld [hl], l
    sbc b
    ld h, a

jr_07e_6c6e:
    rst $10
    ld l, a
    ld b, e
    cp a
    inc de
    rst $28
    inc bc
    rst $38
    daa
    ei
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cpl
    nop
    ld a, a
    nop
    cp [hl]
    ld bc, $00ff
    rst $18
    nop
    rst $38
    nop
    ld a, [hl]
    ld bc, $05fa
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ret nc

    cpl
    ldh [$1f], a
    ret nz

    ccf
    ldh [$3f], a
    add b
    ld a, a
    ld [bc], a
    db $fd
    ld bc, $25fe
    jp c, $d42b

    ld a, [de]
    push hl
    rlca
    ld hl, sp+$17
    add sp, $57
    xor b
    cpl
    ret nc

    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld c, a
    or a
    ld a, [hl+]
    rst $10
    inc b
    ei
    db $fc
    jp $fb86


    scf
    bit 2, l
    xor e
    ld l, h
    sub e
    ld a, $c1
    and e
    ld e, l
    db $ec
    inc de
    sbc [hl]
    ld h, c
    and [hl]
    ld e, c
    cp $01
    db $d3
    inc l

jr_07e_6cde:
    ld [$db15], a
    inc h
    db $fc
    inc bc
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, $c1
    ld a, [$ff05]
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $7b
    add h
    rst $38
    nop
    ld a, a
    add b
    ld a, e
    add h
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    or l
    nop
    ei
    nop
    rst $18
    nop
    ld a, a
    nop
    rst $38
    nop
    sbc $00
    rst $08
    nop
    xor [hl]
    nop
    ld [hl], l
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    ld c, l
    jr nz, jr_07e_6cde

    nop
    rra
    jr nz, @+$39

    nop
    ld e, $00
    cpl
    nop
    rrca
    nop
    dec bc
    nop
    ld c, h
    nop
    dec de
    nop
    ld b, $00
    rrca
    nop
    ld h, $00
    scf
    nop
    ld d, h
    nop
    dec d
    nop
    ld a, e
    nop
    ld a, a
    nop
    xor a
    ld b, b
    ei
    inc b
    rst $38
    nop
    db $fd
    nop
    rst $18
    jr nz, @+$01

    nop
    ld a, e
    add h
    ld a, a
    add b
    ld hl, sp+$07
    cp c
    ld b, [hl]
    dec d
    ld [$e33c], a
    call z, Call_07e_70b3
    sbc a
    add c
    ld a, a
    inc de
    rst $28
    adc e
    rst $38
    add e
    rst $38
    add a
    rst $38
    rst $10
    rst $38
    or a
    rst $18
    rrca
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $18
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    pop af
    ld c, $e0
    rra
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $02fe
    db $fd
    inc bc
    db $fc
    dec b
    ld a, [$fa05]
    ld [bc], a
    db $fd

jr_07e_6d98:
    inc b
    ei
    ld d, e
    xor h
    db $db
    inc h
    sbc a
    ld h, b
    ld l, a
    sub b
    ld a, e
    add h
    ei
    inc b
    rst $20
    jr jr_07e_6d98

    db $10
    rst $38
    nop
    cp $01
    ld e, a
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    ld a, a
    ret z

    ld a, a
    and d
    ld a, a
    db $eb
    ccf
    ld sp, hl
    ccf
    pop af
    ccf
    ld a, c
    cp a
    dec a
    rst $38
    pop af
    ccf
    ld [hl], h
    cp a
    ld [hl], e
    cp a
    dec sp
    rst $18
    cp d
    ld e, a
    ld e, h
    cp a
    reti


    ld a, $dc
    dec sp
    sbc h
    ld l, a
    cpl
    rst $18
    sbc h
    ld l, a
    xor [hl]
    ld e, a
    sbc $2f
    or a
    ld c, a
    cp a
    ld b, a
    rst $10
    cpl
    rst $38
    inc bc
    sbc $23
    sub $2b
    sbc $23
    rst $08
    inc sp
    rst $28
    inc de
    rst $30

Jump_07e_6dfd:
    add hl, bc
    rst $20
    add hl, de
    jp $f33d


    dec l
    cp e
    ld c, l
    ld l, c
    ld d, $71
    ld c, $f6
    add hl, bc
    call $fc22
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    db $ec
    inc bc
    call c, $fe03
    ld bc, $01fe
    jp c, $f805

    rlca
    cp h
    inc bc
    db $ec
    inc bc
    or h
    inc bc
    or $01
    xor [hl]
    ld bc, $01de
    ld a, a
    nop
    cp $01
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $ba
    ld b, l
    db $fd
    ld [bc], a
    ld a, [hl]
    inc bc
    db $f4
    dec bc
    and $19
    ld [hl], d
    dec c
    db $e4
    rra
    ei
    rlca
    jp z, $d537

    cpl
    rst $28
    rla

jr_07e_6e52:
    dec d
    rst $28
    jp $9f3f


    ld a, a
    rrca
    rst $38
    ccf
    rst $38
    or a
    rst $38
    ccf
    rst $38

jr_07e_6e60:
    rst $38
    nop
    ld a, l
    ld [bc], a
    ei
    inc b
    rst $20
    jr jr_07e_6e60

    jr jr_07e_6e52

    jr @+$01

    nop
    rst $38
    nop
    rst $28
    db $10
    ld a, a
    add b
    rra
    ldh [$1f], a
    ldh [rVBK], a
    or b
    rst $38
    nop
    rst $18
    jr nz, @+$01

Jump_07e_6e7f:
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
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    rra
    ldh [$7f], a
    add b
    rra
    ldh [$3f], a
    ret nz

    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $28
    db $10
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
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp a
    rst $38
    ld e, e
    rst $38
    sbc $7f
    dec d
    rst $38
    add $ff
    ld d, h
    rst $38
    cp d
    rst $38
    cp a
    rst $38
    sub e
    rst $38
    push af
    rst $38
    xor d
    rst $38
    db $fd
    rst $38
    or l
    rst $38
    ld l, e
    rst $38
    ld e, c
    rst $38
    ld [hl], h
    rst $38
    ld c, e
    rst $38
    ld l, e
    rst $38
    rst $20
    rst $38
    db $d3
    rst $38
    db $fd
    rst $38
    ld [hl-], a
    rst $38
    cp e
    rst $38
    rst $38
    nop
    cp a
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    cp $01
    db $ec
    inc de
    db $ec
    inc de
    ld [hl], b
    adc a
    or d
    ld c, l
    ld b, c
    cp [hl]
    ret nz

    ccf
    add b
    ld a, a
    ld hl, sp+$7f
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
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
    ccf
    rra
    ccf
    rra
    rra
    rra
    rra
    rra
    rrca
    rra
    cpl
    rra
    ccf
    rrca
    dec [hl]
    rrca
    ld d, $0f
    ld [hl+], a
    rrca
    ld d, h
    rrca
    xor l
    rlca
    ld l, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    db $dd
    ld [bc], a
    ld sp, hl
    ld b, $fd
    ld [bc], a
    ld a, c
    ld b, $bd
    ld [bc], a
    db $fd
    ld [bc], a
    ld [hl], a
    ld [$08f7], sp
    cp $01
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
    cp $ff
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp $ff
    db $fd
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
    cp $ff
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
    rst $38
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    ld d, d
    db $ed
    ld [bc], a
    xor e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    sbc l
    ld [bc], a
    ccf
    nop
    rst $38
    nop
    db $dd
    nop
    ld a, [c]
    nop
    db $eb
    nop
    ei
    nop
    ei

jr_07e_6fcb:
    nop
    db $ed
    nop
    cp $01
    ld c, a
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    inc bc
    db $ec
    inc de
    or b
    rrca
    ret c

    rlca
    pop af
    ld c, $d0
    cpl
    push hl
    ld a, [hl-]
    push bc
    ld a, [hl-]
    ld h, c
    sbc [hl]
    jr nz, jr_07e_6fcb

    add e
    cp $60
    rst $38
    ret nc

    rst $38
    db $10
    rst $28
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    call nz, $fffb
    rst $38
    ccf
    rst $38
    cp $ff
    xor $ff
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld bc, $47fe
    cp b
    xor [hl]
    ld d, c
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
    cp $ff
    cp l
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld a, [$fbff]
    rst $38
    ld l, d
    rst $38
    ld a, [$c3ff]
    db $fd
    rst $20
    rst $38
    ldh a, [rIE]
    ld [hl], d
    db $fd
    add c
    cp $d0
    rst $38
    db $d3
    rst $38
    push de
    cp $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], c
    cp $00
    rst $38
    ret nz

    rst $38
    jp $08fc


    rst $30
    ret nz

    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    pop bc
    cp $20
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    call $c9ff
    rst $38
    reti


    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    xor $ff
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, [c]
    rst $38
    db $fc
    rst $38
    rst $18
    rst $38
    ei
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
    ld a, a
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
    rst $30
    rst $38
    ld [hl], d
    adc l
    rst $30
    ld [$9867], sp
    ld a, l
    add d
    ld a, l
    add d
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld [hl], e
    adc h
    ld d, l

Call_07e_70b3:
    xor d
    ld b, h
    cp e
    ret nz

    ccf
    ret nz

    ccf
    xor h
    ld a, a
    add hl, de
    cp $1f
    ld hl, sp+$01
    cp $94
    ld a, a
    ld [$08ff], sp
    rst $38
    ld c, $ff
    ld a, [bc]
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07e_70d5:
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
    add h
    rst $38
    adc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_07e_70d5

    dec a
    jp nz, $827d

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    rst $38
    pop de
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    push bc
    ei
    ld b, b
    rst $38
    ld [$80ff], sp
    ld a, a
    nop
    rst $38
    nop
    rst $38
    or d
    db $fd
    jr nc, @+$01

    db $10
    rst $38
    ld b, c
    cp [hl]
    rla
    add sp, $4e
    or c
    ret


    scf
    ld a, d
    add a
    ld h, c
    add [hl]
    cpl
    ret nz

    db $eb
    inc b
    ccf
    ret nz

    ld d, d
    add c
    ldh a, [rTAC]
    db $76
    add c
    cp [hl]
    ld b, c
    ld l, [hl]
    sub c
    ld l, l
    sub d
    call c, $4623
    cp c
    ld e, $f9

jr_07e_713e:
    ld de, $a2ee
    rst $38
    ld [c], a
    rst $38
    inc d
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, h
    cp e
    sub b
    rst $28
    jp nz, $fbff

    rst $38
    ei
    rst $38
    rst $30
    rst $38
    cp e
    rst $38
    sbc l
    rst $38
    sbc l
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp d
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    sbc a
    ld h, b
    ld a, a
    add b
    ld a, a
    add b
    ccf

Call_07e_7177:
    ret nz

    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    push af
    ld a, [bc]
    di
    inc c
    rst $10
    jr z, @+$01

    nop
    ld l, e
    sub h
    rst $30
    ld [$0af5], sp
    db $fd
    ld [bc], a
    pop hl
    ld e, $c3
    inc a
    ld c, a
    or b
    rst $18
    jr nz, jr_07e_713e

    ld h, b
    add hl, bc
    or $4f
    or b
    ld a, a
    add b
    rra
    ldh [rIE], a
    add b
    ld a, a
    add b
    ld c, $f1
    sbc e
    ld h, [hl]
    ld a, [hl]
    and c
    ld l, b
    or a
    add hl, bc
    cp $12
    db $ed
    ld c, [hl]
    or c
    ld a, [hl-]
    push hl
    ld d, $e9
    inc b
    ei
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
    ld e, a
    rst $38
    and h
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and h
    ld e, e
    ld a, l
    add d
    dec de
    db $e4
    sbc $21
    rst $38
    nop
    rst $38
    nop
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
    ld h, l

jr_07e_71f3:
    rst $38
    or a
    rst $38
    ld h, c
    rst $38
    db $fc
    rst $38
    ld [hl], h
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    ld b, a
    cp a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    and c
    ld e, [hl]
    dec b
    ei
    add hl, de
    rst $20
    ld b, e
    cp a
    and b
    ld e, a
    ret nz

    ld a, a
    ld b, b
    rst $38
    ret z

    ccf
    ld l, b
    rla
    sub b
    ld l, a
    ld hl, sp+$07
    ld b, b
    rra
    jr nc, jr_07e_71f3

    inc b
    ei
    ld bc, $03ff
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    and b
    ld e, a
    nop
    rst $38
    sbc l
    ld a, a
    ld a, l
    rst $38
    ccf
    rst $38
    dec [hl]
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    cp e
    db $fd
    cp c
    rst $38
    ei
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    ld [$00ff], sp
    db $fd
    nop
    db $fd
    nop
    cp $01
    rst $38
    nop
    rst $08
    nop
    rst $38
    nop

jr_07e_727a:
    rst $28
    db $10

jr_07e_727c:
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07e_727a

    ld [$03fc], sp
    xor $11
    db $fc
    inc bc
    sbc [hl]
    ld h, c
    rst $08
    jr nc, jr_07e_727c

    ld [de], a
    rst $38
    nop
    rst $38
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
    cp a
    ld b, b
    ld c, e
    or h
    rst $08
    jr nc, jr_07e_72bc

    add sp, $14
    db $eb
    inc b
    ei
    ld b, $f9
    nop
    rst $38
    ld e, a
    rst $38
    sbc a
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

jr_07e_72bc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld de, $02ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret z

    scf
    jp c, Jump_07e_7e25

    add c
    db $f4
    dec bc
    ld a, [$ff05]

jr_07e_72d9:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push bc
    rst $38
    rst $28
    rst $38
    add e
    rst $38
    ld bc, $02ff
    rst $38
    sub b
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_07e_72d9

    nop
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add h
    ei
    nop
    rst $38
    ld [hl-], a
    rst $18
    rrca
    rst $38
    ld b, d
    rst $38
    ld l, d
    rst $38
    add hl, de
    rst $38
    inc c
    rst $38
    scf
    rst $38
    rla
    rst $38
    scf
    rst $38
    inc h
    rst $38
    ld l, a
    cp $bf
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $10
    rst $38
    and e
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    or $00
    di
    nop
    db $fc
    nop
    db $d3
    nop
    db $e3
    inc c
    cp a
    ld b, b
    rst $18
    nop
    sbc l
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    cp [hl]
    ld b, b
    xor $00
    jp hl


    nop
    ld a, e
    add b
    or $00
    ld a, a
    add b
    rst $38
    nop
    ei
    nop
    rst $30
    nop
    ld a, [c]
    nop
    ld a, e
    add b
    rst $30
    nop
    rst $18
    nop
    rst $38
    nop
    cp $00
    ccf
    ret nz

    cp l
    ld b, d
    cp a
    ld b, b
    cp a
    ld b, b
    or c
    ld c, [hl]
    pop hl
    ld e, $e1
    ld e, $a2
    ld e, l
    adc c
    db $76
    ld de, $07ee
    db $fc
    dec b
    ld a, [$fda2]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld [hl-], a
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    add c
    ld a, a
    ret nz

    ccf
    ld [c], a
    dec e
    xor $11
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
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
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    dec d
    rst $28
    nop
    rst $38
    ld [hl-], a
    rst $38
    add h
    rst $38
    add a
    rst $38
    ld hl, $c0ff
    ccf
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $30
    ld [bc], a
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld bc, $10ff
    rst $38
    add d
    db $fd
    db $10
    rst $38
    ld d, b
    rst $38
    ld [hl-], a
    db $dd
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    nop
    rst $38
    ld [$46ff], sp
    ld sp, hl
    or d
    db $dd
    add hl, hl
    cp $08
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    and a
    rst $38
    ei
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    cp $ff
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
    ei
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc $00
    ld l, h
    add b
    ei

jr_07e_7435:
    nop
    ld l, $00
    cp l
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, l
    nop
    ld hl, sp+$00
    ccf
    nop
    ld a, [hl]
    ld bc, $00ff
    rst $18
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
    rst $18
    jr nz, jr_07e_7435

    ld hl, $29d6
    di
    inc c
    ld [c], a
    dec e
    db $fc
    inc bc
    db $76
    adc c
    ld e, d
    and c
    inc e
    db $e3
    ld e, h
    and e
    add d
    ld a, l
    add b
    ld a, a
    add b
    ld a, a
    ld b, h
    cp e
    ret z

    rst $30
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld sp, hl
    rst $38
    jr z, @+$01

    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    ret c

    daa
    ld a, [$fc05]
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
    ccf
    nop
    jp Jump_000_23ff


    rst $38
    inc hl
    rst $38
    adc a
    rst $38
    daa
    rst $38
    cp c
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add hl, de
    rst $38
    rra
    rst $38
    ld b, $ff
    inc b
    rst $38
    add d
    db $fd
    ld b, b
    cp a
    ld [$f8f7], sp
    rlca
    ld hl, sp+$07
    cp h
    ld b, e
    ld h, [hl]
    sbc c
    xor $11

jr_07e_74d8:
    cp h
    ld b, e
    ld hl, sp+$07
    ld hl, sp+$07
    ret


    ld h, $a0
    rra
    ld sp, hl
    ld c, $22
    rst $18
    nop
    rst $38
    inc b
    rst $38
    ld l, $d7
    jp $d0ff


    rst $38
    call c, $c6ff
    rst $38
    rst $08
    rst $38

jr_07e_74f6:
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    sbc a
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
    ld e, a
    and b
    db $eb
    inc [hl]
    di
    jr c, jr_07e_74f6

    jr nc, jr_07e_74d8

    nop
    ld a, [$ea00]
    nop
    cpl
    nop
    rst $38
    nop
    rst $28
    db $10
    ld [hl], a
    nop
    dec l
    nop
    ld a, c
    nop
    cp e
    nop
    call c, $d600
    nop
    sub a
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    ld e, a
    add b
    rst $28

jr_07e_753b:
    nop
    rst $38
    nop
    cp $01
    ld a, [$fc01]
    inc bc
    xor h
    ld d, e
    cp $01
    sub h
    ld l, e
    xor l
    ld [hl], e
    sbc [hl]
    ld h, c
    inc a
    jp $827d


    ld l, e
    sub h
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_07e_753b

    nop
    rst $38
    ld de, $0cff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $38
    add l
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ld b, l
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    and l
    ld e, d
    ei
    inc b
    cp $01
    rst $38
    nop
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
    rst $38
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
    ccf
    rst $38
    ld [hl], a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld e, $ff
    rra
    rst $38
    add a
    ld a, a
    ld b, $00
    cpl
    nop
    inc sp
    nop
    scf
    nop
    dec a
    inc bc
    ld a, $01
    rla
    nop
    rlca
    nop
    rrca
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor $1d
    or $19
    xor h

jr_07e_75f5:
    ld [hl], e
    or l
    ld c, d
    sbc c
    ld a, [hl]
    ei
    ld a, h
    db $e3
    ld a, h
    ld d, a
    add sp, -$28
    ld l, a
    ld a, [$f345]
    inc c
    ld [hl], l
    ld a, [bc]
    cp $01
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    pop af
    ld c, $e0
    rra
    ldh a, [rIF]
    cp h
    ld b, a
    ld a, [c]
    dec c
    ld c, d
    or l
    jp z, $f037

    rra
    db $e4
    rra
    jr nc, jr_07e_75f5

    cp b
    rst $00
    ld a, d
    add a
    ld [hl], b
    adc a
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld b, c
    rst $38
    ld h, c
    rst $38
    db $10
    rst $38
    add hl, de
    rst $38
    add hl, hl
    rst $38
    dec a
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    dec a
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    and c
    ld e, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    push af
    dec bc
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [$f205]
    dec c
    ld sp, hl
    ld b, $f8
    rlca
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
    ld a, [$fe05]
    ld bc, $02fd
    db $fc
    inc bc
    ld e, a
    and b
    ld [hl], l
    adc d
    db $76
    adc c
    cp a
    ld b, b
    cp a
    ld b, b
    di
    inc c
    ld hl, sp+$07
    ldh a, [rIF]
    ld a, [$fb05]
    inc b
    ld [c], a
    dec e
    ret c

    daa
    pop af
    ld c, $fa
    dec b
    ldh a, [rIF]
    ldh [$1f], a
    db $f4
    dec bc
    ldh a, [rIF]
    ldh a, [rIF]
    sbc b
    ld h, a
    or $09
    rst $38
    nop
    ld a, [$f105]
    ld c, $d3
    inc l
    ld [de], a
    db $ed
    nop
    rst $38
    ret nz

jr_07e_76cb:
    ccf
    ldh a, [rIF]
    pop hl
    ld e, $24
    rst $18
    inc e
    rst $38
    call c, $a03f
    ld e, a
    add d
    ld a, l
    pop bc
    ccf
    ld e, d
    xor l
    xor b
    ld e, a
    ld e, h
    and e
    jr jr_07e_76cb

    inc b
    ei
    ld d, $ff
    ld b, $ff
    ld h, $ff
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld b, h
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    adc e
    rst $38
    sbc a
    rst $38
    dec de
    rst $38
    ld d, a
    rst $38
    rst $10
    rst $38
    rst $08
    rst $38
    ld b, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $18
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

jr_07e_772b:
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $f9
    cp $f9
    cp $f9
    cp $f8
    cp $fb
    db $fc
    ld a, [$f2fc]
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$0c
    ld hl, sp-$0a
    ld hl, sp-$0c
    ld hl, sp-$14
    ldh a, [$ec]
    ldh a, [$ec]
    ldh a, [$e4]
    ld hl, sp-$14
    ldh a, [$ec]
    ldh a, [$6c]
    ldh a, [$7c]
    ldh [$5c], a
    ldh [$d8], a
    ldh [$38], a
    ldh [$38], a
    ldh [$d8], a
    ldh [rNR23], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$98], a

jr_07e_7779:
    ld h, b

jr_07e_777a:
    db $10
    ldh [$98], a
    ld h, b
    ldh a, [rP1]
    jr c, @-$3e

    ld d, b
    and b
    add b
    ld h, b
    ret z

    jr nz, jr_07e_7779

    nop
    ld hl, sp+$00
    db $10
    ldh [$88], a
    ld h, b
    ret c

    jr nz, jr_07e_772b

    ld h, b
    ld d, b
    and b
    jr @-$1e

    jr jr_07e_777a

    jr @-$1e

    adc h
    ld h, b
    sbc $20
    ld e, $e0
    sbc [hl]
    ldh [rNR34], a
    ldh [$9f], a
    ld h, b
    ld [hl], $e0
    ld a, [de]
    ldh [$1f], a
    ldh [rNR33], a
    ldh [rNR32], a
    ldh [rNR34], a
    ldh [rNR33], a
    ldh [rNR34], a
    ldh [$1f], a
    ldh [rNR33], a
    ldh [$1f], a
    ldh [rNR34], a
    ldh [$5f], a
    and b
    rra
    ldh [rNR34], a
    ldh [$0e], a
    ldh a, [$0e]
    ldh a, [rNR34]
    ldh [$2d], a
    ldh a, [$1f]
    ldh [$7f], a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp a
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    cp $fb
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$19
    ld hl, sp-$1a
    ld hl, sp-$11
    ldh a, [$e6]
    ld hl, sp-$31
    ldh a, [$dd]
    ldh [$9e], a
    ldh [$9a], a
    ldh [$b0], a
    ret nz

    or b
    ret nz

    inc [hl]
    ret nz

    db $f4
    add b
    ld a, b
    add b
    ld [hl], b
    add b
    ldh a, [rIE]
    db $f4
    ei
    db $e4
    ei
    pop hl
    cp $e9
    or $c3
    db $fc
    xor e
    call nc, $f886
    rst $08
    ldh a, [$8f]
    ldh a, [$0e]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rNR33], a
    ldh [rNR33], a
    ldh [$3b], a
    ret nz

    add hl, bc
    ldh a, [rTAC]
    ret nc

    dec c
    or b
    rla
    and b
    dec d
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld l, e
    nop
    xor a
    nop
    adc a
    nop
    rst $08
    nop
    rst $18
    nop
    db $db
    nop

jr_07e_786a:
    rst $18
    nop
    reti


    nop
    cp a
    nop
    or $00
    cp $00
    rst $18
    nop
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38

jr_07e_787b:
    nop
    cp $01
    rst $38
    nop
    ei
    inc b
    db $fd
    ld [bc], a
    ld a, [$cb04]
    inc [hl]
    rst $20
    jr jr_07e_786a

    jr nz, jr_07e_78fc

    sub b
    sbc $21
    xor a
    ld d, b
    cp l
    ld b, d
    db $76
    adc c
    dec [hl]
    jp z, $aed1

    jr nz, jr_07e_787b

    rrca
    ldh a, [rOBP0]
    or a
    ld b, e
    db $fc
    add [hl]
    ld sp, hl
    add a
    ld hl, sp+$0a
    push af
    sub l
    ld [$e619], a
    ld e, c
    and $77
    ret z

    rst $18
    pop hl
    add [hl]
    ld sp, hl
    cp b
    rst $00
    add a
    xor $f5
    adc [hl]
    ld l, b
    sub a
    sub b
    rst $28
    add l
    ld a, [$d2ad]
    ld c, e
    or h
    scf
    add sp, $15
    ld [$dc23], a
    inc bc
    db $fc
    and c
    cp $d3
    db $ec
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld a, [$f8fd]
    rst $38
    ld hl, sp-$01
    pop af
    cp $f1
    cp $f9
    cp $f3
    db $fc
    di
    db $fc
    pop af
    cp $e3
    db $fc
    db $e3
    db $fc
    rst $00
    ld hl, sp-$59
    ld hl, sp-$61
    ldh [$9f], a
    ldh [$1f], a
    ldh [$9f], a
    ldh [$3f], a
    ret nz

jr_07e_78fc:
    db $fc
    add b
    ld a, h
    add b
    db $fc
    rst $38
    db $fd
    cp $fe
    db $fd
    db $fd
    ld a, [$fcf3]
    rst $30
    ld hl, sp-$15
    db $f4
    call $dff2
    ldh [$df], a
    ldh [$8f], a
    ldh a, [$bf]
    ldh [$bf], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, [hl]
    add c
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    db $fd
    ld [bc], a
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
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    xor [hl]
    ld bc, $00ff
    cp $00
    cp $00
    cp $00
    ld a, d
    nop
    ld a, l
    nop
    push af
    nop
    ld l, a
    nop
    ld a, a
    nop
    xor $00
    ld e, a
    nop

jr_07e_7958:
    cp a
    nop
    rst $38
    nop
    db $fc
    nop
    ei
    nop
    db $fd
    nop
    ld e, e
    nop
    sub [hl]
    nop
    sub e
    nop
    dec h
    nop
    and [hl]
    nop
    ld l, d
    nop
    ldh a, [rP1]
    rst $20
    nop
    db $ed
    nop
    reti


    nop
    db $ec
    nop
    rst $38
    nop
    ei
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    xor a
    db $10
    ld l, [hl]
    ld de, $11ee
    rst $30
    add hl, de
    or [hl]
    ld c, c
    or h
    ld c, e
    sbc h
    ld h, e
    ld e, l
    and d
    call $ca32
    scf
    sub h
    ld a, e
    di
    dec l
    rst $00
    jr c, jr_07e_7a04

    sbc b
    rst $08
    jr nc, jr_07e_7958

    ld c, b
    jp c, Jump_07e_7e25

    add c
    db $ed
    ld [de], a
    ld hl, sp+$07
    call z, $dd33
    ld [bc], a
    di
    inc c
    ld d, c
    cp [hl]
    sub e
    ld a, h
    cpl
    ldh a, [$bf]
    ld h, b
    db $fd
    ld h, d
    db $dd
    ld h, d
    cp a
    ld b, b
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $28
    nop
    sbc $08
    cp $08
    db $fd
    nop
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    db $fd
    rst $38
    ei
    rst $38
    pop af
    cp $f5
    cp $f1
    cp $e3
    db $fc
    and $f9
    cp $e1
    add $f9
    adc $f1
    ld b, h
    ei
    dec c
    ld a, [c]
    sbc [hl]
    pop hl

jr_07e_79fa:
    ld a, l
    add d
    rra
    ldh [$fe], a
    ld bc, $42bd
    cp l
    ld b, d

jr_07e_7a04:
    rst $38
    nop
    ld [hl], d
    adc l
    pop af
    ld c, $ff
    nop
    rst $18
    jr nz, jr_07e_79fa

    inc d
    ei
    inc b
    rst $38
    nop
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $18

jr_07e_7a21:
    jr nz, jr_07e_7a21

    ld bc, $06fd
    rst $38
    inc b
    rst $38
    inc c
    db $fc
    dec bc
    cp a
    ld b, b
    cp e
    ld b, h
    rst $28
    db $10
    ld a, e
    and h
    ld d, a
    add sp, -$0a
    ld c, c
    rst $38
    ld b, b
    sbc h
    ld h, e
    sbc c
    ld h, a
    sub l
    ld l, e
    db $d3
    cpl
    or $0f
    xor l
    ld e, $db
    inc l
    jp hl


    ld e, $fb
    inc e
    db $76
    add hl, de
    sbc $31
    swap l
    sub a
    ld l, c
    adc $73
    xor e
    db $76
    cp a
    ld b, d
    cp [hl]
    ld b, c
    cp $03
    db $ec
    inc de
    ld [hl], a
    db $10
    inc sp
    nop
    and c
    ld b, b
    ld h, d
    nop

jr_07e_7a68:
    or e
    nop
    rst $20
    nop
    and c
    nop
    db $76
    ld bc, $00af
    rst $18
    nop
    inc bc
    inc e
    push hl
    jr jr_07e_7a68

    db $10
    sub e
    inc c
    ld l, [hl]
    nop
    cp $01
    and [hl]
    add hl, de
    rst $38
    ld [$34db], sp
    push de
    ccf
    ld c, d
    or a
    xor $1f
    push de
    ccf
    call nc, $d33b
    inc l
    xor a
    ld d, b
    rst $28
    ld d, b
    rst $08
    ldh a, [$7f]
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, @-$50

    ld d, c
    ei
    nop

jr_07e_7aa4:
    rst $28
    ld d, b
    cp a
    ld b, b
    rst $28
    nop
    cp e
    inc b
    rst $18
    jr nz, jr_07e_7aa4

    ld a, [bc]
    rst $38
    nop
    ld [hl], a
    adc b
    ld a, a
    add b
    ld e, a
    and b
    rst $38
    ld b, b
    xor h

jr_07e_7abb:
    ld b, e
    cp l
    ld b, d
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    or $40
    rst $38
    nop
    rst $38
    nop
    cp l
    ld [bc], a
    ld a, [$ff05]
    ld bc, $ff8f
    or h
    rst $38
    db $ed
    rst $38
    ld a, [de]
    rst $38
    ld b, e
    rst $38
    jr nc, jr_07e_7abb

    jp z, $0bbf

    rst $38
    add a
    ld a, a
    ld [bc], a
    rst $38
    ld b, [hl]
    rst $38
    sub h
    rst $38
    rra
    rst $38
    ld [$c8ff], sp
    ccf
    ld sp, hl
    ccf
    or h
    ld a, e
    add l
    rst $38
    dec h
    rst $18
    daa
    db $db
    or c
    ld c, a
    and c
    ld e, a
    ld h, a
    sbc [hl]
    pop af
    ld c, $d5
    ld l, $ab
    ld d, h
    and a
    ld e, b
    ld [hl], a
    adc b
    cp a
    ld b, b
    ld d, d
    xor l
    cp b
    ld c, a
    ldh a, [rIF]
    ld [hl], e
    adc h
    sbc $21
    call nc, $f12b
    ld c, $e3
    inc e
    inc d
    ei
    ld [$58f7], sp
    and a
    db $10
    rst $28
    inc b
    ei
    ld c, $f3
    add b
    ld a, a
    add d
    ld a, l
    adc c
    ld [hl], a
    ccf
    rst $00
    dec c
    rst $30
    dec l
    di
    adc a
    ld [hl], e
    ld e, d
    and a
    sub b
    rst $28
    xor b
    ld d, a
    add d
    db $fd
    ld hl, $01df
    rst $38
    dec de
    push hl
    ld bc, $a2ff
    ld e, l
    sbc b
    rst $20
    ld a, l
    add d
    ld a, $c3
    db $dd
    and d
    xor $91
    cp [hl]
    pop bc
    ld sp, hl
    ld b, $c6
    add hl, sp
    cp b
    ld d, a
    ld a, [$7c45]
    add e
    ret c

    daa
    call z, $fb33
    inc b
    rst $38
    nop
    xor $11
    cp $01
    rst $38
    nop
    or $09
    rst $08
    nop
    rst $28
    nop
    ld d, [hl]
    ld bc, $0059
    rst $38
    nop
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$f805]
    rlca
    cp $01
    xor h
    ld d, e
    db $f4
    dec bc
    ld a, a
    add b
    rra
    ldh [rVBK], a
    or [hl]
    jr z, @+$01

    ld a, l
    cp $b7
    ld c, b
    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, $c1
    scf
    ret z

    dec l
    jp nc, $807f

    db $fd
    ld [bc], a
    cp $03
    cp $01
    db $fc
    inc bc
    rst $28
    db $10
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $30
    ld [$44bb], sp
    db $fd
    ld [bc], a
    ei
    nop
    rst $38
    nop
    or $09
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    ld a, a
    add b
    ld a, a
    add b
    ei
    inc b
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
    jr jr_07e_7c03

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07e_7c13

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07e_7c33

    ld [hl-], a

jr_07e_7c03:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07e_7c43

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld a, $40
    ld b, c

jr_07e_7c13:
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
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld a, $3e
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_07e_7c33:
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld a, $3e
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_07e_7c43:
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
    ld a, $72
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
    ld a, $3e
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
    ld hl, sp-$07
    ld a, [$3efb]
    db $fc
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
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_07e_7d14

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07e_7d24

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07e_7d34

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $02
    nop
    nop
    nop

jr_07e_7d14:
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop

jr_07e_7d24:
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop

jr_07e_7d34:
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
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0102
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
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
    nop
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    nop
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
    ld [bc], a
    ld bc, $0100
    ld bc, $0201
    ld a, [bc]
    ld [$0808], sp

Jump_07e_7e25:
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a0a], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, a
    add b
    ld a, d
    add h
    ld a, [hl]
    add h
    ld a, a
    add h
    rst $38
    inc b
    cp d
    ld b, h
    cp $00
    ei
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    db $ec
    rst $38
    ld l, l
    rst $38
    ld a, h
    rst $38
    ld h, h
    rst $38
    ld hl, sp-$01
    xor $ff
    ret z

    rst $38
    db $fc
    rst $38
    rst $38
    db $fd
    or $fd
    db $fd
    rst $38
    ld l, [hl]
    rst $38

jr_07e_7e86:
    ld a, [$fdff]
    cp $fd
    cp $ec
    rst $38
    db $fc
    rst $38

jr_07e_7e90:
    ei
    nop
    ld sp, hl
    nop
    db $fc
    nop
    ei
    inc b
    ei
    inc b
    cp $00
    or [hl]
    ld c, b
    call c, $ff20
    nop
    ld e, a
    and b
    ld e, a
    and b
    rst $18
    jr nz, jr_07e_7f27

    add c
    db $fc
    inc bc
    cp [hl]
    ld b, c
    db $76
    adc c
    dec sp
    call nz, $758a
    dec bc
    db $f4
    rra
    ldh [$5f], a
    and b
    ld e, a

jr_07e_7ebb:
    and b
    rst $08
    jr nc, jr_07e_7e86

    jr c, jr_07e_7e90

    jr nc, @-$0f

    db $10
    rst $10
    jr z, jr_07e_7f15

    or c
    ld h, [hl]
    sbc c
    rst $00
    jr c, jr_07e_7ebb

    ld de, $00ff
    rst $38
    nop
    or $08
    rst $30
    ld [$00fe], sp
    rst $38
    nop
    rst $38
    nop
    db $dd
    nop
    reti


    nop
    call nc, $e900
    nop
    rst $00
    nop
    ld d, d
    nop
    add [hl]
    nop
    rst $18
    nop
    db $f4
    ld [bc], a
    ld e, [hl]
    nop
    xor $ff
    db $e3
    rst $38
    dec sp
    rst $38
    ld e, c
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    ld l, l
    rst $38
    or l
    rst $38
    add hl, hl
    nop
    db $d3
    nop
    db $db
    nop
    ld e, $81
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

jr_07e_7f15:
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    rst $38
    nop
    sbc e
    ld h, h
    rra
    ldh [$5f], a

jr_07e_7f27:
    and b
    ld e, a
    and b
    cpl
    ret nc

    dec hl
    call nc, $e41b
    rrca
    ldh a, [$03]
    db $fc
    ld bc, $06fe
    ld sp, hl
    rlca
    ld hl, sp+$0c
    di
    dec b
    ld a, [$f609]
    ld c, e
    db $f4
    jp z, Jump_07e_48f5

    rst $30
    ld d, c
    xor $59
    and $80
    rst $38
    add c
    cp $c0
    cp a
    ld h, [hl]
    ld sp, hl
    ld c, d
    push af
    add $f9
    scf
    add sp, -$15
    db $f4
    and c
    cp $f4
    ei
    or a
    ei
    inc l
    ei
    inc sp
    db $fd
    sbc a
    ld sp, hl
    ld d, e
    db $fd
    ld h, d
    db $fd
    ld h, c
    cp $c9
    or $a7
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp-$39
    cp b
    rst $20
    sbc h
    jp $c3bc


    cp h
    and a
    ret c

    and a
    ret c

    ld b, a
    ld hl, sp+$24
    db $db
    inc h
    db $db
    ld [hl], c
    adc $00
    rst $38
    ld b, e
    db $fd
    ld b, c
    rst $38
    ldh [rIE], a
    ret


    rst $38
    ld e, b
    rst $38
    or d
    rst $38
    ld [hl], c
    rst $38
    ld e, c
    rst $38
    ld c, l
    rst $38
    jr nc, @+$01

    ld a, [hl+]
    rst $38
    or a
    nop

jr_07e_7fa2:
    db $f4
    nop
    cp c
    ld b, b
    rst $10

jr_07e_7fa7:
    jr nz, jr_07e_7fa2

    nop
    ld a, [$d800]
    jr nz, jr_07e_7fa7

    nop
    db $fd
    rst $38
    push af
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp h
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    ld l, [hl]
    add b
    rst $30
    nop
    rst $38
    nop
    cp l
    ld b, b
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    rst $30
    nop
    cp $00
    rst $38
    nop
    cp $00
    push de

jr_07e_7fd7:
    jr nz, @-$29

    jr nz, jr_07e_7fd7

    nop
    ld a, [$fd00]
    nop
    or $ff
    db $eb
    rst $38
    call c, $deff
    rst $38
    ld a, h
    rst $38
    sbc b
    rst $38
    ld a, h
    rst $38
    ld a, e
    cp a
    dec hl
    nop
    jp c, Jump_000_0a00

    nop
    inc de
    ld [$000e], sp
    ld a, a
    nop
    ld e, [hl]
    nop
    ld [hl], l
    nop
