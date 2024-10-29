SECTION "ROM Bank $09a", ROMX[$4000], BANK[$9a]

    ld [bc], a

jr_09a_4001:
    db $fd
    ld b, $f9
    db $18, $e7
    db $18, $e7
    ld [$04f7], sp
    ei
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0cf7], sp
    di
    jr jr_09a_4001

    add hl, hl
    sub $42
    cp l
    ld d, c
    xor [hl]
    ld bc, $40fe
    cp a
    db $30, $cf
    nop
    rst $38
    nop
    rst $38
    ld a, b
    add a
    add b
    ld a, a
    nop

jr_09a_402f:
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
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    ld [$04f7], sp
    ei
    nop
    rst $38
    sub a
    rst $38
    rst $20
    rst $38
    jr c, @+$01

    db $10
    rst $38
    jr nz, @+$01

    ld bc, $e0ff
    rra
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
    add [hl]
    add [hl]
    add h
    add a
    add b
    rst $10

jr_09a_4070:
    ld d, a
    add c
    rst $10
    and c
    sub $20
    rst $30
    jr nz, jr_09a_4070

    inc h
    rst $38
    ld h, $f7
    daa
    rst $30
    ld hl, $61ff
    rst $30
    ld h, b
    rst $38
    ld h, h
    rst $38
    ld h, [hl]
    rst $38
    rst $38
    sbc l
    rst $38
    ret z

    rst $38
    ld de, $ffee
    nop
    ret nz

    ccf
    ld [bc], a
    rst $38
    ld b, $ff
    ld bc, $08ff
    rst $38
    rla
    rst $38
    and b
    rst $38
    rrca
    ldh a, [rSC]
    db $fd
    ld [hl-], a
    call Call_000_00ff
    rst $08
    jr nc, jr_09a_402f

    ld a, e
    add [hl]
    ld a, c
    adc [hl]
    ld [hl], c
    call c, $fc23
    inc bc
    db $e4
    dec de
    db $ec
    inc de
    ld [c], a
    dec e
    and b
    ld e, a
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
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
    ld a, a
    nop
    ld [hl], $00
    rla
    nop
    ld a, [de]
    nop
    jr jr_09a_40ea

jr_09a_40ea:
    nop
    nop
    stop
    ld [$0000], sp
    rst $38
    db $10
    rst $28
    nop
    rst $38
    inc a
    jp $837c


    ld h, a
    sbc b
    ld h, a
    sbc b
    ld l, a
    sub b
    ld a, a
    add b
    rst $28
    db $10
    ld a, e
    add h
    swap h
    rst $38
    nop
    cp a
    ld b, b
    sbc a
    ld h, b
    db $db
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, b
    add a
    ld l, b
    sub a
    db $ec
    inc de
    db $fc
    inc bc
    jp nz, $e1ff

    rst $38
    jr nz, @+$01

    and h
    rst $38
    add h
    rst $38
    add b
    rst $38
    ret nz

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
    inc sp
    inc sp
    inc de
    sbc e
    inc bc
    sra e
    ret nz

    xor e
    ret nz

    set 6, b
    ld l, e
    ld [hl], b
    adc e
    db $10
    db $eb
    nop
    db $eb
    add b
    db $eb
    ret nz

    jp $80fb


    db $fc
    jr @+$01

    inc a
    rst $38
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
    nop
    rst $38
    add hl, de
    rst $38
    dec e
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    xor $ff
    ld de, $51ee
    xor [hl]
    ld [hl], b
    adc a
    ldh [$1f], a
    add c
    ld a, [hl]
    dec de
    db $e4
    add hl, bc
    or $47
    cp b
    add hl, bc
    or $09
    or $00
    rst $38
    ld [$04f7], sp
    ei
    rlca
    ld hl, sp+$02
    db $fd
    ld b, $f9
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
    nop
    nop
    nop
    nop

jr_09a_41c4:
    nop
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
    and b
    nop
    and a
    nop
    ldh [rP1], a
    sub b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $04fe
    ei
    ld [bc], a
    db $fd
    and d
    ld e, l
    add e
    ld a, h
    add c
    ld a, [hl]
    dec e
    ld [c], a
    cp a
    ld b, b
    or a
    ld c, b
    jp nz, $ea3d

    dec d
    pop hl
    ld e, $cc
    inc sp
    add h
    ld a, e
    rlca
    ld hl, sp+$0f
    ldh a, [$c9]
    ld [hl], $e6
    add hl, de
    and $19
    rst $20
    jr jr_09a_41c4

    ld b, h
    ld sp, $79ce
    add [hl]
    xor c
    ld d, [hl]
    jr @+$01

    ld l, $ff
    ld a, [hl-]
    rst $38
    cp e
    rst $38
    ld [hl-], a
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    jp $ff3f


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub c
    rst $38
    rst $38
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
    sbc b
    sbc b
    sbc $98
    sbc $98
    sbc $92
    rst $18
    sub d
    rst $18
    sub d
    rst $18
    sub b
    db $dd
    sub b
    rst $18
    sub d
    rst $18
    add a
    nop
    rlca
    nop
    daa
    nop
    ld h, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    dec b
    ld a, [$708f]
    rrca
    ldh a, [rNR42]
    sbc $31
    adc $28
    rst $10
    ld b, l
    cp d
    adc b

jr_09a_426f:
    ld [hl], a
    ret


    ld [hl], $9b
    ld h, h
    sub c
    ld l, [hl]
    add b
    ld a, a
    pop bc
    ld a, $84
    ld a, e
    adc h
    ld [hl], e
    cp $01
    rst $38
    nop
    sbc [hl]
    ld h, c
    ld e, a
    and b
    ld a, e
    add h
    ld a, [de]
    push hl
    inc sp
    call z, $8c73
    jr nz, jr_09a_426f

    inc sp
    call z, $c53a
    inc e
    db $e3
    dec c
    ld a, [c]
    ld [$01f7], sp
    cp $09
    or $11
    xor $04
    ei
    ld bc, $43fe
    cp h
    inc b
    ei
    nop
    rst $38
    ld b, b
    cp a
    ld [$09f7], sp
    or $3b
    call nz, $fc03
    inc hl
    call c, $847b
    rst $18
    jr nz, jr_09a_432a

    sub b
    rrca
    ldh a, [$03]
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    nop
    ld d, d
    nop
    ld h, b
    nop
    ld bc, $0000
    nop
    inc h
    db $db
    db $10
    rst $28
    cp b
    ld b, a
    ld e, b
    and a
    ld [$ccf7], sp
    inc sp
    ld h, $d9
    and $19
    db $e4
    dec de
    sub d
    ld l, l
    ld a, [hl]
    add c
    rrca
    ldh a, [$82]
    ld a, l
    ld a, [de]
    push hl
    inc a
    jp $cb34


    ld a, h
    add e
    cp $01
    ld a, $c1
    ld a, a
    add b
    cp $01
    cp $01
    cp $01
    ld e, [hl]
    and c
    inc c
    di
    rra
    ldh [$9f], a
    ld h, b
    rst $18
    jr nz, jr_09a_432b

    db $dd
    and d
    ld e, l
    swap h
    db $fd
    ld [bc], a
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
    db $10
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_09a_432a:
    rst $38

jr_09a_432b:
    rst $38
    rst $08
    rst $08
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    ld c, a
    ld l, a
    ld c, a
    ld l, a
    ld c, a
    ld l, a
    ld c, a
    ld l, a
    ld c, a
    ld l, a
    ld c, a
    ld l, a
    rrca
    xor a
    ld bc, $01a1
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
    ld [bc], a
    ld sp, hl
    rst $38
    cp $01
    ret


jr_09a_4363:
    ld [hl], $dd
    ld [hl+], a
    sub l

jr_09a_4367:
    ld l, d
    ld a, [bc]
    push af
    ld c, a
    or b
    ld h, a
    sbc b
    ld d, $e9
    cp l
    ld b, d
    db $f4
    dec bc
    xor h
    ld d, e
    or a
    ld c, b
    cpl
    ret nc

    jr jr_09a_4363

    db $10
    rst $28
    dec d
    ld [$7e81], a
    inc hl
    call c, $08f7
    rst $38
    nop
    sub l
    ld l, d
    rst $18
    jr nz, jr_09a_43ac

    ldh [$3d], a
    jp nz, $ee11

    inc de
    db $ec
    xor a
    ld d, b
    ld [hl], l
    adc d
    add sp, $17
    sub c
    ld l, [hl]
    nop
    rst $38
    jr c, jr_09a_4367

    ld a, $c1
    db $fc
    inc bc
    ld a, [hl-]
    push bc
    ld a, [hl]
    add c
    ld h, [hl]
    sbc c
    push af
    ld a, [bc]

jr_09a_43ac:
    ld hl, sp+$07
    db $f4
    dec bc
    db $f4
    dec bc
    add sp, $17
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    and b
    ld e, a
    ld l, d
    sub l
    ld l, l
    sub d
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
    inc b
    ei
    dec b
    ld a, [$f609]
    add hl, de
    and $18
    rst $20
    ld e, $e1
    dec b
    ld a, [$ff00]
    ld bc, $04fe
    ei
    ld c, $f1
    ld a, c
    add [hl]
    ld [bc], a
    db $fd
    ld hl, $7ade
    add l
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld l, a
    sub b
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$43
    cp h
    xor e
    ld d, h
    ld b, e
    cp h
    ld c, a
    or b
    rlca
    ld hl, sp-$79
    ld a, b
    ld hl, sp-$01
    db $fd
    nop
    cp $00
    rst $38
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    adc a
    add e
    jp $d991


    sbc c
    db $dd
    sbc c
    db $dd
    sbc c
    db $dd
    sbc c
    db $dd
    sbc c
    db $fd
    sbc c
    db $dd
    sbc c
    db $fd
    sub c
    db $dd
    add d
    rst $38
    add [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ccf
    ret nz

    db $fc
    nop
    push hl
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    rst $38
    rst $38
    ld l, e
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    sub b
    ld l, a
    db $10
    rst $28
    db $d3
    inc l
    ld b, b
    cp a
    ld l, c
    sub [hl]
    add c
    ld a, [hl]
    inc bc
    db $fc
    inc bc
    db $fc
    add a
    ld a, b
    db $fd
    ld [bc], a
    jp hl


    ld d, $a1
    ld e, [hl]
    ret


    ld [hl], $e8
    rla
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    pop af
    ld c, $f1
    ld c, $d0
    cpl
    ld [hl+], a
    db $dd
    jp nz, $863d

    ld a, c
    xor a
    ld d, b
    ccf
    ret nz

    inc e
    db $e3
    rra
    ldh [$d8], a
    daa
    or [hl]
    ld c, c
    dec l
    jp nc, $ea15

    dec b
    ld a, [$7e81]
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    db $10
    rst $28
    add h
    ld a, e
    nop
    rst $38
    add hl, hl
    sub $58
    and a
    nop
    rst $38
    nop
    rst $38
    sbc $21
    ld l, d
    sub l
    cp $01
    ld a, [$7e05]
    add c
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc b
    ld h, a
    ld a, [$fd05]
    ld [bc], a
    db $fc
    inc bc
    cp [hl]
    ld b, c
    rst $38
    nop
    cp $01
    rst $38

jr_09a_44e1:
    nop
    cp $01
    cp $01
    ld a, [hl]
    add c
    cp [hl]
    ld b, c
    inc e
    db $e3
    ld a, h
    add e
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f0
    rrca
    db $e3
    inc e
    rst $20
    jr jr_09a_44e1

    dec de
    add b
    ld a, a
    pop de
    ld l, $a0
    ld e, a
    add c
    ld a, [hl]
    ld e, $e1
    ld e, $e1
    cp a
    ld b, b
    ld a, [hl]
    add c
    or [hl]
    ld c, c
    inc a
    rst $38
    ld a, [hl]
    ld a, a
    add e
    nop
    ld [hl], h
    nop
    xor [hl]
    nop
    ld c, c
    nop
    jp nz, $b900

    nop
    nop
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    inc b
    rst $38
    call z, $f0ff
    rst $38
    rst $18
    rst $18
    ret z

    ret z

    ret z

    rst $08
    adc [hl]
    xor $b6
    rst $30
    or [hl]
    or $b6
    rst $30
    ld b, $c6
    ld b, $f6
    ld [hl], $f6
    ld a, d
    ld a, [$fa7a]
    ld a, d
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    jp z, $9100

    nop
    ld h, h
    nop
    sub c
    nop
    ld c, b
    nop
    inc sp
    inc bc
    rst $10
    rst $38
    pop bc

jr_09a_455f:
    rst $38
    ld [hl], $c9
    inc [hl]
    srl [hl]
    pop bc
    ld l, h
    sub e
    ld hl, sp+$07
    cp [hl]
    ld b, c
    sbc h
    ld h, e
    ld a, [hl]
    add c
    cp h
    ld b, e
    ld a, d
    add l
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, b
    add a
    ld a, b
    add a
    ld a, h

jr_09a_457f:
    add e
    ld a, [hl]
    add c

jr_09a_4582:
    ld a, [hl]
    add c
    ld a, h
    add e

jr_09a_4586:
    db $fc
    inc bc
    ld a, h
    add e

jr_09a_458a:
    xor h
    ld d, e
    inc e
    db $e3
    jr nc, jr_09a_455f

    inc [hl]
    bit 7, h
    add e
    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    call c, $bc23
    ld b, e
    cp b
    ld b, a
    db $fc
    inc bc
    db $fc
    inc bc
    db $e4
    dec de
    db $ec
    inc de
    ld c, h
    or e
    inc c
    di
    inc c
    di
    ld c, $f1
    adc h
    ld [hl], e
    ld [$18f7], sp

jr_09a_45b5:
    rst $20
    jr c, jr_09a_457f

    inc e
    db $e3
    inc e
    db $e3
    ld [$00f7], sp
    rst $38
    jr c, jr_09a_4582

    inc a
    ret nz

    jr nz, jr_09a_4586

    ld [hl], b
    add b
    jr c, jr_09a_458a

    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    scf
    ret z

    cpl
    ret nc

    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld sp, $a0ce
    ld e, a
    jr nc, jr_09a_45b5

    ld [hl], d
    adc l
    and [hl]
    ld e, c
    rra
    ldh [$3e], a
    pop bc
    ccf
    ret nz

    ld a, $c0
    ld a, $c0
    ld e, $e0
    ld e, $e0
    ld c, $f0
    ld d, $e8
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$7b], a
    add b
    sub b
    ld h, b
    ld [hl-], a
    ret nz

    or [hl]
    ld b, b
    db $76
    add b
    rst $20
    nop
    ei
    nop
    jr @+$01

    jr @+$01

    nop
    nop
    or b
    nop
    ld b, b
    nop
    add b
    nop
    jr nz, jr_09a_461e

jr_09a_461e:
    add b
    nop
    nop
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$80ff], sp
    rst $38
    ld b, $ff
    ld bc, $252f
    cpl
    ret


    rst $28
    rst $10
    rst $30
    rst $10
    rst $30
    rst $10
    rst $30
    add a
    rst $20
    sub a
    rst $30
    sub e
    rst $30
    cp e
    ei
    dec sp
    ei
    dec sp
    ei
    db $fc
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rrca
    ldh a, [rIE]
    nop
    ld d, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38

jr_09a_4660:
    xor $11
    cp $01
    ccf
    ret nz

    ccf
    ret nz

    dec a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, l
    add b
    rst $38
    nop
    db $fd
    nop
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
    rst $18
    jr nz, jr_09a_4660

    jr nz, jr_09a_4702

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
    ld a, a
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
    ld a, a
    add b
    ld l, a
    add b
    ld c, a
    add b
    rst $18
    nop
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
    ld a, [hl]
    add c
    ld a, a
    add b
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
    jr nz, jr_09a_46ce

jr_09a_46ce:
    ldh [rP1], a
    ldh a, [rP1]
    db $f4
    nop
    cp $00
    rst $38
    nop
    ld a, h
    inc bc
    jp c, $c221

    jr nc, jr_09a_4758

    nop
    cp c
    nop
    ld a, b
    add b
    inc a
    add b
    ld a, c
    add b
    db $fc
    nop
    db $fc
    nop
    db $f4
    nop
    db $ed
    nop
    call $c700
    nop
    db $db
    nop
    rla
    nop
    dec hl
    nop
    jr jr_09a_46fc

jr_09a_46fc:
    inc l
    nop
    inc e
    nop
    ld hl, sp+$00

jr_09a_4702:
    db $fc
    nop
    cp b
    ld b, b
    ccf
    ld b, b
    rst $28
    nop
    ld h, d
    nop
    ret nz

    nop
    ld b, b
    nop
    jr z, @+$01

    ld d, h
    rst $38
    ei
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
    reti


    reti


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, $24
    inc h
    inc h
    inc h
    inc h
    and h
    inc h
    inc h
    inc b
    adc h
    inc h
    and h
    inc h
    inc h
    inc h
    inc h
    inc h
    and h
    ld [hl+], a
    ld h, $c1
    rst $38
    nop
    rst $38
    jp c, $c0ff

    jp c, Jump_000_00ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09a_4758:
    rst $38
    rra
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    add b
    sbc l
    nop
    rra
    nop
    rra
    nop
    rst $28
    nop
    rst $38
    nop
    di
    inc c
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $28
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
    rst $38
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    ei
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
    rst $28
    db $10
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    nop
    nop
    nop
    nop
    db $f4
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    sbc a
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    add c
    nop
    pop bc
    nop
    ld b, e
    nop
    adc c
    nop
    ld c, b
    nop
    jr z, jr_09a_47dc

jr_09a_47dc:
    add hl, hl
    nop
    ld h, h
    nop
    dec l
    nop
    ld e, $00
    xor b
    nop
    and h
    nop
    db $f4
    nop
    ret nc

    nop
    ld b, b
    nop
    ret nz

    nop
    ret z

    rst $38
    db $f4
    rst $38
    ld l, b
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

Call_09a_4800:
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
    dec sp
    ld d, l
    push de
    ld d, l
    push de
    ld d, l
    push de
    ld d, l
    push de
    ld d, l
    push de
    ld d, l
    push de
    ld d, l
    push de
    ld d, l
    push de
    ld d, l
    push de
    ld [$003b], sp
    rst $38
    nop
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
    inc bc
    ld a, [$f5ff]
    rst $38
    ei
    rst $38
    cp $ff
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
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    db $fd
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp a
    nop
    or l
    nop
    cp [hl]
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
    db $ed
    db $10
    ld a, a
    nop
    cp l
    nop
    cp a
    nop
    ld a, a
    nop
    scf
    nop
    cp [hl]
    nop
    ld e, a
    nop
    ld a, l
    nop
    ld e, [hl]
    nop
    ld a, [hl]
    nop
    cp [hl]
    nop
    cp $00
    ld a, [hl]
    rst $38
    cp $ff
    dec l
    rst $38
    db $eb
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
    ld bc, $0102
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $11fc
    ld [hl], h
    ld de, $2174
    inc h
    ld hl, $5124
    ld d, h
    ld d, c
    ld d, h
    ld de, $1174
    ld [hl], h
    ld de, $0174
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $ff02
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$bfff]
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp [hl]
    nop
    rst $28
    nop
    xor $00
    rst $38
    nop
    rst $28
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
    db $fc
    nop
    rst $28
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    rst $10
    nop
    db $dd
    nop
    push af
    nop
    rst $30
    nop
    rst $28
    nop
    db $db
    nop
    db $ed
    nop
    db $fd
    nop
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
    ei
    nop
    rst $38
    nop
    db $fc
    nop
    db $ed
    nop
    db $fc
    nop
    cp $00
    rst $30
    nop
    ld a, a
    nop
    rst $18
    nop
    ei
    inc b
    rst $28
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
    nop
    nop
    nop
    ld b, b
    nop
    ld a, [c]
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    nop
    ld h, h
    nop
    and b
    nop
    and b
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    pop hl
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    add b
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
    cp $5f
    and b
    rst $38
    call nz, $d0ff
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    adc b
    nop
    sbc b
    nop
    add b
    nop
    and b
    nop
    sub d
    nop
    xor l
    nop
    ld c, b
    nop
    add b
    nop
    db $f4
    nop
    ret nc

    nop
    and b
    nop
    ld [hl], b
    nop
    xor c
    nop
    or b
    nop
    and b
    nop
    add d
    nop
    sub a
    nop
    or c
    nop
    xor [hl]
    nop
    ld [$f700], a
    nop
    rst $10
    nop
    db $fc
    nop
    db $f4
    nop

Jump_09a_4a00:
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ld [hl], h
    add b
    db $fc
    nop
    db $fc
    nop
    ei
    inc b
    ld a, a
    add b
    dec sp
    ret nz

    ld [hl+], a
    ret nz

    sub b
    ld h, b
    db $f4
    nop
    ld sp, hl
    nop
    push af
    nop
    call c, Call_000_3f00
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    xor d
    db $10
    ld a, [hl-]
    nop
    or l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    ld hl, sp+$00
    rst $38
    nop
    db $fd
    ld [bc], a
    ccf
    nop
    ld [bc], a
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
    add b
    ld a, a
    and b
    ld a, a
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
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    ret nz

    rst $38
    add b
    nop
    add b
    nop
    ld [$8000], sp
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret z

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
    nop
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
    jr nz, jr_09a_4aa8

jr_09a_4aa8:
    add b
    nop
    nop
    nop
    jr nz, jr_09a_4aae

jr_09a_4aae:
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
    ld b, b
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
    stop
    stop
    jr z, jr_09a_4ada

jr_09a_4ada:
    nop
    nop
    add sp, $00
    ld hl, sp+$00
    ld a, d
    nop
    ld a, d
    nop
    call nc, $9e00
    ld b, b
    cp $00
    call c, $e800
    nop
    ldh [rP1], a
    jp nz, $e800

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    nop
    ld [$08fc], sp
    db $fc
    ld [$08fc], sp
    db $fc
    ld [$08fc], sp
    db $fc
    ld [$0cfc], sp
    db $fc
    ld [$08fc], sp
    db $fc
    ld [$08fc], sp
    db $fc
    ld [$00fc], sp
    db $fc
    nop
    db $fc
    ld [$08fc], sp
    db $fc
    ret z

    db $fc
    ret z

    db $fc
    ret z

    db $fc
    ld [$08fc], sp
    db $fc
    ld [$88fc], sp
    db $fc
    ld [$08fc], sp
    db $fc
    ld [$00fc], sp
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    ld [$10f8], sp
    ld hl, sp+$00
    ld hl, sp+$10
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$10
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$80
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh [$60], a
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$60]
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh a, [$c0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh a, [$c0]
    pop hl
    ldh [$e1], a
    ret nz

    pop hl
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [rLCDC], a
    ldh [$c0], a
    add sp, -$40
    jp hl


    ret nz

    push hl
    ld b, b
    db $eb
    add b
    push hl
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0908], sp
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
    jr jr_09a_4c34

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_09a_4c44

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_09a_4c54

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09a_4c64

    ld [hl-], a

jr_09a_4c34:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09a_4c74

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    rra
    ld b, c

jr_09a_4c44:
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

jr_09a_4c54:
    rra
    ld d, d
    rra
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

jr_09a_4c64:
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

jr_09a_4c74:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rra
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
    rra
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
    rra
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
    rra
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
    ld [$08eb], a
    db $ec
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
    ld bc, $0802
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$091f], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld [$0e08], sp
    rrca
    db $10
    ld de, $1208
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_09a_4d41

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_09a_4d51

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_09a_4d61

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09a_4d71

    nop

jr_09a_4d41:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_09a_4d51:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_09a_4d61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_09a_4d71:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0102
    ld bc, $0000
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
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $0001
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0401
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    nop
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0800], sp
    ld [$0808], sp
    ld [$0000], sp
    ld [$0809], sp
    ld [$0800], sp
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
    ld [$003f], sp
    ld a, a
    nop
    ld h, $00
    dec sp
    nop
    ccf
    nop
    or a
    nop
    cp e
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld a, e
    nop
    ld d, e
    nop
    rst $38
    nop
    rst $30
    nop
    rst $20
    nop
    rst $20
    nop
    rst $10
    nop
    rst $18
    nop
    adc a
    nop
    rst $08
    nop
    adc a
    nop
    sbc a
    nop
    dec de
    nop
    rla
    nop
    rrca
    nop
    ld l, [hl]
    nop
    cpl
    nop
    ld l, $00
    sub d
    nop
    inc de
    nop
    ld bc, $1100
    nop
    ld hl, $0100
    nop
    inc bc
    nop
    rrca
    nop
    rrca
    nop
    cpl
    nop
    ccf
    nop
    rra
    nop
    cp $00
    ld [hl], c
    nop
    ld h, h
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    adc b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    nop
    ldh [rP1], a
    and b
    nop
    or b
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
    adc b
    nop
    sbc b
    nop
    ld b, b
    nop
    and b
    nop
    add b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    jr nc, jr_09a_4f30

jr_09a_4f30:
    inc a
    nop
    ld d, $00
    rlca
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld bc, $c100
    nop
    ld b, c
    nop
    ld bc, $0700
    nop
    rrca
    nop
    rra
    nop
    dec e
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    cp a
    nop
    adc l
    nop
    dec e
    nop
    inc l
    nop
    cp d
    nop
    dec sp
    nop
    daa
    nop
    cp $00
    ld l, a
    nop
    dec hl
    nop
    ld e, a
    nop
    sbc [hl]
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop
    ei
    nop
    cp h
    nop
    ld hl, sp+$00
    xor a
    nop
    or $00
    ret


    nop
    push de
    nop
    jp c, $ff00

    nop
    pop de
    nop
    ret


    nop
    push hl
    nop
    pop af
    nop
    ld [c], a
    nop
    ld sp, hl
    nop
    xor c
    nop
    rst $38
    nop
    ccf
    nop
    dec a
    ld [bc], a
    cp a
    nop
    db $dd
    nop
    rst $28
    db $10
    rst $38
    nop
    ei
    nop
    push af
    nop
    ld a, [$9f00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    sbc h
    nop
    call c, $ac00
    nop
    and h
    nop
    inc bc
    nop
    ld b, d
    nop
    ld bc, $0000
    nop
    stop
    nop
    nop
    nop
    nop
    ld bc, $0400
    nop
    dec bc
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
    nop
    dec b
    nop
    ld [de], a
    nop
    inc de
    nop
    inc d
    nop
    adc b
    nop
    ret nz

    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    nop
    nop
    add b
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
    nop
    nop
    nop
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
    jp nz, $e300

    nop
    ld a, d
    nop
    cp [hl]
    nop
    cp a
    nop
    rst $08
    nop
    rst $08
    nop
    adc a
    nop
    sbc $00
    sbc $00
    or a
    nop
    adc d
    nop
    adc [hl]
    nop
    sbc a
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    cp l
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
    rst $18
    nop
    cp $01
    rst $20
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
    ei
    nop
    jp $c300


    nop
    jp Jump_09a_6300


    nop
    ld [de], a
    nop
    ld hl, $2000
    nop
    jr nz, jr_09a_50ae

jr_09a_50ae:
    add l
    nop
    ret


    nop
    pop hl
    nop
    ld h, d
    nop
    ld [hl+], a
    nop
    add h
    nop
    xor e
    nop
    and a
    nop
    jp hl


    nop
    db $fd
    nop
    ld l, c
    nop
    ld e, $00
    adc a
    nop
    jp Jump_09a_4a00


    nop
    rst $08
    nop
    add a
    nop
    rlca
    nop
    add a
    nop
    sub e
    nop
    ld hl, $0100
    nop
    add c
    nop
    add c
    nop
    add d
    nop
    ld b, d
    nop
    ld bc, $4100
    nop
    ld hl, $0000
    nop
    inc b
    nop
    add h
    nop
    ld b, [hl]
    nop
    nop
    nop
    ld bc, $0800
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
    ld bc, $0000
    nop
    jr nz, jr_09a_5108

jr_09a_5108:
    add l
    nop
    sub l
    nop
    ld c, l
    nop
    dec bc
    nop
    rlca
    nop
    add b
    nop
    nop
    nop
    jr nz, jr_09a_5118

jr_09a_5118:
    ld bc, $0100
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    stop
    inc e
    nop
    ld [$4000], sp
    nop
    inc bc
    nop
    add l
    nop
    ld bc, $0500
    nop
    dec e
    nop
    ld a, [de]
    nop
    inc de
    nop
    ld c, e
    nop
    ld b, a
    nop
    inc b
    nop
    cpl
    nop
    inc c
    nop
    adc $00
    ld [$fb00], a
    nop
    cp l
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
    cp $01
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09a_5174:
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld sp, hl
    ld b, $f3
    inc c
    rst $20
    jr jr_09a_5174

    db $10
    rst $18
    jr nz, @-$5f

    ld h, b
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
    xor a
    nop
    xor a
    nop
    rst $28
    nop
    xor a
    nop
    and a
    nop
    xor a
    nop
    cp a
    nop
    ld a, $00
    sbc [hl]
    nop
    ld c, l
    nop
    inc c
    nop
    ld e, $00
    db $dd
    nop
    cp a
    nop
    ld l, $00
    inc e
    nop
    cp c
    nop
    adc l
    nop
    call $e900
    nop
    push de
    nop
    ret


    nop
    rst $10
    nop
    ld d, a
    nop
    ld c, a
    nop
    or e
    nop
    ld a, a
    nop
    and e
    nop
    db $eb
    nop
    adc $00
    jp nc, $8c00

    nop
    cp $00
    ld [hl], h
    nop
    ld sp, $3a00
    nop
    cp d
    nop
    cp l
    nop
    ei
    nop
    sbc $00
    sbc l
    nop
    xor l
    nop
    xor d
    nop
    ld c, $00
    and a
    nop
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc c
    nop
    inc [hl]
    nop
    inc a
    nop
    jr z, jr_09a_5204

jr_09a_5204:
    ld l, b
    nop
    ld [hl], c
    nop
    cp b
    nop
    dec e
    nop
    ld sp, $e000
    nop
    inc h
    nop

jr_09a_5212:
    ld h, b
    nop
    ld [$0000], sp
    nop
    ld [bc], a
    nop
    ld a, [hl+]
    nop
    ld a, [de]
    nop
    dec l
    nop
    ld d, e
    nop
    ld [hl+], a
    nop
    ld l, e
    nop
    ld e, a
    nop
    ld a, l
    nop
    ld e, a
    nop
    ld l, a
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

jr_09a_523e:
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

jr_09a_524a:
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
    jr nz, jr_09a_523e

    jr jr_09a_524a

    ld c, $f0
    rrca
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ret nc

    cpl
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $08
    jr nc, jr_09a_5212

    ld h, b
    rra
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
    cp a
    ld b, b
    rst $18

jr_09a_528b:
    jr nz, jr_09a_528b

    ld bc, $10ef
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
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
    xor a
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
    ld a, a
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
    rst $38
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
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    cp a
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
    sbc a
    nop
    ccf
    nop
    sbc a
    nop
    ccf
    nop
    ccf
    nop
    ld e, a
    nop
    ld c, a
    nop
    cp a
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    add b
    ld h, a
    sbc b
    ld e, a
    and b
    rst $28
    db $10
    rst $28
    db $10
    ld e, a
    and b
    sbc a
    ldh [$5f], a
    ldh [$1f], a
    ldh [$3d], a
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
    cp $01
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    ei
    inc b
    rst $30
    ld [$01fe], sp
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
    push af
    ld a, [bc]
    di
    inc c
    pop af
    ld c, $f1
    ld c, $f8
    rlca
    ld hl, sp+$07
    ld sp, hl
    ld b, $fc
    inc bc
    db $fc
    inc bc
    add sp, $17
    ld a, [$fa05]
    dec b
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
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
    rst $30
    ld [$08f7], sp
    or $09
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    ld a, [$fc05]
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
    ldh a, [rIF]
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    pop hl
    ld e, $c1
    ld a, $c1
    ld a, $c3
    inc a
    add e
    ld a, h
    add a
    ld a, b
    rlca
    ld hl, sp+$0d
    ldh a, [$8f]
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$bf], a
    ld b, b
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
    cp $00
    db $fd
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
    cp $00
    rst $38
    nop
    ld a, [hl]
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $db
    nop
    cp $00
    inc b
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    add d
    ld a, h
    add e
    ld a, h
    inc bc
    db $fc
    add d
    ld a, h
    add b
    ld a, [hl]
    nop
    cp $80
    ld a, [hl]
    nop
    cp $11
    xor $19

jr_09a_5459:
    and $18

jr_09a_545b:
    rst $20
    sbc b
    ld h, a
    ldh a, [rIF]
    sbc b
    ld h, a
    db $10
    rst $28
    sub b
    ld l, a
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ld b, b
    cp a
    ld h, b
    sbc a
    ldh [$1f], a
    or b
    ld c, a
    jr nz, jr_09a_5459

    jr nz, jr_09a_545b

    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    ld h, h
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nc

    cpl
    add b
    ld a, a
    and b
    ld e, a
    ret nz

    ccf
    ld h, b
    sbc a
    ldh a, [rIF]
    ldh [$1f], a
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
    ret nz

    ccf
    pop bc
    ld a, $d1
    ld l, $c2
    inc a
    and d
    ld e, h
    add b
    ld a, h
    and h
    ld e, b
    adc b
    ld [hl], b
    add b
    ld a, b
    and d
    ld e, h
    ld b, b
    cp [hl]
    ld b, b
    cp [hl]
    adc b
    ld a, [hl]
    add c
    ld a, [hl]
    ld [$81ff], sp
    ld a, a
    add c
    ld a, a
    nop
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld [bc], a
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
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
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
    cp $00
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
    rst $28
    nop
    cp $00
    db $db
    nop
    rst $28
    nop
    rst $18
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    db $ed
    nop
    db $eb
    nop
    db $fd
    nop
    db $dd
    nop
    ld b, l
    nop
    add b
    nop
    ld bc, $8100
    nop
    ld de, $1000
    nop
    ld b, b
    nop
    ld b, b
    nop
    sub b
    nop

jr_09a_553a:
    ld [hl], b
    nop

jr_09a_553c:
    stop
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
    rst $28
    nop
    ld [hl+], a
    ret nz

    ld a, b
    add b
    ld a, [hl]
    add b
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
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    ld b, b
    add b
    ld [hl], b
    add b
    ld e, b
    add b
    ld b, b
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    jr nz, jr_09a_553a

    jr nz, jr_09a_553c

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR10], a

jr_09a_5583:
    ldh [rNR12], a
    ldh [rNR11], a
    ldh [rP1], a
    pop af
    rlca
    pop af
    ld hl, $0ff3
    di
    dec hl
    rst $30
    rlca
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    jr nz, jr_09a_5583

    ld a, [hl]
    add c
    ld a, a
    add b
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
    ld [bc], a
    db $fd
    daa
    ret c

    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    db $10
    jr nz, @+$3e

    ld a, $1f
    ccf
    ccf

jr_09a_55c7:
    rra
    cp a
    rra
    rra
    sbc a
    adc a
    sbc a
    sbc a
    adc a
    rst $08
    adc a
    rrca
    rst $08
    ld c, a
    rst $08
    ld h, $cf
    ld c, $e7
    inc b
    rst $20
    inc c
    rst $20
    jr jr_09a_55c7

    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    call c, $c500
    nop
    and a
    nop
    rlc b
    rst $18
    nop
    xor $00
    call c, $dd00
    nop
    ldh [rP1], a
    db $ed
    nop
    db $ed
    nop
    db $fc

jr_09a_5609:
    nop
    ld a, [$f800]
    nop
    call nc, $0800
    nop
    xor b
    nop
    xor b

jr_09a_5615:
    nop
    and d
    nop
    dec [hl]
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    add sp, $00
    ret nc

    nop
    ret c

jr_09a_5623:
    nop
    jr nz, jr_09a_5626

jr_09a_5626:
    jr nz, jr_09a_5628

jr_09a_5628:
    nop
    nop
    nop
    nop
    ld bc, $0000

jr_09a_562f:
    nop
    jr z, jr_09a_5609

    nop
    rst $38
    jr nz, jr_09a_5615

    add h
    ld a, e
    ld d, h
    xor e
    jr jr_09a_5623

    ld a, [bc]
    push af
    add c
    ld a, [hl]
    nop
    rst $38
    ld h, d
    sbc l
    ld [bc], a
    db $fd
    ld b, b
    cp a
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    jr nz, jr_09a_562f

    nop
    rst $38
    ld [$00f7], sp
    rst $38
    inc b
    ei
    ld c, $f1
    ld a, [bc]
    push af
    scf
    ret z

    inc sp
    call z, $807f
    ccf
    ret nz

    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    inc b
    ei
    ld b, $f9
    nop
    rst $38
    nop
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    db $fd
    nop
    adc $f0
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
    dec c
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
    cp a
    nop
    inc b
    nop
    nop
    nop
    nop
    rst $38
    dec b
    ld a, [$50af]
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
    add b
    nop
    ret nc

    ldh [$fd], a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    ld [c], a
    dec sp
    call nz, Call_000_00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ldh a, [rP1]
    ld [hl], h
    nop
    db $fc
    nop
    inc a
    nop
    ld a, b
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    di
    nop
    and e
    nop
    add $00
    ld b, h
    nop
    ld [bc], a
    nop
    adc b
    nop
    adc b
    nop
    nop
    nop
    inc d
    nop
    stop
    nop
    nop
    adc c
    nop
    stop
    ld bc, $0100
    nop
    ld bc, $2100
    nop
    ld bc, $4200
    nop
    ld b, d
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $1500
    nop
    ld de, $2000
    rst $18
    ld [$02f7], sp
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld a, b
    add a
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
    ld c, b
    or a
    ld b, c
    cp [hl]
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    adc b
    ld [hl], a
    add hl, hl
    sub $3c
    jp $cf30


    inc e
    db $e3
    sub b
    ld l, a
    sub h
    ld l, e
    ld [hl], b
    adc a
    ld [hl], $c9
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    dec b
    ld a, [$fb04]
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    nop
    db $fc
    nop
    ld a, a
    add b
    rst $00
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
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
    dec b
    nop
    nop
    nop
    nop
    rst $38
    jp nz, $fe3d

    ld bc, $00ff
    rst $38
    nop
    rst $38
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
    nop
    add b
    nop
    db $10
    ldh [$f3], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    di
    ld a, b
    add a
    sbc h
    ld h, e
    db $76
    adc c
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
    ei
    nop
    push hl
    nop
    ld [$4900], sp
    nop
    ld b, d
    nop
    dec b
    nop
    inc bc
    nop
    ld h, $00
    sbc a
    nop
    or [hl]
    nop
    daa
    nop
    ld h, [hl]
    nop
    ld l, [hl]
    nop
    ld a, $00
    ld e, $00
    ld e, $00
    jr jr_09a_57e6

jr_09a_57e6:
    jr jr_09a_57e8

jr_09a_57e8:
    jr nc, jr_09a_57ea

jr_09a_57ea:
    jr jr_09a_57ec

jr_09a_57ec:
    cp b
    nop
    or h
    nop
    ldh a, [rP1]
    cp b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    pop hl
    nop
    pop bc
    nop
    inc bc

jr_09a_5801:
    nop
    ld b, $00
    inc c
    nop
    inc c
    nop

jr_09a_5808:
    adc h
    nop
    call z, Call_000_3c00
    nop
    ld b, h
    nop
    inc sp
    call z, $f50a
    inc bc
    db $fc
    nop
    rst $38
    jr jr_09a_5801

    ld bc, $01fe
    cp $01
    cp $e5
    nop
    rst $28
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_09a_5808

    jr nz, @-$6f

    ld h, b
    rst $38
    nop
    rst $28
    nop
    ld bc, $19fe
    and $01
    cp $08
    rst $30
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    and h
    ld e, e
    inc d
    db $eb
    inc d
    db $eb
    inc b
    ei
    inc h
    db $db
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
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
    call c, $ff00
    nop

jr_09a_585e:
    ccf
    ret nz

    pop hl
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
    and $ff
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    or $09
    rst $38
    nop
    rlca
    nop
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
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
    nop
    nop
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_09a_585e

    ld a, [c]
    db $fc
    ld a, d
    add l
    ld l, a
    sub b
    ld c, a
    or b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, [$f205]
    dec c
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
    sub c
    nop
    sub h
    nop
    inc d
    nop
    dec b
    nop
    nop
    nop
    ld bc, $1800
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
    ld b, c
    nop
    ret


    nop
    ld c, b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop

jr_09a_58e9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and d
    nop
    and l

jr_09a_58f5:
    nop
    inc b
    nop
    ld c, $00
    rlca
    nop
    rlca
    nop
    daa
    nop
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ld e, a
    and b
    rst $38

jr_09a_590b:
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld a, d
    add l
    jr nz, jr_09a_58f5

    nop
    rst $38
    jr nc, jr_09a_58e9

jr_09a_591a:
    ret nz

    ccf
    and e
    ld e, h
    or e
    ld c, h
    sbc l
    ld h, d
    adc a
    ld [hl], b
    call nz, $c93b
    ld [hl], $10
    rst $28
    jr nz, jr_09a_590b

    db $10
    rst $28
    ret z

    scf
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_09a_591a

    jr nz, @-$10

    ld bc, $003f
    nop
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
    db $e3
    nop
    ei
    nop
    ccf
    ret nz

    rst $20
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld de, $00ff
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $7f00
    nop
    rra
    nop
    ld b, a
    nop
    inc bc
    nop
    ld bc, $0200
    nop
    ret z

    nop
    rst $28
    nop
    ret nz

    add b
    xor l
    add b
    adc d
    add b
    sub h
    add b
    ld bc, $0280
    add b
    ld [hl-], a
    add b
    add l
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    dec a
    ret nz

    rst $28
    ldh a, [$fe]
    rst $38
    ld hl, sp+$07
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
    rst $38
    nop
    xor a
    nop
    cpl
    nop
    ld l, a
    nop
    ld l, a
    nop
    rst $18
    nop
    sbc a
    nop
    dec a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $08
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    db $eb
    nop
    ei
    nop
    ld a, [$f400]
    nop
    ld [hl], d
    nop
    jp nz, $d300

    nop
    db $e3
    nop
    db $e3
    nop
    db $e4
    nop
    xor $00
    xor $00
    db $db
    nop
    db $ed
    nop
    rst $28
    nop
    xor e
    nop
    inc bc
    db $fc
    ld de, $01ee
    cp $40
    cp a
    db $dd
    ld [hl+], a
    jp z, $f135

    ld c, $f3
    inc c
    inc de
    nop
    ld [bc], a
    nop
    sub d
    nop
    xor b
    nop
    cp a
    nop
    rla
    ld [$001c], sp
    nop
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    sbc $21
    ld l, a
    sub b
    ld a, a
    add b
    ccf
    ret nz

    dec l
    jp nc, $e41b

    dec d
    ld [$e21d], a
    ld l, d
    sub l
    ld a, h
    add e
    ld l, [hl]
    sub c
    dec b
    ld a, [$fa05]
    inc c
    di
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
    ldh [rP1], a
    add sp, $00
    rst $38
    nop
    rrca
    ldh a, [$f8]
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
    dec sp
    db $fc
    rst $08
    ld hl, sp+$77
    ld hl, sp+$27
    ld hl, sp+$0c
    ldh a, [rTMA]
    ld sp, hl
    inc c
    di
    inc c
    di
    db $fc
    inc bc
    ld a, [c]
    dec b
    db $e4
    inc bc
    ldh [rP1], a
    ret nz

    nop
    inc c
    ldh a, [$e6]
    jr @-$06

    ld b, $fe
    ld bc, $00ff
    rst $38
    nop
    rra
    nop
    add e
    nop
    ldh [rP1], a
    rrca
    nop
    ret nz

    nop
    ld d, b
    nop

jr_09a_5a98:
    or l
    nop
    xor e
    nop
    ld d, l
    nop
    nop
    nop
    inc b
    nop
    stop
    nop
    nop
    nop

jr_09a_5aa7:
    nop
    nop
    nop
    ldh a, [rP1]
    ei
    nop
    rst $28
    nop
    nop
    ret nz

    add b
    ld a, h
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

jr_09a_5ad6:
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
    cp $01
    ld a, a
    nop
    ld a, a
    nop
    rst $18
    jr nz, jr_09a_5ad6

    jr nz, jr_09a_5a98

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld a, [c]
    dec c
    adc d
    ld [hl], l
    ld a, a
    add b
    rst $18
    jr nz, jr_09a_5aa7

    ld h, c
    db $fd
    ld [bc], a
    sbc l
    ld h, d
    ld l, $d1
    or l
    ld c, d
    db $fd
    ld [bc], a
    cp h
    ld b, e
    xor $11
    ld b, a
    cp b
    ld e, l
    and d
    ld l, b
    sub a
    ld [$e915], a
    ld d, $f5
    ld a, [bc]
    rst $38
    nop
    cp $01
    cp $01
    rst $28
    db $10
    xor $11
    call c, Call_000_2623
    reti


    add d
    ld a, l
    ret nz

    ccf
    add sp, $17
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
    nop
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
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    ccf
    ret nz

    push hl
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    ccf
    ei
    rlca
    db $fc
    inc bc
    ld a, [$7b01]
    nop
    rra
    nop
    ld bc, $01fe
    cp $00
    rst $38
    ld c, $f1
    ld c, $f1
    ld [de], a
    pop hl
    add d
    ld [hl], c
    ld [hl], b
    rrca
    ld b, $01
    ld bc, $c000
    nop
    ei
    nop
    adc [hl]
    ld [hl], c
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    inc a
    inc bc
    rst $38
    nop
    ld e, $01
    ld [$5003], sp
    inc bc
    dec b
    ld [bc], a
    jr jr_09a_5ba4

    jr nz, jr_09a_5ba6

    inc a
    inc b

jr_09a_5ba4:
    jr nz, jr_09a_5bb2

jr_09a_5ba6:
    ld e, h
    ld [$1849], sp
    db $10
    add hl, de
    cp e
    ld de, $3391
    inc hl
    inc bc

jr_09a_5bb2:
    ld h, a
    inc hl
    inc hl
    rst $20
    dec l
    rst $00
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    push af
    ld a, [bc]
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $bb
    ld b, h
    dec [hl]
    jp z, $0bf4

    cp h
    ld b, e
    cp b
    ld b, a
    cp b
    ld b, a
    ld hl, sp+$07
    ld hl, sp+$07
    pop de
    ld l, $d1
    ld l, $fc
    inc bc
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    db $f4
    dec bc
    db $f4
    dec bc
    ld [hl], h
    adc e
    push af
    ld a, [bc]
    ld hl, sp+$07
    ld a, [$f905]
    ld b, $e9
    ld d, $eb
    inc d
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
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
    add b
    ld a, a

jr_09a_5c1e:
    nop
    rst $38
    ld bc, $a2fe
    ld e, l
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    rla
    add sp, $00
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
    ld b, b
    nop
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
    ld bc, $00fe
    nop
    ld [$0400], sp
    nop
    and $00
    db $f4
    nop
    ld hl, sp+$00
    jr c, jr_09a_5c1e

    di
    db $fc
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
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    sbc a
    ld a, a
    sbc $7f
    sbc $7f
    sbc $7f
    rst $00
    ld a, [hl]
    add e
    ld a, [hl]
    ld bc, $71fe
    adc [hl]
    db $fc
    add e
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld a, l
    ld [bc], a
    dec a
    ld [bc], a
    rla
    nop
    rlca
    nop
    ld a, [$f807]
    rlca
    ld a, b
    rlca
    nop
    rlca
    nop
    rra
    jr jr_09a_5cbb

    jr jr_09a_5cdd

    inc a
    ccf
    ld [hl], a
    jr c, jr_09a_5d1a

    ld a, b
    ld [hl], a
    ld a, b
    rst $38
    ldh a, [$f7]
    ld hl, sp-$51
    ldh a, [$8f]
    ldh a, [$cf]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$9f]
    ldh [$9f], a
    ldh [$1f], a
    ldh [$1f], a

jr_09a_5cbb:
    ldh [$3f], a
    ret nz

    rra
    ldh [$2f], a
    ret nc

    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ld a, $c0
    rra
    ldh [$3f], a
    ret nz

    rra
    ldh [rNR34], a
    ldh [$3e], a
    ret nz

    ld a, $c0
    ld e, [hl]
    and b
    ld a, [hl]
    add b
    ld e, l
    and b
    ld a, a

jr_09a_5cdd:
    add b
    ld a, b
    add b
    ld a, b
    add b
    db $fc
    nop
    db $fc
    nop
    db $fc

jr_09a_5ce7:
    nop
    cp h

jr_09a_5ce9:
    ld b, b
    db $fc
    nop
    ld a, b
    add b
    db $fc
    nop
    ld a, [hl]
    add b
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    pop af

jr_09a_5cfb:
    nop
    ei
    nop
    cp $00
    ld bc, $22fe

jr_09a_5d03:
    db $dd
    nop
    rst $38
    jr nz, jr_09a_5ce7

    jr nz, jr_09a_5ce9

    and b
    ld e, a
    add sp, $17
    add sp, $17
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_09a_5d1a:
    jr nz, jr_09a_5cfb

    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    jr nz, jr_09a_5d03

    ld [$f3f7], sp
    inc c
    db $76
    adc c
    cp $01
    db $fc
    inc bc
    cp [hl]
    ld b, c
    or [hl]
    ld c, c
    inc h
    db $db
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
    nop
    ld bc, $0000
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    add e
    add b
    jp $c780


    add b
    rst $20
    add b
    ld b, a
    add b
    adc a
    nop
    adc a
    nop
    sbc a
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
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
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    di
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ret nc

    nop
    ret nz

    nop
    ret nc

    nop
    jp nc, $8000

    nop
    add b
    nop
    nop
    nop
    sub b
    nop
    and b
    nop
    nop
    nop
    ldh [rP1], a
    and b
    nop
    ld b, b
    nop
    ldh [rP1], a
    ld b, b
    nop
    ld h, b
    nop
    ld b, b
    nop
    nop
    nop
    jr nz, jr_09a_5dbe

jr_09a_5dbe:
    add b
    nop
    nop

jr_09a_5dc1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_09a_5dcc

jr_09a_5dcc:
    add b
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
    nop
    nop
    nop
    nop
    add b

jr_09a_5ddd:
    nop
    ld bc, $0600
    nop
    inc c
    nop
    sbc b
    nop
    ld [hl], b
    nop
    ld b, b
    nop
    add b
    nop
    jr nz, jr_09a_5dee

jr_09a_5dee:
    ld h, b
    nop
    ld b, $f9
    db $10
    rst $28
    ld de, $02ee
    db $fd
    jr c, jr_09a_5dc1

    db $10
    rst $28
    jr nz, jr_09a_5ddd

    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld bc, $08fe
    rst $30
    ld e, h
    and e
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
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
    rra
    nop
    rra
    nop
    ccf
    nop
    dec a
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fa00]
    nop
    ld a, [$fa00]
    nop
    push af
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
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
    add b
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
    nop
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
    ld [bc], a
    nop
    ld [de], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc c
    nop
    ld [$1000], sp
    nop
    ld h, b
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    jr nz, jr_09a_5ed4

jr_09a_5ed4:
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
    cp a
    nop
    rst $18
    jr nz, @+$01

    nop
    ei
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    ld a, h
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rrca
    nop
    rrca
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
    cp $00
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    db $f4
    nop
    db $f4
    nop
    ldh [rP1], a
    ld hl, sp+$00
    call nz, $a000
    nop
    ret z

    nop
    ld b, b
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
    nop
    nop
    jr nz, jr_09a_5f68

jr_09a_5f68:
    ld h, b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
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
    nop
    nop
    nop
    ld bc, $0700
    nop
    dec c
    nop
    ld [$1000], sp
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
    ld b, b
    nop
    ld bc, $0000
    nop
    nop
    nop
    rla
    ld [$0837], sp
    ld [hl], $09
    scf
    ld [$007f], sp
    ld [hl], a
    ld [$04fb], sp
    rst $30
    ld [$0df2], sp
    push af
    ld a, [bc]
    ei
    inc b
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
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $30
    nop
    rst $20
    nop
    rst $20
    nop
    ld b, a
    nop
    add l
    nop
    rlca
    nop
    ld b, $00
    ld c, $00
    inc e
    nop
    ld e, $00
    ld [hl], $00
    ld l, $00
    ld h, h
    nop
    add $00
    adc d
    nop
    inc [hl]
    nop
    ld b, $00
    ld b, [hl]
    nop
    inc b
    nop
    call nz, $c600
    nop
    ld b, $00
    ld b, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld e, $00
    ld e, d
    nop
    ld a, $00
    ld [hl], d
    nop
    jp nz, $8200

    nop
    ld [bc], a
    nop
    ld b, $00
    ld [bc], a
    nop
    ld b, $00
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld l, e
    nop
    ld d, e
    nop
    ld l, $00
    ld sp, $3300
    nop
    and e
    nop
    inc hl
    nop
    ld h, e
    nop
    ld b, a
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    rra
    nop
    dec sp
    nop
    ld h, c
    nop
    pop af
    nop
    ld sp, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0500
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    nop
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
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    jp c, $f800

    nop
    ld a, h
    nop
    ld a, b
    nop
    ld e, h
    nop
    ld [$ec00], a
    nop
    ret nz

    nop
    ret nc

    nop
    ldh a, [rP1]
    and b
    nop
    pop hl
    nop
    ret


    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    adc b
    nop
    nop
    nop
    jr nz, jr_09a_60fa

jr_09a_60fa:
    and b
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
    jr nz, jr_09a_610a

jr_09a_610a:
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
    add c
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
    inc c
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
    ld [$0000], sp
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
    stop
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
    ld bc, $8300
    nop
    rrca
    nop
    inc e
    nop
    ld hl, sp+$00
    and c
    ld b, b
    db $e4
    nop
    call z, Call_09a_4800
    nop
    add c
    nop
    nop
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    ld [bc], a
    nop
    add h
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
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
    nop
    add b
    nop
    add b
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0504
    dec b
    dec b
    dec b
    dec b
    ld b, $01
    ld bc, $0701
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec b
    dec b
    dec b
    dec b
    dec b
    ld c, $01
    ld bc, $0f01
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $05
    dec b
    dec b
    dec b
    rla
    jr @+$03

    ld bc, $0101
    ld bc, $1901
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $05
    dec b
    rra
    jr nz, @+$03

    ld bc, $0101
    ld bc, $2101
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $05
    dec b
    daa
    jr z, @+$03

    ld bc, $0101
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09a_6204

    dec b
    ld sp, $3332
    inc [hl]

jr_09a_6204:
    dec [hl]
    ld bc, $3736
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec b
    dec b
    dec b
    ld sp, $3e3d
    ccf
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
    dec b
    ld c, e
    ld c, h
    ld c, l
    ld sp, $3131
    ld sp, $4f4e
    dec b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld sp, $3131
    ld sp, $5831
    dec b
    dec b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld d, c
    ld e, [hl]
    ld e, a
    ld sp, $6160
    ld h, d
    ld h, d
    ld h, e
    ld h, h
    dec b
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
    ld [hl], b
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld sp, $7b7a
    ld a, h
    ld a, l
    ld sp, $3131
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld sp, $3131
    ld sp, $3183
    add h
    add l
    add [hl]
    add a
    ld h, d
    adc b
    adc c
    ld sp, $8a31
    ld sp, $3131
    ld sp, $3157
    ld sp, $3131
    ld sp, $8c8b
    adc l
    ld sp, $8e31
    ld sp, $3131
    ld sp, $318f
    ld sp, $3131
    ld sp, $9190
    adc l
    ld sp, $9231
    ld sp, $3131
    sub e
    sub h
    ld sp, $9531
    sub [hl]
    sub a
    sbc b
    sbc c
    adc l
    ld sp, $9a31
    ld sp, $3131
    sbc e
    sbc h
    ld sp, $9d31
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    ld sp, $a731
    xor b
    xor c
    ccf
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
    ld sp, $b6b5
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp a
    ret nz

    ld sp, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop

Jump_09a_6300:
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    inc bc
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
    nop
    nop
    ld bc, $0000
    dec b
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
    nop
    nop
    ld bc, $0300
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
    dec b
    ld [bc], a
    nop
    dec b
    ld [bc], a
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
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc bc
    nop
    jr nz, jr_09a_6381

jr_09a_6381:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
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
    ld bc, $0000
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
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    nop
    nop
    rlca
    rlca
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
    ld bc, $0000
    ld hl, sp-$01
    ld a, $3f
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
    inc bc
    nop
    inc bc
    ld bc, $0103
    ld bc, $0100
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
    rst $38
    nop
    cp $00
    ldh a, [rSB]
    ret nz

    rrca
    nop
    ccf
    inc bc
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ldh a, [$c0]
    cp $78
    ld a, a
    rrca
    rrca
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
    rst $38
    nop
    db $fd
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp+$7e
    db $fc
    cp [hl]
    db $fc
    cp [hl]
    db $fc
    sbc $fc
    and a
    ld e, b
    rst $38
    inc bc
    sub l
    ld bc, $0095
    sub l
    nop
    sub l
    ld bc, $1755
    ld d, l
    ccf
    ld a, a
    inc a
    ld a, a
    inc bc
    ld d, a
    inc bc
    dec hl
    ld bc, $012b
    dec [hl]
    ld bc, $1135
    ld a, [hl-]
    jr jr_09a_6506

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
    db $e3
    inc bc
    add e
    rra
    ld bc, $077f
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
    ld bc, $0000
    nop
    nop
    nop

jr_09a_6506:
    nop
    ldh [rP1], a
    db $fc
    ldh [rIE], a
    inc e
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rP1], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [rP1]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $01
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    inc bc
    rst $38
    cp $03
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
    nop
    inc bc
    nop
    rlca
    inc e
    rra
    rra
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    rrca
    nop
    ld bc, $0000
    nop
    nop
    add b
    nop
    ldh a, [$80]
    rst $38
    ld [hl], b
    ld a, a
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    inc a
    inc bc
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $81
    db $fc
    add e
    ld [hl], b
    ld c, a
    ld b, b
    ld a, a
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
    ld hl, sp-$01
    ld a, a
    ld a, a
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
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
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
    nop
    nop
    nop
    ldh [rP1], a
    db $fc
    ret nz

    rst $38
    jr jr_09a_6647

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
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    di
    nop
    adc a
    ld bc, $ff07
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a

jr_09a_6647:
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    pop af
    ldh a, [rNR22]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    pop bc
    cp a
    db $fc
    or a
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
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
    rrca
    nop
    inc bc
    nop
    nop
    ret nz

    nop
    ld hl, sp+$00
    rst $38
    jr nz, jr_09a_66eb

    inc b
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
    nop
    db $fc
    nop
    ld hl, sp+$08
    rra
    rra
    rrca
    rrca
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
    inc de
    db $10
    ld e, $11
    ld a, b
    rla
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop

jr_09a_66eb:
    ccf
    nop
    ld a, a
    nop
    cp $07
    ldh a, [$1f]
    ldh [rNR42], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    ld a, b
    ldh [$7f], a
    rst $38
    ccf
    rst $38
    rlca
    rst $00
    jr c, @-$06

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
    rst $38
    rra
    rst $38
    pop bc
    ld a, a
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
    add b
    rst $38
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
    nop
    rst $38
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
    inc bc
    nop
    nop
    ldh [rP1], a
    cp $80
    rst $38
    ldh a, [rIF]
    ld a, [hl]
    ld bc, $003f
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, $01
    ld c, $0d
    di
    ld a, [c]
    db $e3
    ld [c], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    rla
    ld [de], a
    rla
    ld [de], a
    ld e, $13
    rra
    ld [de], a
    ld a, e
    ld d, $c3
    ld a, $81
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add a
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
    inc e
    db $e3
    ld h, e
    add b
    call z, Call_000_1000
    nop
    ldh [rP1], a
    db $fc
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop hl
    add b
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ld a, a
    rst $38
    add e
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
    rra
    rst $38
    add c
    rst $38
    ld hl, sp+$0f
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
    rrca
    rrca
    inc bc
    jp $ff07


    nop
    rst $38
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
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
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    ccf
    pop bc
    ccf
    ld bc, $00ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
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
    ldh [$1f], a
    rra
    nop
    ld [$1100], sp
    nop
    inc hl
    ld bc, $03e7
    ld a, a
    daa
    ld a, a
    ccf
    rst $38
    ld c, a
    rst $38
    cp $fd
    db $fd
    di
    di
    rst $28
    rst $28
    sbc $df
    inc a
    ccf
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
    ldh a, [rIE]
    cp $ff
    rst $38
    rra
    rst $38
    ld bc, $f0ff
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09a_68ea:
    rst $38
    ld bc, $fefd
    rst $38
    add b
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
    jr nz, jr_09a_6968

    jr nz, jr_09a_68ea

    db $10
    ldh a, [$1f]
    di
    sbc a
    rst $38
    ret nz

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
    add b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    ld hl, sp-$41
    ret nz

    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    rst $38
    cp $7e
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    cp b
    cp b
    rst $38
    cp b
    rst $38
    jr c, @+$01

    jr c, @+$01

jr_09a_6968:
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$1f], a
    ld hl, sp+$07
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
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld a, b
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    add hl, bc
    ld sp, hl
    add hl, bc
    ld sp, hl
    rra
    pop af
    ccf
    pop hl
    ld a, a
    pop bc
    ld a, a
    pop bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $ff01
    db $e3
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
    inc bc
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
    rst $38
    ld hl, sp+$7f
    db $fc
    rra
    cp $0f
    rst $38
    rlca
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

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    ccf
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    cp a
    ld b, b
    cp a
    ld b, b
    and b
    ld e, a
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec a
    rst $38
    jp $07fe


    cp $07
    db $fd
    rrca
    ei
    rra
    ei
    ccf
    di
    inc a
    db $e4
    ld a, h
    call z, $bcfc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    db $10
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
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
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
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [$7f]
    ld hl, sp+$3f
    db $fc
    rrca
    cp $07
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    ldh [rP1], a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    ldh [rP1], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    db $fd
    ld a, [$fa05]
    dec b
    ld a, [$fa05]
    dec b
    ld a, [$fa05]
    dec b
    ld a, [$fa05]
    dec b
    ld a, [$fa05]
    dec b
    ld a, [$fa05]
    dec b
    add sp, $05
    ld a, [$fa05]
    dec b
    ld a, [$fc05]
    db $fc
    ccf
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $03
    db $fd
    rlca
    ei
    rrca
    rst $30
    rra
    rst $38
    dec e
    db $fd
    cpl
    rst $28
    ld c, [hl]
    adc $8e
    adc [hl]
    rst $38
    sbc h
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    ccf
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc a
    rst $38
    inc [hl]
    rst $38
    ld d, $ff
    ld de, $10ff
    rst $38
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
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
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
    rst $38
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
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    inc bc
    nop
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop

jr_09a_6bff:
    rst $38
    nop
    ld [$fcf6], sp
    rst $28
    db $fc
    rst $18
    db $fc
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    jr nc, jr_09a_6bff

    ldh a, [$30]
    ldh a, [$3e]
    ldh a, [$7f]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    ld d, b
    rst $38
    ld b, c
    cp $01
    cp $01
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
    ldh a, [$1f]
    ldh [$9f], a
    ldh [$7f], a
    ret nz

    ccf
    ldh a, [$3f]
    ret z

    ld a, a
    add [hl]
    ld a, a
    add c
    ld a, a
    add b

jr_09a_6c48:
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    nop

jr_09a_6c5a:
    rst $38
    nop

jr_09a_6c5c:
    rst $38
    nop

jr_09a_6c5e:
    rst $38
    nop

jr_09a_6c60:
    rst $38
    nop

jr_09a_6c62:
    rst $38
    nop

jr_09a_6c64:
    ld a, a
    nop

jr_09a_6c66:
    ccf
    nop

jr_09a_6c68:
    ccf
    nop

jr_09a_6c6a:
    ccf
    nop

jr_09a_6c6c:
    ld a, a
    nop

jr_09a_6c6e:
    rst $38
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
    ld hl, sp-$09
    ld [$08f7], sp
    rla
    add sp, -$29
    jr z, jr_09a_6c5a

    jr z, jr_09a_6c5c

    jr z, jr_09a_6c5e

    jr z, jr_09a_6c60

    jr z, jr_09a_6c62

    jr z, jr_09a_6c64

    jr z, jr_09a_6c66

    jr z, jr_09a_6c68

    jr z, jr_09a_6c6a

    jr z, jr_09a_6c6c

    jr z, jr_09a_6c6e

    jr z, jr_09a_6c48

    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, e
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
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
    rst $38
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
    ld bc, $01fd
    ld a, [$fa03]
    ei
    cp $07
    rst $38
    rlca
    rst $38
    rrca
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
    rra
    rrca
    db $10
    rrca
    rla
    rrca
    ld de, $1109
    rrca
    ld de, $110f
    rrca
    stop
    ccf
    nop
    jr nz, jr_09a_6ddc

    ld h, b
    ld c, e
    ld h, b
    ld c, a
    ld l, a
    ld c, a
    ld h, b
    ld b, b
    ld a, a
    ld c, a
    ld l, h
    db $dd
    db $ec
    rst $18
    add sp, -$26
    ei
    rst $18
    rst $30
    sbc $f1
    ret nz

    rst $38
    cp a
    jp nz, $c0bf

    cp a
    ldh [$bf], a
    ldh a, [$b9]
    sub $a7
    ret c

    sbc a
    ldh [$81], a
    cp $fe
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
    rrca
    rst $38
    ldh a, [$80]
    ccf
    add b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    add b
    rst $38
    add b
    rst $38

jr_09a_6ddc:
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    rst $38
    rst $18
    jr nz, @-$2f

    ret nz

    rst $08
    ret nz

    sbc $c1
    cp $c7
    cp $ff
    cp $05
    nop
    rst $38
    ld c, d
    dec b
    jp c, $fe05

    adc c
    db $fc
    sbc [hl]
    db $fc
    ld a, [hl]
    nop
    cp $bc
    ld [bc], a
    sbc h
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$7c
    ld hl, sp-$04
    nop
    db $fc
    ld hl, sp+$44
    ret c

    inc h
    cp b
    ld b, h
    ld a, b
    add h
    ld hl, sp+$0c
    ldh a, [$08]
    ldh a, [$58]
    ldh a, [$78]
    nop
    ld hl, sp-$08
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp-$05
    ld a, [bc]
    ei
    dec c
    db $fd
    inc b
    db $fd
    ld b, $fe
    ld [bc], a
    cp $03
    rst $38
    ld bc, $feff
    ld bc, $00ff
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
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    nop
    ei
    ld bc, $06fb
    rst $38
    inc b
    db $fd
    inc e
    db $fd
    ld h, h
    db $fc
    add [hl]
    cp $06
    cp $02
    cp $02
    cp $03
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    ld a, a
    cp $ff
    db $fc
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
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [$fe], a
    ret nz

    cp $c0
    cp $c0
    ld a, [hl]
    ret nz

    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30

jr_09a_6ef1:
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
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
    jr nz, jr_09a_6ef1

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, c
    ccf
    ld b, c
    ccf
    ld a, a
    ld bc, $017f
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ccf
    rlca
    ccf
    ld c, a
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    rst $38
    adc a
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
    ccf
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    rrca
    rrca
    ld h, b
    ldh [$7f], a
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
    ei
    ld hl, sp-$05
    ldh a, [$fb]
    ldh [$fb], a
    ret nz

    rst $30
    add b
    rst $30
    nop
    rst $30
    nop
    rst $30
    ld b, b
    rst $30
    add b
    rst $30
    add b
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
    rst $00
    nop
    or a
    db $10
    or a
    inc d
    or a
    inc d
    or a
    inc h
    or a
    inc h
    or a
    inc h
    scf
    inc h
    ld l, a
    jr z, jr_09a_701e

    jr z, jr_09a_7000

    add hl, bc
    rra
    ld de, $313f
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

jr_09a_7000:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$08

jr_09a_701e:
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$10

    add hl, de
    ld a, [de]
    dec de
    ld c, $0e
    inc e
    dec e
    ld e, $1f
    ld de, $2011
    ld hl, $2211
    inc hl
    ld c, $24
    dec h
    ld c, $0e
    ld h, $27
    jr z, @+$10

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $0e
    ld c, $2f
    ld c, $0e
    ld c, $0e
    jr nc, jr_09a_70a4

    ld c, $0e
    ld c, $0e
    ld c, $32
    ld c, $0e
    ld c, $33
    ld c, $0e
    ld c, $0e
    inc [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec [hl]
    ld c, $0e
    ld c, $36
    ld c, $0e
    ld c, $0e
    scf
    ld c, $0e
    ld c, $0e
    ld c, $0e
    jr c, jr_09a_70a8

    ld c, $0e
    add hl, sp
    ld c, $0e
    ld c, $0e
    ld a, [hl-]
    ld c, $0e

jr_09a_70a4:
    dec sp
    inc a
    dec a
    dec c

jr_09a_70a8:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld c, $46
    ld b, a
    ld c, $48
    ld de, $3348
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
    ld c, $48
    ld de, $5554
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
    ld c, $0e
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld sp, $0e0e
    ld c, $0e
    ld c, $6a
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld l, e
    ld l, h
    ld l, l
    ld c, $0e
    inc sp
    ld c, $0e
    ld c, $0e
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld e, b
    ld e, b
    ld e, b
    ld [hl], c
    ld [hl], d
    ld e, b
    ld c, $18
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld e, b
    ld e, b
    ld e, b
    ld a, e
    ld e, b
    ld e, b
    ld c, $7c
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    ld e, b
    ld e, b
    add [hl]
    add a
    adc b
    ld c, $89
    adc d
    ld c, $8b
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    ld e, b
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $98
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sub l
    sbc [hl]
    sbc a
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $a0
    and c
    and d
    and e
    and h
    and l
    ld e, b
    and [hl]
    ld c, $0e
    ld c, $0e
    ld c, $a7
    xor b
    xor c
    xor d
    xor e
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    xor h
    ld c, $0e
    ld c, $ad
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_09a_71ec

    inc bc
    nop
    nop

jr_09a_71ec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4101
    ld b, b
    ld [bc], a
    dec b
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
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    dec b
    dec b
    dec b
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    jr nz, jr_09a_7224

jr_09a_7224:
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    inc bc
    dec b
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
    nop
    nop
    inc bc
    inc bc
    dec b
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
    nop
    nop
    nop
    nop
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    inc bc
    dec b
    ld [bc], a
    nop
    nop
    jr nz, jr_09a_7281

jr_09a_7281:
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
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    rst $30
    rlca
    di
    inc bc

jr_09a_72b4:
    pop af
    ld bc, $00f0
    ld hl, sp+$00
    ld hl, sp+$00
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
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    db $e3
    nop
    db $ed
    jr nz, jr_09a_72b4

    ld c, b
    db $dd
    ld c, b
    sbc $48
    sbc $44
    xor $64
    xor $22
    xor $22
    or $32
    or $10
    ld hl, sp+$18
    db $fd
    inc c
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld bc, $ffff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    ld a, a
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
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
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    ld sp, hl
    add b
    ld sp, hl
    add d
    rst $38
    add c
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

    cp $e0
    cp $fc
    pop hl
    ld hl, sp-$1d
    ld hl, sp-$1d
    ldh a, [rTAC]
    ld sp, hl
    cp $f9
    cp $fb
    db $fc
    rst $38
    ld hl, sp+$00
    db $fc
    nop
    cp $00
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
    db $fc
    rst $38
    ld a, [hl]
    ld a, a
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop

jr_09a_74a9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_09a_74b7:
    inc c
    ld [$0814], sp
    inc d
    ld [$0814], sp
    inc d
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc b
    ld a, [bc]
    inc b
    ld a, [bc]
    nop
    inc c
    nop
    ld [$0000], sp
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
    cp $00
    db $fd
    ld bc, $01f9
    ld a, [c]
    inc bc
    db $76
    add a
    ld l, h
    adc a
    ld e, b
    sbc a
    db $10
    sbc a
    jr nc, jr_09a_74a9

    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    ret nc

    rst $18
    jr nc, @+$01

    jr c, jr_09a_74b7

    ld h, a
    ld a, a
    ld h, b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
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
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    add b
    rrca
    ret nz

    rlca
    ldh [$03], a
    ldh a, [rSB]
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp+$0f
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
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    rlca
    rst $30
    rlca
    add sp, $0f
    ret c

    rra
    sub b
    rra
    and b
    ccf
    ld h, b
    ld a, a
    ret nz

    rst $38
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
    nop
    rra
    ldh [$e0], a
    rra
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
    add b
    rrca
    rst $08
    rlca
    ldh [rTAC], a
    ldh a, [rIE]
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
    rst $38
    nop
    rst $38
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
    ld hl, sp-$01
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc c
    rst $38
    jr nc, @+$01

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
    rst $38
    rst $38
    nop
    ld a, a
    ldh [$f0], a
    ldh [$30], a
    ldh [$30], a
    ldh [$30], a
    ldh [$30], a
    ldh [$30], a
    ldh [$30], a
    ldh [$30], a
    ldh [$30], a
    ldh [$30], a
    ldh [$30], a
    ldh [rNR23], a
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [$7f]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    inc e
    ld [bc], a
    ld hl, sp+$06
    inc b
    ld b, $06
    ld b, $06
    ld b, $3f
    inc bc
    ld a, $03
    inc a
    inc bc
    inc a
    inc bc
    ld a, $03
    ccf
    inc bc
    ccf
    inc bc
    rra
    inc bc
    db $e3
    rra
    db $e3
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    ld a, [c]
    rrca
    db $f4
    rrca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$2f]
    ldh a, [rVBK]
    ldh a, [$8f]
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
    rst $38
    rst $38
    rlca
    cp $07
    cp $07
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
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    ccf
    ld bc, $e23f
    rra
    db $e4
    rra
    add sp, $7f
    ld hl, sp-$01
    ret nc

    rst $18
    ret nc

    rst $18
    ret nc

    rst $10
    ldh [$e7], a
    ldh [$e7], a
    ld a, h
    ld h, e
    ld a, h
    ld h, e
    db $fc
    db $e3
    cp [hl]
    and c
    ld a, $21
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld c, a
    ld a, a
    ld c, a
    ld [hl], b
    ld b, b
    ld [hl], b
    ld h, b
    ld a, b
    ld h, b
    ld a, b
    ld [hl], b
    ei
    ld a, h
    db $fd
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ld l, $ff
    cpl
    rst $38
    rrca
    rst $38
    rlca
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
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    cp $0f
    cp $1f
    db $fc
    ccf
    ld hl, sp+$3f
    ldh a, [$7f]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add c
    cp $07
    rst $38
    rrca
    ld hl, sp+$1f
    ldh a, [rIE]
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
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    ld b, b
    add b
    ld [$e0c7], sp
    ld b, b
    rst $28
    ld h, b
    rst $38
    ld h, b
    ld a, a
    ldh [$7f], a
    ldh [$3f], a
    pop hl
    ld e, $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$8f]
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    db $fc
    add e
    db $fc
    jp $c3ff


    jp $ffff


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
    ret nz

    rst $38
    ret nz

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
    ldh [rIE], a
    ret nz

    rst $38
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
    ld bc, $03fe
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
    rst $38
    cp $01
    inc bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    inc bc
    ld bc, $01ff
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
    jr nz, jr_09a_790d

    ld b, b
    sbc a
    rrca
    nop
    rst $38
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    ccf

jr_09a_790d:
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    rst $38
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
    rst $38
    inc c
    rst $38
    inc c
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
    ldh [rIE], a
    nop
    rst $38
    inc bc
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ccf
    rst $38

jr_09a_7974:
    ld hl, sp-$01
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
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
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
    ld b, b
    ld [hl], b
    ld a, h
    ld b, h
    rst $38
    rst $00
    rst $38
    add a
    db $fd
    add l
    ld a, h
    adc h
    jr c, jr_09a_7974

    ld [$00f8], sp
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    add b
    add b
    inc bc
    inc bc
    cp $ff
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
    ld hl, sp-$20
    rst $30
    rla
    rst $38
    rra
    rst $38
    rra
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

jr_09a_7a07:
    inc bc
    db $fc
    inc bc

jr_09a_7a0a:
    rst $38

jr_09a_7a0b:
    rra
    ld hl, sp+$18
    ld hl, sp+$18
    ld sp, hl
    jr jr_09a_7a0b

jr_09a_7a13:
    jr @-$06

jr_09a_7a15:
    jr jr_09a_7a07

jr_09a_7a17:
    db $10
    pop af
    jr nc, @-$0c

    jr nc, @-$0c

    jr nc, jr_09a_7a13

    jr nc, jr_09a_7a15

    jr nc, jr_09a_7a15

    jr nc, jr_09a_7a17

    jr nc, jr_09a_7a07

jr_09a_7a27:
    jr nz, jr_09a_7a0a

    jr nz, jr_09a_7a0b

    jr nz, @-$1e

    jr nz, jr_09a_7a27

    jr c, @+$01

    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    di
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ld [hl], b
    rst $38
    ei
    ld a, b
    cp $fe
    rst $38
    cp $ff
    ld a, [bc]
    rst $38
    ld bc, $00ff
    ld sp, hl
    ld c, $f8
    rrca
    rrca
    ld [$101f], sp
    rra
    ret nc

    rra
    ldh a, [rIF]
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop
    rra
    rra
    db $fc
    db $fc
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
    ldh [rP1], a
    add a
    rlca
    ccf
    ccf
    rst $38
    rst $38
    cp $ff
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
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
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

    rst $38
    ldh [$1f], a
    rra
    ld b, b
    nop
    add b
    nop
    ld [$0000], sp
    nop
    jr c, jr_09a_7ab8

jr_09a_7ab8:
    nop
    nop
    ld c, $00
    nop
    nop
    inc h
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_09a_7ac8

jr_09a_7ac8:
    nop
    nop
    jr c, jr_09a_7acc

jr_09a_7acc:
    ld b, $00
    ld de, $0501
    ld bc, $c1c1
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $ffff
    ld bc, $017f
    sbc a
    inc bc
    rst $20
    inc bc
    ei
    add e
    rst $38
    ld h, e
    rst $38
    dec de
    ld a, a
    add a
    ccf
    rst $18
    ccf
    rst $38
    ccf
    db $e4
    ccf
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
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
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld bc, $7f01
    ld a, a
    ldh [$e0], a
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $00
    ldh a, [rP1]
    ret nz

    nop
    rlca
    rlca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    rst $00
    ld hl, sp+$0f
    ldh a, [$1f]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$71]
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    ld a, [hl]
    pop af
    cp $f1
    cp $f1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    call z, $c0f3
    db $fc
    ld hl, sp-$01
    ldh a, [$37]
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $8101
    ld bc, $03c1
    ld [c], a
    inc bc
    ld a, [c]
    inc bc
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
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    rlca
    rlca
    rst $38
    rst $38
    ldh [$e0], a
    ld h, b
    ld h, b
    ret nz

    ret nz

    ret nz

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
    add c
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
    rst $38
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
    ldh [rP1], a
    add b
    nop
    rlca
    rlca
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $08
    nop
    di
    nop
    ld a, h
    add b
    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    rst $38
    nop
    cp a
    ret nz

    adc a
    ldh a, [$03]
    db $fc
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
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$03
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
    rra
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    inc bc
    inc bc
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    rst $08
    nop
    di
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    add b
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    inc a
    db $fc
    ret nz

    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
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
    db $fd
    inc bc
    db $fd
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
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
    add b
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sub [hl]
    ld c, a
    ld d, $c9
    inc bc
    adc l
    dec bc
    add l
    dec hl
    add a
    dec hl
    add a
    nop
    rst $38
    ld a, [hl+]
    add c
    ld a, [hl+]
    add c
    xor d
    add c
    xor d
    add c
    xor d
    add c
    xor d
    add c
    ld [$6ac1], a
    pop bc
    ld sp, hl
    add b
    add a
    ld hl, sp-$7f
    cp $81
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    adc a
    cp $b7
    cp $fe
    ld bc, $f10e
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$fb]
    ldh [$fc], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    rlca
    ld [$0202], sp
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_09a_7e52

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $06
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
    rra
    jr nz, jr_09a_7e6e

    ld [hl+], a
    inc hl
    inc h
    nop
    nop

jr_09a_7e52:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld b, $06
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_09a_7e73

    add hl, hl

jr_09a_7e6e:
    ld b, $2a
    nop
    nop
    nop

jr_09a_7e73:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc l
    ld b, $06
    dec l
    ld l, $00
    nop
    nop
    nop
    cpl
    jr nc, jr_09a_7eb8

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $06
    ld b, $06
    scf
    nop
    nop
    nop
    nop
    jr c, jr_09a_7ecf

    ld a, [hl-]
    dec sp
    inc a
    ld b, $3d
    ld a, $06
    ld b, $3f
    ld b, $00
    nop
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, $06
    ld b, $47
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_09a_7eb8:
    nop
    nop
    ld c, b
    ld b, $49
    ld c, d
    ld c, e
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
    ld c, h
    ld b, $4d
    ld b, $4e

jr_09a_7ecf:
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    ld c, a
    ld b, $50
    ld d, c
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld b, $06
    ld d, [hl]
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld b, $06
    ld e, e
    ld b, $06
    nop
    nop
    nop
    nop
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
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, h
    ld h, l
    ld b, $4d
    ld h, [hl]
    ld b, $06
    ld b, $67
    ld l, b
    nop
    nop
    nop
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld b, $6e
    ld l, a
    ld b, $06
    ld b, $06
    ld b, $70
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld b, $06
    ld [hl], l
    db $76
    ld b, $77
    ld b, $06
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
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
    inc bc
    inc bc
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
    inc bc
    dec b
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
    dec b
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
    dec b
    ld [bc], a
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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld [bc], a
