SECTION "ROM Bank $0ad", ROMX[$4000], BANK[$ad]

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
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    db $fd
    ld [bc], a
    cp $01
    cp $01
    ld hl, sp+$06
    inc h
    ret c

    or b
    ld b, b
    ld b, c
    nop
    ld [bc], a
    ld bc, $0205
    dec de
    inc b
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$9d], a
    ld h, b
    cp d
    ld b, b
    ld e, c
    and b
    ei
    nop
    ld e, [hl]
    and c
    ldh a, [rIF]
    sbc [hl]
    ld bc, $0049
    jr nz, jr_0ad_4042

jr_0ad_4042:
    add c
    nop
    ld h, b
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    and b
    nop
    ret nz

    nop
    xor b
    nop
    call nc, $ee00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ld [bc], a
    add b
    ld sp, hl
    ld [bc], a
    cp l
    ld b, d
    inc c
    di
    ld [bc], a
    rst $38
    ld [hl], b
    rst $38
    db $f4
    nop
    ld c, $10
    ld de, $dd0e
    inc b
    cp a
    ret nz

    add d
    db $fd
    ccf
    ret nz

    scf
    ret z

    rst $38
    ret nz

    and [hl]
    reti


    rst $08
    ldh a, [$ef]
    ret nc

    dec a
    cp $27
    ld e, e
    ld d, a
    jr z, jr_0ad_409e

    inc h
    add a
    inc e
    ld b, b
    rra
    sub b
    rrca
    ld e, d
    cpl
    inc b
    rst $18

jr_0ad_409e:
    ld a, [$a4ff]
    ei
    rst $38
    ld bc, $0ff1
    rst $38
    cp $c7
    ld a, $cd
    ld a, $1f
    rst $38
    and h
    rst $38
    jp hl


    ld hl, sp-$08
    cp $e5
    rst $28
    and l
    add a
    dec c
    add a
    rra
    rst $08
    rra
    rst $08
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc $ff
    rst $38
    rst $38
    ld a, $7f
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    inc bc
    rra
    ld bc, $0000
    ret nz

    and h
    ld a, b
    call c, Call_0ad_6f3f
    sbc a
    rlca
    rst $38
    adc a
    ld [hl], e
    ld sp, $4900
    nop
    adc [hl]
    nop
    ld c, e
    nop
    sub e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$0e]
    ldh [rNR32], a
    nop
    ldh a, [$a1]
    ld b, b
    nop
    add e
    add [hl]
    ld bc, $0e11
    ld a, $00
    add b
    ld a, b
    db $10
    ldh [$60], a
    add b
    ret nc

    nop
    ldh [rP1], a
    ld b, b
    nop
    ret nz

    nop
    add c
    nop
    inc b
    inc bc
    ld sp, $410e
    ld a, $09
    or $0f
    ldh a, [rNR32]
    ldh [$c0], a
    nop
    nop
    nop
    ld d, l
    nop
    rst $10
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    ld b, b
    adc a
    ld [hl], b
    ld bc, $78fe
    rst $30
    ld hl, sp+$70
    ld hl, sp+$70
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $3f5f
    rrca
    rra
    rst $38
    rrca
    rlca
    ld e, a
    rrca
    rst $30
    ld l, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    cp $ff
    rst $38
    add $ff
    ld [$5fff], a
    rst $38
    rrca
    rst $38
    ld [$11ff], sp
    cp $21
    db $f4
    ld a, [hl+]
    rst $30
    db $e4
    rst $30
    and h
    rst $38
    ld bc, $dff6
    and b

jr_0ad_416c:
    ld l, a
    ldh a, [$3b]
    ld a, h
    ret z

    ccf
    ld c, a
    ccf
    cp a
    sbc a
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $dd
    rst $38
    db $e3
    rst $38
    ld a, l
    ld a, [c]
    ld a, [$fffd]
    cp $f1
    rst $38
    db $fc
    ld hl, sp-$01
    db $fc
    ld a, $ff
    cpl
    rra
    inc bc
    rlca
    add c
    inc bc
    add c
    ldh [$f0], a
    db $fc
    cp $ff
    ld a, a
    rst $38
    adc a
    ccf
    pop bc
    rlca
    ret nz

    jr nz, jr_0ad_4219

    add b
    jr c, jr_0ad_416c

    sbc h
    ld h, b
    rst $08
    jr nc, jr_0ad_41c9

    nop
    inc c
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
    dec bc
    inc b
    inc bc
    inc e
    ld e, [hl]
    jr nz, @+$56

    and b
    ld h, b

jr_0ad_41c9:
    add b
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
    ld bc, $0f00
    nop
    rra
    nop
    ld l, a
    db $10
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ei
    nop
    db $fc
    nop
    cp d
    nop
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0ad_41fe

jr_0ad_41fe:
    db $10
    inc c
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop

jr_0ad_420a:
    ld [hl+], a
    ld bc, $01ae
    or [hl]
    ld bc, $036c
    db $fc
    inc bc
    call c, $f803
    rlca
    rst $30

jr_0ad_4219:
    nop
    ld c, $81
    ld b, $ff
    ld [hl+], a
    rst $28
    cpl
    jr nz, jr_0ad_420a

    nop
    ld a, h
    inc bc
    rst $38
    ld a, a
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
    ei
    rst $38
    ld a, b
    rst $38
    ld l, a
    ldh a, [$71]
    ldh [$d0], a
    ldh [$fe], a
    add b
    rst $38
    ldh a, [rIF]
    rst $38
    add b
    rst $38
    add a
    ld hl, sp-$7b
    ld a, [$fc03]
    inc bc
    db $fc
    dec b
    ld a, [$fc03]
    inc b
    ei
    ld [bc], a
    db $fd
    dec b
    ld a, [$fd02]
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    sub b
    rst $28
    ld b, $f9
    ld hl, $3cfe
    rst $38
    cp a
    ld a, a
    rst $38
    sbc a
    ld a, a
    rst $20
    ld sp, hl
    ld a, a
    cp $7f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $08
    and d
    ld a, a
    ld hl, sp+$3f
    sbc b
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ccf

jr_0ad_428d:
    ld a, a
    ld e, $bf
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rra
    dec bc
    rlca
    ld bc, $0000
    nop
    ret nz

    nop
    ret nz

    jr nc, jr_0ad_428d

    rra
    ld sp, hl
    rlca
    rst $38
    inc bc
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $30
    ld [$0061], sp
    ld d, b
    nop
    jr nz, jr_0ad_42b6

jr_0ad_42b6:
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
    ld b, b
    nop
    inc bc
    nop
    sbc h
    inc bc
    ldh a, [rIF]
    adc a
    ld [hl], b
    or a
    ld c, b
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
    ld e, a
    nop
    dec bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
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
    ld [$3100], sp
    ld c, $2f
    rra
    ccf
    ld a, [hl]
    cp a
    ld a, a
    xor a
    ld a, a
    rst $28
    ld a, a
    adc a
    ld a, a
    ld c, a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    cp a
    ld a, a
    ei
    ld a, [hl]
    db $fd
    rst $38
    ld c, a
    rst $38
    add hl, hl
    rst $18
    ld b, b
    ret nz

    pop bc
    rst $38
    ret nz

    rst $38
    jp nz, $c9ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$c2f7], sp
    nop
    rst $30
    nop
    ld bc, $0000
    nop
    ld b, b
    nop
    ldh [rP1], a
    cp $f8
    xor a
    rlca
    add e
    ld bc, $01c1
    rlc c
    ld h, c
    add c
    ld b, c
    add b
    ld d, c
    add c
    dec h
    pop bc
    ld sp, $95c1
    ldh [$99], a
    ld [c], a
    xor c
    di
    inc a
    pop bc
    ld a, $c1
    ld l, $d1
    cp $01
    ld h, [hl]
    add c
    dec e
    pop hl
    jp $f1fd


    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    ld hl, sp-$01
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
    rst $08
    ccf
    ld a, a
    add a
    cp a
    rst $00
    rst $08
    di
    cpl
    rst $18
    rrca
    rlca
    ld e, l
    and e
    db $fd
    add e
    push bc
    ei
    ei
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    ccf
    ld bc, $0103
    inc bc
    nop
    inc bc
    ld bc, $c083
    di
    ld a, [$7efd]
    rst $38
    cp a
    ld a, a
    rst $28
    nop
    rst $18
    nop
    xor [hl]
    ld bc, $032c
    rra
    nop
    ld a, $00
    add d
    nop
    jr z, jr_0ad_43c0

jr_0ad_43c0:
    ld b, b
    nop
    nop
    nop
    nop
    ld [$183d], sp
    rst $18
    jr c, jr_0ad_444a

    sbc b
    rst $38
    jr @+$01

    jr c, jr_0ad_43fc

    nop
    cp $00
    rst $18
    nop
    rlca
    nop
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    nop
    rst $28
    nop
    or l
    nop
    and d
    nop
    ld d, c
    nop
    inc hl
    nop
    ld bc, $0500
    nop
    ld bc, $0700
    nop
    inc bc
    nop
    rlca
    nop
    rla
    nop
    cpl
    nop

jr_0ad_43fc:
    inc b
    inc bc
    ld b, b
    rlca
    call Call_0ad_6002
    rst $38
    add b
    ld a, a
    push bc
    ld a, [hl-]
    ld b, e
    cp h
    res 6, h
    pop hl
    sbc [hl]
    or $89
    jp hl


    sbc [hl]

jr_0ad_4412:
    cp a
    rst $18
    cp a
    rst $18
    rst $18
    cp a
    rst $28
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add b
    add b
    add b
    rst $38
    cp l
    rst $38
    or l
    rst $38
    cp l
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
    rst $38
    rst $38
    nop
    rst $38
    rst $18
    nop
    xor d
    dec b
    ld a, d
    nop
    xor c
    nop
    add b
    nop
    nop
    nop
    db $db
    nop
    rst $38
    rst $38

jr_0ad_444a:
    cp a
    ret nz

    rst $38
    add b
    cp a
    ret nz

    cp $81
    ldh a, [$8f]
    ld [$d095], a
    xor a
    db $e4
    sbc e
    sub b
    rst $28
    pop bc
    cp a

jr_0ad_445e:
    sub h
    rst $38
    and d
    add b
    xor c
    add b
    rst $18
    add b
    ei
    add h
    db $fd
    add d
    rst $28
    sub b
    xor h
    sub b
    add b
    add b
    cp $ff
    xor l
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    call nz, $c7bf
    jr c, jr_0ad_445e

    jr nc, jr_0ad_4412

    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld [hl], a
    cp a
    inc a
    rst $38
    db $f4
    ld hl, sp-$20
    ldh a, [$fc]
    cp $ff
    rst $38
    ccf
    rst $38
    rla
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    ret nc

    ldh [$5f], a
    cp a
    cpl
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rst $30
    ld [$00bf], sp
    or h
    nop
    inc hl
    nop
    add a
    nop
    ld a, $00
    ld a, [hl]
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    add sp, $07
    jr c, @+$09

    inc c
    inc bc
    ld sp, hl
    rla
    ei
    rlca
    ld hl, sp+$07
    ld a, [$7e05]
    ld bc, $01fe
    ld a, l
    inc bc
    db $fd
    inc bc
    ld b, $01
    ld [hl-], a
    ld bc, $013a
    inc c
    inc bc
    inc b
    inc bc
    inc c
    inc bc
    xor h
    ld b, e
    ld a, a
    rst $20
    ld a, a
    rst $20
    ld h, a
    rst $38
    rrca
    rst $38
    xor c
    ld d, a
    db $ec
    inc de
    ld a, b
    add a
    or h
    ld c, e
    ld a, [$0905]
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
    cp $fc
    rst $18
    cp $00
    nop
    nop
    rst $38
    ld e, a
    rst $38
    ld d, l
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    inc bc
    ld e, a
    add b
    ld [c], a
    inc e
    stop
    nop
    nop
    rlca
    ld [bc], a
    rst $38
    rst $38
    cp a
    ld b, b
    ei
    inc b
    rst $38
    nop
    sub e
    ld l, h
    cp a
    ld b, b
    rra
    ldh [$2f], a
    call nc, $e41f
    cpl
    call nc, $e817
    cpl
    cp $3f
    rst $38
    ld l, a
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $28
    dec d
    db $eb
    ccf
    cp $be
    nop
    nop
    jr c, jr_0ad_4577

    inc bc
    rst $38
    ld a, h
    rst $38
    pop bc
    rst $38
    ccf

jr_0ad_4577:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ad_4580:
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    sub d
    ei
    rlca
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f8
    rst $38
    sbc [hl]
    ld a, a
    inc bc
    rlca
    nop
    nop
    nop
    nop
    nop
    ret nz

    add sp, -$10
    db $fc
    cp $ff
    rst $38
    ccf
    ld a, a
    ld c, $1f
    ld bc, $0f06
    nop
    ld a, [$1efc]
    db $fc
    and $04
    add hl, bc
    ld b, $15
    ld a, [bc]
    dec bc
    inc d
    dec bc
    inc d
    dec [hl]
    ld a, [bc]
    sub h
    ccf
    ld [$cc3f], sp
    ccf
    call c, $ca3f
    dec a
    ld a, [$fa0d]
    dec c
    ld l, l
    sbc a
    push hl
    jr jr_0ad_4580

    db $10
    ld [hl], l
    ld [$08e5], sp
    ld b, l
    cp b
    call Call_0ad_55f8
    ld hl, sp+$1d
    ld hl, sp+$1c
    ld sp, hl
    ld e, $f9
    ld d, $f9
    ld d, $f9
    ld e, $f9
    ld d, $f9
    ld [hl], $f9
    ld [hl], $f9
    ld a, $f9
    ld a, $fb
    ld a, h
    ei
    ld a, [$deff]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, a
    cp $7f
    cp $7f
    cp $3e
    rst $38
    ld a, $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $3e
    ccf
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    ccf
    ccf
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    push af
    cp $e4
    rst $38
    rst $38
    db $ec
    pop af
    sbc $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    rla
    rrca
    rra
    rrca
    ld [$c307], sp
    ccf
    rst $38
    rst $38
    ld c, $ff
    sub [hl]
    ld a, a
    adc $3f
    ld d, [hl]
    cp a
    ld [hl], l
    ld a, [bc]
    ld l, c
    ld b, $a5
    ld a, [bc]
    ld e, c
    ld b, $22
    rrca
    cp [hl]
    rlca
    or $0f
    xor $1f
    cp $3f
    cp $5f
    cp $ae
    db $fc
    call c, $f0f0
    ld c, [hl]
    ld bc, $3fc7
    ccf
    rst $38
    ret nz

    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ad_467a:
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp+$78
    ld hl, sp-$08
    ld sp, hl
    ld a, a
    ld hl, sp-$02
    pop af
    and a
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld bc, $0083
    nop
    nop
    nop
    nop
    ld hl, sp-$02
    rst $38
    rst $38
    ld a, a
    rlca
    rra
    ld bc, $0103
    nop
    nop
    nop
    inc hl
    ret nz

    rst $18
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    ld h, b
    add b
    adc c
    nop
    and c
    nop

jr_0ad_46b6:
    dec hl
    ret nz

    jr nz, jr_0ad_467a

    dec hl
    ret nz

    dec sp
    ret nz

    dec hl
    ret nz

    daa
    ret nz

    cpl
    ret nz

    inc de
    ret nz

    ld d, a
    add b
    xor [hl]
    ld bc, $00ff
    cp $01
    cp l
    jp $8b75


    add hl, bc
    ld b, a
    ld d, e
    and b
    ld [hl], c
    adc a
    dec hl
    rst $10
    ld c, a
    add a
    ld d, e
    add a
    ld h, e
    add e
    ld b, e
    nop
    adc b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    and b
    nop
    sub b
    ld b, b
    ld h, b
    add b
    ldh [rP1], a
    jr nc, jr_0ad_46b6

    ld [$58e0], sp
    and b
    sub b
    ld h, b
    ld d, [hl]
    and b
    add hl, de
    and $01
    cp $83
    db $fc
    ld bc, $00fe
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld hl, sp+$0f
    db $fc
    rrca
    rst $18
    cpl
    sbc a
    ld l, a
    xor e
    ld e, a
    dec sp
    rst $08
    add hl, sp
    rst $08
    ld a, l
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    ld a, a
    ld b, a
    cp a
    and b
    ld e, a
    ret nz

    ccf
    ccf
    ret nz

    rst $38
    nop
    cp $00
    ld a, h
    add b
    cp [hl]
    ret nz

    rst $38
    ldh a, [$f7]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fc
    rst $38
    ld a, b
    add a
    rst $38
    rst $38
    dec d
    rst $38
    cp $01
    jp nc, $e000

    nop
    ld a, a
    add b
    nop
    ret nc

    add b
    ld a, d
    add l
    ld a, d
    xor b
    ld d, a
    jp nc, $f53d

    ld a, $fa
    sbc a
    rst $38
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    nop
    rra
    nop
    nop
    rst $38
    ld e, $57
    cp $ff
    ldh [rIE], a
    rrca
    or $ff
    and $ff
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    xor [hl]
    rst $38
    add sp, -$01
    dec l
    ccf
    cpl
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ret nz

    ldh [$80], a
    ret nz

    ldh a, [$f8]
    db $fc
    rst $38
    rra
    ld a, a
    ld bc, $0007
    nop
    nop
    nop
    pop de
    ldh [$fb], a
    db $fc
    rst $30
    ld hl, sp+$5f
    ldh [$7f], a
    nop
    rst $38
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
    jr jr_0ad_47e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ad_47f3

    ld [de], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0ad_4804

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ad_4814

jr_0ad_47e3:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ad_4824

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld l, $3e
    ccf
    ld b, b

jr_0ad_47f3:
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

jr_0ad_4804:
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
    ld [de], a
    ld [de], a
    ld e, a

jr_0ad_4814:
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

jr_0ad_4824:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [de], a
    ld [de], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld [de], a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    ld [de], a
    add h
    ld [de], a
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
    ld l, $8f
    sub b
    ld [de], a
    ld [de], a
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
    ld l, $9c
    sbc l
    ld [de], a
    ld [de], a
    ld [de], a
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    ld l, $2e
    and a
    xor b
    ld [de], a
    ld [de], a
    ld [de], a
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    ld l, $2e
    ld l, $b2
    ld [de], a
    ld [de], a
    ld [de], a
    or e
    or h
    ld [de], a
    ld e, a
    or l
    or [hl]
    or a
    cp b
    cp c
    ld l, $2e
    ld l, $ba
    cp e
    ld [de], a
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    ld l, $2e
    ld l, $2e
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $2e2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    adc $cf
    ret nc

    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    pop de
    jp nc, $2e2e

    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    db $d3
    call nc, $d6d5
    rst $10
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $d8
    reti


    jp c, $2edb

    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $01
    ld bc, $0601
    ld b, $01
    nop
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
    ld b, $04
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
    ld b, $03
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
    ld bc, $0601
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    nop
    ld bc, $0101
    ld b, $06
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
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
    inc bc
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
    inc bc
    inc bc
    inc bc
    ld bc, $0000
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
    inc bc
    inc bc
    inc bc
    inc b
    inc b
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
    inc bc
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    xor $00
    and l

jr_0ad_4a41:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $c2
    ld a, [hl-]
    add d
    ld a, d
    ld b, d
    inc e
    db $10
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ad_4a41

    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    dec b
    ld a, [$f00b]
    ld [bc], a
    ld hl, sp+$04
    ld hl, sp+$06
    ld hl, sp+$02
    db $fd
    inc bc
    db $fc
    ld bc, $80fe
    nop
    add b
    nop
    ret c

    nop
    db $ec
    db $10
    call z, Call_0ad_4c30
    or b
    ld b, $f8
    nop
    rst $38
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp h
    ld b, e
    ld e, $e1
    nop
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
    nop
    dec b
    nop
    ld d, b
    nop
    ld [bc], a
    nop
    jr z, jr_0ad_4ab9

jr_0ad_4ab9:
    nop
    ld [bc], a
    ld bc, $3f0f
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
    di
    db $fc
    ld [$3ff5], a
    ret nz

    dec a
    jp nz, Jump_0ad_7f83

    rra
    rst $38
    ld [hl], a
    rst $38
    ld bc, $c0fe
    jr nz, jr_0ad_4b1b

    pop hl
    add c
    jp $8307


    rlca
    rrca
    ld e, $1e
    inc e
    inc a
    jr nc, jr_0ad_4b60

    jp Jump_000_1e00


    nop
    halt
    call nc, Call_0ad_4f0a
    sbc b
    sbc $80
    ld sp, hl
    nop
    add $00
    jr c, jr_0ad_4afb

    pop bc

jr_0ad_4afb:
    inc bc
    add e
    add a
    ld b, $0f
    inc e
    ld e, $18
    inc a
    ld [hl], d
    add hl, sp
    pop af
    ld a, a
    di
    rst $38
    db $fc
    rst $38
    rst $30
    ld hl, sp-$01
    ldh a, [$fb]
    ldh a, [$fb]

jr_0ad_4b13:
    ldh a, [$f8]
    ldh a, [$f0]
    ld hl, sp-$01
    ld hl, sp-$09

jr_0ad_4b1b:
    ld hl, sp-$22
    pop hl
    db $fc
    add e
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    db $fc
    inc bc
    ei

jr_0ad_4b29:
    rlca
    rst $20
    rra
    rst $18
    ccf
    ccf
    rst $38

Jump_0ad_4b30:
    sub b
    ld l, a
    xor b
    ld d, a
    ei
    inc b
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    ld [hl], a
    nop
    xor e
    nop
    ld b, c
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

jr_0ad_4b60:
    nop
    rst $38
    ld [hl], b
    adc a
    ldh a, [rIF]
    ld e, h
    inc bc
    ld l, $01
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld h, b
    nop
    and b
    and b
    and b
    jr nz, jr_0ad_4bd9

    ld b, b
    nop
    nop
    ld [$b081], sp
    nop
    cp $01
    rst $20
    jr c, @+$41

    rst $20
    ld [hl], b
    xor a
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr z, @+$01

    nop
    jr z, jr_0ad_4b13

    jr c, jr_0ad_4b97

    jr c, jr_0ad_4b29

jr_0ad_4b97:
    inc l
    inc b
    dec sp
    add b
    ccf
    db $10
    ccf
    nop
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    ld a, a
    cp a

jr_0ad_4bac:
    ccf
    rst $38
    sbc a
    rst $38
    rrca
    ld b, a
    rlca
    jr nz, @+$05

    sub b
    ld bc, $3f00
    nop
    ld a, [hl-]
    rst $38
    ld a, [$fbff]
    rst $38
    cp $ff
    ld a, [$faff]
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld b, l
    cp d
    cpl
    rst $18
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    ccf
    ld [hl], b

jr_0ad_4bd9:
    ld a, a
    ldh [rIE], a
    ret nz

    rst $28
    inc b
    rlc a
    adc b
    db $10
    rrca
    jr jr_0ad_4bed

    ldh a, [rTAC]
    db $d3
    inc b
    rlc h
    ld c, e

jr_0ad_4bed:
    inc b
    ld c, e
    inc b
    sub a
    nop
    ld b, a
    jr jr_0ad_4bac

    ld a, b
    ld h, a
    ldh a, [$c1]
    and $81
    rst $00
    rlca
    adc b
    jr jr_0ad_4c0f

    ccf
    rra
    call c, $f97f
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    cp a
    rst $18
    ccf
    ld a, a
    sbc a
    xor l

jr_0ad_4c0f:
    ld e, a
    ld a, $18
    ld c, [hl]
    db $10
    ld a, b

jr_0ad_4c15:
    nop
    ld hl, sp+$00
    ld a, [$ff00]
    nop
    cp $01
    ei
    rlca
    rst $20
    rra
    sbc a
    ld a, a
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

Call_0ad_4c30:
jr_0ad_4c30:
    ld b, [hl]
    add b
    dec d
    ldh [rTIMA], a
    ld hl, sp+$01
    cp $03
    db $fc
    rst $28
    db $10
    rst $28
    db $10
    rst $08
    db $10
    ld e, l
    nop
    dec d
    nop
    ld [de], a
    nop
    jr z, jr_0ad_4c48

jr_0ad_4c48:
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    inc d
    db $e3
    pop bc
    nop
    ld b, c
    nop
    add [hl]
    ld bc, $609b
    ldh [rP1], a
    add b
    ld b, b
    adc h
    ld [hl], b
    jr nz, jr_0ad_4c30

    inc l
    ret nc

    ld e, $e1
    rst $38
    or $19
    cp $18
    rst $38
    add hl, de
    cp $19
    and $99
    cp $d0
    add hl, de

jr_0ad_4c82:
    pop af
    jr jr_0ad_4c15

    ld a, c
    ld d, l
    cp b
    ld d, [hl]
    cp c
    jr @+$01

    sbc b
    rst $38
    ld hl, sp-$01
    rst $20
    jr jr_0ad_4c82

    db $10
    rst $20
    jr jr_0ad_4d03

    sub e
    rst $20
    jr @+$06

    ei
    dec b
    ld a, [$ffff]
    rst $28
    rst $38
    jp $c03c


    nop
    sub b
    nop
    cp $00
    ld e, $ef
    add hl, hl
    sbc $08
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$0cff], sp
    rst $38
    ld [$78ff], sp
    cp a
    db $ec
    rst $38
    inc c
    rst $38
    ld [$04ff], sp
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    rrca
    db $f4

Jump_0ad_4ccc:
    rst $18
    daa
    cp [hl]
    ld e, a
    sbc h
    ccf
    dec b
    cp $0f
    rst $30
    and $07
    inc h
    rlca
    rrca
    rlca
    inc bc
    ld b, $03
    ld b, $07
    ld [bc], a
    ld bc, $0202
    ld b, $07
    inc bc
    rrca
    rlca
    rst $38
    rrca
    rst $30
    ld a, e
    jp $deff


    rst $38
    ld a, c
    rst $38
    ld h, a
    rst $38
    sbc [hl]
    rst $38
    ld a, d
    rst $38
    ldh [$f2], a
    and b
    jp $8201


    or b
    ld b, e
    db $fc

jr_0ad_4d03:
    inc bc
    cp $01
    ret nz

    ccf
    inc e
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
    pop af
    nop
    ret z

    nop
    ldh [rP1], a
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
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    rra
    nop
    ld e, a
    nop
    rla

jr_0ad_4d3f:
    nop
    dec hl
    nop
    rlca
    nop
    dec b
    nop
    dec hl
    nop
    ld [de], a
    nop
    add hl, bc
    nop
    ld [de], a
    nop
    ld bc, $0100
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, $f8
    nop
    ldh a, [$08]
    ldh a, [rNR33]
    ldh [$0e], a
    ldh a, [$0a]
    db $f4
    add h
    ld a, b
    ld b, a
    jr c, jr_0ad_4d3f

    inc l
    ld b, c
    ld a, $43
    inc a
    cp $ff
    add hl, bc
    or $02
    db $fd
    inc hl
    call c, $fa05
    dec bc
    push af
    dec b
    ei
    ld a, [bc]
    push af
    adc a
    ld [hl], b
    xor e
    ld d, [hl]
    rst $28
    ld [de], a
    rst $28
    ld [de], a
    ei
    ld b, $ff
    and l
    rst $38
    db $fd
    add b
    nop
    db $e4
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    db $fd
    ldh a, [rIE]
    rst $38
    add e
    nop
    nop
    nop
    inc c
    inc bc
    xor d
    ld [hl], l
    ld l, $c1
    sbc $21
    xor l
    ld d, d
    ld d, [hl]
    xor c
    dec a
    jp nz, $e916

    ld a, [bc]
    push af
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
    ld bc, $0cfe
    di
    pop bc
    ccf
    rra
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ldh [rIE], a
    ld l, [hl]
    sbc a
    cp [hl]
    ld a, a
    adc a
    rst $18
    add a
    rrca
    inc hl
    add a
    add d
    add a
    add c
    add a
    rst $00
    add a
    rst $08
    sbc a
    pop af
    ei
    db $eb
    rst $30
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $20
    rst $38
    rst $00
    rst $28
    rrca
    sbc a
    rra
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    rst $38
    ldh a, [$df]
    ldh [$5f], a
    nop
    ld c, a
    nop
    cpl
    ret nz

    rst $20
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    db $db

jr_0ad_4e11:
    inc h
    cp e
    ld b, h
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
    cp $00
    ld hl, sp+$07
    pop bc
    rra
    ret nz

    rra
    adc $11
    pop hl
    ld e, $7e
    nop
    cp [hl]
    nop
    cp $00
    db $fd
    nop
    ld a, [$fa00]
    nop
    rst $38
    nop
    xor a
    nop
    dec bc
    nop
    jr nc, jr_0ad_4e11

    xor b
    ld d, a
    ld e, $e1
    ld l, d
    sub l
    xor b
    rlca
    inc bc
    nop
    nop
    ld bc, $0041
    ld b, b
    nop
    ret nz

    nop
    pop bc
    ld b, b
    add c
    nop
    ld bc, $a600
    ld bc, $2619
    cp a
    nop
    inc bc
    nop
    ld b, $01
    inc e
    inc bc
    ld [$0017], sp
    rra
    ld b, b
    rra
    ld b, b
    rra
    ld b, b
    rra
    nop
    rra
    nop
    rra
    ld d, b
    rrca
    ld d, b
    rrca
    ld [hl], b
    rrca
    ld h, b
    rra
    db $eb
    inc d
    ldh [rNR10], a
    stop
    stop
    stop
    rra
    nop
    rra
    rrca
    sub b
    rrca
    cp $0f
    ld h, h
    rra
    db $f4
    rrca
    nop
    rra
    and a
    rra
    rra
    rst $28
    rst $18
    rrca
    rst $38
    rrca
    or a
    ld c, a
    ld e, a
    xor a
    cp a
    ld c, a
    or a
    ld c, a
    di
    rrca
    sub a
    ld l, a
    or c
    ld c, a
    adc h
    ld [hl], e
    rlca
    ld hl, sp+$0f
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld [$78ff], sp
    rst $38
    ld a, [$f9ff]
    db $fc
    ld hl, sp-$08
    xor d
    ld hl, sp-$7e
    db $fd
    adc e
    cp $8d
    cp $c5
    ld a, [$f7c8]
    ret nc

    rst $28
    add c
    rst $38
    ld [hl], e
    di
    ld [hl], a
    rst $28
    cp $ff
    db $fc
    cp $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$f0]
    ldh [$f1], a
    ldh [$e3], a
    ret nz

    rst $28
    ldh [$df], a
    add c
    cp $02
    db $fd
    ld [bc], a
    db $fd
    ld bc, $fffe
    nop
    rst $30
    ld [$20df], sp
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    add sp, $00
    add $f8
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc

Call_0ad_4f0a:
    db $fc
    ld hl, sp-$05
    ldh a, [$f9]
    ld [c], a
    rst $38
    nop
    db $fd
    nop
    push af
    nop
    push af
    nop
    ld [$e400], a
    nop
    ret nc

    nop
    ldh [rP1], a
    ld b, b
    nop
    add b
    ld h, b
    ld b, b
    and b
    ld b, b
    and b
    ret nz

    jr nz, jr_0ad_4f4b

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
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    nop
    ldh a, [rP1]
    ld h, b
    nop
    jr nc, jr_0ad_4f4a

jr_0ad_4f4a:
    ld h, b

jr_0ad_4f4b:
    nop
    stop
    ld [$0f00], sp
    nop
    rrca
    nop
    rrca
    db $10
    cpl
    db $10
    rla
    jr z, jr_0ad_4fa2

    jr c, jr_0ad_4f64

    ld a, b
    adc e
    ld [hl], h
    ld hl, sp+$00
    db $f4
    nop

jr_0ad_4f64:
    ld a, [c]
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ccf
    nop
    ld e, $21
    inc a
    inc bc
    inc e
    inc hl
    ret nz

    ccf
    ret nz

    rst $38
    ret nz

    ccf
    inc bc
    db $fc
    nop
    rst $38
    add d
    rst $38
    push de
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ad_4fa2:
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    rst $38
    ld [$50ff], a
    rst $38
    and b
    ld e, a
    adc d
    ld [hl], l
    ld bc, $04ff
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    ld a, h
    sub b
    ld a, b
    jr @-$0e

    ld b, $f9
    rra
    rst $38
    dec d
    rst $38
    adc a
    rst $38

jr_0ad_4fca:
    rra
    rst $38
    rla
    ei
    db $d3
    rst $20
    add e
    rst $00
    rlca
    rlca
    rlca
    rrca
    inc c
    rrca
    dec bc
    inc e
    cpl
    db $10
    ccf
    nop
    or a
    ld c, b
    sub b
    nop
    ld b, b
    nop
    ret nz

    nop
    ld b, b
    nop
    stop
    ld d, b
    nop
    db $f4
    nop
    cp $00
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
    rra
    nop
    inc bc
    nop
    ld h, [hl]
    add b
    call z, $9880
    nop
    inc [hl]
    nop
    db $dd
    jr nz, jr_0ad_4fca

    ld b, b
    ld a, e
    add h
    ld e, [hl]
    and c
    ld b, l
    nop
    ld [bc], a
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
    inc bc
    nop
    db $fc
    nop
    ld a, [$fd00]
    nop
    cp $00
    cp $00
    db $eb
    nop
    cp $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    add b
    nop
    ld b, b
    nop
    ld [hl+], a
    nop
    ld bc, $a800
    nop
    sbc c
    nop
    rst $20
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
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$15]
    rst $38
    xor d

jr_0ad_5071:
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$ffff], a
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
    dec bc
    rst $30
    jr @+$01

    and $79
    jr nz, jr_0ad_5071

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or [hl]
    ld c, c
    rst $38
    nop
    rst $38
    nop
    inc hl
    ld a, h
    ld a, b
    ld a, b
    ld [hl], d
    ld hl, sp-$10
    ld hl, sp-$0e
    ld hl, sp-$03
    ldh a, [$e1]
    ldh a, [$e1]
    ld a, [c]
    xor $e1
    ld [c], a
    ldh [$88], a
    ret nz

    nop
    add b
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
    jr nz, jr_0ad_50c8

jr_0ad_50c8:
    ld d, h
    nop
    add b
    nop
    ld d, b
    nop
    ret nc

    nop
    ld e, b
    nop
    push hl
    nop
    add sp, $00
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    xor b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    stop
    ld c, d
    nop
    cp l
    nop

jr_0ad_50ea:
    cp $00
    rst $18
    jr nz, jr_0ad_50ea

    inc b
    ld a, e
    inc b
    db $db
    inc b
    and a
    nop
    inc d
    nop
    dec b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rst $38
    nop
    ld [bc], a
    nop
    add d
    nop
    ld [bc], a
    nop
    adc d
    nop
    ld b, $00
    ld c, l
    ld [bc], a
    sbc l
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld a, [bc]
    nop
    add a
    nop
    ld [hl+], a
    nop
    ld a, [$7d00]
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    db $fd
    ld [bc], a
    reti


    ld h, $d0
    cpl
    add h
    ld a, e
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
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
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
    db $10
    rst $28
    ld l, e
    sub h
    xor a
    add b
    ld b, a
    sub b
    ld d, d
    add b
    nop
    add b
    nop
    add b
    db $10
    add b
    ld [$0080], sp
    add b
    nop
    add b
    inc hl
    db $fc
    dec sp
    db $fc
    cpl
    ld [hl], b
    rra
    ldh [$7f], a
    nop
    rst $38
    nop
    ld a, l
    add d
    rst $38
    nop
    jr nz, jr_0ad_51b2

jr_0ad_51b2:
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
    inc h
    nop
    sbc $00
    rst $38
    nop
    rst $38
    nop
    ld a, [$ff05]
    nop
    rst $38
    nop
    xor a
    nop
    ld e, a
    nop
    rla
    nop
    dec e
    nop
    ld d, $00
    dec bc
    nop
    ld bc, $0200
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
    inc bc

jr_0ad_51fd:
    nop
    db $fc
    nop
    ld bc, $0000
    nop
    dec bc
    nop
    rlca
    nop
    xor d
    nop
    ld l, l
    nop
    sub $00
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
    rlca
    nop
    ld e, e
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
    jr nz, jr_0ad_51fd

    cpl
    ret nz

jr_0ad_522f:
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$15ff], sp
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    and $01
    db $eb
    db $10
    db $e4
    nop
    nop
    nop
    inc b
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
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    jr nz, jr_0ad_5286

jr_0ad_5286:
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    add d
    nop
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
    and b
    nop
    inc h
    add b
    ld c, b
    jr nz, jr_0ad_522f

    nop
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld [$ff15], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld a, h
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp $00
    xor a
    nop
    ld l, d
    nop
    ld b, $00
    sbc e
    nop
    ld d, $00
    dec bc
    nop
    ld c, $00
    ld d, $00
    dec bc
    nop
    dec b
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rlc b
    ld a, a
    nop
    rst $18
    nop
    cp a
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
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    rrca
    nop
    rrca
    nop
    rla
    nop
    rra
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
    swap h
    add d
    ld a, l
    nop
    rst $38
    dec b
    rst $38
    ld b, $ff
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    ld l, a
    ld b, b
    nop
    ld [$a100], sp
    nop
    ld bc, $8000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    stop
    ld b, h
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
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    db $ed
    rlca
    rst $10
    rlca
    inc h
    rlca
    adc a
    rlca
    rrca
    nop
    ld d, $00
    dec c
    ld [bc], a
    ld d, l
    nop
    jp z, $c100

    nop
    add b
    nop
    add b
    nop
    inc bc
    nop
    ld bc, $0500
    nop
    sub [hl]
    ld bc, $005f
    ld e, e
    inc b
    cp l
    ld [bc], a
    ld e, $01
    ld l, a
    nop
    cpl
    nop
    cpl
    nop
    xor a
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    dec b
    nop
    dec bc
    nop
    daa
    nop
    dec [hl]
    nop
    ld b, l
    nop
    cp e
    nop
    ld [hl], l
    ld [bc], a
    cp [hl]
    ld bc, $01de
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    add sp, $17
    ldh a, [rIF]
    ret nc

    cpl
    ldh a, [rIF]
    ld [hl], c
    adc a
    ld [$7517], a
    adc a
    cp d
    ld c, a
    ld d, l
    cp a
    xor d
    rst $38
    ld d, l
    rst $38
    xor [hl]
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
    rst $38
    rst $38
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
    ld a, [hl+]

Jump_0ad_53ff:
    dec b
    dec e
    jr nz, jr_0ad_5440

    nop
    ld b, b
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
    nop
    and b
    nop
    inc b
    nop
    nop
    nop
    add c
    nop
    stop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    add hl, bc
    nop
    inc b
    nop
    ld sp, hl
    ld b, $d7

jr_0ad_5433:
    jr z, jr_0ad_5433

    ld bc, $fd7e
    ld h, l
    cp $05
    cp $fe
    db $fd
    sub l
    ld l, d

jr_0ad_5440:
    xor b
    ld d, a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    and [hl]
    ld e, c
    ld c, c
    or [hl]
    ret nc

    cpl
    ld c, d
    or a
    ld h, b
    sbc a
    ld d, h
    xor a
    adc c
    ld a, a
    ld l, d
    sbc a
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $18
    ccf
    cpl
    ld e, l
    or a
    ld l, e
    ld d, a
    or e
    ld e, a
    ld h, c
    sbc a
    adc d
    ld a, a
    srl a
    pop bc
    ccf
    sub c
    ld a, a
    inc de
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $18
    ccf
    xor a
    ld e, a
    ld b, c
    cp a
    inc b
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    cp a
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
    rst $38
    rst $38
    rra
    rst $38
    and [hl]
    ld bc, $0081
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    adc d
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
    add b
    ld a, a
    ld b, b
    cp a
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
    nop
    ld b, b
    nop
    stop
    nop
    nop
    inc b
    nop
    jr nz, jr_0ad_550c

jr_0ad_550c:
    ld b, b
    nop
    dec b
    nop
    ld c, c
    nop
    cp e
    ld b, b
    cp l
    ld b, b
    adc a
    ld [hl], b
    nop
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    ret nz

    ccf
    call nc, $e02b
    rra
    inc l
    db $d3
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
    jr nz, @+$01

    ret nz

    rst $38
    ldh [rIE], a
    add sp, -$01
    pop af
    rst $38
    push af
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ld [$f7ff], a
    rst $38
    cp $ff
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    ld a, a
    ld d, b
    nop
    ld bc, $0800
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
    nop
    stop
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
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    sub b
    nop
    ld b, b
    nop
    add hl, bc
    nop
    daa
    nop
    dec hl
    nop
    inc de
    nop
    scf
    nop
    ld d, e
    ld [$402f], sp
    ld [hl], a
    nop
    ld a, a
    nop
    db $fd
    ld [bc], a
    ld d, l
    xor d
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $05ff
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ccf
    daa
    adc b
    cp [hl]
    ld b, c
    ld e, a
    jr nz, jr_0ad_55eb

    nop
    ld [bc], a
    nop
    nop
    nop
    dec b
    ld [$0000], sp
    ld de, $0000
    nop
    nop
    nop
    nop

jr_0ad_55eb:
    nop
    nop
    nop
    nop

Call_0ad_55ef:
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop

Call_0ad_55f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
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
    nop
    nop
    stop
    nop
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    nop
    nop
    ld a, [bc]
    nop
    ld hl, $0400
    ld bc, $0010
    nop
    nop
    inc b
    nop
    inc b
    nop
    ld b, $00
    ld c, $00
    ld l, $01
    ld e, $01
    ccf
    nop
    db $dd
    ld [bc], a
    ld l, [hl]
    ld bc, $02f5
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp [hl]
    ld bc, $00ff
    dec a
    ld b, d
    cp l
    ld b, d
    reti


    ld h, $a9
    ld d, [hl]
    sbc $21
    pop af
    ld c, $a2
    ld d, l
    ld b, c
    cp [hl]
    ld d, c
    xor [hl]
    add b
    ld a, a
    ccf
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    rst $38
    ld e, a
    rst $38
    rst $38
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
    ld l, e
    sub a
    cp a
    ld b, e
    or a
    ld c, e
    rst $28
    inc de
    rst $10
    dec hl
    xor c
    ld d, e
    dec [hl]
    ld b, e
    xor c
    inc de
    ld de, $5903
    inc bc
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0001
    ld bc, $0180
    nop
    ld bc, $0120
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0108
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
    inc b
    nop
    stop
    add d
    nop
    ld [$0400], sp
    nop
    ld d, d
    nop
    xor d
    inc b
    ld l, d
    nop
    ld a, [hl]
    nop
    ld hl, sp+$4f
    db $fc
    rrca
    ld a, [$fc1f]
    rra
    rst $38
    rra
    db $fd
    ld e, a
    ld a, [$f77f]
    ccf
    ld e, a
    ld a, a
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
    rst $38
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    add e
    ld a, h
    add d
    ld a, l
    jr z, @+$01

    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    cp [hl]
    rst $38
    ld a, a
    rst $38
    cp $ff
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
    rra
    ldh [$5f], a
    ldh [$af], a
    ldh a, [rVBK]
    ldh a, [$a7]
    ld hl, sp-$29
    ld hl, sp-$5d
    db $fc
    pop de
    cp $a8
    rst $38
    db $f4
    rst $38
    xor d
    rst $38
    push af
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    push af
    ld a, [bc]
    di
    inc c
    pop bc
    ld a, $89
    ld a, [hl]
    inc d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    call nc, $eaff
    rst $38
    ld a, l
    rst $38
    xor e
    rst $38
    push af
    rst $38
    xor d
    rst $38
    rst $10
    rst $38
    db $eb
    rst $38
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    db $eb
    rst $38
    push af
    rst $38
    ld a, [$f5ff]
    rst $38
    ei
    rst $38
    push af
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $30
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

jr_0ad_57ad:
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
    ret nz

    ld e, $e1
    jr jr_0ad_57ad

    db $10
    rst $28
    ld [bc], a
    rst $38
    dec b
    rst $38
    add d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp d
    rst $38
    db $fd
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0905], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0ad_5824

    dec b
    dec b
    dec b
    dec b
    dec b
    rrca
    rrca
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ad_583b

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    rrca
    jr z, jr_0ad_584c

    ld a, [hl+]

jr_0ad_5824:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ad_585c

    ld [hl-], a
    dec b
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ad_586d

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_0ad_583b:
    ld b, c
    ld b, d
    ld b, e
    dec b
    dec b
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    rrca
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_0ad_584c:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    rrca
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_0ad_585c:
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    rrca
    ld h, [hl]
    ld h, a
    dec b
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_0ad_586d:
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    rrca
    ld [hl], e
    ld [hl], h
    dec b
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
    rrca
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
    rrca
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
    ld a, [hl+]
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
    rrca
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_000_2adb

    call c, $dedd
    rrca
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [hl+]
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld a, [hl+]
    ld [$eceb], a
    rrca
    db $ed
    xor $ef
    ld d, a
    ldh a, [$f1]
    ld a, [c]
    di
    rrca
    db $f4
    push af
    jp hl


    or $f7
    ld hl, sp-$07
    rrca
    ld a, [$fcfb]
    db $fd
    cp $ff
    rrca
    rrca
    rrca
    nop
    ld bc, $2a02
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    rrca
    rrca
    rrca
    rrca
    dec bc
    inc c
    dec c
    ld c, $63
    rrca
    db $10
    ld de, $1312
    inc d
    rrca
    rrca
    rrca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    nop
    ld bc, $0101
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
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    ld bc, $0001
    ld b, $01
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    inc b
    ld b, $01
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    nop
    ld bc, $0401
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    inc b
    ld b, $06
    ld bc, $0106
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld b, $01
    ld bc, $0606
    ld bc, $0101
    ld bc, $0001
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    rlca
    rlca
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    jr nz, @+$03

    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0820], sp
    ld [$0808], sp
    add hl, bc

jr_0ad_5a6c:
    add hl, bc
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18

jr_0ad_5a79:
    ccf
    rst $28
    rra
    rst $30
    rrca
    ld a, e
    add a
    add hl, sp
    rst $00
    sbc l
    ld h, e
    adc $31
    rst $00
    jr c, jr_0ad_5a6c

    inc e
    ld a, c
    add [hl]
    cp b
    rst $00
    ld [$0cf7], sp
    di
    ld d, l
    cp d
    inc hl
    call c, $cf30
    jr nz, jr_0ad_5a79

    inc b
    ei
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    sub b
    ld a, a
    adc b
    ld a, a
    ld c, h

jr_0ad_5aa7:
    cp a
    add $3f
    db $e3
    rra
    xor l
    ld d, e
    push bc
    jr c, jr_0ad_5aa7

    add hl, bc
    db $fc
    inc bc
    db $fc
    inc bc
    or $09
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    nop
    cpl
    nop
    rra
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    dec b
    nop
    ld h, c
    add b
    call c, Call_000_1320
    inc c
    inc b
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop

Jump_0ad_5afd:
    nop
    nop
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
    rst $38
    nop
    ld a, a
    nop
    sbc a
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
    ld l, a
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $18
    nop
    sbc a
    nop
    cp a
    nop
    dec sp
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
    nop
    rst $38
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
    ccf
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
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    adc a
    ld a, a
    rst $28
    rra
    scf
    rst $08
    dec sp
    rst $00
    sbc l
    ld h, e
    ld a, [bc]
    push af
    add $39
    ld b, c
    cp [hl]
    db $10
    rst $28
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
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    ld [$86ff], sp
    ld a, a
    ld a, [$3107]
    rrca
    ret nz

    ccf
    ldh a, [rIF]
    xor c
    ld d, [hl]
    sub a
    ld l, b
    pop af
    nop
    rst $20
    nop
    db $ed
    ld [bc], a
    di
    inc b
    rst $38
    nop
    ld a, [$fe01]
    nop
    ld hl, sp+$00
    db $fd
    nop
    cp $00
    db $fd
    ld [bc], a
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    sbc a
    ld h, b
    ld h, a
    jr jr_0ad_5c03

    rlca
    inc de
    nop
    ld d, a
    nop
    dec c
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    dec b
    nop
    inc b
    nop
    ld [$0000], sp

Call_0ad_5bff:
    nop
    ld bc, $0100

jr_0ad_5c03:
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [$0000], sp
    nop
    nop
    nop
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
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
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
    ld h, b
    rst $38
    or b
    ld a, a
    sbc b
    ld a, a
    inc c
    rst $38
    add d
    ld a, a
    adc c
    ld [hl], a
    or b
    ld c, a
    ld d, b

jr_0ad_5c4d:
    adc a
    jr c, jr_0ad_5c57

    ld a, c
    ld b, $f3
    inc c
    ld l, a
    db $10
    ret c

jr_0ad_5c57:
    inc hl
    inc h
    inc de
    and [hl]
    ld bc, $82cd
    ld c, [hl]
    add c
    dec c
    ld [bc], a
    and a
    jr nc, jr_0ad_5c03

    ld [hl], b
    adc h
    ld a, b
    pop hl
    inc a
    ret nc

    jr c, jr_0ad_5c4d

    dec de
    pop hl
    inc bc
    ld a, [c]
    rlca
    or $03
    pop af
    rrca
    db $fc
    rlca
    ld a, [$ff07]
    inc bc
    ccf
    ret nz

    add $38
    ret nc

    ld c, $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld l, a
    nop
    cpl
    nop
    ld e, a
    nop
    sbc a
    nop
    ccf
    nop
    rst $18
    nop
    ld a, a
    nop
    ld e, l
    nop
    ccf
    nop
    ld e, a
    nop
    rrca
    nop
    ld b, a
    nop
    cpl
    nop
    rla
    nop
    rlca
    nop
    rra
    nop
    dec bc
    nop
    dec d
    nop
    rla
    nop
    dec hl
    nop
    dec bc
    nop
    dec bc
    nop
    ld [bc], a
    nop
    ld a, [bc]
    nop
    inc bc
    nop
    ld bc, $0300
    nop
    daa
    nop
    ld bc, $0300
    nop
    ld bc, $0500
    nop
    inc bc
    nop
    dec b
    nop
    add hl, bc
    nop
    inc b
    nop
    dec b
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $0d00
    nop
    ld bc, $0400
    nop
    ld [$0300], sp
    nop
    ld a, [de]
    nop
    add a
    nop
    rrca
    nop
    ld bc, $ff00
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
    ld [bc], a
    db $fd
    inc c
    di
    db $10
    rst $28
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    jr @+$01

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
    add b
    rst $38
    ld b, b
    rst $38
    and b
    ld a, a
    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    inc bc
    rst $38
    ld hl, $20df
    rst $18
    ld b, b
    cp a
    call nz, $043b
    ld a, e
    ret nz

    ccf
    add sp, $17
    ret c

    daa
    ld hl, sp+$07
    ret


    ld h, $4d
    ld [bc], a
    ld e, e
    add h
    sbc a
    ret nz

    ld c, a
    sub b
    inc d
    xor c
    dec l
    or b
    ld de, $2f38
    ld a, b
    ld [hl], d
    add hl, sp
    db $d3
    ld a, d
    jp nz, Jump_000_207b

    ld [hl], a
    sub e
    ld [hl], $d7
    inc bc
    rst $20
    ld bc, $00e6
    db $e3
    nop
    push bc
    ld [$0ee4], sp
    rst $28
    ld b, $e6
    dec de
    ld a, [$f40c]
    ld c, $fe
    ld b, $fa
    ld b, $fc
    nop
    db $fc
    nop
    cp $00
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
    sbc a
    nop
    rst $28
    nop
    ld a, a
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
    ld [hl], a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28
    nop
    rst $30
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
    ld a, a
    cp a
    rst $18
    cp a
    cp a
    rst $18
    rst $28
    rst $18
    rst $08
    rst $38
    rst $38
    rst $28
    rst $28
    rst $30
    rst $38
    rst $30
    ldh a, [rIE]
    db $f4
    ei
    pop bc
    cp $2f
    ret nc

    ccf
    ret nz

    ld b, [hl]
    cp c
    add d
    ld a, a
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
    ld bc, $03ff
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf

Call_0ad_5e23:
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$00ff], sp
    rst $38
    add d
    rst $38
    ld h, c
    rst $38
    db $10
    rst $38
    jr @+$01

    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $40ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub d
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld d, d
    cp a
    and $1f
    add $3f
    xor d
    rla
    ld a, [hl+]
    sub a
    sbc b
    rlca
    ld hl, sp+$07
    dec d
    ld [hl+], a
    ld sp, $b302
    nop
    rrca
    nop
    ld [hl], d
    inc b
    ld a, $00
    ld [hl], a
    nop
    or $40
    ld a, d
    ld h, h
    ld h, e
    or h
    ld [hl], d
    ret nz

    ld h, [hl]
    add sp, -$4e
    ld l, h
    ret c

    and [hl]
    ld [$eecc], a
    db $ec
    ld l, [hl]
    ld h, [hl]
    add [hl]
    xor d
    jp z, Jump_0ad_4ccc

    xor $6e
    and $a6
    ld l, d
    ld [$cc0c], a
    ld c, $ee
    ld c, $e6
    ld b, $e2
    ld a, [de]
    ld hl, sp+$0c
    db $f4
    ld c, $fe
    ld b, $fa
    ld b, $fa
    ld b, $fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    jp Jump_000_0ffc


    ldh a, [$3f]
    ret nz

    cp $01
    ld sp, hl
    rlca
    rst $08
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    pop af
    cp $f0
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    or e
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    jr @+$01

    ld de, $03fe
    db $fc
    add c
    cp $40
    rst $38
    ld h, b
    rst $38
    inc h
    ei
    ld b, $f9
    add a
    ld hl, sp+$43
    db $fc
    ld hl, $31fe
    cp $08

jr_0ad_5f21:
    rst $38
    dec c

jr_0ad_5f23:
    cp $86

jr_0ad_5f25:
    rst $38
    add e
    rst $38
    and e
    rst $38
    and c
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    jr nz, @+$01

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
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ld a, b
    add a
    ld c, $f1
    jr z, jr_0ad_5f23

    jr z, jr_0ad_5f25

    ld l, h
    sub e
    xor b
    ld d, a
    db $ec
    inc de
    rst $28
    db $10
    dec d
    ld c, d
    ret nc

    inc bc
    ld b, l
    sub d
    jr nc, jr_0ad_5f21

    and d
    ld b, c
    db $d3
    add b
    ret c

jr_0ad_5f63:
    jp $e14a


    add e
    ld h, b
    db $eb
    add b
    add $c1
    db $ed
    ldh [$e5], a
    ld h, b
    ld h, b
    and c
    and h
    pop bc
    rst $00
    ldh [$e6], a
    ldh [$e3], a
    ld h, b
    ld h, c
    jr nz, jr_0ad_5f63

    add b
    ld h, h
    jp nz, $e264

    ldh a, [$62]
    or d
    ld h, b
    ldh [rNR41], a
    ret nz

    ld [hl+], a
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    di
    nop
    pop af
    nop
    ld hl, sp+$00
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$07
    xor $11
    db $f4
    dec bc
    ld a, [$fe05]
    rst $38
    ld hl, sp-$01
    db $e3
    db $fc
    add a
    ld hl, sp+$3f
    ret nz

    cp $01
    ld sp, hl
    rlca
    rst $28
    rra
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
    rst $38
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
    ld sp, hl
    cp $e1
    cp $98
    rst $20
    ld [$03f7], sp
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld a, a
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
    rst $38
    rst $38
    db $fc
    rst $38
    di
    db $fc
    rst $08
    ldh a, [$9e]
    ldh [$7d], a
    add b
    ld a, a
    add b
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]

Call_0ad_6002:
    db $f4
    nop
    ld hl, sp+$00
    db $f4
    nop
    add sp, $00
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    add b
    ldh [$80], a
    cp h
    ret nz

    rst $38
    ret nz

    ld e, a
    ldh [$7f], a
    ldh [$af], a
    ld [hl], b
    rst $18
    jr nc, jr_0ad_6080

    cp b
    rrca
    ld hl, sp+$28
    call c, $cc76
    dec d
    xor $0b
    or $08
    rst $30
    ld bc, $01ff
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
    ld [bc], a

jr_0ad_6045:
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    or b
    ld c, a
    and b
    ld e, a
    add b
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    ld a, [bc]
    rst $38
    ld b, c
    cp a
    ld [$ca1f], a
    ccf
    ld b, h
    cp a
    ld h, b
    sbc a
    push af
    rrca
    add l
    ccf
    ld l, b
    sub a
    ld bc, $bcdf
    ld b, a
    ld l, [hl]
    rla
    add d
    rra
    jr nc, jr_0ad_6045

    and e
    ld c, [hl]
    ccf
    ld b, e
    ld d, a
    dec hl
    ld de, $e60f
    dec c

jr_0ad_6080:
    adc b
    ld h, a
    ld de, $5f67
    ld hl, $2d12
    add hl, de
    ld b, $6a
    rlca
    ld b, $73
    ld b, b
    inc sp
    rra
    ldh [$fe], a
    ld bc, $07f9
    rst $20
    rra
    sbc a
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
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    add sp, -$09
    xor h
    db $d3
    ld d, b
    xor a
    inc bc
    rst $38
    add hl, bc
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld h, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    di
    db $fc
    rst $28
    ldh a, [$9f]
    ldh [$7f], a
    add b
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    ld b, b
    nop
    jr nz, jr_0ad_60ea

jr_0ad_60ea:
    ld b, b
    nop
    add b
    nop
    nop
    nop
    ld a, [$fc00]
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
    cp $01
    rst $00
    nop
    db $dd
    inc bc
    cp e
    ld b, $eb
    inc e
    push af
    dec sp
    ld d, l
    xor $2a
    db $dd
    xor h
    ld [hl], e
    dec d
    ld l, [hl]
    ld l, d
    dec e
    dec e
    inc sp
    dec d
    adc [hl]
    ld c, d
    sbc l
    adc h
    jp $c66d


    ld b, d
    push hl
    inc [hl]
    db $e3
    inc l
    di
    ld d, $f9
    ld d, $f9
    ld a, [bc]
    db $fd
    add hl, bc
    cp $05
    cp $14
    rst $28
    ld [bc], a
    rst $38
    dec bc
    rst $30
    ld bc, $05ff
    ei
    nop
    rst $38
    ld [bc], a
    db $fd
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
    rst $38
    jr z, @+$01

    ld d, b
    rst $38
    ld d, c
    rst $38
    and d
    rst $38
    sbc h
    rst $38
    jr z, @+$01

    and l
    rst $38
    jp nc, $4eff

    rst $38
    inc d
    rst $38
    ld [de], a
    rst $38
    ld e, c
    rst $38
    push hl
    ld a, a
    ld [hl+], a
    rst $38
    ret z

    cp a
    adc d
    db $fd
    jr nz, @+$01

    ld a, b
    or a
    sbc d
    push af
    ldh [$df], a
    sbc a
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
    ld b, c
    cp a
    ld b, $ff
    rra
    rst $38
    rrca
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    cp $e7
    ld hl, sp-$71
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $28
    db $10
    db $fd
    nop
    pop af
    nop
    ld b, h
    nop
    nop
    nop
    db $fd
    nop
    xor $00
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    ld [bc], a
    ld bc, $0748
    or b
    rrca
    ld d, h
    cpl
    nop
    rst $38
    jr nz, @+$01

    db $fd
    ld [bc], a
    and $19
    adc b
    ld [hl], a
    or e
    call z, $bb04
    adc b
    ld [hl], a
    or e
    call z, $bb44
    adc b
    ld [hl], a
    inc sp
    call z, $bb04
    sub b
    ld h, a
    sub d
    call z, $b942
    add b
    ld [hl], a
    or d
    call z, $b946
    adc b
    ld [hl], a
    ld d, b
    xor $02
    db $fd
    jr nz, @+$01

    ld b, b
    rst $38
    ld [$b1ff], sp
    ld a, a
    db $e4
    ccf
    ld [$20ff], sp
    rst $18
    add c
    rst $38
    add d
    rst $38
    ld b, h
    rst $38
    ld c, c
    rst $30
    ld h, e
    rst $38
    inc h
    ei
    ld d, $f9
    ld d, $f9
    dec bc
    db $fc
    ld a, [bc]
    db $fc
    dec b
    cp $05
    cp $02
    rst $38
    ld b, e
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    inc c
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
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
    inc a
    rst $38
    jr nc, @+$01

    adc b
    rst $30
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    daa
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
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
    cp $ff
    db $fc
    rst $38
    db $e3
    db $fc
    rst $08
    ldh a, [$1f]
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, [c]
    nop
    ret nc

    nop
    add h
    nop
    sub b
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
    cp $00

jr_0ad_62ac:
    rst $30
    nop
    add hl, hl
    nop
    nop
    nop

jr_0ad_62b2:
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
    inc c
    inc bc
    jr jr_0ad_62c7

    db $10
    inc c
    adc b
    inc sp
    ret c

    ld h, $e1

jr_0ad_62c7:
    inc e
    ret z

    inc sp
    sub b
    ld l, [hl]
    and b
    ld e, l
    adc h
    ld [hl], e
    ld de, $26ee
    reti


    adc b
    ld [hl], a
    ld de, $66ee
    sbc c
    add b
    ld [hl], a
    jr nc, jr_0ad_62ac

    ld h, [hl]
    sbc c
    add h
    ld [hl], e
    jr nz, jr_0ad_62b2

    inc b
    sbc c
    inc b
    ld [hl], e
    nop
    xor $05
    sbc b
    ld b, b
    inc sp
    ld [$40e6], sp
    sbc h
    adc b
    inc sp
    nop
    rst $20
    db $10
    adc $45
    cp b
    adc b
    ld [hl], e
    add hl, de
    and $20
    call c, $fb00
    ld [$10f7], sp
    xor $00
    db $fd
    inc c

jr_0ad_6309:
    di
    ld d, c
    xor $ab
    call c, $fb14
    jr z, jr_0ad_6309

    ld d, l
    xor $4a
    cp l
    or h
    ld a, e
    ld a, d
    rst $20
    and l
    ld e, [hl]
    sbc $39
    ret


    scf
    ld [hl], $cf
    dec c
    sbc $3c
    bit 7, e
    rst $00
    ld e, [hl]
    rst $20
    ld hl, sp-$19
    db $ec
    di
    db $fd
    di
    or $f9
    rst $38
    ld hl, sp-$01
    db $fc
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    ccf
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
    db $fc
    rst $38
    ldh a, [rIE]
    call nz, $9ffb
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
    rst $30
    nop
    ld c, b
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
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld l, h
    nop
    ld b, c
    nop
    ld h, e
    nop
    add [hl]
    ld bc, $031c
    dec [hl]
    ld c, $e2
    dec e
    adc b
    ld [hl], a
    ld de, $046e
    dec sp
    adc b
    scf
    ld d, e
    adc h
    ld d, h
    adc e
    xor c
    ld b, [hl]
    ld [hl-], a
    push bc
    ld b, b
    or e
    dec de
    ldh [rNR50], a
    reti


    dec c
    ldh a, [$08]
    db $e4
    ld b, h
    sbc b
    ret nz

    inc sp
    ld [$44e6], sp
    sbc c
    ret nz

    inc sp
    ld [$45e6], sp
    sbc b
    ld c, h
    or e
    add hl, de
    and $01
    call c, Call_000_3bc0
    db $10
    rst $20
    db $10
    adc $04
    cp c
    adc b
    ld [hl], e
    nop
    and $50
    adc h
    ld a, [bc]
    ld sp, $6780
    ld [bc], a
    call z, $9920
    inc b
    ld [hl], e
    nop
    xor $41
    sbc h
    ld c, b
    inc sp
    db $10
    rst $20
    ld [de], a
    call z, $b906
    dec b
    ld [hl], e
    inc bc
    xor $c1
    sbc h
    call nz, Call_000_283b
    rst $30
    dec [hl]
    adc $6a
    sbc l
    sub l
    ld a, e
    ld a, d
    rst $20
    and l
    sbc $5a
    cp l
    or l
    ld a, e
    ld d, d
    rst $28
    and l
    sbc $5a
    cp l
    or c
    ld a, a
    ld d, d
    rst $28
    xor h
    rst $18
    jr @+$01

    jr nc, @+$01

    ld b, c
    cp $81
    rst $38
    dec c
    di
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [hl], b
    rst $38
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
    pop bc
    rst $38
    add c
    rst $38
    jp $83ff


    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ld b, c
    cp [hl]
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
    cp a
    nop
    cpl
    nop
    ld [hl+], a
    nop
    ld bc, $0000
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
    db $fc
    inc bc
    ld hl, sp+$07
    ld h, b
    rra
    ld h, d
    dec e
    pop de
    ld a, $00
    rst $38
    adc d
    db $dd
    adc $33
    ld b, h
    xor $66
    sbc c
    ld c, d
    scf
    inc sp
    call z, $9923
    ld de, $0966
    call z, Call_000_3388
    ld de, $1166
    call z, Call_000_3388
    ld bc, $5166
    adc h
    ld [$9933], sp
    ld h, [hl]
    ld [hl+], a
    ld e, l
    inc b
    dec sp
    cp b
    rlca
    ld d, e
    adc h
    ret nz

    dec bc
    add b
    ld h, a
    ld hl, $02c6
    or c
    ld a, [bc]
    ld [hl], c
    dec c
    ldh [rP1], a
    call c, Call_000_38c6
    sbc c
    ld h, [hl]
    ld sp, $06ce

jr_0ad_64df:
    cp c
    inc d
    ld h, e
    jr nz, @-$30

    inc b
    sbc c
    ld b, b
    inc sp
    add hl, bc
    and $11
    call z, $3982
    db $10
    ld h, a
    jr nz, @-$30

    inc h
    sbc c
    ld c, h
    inc sp
    jr jr_0ad_64df

    inc bc
    call c, $b906
    add c
    ld [hl], a
    ld de, $ebee
    sbc h
    call nc, Call_000_2a3b
    rst $30
    ld [hl], l
    adc $6a
    sbc l
    sub l
    ld a, e
    ld l, d
    rst $30
    and l
    sbc $4a
    cp l
    sub h
    ld a, e
    ld h, c
    cp $82
    db $fd
    ld c, l
    or e
    sbc e
    ld h, a
    cpl
    rst $18
    ld a, a
    sbc a
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
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr c, @+$01

    inc a
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ld [hl], c
    pop af
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, c
    rst $38
    db $76
    pop af
    rst $30
    ldh a, [$f7]
    ldh a, [$f7]
    ld hl, sp-$18
    rst $20
    jp hl


    and $f4
    ei
    ld a, [c]
    pop af
    di
    ldh a, [$f9]
    ld hl, sp-$02
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
    cp a
    ld a, a
    rst $18
    ccf
    rst $08
    ccf
    rst $20
    rra
    di
    rrca
    ld sp, hl
    rlca
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    sbc a
    nop
    ld c, [hl]
    ld bc, $031d
    inc a
    rlca
    ld l, d
    dec e
    jp c, $5537

    xor $f5
    sbc e
    xor d
    ld [hl], a
    ld a, [hl+]
    db $dd
    push de
    dec sp
    dec d
    ld l, [hl]
    ld [$ae1d], a
    inc de
    dec b
    adc $67
    adc c
    sub d
    ld h, a
    dec [hl]
    jp nz, $b953

    dec l
    ld [hl], b
    cp b
    call z, $ba14
    sbc e
    ld h, [hl]
    ld a, [hl-]
    call $bb15
    ld a, [de]
    ld h, a
    dec de
    call z, $3b91
    ld a, [de]
    ld h, a
    ld sp, $14ce
    cp c
    inc c
    ld [hl], e
    dec c
    and $40
    sbc l
    add hl, bc
    inc sp
    sbc c
    ld h, [hl]
    inc de
    call z, $3b81
    ld [de], a
    ld h, a
    ld [hl-], a
    call z, Call_000_1926
    ld b, [hl]
    inc sp
    ld hl, $820e
    dec e
    add hl, de
    inc bc
    adc d
    ld b, a
    dec bc
    call nz, Call_000_2192
    nop
    ld [hl], e
    dec de
    ldh [$6d], a
    sbc b
    ld d, l
    jr c, jr_0ad_6609

    and $b4
    adc $46
    cp c
    adc l
    ld [hl], e
    ld d, d
    rst $28
    xor a
    call c, $bb54
    xor e
    ld [hl], a
    ld d, h
    rst $28
    xor d
    db $dd
    call nc, Call_000_293b
    or $53

jr_0ad_6609:
    db $ec
    and a
    reti


    adc e
    ld [hl], a
    scf
    rst $08
    ld c, a
    sbc a
    sbc a
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
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld b, c
    rst $38
    ldh [rIE], a
    ld [hl], b
    ld a, a
    jr c, jr_0ad_667f

    inc e
    rra
    ld c, $8f
    ccf
    rst $38
    dec sp
    ei
    add hl, bc
    ld sp, hl
    nop
    ld hl, sp+$20
    call c, $cf33
    add hl, de
    rst $20
    inc c
    di
    rlca
    ld hl, sp+$03
    ld a, h
    add c
    cp [hl]
    nop
    rra
    add d
    adc l
    ldh a, [$fe]
    ld sp, hl
    rst $38
    di
    di
    ld sp, hl
    ld sp, hl
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
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    adc a
    ld a, a
    add a
    ld a, a
    jp Jump_0ad_53ff


    cp a
    ld b, c

jr_0ad_667f:
    rst $38
    adc b
    rst $38
    and b
    ld a, a
    ld c, h
    rst $38
    ld d, l
    cp e
    and $7f
    xor d
    db $dd
    ld [hl], e
    cp a
    ld d, h
    rst $28
    xor c
    rst $18
    xor d
    ld [hl], a
    ld d, l
    xor $5d
    cp e
    xor d
    ld [hl], a
    call c, Call_0ad_55ef
    cp e
    xor d
    ld [hl], a
    ld l, [hl]
    db $dd
    push de
    dec sp
    ld l, d
    scf
    xor l
    ld e, $5a
    sbc l
    sbc a
    ld b, e
    db $ed
    add $72
    add l
    db $ed
    inc sp
    ld d, [hl]
    jp hl


    xor e
    call c, $b857
    rst $18
    ld h, [hl]
    xor [hl]
    db $dd
    ld d, l
    cp e
    xor d
    ld [hl], a
    push af
    adc $7b
    sbc l
    xor e
    ld [hl], a
    ld d, l
    xor $aa
    db $dd
    push de
    dec sp
    ld [$ad77], a
    sbc $53
    cp l
    xor e
    ld [hl], a
    ld d, a
    xor $aa
    db $dd
    push de
    dec sp
    ld l, d
    rst $30
    db $fd
    adc $5a
    cp l
    scf
    ld a, e
    ld d, $6f
    db $ed
    ld e, $38
    sbc a
    ldh [$1f], a
    ld sp, $bece
    pop bc
    ld e, e
    and a
    rla
    rst $28
    cpl
    rst $18
    rst $18
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ad_66fd:
    rst $38
    rst $38
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
    ld a, [$f1fd]
    cp $c1
    cp $84
    ei
    jr jr_0ad_66fd

    dec de
    rst $20
    ld c, a
    or a
    jp $d13f


    ccf
    ld a, [hl-]
    db $fd
    rst $30
    ld hl, sp-$05
    db $fc
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fe
    rst $38
    db $fc
    rst $38
    rst $38
    db $fd
    ld sp, hl
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    daa
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec bc
    rst $30
    ld b, l
    ei
    add h
    ei
    di
    db $fc
    ld [hl-], a
    db $fd
    cp l
    cp $c1
    adc $8a
    rrca
    sbc a
    rra
    ld a, a
    rst $38
    db $fd
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rst $30
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
    ccf
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    ld b, e
    rst $38
    sub c
    rst $38
    and b
    ld a, a
    call z, $90ff
    rst $38
    and d
    ld a, a
    call z, Call_0ad_5bff
    cp l
    and e
    ld a, a
    push de
    xor $3b
    db $dd
    or e
    ld a, a
    ld b, h
    rst $38
    xor d
    db $dd
    ld [hl], a
    cp e
    db $76
    rst $28
    xor d
    db $dd
    ld d, l
    cp e
    ld h, [hl]
    rst $38
    xor h
    rst $18
    ld d, l
    cp e
    xor d
    ld [hl], a
    db $dd
    ld l, $79
    sbc a
    and e
    ld e, a
    db $76
    rst $08
    sub d
    db $ed
    ld l, l
    or e
    ld l, h
    di
    jp z, Jump_0ad_5afd

    cp l
    and c
    ld a, [hl]
    ld d, [hl]
    rst $28
    xor d
    db $dd
    ld [hl], l
    cp e
    ld l, d
    rst $30
    call z, Call_000_1aff
    db $fd
    jr nc, @+$01

    ld h, l
    cp $aa
    db $dd
    ld b, e
    cp a
    sub a
    ld l, a
    ccf
    rst $08
    ld e, a
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    pop hl
    cp $e2
    db $fd
    ld b, b
    rst $38
    ld bc, $63ff
    sbc a
    ld h, a
    sbc a
    ld c, a
    cp a
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
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$11
    rra
    rst $20
    rra
    di
    rrca
    ld sp, hl
    rlca
    db $fc
    inc bc
    ld a, $c1
    ld e, a
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$05
    db $fc
    db $fd
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
    ld e, a
    cp a
    cpl
    rst $18
    rlca
    rst $38
    inc bc
    rst $38
    add l
    ei
    ret nz

    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ret c

    rst $38
    jp z, $fcff

    rst $38
    db $fd
    rst $38
    xor a
    rst $38
    push af
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ld b, a
    rst $38
    add e
    rst $38
    ld sp, $60ff
    rst $38
    adc b
    rst $38
    jr nc, @+$01

    ld h, [hl]
    rst $38
    call z, $11ff
    rst $38
    ld h, [hl]
    rst $38
    call z, $99ff
    rst $38
    or e
    ld a, a
    ld b, [hl]
    rst $38
    sbc b
    rst $38
    inc sp
    rst $38
    ld h, [hl]
    rst $38
    call z, $59ff
    cp a
    and e
    ld a, a
    add $ff
    adc b
    rst $38
    ld sp, $a4ff
    ld a, a
    ld [$51ff], sp
    cp a
    add a
    ld a, a
    rra
    rst $28
    rrca
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    dec c
    di
    dec bc
    rst $30
    ld b, a
    cp a
    cpl
    rst $18
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
    cp $ff
    db $fd
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$12
    pop af
    sbc $e1
    db $fc
    add e
    ld a, [c]
    dec c
    ldh [$1f], a
    ldh a, [rIF]
    db $d3
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
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    rst $08
    ccf
    db $e3
    rra
    ei
    rlca
    ld hl, sp+$07
    cp $81
    rst $38
    ret nz

    rst $38
    ldh [$f7], a
    ld hl, sp-$05
    db $fc
    db $fd
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
    rst $18
    ccf
    rrca
    rst $38
    rlca
    rst $38
    dec bc
    rst $30
    add l
    ei
    ret z

    rst $30
    ret z

    rst $30
    ld d, b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    cp $ff
    ld l, $ff
    or $ff
    cp $ff
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    jp $81ff


    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    call z, Call_000_18ff
    rst $38
    ld [hl], d
    rst $38
    call z, $91ff
    rst $38
    inc hl
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    and h
    ei
    add b
    rst $38
    ld bc, $03ff
    rst $38
    ld [hl], a
    adc a
    ld c, a
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
    cp $ff
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$de]
    pop hl
    cp h
    jp $8778


    ld hl, sp+$07
    ret nz

    ccf
    pop bc
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc a
    ld a, a
    rst $08
    ccf
    rst $20
    rra
    di
    rrca
    ld sp, hl
    rlca
    ld a, h
    add e
    cp [hl]
    pop bc
    rst $18
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$01
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
    ld a, c
    rst $38
    inc sp
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    add a
    ld a, a
    inc bc
    rst $38
    add c
    rst $38
    or b
    rst $08
    ld b, b
    rst $38
    pop hl
    cp $70
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    ld hl, sp-$01
    cp a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
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
    cp $ff
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    pop hl
    cp $c4
    ei
    adc d
    push af
    nop
    rst $38
    daa
    rst $18
    adc a
    ld a, a
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
    cp $ff
    db $fd
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$12
    pop af
    call c, $b8e3
    rst $00
    ldh a, [rIF]
    ldh [$1f], a
    pop bc
    ccf
    add e
    ld a, a
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
    ccf
    rst $38
    sbc a
    ld a, a
    rst $08
    ccf
    rst $20
    rra
    db $e3
    rra
    pop af
    rrca
    db $fc
    inc bc
    ld a, [hl]
    add c
    or a
    ret z

    rst $08
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$07
    or $d6
    rst $28
    adc a
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
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ldh [rIE], a
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
    cp $ff
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
    ld bc, $1fff
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld l, a
    sbc a
    rra
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$19
    ld hl, sp-$22
    pop hl
    cp h
    jp $8778


    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, a
    inc bc
    rst $38
    rlca
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
    cp $ff
    db $fd
    cp $fa
    db $fd
    push af
    ei
    ei
    rst $20
    rst $30
    rst $08
    ld l, a
    sbc a
    sbc a
    ld a, a
    sbc a
    ld a, a
    rst $08
    ccf
    db $e3
    rra
    pop af
    rrca
    ld hl, sp+$07
    ld a, h
    add e
    xor h
    jp $e3dc


    and $f9
    rst $30
    ld hl, sp-$06
    db $fd
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
    rlca
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
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
    ret nz

    rst $38
    add c
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
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$12
    pop af
    call c, $3be3
    call nz, $0ff0
    ldh [$1f], a
    pop bc
    ccf
    add e
    ld a, a
    daa
    rst $18
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
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    ld a, [bc]
    dec bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $04
    rla
    inc b
    jr jr_0ad_6c02

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc b
    jr nz, @+$23

    ld [hl+], a
    inc b
    inc b
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0ad_6c25

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_0ad_6c02:
    jr nc, jr_0ad_6c35

    inc b
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ad_6c46

    add hl, bc
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    inc b
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

jr_0ad_6c25:
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
    add hl, bc
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_0ad_6c35:
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

jr_0ad_6c46:
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
    add hl, bc
    add hl, bc
    sub [hl]
    sub a
    inc b
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
    add hl, bc
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
    add hl, bc
    jp nz, $c309

    call nz, $0909
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d309

    add hl, bc
    add hl, bc
    call nc, $d6d5
    inc b
    rst $10
    ret c

    reti


    jp c, $d4db

    call c, $0909
    db $dd
    add hl, bc
    add hl, bc
    sbc $df
    ldh [rDIV], a
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$09eb], a
    db $ec
    db $ed
    xor $04
    inc b
    rst $28
    ldh a, [$f1]
    jp hl


    ld a, [c]
    di
    db $f4
    push af
    or $09
    add hl, bc
    rst $30
    ld hl, sp-$07
    ld a, [$fb04]
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    add hl, bc
    add hl, bc
    inc b
    dec b
    ld b, $fa
    inc b
    rlca
    ld [$0909], sp
    and $0a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0004
    inc b
    nop
    inc b
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ad_6e1f

jr_0ad_6e1f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0000], sp
    ld [$0808], sp
    jr nz, jr_0ad_6e3a

jr_0ad_6e3a:
    ld [$0808], sp
    nop
    ld b, b
    ld [$02fd], sp
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
    db $fd
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push de
    ld a, [hl+]
    db $dd
    ld [hl+], a
    call nc, $fc2b
    inc bc
    ld hl, sp+$07
    ld [hl], h
    adc e
    ld d, b
    xor a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld a, [bc]
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    ld c, d
    rst $38
    ld d, $ff
    dec a
    rst $38
    dec de
    rst $38
    ld d, a
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr nz, jr_0ad_6f4e

    and b
    ld b, $f9
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
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
    add b
    rst $38
    adc b
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
    adc b
    rst $38
    sbc d
    rst $38
    and b
    rst $38
    inc l
    rst $38
    adc b
    rst $38
    ld b, c
    rst $38
    add l
    rst $38
    or d
    rst $38
    cp a
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    sbc a
    rst $38
    xor a
    rst $38
    rst $18

Call_0ad_6f3f:
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
    cp $ff

jr_0ad_6f4e:
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    sbc $ff
    call c, $fcff
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
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
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    cp b
    ld b, a
    ret c

    daa
    and b
    ld e, a
    and b
    ld e, a
    adc b
    ld [hl], a
    and b
    ld e, a
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rra
    rst $38
    dec de
    rst $38
    sbc a
    rst $38
    ld [hl], e
    rst $38
    ld d, e
    rst $38
    and a
    rst $38
    inc hl
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    xor $ff
    cp $ff
    call c, $fdff
    cp $fb
    db $fc
    ei
    db $fc
    ld [hl], a
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$df], a
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    add sp, $17
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fc
    add b
    ld a, a
    ld b, e
    cp a
    inc bc
    db $fd
    add c
    ld a, a
    ld b, c
    cp a
    add c
    ld a, [hl]
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
    ld bc, $01ff
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    add hl, de
    rst $38
    ld c, l
    rst $38
    ld c, d
    rst $38
    add hl, de
    rst $38
    inc c
    rst $38
    ld h, h
    rst $38
    ld a, b
    rst $38
    ld e, c
    rst $38
    ld c, b
    rst $38
    ld c, h
    rst $38
    dec l
    rst $38
    inc a
    rst $38
    dec a
    rst $38
    cp a
    rst $38
    dec a
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    push af
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    rst $18
    ldh [$c0], a
    rst $38
    add e
    db $fc
    sub l
    ld [$a15e], a
    add hl, sp
    add $e7
    jr jr_0ad_716e

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
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop

jr_0ad_711f:
    rst $38
    add a
    ld a, [hl]
    add h
    ld a, e
    adc a
    ld a, h
    add a
    ld a, a
    rst $00
    ccf
    ld b, a
    cp a
    add a
    rst $38
    adc a
    ld [hl], e
    ld b, a
    cp a
    ld h, e
    rst $18
    inc bc
    rst $38
    ld h, a
    sbc e
    inc sp
    rst $08
    ld hl, $00ff
    rst $38
    jr nz, jr_0ad_711f

    and b
    ld e, a
    and b
    rst $18
    and b
    rst $18
    ldh [$9f], a
    ld h, b
    rst $18
    ldh [$5f], a
    ld b, b
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
    db $10
    rst $38
    dec de
    rst $38
    ld e, $ff
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    sub b
    rst $38

jr_0ad_716e:
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sub b
    rst $38
    sub b
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
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    add e
    rst $38
    ld [de], a
    rst $38
    ld d, $ff
    sbc l
    rst $38
    inc c
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    cp a
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
    ld a, [$f0ff]
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [$df], a
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
    add hl, bc
    or $07
    ld hl, sp+$01
    cp $05
    ld a, [$e01f]
    rla
    add sp, $19
    and $9f
    ld h, b
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
    db $fc
    inc bc
    ld bc, $05fe
    ld a, [$fa05]
    cpl
    ret nc

    add hl, sp
    add $af
    ld d, b
    ld a, e
    add h
    cp a
    ld b, b
    rst $00
    jr c, jr_0ad_71fe

    db $fc
    ld b, $f9

jr_0ad_71fe:
    sub a
    ld l, b
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    and c
    ld e, a
    and c
    ld e, a
    and c
    ld e, a
    and c
    ld e, a
    and c
    ld e, a
    ld sp, $4dcf
    or e
    ld b, e
    cp l
    ld b, c
    cp [hl]
    nop
    rst $38
    ret nz

    cp a
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rP1]
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
    nop
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    ld bc, $01fe
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
    nop
    rst $38
    nop
    rst $38
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
    ret nc

    rst $38
    or e
    rst $38
    rst $30
    rst $38
    db $76
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
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

jr_0ad_7289:
    rst $38
    cp $ff
    nop
    rst $38
    dec b
    ld a, [$ea15]
    add c
    ld a, [hl]
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rLCDC]
    cp a
    ldh a, [rIF]
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    jr nz, jr_0ad_7289

    and b
    ld e, a
    and a
    ld e, b
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $20
    jr @-$0a

    dec bc
    ldh [$1f], a
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
    pop bc
    ld a, $c2
    dec a
    ld hl, sp+$00
    ldh [rP1], a
    ccf
    nop
    rra
    ldh [rIE], a
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
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc e
    ld a, h
    srl h
    db $db
    inc a
    reti


    ld a, $d9
    ld a, $93
    ld a, h
    sub a
    ld a, b
    sbc a
    ld [hl], b
    sbc a
    ld a, a
    ld hl, sp+$17
    reti


    ld [hl], $13
    db $fc
    inc bc
    db $fc
    rrca
    ldh a, [$bf]
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
    db $fc
    nop
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    rra
    ldh [$e0], a
    rst $38
    cpl
    ld hl, sp+$05
    ld hl, sp+$04
    ld hl, sp+$0e
    ldh a, [rBGP]
    cp b
    and c
    ld e, $b3
    inc c
    adc c
    ld b, $10
    add a
    ld c, h
    add e
    ld c, $81
    ld d, $80
    ld a, a
    add b
    nop
    rst $38
    ld d, e
    xor h
    ld l, l
    add b
    db $fd
    add b
    or d
    add h
    db $ed
    add b
    rst $38
    add b
    add c
    cp $84
    ei
    rst $28
    sub b
    adc c
    or $a6
    ret


    cp $81
    rst $38
    add b
    or [hl]
    ret


    db $db
    and h
    add c
    cp $92
    rst $38
    res 6, h
    or d
    add c
    ld l, [hl]
    add c
    ldh a, [$87]
    ld hl, sp-$79
    ldh [$8f], a
    db $f4
    sbc a
    push de
    cp a
    rst $38
    cp $6c
    cp $fd
    cp $ee
    rst $38
    ld l, a
    rst $38
    ret nc

    rst $38
    add c
    ld a, [hl]
    adc l
    ld [hl], d
    rla
    add sp, $5e
    and c
    ld hl, sp+$07
    ld bc, $01fe
    cp $03
    db $fc
    ld a, a
    add b
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
    add sp, $00
    rst $38
    nop
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
    add hl, bc
    or $fc
    inc bc
    nop
    rst $38
    ld [de], a
    db $ed

jr_0ad_73c2:
    nop
    rst $38
    ld bc, $00fe
    rst $38
    inc b
    ei
    dec b
    cp $02
    db $fd
    ld d, b
    add b
    nop
    nop
    rra
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
    rst $38
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
    rst $38
    add b

jr_0ad_73f2:
    ld a, a
    rst $38
    ldh a, [rIF]
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $00
    nop
    jr z, jr_0ad_73c2

    ld [bc], a
    ret nz

    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    inc a
    ret nz

    ld a, [hl]
    add c
    ld a, h
    add b
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    ld a, a
    rst $30
    nop
    rst $38
    nop
    ld bc, $0bfe
    rst $38
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    inc h
    ret nz

    jr nz, jr_0ad_73f2

    db $10
    ldh [$0d], a
    ldh a, [rSC]
    ld hl, sp+$02
    db $fc
    ld [$90ff], sp
    ld a, a
    db $76
    add hl, de
    ld [hl], $19
    jp nc, $f61d

    add hl, de
    ldh a, [$1f]
    or b
    ld e, a
    db $10
    rst $38
    or b
    ld e, a
    ld hl, sp+$1f
    ld c, e
    inc d
    ld hl, $401e
    rra
    jr nz, @+$21

    ld a, b
    rla
    sbc $3f
    ld b, $7d
    inc bc
    db $fc
    inc bc
    ld hl, sp+$00
    db $f4
    dec de
    ldh [rNR33], a
    ldh [$3f], a

jr_0ad_7469:
    ret nz

    rra
    ret nz

    db $e4
    nop
    cp [hl]
    nop
    jp c, $3300

    rst $18
    ld a, h
    rst $38
    call nz, $03ff
    db $fc
    ei
    inc b
    add b
    ld a, a
    add b
    ld a, a
    jr jr_0ad_7469

    inc e
    db $e3
    ld [hl], e
    adc h
    sbc a
    ld h, b
    rst $38
    nop
    rst $28
    nop
    dec b
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
    ld a, [hl]
    add b
    ld c, b
    nop
    cp $01
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
    rst $38
    nop
    nop
    rst $38
    inc b
    ei
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    ld bc, $02fe
    db $fd
    db $fd
    nop
    add sp, $00
    ld h, b
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
    ld b, $f9
    add h
    nop

jr_0ad_74d2:
    and d
    nop
    sub b
    nop
    ld c, c
    nop
    jr nz, jr_0ad_74da

jr_0ad_74da:
    sub d
    nop
    inc h
    nop
    sub b
    nop
    jr jr_0ad_74d2

    rra
    ld hl, sp+$04
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0ad_74ea:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld [hl], c
    adc [hl]
    db $d3
    inc l
    ld l, h
    inc bc
    sbc e
    nop
    ld a, l
    nop
    ld a, [hl-]
    inc b
    jr c, jr_0ad_750e

    add hl, de
    nop
    nop
    nop

jr_0ad_750e:
    ld bc, $07fe
    ld [$fc03], sp
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp [hl]
    ld hl, $2015
    ld e, e
    jr nz, jr_0ad_753c

    jr nz, jr_0ad_7540

    jr nz, jr_0ad_7588

    jr nz, jr_0ad_7544

    jr nz, jr_0ad_7546

    jr nz, jr_0ad_758e

    jr nz, jr_0ad_754a

    jr nz, @+$61

    jr nz, @+$5d

    jr nz, jr_0ad_753b

jr_0ad_753b:
    rst $38

jr_0ad_753c:
    nop
    rst $38
    ret z

    scf

jr_0ad_7540:
    ld a, e
    nop
    ld [hl], e
    nop

jr_0ad_7544:
    dec sp
    nop

jr_0ad_7546:
    rst $38
    nop
    ei
    inc b

jr_0ad_754a:
    adc b
    ld [hl], h
    nop
    inc e
    nop
    ld e, c
    jr nz, jr_0ad_756d

    nop
    ld e, b
    nop
    ld e, b
    nop
    rla
    ret nz

    ccf
    or l
    rst $38
    di
    dec l
    ld l, l
    or d
    ld e, a
    jr nz, jr_0ad_74ea

    jr nc, @+$4c

    ld sp, $308f
    call z, $8b33
    ld [hl], b
    add c

jr_0ad_756d:
    inc [hl]
    jp z, Jump_0ad_4b30

    jr nc, jr_0ad_75ee

    rst $38
    ld a, b
    rst $38
    pop bc
    rst $38
    rst $28
    db $10
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or $09
    rst $38
    nop

jr_0ad_7588:
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

jr_0ad_758e:
    rst $38
    nop
    cp a
    ld b, b
    ld [$f715], a
    ld [$01fe], sp
    ld a, a
    add b
    cpl
    nop
    ld [hl], c
    ld c, $22
    push bc
    inc e
    db $e3
    ld e, $e1
    ld c, $f1
    rlca
    ld hl, sp-$01
    nop
    inc hl
    call c, $f40a
    ld bc, $00fe
    rst $38
    inc h
    db $db
    ld [$10f7], sp
    rst $28
    inc bc
    db $fc
    ld a, [$2800]
    nop
    cp a
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
    rst $18
    nop
    ld c, c
    nop
    jr z, jr_0ad_75d0

jr_0ad_75d0:
    adc b
    nop
    stop
    ld bc, $5100
    nop
    dec h
    nop
    ld b, h
    nop
    sub c
    nop
    ld [$af00], sp
    rlca
    rst $28
    rlca
    ccf
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rra
    rst $38

jr_0ad_75ee:
    ccf
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0003
    inc bc
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    and b
    ld e, a
    and b
    ld e, a
    rst $38
    rst $38
    ccf
    rst $38
    rst $18
    daa
    ld hl, sp+$07
    db $fd
    rlca
    cp c
    rlca
    ld sp, hl
    rlca
    di
    rrca
    inc e
    inc bc
    jr z, jr_0ad_764b

    jr c, @+$09

    ld [hl], c
    ld c, $e2
    dec e
    dec h
    jp c, $b34c

    ld a, [c]
    dec b
    rst $20
    ld [bc], a
    ld [c], a
    dec b
    ld [c], a
    dec b
    dec h
    ld b, d
    ld a, [de]
    ld h, l
    dec e

jr_0ad_764b:
    ld h, d
    dec a
    ld b, d
    ld a, [de]
    ld h, l
    inc c
    ld h, e
    db $10
    daa
    ld a, [bc]
    dec h
    ld [de], a
    ld h, a
    ld hl, sp+$27
    ret z

    rst $30
    jp nz, $01ff

    rst $38
    add b
    ld a, a
    ldh [$3f], a
    sub c
    ld a, a
    ld d, b
    cp a
    ld [$f5ff], sp
    rrca
    sub a
    daa
    ld d, c
    inc bc
    db $dd
    inc bc
    ld e, e
    rst $38
    ld a, l
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
    nop
    rst $38
    inc bc
    db $fc
    push bc
    ld a, [hl-]
    ei
    inc b
    rst $38
    nop
    cp $01
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    sub a
    ld l, b
    sbc $21
    rst $28
    db $10
    ld [$b515], a
    ld c, d
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
    add b
    ld a, a
    nop
    ld a, a
    ret nz

    ccf
    and b
    rra
    ld b, b
    rra
    and b
    rrca
    jr c, @-$77

    inc l
    jp $c308


    inc h
    ld bc, $1fa0
    nop
    rst $38
    rst $38
    nop
    or a
    nop
    sbc $00
    ld l, c
    nop
    cp h
    nop
    ld h, l
    nop
    inc d
    nop
    adc b
    nop
    jr nz, jr_0ad_76d2

jr_0ad_76d2:
    nop
    nop
    jr nz, jr_0ad_76d6

jr_0ad_76d6:
    stop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    jr nz, jr_0ad_76e0

jr_0ad_76e0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp-$01
    rlca
    ret nz

    ld bc, $42c0
    add b
    ld b, b
    add b
    ld b, d
    add b
    ld b, c
    add b
    ld b, b
    add b
    ld b, h
    add b
    ld b, h
    add b
    ld e, $e0
    ld [bc], a

jr_0ad_770d:
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ret nc

    cpl
    nop
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    nop

jr_0ad_771d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    jr nz, jr_0ad_770d

    ld [hl], b
    adc a
    ret nz

    rra
    and b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    jr nz, jr_0ad_771d

    ret nz

    ccf
    db $e4
    rra
    db $e4
    rra
    add $3f
    db $e4
    rra
    db $e4
    rra
    ld b, $ff
    inc h
    rst $18
    db $76
    sbc a
    ld h, $df
    add $3f
    inc [hl]
    rst $18
    ld [hl], $df
    ld c, $ff
    ld b, $ff
    ld c, $ff
    ld e, $ff
    inc c
    rst $38
    inc c
    rst $38
    rra
    rst $38
    sbc h
    rst $38
    ld e, $ff
    sbc $ff
    ld a, e
    rst $38
    and b
    rst $38
    ld sp, hl
    rst $38
    xor c
    rst $38
    xor c
    rst $38
    ld bc, $2cff
    db $d3
    ld a, [hl]
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0ad_7782:
    ld de, $ffee
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
    rst $10
    jr z, jr_0ad_7782

    db $10
    rst $30
    ld [$04fb], sp
    call c, Call_0ad_5e23
    and c
    rst $28
    db $10
    rst $38
    nop
    call z, $8c00
    nop
    and d
    nop
    ld b, c
    nop
    adc c
    nop
    ld a, [hl-]
    nop
    rlc b
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$01
    adc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, b
    add a
    cp b
    rlca
    ld b, a
    adc a
    rlca
    rst $08
    ld [hl], a
    cp a
    ld b, a
    cp a
    scf
    rst $38
    add a
    rst $38

jr_0ad_780c:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    nop
    add a
    inc b
    rst $38
    nop
    rst $18
    nop
    rst $08
    ld bc, $04cf
    rst $08
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld a, [hl-]
    rst $08
    ld a, [de]
    rst $28
    sbc b
    rst $28
    sbc d
    rst $28
    adc c
    rst $28
    ld [hl+], a
    rst $18
    dec [hl]
    rst $18
    daa
    rst $18
    ld l, [hl]
    sbc a
    ccf
    rst $18

jr_0ad_7836:
    cp a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    scf
    ret z

    adc $31
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    rst $00
    jr c, jr_0ad_7836

    jr nz, jr_0ad_780c

    ld c, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    add e
    ld a, h
    rst $18
    jr nz, @+$56

    xor e
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, @-$07

    ld [$04fb], sp
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
    rst $38
    nop
    or $00
    add hl, bc
    nop
    ld c, a
    nop
    ld d, a
    nop
    scf
    nop
    push hl
    nop
    xor e
    nop
    ld h, c
    nop
    jr z, jr_0ad_78a0

jr_0ad_78a0:
    ld [hl+], a
    nop
    ld c, b
    nop

jr_0ad_78a4:
    adc c
    nop

jr_0ad_78a6:
    ld b, h
    nop
    ld bc, $0000
    nop
    nop
    nop
    rlca
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
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    jr @+$01

    inc a
    di
    ld d, b
    rst $28
    and b
    rst $18
    ld bc, $0efe
    ldh a, [$5c]
    ldh [rNR10], a
    ldh [$38], a
    ret nz

    jr nz, jr_0ad_78a4

    jr nz, jr_0ad_78a6

    ld h, b
    add b
    ldh [$80], a
    ld h, d
    add c
    dec hl
    rst $00
    ld l, a
    sbc a
    ld e, $ff
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
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
    ld [$01f1], sp
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $f4
    nop
    db $f4
    nop
    db $f4
    nop
    db $f4
    nop
    ldh a, [rP1]
    pop af
    nop
    pop af
    nop
    ldh a, [rP1]
    db $f4
    nop
    db $f4
    nop
    db $f4
    nop
    db $f4
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    pop af
    nop
    pop af
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ldh [rIE], a
    db $f4
    rst $38
    or $ff
    cp $ff
    push af
    rst $38
    ei
    rst $38
    ld a, l
    rst $38
    dec c
    rst $38
    ld [hl], c
    adc a
    db $e3
    inc e
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    push bc
    ld a, [hl-]
    xor l
    ld d, d
    db $fd
    ld [bc], a
    rst $38
    nop
    db $d3
    inc l
    rst $30
    ld [$00ff], sp
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
    rst $38
    nop
    rst $38
    nop
    di
    nop
    db $fd
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
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    dec hl
    nop
    dec l
    nop
    rlca
    nop
    jr jr_0ad_7996

jr_0ad_7996:
    rrca
    nop
    rra
    nop
    rlca
    nop
    ccf
    nop
    db $fc
    nop
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    ld bc, $02ff
    rst $38
    dec c
    cp $17
    ld hl, sp+$0f
    ldh a, [rVBK]
    ldh a, [$8f]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$2f]
    ret nc

    ld c, a
    or b
    rrca
    ldh a, [rVBK]
    or b
    rst $38
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld a, a
    nop
    rst $30
    ld hl, sp-$11
    ldh a, [$8f]
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, [hl]
    add b
    cp $00
    ld a, $c0
    ld a, [hl]
    add b
    inc e
    ldh [rNR32], a
    ldh [rNR14], a
    add sp, $0c
    ldh a, [rTIMA]
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$00
    ld sp, hl
    ld [$08f1], sp
    pop af
    db $10
    pop hl
    nop
    di
    nop
    di
    ld de, $11e2
    ld [c], a
    db $10
    db $e3
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $18
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
    ld bc, $00fe
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    sub b
    ld l, a
    adc l
    ld [hl], d
    xor $11
    ld a, [hl]
    add c
    ld [$4015], a
    cp a
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
    rst $18
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
    ei
    inc b
    rst $38
    nop
    ld a, a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    dec bc
    db $fc
    rla
    ld hl, sp+$67
    ld hl, sp-$39
    ld hl, sp+$77
    adc b
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
    rst $08
    nop
    rra
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
    rra
    nop
    rla
    ld [$0817], sp
    rla
    ld [$0817], sp
    rla
    ld [$0a15], sp
    ld de, $100e
    rrca
    db $10
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    ld bc, $001e
    rra
    ld [bc], a
    dec e
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

jr_0ad_7adb:
    rlca
    db $10
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
    rra
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
    add b
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    jp Jump_000_183f


    rst $20
    jr nc, jr_0ad_7adb

    rst $18
    jr nz, jr_0ad_7b6a

    and h
    and h
    ld e, e
    ld a, e
    add h
    nop
    rst $38
    ld d, $e9
    cp h
    ld b, e
    xor $11
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    db $fd
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $db
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
    cp $01
    rst $38
    nop
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    db $fc
    inc bc
    daa
    ret c

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_0ad_7b6a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
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
    db $fd
    ld [bc], a
    ld bc, $77fe
    adc b
    rst $30
    ld [$08f7], sp
    db $fd
    ld [bc], a
    and [hl]
    ld e, c
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
    nop
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
    ld a, b
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $02ff
    db $fd
    ld b, b
    cp a
    nop
    rst $38
    ld b, h
    cp e
    adc d
    ld [hl], l
    ld d, h
    xor e
    sbc [hl]
    ld h, c
    ld d, a
    xor b
    cp c
    ld b, [hl]
    cp $01
    cp $01
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b

jr_0ad_7bec:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    sbc a
    ld h, b

jr_0ad_7c02:
    rst $08
    jr nc, jr_0ad_7bec

    jr jr_0ad_7c02

    inc b
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    call $ff22
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    ld hl, sp+$07
    add sp, $17
    add sp, $17
    ldh [$1f], a
    ld [$4015], a
    cp a
    ldh [$1f], a
    ret z

    scf
    and b
    ld e, a
    and b
    ld e, a
    ret nz

    ccf
    ld e, [hl]
    and c
    ld a, l
    add d
    inc a
    jp $f708


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    sub b
    rst $38
    and b
    rst $38
    sbc $ff
    sbc $ff
    rst $38
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $00
    ccf
    nop
    rst $38
    nop
    rst $38
    sub b
    ld l, a
    ld h, b
    sbc a
    ld e, $e1
    xor l
    ld d, d
    or $09
    db $dd
    ld [hl+], a
    rst $08
    jr nc, @-$08

    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    db $fc
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
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    add h
    sbc l
    ld h, d
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop

jr_0ad_7cca:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $10
    nop
    rst $30
    nop
    rst $28
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $18
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
    rst $18
    jr nz, jr_0ad_7cca

    ld b, b
    ld d, a
    xor b
    inc c
    di
    add b
    ld a, a
    dec b
    ld a, [$fd02]
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
    ld bc, $41fe
    cp [hl]
    ld b, c
    cp [hl]
    add b
    ld a, a
    add b
    ld a, a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    ret z

    rst $38
    ld a, [c]
    rst $38
    ld [$deff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    daa
    rst $18
    sbc b
    ld h, a
    ld d, h
    xor e
    inc bc
    db $fc
    add c
    ld a, [hl]
    ld a, [hl+]
    push de
    ld b, l
    cp d
    or c
    ld c, [hl]
    jp hl


    ld d, $e3
    inc e
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    db $db
    nop
    rst $28
    nop
    rst $38
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
    ei
    nop
    ei
    nop
    ei
    nop
    rst $28
    nop
    cp $00
    ld a, [$fd00]
    nop
    ld a, [$b500]
    nop
    ld a, [c]
    nop
    db $d3
    nop
    rst $08
    nop
    cp [hl]
    nop
    db $fc
    nop
    adc h
    nop
    ld a, [bc]
    nop
    adc c
    nop
    ld c, c
    nop
    push bc
    nop
    or a
    nop
    rst $18
    nop

jr_0ad_7dac:
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    or $09
    nop
    rst $38
    cp a
    ld b, b
    rst $10
    jr z, jr_0ad_7dac

    jr jr_0ad_7e2a

    sbc h

jr_0ad_7dc8:
    call $9e32
    ld h, c
    dec bc
    db $f4
    or a
    ld c, b
    rst $20
    jr jr_0ad_7dc8

    ld a, [bc]
    ld c, $f1
    dec c
    ld a, [c]
    ld b, $f9
    ld [bc], a
    db $fd
    dec b
    ld a, [$ed12]
    inc bc
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
    nop
    rst $38
    ret nz

    rst $38
    jr @+$01

jr_0ad_7e00:
    jp $acff


    rst $38
    ld a, [c]
    rst $38
    ret nz

    rst $38
    jp nz, $92ff

    ld a, a
    ld h, e
    sbc a
    cp $01
    ld a, l
    add d
    ld c, a
    or b
    dec bc
    db $f4
    ret


    ld [hl], $71
    adc [hl]
    ld a, a
    add b
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, jr_0ad_7e00

    ld [hl+], a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop

jr_0ad_7e2a:
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    ret nz

    nop
    jr nz, jr_0ad_7e42

jr_0ad_7e42:
    ld d, b
    nop
    adc l
    nop
    push hl
    nop
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
    ei
    nop
    dec sp
    nop
    rst $28
    nop
    cp a
    nop
    cp e
    nop
    adc e
    nop
    ld b, h
    nop
    inc de
    nop
    cp a
    nop
    ld a, a
    nop
    db $eb
    nop
    rst $18
    nop
    xor a
    nop
    ld b, a
    nop
    xor e
    nop
    daa
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
    ccf
    ret nz

    cp a
    ld b, b
    xor $11
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$807f], sp
    rst $28
    db $10
    rst $38
    nop
    rst $30
    ld [$0bf4], sp
    ld hl, sp+$07
    ret c

    daa
    ld hl, sp+$07
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
    jr c, @+$01

    daa
    rst $38
    jr nc, @+$01

    dec sp
    rst $38
    dec hl
    rst $38
    add hl, sp
    rst $38
    jr z, @+$01

    jr nc, @+$01

    jr z, @+$01

    jr nc, @+$01

    or b
    rst $38
    ld c, $ff
    sub c
    ld a, a
    add d
    ld a, a
    db $ec
    inc de
    ld a, d
    add l
    ld h, h
    sbc e
    ld a, e
    add h
    db $db
    inc h
    ld a, [hl]
    add c
    or l
    nop
    ld c, [hl]
    nop
    ld [hl+], a
    nop
    dec b
    nop
    ld b, b
    nop
    cp d
    nop
    cp $00
    ei
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    nop
    nop
    ld b, $07
    rlca
    rlca
    ld [$0a09], sp
    dec bc
    nop
    nop
    inc c
    dec c
    ld c, $00
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0ad_7f11

jr_0ad_7f11:
    nop
    nop
    add hl, de
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ad_7f3f

    ld [hl+], a
    nop
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    daa
    jr z, jr_0ad_7f30

    rlca
    add hl, hl
    ld a, [hl+]
    dec hl
    nop
    nop
    inc l

jr_0ad_7f30:
    dec l
    ld l, $2f
    jr nc, jr_0ad_7f35

jr_0ad_7f35:
    ld sp, $0732
    rlca
    rlca
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop

jr_0ad_7f3f:
    ld [hl], $37
    jr c, jr_0ad_7f43

jr_0ad_7f43:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    rlca
    rlca
    dec a
    ld a, $3f
    ld b, b
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    rlca
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    dec e
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    ld e, e
    ld e, h
    nop
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
    nop
    nop
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

Jump_0ad_7f83:
    ld l, a
    ld [hl], b
    ld [hl], c
    inc de
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    rlca
    rlca
    rlca
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
    rlca
    ld h, l
    adc h
    adc l
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
    adc l
    adc l
    adc l
    sbc e
    ld e, d
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
    adc l
    adc l
    adc l
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
    adc l
    or c
    adc l
    adc l
    adc l
    adc l
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
    cp l
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $83c3

    call nz, $c6c5
    inc de
    rlca
    rlca
    rlca
    rst $00
    rlca
    ret z

    ret


    jp z, $cccb

    call $ce00
