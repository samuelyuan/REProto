SECTION "ROM Bank $098", ROMX[$4000], BANK[$98]

    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    inc bc
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    inc bc
    ld a, l
    ld a, [hl]
    nop
    nop
    ld a, a
    add b
    add c
    add d
    inc bc
    inc bc
    add e
    add h
    ld h, d
    add l
    ld de, $8786
    nop
    nop
    nop
    inc bc
    adc b
    adc c
    adc d
    inc bc
    adc e
    adc h
    ld h, d
    ld h, d
    adc l
    inc bc
    adc [hl]
    nop
    nop
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ld h, d
    ld h, d
    ld h, d
    sub a
    sbc b
    sbc c
    nop
    nop
    sbc d
    sbc e
    sbc h
    ld h, e
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
    nop
    nop
    and a
    xor b
    inc bc
    xor c
    xor d
    inc bc
    inc bc
    xor e
    xor h
    inc bc
    xor l
    xor [hl]
    xor a
    or b
    nop
    nop
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    nop
    ld l, c
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    nop
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
    sbc $00
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
    or $f7
    ld hl, sp-$07
    ld a, [$fb00]
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_098_413e

jr_098_413e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_098_41a8

jr_098_41a8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    ld b, h
    ld [bc], a
    db $fd
    inc b
    ei
    ld [bc], a
    db $fd
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
    nop
    rst $38
    jr nz, @+$01

    jr z, @+$01

    ld l, d
    rst $38
    ld a, [$7eff]
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
    inc bc
    rst $38
    rla
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    add sp, -$02
    ld bc, $07fa
    ldh a, [rIF]
    db $ed
    rra
    db $ed
    ld e, $6f
    jr jr_098_429e

    inc e
    cpl
    inc e
    dec l
    ld e, $2f
    ld e, $0e
    rra
    rrca
    rra
    rrca
    rra
    rra
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rlca
    rra
    rrca
    rra
    ld e, $0f
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e00
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc

jr_098_429e:
    nop
    ld bc, $8081
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
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
    ld de, $7fee
    add b
    rst $18

jr_098_42c5:
    jr nz, jr_098_4346

    add b
    rst $38
    nop
    rst $38

jr_098_42cb:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc b
    xor [hl]
    ld d, c
    ld b, a
    cp b
    jr nz, jr_098_42c5

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_098_42cb

    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld [$02f7], sp
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
    ld d, h
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
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $20
    ld hl, sp+$7d
    add e
    rst $28
    rra
    ld a, a
    rst $38
    cp $ff
    and e
    db $fc
    cp l
    ld b, b
    db $e3

Jump_098_433f:
    nop
    dec a
    ld [bc], a
    db $fd
    ld [bc], a
    add sp, $17

jr_098_4346:
    ld [hl], b
    adc a
    ld hl, $03df
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    ld d, b
    ldh [$80], a
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_098_4364

jr_098_4364:
    pop bc
    nop
    rlca
    nop
    dec h
    ld a, [de]
    ld [bc], a
    db $fd
    pop bc
    cp $c8
    rst $38
    ld a, [c]
    rst $38
    ld [hl], a
    cp $bc
    ld a, [hl]
    ld a, $7f
    rra
    ccf
    ccf
    rra
    xor a
    rra
    ld a, a
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    ret c

    rlca
    ld a, l
    inc bc
    cp a
    inc bc
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    adc d
    ld [hl], l
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    call z, $e633
    add hl, de
    ld b, d
    cp l
    inc bc
    db $fc
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
    ld bc, $01fe
    cp $01
    cp $08
    rst $30
    nop
    rst $38
    inc b
    ei
    inc c
    di
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret nc

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
    ld sp, hl
    cp $df
    ldh [$fa], a
    rlca
    sbc [hl]
    ld a, a
    cp $ff
    ld sp, hl
    cp $c6
    ld hl, sp+$31
    ret nz

    rst $08
    nop
    push af
    ld a, [bc]
    and b
    ld e, a
    ld b, c
    cp a
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
    ld a, [$f0fc]
    ldh [$80], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc de
    inc c
    ld [$041f], sp
    rst $18
    adc b
    ld b, a
    ld c, b
    add a
    ret z

    rlca
    ld l, a
    sbc [hl]
    cpl

jr_098_444f:
    db $fc
    rra
    rst $38
    db $db
    dec a
    jp $073d


    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    jr nz, jr_098_444f

    ld [hl], b
    adc a
    ld a, h
    add e
    cp b
    ld b, a
    ld hl, sp+$07
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
    ei
    inc b
    xor b
    ld d, a
    and b
    ld e, a
    add b
    ld a, a
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    dec hl
    call nc, $c03f
    rra
    ldh [$af], a
    ld d, b
    dec e
    ld [c], a
    ccf
    ret nz

jr_098_44a4:
    ld a, a
    add b
    ld [hl], a
    adc b
    inc [hl]
    rr b
    rst $20
    inc c
    di
    ld c, $f1
    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, h
    rst $38
    jr nz, @+$01

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
    cp $ff
    di
    db $fc
    ld a, $c1
    ldh [$1f], a
    nop
    rst $38
    ld a, [bc]
    rst $38
    and $f8
    jr nc, jr_098_44a4

    add c
    nop
    rra
    nop
    rst $38
    nop
    ld l, d
    sub l
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
    rst $38
    rst $38
    db $fc
    cp $e0
    ldh a, [rLCDC]
    add b
    ld bc, $0d00
    nop
    ld [de], a
    nop
    cpl
    nop
    jr c, jr_098_4513

    ldh [$1f], a
    add b
    ld a, a
    ld [$05ff], sp

jr_098_4513:
    rst $38
    rla
    rst $38
    dec a
    cp $7f
    ldh [$af], a
    jp Jump_000_17ef


    rst $38
    rst $38
    rst $38
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

jr_098_452d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    add sp, $17
    db $fc
    inc bc
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    db $ec
    inc de
    dec h
    jp c, Jump_098_4fb0

    ld [de], a
    db $ed
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, jr_098_452d

    ld a, $c1
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
    ld a, a
    add b
    ld e, c
    and [hl]
    ld [hl], c
    adc [hl]
    sbc l
    ld h, d
    cp c
    ld b, [hl]
    inc b
    ei
    inc [hl]
    rlc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    db $fc
    rst $38
    rst $28
    ldh a, [$78]
    add a
    ret nz

    ccf
    nop
    rst $38
    rlca
    ld hl, sp+$30
    ret nz

    pop bc
    nop
    rlca
    nop
    rrca
    nop
    cp d
    dec b
    ldh [$1f], a
    add b
    ld a, a
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
    db $fd
    cp $f8
    ldh a, [$c0]
    add b
    nop
    nop
    rrca
    nop
    ld [hl], e
    nop
    rst $30
    nop
    ld hl, sp+$07
    pop bc
    ccf
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld a, l
    cp $bf
    pop hl
    rst $38
    add e
    rst $18
    ccf
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
    rst $08
    rst $38
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
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld d, c
    xor [hl]
    rst $28
    nop
    rst $38
    nop
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

jr_098_460e:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $08
    jr nc, jr_098_4690

    adc b
    inc h
    db $db
    nop
    rst $38
    inc e
    db $e3
    ld e, $e1
    ccf
    ret nz

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
    rst $30
    ld [$48b7], sp
    rst $08
    jr nc, jr_098_460e

    ld [hl-], a
    and a
    ld e, b
    ld b, e
    cp h
    nop
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
    rst $20
    rst $38
    add e
    rst $38
    rst $38
    inc bc
    ld a, l
    add e
    rrca
    pop af
    ld c, [hl]
    pop af
    ld h, a
    sbc b
    rst $30
    ld [$0439], sp
    ei
    inc b
    di
    inc c
    ld h, c
    sbc [hl]
    inc bc
    cp $02
    rst $38
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f4
    ld hl, sp-$60
    ret nz

    ld bc, $0e00
    nop
    ld a, [hl+]
    nop
    rst $08
    nop
    ld a, b
    rlca

jr_098_4690:
    ld b, b
    ccf
    ld b, b
    ccf
    and b
    rra
    sub d
    rrca
    sbc d
    rrca
    ld sp, hl
    inc e
    ldh a, [$fd]
    push af
    rst $38
    rst $28
    ld a, a
    rst $38
    rst $28
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
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    add sp, -$01
    ret nz

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

jr_098_46e1:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$ff00], sp
    nop
    rst $38
    ld de, $7cee
    add e
    ld e, [hl]
    and c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_098_46fe:
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr nz, jr_098_46fe

    db $10
    rst $08
    jr nc, jr_098_46e1

    ld sp, $728d
    inc c
    di
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc d
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    rra
    ld a, a
    rra
    xor a
    rra
    sbc a
    rrca
    rra
    adc a
    sbc a
    rlca
    ld a, e
    rlca
    ld a, e
    rlca
    ld a, e
    rlca
    ld e, e
    daa
    ld d, a
    dec hl
    db $dd
    inc hl
    ld c, c
    rst $30
    dec d
    db $eb
    ld h, e
    db $fd
    ld h, h
    ei
    ld h, h
    ei
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    or [hl]
    rst $38
    or $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_098_47a0:
    rst $38
    nop

jr_098_47a2:
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
    or a
    ld c, b
    sub a
    ld l, b

jr_098_47b0:
    add l
    ld a, d

jr_098_47b2:
    add d
    ld a, l

jr_098_47b4:
    ret nz

    ccf

jr_098_47b6:
    add d
    ld a, l

jr_098_47b8:
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_098_47b0

    jr nz, jr_098_47b2

    jr nz, jr_098_47b4

    jr nz, jr_098_47b6

    jr nz, jr_098_47b8

    jr nz, jr_098_47a2

    jr c, jr_098_47a0

    inc a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    add e
    ld a, h
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
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld d, a
    rst $38
    db $eb
    rst $38
    rst $10
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, [$e0ff]
    rst $38
    add hl, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add sp, -$01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    ld bc, $0afe
    push af
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, h
    add e
    ld a, b
    add a
    inc e
    db $e3
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
    rst $30
    ld [$45ba], sp
    ldh [$1f], a
    add b
    ld a, a
    ret nc

    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    and b
    rst $38
    adc e
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
    ldh [rIE], a
    ret nz

    rst $38
    add b
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
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld [$03f7], sp
    db $fc
    rla
    add sp, $0f
    ldh a, [rIF]
    ldh a, [$97]
    ld l, b
    rra
    ldh [rIE], a
    nop
    rst $28
    db $10

jr_098_490c:
    rst $38
    nop
    rst $18
    jr nz, jr_098_490c

    inc b
    ld sp, hl
    ld b, $f8
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_098_491b:
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld sp, hl
    ld b, $f1
    ld c, $f1
    ld c, $ef
    db $10
    rst $18
    jr nz, jr_098_491b

    ld de, $21de
    db $fc
    inc bc
    cp $01
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    add b
    ld a, a
    add d
    ld a, l
    add b
    ld a, a
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    add hl, sp
    add $be
    ld b, c
    cp [hl]
    ld b, c
    cp a
    ld b, b
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $28
    db $10
    rst $30
    ld [$11ee], sp
    adc $31
    adc b
    ld [hl], a
    adc h
    ld [hl], e
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $e3
    rst $38
    adc e
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
    add sp, -$01

jr_098_49b0:
    ret nz

    rst $38
    and b
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $01fe
    cp $0d

jr_098_49c7:
    ld a, [c]
    xor a

jr_098_49c9:
    ld d, b
    ld h, a
    sbc b
    rra
    ldh [$df], a
    jr nz, jr_098_49b0

    jr nz, @+$01

    nop
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_098_49c7

    jr nz, jr_098_49c9

    ret nz

jr_098_49eb:
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    db $10
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
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
    jr nz, jr_098_49eb

    sub b
    ld l, a
    ldh a, [rIF]
    ret nz

    ccf
    and b
    ld e, a
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
    ld bc, $43ff
    rst $38
    daa
    rst $38
    rrca
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
    rst $30
    rst $38
    and h
    rst $38
    ld b, b
    rst $38

jr_098_4a4e:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $45fe
    cp d
    ld [hl], a
    adc b
    rst $18
    jr nz, jr_098_4a4e

    inc d
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    dec h
    rst $38
    nop
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
    ld bc, $09fe
    or $b7
    ld c, b
    sbc a
    ld h, b
    ccf
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    db $eb
    nop
    ei
    nop
    db $fc
    nop
    db $f4
    nop
    and $00
    ret nz

    nop
    ret z

    nop
    ld h, b
    nop
    stop
    ret nc

    nop
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec hl
    rst $38
    cpl
    rst $38
    rra
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
    xor a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38

jr_098_4b48:
    rra
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38

jr_098_4b57:
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
    ld [c], a
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
    nop
    rst $38
    nop
    rst $38
    jr z, jr_098_4b57

    ld h, $d9
    ld a, e
    add h
    ld a, l
    add d
    cp $01
    rst $18
    jr nz, @+$01

    nop
    sub a
    ld l, b
    rst $18
    jr nz, jr_098_4b48

    nop
    di
    nop
    add a
    nop
    add c
    nop
    ret z

    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ret nz

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
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $ec
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
    cp $ff
    or $ff
    ld a, [c]
    rst $38
    ldh a, [rIE]
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
    add b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    and b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ret nz

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
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    jr c, @+$01

    adc [hl]
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc b
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
    nop
    rst $38
    db $10
    rst $28
    ld [$0cf7], sp
    di
    xor $11
    cp $01
    cp a
    ld b, b
    rst $30
    ld [$02fd], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    ld e, [hl]
    nop
    ld a, [de]
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
    nop
    nop
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ret c

    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    or b
    rst $38
    add d
    rst $38
    ret nz

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
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    ld bc, $01fe
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
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
    ld [bc], a
    db $fd
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
    jr @-$17

    cp $01
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
    cp a
    nop
    rst $18
    nop
    ld e, a
    nop
    dec bc
    nop
    rlca
    nop
    ld [bc], a
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
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld bc, $0cfe
    rst $38
    inc b
    rst $38
    jr @+$01

    ld e, h
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    jr @+$01

    jr @+$01

    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld a, [$fa05]
    cpl
    ret nc

    ccf
    ret nz

    ld a, a
    add b
    rra
    ldh [$5f], a
    and b
    rra
    ldh [$7f], a
    add b
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld c, a
    or b
    rra
    ldh [$37], a
    ret z

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$03]
    db $fc
    rlca
    ld hl, sp+$06
    ld sp, hl
    ld [bc], a
    db $fd
    inc b
    ei
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    rst $20
    rra
    ld [hl], a
    adc a
    scf
    rst $08
    ld d, $ef
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    rra
    cp $1f
    rst $38
    ccf
    rst $38
    ld a, $ff
    inc a
    rst $38
    ld a, h
    rst $38
    cp h
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld [hl], h
    ei
    db $76
    ld sp, hl
    ld a, a
    ldh a, [$df]
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

jr_098_4dd3:
    nop
    rst $38
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
    nop
    cp a
    nop
    dec bc
    nop
    dec b
    nop
    inc de
    nop
    ld bc, $0500
    nop
    nop
    nop
    nop
    nop
    inc bc
    db $fc
    ld c, $f1
    rlca
    ld hl, sp+$1b
    db $e4
    add hl, sp
    add $4f
    or b
    dec e
    ld [c], a
    ld sp, $71ce
    adc [hl]
    jr nc, jr_098_4dd3

    or $09
    cp [hl]
    ld b, c
    ld a, a
    add b
    rst $38
    nop
    sbc a
    ld h, b
    ccf
    ret nz

    cp a
    ld b, b
    rrca
    ldh a, [$2f]
    ret nc

    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$8b], a
    ld [hl], h
    add c
    ld a, [hl]
    ld e, a
    and b
    ld a, [hl]
    add c
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
    db $fd
    nop
    db $fd
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
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld a, [$fa07]
    rlca
    di
    ld c, $f5
    ld c, $f5
    ld c, $e7
    inc e
    ld [$ea1d], a
    dec e
    jp z, $d53d

jr_098_4e6f:
    dec sp
    push de
    dec sp
    sub [hl]
    ld a, e
    and e
    ld a, [hl]
    or e
    ld a, [hl]
    ld hl, $67fe
    db $fc
    ld h, e
    db $fc
    ld h, a
    db $fc
    ret z

    rst $30
    db $dd
    di
    sub d
    db $fd
    sbc c
    or $ac
    di
    xor [hl]
    pop af
    rst $38
    ldh [$df], a
    ldh [$5f], a
    ldh [$df], a
    ldh [$87], a
    ld hl, sp-$71
    ldh a, [$85]
    ld a, [$be41]
    ld h, c
    sbc [hl]
    jr nc, jr_098_4e6f

    sbc b
    ld h, a
    call z, $f6b3
    ret


    ld a, e
    db $e4
    dec a
    ld a, [c]
    ld d, $f9
    rrca
    db $fc
    rlca
    cp $03
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
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    ld bc, $03fd
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    ei
    rlca
    db $fd
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
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
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38

jr_098_4f0f:
    nop
    rst $38
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ei
    rlca
    ld a, [$f307]
    ld c, $f2
    ld c, $f4
    ld c, $e6
    inc e
    add sp, $1c
    add sp, $1c
    db $ec
    jr jr_098_4f7e

    jr c, jr_098_4f0f

    add hl, sp
    ret c

    ld sp, $71b2
    and b
    ld [hl], e
    or e
    ld h, d
    inc h
    ld [c], a
    ld b, b
    and $6e
    call nz, $c46c
    add b
    call z, $88dc
    res 3, h
    db $10
    sbc a
    or b
    rra
    sbc h
    inc sp
    jp c, $313d

    ld c, [hl]
    adc l
    ld [hl], e
    cp d
    ld c, l
    ld l, c
    add $96
    pop bc
    pop hl
    add b
    pop hl
    add b
    ld l, d
    add b
    add sp, $00
    ld sp, hl
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

jr_098_4f7e:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    adc a
    ld [hl], b
    rst $00
    jr c, jr_098_4ff6

    sbc h
    dec a
    add $cf
    inc sp

jr_098_4f90:
    rst $20
    add hl, de
    ld h, a
    sbc h
    xor c
    ld d, [hl]
    add e
    ld a, l
    add e
    ld a, h
    and a
    ld e, b
    ld h, a
    sbc b
    rst $00
    jr c, jr_098_4fd0

    ret nc

    ld c, $f1
    rra
    pop hl
    dec e
    db $e3
    cp a
    ld b, e
    ei
    rlca
    ld a, a
    add a
    or a
    ld c, a

Jump_098_4fb0:
    rst $18
    cpl
    rst $28
    sbc a
    rst $38
    rst $18
    ld a, a
    rst $38
    ccf
    rst $38
    cp [hl]
    ld a, a
    ld a, $ff
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    db $fd
    cp $f8
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ret nz

    rst $38
    ret z

    rst $30

jr_098_4fd0:
    call c, $fee3
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
    nop
    db $fc
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ei
    rlca
    ld a, [c]

jr_098_4feb:
    rrca
    ld a, [c]
    rrca
    di
    ld c, $e5
    ld e, $e4
    ld e, $ee
    inc e

jr_098_4ff6:
    jp z, $c83c

    inc a
    call z, $d038
    jr c, jr_098_4f90

    ld a, b
    sbc b
    ld [hl], c
    and b
    ld [hl], c
    inc hl
    pop af
    jr nc, jr_098_4feb

    ld b, d
    db $e3

jr_098_500a:
    ld b, [hl]
    db $e3
    ld h, d
    rst $00
    ret nz

    rst $00
    adc h
    rst $00
    jp nz, $878d

    adc b
    dec d
    adc b
    add a
    jr jr_098_5042

    jr jr_098_5034

    jr c, jr_098_505c

    ld a, $47
    ccf
    dec bc
    ld [hl], a
    nop
    ld a, a
    xor b
    ld b, a
    xor [hl]
    ld b, c
    nop
    ret nz

jr_098_502c:
    ld b, e
    add b
    sub l
    add b
    sub c
    nop
    add d
    nop

jr_098_5034:
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

jr_098_5042:
    ld [$0000], sp
    nop
    add b
    nop
    jr nz, jr_098_500a

    jr jr_098_502c

    ld b, $f8
    add c
    ld a, [hl]
    ld b, b
    cp a
    ld [hl], b
    rst $08
    xor h
    ld [hl], e
    jp z, $353d

    adc $5d
    inc hl

jr_098_505c:
    ld h, $19
    ccf
    inc b
    inc l
    inc bc
    cp a
    nop
    cp a
    nop
    ccf
    nop
    or [hl]
    nop
    cp [hl]
    nop
    ret


    nop
    db $fc
    nop
    ei
    nop
    db $fc
    ld bc, $01fb
    ld sp, hl
    inc bc
    rst $38
    inc bc
    and $03
    and $07
    db $f4
    rrca
    db $fc
    adc a
    ld c, b
    rst $38
    cp c
    ld a, a
    sub e
    ccf
    ld e, e
    cp a
    rst $20
    ld a, a
    xor $7f
    ld l, [hl]
    rst $38
    call z, $98ff
    rst $38
    sbc b
    rst $38
    ldh a, [rIE]
    pop af
    cp $e1
    cp $e3
    db $fc
    jp $c7fc


    ld hl, sp-$79
    ld hl, sp-$71
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$7f], a
    add b
    cp a
    nop
    ld e, a
    add b
    xor $01
    ld [hl], a
    add b
    db $eb
    db $10
    ld e, l
    and b
    ld a, $c0
    scf
    ret z

    ld c, $f1
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    add b
    ld a, a
    ret nz

    ccf
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
    and a
    rst $08
    rst $10
    adc a
    pop de
    adc a
    ld d, b
    adc a
    sbc b
    rrca
    add a
    jr jr_098_5114

    jr @+$21

    jr nc, jr_098_5150

    jr nc, @+$71

    jr nc, jr_098_5134

    ld h, b
    ld e, a
    ld h, b
    cp a
    ld b, b
    rst $38
    ld b, b
    cp a
    ret nz

    rst $38
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
    dec a
    ret nz

    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_098_5114:
    ret nz

jr_098_5115:
    ccf
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $28
    ldh a, [$7b]
    db $fc
    adc [hl]
    ld a, a
    inc sp
    rst $08
    adc h
    ld [hl], e
    di
    inc c
    db $fc
    inc bc
    adc a
    nop
    ccf
    nop

jr_098_5134:
    ccf
    nop
    ccf
    nop
    daa
    nop
    and a
    nop
    ld a, $00
    ld c, h
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    stop
    stop
    nop
    nop
    nop
    nop

jr_098_5150:
    pop bc
    nop
    jr nz, jr_098_5115

    dec sp
    pop bc
    inc c
    di
    xor c
    ld d, [hl]
    ld [hl], l
    adc [hl]
    or [hl]
    call z, Call_098_7caa
    cp a
    jr @+$47

    sbc b
    adc a
    ld [hl], c
    add hl, bc
    inc sp
    ld l, a
    inc sp
    dec hl
    ld [hl], a
    ld d, [hl]
    ld l, a
    ld [hl], a
    adc $ad
    sbc $ec
    sbc a
    ld l, d
    cp l
    ld e, b
    cp a
    or [hl]
    ld a, c
    ld sp, $61fe
    cp $62
    db $fc
    jp nz, $c4fc

    ld hl, sp-$7c
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rNR14], a
    ldh [$3a], a
    ret nz

    ld d, h
    add b
    ld h, b
    add b
    ldh [rP1], a
    ret nc

    nop
    rst $10
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

jr_098_51a4:
    cp a
    ld b, b
    rst $18
    jr nz, jr_098_51a4

    inc b
    cp $01
    ld a, [hl]
    ld bc, $02bd
    rst $18
    nop
    ld l, a
    add b
    rst $30
    nop
    dec sp
    ret nz

    dec c
    ldh a, [rNR21]
    add sp, $05
    ld a, [$fa05]
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    nop
    nop
    nop
    ld bc, $0302
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
    ld c, $0f
    db $10
    dec b
    dec b
    dec b
    dec b
    dec b
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_098_520d

    ld a, [de]
    dec de
    dec b
    dec b
    dec b
    dec b
    dec b
    inc e
    dec e
    ld e, $1f
    jr nz, jr_098_5222

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec b
    ld h, $05
    dec b
    dec b
    daa
    jr z, jr_098_5236

jr_098_520d:
    ld a, [hl+]
    dec hl
    inc l
    nop
    dec l
    ld l, $2f
    jr nc, jr_098_521b

    dec b
    ld sp, $3332
    inc [hl]

jr_098_521b:
    dec [hl]
    ld [hl], $37
    jr c, jr_098_5259

    ld a, [hl-]
    dec sp

jr_098_5222:
    inc a
    dec a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    dec b
    ld b, a
    dec b
    dec b

jr_098_5236:
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    jr nz, jr_098_527f

    ld b, d
    ld c, l
    ld c, [hl]
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld b, d
    ld b, d
    ld b, d
    ld d, h
    ld d, l
    ld d, [hl]
    dec b
    ld d, a
    dec b
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld b, d
    ld e, h

jr_098_5259:
    ld b, d
    ld b, d
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    jr nz, jr_098_52a8

    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld h, [hl]
    ld h, a
    dec b
    ld l, b
    dec b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld l, a
    ld [hl], b
    dec b
    ld c, a
    ld d, a
    ld [hl], c

jr_098_527f:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    jr nz, jr_098_5303

    ld a, e
    dec b
    dec b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    dec b
    dec b
    dec b
    dec b
    add c
    add d
    add e
    add h
    ld h, b
    dec b
    dec b
    add l
    add [hl]
    add a
    adc b
    dec b
    dec b
    dec b
    dec b
    adc c
    dec b
    adc d
    adc e

jr_098_52a8:
    adc h
    dec b
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
    dec b
    dec b
    dec b
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    nop
    nop
    nop
    sbc l
    sbc [hl]
    nop
    sbc a
    and b
    and c
    dec b
    and d
    dec b
    and e
    and h
    nop
    and l
    and [hl]
    nop
    nop
    nop
    nop
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    nop
    nop
    nop
    nop
    or b
    nop
    nop
    nop
    nop
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    nop
    nop
    nop
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

    nop
    nop
    nop
    cp b
    push bc
    add $c7
    ret z

jr_098_5303:
    ret


    jp z, $cccb

    call Call_000_1bce
    rst $08
    nop
    nop
    nop
    ret nc

    pop de
    nop
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
    inc bc
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
    inc bc
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
    jr nz, jr_098_537d

jr_098_537d:
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
    inc bc
    nop
    nop
    nop
    nop
    jr nz, jr_098_53a6

jr_098_53a6:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_098_53fe

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_098_53fe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_098_545d:
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    db $dd
    ld [hl+], a
    ld e, a
    and b
    ccf
    ret nz

    ccf
    ret nz

    swap h
    rst $18
    jr nz, jr_098_5484

    ldh a, [$1f]
    ldh [$9d], a
    ld h, d
    adc a
    ld [hl], b
    sbc a
    ld h, b
    cp e
    ld b, h
    ld e, $e1
    ld [hl+], a
    db $dd

jr_098_5484:
    ld bc, $09fe
    or $08
    rst $30
    ld [c], a
    dec e
    jr nc, jr_098_545d

    sub b
    ld l, a
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
    jr nc, @+$01

    db $fc
    rst $38
    rst $38
    rst $38
    cp $f9
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$7e81], sp
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, e
    add h
    db $f4
    dec bc
    add sp, $17
    ld a, e
    inc b
    ld sp, hl
    ld b, $fe
    ld bc, $14eb
    ei
    inc b
    or $09
    db $ec
    inc de
    ret c

    daa
    ld l, h
    sub e
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    or $09
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
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    ld h, a
    sbc b
    rst $30
    ld [$11ee], sp
    pop af
    ld c, $53
    xor h
    rlca
    ld hl, sp+$06
    ld sp, hl
    db $10
    rst $28
    sub h
    ld l, e
    ld b, b
    cp a
    ld b, b
    cp a
    sbc h
    ld h, e
    inc d
    db $eb
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
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add d
    rst $38
    ld e, e
    rst $38
    xor a
    rst $38
    rst $18
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
    rst $38
    nop
    rst $38
    nop
    ld l, l
    add b
    dec de
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    rra
    rst $38
    sbc a
    ld a, a
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
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
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
    dec a
    jp nz, $c23d

    ccf
    ret nz

    sbc a

jr_098_55c7:
    ld h, b
    dec de
    db $e4
    dec de
    db $e4
    sbc l
    ld h, d
    dec e
    ld [c], a
    adc a
    ld [hl], b
    adc [hl]
    ld [hl], c
    call nz, $c43b
    dec sp
    jp nz, $c23d

    dec a
    add d
    ld a, l
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ld d, b
    xor a
    ld [hl], b
    adc a
    jr nc, jr_098_55c7

    ld [hl], b
    adc a
    ldh a, [rIF]
    or b
    ld c, a
    sub b
    ld l, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $10ff
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    dec hl
    rst $38
    dec [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $00fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    ld l, a
    add b
    ld e, $e0
    ld b, $f8
    ld bc, $00fe
    rst $38
    add b
    rst $38
    ldh [rIE], a
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

Jump_098_5667:
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $30
    ld [$10ef], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    ld [hl+], a
    rst $08
    jr nc, jr_098_56ef

    sub c
    db $eb
    inc d
    ld a, [$b605]
    ld c, c
    ld a, l
    add d
    ld a, e
    add h
    rla
    add sp, $05
    ld a, [$f00f]
    rra
    ldh [rNR21], a
    jp hl


    ld bc, $00fe
    rst $38
    add hl, bc
    or $09
    or $0a
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    dec d
    ld [$ff00], a
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
    ld bc, $00ff
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
    nop
    rst $38
    inc c
    rst $38
    ld c, $ff
    db $db
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
    ei
    rst $38
    or $ff
    call c, $b1ff

jr_098_56ef:
    rst $38
    ld b, c
    rst $38
    inc bc
    rst $38
    add a
    ld a, a
    rst $38
    rrca
    rst $38
    inc bc
    ld a, a
    nop
    rst $28
    nop
    db $dd
    nop
    ld a, a
    nop
    cp d
    nop
    ld l, [hl]
    nop
    cp l
    nop
    ld [hl], h
    add b
    ld [$06f0], sp
    ld hl, sp+$01
    cp $00
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
    rst $38
    nop
    rst $38

jr_098_5723:
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
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    xor $11
    ld [$f615], a
    add hl, bc
    ld e, h
    and e
    ld l, d
    sub l
    ld a, [hl-]
    push bc
    ret c

    daa
    ret nc

    cpl
    sub b
    ld l, a
    ld d, b
    xor a
    db $10
    rst $28
    and b
    ld e, a
    db $ec
    inc de
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_098_5723

    nop
    rst $38
    nop
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
    db $10
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    ld [hl], h
    rst $38
    jr nc, @+$01

    dec [hl]
    rst $38
    add hl, sp
    rst $38
    sbc a
    rst $38
    rst $10
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
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
    sbc c
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    db $fd
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
    ccf
    rst $10
    rrca
    db $ed
    inc bc
    ld d, l
    nop
    xor [hl]
    nop
    jr jr_098_57d8

jr_098_57d8:
    ld [hl], c
    nop
    and c
    nop
    ld b, d
    nop
    add c
    nop
    inc h
    ret nz

    ld [$02f0], sp
    db $fc
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    db $e4

jr_098_57f1:
    dec de
    add sp, $17
    db $f4
    dec bc
    ld sp, hl
    ld b, $b9
    ld b, [hl]
    pop af
    ld c, $f0
    rrca
    ld a, b
    add a
    ret nc

    cpl
    ldh [$1f], a
    ret nc

    cpl
    ret nc

jr_098_5807:
    cpl
    ld [hl], b
    adc a
    ldh [$1f], a
    ld h, b
    sbc a
    jr nz, @-$1f

    jr nz, jr_098_57f1

    ldh [$1f], a
    or b
    ld c, a
    cp b
    ld b, a
    jp c, $8a25

    ld [hl], l
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
    jr nz, jr_098_5807

    nop
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
    rla
    rst $38
    ld c, a
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    pop bc
    rst $38
    pop bc
    rst $38
    add a
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
    rst $38
    ld a, a
    ld a, a
    rra
    xor a
    rlca
    ld b, [hl]
    ld bc, $000e
    sbc [hl]
    nop
    dec e
    nop
    ld sp, $4b00
    nop
    dec h

jr_098_5895:
    nop
    jp nz, Jump_000_2200

    ret nz

    inc c

jr_098_589b:
    ldh a, [rSC]

jr_098_589d:
    db $fc
    nop
    rst $38
    ld h, b
    sbc a
    ld e, b
    and a
    ld l, b
    sub a
    ld e, b
    and a
    xor b
    ld d, a
    add b
    ld a, a
    ld hl, $c0de
    ccf
    ld [hl], d
    adc l
    ld a, b
    add a
    jr nz, jr_098_5895

    ld b, b
    cp a
    ld h, b
    sbc a
    jr nz, jr_098_589b

    jr nz, jr_098_589d

    ld [$00f7], sp
    rst $38
    nop
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
    nop
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
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $05ff
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
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    add sp, -$01
    ret nc

    rst $38
    add e
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
    rst $38
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
    ld a, a
    rst $30
    rrca
    call $4503
    nop
    adc h
    nop
    nop
    nop
    ld c, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
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
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    db $e3
    rst $38
    set 7, a
    add a
    rst $38
    add a
    rst $38
    rrca
    rst $38
    cpl
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
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    cp $ff
    db $f4
    rst $38
    call nc, $f9ff
    rst $38
    ld a, [$e8ff]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$01
    db $fc
    rst $38
    jr c, jr_098_59d3

    ld e, b
    rlca
    ld e, h
    inc bc
    call nc, Call_000_2003
    inc bc
    add d
    ld bc, $0142
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop

jr_098_59d3:
    rst $38
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    cpl
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
    sbc a
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
    ei
    rst $38
    ei
    rst $38
    ld a, [$f2ff]
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$f2ff]
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    add sp, -$01
    ld a, [c]
    rst $38
    jp nc, $f8ff

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
    inc b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [hl], h
    rst $08
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    ccf
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
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
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
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
    cp $ff
    db $fc
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    jp nz, $a0ff

    rst $38
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, c
    rst $38
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
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    cp h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    rst $38
    jp hl


    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld a, [$f0ff]
    rst $38
    ld a, [$fbff]
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
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
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ret c

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add h
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
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
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    and b
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    nop
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
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    sub b
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
    add d
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ret nc

    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add [hl]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add b
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, b
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    add a
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
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld a, [$ff00]
    nop
    rst $38
    ld bc, $01fe
    cp $20
    rst $18
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rNR13]
    db $ec
    ld b, a
    cp b
    daa
    ret c

    cpl
    ret nc

    dec l
    jp nc, $f00f

    ld a, e
    add h
    ld e, a
    and b
    ld e, a
    and b
    inc a
    jp $c33c


    nop
    rst $38
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret z

    rst $38
    db $fd
    rst $38
    rst $38
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
    ret nz

    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    sbc b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    db $fc
    inc b
    ei
    rlca
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$00
    rst $38
    inc e
    db $e3
    dec b
    ld a, [$f40b]
    scf
    ret z

    ld [hl], a
    adc b
    ld c, e
    or h
    rst $10
    jr z, jr_098_5d6a

    ldh [$7f], a
    add b
    db $db
    inc h
    db $e3
    inc e
    ld h, e
    sbc h
    push de
    ld a, [hl+]
    cpl
    ret nc

    ld a, a
    add b
    scf
    ret z

    ld e, a
    and b
    ld a, a
    add b
    ccf
    ret nz

    rra

jr_098_5d63:
    ldh [$ef], a
    db $10
    ld sp, hl
    ld b, $fc
    inc bc

jr_098_5d6a:
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
    ccf
    ret nz

    ld h, b
    sbc a
    jr nz, jr_098_5d63

    nop
    rst $38
    ld bc, $a3fe
    ld e, h
    ld bc, $03fe
    db $fc
    ld b, e
    cp h
    add e
    ld a, h
    ld b, e
    cp h
    inc bc
    db $fc
    rlca
    ld hl, sp+$01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    dec b
    ld a, [$f00f]
    ld c, a
    or b
    dec bc
    db $f4
    inc bc
    db $fc
    dec c
    ld a, [c]
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld bc, $02fe
    db $fd
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    add b
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
    ld bc, $05fe
    ld a, [$e21d]
    add e
    ld a, h
    ld [bc], a
    db $fd
    ld d, $e9
    rrca
    ldh a, [$3b]
    call nz, Call_000_20df
    ld a, a
    add b
    cp l
    ld b, d
    ld l, h
    sub e
    cp $01
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
    rst $30
    ld [$09f6], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld e, a
    and b
    ld a, a
    add b
    ld a, a
    add b
    rst $28
    db $10
    ccf
    ret nz

    ccf
    ret nz

    scf
    ret z

    db $db
    inc h
    dec de
    db $e4
    cpl
    ret nc

    rlca
    ld hl, sp+$14
    db $eb
    dec d
    ld [$f50a], a
    inc b
    ei
    nop
    rst $38
    ld bc, $01fe
    cp $05
    ld a, [$ff00]
    nop
    rst $38
    nop

jr_098_5e6f:
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
    ld a, [hl]
    add c
    rrca
    ldh a, [rP1]
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
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_098_5e6f

    ld [hl], h
    adc e
    db $ed
    ld [de], a
    and $19
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp $01
    rst $20
    jr @+$01

    nop
    cp a
    ld b, b
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr @+$01

    nop
    rst $38
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

    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    rlca
    ld hl, sp-$53
    ld d, d
    add hl, bc
    or $07
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    ld bc, $03fe
    db $fc
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $a1ff
    ld e, a
    ld a, [de]
    push hl
    reti


    ld h, $f7
    ld [$40bf], sp
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ld b, b
    cp a
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
    db $10
    rst $38
    add b
    rst $38
    jp z, $feff

    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    ld h, b
    sbc a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    jr nz, @+$01

    dec l
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    dec e
    rst $38
    ld bc, $83ff
    ld a, a
    db $e3
    rra
    di
    rrca
    rst $38
    rlca
    ei
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
    push af
    nop
    db $eb
    nop
    db $fc
    nop
    db $ec
    nop
    xor $00
    ld a, [c]
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    or b
    nop
    pop hl
    nop
    pop af
    nop
    and c
    nop
    ld [c], a
    ld bc, $01c2
    ld [c], a
    ld bc, $03e4
    call nz, $c403
    inc bc
    ret z

    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nc

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
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc b
    ei
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, $c1
    ld a, $c1
    ld a, e
    add l
    dec l
    db $d3
    dec l
    db $d3
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $20
    rra
    ld a, a
    adc a
    ld a, $cf
    rra
    rst $38
    ld e, $ff
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$09
    rst $28
    ldh a, [rIE]
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    nop
    or $00
    db $eb
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    sbc a
    ld h, b
    sbc a
    ld h, b
    sub a
    ld l, b
    rla
    add sp, $3f
    ret nz

    daa
    ret c

    dec bc
    db $f4
    dec bc
    db $f4
    ld c, $f1
    inc b
    ei
    ld [bc], a
    db $fd
    ld bc, $0dfe
    ld a, [c]
    ld bc, $00fe
    cp $02
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [rP1]
    ldh a, [rNR23]
    ldh [$15], a
    ldh [$15], a
    ldh [$39], a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ld a, h
    add b
    ld a, b
    add b
    ld a, c
    add b
    db $fc
    ld bc, $01ff
    rst $38
    ld bc, $03fd
    rst $38
    inc bc
    ei
    rlca
    rst $38
    rlca
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    ld e, $ff
    rra
    rst $38
    call c, $fe3f
    ccf
    cp $3f
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    db $76
    rst $38
    cp $ff
    db $ed
    cp $e5
    cp $fb
    db $fc
    ei
    db $fc
    db $db
    db $fc
    rst $38
    ld hl, sp-$0a
    ld sp, hl
    di
    db $fc
    pop hl
    cp $ac
    db $e3
    ld d, b
    ldh [$71], a
    cp $e3
    rst $18
    cp [hl]
    pop bc
    add e
    db $fc
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
    ld hl, sp+$00
    di
    nop
    ld a, l
    nop
    ld a, [c]
    nop
    ld l, h
    nop
    add c
    nop
    jr jr_098_6164

jr_098_6164:
    jr nz, jr_098_6166

jr_098_6166:
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
    jr jr_098_61a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_098_61b3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_098_61c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_098_61d3

    ld [hl-], a

jr_098_61a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_098_61e3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_098_61b3:
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

jr_098_61c3:
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
    ld d, b
    ld h, b
    ld h, c

jr_098_61d3:
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
    ld d, b
    ld d, b
    ld l, a

jr_098_61e3:
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
    ld d, b
    ld d, b
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
    ld d, b
    ld d, b
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
    ld d, b
    ld d, b
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
    ld d, b
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
    ld d, b
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
    or $50
    rst $30
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $72
    ld [hl], d
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
    ld d, b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, b
    ld d, $50
    ld d, b
    rla
    jr jr_098_62b5

    ld a, [de]
    ld d, b
    dec de
    inc e
    ld d, b
    dec e
    ld d, b
    ld d, b
    ld e, $50
    rra
    jr nz, jr_098_62ca

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $50
    daa
    ld bc, $0001
    nop
    nop

jr_098_62b5:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop

jr_098_62ca:
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0402
    inc b
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
    ld [bc], a
    nop
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    nop
    inc bc
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
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld bc, $0102
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    nop
    inc bc
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
    inc bc
    inc bc
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
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
    inc c
    inc c
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld bc, $0c0c
    inc c
    inc c
    inc c
    inc c
    ld bc, $010c
    ld bc, $0c09
    inc c
    inc c
    ld bc, $0c0c
    ld bc, $010c
    ld bc, $0109
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    ld bc, $fe0c
    ld bc, $08f7
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    nop
    ccf
    nop
    rst $38
    ld a, [hl]
    add c
    add b
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [de], a
    sub a
    ld l, b
    nop
    rst $38
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld h, h
    rst $38
    jp nz, Jump_000_22ff

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
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld a, [$ff00]
    ld b, $f9
    dec bc
    db $f4
    ld [hl], a
    adc b
    and e
    ld e, h
    and e
    ld e, h
    inc bc

jr_098_6457:
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $83fe
    ld a, h
    ld b, $f9
    nop
    rst $38
    ld b, b
    cp a
    ldh [$1f], a
    ldh [$1f], a
    add h
    ld a, e
    adc b
    ld [hl], a
    ret z

    scf
    adc b
    ld [hl], a
    add h
    ld a, e
    jr nz, jr_098_6457

    add b
    ld a, a
    add b
    ld a, a
    add d
    ld a, l
    add b
    ld a, a
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
    jr nz, @+$01

    ld c, b
    rst $38
    jr z, @+$01

    ld a, [hl+]
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
    db $fc
    jr c, jr_098_64ac

jr_098_64ac:
    dec b
    ei
    db $fd
    ei
    ld de, $11f9
    ld sp, hl
    add hl, bc
    ld sp, hl
    and b
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld a, c
    ld a, c
    add hl, sp
    add hl, sp
    sbc c
    sbc c
    ret


    ret


    pop hl
    pop hl
    pop af
    pop af
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld hl, sp-$04
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
    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    add sp, -$04
    call z, $3cfc
    db $fc
    inc a
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    push hl
    nop
    ld a, b
    add b
    cp $00
    call $f432
    dec bc
    add e
    ld a, h
    reti


    ld h, $f9
    ld b, $e8
    rla
    ld a, [$fc05]
    inc bc
    cp $01
    ld a, [c]
    dec c
    ld a, [$7005]
    adc a
    nop
    rst $38
    nop
    nop
    add c
    nop
    ei
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
    sbc b
    rst $38
    sbc b
    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
    ld bc, $03fe
    db $fc
    dec h
    jp c, $b847

    ld [hl], a
    adc b
    ccf
    ret nz

    ld [hl], a
    adc b
    ld e, a
    and b
    ccf
    ret nz

    cp e
    ld b, h
    ld e, a
    and b
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
    ei
    inc b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, d
    add l
    ld d, b
    xor a
    ld a, a
    add b
    dec sp
    call nz, $807f
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld e, a
    and b
    dec sp
    call nz, $8a75
    ld a, l
    add d
    ccf
    ret nz

    daa
    ret c

    dec l
    jp nc, $807f

    daa
    ret c

    dec [hl]
    jp z, $d02f

    dec bc
    db $f4
    ld bc, $93fe
    db $fc
    sub c
    cp $ff
    rst $38
    db $fc
    rst $38
    push hl
    ld hl, sp-$5f
    rst $00
    cpl
    rra
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    pop bc
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    ld sp, hl
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
    ld a, a
    ld a, a
    ccf
    cp a
    sbc a
    rst $18
    rst $08
    rst $08
    rst $20
    rst $20
    di
    di
    ld sp, hl
    ld sp, hl
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
    cp [hl]
    rst $38
    inc e
    db $fc
    ld a, b
    rlca
    adc h
    inc bc
    ld c, a
    nop
    xor a
    nop
    rst $30
    nop
    rra
    ldh [$83], a
    ld a, h
    pop bc
    ld a, $30
    rst $08
    nop
    rst $38
    nop
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
    inc bc
    nop
    cpl
    nop
    rst $38
    nop
    db $eb
    rra
    pop af
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    and d
    db $fd
    adc h
    di
    sbc a
    ldh [$0e], a
    pop af
    ld c, $f1
    ld c, $f1
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
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ret nc

    nop
    di
    nop
    jr nz, jr_098_6648

jr_098_6648:
    ld b, b
    nop
    ld h, b
    nop
    jr nz, jr_098_664e

jr_098_664e:
    nop
    nop
    ld h, b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    sub b
    nop
    or b
    nop
    db $fc
    nop
    db $fd
    nop
    ldh [rP1], a
    and b
    nop
    ldh [rP1], a
    ldh [rP1], a
    and b
    nop
    and b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ret nz

    nop
    and b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    db $f4
    nop
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fd
    nop
    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $08fe
    ldh a, [$a6]
    pop bc
    ld [hl+], a
    dec e
    ld b, d
    db $fd
    jp nc, $f2fd

    db $fd
    or $fd
    cp $fd
    cp $fd
    ld d, h
    db $fc
    add c
    db $fc
    ld a, [hl]
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld b, $f8
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld b, d
    db $fc
    nop
    cp $d0
    cp $fc
    cp $fc
    cp $fe
    cp $fe
    cp $fe
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
    rst $38
    ld a, [hl]
    rst $38
    inc a
    db $fc
    sbc b
    ei
    pop bc
    rst $20
    jp $87ce


    sbc b
    rra
    ld [hl], b
    ccf
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    pop bc
    ccf
    ldh a, [rIF]
    sbc h
    inc bc
    adc $01
    xor d
    nop
    dec [hl]
    ret nz

    dec c
    ldh a, [rSC]
    db $fc
    ld bc, $0cfe
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    adc a
    ld a, a
    ccf
    rst $38
    cpl
    rst $38
    ld b, $ff
    add b
    ld a, a
    inc b
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ld d, c
    xor [hl]
    ld sp, hl
    ld b, $7d
    add d
    rst $38
    nop
    rst $38
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
    nop
    ld d, a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    dec b
    nop
    inc bc
    nop
    add e
    nop
    add c
    nop
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_098_6752

jr_098_6752:
    stop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $18
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
    nop
    nop
    nop
    nop
    nop

jr_098_677b:
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
    ld bc, $2100
    nop
    nop
    nop
    ld b, b
    nop
    ld b, c
    nop
    cp h
    ld b, e
    jr jr_098_677b

    nop
    rst $38
    ld bc, $08fe
    ldh a, [rDMA]
    add c
    inc de
    inc c
    and b

jr_098_679f:
    ld e, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    cp a
    ld b, b
    ld d, a
    xor b
    inc b
    ei
    nop
    rst $38
    ld de, $00ff
    rst $38
    ld a, [c]
    rst $38
    inc bc
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    jr nz, jr_098_679f

    nop
    ld a, a
    nop
    ld a, a
    inc b
    ld a, a
    rlca
    ld a, a
    rla
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    db $fd
    ld a, [hl]
    rst $38
    ld a, b
    rst $28
    ld [hl], c
    jp Jump_098_5667


    adc a
    adc e
    inc e
    inc a
    ld [hl], e
    ld e, h
    db $e3
    cp h
    jp $05fb


    db $eb
    dec d
    db $eb
    dec d
    push de
    xor d
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    ld a, h
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    ld b, c
    cp a
    or b
    ld c, a
    db $ec
    inc de
    ld a, [$4305]
    cp h
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    add b
    ld a, a
    adc a
    ld a, a
    rst $38
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    dec de
    rst $38
    ld sp, $0bff
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ret nz

    ccf
    ret nc

    cpl
    ldh a, [rIF]
    ld a, [$fe05]
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $18
    nop
    ccf
    nop
    scf
    nop
    rla
    nop
    rra
    nop
    ccf
    nop
    ld c, a
    nop
    rra
    nop
    ccf
    nop
    cp a
    nop
    ld c, a
    nop
    rra
    nop
    rst $18
    nop
    rst $38
    nop
    ld b, a
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    dec b
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ccf
    nop
    cpl
    nop
    rrca
    nop
    rrca

jr_098_6881:
    nop
    rra
    nop
    adc a
    nop
    rst $18
    nop
    rrca
    nop
    sbc a
    nop
    rra
    nop
    rst $18
    nop
    ld bc, $0cfe
    ldh a, [rNR43]
    pop bc
    inc d
    dec bc
    ret nc

    rrca
    sub b
    ld c, a
    db $10
    rst $08
    sub b
    ld c, a
    db $10
    rst $08
    db $10
    rst $08
    db $10
    rst $08
    ld de, $1dcf
    rst $08
    rlca
    rst $18
    rst $08
    rst $18
    rst $08
    rst $38
    jr nc, jr_098_6881

    db $10
    rst $08
    ld e, d
    rst $08
    rlca
    rst $08
    rst $10
    rst $08
    rrca
    rst $08
    nop

jr_098_68bd:
    rst $08
    nop

jr_098_68bf:
    rst $08
    nop
    rst $08
    ld [bc], a
    rst $08
    inc b
    rst $08
    ld b, $cf
    ld c, [hl]
    rst $08
    adc $cc
    call nz, $cbc8
    pop bc
    jp nz, $84cf

    rst $08
    jr jr_098_6915

    ld hl, $407f
    rst $38
    add h
    rst $38
    jr nz, jr_098_68bd

    add b
    ld a, a
    sbc h
    ld l, e
    db $10
    rst $28
    ld c, [hl]
    or l
    jr z, jr_098_68bf

    or c
    ld e, [hl]
    or c
    ld c, [hl]
    push af
    ld a, [hl+]
    ld d, h
    xor e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ldh a, [$67]
    ld hl, sp-$27
    ld a, $ef
    rra
    ld [hl], a
    rrca
    dec e
    inc bc
    rrca
    nop
    rlca
    nop
    jp $f000


    ret nz

    db $fc

jr_098_6915:
    ldh a, [rIE]
    db $fc
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
    ld e, d
    rst $38
    add hl, bc
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    add b
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ret nc

    cpl
    ret nz

    ccf
    or h
    ld c, e
    sbc c
    ld h, [hl]
    add sp, $17
    db $fc
    inc bc
    ld a, b
    rlca
    db $fc
    inc bc
    ld a, [$fe05]
    ld bc, $00ff
    rst $38
    nop
    db $fd
    ld [bc], a
    ei
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
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
    ld [bc], a
    db $fd
    db $f4
    dec bc
    or $09
    push af
    ld a, [bc]
    rst $30
    ld [$00ff], sp
    rst $38
    nop
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
    db $fd
    ld [bc], a
    dec bc
    rst $38
    dec e
    rst $38
    dec d
    rst $38
    ld e, c
    rst $38
    ld [hl], e
    rst $38
    inc a
    rst $38
    nop
    db $fc
    nop
    db $e3
    sub b
    rlca
    db $10
    ld h, a
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    ld de, $16e7
    rst $20
    rla
    rst $20
    sub e
    rst $20
    or e
    rst $20
    pop af
    rst $20
    push af
    rst $20
    push af
    rst $20
    ld [bc], a
    push hl
    nop
    rst $20
    ld bc, $e0e6
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    and $e7
    add a
    db $e4
    add l
    ldh [$ad], a
    db $e3
    jp nz, Jump_000_1cef

jr_098_69c7:
    rst $08
    jr c, @+$21

    inc hl
    ld a, a
    jp nz, $8aff

    rst $38
    ret


    ccf
    ret


    ld a, a
    inc l

jr_098_69d5:
    rst $38
    jr nc, jr_098_69c7

    jr nz, @+$01

    ld [c], a
    cp a
    add d
    rst $38
    db $10
    rst $38
    db $e4
    ld e, e
    adc c
    ld a, a
    jr nc, jr_098_69d5

    nop
    rst $38
    jp nz, $8dbd

    or $28
    rst $10
    add hl, sp
    sub $ff
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
    ld hl, sp-$01
    ld a, [hl]

jr_098_6a00:
    rst $18
    ccf
    rst $38
    rrca

jr_098_6a04:
    ld a, e
    rlca

jr_098_6a06:
    ld a, $01

jr_098_6a08:
    sbc a
    nop

jr_098_6a0a:
    rst $38
    add b
    sbc a
    ldh [$87], a
    ld hl, sp-$80
    rst $38
    add b
    rst $38
    ldh [$9f], a
    ld a, l
    add d
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
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, $c0
    ld a, [hl-]
    ret nz

    ld a, $c0
    ld a, [de]
    ret nz

    ld a, [de]
    ret nz

    inc a
    ret nz

    jr @-$3e

    db $10
    ret nz

    jr nc, jr_098_6a00

    dec l
    ret nz

    jr c, jr_098_6a04

    jr z, jr_098_6a06

    jr nz, jr_098_6a08

    jr nc, jr_098_6a0a

    ld [hl-], a
    ret nz

    dec [hl]
    ret nz

    ld hl, $20c0
    ret nz

    ld sp, $2fc0
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    rra
    ldh [$1f], a
    ldh [$af], a
    ld h, b
    adc a
    ld h, b
    sbc a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    ccf
    ldh [$3f], a
    ldh [rIE], a
    ld h, b
    ldh [rIE], a
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$ef]
    ld [$1097], sp
    ld a, a
    jr @-$07

    rst $20
    db $10
    ld l, a
    sub b
    ld l, a
    sub b
    ld a, a
    add b
    rst $38
    nop
    ld l, a
    sub b
    cpl
    ret nc

    cpl
    ret nc

    ld a, d
    sub l
    ld [hl-], a
    db $dd
    ld [bc], a
    db $fd
    ld [$14f7], sp
    ei
    inc d
    ei
    ld d, h
    ei
    inc c
    ei
    nop
    rst $38
    ld [$88ff], sp
    ld a, a
    db $10
    rst $38
    inc a
    rst $00
    db $fc
    adc a
    ret nc

    ccf
    ldh [$7f], a
    adc e
    rst $38
    rla
    rst $38
    ld e, e
    rst $38
    ld l, e
    rst $38
    rst $10
    rst $38
    inc sp
    rst $38
    ld sp, $9aff
    rst $38
    ld [bc], a
    rst $38
    ld sp, $9bff
    rst $38
    ld c, c
    rst $38
    ld c, l
    rst $38
    ld b, c
    rst $38
    add hl, bc
    rst $38
    rlca
    db $fd
    rlca
    db $fd
    ld bc, $02fe
    db $fc
    nop
    db $fc
    push hl
    cp b
    rst $28
    or b
    ld bc, $40e0
    and b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    jr c, @+$01

    ld c, $ff
    rlca
    rst $38
    ld bc, $00ff
    ccf
    ret nz

    rrca
    ldh a, [$73]
    adc h
    ld a, b
    add a
    rst $38
    nop
    rst $38
    nop
    jp $a200


    nop
    add e
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    ld [hl], l
    nop
    sub b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    ldh [rP1], a
    pop bc
    nop
    and b
    nop
    ret nz

    nop
    ret nz

    nop
    add sp, $00
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ld sp, hl
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $f4
    dec bc
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $0aff
    rst $38
    dec bc
    db $fc
    scf
    ld hl, sp+$27
    ld hl, sp-$80
    ld a, [$f800]
    nop
    push af
    nop
    db $f4
    nop
    ld hl, sp+$40
    add b
    ld b, b
    cp d
    rra
    ldh [rNR23], a
    rst $38
    sub c
    rst $38
    ld e, c
    rst $38
    ld a, l
    rst $38
    ld [hl], $ff
    ld d, d
    rst $38
    cp d
    rst $38
    sbc d
    rst $38
    scf
    cp $99
    cp $27
    db $fc
    ccf
    ldh a, [$2d]
    ld a, [c]
    ccf
    ldh [$34], a
    ret nz

    ld c, b
    add c
    ld a, [bc]
    ld bc, $0322
    ld c, $03
    adc e
    ld b, $10
    rrca
    rst $10
    ld a, [de]
    ld l, l
    ld [de], a
    nop
    ld a, a
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld d, a
    nop
    add a
    nop
    dec bc
    nop
    rst $08
    nop
    ld l, e
    add b
    rra
    ldh [rBGP], a
    jr c, @+$2b

    ld e, $06
    rrca
    add l
    inc bc
    ld [c], a
    ld bc, $6090
    add h
    ld a, b
    jp nz, $c03c

    ccf
    ldh [$1f], a
    ld a, b
    rlca
    ld hl, sp+$07
    ld a, b
    rlca
    ld a, h
    inc bc
    ld a, b
    rlca
    ld hl, sp+$07
    inc a
    inc bc
    ld a, a
    nop
    dec a
    ld [bc], a
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $013e
    ccf
    nop
    ccf
    nop
    dec a
    ld [bc], a
    ld a, l
    ld [bc], a
    ld l, [hl]
    ld de, $033c
    ld l, h
    inc de
    ld a, h
    inc bc
    ld l, h
    inc de
    add sp, $17
    ret nz

    ccf
    jr c, jr_098_6c1f

    jr nc, jr_098_6c29

    ld a, b
    rlca
    jr c, @+$09

    ld a, b

jr_098_6c1f:
    rlca
    ld a, b
    rlca
    ld l, b
    rla
    jr c, jr_098_6c2d

    ld a, b
    rlca
    ld [hl], b

jr_098_6c29:
    rrca
    ld h, b
    rra
    ld h, b

jr_098_6c2d:
    rra
    ldh a, [rIF]
    ldh [$1f], a
    pop af
    rrca
    ldh [$1f], a
    ldh [$1f], a
    db $e3
    rra
    pop hl
    rra
    jp $c33f


    ccf
    db $d3
    ccf
    sub e
    ld a, a
    sub a
    ld a, a
    rrca
    rst $38
    sbc a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    ld [hl], h
    rst $38
    ldh [rIE], a
    add a
    ld hl, sp+$1b
    db $e4
    inc hl
    call c, Call_000_00ff
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
    ld bc, $14e0
    and [hl]
    ld bc, $e092
    and d
    ldh a, [$a2]
    ldh [$88], a
    ldh [$28], a
    pop bc
    ld a, h
    add e
    adc [hl]
    inc bc
    ld c, l
    rlca
    jp z, $860f

    rra
    call nc, Call_098_6d3f
    ccf
    xor b

Call_098_6c8b:
    ld a, a
    add hl, hl
    rst $38
    ld c, b
    rst $38
    ld b, d
    rst $38
    db $10
    rst $38
    inc e
    rst $30
    cp [hl]
    push de
    ld [$e1f7], sp
    cp a
    ld a, d
    xor l
    inc e
    db $eb
    db $fd
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    cp $00
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
    ld h, b
    cp a
    jr jr_098_6cc4

    inc c
    add [hl]
    inc bc

jr_098_6cc4:
    ld [hl+], a
    pop bc
    ld [$02f0], sp
    db $fc
    db $10
    rst $28
    ld a, h
    add e
    add c
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $f4
    ld sp, hl
    or $f9
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    sbc a
    ldh [$8f], a
    ldh a, [$87]
    ld hl, sp-$7d
    db $fc
    add a
    ld hl, sp-$61
    ldh [$e0], a
    add b
    ret nz

    add b
    ldh a, [$80]
    ld hl, sp-$80
    db $fc
    add b
    call c, $dca0
    and b
    call z, $ecb0
    sub b
    and h
    ret c

    or h
    ret z

    cp h
    ret nz

    cp b
    ret nz

    cp b
    ret nz

    cp h
    ret nz

    adc h
    ldh a, [$96]
    add sp, -$7a
    ld hl, sp-$3e
    db $fc
    adc b
    or $c4
    ld a, [$ffa0]
    ldh a, [rIE]
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    ret nc

    rst $38
    ld [$ceff], sp
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    ld [hl], $ff
    db $10
    rst $38

jr_098_6d3b:
    jr nz, @+$01

    nop
    rst $38

Call_098_6d3f:
    nop
    rst $38

jr_098_6d41:
    nop
    rst $38
    nop
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
    add b
    ld [$c8f0], sp
    rla
    push af
    ld a, [bc]
    rst $10
    ld a, a
    sbc l
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    sbc [hl]
    rst $38
    cp e
    rst $38
    xor e
    rst $38
    db $ec
    rst $38
    ld d, l
    rst $38
    push af
    rst $38
    sub [hl]
    rst $38
    sub l
    rst $38
    inc l
    rst $38
    ld b, c
    rst $38
    ld de, $42ff
    rst $38
    cp $b5
    nop
    rst $38
    add c
    ld a, a
    nop
    rst $38
    rst $20

jr_098_6d7f:
    ld e, d
    nop
    rst $38
    ccf
    call z, $c233
    ld de, $08e1
    ldh a, [rDIV]
    ld hl, sp+$06
    ld hl, sp+$03
    db $fc
    xor $10
    inc bc
    db $fc
    rst $08
    jr nc, jr_098_6e15

    add c
    dec c
    ld a, [c]
    ccf
    ret nz

    rrca
    ldh a, [$03]
    db $fc
    ld a, [hl]
    nop
    pop af
    nop
    inc b
    ret nz

    ld b, b
    jr nc, jr_098_6dd1

    rra
    rrca
    inc b
    dec b
    jp nz, $f46b

    xor h
    ld [hl], b
    xor c
    ld [hl], b
    add b
    ld [hl], b
    adc b
    ld [hl], b
    ret nz

    jr nc, jr_098_6d3b

    ld [hl], b
    ret nz

    jr nc, jr_098_6d7f

    jr nc, jr_098_6d41

    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    ldh [$30], a
    add b
    ld [hl], b
    and b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    xor b

jr_098_6dd1:
    ld [hl], b
    and b
    ld [hl], b

jr_098_6dd4:
    and b
    ld [hl], b
    and b
    ld [hl], b
    or b
    ld h, b
    sub b
    ld h, b

jr_098_6ddc:
    or b
    ld h, b
    or b
    ld h, b
    and b
    ld [hl], b
    jr nz, jr_098_6dd4

    and b
    ld [hl], b
    or b
    ld h, b
    or b
    ld h, b
    jr nz, jr_098_6ddc

    ld h, b
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e8]
    ldh a, [$f7]
    ld hl, sp-$01
    rst $38
    push de
    rst $38
    nop

Jump_098_6dff:
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
    rlca
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_098_6e15:
    rst $38
    rst $38
    ld d, a
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    nop
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
    nop
    stop
    and b
    ld b, b
    cp a
    add [hl]
    ld sp, hl
    ld [$76ff], a
    rst $38
    ld a, l
    rst $38
    db $db
    rst $38
    cp [hl]
    rst $38
    ld l, l
    rst $38
    rst $38
    rst $38
    or [hl]
    rst $38
    or a
    rst $38
    ld c, l
    rst $38
    sub d
    rst $38
    dec [hl]
    cp $2d
    cp $4b
    db $fc
    db $10
    db $fc
    add d
    db $fc
    inc hl
    ld hl, sp-$7d
    ld a, b
    ld bc, $20f0
    ret nc

    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    jp hl


    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    ret nz

    ccf
    ldh [$df], a
    jr nc, jr_098_6eb5

    jr jr_098_6e9f

    sbc b
    sub a
    call z, Call_098_6c8b
    ld c, e
    db $76
    ld b, l
    nop
    nop
    add c
    ld [bc], a
    db $d3
    inc l
    ldh [$1f], a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    db $fc

jr_098_6e9f:
    nop
    ld b, $f8
    inc bc
    db $fc
    ld bc, $fffe
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $0efe
    pop af
    rlca

jr_098_6eb5:
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld a, a
    add b
    ld a, d
    add l
    rst $08
    jr nc, jr_098_6ef0

    ret c

    sbc a
    ld h, b
    rra
    ldh [rIF], a
    ldh a, [rNR10]
    rst $28
    ld de, $7fee
    add b
    ld a, e
    add h
    rst $38
    nop
    dec de
    db $e4
    dec c
    ld a, [c]
    rla
    add sp, $08
    rst $30
    db $10
    rst $28
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

jr_098_6ef0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    db $f4
    rst $38
    xor a
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
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld c, a
    rst $38
    ld bc, $08ff
    rst $38
    ld [$17f7], sp
    add sp, -$09
    ld [$708f], sp
    ei
    inc b
    nop
    nop
    nop
    nop
    ld c, h
    add b
    jr nz, jr_098_6fa7

    ld d, b
    xor a

jr_098_6f2a:
    sub b
    rst $28
    sbc $e1
    ld a, d
    push bc
    or [hl]
    ret


    cp a
    pop bc
    dec a
    jp $83fd


    ld d, [hl]
    xor e
    add e
    ld a, a
    ld a, [$f907]
    rlca
    ld a, [$fc07]
    rlca
    ld [hl], d
    rrca
    ld [bc], a
    rrca
    inc b
    rrca
    ld d, l
    rrca
    ldh a, [rIF]
    nop

jr_098_6f4f:
    rra
    rst $08
    ccf
    rst $08
    ccf
    rst $20
    rra
    rst $28
    rra
    rst $20
    rra
    ld h, a
    sbc a
    ld h, a
    sbc a
    rst $30
    adc a
    ld [hl], a
    adc a
    scf
    rst $08
    scf
    rst $08
    dec sp
    rst $00
    dec sp
    rst $00
    dec de
    rst $20
    dec de
    rst $20
    dec bc
    rst $30
    ldh a, [$03]
    adc d
    ld [hl], c
    adc d
    ld [hl], c
    sbc b
    ld h, c
    ld [$c6f1], sp
    add hl, sp
    db $d3
    inc l
    rst $20
    jr jr_098_6f2a

    ld d, [hl]
    ld hl, $80de
    ld a, a
    jr c, jr_098_6f4f

    adc l
    ld [hl], d
    pop bc
    ld a, $f0
    rrca

jr_098_6f8e:
    rra
    nop
    or b
    rrca
    ld e, b
    rlca
    ld sp, hl
    rlca
    rst $38
    rst $38

jr_098_6f98:
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
    ld b, a
    cp b
    ld c, a
    or b
    rst $10

jr_098_6fa7:
    jr z, jr_098_6f98

    db $10
    rst $18
    jr nz, @-$1f

    jr nz, jr_098_6f8e

    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    db $db
    inc h
    rst $18
    jr nz, jr_098_6f98

    inc h
    rla
    add sp, -$40
    ccf
    ld b, e
    cp h
    swap h
    rst $08
    jr nc, jr_098_6f98

    jr nc, jr_098_6fda

    ldh a, [$cb]
    inc [hl]
    ld b, d
    cp l
    add h
    ld a, e
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_098_6fda:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    jr nz, jr_098_6fe4

jr_098_6fe4:
    jr nz, jr_098_6fe6

jr_098_6fe6:
    ld hl, $2b00
    nop
    ld [bc], a
    db $fd
    rst $38
    rst $38
    sbc $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    call nz, $feff
    rst $38
    cp $ff
    rst $30
    rst $38
    cp l
    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    nop
    rst $38
    ld e, b
    and a
    add sp, $17
    ldh a, [rIF]
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, l
    nop
    rst $38
    sbc a
    ld h, b
    inc de
    db $fc
    sub $ff
    sbc c
    rst $38
    ld d, [hl]
    rst $38
    adc d
    rst $38
    ld l, d
    rst $38
    jp nc, Jump_098_6dff

    rst $38
    push de
    rst $38
    ld h, h
    rst $38
    set 7, a
    and h
    rst $38
    ld c, c
    rst $38
    sub d
    rst $38
    inc h
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    cp b
    rst $28
    ld hl, sp-$04
    ld hl, sp-$04
    ret c

    db $fc
    cp b
    db $fc
    ld hl, sp-$04
    cp h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp [hl]
    db $fc
    cp b
    db $fc
    xor b
    db $fc
    ret nc

    db $fc
    add b
    db $fc
    ret z

    db $fc
    ret z

    db $f4
    ret nc

    db $ec
    db $fc
    ret nz

    ld [$42d4], a
    db $fc
    ld b, d
    db $fc
    ld [c], a
    ld a, h
    ld [c], a
    ld a, h
    and b
    ld a, [hl]
    or h
    ld a, [hl]
    cp $3e
    sbc $3e
    ccf
    ld e, $3f
    ld e, $2c
    ld e, $5c
    ld l, $18
    ld c, $80
    ld e, $88
    ld e, $e9
    ld e, $1f
    adc $07
    adc $0c
    ld b, $0b
    inc b
    ld de, $0c0c
    nop
    ld b, b
    cp a
    add b
    ld a, a
    call nz, $cc3b
    inc sp
    ld a, [$7d05]
    add d
    ld a, [hl]
    add c
    cp $01
    cp $01
    db $fc
    inc bc
    db $f4
    dec bc
    push af
    ld a, [bc]
    jp c, $e425

    dec de
    ld [$5015], a

jr_098_70bf:
    xor a
    nop
    rst $38
    ld [hl], b
    adc a
    ld a, [$f905]
    ld b, $f3
    inc c
    db $ec
    inc de
    ld h, [hl]
    sbc c
    db $ec
    inc de
    ld c, b
    or a
    ld c, [hl]
    or c
    inc b
    ei
    jr jr_098_70bf

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
    ld [$1000], sp
    nop
    jr nz, jr_098_70e8

jr_098_70e8:
    adc c
    nop
    rst $38
    nop
    db $fc
    rst $38
    rst $18
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$7dff], sp
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    and a
    ld a, [hl]
    add c
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    rst $38
    nop
    cp e
    nop
    rst $38
    ld a, [bc]
    ld bc, $f04e
    sub h
    rst $38

jr_098_7122:
    sbc d
    rst $38

jr_098_7124:
    and h
    rst $38
    sub d
    rst $38
    ld l, h
    rst $38
    ld d, d
    rst $38
    cp $ff
    sub d
    rst $38
    ld a, c
    rst $28
    add [hl]
    rst $38
    add hl, hl
    rst $38
    ld [de], a
    rst $38
    ld c, c
    rst $38
    ld c, e
    cp $a5
    rst $38
    ld b, d
    ld a, d
    cp h
    ld c, h
    xor h
    ld e, h
    jr z, jr_098_7122

    jr z, jr_098_7124

    inc a
    ret c

    inc a
    ret c

    ld a, l
    sbc b
    add hl, sp
    ret c

    ld c, b
    cp c
    ld [hl], c
    sbc c
    ld a, c
    sbc c
    ld h, c
    sbc c
    ld l, e
    sub c
    ld l, d
    sub c
    ld h, d
    sub c
    ld h, c
    sub d
    ld de, $7382
    add d
    ld h, c
    sub d
    ld d, l
    and d
    ld h, e
    sub l
    ld b, c
    or a
    ld h, l
    or a
    ld h, h
    or a

jr_098_7170:
    ld a, [hl]
    rst $20
    ld a, [hl]
    rst $20
    cp e
    and $a7
    xor $05
    xor $05
    xor $09
    xor $60
    adc [hl]
    jr jr_098_7170

    ld l, b
    sbc $68
    sbc $8a
    ld e, h
    adc d
    ld e, h
    ld b, d
    cp h
    db $76
    adc b
    ld b, $08
    ldh a, [$0e]
    ldh a, [$0e]
    ldh a, [$0e]
    ldh a, [$0e]
    ldh a, [$0e]
    or d
    inc c
    ldh a, [$0e]
    ld a, [c]
    inc c
    ld c, $00
    ld c, $00
    ld c, $00
    inc c
    nop
    ld [$0a04], sp
    inc b
    ld c, $00
    ld a, [bc]
    inc b
    ld c, $00
    ld [$0a04], sp
    inc b
    ld a, [bc]
    inc b
    ld [$0804], sp
    inc b
    inc c
    nop
    ld [$1404], sp
    ld [$0418], sp
    jr @+$06

    db $10
    inc c
    inc d
    ld [$0c10], sp
    inc d
    ld [$0814], sp
    db $10
    inc c
    inc d
    ld [$1c00], sp
    db $10
    inc c
    inc [hl]
    ld [$18c4], sp
    db $10
    db $fc
    ldh a, [$fc]
    db $f4
    ld hl, sp+$0c
    ld hl, sp+$1c
    ld hl, sp+$08
    db $fc
    jr c, @-$02

    cp h
    ld hl, sp-$04
    ld hl, sp-$10
    db $fc

jr_098_71f0:
    ld hl, sp-$04
    db $fc
    ld hl, sp-$08
    db $fc
    ld e, b
    db $fc
    ld [$09fc], sp
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$70
    adc h
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$0af4], sp
    cp $00
    cp $00
    sub d
    ld l, h
    jr z, jr_098_71f0

    ld bc, $03fe
    db $fc
    ld b, c
    cp [hl]
    cp d
    add $4e
    ld a, [c]
    and h
    ei
    ld b, h
    ei
    xor h
    ei
    call nc, $a8fb
    rst $38
    ldh a, [rIE]
    jr z, @+$01

    sub h
    ei
    jr z, @+$01

    jr nc, @+$01

    inc c
    ei
    sub b
    rst $38
    jr nz, @+$01

    ld d, b
    db $dd
    ld hl, sp+$5c

jr_098_7242:
    xor h
    ld e, b
    inc a
    ret c

    db $10
    ld hl, sp-$70
    ld hl, sp+$18
    ldh a, [$e8]
    or b
    ld l, b
    or b

jr_098_7250:
    jr nz, jr_098_7242

    or b
    ld h, b
    sub b
    ld h, b
    ret nz

    ld h, b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    nop
    ret nz

    jp nz, $c9fd

    or $8a
    push af
    add a
    ld hl, sp-$79
    ld hl, sp-$51
    ret nc

    inc de
    db $ec
    dec hl
    call nc, $d42b
    ld l, a
    sub b
    ld a, e
    add h
    ld a, e
    add h
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $30
    ld [$00ff], sp

jr_098_7284:
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
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
    rst $18
    jr nz, @+$01

    nop
    rst $30
    ld [$04fb], sp
    or $09
    rst $38
    nop
    ld a, [c]
    dec c
    push af
    ld a, [bc]
    rst $30
    ld [$0cf3], sp
    or a
    ld c, b
    rst $38
    nop
    rst $10
    jr z, jr_098_7284

    ld a, [hl+]
    sub a
    ld l, b
    ld d, a
    xor b
    ld d, e
    xor h
    dec d
    ld [$ea15], a
    inc de
    db $ec
    jp $833c


    ld a, h
    jp $c03c


    ccf
    adc $31
    rst $00
    jr c, jr_098_7250

    ld a, b
    adc a
    ld [hl], b
    sbc a
    ld h, b
    sub a
    ld l, b
    sbc [hl]
    ld h, b
    sbc a
    ld h, b
    sbc [hl]
    ld h, b
    sbc [hl]
    ld h, b
    rra
    ldh [rNR34], a
    ldh [$9f], a
    ld h, b
    ld e, $e0
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    ld e, $e0
    ld e, $e0
    ld a, $c0
    inc e
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [$3c], a
    ret nz

    inc e
    ldh [rNR32], a
    ldh [$3c], a
    ret nz

    inc e
    ldh [rNR32], a
    ldh [rNR23], a
    ldh [$3c], a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    cp b
    ret nz

    jr @-$1e

    ld e, b
    and b
    ld e, b
    and b
    ld e, b
    and b
    ld e, b
    and b
    ld e, b
    and b
    ld hl, sp-$80
    add sp, -$70
    ld l, b
    sub b
    ld l, b
    sub b
    ld a, b
    add b
    ld l, b
    sub b
    ld e, b
    and b
    ret c

    and b
    ld hl, sp-$80
    call c, $9ca0
    ldh [$9c], a
    ldh [$dc], a
    and b
    sbc h
    ldh [$9c], a
    ldh [$9e], a
    ldh [$ba], a
    ret nz

    ld sp, $51ce
    xor [hl]
    rrca
    ldh a, [$5b]
    and h
    cpl
    ret nc

    add e
    ld a, h
    ld d, l
    xor d
    ld [hl], a
    adc b
    ld c, [hl]
    or c
    ld e, a
    and b
    ld a, a
    add b
    ld a, a
    add b
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
    cp $00
    cp $00
    db $fd
    nop
    cp $00
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    db $f4
    nop
    ld a, [$f800]
    nop
    add sp, $00
    db $ec
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    add sp, $00
    add sp, $00
    ld hl, sp+$00
    add sp, $00
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    add sp, $00
    add sp, $00
    ldh [rP1], a
    ret nc

    nop
    add sp, $00
    ldh a, [rP1]
    ldh [rP1], a
    ret z

    nop
    ret nz

    nop
    ret nz

    nop
    ret nc

    nop
    ret nz

    nop
    add b
    nop
    sub b
    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ldh [rP1], a
    cp b
    nop
    jr jr_098_73bc

jr_098_73bc:
    inc c
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    inc bc
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
    nop
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_098_73f8

jr_098_73f8:
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $eb00
    inc d
    ei
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
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
    rst $28
    nop
    rst $38
    nop
    xor [hl]
    nop
    ld l, a
    nop
    ld l, a
    nop
    rst $28
    nop
    adc a
    nop
    rst $28
    nop
    adc a
    nop
    rrca
    nop
    sbc l
    nop
    ld e, a
    nop
    adc a
    nop
    rrca
    nop
    sbc e
    nop
    rra
    nop
    sbc a
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
    nop
    rra
    nop
    rra
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    db $10
    scf
    ld [$047b], sp
    ld a, h
    inc bc
    ld a, [hl]
    ld bc, $007f
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
    ld a, a
    nop
    ld a, l
    nop
    ld a, l
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
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
    rst $18
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
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    sbc a
    nop
    rst $18
    nop
    rlc b
    rst $18
    nop
    db $db
    nop
    rst $38
    nop
    sbc a
    nop
    ccf
    nop
    rrca
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    sbc a
    ld h, b
    add a
    ld a, b
    db $e3
    inc e
    pop af
    ld c, $f8
    rlca
    cp $01
    cp $01
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $18
    nop
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $30
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
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
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
    rst $38
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_098_75e6:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $fd
    ld [bc], a
    ld sp, hl
    ld b, $fb
    inc b
    di
    inc c
    ei
    inc b
    pop af
    ld c, $f9
    ld b, $f1
    ld c, $f3
    inc c
    ei
    inc b
    db $eb
    inc d
    pop hl
    ld e, $f1
    ld c, $f3
    inc c
    pop hl
    ld e, $e9
    ld d, $cb
    inc [hl]
    rst $00
    jr c, jr_098_75e6

    ld a, [hl-]
    pop hl
    ld e, $e0
    rra
    inc b
    ei
    ld [$02f7], sp
    db $fd
    inc bc
    db $fc
    ret nz

    ccf
    ret nz

    ccf
    sub b
    ld l, a
    ret c

    daa
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
    ld a, a
    nop
    ld a, a
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
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_098_76a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_098_76b3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_098_76c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_098_76d3

    ld [hl-], a

jr_098_76a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_098_76e3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_098_76b3:
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

jr_098_76c3:
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

jr_098_76d3:
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

jr_098_76e3:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    db $10
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
    db $10
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
    db $10
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
    db $10
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
    db $10
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
    db $10
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
    sub e
    nop
    ld bc, $0293
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    cp $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_098_77ac

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_098_77bc

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_098_77cc

    ld a, [hl+]
    dec hl
    db $10
    inc l
    dec l
    ld l, $2f
    jr nc, jr_098_77dd

jr_098_77ac:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_098_77bc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_098_77cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_098_77dd:
    nop
    nop
    nop
    nop
    ld bc, $0401
    inc b
    inc b
    ld bc, HeaderLogo
    ld bc, $0001
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
    inc b
    inc b
    inc b
    ld bc, $0404
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
    inc bc
    inc bc
    nop
    inc bc
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld bc, $0101
    ld bc, $0001
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
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0008], sp
    ld [$0b08], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0b08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$946b], sp
    ld [hl], e
    adc h
    dec sp
    call nz, $b44b
    swap h
    reti


    ld h, $da
    dec h
    db $db
    inc h
    db $db
    inc h
    ld a, [$9b05]
    ld h, h
    cp h
    ld b, e
    jp c, $ed25

    ld [de], a
    db $fd
    ld [bc], a
    ld hl, sp+$07
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, l
    add d
    push af
    ld a, [bc]
    ld a, h
    add e
    ld a, [hl]
    add c
    ld a, h
    add e
    ld a, [hl]
    add c
    ld a, $c1
    sbc [hl]
    ld h, c
    ld a, $c1
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    ld a, h
    add e
    db $fc
    inc bc
    cp $01
    xor $11
    xor $11
    cp $01
    adc $31
    swap h
    rst $28
    db $10
    di
    inc c
    jp hl


    ld d, $f7
    ld a, [bc]
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    cp $01
    sbc $01
    sbc $01
    rst $30
    ld [$04fb], sp
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    ccf
    ret nz

    ld a, [hl]
    add c
    ld a, [hl]
    add c
    sbc [hl]
    ld h, c
    ld a, a
    add b
    ld a, a
    add b
    ld hl, sp+$07
    push af
    ld a, [bc]
    ld [hl], l
    adc d
    cp l
    ld b, d
    add hl, sp
    add $1c
    db $e3
    ld bc, $02ff
    rst $38
    inc a
    rst $38
    dec [hl]
    cp $e1
    cp $40
    rst $38
    ld bc, $0afe
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$20ff], sp
    rst $18
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
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
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, d
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
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, jr_098_7a94

    add b
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

    cpl
    ret nc

    rst $38
    nop
    ld a, a
    add b
    scf
    ret z

    ld h, a
    sbc b
    rst $20
    jr @+$65

    sbc h
    scf
    ret z

    ld l, a
    sub b
    ld e, a
    and b
    rla
    add sp, $37
    ret z

    ccf
    ret nz

    rla
    add sp, $07
    ld hl, sp+$27
    ret c

    rrca
    ldh a, [rIF]
    ldh a, [rBGP]
    cp b
    rrca
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$87]
    ld a, b
    adc e
    ld [hl], h
    sub e
    ld l, h
    sub c
    ld l, [hl]
    add c
    ld a, [hl]
    sub c
    ld l, [hl]
    and c
    ld e, [hl]
    add d
    ld a, l
    add c
    ld a, [hl]
    add e
    ld a, h
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add b
    ld a, a
    and c
    ld a, [hl]
    ret nz

    ccf
    ldh [$3f], a
    add b
    ld a, a
    and b
    ld a, a
    nop
    rst $38
    and b
    ld a, a
    ld h, b
    cp a
    rst $08

jr_098_7a79:
    ccf
    ld e, $ff
    jr @+$01

    nop

jr_098_7a7f:
    rst $38
    and b
    rst $38
    nop
    rst $38
    add b
    rst $38
    jr z, jr_098_7a7f

    ld b, b

jr_098_7a89:
    rst $38
    ld hl, $02fe
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38

jr_098_7a94:
    nop
    rst $38
    db $10
    rst $38
    adc b
    ld a, a
    ld bc, $80fe

jr_098_7a9d:
    ld a, a
    ld bc, $21fe
    sbc $20
    rst $18
    and b

jr_098_7aa5:
    ld e, a
    ld [hl], b

jr_098_7aa7:
    adc a
    ld d, b
    xor a
    ld [hl], b
    adc a
    ld e, b
    and a
    jr nc, jr_098_7a7f

    jr c, jr_098_7a79

    inc [hl]
    rst $08
    jr jr_098_7a9d

    inc l
    rst $10
    jr nc, jr_098_7a89

    jr nc, @-$2f

    jr jr_098_7aa5

    jr jr_098_7aa7

    ld [$00f7], sp
    rst $38
    ld b, b
    cp a
    ld b, h
    cp a
    ld a, [bc]
    rst $30
    nop
    rst $38
    ld [$02f7], sp
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    ei
    inc c
    di
    inc c
    di
    inc c
    di
    inc b
    ei
    inc c
    di
    dec b
    ei
    ld [$00f7], sp
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
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    add sp, $00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    add sp, $00
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, [c]
    nop
    ld hl, sp+$00
    ret c

    nop
    ld hl, sp+$00
    add sp, $00
    ldh [rP1], a
    db $f4
    nop
    or $00
    ldh [rP1], a
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [$fe00]
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
    rst $38
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    ld l, a
    sub b
    dec a
    jp nz, $c23d

    ld [hl+], a
    call c, $f806
    ld c, h
    ldh a, [$bc]
    ret nz

    ld a, l
    add b
    ld [hl], h
    add b
    ld e, h
    add b
    ld a, d
    add b
    ld a, b
    add b
    ld a, h
    add b
    db $fc
    nop
    sbc h
    ld h, b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ccf
    ret nz

    rra
    ldh [$2e], a
    ret nc

    ld l, l
    sub b
    ld a, e
    add b
    ld a, d
    add b
    dec sp
    ret nz

    ld a, l
    add b
    cp h
    ld b, b
    db $76
    adc b
    ccf
    ret nz

    ld a, a
    add b
    db $fd
    nop
    ld a, l
    add b
    ld [hl], a
    adc b
    ld e, a
    and b
    rst $18
    jr nz, @+$01

    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    ccf

jr_098_7bb9:
    ret nz

    rra
    ldh [$5f], a
    and b
    rrca
    ldh a, [rIF]
    ldh a, [rNR22]
    add sp, $1f
    ldh [$2f], a
    ret nc

    ccf
    ret nz

    dec hl
    call nc, $f00f
    rlca
    ld hl, sp+$4f
    or b
    ld c, a
    or b
    rrca
    ldh a, [rBGP]
    cp b
    rlca
    ld hl, sp+$0d
    ld a, [c]
    dec h
    jp c, $e718

    jr z, jr_098_7bb9

    db $10
    rst $28
    inc d
    db $eb
    nop
    rst $38
    inc b
    ei
    inc c
    di
    add hl, bc
    or $8c
    di
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
    rst $38
    ld b, b
    cp a
    ld l, b
    sub a
    ld h, b
    sbc a
    ld h, [hl]
    sbc c
    ld l, b
    sub a
    ld a, [hl-]
    push bc
    ld a, d
    add l
    ld a, $c1
    ld a, $c1
    ld a, a
    add b
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cpl
    ret nz

    cpl
    ret nz

    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    rrca
    ldh [$1f], a
    ldh [rIF], a
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [$1f], a
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [$1f], a
    ldh [rNR22], a
    ldh [rTAC], a
    ldh a, [$0b]
    ldh a, [$0b]
    ldh a, [$0b]
    ldh a, [$0b]
    ldh a, [$0b]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp+$17
    add sp, $07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
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
    ld bc, $03fe
    db $fc
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    ld bc, $01fe
    cp $c0
    nop
    ret nz

    nop

jr_098_7ca4:
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop

Call_098_7caa:
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    add sp, $00
    add sp, $00
    ret nc

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $e4
    nop
    add sp, $00

jr_098_7cce:
    db $ec
    nop
    db $fc
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
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
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $18
    jr nz, jr_098_7cce

    jr nz, jr_098_7ca4

    db $e3
    or e
    db $e3
    add e
    di
    pop de
    di
    ld a, e
    pop de
    ld c, c
    pop af
    pop bc
    ld a, c
    ld [hl], c
    ld l, c
    jr c, jr_098_7d6b

    ld l, h
    add hl, sp
    ld b, l
    jr c, jr_098_7d20

    inc [hl]
    ld [$2034], sp
    inc e
    ld [bc], a
    inc e
    ld [de], a
    inc c
    ld [de], a
    inc c
    inc b
    ld c, $0c
    ld b, $04
    ld b, $07
    ld b, $02
    rlca
    rlca
    inc bc
    inc bc
    inc bc

jr_098_7d20:
    and e
    ld e, a
    pop bc
    ccf
    add c
    ld a, a
    and b
    ld e, a
    add sp, $17
    ldh [$1f], a
    add sp, $17
    ld hl, sp+$07
    xor $11
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

jr_098_7d40:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    jr nz, jr_098_7d40

    ld [$08f5], sp
    db $ed
    db $10
    db $fd

jr_098_7d51:
    nop
    sbc l
    ld h, b
    db $fd
    nop
    db $ed
    db $10
    call $bb30
    ld b, h
    pop de
    inc l
    dec b
    ld hl, sp+$0c
    ldh a, [$34]
    ret z

    db $f4
    ld [$08f4], sp
    db $fc
    nop
    db $e4

jr_098_7d6b:
    jr jr_098_7d51

    jr jr_098_7d6b

    nop
    db $f4
    ld [$08f4], sp
    ld [hl], h
    adc b
    db $f4
    ld [$08f4], sp
    db $f4
    ld [$08f4], sp
    or $08
    or $08
    or $08
    jp nc, $e22c

    inc e
    jp nc, $f22c

    inc c
    di
    inc c
    di
    inc c
    ld [c], a
    inc e
    ldh a, [$0e]
    push af
    ld a, [bc]
    pop af
    ld c, $f1
    ld c, $c3
    inc a
    jp $c33c


    inc a
    pop bc
    ld a, $c1
    ld a, $e3
    inc e
    jp nz, $e23d

    dec e
    ld [c], a
    dec e
    ld [c], a
    dec e
    ldh [$1f], a
    jp $c13d


    ccf
    jp $c13d


    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    jp Jump_098_433f


    cp a
    ld b, e
    cp a
    rst $00
    ccf
    rlca
    ccf
    dec b
    ccf
    rlca
    ccf
    rlca
    cp a
    rlca
    sbc a
    ld b, $9f
    ld a, [bc]
    sbc a
    ld c, $9f
    nop
    rra
    ld a, [bc]
    sbc a
    rrca
    sbc a
    rlca
    sbc a
    rrca
    sbc a
    inc c
    sbc a
    inc c
    sbc a
    inc d
    sbc a
    ld b, e
    and a
    inc bc
    rst $20
    ld b, e
    and a
    db $e3
    and a
    ld h, a
    and e
    di
    and a
    db $d3
    and a
    ld d, e
    and a
    ld d, e
    and a
    ld d, d
    and a
    db $76
    add e
    inc [hl]
    jp $9364


    inc [hl]
    jp $d324


    and [hl]
    ld d, c
    jr nz, jr_098_7e65

    ld h, h
    ld d, e
    ld h, b
    ld d, e
    ld b, a
    ld [hl], e
    ld h, e
    ld [hl], e
    ld h, a
    inc sp
    ld [hl], a
    inc sp
    scf
    inc sp
    or a
    inc sp
    ccf
    or e
    sub a
    cp e
    db $fd

jr_098_7e27:
    sbc e
    cpl
    reti


    pop af
    ld c, $eb
    inc e
    jp nc, $ff3c

    db $10
    rst $20
    jr jr_098_7e27

    inc c
    cp $00
    ld a, [$fe00]
    nop
    db $fc
    nop
    cp h
    nop
    cp $00
    ld hl, sp+$00
    ld [$f900], a
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    ld [hl], b
    nop
    ld a, h
    nop
    ld a, e
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld h, [hl]
    nop
    jr z, jr_098_7e5e

jr_098_7e5e:
    nop
    nop
    nop
    nop
    ld bc, $0400

jr_098_7e65:
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
    nop
    nop
    stop
    nop
    nop
    ld bc, $0000
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
    rlca
    nop
    inc a
    inc bc
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    scf
    ld a, a
    ld h, d
    ld a, a
    nop
    ld a, a
    ld d, $69
    daa
    ld e, b
    nop
    ld l, a
    adc [hl]
    ld [hl], b
    ld [hl], d
    dec c
    ld bc, $883f
    ccf
    ret nz

    ccf
    jp hl


    scf
    pop bc
    ccf
    add l
    ld a, e
    jp Jump_000_083f


    rst $38
    ld a, [hl-]
    rst $38
    ld [hl], $ff
    dec hl
    rst $38
    ld d, a
    rst $38
    inc l
    rst $38
    ld h, d
    rst $38
    ld e, d
    rst $38
    dec c
    rst $38
    ld d, c
    rst $38
    ld bc, $2dfe
    ret nc

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    rla
    add sp, $7f
    add b
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
    xor $11
    rst $08
    ld [hl-], a
    and $1b
    ret nz

    ccf
    ret nc

    cpl
    push hl
    ld a, [de]
    ei

jr_098_7ef1:
    db $fc
    rst $30
    ld hl, sp-$0a
    ld hl, sp-$0a
    ld hl, sp-$0a
    ld hl, sp-$0a
    ld hl, sp-$04
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$e8]
    ldh a, [$f8]
    ldh a, [rBCPS]
    ldh a, [rBCPS]
    ldh a, [$f8]
    ldh [$f0], a
    ld h, c
    jr nc, jr_098_7ef1

    ld d, b
    pop hl
    ld h, b
    pop bc
    ld h, b
    jp nz, $c280

    ret nz

    add d
    call nz, $c683
    add a
    rst $00
    add a
    adc a
    rst $00
    add b
    rst $08
    add a
    ret z

    add [hl]
    ret z

    ld c, [hl]
    ret nc

    adc a
    ld [hl], b
    rst $10
    nop
    ld c, a
    nop
    dec hl
    nop
    ld e, a
    nop
    rlca
    nop
    dec hl
    nop
    ld h, h
    nop
    jr nc, jr_098_7f3c

jr_098_7f3c:
    ld [hl], b
    nop
    ld h, b
    nop
    add hl, de
    nop
    push de
    nop
    and h
    nop
    ldh [rP1], a
    or b
    nop
    pop af
    nop
    ld [hl], e
    nop
    ld a, d
    nop
    cp e
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], c
    nop
    ld [hl-], a
    nop
    ld a, e
    nop
    cp e
    nop
    ld a, e
    nop
    scf
    nop
    ld e, a
    nop
    ld e, a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    add hl, de
    nop
    ld [de], a
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    ld d, c
    nop
    ld c, d
    nop
    ld l, b
    nop
    stop
    jr nc, jr_098_7f84

jr_098_7f84:
    nop
    nop
    inc b
    nop
    inc b
    nop
    cpl
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    db $ec
    db $10
    ld l, d
    dec d
    dec d
    add sp, $7a
    dec b
    ld b, c
    cp [hl]
    ld b, b
    cp a
    inc b
    rst $38
    dec b
    rst $38
    ld h, b
    rst $38
    ld b, d
    rst $38
    and d
    rst $38
    push de
    rst $38
    or h
    rst $38
    cp e
    rst $38
    xor l
    rst $38
    ei
    rst $38
    ei
    rst $38
    add l
    rst $38
    ld b, l
    rst $38
    or [hl]
    rst $38
    jr c, @+$01

    dec bc
    db $f4
    jp $e000


    ld e, $00
    db $fd
    add b
    ld a, [hl]
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
    rst $30
    ld [$9c7f], sp
    rst $28
    db $10
    rst $38
    nop
    ld b, e
    cp h
    ld [hl], d
    adc l
    ld d, h
    xor e
    nop
    rst $38
    ld d, a
    xor b
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
