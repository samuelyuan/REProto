SECTION "ROM Bank $090", ROMX[$4000], BANK[$90]

    nop
    ld e, b
    nop
    ld [$1000], sp
    add b
    inc e
    ret nz

    ld de, $40e0
    ld hl, sp+$11
    ld a, [c]
    ld h, b
    push hl
    add h
    rst $38
    ldh a, [$fd]
    db $fc
    rst $38
    rst $38
    ld a, a
    ccf
    ld a, a
    inc sp
    inc sp

jr_090_401d:
    ld sp, $31bb
    dec c
    inc bc
    ld l, l
    nop
    ld b, c
    ld c, b
    rlca
    ld [bc], a
    add d
    db $10
    ld a, [$9f78]
    adc d
    inc bc
    ld b, b
    ld [hl+], a
    inc b
    ei
    jr jr_090_401d

    xor b
    ld sp, hl
    ld sp, $10ff
    db $fc
    nop
    ld a, a
    add [hl]
    rst $38
    and e
    add b
    nop
    inc de
    nop
    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    ld bc, $0999
    ld h, c
    ld bc, $60e7
    cp a
    ret nz

    cp a
    ret nz

    rst $18
    ldh [$fb], a
    db $f4
    or $ff
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    ld e, $fd
    ld e, $bd
    rra
    db $fd
    sbc l
    rst $38
    ld c, $ff
    ld c, c
    cp a
    sbc e
    dec a
    pop hl
    ccf
    and a
    add hl, sp
    ld a, c
    cp a
    dec bc
    rst $38
    push hl
    dec sp
    ld h, c
    dec sp
    ld bc, $2b7b
    ld [hl], e
    ld [hl], e
    ld a, e
    dec de
    rst $38
    rlca

jr_090_40b3:
    ld a, e
    ld c, e
    di
    daa
    ld [hl], e
    ld b, e
    ld [hl], a
    ei
    ld [hl], a
    rlca
    rst $38
    dec hl
    ld [hl], a
    sub a

jr_090_40c1:
    ld h, a
    rlca
    rst $30
    ld b, a
    rst $30
    ld c, a
    rst $30
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
    rrca
    rst $38
    ld b, d
    cp a
    rra
    ldh [$2f], a
    ret nc

    ld e, [hl]
    rst $38
    ld h, $d9
    ccf
    ret nz

    ld a, [hl]
    nop
    inc b
    nop
    jp nz, $f700

    ret nc

    rst $38
    rst $38
    ccf
    rlca
    inc bc
    ld b, b
    ld bc, $0010
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    jr nz, jr_090_40ff

jr_090_40ff:
    jr nc, jr_090_40c1

    jr nz, jr_090_40b3

    nop
    adc h
    add b
    rst $30
    ret nz

    cp $f1
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    dec sp

jr_090_4110:
    cp b
    jr jr_090_4110

    ld [bc], a
    cp $40
    cpl
    ld b, $83
    add d
    adc d
    nop
    jp nz, $e080

    ld hl, sp+$00
    add c
    jr nc, jr_090_4158

    add b
    db $10
    ld b, b
    adc h
    jr nz, @+$16

    xor d
    ldh [$ee], a
    nop
    and $00
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    add $c4
    push hl
    jr nz, @-$3f

    db $10
    rst $38
    nop
    sbc $21
    db $ec
    inc de
    cp b
    ld b, a
    and b
    ld e, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor l
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_090_4158:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $18
    sbc [hl]
    rst $38
    cp a
    rst $18
    sbc [hl]
    rst $38
    rst $38
    rst $38
    sbc l
    rst $38
    db $dd
    cp a
    db $dd
    cp a
    ld a, l
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp a
    cp e
    ld a, a
    dec sp
    rst $38
    dec sp
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
    cpl
    rst $38
    sub h
    ld a, a
    inc [hl]
    ei
    ld bc, $5fff
    and b
    ld c, [hl]
    or c
    ld a, a
    cp $2f
    db $d3
    ld c, $00
    rst $08
    nop
    cp h
    nop
    ld a, [$fff0]
    cp $bf
    rlca
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    inc c
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, d
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    inc b
    and b
    ld [bc], a
    or b
    add l
    ret z

    nop
    ld sp, hl
    add sp, -$01
    db $fd
    cp $fe
    rst $38
    sbc a
    ei
    ei
    rst $18
    pop bc
    rst $20
    inc hl
    rst $20

Call_090_41fb:
    nop
    ld bc, $3822
    ld b, h
    sbc [hl]
    rra
    ld b, $00
    db $10
    add b
    ld e, a
    add h
    ld h, a
    rlca
    scf
    add c
    dec a
    jr jr_090_420f

jr_090_420f:
    nop
    nop
    nop
    rst $38
    and b
    rst $38
    nop
    cp a
    inc bc
    inc sp
    ld hl, $0039
    or e
    ld de, $808f
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_090_4263

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_090_4273

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_090_4282

    jr nc, jr_090_4284

    jr nc, jr_090_4286

    jr nc, jr_090_4288

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_090_429a

    ld a, [hl-]
    dec sp

jr_090_4263:
    inc a
    jr nc, jr_090_4296

    jr nc, jr_090_42a5

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

jr_090_4273:
    ld c, c
    ld c, d
    jr nc, jr_090_42c2

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

jr_090_4282:
    ld d, a

jr_090_4283:
    ld e, b

jr_090_4284:
    ld e, c
    ld e, d

jr_090_4286:
    ld e, e
    ld e, h

jr_090_4288:
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

jr_090_4296:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

jr_090_429a:
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

jr_090_42a4:
    ld a, c

jr_090_42a5:
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

jr_090_42c2:
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
    jr nc, jr_090_4283

    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c

jr_090_42de:
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    jr nc, @+$32

    jr nc, jr_090_42a4

    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $30
    rst $00
    ret z

    ret


    jp z, $cccb

Jump_090_42fd:
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    jr nc, jr_090_42de

    rst $10
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
    xor $30
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd

jr_090_4330:
    jr nc, jr_090_4330

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
    jr jr_090_4366

    ld a, [de]
    dec de
    inc e
    dec e
    jp nc, Jump_000_1f1e

    jr nz, jr_090_4377

    ld [hl+], a
    inc hl
    inc h
    dec h
    jr nc, jr_090_438c

    jr nc, jr_090_438e

    jr nc, jr_090_4390

    nop
    nop
    nop
    nop
    nop
    nop

jr_090_4366:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_090_4377:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
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

jr_090_438c:
    nop
    inc bc

jr_090_438e:
    inc bc
    ld [bc], a

jr_090_4390:
    nop
    nop
    nop
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
    inc bc
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
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    inc bc
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0505
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0505
    inc bc
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0001
    dec b
    dec b
    inc bc
    inc b
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
    ld bc, $0502
    dec b
    dec b
    inc b
    ld [bc], a
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
    ld [bc], a
    dec b
    dec b
    inc b
    inc b
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
    dec b
    dec b
    inc b
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0201
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0001
    dec b
    dec b
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0303
    inc bc
    inc bc
    dec b
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld [$0908], sp
    add hl, bc
    dec bc
    inc c
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0908], sp
    add hl, bc
    rrca
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    dec bc
    ld a, [bc]
    ld [hl+], a
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    rst $38
    ld sp, hl
    rst $38
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
    ldh [rIE], a
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
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $83ff


    rst $38
    add e
    rst $38
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    jr @+$01

    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    rla
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rla
    rst $38
    ld d, a
    rst $38
    rla
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld d, $ef
    dec h
    jp nz, $c027

    ld b, d
    add h
    xor d
    dec b
    dec b
    xor $f6
    rst $28
    call z, $0cff
    rst $38
    ld a, h
    rst $18
    ld [hl], a
    db $dd
    ld a, l
    rst $18
    ld e, a
    db $dd
    db $fd
    rst $18
    cp l
    rst $18
    reti


    rst $38
    sbc l
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    ld sp, hl
    cp a
    cp d
    rst $38
    cp d
    cp a
    cp [hl]
    ei
    ld a, $bb
    cp b
    cp $18
    cp $30
    db $fc
    ld d, b
    cp h
    ld hl, $0198
    and d
    add b
    ld h, a
    and h
    ld d, a
    inc c
    rst $00
    rlca
    xor l
    ld c, $15
    dec h
    rst $18
    scf
    ld l, l
    cpl
    ld a, l
    cp l
    ld l, a
    dec c
    rst $28
    xor h
    rst $38
    ld l, b
    rst $28
    ret


    cp $4a
    db $fc
    ld c, b
    cp $58
    db $fd
    ld e, c
    db $fd
    rst $18
    ld sp, hl
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $30
    ei
    rst $30
    ei
    push af
    ei
    push af
    ei
    pop af
    ei
    ld sp, hl
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
    ld a, h
    rst $38
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $fd
    ld a, a
    db $fc
    ld a, a
    db $fc
    cp l
    ld a, a
    sbc a
    ld a, a
    cp [hl]
    rst $38
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    adc a
    cp $ee
    rst $18
    add a
    rst $18
    or a
    rst $08
    or a
    rst $08
    sub a
    rst $28
    rst $30
    rst $38
    rst $30
    rst $38
    db $fd
    rst $30
    ei
    rst $30
    ld sp, hl
    rst $30
    rst $30
    di
    pop hl
    di
    pop hl
    rst $38
    db $fd
    rst $38
    ld a, [$f8fd]
    db $fd
    ld hl, sp-$03
    cp $f9
    ei
    cp $fe
    cp $f8
    cp $f8
    cp $f8
    rst $38
    db $fd
    rst $38
    ld [hl], h
    rst $38
    inc [hl]
    rst $38
    dec d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    and h
    rst $18
    and d
    rst $18
    sbc d
    rst $00
    adc [hl]
    di
    and d
    di
    ld [c], a
    pop af
    and h
    ld sp, hl
    cp c
    add sp, -$59
    ld hl, sp+$62
    db $fc
    ld [c], a
    db $fd
    ld h, b
    rst $38
    jp nz, Jump_090_4afd

    push af
    ld b, b
    rst $38
    ld b, d
    db $fd
    ld c, d
    push af
    ld a, [c]
    db $dd
    ld c, b
    rst $30
    ld b, d
    db $fd
    ld h, b
    rst $18
    add $f9
    ld l, e
    add b
    add b
    nop
    add e
    nop
    ld d, d
    xor c
    pop bc
    xor d
    sub c
    xor d
    pop de
    xor d
    ret nc

    xor e
    ret z

    or a
    inc l
    db $d3
    ld b, b
    or a
    jr z, @-$28

    jp nz, $a154

    ld d, h
    sbc l
    ld d, b
    jp c, Jump_090_5e73

    di
    ld l, [hl]
    rst $30
    ld a, e
    rst $28
    xor a
    adc $ff
    adc d
    adc e
    cp [hl]
    xor l
    ccf
    xor l
    ld bc, $0129
    cp d
    ld bc, $83ba
    cp d
    inc hl
    or $03
    and $27
    add $07
    rst $08
    rlca
    ld c, a
    ld c, a
    adc $0f
    ld e, [hl]
    ld e, a
    ld e, b
    rra
    jr nc, jr_090_46ab

    ld sp, $293f
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    or b
    rst $38
    cp a
    ld a, a
    xor a
    ld a, a
    cpl
    rst $38
    rst $28
    rst $38
    push hl
    rst $38
    and a

jr_090_46ab:
    rst $38
    xor e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    rst $10
    cp a
    pop de
    cp a
    push de
    cp a
    sub e
    rst $38
    pop hl
    rst $38
    db $d3
    rst $38
    db $dd
    rst $38
    rst $10
    rst $38
    di
    rst $18
    di
    rst $18
    rst $10
    rst $18
    or e
    rst $18
    rst $30
    rst $38
    db $e3
    rst $38
    ld c, e
    rst $30
    ld b, a
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    pop hl
    ld a, a
    ld h, e
    ld a, a
    di
    rst $28
    ld [hl], a
    rst $28
    rla
    rst $28
    inc bc
    rst $38
    ld b, e
    cp a
    db $e3
    ccf
    inc sp
    rst $28
    add e
    rst $38
    add e
    rst $38
    jp $8bbf


    or a
    and e
    rst $18
    xor e
    rst $10
    add e
    rst $18
    add e
    rst $18
    add e
    rst $38
    and a
    rst $18
    add a
    rst $18
    or e
    rst $08
    rla
    rst $28
    rla
    rst $08
    scf
    rst $08
    cpl
    ld d, a
    ld c, a
    rla
    rlca
    ld c, a
    daa
    rst $18
    rla
    rst $08
    rlca
    sbc a
    rla
    cp a
    sub a
    cp a
    ld c, a
    cp a
    adc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    rst $18
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    rst $28
    ccf
    sbc a
    ld a, a
    ccf
    sbc a
    ld e, a
    sbc a
    cpl
    rst $18
    rrca
    rst $38
    ccf
    rst $18
    cpl
    rst $18
    dec l
    rst $18
    ccf
    rst $18
    rrca
    rst $18
    cpl
    rst $18
    rst $08
    ccf
    ld l, a
    rra
    rrca
    rst $38
    dec sp
    rst $18
    dec de
    rst $38
    ld l, a
    rst $18
    rrca
    ld a, a
    adc a
    ld a, a
    ld e, a
    ccf
    dec de
    ld a, a
    rra
    cp a
    dec de
    ld a, a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
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
    ld e, a
    rst $38
    ld [$7c7f], sp
    rst $38
    cp $ff
    ld e, [hl]
    rst $38
    add b
    db $fd
    nop
    ld a, [$ffc0]
    ld sp, hl
    rst $38
    db $fc
    rst $38
    sbc l
    rst $38
    jr @+$01

    jr @+$01

    ld b, $f9
    jr nz, @+$01

    ldh a, [rIE]
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
    ld a, a
    rst $38
    ld a, l
    rst $38
    jr c, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    jp hl


    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    jp hl


    rst $38
    add b
    rst $38
    rst $28
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
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
    db $fc
    rst $38
    cp $ff
    add $ff
    call nz, Call_090_41fb
    cp $62
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ld [$00f3], sp
    ld a, a
    jr nz, @+$01

jr_090_4810:
    inc h
    ei
    ld [hl], e
    add sp, $60
    rst $38
    jr nz, jr_090_4810

    nop
    db $fc
    ldh [$3d], a
    ld h, b
    cp a
    jr c, @+$01

    jr nc, @+$01

    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    push af
    rst $38
    ld a, [$f5ff]
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    rst $20
    rst $38
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $eb
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    jp nz, $c2ff

    rst $38
    jp nz, $c2ff

    rst $38
    call c, $81ff
    cp $c2
    cp $82
    cp $c2
    cp $85
    cp $91
    cp $04
    ld a, [$bec0]
    xor $94
    sbc a
    db $e4
    sbc l
    and $80
    rst $38
    ld b, b
    cp h
    inc b
    cp h
    xor h
    sub h
    ld a, [hl]
    add h
    ld b, $ac
    inc hl
    db $fc
    ld l, $d0
    push bc
    ld a, $04
    xor [hl]
    ld [hl], b
    adc [hl]
    jr nz, @-$30

    ld b, d
    cp l
    dec c
    ldh a, [$91]
    cp $ff
    ld [$ffff], a
    rst $38
    rst $38
    db $fd
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rP1]
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    ld [c], a
    dec e
    db $10
    rst $28
    sub b
    rst $28
    adc b
    rst $30
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    ld h, e
    ld b, b
    jr nz, @+$24

    pop bc
    ld sp, $31ea
    ldh a, [rNR10]
    rst $38
    db $10
    cp $08
    rst $38
    ld [$0cff], sp
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    adc d
    rst $38
    sub h
    rst $38
    inc b
    rst $38
    ld [$0cff], sp
    rst $38
    jr @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    inc hl
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    jr z, @+$01

    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add sp, -$01
    or b
    rst $38
    xor $ff
    reti


    rst $38
    pop af
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    add sp, -$01
    ld hl, sp-$01

jr_090_4960:
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, d
    rst $38
    nop
    rst $38
    ld c, $f9
    ld de, $19fe
    cp $78
    rst $38
    nop
    rst $38
    ld a, [bc]
    ldh a, [$32]
    ret c

    ld [hl-], a
    ret c

    ld [hl], h
    sbc b
    add hl, bc
    or $e0

jr_090_497d:
    nop

jr_090_497e:
    or b
    ld d, b
    sbc $30
    ld e, $f0
    ld a, l
    sub b

jr_090_4986:
    call c, Call_090_67f7
    sub b
    ld e, a
    or b
    ret nc

    jr nc, jr_090_4960

    jr nc, @-$01

    jr nc, jr_090_497d

    rst $38
    ld [hl], a
    ret nz

    add l
    ld [hl], b
    pop de

jr_090_4999:
    ld h, b
    or c
    jr nz, jr_090_4986

    jr c, jr_090_497e

    and d
    db $e3
    nop
    push hl
    ld hl, $21e1
    ld sp, hl
    add hl, hl
    add sp, $21
    db $ed
    jr nz, jr_090_4999

    nop
    sbc h
    ldh [rIE], a
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld de, $28ee
    rst $30
    nop
    rst $30
    add b
    ld [$6f80], sp
    nop
    cp $0b
    jr nc, jr_090_49e7

    nop
    stop
    ret nz

    dec sp
    ld bc, $78fe
    add a
    ld c, $f3
    cp $81
    cp [hl]
    pop bc
    and b
    rst $18
    db $10
    rst $38
    push af
    rst $38
    inc a
    rst $38
    ld [hl], c
    cp $e0
    rst $38
    add [hl]
    db $fd
    db $fd
    ld a, [hl]
    db $fd

jr_090_49e7:
    cp $fd
    cp $fe
    rst $38
    rst $18
    rst $38
    db $fc
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

jr_090_49f9:
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc de
    db $ec
    scf
    ret z

    dec bc
    db $f4
    inc bc
    db $fc
    rlca
    ld hl, sp+$01
    cp $01
    cp $02
    db $fd
    ld [bc], a
    db $fd
    push hl
    ld a, [$fafd]
    ld a, [hl]
    rst $38
    ld a, [bc]
    push af
    rla
    add sp, $0e
    pop af
    ld c, $f1
    nop
    rst $38
    adc b
    ld [hl], a
    sub h
    ld l, a
    jr nc, jr_090_49f9

    db $10
    rst $28
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    cpl
    rst $38

jr_090_4a34:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and d
    rst $38
    ld hl, sp-$01
    db $eb
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38

jr_090_4a47:
    rst $38
    rst $38
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
    rst $38
    ret nz

    rst $38
    ld [c], a
    rst $38
    or $ff
    rst $38
    rst $38
    nop
    rst $38
    ld c, l
    ld a, [c]
    ld b, c
    cp $43
    cp $c0
    rst $38
    jr nz, jr_090_4a47

    inc [hl]
    jp nz, $c234

    jr c, jr_090_4a34

    ld h, d
    call nz, $ff7d
    rst $38
    nop
    ccf
    call nz, $c4bf
    or a
    call nc, $c6bb
    db $ec
    ld de, $009c
    add h
    add h
    call nz, $c084
    add h
    ld sp, hl
    sub h
    nop
    nop
    jr nz, @-$7a

    add h
    add h
    add h
    add h
    add b
    add h
    dec a
    add h
    nop
    nop
    add b
    nop
    inc b
    add b
    inc b
    add b
    inc c
    add b
    add b
    nop
    jr nz, jr_090_4ac2

    ld [$0800], sp
    nop
    add b
    ld [$0088], sp
    ld b, b
    nop
    nop
    nop
    add [hl]
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $b3fe
    ld a, a
    rrca
    ldh a, [$87]
    ld a, b
    dec de
    db $e4
    ld c, [hl]
    sub b
    dec bc
    db $e4

jr_090_4ac2:
    ld h, c
    ld d, $08
    nop
    nop
    add b
    db $10
    rst $20
    nop
    pop hl
    nop
    ld [hl], b
    rst $30
    ld [$be41], sp
    ld a, [$6d07]
    sub e
    ld [$43f7], sp
    rst $38
    ld hl, sp-$01
    db $10
    rst $38
    adc h
    ld a, a
    ld [hl], c
    adc [hl]
    rst $38
    inc b
    push af
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    and c
    ld e, [hl]
    and b
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    cp a

Jump_090_4afd:
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
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
    rst $30
    ld [$00ff], sp

jr_090_4b18:
    add a
    ld a, b
    cp $ff
    rst $38
    rst $38
    ld e, a
    cp [hl]
    inc h
    sbc $7b
    add h
    cpl
    ret nc

    rst $08
    jr nc, jr_090_4b18

    db $10
    rst $38
    nop
    ccf
    ret nz

    cpl
    ret nc

    ccf
    ret nz

    ld sp, hl
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    add sp, -$01
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
    di
    rst $38
    jr nz, @+$01

    and b
    rst $38
    ld h, b
    rst $38
    di
    rst $38
    add b
    ccf
    rst $30
    cp e
    cp e
    rst $38
    ld [hl], e
    rst $38
    rst $28
    rst $38
    and l
    ld e, a
    rst $10

jr_090_4b6b:
    jr nz, jr_090_4b6b

    ld hl, $3b6c
    cpl
    ld a, [c]
    ld hl, sp+$0f
    pop af
    db $10
    ld hl, $0122
    ld [hl+], a
    ld d, c
    ld [hl+], a
    rst $10
    jr z, jr_090_4b7f

jr_090_4b7f:
    nop
    jr nz, jr_090_4ba2

    ld [hl+], a
    ld [hl+], a
    jr nz, jr_090_4b88

    ld [hl+], a
    ld [bc], a

jr_090_4b88:
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    call c, RST_38
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop

jr_090_4ba2:
    ld b, b
    nop
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
    rst $00
    ccf
    add a
    ld hl, sp+$3f
    ret nz

    rst $38
    db $10
    ld a, [$ec00]
    nop
    xor $40
    ld l, [hl]
    nop
    ld [$bf00], a
    nop
    ld [hl], c
    nop
    cp c
    nop
    ccf
    nop
    rra
    nop
    rrca
    add b
    rrca
    ld d, b
    db $db
    jr nz, @-$0f

    db $10
    ld b, a
    cp b
    inc e
    rst $38
    pop bc
    rst $38
    call c, $ffe3
    ldh [$2f], a
    ldh a, [rSB]
    cp $f3
    inc c
    db $fd
    ld [bc], a
    cp $01
    cp h
    ld bc, $00ff
    ld a, a
    add b
    cp a
    ld b, b
    cpl
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    dec b
    ld a, [$fc03]
    rlca
    ld hl, sp+$02
    db $fd
    dec bc
    db $f4
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    rrca
    ldh a, [rNR22]
    add sp, $0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0b]
    db $f4
    dec bc

jr_090_4c19:
    db $f4
    rlca
    ld hl, sp+$03
    db $fc
    add d
    ld a, l
    add d
    ld a, l
    inc bc

jr_090_4c23:
    db $fc
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp a
    ret nz

    rst $30
    ld hl, sp-$39
    rst $38
    ld a, [$fffd]
    rst $38
    rst $38
    rst $38
    inc d
    db $eb
    jr z, jr_090_4c19

    jr nz, jr_090_4c23

    nop
    rst $38
    add b
    rst $38
    ld a, [c]
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    cp a
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld h, d
    rst $38
    ld [hl], b
    rrca
    xor b
    ld de, $1be4
    add h
    ld a, e
    nop
    rst $38
    inc bc
    jr nz, @+$13

    nop
    ld hl, $ee10
    ld de, $f6a9
    adc a
    ld [$00a3], sp
    inc sp
    nop
    ld hl, $f700
    jr nz, @+$08

    ld [bc], a
    nop
    nop
    jr nz, jr_090_4c84

jr_090_4c84:
    jr nz, jr_090_4c86

jr_090_4c86:
    nop
    jr nz, jr_090_4cc9

    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

jr_090_4c92:
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
    jr nz, jr_090_4c9e

jr_090_4c9e:
    nop
    nop
    nop
    nop
    jr nz, jr_090_4ca4

jr_090_4ca4:
    jr nz, jr_090_4ca6

jr_090_4ca6:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    add [hl]
    ld bc, $0040
    ldh [$90], a
    ldh a, [rNR41]
    ld a, h
    jr z, jr_090_4c92

    add e
    rst $38
    and b
    rst $38
    cp b
    rst $38

jr_090_4cc9:
    db $eb
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    rst $38
    nop
    rst $38
    add c
    ld a, a
    ld [c], a
    rra
    ld h, c
    sbc a
    or h
    res 3, [hl]
    ld h, c
    db $d3
    inc a

jr_090_4cde:
    ei
    inc c
    rst $28
    nop

jr_090_4ce2:
    rst $38
    nop
    rst $38
    nop

jr_090_4ce6:
    ld a, a
    add b
    ld a, $c1
    adc [hl]
    ld [hl], c
    rst $10
    jr c, jr_090_4cde

    jr jr_090_4d2d

    jp $936c


    ld a, [hl]
    add c
    cp $01
    rst $10
    jr z, @-$37

    jr c, @+$81

    add b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    ld l, a
    sub b
    ei
    inc b

jr_090_4d08:
    rst $18
    jr nz, jr_090_4ce2

    jr z, jr_090_4d4c

    ret nz

    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_090_4d08

    db $10

jr_090_4d1a:
    rst $38
    nop
    rst $30
    ld [$1ce3], sp
    db $ed
    ld [de], a
    ld h, e
    sbc h
    db $fd
    ld [bc], a
    rst $38
    nop
    ld [hl], a
    adc b
    ld a, a
    add b
    xor a

jr_090_4d2d:
    ld d, b
    rst $08
    jr nc, jr_090_4ce6

    nop
    cp $01
    rst $38
    nop
    inc a
    call c, $fefc
    ei
    rst $38
    rst $30
    ld hl, sp-$61
    ld h, b
    ld l, [hl]
    sub c
    ld l, $d1
    rlca
    ei
    ccf
    rst $18
    rra
    rst $38
    nop
    rst $38

jr_090_4d4c:
    ld [hl], d
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
    rra
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    xor d
    rst $38
    ld b, b
    ccf
    db $ed
    ld [de], a
    ld d, [hl]
    dec hl
    ld b, h
    cp e
    sub b
    ld l, a
    dec e
    ld [bc], a
    inc bc
    nop
    sbc $23
    ret z

    scf
    adc $bf
    cp a
    nop
    rla
    jr nz, jr_090_4d1a

    ld hl, $34bf
    sub $29
    inc c
    nop
    ld a, [hl+]
    ld [$0023], sp
    and e
    nop
    rst $28
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    rrca
    ld [$0000], sp
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0b00
    ld bc, $7f9f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    or b
    adc a
    ld b, b
    dec hl
    nop
    ld e, a
    inc bc
    ld a, a
    rrca
    ccf
    dec b
    ld a, a
    ld e, $27
    nop
    ret nz

    ld d, b
    ld [hl], b
    ld sp, $0cfe
    rst $38
    add a
    db $fd
    dec e
    rst $38
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    db $fd
    db $10
    rst $38
    ld [$02ff], sp
    rst $38
    ld bc, $023f
    or b
    rrca
    adc h
    inc bc
    ld b, $01
    ld l, a
    add b
    sbc b
    ld h, b
    call c, $fc30
    ld [$063d], sp
    ld [hl], l
    adc d
    rst $18
    jr nz, @-$5f

    ld h, b
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

jr_090_4e04:
    rst $38
    nop
    cp $00
    ei
    nop
    rst $38
    nop
    ld a, [$ff01]
    ld bc, $03fd
    db $fd
    ld bc, $01fd
    ld a, [$ff01]
    nop

jr_090_4e1a:
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

    db $fd
    ld [bc], a
    rst $30
    ld [$9867], sp
    rst $20
    jr jr_090_4e04

    jr z, jr_090_4e1a

    inc d
    ld h, b
    nop
    adc h
    ld b, b
    jr c, jr_090_4e36

jr_090_4e36:
    ld h, l
    nop
    ld a, h
    add b
    add e
    ldh a, [$fb]
    nop
    scf
    ret nz

    ccf
    ret nz

    ld l, a
    ret nz

    rst $08
    ldh a, [$e6]
    ld sp, hl
    ld [$20d5], a
    rst $18
    nop
    rst $38
    sub h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_090_4e55:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec bc
    rst $38
    ld d, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld b, b
    cp a
    ld bc, $12ff
    rst $38
    dec bc
    rst $38
    ld [hl], b
    rrca
    db $e4
    dec de
    ld h, h
    dec de
    jr nz, jr_090_4e55

    ld d, b
    rrca
    dec de
    nop
    ld b, $01
    dec b
    ld [bc], a
    dec b
    jp c, $0ff1

    rst $38
    ld bc, $01ba
    dec sp
    nop
    rst $20
    ld e, e
    cp $01
    rst $18
    ld b, b
    ccf
    nop
    ld e, a
    inc b
    rst $38
    ld bc, $01de
    rrca
    ld [bc], a
    dec bc
    nop
    ld e, $15
    rst $18
    add c
    ld e, [hl]
    ld b, c
    nop
    ld b, h
    ld b, b
    nop
    ld [bc], a
    ld b, b
    ld bc, $4dc0
    ld [c], a
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rlca
    rst $38
    ld a, h
    ld a, [$e0f8]
    ret nc

    add b
    ld bc, $01fe
    ld hl, sp-$60
    rst $38
    ld e, a
    and $02
    nop
    nop
    db $10
    ld b, b
    ld [hl], b
    nop
    ldh [$c4], a
    ld sp, hl
    ldh a, [$5e]
    nop
    rst $38
    nop
    push af
    nop
    db $fd
    db $10
    rst $30
    nop
    cp a
    nop
    rst $38
    dec b
    rst $38
    nop
    rlca
    rst $38
    and [hl]
    ld a, a
    ld b, e
    cp h
    ld c, $f0
    call c, $0c00
    nop
    ld e, h
    nop
    cp [hl]
    nop
    rra
    rra
    rrca
    rra
    rra
    rrca
    rlca
    rrca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, [hl]
    cp $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    ld hl, sp-$02
    db $fc
    ld a, [hl]
    cp $7f
    ccf
    rra
    ccf
    rra
    rra
    ccf
    rra
    rra
    ccf
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    rra
    ld c, a
    rra
    rrca
    rrca
    rrca
    inc bc
    add e
    nop
    ld e, h
    nop
    db $fc
    nop
    jr z, jr_090_4f43

    di
    rlca
    add $01
    ret


    nop
    jp hl


jr_090_4f43:
    inc c
    rst $38
    inc b
    dec sp
    jp $fb07


    nop
    rst $38
    cpl
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
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    scf
    rst $38
    ld bc, $88ff
    ld [hl], a
    nop
    rst $38
    inc c
    rst $30
    ld b, [hl]
    cp a
    ret nz

    ccf
    ld c, b
    scf
    sbc b
    ld h, a
    add h
    ld a, a
    ld c, b
    or a
    ld bc, $1036
    ld h, $ef
    ld [hl], $76
    cp a
    rst $30
    ccf
    rst $08
    ld a, [hl]
    rst $18
    ld h, $ae
    or a
    rst $30
    ccf
    ld d, a
    cp a
    ld h, $00
    ld h, $00
    ld [hl], $00
    cpl
    nop
    rst $38
    ld l, a
    rst $38
    rst $38
    ld b, $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $28
    ld [de], a
    ld a, c
    nop
    rst $38
    inc e
    db $10
    ld bc, $e000
    nop
    ld c, b
    nop
    ld h, b
    jr jr_090_4fd3

    rst $38
    rst $38
    rst $38
    rst $00
    ld a, l
    ld [$2002], sp
    ld e, $80
    ld b, b
    add d
    xor l
    inc b
    rst $28
    ld l, a
    ei
    cp c
    rst $38
    rst $20
    rst $38
    ld a, a
    rst $38
    ld a, [$e6ff]
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    dec e

jr_090_4fd3:
    ldh [$79], a
    add b
    jr jr_090_4fd8

jr_090_4fd8:
    dec b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    add b
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    add b
    xor a
    add b
    cpl
    add b
    rst $10
    nop
    xor e
    nop
    rst $30
    nop
    cp $00
    xor a
    nop
    nop
    nop
    dec bc
    rlca
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh a, [$e0]
    ldh [$e0], a
    ld hl, sp-$20
    db $fd
    ld hl, sp-$02
    db $fc
    db $fc
    cp $ff
    cp $ff
    cp $fc
    cp $7e
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    sub a
    ret z

    ld a, a
    add b
    rst $38
    nop
    cp $01
    ld a, e
    add h
    ldh [$df], a
    ldh [rIE], a
    ldh [rIE], a
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $18
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    ld a, e
    rst $18
    add hl, hl
    rst $18
    ld c, c
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, $ff
    ld [hl], b
    rst $38
    rst $38
    rst $38
    ld c, e
    ld b, b
    ld b, b
    nop
    rst $38
    db $e4
    nop
    nop
    nop
    inc h
    nop
    nop
    nop
    xor c
    ld hl, $ff08
    xor e
    rst $38
    cp a
    ccf
    rlca
    rlca
    ld bc, $0000
    cp $08
    dec d
    nop
    ld hl, sp-$01
    db $e4
    rst $38
    ret c

    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld bc, $7eff
    rst $38
    rst $00
    ld hl, sp+$43
    add b
    ret nz

    nop
    ld [hl], b
    nop
    jr jr_090_50a8

jr_090_50a8:
    ld [bc], a
    nop
    ld bc, $8000
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0400
    inc bc
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

jr_090_50df:
    rst $38
    cp $fd
    ld d, [hl]
    db $fd
    ld l, [hl]
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_090_50ec

jr_090_50ec:
    ld [$0800], sp
    nop
    scf
    rrca
    rst $38
    rst $38
    ld a, a
    cp a
    rst $38
    rst $38
    rst $30
    ld hl, sp+$5f
    ldh [rIE], a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, $c1
    jr z, jr_090_50df

    nop
    rst $38
    ld b, $ff
    ld e, d
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
    cp $ff
    cp $ff
    ld a, [$feff]
    rst $38
    cp $ff
    cp $ff
    jp nc, $d2ff

    rst $38
    ld a, [$feff]
    rst $38
    jp c, $d2ff

    ei
    jp c, $dafb

    rst $38
    cp $ff
    call c, $d8fb
    ei
    ret


    ei
    db $db
    rst $38
    ld hl, sp-$01
    ld c, h
    ei
    ld c, d
    ld sp, hl
    ld l, l
    ei
    ld a, [$49ff]
    rst $38
    db $eb
    ld l, b
    db $ed
    ld l, b
    db $fd
    ld l, b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rlca
    nop
    db $fc
    ld [hl], b
    dec [hl]
    nop
    ld bc, $05e0
    ld b, h
    dec de
    nop
    jp Jump_000_1581


    ld bc, $ffff
    cp a
    sbc d
    sbc c
    add b
    jr nc, jr_090_517c

jr_090_517c:
    ld hl, $0500
    inc bc
    add sp, -$01
    adc b
    rst $38
    dec b
    rst $38
    ld b, l
    rst $38
    inc a
    rst $38
    ret nz

    rst $38
    ld a, a
    add b
    ldh [rP1], a
    add e
    nop
    and c
    ld b, b
    jr c, jr_090_5196

jr_090_5196:
    rlca
    nop
    inc bc
    nop
    add b
    nop
    jr nz, jr_090_519e

jr_090_519e:
    nop
    nop
    db $fd
    ld [bc], a
    sbc l
    ld h, d
    ld d, [hl]
    xor c
    xor e
    ld d, h
    ld d, [hl]
    xor c
    sub a
    ld l, b
    rst $08
    jr nc, jr_090_5202

    xor h
    ld sp, $0500
    nop
    inc bc
    ld bc, $011b
    daa
    inc bc
    sbc a
    rlca
    cpl
    rra
    ccf
    rst $38
    rst $38

jr_090_51c1:
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, d
    db $fc
    ld [hl], d
    add b
    ld a, [bc]
    nop
    ld e, c
    nop
    jp c, Jump_000_0300

    nop
    inc bc
    nop
    rlca
    nop
    rst $18
    ldh [$fe], a
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
    jr nc, jr_090_51c1

    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld a, e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff

jr_090_5202:
    ldh a, [rIE]
    ret c

    rst $38
    ret z

    rst $38
    ei
    rst $38
    ret c

    rst $38
    ret nz

    rst $38
    jp nz, Jump_090_42fd

    db $fd
    ld b, h
    rst $38
    ret c

    rst $38
    add c
    db $fc
    db $10
    db $ed
    ld bc, $00ec
    db $ed
    ld b, b
    rst $38
    ei
    db $fc
    ld a, a
    db $ec
    rst $30
    ld l, h
    rst $38
    ld l, h
    ld l, a
    db $fd
    db $e3
    cp $fa
    ld h, h
    ld hl, sp-$1a
    ld a, [$7f64]
    db $ec
    ld sp, hl
    xor $ba
    ld h, [hl]
    or b
    ld h, [hl]
    cp d
    ld h, [hl]
    db $fc
    ld h, [hl]
    ld h, c
    cp $24
    nop
    ld h, b
    nop
    jr nc, jr_090_5246

jr_090_5246:
    halt
    add sp, -$80
    rst $38
    db $fc
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    ld a, a
    inc d
    ld [hl], c
    ld [bc], a
    db $fd
    ld a, b
    ei
    ld [hl], b
    ld a, [$fef8]
    ld a, [$f1ff]
    rst $38
    ld hl, sp-$01
    ld [hl], a
    rst $18
    inc b
    dec c
    nop
    cp a
    dec a
    rst $38
    ld a, h
    nop
    rst $38
    db $10
    rst $38
    dec e
    rst $38
    call z, $01ff
    cp $0f
    ldh a, [rIE]
    nop
    adc a
    nop
    nop
    nop
    inc d
    nop
    inc a
    nop
    dec e
    ld [bc], a
    rst $38
    nop
    ld a, c
    nop
    ld a, [de]
    nop
    ld b, $00
    rst $38
    rlca
    ld a, a
    rrca
    ld a, a
    rra

jr_090_5296:
    rra
    ccf
    ld e, a
    ccf
    ccf
    ld a, a
    cp a
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
    rst $38
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
    db $fc
    rst $38
    ldh a, [$af]
    ret nz

    sub a
    nop
    cpl
    nop
    add sp, $17
    ld b, b
    cp a
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or $0b
    ld de, $fffe
    rst $38
    rst $38
    rst $38
    pop af
    ld c, $e0
    rra
    add b
    ld a, a
    nop
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    or $ff
    rst $38
    rst $38
    or $fd
    add d
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld a, [bc]
    db $f4
    ld [hl], a
    adc b
    ld b, a
    cp b
    inc l
    db $d3
    inc h
    db $db
    ld c, b
    or b
    jr jr_090_5296

    ld d, b
    add b
    ret nc

    nop
    db $10
    add b
    ld b, b
    cp b
    add d
    ld bc, $01de
    ld e, a
    add c
    cp a
    ld h, c
    and c
    db $dd
    xor l
    push de
    call c, $cd01
    nop
    ld l, l
    and c
    db $ec
    nop
    sbc a
    ret z

    db $fd
    add b
    db $ec
    nop
    db $e4
    inc b
    ld h, [hl]
    inc b
    xor $02
    ld a, [hl]
    adc d
    ld [$1c1c], sp
    inc c
    ld [$080c], sp
    inc b
    ld b, b
    inc c
    ld b, h
    add b
    add b
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    dec de
    rlca
    add d
    ld c, c
    nop
    and b
    nop
    jr nz, jr_090_5366

    ldh a, [$a8]
    pop bc
    nop

jr_090_5366:
    sub l
    add d
    sbc l
    nop
    rst $38
    ld e, $ff
    or b
    db $fd
    db $fd
    ld c, e
    rst $38
    ld [$00ff], a
    rst $38
    rra
    ldh [$bf], a
    nop
    di
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    dec e
    nop
    dec b
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld a, [hl]
    nop
    rra
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
    rst $38
    db $fc
    rst $30
    ld hl, sp-$01
    ldh [$bf], a
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
    xor $11
    db $eb
    inc d
    add a
    ld a, a
    xor [hl]
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
    ld hl, sp-$01
    call nz, $04fb
    rst $38
    add b
    rst $38
    ld b, $ff
    ld d, [hl]
    rst $38

jr_090_53e8:
    ld h, e
    db $fc
    inc hl
    call c, $ee11
    ld bc, $40fe
    rst $38
    ld b, c
    cp $14
    ldh [$c6], a
    nop
    dec a
    ld b, d
    ld [hl+], a
    ld b, b
    jr z, @+$49

    add l
    ld a, d
    db $dd
    and b
    rst $38
    nop
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_090_53e8

    ld [hl+], a
    rst $28
    ld sp, $897b
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
    ret c

jr_090_541b:
    ld a, a
    ld e, [hl]
    db $fd
    ld a, d
    db $dd
    rst $18
    ld a, l
    sbc $7d
    cp $5d
    sbc a
    ld a, l
    cp h
    ld a, a
    sbc e
    ld a, l
    xor $5d
    sbc h
    ld a, a
    call z, $8c3f
    ld a, a
    cp h
    ld a, a
    db $ec
    ccf
    xor l
    ld a, [hl]
    xor [hl]
    ld a, a
    cp $7f
    rst $38
    ld a, a
    ccf
    rst $38
    jr z, jr_090_541b

    call c, $ff23
    nop
    rst $38
    nop
    scf
    nop
    scf
    nop
    inc bc
    nop
    ld c, a
    ld b, a
    ld [hl], h
    nop
    add c
    inc b
    or a
    inc bc
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    ccf
    ret nz

    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    pop af
    rrca
    rst $38
    nop
    rst $18
    jr nz, @+$80

    ld bc, $0081
    scf
    nop
    ld e, a
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$ecfd]
    di
    ldh a, [$8f]
    ret nz

    ccf
    inc b
    ei
    pop de
    ld l, $ff
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$0f

    db $10
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ret c

    daa
    cp b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38

jr_090_54b4:
    ld bc, $02ff
    rst $38
    add hl, bc
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld c, a
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
    ld de, $05ef
    rst $38
    ld bc, $61ff
    rst $38
    ld a, h
    rst $38
    xor d
    pop af
    ld h, l
    add d
    sub $29
    ld a, [bc]
    push af

jr_090_54dc:
    ld a, [bc]
    push af
    ld h, c
    cp [hl]
    rst $30
    ld hl, sp+$7f
    add b
    rst $28
    jr nc, jr_090_54b4

    ld [hl-], a
    rst $18
    jr nc, jr_090_54dc

    ld a, $5a
    db $fc
    ret z

    nop
    ld l, d
    ld [de], a
    add sp, $50
    sub b
    db $10
    ld sp, $6910
    ld d, c
    rra
    db $10
    inc e
    ret nz

    sbc a
    ld a, a
    ret nc

    rst $38
    ret nz

    rst $38
    jp nz, $c4ff

    rst $38
    and c
    cp $d9
    and $bd
    jp nz, $c2b8

    pop hl
    rst $38
    pop bc
    rst $38
    jp nz, $80ff

    rst $38
    add b
    xor a
    add [hl]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld c, [hl]
    pop af
    ld a, [$63e5]
    db $fd
    ldh [rIE], a
    ld l, b
    rst $30
    and c
    rst $38
    pop de
    rst $38
    jp nc, $f0fd

    rst $38
    ld d, l
    rst $38
    ld bc, $c1ff
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld [$00ef], sp
    rst $38
    nop
    ld b, [hl]
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
    ld c, h
    rst $38
    ld b, b
    inc bc
    db $fc
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    sbc [hl]
    ld bc, $807f
    ld c, a
    ldh a, [$03]
    db $fc
    sub d
    ld l, l
    rst $30
    ld [$817e], sp
    sub h
    ld l, e
    pop af
    ld c, $fb
    rlca
    ld a, [hl]
    add c
    rst $20
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    xor $f1
    ldh [$df], a
    nop
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
    ld b, b
    cp a
    ld hl, sp+$07
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
    ld bc, $02ff
    rst $38
    rrca
    rst $38
    ld hl, $05ff
    rst $38
    inc bc
    rst $38
    scf
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
    ld sp, hl
    cp $80
    rst $38
    call nz, Call_000_041f
    rst $38
    ld b, $ff
    daa
    rst $38
    and [hl]
    rst $38
    ret nz

    ld hl, sp-$40
    rrca
    jp nc, Jump_000_2a0f

    rst $10
    ld [$a297], a
    rst $18
    adc e
    db $f4
    ld b, d
    add b
    rst $38
    inc hl
    cp a
    jp $c3ff


    rst $38
    jp $fbcf


    ld l, d
    ldh a, [$c2]
    ld bc, $490b
    rst $20
    ld b, c
    ld b, l
    ld b, c
    ld h, e
    ld b, c
    ld hl, $4c40
    ld h, b
    dec l
    ld d, b
    ld [hl], c
    ld b, b
    ld sp, hl
    ldh a, [$1f]
    ldh a, [rIF]
    ld [hl], b
    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    sub c
    rrca
    add hl, de
    rra
    dec sp
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
    rst $28
    rrca
    rrca
    ld a, a
    rst $18
    rlca
    ld c, a
    rrca
    sbc a
    ld c, a
    cp a
    ld c, a
    cp a
    ld c, a
    ccf
    rst $08
    rra
    rst $28
    cp a
    ld c, a
    rra
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    ld c, a
    cp a
    ld a, a
    add a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    cpl
    or a
    inc bc
    rst $38
    ld bc, $017f
    rst $38
    dec d
    rst $38
    rst $30
    rst $38
    pop hl
    ld sp, hl
    ld bc, $01c5
    rst $18
    ld hl, $01ff
    pop af
    rrca
    rrca
    pop af
    pop bc
    ccf
    ei
    rlca
    db $fd
    inc bc
    xor e
    ld d, a
    or e
    ld bc, $071f
    rst $28
    rra
    rst $28
    rra
    rst $08
    ccf
    xor a
    ld e, a
    sbc a
    ld a, a
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
    ld a, a
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
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
    rst $28
    rst $38
    rrca
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    xor a
    ld e, a
    ld a, a
    rra
    ld a, a
    sbc a
    xor a
    ld e, a
    cpl
    rst $18
    cpl
    rst $18
    inc hl
    rst $00
    rrca
    rrca
    rlca
    ld c, a
    rrca
    rrca
    rlca
    rrca
    rlca
    rrca
    sla a
    jp $0303


    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    rlca
    rlca
    cpl
    add a
    adc a
    rrca
    rra
    rrca
    rra
    rra
    rra
    cp a
    ccf
    cp a
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
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_090_5738

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_090_574d

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    daa

jr_090_5738:
    jr z, jr_090_5763

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_090_5742

jr_090_5742:
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_090_5786

jr_090_574d:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    nop
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
    nop

jr_090_5763:
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
    nop
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

jr_090_5786:
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
    nop
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
    nop
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
    nop
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
    nop
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
    nop
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
    jp nz, Jump_000_00c3

    nop
    nop
    nop
    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cb00

    call z, $cecd
    nop
    nop
    nop
    nop
    nop
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    nop
    push de
    sub $d7
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    reti


    jp c, RST_00

    db $db
    call c, $dedd
    rst $18
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
    or $00
    nop
    rst $30
    ld hl, sp-$07
    ld a, [$0000]
    nop
    ei
    db $fc
    db $fd
    cp $ff
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
    inc bc
    dec b
    dec b
    dec b
    dec b
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
    ld [bc], a
    inc bc
    dec b
    dec b
    dec b
    dec b
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
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
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
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
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
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
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
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0300
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0300
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec bc
    ld a, [bc]
    ld a, [bc]
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rlca
    rst $38
    add hl, sp
    rst $18
    ld l, $df
    rra
    rst $38
    ld e, $ff
    xor a
    rst $18
    rst $08
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $28
    ld e, h
    adc a
    ld hl, sp+$0f
    ld e, h
    xor a
    inc l
    rst $08
    rra
    rst $28
    inc de
    rst $28
    nop
    rst $28
    and h
    ld c, a
    ret nz

    rrca
    sub h
    ld c, a
    call nz, Call_000_050f
    rst $28
    add hl, de
    rst $20
    db $10
    rst $20
    call nz, $e427
    rlca
    ldh [rTAC], a
    ldh [rTAC], a
    ld [bc], a
    rst $20
    inc c
    di
    jp Jump_000_2037


    rst $00
    and $03
    ldh [rTAC], a
    ld [c], a
    rlca
    or a
    ld b, e
    inc c
    di
    add a
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
    cpl
    rst $38
    rst $38
    pop af
    rst $38
    ld [de], a

jr_090_5a06:
    rst $38
    jr jr_090_5a06

    dec d
    rst $18
    nop
    ld a, [hl-]
    nop
    ld h, d
    nop
    rst $18
    rst $18
    ld h, l
    ld h, l
    rst $38
    cp c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    inc a
    ld a, l
    inc b
    ld l, b
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
    ld b, $00
    ld [bc], a
    nop
    ld [$6000], sp
    inc b
    nop
    nop
    nop
    nop
    ld c, [hl]
    nop
    ld d, h
    inc b
    jr nc, jr_090_5a3f

jr_090_5a3f:
    ld d, l
    db $10
    ld a, [hl+]
    sbc a
    or [hl]
    add c
    pop bc
    rst $28
    rst $28
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, [$f0fe]
    rst $38
    xor $f8
    jr nc, jr_090_5a96

    ld e, c
    rst $28
    cpl
    xor $e6
    rst $38
    ld h, b
    ld b, b
    add d
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    ld a, $ff
    dec a
    rst $38
    inc a
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, [hl]
    cp a
    db $fc
    ccf
    cp l
    ld a, [hl]
    cp h
    ld a, a

jr_090_5a96:
    cp $bf
    ld e, a
    rst $38
    ld e, $ff
    cp h
    ld e, a
    ld a, d
    sbc a
    dec e
    cp [hl]
    ld e, a
    cp [hl]
    cp a
    rst $18
    rrca
    rst $38
    ld l, [hl]
    sbc a
    dec hl
    sbc [hl]
    ld e, a
    sbc [hl]
    ld e, d
    sbc a
    ld e, $9f
    xor a
    rst $18
    rlca
    rst $38
    inc c
    rst $18
    ld c, h
    sbc a
    ld c, d
    sbc a
    ld c, $df
    rrca
    rst $18
    rst $38
    inc bc
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
    and b
    rst $38
    jr @+$01

    rst $38
    ld a, [$dfff]
    rst $38
    ld b, c
    rst $38
    add b
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld [$ff34], a
    ld [hl-], a
    cp a
    ld a, e
    rst $38
    rst $38
    rst $38
    db $fd
    xor e
    adc l
    cp [hl]
    add b
    ld bc, $0000
    ret z

    inc b
    ret nz

    nop
    ld [de], a
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    inc de
    nop
    inc bc
    nop
    ld bc, $0a00
    nop
    ld d, [hl]
    nop
    or c
    dec bc
    pop af
    inc b
    or c
    nop
    jr c, jr_090_5b4e

    inc bc
    sbc $3a
    rst $38
    rra
    rst $00
    rst $08
    rst $38
    rst $38
    rst $38
    ld sp, hl
    pop af
    ret nz

    ei
    ld hl, sp-$09
    ld [hl], e
    rst $28
    ld l, a
    rst $20
    set 4, b
    ld d, $ac
    dec d
    ld b, b
    nop
    ld [bc], a
    ld d, c
    inc b
    add hl, hl
    ld bc, $0285
    rst $38
    ld b, e
    rst $38
    and [hl]
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
    rst $38
    rst $38
    ld [hl], e
    rst $38

jr_090_5b4e:
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ei
    ld a, a
    di
    ld a, a
    di
    ld a, a
    rst $38
    ld a, e
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    ld a, a
    ld sp, hl
    ld a, a
    rst $38
    ld a, e
    ei
    ld a, a
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
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    inc h
    and a
    ld b, c
    ret nz

    inc h
    rlca
    add b
    rst $28
    rlca
    ld l, a
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    jp c, $b070

    cp $50
    db $fd
    cp l
    ld a, [hl-]
    adc c
    rla
    ld [c], a
    ld a, [de]
    and b
    rlca
    add b
    rlca
    ld c, b
    dec bc
    ld bc, $a548
    ld [bc], a
    cp b
    inc bc
    jr z, jr_090_5bb6

    ld b, d
    inc c
    ld d, b

jr_090_5bb6:
    rrca
    ld c, c
    rra
    adc c
    ccf
    ld e, c
    cp a
    ld a, a
    ei
    cp e
    rst $38
    ld a, a
    rst $08
    adc c
    rst $38
    db $dd
    cp $cc
    cp $8c
    db $fc
    ld sp, hl
    add sp, $10
    add d
    ld a, c
    adc $d7
    inc c
    and c
    ld sp, $6781
    rlca
    rrca
    ld c, a
    ccf
    inc e
    ld a, [hl]
    db $76
    rst $38
    db $fc
    nop
    rst $38
    and b
    rst $38
    ret c

    rst $38
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
    ld l, a
    rst $38
    db $ec
    rst $38
    ccf
    rst $38
    or l
    rst $38
    inc bc
    rst $38
    nop
    ld b, b
    nop
    ld b, h
    nop
    inc de
    nop
    pop bc
    nop
    rst $38
    sbc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cpl
    ld b, a
    rrca
    rlca
    rra
    rrca
    rst $38
    rla
    rst $30
    add a
    rst $38
    rra
    ld l, a
    xor a
    rst $18
    rrca
    rst $18
    rra
    ccf
    rra
    sbc a
    add hl, de
    rst $38
    daa
    ccf
    cp a
    cp a
    ccf
    rst $38
    sbc a
    sbc h
    sbc h
    rst $38
    db $fc
    rst $38
    cp c
    cp a
    ld de, $d8d9
    db $fd
    cp e
    cp l
    cp l
    rst $38
    rst $38
    db $fc
    ld c, [hl]
    db $fc
    ld c, h
    ld sp, $e70b
    jp $9e0f


    ld a, $7f
    ld a, a
    rst $38
    pop af
    ld [$70ff], a
    and $e1
    rst $20
    ld a, h
    rst $38
    ld l, [hl]
    rst $08
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    and c
    rst $38
    db $ed
    rst $38
    rst $38
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
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    or $ff
    or $ff
    or $ff
    or $ff
    cp $ff
    cp $ff
    or $ff
    cp [hl]
    rst $30
    or $ff
    cp $f7
    or $ff
    rst $38
    rst $38
    db $76
    rst $38
    ld a, [hl-]
    rst $30
    cp d
    rst $30
    cp e
    rst $30
    cp e
    rst $30
    rst $38
    rst $38
    or a
    rst $38
    cp d
    rst $30
    or e
    rst $38
    or a
    ei
    or a
    ei
    rst $38
    rst $38
    or d
    rst $38
    sub e
    ei
    or a
    ei
    rst $10
    ei
    cp e
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
    pop af
    rst $38
    add sp, -$01
    rst $38
    rst $38
    sub c
    ld a, a
    jp hl


    rla
    rst $38
    rst $30
    rst $38
    xor a
    rst $38
    ld a, [de]
    rst $38
    ld [$005f], sp
    nop
    nop
    ld a, l
    nop
    rst $38
    xor a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $30
    cp $fb
    cp $fb
    ld a, [$fff3]
    db $fc
    or $f8
    rst $30
    or $ff
    or $f7
    di
    push hl
    push hl
    ld sp, hl
    ld sp, hl
    rst $38
    ei
    sbc e
    add hl, de
    cp $f0
    db $fc
    sub d
    cp $1d
    ret nz

    add h
    add $82
    nop
    ld bc, $1199
    add a
    ld b, e
    sbc a
    xor $3e
    sbc h
    ld a, a
    ld a, l
    rst $38
    rst $38
    ld a, [$39fd]
    cp b
    ld c, h
    cpl
    cp $e7
    rst $38
    cp a
    cp e
    ld e, l
    rst $38
    cp c
    rst $38
    cp a
    ccf
    ld a, a
    ei
    ld [hl], c
    nop
    rst $38
    ld bc, $84ff
    rst $38
    ld a, $ff
    rst $38
    rst $38
    rst $38
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
    xor $ff
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [$efff], a
    cp $f6
    rst $28
    and $ff
    ld h, [hl]
    rst $38
    xor $ff
    ret nz

    rst $38
    add sp, -$01
    ld [hl], l
    xor $79
    and $79
    and $e6
    ld a, a
    db $ec
    rst $38
    add c
    cp $59
    and $f9
    ld h, [hl]
    sbc b
    ld h, a
    or b
    ld h, a
    ld l, d
    rst $30
    push bc
    cp $09
    or $11
    ld h, [hl]
    nop
    ld [hl], a
    ld bc, $2076
    ld [hl], a
    ld h, h
    rst $38
    adc c
    db $76
    inc b
    ld [hl], e
    ld b, c
    ld [hl-], a
    ld b, [hl]
    ld sp, $7384
    ld b, b
    rst $30
    ld c, c
    or $64
    or e
    nop
    or e
    ld b, b
    or e
    db $10
    di
    ld b, h
    di
    jp nz, $fffd

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$c1ff], sp
    cp $eb
    rst $38
    ld [hl], e
    rst $38
    nop
    rst $38
    ld [$fdfd], a
    rst $38
    rst $38
    ld [hl-], a
    rst $38
    db $10
    cp a
    db $10
    dec e
    nop
    sbc $d3
    ld [c], a
    sub b
    ldh a, [$89]
    ld hl, sp-$3c
    db $fc
    ld sp, hl
    ld hl, sp-$10
    ldh a, [$6c]
    ld a, l
    nop
    db $fc
    add d
    cp c
    ld [hl], b
    ld a, h
    ld l, d
    ld sp, hl
    ld hl, $0481
    ret nz

    adc c
    ret c

    sub b
    ret z

    ldh [$64], a
    ret z

    ret nc

    ret nz

    nop
    jr z, jr_090_5e5a

    xor l
    rlca
    inc bc
    rst $08
    cpl
    ccf
    inc sp
    rst $38
    ld a, l
    ei
    pop af
    push de
    adc e
    db $db
    rst $20
    ld a, e
    di
    rst $38
    ld d, $ff
    db $fc

jr_090_5e1c:
    ld c, a
    inc h
    ccf
    sbc $ef
    ccf
    ld sp, hl
    ld sp, $f2ff
    sbc a
    call nc, $cbf7
    cp a
    rlca
    rst $38
    adc $ff
    rst $38
    ld b, $ff
    and c
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    db $ed
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
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    and b
    rst $38
    db $e4
    rst $38
    ld h, b
    rst $38
    ld h, h
    rst $38

jr_090_5e5a:
    ld h, a
    rst $38
    rst $38
    rst $38
    add sp, -$01
    ld [$00f7], sp
    rst $38
    inc b
    ei
    add b
    ld a, a
    ld [$65f7], sp
    rst $38
    ldh [rIE], a
    ccf
    ret nz

    sbc e
    ld h, h
    ld [bc], a

Jump_090_5e73:
    push af
    adc e
    ld [hl], h
    ld a, [bc]
    ld [hl], l
    ld c, d
    ld [hl], a
    ld [$36f7], sp
    ret nz

    inc de
    ld h, b
    adc h
    ld [hl], e
    adc d
    ld [hl], l
    ret c

    ld [hl], a
    ld a, a
    rst $30
    db $e4
    rst $38
    ld h, c
    db $76
    ld b, e
    jr nc, jr_090_5ed2

    jr nc, jr_090_5e1c

    ld [hl], b
    adc a
    ld [hl], b
    rst $38
    ld [hl], a
    adc e
    ld [hl], h
    ld b, $71
    ld d, a
    jr nz, jr_090_5ea4

    jr nc, jr_090_5ea6

    inc [hl]
    db $e3
    ld [hl], b
    ld e, [hl]
    di

jr_090_5ea4:
    adc a
    ld [hl], b

jr_090_5ea6:
    ld c, e
    jr nc, jr_090_5ef4

    jr nc, jr_090_5ef6

    jr nc, @+$61

    inc h
    rst $18
    ld [hl], d
    ldh a, [rP1]
    db $fc
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld a, [hl-]
    rst $38
    inc bc
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    dec c
    rst $38
    or b
    ld a, a
    nop
    rst $38
    db $fd
    rst $38
    rst $38
    rst $18
    rst $38
    sbc d
    rst $38
    inc h
    rst $38
    sbc a

jr_090_5ed2:
    db $d3
    add hl, bc
    ld hl, sp+$64
    ccf
    ld [bc], a
    cpl
    ld c, $07
    inc d
    adc [hl]
    ld e, h
    call c, $899c
    inc sp
    add b
    jr nz, jr_090_5eeb

    add hl, de
    rst $08
    ld d, $47
    cp [hl]
    ld h, h

jr_090_5eeb:
    ld [$0309], sp
    daa
    rrca
    sbc $0f
    ld a, a
    cp [hl]

jr_090_5ef4:
    rst $30
    ld a, e

jr_090_5ef6:
    rst $38
    ld a, [c]
    rst $18
    cp a
    rst $20
    ldh [$be], a
    ld [hl], e
    rst $38
    ccf
    ld a, a
    inc b
    ld a, [hl]
    ld d, b
    inc sp
    db $10
    ei
    inc hl
    rst $20
    ld h, b
    rst $38
    jr @-$5f

    inc bc
    adc a
    ld [bc], a
    sbc a
    nop
    cp a
    dec de
    ld a, a

jr_090_5f15:
    inc c
    rst $38
    ld [$10ff], sp
    db $fc
    jr nz, jr_090_5f15

    ld b, b
    ld hl, sp-$80
    adc h
    rst $38
    rst $30
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

jr_090_5f2e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret z

    rst $38
    rra
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
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld [hl], a
    rst $38
    ret nz

    rst $38
    cp l
    ld b, b
    db $dd
    ld [hl+], a
    sbc c
    ld h, [hl]
    sub h
    ld l, e
    ld de, $0aee
    rst $30
    ld b, h
    ei
    jr nc, jr_090_5f2e

    or $00
    ei
    nop
    cp b
    ld b, b
    db $db
    nop

jr_090_5f76:
    db $76
    add hl, bc
    call nz, $e03b
    ld [$0000], sp
    nop
    ld [$00ff], sp
    db $fd
    ld [bc], a
    sbc l
    ld h, d
    ld [hl], $fb
    sbc e
    ld h, b
    ld a, [$da00]
    nop
    sbc [hl]
    nop
    sbc b
    nop
    or b
    nop
    add $39
    ld sp, hl
    nop
    cp b
    nop
    or b
    nop
    jr nz, jr_090_5f9e

jr_090_5f9e:
    and d
    nop
    jp nz, $cb00

    ld [hl], b
    and e
    nop
    jr c, jr_090_5fa8

jr_090_5fa8:
    inc de
    nop
    sub e
    nop
    add a
    inc b
    or e
    nop
    nop
    nop
    add b
    nop
    jr c, jr_090_5f76

    jp $fffc


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, @-$1f

    ld d, h
    rst $38
    ld sp, $00ff
    rst $38
    ld [bc], a
    db $fd
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rrca
    rst $18
    cpl
    ld e, a
    ld c, $7f
    ld hl, $803d
    inc b
    ld d, b
    and e
    ld c, c
    rst $28
    rlca
    sbc a
    ld c, [hl]
    ld a, a
    dec sp
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$62
    cp c
    rra
    ld [bc], a
    rra
    inc b
    rst $38
    rlca
    rst $38
    inc h
    ei
    add c
    rst $28
    ld b, d
    rst $38
    db $10
    rst $38
    add hl, de
    rst $38
    or [hl]
    rst $38
    dec hl
    rst $38
    rst $08
    rst $38
    scf
    rst $38
    ld c, h
    rst $38
    ld a, [bc]
    cp $6c
    db $fc
    ret nz

    ld [$12f0], sp
    ldh [rNR42], a
    ret nz

    ld b, b
    add b
    ld b, b
    nop
    nop
    nop
    ld [$0300], sp
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
    pop de
    rst $38
    ld bc, $36ff
    rst $38
    sbc e
    rst $38
    sbc l
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ld d, $e9
    inc d
    db $eb
    nop
    rst $38
    ld de, $00fe
    rst $38
    db $10
    rst $38
    cp l
    rst $38
    add e
    db $fc
    db $eb
    nop
    ld l, e
    db $10
    call $ce32
    ld sp, $31ce
    jp z, $0135

    cp $f8
    nop
    nop
    nop
    ld [de], a
    ld b, b
    rst $38
    jr nz, @-$0f

    db $10
    rst $28
    db $10
    ld de, $b9fe
    sbc $88
    nop
    sbc $00
    and b
    db $10
    ld b, b
    db $10
    jr nz, jr_090_6084

    ld h, b
    db $10
    ld l, d
    sub h
    adc b
    ld [$0080], sp
    stop
    nop
    db $10
    stop
    nop
    nop

jr_090_6084:
    call c, $d800
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    inc e
    nop
    sbc h
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    inc e
    nop
    inc e
    nop
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
    sub b
    ldh [$fe], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr @+$01

    dec bc
    db $f4
    ld b, c
    cp $61
    rst $38
    call c, $f1ff
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    ld a, a
    rst $38
    inc e
    rst $38
    jp nz, Jump_000_17ff

jr_090_60c8:
    sbc e
    ld bc, $002f
    sbc a
    ld [bc], a
    dec a
    jr z, jr_090_60c8

    ld b, c
    rst $18
    nop
    rst $38
    add h

jr_090_60d6:
    cp a
    ld a, [bc]
    cp a
    ld [de], a
    rst $38
    and h
    dec a
    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    ld [de], a
    rst $38
    nop
    rst $38
    ld d, a
    rst $38
    and e
    rst $38
    rst $28
    cp $7b
    db $fd
    ld a, d
    ldh a, [rIE]
    pop hl
    cp $df
    ldh [$9f], a
    ldh [$6f], a
    sub b
    rst $38
    nop
    rst $38
    nop
    inc a
    inc bc
    dec b
    ld [bc], a
    dec bc
    inc b
    ld d, a
    ld [$102f], sp
    ld d, a
    jr nz, jr_090_60d6

    nop
    add a
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    inc b
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ldh [rIE], a

jr_090_612a:
    ld sp, $66ce
    sbc a
    ld [bc], a
    rst $38
    add [hl]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc sp
    rst $38
    jp $c5fc


    nop
    ld de, $3986
    add $79
    add [hl]
    dec a
    jp nz, $8740

    add h
    ei
    jr jr_090_612a

    nop
    nop
    add d
    nop
    nop
    add d
    and $82
    rst $18
    add d
    rst $18
    add d
    rst $08
    di
    pop af
    nop
    ld bc, $e100
    ld b, $82
    add h
    add b
    add [hl]
    ld b, b
    add [hl]
    add b
    add [hl]
    ld [hl-], a
    push bc
    nop
    nop
    nop
    nop
    add d
    nop
    add b
    ld [bc], a
    add d
    nop
    add b
    ld [bc], a
    jp nz, $f302

    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    add d
    nop
    add d
    ld [hl+], a
    ret nz

    nop
    nop
    nop
    nop
    ld h, e
    add b
    ld h, e
    add b
    ld h, c
    add d
    add d
    nop
    ret nz

    ld [bc], a
    ld [bc], a
    nop
    nop
    nop

jr_090_6198:
    nop
    nop
    jr nz, @-$3e

    rst $38
    cp $ff
    rst $38
    ccf
    rst $38
    ld de, $00ff
    rst $38
    add b
    rst $38
    ld [c], a
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld b, a
    ld sp, hl
    db $f4
    ei
    rst $38
    cp a
    rst $38
    add a
    rst $38
    add a
    rst $38
    pop af
    rst $38
    jr @+$01

    ld a, [de]
    rst $38
    ld l, a
    rst $38
    ld d, e
    rst $38
    inc sp
    rst $38
    sbc [hl]
    rst $38
    dec b
    rst $38
    ld c, c
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    sbc b
    db $fc
    and b
    db $fc
    nop
    rst $18
    and b
    rst $18
    jr nz, jr_090_6198

    ret nz

    sbc a
    ldh [rNR23], a
    rst $20
    ld h, d
    sbc a
    and $1f
    cp b
    rrca
    pop hl
    ld e, $45
    ld a, [hl-]
    ld e, a
    jr nz, jr_090_622a

    ret nz

jr_090_61ec:
    rst $18
    jr nz, @-$03

    inc b
    pop hl
    rra
    pop af
    rrca
    push af
    dec bc
    ld a, [c]
    rrca
    db $f4
    rrca
    rst $30
    ld [$28d7], sp
    db $ed
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nc

    rst $38
    ld [hl], b
    cp a
    cpl
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
    pop bc
    cp $ca
    dec [hl]
    ret z

    ccf
    ld [$18ff], sp
    rst $38
    ld [$18ff], sp
    rst $38

jr_090_6224:
    rrca
    rst $38
    add c
    cp $fa
    nop

jr_090_622a:
    inc hl
    jr jr_090_61ec

    ld [$18e7], sp
    ld a, [de]
    db $fd
    xor b
    ld a, a
    ccf
    rst $38
    sub $ff
    rst $28
    nop
    push af
    ld [$18ef], sp
    ld l, $18
    xor b
    add hl, de
    ld a, [hl+]
    jr jr_090_6224

    jr @+$6c

    rst $18
    add b
    nop
    sub e
    nop
    ld a, [bc]
    jr jr_090_6267

    ld [$0818], sp
    ld [$0818], sp
    jr jr_090_6299

    sbc a
    nop
    nop
    nop
    nop
    jr jr_090_625e

jr_090_625e:
    nop
    ld [$0810], sp
    jr jr_090_626c

    jr @+$0a

    db $d3

jr_090_6267:
    inc c
    nop
    nop
    nop
    nop

jr_090_626c:
    nop
    ld [$0800], sp
    db $10
    ld [$0810], sp
    jr jr_090_627e

    dec e
    nop
    nop
    nop
    inc b
    nop
    nop
    nop

jr_090_627e:
    inc c
    nop
    nop
    inc d
    ld [$0804], sp
    ld b, $0f
    ld c, $0d
    ld c, $1f
    rrca
    ld a, a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    inc e
    db $e3
    ld [bc], a

jr_090_6299:
    db $fd
    pop hl
    rst $38
    rst $18
    rst $38
    adc h
    rst $38
    jr nc, @+$01

    pop hl
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
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$09
    rst $38
    ret nz

    rst $38
    ret nz

    res 0, b
    add d
    ld bc, $0017
    rlca
    nop
    ld a, [de]
    nop
    or b
    nop
    db $fc
    nop
    cp $00
    rst $38

jr_090_62cb:
    nop
    ld [hl], a
    add b
    rst $30
    add hl, bc

jr_090_62d0:
    ld l, c
    sub a
    ld b, $ff
    inc b
    rst $38
    sbc e
    ld a, h
    sbc [hl]
    ld [hl], b
    xor a
    ld [hl], b
    ccf
    ret nz

    xor c
    ret nz

jr_090_62e0:
    adc $b1
    jr jr_090_62cb

    sbc b
    ld h, a
    ld b, $f9
    add c
    ld a, a
    ld b, c
    cp a
    jp $fb3f


    rlca
    rst $38
    rst $38
    add sp, -$01
    ld b, c
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
    add b
    rst $38
    dec b
    ei
    ld hl, $31ff
    rst $38
    cp c
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    cp a
    rst $38
    add d
    db $fd
    rst $38
    nop
    swap h
    xor e
    ld [hl], h
    ld l, c
    or [hl]
    ld l, d

jr_090_631f:
    or l
    ld l, [hl]
    or c
    and b
    ld a, a
    ld a, b
    cp a
    cp l
    nop
    add hl, de
    nop
    add hl, bc
    jr nc, jr_090_62e0

    jr nz, jr_090_62d0

    jr nz, jr_090_631f

    or c
    xor $31

jr_090_6334:
    ld a, [c]
    ccf

jr_090_6336:
    ld h, c
    cp [hl]
    ld [de], a
    nop
    db $fc
    ld [bc], a
    db $f4
    jr nz, jr_090_631f

    jr nz, @+$63

    jr nz, jr_090_6334

    jr nz, jr_090_6336

    ld hl, $3ac5
    ld [$3e08], sp
    nop
    ld [hl+], a
    ld [hl+], a
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld h, b
    jr nz, jr_090_63b5

    ld h, b
    ld d, $10
    nop
    nop
    jr nz, jr_090_635e

jr_090_635e:
    nop
    jr nz, jr_090_6381

    jr nz, jr_090_6383

    jr nz, @+$62

    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], $00
    nop
    nop
    ld e, $20
    inc a

jr_090_636f:
    jr nz, jr_090_63ed

jr_090_6371:
    jr nz, jr_090_636f

    jr nz, jr_090_6371

jr_090_6375:
    jr nz, jr_090_6375

    nop
    cp $00
    rst $38
    nop
    rst $38
    add b
    rst $08
    ldh a, [rIE]

jr_090_6381:
    rst $38
    rst $38

jr_090_6383:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    add l
    rst $38
    ld [hl], b
    rst $38
    ld h, a
    rst $38
    db $d3
    rst $38
    ld e, b
    rst $38
    add b
    rst $38
    or a
    ld hl, sp-$02
    ldh [$bb], a
    ret nz

    cp h
    jp $ff00


    ld [$38ff], sp
    rst $38
    ld [hl-], a
    rst $38
    ld hl, $61ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ldh a, [rIF]
    ld [hl], b
    rrca
    pop hl
    ld e, $7f

jr_090_63b5:
    nop
    ld d, e
    inc l
    rra
    ld h, b
    adc a
    ld [hl], b
    sbc a
    ldh [$08], a
    rst $30
    nop
    rst $38
    ld a, [bc]
    rst $38

jr_090_63c4:
    ld b, $ff
    and $1f
    rst $28
    inc e
    ei
    inc c
    ei
    inc e
    rst $10
    jr c, jr_090_63c4

    inc a
    or [hl]
    ld l, c
    cp h
    ld b, e
    ld a, $c1
    or e
    ret nz

    rra
    ldh [rNR32], a
    db $e3
    jr @-$17

    add c
    rst $38
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

jr_090_63ed:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    inc bc
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ld l, a
    rst $38
    ld l, e
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld d, b
    rst $28
    ld d, b
    rst $28
    ld b, b
    rst $38
    ld a, h
    rst $38
    ld bc, $bffe
    nop
    xor l
    ld d, d
    sbc $61
    ld a, [c]
    ld b, l
    ld l, h
    jp $ef51


    rst $00
    rst $38
    db $fd
    rst $38
    inc bc
    db $fc
    ld a, [$b205]
    call $c3fc
    or $c1
    ld l, a
    pop bc
    rst $28
    pop bc
    rst $38
    pop bc
    ld c, a
    db $fd
    dec [hl]
    nop
    add d
    ld a, l
    ld a, a
    pop bc
    ld b, [hl]
    pop bc
    ld b, l
    pop bc
    ld b, e
    pop bc
    ld b, e
    jp $c1ff


    ld [hl], c
    adc l
    nop
    nop
    db $fd
    add c
    ld b, l
    pop bc
    push bc
    pop bc
    push bc
    pop bc
    pop bc
    pop bc
    push bc
    pop bc
    xor a
    pop af
    inc b
    ld bc, $8871
    adc c
    pop bc
    pop bc
    add c
    add e
    pop bc
    add a
    pop bc
    add a
    pop bc
    add e
    db $fd
    rst $38
    ld bc, $05fa
    pop af
    rrca
    ld c, a
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
    cp a
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    ld a, a
    ld a, a
    add d
    ld a, a
    ld b, d
    cp a
    jr nz, jr_090_64ad

    and b
    ld e, a
    sub b
    ld a, a
    jr nc, @+$01

    rst $20
    rst $38
    jp $81ff


    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, h
    cp a
    inc b
    rst $38
    adc [hl]
    ld a, a
    ret nc

    ccf
    ld b, b
    ccf
    call nz, $943b
    ld l, e
    cp h

jr_090_64ad:
    ld b, e
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    and l
    ld e, d
    ld [$52f7], sp
    xor a
    jp hl


    rla

jr_090_64bc:
    ld sp, hl
    rlca
    pop af
    rrca
    add b

jr_090_64c1:
    ld a, a
    nop
    rst $38
    inc b
    ei
    dec b
    ld a, [$609f]
    rst $18
    jr nz, jr_090_64bc

    db $10
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
    cp a
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
    cp $ff
    add hl, de
    rst $38
    ld [bc], a
    rst $38
    rst $00
    rst $38
    call nz, $c2ff
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    cp $ff
    push af
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    pop de
    rst $28
    sub b
    rst $28
    cp b
    rst $00
    sub c
    rst $28
    add b
    rst $38
    ld hl, sp-$01
    cp a
    ld b, b
    ld a, [c]
    dec c
    dec sp
    push bc
    rst $38
    add c
    rst $28
    add c
    sbc e
    add l
    rst $08
    add c
    db $eb
    add l
    inc bc
    db $fd
    add hl, sp
    nop
    call nz, Call_000_2339
    reti


    add l
    add c
    dec b
    add c
    dec c
    add c
    dec b
    add c
    cpl
    add c
    rla
    jp hl


    nop
    ld bc, $51a8
    jr jr_090_64c1

    add e
    add c
    inc bc
    add c
    inc bc
    add c
    dec b
    add e
    add hl, sp
    jp Jump_090_6b91


    ld bc, $0a00
    pop af
    inc bc
    add c
    ld bc, $0183
    add e
    add hl, bc
    add e
    dec c
    add e
    rlca
    ei
    ld [hl], b
    dec bc
    cp [hl]
    ld b, c
    jp nz, $ad3f

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld l, a
    cp a
    ld bc, $01ff
    rst $38
    add b
    rst $38
    sub a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld [$3fff], sp
    ld hl, sp+$0d
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3c], a
    ret nz

    dec sp
    ret nz

    rst $30
    nop
    ld a, a
    add b
    dec d
    ld [$c43b], a
    rra
    ldh [rNR34], a
    pop hl
    db $10
    rst $28
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    pop af
    rrca
    ld sp, hl
    rlca
    xor e
    rla
    ld a, d
    rlca
    cp h
    rlca
    rst $38
    rst $38
    pop af
    rst $38
    inc l
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    add l
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    cp $ff
    db $fc
    rst $38
    inc b
    rst $38
    ld [$80ff], sp
    rst $38
    sub c
    rst $28
    add b
    rst $38
    sub c
    rst $28
    add c
    rst $38
    add b
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    adc e
    db $fd
    ld a, e
    add l
    ld hl, sp-$79
    db $fd
    add e
    or l
    rlc l
    ei
    push bc
    ei
    add b
    ld a, a
    ld [bc], a
    db $fd
    add e
    db $fd
    ld a, a
    add c
    add hl, hl
    rst $10
    db $ed
    sub e
    ld l, l
    sub e

jr_090_6608:
    add hl, hl
    rst $10
    ld b, c
    rst $38
    ld bc, $02ff
    db $fd
    ld bc, $19fb
    rst $20
    dec d
    db $eb
    rra
    db $e3
    daa
    db $db
    inc de
    rst $28
    pop bc
    rst $38
    ld b, a
    cp e
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
    rst $18
    rst $38
    and l
    rst $38
    dec b
    rst $38

jr_090_6636:
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rlca
    rst $38
    adc a
    ld a, a
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    ldh [$1f], a
    ret nz

    rra
    cp h
    inc bc
    cp [hl]
    ld bc, $01fe
    rst $08

jr_090_6655:
    jr nz, jr_090_6636

    jr nz, jr_090_6608

    ld d, b
    and d
    ld e, l
    dec b
    ld a, [$f18e]
    adc e
    db $f4
    adc b
    rst $30
    add b
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    jr jr_090_6655

    and b
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    call z, $e7ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    jp nz, $8aff

    rst $38
    ret z

    rst $38
    jp z, $d8ff

    rst $38
    db $fd
    rst $38
    ld a, $ff
    jr z, @+$01

    db $fc
    rst $38
    jp hl


    rst $38
    pop bc
    rst $38
    sub b
    rst $38
    db $db
    rst $38
    or e
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    ld de, $edff
    rst $38
    reti


    rst $38
    sbc c
    rst $38
    jp hl


    rst $38
    sbc c
    rst $38
    jp hl


    rst $38
    db $db
    rst $38
    sbc e
    rst $38
    dec bc
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    rra
    rst $38
    cpl
    rst $38
    jr @+$01

    add b
    ld a, a
    ret nc

    ccf
    ret nc

    ccf
    ret nc

    ccf
    ld [hl], b
    cp a
    jr nc, @+$01

    jr nz, @+$01

    jr c, @+$01

    ld [hl], $ff
    ld [hl], c
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

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
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld de, $72ff
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec a
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
    cp $ff
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
    cp $fc
    rst $38
    db $fd
    cp $fd
    cp $fc
    rst $38
    db $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $fe
    db $fc
    cp $fe
    db $fc
    ld a, [$fafc]
    db $fc
    ld a, [$f8fc]
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld a, [$fefc]
    ld hl, sp-$08
    db $fc
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$f8]
    ldh a, [$f8]
    db $f4
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp-$20
    db $fc
    add sp, -$0a
    ldh [$f6], a
    di
    pop af
    ldh a, [$f1]
    add sp, -$10
    ldh a, [$f0]
    ldh [$f0], a
    add sp, -$10
    ld hl, sp-$10
    ld hl, sp-$10
    add sp, -$10
    add sp, -$10
    ldh [$f8], a
    ldh [$f8], a
    db $f4
    add sp, -$0c
    db $e4
    ldh a, [$e4]
    db $e4
    ldh a, [$f0]
    ld [c], a
    ldh a, [$e2]
    ldh [$f2], a
    ld [c], a
    ldh a, [$e0]
    ldh a, [$e0]
    pop af
    ldh [$f1], a
    ldh a, [$f3]
    ld hl, sp-$0d
    ld a, [c]
    di
    ld a, [c]
    di
    ld a, [c]
    ld a, [$faf2]
    ldh a, [$fa]
    ld a, [c]
    ld a, [$faf0]
    ld sp, hl
    cp $f9
    cp $f9
    db $fc
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    db $fd
    db $fd
    rst $38
    db $fd
    db $fd
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_090_67f7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    and a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret


jr_090_6811:
    or $d9
    and $c8
    rst $30
    pop de
    xor $c9
    or $cb
    db $f4
    rst $00
    ld hl, sp-$79
    ld hl, sp-$7b
    ld hl, sp-$7b
    ld hl, sp-$7c
    ld sp, hl
    and h
    reti


    ld bc, $0cf8
    pop af
    inc e
    pop hl
    jr jr_090_6811

    ld [$08e1], sp
    pop hl
    add hl, bc
    pop hl
    ld [hl+], a
    ret


    ld l, c
    add c
    db $eb
    add c
    inc bc
    ret


    ld b, e
    adc c
    jp $e109


    dec bc
    add e
    add hl, bc
    xor c
    inc bc
    and c
    dec bc
    and b
    dec bc
    or e
    ld [$01f9], sp
    or c
    dec bc
    ei
    rlca
    ld [hl], a
    adc a
    sbc a
    ld c, a
    ld c, a
    sbc a
    adc a
    rra
    rra
    rra
    rra
    rra
    sbc a
    rra
    ld e, a
    rra
    ld e, a
    rra
    rra
    rra
    rra
    rra
    ld e, a
    rra
    ld a, a
    rra
    ccf
    rra
    ccf
    rra
    rra
    rra
    rra
    ccf
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    ccf
    ccf
    ccf
    ccf
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
    ccf
    ccf
    ccf
    ld e, a
    ccf
    rra
    ld a, a
    rst $08
    ld a, a
    adc a
    ld a, a
    adc a
    ccf
    adc a
    ccf
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    rra
    adc a
    ld c, a
    adc a
    ld c, a
    adc a
    rrca
    adc a
    rrca
    adc a
    rrca
    adc a
    rrca
    adc a
    rrca
    adc a
    rrca
    adc a
    rrca
    ld a, a
    adc a
    ld l, a
    sbc a
    cpl
    rst $18
    cpl
    rst $18
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    add hl, de
    db $fd
    sbc c
    ld sp, hl
    ei
    db $fd
    rst $38
    cp $ff
    db $fc
    db $fd
    cp $ff
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
    rst $20
    ld h, c
    pop af
    ld h, c
    di
    ld h, c
    di
    ldh [$e3], a
    ld h, c
    di
    ld h, c
    ld a, [c]
    pop hl
    db $e3
    ld [c], a
    pop hl
    jp nz, $c2f3

    ld [c], a
    ld [c], a
    db $e3
    jp nz, $c2e3

    ld [c], a
    jp nz, $c2f2

    and $c2
    db $db
    and $c9
    or $da
    and $f8
    add $ca
    db $e4
    db $fc
    ret nz

    ret c

    pop bc
    pop de
    jp $c7f3


    and a
    rst $08
    adc a
    rst $18
    rra
    cp a
    rst $38
    ccf
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $bf
    cp $bd
    cp $fd
    cp $fd
    cp $fd
    cp $ff
    db $fc
    cp $fc
    db $fd
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fe
    db $fd
    rst $38
    db $fc
    ld sp, hl
    db $fc
    reti


    call c, $dcdb
    sbc [hl]
    reti


    jp $c784


    add c
    add a
    rst $00
    rst $00
    rst $20
    rst $28
    rst $20
    rst $20
    rst $28
    and a
    rst $28
    rst $38
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
    ld de, $0202
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_090_69e5

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_090_69d6

    ld [bc], a
    ld [bc], a

jr_090_69d6:
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_090_6a08

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [bc], a
    ld [bc], a

jr_090_69e5:
    ld l, $2f
    jr nc, jr_090_6a1a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_090_6a2a

    ld a, [hl-]
    dec sp
    ld [bc], a
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

Jump_090_69ff:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_090_6a08:
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
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_090_6a1a:
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

jr_090_6a2a:
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

    push bc
    add $c7
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, Jump_000_02d3

    ld [bc], a
    ld [bc], a
    ld [bc], a
    call nc, $d6d5
    rst $10
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
    jr jr_090_6af4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_090_6b04

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_090_6b14

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $02
    ld [bc], a
    nop
    nop

jr_090_6af4:
    nop
    nop
    nop
    nop
    ld bc, $0300
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop

jr_090_6b04:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop

jr_090_6b14:
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0201
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0307
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0701
    inc bc
    dec b
    dec b
    inc bc
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0307
    dec b
    dec b
    inc b
    inc b
    inc b
    ld [bc], a

Jump_090_6b91:
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0307
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
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
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0200
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld [$0808], sp
    ld [$0a08], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [$0a08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a09], sp
    rrca
    ld c, $0f
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    adc a
    ld [hl], b
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    and a
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rlca
    rst $38
    rlca
    rst $30
    sub a
    rst $20
    inc bc
    rst $38
    adc e
    rst $30
    ld b, a
    rst $30
    inc sp
    rst $38
    ld bc, $1aff
    rst $20
    ld b, $f3
    ld d, $e3
    ld b, $f3
    inc bc
    rst $30
    nop
    rst $38
    add b
    ld a, e
    add b
    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld [bc], a
    di
    inc bc
    ld [hl], a
    ld bc, $247b
    db $db
    nop
    ld [hl], e
    ld a, e
    ld [hl], e
    ld a, a
    ld [hl], e
    ld a, a
    ld [hl], a
    ld [hl], l
    ld a, a
    ei
    ld a, a
    cp c
    ld a, a
    dec [hl]
    ld a, a
    ld [hl], l
    ld a, a
    add hl, bc
    ld [hl], c
    ld bc, $0679
    ld a, c
    ld b, e
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    nop
    rst $38
    ld b, b
    ccf
    sub h
    inc bc
    rst $38
    nop
    db $fc
    nop
    ret nz

    nop
    ld bc, $ff00
    rst $38
    ld a, [c]
    ldh a, [$97]
    add [hl]
    rst $38
    sub e
    ld a, [hl]
    dec h
    db $fc
    ld h, b
    xor b
    nop
    add b
    add b
    ld b, d
    inc b
    adc b
    nop
    ld [hl-], a
    nop
    ld b, $42
    ld e, d
    ld h, c
    ld c, h
    inc b
    di
    ld b, b
    add b
    inc d
    nop
    add hl, bc
    add d
    nop
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ld sp, hl
    jp hl


    di
    ld sp, $3373
    rst $38
    add e
    add $00
    inc b
    nop
    db $10
    inc b
    jp nz, $d104

    db $10
    ei
    call nz, $c4c1
    ld l, b
    nop
    ld bc, $0630
    ld [hl+], a
    inc l
    ld bc, $80ff
    rst $38
    scf
    rst $38
    pop af
    ld hl, sp+$00
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    inc bc
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
    rrca
    rst $38
    ld c, a
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    db $fd
    cp a
    ld e, l
    cp a
    dec a
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    dec e
    rst $38
    dec e
    cp a
    ld e, c
    cp a
    reti


    cp a
    sbc c
    rst $38
    rra
    rst $38
    dec e
    rst $38
    inc a
    rst $18
    ld a, [hl]
    sbc l
    ld e, [hl]
    sbc l
    ld e, a
    sbc l
    ld e, a
    rst $38
    ld c, $ff
    ld e, [hl]
    cp l
    ld e, $9d
    ld c, [hl]
    sbc l
    inc e
    rst $18
    cpl
    rst $18
    rrca
    cp $0d
    sbc $0d
    sbc $0e
    db $dd
    rst $18
    inc c
    rst $18
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    inc bc
    db $fc
    daa
    ret nc

    push af
    nop
    jr jr_090_6dbc

jr_090_6dbc:
    nop
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    ld c, a
    db $fd
    cp b
    ret nc

    add b
    nop
    inc c
    nop
    ld c, $00
    nop
    nop
    ld a, [hl-]
    nop
    ld a, [de]
    nop
    adc [hl]
    nop
    ld l, $00
    inc e
    ldh a, [rP1]
    cp $b2
    scf
    nop
    ld c, $4c
    add hl, de
    ld de, $7fff
    rst $38
    rst $38
    rst $38
    rst $38
    res 1, b
    db $fc
    ld sp, hl
    db $fc
    db $fc
    cp $fc
    cp $90
    ld hl, sp+$60
    nop
    ld [$0102], sp
    jr nz, jr_090_6dfb

    rlca

jr_090_6dfb:
    nop
    rst $38
    rrca
    rst $38
    ld d, $fb
    ld [hl], b
    ld a, b
    ld b, b
    ld c, e
    nop
    ld a, b
    add h
    rra
    nop
    rst $38
    dec e
    rst $38
    cpl
    rst $38
    add [hl]
    ld [$c400], sp
    nop
    call nz, $ff00
    nop
    db $e3
    rra
    db $fd
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $d0
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    pop de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    call z, $ccff
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $ccff
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    rst $38
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fb
    ret nc

    push bc
    adc b

jr_090_6e8a:
    add c
    db $10
    ld b, a
    nop
    add hl, de
    ld bc, $ffff
    cp $60
    ld [bc], a
    nop
    nop
    add hl, hl
    nop
    jr z, jr_090_6e9b

jr_090_6e9b:
    ld a, [bc]
    nop
    jr z, jr_090_6e9f

jr_090_6e9f:
    stop
    nop
    nop
    ld b, b
    nop
    ld l, h
    nop
    ld h, d
    ld [$5800], sp
    nop
    ld c, h
    ld c, b
    ld c, a
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $20
    ldh [$e3], a
    and b
    inc l
    ld hl, $207e
    add c
    nop
    ld de, $2004
    jr z, jr_090_6ec5

jr_090_6ec5:
    jr z, jr_090_6e8a

    ld de, $040f
    cp b
    ld hl, $80d8
    inc hl
    nop
    ld [hl], c
    ld hl, $0303
    rra
    rlca
    rst $38
    rra
    rst $38
    rst $08
    ei
    pop de
    ld [hl], h
    nop
    pop af
    add b
    ld c, $19
    ld a, [hl+]
    add hl, sp
    ld e, a
    jr c, @-$47

    ld a, b
    cp $f8
    ld [hl], a
    db $fc
    rst $28
    db $fc
    ei
    db $fc
    rst $20
    ld hl, sp+$3f
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    call nz, $faff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    sbc c
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ret c

    rst $38
    ld hl, sp-$23
    sbc $fd
    db $db
    db $fd
    ld sp, hl
    rst $38
    rst $18
    db $fd
    db $fc
    db $dd
    call z, $dcdd
    rst $18
    sbc $fd
    ld hl, sp-$01
    call c, $edfd
    call c, $fccd
    call z, $fcfc
    rst $38
    sbc $fd
    call $cdfc
    db $fc
    adc $fd
    call z, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add h
    rst $38
    ld a, [hl]
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    rst $20
    nop
    ld [hl+], a
    nop
    jp $ee20


    inc b
    rst $38
    rst $38
    rst $38
    ld a, [c]
    adc d
    nop
    nop
    ld [de], a
    nop
    dec de
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $00
    inc d
    nop
    ld [bc], a
    nop
    inc [hl]
    inc bc
    ld b, b
    inc c
    nop
    ld c, l
    nop
    cp a
    rra
    rst $38
    rst $38
    rst $38
    db $fd
    pop af
    pop af
    ld a, b
    ld h, b
    rla
    ld b, d
    rst $38
    ld b, $e0
    nop
    add c
    nop
    ld a, [c]
    inc b
    add b
    add e
    inc e
    adc h
    ei
    dec b
    di
    adc c
    nop
    nop
    rrca
    ld b, c
    rst $38
    ld h, a
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
    ei
    ld [hl], c
    inc sp
    inc bc
    rst $28
    add a
    add hl, bc
    nop
    xor c
    nop
    add c
    nop
    ld l, c
    inc bc
    ld sp, hl
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
    db $fd
    ld [bc], a
    ld h, a
    sbc b
    ld bc, $05fe
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
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
    db $fd

jr_090_6ff3:
    rst $38
    cp l
    rst $38
    call c, $fdff
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    sbc d

Jump_090_6fff:
    db $fd
    sbc e
    db $fc
    ret c

    rst $38
    sbc h
    rst $38
    ld hl, sp-$01
    ld [bc], a
    db $fd
    and h
    db $dd
    and b
    db $dd
    and b
    db $dd
    ldh [$dd], a
    sub d
    db $fd
    jr nz, jr_090_6ff3

    add b
    call c, $ce50
    add h
    call c, $dd80
    nop
    db $fd
    cp $dd
    rst $38
    db $dd
    cp $dc
    cp $dc
    db $fd
    sbc $fa
    db $fd
    rst $28
    call c, $cddf
    rst $38
    call z, $ccfe
    db $fd
    cp $fc
    rst $38
    cp $ec
    cp $fc
    db $fc
    xor $dc
    xor $fc
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ld [de], a
    inc b
    add hl, bc
    nop
    rst $28
    ldh [rIE], a
    cp a
    db $fd
    ldh a, [$e0]
    ld b, b
    db $fc
    db $10
    dec b
    ld hl, $3800
    nop
    add hl, sp
    nop
    ld c, $00
    ld h, $00
    inc bc
    nop
    adc a
    nop
    and b
    nop
    ld h, b
    ld bc, $5d10
    ld bc, $73f7
    rst $38
    rst $38
    db $fc
    db $f4
    ld h, a
    ld h, $ee
    add b
    ret nz

    ld b, b
    ldh [rSC], a
    rst $00
    ld [bc], a
    ld c, [hl]
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    rlca
    add b
    add c
    inc h
    nop
    ld h, b
    nop
    ld b, d
    db $fc
    ld hl, sp-$01
    db $fd
    rst $38
    rst $30
    rst $28
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld hl, $00f9
    pop af
    add b
    cp $3e
    ei
    ld [hl], c
    ld b, c
    nop
    ld a, [hl-]
    nop
    sbc a
    add b
    cp a
    add b
    xor $c1
    db $f4
    ldh [$b6], a
    ld a, c
    sbc a
    ld a, $ff
    ld e, $ff
    rrca
    ld a, a
    add a
    inc h
    db $db
    add c
    ld a, [hl]
    ld b, b
    cp a
    db $10
    rst $28
    nop
    rst $38

jr_090_70d0:
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add h
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
    db $db
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    call c, $d0ff
    rst $38
    inc de
    db $ec
    db $10
    xor $11
    xor $10
    xor $81
    cp $03
    db $fc
    ld a, $c0
    inc e
    jp nz, $c20c

    jr c, jr_090_70d0

    db $fd
    xor $d5
    cp $b6
    ret z

    xor [hl]
    ret nz

    cp [hl]
    ret nz

    ccf
    ret nz

    db $d3
    cp $bf
    ret z

    xor [hl]
    ret nz

    inc l
    jp nz, $a04e

    cpl
    pop hl
    rst $08
    db $ec
    or [hl]
    ret z

    ld l, [hl]
    ret nz

    ld h, [hl]
    add b
    ld b, [hl]
    and d
    ld l, a
    and b
    and a
    ld [$807e], a
    adc $a0
    adc $20
    add [hl]
    ld h, b
    and a
    ld h, c
    ret z

    nop
    ret nz

    nop
    rst $38
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    di
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
    push hl
    ld e, a
    jr nz, jr_090_71b8

    inc b
    rst $38
    ld a, b
    rst $38
    cp a
    rst $38
    ld a, $3f
    ccf
    rst $38
    rrca
    add a
    rlca
    ld d, e
    inc bc
    ld sp, $0100
    nop
    ld [bc], a
    ld de, $e000
    inc bc
    ld a, [de]
    dec bc
    ld bc, $075f
    ld a, a
    ld h, [hl]
    cp $fc
    rst $20
    ld [c], a
    ei
    ret z

    sbc a
    dec bc
    ldh a, [rP1]
    ld sp, $0020
    call nz, Call_000_2300
    ld sp, $0008
    add c
    ld a, l
    ld [$e1f3], sp
    scf
    inc bc
    adc a
    rlca
    sbc a
    rra
    ld a, [hl]
    cp l
    ld a, a
    ld a, [hl]
    rst $38
    cp $f7
    rst $20

jr_090_719e:
    rst $30
    or [hl]
    rst $38
    cp a
    sbc a

jr_090_71a3:
    ld h, $ef
    daa
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $30
    ccf
    rst $38
    rst $38
    inc l
    ld c, $9f
    ld e, $4f
    rrca
    di
    rlca

jr_090_71b8:
    cp e
    ld bc, $807d
    ld a, a
    add b
    rst $18
    ldh [rIE], a
    jr nc, jr_090_719e

    cp h
    db $fd
    cp $ff
    cp $f6
    rrca
    ld [de], a
    rst $28
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$05
    ld a, [$fb04]
    ld e, e
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
    ldh [rIE], a
    ldh [rIE], a
    db $e4
    rst $38
    ldh [rIE], a
    push hl
    rst $38
    db $ec
    rst $38
    ld a, [bc]
    db $f4
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_090_71f8:
    ld [$3dff], a
    ret nz

    pop de
    jr nz, jr_090_71a3

    ld c, c
    cp e
    ld b, b
    ld hl, sp+$00
    db $10
    rst $28
    ld b, b
    and b
    stop
    stop
    stop

jr_090_720e:
    db $10
    jr nz, jr_090_725a

    or $2f
    call nz, Call_000_00f4
    db $eb
    jr nz, jr_090_720e

    add b
    ld sp, hl
    ld [$00f7], sp
    ld [c], a
    add d
    db $e4
    nop
    ld d, b
    nop
    ld d, b
    nop
    stop
    ld hl, sp+$00
    db $e4
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld h, b
    jr nz, jr_090_71f8

    ld b, c
    jr nz, jr_090_723a

jr_090_723a:
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    nop
    add d
    nop
    nop
    ret nc

    nop
    push bc
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
    cp a
    rst $38
    ld a, a
    sub a
    rlca

jr_090_725a:
    db $d3
    add e
    cp a
    ld hl, $24fe
    sub $c0
    ld [$f6c0], a
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    sbc c
    xor $64
    rst $38
    inc sp
    ei
    ld c, $f8
    ret nc

    ld [hl], c
    nop
    or b
    inc b
    nop
    inc b
    ld bc, $0311
    add e
    daa
    inc d
    rra
    ld c, $9f
    ld e, $39
    ld a, b
    ld h, e
    pop hl
    rst $28
    pop hl
    rst $38
    ld hl, sp-$0b
    or b
    ld a, h
    jr z, @+$81

    rst $38
    rst $38
    ld c, $bf
    rra
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    db $10
    rst $38
    add hl, hl
    rst $38
    ld b, $ff
    call Call_000_2fff
    rst $38
    rrca
    rst $38
    inc de
    ld a, [bc]
    nop
    inc b
    ld [bc], a
    jp $ef86


    rst $00
    ld [hl], a
    add a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [bc]

jr_090_72c4:
    ei
    inc b
    add sp, $17
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
    add b
    rst $38
    add d
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    ld a, [$dd22]
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld a, [bc]
    push af
    ld c, h
    add b
    ld de, $53ae
    xor h
    jr nc, jr_090_72c4

    nop
    rst $38
    ld b, $f9
    nop
    ld bc, $0086
    ld c, d
    nop
    db $eb
    ld d, h
    db $fd
    ld b, d
    jp hl


    ld [hl], a
    db $f4
    inc b
    or h
    nop
    or $00
    sub $00
    adc $0a
    xor a
    ld [hl], e
    ld h, b
    jr nz, jr_090_7315

jr_090_7315:
    nop
    ld [bc], a
    ld [bc], a
    ld b, d
    nop
    ld c, d
    ld [$404a], sp
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    stop
    nop
    nop
    ld h, $00
    ld h, b
    nop
    dec hl
    nop
    jr nz, jr_090_7340

jr_090_7340:
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
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    ld [$fff0], sp
    ld [de], a
    db $fc
    inc c
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr jr_090_7382

    jp z, $8080

    nop
    ret nz

    nop
    ld [hl], b
    nop
    or b
    ld [bc], a
    ret nz

    nop
    add l
    nop
    sub c
    ld bc, $03f7
    rst $00
    rlca
    ld e, a
    add hl, hl
    dec a
    ld a, [de]

jr_090_737a:
    ld a, b
    jr nc, jr_090_737a

    jp $b7e7


    add a
    add b

jr_090_7382:
    rst $38
    sub c
    rst $18
    rra
    ld a, a
    ld a, a
    ld a, a
    ld h, [hl]
    ld a, a
    ld a, a
    rst $38
    ld l, l
    ccf
    scf
    ld a, $10
    rst $30
    nop
    rst $18
    nop
    rst $18
    ld bc, $86ff
    ld a, a
    ld h, $ef
    dec c
    rst $38
    ld e, e
    rst $38
    sbc e
    rst $38
    or e
    rst $38
    ld h, a
    rst $38
    db $fc
    rst $38

jr_090_73a9:
    cp $ff
    sbc h
    db $fc
    inc a
    db $fc
    ld a, b
    rst $38
    nop
    rra
    rra
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    or e
    ld c, h
    sbc b
    ld h, a
    add d
    ld a, l
    add b
    ld a, a
    add b
    ld a, a
    jr nz, jr_090_73a9

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
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
    ret nc

    xor h
    ld b, e
    ld bc, $01ff
    rst $38
    ld bc, $20ff
    rst $38
    and b
    rst $38
    pop de
    nop
    ld d, l
    ld [hl+], a
    or c
    ld a, a
    db $e3
    rst $38
    ld [hl], c
    rst $38
    rst $38
    rst $38
    ld d, a
    xor b
    db $db

jr_090_73fb:
    jr nz, jr_090_73fb

    ld bc, $21df
    xor [hl]
    ld [hl], c
    xor $31
    ld h, a
    sbc b
    nop
    nop
    ld [hl], e
    db $10
    ld [hl], e
    nop
    ld [hl], e
    nop
    ld [hl], d
    ld bc, $807f
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $2100
    jr nz, jr_090_743e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
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
    add c
    nop
    add c
    nop
    adc c
    nop

jr_090_743e:
    jp $ff00


    nop
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
    rst $20
    nop
    add c
    nop
    rst $38
    db $10
    ei
    db $f4
    dec sp
    rst $38
    ld [$00ff], sp
    inc e
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    db $eb
    db $eb
    ccf
    ccf
    rrca
    adc [hl]
    rra
    rra
    ccf
    ld hl, $417b
    rst $18
    add $8f
    add c
    rst $30
    dec b
    rst $00
    ld d, $8e
    ld b, b
    rst $38
    ld [$2c7f], sp
    rst $38
    or a
    rst $38
    ld h, a
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$fe41], sp

jr_090_7492:
    ld [de], a
    db $fc
    jr nz, jr_090_7492

    ld [hl], h
    ld hl, sp+$18

jr_090_7499:
    ldh a, [$e8]
    ldh a, [$8f]
    ldh a, [$c9]
    ldh a, [$90]
    ldh [$39], a
    ret nz

    dec sp
    ret nz

    ccf
    ret nz

    inc a
    jp Jump_000_01fe


    rst $38
    nop
    xor [hl]
    ld bc, $00ff
    adc l
    ld a, [c]
    db $fd
    cp $ff
    rst $38
    ei
    rst $38
    db $fd
    ccf
    ld a, a
    cp a
    rra
    rst $38
    rrca
    rst $38
    ld b, a
    cp a
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
    nop
    rst $38
    nop
    rst $38
    jp nz, Jump_090_6fff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    cp d
    nop
    ret nz

    ccf
    adc h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    xor [hl]
    rst $38
    nop
    rst $38
    jr nz, jr_090_74f8

    ld d, e
    adc h
    ld h, e
    sbc h
    ld h, d
    sbc l
    ld l, c
    sbc [hl]
    nop
    rst $38

jr_090_74f8:
    nop
    nop
    inc b
    add b
    db $10
    add h
    nop
    inc b
    ccf
    add h
    xor [hl]
    rst $10
    ld d, a
    and b
    and h
    jr nz, jr_090_7499

    inc d
    sub b
    inc b
    sbc h
    inc b
    sub d
    inc b
    rst $18
    ld h, $00
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    inc b
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
    add d
    nop
    add [hl]
    inc b
    add h
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    rlca
    rst $38
    rst $38
    ld [de], a
    rst $38
    nop
    cp h
    ld h, $d9
    nop
    rst $38
    db $10
    db $e3
    rst $38
    inc hl
    rst $38
    jr nz, @+$01

    nop
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    ccf
    rst $38
    cp a
    rst $18
    ccf
    rst $38
    ld a, $ff
    ld a, d
    rst $38
    ld e, [hl]
    rst $38
    cp $ff
    cp $01
    cp $00
    rst $38
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld hl, $0280
    ld bc, $0043
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$1c00], sp
    nop
    sbc a
    nop
    rst $38
    nop
    rst $18
    nop
    ld a, $00
    sbc $20
    rra
    ldh [$7f], a
    ret nz

    ld a, l
    jp nz, $ef90

    ld hl, sp-$79
    cp a
    ld b, b
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rst $38
    ret nz

    rst $38
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
    db $e4
    rst $38
    ld sp, hl
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
    ld d, e
    rst $38
    inc bc
    cpl
    rst $38
    and e
    rst $38
    daa
    rst $38
    cp a
    rst $38
    cp h
    rst $38
    add b
    ld a, a
    inc c
    di
    and c
    ld a, a
    jr nz, @+$01

    ld sp, $20ef
    rst $38
    add h
    ld a, e
    inc hl
    nop
    ld [hl], $21
    ld c, h
    and e
    ld b, d
    ld hl, $67b9
    cp l
    rst $38
    rst $18
    jr nz, jr_090_7626

    jr nz, @-$48

    ld hl, $21b7
    rst $30
    ld hl, $21ff
    sbc a
    ld hl, $0000
    db $10
    ld hl, $2121
    ld hl, $2121
    ld hl, $23b7
    nop
    nop
    dec b
    nop
    jr nz, @+$03

    jr nz, @+$03

jr_090_7626:
    ld bc, $0121
    ld hl, $013d
    nop
    nop
    ld hl, $3100
    nop
    add hl, sp
    ld bc, $0139
    dec a
    ld bc, $0000
    ld hl, $b100
    ld hl, $0139
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

    ld a, a
    rst $38
    inc hl
    rst $38
    nop
    sbc a
    inc b
    rst $38
    inc b
    rst $28
    db $fc
    rst $30
    cp $5f
    cp $0f
    rst $38
    ccf
    rst $38
    jr jr_090_7661

jr_090_7661:
    rst $38
    ld b, c
    cp $07
    ld hl, sp+$04
    ei
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $19ff
    rst $20
    ld a, $c3
    ld a, h
    add e
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$42bd], sp
    and e
    ld e, h
    jr nz, @+$01

    jr nc, @+$01

    ld hl, $49ff
    rst $30
    ld [$85f7], sp
    ei
    ld a, l
    add e
    db $fc
    inc bc
    db $f4
    dec bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ccf
    nop
    rrca
    nop
    xor d
    dec b
    rst $10
    ld [$08ff], sp
    rst $38
    ld [$14fb], sp
    pop af
    ld e, $f1
    ld e, $d4
    dec sp
    and [hl]
    ld a, c
    ccf
    ldh [$3f], a
    ldh [$c0], a
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
    ld [bc], a
    rst $38
    dec bc
    rst $38
    cpl
    rst $38
    ld a, $ff
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

jr_090_76d7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
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
    rst $00
    rst $38
    inc h
    rst $18
    ld b, $ff
    ld d, $ff
    ld b, $ff
    dec d
    rst $38
    sub a
    rst $38
    jr nz, jr_090_76d7

    ld h, b
    sbc a
    inc b
    cp a
    ld h, h
    sbc a
    ld h, h
    sbc a
    ld h, h
    sbc a
    inc h
    rst $38
    db $76
    ld bc, $17a8
    adc [hl]
    inc b
    sub a
    inc b
    adc a
    inc b
    inc d
    adc a
    ld l, a
    rst $30
    xor b
    rlca
    rst $38
    inc b
    sbc a
    inc c
    sbc a
    add h
    sbc a
    inc d
    or $1f
    db $dd
    ld [bc], a
    db $fc
    rlca
    rst $18
    ld b, h
    rla
    inc c
    rra
    inc b
    ld e, $04
    or h
    rst $08
    adc a
    add b
    db $fd
    ld b, $0f
    inc b
    dec e
    inc b
    dec e
    inc b
    sbc a
    inc b
    db $fd
    add d
    db $fd
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b

jr_090_7740:
    nop
    ld b, $00
    add h
    ld [bc], a
    inc h
    ld bc, $1f02
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    rst $38
    inc h
    rst $38
    dec b
    rst $38
    inc h
    adc a
    nop
    add e
    sub b
    nop
    ld b, d
    cp c
    add c
    ld a, a
    ccf
    rst $38
    rst $20
    ccf
    jp nc, $682f

    sub a
    ld [bc], a
    rst $38
    add a
    rst $38
    cp $ff
    inc e
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub b
    ld a, a
    add b
    ld a, a
    rst $20
    jr jr_090_7740

    ld a, [hl-]
    ld [c], a
    dec a
    and b
    ld a, a
    ld h, a
    rst $38
    ld b, a
    rst $38
    ret


    rst $30
    xor c
    rst $10
    sub c
    rst $28
    ld sp, hl
    rlca
    cp c
    ld b, a
    ld [hl], h
    adc e
    ld a, [bc]
    rst $30
    ld [c], a
    rra
    ld a, [$f807]
    rlca
    ld hl, sp+$07
    ld sp, hl
    ld b, $fb
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $08

jr_090_77a3:
    jr nc, jr_090_77ec

    cp b
    rrca
    ld hl, sp+$07
    ld hl, sp+$17
    ld hl, sp+$11
    cp $d7
    jr c, jr_090_77b1

jr_090_77b1:
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
    nop
    rst $38
    ld bc, $21ff
    rst $38
    dec b
    rst $38
    ld a, e
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    add hl, de
    rst $38

jr_090_77ec:
    inc d
    rst $38
    jr c, @+$01

    ld e, $ff
    add hl, de
    rst $38
    ld b, b
    cp a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    ld a, [de]
    rst $38
    ld h, b
    sbc a
    jr nz, jr_090_77a3

    ldh a, [$1f]
    call c, $e433
    dec de
    inc [hl]
    dec de
    ld d, b
    cp a
    add b
    rra
    xor $1f
    rst $10
    ld a, $d0
    ccf
    pop af
    ccf
    di
    ld a, $7f
    cp [hl]
    ld [$bf1f], a
    ld a, $30
    ccf
    ld hl, sp+$77
    cp b
    scf
    push af
    ccf
    cp $3f
    ld a, [hl+]
    sbc a
    cp l
    ld a, $fa
    dec a
    ld bc, $0d3c
    ld [hl-], a
    inc b
    dec sp
    inc sp
    adc h
    nop
    rst $38
    rlca
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
    adc a
    rst $38
    dec c
    rst $38
    db $10
    rst $08
    ld [bc], a
    db $fd
    db $10
    rst $38
    ld d, b
    cp a
    and b
    ld e, a
    ret nz

    ccf
    db $e4
    dec de
    cp $01
    rra
    ldh [$0e], a
    pop af
    cp [hl]
    ld h, c
    ld [hl], a
    rst $38
    ld b, a
    rst $38
    ld d, b
    rst $38
    ld [hl], a
    rst $38
    ld b, e
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld e, b
    and a
    and h
    db $db
    add b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld hl, $20de
    rst $18
    adc c
    rst $38
    inc de
    rst $38
    ld b, $ff
    pop hl
    ld e, $f1
    ld c, $e1
    ld e, $e1
    ld e, $d1
    ld l, $f8
    ld b, $ff
    nop
    cp $01
    ldh a, [rIF]
    and b
    ld e, a
    sub b
    ld l, a
    db $fc
    rlca
    nop
    rst $38
    inc c
    rst $38
    ld d, $ff
    ld [$2fff], sp
    rst $38
    ld [hl], h
    rst $38
    ld [hl], a
    rst $38
    ccf
    rst $38
    rst $38
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
    rst $28
    rst $38
    ld a, a
    rst $38
    dec e
    rst $38
    dec sp
    rst $38
    ld h, c
    rst $38
    ld c, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld c, e
    rst $38
    ld hl, $2dff
    ei
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    jp Jump_090_69ff


    rst $38
    ld bc, $39ff
    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    add e
    ld a, a
    ld b, e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    jp $c3ff


    rst $38
    inc bc
    rst $38
    adc a
    rst $38
    sbc a
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
    adc a
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    sub h
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    add a
    rst $38
    adc e
    rst $30
    ld a, [hl+]
    push de
    nop
    rst $38
    call nz, $feff
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld a, a
    add e
    ld a, [hl]
    add e
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    rrca
    ld a, [c]
    nop
    rst $38
    add b
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld sp, $3dcf
    jp $01ff


    cp $01
    cp $01
    ld a, [hl]
    ld bc, $01fe
    cp $01
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    rst $38
    ld a, a
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
    cp $ff
    cp $ff
    cp $ff
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    cp $fe
    rst $38
    ld a, [$f8ff]
    rst $38
    add sp, -$01
    ld a, [$fbff]
    rst $38
    db $ed
    cp $e8
    cp $e8
    cp $cd
    cp $ea
    rst $38
    ld hl, sp-$01
    ld a, [$c1ff]
    rst $38
    db $eb
    db $fc
    jp hl


    cp $e9
    cp $f1
    cp $fd
    cp $fd
    cp $fe
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
    rst $08
    rst $38
    ld l, h
    rst $38
    cp $ff
    rst $28
    rst $38
    ld h, a
    rst $38
    ld bc, $a1ff
    ld e, a
    ret nz

    ccf
    ret nz

    ccf
    ld bc, $ffff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp b
    rst $38
    adc b
    ld a, a
    call z, $c03f
    ccf
    ldh a, [rIF]
    inc a
    rst $00
    dec c
    rst $30
    dec b
    rst $38
    rlca
    rst $38
    add a
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld b, e
    rst $38
    ld b, a
    rst $38
    ld bc, $39ff
    rst $00
    ret c

    daa
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ei
    inc b
    rst $38
    nop
    ld a, l
    add d
    rst $38
    add b
    ld b, a
    cp b
    inc b
    ei
    ld b, h
    cp e
    inc b
    ei
    ei
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    cp $c1
    cp $c3
    db $fc
    rst $00
    ld hl, sp-$3d
    db $fc
    db $ed
    ld a, [c]
    db $ed
    ld a, [c]
    call nz, $ddf3
    ld [c], a
    adc c
    db $f4
    sub [hl]
    add sp, -$54
    jp nc, $f804

    ld [bc], a
    ld hl, sp-$80
    ld hl, sp+$00
    ldh a, [$80]
    ldh a, [$a0]
    ret nz

    ret nz

    add b
    ld a, [$bec0]
    ret nz

    xor l
    db $d3
    db $dd
    and d
    add l
    ld a, [$f9f6]
    di
    jp hl


    ld sp, hl
    pop bc
    ld bc, $8181
    add hl, bc
    add c
    inc bc
    add c
    ld bc, $4381
    add e
    ld bc, $8741
    add c
    pop af
    and c
    ld c, c
    ld bc, $0103
    ld bc, $0101
    inc bc
    ld bc, $0301
    inc bc
    ld hl, $4381
    ld bc, $31e3
    inc bc
    ld bc, $0107
    inc bc
    ld bc, $0123
    inc bc
    ld bc, $0303
    ld bc, $8301
    ld h, c
    add e
    ld bc, $0103
    inc sp
    ld bc, $0907
    rlca
    ld bc, $010b
    rrca
    add e
    dec bc
    inc bc
    set 1, e
    adc e
    adc e
    db $db
    add e
    set 0, e
    db $eb
    jp $ebe7


    db $e3
    pop af
    db $e3
    ld h, a
    di
    ei
    di
    rst $38
    ei
    rst $38
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $08
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $38
    daa
    rst $38
    ld hl, $09ff
    rst $38
    dec b
    rst $38
    ldh [$1f], a
    ld [c], a
    dec e
    call $ce32
    ld sp, $ff00
    inc d
    rst $38
    ld h, h
    sbc a
    ld [c], a
    rra
    ld [hl], e
    adc a
    and e
    ld e, a
    pop af
    rrca
    db $fd
    inc bc
    ld a, [$7a05]
    add l
    ld [hl], b
    adc a
    ld hl, sp+$07
    cp $01
    ld hl, $40df
    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    ldh [$7f], a
    xor b
    ld a, a
    ld a, [hl+]
    rst $38
    dec sp
    rst $38

jr_090_7b20:
    jp z, $52f7

    rst $28
    add d
    rst $38
    sub d
    rst $38
    ld [hl-], a
    rst $38
    ld d, d
    cp a
    dec d
    cp $f1
    ld a, $32

jr_090_7b31:
    db $fc
    jr nc, jr_090_7b31

jr_090_7b34:
    dec a
    ldh a, [$39]
    ldh a, [rNR51]
    ldh a, [rNR24]
    and $05
    ld [$c728], a
    ld b, h
    xor e
    add hl, bc
    or $e8
    scf
    add hl, hl
    db $76
    ld l, c
    ld [hl], $60
    ld a, $22
    db $fc
    ld l, h
    or b
    cp h
    ld h, b
    jr nc, jr_090_7b34

    or b
    ld h, b
    add b
    ld h, b
    call nz, $c400
    ld bc, $40a1
    ld b, h
    jr nz, jr_090_7b20

    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    ld a, [hl]
    ld h, l
    ld a, [$fa65]
    ld h, l
    ei
    db $e4
    rst $38
    ld h, h
    ld h, [hl]
    ld b, b
    ld h, c
    ld b, h
    ld l, h
    ld b, b
    ld bc, $4760
    inc bc
    rrca
    rra
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    xor $ff
    rst $28
    cp $af
    cp $af
    cp $ed
    cp $ae
    cp $af
    cp $ed
    cp $ed
    cp $ed
    cp $ed
    cp $ec
    cp $ed
    cp $ed
    cp $fd
    db $fc
    db $fd
    db $fc
    ldh a, [$f5]
    ei
    pop af
    pop hl
    di
    rst $20
    db $eb
    rst $28
    rst $28
    db $ed
    rst $38
    db $ed
    rst $38
    rst $28
    db $fd
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld e, l
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $18
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
    rrca
    rst $38
    rra
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add c
    rst $38
    add c
    rst $38
    add e
    rst $38
    ld d, c
    rst $38
    ld b, l
    rst $38
    and b
    ld a, a
    ldh [$3f], a
    db $e4
    dec sp
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $08fe
    rst $30
    ld c, h
    or e
    ret


    rst $20
    add hl, bc
    rst $20
    ld bc, $55c7
    add a
    adc c
    rlca
    ld hl, $8107
    rlca
    add hl, bc
    rst $30
    dec bc
    rst $30
    dec d
    rst $28
    dec e
    rst $20
    inc d
    rst $28
    inc d
    rst $28
    ld e, c
    and $04
    ld hl, sp+$54
    ldh [$50], a
    pop hl
    ld b, c
    ldh [rDIV], a
    ret nz

    ld b, c
    add [hl]
    inc bc
    add a
    ld [$0807], sp
    rlca
    ld b, $0b
    adc d
    rlca
    ld c, $e3
    xor d
    ld b, a
    xor e
    ld b, [hl]
    ld b, $4b
    add a
    ld c, d
    add $0b
    ld b, b
    xor a
    rlca
    jp z, $da06

    jp $420e


    adc a
    ret nz

    rrca
    ld c, b
    add a
    ld [hl+], a
    call z, $c000
    ld b, b
    add b
    nop
    inc b
    inc l
    inc e
    ld a, h
    db $fc
    db $fc
    db $fc
    db $fd
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
    ld hl, sp-$14
    ld hl, sp-$14
    ld hl, sp-$12
    ld hl, sp-$12
    ld hl, sp-$11
    ld hl, sp-$11
    add sp, -$11
    add sp, -$11
    add sp, -$31
    add sp, -$31
    add sp, -$31
    add sp, -$31
    add sp, -$31
    add sp, -$31
    ld hl, sp-$31
    ret c

    rst $08
    ret z

    rst $08
    ret z

    rst $08
    ret z

    add a
    ret z

    add a
    ret z

    adc a
    ret nz

    adc a
    ret nz

    adc a
    ret nc

    adc a
    ret nz

    adc a
    ret nz

    rra
    ldh a, [$9f]
    ldh a, [$cf]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$9f]
    ldh a, [$8f]
    ret nc

    rst $18
    ret nc

    sbc a
    ldh a, [$9f]
    ret nc

    sbc a
    ldh a, [$df]
    ret nc

    sbc a
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$bf]
    ldh a, [$df]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh a, [$9f]
    ldh a, [$bf]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$bf]
    ldh a, [$bf]
    ldh a, [$bf]
    ldh a, [$e0]
    ldh a, [$e0]
    pop af
    add sp, -$10
    add sp, -$10
    ld hl, sp-$20
    add sp, -$0f
    ldh [$f9], a
    add sp, -$0f
    ldh [$f1], a
    ldh a, [$e3]
    ldh [$e3], a
    pop hl
    db $e3
    pop hl
    rst $20
    ldh [$f3], a
    di
    ldh a, [$f9]
    ldh a, [$f0]
    ldh a, [rP1]
    ldh a, [$08]
    ldh a, [rSB]
    ld hl, sp+$05
    ld hl, sp+$0b
    db $fc
    ld b, $fd
    ld bc, $dfff
    cp a
    ld e, $ff
    sbc $bf
    ld e, b
    cp a
    ld e, e
    cp h
    or $98
    ld e, [hl]
    or b
    inc b
    ldh a, [$28]
    ret nz

    ld d, b
    add b
    nop
    sub h
    add b
    db $10
    ld de, $063e
    ccf
    daa
    ld e, $37
    ld e, $37
    ld e, $36
    ld e, $14
    ld a, $1e
    ld [hl], $b6
    ld e, $d6
    ld a, $15
    ld a, $d7
    ld a, $24
    ld a, $25
    ld a, $15
    ld a, $a4
    ccf
    ld de, $643e
    jr c, jr_090_7d85

    ld [hl], b
    jr z, jr_090_7d60

jr_090_7d60:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld h, b
    ld b, b
    jr z, jr_090_7d73

    inc l
    jr jr_090_7d9a

    jr jr_090_7d9c

    ld e, b
    inc l
    ld c, b

jr_090_7d73:
    inc l
    ld c, b
    inc l
    jr jr_090_7da4

    ld c, b
    inc a
    ld c, h
    jr c, @+$0e

    ld a, b
    jr z, jr_090_7ddc

    ld c, b
    inc a
    jr z, jr_090_7ddc

    ld b, b

jr_090_7d85:
    jr c, @+$3e

    ld e, b
    ld [$2458], sp
    ld e, b
    ld [$3858], sp
    ld e, b
    rst $18
    ld a, b
    db $fd
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $30
    ld a, b
    db $fc
    ld a, [hl]

jr_090_7d9a:
    sub [hl]
    db $10

jr_090_7d9c:
    and b
    jr nz, @+$01

    nop
    ld a, $18
    ld a, a
    ccf

jr_090_7da4:
    rra
    ccf
    ccf
    ccf
    rla
    ccf
    sub b
    ccf
    sub b
    ccf
    ld d, b
    ccf
    ret nc

    ld sp, $39d8
    ret c

    add hl, sp
    ret nc

    add hl, sp
    ret nc

    add hl, de
    ret z

    add hl, de
    ret nz

    add hl, de
    ret nz

    add hl, sp
    add hl, hl
    ccf
    ld sp, $713f
    ld a, a
    ld l, c
    ld a, a
    ld l, c
    ld a, a
    ld l, c
    ld a, a
    ld h, c
    ld a, a
    ld l, c
    ld a, a
    ret nz

    ld c, c
    ret nz

    ld c, a
    jp nz, $c05f

    ld e, a
    ret nz

    ld c, a
    ret nz

    ld d, a

jr_090_7ddc:
    ret nz

    ld e, e
    ret nz

    ld e, a
    ret nz

    ld [hl], a
    ret nz

    ld e, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    ld e, a
    ret nz

    ld l, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld l, b
    rst $38
    add sp, $7f
    ld l, b
    ld a, a
    ld l, b
    rst $38
    add sp, -$01
    add sp, -$01
    ld [c], a
    rst $38
    ld a, b
    rst $38
    ld l, b
    rst $38
    call nz, $c8ff
    rst $38
    add sp, -$01
    db $e4
    rst $38
    ld [$d0ff], a
    rst $38
    reti


    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ld hl, sp-$01
    pop de
    rst $38
    db $f4
    rst $38
    ret c

    rst $38
    ld [hl], b
    add b
    ld e, l
    adc b
    adc l
    ld e, $2f
    rra
    rrca
    rra
    cpl
    rra
    rrca
    rra
    rrca
    sbc a
    rra
    rra
    rra
    rra
    ld c, a
    rra
    cpl
    rra
    cp a
    rra
    ld e, a
    rra
    cp a
    rra
    sbc a
    rra
    ccf
    rra
    cp a
    rra
    sbc a
    ccf
    rst $38
    rra
    ld e, a
    ccf
    cp $1f
    call c, $d93f
    ld a, $d9
    inc a
    adc h
    jr nc, jr_090_7e99

    nop
    nop
    ld bc, $0000
    nop
    nop
    jr nz, jr_090_7e6e

    ld de, $1838
    ld a, $3e
    ccf
    ccf
    ld a, $3e
    ccf
    ld a, $3f
    ccf
    ld a, $3e
    ccf

jr_090_7e6e:
    ccf
    ld a, $3d
    ld a, $3d
    ld a, $3f
    ld a, $7c
    ld a, $3c
    ld a, [hl]
    ld a, h
    ld a, $3c
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, $7c
    ld a, h
    ld a, [hl]
    inc a
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, a
    ld a, a
    ld l, a
    ld [hl], b
    ld h, d

jr_090_7e99:
    ld a, h
    rrca
    ld a, a
    ld bc, $0000
    nop
    ld b, b
    nop
    ldh [$e0], a
    rst $38
    cp $ef
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    ld bc, $40ff
    cp a
    db $10
    rst $28
    ld b, l
    cp d
    sub h
    ld l, e
    inc d
    db $eb
    sub h
    ld l, e
    inc d
    db $eb
    ld d, h
    xor e
    ld [de], a
    db $ed
    add hl, hl
    sub $1a

jr_090_7ec5:
    push hl
    xor e
    ld d, h
    or d
    ld c, l
    xor e
    ld d, h
    xor d
    ld d, l
    cp d
    ld b, l
    ld a, [hl-]
    push bc
    ld a, [hl+]
    push de
    ld l, $d1
    xor d
    push de
    ld c, $f1
    add h
    ld a, e
    ld [hl+], a
    db $dd
    ld [hl+], a
    rst $18
    ld [hl+], a
    rst $18
    and b
    ld e, a
    jr nz, jr_090_7ec5

    xor b
    ld d, a
    add hl, hl
    sub $24
    db $db
    inc h
    db $db
    nop
    rst $38
    ld [$01f7], sp
    rst $38
    ld b, $fb
    add hl, de
    rst $28
    ld bc, $00ff
    rst $38
    ld [$01ff], sp
    cp $0a
    db $fd
    add e
    db $fd
    rlca
    ld sp, hl
    rlca
    ld a, [$fa07]
    rla
    ld a, [$fa17]
    inc bc
    cp $84
    cp $26
    db $fc
    sub h
    cp $d1
    cp $b0
    rst $38
    ld e, h
    rst $38
    ld e, $ff
    ld c, a
    rst $38
    nop
    ld bc, $0302
    inc b
    ld bc, $0605
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld bc, $1514
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_090_7f65

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_090_7f75

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$03

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_090_7f96

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_090_7f65:
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

jr_090_7f75:
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

jr_090_7f96:
    ld [hl], e
    ld bc, $7574
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
    ld bc, $8301
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
    ld bc, $0101
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
    ld bc, $9e01
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
    ld bc, $adac
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
    sbc [hl]
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

    sbc [hl]
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
