SECTION "ROM Bank $073", ROMX[$4000], BANK[$73]

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
    ld sp, hl
    ei
    sbc h
    rst $38
    sbc a
    rst $38
    rst $30
    rst $30
    cp l
    db $fd
    ld a, [$fcfe]
    cp $dc
    rst $38
    adc a
    sbc [hl]
    dec b
    xor $0c
    rst $28
    rla
    ld [hl], a
    rst $08
    ld e, l
    add [hl]
    rst $00
    adc h
    ldh [$cf], a
    xor a
    rst $20
    inc e
    xor l
    ld [hl], l
    adc b
    xor l
    ld c, h
    ld c, a
    push hl
    cp $c7
    ld b, e
    db $fc
    dec d
    ld [$3fc0], a
    cp l
    jp $eb15


    rst $38
    ld bc, $07cb
    db $76
    ret


    db $ed
    ldh a, [$fa]
    pop de
    db $e3
    add e
    ld a, a
    add a
    db $eb
    rlca
    xor a
    ld [hl], a
    ld [c], a
    rst $38
    ret nc

    jp $c0c3


    jp nz, $d8c0

    ret nz

    db $fc
    ret nz

    xor $10
    or c
    ld c, $fb
    inc b
    jp z, $0a04

    inc b
    add hl, bc
    ld b, $65
    ld c, $57
    db $ec
    rlca
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld l, a
    ldh a, [rIE]
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    cp a
    rst $38
    or e
    rst $38
    daa
    cp a
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rra
    rst $18
    xor a
    db $ed
    adc b
    ld sp, hl
    db $f4
    ld sp, hl
    or b
    rst $38
    pop de
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    cp $fd
    rst $38
    ld a, [$7fbf]
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $28
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
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_073_40cf:
    rst $18
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp a
    rst $38
    rst $18
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
    ld a, a
    rst $38
    xor a
    rst $18
    and a
    rst $18
    rst $38
    jp z, $99ff

    cp a
    ld a, l
    db $fd
    db $fd
    ld a, l
    db $fc
    rst $38
    db $fc
    rst $18
    dec hl
    ld a, a
    ld b, b
    rst $28
    rst $38
    cp a
    pop af
    dec a
    add hl, sp
    xor a
    db $10
    cp a
    jr nz, jr_073_4182

    add sp, -$05
    db $ec
    xor [hl]
    db $fd
    rrca
    jr nc, jr_073_40cf

    db $10
    and [hl]
    dec e
    adc e
    rrca
    ld l, c
    rst $08
    inc l
    rst $00
    dec hl
    rst $00
    db $eb
    rst $38
    db $fc
    rst $38
    rst $20
    ret c

    add b
    ret nz

    add b
    add b
    rst $38
    ret nz

    add sp, -$01
    rst $38
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    cp $ff
    ld a, b
    add b
    sbc b
    ldh [$fd], a
    ldh [rRP], a
    db $e4
    xor [hl]
    ld c, b
    ld e, b
    add sp, -$08
    and b
    db $fc
    nop
    db $fc
    nop
    ld e, $02
    ld bc, $a203
    ld bc, $0118
    adc $c1
    jp $ffe4


    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rra
    ccf
    rra
    inc bc
    rla
    rlca
    rrca
    inc de
    ld sp, hl
    ld a, d
    ld sp, hl
    ldh a, [$f3]
    ld hl, sp-$01
    di
    rst $38
    rst $28
    or $e8

jr_073_4182:
    ld a, [c]
    push hl
    ld sp, hl
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    cp $af
    adc [hl]
    add a
    rrca
    add e
    cp a
    rla
    ccf
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    pop af
    di
    add sp, -$03
    ld [c], a
    ei
    adc h
    rst $28
    xor e
    rst $38

Jump_073_41a5:
    xor a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $30
    sbc $e7
    xor $d7
    rst $38
    or $ff
    cp $ff
    cp $ff
    rst $28
    rst $38
    add sp, -$11
    pop af
    pop hl
    rst $30
    pop hl
    or $f7
    pop hl
    di
    db $e3
    rst $20
    ei
    rst $38
    rst $38
    rst $38
    cp $ee
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    or $ff
    db $fc
    rst $38
    call nc, $d6ff
    rst $38
    rst $38
    cp $fe
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    xor $f7
    db $ec
    rst $30
    ld a, [$fefd]
    db $fd
    cp $fd
    push hl
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    sbc [hl]
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    db $fd
    ld c, l
    db $dd
    xor $f7
    call c, $d4ff
    ld e, a
    rst $38
    di
    ld a, a
    ei
    ld a, a
    db $fd
    cp a
    ld b, a
    rst $38
    di
    adc l
    ld a, a
    ret


    rst $20
    jp hl


    xor e
    ld h, c
    di
    inc hl
    ld e, a
    di
    ei
    rst $30
    ei
    di
    ld a, [$70f1]
    ld sp, hl
    sbc l
    pop af
    ld a, l
    rst $38
    rst $28
    ld [hl], l
    cp $01
    rst $28
    db $10
    ei
    inc b
    rra
    ldh [$df], a
    db $fc
    ld [hl], a
    rst $08
    pop hl
    ret nz

    ld d, c
    ldh [$d5], a
    ld a, b
    rst $38
    ld h, c
    ld a, [$cf71]
    ld a, b
    jp $e060


    ld b, b
    nop
    ld b, b
    ld b, $00
    rlca
    nop
    dec b
    nop
    ld bc, $0300
    add b
    jp $0380


    ret nz

    reti


    ldh [$6d], a
    ldh a, [$fa]
    db $fd
    ld sp, hl
    xor $fe
    db $e3
    ld a, [$fce1]
    ldh [$fb], a
    db $e4
    ld d, b
    and b
    ldh [$a0], a
    ldh a, [$f0]
    ldh a, [$60]
    ccf
    ld bc, $06a2
    di
    ld d, $ff
    sbc $ff
    ld a, a
    rst $18
    cpl
    ld a, a
    rst $18
    rst $38
    di
    rst $30
    ld b, e
    cp a
    ld b, a
    rst $38
    daa
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    cp e
    ei
    ld [hl], e
    ei
    inc sp
    di
    dec hl
    ld l, e
    or e
    or e
    daa
    or a
    or l
    cp a
    push de
    rst $18
    db $dd
    db $fc
    db $dd
    ld sp, hl
    cp h
    cp l
    ret


    db $dd
    sbc a
    rst $38
    pop bc
    ld sp, hl
    add c
    or c
    ret z

    add b
    ld [hl], c
    ld b, b
    ldh [$6f], a
    jp Jump_073_4fe7


    rst $28
    ld [hl], a
    cp $5d
    sbc $5c
    adc $7e
    adc $64
    call c, $ecee
    inc a
    db $fc
    inc l
    db $ec
    inc l
    rst $28
    ld l, $df
    cp a
    rst $28
    rst $38
    rst $20
    rst $38
    or a
    rst $38
    ld a, a
    rst $18
    ld [hl], a
    ei
    ld h, d
    rst $38
    inc a
    di
    ld e, l
    db $e3
    dec a
    jp $8b75


    jp c, $fce3

    di
    db $fc
    rst $30
    push af
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ld l, c
    rst $18
    db $d3
    rst $38
    ld b, e
    rst $38
    jp $c2ff


    rst $38
    ld d, e
    xor $ce
    ld a, [bc]
    adc $48
    rst $00
    dec c
    sbc a
    reti


    cp a
    ld hl, sp-$01
    sbc $ff
    add $ef
    adc $9f
    rst $38
    add a
    rst $38
    adc a
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    cp e
    rst $38
    rst $38
    ei
    cp a
    di
    scf
    ei
    dec sp
    rst $30
    inc sp
    rst $38
    rst $20
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $38
    di
    ld a, a
    rst $30
    rst $28
    ld d, a
    rst $38
    ld d, a
    rst $38
    dec e
    rst $38
    ld c, h
    cp a
    sbc h
    ei
    ld a, $f9
    rst $20
    add hl, de
    ld e, [hl]
    and c
    adc c
    or $d5
    ld a, $f4
    rra
    jp hl


    rra
    sub a
    db $eb
    cp [hl]
    ld a, a
    rra
    ld a, $0d
    ld e, $1c
    rrca
    ld e, $0f
    xor $4f
    rst $30
    ld h, b
    or [hl]
    ld h, b
    cp [hl]
    ld h, b
    rst $18
    ld h, b
    adc [hl]
    ld h, b
    ldh [$60], a
    and b
    ld b, b
    cpl
    jp nz, Jump_073_7f81

    ld e, $e1
    rst $10
    add b
    ld a, e
    nop
    rst $30
    ld [$2337], sp
    ccf
    ld h, a
    ld a, a
    ld e, e
    rst $38
    sbc [hl]
    rra
    cp [hl]
    ccf
    ld a, $7f
    ld a, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $ff
    db $fc
    rst $38
    adc $fa
    add $fa
    jp nz, $c6da

    rst $18
    add b
    sbc [hl]
    ret nz

    adc a
    ld [$8a0f], sp
    rra
    add hl, bc
    ld e, a
    inc c
    db $fc
    nop
    db $fc
    ld a, [$f7ff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_073_43a7:
    rst $30
    rst $38
    rst $38
    ei
    rst $38
    ld hl, sp-$10
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    db $fd
    db $fc
    ld hl, sp-$04
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $18
    cpl
    ld c, a
    add $6f
    rst $00
    ld l, [hl]
    db $76
    ld a, l
    ld h, l
    rst $38
    ld [hl], h
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    ld d, a
    ld d, c
    rst $28
    ld l, e
    db $fc
    ld [hl], a
    db $fc
    rst $38
    db $f4
    rst $38
    db $f4
    rst $30
    db $fc
    ld a, a
    cp $1f
    di
    ld a, a
    add e
    ld l, d
    sub a
    adc [hl]
    rst $38
    adc e
    push af
    rst $00
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    rst $20
    ld sp, hl
    push de
    ei
    cpl
    ei
    ld l, a
    di
    ld l, a
    di
    ld l, e
    rst $30
    ld l, d
    rst $30
    ld l, a
    rst $38
    rst $30
    rst $38
    rst $38
    ld a, a
    rst $28
    adc a
    rst $08
    cp a
    rst $38
    dec bc
    sbc h
    ld c, b
    xor h
    ld e, b
    ld a, [hl-]
    db $ec
    rst $38
    or $fc
    ei
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    push af
    ei
    cp $f9
    ld a, [$fdfd]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    ret c

    rst $38
    db $ec
    rst $18
    pop af
    sbc a
    db $fd
    sbc a
    ld c, a
    rst $38
    add c
    rst $38
    ld sp, hl
    rst $30
    sbc $f7
    db $fd
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld h, c
    cp $ea
    push af
    rst $28
    ldh a, [$bf]
    ldh [$df], a
    ldh [$75], a
    ld a, [$9b7d]
    ld l, b
    sbc a
    db $ed
    rra
    cp $1f
    rst $38
    rra
    ccf
    sbc a
    ei
    rra
    ld sp, hl
    rra
    rst $20
    rra
    ld c, a
    sbc a
    cp a
    ld c, a
    ccf
    rrca
    rrca
    rlca
    rrca
    rlca
    adc a
    ld b, $37
    call z, Call_000_3cdf
    cp a
    ld b, $7f
    add d
    adc b
    ldh a, [$bb]
    ld b, b
    ei
    ld h, b
    ei
    ld h, b
    ld a, a
    ld [hl], b
    ld a, a
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nz, jr_073_4501

    and b
    ld a, [hl]
    ld [$386e], sp
    cp $34
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    ld e, e
    cp a
    add hl, sp
    rst $18
    dec de
    rst $38
    ld e, $f9
    ld d, $f9
    sub $f9
    ei
    db $fd
    ld l, a
    rst $10
    rst $28
    di
    inc a
    di
    ld a, $c3
    sbc a
    add sp, -$4b
    add sp, $3b
    db $ec
    rrca
    db $fc
    sub a
    rst $38
    call c, Call_073_7aff
    db $fd
    ld a, [$f7fd]
    ld hl, sp-$02
    ld sp, hl
    db $76
    ld sp, hl
    rst $38
    pop af
    sbc a
    pop af
    ld a, [hl]
    sub c

jr_073_44ca:
    cp a
    ld d, b
    rst $28
    db $10
    rst $28
    db $10
    db $fd
    sbc b
    ld sp, hl

jr_073_44d3:
    jr jr_073_44ca

    jr jr_073_44d3

    jr jr_073_4557

    ld [$181f], sp
    dec sp
    inc e
    rst $20
    inc e
    rst $30
    cp $9f
    rst $30
    ld e, a
    or a
    ld h, a
    sbc a
    rst $20
    rra
    xor a
    ld e, a
    ld l, a
    sbc a
    rst $30
    cp a
    rst $30
    rst $38
    db $eb
    rst $38
    db $e4
    rst $38
    ld [hl], d
    rst $38
    db $e4
    ei
    ld hl, sp-$01
    ldh [rIE], a

Call_073_44fe:
    ei
    rst $20
    db $e3

jr_073_4501:
    ldh [$e1], a
    ret nz

    db $e3
    jp nz, $e6ff

    ld a, [hl]
    db $fc
    ld a, h
    inc l
    ld l, a
    ld l, h
    rst $38
    ld b, a
    db $e3
    rst $38
    db $e3
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    ld sp, hl
    cp $78
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    ld e, h
    rst $38
    call nc, $4bef
    db $f4
    ld b, e
    db $fc
    set 6, h
    rst $28
    ldh a, [$72]
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ccf
    rst $38
    or h
    ld a, a
    ccf
    rst $38
    inc a
    rst $38
    xor a
    ld [hl], c
    xor a
    ld a, b
    ccf
    ret c

    db $e3
    ld e, l
    ei
    adc l
    db $eb
    rst $10
    di
    rst $08
    rst $18
    rst $28
    rst $28

jr_073_4557:
    rst $30
    rst $30
    rst $38
    or a
    rst $38
    rst $10
    rst $38
    sub a
    rst $38
    adc a
    rst $38
    and a
    ld e, a
    or a
    ld a, a
    rst $30
    rst $08
    sbc a
    rst $28
    and l
    ld e, a
    xor a
    ld a, a
    add [hl]
    ld a, a
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
    jr jr_073_45a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_073_45b3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_073_45c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_073_45d3

    ld [hl-], a

jr_073_45a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_073_45e3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_073_45b3:
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

jr_073_45c3:
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

jr_073_45d3:
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
    ld h, c
    ld [hl], c

jr_073_45e3:
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
    ld h, c
    ld h, c
    ld h, c
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
    ld h, c
    ld h, c
    ld h, c
    ld h, c
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
    ld hl, sp+$61
    ld sp, hl
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
    jr jr_073_46ac

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

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
    jr nc, @+$33

    ld [hl-], a

jr_073_46ac:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $02
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0401
    inc b
    ld bc, $0101
    inc b
    inc b
    inc b
    ld bc, $0202
    ld bc, $0000
    ld bc, $0701
    ld bc, $0101
    ld bc, $0101
    ld bc, HeaderLogo
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0107
    ld bc, $0101
    ld bc, $0101
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0701
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    nop
    rlca
    ld bc, $0701
    ld bc, $0101
    ld bc, $0101
    ld bc, $0200
    nop
    nop
    nop
    nop
    ld bc, $0707
    ld bc, $0101
    ld bc, $0101
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    rlca
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0701
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    ld bc, $0101
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0401
    ld bc, $0101
    inc b
    ld bc, $0101
    ld [bc], a
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    ld [$090c], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    rst $38
    rst $38
    db $fd
    ld a, [c]
    ld [hl], l
    ld a, [hl-]
    ccf
    ld e, a
    cp a
    add hl, de
    rst $38
    db $fc
    rst $38
    rst $30
    rst $38
    db $eb
    rst $10
    rst $28
    db $e4
    rst $38
    db $ec
    di
    adc $f3
    push af
    ld sp, hl
    ld a, [$fffc]
    cp $fa
    rst $38
    db $fc
    ei
    db $eb
    db $fc
    db $e3
    db $fc
    add sp, -$09
    ei
    or $f1
    cp $fb
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    db $fd
    cp $7d
    cp $7f
    cp $bf
    rst $38
    ld a, [hl]
    rst $38
    adc a
    rst $38
    or a
    rst $08
    rst $38
    rst $38
    adc a
    rst $38
    rst $10
    rst $28
    rst $10
    rst $28
    ldh a, [rIE]
    dec sp
    cp $bf
    db $fc
    sbc [hl]
    db $eb
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    rla
    rst $38
    jp Jump_073_497f


    cp a
    or a
    ld a, a
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f9ff]
    cp $fb
    db $fc
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    cp $1f
    ld e, a
    rst $38
    rst $18
    rst $38
    inc e
    rst $38
    ld e, e
    db $ec
    dec sp
    add $3f
    rlca
    db $ed
    rlca
    adc h
    ld [$001f], sp
    ld h, c
    ld e, $55
    ld a, [hl+]
    and [hl]
    ld a, b
    and h
    ld b, b

jr_073_4880:
    ret c

    ld h, b
    pop de
    ld [hl], b
    ld d, c
    ldh [$cf], a
    ldh a, [$fd]
    ldh [$c1], a
    ret nz

    sub a
    ret nz

    adc b
    ldh a, [$eb]
    ret nz

    add e
    db $fc
    ld l, c
    add b
    ld c, a
    add d
    cp h
    rst $30
    rst $38
    rst $38

jr_073_489c:
    jp $0fff


    rst $38
    ld d, a
    add hl, sp
    dec de
    rlca
    ei
    rlca
    rst $18
    daa
    daa
    ret c

    dec h
    ret c

    ld e, $e1
    rra
    pop hl
    cp l
    ld h, e
    ld e, l
    inc hl
    jr z, jr_073_48bd

    ld a, [hl]
    cpl
    cp d
    ld a, a
    rst $28
    jr jr_073_489c

jr_073_48bd:
    jr c, @+$01

    jr c, @-$01

    inc a
    db $fc
    jr c, jr_073_4944

    jr nc, jr_073_4880

    ld [hl], a
    ld [hl], a
    db $fc
    ld a, b
    ret nc

    pop hl
    nop
    ccf
    nop
    cp e
    ld l, h
    ld l, [hl]
    rst $38
    rst $20
    ld sp, hl
    ld l, b
    add b
    nop
    nop
    dec sp
    nop
    inc de
    db $ec
    dec e
    ldh [$4c], a
    inc bc
    db $f4
    rrca
    rlca
    rst $38
    ld b, d
    rst $38
    rla
    db $ec
    ld a, b
    add b
    rst $38
    nop
    ld [hl], b
    adc a
    cp $dc
    rrca
    adc l
    rrca
    push hl
    rst $38
    ld a, a
    rst $38
    adc c
    cp $80
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp d
    rst $38
    rst $18
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    ld b, b
    rst $38
    ld h, e
    db $fd
    and a
    ld sp, hl
    sbc b
    ld l, a
    add hl, sp
    rst $20
    cp a
    rst $38
    ccf
    rst $38
    cp $ff
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    ld a, a
    rst $18
    ccf
    rst $10
    ccf
    rrca
    rst $38
    ld sp, hl
    add [hl]
    ld hl, sp-$40
    db $fc

jr_073_4935:
    add b
    db $fd
    ld h, d
    rst $28
    jr nz, @+$75

    ld bc, $91fb
    ei
    ld sp, hl
    rst $38
    ei
    ei
    rst $38

jr_073_4944:
    cp h
    ei
    ld e, b
    or e
    call nc, Call_000_38bb
    rst $38
    db $dd
    rst $38
    rst $18
    cp $ff
    cp $9d
    cp $fd
    cp $fe
    rst $38
    sbc $bf
    or $7f
    add d
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $30
    rst $28
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    push af
    ld e, $cd
    cp $bd
    ld a, [hl]

jr_073_4974:
    ld l, a
    rra
    ld l, c
    sbc [hl]
    add hl, sp
    add $be
    ld b, a

jr_073_497c:
    ld [hl], c
    ld c, [hl]
    db $fd

Jump_073_497f:
    ld a, $ef
    jr nc, @+$01

    jr nc, jr_073_4974

    jr nc, jr_073_4935

    ld [hl], c
    ld a, [c]
    jr nz, jr_073_497c

    ld a, [hl]
    cp [hl]
    ld b, c
    or e
    nop
    ld a, h
    add e
    ld bc, $9ffe
    ld h, b
    xor a
    ret nz

    cp a
    ret nz

    call c, $f0e0
    ret nz

    ret c

    ldh [$f4], a
    ld hl, sp-$01
    db $fc
    set 7, a
    ld a, [$5001]
    and b
    adc e
    ldh a, [$9f]
    ldh [$d0], a
    rst $38
    ld b, [hl]
    rst $38
    inc de
    rst $28
    rst $30
    rrca
    dec sp
    rst $20
    dec sp
    rst $00
    di
    rrca
    db $d3
    ld bc, $03fd
    add hl, sp
    rrca
    cp l
    dec bc
    ld l, a
    sbc a
    rst $38
    ccf
    ld h, c
    ccf
    ld a, l
    inc bc
    push bc
    inc bc
    sbc l
    inc bc
    ei
    rlca
    ld c, e
    rst $30
    rra
    rst $38
    ld l, a
    inc bc
    rst $38
    inc bc
    ccf
    rst $00
    rst $30
    dec de
    xor $73
    or l
    res 4, c
    jp Jump_000_00c0


    ret nz

    nop
    rra
    ld c, $1e
    ld e, $1e
    ld a, $f8
    ld a, $f7
    dec bc
    scf
    adc h
    db $e3
    nop
    rst $30
    db $ed
    rst $38
    ld a, a
    cp a
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $00
    rst $38
    rrca
    rst $30
    ld l, a
    sbc a
    ei
    sbc a
    rst $18
    ld a, a
    di
    rst $38
    push af
    rst $38
    db $ed
    ei
    rst $38
    rst $20
    rst $00
    rst $38
    rst $18
    rst $38
    ld d, a
    xor a
    rst $30
    rrca
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $00
    rst $38
    call z, $ddf3
    ld [c], a
    ld sp, hl
    and $f9

jr_073_4a27:
    and $f0
    rst $28
    db $f4
    rst $28
    ld a, [$feff]
    rst $38
    rst $38
    db $10
    ld a, d
    nop
    ld a, a
    ld a, [hl+]
    ld a, a
    add hl, hl
    ccf
    dec l
    ccf
    daa
    ccf
    rst $38
    rst $38
    rla
    inc sp
    rst $18
    push de
    ei
    dec [hl]
    ei
    add hl, bc
    rst $38
    sbc e
    rst $38
    ret c

    ccf
    xor $1f
    rst $18
    ccf
    cp a
    ld a, a
    rst $00
    rst $38
    dec sp
    rst $08
    scf
    db $eb
    xor e
    ld d, e
    cp a
    ld h, e
    ei
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rst $28
    ei
    rst $30
    ei
    ld d, a
    ei
    push hl
    ei
    or $f9
    rrca
    ld a, [c]
    reti


    daa
    sbc e
    rlca
    sbc l
    dec bc
    ld [hl], d
    add c
    db $dd
    jr nz, jr_073_4a27

    dec e
    dec bc
    db $fd
    daa
    ld hl, sp-$42
    ld [hl], c
    cp d
    ld a, h
    rst $28
    ld [hl], e
    cpl
    rst $38
    rst $18
    rst $38
    ld d, a
    jr c, @-$0b

    ccf
    cp $bf
    db $e4
    ld a, b
    adc e
    ld hl, sp+$1e
    add b
    jp nc, $ed0c

    rra
    rst $28
    rra
    add a
    ld a, a
    rra
    ld a, a
    adc l
    ld a, a
    xor l
    rlca
    ld [c], a
    inc bc
    ld [c], a
    nop
    ld d, $e0
    rst $38
    ld [hl], h
    ei
    ld a, h
    ld [hl], c
    rst $38
    ld d, [hl]
    rst $38
    ld a, a
    ldh a, [$3c]
    ld hl, sp+$7d
    add $bd
    jp nz, $88f7

    adc h
    ldh a, [$d1]
    pop hl
    xor e
    rst $00
    rst $38
    ccf
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [$e0]
    ldh a, [$80]
    and d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f6
    ld hl, sp+$00
    ldh a, [$c0]
    nop
    ld c, a
    add b
    ccf
    ret nz

    rst $38
    pop bc
    ccf
    nop
    ld sp, $0100
    nop
    rlca
    inc bc
    rla
    rrca
    ld e, e
    scf
    ld [c], a
    rst $38
    ld hl, sp-$01
    db $e3
    rst $18
    dec sp
    rst $00
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$05
    ldh a, [$e0]
    ret nc

    ret nz

    nop
    db $e3
    ld h, b
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
    cp $ff
    rst $38
    rst $38
    push de
    rst $38
    rst $08
    pop af
    di
    rst $38
    db $fd
    cp $6d
    rst $38
    push hl
    ld a, [hl]
    xor $fc
    rst $30
    ld hl, sp-$02
    rst $38
    rst $38
    ld hl, sp+$06
    ei
    db $e4
    ccf
    inc bc
    rst $38
    ret


    cp $fd
    cp $fd
    cp $9d
    cp $ce
    cp a
    xor l
    rst $18
    xor d
    rst $18
    ld l, a
    sbc l
    ld a, e
    cp h
    ld l, $f5
    or a
    ld a, a
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $18
    rst $20
    rst $38
    rst $20
    db $d3
    rst $20
    db $db
    rst $20
    db $d3
    rst $28
    add e
    rst $38
    rst $00
    rst $38
    ld [c], a
    rst $38
    ld a, [$d6ff]
    rst $38
    sbc $ff
    call $edfe
    sbc $fe
    scf
    ld a, [c]
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    cp b
    sbc a
    ld [$0cfe], sp
    rst $38
    ld l, b
    cp [hl]
    ld de, $1fbf
    cp $3b
    cp $fd
    cp $fd
    db $fc
    rst $38
    db $fc
    inc bc
    db $fc
    rst $08
    call c, Call_073_5c03
    inc bc
    dec bc
    inc bc
    rrca
    inc bc
    ld d, [hl]
    ld b, $fe
    ld b, $f6
    ld b, $d3
    inc bc
    ei
    inc bc
    rst $38
    inc bc
    db $fc
    sub e
    cp h
    inc de
    inc a
    rlca
    sbc h
    rlca
    inc c
    rlca
    call c, $fc87
    rst $20
    cp $c7
    cp $01
    inc a
    ld bc, $1b1e
    sbc [hl]
    rrca
    ld e, [hl]
    rra
    ld a, a
    rrca
    rst $38
    or $ff
    rst $38
    cp $ff
    cp $fb
    cp $e1
    cp $e1
    rst $38
    ret nz

    db $fc
    jr nz, jr_073_4bce

    nop

jr_073_4bce:
    rrca
    nop
    rst $08
    rst $38
    ld hl, sp-$01
    cp $83
    inc e
    inc bc
    dec c
    inc bc
    ld c, $02
    db $fc
    nop
    cp [hl]
    ld h, b
    ld e, d
    db $e4
    ld l, a
    ret nz

    ld l, a
    jp $ff7a


    rst $38
    cp a
    cp a
    rst $38
    rst $28
    or b
    add $80
    db $fd
    dec sp
    di
    db $fc
    rst $38
    rra
    ld a, a
    ld a, [hl]
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f9
    ldh a, [$6f]
    ld e, a
    adc l
    sbc e
    ld de, $44b7
    rst $38
    add a
    rst $38
    ld hl, $c4ff
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    set 7, l
    jp $c7b8


    ld a, [c]
    rst $08
    jp $ffff


    rst $38
    cp $f7
    db $dd
    and $df
    add sp, -$52
    ldh a, [$be]
    ret nz

    cp $80
    cp [hl]
    ldh [$f4], a
    rst $38
    or a
    ld hl, sp+$4f
    or b
    ld a, [c]
    cp a
    ei
    cp a
    ld [hl], a
    sbc a
    sbc e
    ld a, a
    rst $10
    ld a, a
    sbc a
    ld a, a
    rst $38
    ld a, a
    ei
    inc a
    db $db
    inc a
    db $f4
    dec sp
    db $f4
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, [c]
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    cp $fb
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    add $ff
    sub a
    rst $28
    rst $38
    add d
    rst $38
    rst $00
    rst $38
    rst $10
    cp $f1
    pop de
    sub d
    dec de
    dec b
    cp c
    inc b
    or c
    ld [$09f7], sp
    push hl
    sbc b
    rst $28
    ret nc

    rst $08
    dec hl
    call z, $0328
    ret nz

    rrca
    add b
    db $fd
    ret nz

    ld h, d
    ld sp, hl
    rst $20
    db $fc
    inc e
    ldh a, [$3f]
    ldh a, [$bf]
    rst $38
    cp a
    cp $eb
    jp nc, $c0e3

    and $c2
    rst $38
    ldh [$ef], a
    ld h, h
    cp c
    ld h, [hl]
    db $e4
    ei
    ld sp, hl
    or $9f
    ld sp, $3cbf
    rst $38
    ld a, h
    cp a
    db $fc
    rra
    rst $38
    rst $38
    ccf
    ei
    inc c
    rrca
    ld c, $f6
    inc c
    and $24
    ld b, $84
    ld h, a
    add d
    ld a, a
    add [hl]
    ld [hl], a
    add d
    ld l, a
    add c
    inc bc
    add c
    ld bc, $0181
    add c
    ld a, a
    and b
    ld a, a
    add e
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add [hl]
    ccf
    rst $10
    ccf
    db $fc
    ccf
    pop af
    ccf
    rst $00
    ccf
    rst $08
    ccf
    sbc $b8
    ld a, b
    or b
    ld b, b
    db $10
    ld h, b
    ld bc, $0731
    dec de
    rra
    rrca
    sbc a
    rst $38
    ld a, h
    rst $38
    rst $38

Call_073_4ce7:
    ei
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    cp a
    ld c, a
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    rst $08
    db $db
    adc a
    sbc a
    add a
    rst $30
    sub e
    rst $30
    add a
    rst $30
    rst $28
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $d3
    rst $08
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $28
    nop
    push af
    ld [bc], a
    push af
    rlca
    ld [hl], a
    dec b
    rst $38
    rlca
    ld a, [hl]
    rlca
    dec [hl]
    rlca
    sub [hl]
    rlca
    and $07
    ld [c], a
    rlca
    db $e3
    ld b, $e2
    rlca
    xor $03
    rst $30
    ld [bc], a
    ld [hl], c
    nop
    inc sp
    rst $38
    ld sp, $07ff
    ld sp, hl
    or [hl]
    ld a, e
    db $fd
    ei
    ldh a, [rIE]
    jr c, @+$01

    sub l
    ei
    ccf
    rst $10

jr_073_4d52:
    dec a
    rst $10
    rst $38
    inc de
    add e
    rst $38
    cp a
    rst $08
    cp d
    call $cc8b
    rst $08
    ret nz

    ld b, h
    add c
    ld b, b
    add [hl]
    ld b, c
    jr nz, jr_073_4d52

    ldh [rNR33], a
    sbc $03

jr_073_4d6b:
    rst $18
    ld h, b
    add a
    ld b, h
    adc b
    db $e3
    ldh a, [$e7]
    ret nz

    ret nz

    rst $38
    xor $f1
    jp hl


    ld [hl], c
    ld l, a
    db $fd
    rst $20
    rst $38
    ld a, a
    rst $28
    ld a, e
    db $ec
    db $e3
    ld l, h
    ccf
    ld h, h
    jp hl


    jr nc, jr_073_4dc7

    ld sp, $33ef
    cp a
    inc sp
    inc hl
    sub c
    db $fc
    inc de
    ld d, c
    ld a, $93
    ld a, h
    sbc c
    ld a, a
    ld d, b
    rst $38
    sbc c
    ld c, [hl]
    cp e
    ld c, h
    ld a, [de]
    ld bc, $03f4
    jr jr_073_4d6b

    db $eb
    rst $38
    ld a, [$7a1f]
    db $fd
    pop af
    cp $73
    ld a, h
    db $76
    ld a, a
    rst $38
    ld a, a
    ld h, a
    cp $b9
    rst $00
    ld sp, hl
    ld b, $f1
    ld c, $e5
    ld a, [hl-]
    call z, $7473
    adc a
    ld [hl], l
    adc [hl]
    add hl, sp
    add $e0
    rra
    ld a, e

jr_073_4dc7:
    rlca
    db $e4
    add e
    add sp, -$39
    ld a, e
    db $fc
    di
    ldh [$e3], a
    ret nz

    db $e3
    ret nz

    ld bc, $c0c1
    ld b, c
    and c
    ld b, b
    jp hl


    ldh a, [rIE]
    ld hl, sp-$04
    rst $38
    rst $38
    cp $3f
    ret z

    rlca
    ld hl, sp-$1f
    sbc $f8
    rst $00
    cp $61
    rst $38
    db $10
    cp $18
    cp h
    rst $38
    push hl
    rst $38
    ldh a, [rIE]
    jp z, $bfff

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
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    ld d, b
    xor a
    rst $00
    ld hl, sp+$3f
    ret nz

    ld a, [bc]
    push af
    ld a, a
    add d
    ccf
    ret nz

    cp e
    call nz, $f4cb
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld b, d
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    add hl, de
    and $10
    rst $28
    ld bc, $01fe
    cp $09
    or $fd
    rst $38
    rst $18
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a

jr_073_4e5f:
    rst $38
    ld b, e
    inc e
    ld [$0237], sp
    dec b
    inc b
    nop
    nop
    add b
    rst $38
    rst $38
    rlca
    add b
    add c
    nop
    ld c, l
    or b
    inc hl
    ld a, b
    rst $28
    db $10
    dec sp
    ret nz

    ret


    ldh a, [$eb]
    pop af
    rst $28
    di
    cp h
    ret nz

    db $db
    dec b
    rlc l
    sbc [hl]
    add c
    ld a, l
    add e
    rst $28
    add a
    rst $38
    sbc a
    cp $ff
    ld [$e4ff], sp
    rrca
    pop de
    ld e, $fd
    jr c, jr_073_4e5f

    ldh a, [$f3]
    ldh [$8f], a
    ld [hl], b
    xor [hl]
    ld a, a
    ld l, c
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    sbc [hl]
    rst $38
    dec sp
    cp $3b
    db $fd
    ld a, e
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    cp a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, $ff
    ccf
    rst $38
    rst $38
    ld a, a
    add $7f
    sub [hl]
    rst $38
    or h
    rst $28
    rst $38
    rst $18
    ld [hl], a
    sbc a
    cp $0f
    nop
    rst $38
    ld e, h
    rst $20
    rlca
    rst $38
    xor [hl]
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    di
    db $fc
    ld [hl-], a
    db $fd
    rra
    ei
    rst $38
    ccf
    rst $38
    jr nc, @+$01

    ld bc, $2eff
    ccf
    db $ec
    rlca
    db $fc
    ret nz

    ccf
    ld a, $05
    rst $38
    sub a
    scf
    add c
    or a
    ld c, a
    rst $38
    rst $38
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
    ccf

Jump_073_4f07:
    ret nz

    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, a
    add b
    ccf
    ret nz

    ld a, $ff
    call nc, $b72b
    ld c, b
    cp $01
    ldh a, [rIF]
    rst $30
    ld [$1fe0], sp
    pop af
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    and [hl]
    rst $38
    call $f1ff
    rst $38
    ei
    rst $38
    rrca
    rst $38
    ld l, d
    rst $38
    rst $38
    rst $38
    ld [hl], $ff
    rst $30
    rst $38
    cp [hl]
    rst $38
    cp b
    rst $38
    adc $ff
    cp $ff
    rst $28
    rst $38
    cp $ff
    cp d
    rst $38
    dec de
    db $e4
    inc c
    ldh a, [$30]
    ld [$010c], sp
    cpl
    rlca
    ld a, [$02f9]
    ld bc, $0081
    rst $00
    ldh [$d7], a
    ldh [$74], a
    ldh a, [$74]
    ldh a, [rPCM34]
    ld hl, sp-$27
    and $f6
    inc bc
    ld [hl], a
    add hl, bc
    xor c
    ret nz

    ld d, c
    add c
    rst $28
    ret nc

    ld a, l
    ld hl, sp-$01
    ldh [$cd], a
    ld [c], a
    call c, Call_073_7de7
    cp $8c
    ld hl, sp-$60
    jr @+$3b

    db $10
    ld b, e
    ld sp, $27da
    rla
    rst $38
    db $fd
    rst $38
    pop bc
    rst $38
    add [hl]
    rst $38
    ld b, e
    cp a
    pop af
    rra
    sub [hl]
    ld a, a
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $f7
    ld hl, sp-$0a
    ld sp, hl
    ldh a, [rIE]
    rst $38
    rst $38
    cp $ff
    ld e, a
    rst $38
    reti


    ccf
    ccf
    cp $b3
    db $fc
    rrca
    ld hl, sp-$01
    ret nc

    ld a, [c]
    sbc a
    adc $7f
    cp [hl]
    rst $38
    call c, $9fff
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld [hl], l
    rst $38
    push hl
    ld a, e
    push de
    rst $38
    ld b, l
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl], c
    nop
    db $eb
    nop
    rst $28
    nop
    db $e4
    ldh [$fc], a
    db $fc
    ld b, l
    cp $58
    rst $38
    db $fc
    rst $38
    rst $38

Jump_073_4fe7:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    ld a, [hl]
    rst $38
    ccf
    rst $38
    sbc $ff
    call $efff
    rst $38
    cp l
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    db $f4
    rst $38
    and $ff
    rst $38
    rst $38
    ei
    rst $38
    cp [hl]
    rst $38
    ret nc

    rst $38
    rst $00
    ei
    xor d
    jp Jump_073_41a5


    ccf
    ld [bc], a
    inc c
    rrca
    ld [hl], b
    ld [hl], b
    sub b
    adc b
    or [hl]
    add hl, bc
    jp nz, $0b2c

    inc b
    db $dd
    rlca
    ld a, l
    rst $20
    xor a
    ld b, c
    or a
    rra
    rlca
    ld bc, $07eb
    ld e, [hl]
    rst $28
    di
    rst $08
    ccf
    rst $20
    and e
    jp nz, Jump_000_06cb

    add b
    ld a, a
    jp hl


    ld [hl], a
    dec hl
    rst $30
    add hl, de
    and $9b
    ld h, b
    ld b, $39
    ld [hl], h
    rrca
    call nz, Call_000_173f
    rst $38
    sub a
    rst $38
    jp z, $02f7

    rst $38
    ld h, [hl]
    rst $38
    pop af
    rst $38
    xor e
    rst $30
    db $eb
    rst $30
    inc sp
    rst $38
    ld [hl], e
    rst $38
    rst $30
    rst $38
    rst $38
    cp $77
    db $fd
    sub a
    db $fd
    ld [hl], l
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    add hl, sp
    rst $38
    ld a, a
    cp a
    rst $38
    add hl, sp
    rst $38
    ccf
    ld sp, hl
    ccf
    cp e
    rst $38
    set 7, a
    rst $00
    ccf
    cp a
    rst $38
    cp $ff
    db $fd
    cp $f3
    cp $f9
    rst $20
    ld a, [hl]
    sub a
    ld d, a
    rst $38
    rst $38
    rst $38
    cp $ff
    and $fb
    ld l, e
    rst $38
    ld b, [hl]
    nop
    ld e, $00
    ld d, h
    nop
    ld b, d
    nop
    rst $38
    inc bc
    rst $08
    rra
    ld sp, hl
    ld a, $63
    ldh [rVBK], a
    inc de
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    jp hl


    rst $38
    cp $ff
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    ld d, b
    xor a
    nop
    rst $38
    and b
    ld e, a
    nop
    rst $38
    dec de
    db $e4
    sub c
    ld h, h
    add b
    ld b, b
    xor b
    ldh [rNR32], a
    ld e, [hl]
    scf
    jp $8640


    inc c
    sub d
    nop
    sub b
    db $10
    add b
    inc bc
    adc h
    db $10
    adc [hl]
    cp a
    rst $38
    db $fc
    rst $38
    call c, Call_073_79e7
    cp $a6
    ld a, b
    rst $30
    jr jr_073_510b

    ld bc, $c1b2
    add sp, -$1f
    ld a, c
    db $fc
    or a
    ld a, l
    sub a
    ld a, c
    adc $f9
    inc [hl]

jr_073_510b:
    rst $28
    db $10
    ccf
    inc l
    inc de
    db $dd
    ccf
    ld e, l
    rst $38
    rst $38
    cp $e7
    cp $77
    sbc a
    ld e, $ff
    rla
    rst $38
    ccf
    rst $38
    ld c, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $30
    adc a
    ld a, a
    rst $10
    ccf
    rst $38
    rst $38
    dec a
    rst $38
    cp l
    ld a, [hl]
    db $fd
    ld a, $fc
    ccf
    rst $38
    rra
    xor $1f
    db $fd
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    db $fc
    rst $38
    ld l, [hl]
    ld sp, hl
    ld [hl], e
    rst $38
    db $e3
    ld a, a
    ld h, c
    rst $38
    ld [hl], e
    rst $38
    cp a
    nop
    push af
    inc bc
    ccf
    rrca
    sbc b
    inc e
    ld a, [c]
    ld hl, sp-$61
    ldh [$33], a
    add b
    call nz, $f000
    ldh [$fa], a
    inc a
    db $e3
    call nc, $cf7f
    rst $38
    ld c, c
    rst $18
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    cp $f3
    rst $38
    ld [c], a
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
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
    cp $ff
    rst $38
    cp $ff
    cp $fe
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ei
    db $fd
    rst $38
    cp $fe
    ld hl, sp-$03
    db $fd
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld a, [de]
    db $fd
    ld e, a
    push af
    db $76
    and l
    sbc l
    ld [hl], e
    push af
    rra
    nop
    nop
    rst $38
    rst $38
    ld bc, $a50c
    ld a, [bc]
    jr nz, jr_073_5202

    nop
    jr jr_073_51ed

jr_073_51ed:
    nop
    inc bc
    nop
    db $db
    add c
    db $fd
    rlca
    ei
    inc e
    rst $08
    jr nc, jr_073_5237

    rlca
    cp $3e
    ld a, a
    cp $ff
    rst $38
    ld l, a
    rst $18

jr_073_5202:
    db $db
    rrca
    ld c, c
    rst $38
    rra
    rst $38
    ld l, d
    sbc a
    sub $bf
    rla
    rst $38
    ld h, $ff
    ld h, e
    rst $38
    db $eb
    rst $38
    cp l
    di
    ld [hl], l
    ei
    reti


    cp a
    db $ed
    rst $38
    xor a
    rst $18
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $30
    ei
    rst $30
    rst $38
    di
    db $ed
    di
    push af
    ei
    pop af
    rst $38
    db $e3
    rst $38
    ld [hl], c
    rst $38
    ld h, l
    rst $38
    ld [$ebff], a

jr_073_5237:
    ld a, a
    ld c, c
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld [$ffff], a
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    db $dd
    ccf
    ld c, h
    rst $38
    inc a
    rst $38
    sbc $00
    and h
    nop
    adc $00
    and c
    nop
    db $ed
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    ld a, d
    ld a, b
    db $ec
    ldh a, [rNR32]
    ret nz

    ld a, [hl]
    nop
    db $fc
    nop
    reti


    nop
    adc d
    nop
    adc e
    nop
    ldh [$c0], a
    or c
    ld e, e
    cp $03
    ei
    db $fd
    ei
    rst $38
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    di
    rst $38
    or $ff
    or $ff
    db $e4
    rst $30
    rst $20
    rst $30
    rst $28
    rst $38
    rst $20
    rst $38
    or $f5
    rst $28
    push hl
    ld hl, sp-$0c
    add sp, -$03
    rst $30
    rst $38
    db $fc
    db $fd
    ld hl, sp-$07
    ret z

    ret z

    ld sp, hl
    ld hl, sp-$40
    ret nz

    ret z

    jp hl


    jp c, $cfff

    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    call nc, $bcfe
    sbc $a5
    and $9f
    ei
    rst $38
    sub b
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    cp $fd
    di
    db $fd
    or d
    rst $38
    cp $ff
    cp e
    db $fc
    inc l
    rst $38
    rlca
    ld sp, hl
    sub a
    db $eb
    rst $30
    sbc a
    jp c, $faff

    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$01
    db $fc
    ld b, h
    dec sp
    ld [bc], a
    inc c
    ld h, $80
    ld h, $c0
    dec bc
    ld [hl], e
    cp h
    ld e, h
    ldh [$eb], a
    sbc d
    ld b, c
    dec l
    ret nz

    ld b, d
    ld hl, $9b24
    add [hl]
    ld bc, $a010
    di
    add c
    push af
    ld [c], a
    jp z, $cc04

    nop
    sbc l
    ldh [$f0], a
    rlca
    sbc d
    ld [hl], l
    rst $10
    ld l, h
    or a
    db $eb
    ld sp, $7ccf
    rst $38
    cp h
    rst $28
    dec b
    rst $38
    dec c
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, [hl]
    rst $38
    and a
    ld a, a
    ld d, l
    rst $28
    ld d, a
    rst $28
    reti


    rst $20
    jp hl


    rst $30
    ld a, [$c9ff]
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    rst $10
    rst $28
    rst $10
    rst $38
    cp $ff
    rst $28
    rst $38
    or d
    rst $18
    cp $db
    ei
    rst $18
    xor $df
    xor $df
    adc $ff
    xor $ff
    rst $20
    rst $38
    dec sp
    rst $38

jr_073_533e:
    ld sp, $bbff
    nop
    ld d, c
    nop
    ret nc

    nop
    db $d3
    nop
    db $d3
    nop
    or a
    ld bc, $01d9
    sub e
    inc bc
    ld e, a
    ld c, $5c
    inc e
    inc a
    jr c, jr_073_533e

    ld h, b
    jp nz, $e440

    ret nz

    db $f4
    nop
    db $e3
    nop
    ld a, l
    rst $38
    ld a, e
    rst $38
    ld l, a
    rst $30
    ld a, l
    rst $30
    db $ed
    di
    ld a, c
    rst $38
    or c
    rst $38
    or e
    rst $38
    scf
    ld c, b
    pop af
    ld [hl], b
    ld h, a
    sub b
    ld a, a
    adc e
    rst $38
    ldh a, [rIE]
    ld hl, sp+$1d
    ld sp, hl
    sbc c
    inc l
    ret z

    dec a
    sbc $2c
    cp $3f
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $18
    rst $18
    sbc a
    rst $18
    rra
    ld a, a
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
    and [hl]
    and a
    ld b, [hl]
    rst $20
    push de
    rst $38
    ld h, l
    rst $38
    db $dd
    rst $38
    reti


    rst $38
    ei
    rst $18
    or e
    sbc e
    daa
    ld a, [hl-]
    inc hl
    rst $28
    ld [de], a
    di
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ei
    ld [hl], b
    db $e3
    ldh a, [$e7]
    ret nc

    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $fe
    cp $fe
    db $fd
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp $ff
    ld l, [hl]
    sub e
    ld l, h
    dec c
    ld [c], a
    ld d, h
    and d
    adc d
    inc b
    add hl, bc

jr_073_53d9:
    inc c
    inc [hl]
    jr c, jr_073_53d9

    ld b, c
    ret z

    add l
    db $ec
    inc e
    ld a, h
    sbc [hl]
    or $0f
    rst $28
    rrca
    rst $08
    rst $28
    rst $38
    xor $a6
    db $ec
    rlca
    adc [hl]
    ld a, l
    adc l
    cp l
    ld c, b
    rra
    ld [$3c6e], sp
    rst $38
    rrca
    rrc a
    ld a, a
    db $ec
    ld l, a
    db $fc
    sbc $e9
    sbc l
    jp hl


    xor c
    rst $38
    cp c
    adc $9f
    add sp, -$79
    ld a, [$f9d7]
    call c, Call_000_1df8
    cp $5e
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    sub d
    rst $38
    cp $d9
    rst $38
    dec a
    inc a
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld l, $ff
    ld l, a
    cp $6e
    nop
    sub $00
    rst $38
    nop
    ld h, l
    nop
    rlca
    nop
    sbc d
    nop
    sub c
    ld bc, $03df
    or $07
    dec a
    ld c, $19
    inc e
    ld sp, $6938
    ld [hl], b
    adc $e0
    cp a
    ret nz

    ld d, a
    add b

jr_073_5450:
    rst $20
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    xor [hl]
    rst $38
    di
    rst $28
    ei
    rst $20
    di
    rst $38
    ld sp, hl
    rst $38
    or $ff
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld a, [c]
    db $fc
    sub a
    ldh [$fb], a
    sbc a
    ei
    sbc a
    rst $30
    rst $08
    ld sp, hl
    ld h, $ff
    db $d3
    rst $38
    rst $08
    rst $38
    call Call_073_6ddf
    rst $08
    ld l, c
    ld a, a
    ret


    ld a, a
    xor d
    ld a, a
    and $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    cp a
    cp h
    cp a
    jr c, jr_073_5450

    jr @-$01

    ld a, [de]
    rst $38
    rra
    cp a
    ld e, c
    ei
    add hl, sp
    ei
    cp e
    ei
    ld sp, $5bf3
    rst $38
    sub e
    cp $f1
    db $fc
    jr c, @-$02

Jump_073_54a9:
    ld a, [hl+]
    ld a, [hl]
    jp nz, $489e

    ccf
    ld c, d
    rst $38
    db $fc
    rst $38
    rst $38
    rst $10
    cp e
    rst $38
    db $10
    ld a, l
    cp c
    ei
    ld a, l
    ei
    sbc a
    rst $38
    add hl, de
    rst $38
    db $fd
    ccf
    ld hl, sp+$7d
    cp e
    ld a, a
    cp e
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, l
    ld a, a
    ccf
    rst $38
    ld a, e
    ei
    ret nc

    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    or c
    ld a, a
    add b
    cp a
    ld d, e
    rst $18
    inc h
    rst $20
    dec e
    ei
    inc b
    sbc c
    ld [bc], a
    ld sp, hl
    add c
    ld sp, hl
    ld b, b
    rst $38
    nop
    rst $30
    ld [bc], a
    rst $38
    add hl, bc
    inc h
    ldh [$bf], a
    ld [hl], b
    rst $18
    ld a, [hl]
    rst $38
    cp $ff
    cp $3f

Call_073_54fb:
    rst $20
    adc a
    rlca
    rst $18
    ld a, h
    db $fc
    ld hl, sp-$7b
    ld hl, sp-$2d
    adc a
    xor a
    rst $18
    adc $f9
    ld h, c
    ldh [rNR42], a
    ret nz

    jr z, jr_073_5541

    ld [hl], d
    rrca
    ret c

    ld h, a
    db $d3
    db $e4
    set 6, e
    add $f9
    ld l, h
    ld sp, hl
    inc [hl]
    ld hl, sp+$5e
    db $fc
    reti


    rst $38
    ld [hl], h
    rst $38
    ld a, [c]
    rst $38
    ld a, d
    rst $38
    or d
    rst $38
    cp d
    rst $38
    adc $ff
    ld a, [$6777]
    nop
    ld [hl], a
    nop
    cp a
    nop
    rst $30
    nop
    di
    ld [bc], a
    ld l, a
    rrca
    cp h
    sbc b
    rst $28
    ret nz

    cp a

jr_073_5541:
    rst $38
    rst $38
    rst $38
    set 7, a
    db $ed
    ei
    db $fd
    db $d3
    rst $38
    db $d3
    ccf
    di
    rst $18
    rst $20
    db $fd
    db $e3
    db $fd
    di
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    or a
    ld a, a
    cp a
    ld a, a
    adc a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $18
    ld a, l
    rst $38
    call $effb
    ld a, c
    or l
    ld c, a
    or a
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rst $30
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
    ld a, a
    ld a, a
    inc a
    ld a, a
    ld sp, $f63f
    rst $38
    cp [hl]
    db $fc
    rst $38
    rst $38
    cp l
    rst $38
    sub e
    rst $18
    and e
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    and $ff
    rst $38
    rst $38
    ld e, d
    rst $30
    ld c, c
    rst $38
    ld h, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $f4
    cp $a7

jr_073_55b2:
    cp $2d

jr_073_55b4:
    rst $28
    jr jr_073_55b2

    ld d, a
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $28
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld sp, hl
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $e3
    ld e, h
    rst $38
    ccf
    rst $38
    rst $30
    rst $18
    inc sp
    rst $28
    ccf
    rst $38
    db $10
    rst $38
    sub e
    ld a, [hl]
    rst $08
    ld a, $8e
    nop
    ld a, a
    nop
    jr jr_073_55e6

jr_073_55e6:
    ld c, l
    nop
    add h
    add b
    ld b, b
    ld b, b
    or b
    jr nz, jr_073_55b4

    nop
    sbc $e9
    rst $20
    inc b
    ld h, l
    ld e, $fe
    ld hl, $07e8
    cp l
    jp nz, $9060

    or l
    ld [de], a
    push af
    inc bc
    sbc a
    ld h, e
    add [hl]
    ld sp, hl
    rst $30
    adc b
    cp l
    rst $00
    or d
    ld b, c
    ei
    ccf
    xor $bf
    pop af
    jp $80ff


    db $dd
    rst $08
    ld b, a
    db $fc
    db $fd
    ldh a, [$bc]
    ld hl, sp-$4c
    ld a, h
    sbc a
    ld a, $fc
    rra
    cpl
    push hl
    ret z

    pop af
    db $f4
    ld sp, hl
    or b
    rst $38
    ld e, b
    cp a
    ld a, d
    sbc l
    ld a, [hl+]
    db $fd
    inc l
    nop
    inc l
    nop
    dec hl
    nop
    ldh a, [rP1]
    cp $0e
    rst $38
    add a
    db $fc
    nop
    cp $00
    rst $38
    rst $38
    sbc a
    cp $de
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
    rst $18
    rst $38
    adc $ff
    rst $28
    rst $18
    cp $cf
    cp $cf
    db $fc
    rst $28
    ld hl, sp-$01
    ret z

    rst $38
    rst $38
    jp $c7fb


    rst $18
    ldh a, [$fd]
    ldh a, [$d6]
    jp hl


    rst $38
    ret nz

    db $fd
    ret nz

    ld a, a
    cp a
    rst $38
    cp h
    rst $38
    ccf
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
    ld a, a
    rst $38
    rst $30
    rst $28
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
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ei
    ei
    xor a
    db $e3
    sbc a
    ld h, a
    rst $38
    rst $38
    ld a, a
    rst $30
    ld l, a
    ld a, a
    rst $08
    ld a, a
    rst $38
    db $fd
    ld a, l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $18
    rst $28
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld l, e
    ld a, a
    push de
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp $66
    rst $38
    rst $18
    rst $38
    pop af
    rst $38
    or h
    ei
    sbc $3f
    sbc l
    rst $38
    db $e3
    ccf
    pop de
    ld a, a
    ldh a, [$7f]
    ld e, a
    cp h
    ld a, l
    adc a
    rst $30
    sbc c
    rst $38
    inc b
    rst $10
    inc hl
    rst $28
    rra
    sub a
    rrca
    rst $38
    adc b
    rst $38
    ld b, b
    db $fd
    nop
    rst $38
    nop
    rst $20
    add hl, de
    pop af
    rrca
    db $fc
    inc bc
    rst $18
    dec c
    sbc c
    rra
    ld e, a
    and e
    db $fd
    ld b, e
    rst $30
    nop
    ld sp, hl
    add b
    ld [hl], h
    ld hl, sp-$08
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    ld a, $fc
    db $ed
    or b
    jr nc, jr_073_5730

    ld a, h
    inc c
    cpl
    inc a
    ld h, a
    ld a, h
    ld sp, hl
    rst $20
    add sp, -$0c
    db $fc
    ldh [$c1], a
    ret nz

    pop hl
    ret nz

    dec d
    ldh [rIF], a
    ldh a, [$ed]
    rst $38
    db $ec
    rst $38

jr_073_5730:
    rst $38
    ld bc, $93bf
    rst $38
    jp nz, $e2ff

    rst $38
    ld c, b
    rra
    pop hl
    add c
    ld a, [hl]
    rst $38
    pop hl
    ld l, [hl]
    rst $18
    ld a, [hl]
    rst $08
    ld c, h
    rst $38
    call z, $cdff
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    ld a, c
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    db $fd
    ld a, a
    cp [hl]
    ld a, c
    rst $38
    nop
    jp nz, $951c

    cp $f4
    rst $28
    db $ec
    db $fc
    ld hl, sp-$04
    ld h, e
    db $fc
    xor a
    ld a, b
    inc a
    ei
    db $eb
    rra
    rra
    and [hl]
    rst $38
    sbc c
    cp $9d
    db $fd
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    rst $38
    cp $ff
    rst $38
    cp $fd
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    db $fc
    db $db
    pop de
    ei
    cp c
    ccf
    ei
    di
    rst $38
    rla
    cp $37
    ld a, [$fbc5]
    rla
    db $eb
    ld a, [$ffef]
    db $fd
    rst $00
    ld sp, hl
    dec e
    ld l, e
    ld a, e
    db $eb
    ld l, a
    jp Jump_000_0afd


    or $c9
    ldh [$cf], a
    rst $20
    db $fc
    rst $38
    ld a, h
    or e
    nop
    ld hl, sp+$00
    rst $10
    jr c, jr_073_57f4

    rst $38
    or a
    ret


    cp $01
    db $fd
    nop
    ld l, e
    add b
    rst $10
    adc h

jr_073_57f4:
    db $fc
    ldh a, [$fe]
    ldh a, [rIE]
    ld a, b
    db $fc
    ld a, a
    cp a
    ld a, h
    cp $f1
    ld a, [c]
    ld de, $3162
    ld e, b
    jr nc, @-$38

    jr c, @+$01

    inc bc
    sbc a
    rlca
    ld h, c
    ld [bc], a
    rst $00
    ld b, b
    inc d
    inc hl
    scf
    jr nc, jr_073_5831

    ldh a, [$94]
    ld a, b
    rst $18
    dec sp
    rst $38
    cpl
    and a
    inc bc
    add d
    ld bc, $81c7
    rst $18
    add $ff
    jp nz, Jump_000_12ff

    rst $38
    inc h
    ld hl, sp+$27
    ld bc, $fffe
    inc b
    adc h

jr_073_5831:
    rlca
    ld e, h
    adc a
    scf
    rst $08
    adc $ff
    adc e
    db $fc
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    cp d
    db $fc
    dec sp
    add sp, $26
    ld hl, sp-$59
    ld hl, sp+$7e
    ld hl, sp+$7b
    db $ec
    adc d
    inc b
    db $fc
    inc e
    rlca
    inc b
    ret nz

    add e
    db $eb
    ld sp, $108c
    or a
    ld [$7cc3], sp
    inc b
    ld hl, sp+$64
    ld hl, sp-$21
    xor h
    rst $38
    add b
    db $eb
    dec e
    db $fd
    ld [hl], l
    rst $38
    ld a, a

jr_073_586a:
    rst $38
    db $fd
    rst $38
    ld sp, hl
    ld c, a
    and c
    add e
    ld h, l
    rst $38
    jr z, jr_073_586a

    pop af
    ld sp, hl
    db $d3
    ld sp, hl
    db $fd
    rst $38
    pop de
    rst $30
    pop bc
    rst $38
    ei
    db $fd
    ld hl, sp-$1b
    ldh a, [$f5]
    ret nz

    push af
    pop bc
    rst $38
    ret z

    rst $38
    xor $ff
    rst $38
    ld a, [$f5fa]
    ld a, [$fae7]
    db $ed
    ld a, [c]
    rst $38
    ld [c], a
    rst $28
    ld [c], a
    rst $38
    db $e3
    rst $38
    rst $20
    rst $30
    rst $38
    ld a, [c]
    rst $28
    ldh a, [$cf]
    and d
    db $fd
    rst $30
    ld a, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $18
    rst $38
    db $e3
    rst $38
    rst $38
    ret


    rst $38
    ret


    db $fc
    or d
    ld a, [$ff3d]
    inc l
    rst $38
    nop
    rst $38
    cp c
    rst $38
    rst $38
    rst $10
    rst $28
    db $db
    rst $30
    rst $08
    di
    db $e3
    rst $38
    di
    rst $38
    rst $18
    rst $38
    xor a
    rst $18
    db $fd
    adc $ff
    adc a
    or $8f
    ld a, [$ba87]
    push bc
    rst $00
    inc a
    rst $20
    ld a, [de]
    cp a
    reti


    ld a, [c]
    ccf
    ld a, e
    inc e
    db $e4
    rst $38
    cp a
    inc [hl]
    sbc $f8
    ld a, a
    call nz, $c1ff
    ld b, l
    ld hl, sp-$09
    dec sp
    rst $20
    ccf
    or a
    call z, $30d8
    ld a, [hl]
    nop
    add b
    ld b, b
    pop bc
    add b
    cp $81
    and [hl]
    add hl, sp
    xor [hl]
    jr @-$13

    inc b
    ld a, a
    rrca
    adc a
    ld [hl], c
    ld a, h
    ret nz

    ld b, $e0
    ld h, h
    ldh [$ef], a
    ld [hl], b
    inc hl
    rst $38
    rst $38
    rra
    ld a, a
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    ld bc, $0601
    ld b, $0c
    inc c
    ret c

    jr jr_073_599a

    ld [hl], b
    adc a
    add b
    rra
    nop
    ld e, $00
    ld a, h
    rst $38
    di
    db $fd
    ld [hl], c
    add c
    inc hl
    add c
    ld l, a
    add e
    ld e, e
    ld h, a
    ld e, e
    daa
    ld [hl], a
    add a
    inc de
    inc bc
    rst $08
    rlca
    inc d
    ld [$20f0], sp
    and b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    or $18
    cp a
    ld hl, sp-$09
    ld sp, hl
    rst $38
    ld a, a
    cp $7d
    rst $28
    dec a
    ccf
    rrca
    ld e, a
    ccf
    adc a
    db $10
    rrca
    rra
    xor $bf
    cp $fc
    rst $38
    cp $8e
    cp $8e
    ld b, [hl]
    sbc $04
    and $84
    xor a
    ld d, $9f
    rrca
    adc a
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $10
    ld a, a
    or a
    ld [hl], a
    ld l, a
    ld h, a
    rlca
    rla
    ld l, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    add hl, de
    ld a, l
    ld a, b
    jr c, @+$3a

    jr c, jr_073_5996

jr_073_5996:
    jr c, @+$2a

    ld a, $1b

jr_073_599a:
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld [hl], e
    ld [hl], a
    rst $38
    ld a, l
    rst $30
    ld a, d
    rst $30
    ld hl, sp+$77
    xor d
    ld [hl], l
    or b
    rst $28
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    sbc [hl]
    rrca
    ld b, $cf
    rlca
    rst $38
    rst $20
    rst $38
    cp $fd
    rst $38
    cp $fd
    rst $38
    db $fc
    rst $38
    cp $fc
    rst $38
    db $fd
    cp $7f
    db $fc
    sbc a
    ld a, a
    ld a, e
    rst $38
    push af
    ei
    ld [hl], a
    db $eb
    inc sp
    db $ed
    ld [hl], e
    db $ed
    db $e3
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    rst $18
    ld a, a
    rst $00
    ccf
    db $e4
    ccf
    sub a
    ld c, $89
    ld b, $fd
    ldh a, [$78]
    ldh a, [$fa]
    db $fc
    ld a, [$f9ff]
    cp $ff
    ld h, b
    ld h, d
    ccf
    ccf
    rra
    db $fc
    inc bc
    rst $20
    add hl, de
    ei
    rlca
    sbc a
    ld h, [hl]
    rst $38
    ld e, $ff
    rst $38
    rst $38
    push af
    ld a, a
    ld d, e
    ld a, a
    ld h, d

jr_073_5a0c:
    ld a, [hl]
    ld sp, $13fc
    add e
    inc bc

jr_073_5a12:
    rst $00
    ld b, $e7
    inc b
    call z, $fb0c
    jr @+$01

    jr nc, jr_073_5a0c

    ld h, b
    ld e, a
    ld b, b
    ld a, a
    sbc a
    rst $38
    ccf
    rst $38
    ld a, $fe
    db $fc
    db $fd
    ld hl, sp-$07
    ldh [$fc], a
    ldh [$fc], a
    ldh [$c4], a
    ld hl, sp-$52
    db $db
    rst $30
    rst $08
    ld d, a
    adc a
    ld h, a
    sbc a
    ld c, c
    or a
    and e
    rst $38
    ei
    rst $30
    di
    db $fc
    db $f4
    ld hl, sp-$18
    ldh a, [rBCPS]
    ld [hl], b
    inc a
    ld [$0207], sp
    rlca
    rlca
    inc bc
    rlca
    ld b, a
    inc bc
    ld a, [c]
    rlca
    rst $28
    ld de, $c0fa
    cp a
    ret nz

    call nc, Call_000_2000
    add b
    add b
    ret nz

    ld l, [hl]
    sub c
    rst $38
    ld sp, hl
    ld a, a
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld [hl], c
    ld a, e
    pop af
    cp c
    ld [hl], b
    sbc c
    jr nc, jr_073_5a8a

    inc l
    sbc a
    jr z, jr_073_5a12

    add h
    sbc $85
    rst $38
    adc $ff
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    db $e3
    rst $20
    db $e3
    db $e3
    rst $20
    db $e3
    db $e3
    db $e3
    pop bc

jr_073_5a8a:
    di
    pop hl
    rst $30
    pop hl
    rst $38
    pop de
    rst $30
    ld l, c
    rst $38
    add e
    ei
    add a
    rst $28
    cp e
    rst $28
    or e
    di
    cp l
    rst $38
    xor c
    ld sp, hl
    ld h, e
    rst $38
    cp e
    ld a, a
    di
    dec sp
    ld b, a
    adc a
    add a
    adc a
    add [hl]
    add a
    adc a
    rst $28
    sub h
    db $fd
    ld sp, hl
    sbc l
    rst $38
    db $10
    rst $28
    ld b, b
    rst $38
    ld [hl], $ff
    sbc a
    ld a, a
    ld e, a
    cp a
    rst $18
    cp a
    sub $af
    ld h, a
    rst $18
    xor $ff
    ld a, l
    cp $7d
    cp $55
    cp $89
    rst $38
    db $e3
    ld e, a
    db $fc
    adc a
    ld a, a
    and $bc
    db $e3
    ei
    db $fc
    ld a, [$fefd]
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    ei
    rst $28
    ei
    rst $28
    rst $30
    sbc e
    ld [hl], a
    sbc a
    ld h, a
    adc a
    ld a, a
    add [hl]
    rst $38
    rst $28
    rra
    ld a, [hl]
    adc a
    ei
    rrca
    db $76
    rra
    sbc c
    cp $22
    pop bc
    ld b, d
    add c
    rst $18
    pop af
    cp b
    db $fc
    ld e, a
    ld a, $7c
    dec sp
    ld a, [hl]
    ld bc, $0071
    ld l, b
    ld [hl], b
    ld b, d
    ld e, a
    rlc l
    xor [hl]
    sub c
    ld e, e
    and h
    ld l, c
    rst $30
    jp hl


    or $f7
    add b
    inc c
    add e
    add c
    rrca
    pop af
    ld c, $ee
    db $10
    rst $38
    add c
    dec a
    adc $f6
    inc c
    add $0c
    adc [hl]
    inc b
    ld a, h
    inc b
    ld a, h
    inc b
    db $ec
    db $10
    push hl
    ld a, [hl]
    ld a, h
    rst $38
    ldh a, [$cf]
    rst $20
    ld hl, sp-$09
    ld hl, sp-$07
    cp $8c
    rst $38
    adc [hl]
    rlca
    dec c
    inc bc
    dec bc
    inc b
    inc b
    nop
    rlca
    nop
    rlca
    inc b
    add $43
    db $e3
    pop bc
    ldh [$e1], a
    or c
    ret nz

    ccf
    ret nz

    db $fd
    inc bc
    rst $30
    nop
    rst $38
    nop
    add sp, $13
    ld [hl], h
    nop
    inc l
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
    jr jr_073_5b93

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_073_5ba3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_073_5bb3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_073_5bc3

    ld [hl-], a

jr_073_5b93:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_073_5bd3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_073_5ba3:
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

jr_073_5bb3:
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

jr_073_5bc3:
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

jr_073_5bd3:
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

Call_073_5c03:
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
    db $e4
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $e402
    db $e4
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
    ld de, $e412
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_073_5c97

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_073_5ca7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_073_5cb7

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_073_5cc7

    ld [hl-], a

jr_073_5c97:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_073_5cd7

    ld a, [hl-]
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_073_5ca7:
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_073_5cb7:
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_073_5cc7:
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_073_5cd7:
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
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
    ld [bc], a
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
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
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0101
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld [$0908], sp
    ld [$0909], sp
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
    nop
    inc c
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
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
    inc c
    add hl, bc
    inc c
    add hl, bc
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
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    xor h
    ld d, b
    ld [hl], b
    nop
    inc sp
    push hl
    rst $38
    inc hl
    ld a, a
    scf
    ld a, e
    dec e
    ei
    db $fd
    rst $38
    ei
    rst $38
    cp c
    db $fd
    adc c
    db $fc
    dec c
    inc a
    add h
    inc e
    add h
    rst $38
    inc b
    rst $18
    rlca
    adc a
    rlca
    adc a
    rla
    adc a
    rlca
    adc a
    rrca
    rst $08
    rrca
    rst $08
    rst $28
    rst $20
    rst $28
    rst $20
    cp $ff
    ld [hl], c
    ld a, e
    rla
    ld a, a
    inc de
    ld a, a
    rla
    rst $30
    rra
    rst $10
    cpl
    rst $00
    dec de
    ld a, e
    sub a
    scf
    ld c, c
    inc sp
    adc c
    ld sp, hl
    dec b
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $28
    rst $28
    bit 1, a
    ei
    ld a, a
    rst $28
    ld a, a
    sbc l
    ld a, a
    ld e, a
    ld a, a
    dec de
    ld a, a
    ccf
    ccf
    ld e, a
    rst $38
    rra
    rst $38
    ld e, $fa
    ld e, $fe
    ld hl, sp-$41
    dec a
    ld a, a
    inc c
    adc d
    inc b
    db $e4
    db $f4
    call c, Call_000_0e02
    nop
    ld b, $00
    ld b, $08
    or $bb
    rst $38
    sub d
    rst $38
    or d
    rst $38
    rrca
    ld e, a
    rst $38
    ld a, a
    rst $38
    push af
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, l
    cp $dc
    cp a
    dec l
    cp $1d
    rst $38
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    cp $ff
    or $ff
    cp $ff
    ld h, b
    rst $38
    add b
    rst $38
    ld b, h
    rst $38
    sbc a
    ld h, b
    db $fd
    ld h, $f9
    ld a, $e9
    ld a, a
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    rra
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld c, a
    ld a, a
    adc a
    ccf
    rst $00
    cpl
    rst $18

jr_073_5ea4:
    rrca
    rst $30
    rrca
    rst $38
    scf
    rst $18
    ld c, a
    rst $38
    adc a
    cp $3c
    rst $38
    ld a, e
    rst $30
    rst $00
    ei
    ld a, e
    add [hl]
    rst $30
    jr jr_073_5ea4

    db $10
    rst $38
    rlca
    db $fd
    rra
    ld [$f0ff], sp
    rrca
    sub $01
    rlca
    nop
    ld a, $0f
    rst $18
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    rst $30
    rrca
    add a
    ld a, a
    rst $10
    ld a, a
    ld h, a
    ret nz

    add b
    ret nz

    nop
    add b
    add b
    nop
    db $d3
    nop
    rla
    ldh [rIE], a
    ld a, [hl]
    rst $38
    ccf
    rst $38
    db $fd
    ret nz

    or c
    add sp, -$20
    cp $f0
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    sbc a
    cp a
    sub a
    xor a
    sub a
    xor a
    sub e
    rst $38
    sbc $fc
    and $f6
    push hl
    rst $30
    cp d
    ld sp, hl
    ld a, [c]
    rst $38
    db $fc
    rst $38
    ld e, [hl]
    rst $38
    ld b, [hl]
    pop hl
    ld [bc], a
    rst $38
    xor $ff
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    ldh a, [$c3]
    ld hl, sp-$50
    ld hl, sp-$68
    ld hl, sp-$40
    jp hl


    sub h
    rst $30
    jr nz, @+$01

    ld [hl], b
    rst $38
    rst $38
    rst $38
    ei
    ld sp, hl
    db $e3
    ld sp, hl
    rst $18
    rst $30
    ret


    push af
    rst $00
    jp $87cb


    jp $8080


    add b
    add b
    nop
    add b
    nop
    nop
    add c
    add d
    rst $38
    rst $08
    di
    xor a
    add a
    inc bc
    add c
    inc bc
    adc c
    ld b, e
    rst $38
    ld bc, $b9ff
    rst $38
    pop af
    rst $38
    rla
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    ld c, [hl]
    rst $38
    daa
    cp a
    daa
    rst $38
    or [hl]
    xor $f7
    ld a, [$7af7]
    rst $38
    ld [de], a
    rst $38
    rst $30
    cp a
    sbc d
    rst $38
    call c, $ff3f
    sbc a
    rst $18
    ccf
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $28
    rst $38
    rla
    rst $38
    or e
    rst $28
    sbc a
    db $eb
    sub l
    db $eb
    and a
    ei
    rst $28
    di
    reti


    ccf
    push de
    cpl
    adc a
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    ccf
    ei
    rst $18
    db $fd
    cp $fd
    rst $38
    db $fd
    rst $30
    db $fc
    push af
    ld hl, sp-$09
    ld hl, sp-$0d
    db $fc
    db $f4
    rst $38
    di
    db $fc
    add sp, -$19
    ld sp, hl
    add $bb
    inc b
    ld [$e90c], a
    ret nc

    ld a, l
    adc a
    call c, $fcbc
    jr jr_073_5feb

    ld hl, sp-$02
    ei
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $3f
    rst $28
    ld e, $ea
    db $fd
    cp $e1
    rst $38
    ret nz

    or c
    adc $fc
    add a
    ld h, e
    add b
    ld c, l
    ldh a, [$f3]
    inc c
    ld [hl], b
    rrca
    push af
    ld c, $64
    ld e, $ef
    inc e
    ld sp, hl
    pop hl
    pop af
    ldh [rIE], a
    ld [c], a
    rst $38
    db $fd
    cp $7d
    ld a, a

jr_073_5feb:
    ld a, $ff
    cpl
    rst $38
    ld h, a
    rst $28
    ldh a, [$f4]
    ei
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    ld a, a
    add a
    ld b, a
    ld l, a
    add a
    ld b, e
    add e
    add c
    pop hl
    add c
    pop hl
    ld c, l
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
    ld a, a
    ld a, a
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
    rst $20
    ret c

    rst $00
    db $e3
    rst $28
    rst $00
    rst $38
    rst $08
    rst $18
    rst $38
    rst $18
    jp z, $5ad7

    rst $18
    ld [hl-], a
    adc a
    ld e, e
    add a
    rrca
    rst $00
    adc a
    rst $38
    rst $30
    adc a
    rra
    adc a
    ret nz

    db $f4
    ld [$a1dc], a
    ld sp, hl
    rst $18
    ld sp, hl
    adc l
    ld sp, hl
    push hl
    db $fc
    pop hl
    ei
    ldh a, [$fb]
    call nc, $f2f9
    db $fd
    ldh a, [$fd]
    add hl, sp
    ld a, l
    cp b
    cp l
    add hl, sp
    cp [hl]
    inc [hl]
    cp h
    jr nc, @+$01

    inc a
    db $fc
    dec sp
    ld l, a
    cp e
    ccf
    rst $38
    ld e, a
    rst $30
    rst $10
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $30
    rst $28
    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    sbc a
    rst $30
    sbc e
    rst $30
    add e
    rst $38
    pop de
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ei
    rst $38
    cp $ff
    xor $ff
    ldh [rIE], a
    ld [hl], c
    rst $38
    or b
    rst $28
    cp a
    rst $28
    db $db
    ld a, a
    ei
    ld [hl], a
    db $eb
    or $fe
    rst $30
    ld [hl], e
    rst $28
    push de
    adc [hl]
    sbc $10
    ld a, [$6060]
    nop
    jp $8880


    db $10
    ld l, [hl]
    ld de, $1fe0
    db $fc
    inc bc
    ld a, [$ffff]
    rst $38
    rst $38
    cp $fb
    add $43
    add b
    or c
    add b
    db $db
    ld b, $fb
    rla
    db $e4
    ret nz

    add h
    nop
    db $db
    ld b, $00
    rst $38
    sub e
    ld a, a
    db $dd
    ccf
    db $fc
    inc bc
    ld c, a
    nop
    rst $08
    nop
    adc h
    nop
    inc h
    ld [$08f0], sp
    rst $38
    ld e, a
    cp a
    ld a, [hl-]
    add h
    add b
    rst $38
    and h
    inc a
    rst $18
    inc c
    or h
    rst $38
    db $fc
    cp a
    ld e, a
    ld a, a
    ld e, $f7
    dec l
    push hl
    ld d, c
    db $fd
    di
    rst $38
    db $fd
    rst $28
    pop de
    db $eb
    ret nz

    ei

Jump_073_60ff:
    ldh [rIE], a
    ldh a, [rIE]
    sbc a
    rst $38
    sbc a
    rst $28
    rst $00
    rst $28
    rst $00
    rst $20
    ret


    push hl
    pop hl
    or e
    pop af
    rst $38
    add hl, de
    ld a, a
    sbc a
    rra
    cp a
    adc a
    rst $00
    rst $08
    cp a
    rst $38
    ret nz

    rst $00
    add sp, -$20
    adc $c1
    call nz, $e2fd
    cp $fd
    db $fd
    cp $ef
    sbc a
    sbc a
    rrca
    adc a
    ld a, d
    ld l, a
    adc [hl]
    ld l, a
    adc a
    ld c, a
    rrca
    ld l, a
    rra
    rst $28
    rra
    rst $18
    ccf
    rst $38
    db $dd
    rst $38
    ld a, l
    di
    ld sp, hl
    reti


    ld [de], a

jr_073_6142:
    reti


    jr c, jr_073_6142

    cp h
    db $fd
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    cp l
    rst $38
    cp $ff
    cp a
    cp $ff
    ldh [rIE], a
    rst $00
    xor b
    rst $30
    sub e
    rst $18
    pop de
    rst $08
    ld b, b
    ld h, e
    rst $38
    ei
    rst $30
    rst $30
    rst $38

jr_073_6166:
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, [$edff]
    rst $38
    push af
    cp $f3
    db $ed
    rst $38
    jp hl


    ld a, [$fdff]
    cp $fc
    rst $38
    rst $38
    cp $fa
    rst $38
    set 7, a
    cpl
    sbc $a5
    ld e, [hl]
    ld sp, hl
    sbc [hl]
    ld l, a
    sbc h
    db $fd
    sbc a
    ld e, a
    cp a
    rst $10
    xor a
    sub a
    rst $28
    sub a
    rst $38
    db $d3
    rst $38
    ld [hl], a
    ld sp, hl
    scf
    ld sp, hl
    sub a
    ldh [$bb], a
    sbc $ff
    sbc a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    ld a, c
    nop
    rst $38
    nop
    ld h, d
    db $fc
    ret c

    db $fc
    xor l
    ld [hl], b
    ld [hl], d
    ret nz

    ld [bc], a
    db $fc
    inc a
    ldh [$ba], a
    ret nz

    rst $38
    add b
    sbc l
    ld b, $0d
    nop
    inc c
    nop
    and $58
    ld sp, hl
    ld a, [hl]
    ld [hl], a
    db $fc
    sbc a
    db $fc
    ld [hl], h
    rrca
    or b
    rrca
    jp hl


    ld [de], a
    ld e, h
    db $e3
    ld b, b
    rst $38
    rlca
    ld hl, sp-$1b
    jr jr_073_6166

    jr jr_073_61f0

    jr c, jr_073_61f8

    jr c, jr_073_6202

    inc e
    rst $38
    rst $38
    rst $38
    and $7f
    rlca
    rra
    inc b
    inc e
    nop
    inc e
    ld [bc], a
    or $19
    ld e, $c1

jr_073_61f0:
    ld sp, hl
    and $ff
    pop af
    rst $38
    di
    cp a
    ld c, l

jr_073_61f8:
    ld e, $85
    rst $18
    sbc [hl]
    rst $18
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $38

jr_073_6202:
    rst $38
    sbc a
    and e
    inc sp
    pop af
    and b
    ld sp, hl
    and [hl]
    db $fd
    and c
    db $fd
    ldh [$f5], a
    jp $e1f3


    ei
    scf
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    adc a
    sbc a
    ld l, e
    sbc e
    ld d, a
    sbc e
    ld b, e
    ld d, e
    rrca
    ld d, a
    ld l, e
    rst $38
    rra
    cp a
    rst $18
    cp a
    rst $18
    sbc h
    ld sp, $b984
    add l
    sub b
    dec e
    adc c
    rrca
    add hl, de
    rrca
    dec de
    ccf
    db $db
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $da
    cp l
    db $db
    or l
    db $eb
    ld a, h
    adc a
    jr z, @-$71

    ld [bc], a
    dec a
    set 7, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp c
    sbc a
    jr c, jr_073_62cb

    cp b
    add sp, $54
    rst $38
    or l
    rst $38
    ei
    rst $38
    scf
    sub a
    rst $28
    rst $28
    cp a
    dec a
    rst $38
    scf
    rst $38

jr_073_6268:
    and a
    ei
    push af
    ei
    ld h, l
    rst $38
    db $eb
    rst $38
    db $eb
    ld a, a
    ei
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    cp $fb
    sub a
    ld hl, sp-$11
    ld e, b
    db $ed
    ld e, c
    xor $1b
    rst $38
    ld e, $bf
    jr c, @+$5e

    jr nc, jr_073_6268

    ld l, b
    rst $20
    ld hl, sp-$06
    rst $38
    ei
    cp $64
    ret c

    ld l, a
    ldh a, [$b5]
    adc $fa
    add a
    db $fc
    inc bc
    rra
    inc b
    dec bc
    inc b
    scf
    add sp, -$38
    ldh a, [$88]
    ldh a, [$9a]
    pop hl
    xor a
    rst $38
    xor [hl]
    ld a, a
    dec e
    inc bc
    inc bc
    nop
    ld e, a
    scf
    cp a
    ld c, a
    ld e, a
    rra
    ccf
    ccf
    ld h, a
    ccf
    and $78
    rst $08
    ld a, [c]
    rst $38
    rlca
    ld bc, $0201
    inc b
    ld [hl], e
    ld b, $0c
    di
    db $ed
    inc de
    sbc a
    ld h, e
    sub e

jr_073_62cb:
    ld l, a
    srl a
    rra
    ldh a, [rNR12]
    pop hl
    sub b
    ld h, e
    xor h
    ld b, e
    call nc, $e80f
    rra
    cp d
    ld e, l
    sbc l
    ld a, a
    rra
    cp $9d
    ld [$2aff], sp
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $28
    rra
    daa
    ld b, a
    scf
    rst $00
    add hl, sp
    db $f4
    cp b
    ld h, c
    ld hl, sp-$80
    db $fd
    ld l, b
    rst $38
    inc b
    ld e, e
    or d
    ld e, $8e
    cp a
    cp $ff
    db $f4
    or h
    add hl, bc
    ccf
    add [hl]
    scf
    ld c, $37
    ld h, h
    ccf
    inc b
    ccf
    ld h, h
    cpl
    push af
    xor a
    call nc, $b2df
    sbc a
    ld a, [c]
    cp $d2
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    ld sp, hl
    db $fd
    ld a, [$dafd]
    jp c, $dbfd

    ret z

    ret c

    rst $08
    rst $18
    db $fd
    rst $38
    adc a
    ei
    sbc a
    db $db
    rst $38
    ei
    sub l
    rst $38
    xor c
    ld e, a
    ei
    cp $5b
    rst $18
    ld a, e
    rst $38
    ld a, [c]
    rst $38
    sbc [hl]
    rst $18
    or d
    ld a, l
    ld a, [de]
    ld [hl-], a
    add hl, sp
    or d
    and c
    rst $38
    and b
    rst $38
    ld hl, sp-$21
    ld [c], a
    rst $38
    rst $00
    rst $38
    db $fd
    rst $38
    call c, $cefe
    xor $c2
    ld a, [hl]
    ld [c], a
    ld e, a
    cp $ff
    adc h
    rst $38
    cp $ef
    ldh [$fa], a
    rst $30
    rst $38
    db $fc
    db $fd
    or $ff
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $18
    ei
    push af
    cp e
    dec [hl]
    ei
    or e
    rst $38
    and e
    rst $38
    ei
    rst $38
    ld a, l
    cp a
    ld a, e
    db $fd
    dec [hl]
    ld a, [$b47b]
    xor a
    call nc, $d23f
    rst $30
    inc c
    rst $18
    dec a
    rra
    rst $38
    rst $28
    rra
    cp $3f
    add a
    ld e, $70
    db $10
    call c, $4b30
    inc a
    ld a, [$d37c]
    cp h
    ld [hl], l
    adc e
    rst $38
    rlca
    rst $10
    rrca
    ld a, a
    rrca
    sbc $3c
    db $fc
    ld hl, sp-$0a
    ld hl, sp+$7b
    db $f4
    di
    ld a, h
    sub b
    ld h, b
    ld hl, sp+$00
    push hl
    ld hl, sp-$33
    sbc [hl]
    cp l
    ld [bc], a
    ld [hl], l
    nop
    cp $13
    rst $18
    ld h, $7d
    xor $ff
    cp $7d
    ld a, $fd
    ld a, $ff
    cp $fc
    rst $38
    db $fd
    cp $fe
    rst $38
    ld a, [hl]
    rst $38
    xor $1f
    push de
    ld c, $ef
    ld b, $c3
    rlca
    inc b
    add e
    add [hl]
    ld bc, $8341
    sub a
    inc bc
    cp e
    rlca
    ld a, a
    ld a, b
    db $fc
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f8]
    ldh [$fa], a
    db $f4
    db $fc
    ld a, [$fcff]
    rst $38
    ld sp, hl
    rst $38
    ld a, [hl]
    ld l, [hl]
    sub l
    adc $41
    rst $28
    scf
    rst $38
    scf
    ld a, a
    and h
    rst $20
    add e
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    di
    ld a, a
    cp $69
    rst $38
    db $fd
    rst $38
    cp a
    cp a
    ld e, a
    rst $38
    rrca
    rst $38
    ld [hl], e
    ld a, e
    pop bc
    ld sp, hl
    ld h, e
    ld sp, hl
    ld d, a
    rst $38
    ld c, [hl]
    cp $ff
    cp $ff
    rst $18
    xor $cf
    xor $de
    adc [hl]
    ld a, a
    adc [hl]
    rst $38
    rst $18
    rst $10
    db $fc
    db $fd
    sub [hl]
    cp [hl]
    db $ed
    or [hl]
    dec l
    rrca
    sub c
    dec c
    cpl
    cpl
    rra
    ld l, [hl]
    rst $18
    ld l, [hl]
    ld sp, $0b37
    rst $30
    xor a
    rst $30
    ld h, a
    rst $38
    rst $20
    rst $30
    rst $28
    rst $38
    rst $10
    db $fc
    ld d, a
    push af
    ld e, d
    db $db
    db $f4
    rst $10
    and b
    ld [hl], a
    xor [hl]
    rst $30
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $28
    cpl
    ld a, a
    rst $28
    rst $20
    rst $38
    inc l
    rst $38
    ld [c], a
    db $fd
    or e
    db $fd
    ld a, l
    rst $38
    push af
    rst $38
    call c, $fbff
    rst $18
    xor a
    rst $18
    ld e, [hl]
    pop af
    ei
    ld [hl], b
    rst $20
    ld e, c
    db $ed
    rla
    rla
    add hl, bc
    jp hl


    ld d, b
    sbc a
    nop
    rst $30
    ld c, $a5
    ld a, b
    ld [hl], $fc
    db $fc
    ret z

    rst $28
    ret nz

    rst $30
    add b
    cp b
    ld b, a
    ldh a, [rIF]
    jp hl


    db $10
    call c, Call_000_1d31
    ld [hl], b
    or c
    ret nz

    pop bc
    ldh [$e3], a
    and b
    adc [hl]
    ret nz

    rst $08
    ld sp, $0719
    ld d, $01
    inc sp
    nop
    ei
    ld c, $ec
    rra
    cp h
    rlca
    ld h, c
    nop
    adc b
    ldh a, [rIE]
    nop
    jp $2d80


    adc $19
    rst $20
    db $ec
    nop
    rst $00
    nop
    or a
    nop
    ld h, a
    nop
    dec b
    ld [bc], a
    inc b
    inc bc
    inc b
    inc bc
    adc c
    rlca
    add c
    rrca
    sub e
    rrca
    ei
    rrca
    db $ed
    inc bc
    ldh [$03], a
    ld [bc], a
    ld bc, $01f0
    pop hl
    ld bc, $e013
    and e
    ret nz

    or [hl]
    ret nz

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
    ld a, a
    dec de
    db $db
    rst $20
    rst $18
    cpl
    ccf
    rrca
    ld a, a
    xor a
    ei
    add l
    db $f4
    add sp, -$04
    ld hl, sp-$02
    ld l, e
    and $03
    sbc a
    ld c, a
    cp a
    ld l, a
    push af
    ld [$40ff], sp
    rst $38
    ldh a, [rIE]
    ld [hl], l
    db $fd
    ld a, [$fdff]
    rst $38
    sbc a
    rst $18
    inc a
    rst $38
    db $fd
    ld sp, hl
    ld h, a
    ld a, c
    scf
    ld a, l
    inc sp
    rst $30
    dec [hl]
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $18
    cpl
    ld c, a
    ld a, $0f
    rst $28
    cp a
    ld a, l
    rst $38
    rst $18
    rst $38
    push de
    rst $10
    add l
    sub a
    rst $08
    sbc a
    sbc e
    sbc a
    ei
    rst $38
    rst $38
    rst $38
    ld a, e
    ld l, e
    or $ef
    db $10
    dec e
    and $af
    ld e, [hl]
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    xor e
    db $fd
    inc bc
    rst $30
    call nz, $e3ff
    db $fd
    dec de
    cp a
    call c, $bdfe
    rst $28
    cp $6f
    rst $18
    ld a, a
    xor b
    rst $38
    sbc c
    rst $38
    db $76
    rst $38
    ld a, c
    or a
    rst $28
    rst $18
    rst $28
    db $dd
    cpl
    jp hl


    cp a
    db $db
    ld a, [hl]
    ld c, a
    rst $38
    db $fc
    rst $20
    db $fd
    rst $08
    rst $00
    ld sp, hl
    cp $f1
    db $d3
    db $ed
    ld a, d
    add l
    ld h, a
    sbc b
    db $f4
    ld hl, sp-$29
    ld sp, hl
    ldh a, [$03]
    xor c
    ld b, $fd
    cpl
    rra
    rra
    ld hl, sp+$17
    db $e3
    ld bc, $c06f
    dec bc
    db $f4
    ld sp, hl
    ld d, $6e
    sub b
    sbc [hl]
    ld de, $110f
    ld a, h
    inc bc
    db $fd
    ld a, $9b
    ld a, [hl]
    ld a, l
    ld [c], a
    ld a, a
    ldh [$ee], a
    ldh [$63], a
    add b
    ld a, [hl]
    jp $0f1e


    rst $18
    rrca
    ld b, a
    add e
    ld e, a
    add e
    ld [hl], a
    rst $28

jr_073_65b0:
    scf
    ld a, [hl]
    ld a, [hl-]
    db $fd
    rst $18
    ld a, a
    sbc a
    ld a, a
    db $e3
    rst $38
    sbc a
    ld h, b
    jr nz, jr_073_662e

    db $ec
    jr nc, jr_073_65b0

    jr nc, jr_073_6602

    db $eb
    ccf
    rst $38
    ld e, $ff
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, c
    add a
    ld c, $01
    inc b
    dec bc
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    inc [hl]
    rst $38
    cp h
    rst $38
    add a
    rst $38
    add $9d
    db $fd
    sub d
    ld a, b
    or l
    ld a, c
    ld [hl-], a
    rst $38
    rlca
    ld b, a
    xor a
    rrca
    and a
    sbc a
    ld [bc], a
    sbc $e0

jr_073_6602:
    rst $38
    cpl
    cpl
    rla
    ld h, a
    and a
    rst $20
    ld e, e
    cp a
    ld l, a
    rst $38
    adc e
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    or $ff
    or e
    rst $30
    cp b
    rst $38
    di
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld e, b
    ld hl, sp+$5f
    rst $38
    db $fd
    rst $38
    rst $30

jr_073_662e:
    rst $38
    or $fe
    sub l
    dec a
    sbc $7d
    rst $38
    rst $38
    ld d, l
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $18
    db $fd
    cp $ff
    cp $ff
    sub h
    rst $28
    sub a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $18
    ld a, d
    call c, Call_073_7d57
    sbc d
    db $e3
    rst $38
    db $eb
    rst $08
    rst $38
    db $eb
    rst $38
    cp a
    rst $38
    cp $bd
    di
    sbc e
    cp $6e
    db $db
    ld a, [hl-]
    rst $38
    and $ff
    ld [hl], e
    adc [hl]
    rst $08
    inc a
    ld l, e
    db $f4
    cp [hl]
    jp hl


    pop af
    adc a
    db $db
    and $1a
    db $ec
    jp c, $dd3c

    jr nc, @-$05

    ldh a, [$e9]
    jr nc, jr_073_66f8

    ld [$409f], sp
    cp $e3
    ld e, a
    ld hl, sp+$7f
    ldh a, [$f8]
    ldh a, [$fc]
    ld hl, sp+$39
    db $fc
    cp $04
    and e
    add $be
    jp $e3bf


    or a
    ld a, a
    and [hl]
    ld a, a
    cp [hl]
    ld [hl], h
    dec hl
    ldh a, [$fe]
    ld h, c
    ld h, [hl]
    ld sp, hl
    ld [hl], b
    ret nz

    or a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp $1f
    adc b
    rlca
    or d
    pop bc
    db $ed
    ld hl, sp-$06
    rst $38
    db $eb
    rlca
    dec b
    inc bc
    inc b
    inc bc
    ld l, h
    ld b, $f7
    cp $7f
    rst $38
    ld a, l
    di
    di
    ldh a, [$f3]
    ldh [$e1], a
    ldh [$e7], a
    ldh [$e8], a
    rst $00
    sub a
    rst $08
    xor $9f
    rst $18
    cp [hl]
    ld l, l
    cp [hl]
    inc sp
    ret nz

    inc e
    inc bc
    inc e
    inc bc
    rst $38
    cp $1f
    inc c
    db $fd
    sub c
    db $e4
    ei
    cp $7d
    db $fc
    ld a, c
    cp $7d
    rst $38
    ld l, a
    rst $08
    rra
    rst $18
    rlca
    rst $30
    dec de
    rst $20
    ld b, e

jr_073_66f8:
    db $fc
    rst $28
    ld a, [$fcf4]
    add sp, -$10
    jr c, jr_073_6750

    cp a
    rst $08
    sbc a
    rst $38
    add a
    rst $18
    and a
    rst $38
    ld h, d
    ld a, [$fdf5]
    ld a, [de]
    rst $38
    ld a, h
    rst $38
    add l
    rst $38
    push af
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    cp e
    ld e, h
    ret c

    scf
    cp $1d
    rst $18
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $28
    ld l, a
    sbc a
    ld a, a
    rst $28
    rst $38
    ld a, a
    ld a, a
    cp c
    ld a, c
    dec l
    dec a
    ld c, c
    ccf
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    ei
    cp $f3
    adc $fd
    ld b, [hl]
    rst $38
    db $fc
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    rst $38
    sbc $ad
    cp $bd
    rst $38
    rst $28
    rst $08
    rst $38

jr_073_6750:
    rst $38
    rra
    cp a
    ld c, a
    rst $38
    rst $38
    cp $cd
    cp a
    add $ff
    add [hl]
    rst $38
    call c, $0cbc
    rst $28
    ld [hl], l
    cp c
    ld h, a
    inc d
    cp $fb
    inc a
    rst $18
    ld a, h
    rst $10
    xor b
    ld a, [$f73f]
    rst $08
    add e
    rst $38
    ld l, h
    sub e
    xor d
    rla
    ld b, l
    ccf
    sbc a
    jr nc, @+$01

    ld [hl], b
    ld a, [hl]
    inc bc
    ld a, d
    pop af
    sub l
    rrca
    db $dd
    inc bc
    adc $73
    db $e3
    nop
    db $f4
    inc e
    db $db
    ccf
    sbc a
    ld a, a
    rst $38
    ccf
    ccf
    ccf
    adc a
    rra
    sbc c
    inc bc
    ld h, d
    add e
    inc sp
    pop bc
    jp $ddf3


    rst $38
    ld a, $03
    inc e
    inc bc
    adc a
    jr @+$3f

    ld e, $fb
    ccf
    cp a
    ld a, [$f8b8]
    ldh a, [$f8]
    or h
    ld hl, sp+$42
    db $fc
    cp a
    ld b, b
    rra
    ldh [$f5], a
    ld hl, sp-$0d
    db $fd
    rst $38
    rst $38
    call c, Call_073_4ce7
    add e
    inc bc
    inc c
    ld hl, sp+$40
    and b
    ldh a, [$e0]
    ldh a, [$f4]
    ld a, b
    rst $30
    ld a, b
    ld d, e
    inc c
    adc h
    nop
    ld h, d
    add h
    daa
    jp Jump_073_43a7


    or $0f
    ld sp, hl
    rlca
    ccf
    ret nz

    or a
    ret z

    scf
    ret z

    ccf
    ld a, $7f
    ld a, [hl]
    rst $38
    sbc h
    rst $00
    adc a
    nop
    pop bc
    inc bc
    rrca
    ld a, a
    cpl
    inc e
    pop af
    ld a, [$fefe]
    push af
    db $e4
    dec l
    pop af
    ld c, a
    ld hl, sp-$1e
    ld a, b
    sbc $44
    adc b
    db $fc
    ld a, [hl+]
    db $fd
    ld a, [$f7ff]
    rst $38
    rst $30
    ei
    rla
    call $ffb3
    ld e, h
    db $fc
    ld a, [hl]
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    or a
    cp a
    rst $10
    cp a
    call nc, Call_073_44fe
    cp $6e
    rst $38
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    db $dd
    sbc l
    sbc $fe
    adc l
    rst $38
    adc a
    rst $18
    inc l
    cp $0d
    db $fc
    rst $18
    db $fc
    ld c, a
    db $fd
    and $ff
    xor $ff
    rst $20
    ld a, a
    rst $30
    ld l, e
    ret nc

    ld l, e
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    cp $3b
    rst $38
    rla
    rst $38
    ld a, a
    rst $38
    rst $00
    rst $38
    cp $ef
    rst $10
    rst $28
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    ld e, e
    rst $38
    rst $30
    ld c, $00
    inc c
    nop
    ld [$7300], sp
    ld bc, $0013
    ld c, a
    ld bc, $011d
    add a
    ld bc, $8f57
    cp e
    rst $00
    rst $28
    inc sp
    ld c, a
    ei
    ld a, a
    jp $e39e


    ccf
    rst $00
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, [$fecf]
    ld h, e
    or [hl]
    inc bc
    db $eb
    inc sp
    ld l, e
    rst $38
    sbc $c7
    call c, $fa83
    cp a
    ld d, a
    rst $38
    push hl
    inc bc
    rst $38
    rrca
    ld e, a
    rst $38
    rst $08
    cp a
    rst $38
    rra
    sbc a
    rlca
    add $01
    di
    ld bc, $0101
    pop bc
    nop
    rst $00
    inc bc
    add hl, de
    rlca
    ccf
    nop
    dec sp
    inc b
    dec bc
    nop
    rst $18
    inc bc
    add $87

jr_073_68b6:
    adc $07
    ld e, $fc
    rst $28
    db $fc
    rst $38
    add sp, $6f
    rst $08
    rra
    rra
    add hl, bc
    db $10
    jr z, jr_073_68d6

    inc h
    jr @+$19

    cpl
    or a
    ld c, a
    set 0, a
    ld b, a
    ld b, b
    inc h
    ld b, b
    db $e4
    ld b, b
    jr nc, jr_073_68b6

jr_073_68d6:
    ld [hl], b
    ldh [$b0], a
    ldh [$e0], a
    ld h, b
    ret nc

    jr nz, @+$1a

    ldh [$fc], a
    jr nz, @-$03

    add b
    pop af
    db $10
    pop bc
    ret nz

    ret nz

    jp $f0ce


    rst $38
    ret


    ld a, a
    add hl, bc
    ld a, a
    ld e, a
    rst $38
    ccf
    rst $38
    or b
    cp $14
    ld a, $44
    ld a, b
    xor b
    jr c, @+$6b

    cpl
    dec de
    xor a
    adc l
    add e
    and l
    add e
    ld c, h
    db $fd
    ld [$feeb], a
    ld hl, sp+$61
    ld a, c
    ld a, [$75ff]
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp c
    rst $38
    rst $38
    rst $38
    db $fc
    ld sp, hl
    ld [hl], h
    ld a, e
    db $e3
    ld a, a
    inc a
    db $fc
    ei
    db $fd
    ld a, [hl-]
    ld sp, hl
    add a
    adc l
    ld [hl], e
    cp a
    ld e, a
    db $fd
    ei
    ld hl, sp+$7f
    ld a, [$ff7c]
    ld a, b
    rst $38
    db $fd
    rst $38
    xor a
    sbc [hl]
    ld [$fcdf], sp
    rst $18
    ld d, a
    rst $38
    rra
    rst $38
    adc $ff
    db $76
    cp $34
    cp a
    ld d, h
    ccf
    sub c
    ccf
    ccf
    ld a, a
    rra
    ld e, h
    nop
    inc e
    nop
    ld c, b
    nop
    ld hl, sp+$00
    rst $18
    rlca
    ld l, h
    nop
    cp e
    jr nz, @+$01

    jr nz, jr_073_69c0

    ld b, b
    ld a, h
    ld b, b
    adc d
    add b
    ld [$bc00], sp
    nop
    ret c

    nop
    add hl, bc
    nop
    call c, Call_073_7f80
    db $fc
    sbc a
    ld sp, hl
    rst $28
    ld e, b
    di
    ld l, h
    db $fc
    ld c, a
    rst $38
    dec c
    jp hl


    adc c
    adc a
    add b
    rst $08
    add h
    cp $19
    cp [hl]
    ld [hl], c
    or $f9
    rst $28
    db $10
    ld de, $3c10
    add hl, hl
    ld [$9525], a
    ld h, b
    db $e3
    ldh a, [$80]
    ld [hl], c
    rst $30
    ld d, c
    db $fd
    db $e3
    jp $efef


    jp $c77f


    db $dd
    rst $38
    reti


    or $df
    ldh a, [$80]
    add b
    ret nz

    add b
    db $e3
    ldh [$c7], a
    ld [bc], a
    and l
    ld b, e
    ld de, $e2e2
    pop bc
    rst $28
    ret nz

    ld a, b
    rst $20
    jp nz, $bf3f

    nop
    and h
    nop
    ret nz

    nop

jr_073_69c0:
    rst $38
    add [hl]
    ld h, a
    add c
    nop
    nop
    ld e, h
    inc c
    di
    db $fc
    ldh a, [rIE]
    ld sp, hl
    cp $f5
    ld c, $f7
    ccf
    ld e, a
    ccf
    rra
    rrca
    rra
    rrca
    ld e, $0f
    ld a, a
    rra
    ld b, l
    ld a, a
    and h
    ld e, a
    rra
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld [$370f], sp
    sbc a
    ld l, [hl]
    rst $38
    xor $ff
    push af
    rst $38
    rst $28
    rst $38
    db $fd
    ld sp, hl
    ld h, c
    ld sp, hl
    dec h
    ld a, a
    ccf
    rst $38
    ld a, $f7
    dec hl
    rst $00
    ld sp, $c52f
    ei
    push bc
    rst $38
    rst $38
    cp $5f
    xor $9f
    sbc a
    rst $28
    rst $38
    db $ed
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$e2]
    pop bc
    rst $00
    add b
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fc
    rst $38
    cp $e6
    rst $18
    or $ef
    or $cf
    db $e4
    sbc b
    call nz, $effa
    push de
    ld d, [hl]
    xor a
    rst $30
    inc d
    rst $30
    jp $e7ff


    rst $20
    rst $08
    xor $55
    and h
    jp z, Jump_073_54a9

    inc a
    cp h
    rst $38
    cp $ff
    ei
    ld a, [$dd00]
    inc d
    cp e
    inc hl
    ld a, [$fec0]
    nop
    db $f4
    nop
    di
    nop
    ld a, h
    nop
    pop de
    ld a, $9d
    rst $38
    ld a, l
    rst $38
    rst $18
    ld a, h
    ld h, a
    inc e
    ld [$fd17], a
    ld d, $ff
    ret nz

    ld hl, sp+$00
    ld [hl-], a
    nop
    jr z, jr_073_6a76

jr_073_6a76:
    dec h
    nop
    and d
    add b
    db $fd
    ld a, h
    rst $10
    rlca
    rst $08
    nop
    add hl, hl
    rst $38
    ld [hl], e
    sbc a
    ld d, a
    xor a
    ld c, e
    rst $38
    ld d, e
    cp a
    ld e, a
    cp a
    rrca
    rst $30
    ld d, a
    rst $28
    ld [hl], a
    rst $28
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    di
    rst $38
    rst $20
    ei
    jp nz, $f6ff

    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    ei
    db $fc
    ld a, e
    inc a
    add hl, hl
    ld e, $6e
    inc e
    call nc, $ff08
    jr @+$11

    rst $38
    adc a
    ld c, $4d
    adc a
    daa
    rst $08
    ld e, a
    rst $28
    rst $18
    ccf
    dec c
    rrca
    rla
    ld [$0002], sp
    ld a, [hl]
    add b
    ldh [rLCDC], a
    ret nz

    ld b, b
    ld bc, $e5c0
    jp nz, $c24d

    or $e1
    pop af
    ldh a, [$c0]
    nop
    cp $01
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    db $fd
    db $ed
    rst $08
    and h
    add $a3
    ldh a, [$f1]
    ld e, $a0
    ld b, $e8
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld sp, hl
    rst $38
    ret nz

    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ret nc

    rst $28
    ret nz

    sbc e
    db $e4
    ld hl, sp-$21
    rst $38
    ld a, [hl]
    rst $38
    ld sp, hl
    rst $38
    rst $28
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
    db $eb
    db $d3
    rst $38
    ld d, e
    cp a
    ld e, a
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    rst $30
    rst $38
    ccf
    ld a, a
    ld a, a
    ld a, a
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ccf
    ccf
    ccf
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld bc, $003f
    ld a, e
    dec b
    db $eb
    dec b
    ld a, l
    inc bc
    ld l, a
    nop
    sbc h
    inc bc
    dec e
    ld [bc], a
    db $fd
    ldh [$5f], a
    rra
    rrca
    nop
    ld l, $00
    ld a, e
    nop
    and c
    ld a, a
    ld [hl], c
    rst $38
    ld h, l
    rst $38
    and c
    rst $38
    inc de
    rst $38
    ld e, l
    di
    ld c, l
    di
    xor a
    db $10
    rst $38
    inc b
    rst $38
    ld e, h
    rst $38
    and d
    rst $28
    add b
    sbc h
    inc b
    ld hl, sp+$40
    nop
    rst $38
    rst $38
    or b
    rst $28
    rst $38
    ret z

    rst $38
    ld l, e
    sbc a
    ld h, c
    rst $18
    ld sp, hl
    rst $38
    db $fc
    rst $38

jr_073_6b8c:
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    ld hl, sp-$02
    ld sp, hl
    ld a, [$7fff]
    cp a
    sbc $ff
    db $fc
    rst $38
    sbc a
    db $fc
    ld l, a
    or b
    rst $08
    or b
    cpl
    ld hl, sp+$1b
    ldh [$cf], a
    jr nc, jr_073_6b8c

    inc e
    db $eb
    inc d
    ld b, e
    inc e
    inc e
    rrca
    sbc $8f
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
    di
    ld a, [hl]
    jr jr_073_6bc2

jr_073_6bc2:
    add sp, $00
    ld l, [hl]
    jr nc, jr_073_6bf6

    ld a, a
    ei
    adc a
    rrca
    rlca
    ld a, [hl-]
    rlca
    ld b, a
    cp [hl]
    sbc [hl]
    ld a, a
    ld [hl], e
    rra
    cp c
    adc $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    sub a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    adc a
    rra
    rrca
    cp a
    ld e, a
    rst $38
    ld a, [hl]
    ld a, [hl]
    jr nc, jr_073_6c20

    ld d, a
    add hl, hl
    db $10
    ld sp, hl
    or b

jr_073_6bf6:
    ld sp, hl
    jp nz, Jump_073_60ff

    cp $7c
    rst $30
    ei
    push hl
    ld a, [$e1fe]
    rst $38
    rst $20
    rst $38
    rst $20
    rst $18
    ccf
    rst $18
    and a
    rst $38
    rst $20
    rst $38
    cp $ff
    call c, $fffe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_073_6c20:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_073_6c30:
    rst $38
    nop

jr_073_6c32:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, c
    sub [hl]
    rst $18
    and b
    sub [hl]
    ld l, c
    rst $38
    nop
    rst $18
    jr nz, jr_073_6c32

    ld d, d
    rst $18
    ldh [rIE], a
    ld b, c
    rst $38
    pop bc
    cp [hl]
    pop bc
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    rst $00
    rlca
    rst $38
    ld hl, sp-$06
    nop
    sub l
    nop
    rst $30
    nop
    db $dd
    rst $38
    ld e, b
    rst $38
    reti


    cp $37
    cp $b3
    rst $08
    rst $38
    call nz, $c3a6
    rst $18
    ld sp, $19df
    cp a
    add hl, de
    rst $38
    inc de
    rst $38
    rlca
    ccf
    nop
    ld h, b
    rlca
    rlca
    ld sp, hl
    rst $38
    or a
    ld [hl], a
    rst $38
    cp l
    rst $28
    ld h, [hl]
    rst $38
    and h
    rst $38
    ld a, [$76ff]
    rst $38
    rst $30
    rst $38
    and $ff
    db $76
    rst $38
    ld a, [hl-]
    push af
    xor a
    push af
    rst $28
    db $f4
    push af
    rst $38
    cp $fd
    ld h, [hl]
    ld sp, hl
    sub $f9
    rst $38
    add sp, $57
    add sp, $47
    ld hl, sp-$09
    ld hl, sp+$62
    db $fc
    xor a
    ld [hl], b
    ccf
    ld h, b
    ld a, e
    ld b, $fd
    nop
    or e
    ld b, b
    ld hl, $20c0
    ret nz

    ld b, c
    ldh [$60], a
    pop bc
    pop hl
    jp $ff9b


    add hl, sp
    rlca
    dec bc
    inc b
    ldh [rP1], a
    pop af
    ldh [rHDMA2], a
    and c
    or e
    ret nz

    add c
    nop
    nop
    nop
    rra
    nop
    cp c
    rlca
    db $db
    dec h
    cp [hl]
    pop af
    sub $fd
    rst $30
    ld hl, sp-$02
    ld hl, sp-$7c
    ld hl, sp-$05
    ld hl, sp-$41
    inc bc
    rst $38
    pop bc
    rst $38
    dec e
    cp a
    ld c, a
    rst $38
    rst $38
    rst $38
    ld a, $ff
    inc e
    rst $38
    db $fd
    rst $38
    cp $ff
    ld a, h
    ld a, a
    ld a, $7f
    inc e
    add hl, de
    rrca
    ld hl, sp-$10
    ld hl, sp+$70
    xor $61
    ld hl, sp-$5f
    rst $30
    add hl, hl
    rst $38
    ld [hl], a
    xor $97
    rst $38
    sbc $ff
    ld [hl], a
    ld a, a
    cp $7f
    ld sp, hl
    rst $38
    db $eb
    rst $38
    and c
    rst $30
    reti


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
    sbc a
    ld a, [hl]
    sbc a
    ld a, [hl]
    sbc a
    ld a, [hl]
    sbc [hl]
    ld a, a
    dec sp
    call nz, $ff5e
    rra
    cp $67
    sbc b
    cp $01
    push de
    ld a, [hl+]
    db $76
    adc c
    cp $01
    di
    inc c
    or $09
    ld a, [$f305]
    inc c
    rst $38
    nop
    rst $38
    ret nz

    ccf
    db $10
    cp a
    ld c, $e9
    ld bc, $00e9
    or l
    nop
    ld e, d
    rst $38
    ld e, c
    rst $28
    rst $18
    rst $38
    cp a
    rst $18
    cp a
    ei
    and a
    db $fd
    ld b, a
    ld sp, hl
    ld a, l
    adc a
    rst $38
    inc c
    rst $20
    and b
    rst $38
    ld hl, $0fbc
    ld b, e
    ld a, $3f
    jp nz, Jump_000_20ff

    rst $38
    ldh a, [$f5]
    ei
    db $fd
    ld a, e
    adc [hl]
    ei
    scf
    rst $18
    add hl, sp
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    ccf
    rst $18
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    rst $30
    xor $f3
    xor $f7
    ld h, [hl]
    rst $38
    jp $2c3f


    ld a, a
    cp a
    ld a, [hl]
    rst $18
    dec a
    db $fd
    ld a, a
    db $fd
    ld a, a
    rst $38
    ccf
    cp $3f
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    ld b, b
    ld [hl+], a
    inc e
    ld hl, sp+$10
    rst $38
    sbc h
    rst $38
    rra
    rst $18
    rra
    rra
    rra
    adc a
    rrca
    ld c, h
    adc a
    ld a, [hl]
    adc a
    ld a, [hl]
    adc a
    sbc $0f
    db $fd
    rra
    scf
    ld e, $07
    nop
    rst $38
    rst $38
    ccf
    db $fc
    or h
    rst $38
    ld [hl], h
    rst $38
    ld [$8fff], a
    db $f4

jr_073_6ddc:
    rla
    ld hl, sp+$59

Call_073_6ddf:
    cp a
    rst $38
    rra
    rst $38
    ld e, c
    ei
    ld [de], a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    or [hl]
    ld a, a
    rra
    sbc [hl]
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld sp, hl
    db $fc
    ldh [$db], a
    dec [hl]
    rst $18
    ld a, $ff
    ld a, $7f
    ccf
    rst $38
    cp a
    rst $38
    rst $08
    cp $bd
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_073_6ddc

    ld b, b
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
    nop
    rst $38
    ldh [$3f], a
    rra
    sbc l
    nop
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    xor a
    ld sp, hl
    ld hl, sp-$01
    cp $ff
    ld [hl], h
    rst $38
    ld c, [hl]
    pop af
    rst $28
    ldh a, [$dc]
    nop
    ld d, a
    db $10
    rst $30
    pop hl
    inc a
    nop
    rra
    nop
    ld e, $00
    db $fd
    nop
    call c, $dc00
    rst $38
    db $dd
    rst $38
    db $fc
    rst $18
    sbc $ff
    ld a, [hl]
    rst $38
    cp l
    rst $38
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp [hl]
    sbc a
    rst $38
    ld e, $ff
    cp a
    rst $38
    ld e, $ff
    ccf
    cp $ff
    cp $df
    cp $bf
    ld a, [hl]
    ld d, e
    inc a
    ccf
    ld de, $313e
    rra
    jr nc, @+$1f

    jr nc, @+$01

    or c
    ld b, $39
    ld sp, $0000
    nop
    sub b
    nop
    ldh a, [$80]
    xor a
    ret nc

    db $e3
    rst $38
    ld h, [hl]
    ld a, b
    ld l, l
    jr nc, jr_073_6eb7

    jr nc, @-$15

    or $fc
    rst $38
    rst $38

jr_073_6e9f:
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    jr z, jr_073_6e9f

    ld [hl], a
    sbc h
    ld a, [hl]
    rst $00
    ei
    rlca
    ld bc, $4700
    ld sp, hl
    cp e
    jp $876d


    db $fd

jr_073_6eb7:
    add e
    rst $18
    ld h, a
    reti


    ld [hl], a
    ld a, a
    rst $38
    ld a, h
    rst $38
    cp $f0
    ld hl, sp+$58
    pop de
    sub c
    adc a
    add b
    db $e3
    add e
    ld [hl], e
    adc a
    rst $20
    jp $0787


    cp a
    di
    rst $38
    ldh a, [$f3]
    ld l, h
    rst $28
    rst $10
    rrca
    ld sp, hl
    ccf
    ld hl, sp-$01
    ld hl, sp-$11
    db $d3
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    push af
    rst $30
    add sp, -$04
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    pop af
    db $fd
    ei
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
    cp $fc
    rst $38
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
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    cp $f8
    rst $38
    jp nz, $ff00

    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    cp l
    rst $20
    add hl, sp
    rst $38
    rst $20
    rst $38
    cp a
    db $fc
    rst $38
    add a
    ld a, a

jr_073_6f2f:
    add c
    ei
    jr nc, jr_073_6f2f

    or b
    db $e3
    ld [hl+], a
    dec de
    ld [c], a
    db $e3
    inc e
    ldh [$03], a
    cp e
    nop
    rst $38
    ld [hl-], a
    xor a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    rra
    rst $38
    ld a, $df
    ld l, l
    sbc [hl]
    ld a, [hl]
    sbc a
    rst $28
    rst $18
    db $fc
    rst $38
    ld [hl], e
    cp $be
    ld [hl], l
    inc de
    db $fd
    db $dd
    ld a, a
    ld e, a
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    cp c
    rst $38
    ld sp, hl
    rst $38
    dec de
    rst $38
    ld e, e
    rst $28
    ld e, h
    rst $38
    sbc $79
    push af
    ld [$80ff], sp
    cp e
    add b
    sbc b
    add b
    ld h, b
    ret nz

    cp [hl]
    ld h, b
    ld a, c
    ld a, $10
    nop
    jp nc, $fc00

    db $10
    adc c
    rlca
    rlca
    inc bc
    pop bc
    nop
    nop
    nop
    ld e, a
    nop
    dec a
    jp nz, Jump_073_7cc3

    dec h
    ld e, $2f
    db $10
    jp z, Jump_073_6c30

    ldh a, [$f4]
    ld [$18f5], sp
    db $fd
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    rst $00
    ld hl, sp-$0e
    db $fd
    db $ed
    ld a, a
    ld d, a
    rst $38
    ld e, a
    rst $38
    ld [$f7ff], a
    cp $75
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, d
    sub $e9
    add e
    ld b, [hl]
    adc a
    rst $10
    rst $38
    ld a, e
    rst $38
    and d

jr_073_6fce:
    cp $dd
    rst $38
    ld a, a
    rst $38
    rst $20
    rst $30
    add sp, -$39
    and e
    rst $38
    and a
    rst $38
    di
    ei
    ld [hl], l
    dec a
    ret nz

    cp l
    ld c, [hl]
    rst $38
    cp [hl]
    rst $38
    adc a
    rst $38
    cp a
    sbc a
    ccf

jr_073_6fea:
    cp a
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    or e
    dec sp
    pop af
    add hl, sp
    rst $30
    ld a, a
    ei
    ld a, a
    ei
    rst $38
    ld l, a
    rst $08
    ld [c], a
    rst $18
    push hl
    rst $20
    ret c

    di
    add $ff
    rst $10
    rst $28
    sub $ff
    rst $18
    rst $38
    rst $18
    rst $38
    adc [hl]
    ccf
    db $fc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    adc a
    rst $38
    jr jr_073_6fce

    ld a, [bc]
    dec c
    rst $38
    cp $ff
    cp $df
    ld a, a
    cp $fc
    rst $38
    rst $18
    ccf
    ld l, e
    rst $18
    or $d9
    cp $19
    or l
    ld e, [hl]
    db $db
    inc a
    rst $38
    ld e, a
    ld a, a
    ld [hl-], a
    ei
    jr c, jr_073_6fea

    db $10
    rst $38
    ld h, l
    ld [hl], e
    db $e3
    adc a
    ldh a, [$f0]
    ccf
    cp d
    rla
    cp a
    call nz, $c02f
    db $e3
    pop hl
    rst $28
    ldh a, [$3e]
    ld hl, sp+$7e
    db $fc
    cp $fc
    ld b, a
    cp $33
    rst $08

jr_073_7054:
    ld a, [$e1ed]
    rst $38
    di
    cp $fe
    rst $38
    or $ff
    db $f4
    rst $38
    db $eb
    db $fd
    db $db
    db $ed
    ld e, l
    rst $28
    db $ed
    rst $38
    ld b, l
    rst $38
    push af
    rst $38
    ldh a, [rIE]
    ld l, e

jr_073_706f:
    rst $38

jr_073_7070:
    rst $38
    ld a, h
    jr nz, jr_073_7070

    rst $38
    jr c, jr_073_706f

    rra
    ld a, l
    rrca
    ldh [$3f], a
    ld [hl], c
    ld a, $77
    rra
    cp c
    rrca
    ld h, b
    add b
    or b
    ret nz

    jp z, $27b0

    ld e, $05
    rlca
    cp $03
    add a
    ld a, a
    ld d, a
    nop
    jr nz, jr_073_7054

    ld h, d
    ccf
    ld b, h
    ccf
    add hl, hl
    ld [hl], h
    ld a, a
    ld [hl], b
    rst $00
    ld a, b
    ld d, a
    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $30
    rrca
    sbc $ef
    db $fd
    rst $38
    ei
    db $fd
    di
    add a
    rst $00
    adc b
    dec c
    ld e, $fe
    ret c

    rst $38
    db $e4
    db $ec
    call nc, Call_000_2080
    rst $00
    and c
    rst $38
    rra
    rst $30
    ld e, c
    ld e, e
    xor l
    ld a, $e9
    rst $38
    rst $38
    ccf
    and $1f
    rst $20
    cp a
    ld e, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    daa
    cp a
    inc b
    cp a
    or h
    db $fd
    ld d, d
    cp $fd
    rst $38
    rst $38
    rst $38
    cp h
    cp l
    cp e
    cp a
    add hl, de
    cp a
    ld e, b
    rst $38
    adc a
    rst $38
    inc e
    db $dd
    ld a, a
    db $fd
    ld a, $fc
    ld l, l
    db $ed
    cp $ff
    db $fd
    rst $28
    rst $18
    rst $38
    ld a, [hl]
    rst $00
    db $76
    rst $38
    rst $08
    rst $38
    cp $ff
    ld e, $ff
    ld a, [hl]
    rst $38
    xor a
    cp a
    ld e, $7e
    cp [hl]
    rst $38
    rst $08
    rst $08
    cp a
    cp a
    ld e, a
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    sbc a
    sbc e
    sbc $9c
    ld a, a
    and d
    cp a
    ld d, b
    rst $18
    jr nc, @-$17

    sbc l
    ld hl, sp-$79
    rst $38
    ld d, b
    rst $38
    ld [$18fc], sp
    cp [hl]
    ld e, $bf
    add hl, sp
    di
    ld h, b
    ccf
    db $10
    ld a, a
    ld a, [bc]
    rst $38
    scf
    rst $38
    ld hl, $f27f
    add d
    db $fc
    db $fd
    sbc h
    rst $38
    ld b, d
    rst $00
    ld bc, $00ee
    db $fd
    nop
    ld a, a
    jr c, jr_073_71ce

    inc a
    dec e
    ld e, $ff
    rlca
    scf
    pop bc
    ei
    pop bc
    ld a, b
    rst $38
    cp $ff
    cp e
    call c, $dcaf
    dec sp
    rst $38
    dec l
    db $db
    cp l
    db $db
    db $dd
    cp e
    sbc l
    ei
    ld a, l
    rst $38
    ld a, e
    rst $38
    push bc
    ccf
    rst $30
    rrca
    dec h
    inc bc
    ld [hl-], a
    ld de, $b04d
    sbc [hl]
    ldh [rLCDC], a
    add b
    db $fd
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    ei
    cp a
    ld a, a
    rst $18
    ccf
    rst $38
    ccf
    jp c, Jump_073_7b3f

    adc [hl]
    ccf
    rst $00
    rst $30
    rrca
    ld a, a
    rlca
    rst $38
    rlca
    rra
    rst $38
    ei
    rst $00
    or $01
    ld h, h
    ld [bc], a
    rlc e
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
    jr jr_073_71d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_073_71e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_073_71f3

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_073_71ce:
    ld l, $2f
    jr nc, jr_073_7203

    ld [hl-], a

jr_073_71d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_073_7213

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_073_71e3:
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

jr_073_71f3:
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

jr_073_7203:
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

jr_073_7213:
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
    jr jr_073_72d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_073_72f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_073_7303

    ld [hl-], a

jr_073_72d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_073_7313

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_073_72f3:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a

jr_073_7303:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a

jr_073_7313:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
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
    ld [bc], a
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0004
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    rlca
    nop
    rlca
    nop
    ld bc, $0404
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    rlca
    nop
    nop
    nop
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    ld a, [bc]
    inc c
    inc c
    add hl, bc
    add hl, bc
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
    ld a, [bc]
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
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
    ld a, [bc]
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
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
    ld a, [bc]
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    cp a
    ld a, $10
    or c
    add b
    pop bc
    pop bc
    add e
    add h
    ccf
    sbc [hl]
    add a
    add [hl]
    add e
    rst $00
    ld a, [$ffbc]
    sbc h
    sbc $9d
    dec e
    rra
    rra
    dec c
    rra
    dec c
    rra
    dec c
    rst $18
    dec b
    ld [$90ff], sp
    rst $38
    ld l, h
    rst $38
    ld l, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $fb
    cp [hl]
    rst $38
    sbc d
    ld a, [$f891]
    pop de
    db $fc
    call nc, $f8fe
    rst $38
    cp $ff
    ld e, $ff
    ld e, a
    rst $38
    ld a, a
    ccf
    db $ed
    ld a, a
    cp a
    ld a, [hl]
    ld c, $fe
    dec h
    cp $22
    cp $f1
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
    ld a, a
    rst $38
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
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
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    ld a, a
    rst $38
    ld a, [hl]
    rst $20
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $03
    ldh a, [$1f]
    sub l
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    add b
    ld hl, sp+$07
    db $fc
    rlca
    ret


    scf
    ret nz

    ccf
    adc c

jr_073_74cb:
    db $76
    add d
    ld a, l
    ld e, [hl]
    pop af
    cp [hl]
    pop bc
    rst $38
    ld bc, $ff83
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    ei
    rst $38
    ld a, e
    db $fc
    ld a, c
    rst $38
    sbc a
    rst $38
    adc b
    ld a, a
    pop hl
    ld a, $e7
    jr c, jr_073_74cb

    ld sp, $ff6f
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    push hl
    rst $38
    db $eb
    cp $f3
    cp $fb
    adc $7f
    ret c

    db $fd
    cp $eb
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$0f
    rst $38
    rst $38
    cp $76
    ld hl, sp-$20
    ldh a, [$3d]
    pop hl
    rst $38
    ld sp, hl
    dec hl
    inc sp
    ld l, e
    rlca
    ld c, a
    rlca
    ld a, [de]
    rra
    db $db
    ld a, h
    rst $38
    db $e4
    di
    ld d, d
    ei
    sbc e
    rst $38
    rst $38
    ld a, a
    ld a, [$78fc]
    ld sp, hl
    ld a, b
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld a, b
    dec bc
    sbc b
    adc c
    add e
    add c
    add hl, bc
    adc c
    nop
    jp $ea08


    ld bc, $0ae1
    jp hl


    inc d
    sbc l
    inc h
    sbc l
    dec c
    adc l
    rra
    cp l
    sbc a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    ld e, a
    rst $18
    cp a
    rst $18
    ld a, a
    sbc a
    ccf
    ld e, a
    ld a, $3f
    ld e, h
    ccf
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$03
    ld l, l
    ld l, a
    ld bc, $610d
    rrca
    dec l
    adc a
    ld l, h
    rst $28
    add sp, -$01
    jp hl


    rst $38
    ld sp, hl
    rst $38
    pop af
    push af
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    add c
    rst $38
    and a
    db $fd
    ld hl, sp-$01
    db $db
    db $fd
    ld hl, sp-$01
    cp b
    rst $38
    pop af
    rst $38
    rst $30
    db $fd
    ld sp, hl
    rst $38
    ld a, [$feff]
    rst $38
    cp $fd
    cp a
    ld a, h
    ld a, [$ad1d]
    ld e, a
    sbc b
    rst $28
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    ldh [$e5], a
    ldh a, [$fb]
    ldh a, [$fa]
    pop af
    di
    ld sp, hl
    cp $f9
    cp $f9
    ei
    db $fd
    rst $38
    rst $38
    rst $38
    db $fc
    db $fd
    xor $cf
    cp $cc
    rst $38
    xor $7f
    cp [hl]
    rst $38
    ld e, $ff
    ld d, a
    cp $2e
    rst $30
    ld h, [hl]
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
    ld a, a
    rst $38
    cp e
    ld a, a
    cp a
    ld [hl], e
    ei
    rst $20
    cp a
    ld [c], a
    cp a
    jp nz, $827f

    rst $38
    ld b, $ff
    ld b, $5e
    rst $38
    db $db
    rst $20
    sub a
    pop hl
    ld [hl], h
    add c
    ccf
    ret nz

    and a
    ret nz

    add l
    ret nz

    adc l
    ld b, b
    cp l
    nop
    sbc h
    nop
    jr jr_073_7602

jr_073_7602:
    ret nz

    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    adc l
    rlca
    ccf
    ccf
    cp a
    ccf
    scf
    rst $38
    push hl
    rst $38
    ld c, a
    rst $30
    rst $28
    inc [hl]
    db $ed
    inc bc
    rst $38
    nop
    ld e, a
    ld b, c
    ld a, a
    ld e, a
    rst $38
    rst $38
    db $fd
    adc e
    add b
    nop
    ldh a, [$e0]
    rst $30
    ld a, [c]
    rst $38
    ld [hl], c
    ld a, [hl]
    ld h, l
    rst $38
    ld b, [hl]
    rst $28
    ld c, a
    rst $28
    rst $18
    rst $18
    ld e, a
    rst $38
    ld e, a
    rst $10
    dec sp
    ei
    inc b
    rst $28
    and d
    rst $38
    and b
    xor $20
    db $ec
    ld c, $ee
    ld c, h
    rst $28
    call z, $c9ef
    db $eb
    push af
    rst $38
    rst $28
    rst $38
    xor a
    cp a
    dec c
    ld a, l
    adc l
    ld a, a
    adc c
    ei
    dec c
    db $db
    dec hl
    cp a
    res 5, a
    set 7, l
    sbc [hl]
    db $fd
    cp e
    ei
    rst $38
    rst $38
    cp $f7

jr_073_766d:
    cp $b7
    call c, $f193
    pop hl
    db $d3
    pop hl
    rst $20
    rst $20
    push hl
    db $e3
    jp z, $aaf8

    xor l
    db $fd
    push bc
    dec hl
    dec b
    and e
    db $ec
    ld d, a
    cp $f5
    db $fd
    inc c
    rst $38
    inc c
    rst $38
    adc [hl]
    adc a
    ld a, $0f
    ld de, $04ff
    ld a, a
    ld b, l
    rst $18
    ld b, h
    rst $38
    ret c

    sbc $39
    ccf
    inc d
    rst $38
    inc de
    ei
    ldh a, [$71]
    rst $38
    ld [hl], a
    ei
    ld l, e
    cp a
    ld e, e
    xor a
    ld h, a
    sbc a
    cp a
    rst $38
    ld sp, hl
    rst $38
    cp d
    ld a, l
    ld a, [hl]
    dec e
    cp a
    cp d
    adc $c0
    db $fc
    pop af
    ldh a, [$e0]
    pop af
    ld a, [c]
    di
    ld [hl], l
    rst $38
    ccf
    ccf
    ld e, $3f
    dec hl
    ei
    dec l
    ld sp, $190d
    inc b
    ld a, l
    add hl, bc
    inc l
    jr z, jr_073_76eb

    jr @+$6f

    sbc a
    push hl
    rra
    ld a, e
    add a
    ld c, e
    or a
    add e
    ld a, a
    ld [bc], a

jr_073_76db:
    rst $38
    jp nc, $f32f

    ld c, $d9
    ld a, $db
    jr nc, jr_073_76db

    jr c, jr_073_766d

    inc a
    rst $38
    ld a, [de]
    rst $30

jr_073_76eb:
    ld e, a
    scf
    rst $38
    ld l, a
    rst $38
    cp $ff
    ld [c], a
    db $fc
    sbc [hl]
    ld a, [c]
    ei
    sub b
    sub a
    ldh [$ae], a
    pop bc
    add $c1
    ld [c], a
    pop bc
    ld [c], a

jr_073_7701:
    ld b, c
    ld l, a
    ld b, b
    rst $38
    ld h, a
    rst $30
    ld a, e
    sbc e
    ld h, b
    ldh a, [rLCDC]
    sbc b
    nop
    pop af
    jr nc, jr_073_7701

    ldh [$e1], a
    ldh [$e3], a
    ldh [$c2], a
    pop hl
    push bc
    db $e3
    ei
    rst $30
    rst $38
    ld c, a
    rst $08
    rst $08
    ld a, c
    rst $38
    ld a, [de]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    cp a
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
    cp $f3
    rst $38
    rst $08
    rst $18
    adc $ef
    adc $fa
    push de
    ld sp, hl
    pop af
    ei
    cp l
    cp a
    nop
    dec a
    sub d
    dec de
    call nc, Call_073_54fb
    ld a, a
    ld a, a
    rst $38
    ld l, a
    cp a
    ld a, [hl]
    cp [hl]
    cp l
    rst $28
    sub [hl]
    cp a
    call nz, $9ea7
    adc a
    or [hl]
    rst $18
    rst $18
    rst $38
    set 7, a
    ld [hl], e
    ld [hl], a
    di
    ld l, a
    db $76
    ld l, $42
    ld c, [hl]
    ld [hl], d
    ld c, a
    ld e, l
    call c, $fe4c
    ld a, [hl]
    rst $38
    ld sp, hl
    rst $38
    ldh a, [$33]
    db $f4
    xor l
    ld [hl], b
    cp a
    add e
    rst $28
    add [hl]
    push hl
    adc h
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f9
    xor $f8
    jp hl


    ld [$c19d], a
    xor a
    reti


    ld c, a
    rra
    ld a, a
    dec bc
    ccf
    jp Jump_000_1777


    ld a, a
    ld [hl], l
    ld a, a
    push af
    ld a, a
    push af
    ld a, a
    db $f4
    rst $38
    rst $30
    rst $38
    db $ed
    rst $38
    and $ef
    ld a, [$e2ff]
    cp $f2
    cp c
    ld sp, hl
    cp h
    sbc b
    sbc l
    or l
    and c
    ld de, $a545
    db $e4
    db $10
    rst $20
    ld [de], a
    rst $00
    rst $00
    rst $08
    ld a, [c]
    xor $7a
    ld h, b
    cp $b1
    cp $d5
    cp [hl]
    di
    sbc $d8
    call z, $ce9f
    db $ed
    jp c, $ffcc

    or $ff
    rst $08
    or b
    ld a, a
    add b
    rst $28
    sbc l
    add hl, sp
    pop af
    ld a, a
    pop bc
    ld c, l
    add e
    ld e, l
    add b
    add b
    nop
    inc bc
    nop
    rrca
    ld b, $7d
    ld e, $be
    ld a, h
    call z, $b9fc
    call c, $dcbf
    db $fd
    ld a, [$2e58]
    dec c
    ld a, [bc]
    dec de
    rrca
    rst $38
    cpl
    rst $38
    rst $18
    adc e
    rst $18
    cp a
    rra
    ccf
    scf
    rst $38
    ld a, a
    ld sp, hl
    ld a, a
    jr nz, @-$3e

    and b
    ret nz

    ld h, b
    add b
    ld b, b
    add b
    jp nz, $e000

    add b
    ld b, b
    add b
    ld h, b
    add b
    ld b, b
    add b
    ld a, l
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, a
    rst $38
    inc bc
    cp d
    nop
    rst $38
    pop bc
    ld hl, sp-$10
    add a
    push bc
    cp a
    rst $38
    db $ec
    ret nz

    ldh [$80], a
    rst $38
    ei
    rst $38
    cp $1f
    rst $08
    rst $18
    ld l, a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    db $fd
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld l, l
    rst $38

jr_073_7847:
    dec a
    rst $38
    dec e
    db $dd
    ld a, [bc]
    db $dd
    ld a, [hl+]
    ld a, a
    ld sp, hl
    rst $38
    inc e
    rst $38
    ld e, l
    rst $30
    sbc $fe
    sub c
    rst $38
    ld e, $ff
    ld [hl], e
    rst $38
    inc sp
    di
    cp l
    ldh a, [$df]
    ldh a, [$bc]
    ld hl, sp+$30
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld a, a
    ld a, a
    rst $38
    ld c, a
    rst $38
    ld a, a

jr_073_7875:
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    adc h
    rst $38
    rst $38
    adc [hl]
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $28
    rst $38
    ld [hl], l
    db $fd
    di
    rst $30
    ei
    rst $38
    cp a
    daa
    rst $38
    ld c, a
    cp a
    rst $08
    rst $38
    rst $20
    rst $38
    push hl
    rst $38
    db $fc
    rst $38
    cp a
    rst $38
    rst $28
    db $fc
    cp $ff
    xor a
    db $fc
    dec l
    ld a, [$f7fa]
    rst $38
    ld [hl], l
    db $fd
    ld a, a
    rst $00
    ld a, l
    rst $08
    ld a, [hl]
    rst $38
    rst $30
    cp [hl]
    db $d3
    db $e3
    nop
    cp $8c
    xor h
    ld hl, sp-$12
    db $fc
    ld a, [hl-]
    ld e, $f6
    rrca
    cp a
    ld l, a
    or c
    ld c, a
    ld sp, hl
    jr nc, jr_073_7847

    db $10
    ld [hl], b
    nop
    ld b, c
    jr nz, jr_073_7875

    ld a, a
    rst $38
    rst $38
    cp $00
    ld [bc], a
    ld bc, $07c1
    rst $20
    rst $38
    cp l
    di
    rst $20
    ret nz

    sbc $81
    ld c, e
    add a
    or e
    add b
    pop bc
    nop
    rra
    nop
    pop af
    inc c
    ld a, [hl]
    ld bc, $010e
    dec de
    inc b
    ld e, $01
    ld a, [de]
    dec b
    dec bc
    ld bc, $039f
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    db $e3
    db $fc
    db $eb
    db $fc
    ld e, c
    inc a
    add hl, de
    inc a
    ld a, c
    inc a
    nop
    ld a, b
    ccf
    ld b, b
    dec b
    inc bc
    ld a, [$5f05]
    ld bc, $1f67
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, h
    rst $38
    push bc
    rst $38
    db $fd
    cp $fb
    cp $ff
    ld a, a
    ld hl, sp+$17
    ld h, l
    sbc a
    ld a, e
    rst $38
    rst $38
    db $10
    rst $18
    rrca
    rst $38
    rra
    rst $38
    inc bc
    pop af
    add d
    di
    adc h
    rst $38
    rlca
    ccf
    rst $38
    rst $38
    cp h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    jp hl


    rst $38
    db $e3
    db $fd
    jp $abf7


    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    xor $ff
    ld h, [hl]
    ld e, [hl]
    add h
    adc [hl]
    ld b, b
    add b
    xor $ef
    ccf
    rst $08
    ld b, a
    rst $00
    dec b
    ld b, d
    push bc
    ld b, c
    and d
    pop hl
    add b
    pop hl
    ret nz

    rst $38
    cp a
    rst $38
    ld l, a
    rst $08
    ccf
    sbc a

jr_073_7971:
    jr z, jr_073_7971

    inc e
    rst $38
    inc d
    scf
    sub [hl]
    rst $38
    cp a
    cp $80
    rst $38
    jr @+$01

    ld a, $fe
    ld hl, sp-$08
    ret nz

    db $fd

jr_073_7985:
    sub e
    rst $38
    sbc a
    cp $3d
    rst $38
    jr nc, jr_073_7985

    db $e4
    di
    sub e
    rst $20
    rst $18
    cp [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    sbc e
    rst $38
    ret c

    scf
    ld a, b
    rst $00
    ld e, e
    rst $20
    cp a
    ld a, a
    cp [hl]
    rst $38
    ld sp, hl
    adc [hl]
    sbc $ff
    or $1f
    rst $18
    ccf
    db $dd
    cp [hl]
    ld h, l
    ld e, $1f
    nop
    cp $41
    scf
    ld [$2c10], sp
    ld e, a
    inc l
    db $fd
    rst $38
    ld hl, sp-$04
    call z, $fff0
    ld h, b
    inc d
    ld h, b
    db $76
    ld bc, $7c83
    rst $30
    ld hl, sp-$01
    ldh a, [$fd]
    ld [hl], b
    cp $f8
    db $fd
    cp $ff
    cp $fa
    db $f4
    ld [hl], d
    ldh a, [$f0]
    ld h, b
    rst $08
    ldh a, [$c0]
    nop
    ld a, a
    nop
    ld [hl], e
    inc c
    rst $30

Call_073_79e7:
    ld [$0bfc], sp
    rst $28
    db $10
    inc b
    jp $c100


    db $e3
    ret nz

    ret c

    inc l
    ld b, a
    db $fc
    rst $38
    rst $38
    di
    rst $28
    push bc
    jp $8142


    add c
    nop
    add d
    nop
    db $e3
    nop
    db $e3
    nop
    ld sp, hl
    nop
    ld d, h
    adc b
    ld b, b
    ret nz

    inc c
    nop
    add hl, sp
    rrca
    ld e, e
    ldh [$d0], a
    rst $28
    ld hl, sp-$10
    xor a
    ret nz

    pop af
    adc [hl]
    ld a, a
    add b
    rrca
    add b
    inc l
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld a, [de]
    rrca
    xor $1d
    sbc [hl]
    rst $28
    or $01
    dec de
    rst $20
    rst $00
    rst $38
    rst $00
    add l
    rst $38
    or b
    jp $e0c0


    nop
    ldh [rSTAT], a
    rst $30
    ld b, a
    rst $38
    ldh [$e3], a
    ldh a, [$7f]
    sbc c
    cp a
    ld a, h
    cp a
    db $fc
    sbc a
    cp $bf
    add $f7
    ei
    rst $30
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    cp $fe
    cp $fe
    cp $fe
    rst $38
    cp $ff
    db $fd
    rst $18
    xor [hl]
    rst $08
    add h
    rst $00
    adc l
    rst $00
    db $dd
    rst $38
    push bc
    rst $38
    call $ffff
    rst $38
    sbc e

jr_073_7a70:
    sbc a
    ld b, d
    inc d
    dec hl

jr_073_7a74:
    ld [hl], l
    jr nz, jr_073_7a70

    ld l, h
    rst $38
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    inc a
    ld hl, sp+$70
    pop af
    ldh a, [rIE]
    ccf
    cp a
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, [$fbff]
    db $fd
    sbc l
    cp $3b
    cp $99
    rst $38
    db $fd
    rst $38
    adc h
    rst $38
    inc b
    rst $38
    ld b, h
    ei
    rst $20
    sbc h
    xor $fe
    db $e3
    ld e, $4c
    or b
    dec hl
    ret nc

    cp $18
    rst $38
    ret nz

    rst $30
    adc b
    rst $30
    ld [$42bc], sp
    push de
    ld [hl+], a
    call nc, $f123
    ld b, $c6
    jr c, jr_073_7b37

    ld hl, sp-$44
    ld a, a
    ld a, e
    ld a, $5f
    jr c, jr_073_7a74

    ld [de], a
    xor $10
    or b
    nop
    add b
    ld [hl], b
    or e
    nop
    db $e4
    jr @+$7e

    nop
    ld e, [hl]
    nop
    cp a
    jr jr_073_7aed

    jr jr_073_7af2

    jr jr_073_7af1

    ld a, [de]
    cp $b0
    sbc c
    nop
    ld [hl], d
    add b
    sub h
    ld h, d
    db $fc
    inc hl
    rrca
    ret nz

    and d
    rst $00
    ld h, b

jr_073_7aed:
    add a
    ld h, c
    add [hl]
    xor e

jr_073_7af1:
    ld b, h

jr_073_7af2:
    jp hl


    ld a, $7e
    ld a, [c]
    ld hl, sp-$10
    ldh a, [$f0]
    rst $38
    ldh a, [$f9]
    cp $7f

Call_073_7aff:
    rst $38
    rst $38
    ld a, a
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rrca
    or $f4
    ld [$1c6c], sp
    ld l, e
    add hl, de
    ld [$1111], a
    ld a, [hl]
    rst $38
    ldh [$7e], a
    nop
    ldh [rNR32], a
    call nc, $ac38
    ld d, b
    inc a
    nop
    nop
    nop
    call z, $d83f
    ccf
    call c, $fcff
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ld b, h
    cp a
    ld [hl], h
    sbc a
    ld a, [bc]
    push af
    ld d, h
    rst $38
    ld b, c
    rst $38
    ld b, c

jr_073_7b37:
    rst $38
    ld sp, $05ff
    rst $38
    and e
    rst $38
    ld l, a

Jump_073_7b3f:
    rst $38
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    ld l, a
    ld a, a
    db $fd
    rst $38
    ld a, h
    rst $38
    cp h
    cp $bd
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, h
    ld a, e
    db $fc
    ld a, e
    ld a, h
    ld a, b
    ld a, $7f
    ld a, [de]
    rst $38
    rra
    cp $39
    cp l
    ld a, h
    db $fd
    ld e, h
    ld a, h
    sbc a
    call c, $fded
    adc $ff
    sbc $cf
    sbc l
    rst $18
    ret


    xor e
    ld [hl], h
    add e
    add c
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    ei
    ld a, [$5f60]
    xor d
    ld a, a
    inc de
    rst $38
    rrca
    rst $30
    jp z, $ffff

    rst $38
    rst $10
    rst $20
    add c
    rst $08
    add c
    rst $38
    rst $00
    rst $38
    rst $38
    db $db
    rst $38
    rst $18
    ei
    rst $18
    di
    xor a
    di
    db $ec
    rst $30
    ld e, h
    rst $38
    and b
    rst $38
    ld a, [de]
    db $ed
    rst $38
    ld de, $70ff
    cpl
    ret nc

    xor l
    ld a, e
    ld a, d
    cp h
    or [hl]
    ld a, b
    ccf
    ld [hl], b
    db $d3
    ld [hl], b
    or a
    ld e, b
    ld b, b
    rrca
    dec sp
    ldh [$ee], a
    ld b, $fc
    nop
    rrca
    nop
    sbc [hl]
    ld a, b
    ld e, c
    ld hl, sp+$6b
    jr jr_073_7c01

    dec bc
    sbc h
    inc hl
    ld b, a
    jr nc, jr_073_7be6

    inc a
    ld c, a
    ccf
    ld e, a
    rrca
    ld e, $1f
    ld e, l
    ccf
    dec a
    ld e, $3c
    ld e, $3e
    inc e
    db $ed
    ld e, [hl]
    ld [hl], a
    ccf
    db $76
    rrca
    di
    ld bc, $0123
    jr nc, jr_073_7be9

jr_073_7be6:
    sbc c
    ld a, [hl]
    adc [hl]

jr_073_7be9:
    ld [hl], b
    ld a, b
    add b
    ld e, a
    and c
    di
    rrca
    ld a, a
    add c
    add b
    nop
    ld bc, $0f00
    add hl, bc
    ld e, a
    ccf
    ld l, a
    di
    jp Jump_000_1f7f


    rst $38
    db $db

jr_073_7c01:
    rst $20
    xor a
    rst $00
    cp b
    ld h, c
    ld b, e
    ld bc, $0167
    ldh [rSB], a
    ld e, $f1
    ld e, a
    and b
    jp nc, $0601

    ld bc, $0100
    ld bc, $0600
    ld bc, $0300
    inc hl
    inc e
    rra
    ld h, b
    ld [hl], c
    adc a
    scf
    rst $08
    and $1f
    ldh a, [rIF]
    cp a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    adc a
    push de
    rst $28
    rst $38
    ld a, b
    rst $38
    sbc b
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    cp $ff
    ld d, d
    rst $10
    xor d
    cp $ff
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$03
    ld [hl], d
    ld a, a
    cp e
    ld a, a
    rst $38
    cp $ff
    rst $38
    xor [hl]
    db $fd
    add d
    and c
    ld e, [hl]
    rra
    rst $28
    rst $38
    db $fc
    cp $fd
    ld a, l
    cp $f9
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    cp $ff
    ld a, a
    adc a
    db $f4
    adc [hl]
    sbc l
    xor a
    jp z, $a7cb

    rst $28
    adc e
    rst $38
    adc e
    rst $28
    ei
    rst $38
    ld sp, hl
    ld a, a
    adc d
    rst $18
    ld a, [bc]
    sbc a
    ld [$8f9f], sp
    sbc a
    cp a
    ld a, a
    adc a
    rst $18
    and a
    and a
    rst $10
    rst $00
    cp $ff
    sbc $ee
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    sub $ff
    rst $38
    rst $28
    ei
    rst $28
    ei
    cp $ff
    pop bc
    rst $20
    rst $38
    inc hl
    rst $38
    ld e, e
    pop af
    cp $87
    rst $38
    cp $1f
    rst $38
    push af
    jr c, jr_073_7d02

    or b
    ld c, c
    scf
    cp a
    ld a, [hl]
    or a
    ld hl, sp-$48
    ld [hl], b
    ld a, h
    ld [hl], e
    rst $38
    rst $38
    ld l, a
    ld hl, sp+$73
    dec e
    ld b, e
    ld a, $ae

Jump_073_7cc3:
    ld [hl], b
    db $d3
    inc c
    sub h
    inc c

jr_073_7cc8:
    ld d, c
    jr nz, jr_073_7cc8

    ld a, e
    or h
    rst $08
    ld c, b
    add a
    adc a
    ld bc, $01de
    ld hl, sp+$05
    dec d
    ld c, b
    ld a, e
    inc b
    ld a, [hl]
    ld bc, $0180
    db $dd
    inc bc
    rrca
    rst $38
    or c
    rst $08
    db $fc
    ld bc, $03fc
    dec de
    ld b, $49
    jr nc, jr_073_7d40

    pop hl
    push bc
    add e
    dec hl
    rlca
    dec de
    rlca
    sbc l
    rst $20
    ld a, d
    add c
    ld b, e
    add b
    add b
    add b
    adc b
    add b
    xor l
    add b
    rst $38
    add b

jr_073_7d02:
    push af
    adc d
    adc [hl]
    inc bc
    ei
    call nz, $877e
    ld a, h
    add a
    add sp, -$79
    rst $18
    add b
    rlca
    call z, $c00e
    ld a, a
    ret nz

    db $ec
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    sbc [hl]
    rst $38
    ld a, a
    cp a
    ccf
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], h
    ei

Jump_073_7d30:
    ld a, h
    ld d, h
    rrca
    dec b
    rst $38
    sbc $fd
    ld [hl], a
    ld [hl], l
    or e
    rst $30
    ld sp, hl
    rst $18
    ld a, a
    rst $28
    di

jr_073_7d40:
    rst $20
    db $fd
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fb
    ld [hl], h
    ldh a, [rIE]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38

Call_073_7d57:
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    ld sp, hl
    and $fa
    db $fd
    db $fd
    ld a, $be
    ld h, c
    db $fc
    ld l, e
    di
    db $fc
    ei
    db $fc
    di
    rrca
    ld a, [hl]
    inc bc
    rst $38
    nop
    db $fc
    ret c

    ld hl, sp-$20
    ei
    inc [hl]
    cp l
    ld a, d
    cp e
    ld [hl], a
    ld l, a
    inc sp
    rst $20
    ld e, l
    rst $18
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, l
    cp a
    ld a, [hl]
    cp a
    rst $38
    ld a, $ff
    ld a, $3e
    cp $53
    rst $38
    sbc a
    ei
    rst $18
    ei
    ld c, a
    rst $38
    or $39
    rst $38
    pop af
    cp $5f
    ld a, e
    call z, Call_000_30cf
    db $fd
    ret


    sbc $01
    call nc, $be8a

jr_073_7da9:
    ld c, b
    and $01
    ld [hl], b
    and c
    pop af
    cp $bc
    ld b, b
    xor e
    ld b, c
    db $fd
    ld [bc], a
    ld a, a
    nop
    sbc e
    pop af
    ei
    ldh a, [$b6]
    ld a, h
    dec h
    db $10
    dec c
    add hl, bc
    ld a, [bc]
    dec b
    sub d
    inc c
    ld sp, hl
    ccf
    ld a, [hl]
    db $fd
    db $fd
    db $fc
    cp $fe
    ld [hl], a
    rst $38
    rst $28
    pop af
    and b
    pop bc
    add d
    pop bc
    rst $08
    ret nz

    ld a, a
    rst $28
    dec b
    rst $38
    jp c, Jump_073_7d30

    cp $ff
    rst $38
    ld a, [c]
    db $fd
    add sp, -$10
    ret nc

Call_073_7de7:
    ldh [$e7], a
    ret nz

    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $28
    cp $a7
    ld a, b
    ld hl, sp-$01
    ld [hl-], a
    inc a
    dec e
    jr nc, jr_073_7da9

    ld a, a
    cp e
    ld a, a
    sbc a
    ld a, b
    db $fd
    ld b, b
    push hl
    ld [bc], a
    db $eb
    inc bc
    ld b, c
    add e
    ld b, e
    add e
    add l
    ld [bc], a
    add [hl]
    inc c
    db $ec
    inc e
    rra
    jr nc, jr_073_7e83

    scf
    ld a, e
    rst $38
    rst $28
    pop af
    reti


    ldh [$b0], a
    ldh [$b0], a
    ret nz

    rst $38
    rst $38
    or e
    rst $18
    xor a
    ld [hl], b
    db $f4
    dec bc
    ld [hl], c
    adc a
    jp $fdff


    rst $38
    ld [hl], a
    rst $38
    ld a, a
    ld [hl], a
    ld a, $30
    rst $08
    ld b, $ff
    push de
    ld b, a
    adc c
    dec bc
    ld [$cf87], sp
    rst $30
    cpl
    db $fd
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $30
    rst $38
    pop af
    db $fd
    di
    rst $30
    ld a, c
    ld a, a
    di
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $10
    ld l, l
    db $dd
    ld c, $0d
    pop bc
    dec [hl]
    set 3, a
    xor a
    rst $18
    rst $08
    adc a
    ld c, d
    dec b
    jp z, Jump_073_4f07

    rlca
    jp $ef5f


    rst $38
    cp $fe
    rst $30
    db $fc
    ld [hl-], a
    ld hl, sp+$31
    ld a, c
    sub e
    ld a, a
    rst $18
    rst $38
    or a
    rst $38
    ld b, e
    rst $38
    reti


    rst $38
    pop hl
    rst $00
    add a
    rst $08
    add c
    db $fd

jr_073_7e83:
    ld sp, hl
    pop af
    ld l, e
    rst $20
    or e
    ld b, a
    and e
    ld b, a
    rrca
    jp $f137


    ldh a, [$f7]
    nop
    ld l, l
    nop
    rst $20
    nop
    adc $00
    add $40
    ret nz

    ld b, b
    ldh [rNR41], a
    dec sp
    db $10
    rst $30
    dec c
    cp b
    rrca
    cp $94
    ld sp, hl
    and b
    rst $38
    dec b
    rst $28
    add b
    add e
    add b
    rst $08
    ld bc, $1f70
    sub $e3
    db $eb
    scf
    ldh a, [$1f]
    ld b, $ff
    adc l
    rst $38

jr_073_7ebc:
    inc d
    dec sp
    rst $18
    jr c, jr_073_7ebc

    cp $6f
    add e
    inc c
    inc bc
    add [hl]
    rrca
    cp b
    pop de
    pop af
    nop
    nop
    ld bc, $f0b8
    ld h, b
    add b
    db $fc
    jr jr_073_7f13

    rst $38
    push af
    ld a, [$f1ee]

jr_073_7eda:
    rst $18
    jr nz, jr_073_7f2d

    jr nz, jr_073_7eda

    ld [hl], b
    sbc $e7
    ld a, c
    add b
    rlca
    nop
    ccf
    nop
    ldh [$5f], a
    rrca
    cp $fe
    cp $ff
    cp $fa
    rst $38
    rst $18
    ld a, a
    rra
    rlca
    ld [c], a
    rlca
    add [hl]
    ld b, b
    adc a
    ld [bc], a
    ldh [rP1], a
    add [hl]
    nop
    ld [hl+], a
    nop
    jr nz, jr_073_7f04

jr_073_7f04:
    sbc b
    ld h, b
    db $f4
    ret c

    ld a, b
    add b
    ld c, b
    ret nz

    pop bc
    inc bc
    ld b, e
    rlca
    inc bc
    rrca
    dec sp

jr_073_7f13:
    rrca
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    dec bc
    rst $38
    or c
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    sub a
    ei
    cp $b9
    ld a, [$7fdf]

jr_073_7f2d:
    cp $df
    ld [hl], $ff
    xor l
    cp $f2
    ldh a, [$b0]
    db $dd
    and b
    db $db
    dec b
    sbc $05
    cp $9f
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    adc l
    rst $38
    cp l
    rst $38
    sbc h
    cp $8d
    rst $38
    xor [hl]
    rst $30
    db $eb
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ei
    ld sp, hl
    db $fd
    ld sp, hl
    db $fc
    db $fd
    ld hl, sp-$03
    ld a, [$bfff]
    ld a, a
    cp l
    cp a
    scf
    cp a
    ld [hl], d
    rst $38
    ld l, [hl]
    cp $7b
    rst $38
    db $fd
    cp $dd
    rst $38
    inc c
    db $eb
    inc e
    add sp, $18
    rst $18
    xor e
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $e4
    set 4, h
    adc [hl]
    inc bc

Call_073_7f80:
    rst $18

Jump_073_7f81:
    jr z, @+$01

    db $fd
    rst $38
    rst $38
    ld hl, sp-$04
    ld sp, hl
    ld hl, sp-$01
    ld hl, sp-$01
    ld e, a
    db $dd
    ld e, c
    ccf
    call nz, $dc33
    ld l, $db
    ld [hl], a
    cp e
    db $76
    rst $38
    ld b, $fb
    and $bb
    rst $10
    xor $4f
    add b
    ld a, a
    and b
    sbc a
    ld b, c
    jp nz, $fe7f

    scf
    ld a, a
    ld d, $e7
    add d
    rst $38
    ld b, d
    cp e
    rst $08
    xor a
    cp $bf
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38
    adc $ff
    rst $18
    cp [hl]
    rst $18
    ccf
    rst $18
    ld a, a
    rst $08
    rst $38
    ld a, a
    rst $18
    ld a, a
    sbc a
    rst $38
    rra
    ld h, a
    ccf
    ld l, a
    ld [hl], a
    db $d3
    and [hl]
    ld a, l
    ld [hl+], a
    ld e, e
    ld h, [hl]
    ld sp, hl
    and $cb
    db $f4
    rst $00
    ld [bc], a
    dec c
    inc bc
    dec e
    rra
    sbc a
    rrca
    dec e
    inc bc
    ei
    rlca
    db $e3
    nop
    ld c, $03
    db $e4
    rlca
    pop hl
    ld b, d
    ld bc, $0902
    ld b, $76
    inc c
    pop af
    ldh [$e0], a
    add b
    ldh [rP1], a
    rra
    ld [bc], a
    or $09
    db $fc
    inc hl
    sub d
    ld h, c
