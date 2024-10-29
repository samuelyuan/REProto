SECTION "ROM Bank $054", ROMX[$4000], BANK[$54]

    ld b, c
    cp $0d
    rst $38
    sub b
    ld a, a
    db $10
    rst $38
    add b
    rst $38
    ld b, l
    ld a, [$fc23]
    inc e
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    and $1f
    add b
    ld a, a
    rst $08
    ccf
    ld a, h
    cp e
    ret nz

    rst $38
    sbc $21
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, [c]
    dec c
    cp $01
    rst $38
    nop
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    ld a, [hl-]
    push bc
    ldh a, [rIF]
    add b
    ld a, a
    ld h, h
    sbc e
    ld l, e
    sub l
    cp a
    ret nz

    ld a, h
    di
    jp nc, $c13d

    ld a, $e0
    rra
    ld h, b
    sbc a
    ccf
    rst $38
    ld h, b
    rst $38
    or $c9
    rst $38
    nop
    rst $38
    nop
    push bc
    ld a, [hl-]
    add [hl]
    ld a, c
    nop
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld sp, $ffff
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
    ld l, $7f
    ld d, a
    ld a, a
    dec hl
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    cpl
    cpl
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    rst $38
    rst $38
    rrca
    rst $38
    ld [hl], b
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop

jr_054_408c:
    rst $38
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    ld c, [hl]
    adc $f0
    ldh a, [$c0]
    ret nz

    ld b, b
    ret nz

    jr nc, jr_054_408c

    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    ld b, a
    ld a, a
    ld c, [hl]
    ld a, a
    rra
    rra
    db $10
    db $10
    ret nz

    ret nz

    ld b, e
    ld b, e
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    db $ec
    db $ec
    ld a, a
    cp a
    rst $38
    rst $38
    rst $28
    rra
    rst $18
    ccf
    rst $30
    rst $38
    rst $08
    ccf
    rst $28
    rra
    ei
    rra
    sub e
    rst $38
    jp $e33f


    rra
    jp Jump_054_433f


    cp a
    ld bc, $83ff
    ld a, a
    db $e3
    ld e, a
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    rlca
    rst $38
    inc hl
    rst $18
    ld b, c
    rst $38
    ld hl, $21ff
    rst $38
    and c
    ld a, a
    pop hl
    rst $38
    rlca
    rst $38
    dec sp
    rst $38
    jp $03ff


    rst $38
    rlca
    rst $38
    scf
    rst $08
    adc a
    ld [hl], a
    sub a
    rst $28
    rst $38
    rst $38
    rla
    rst $38
    rrca
    rst $38
    daa
    rst $18
    rlca
    rst $38
    dec sp
    rst $00
    add hl, bc
    rst $30
    ld bc, $00ff
    rst $38
    ld bc, $29ff

jr_054_4119:
    rst $10
    or e
    rst $08
    rst $20
    sbc a
    ld b, b
    rst $38
    and b
    ld a, a
    or e
    ld a, a
    add e
    ld a, a
    jp $0f3f


    rst $38
    ld c, a
    cp a
    db $dd
    ccf
    call nz, Call_054_603b
    cp a
    and b
    ld a, a
    ld h, b
    rst $38
    add h
    ei
    jr nz, jr_054_4119

    add b
    rst $38
    ld b, b
    rst $38
    inc sp
    rst $38
    inc d
    rst $38
    ld d, l
    cp a
    add hl, bc
    rst $38
    pop af
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    rra
    ld h, a
    sbc a
    rlca
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld e, a
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld d, l
    xor d
    dec b
    cp $07
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    jr jr_054_418a

    inc e
    inc e
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld hl, sp-$08
    call z, Call_000_0bfc
    rrca
    dec b
    rlca

jr_054_418a:
    inc bc
    inc bc
    ret nz

    pop bc
    ld hl, sp-$08
    and $fe
    or e
    cp a
    add hl, sp
    ccf
    dec e
    rra
    dec c
    rrca
    ld a, [de]
    ld e, $60
    ld a, b
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $10
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
    cp $02
    rlca
    rlca
    rlca
    inc bc
    rlca
    rlca
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rrca
    rlca
    dec de
    rrca
    dec c
    rrca
    ld c, $1c
    jr @+$3a

    stop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $fd
    ld bc, $00fc
    ld hl, sp+$08
    db $fd
    inc c
    rst $38
    ld [bc], a
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
    cp $ff

jr_054_420c:
    rst $38
    cp $7f
    cp $7d
    cp $7f
    db $fc
    ld a, e
    db $fc
    ld a, c
    db $fc
    ld a, a
    ld hl, sp-$0c
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f0]
    ld h, b
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh a, [rNR41]
    ld [hl], b
    add b
    jr nc, jr_054_420c

    cp a
    ld a, b
    cp a
    ld [hl], b
    ld a, a
    ldh a, [rIE]
    ldh a, [$ef]
    ldh a, [$dc]
    ldh [rIE], a
    db $fc
    rst $38
    db $f4
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ldh a, [$df]
    ldh a, [$ef]
    ldh a, [$df]
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$73], a
    ldh [rNR13], a
    nop
    ld bc, $0500
    nop
    add a
    add b
    add a
    add b
    rrca
    nop
    rla
    nop
    rra
    nop
    rrca
    nop
    sbc a
    add b
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
    add hl, bc
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rrca
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
    cp $00
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $18f8
    ret nz

    nop
    ld [hl], e
    ld a, l
    ld h, [hl]
    ld a, $ff
    ld l, d
    cp e
    ccf
    push hl
    ld a, a
    rst $28
    rst $38
    and $bf
    set 7, a
    rra
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $20
    rst $38
    xor [hl]
    rst $38
    ld h, $e7
    dec a
    rst $18
    call z, $f7c7
    rst $38
    dec a
    dec a
    ld [hl], $37
    ld [hl], a
    ld [hl], a
    db $e3
    jp $f7b5


    ld e, [hl]
    ld l, $7a
    ld a, $c1
    ld b, b
    ld [hl], a
    nop
    scf
    db $10
    cp [hl]
    nop
    cp $02
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    jp Jump_000_0080


    add b
    ld bc, $2380
    add b
    ret nz

    nop
    add b
    nop
    ld l, d
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $db
    nop
    ld l, [hl]
    nop
    ld a, e
    nop
    inc bc
    nop
    ld b, $00
    rst $38
    nop
    ld bc, $d500
    nop
    rst $28
    nop
    cpl
    nop
    rst $18
    nop
    rst $18
    jr nz, jr_054_4316

    ld hl, sp-$04
    db $f4
    di
    ldh [$f4], a
    or b

jr_054_4316:
    ld a, [c]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    ldh a, [$fc]
    db $fc
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    cp a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ld a, [$f705]
    inc bc
    rst $38
    ld bc, $00f3
    ei
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    db $fc

Jump_054_433f:
    inc bc
    cp $03
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ei
    ld bc, $01fb
    cp $01
    rst $38
    ld bc, $011e
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
    db $fd
    ld bc, $00fd
    rst $38
    ld bc, $04fe
    cp $02
    rst $38
    ld bc, $06ff
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    ld bc, $0dff

jr_054_437a:
    cp $08
    cp $02

Jump_054_437e:
    ldh a, [rP1]
    ld e, $07
    scf
    rra
    ld a, h
    ld a, h
    db $e4
    ld a, h
    db $ed
    rst $38
    inc a
    ld a, [hl]
    or [hl]
    cp $9d
    rst $38
    ld l, l
    cpl
    ld e, c
    rra
    inc de
    rra
    ld d, $1e
    rra
    rra
    sbc d
    ld a, e
    ei
    ei
    rst $38
    rra
    db $fd
    rst $30
    db $e4
    jr nc, jr_054_4416

    pop af
    rst $30
    rst $30
    sbc $ff
    cp d
    cp $92
    cp $ce
    cp $9f
    rst $38
    and h
    rst $38
    rst $10
    rst $38
    db $eb
    jp hl


    add e
    add e
    add e
    add e
    and e
    and e
    ld h, b
    ld h, b
    ld a, d
    ld a, [$fbda]
    and $ff
    or c
    rst $38
    rst $38
    rst $38
    set 1, a
    ld e, $9f
    or a
    cp a
    rst $28
    rst $38
    xor h
    db $fd
    dec b
    rst $38
    add $fe
    jr nz, jr_054_437a

    add e
    add e
    ld [bc], a
    inc bc
    inc [hl]
    rla
    db $f4
    rst $38
    jp nc, $c17f

    rst $38
    ret z

    ld a, a
    ld h, b
    ccf
    dec c
    ld a, a
    dec e
    ccf
    rra
    ld e, $f8
    rlca
    cp $01
    cp $01
    ld [hl], a
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    cp a
    nop
    rst $38

jr_054_4407:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01

jr_054_4410:
    rst $38
    and c
    ccf
    ccf
    rst $38
    push hl

jr_054_4416:
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $18
    ldh a, [rIF]
    ld [$00f7], sp
    rst $38
    jr nz, jr_054_4407

    jr c, @-$38

    jr jr_054_4410

    db $10
    add sp, $10
    add sp, -$21
    ldh a, [$7a]
    ldh [rSVBK], a
    ret nz

    ld a, [$ff80]
    ret c

    cp a
    ld sp, hl
    rst $38
    ld sp, hl
    db $fc
    rst $38
    add hl, sp
    rst $10
    ld [c], a
    ld e, $f3
    ld e, a
    di
    sbc [hl]
    ld h, b
    rst $38
    ld h, e
    sbc a
    add e
    rst $38
    db $ec
    di
    cp $f8
    rst $38
    db $fc
    db $fd
    db $fc
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
    sbc a
    nop
    ld a, [hl]
    ld b, b
    ld a, [hl]
    nop
    cp $00
    rst $38
    add b
    rst $30
    nop
    db $fd
    ld de, $00e5
    ld e, h
    inc a
    ld d, b
    ld a, b
    ld hl, sp-$08
    sbc b
    ld hl, sp-$57
    pop hl
    ld [c], a
    jp nz, $fb37

    sbc [hl]
    cp $fe
    cp $5c
    inc e
    ccf
    ccf

jr_054_4486:
    cp e
    cp a
    rst $18
    cp $70
    ld [hl], b
    ei
    ld a, e
    ld a, a
    rst $28
    ld a, l
    db $fd
    ldh [$e0], a
    jr nc, jr_054_4486

    ld hl, sp-$08
    ret z

    ld hl, sp+$20
    ldh [rSVBK], a
    ldh a, [$c8]
    ret z

    pop bc
    ret nz

    ld [hl], b
    ld hl, sp-$24
    ld hl, sp-$0c
    cp h
    ld h, b
    and b
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
    ldh [$e0], a
    ldh [$e0], a
    pop af
    ldh a, [rIE]
    ld a, a
    inc de
    rra
    inc e
    rra
    ld hl, sp-$01
    ldh a, [$e6]
    ld h, c
    ld h, h
    call c, Call_054_64f4
    db $fc
    ld [c], a
    cp $f6
    db $fc
    ld a, h
    db $fc
    ld e, a
    rst $38
    push af
    push af
    dec b
    dec b
    rst $28
    rst $08
    ccf
    rst $38
    inc sp
    rst $38
    sbc a
    rst $38
    call nc, Call_000_3ff7
    ccf
    rst $38
    rst $38
    or a
    cp a
    rlca
    rra
    rra
    rra
    scf
    ccf
    db $e3
    ld e, a
    ldh [$1f], a
    inc c
    di
    call c, Call_000_1e23
    ld h, c
    ld e, $01
    dec b
    ld a, [de]
    nop
    rrca
    ld [$7c07], sp
    rrca
    or $1f
    ld [hl], h
    ccf
    ld a, [$d97f]
    ld a, a
    jp hl


    rst $38
    pop hl
    rst $38
    cp a
    cp $fe
    db $fc
    ld l, a
    ld hl, sp+$6e
    ld hl, sp+$7e
    ldh a, [$fe]
    ldh a, [$b4]
    ldh [$30], a
    ret nz

    ld a, h
    ret nz

    ld [hl], b
    ret nz

    pop hl
    add b
    db $e3
    ld bc, $03d7
    add a
    inc bc
    adc $07
    sbc a
    rrca
    inc e
    rra
    ccf
    rra
    ld h, l
    rra
    ld h, a
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    db $fc
    ei
    rst $28
    rst $28
    cp $fb
    inc c
    ei
    ld b, $fb
    rst $08
    or a
    rst $28
    rst $10
    db $fc
    ld [hl], e
    ld sp, hl
    jp hl


    adc e
    ld [hl], e
    rst $38

jr_054_4555:
    call nz, $93ef
    rst $38
    ld a, a
    cp h
    ld a, h
    cp $3e

jr_054_455e:
    rst $28
    jp hl


    ld [c], a
    cp $8f
    rst $38
    ld l, c
    rst $38
    rst $28
    rst $38
    and a
    rst $20
    sub a
    rst $30
    db $dd
    ei
    dec de
    rra
    ld a, $1f
    scf
    ld [hl], a
    inc l
    ld a, a
    add c
    ld c, $0c
    ld [$0000], sp
    ld b, b
    ret nz

    add b
    add b
    ld b, $06
    call $829d
    adc a
    ld d, b
    add $80
    add $e1
    pop af
    ld b, b
    ld b, b
    nop
    nop
    ld c, b
    ld c, b
    ld [hl], h
    ld a, h
    ld e, l
    ld a, a
    ld l, h
    db $fc
    dec h
    db $ed
    ld sp, hl
    ld sp, hl
    inc hl
    inc hl
    ld [hl], $36
    ld c, h
    ld l, h
    ld l, e
    ld a, a
    ccf
    ccf
    dec b
    dec c
    dec bc
    dec bc
    ld e, $3e
    jr c, @+$3a

    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    rla
    ld c, $14
    jr jr_054_4555

    sub b
    adc b
    adc b
    rst $38
    nop
    and a
    nop
    db $e3
    nop
    pop bc
    nop
    pop bc
    nop
    sbc a
    add b
    ld a, a
    ld b, b
    rst $38
    nop
    jr nc, @+$32

    nop
    nop
    nop
    nop
    ld h, b
    ld h, b

jr_054_45d8:
    ld b, b
    ld b, b

jr_054_45da:
    and b
    jr nz, jr_054_455e

    add c
    add d
    add e
    add d
    jp $c3c2


    jp $edc3


    db $ed
    rst $08
    adc $08
    nop
    adc b
    add b
    set 0, b
    dec c
    ld a, [c]
    inc b
    ld a, [$f80f]
    and b
    call c, $cc30
    jr nz, jr_054_45d8

    jr nz, jr_054_45da

    ld b, b
    or b
    or [hl]
    ld hl, sp+$7c
    ldh [$fa], a
    ret nz

    ld a, [$fac0]
    add c
    or $83
    add c
    inc bc
    sbc a
    inc bc
    adc a
    rlca
    dec h
    rlca
    xor a
    rlca
    cp a
    rrca
    cp h
    rrca
    ld a, a
    rra
    ld a, d
    ccf
    ld [c], a
    ld a, a
    or c
    or c
    and $fe
    ld sp, hl
    ld sp, hl
    add b
    add b
    ld hl, sp-$10
    ld l, b
    jr z, jr_054_463d

    db $10
    db $10
    db $10
    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    rst $30
    rst $30
    scf
    scf
    adc l
    adc l
    xor [hl]
    xor [hl]
    db $fc

jr_054_463d:
    ei
    db $f4
    ld a, e
    db $e3
    ld e, l
    sbc [hl]
    db $ed

Call_054_4644:
    sbc a
    rst $30
    rst $38
    cp [hl]
    rlca
    rst $38
    add h
    db $fc
    rst $38
    xor $1f
    rst $38
    jp nz, $eebd

    push af
    adc a
    ld a, a
    db $fc
    db $eb
    rst $38
    pop af
    ld hl, $391f
    scf
    db $ed
    rst $38
    ld l, [hl]
    ld a, a
    db $fd
    rst $38
    ld e, e
    rst $38
    ld a, a
    rst $38
    ld e, $fe
    ld [hl-], a
    ld a, [c]
    adc e
    ei
    pop hl
    rst $38
    or b
    or b
    adc b
    ret z

    add l
    sub a
    inc sp
    ld [hl-], a
    ld d, c
    ld [hl], e
    sub $d7
    ld b, l
    ld [hl], c
    ld [hl], b
    ld [hl], b
    sub [hl]
    nop
    ld c, a
    nop
    cp a
    nop
    ld a, $04
    ld a, [c]
    nop
    db $fc
    inc b
    pop hl
    nop
    pop hl
    nop
    rst $30
    db $10
    rst $38
    nop
    and [hl]
    nop
    ld a, a
    nop
    rrca
    nop
    ld b, e
    nop
    ld bc, $8700
    nop
    ld [$50f8], sp
    ret c

    or b
    ldh a, [rSTAT]
    ld b, c
    ld b, d
    ld b, e
    ld a, e
    ld a, c
    ld l, c
    ld a, c
    db $dd
    db $fd

jr_054_46b0:
    ei
    ei
    ld c, $fe
    ld [hl], h
    or $ae
    xor h
    ldh a, [$f0]
    ret c

    ldh a, [rNR10]
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld b, b
    nop
    nop
    nop
    nop
    jr @+$12

    jr c, @+$12

    ld a, b
    ld [hl], b
    sub e
    ld a, [c]
    jr nz, jr_054_46b0

    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $c7
    cp $0e
    rst $38
    ld e, $fd
    inc h
    ld a, [$fcff]
    inc c
    db $f4
    rra
    ldh a, [$3c]
    ldh a, [$3e]
    ldh [$b8], a
    ret nz

jr_054_46ec:
    ld e, b
    ldh [rNR44], a
    ret nz

    and e
    ld [bc], a
    jp nc, $ce03

    inc sp
    db $fc
    inc bc
    adc b
    rlca
    add d
    rrca
    ret z

    rra
    inc l
    ccf
    ldh a, [$58]
    ld hl, sp+$18

jr_054_4704:
    ldh a, [$c0]
    ret nz

    add b
    ldh [$e0], a
    jr nz, jr_054_46ec

    ld [hl+], a
    ldh [rSCY], a
    jp nz, $c040

    sub c
    sub c
    or e
    ld sp, $3212
    ld [de], a
    ld [hl-], a
    ld d, d
    ld h, d
    ret z

    add sp, $56
    or $06
    ld h, [hl]
    jr nz, jr_054_4704

    ld [$91c8], sp
    sbc c
    add hl, de
    add hl, de
    ld [bc], a
    inc bc
    ld b, b
    inc bc
    dec b
    rlca
    ld e, $1a
    ld b, h
    ld e, h
    rst $08
    rst $18
    ld l, a
    rst $38
    ld c, $3e
    ld a, c
    ld h, a
    sbc [hl]
    ld e, a
    rst $18
    ld e, a
    di
    rst $08
    db $e3
    ld e, l
    or c
    xor a
    rst $38
    ld a, h
    cp [hl]
    ld a, l
    db $fc
    rst $38
    or e
    db $d3
    db $fd
    ld h, l
    ld e, a
    xor d
    rlca
    ld a, [$ff0f]
    ld h, $df
    rst $18
    ret c

    rst $38
    cp a
    ld sp, hl
    ret


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
    jr jr_054_4793

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_054_47a3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_054_47b3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_054_47c3

    ld [hl-], a

jr_054_4793:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_054_47d3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_054_47a3:
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

jr_054_47b3:
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

jr_054_47c3:
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

jr_054_47d3:
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
    and c
    and c
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
    and c
    and c
    and c
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
    and c
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
    jr jr_054_489b

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
    jr nc, jr_054_48cb

    ld [hl-], a

jr_054_489b:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [bc], a
    inc b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    inc b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    ld [bc], a
    ld [bc], a
    ld bc, $0200
    inc b
    dec b
    ld bc, $0101
    ld bc, $0101
    inc b
    ld [bc], a

jr_054_48cb:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld [bc], a
    inc b
    dec b
    ld bc, $0101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld [bc], a
    nop
    dec b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0206
    inc b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    inc b
    inc b
    ld b, $06
    inc bc
    ld b, $01
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0204
    rlca
    ld b, $06
    inc bc
    ld bc, $0101
    ld bc, $0202
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $01
    ld bc, $0101
    ld bc, $0105
    ld bc, $0101
    ld bc, $0a04
    ld a, [bc]
    ld a, [bc]
    rrca
    dec bc
    dec bc
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
    ld a, [bc]
    ld a, [bc]

jr_054_49ba:
    ld a, [bc]
    ld a, [bc]
    inc c
    ld c, $0e
    add hl, bc
    add hl, bc
    dec c
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
    add hl, bc
    dec bc
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld a, [hl-]
    ld a, [hl-]
    call z, Call_000_23ec
    inc hl
    and c
    and c
    and h
    and h
    pop bc
    pop bc
    ld h, h
    ld h, h
    cp h
    cp h
    ld h, d
    rst $38
    ldh a, [rIE]
    inc b
    cp [hl]
    nop
    nop
    ld c, $be
    jr nz, jr_054_49ba

    nop
    cp [hl]
    nop
    cp [hl]
    rst $38
    nop
    rst $38
    cp [hl]
    reti


    cp [hl]
    ld a, [hl]
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_054_4a12

jr_054_4a12:
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    ld l, b
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    ld de, $3000
    nop
    ldh a, [rP1]
    ld a, b
    nop
    push de
    nop
    ld l, a
    nop
    ld hl, sp+$00
    ld bc, $0300
    nop
    ld bc, $0200
    nop
    stop
    jr nz, jr_054_4a3c

jr_054_4a3c:
    ldh [rP1], a
    and d
    nop
    db $ec
    nop
    cp a
    nop
    and $00
    rst $18
    nop
    ld l, a
    nop
    rst $38
    nop
    ld a, h
    nop

jr_054_4a4e:
    ld hl, sp+$00
    push bc
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ccf
    nop
    rst $30
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
    ld a, [hl]
    add b
    xor $00
    rst $38
    nop
    ld a, [$ef00]
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    xor a
    db $10
    cp a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor $11
    cp l
    ld b, d
    ld a, a
    adc b
    rst $38
    ld [$00ff], sp
    rst $18
    jr nz, jr_054_4a4e

    ld b, b
    ld a, l
    add d
    rst $30
    ld [$10ef], sp
    rst $28
    ld de, $a057
    rst $38
    nop
    rst $38
    nop
    xor $01
    cp [hl]
    ld bc, $03bc
    db $fc
    inc hl
    ld hl, sp+$07
    rst $20
    add hl, de
    db $fd
    inc bc
    db $db
    daa
    rst $38
    rlca
    push af
    rrca
    rst $28
    sbc a
    ldh [$1f], a
    swap a
    and c
    ld a, a
    add e
    ld a, a
    rlca
    rst $38
    ld l, a
    rst $38
    or a
    rst $38
    ld c, e
    rst $30
    adc a
    rst $38
    adc $3f
    ld e, $ff
    ccf
    rst $38
    inc a
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
    rst $18
    nop
    rst $38
    nop
    rst $28
    nop
    db $fd
    db $fd
    ccf
    ccf
    dec h
    dec l
    dec bc
    dec bc
    rlca
    add a
    ld [$5008], sp
    ld [hl], b
    jp hl


    ld sp, hl
    adc h
    rst $38
    cp l
    rst $38
    ld [$00de], sp
    nop
    inc d
    cp $0c
    cp $40
    xor $00
    nop
    rst $38
    cp $d7
    xor $17
    add sp, $00
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld h, c
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc de
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    nop
    ld a, d
    nop
    add b
    nop
    ld bc, $1700
    nop
    ld l, d
    nop
    pop hl
    nop
    rlca
    nop
    rrca
    nop
    add hl, de
    nop
    ldh [rP1], a
    add b
    nop
    ld [bc], a
    nop
    ld [$2000], sp
    nop
    add b
    nop
    inc bc
    nop
    dec b
    nop
    ld [de], a
    nop
    and $00
    jp $0c00


    nop
    inc c
    nop
    inc [hl]
    nop
    db $fd
    nop
    db $eb
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
    ld [$807f], sp
    cp a
    ld b, b
    rst $38
    nop
    rst $20
    ld [$007d], sp
    ld [hl], a
    nop
    rst $18
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
    rst $30
    ld [$10ef], sp
    rst $38
    nop
    rst $18
    ld [hl+], a
    rst $38
    nop
    dec bc
    ld bc, $0007
    inc bc
    ld [bc], a
    rlca
    ld [bc], a
    rrca
    add hl, bc
    rrca
    ld c, $5f
    nop
    ld a, $35
    ld l, h
    ld b, e
    sbc b
    inc bc
    xor d
    add a
    jr c, @+$09

    ld a, [hl+]
    cpl
    ld d, c
    rrca
    ei
    rrca
    cp $3f
    ld b, b
    nop
    add b
    nop
    add c
    ld bc, $0000
    ld bc, $0003
    ld [bc], a
    ld bc, $0801
    add hl, bc
    ld d, $17
    dec d
    rla
    or a
    scf
    daa
    daa
    ld [bc], a
    ld [bc], a
    ld b, a
    ld b, a
    ld h, e
    ld h, e
    add hl, de
    add hl, de
    db $e4
    rst $18
    add e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    rra
    rst $38
    rra
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
    ld [$40ff], sp
    rst $38
    nop
    rst $38
    nop
    ld c, l
    ld c, l
    inc a
    inc a
    db $d3
    db $d3
    ld b, c
    ld b, c
    nop
    nop
    add d
    add d
    dec d
    dec d
    ld [$6b88], sp
    rst $38
    ld a, d
    rst $38
    ld l, h
    xor $08
    nop
    inc b
    xor $02
    xor $00
    xor $00
    nop
    ei
    xor $ff
    xor $fc
    nop
    jr nz, jr_054_4c08

jr_054_4c08:
    ld e, h
    nop
    ld l, b
    nop
    and b
    nop
    jr nz, jr_054_4c10

jr_054_4c10:
    ld bc, $2800
    nop
    and b
    nop
    ld b, b
    nop
    dec b
    nop
    jr nc, jr_054_4c1c

jr_054_4c1c:
    ret nz

    nop
    inc bc
    nop
    inc e
    nop
    ld hl, sp+$00
    ld e, b
    nop
    cp $00
    cp l
    nop
    rst $38
    nop
    rst $28
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    cp a
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp [hl]
    nop
    ld a, l
    nop
    ld a, [hl]
    ld bc, $007f
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
    rst $18

jr_054_4c5b:
    jr nz, jr_054_4c5b

    ld bc, $01ff
    cp $01
    db $fd
    ld [bc], a
    rst $28
    nop
    cp a
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    or $09
    ld a, [bc]
    nop
    add hl, bc
    nop
    ld e, a
    nop
    dec e
    nop
    ld e, a
    nop
    ld d, h
    rlca
    ld e, l
    rlca
    ei
    rlca
    ei
    inc bc
    pop af
    ld bc, $2fef
    jp $c927


    ld c, c
    ld d, b
    ret nc

    ld [de], a
    sub d
    and e
    and a
    ld d, c
    ld d, c
    ld a, h
    ld a, h
    ld c, h
    ld c, h
    inc a
    inc a
    ld [hl], $36
    ld [hl], a
    ld [hl], a
    adc e
    sbc a
    db $eb
    ei
    inc a
    cp a
    xor $fe
    and h
    cp h
    jp $deff


    cp $ac
    db $ec
    ld c, a
    rst $08
    add hl, bc
    sbc c
    ld b, e
    ld b, e
    and h
    and a
    ld c, l
    ld c, a
    sbc $de
    ld a, [$e0fa]
    ldh [$8b], a
    adc e
    or $f6
    rst $28
    dec d
    rst $38
    add e
    rst $18
    ld b, a
    rst $38
    rlca
    cp a
    adc a
    rst $38
    rrca
    rst $38
    sbc a
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
    cpl
    rst $38
    cp c
    rst $38
    ld l, h
    rst $38
    nop
    adc $ce
    db $e3
    di
    sbc b
    sbc b
    rst $30
    rst $30
    dec e
    rra
    rst $08
    rst $08
    ld [bc], a
    ld a, [bc]
    ld b, b
    ld b, c
    db $dd
    rst $38
    rst $28
    rst $38
    sbc [hl]
    rst $18
    inc [hl]
    ei
    rrca
    ld [$ff2c], sp
    ld a, a
    nop
    inc h
    ei
    sbc e
    rst $38
    ld a, b
    nop
    nop
    nop
    ld d, $00
    ld a, b
    nop
    ld bc, $0700
    nop
    inc e
    nop
    call c, Call_054_7d00
    nop
    ld a, a
    nop
    ld a, a
    nop
    rrca
    nop
    rra
    nop
    ld [hl], e
    nop
    inc bc
    nop
    inc b
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    cp $00
    rst $38
    nop
    rst $20
    nop
    rst $38
    nop
    cp $01
    cp $01
    call z, $8e03
    ld bc, $001f
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, [hl]
    ld bc, $00ff
    cp a
    nop
    rst $28
    db $10
    rst $28
    db $10
    ld [hl], a
    adc b
    rst $38
    nop
    rst $08
    jr nc, jr_054_4dac

    ld hl, sp+$7c
    or e
    cp h
    db $e3
    ld hl, sp-$39
    ld hl, sp-$79
    ret nc

    ld h, a
    cp $01
    or $01
    xor $01
    ldh a, [rBGP]
    ret c

    rlca
    sub a
    rrca
    and l
    adc a
    rst $38
    rrca
    add sp, $28
    db $f4
    ld [hl], $fd
    ld a, l
    db $fc
    ld a, h
    scf
    ld [hl], a
    inc sp
    ld [hl], e
    cp a
    rst $38
    cp h
    cp a
    adc b
    adc h
    add b
    cp $0c
    db $fc
    ld d, $f6
    ld b, $46
    daa
    rst $20
    ld b, a
    rst $00
    ld a, [hl]
    rst $38
    ld a, [c]
    rst $38
    inc d
    rst $38
    ld b, e
    rst $20
    and $f6
    xor h
    db $fc
    or a
    rst $38
    sub c
    rst $10
    ld [hl], b
    ld [hl], a
    ld a, [bc]
    ld c, $0f
    ld e, a
    rla
    rra
    dec de
    dec sp
    jr nz, jr_054_4de9

    db $10
    ld e, h

jr_054_4dac:
    ld b, l
    rst $18
    ld b, h
    rst $00
    add b
    add h
    call z, $8acc
    adc e
    add a
    add a
    rrca
    rrca
    ld b, $06
    ld d, e
    ld d, e
    ld c, a
    ld c, a
    ei
    dec c
    rst $28
    pop bc
    rst $38
    add e
    rst $18
    inc bc
    rst $08
    rlca
    xor a
    adc a
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
    add e
    rst $38
    ld b, e
    rst $38
    add e
    rst $38
    nop
    db $10
    cp a
    jr c, @+$01

    jp nc, $e6f3

    cp $c0

jr_054_4de9:
    push bc
    sub c
    sub c
    rst $28
    rst $28
    sbc [hl]
    sbc [hl]
    rst $38
    nop
    sbc a
    nop
    ld a, a
    nop
    sbc a
    sub b
    rst $38
    rst $08
    db $dd
    sub h
    rst $38
    rst $38
    cp a
    sub l
    ld h, a
    ld hl, sp+$7f
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, e
    nop
    di
    nop
    ld a, a
    nop
    ld [hl], a
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
    ld sp, hl
    ld b, $f9
    ld b, $75

jr_054_4e21:
    ld c, $f3

jr_054_4e23:
    inc c
    rst $30
    ld [$04ff], sp
    pop af
    inc c
    rst $38
    nop
    ld a, [$f705]
    ld [$00ff], sp
    pop af
    ld c, $f8
    rlca
    ldh a, [rIF]
    inc a
    set 7, b
    rlca
    ret c

    daa
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    db $ed
    ld [de], a
    and l
    ld e, d
    jr z, jr_054_4e23

    xor h
    ld d, e
    db $10
    rst $28
    rst $38
    nop
    rst $18
    inc bc
    cp [hl]
    ld [bc], a
    or [hl]
    ld e, $58
    jr c, jr_054_4e21

    ld h, $a6
    ld h, [hl]
    ld a, [$8f7e]
    rst $08
    rrca
    rrca
    dec hl
    dec hl
    ld b, b
    ld b, b
    inc d
    inc d
    ld b, $06
    ld h, b
    ld h, b
    ldh [$e0], a
    ld b, h
    ld h, h
    jr nc, jr_054_4eac

    ld [$057e], sp
    ccf
    ld [hl-], a
    ccf
    ld sp, hl
    rst $38
    call z, $81cf
    add a
    inc c
    inc c
    add hl, de
    add hl, de
    ld bc, $5801
    ld e, b
    ld c, l
    ld l, l
    jr nz, jr_054_4eac

    nop
    ld b, b
    ld b, b
    ldh [$a0], a
    ldh a, [rDIV]
    db $fc
    xor d
    ld a, [$e785]
    push af
    push af
    dec bc
    db $eb
    ld c, l
    db $fd
    ld h, a
    rst $30
    ld a, [hl+]
    ld a, [$3e26]
    ld h, a
    ld a, [hl]
    ld h, e
    ld a, [hl]
    dec sp
    ld a, $3f
    cp h

jr_054_4eac:
    ld a, a
    cp $2f
    add sp, $01
    ld hl, sp-$60
    ldh a, [$c7]
    ldh a, [$9f]
    ldh [rP1], a
    ldh [$3f], a
    jp nz, $c011

    cp a
    rst $00
    sbc e
    rst $38
    sbc a
    rst $28
    sub a
    rst $28
    dec sp
    rst $00
    dec sp
    rst $00
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
    cp $ff
    db $e4
    nop
    db $ec
    nop

jr_054_4eda:
    rst $28
    ld b, b
    rst $38
    adc $fe
    db $fc
    ld b, b
    ld l, a
    jr c, @+$01

    sub c
    di
    and h
    or a
    or h
    or h
    rst $08
    rst $08
    ld [hl], b
    ld a, d
    ld c, $4e
    adc a
    rst $38

jr_054_4ef2:
    add c
    rst $38
    ld c, a
    rst $38
    rst $30
    ld a, [$6dbf]
    ccf
    db $fc
    rst $30
    db $ec
    db $10
    xor d
    and a
    jr jr_054_4ef2

    db $10
    rst $38
    nop
    rst $28

jr_054_4f07:
    db $10
    db $fc
    inc bc
    cp $01
    ld a, a
    add b
    ld l, a
    sub b
    rst $20
    jr jr_054_4eda

    jr c, jr_054_4f07

    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    or [hl]
    ld c, c
    db $f4
    dec bc
    or a
    ld c, b
    or a
    ld c, b
    ld a, [bc]
    db $fd
    add b
    ld a, a
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    cp c
    ld b, [hl]
    jr z, @-$27

    add hl, de
    rst $20
    add hl, sp
    and $60
    sbc a
    ld c, d
    cp a
    nop
    rst $38
    pop de
    ccf
    cp $00
    db $fd
    nop
    db $f4
    nop
    ld a, [$f000]
    nop
    ld a, [$ca3e]
    ld c, e
    jp Jump_000_03cb


    ld a, a
    sub c
    sbc a
    sub h
    sbc a
    ld de, $381f
    ccf

jr_054_4f5a:
    nop
    inc hl
    and h
    or l
    cp h
    cp l
    ret z

    rst $08
    add h
    rst $30
    dec d
    db $fd
    ld a, [bc]
    ld a, $61
    ld l, a
    jp hl


    ei
    inc sp
    ld a, a
    dec l
    ld l, a
    ld hl, sp-$04
    ret nc

    db $fc
    ld hl, sp-$06
    call c, $fcf8
    ld hl, sp+$17
    db $fc
    xor a
    ld hl, sp+$47
    ld hl, sp+$37
    rst $38
    ccf
    rst $20

jr_054_4f84:
    ld l, a
    rst $20
    rst $00
    ret nz

    ret nz

    add b
    ret z

    ldh [$c0], a
    ret nc

    sub b
    ldh [$c0], a
    add b
    sbc [hl]
    add c
    and b
    add c
    ld d, h
    ld de, $c1fe
    cp $ef
    cp $ff
    cp $ff
    ld hl, sp-$21

jr_054_4fa2:
    ld sp, hl
    cp $d1
    ld c, $c1
    ld c, $91
    ld c, $33
    inc c
    ld [hl+], a
    inc e
    jp $ef1c


    jr jr_054_4fa2

    jr jr_054_4f84

    jr c, jr_054_4f84

    jr c, @-$27

    jr nc, jr_054_4f5a

    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ldh [rP1], a
    ldh [$80], a
    ret nz

    add c
    ret nz

    add e
    pop bc
    add a
    jp nz, $8687

    adc a
    add e
    rrca
    add b
    ldh [$1f], a
    ld [c], a
    dec e
    ret nz

    ccf
    ret nz

    ccf
    sub b
    ld a, a
    ld [bc], a
    db $fd
    add b
    ld a, a
    nop
    rst $38
    ld [hl], a
    ld [hl], a
    jr @-$20

    or d
    cp [hl]
    ld b, a
    ld d, a
    ld [hl+], a
    ld l, [hl]
    call $4eef
    ld a, [hl]
    jr c, jr_054_5028

    ld l, h
    rst $28

jr_054_4ff2:
    jr c, jr_054_4ff2

    add e
    rst $08
    add d
    cp h
    cp a
    cp l
    ld a, e
    ld a, c
    and d
    and b
    ld a, a
    nop

Call_054_5000:
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    cp $60
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    or b
    ld a, a
    and b
    ld a, a
    jr nc, @+$01

    ld l, b
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    inc h
    rst $38
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    jp $e5ff


jr_054_5028:
    rst $38
    db $eb
    rst $38
    db $e3
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIF]
    rst $38
    cpl
    rst $38
    ld e, l
    rst $38
    sub b
    rst $38
    ld [hl], b
    rst $38
    ld l, [hl]
    pop af
    di
    db $fd
    ret z

    rst $38
    rst $38
    ldh a, [rIE]
    ld [c], a
    cp $80
    db $fd
    ld d, b
    rst $38
    ret nz

    rst $38
    jp nz, $c06b

    ld a, a
    ret nz

    rst $28
    add b
    ccf
    ld b, b
    rst $38
    ldh [$57], a
    ret nc

    ld e, a
    ldh a, [$af]
    or b
    cpl
    inc [hl]
    ld [hl], b
    ld h, b
    rst $38
    sbc a
    ld [c], a
    ld b, d
    ldh [rSC], a
    ldh [$82], a
    nop
    nop
    jr nz, jr_054_5090

    ld [hl], b
    ld a, h
    ld a, b
    ld a, h
    db $fd
    ld hl, sp-$1b
    adc b
    ld bc, $1d08
    nop
    add hl, bc
    ld de, $11c3
    push bc
    ld de, $20d1
    rst $10
    and b
    rst $38
    pop hl
    sbc a
    rst $20
    sbc a
    ld h, b
    jr nc, @+$42

    inc sp
    ld b, b
    ccf
    ret nz

    ccf
    rst $30

jr_054_5090:
    ld c, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    cp $80
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld l, a
    nop
    ld b, a
    cp c
    ld a, [bc]
    push af
    rla
    add sp, -$26
    dec h
    ld h, l
    sbc d
    and e
    ld e, h
    ld b, b
    cp a
    nop
    rst $38
    dec b
    ei
    inc e
    db $e3
    or e
    ld c, h
    inc h
    ei
    ld d, h
    rst $38
    add hl, de
    cp $d4
    dec sp
    rst $18
    jr nz, jr_054_50f5

    res 4, b
    rst $18
    push bc
    cp d
    ld b, [hl]
    cp c
    rst $10
    jr z, jr_054_5142

    adc b
    ld a, e
    add h
    cp e
    call nz, $c738
    sbc a
    rst $20
    ld a, [bc]
    rst $30
    adc $33
    ld e, l
    and e
    ld e, a
    and c
    rrca
    pop af
    rrca
    pop af
    jr nz, @+$41

    or b
    cp a
    ld e, h
    ld a, a
    ld l, b
    ld l, h
    dec l
    ld l, a
    sbc d
    ld a, [$3b3b]
    ld d, b
    ld e, h
    ld [hl], b
    ld [hl], b

jr_054_50f2:
    reti


    db $db
    pop hl

jr_054_50f5:
    rst $20
    add hl, de
    call c, $facb
    rst $30
    or $39
    jr c, @+$01

    nop
    ccf
    ret nz

    db $fd
    nop
    db $f4
    nop
    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cpl
    ret nc

    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$03]
    db $fc
    ld c, $f1
    ld [hl+], a
    db $dd
    ld sp, $00ce
    rst $38
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    inc l
    di
    ld bc, $85ff
    ei
    add b
    ld a, a
    jr z, @+$01

    jr nc, @+$01

jr_054_5142:
    nop
    rst $38
    and b
    ld a, a
    inc c
    di
    ld a, [$f105]
    ld c, $30
    rst $08
    ld [$f0ff], sp
    rrca
    inc c
    rst $38
    db $10
    rst $28
    nop

jr_054_5157:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld bc, $5eff
    and c
    and b
    ld e, a
    ld e, d
    and a
    ld b, b
    cp a
    rst $20
    jr jr_054_50f2

    ld a, b
    ld a, a
    ret nz

    jr jr_054_5157

    inc e
    db $e3
    inc c
    di
    ld bc, $00ff
    rst $38
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    pop bc
    cp $ed
    cp $03
    db $fc
    daa
    ld hl, sp-$5c
    ld a, e
    rla
    ld hl, sp+$20
    rst $18
    or c
    rst $08
    ld [hl], d
    rst $38
    db $fd
    ld a, [$fcf3]
    xor c
    sbc $6e
    sbc a
    pop af
    rra
    add hl, de
    rst $38
    ldh a, [rIE]
    ld a, [$88fd]
    ld a, a
    cp h
    ld c, a
    ld l, b
    sbc a
    ld d, b
    cp a
    and b
    ld a, a
    ld b, b
    rst $38
    ret nz

    rst $38
    and b
    rst $18
    adc h
    di
    ld [hl+], a
    db $fd
    nop
    rst $38
    ld hl, sp+$07
    ldh [$1f], a
    ld h, c
    sbc [hl]
    di
    inc c
    db $76
    adc c
    rst $38
    inc bc
    ld a, [$f407]
    rrca
    add sp, $1f
    rst $10
    jr c, @-$4f

    ld [hl], b
    ld b, a
    ld hl, sp-$71
    ldh a, [rIF]
    ldh a, [$3f]
    ret nz

    ld c, $f0
    rra
    ldh [rNR23], a
    rst $20
    nop
    rst $38
    nop
    rst $38
    ld b, c
    ld b, c
    rlca
    ld e, a
    rla
    rst $10
    ld a, $be
    call c, Call_000_28dc
    jp hl


    ld a, h
    ld a, h
    jr nz, jr_054_5216

    and e

jr_054_51f1:
    rst $20
    dec [hl]
    rst $38
    set 3, e
    ld l, [hl]
    ld a, [hl]
    inc a
    ld a, $88
    adc b
    ld bc, $ff01
    nop
    ld e, a
    nop
    rra
    nop
    ld b, a
    nop
    rst $38
    nop
    ld c, a
    nop
    cp a
    nop
    rst $28
    nop
    sbc $01
    sbc $01
    ld a, [$f605]
    add hl, bc

jr_054_5216:
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    jr nc, jr_054_51f1

    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld e, b
    and a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub c
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    dec bc
    rst $30
    ld bc, $88ff
    rst $38
    adc e
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    dec h
    rst $38
    nop
    rst $38
    adc c
    ld a, [hl]
    ret z

    scf
    ld e, e
    rst $20
    ld a, [bc]
    rst $30
    ldh [$1f], a
    ret z

    ccf
    ld [$42ff], sp
    cp a
    nop
    rst $38
    inc b
    ei
    db $76
    adc c
    dec bc
    db $f4
    add d
    db $fd
    add c
    rst $38
    add hl, bc
    rst $30
    nop
    rst $38
    nop
    rst $38
    db $e3
    inc e
    add e
    ld a, h
    ld a, b
    add a
    ld a, d
    add a
    ld a, [$1f07]
    db $e3
    ld e, $e3
    and h
    ld e, a
    di
    inc c
    ret nz

    ccf
    and b
    ld e, a
    ld bc, $f3fe
    ld a, h
    sub b
    ld a, a
    adc e
    ld a, a
    adc d
    ld [hl], a
    ld a, [de]
    rst $20
    ld [$66ff], sp
    ld sp, hl
    sbc h
    db $e3
    inc hl
    rst $38
    cp $01
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    ld a, e
    add h
    dec de
    db $e4
    dec e
    ld [c], a
    ld e, $e1
    ld h, b
    rst $38
    dec e
    ei
    ld a, [bc]
    db $fd
    jp nc, Jump_054_7d2d

    add e
    ld a, c
    add a
    db $76
    adc a
    add hl, sp
    adc $44
    cp e
    jr nc, @+$01

    ld [hl], e
    db $fc
    rlca
    ld hl, sp-$69
    ld l, b
    rst $18
    ld h, b
    ld e, e
    db $e4
    ret z

    rst $30
    inc de
    db $ec
    rrca
    ldh a, [rTIMA]
    ld a, [$1fe0]
    db $f4
    rrca
    ld a, [$f807]
    rlca
    ldh a, [rIF]
    ldh [$1f], a
    pop af
    rrca
    jp nz, $e31f

    rra
    and e
    ld e, a
    jp $883f


    ld [hl], a
    ld b, b
    add b
    ld a, a
    add b
    ld a, a
    add b
    nop
    add b
    nop
    add b
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
    add b
    ld a, a
    add b
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
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

jr_054_531b:
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld hl, sp-$01
    ld [$82ff], sp
    rst $38
    ld c, a
    rst $38
    ld d, e
    rst $28
    ret nz

    rst $38
    inc b
    rst $38
    nop
    rst $38
    xor a
    ld [hl], b
    inc h
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    and b
    ld a, a
    ld b, b
    rst $38
    pop bc
    rst $38
    sub b
    rst $28
    jr c, jr_054_531b

    nop
    rst $38
    jp nz, $ee3f

    ld sp, $70af
    cpl

jr_054_535d:
    ldh a, [$cc]
    di
    inc bc
    db $fc
    db $10
    rst $28
    inc a
    jp $03fc


    reti


    ld h, $c1
    ld a, $f9
    ld c, $f3
    inc e
    rst $00
    jr c, @+$03

    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rP1]
    rst $38
    jr nz, jr_054_535d

    rla
    add sp, -$18
    rst $30
    add hl, de
    rst $20
    db $f4
    rrca
    db $ec
    rra
    ld hl, sp+$1f
    reti


    ld a, $b3
    ld a, h
    pop af
    ld a, [hl]
    ld c, c
    cp $31
    cp $08
    rst $38
    xor d
    push af
    adc a
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$6f]
    ldh a, [$c7]
    ld a, b
    sub b

jr_054_53a3:
    ld a, a
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    or $0f
    db $f4
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    xor d
    ld d, a
    jr jr_054_53a3

    dec b
    cp $03
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
    db $10
    rst $38
    ld b, d
    db $fd
    add e
    db $fc
    nop
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    ld [$00ff], sp
    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    jp $ff3f


    inc bc
    rst $38
    ld d, e
    rst $38
    add b
    ld a, a
    ld bc, $6dff
    db $d3
    ld h, h
    db $db
    pop bc
    cp $56
    jp hl


    sbc b
    rst $20
    cp h
    jp $e7da


    ld [bc], a
    rst $38
    jp nz, Jump_000_0d3f

    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$7f]
    add b
    ld [hl], a
    adc b
    sbc e
    ld h, h
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [de], a
    db $fd
    rst $28
    db $10
    ld b, $f9
    inc e
    rst $38
    add b
    rst $38
    dec d
    db $eb
    ld h, b
    sbc a
    nop
    rst $38
    ld a, [bc]
    push af
    inc c
    di
    sub c
    ld l, a
    add b
    ld a, a
    db $10
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    push hl
    dec de
    call z, $e533
    dec de
    adc b
    ld [hl], a
    cp e
    ld b, l
    dec b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e4
    dec de
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
    rst $38
    nop
    cp $01
    ld a, b
    add a
    ld sp, $0ece
    ldh a, [$0b]
    ldh a, [rNR44]
    call c, Call_000_2fd0
    ldh a, [rIF]
    add h
    ld a, e
    nop
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0003
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
    dec b
    nop
    ld e, $00
    rra
    nop
    ld a, e
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    rlca
    rst $38
    ld [hl], e
    rst $38
    ld a, h
    rst $38
    db $f4
    rst $38
    pop af
    inc b
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    inc e
    rst $38
    ldh a, [rIE]
    ld hl, $50ff
    rst $28
    ld b, b
    rst $38
    add b
    rst $38
    inc e
    db $e3
    ld hl, $56df
    xor a
    ld a, h
    add a
    call z, $9037
    ld l, a
    and [hl]
    ld a, a
    or h
    ld a, a
    ld de, $a1fe
    ld a, [hl]
    or e
    ld a, h
    ld d, h
    ei
    sub l
    ei
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    adc b
    rst $30
    inc e
    db $e3
    ld [hl-], a
    call $bf40
    nop
    rst $38
    ld e, a
    and b
    ld a, a
    add b
    rst $38
    add b
    ld [hl], a
    adc b
    cp a
    ret nz

    dec e
    ld [c], a
    sub b
    rst $28
    sbc b
    rst $20
    dec e
    ld [c], a
    dec e

jr_054_5537:
    ld [c], a
    ld e, $e1
    ld b, e
    db $fc
    ld l, a
    ldh a, [$be]
    pop bc
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    sbc a
    ldh [$cf], a
    ldh a, [$5f]
    ldh [$50], a
    rst $28
    jr jr_054_5537

    ret nc

    cpl
    ret c

    cpl
    pop af
    ld c, $f1
    ld c, $e0
    rra
    jp nz, Jump_000_0e3d

    pop af
    rra
    ldh [$bf], a
    ld b, b
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
    ld a, a
    add b
    add b
    ld a, a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
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

    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld d, a
    add b
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
    inc b
    nop
    ld bc, $0000
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    cpl
    nop
    rst $10
    nop
    or a
    nop
    xor [hl]
    nop
    ld l, h
    nop
    ccf
    nop
    cpl
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rst $38
    sub b
    rst $38
    xor b
    rst $38
    ld b, b
    rst $38
    jp z, $c4ff

    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ld hl, sp-$01
    db $ec
    rst $38
    ld a, [hl]
    rst $38
    sub b
    rst $38
    db $e4
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    dec bc
    rst $38
    cp $81
    rst $38
    and b
    rst $18
    adc b
    rst $30
    ld bc, $02fe
    rst $38
    rla
    db $eb
    dec d
    db $eb
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld d, l
    xor e
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, e
    add h
    xor h

jr_054_5601:
    db $d3
    inc bc
    db $fc
    db $fc
    ei
    ld de, $f9ee
    ld b, $aa
    ld d, l
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld h, c
    rst $38
    ldh [$7f], a
    and b
    ld a, a
    ld b, b
    rst $38
    jr jr_054_5601

    dec hl
    rst $10
    ld [$fe17], a
    rlca
    call z, Call_054_7c37
    adc a
    db $ec
    rra
    ld a, [c]
    dec e
    and b
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    call nz, $833b
    ld a, h
    add b
    ld a, a
    add b
    ld a, a
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    ld h, e
    db $fc
    push hl
    ld a, [$f837]
    ld d, a
    cp b
    ld d, $f9
    rla
    ld hl, sp-$2d
    inc a
    rst $00
    jr c, @+$49

    cp b
    sbc $21
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
    sbc a
    ld h, b
    cp e
    ld b, b
    rst $20
    nop
    ld a, a
    add b
    nop
    nop
    rst $38
    nop
    ldh [$1f], a
    ld [hl], l
    nop
    ld b, b
    nop
    nop
    nop
    jr nz, jr_054_566e

jr_054_566e:
    ld [hl+], a
    nop
    sub e
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    and b
    ld b, b
    ccf
    ret nz

    ldh [$1f], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0b00
    nop
    inc bc
    nop
    dec de
    nop
    ld [hl], $00
    ld c, e
    nop
    ld e, a
    nop
    ld c, a
    nop
    rst $38
    nop
    cp a
    nop
    ld l, a
    nop
    cp a
    nop
    push de
    nop
    db $e4
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
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
    ld h, b
    ld h, b
    ld [$6309], sp
    ld h, e
    dec hl
    cpl
    ldh [rP1], a
    db $e4
    ldh [$f9], a
    ldh [$fc], a

jr_054_56d7:
    or b
    db $fc
    ld a, b
    rst $38
    jr c, @+$01

    nop
    cp $80
    cp [hl]
    rst $38
    db $f4
    rst $38
    sbc b
    rst $38
    adc h
    ld a, a
    ld h, [hl]
    sbc a
    ld a, e
    add a
    adc e
    rst $30
    ld a, l
    rst $38
    add c
    ld a, a
    ld sp, hl
    rrca
    ret nc

    rst $38
    add c
    cp $c9
    or $85
    ld a, [$fc83]
    jr z, jr_054_56d7

    ld b, d
    db $fd
    ld e, b
    or a
    pop hl
    ld e, $f4
    dec bc

jr_054_5708:
    cp h
    ld b, e
    ld b, b
    rst $38
    add a
    ld hl, sp-$70
    rst $28
    and b
    rst $18
    nop
    rst $38
    nop
    rst $38
    ld bc, $30ff
    rst $08
    and c
    ld e, [hl]
    add sp, $17
    pop de
    ld l, $00
    rst $38
    ld bc, $40fe
    cp a
    ld [hl+], a
    db $dd
    rlca
    ld hl, sp+$5b
    and h
    cp $01
    dec e
    ld [c], a
    sbc $21
    jp nz, Jump_000_003d

    rst $38
    add hl, sp
    rst $00
    rst $38
    inc bc
    rst $30
    dec bc
    cp l
    ld b, e
    sbc a
    ld h, e
    ld l, [hl]
    sub e
    ld e, l
    and e
    db $ec
    inc de
    adc $31
    db $e4
    dec de
    rst $38
    inc bc
    ccf
    rst $00
    ld bc, $c0fe
    ld a, a
    or b
    ld a, a
    ret nc

    ccf
    call nc, $fa3f
    ccf
    ret nz

    ld a, a
    add d
    ld a, a
    ld b, d
    rst $38
    ld bc, $ff00
    nop
    nop
    rst $38
    rrca
    jr nc, jr_054_5769

jr_054_5769:
    jr nc, jr_054_577b

    jr nz, jr_054_578c

    jr nz, jr_054_57b7

    jr nc, jr_054_57b9

    jr nc, jr_054_57c3

    jr nz, jr_054_57c5

    jr nz, jr_054_57c7

    jr nz, jr_054_5708

    ld [hl], b
    nop

jr_054_577b:
    rst $38
    nop
    nop
    ld bc, $0200
    nop
    rlca
    nop
    rra
    nop
    dec c
    nop
    inc c
    nop
    ld a, l
    nop

jr_054_578c:
    ld a, a
    nop
    ld b, [hl]
    nop
    adc d
    nop
    cp e
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    db $eb
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_054_57b7:
    nop
    rst $30

jr_054_57b9:
    nop
    rst $38
    nop
    rst $00
    jr c, @+$01

    rst $38
    nop
    nop
    nop

jr_054_57c3:
    nop
    nop

jr_054_57c5:
    nop
    nop

jr_054_57c7:
    nop
    dec b
    rlca
    inc h
    ld [hl], h
    or [hl]
    cp [hl]
    ld a, d
    ld a, [$c1c1]
    ld [bc], a
    ld [bc], a
    jr jr_054_57f2

    inc c
    inc c
    inc b
    inc c
    ld [$1b0c], sp
    dec de
    inc bc
    inc bc
    ld [de], a
    inc de
    cp l
    rra
    db $ed
    dec c
    db $fd
    dec e
    db $ec
    inc c
    dec b
    rlca
    ld [bc], a
    nop
    cpl
    ld bc, $c37f

jr_054_57f2:
    and l
    ldh [$81], a
    ld h, b
    ret nc

    ld [hl], b
    adc b
    jr c, @+$65

    inc e
    ei
    rrca
    ld sp, hl
    rrca
    db $fd
    rla
    or a
    rlca
    db $76
    inc bc
    rst $38
    inc hl
    rst $38
    rst $20
    rst $38
    ld [$18ff], sp
    cp a
    inc c
    inc bc
    rst $38
    rrca
    rst $38
    ld c, d
    cp l
    dec c
    rst $38
    rrca
    rst $38
    dec sp
    db $fd
    ldh a, [rIE]
    and b
    ld a, a
    ld hl, $a1fe

jr_054_5823:
    ld a, [hl]
    ld [bc], a
    db $fd
    ld l, $f1
    ld l, l
    or d
    ld h, l
    cp d
    ld l, a
    ldh a, [$6f]
    ldh a, [rPCM34]
    ld hl, sp-$05
    db $fc
    add b
    rst $38
    adc c
    rst $30
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_054_5840:
    nop
    rst $38
    ld bc, $04fe
    ei
    ld [bc], a
    rst $38
    nop
    rst $38
    jr z, jr_054_5823

    ret z

    rst $30
    jr z, @+$01

    ld d, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld de, $12ee
    db $ed
    ld hl, sp+$00
    rst $38
    nop
    nop
    rst $38
    rst $30
    ld [$0814], sp
    nop
    inc e
    push hl
    jr @+$07

    jr jr_054_5875

    jr jr_054_5897

    jr jr_054_5895

jr_054_5875:
    jr jr_054_589a

    jr jr_054_5840

    jr c, jr_054_587b

jr_054_587b:
    rst $38
    db $dd
    nop
    ld c, h
    nop
    ld b, h
    nop
    db $fc
    ld bc, $01fe
    cp $01
    ld a, [hl]
    ld bc, $01be
    ld a, $01
    ld a, $01
    ld a, h
    inc bc
    cp $01
    rst $38

jr_054_5895:
    nop
    db $fc

jr_054_5897:
    inc bc
    db $fc
    inc bc

jr_054_589a:
    ld hl, sp+$07
    ld a, b
    rlca
    ld a, d
    dec b
    cp b
    rlca
    ld sp, hl
    ld b, $fb
    inc b
    ld sp, hl
    ld b, $f3
    inc c
    di
    inc c
    ld hl, sp+$07
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ld a, $c2
    dec a
    ldh [rIE], a
    rra
    nop
    cpl
    nop
    ccf
    nop
    ccf
    nop
    cp a
    add b
    ccf
    add b
    db $db
    ldh [rBCPS], a
    ld l, b
    call c, $3adc
    ld a, [hl-]
    ld b, $06
    nop
    nop
    inc c
    inc c
    xor h
    xor h
    jp hl


    rst $28
    ld e, h
    rst $38
    ld c, b
    ret z

    call nz, $8ec4
    adc a
    ld a, b
    ld a, a
    or e
    rst $38
    and l
    cp l
    ld l, a
    ld l, a
    inc l
    inc a
    ld [bc], a

jr_054_58f1:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add d
    ld [bc], a
    ret nz

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    stop
    ld [bc], a
    inc bc
    add e
    nop
    rst $18
    nop
    ld a, a
    nop
    cp a
    add b
    ccf
    ld b, b
    ld a, a
    ld [hl], b
    rst $28
    ld [hl], b
    rst $18
    jr jr_054_58f1

    sbc h
    ldh a, [$dc]
    ld hl, sp+$0f
    ld hl, sp-$01
    db $fc
    add a
    db $fc
    jp Jump_054_63fe


    rst $38
    ld de, $ff08
    ld d, d
    xor l
    ld h, h
    sbc a
    ld h, l
    sbc a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ret c

    daa
    pop af
    rrca
    ei
    rlca
    add b
    ld a, a
    add l
    cp $6b
    or $1f
    and $12
    rst $28
    dec b
    ei
    ld bc, $cbff
    dec [hl]
    ld l, [hl]
    sub c
    cp [hl]
    ld b, c
    adc [hl]
    ld [hl], c
    inc c
    di
    inc d
    db $eb
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    inc b
    ei
    ld a, a
    add b
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_054_5962

jr_054_5962:
    rst $18
    jr nz, jr_054_5965

jr_054_5965:
    rst $38
    ei
    inc b
    ld a, [hl+]
    inc b
    ld l, $00
    ld h, [hl]
    ld [$08b7], sp
    sub a
    ld [$007f], sp
    ld a, a
    nop
    jp hl


    ld d, $d8
    ld h, $50
    xor [hl]
    di
    inc c
    ld e, $10
    xor $00
    ld a, e
    add h
    rst $38
    nop
    ld l, e
    sub h
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    ld b, b
    rst $38

jr_054_598f:
    nop
    rst $38
    nop
    sbc a
    ld h, b
    cp e
    ld b, h
    ccf
    ret nz

    rst $18
    jr nz, jr_054_598f

jr_054_599b:
    dec bc
    ld a, a
    add b
    and a
    ld e, b
    or e
    ld c, h
    sbc a
    ld h, b
    add a
    ld a, b
    ld c, e
    or h
    rrca
    ldh a, [$cf]
    jr nc, @-$3d

    ld a, $1f
    ldh [rVBK], a
    or b
    ld c, l
    or d
    inc e
    db $e3
    jp hl


    ld d, $61
    sbc [hl]
    add b
    ld a, a
    add e
    ld a, h
    ld bc, $06fe
    ld sp, hl
    rlca
    ld hl, sp+$13
    db $ec
    ld [$10f7], sp
    rst $28
    jr nc, jr_054_599b

    nop
    rst $38
    nop
    rst $38
    rst $08
    nop
    rst $38
    ld bc, $81ff
    ccf
    ldh [$3b], a
    ldh [$7b], a
    ldh a, [$7f]
    ld hl, sp-$0f
    cp $42
    ld b, d
    jr c, jr_054_5a1c

    ld [$02ea], a
    sbc [hl]
    ld [de], a
    db $76
    jp hl


    ei
    inc e
    inc e
    ld l, [hl]
    ld l, [hl]
    ld h, b
    ld [hl], c
    inc a
    ccf
    ldh a, [$fc]
    ld hl, $e569
    push hl
    adc c
    cp a
    dec sp
    ld a, e
    ld hl, $80e1
    add b
    nop
    rrca
    rla
    rra
    dec bc
    dec de
    adc a
    ccf
    adc $2e
    add sp, $28
    ldh a, [$30]
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    rst $38
    ld a, a
    rst $18
    ld a, a
    rst $38
    ccf
    rst $38

jr_054_5a1c:
    ccf
    rst $18
    ccf
    ldh [rOCPD], a
    ld h, b

jr_054_5a22:
    rst $38
    ld [hl], b
    cp a
    jr c, jr_054_5a22

    inc a
    ld [hl], a
    inc d
    dec sp
    ld e, $7b
    dec bc
    dec bc
    dec bc
    add hl, bc
    inc bc
    ld a, h
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
    add e
    db $fc
    rra
    ldh [$ef], a
    ret nc

    xor l
    ld a, [c]
    ld b, l
    ld a, [$7eb9]
    inc e
    rst $38
    sbc [hl]
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    ld a, h
    add e
    cp $01
    or $09
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld [$0000], a
    rst $38
    add b
    ld a, a
    push hl
    ld a, [de]
    ld a, a
    nop
    ld a, a
    nop
    ld a, h
    nop
    rst $30
    nop
    ei
    nop
    ld [hl], e
    ld [$fb04], sp
    ldh [rNR31], a
    ld l, b
    sub e
    dec c
    di
    add l
    ld [hl-], a
    call nz, $f2b3
    dec b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_054_5a8a:
    rst $28
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    rst $20
    nop
    rst $38
    nop
    rst $30
    nop
    ld l, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $30
    ld [$00ff], sp
    ccf
    ret nz

    sbc a
    ld h, b
    rst $18
    jr nz, jr_054_5abe

    ldh a, [$cf]
    jr nc, jr_054_5a8a

    jr z, jr_054_5b13

    and c
    sbc a
    ld h, b

jr_054_5ab8:
    rst $18
    jr nz, jr_054_5ab8

jr_054_5abb:
    ld [bc], a
    sbc [hl]
    ld h, c

jr_054_5abe:
    adc $31
    pop hl
    ld e, $18
    rst $20
    ld bc, $03fe
    db $fc
    dec d
    ld [$f807], a
    ld d, a
    xor b
    dec sp
    call nz, $ef10
    ld h, d
    sbc l
    ld h, c
    sbc [hl]
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_054_5abb

    ld [$c8f7], sp
    scf
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    adc a
    add b
    and a
    and b
    rst $00
    ret nz

    reti


    ret c

    ld h, h
    ld [hl], h
    cp [hl]
    cp [hl]
    add hl, sp
    ccf
    inc [hl]
    scf
    rlca
    rst $00
    sub [hl]
    cp $82
    cp $21
    dec l
    adc c
    adc a
    ld bc, $9f0f
    sbc a
    ld h, $a7
    and a
    xor a
    rrca
    rrca
    add c
    adc a
    ld a, e
    ld a, a
    cp d
    cp e
    ld e, b
    ld a, a
    add h

jr_054_5b13:
    rst $38
    rst $00
    rst $38

jr_054_5b16:
    ei
    ei
    push hl
    rst $38
    dec de
    dec de
    jp nc, $f612

    ld [hl], $c0
    ccf
    ld b, a
    ccf
    rst $20
    rra
    rst $38
    inc bc
    di
    ld bc, $01c5
    ld de, $ab00
    nop
    ld b, b
    ret nz

    ld c, l
    ret nz

    jr nz, jr_054_5b16

    ld e, $f2
    ld c, $fe
    add e
    ld a, [hl]
    push hl
    ccf
    ldh a, [$1f]
    db $10

jr_054_5b41:
    rra
    ld [$2c0f], sp
    rlca
    rlca
    inc b
    ld bc, $4100
    nop
    rst $28
    ld b, b
    rst $38
    ld h, a
    rst $38
    rst $38
    and [hl]
    ld a, a
    rra
    cp $10
    rst $38
    sbc b
    ld a, a
    ldh [$1f], a
    cp $03
    db $fc

jr_054_5b5f:
    inc bc
    nop
    nop
    ret nz

    nop
    rra
    ldh [$fd], a
    rst $38
    ld h, h
    cp a
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    or l
    nop
    rst $30
    nop
    jr jr_054_5b5f

    jr c, jr_054_5b41

    jr z, @-$37

    db $10
    rst $28
    db $10
    rst $38
    ld l, a
    adc a
    and l
    rst $08
    adc a
    nop
    cp a
    nop
    xor a
    nop
    rst $38
    nop
    or a
    nop
    rla
    nop
    ld [$ff00], a
    nop
    ld a, e
    nop
    ld a, c
    nop
    pop af
    nop
    rst $38
    nop
    ei
    nop
    ld sp, hl
    nop
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    rst $30
    nop
    rst $38

jr_054_5ba9:
    nop
    rst $38
    nop
    rst $38
    nop

jr_054_5bae:
    cp a
    ld b, b

jr_054_5bb0:
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $10
    jr c, jr_054_5bb0

    ld [$10ef], sp
    ccf
    ret nz

    rst $08

jr_054_5bbf:
    jr nc, @-$0b

    inc c
    xor $11
    rst $18
    jr nz, jr_054_5bae

    jr @-$07

    ld [$1be4], sp
    adc [hl]
    ld [hl], c
    sub d

jr_054_5bcf:
    ld l, l
    adc b

jr_054_5bd1:
    ld [hl], a
    inc c
    di
    inc bc
    db $fc
    inc bc
    db $fc
    ccf
    ret nz

    ld e, $e1
    ld l, $d1
    or b
    rst $08
    jr c, jr_054_5ba9

    ld de, $20ee
    rst $18
    jr jr_054_5bcf

    jr jr_054_5bd1

    ld b, [hl]
    cp c
    inc hl
    call c, $ff00
    rst $08
    nop
    ld [hl], a
    nop
    rst $30
    jr nz, @-$3b

    add b
    add e
    add e
    ld b, [hl]
    ld b, [hl]
    jp z, $d2ce

    sbc $55
    ld a, a
    sbc l
    cp a
    ld a, [$defb]
    rst $38
    add a
    rst $20
    push hl
    push hl
    adc $ce
    xor e
    xor a
    add a
    rst $20
    scf
    or a
    rst $10
    rst $10
    ld b, c
    ld b, c
    ei
    ei
    jr nz, jr_054_5bbf

    adc b
    adc e
    inc d
    ld e, $15
    dec e
    inc de
    inc de
    ld bc, $0703
    rlca
    inc bc

jr_054_5c29:
    inc bc
    inc bc
    inc bc
    nop
    nop
    add a
    rlca
    or b
    ld a, a
    or b
    ld a, a
    db $fc
    ccf
    db $fc
    rra
    db $fc
    rra
    db $76
    adc a
    rst $18
    rst $38
    rst $38
    rst $38
    ld b, b
    ret nz

    add b
    ret nz

    ldh [$e0], a
    ld b, e
    nop
    adc a
    nop
    rlca
    nop
    rst $00
    nop
    rlc b
    add $3f
    jp nz, $c33f

jr_054_5c55:
    ccf
    adc c
    ld [hl], a
    jr nc, jr_054_5c29

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
    ldh [rP1], a
    ret c

    jr nz, jr_054_5c6d

    cp b
    cp h
    nop
    sbc h

jr_054_5c6d:
    nop
    ret


    nop
    dec l
    ld b, b
    add l
    ld b, b
    ld [hl], h
    add e
    add hl, de
    rst $20
    db $e3
    inc b
    dec hl
    call nz, $c33c
    db $e3
    inc c
    adc a
    rst $08
    ld d, b
    rst $08
    jr nc, jr_054_5c55

    ldh a, [rP1]
    ldh a, [rP1]
    di
    nop
    rst $38
    nop
    db $db
    nop
    add sp, $00
    ret nz

    nop
    rst $38
    nop
    rst $20
    nop
    rst $00
    nop
    rst $28
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $28
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    or $00
    push af
    nop
    cp $00
    cp a
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, e
    inc b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$037c], sp
    rst $38

jr_054_5cc3:
    nop
    ccf
    ret nz

    rst $20
    jr jr_054_5d45

    add e
    ld e, [hl]
    and c
    rra
    ldh [$6f], a
    sub b
    ld a, e
    add h
    ld a, [hl]
    add c
    cp a
    ld b, b
    rst $38
    nop
    ld hl, sp+$07
    ld a, d
    add l
    add hl, sp
    add $80
    ld a, a
    add d
    ld a, l
    jr nz, jr_054_5cc3

    nop
    rst $38
    add e
    ld a, h
    ld bc, $05fe
    ld a, [$fc03]
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $80fe
    ld a, a
    add a
    ld a, b
    add l
    ld a, d
    adc h
    rst $38
    adc $ff
    ld l, a
    rst $38
    add d
    add d
    rst $28
    rst $38
    ld hl, $10ff
    sbc a
    adc d
    adc a
    ld a, a
    ld a, a
    ei
    ei
    cp $fe
    ld e, h
    ld a, h
    ld hl, $5031
    ld [hl], b
    and b
    ldh [$a3], a
    db $e3
    ld a, [de]
    jp c, $ac2c

    sbc d
    sbc $02
    ld b, d
    add b
    ret nz

    ld h, b
    ldh [$90], a
    sub b
    ld b, b
    ld b, b
    ld a, c
    ld a, c
    ld hl, sp-$08
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    pop af
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

jr_054_5d45:
    nop
    rst $38
    add e
    rst $38
    ld h, c
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld c, [hl]
    rst $38
    ld l, a
    rst $38
    ret nc

    rst $38
    db $10
    rst $38
    ld b, d
    rst $38
    db $ec
    rst $38
    rst $20
    rst $38
    cp b
    rst $38
    and b
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
    jr jr_054_5d93

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_054_5da3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_054_5db3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_054_5dc3

    ld [hl-], a

jr_054_5d93:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_054_5dd3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_054_5da3:
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

jr_054_5db3:
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

jr_054_5dc3:
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

jr_054_5dd3:
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
    ld [hl], b
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
    add hl, hl
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
    jr jr_054_5e95

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
    jr z, jr_054_5eb5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_054_5ec5

    ld [hl-], a

jr_054_5e95:
    inc sp
    inc [hl]
    ld [hl-], a
    dec [hl]
    ld [hl], $37
    jr c, jr_054_5ed6

    ld a, [hl-]
    dec sp
    inc a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop

jr_054_5eb5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rlca
    ld b, $00
    ld [bc], a
    nop
    nop
    nop

jr_054_5ec5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld b, $01
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    nop

jr_054_5ed6:
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    ld b, $01
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0001
    nop
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0200
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0204
    rlca
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0001
    nop
    nop
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0606
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0306
    inc bc
    ld b, $02
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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$080c], sp
    ld [$0908], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld [$080c], sp
    add hl, bc
    add hl, bc
    ld c, b
    ld [$0909], sp
    ld [$0909], sp
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld hl, $1027
    ld [hl-], a
    ld a, [hl-]
    ld a, e
    call nz, Call_054_5000
    nop
    call c, $4500
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    ld l, b
    nop
    rst $28
    nop
    ld b, b
    ld b, b
    db $f4
    rst $38
    and b
    cp a
    ld b, b
    ld a, a
    sub l
    rst $38
    add hl, bc
    jp hl


    ld de, $1091
    db $10
    ld sp, hl
    nop
    daa
    ld [bc], a
    adc a
    ld [bc], a
    ld c, a
    inc b

jr_054_6018:
    rrca
    inc b
    xor a
    inc b
    add [hl]
    inc b
    cp a
    inc b
    rst $38
    ei
    db $10
    rst $38
    rra
    rst $38
    cp a
    rst $38
    scf
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    inc e
    rst $38
    rst $38
    pop hl
    rst $38
    ld b, c
    rst $38
    and d
    rst $38
    add b
    rst $38
    rst $38
    rst $38

Call_054_603b:
    dec h
    rst $38
    ld [$f8ff], sp
    rst $38
    ld l, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    dec de
    rst $38
    dec a
    rst $38
    jr nc, @+$01

    jr @+$01

    jr c, @+$01

    nop
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    sbc d
    rst $38
    add d
    rst $38
    add d
    rst $38
    sbc [hl]
    rst $38
    ld a, [de]
    rst $38
    ld e, $ff
    inc c
    rst $38
    inc bc
    rst $38
    ld c, $ff
    adc b
    rst $38
    add [hl]
    rst $38
    ld b, h
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    jr nz, @+$01

    ld [c], a
    rst $38
    jp nz, Jump_000_00ff

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
    ld [$00ff], sp
    nop
    nop
    jr nz, jr_054_6094

jr_054_6094:
    nop
    nop
    jr jr_054_6018

    sub c
    ret nc

    and e
    cp e
    push af
    rst $38
    cp $fe
    dec e
    dec e
    ld d, a
    ld d, a
    ld bc, $4801
    ret z

    add d
    ld [c], a
    ld b, h
    ld [hl], h
    cp b
    ld hl, sp+$71
    ld a, c
    ld b, b
    ld [hl], b
    cp b
    cp b
    dec a
    dec a
    and d
    and d
    inc d
    inc d
    adc [hl]
    adc $9f
    rst $38
    ld b, c
    ld a, c
    inc e
    inc a
    ld [$bbea], a
    cp e
    ld c, a
    ld c, a
    ld a, a
    ld a, a
    ld a, $be
    add sp, -$18
    db $db
    ret nc

    rst $38
    adc a
    ldh [$e0], a
    dec b
    dec b
    jr c, jr_054_6110

    db $fd
    db $fd
    inc bc
    inc bc
    add d
    add e
    cp $ff
    ret nz

    rra
    ld h, b
    rra
    ld b, b
    rra
    and b
    rra
    ret nz

    rrca
    pop de
    ld b, $d5
    nop
    ei
    nop
    ld [bc], a
    ld d, [hl]
    ld bc, $c50f
    rst $08
    ldh a, [$f2]
    ld hl, sp-$06
    ld d, c
    ld d, e
    ld a, a
    ld a, a
    adc a
    adc a
    ld b, b
    ret nz

    ld e, a
    ld a, a
    ld c, h
    db $fc
    ld h, c
    db $fd
    ld b, d
    ld a, [hl]
    ld a, [de]
    ld e, $42
    ld b, a
    add [hl]
    add a

jr_054_6110:
    and b
    nop
    stop
    ld e, b
    nop
    ccf
    db $10
    ld a, l
    ld hl, $21a3
    and e
    ld hl, $21e7
    rst $38
    ld de, $a1ff
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $00ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    add h
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
    ret nz

    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    add b
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
    rst $18
    rst $38
    cp b
    rst $38
    pop hl
    ccf
    ld hl, $373f
    ld h, $e0
    add a
    ld hl, sp+$64
    db $ec
    ret nz

    db $ec
    ld a, d
    ld a, [hl]
    ld h, h
    ld [hl], h
    inc [hl]
    ld a, $ce
    adc $d0
    nop
    and c
    nop
    ret nz

    nop
    and e
    nop
    jp nz, Jump_000_2500

    nop
    rlca
    nop
    daa
    nop
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    or $f7
    inc l
    cpl
    ld hl, sp-$21
    pop af
    ld a, $e0
    ld a, [hl]
    ret nz

    db $fc
    add b
    ld hl, sp+$00
    ldh a, [rNR10]
    ldh [$3f], a
    ldh [rSC], a
    db $fc

jr_054_61e2:
    dec c
    ldh a, [$09]
    ldh a, [rWX]
    or b
    ld c, e
    add b
    and e
    nop
    rst $28
    nop
    ld l, a
    nop
    or b
    or b
    jr nz, jr_054_6270

    ld [hl], c
    ld a, a
    db $ec
    rst $38
    rst $18
    rst $18
    dec d
    ld [hl], l
    sub d
    cp e
    ldh [$e8], a
    or d
    nop
    add sp, $00
    add hl, bc
    nop
    ld hl, $2900
    nop
    ld a, c

jr_054_620b:
    nop
    ld b, c
    nop
    ld [hl], a
    nop
    ei
    nop
    jp $f900


    nop
    ld [hl], d
    jr nz, jr_054_620b

    jr nz, jr_054_6293

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_054_61e2

    or d
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    ld c, $ff
    dec c
    rst $38
    ld c, $ff
    dec b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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

jr_054_6270:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_054_6293:
    jr nz, @+$01

    nop
    rst $38
    ld [$3cff], sp
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    ei
    rst $38
    dec c
    rst $38
    sbc d
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ld bc, $00ff
    add a
    ld [bc], a
    ld hl, sp+$18
    db $e3
    ld h, e
    ld [c], a
    ld [hl+], a
    rst $38
    ld a, a
    or $f7
    db $fc
    rst $38
    db $fc
    cp $f8
    db $fc
    di
    db $fc
    rst $20
    ld a, [$f4cf]

jr_054_62c6:
    set 6, c
    sub e
    pop hl
    inc hl
    jp $c023


    ld b, [hl]
    add b
    ld [hl], e
    adc h
    rst $28
    jr @-$0f

    jr jr_054_62c6

    jr @-$03

    dec e
    ret c

    ccf
    cp a
    ld a, a
    ld [hl], b
    rst $38
    db $db
    rst $18
    ld l, [hl]
    ld l, a
    daa
    scf
    inc [hl]
    inc [hl]
    ld bc, $0c01
    inc c
    add hl, bc
    add hl, bc
    ld [$f008], sp
    nop
    ld a, $00
    sbc l
    nop
    rra
    nop
    rla
    nop
    dec de
    nop
    adc e
    nop
    ld [c], a
    nop
    jr nc, @+$72

    ld [hl], c
    ld a, c
    ld e, e
    ld a, a
    xor c
    xor l
    db $ec
    xor $44
    ld c, l
    ld l, b
    ld l, c
    ld bc, $f101
    pop af
    sbc b
    sbc c
    ld a, h
    ld a, h
    di
    di
    db $eb
    db $eb
    adc [hl]
    adc [hl]
    ld h, b
    ld h, c
    jr nc, jr_054_6350

    db $fc
    cp a
    db $fd
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
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    ld a, a
    rst $38
    rst $38

jr_054_6350:
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc e
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    rst $18
    rst $38
    ld sp, hl
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld c, [hl]
    rst $38
    cp a
    rst $38
    dec hl
    cp $00
    db $fc
    nop
    ld a, [$fd00]
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    db $fd
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    rlca
    rlca
    rrca
    rrca
    rla
    rla
    ld [bc], a
    ld [bc], a
    nop
    nop
    rst $38
    ld bc, $21ff
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    nop
    ret nc

    nop
    ld bc, $2101
    nop
    jp Jump_000_1502


    nop
    dec b
    inc b
    adc e
    ld [$3ce6], sp
    xor $78
    call c, $bcf0
    ldh a, [$78]
    ldh [$f0], a
    nop
    pop bc
    add b
    rst $38
    sub b
    rla
    ld hl, sp+$67
    ld hl, sp-$31
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    srl [hl]
    adc b
    ld a, a
    ld a, b
    rst $38
    inc l
    db $d3
    cp $01
    sub e
    rst $38
    ld b, e
    rst $38
    dec c
    rst $28
    ret nz

    rst $20
    adc b
    rst $28
    add c
    pop bc
    add e
    jp $eded


    inc sp
    inc sp

jr_054_63f2:
    xor a
    xor a
    xor [hl]
    xor [hl]
    ld d, e
    ld d, e
    jr c, jr_054_63f2

    sub c
    ld sp, hl
    ld a, b
    ld a, b

Jump_054_63fe:
    ld a, c
    ld a, c
    cp l
    cp l
    ld l, [hl]
    xor $ed
    db $ed
    ld l, e
    ld l, e
    or a
    or a
    ld [$89ea], a
    ret


    ld bc, $4381
    ld b, e
    xor d
    ld [$d393], a
    sbc e
    db $db
    ld c, e
    bit 0, c
    pop bc
    ld d, l
    ld d, l
    ld b, d
    ld b, d
    ld e, [hl]
    rst $38
    jr nz, @+$01

    ei
    nop
    ei
    nop
    db $e3
    nop
    ld a, [$ea00]
    nop
    ld a, [$0100]
    cp $00
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld [$fff7], sp
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
    ld a, a
    rst $38
    cp a
    rst $38
    rst $30
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
    ld a, a
    ld c, h
    nop
    ld [bc], a
    nop
    inc e
    sbc a
    add b
    rst $00
    ld h, b
    ld h, b
    dec b
    dec e
    inc hl
    dec hl
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    db $10
    db $10
    rst $38
    ccf
    ld [hl], a
    rst $38
    ld [bc], a
    rst $38
    dec [hl]
    rst $38
    db $10
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [de]
    rst $38
    cp b
    rst $38
    ld a, d
    rst $38
    rst $30
    rst $38
    ld a, [c]
    rst $38
    add sp, -$01
    ret nz

    rst $38
    pop bc
    cp $9f
    ldh [$5d], a
    ld [c], a
    sbc b
    rst $20
    dec e
    db $e3
    ld [hl], $cb
    inc bc
    rst $38
    rst $30
    adc e
    db $fd
    inc bc
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ldh a, [rIF]
    ret nz

    ccf
    rla
    ld sp, hl
    daa
    ld sp, hl
    rlca
    ld hl, sp-$80
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$07
    ret nz

    ccf
    add [hl]
    ld a, a
    adc b
    ld a, a
    db $10
    rst $38
    rra
    ldh [$7f], a
    add b
    cp a
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    adc a
    ldh a, [rNR44]
    db $fc
    nop
    rlca
    jr z, jr_054_64e7

    jr c, jr_054_64e9

    inc a

jr_054_64e7:
    inc bc
    cp h

jr_054_64e9:
    nop
    call c, $ff00
    nop
    ld a, e
    nop
    add hl, bc
    add hl, bc
    add b
    add b

Call_054_64f4:
    and b
    ldh [$66], a
    ld a, [hl]
    or h
    db $fc
    ldh [$fc], a
    inc de

Call_054_64fd:
    rra
    add hl, bc
    rrca
    inc c
    rrca
    add [hl]
    adc a
    ld e, c
    reti


    inc d
    call nc, Call_054_7616
    adc $ce
    ld [hl], d
    db $76
    ld l, h
    ld l, h
    ld [$4448], sp
    ld h, h
    ld b, h
    ld [hl], h
    ld [$e8fa], a
    ld hl, sp+$3c
    inc a
    adc b
    adc h
    add $c7
    ld h, d
    rst $38
    dec c
    rst $38
    xor $1f
    xor $1f
    ld sp, hl
    ld c, $e8
    inc e
    add sp, $1c
    ld a, d
    adc h
    ret nz

    ccf
    dec a
    ret nz

    rra
    ldh [$9f], a
    ld h, b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$0b
    db $fc
    add hl, bc
    cp $08
    rst $38
    adc b
    ld a, a
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fd]
    ldh a, [rBCPS]
    nop
    ld e, h
    nop
    ld h, [hl]
    and $40
    ret nz

    ld [hl+], a
    ld [c], a
    xor h
    db $ec
    sbc h
    sbc h
    ld [de], a
    ld [de], a
    jr jr_054_6596

    jr nc, jr_054_65b0

    rst $38
    ret nz

    db $fd
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    jr c, @+$01

    add hl, hl
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    nop
    rst $38
    xor c
    rst $38

jr_054_6596:
    ret nz

    rst $38
    ld bc, $06fe
    ld sp, hl
    ld e, $e1
    cp $01
    cp b
    ld b, a
    ld a, h
    rst $38
    rst $00
    ld hl, sp-$19
    ld hl, sp-$7f
    cp $02
    rst $38
    and b
    rst $38
    ld [bc], a
    rst $38

jr_054_65b0:
    nop
    rst $38
    rrca
    ldh a, [$7f]
    add b
    ld a, a
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld sp, hl
    rlca
    add hl, de
    cp $77
    ld hl, sp-$39
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    pop af
    rrca
    rst $20
    rra
    rst $08
    ccf
    adc $3f
    call c, $bc3f
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
    ccf
    add b
    rrca
    adc [hl]
    rlca
    adc a
    rlca
    sbc a
    rlca
    rst $18
    inc bc
    ld [hl], a
    nop
    ld b, a
    nop
    pop af
    nop
    ld h, b
    nop
    ld [hl], h
    nop
    scf
    nop
    rst $38
    nop
    ld a, a
    nop
    dec h
    nop
    cp c
    nop
    ret c

    nop

Call_054_660c:
    ret c

    nop
    ret nc

    nop
    adc a
    nop
    sub e
    nop
    ld c, e
    nop
    xor l
    nop
    adc l
    nop
    db $e4
    nop
    db $f4
    nop
    sbc $00
    rst $38
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    ld [hl], a
    ld a, a
    rst $28
    ld a, a
    ld l, c
    ccf
    ldh a, [rP1]
    ld bc, $f301
    inc bc
    push af
    rlca
    ei
    ld c, $e3
    rrca
    rst $30
    ld e, $ff
    ld e, $fe
    ld e, $ef
    ld e, $ef
    ld e, $e0
    rra
    ldh [$1f], a
    rst $38
    ld e, $fa
    ld a, [de]
    cp $1e
    ld a, [$fa1a]
    ld a, [de]
    ldh a, [rNR12]
    rst $38
    ld a, [de]
    ei
    dec de
    rst $38
    rra
    rrca
    rrca
    ld a, [bc]
    rrca
    dec e
    dec e
    rrca
    rrca
    ld a, [bc]
    rrca
    ld [$af0d], sp
    rrca
    cp $03
    cp a
    nop
    ld a, e
    nop
    dec e
    ld e, l
    ld d, e
    ld e, a
    inc c
    inc c
    ld [hl-], a
    ld a, $fd
    rst $38
    ld e, b
    ld e, c
    ld d, c
    ld d, c
    add e
    add e
    rst $38
    sbc l
    rst $38
    cpl
    ld bc, $18ff
    rst $38
    ld [$00ff], sp
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    rla
    ld hl, sp+$17
    ld hl, sp+$37
    ld hl, sp+$2f
    ldh a, [$7f]
    ldh [$df], a
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
    rra
    ldh [rSB], a
    rst $38
    ld h, b
    rst $18
    dec bc
    rst $30
    ldh [$1f], a
    push af
    ld a, [bc]
    rst $20
    inc e
    jp Jump_054_437e


    rst $38
    ret nz

    cp a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$f807]
    rlca
    ld hl, sp+$07
    ldh a, [$1f]
    pop hl
    rra
    ld c, $f7
    inc h
    ei
    ld h, b
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    inc b
    rst $38
    ld bc, $00ff
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
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rlca
    ld c, a
    rlca
    ld hl, sp+$07
    ld e, h
    inc bc
    or [hl]
    ld bc, $0196
    jp nz, $0601

    ld bc, $01ee
    cp $01
    ld e, a
    nop
    ld c, a
    nop
    adc a
    nop
    rrca
    nop
    adc d
    nop
    ld [c], a
    nop
    cp $00
    ld e, a
    nop
    sub a
    nop
    add a
    nop
    rla
    ld b, $0f
    dec b
    rst $18
    rlca
    rst $38
    inc bc
    rst $30
    inc bc
    dec bc
    nop
    pop hl
    rst $38
    ld [hl], a
    db $ed
    or a
    xor l
    or a
    xor l
    or e
    xor l
    or e
    xor l
    sub a
    sbc l
    sbc c
    adc l
    sbc a
    adc l
    sbc a
    adc l
    nop
    rst $38
    nop
    rst $38
    di
    or a
    pop de
    push de
    sbc c
    sbc l
    reti


    sbc l
    call c, $d0dc
    call nc, $94d0
    ret nc

    call nc, $ffff
    rst $38
    rst $38
    xor h
    db $fd
    rst $18
    rst $18
    rst $38
    rst $38
    xor h
    db $fd
    adc [hl]
    rst $18
    db $fd
    db $fd
    ld [$1259], sp
    db $10
    ld e, d
    nop
    sbc a
    sbc a
    ld e, a
    ld e, a
    ld l, a
    ld l, a
    inc b
    dec b
    sub h
    sub h
    ld b, b
    ld b, b
    and b
    ldh [$81], a
    add c
    rst $38
    ld c, l
    rst $38
    ld a, [$fffb]
    jr nz, @+$01

    ld a, b
    rst $38
    jr @+$01

    inc e
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rlca
    rst $38
    ret nz

    ccf
    pop hl
    ld e, [hl]
    ei
    dec b
    rst $38
    ld [$1bfc], sp
    rst $38
    ld sp, $03fe
    or $0f
    ld hl, sp+$0f
    jp hl


    ld e, $d1
    ld a, $d1
    cp [hl]
    ret nz

    cp a
    inc l
    rst $38
    ld [c], a
    rst $38
    ld [bc], a
    rst $38
    ld [c], a
    rra
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    db $e4
    rra
    add h
    rst $38
    ld a, b
    rst $38
    add hl, de
    cp $11
    cp $23
    db $fc
    adc a
    ldh a, [$9f]
    ldh [$3c], a
    jp $c739


    ld a, e
    add a
    ld a, b
    add a
    ld e, $e1
    add b
    rst $38
    ld b, b
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc hl
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
    rst $38
    nop
    ldh [rSC], a
    ret nz

    stop
    ld [bc], a
    nop
    add [hl]
    nop
    add $00
    xor h
    nop
    push af
    nop
    rst $38
    add [hl]
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ccf
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
    rst $28
    ldh [$cf], a
    cp b
    rst $18
    cp h
    rst $08
    xor h
    db $db
    or [hl]
    rst $38
    or [hl]
    xor a
    and e
    xor a
    xor a
    xor a
    xor e
    ld bc, $01ff
    rst $38
    rst $38
    push af
    cp a
    xor l
    cp a
    xor e
    cp a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    and a
    xor l
    xor l
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    xor d
    cp $a2
    or $ff
    rst $38
    inc hl
    ld [hl], l
    rst $10
    ld d, b
    rst $38
    nop
    db $fd
    db $fd
    cp l
    cp l
    jp nc, $dbda

    db $db
    ld [$ed08], sp
    db $ed
    dec b
    dec b
    ld hl, $ff25
    dec l
    rst $38
    xor d
    or a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    di
    db $fc
    inc sp
    call z, $0bf4
    cpl
    call nc, $74ef
    add a
    ld hl, sp+$1f
    ldh [$7e], a
    add c
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    pop af
    rrca
    cp $01
    rst $38
    nop
    cp $01
    pop af
    rrca
    and $1f
    db $10
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [$cf]
    or b
    db $e3
    inc e
    jp hl


    ld e, $cf
    add hl, sp
    rst $08
    add hl, sp
    adc a
    ld a, b
    sub a
    ld a, b
    cpl
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$1a
    ld a, c
    ldh [$7f], a
    sbc b
    rst $38
    ld [$46ff], sp
    rst $38
    inc a
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
    rst $38
    rra
    rst $38
    rlca
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

Jump_054_68ff:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ld b, b
    rra
    nop
    inc bc
    adc b
    ld bc, $0126
    ld l, [hl]
    ld bc, $fefe
    db $fd
    cp $3f
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    ld d, a
    adc h
    sub a
    adc h
    ld b, a
    sbc h
    ld bc, $17fe
    nop
    dec c
    ld [bc], a
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    cpl
    nop
    ld a, l
    ld b, $ff
    inc b
    cp $05
    db $fd
    ld b, $fd
    ld b, $ff
    inc b
    or [hl]
    ld c, l
    add h
    ld a, a
    dec b
    cp $04
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rrca
    inc bc
    ld c, a
    inc bc
    inc bc
    ld bc, $ffff
    rst $10
    rst $30
    jp nc, $abd3

    db $eb
    adc h
    adc h
    dec c
    dec c
    nop
    nop
    ld b, b
    ret nz

    rst $38
    cp e
    rst $38
    adc c
    rst $38
    rst $38
    pop bc
    rst $38
    dec c
    rst $38
    ld a, [hl+]
    rst $38
    inc b
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    cp $7b
    db $fc
    jp $f1fd


    ld c, $fc
    inc bc
    ld hl, sp+$07
    pop af
    rrca
    dec bc
    rst $30
    ld [bc], a
    rst $38
    add hl, hl
    or $20
    rst $38
    jp z, $02f7

    rst $38
    ret


    ld a, $c5
    ccf
    db $e3
    rst $38
    nop
    rst $38
    db $e4
    dec de
    ld a, [$fe05]
    ld bc, $03fe
    db $fc
    inc bc
    ld hl, sp+$07
    ld b, b
    cp a
    dec l
    db $d3
    add sp, $17
    ld hl, sp+$2f
    ldh [$1f], a
    call z, $dcb3
    inc hl
    ld e, $e1
    ld a, [hl]
    add c
    ld a, a
    add b
    rst $38
    nop
    ld hl, sp+$47
    di
    dec e
    ld l, a
    sub e
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
    cp $fe
    cp $fc
    db $fc
    db $fc
    db $fc
    ld a, [$f7f8]
    ldh a, [$f6]
    ldh a, [$f8]
    ld hl, sp-$19
    ldh [$cf], a
    ret nz

    db $e3
    daa
    call $d10d
    ld e, a
    push af
    ld a, a
    pop bc
    ld e, a
    xor e
    xor a
    ld e, $3e
    ld e, [hl]
    ld e, [hl]
    inc b
    inc a
    xor d
    cp d
    sbc e
    cp c
    ld [hl], $74
    jp $ffc0


    nop
    ld [bc], a
    nop
    ld a, a
    nop
    cp $fd
    ld [bc], a

jr_054_6a13:
    db $fd
    cp a
    nop
    sbc a
    nop
    rla
    nop
    ld a, a
    nop
    cp a
    nop
    rra
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
    rst $30
    ld [$00ff], sp
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $30
    ld [$08f7], sp
    ld l, a
    sub b
    rst $08
    jr nc, jr_054_6a13

    dec hl
    db $fd
    ld [bc], a
    ldh [$1f], a
    pop hl
    ld e, $61
    sbc [hl]
    pop bc
    ld a, $00
    rst $38
    sub c
    ld l, [hl]
    inc b
    ei
    dec sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    pop af

jr_054_6a5d:
    rrca
    adc c
    ld a, a
    xor $ee
    xor a
    xor a
    or d
    cp a
    ld h, b
    ld a, e
    sub b
    db $d3
    adc d
    adc e
    ld [$2c08], sp
    inc l
    rst $38
    add e
    rst $38
    ld l, [hl]
    rst $38
    ld c, c
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr @+$01

    rst $38
    rst $38
    adc a
    rst $38
    jp $813f


    ld a, a
    ld e, b
    and a
    nop
    rst $38
    jr nc, jr_054_6a5d

    ld a, $c1
    ld a, a
    add c
    ccf
    jp Jump_000_00ff


    cp $01
    db $fd
    inc bc
    pop af
    rrca
    or $0f
    xor $1f
    ld e, $ff
    cp $ff
    inc b
    rst $38
    ld h, d
    sbc a
    ld a, b
    add a
    ccf
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    adc e
    rst $38
    pop bc
    rst $38
    ld h, b
    rst $38
    rst $20
    rst $38
    add b
    ld a, a
    ld b, c
    cp [hl]
    pop bc
    ld a, $e0
    rst $18
    rst $20
    reti


    rst $30
    jr jr_054_6af0

    call c, $ff03
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$24e1], sp
    ld bc, $0077
    add b
    xor h
    ld c, $ee
    ld e, d
    ld a, [$6d65]
    ld c, a
    rst $08
    dec bc
    rrca
    ld a, [hl-]
    dec sp
    rla
    rla

jr_054_6af0:
    add h
    rst $00
    and c
    rst $28
    ld [hl], b
    ld a, [hl]
    add [hl]
    cp [hl]
    add h
    cp h
    ld [$0e5b], sp
    adc a
    jr z, jr_054_6b3f

    and c
    rst $38
    ld c, a
    db $fd
    sbc a
    db $fd
    scf
    db $fd
    db $dd
    ld sp, hl
    rst $38
    ld bc, $f9ff
    rst $38
    jr nz, jr_054_6b6e

jr_054_6b11:
    ld sp, hl
    rst $38
    ld bc, $0006
    ld b, $00
    ld b, $00
    rlca
    nop
    inc hl
    nop
    inc bc
    nop
    call nc, $fe2b
    ld bc, $41be
    db $fc
    inc bc
    ldh a, [rIF]
    ld sp, hl
    ld b, $e0
    rra
    pop af
    ld c, $f0
    rrca
    pop af
    ld c, $d0
    cpl
    add sp, $17
    ret z

    scf
    ld e, h
    and e
    inc [hl]
    res 5, b

jr_054_6b3f:
    ld d, a
    jr nc, jr_054_6b11

    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
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
    or $e3
    sbc $de
    or b
    or a
    ld a, c
    ld a, a
    rlca
    rra
    dec hl
    dec sp
    ld b, c
    pop bc
    add [hl]
    add [hl]
    or h
    or h

jr_054_6b6e:
    db $f4
    db $f4
    rst $38
    cp d
    rst $38
    xor e
    rst $38
    ldh a, [$7f]
    rst $38
    ld c, $ff
    ccf
    rst $38
    rla
    rst $38
    dec hl
    rst $38
    rst $38
    rst $38

jr_054_6b82:
    rst $38
    rst $38
    rst $20

jr_054_6b85:
    ld hl, sp-$09
    ld hl, sp-$11
    ld [hl], b
    ld l, a
    ldh a, [$ce]
    ld [hl], c
    add a
    ld a, b

jr_054_6b90:
    rra
    ldh [$9f], a
    ld h, b

jr_054_6b94:
    cp a
    ld b, b
    ccf
    ret z

    ccf
    ret z

    ld a, h
    add e
    inc d
    db $eb
    ld b, b
    rst $38
    rrca
    ei
    adc a
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    add c
    pop hl
    ld e, $f3
    inc c
    rst $08
    jr nc, jr_054_6b82

    jr nc, jr_054_6b94

    ld hl, $e01f
    rrca
    ldh a, [rNR41]
    rst $18
    jr c, jr_054_6b85

    cp a
    ret nz

    ccf
    ret nz

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
    pop bc
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ldh a, [rP1]
    ldh [rP1], a
    add b
    ld [bc], a
    add b
    rlc b
    ld c, $0f
    ld sp, $f47f
    db $fc
    ld e, b
    ld a, [$7878]
    jr nc, @+$7a

    ldh [$e0], a
    jr nz, jr_054_6b90

    ld h, c
    ld [hl], e
    ld d, b
    ld d, a
    ld d, e
    ld e, a
    ld [hl], a
    ld a, a
    sbc a
    rst $18
    ld a, $7e
    cp $fe
    inc e
    inc e
    jp $92ff


    rst $38
    adc d
    ei
    adc d
    ei
    ld l, d
    ei
    rst $38
    ld b, e
    db $d3
    ei
    ld a, [$ff8b]
    ei
    sbc a
    ei
    add b
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $30
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
    cp $ff
    rst $30

jr_054_6c5a:
    rst $38
    rst $38
    rra
    inc bc
    dec e
    nop
    xor h
    cp h
    ret c

    ld hl, sp-$50
    cp [hl]
    ld a, [hl+]
    xor [hl]
    adc b
    adc d
    ld b, $06
    ld b, d
    ld h, [hl]
    jr nz, jr_054_6c94

    rst $38
    ld a, a
    rst $38
    dec e
    rst $38
    nop
    xor a
    rst $38
    nop
    rst $38
    add b
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    add a
    ld a, a
    ld h, b
    sbc a
    dec bc
    db $f4
    sbc a
    ld [hl], b
    ld [hl], c
    rst $38
    ld a, a

jr_054_6c8d:
    rst $38
    ld sp, hl
    ld a, $bd
    ld a, [hl]
    adc $3f

jr_054_6c94:
    xor $13
    rst $38
    dec b
    db $f4
    dec bc
    nop
    rst $38
    ld b, h
    cp e
    ld a, l
    add d
    ccf
    ret nz

    ccf
    ret nz

    jr jr_054_6c8d

    nop
    rst $38
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fd
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    nop
    rst $38
    cpl
    ret nc

    di
    inc c
    ld hl, sp+$07
    pop af
    ld c, $f3
    inc c
    rst $00
    jr c, @-$37

    jr c, jr_054_6c5a

    ld [hl], b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld bc, $43ff
    ccf
    ld b, e
    rra
    xor a
    rra
    ld c, $00
    daa
    nop
    sub c
    nop
    ld a, c
    nop
    ld a, $3e
    ld a, a
    ld a, a
    ld [hl], e
    ld [hl], e
    db $fc
    rst $38
    ld [hl], l
    ld a, a
    ld l, l
    db $fd
    sub h
    rst $38
    inc [hl]
    ld a, h
    ld [hl-], a
    ld [hl], $5c
    ld e, h
    ld l, b
    ld l, c
    jp c, $d0ff

    rst $30
    db $ec
    db $ec
    jr c, jr_054_6d36

    db $10
    db $10
    adc a
    nop
    rrca
    inc b
    dec c
    inc b
    ld a, $06
    cp $0c
    sbc h
    inc c
    call c, $df0c
    inc c
    rst $38
    inc c
    rst $38
    cp $ff
    ei
    rst $38
    ei
    rst $38
    ei
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
    cp $ff
    rst $30
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    or $ff
    ei
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38

jr_054_6d36:
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    rst $30
    rst $38
    jp hl


    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    xor $ff
    add $ff
    rst $38
    rst $38
    ld c, [hl]
    rst $38
    db $fd
    rst $38
    ld h, h
    rst $38
    ld [hl], d
    rst $38
    ldh a, [rIE]
    rst $28
    rst $38
    and c
    rst $38
    xor [hl]
    ld a, a
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
    nop
    rst $38
    inc b
    rst $38
    nop
    nop

jr_054_6d71:
    nop
    rlca
    nop
    inc bc
    nop
    and c
    and b
    ldh a, [$f0]
    jr z, jr_054_6da4

    ld h, b
    ld h, b
    ld hl, sp-$08
    rst $38
    db $fd
    db $eb
    db $fc
    nop
    rst $38
    xor c
    ld d, [hl]
    rst $38
    nop
    add e
    db $fd
    ccf
    ret nz

    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    push bc
    add c
    rst $28
    ld [bc], a
    add b
    nop
    ld b, b
    ld b, e
    ld bc, $3503
    inc bc

jr_054_6da4:
    ld a, h
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    ld a, $01
    ccf
    jr nz, jr_054_6d71

    ccf
    ret nz

    ccf
    adc b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    or l
    ld e, a
    add h
    ld a, e
    ldh [$1f], a
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
    ld [$eb0b], a
    rrca
    pop hl
    daa
    sbc e
    dec de
    rst $08
    rst $18
    xor b
    cp h
    inc e
    ld a, h
    ld [bc], a
    jp nz, Jump_000_0b03

    db $e4
    rst $28
    adc c
    rst $38
    add hl, bc
    ld a, l
    inc de
    ld [hl], e
    ld d, $56
    xor h
    db $ec
    ld c, h
    ld c, h
    dec b
    rlca
    ld de, $eb19
    db $eb
    ld c, l
    rst $18
    db $ed
    rst $38
    cp [hl]
    cp $32
    ld [hl-], a
    ld l, b
    ld l, b
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    db $e3
    rst $38
    di
    xor a
    rst $30
    rst $38
    rst $30
    rst $30
    rst $30
    rst $38
    rst $30
    rst $30
    rst $30
    or $f3
    rst $38
    dec c
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec l
    rst $38
    adc e
    rst $38
    add hl, bc
    rst $38
    ld d, b
    rst $38
    ld a, d
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    and $ff
    add b
    rst $38
    ld h, [hl]
    rst $38
    ld b, h
    rst $38
    add $ff
    jp nz, Jump_054_68ff

    rst $38
    db $f4
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    adc h
    rst $38
    nop
    rst $38
    add h
    rst $38
    nop
    rst $38
    ld l, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
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
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    nop
    push af
    ld a, a
    rst $38
    ld c, a
    ccf
    rst $18
    ld a, a
    add b
    rst $20
    ld e, b
    db $e3
    call c, $27f8
    db $fc
    inc bc
    cpl
    ld h, $0b
    ld [$383f], sp
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld b, b
    nop
    nop
    rst $38
    jr nz, jr_054_6e92

jr_054_6e92:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    add b
    cp $80
    sub $c0

jr_054_6ea0:
    db $f4
    ldh [rIE], a
    ldh [$e0], a
    ld h, b
    db $fd
    ld h, b
    ldh a, [rSVBK]
    jr nc, jr_054_6edc

    ld [hl], b
    jr nc, @-$0e

    jr nc, jr_054_6ea0

    ccf
    rst $20
    sbc a
    rst $20
    rra
    rst $20
    rra
    di
    rrca
    inc sp
    rrca
    ld de, $010f
    rrca
    rst $28
    rst $28
    jp hl


    db $eb
    sbc b
    sbc h
    push de
    db $dd
    ld c, c
    ld e, l
    add l
    or l
    nop
    jr nc, jr_054_6ecf

jr_054_6ecf:
    nop
    inc bc
    inc bc
    ld b, [hl]
    ld b, [hl]
    inc b
    rlca
    ld h, h
    ld [hl], l
    jr jr_054_6f18

    inc de
    ccf

jr_054_6edc:
    jp $f8ff


    rst $38
    ld [de], a
    ld [de], a
    ld [hl-], a
    inc sp
    ld h, l
    ld [hl], a
    dec b
    rla
    ret


    rst $28
    ld d, [hl]
    ld a, [hl]
    db $dd
    db $fd
    ld a, [hl+]
    jr c, @+$01

    ld bc, $08bf
    rst $38
    ld b, $ef
    ld [bc], a
    rst $38
    ld [bc], a
    rst $28
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $28
    ld [bc], a
    rst $28
    inc b
    rst $38
    inc c
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ld bc, $00ff

jr_054_6f18:
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $20ff
    rst $38
    ld hl, $a0ff
    rst $38
    ld bc, $20ff
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
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $fdff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld h, l
    ccf
    ccf
    sbc a
    sbc a
    jp $0d7f


    rst $38
    db $e3
    db $e3
    ldh a, [$79]
    ld hl, sp+$38
    ld [c], a
    ld [hl], d
    ldh [rNR41], a
    jp nz, $c7c7

    rst $20
    sbc a
    sbc a
    call c, $86dd
    add [hl]
    inc b
    ld b, $2d
    cpl
    ld l, c
    ld a, l
    ld c, h
    ld c, h
    or a
    rst $30
    rst $20
    rst $20
    sbc c
    sbc c
    ld d, [hl]
    rst $10
    ld h, h
    ld h, a
    ld [hl], h
    db $76
    ld a, [hl]
    ld a, [hl]
    inc d
    inc e
    inc c
    inc e
    rla
    rla
    ld a, [c]
    nop
    push af
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld a, [$fc00]
    nop
    db $fd
    nop
    rst $38
    nop
    rst $20
    rst $38
    push de
    rst $38
    sub c
    or e
    adc e
    xor e
    nop
    add b
    ld bc, $0311
    rla
    dec c
    rrca
    ld a, [bc]
    ld a, [de]
    db $d3
    rst $18
    ld h, e
    ld a, a
    ld d, d
    ld a, [hl]
    ld c, b
    ret c

    ret nc

    ret c

    add b
    jp hl


    ld d, c
    ld e, a
    rrca
    nop
    rlca
    nop
    daa
    nop
    dec a
    nop
    cp a
    inc b
    ld l, a
    ld b, $ff
    ld b, d
    ld a, a
    ld h, d
    rst $18
    ld d, c
    rst $38
    jr @+$01

    ld c, b
    rst $38
    ld b, b
    rst $38
    ld [$48ff], sp
    rst $38
    nop
    rst $38
    adc b
    rst $38
    adc c
    rst $38
    adc e
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rla
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    db $ed
    rst $38
    cp $ff
    ld e, a
    rst $38
    push af
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    rrca
    rst $38
    ld [hl], e
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    ld [hl+], a
    rst $38
    dec e
    rst $38
    ld d, a
    rst $38
    ld a, e
    rst $38
    ld a, [hl]
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    ld [hl], e
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, b
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    scf
    rst $38
    scf
    rst $38
    rrca
    rst $38
    ld l, e
    rst $38
    cp e
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld e, e
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    xor $ff
    pop af
    rst $38
    pop de
    rst $38
    ld [hl], b
    rst $38
    add hl, sp
    rst $38
    reti


    rst $38
    db $dd
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    ld bc, $8080
    push de
    push de
    jr c, jr_054_70c3

    add hl, hl
    add hl, sp
    jr nc, jr_054_70ba

    or b
    ldh a, [rSVBK]
    ldh a, [$50]
    ld d, b
    ldh [$e0], a
    ret nz

    jp nz, $ea2a

    ld c, l
    db $dd
    ld [hl], b
    db $76
    db $eb
    ei
    ld c, [hl]
    ld l, [hl]
    db $f4
    db $f4
    add sp, -$08
    ldh a, [$f8]
    ld a, c
    ld a, c
    ld h, c
    ld h, c
    nop
    nop
    ld b, $06
    nop
    nop
    jr nc, @+$32

    jr nz, jr_054_70d2

    nop
    nop
    dec bc
    dec bc
    ld c, $0f
    ld a, [bc]
    dec bc

jr_054_70ba:
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    sbc [hl]
    cp $a4

jr_054_70c3:
    db $fc
    ld c, h
    db $fc
    rra
    cp a
    cp d
    cp d
    ld a, d
    ld a, d
    ld d, h
    ld a, h
    ld l, b
    ld hl, sp-$0f
    pop af

jr_054_70d2:
    ret nz

    ldh a, [rNR10]
    ld [hl], b
    sbc e
    ei
    rra
    rst $18
    add h
    add $ce
    adc $1b
    ld e, $4b
    nop
    ld b, a
    ld bc, $81e3
    di
    ld b, b
    db $fd
    jr nz, @+$01

    db $10
    rst $38
    add hl, de
    cp $0c
    di
    ei
    db $fd
    ld [hl], a
    rst $18
    ld a, e
    rst $38
    ld a, e
    rst $30
    ld a, e
    xor $fb
    db $f4
    ld a, e

Call_054_70fe:
    or $7b
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
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
    cp a
    rst $38
    sbc a
    rst $38
    di
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
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld a, e
    rst $38
    db $fd
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
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld a, l
    rst $38
    or a
    rst $38
    rst $18
    rst $38
    set 7, a
    ld a, e
    rst $38
    dec sp
    rst $38
    ld e, a
    ccf
    dec e
    ccf
    dec a
    rst $18
    ld e, $30
    nop
    add l
    cp l
    db $db
    ei
    ld [hl-], a
    or a
    ldh a, [$f0]
    add b
    add b
    inc b
    inc b
    ld [hl-], a
    ld [hl-], a
    nop
    nop
    rst $38
    nop
    rst $28
    nop
    pop de
    nop
    or h
    nop
    ld sp, hl
    nop
    rst $08
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
    ldh [$08], a
    ld hl, sp+$45
    db $fd
    ld h, [hl]
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    call z, $12dc
    ld [de], a
    xor h
    cp [hl]
    ld a, b
    ld a, [$ece4]
    inc h
    ld l, h
    inc a
    inc a
    ld l, b
    ld a, b
    nop
    nop
    cp b
    cp b
    ldh [$e8], a
    add b
    add b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    nop
    ld d, b

jr_054_71e1:
    ld d, b
    ld hl, $8c30
    inc c
    call z, Call_054_660c
    rlca
    ld h, $06
    or d
    add d
    or h
    add h
    rst $30
    rst $28
    rst $18
    rst $28
    rst $28
    rst $28
    cp [hl]
    rst $28
    ld [hl], b
    rst $28
    sbc e
    rst $28
    ccf
    rst $28
    rra
    rst $38
    jr nz, jr_054_71e1

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
    ld b, b
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    cp a
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    reti


    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld b, d
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc hl
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    rst $28
    rra
    rlca
    rra
    rlca
    ccf
    rrca
    inc hl
    inc bc
    inc hl
    inc bc
    and e
    ld bc, $00b7
    add hl, bc
    ld [$0200], sp
    ld b, b
    ld b, d
    add b
    add b
    nop
    nop
    inc b
    inc b
    ld bc, $0401
    inc b
    ld d, h
    ld d, h
    inc c
    inc c
    ld [$680c], sp
    ld l, b
    ld b, c
    ld sp, hl
    call Call_054_64fd
    db $ec
    ld d, h
    call c, Call_054_4644
    or $fe
    adc [hl]
    xor $cb
    bit 7, d
    ld a, e
    add hl, hl
    ld a, a
    ld a, [c]
    cp $06
    ld a, [hl]
    ld b, d
    ld d, d
    cp b
    ld a, [$3b3b]
    ld b, c
    ld e, l
    ld b, c
    ld a, c
    set 3, e
    ld b, $7e
    ld [$dd48], sp
    nop
    push af
    add b
    ld a, [c]
    ld b, b
    ld a, [$fc60]

jr_054_72e9:
    jr nc, @+$01

    jr nc, jr_054_72e9

    db $10
    cp e
    db $10
    rst $38
    rst $28
    rst $38
    rst $08
    ld a, h
    rst $08
    di
    rst $18
    rst $18
    rst $18
    sbc $df
    sub a
    rst $18
    rst $18
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
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
    rst $38
    scf
    ret z

    ld a, a
    add b
    rrca
    ldh a, [rSCY]
    db $fd
    nop
    rst $38
    inc b

jr_054_7329:
    ei
    rlca
    ld hl, sp+$07
    ld hl, sp+$01
    cp $ff
    ld a, a
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
    rst $30
    jr jr_054_7329

    inc e
    db $e3
    rra
    ldh [$1f], a
    ldh [rTAC], a

jr_054_7349:
    ld hl, sp+$61
    sbc [hl]
    ld [hl], h
    adc e
    inc d

jr_054_734f:
    db $eb
    nop
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    add b
    rst $38
    add e
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    db $76
    rst $38
    db $fd
    rst $38
    ld e, a
    rst $38
    rst $18
    nop
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    jr nc, jr_054_734f

    jr c, jr_054_7349

    dec e
    db $e3
    ld c, $f1
    rlca
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    jr nz, @+$01

    ld bc, $ffff
    nop
    rst $18
    nop
    rra
    jr nz, jr_054_73b6

    nop
    ld c, $00
    rrca
    nop
    rrca
    nop
    rra
    nop
    add hl, bc
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
    ld [bc], a
    ld b, l
    ld b, d
    nop
    ld bc, $0302
    inc b
    dec b

jr_054_73b6:
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
    jr jr_054_73e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_054_73f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_054_7403

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_054_7413

    ld [hl-], a

jr_054_73e3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_054_7423

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_054_73f3:
    ld b, e
    ld b, h
    ld b, l
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

jr_054_7403:
    ld d, d
    ld d, e
    ld b, l
    ld b, l
    ld b, l
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

jr_054_7413:
    ld e, a
    ld h, b
    ld h, c
    ld b, l
    ld b, l
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

jr_054_7423:
    ld l, l
    ld b, l
    ld b, l
    ld b, l
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
    ld b, l
    ld b, l
    ld b, l
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
    sbc h
    sbc h
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    sbc h
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
    jr jr_054_74f2

    ld a, [de]
    dec de
    inc e
    sbc h
    dec e
    ld e, $1f
    jr nz, jr_054_7503

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_054_7513

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld [bc], a
    ld [bc], a

jr_054_74f2:
    inc b
    ld bc, $0101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0001
    ld bc, $0202
    inc b

jr_054_7503:
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0202
    inc b

jr_054_7513:
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
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
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
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
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    inc b
    inc b
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
    ld bc, $0401
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
    ld bc, $0101
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0204
    ld [bc], a
    inc b
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0801
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0e
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc

Call_054_7616:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0008], sp
    ld [$0808], sp
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
    ld [$0808], sp
    ld [$2c2c], sp
    or a
    or a
    jp c, $f1fb

    rst $30
    ld [hl], b
    pop af
    sbc [hl]
    rst $38
    dec d
    ccf
    inc bc
    inc bc
    sub d
    sub d
    inc a
    ccf
    db $fd
    rst $38
    cp a
    cp a
    and c
    db $ed
    rst $00
    rst $00
    ld a, a
    ld a, a
    ld [hl], h
    db $76
    ld [hl-], a
    rst $38
    nop
    rst $38
    add h
    rst $38
    add d
    rst $38
    jr nz, @+$01

    add c
    rst $38
    ldh [rP1], a
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
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $db
    inc h
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    db $10
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, h
    xor e
    rst $38
    nop
    rst $38
    nop
    ld l, e
    sub h
    dec b
    ld a, [$b946]
    and e
    ld e, h
    nop
    rst $38
    and e
    ld e, h
    push af
    ld a, [bc]
    ld hl, $10de
    rst $28
    di
    inc c
    pop af
    ld c, $f0
    rrca
    rrca
    ldh a, [$de]
    ld hl, $25da
    nop
    rst $38
    ld a, h
    add e
    ld a, h
    add e
    ld b, b
    cp a
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
    cp a
    nop
    xor a
    db $10
    rst $38
    ld a, h
    rst $00
    rst $20
    pop de
    di
    ld a, [c]
    ld a, [$a5a1]
    ld de, $4c11
    ld c, h
    ld [hl], b
    ld a, a
    ld a, $3f
    ld c, e
    ld e, a
    db $10
    rla
    ld [$cf0b], sp
    rst $08
    ld a, a
    ld a, a
    ld d, b
    ld a, h
    inc a
    inc a
    rst $38
    nop
    db $fd
    nop
    sbc c
    nop
    sbc a
    dec b
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
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
    ldh [rIE], a
    ld h, a
    ld hl, sp-$0d
    db $fc
    ldh [rIE], a
    ld h, b
    rst $38
    inc d
    rst $38
    nop
    rst $38
    ld bc, $31fe
    cp $48
    rst $38
    add b
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
    daa
    rst $38
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $c738


    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    ld a, a
    add b
    ld a, a
    add b
    cp $fe
    ld b, e
    rst $00
    cp $fe
    jp c, $dbfa

    db $db
    cp $ff
    jr nc, @+$01

    inc b
    ld a, [hl]
    ld a, [hl+]
    ld a, [hl+]
    ld h, $26
    ld [hl], a
    ld [hl], a
    ld [$f6eb], a
    rst $30
    cp [hl]
    rst $38
    call z, Call_054_70fe
    ld a, d
    ld [c], a
    rst $38
    adc b
    rst $38
    nop
    rst $38
    ld c, c
    rst $38
    ld sp, hl
    rst $38
    add hl, sp
    rst $38
    ld a, [hl+]
    nop
    nop
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
    sbc e
    ld h, h
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    dec a
    jp nz, Jump_000_00ff

    rst $38
    nop
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld [$7ff7], sp
    add b
    rst $38
    nop
    ld c, c
    or [hl]
    ld h, l
    sbc d
    db $fc
    inc bc
    cp h
    ld b, e
    nop
    rst $38
    inc b
    ei
    sub h
    ld l, e
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    db $f4
    dec e
    ld [c], a
    nop
    rst $38
    inc b
    ei
    inc c

jr_054_77b7:
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $18
    ld a, [hl-]
    pop af
    db $fd
    nop
    add b
    ld [de], a
    ld d, d
    inc e
    db $fc
    add hl, bc
    dec c
    ld [de], a
    ld [hl-], a
    add h
    add a
    inc hl
    and a
    ld d, $d7
    inc [hl]
    rst $30
    jr jr_054_77b7

    add h
    sbc [hl]
    and b
    xor h
    ld h, e
    ld h, e
    ld bc, $d501
    nop
    ld a, l
    ld bc, $0079
    rst $38
    call z, $ffff
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add c
    cp $1f
    ldh [$f3], a
    inc c
    ld a, [hl]
    add c
    ldh a, [rIF]
    ld b, l
    rst $38
    xor $ff
    nop
    rst $38
    add b
    ld a, a
    pop af
    ld c, $e3
    inc e
    ld a, a
    add b
    add hl, sp
    rst $00
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld e, $ff
    ld [hl], $ff
    ld [c], a
    rst $38
    pop hl
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    pop af
    rst $38
    inc b
    ei
    dec b
    ld a, [$dd22]
    ld e, $e1
    ld c, h
    ld c, h
    ld b, b
    ld b, b
    push af
    push af
    db $ed
    db $ed
    db $f4
    db $fc
    ld a, d
    ld a, a
    inc a
    ccf
    jr c, jr_054_7878

    ld [hl+], a
    ld [hl-], a
    or $f6
    xor b
    xor [hl]
    inc a
    cp [hl]
    jr nc, jr_054_78c0

    ld b, c
    ld a, c
    ld [hl], c
    ld [hl], c
    rlca
    rlca
    ld b, c
    rst $38
    ld b, c
    rst $38
    and c
    rst $38
    jp z, $a4ff

    rst $38

jr_054_785a:
    rst $28
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf

jr_054_7878:
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $28
    rra
    ld l, a
    sbc a
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $18
    cpl
    scf
    rst $08
    rst $30
    rrca
    rst $30
    rrca
    ld b, a
    cp a
    rra
    rst $20
    rst $18
    daa
    dec de
    rst $20
    inc bc
    rst $38
    dec sp
    rst $00
    dec de
    rst $20
    inc bc
    rst $38
    ld l, a
    sub e
    rst $28
    inc de
    db $e3
    rra
    inc bc
    rst $38
    add c
    ld a, a
    ld bc, $11ff
    rst $28
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    ld a, a
    ld [$00f7], sp
    rst $38

jr_054_78c0:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    ld a, a
    ldh [$2f], a
    jr nz, jr_054_785a

    add b
    rra
    ld d, b
    cp a
    ldh a, [$c0]
    ldh [$e0], a
    ldh [rP1], a
    nop
    ld [bc], a
    nop
    ld b, b
    ld b, b
    add b
    add b
    or b
    add b
    nop
    nop
    ld l, a
    rst $38
    ld c, $ff
    ld a, [hl]
    rst $38
    db $dd
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    ld sp, hl
    cp $f0
    rst $38
    ld a, [$efff]
    cp $e4
    rst $38
    ld [hl], $cf
    rst $10
    cpl
    ld h, [hl]
    sbc a
    adc h
    ld a, a
    jr @+$01

    ld a, b
    rst $38
    ldh a, [rIE]
    jr nz, @+$01

    ld h, d
    db $fd
    ld b, l
    ld a, [$708f]
    adc a
    ld [hl], b
    dec bc
    db $f4
    dec e
    ld [c], a
    rra
    ldh [$1f], a
    ldh [$0d], a
    ld a, [c]
    ld b, $f9
    add b
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    add hl, bc
    rst $38
    inc hl
    db $fc
    ld b, a
    ld hl, sp+$1e
    pop hl
    ccf
    ret nz

    ld a, e
    add h
    ld e, b
    ld e, b
    pop hl
    jp hl


    pop hl
    jp hl


    ld hl, $8139
    pop af
    db $10
    ret nc

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$bf18], sp
    cp a
    and a
    cp a
    and $ee
    cp d
    cp [hl]
    add sp, -$11
    and $e6
    ld h, h
    ld a, h
    db $fd
    nop
    ld h, c
    nop
    dec bc
    nop
    add e
    nop
    rlca
    nop
    ld e, a
    nop
    rst $38
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
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
    add b
    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    rlca
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $20
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    inc b
    rst $38
    ld b, d
    rst $38
    ldh [rIE], a
    xor d
    rst $38
    ld h, d
    ld [hl+], a
    rst $38
    nop
    rst $38
    inc de
    rst $28
    ld b, [hl]
    cp a
    rlca
    rst $38
    rst $00
    rst $38
    ld b, $ff
    rlca
    rst $38
    daa
    rst $18
    rst $20
    rra
    rst $20
    rra
    pop hl
    rra
    ldh a, [rIF]
    db $fc
    inc bc
    db $f4
    dec bc
    sbc d
    ld h, l
    cp $01
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$20
    rst $38
    ei
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    ld [c], a
    rra
    ld [hl], b
    adc a
    sbc $21
    rst $38
    nop
    ld a, h
    ld a, h
    xor b
    xor [hl]
    db $e4
    rst $38
    push bc
    rst $38
    ld [bc], a
    cp $4a
    ld a, [hl]
    ld e, d
    ld e, d
    ld b, d
    ld c, d
    inc sp
    ccf
    ld h, d
    ld h, [hl]
    ld c, e
    ld a, a
    inc sp
    rst $30
    ld [bc], a
    ld a, [$febe]
    add hl, de
    add hl, de
    ld b, $06
    nop
    daa
    pop bc
    ld sp, hl
    ei
    ei
    ld a, a
    ld a, a
    ld a, $3e
    nop
    nop
    nop
    nop
    rst $38
    nop
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
    ld [bc], a
    db $fd
    dec b
    ld a, [$ff00]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38

jr_054_7a9d:
    db $fd
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    jp Jump_054_7fff


    rst $38
    sbc a
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld c, $ff
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
    ld l, h
    rst $38
    or h
    rst $38
    ld [$01ff], sp
    rst $38
    nop
    rst $38
    ld e, $ff
    ld l, $ff
    ld b, $ff
    ld b, $ff
    adc h
    ld [hl+], a
    db $fd
    adc l
    ld a, [c]
    jr c, jr_054_7a9d

    ld h, a
    sbc a
    rla
    rst $38
    sub c
    rst $38
    cp $ff
    ld hl, sp-$01
    nop
    rst $38
    inc c
    di
    ccf
    ret nz

    dec a
    jp nz, $c03f

    rrca
    ldh a, [rNR41]
    rst $38
    jr nz, @+$01

    cp d
    rst $38
    ei
    rst $38
    ld a, $ff
    nop
    rst $38
    ld de, $7fee
    add b
    ld a, a
    add b
    ld a, h
    add e
    rrca
    ldh a, [rNR41]
    rst $38
    dec l
    rst $38
    inc a
    rst $38
    inc bc
    db $fc
    add h
    ei
    sub l
    db $eb
    ldh a, [rIE]
    jp nz, $ccff

    di
    pop bc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld l, a
    ldh a, [rNR41]
    rst $38
    jr z, @+$01

    sbc $fe
    sbc e
    ei
    inc de
    db $d3
    or a
    cp a
    sub c
    sub l
    jr jr_054_7b47

    ld b, a
    ld b, a
    ld h, b
    ld h, b
    jp hl


    ld sp, hl
    jr nc, jr_054_7b73

    cp $fe
    rst $28
    rst $38
    ret z

    bit 7, a
    ld a, a
    ccf
    ccf
    ld b, $16
    ld a, [de]
    ld e, $1c
    inc e
    ld a, [hl]
    ld a, [hl]
    db $fc

jr_054_7b47:
    db $fc
    db $fc
    db $fc
    jr nc, jr_054_7b7c

    nop
    nop
    di
    nop
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add hl, bc
    or $00
    rst $38
    inc b
    ei
    inc b
    ei
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
    rst $38
    rst $38
    rst $38

jr_054_7b73:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38

jr_054_7b7b:
    ld [bc], a

jr_054_7b7c:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld h, h
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ld a, [hl+]
    db $fd
    add a
    rst $38
    ld h, a
    rst $38
    rst $38

jr_054_7ba7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    ld bc, $10ff
    rst $28
    jr c, jr_054_7b7b

    db $fc
    inc bc
    ld a, [hl]
    add c
    cp $01
    ld a, [$7c05]
    add e
    jr jr_054_7ba7

    ld d, $ff
    rst $38
    rst $38
    nop
    rst $38
    ld e, $e1
    cp $01
    sbc $21
    db $fc
    inc bc
    ld e, h
    and e
    ld a, [$0e07]
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    cp d
    ld b, a
    cp b
    ld b, a
    rrca
    ldh a, [$9f]
    ldh [rBCPS], a

jr_054_7be1:
    sub a
    cp a
    ld b, b
    ccf
    ret nz

    inc a
    jp $06fd


    ld bc, $36fe
    ld sp, hl
    ld [hl], c
    cp $13
    inc de
    db $fc
    db $fc
    jr z, jr_054_7be1

    adc [hl]
    cp $53
    db $d3
    jr nz, @-$41

    and $e7
    ret nz

    jp $ff03


    db $76
    or $df
    rst $38
    ld [hl], $fe
    cp l
    rst $38
    or $f6
    ld b, [hl]
    ld b, [hl]
    ld c, h
    ld a, h
    ld a, $3e
    ld c, b
    ld e, b
    ldh a, [$f0]
    and c
    and c
    rst $10
    rst $10
    rrca
    rrca
    dec b
    nop
    rst $38
    nop
    ld e, h
    and e
    nop
    rst $38
    jr nc, @-$2f

    jr nz, @-$1f

    nop
    rst $38
    inc c
    di
    inc c
    di
    nop
    rst $38
    dec bc
    db $f4
    nop
    rst $38
    ld b, b
    cp a
    ld b, d

Call_054_7c37:
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
    db $fd
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    db $e3
    ld l, b
    sbc a
    rst $18
    ccf
    rst $38
    rst $38
    rst $10
    rst $38
    jp nz, $8dff

    di
    sub l
    db $eb
    sbc c
    rst $20
    adc c
    rst $30
    call $0df3
    di
    push hl
    ei
    jr nz, @+$01

    sub b
    rst $38
    sbc d
    db $fd
    ld [c], a
    db $fd
    rrca
    ldh a, [rNR33]
    ld [c], a
    ld a, $c1
    nop
    rst $38
    add c
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fd
    cp $7c
    rst $38
    add hl, sp
    cp $7c
    rst $38
    dec e
    rst $38
    ld c, $ff
    ld [hl], $ff
    rlca
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    ld de, $80ff
    ld a, a
    add h
    ld a, a
    add d
    ld a, a
    db $eb
    rra
    dec c
    rst $38
    pop bc
    ccf
    ld a, e
    ld a, e
    dec bc
    sra h
    db $fc
    xor h
    cp [hl]
    and [hl]
    cp a
    jp nc, $fcde

    cp $6a
    ld a, d
    sub b
    sub c
    ld e, a
    ld e, a
    ld b, a
    ld b, a
    ld [hl], h
    ld [hl], a
    ld l, a
    ld l, a
    ld a, b
    ld a, a
    rst $10
    rst $10
    inc b
    inc h
    call nz, $8e00
    nop
    inc de
    nop
    rst $08
    nop
    ld [bc], a
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    rst $38

Call_054_7d00:
    db $ec
    inc de
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_054_7d2d:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $00ff
    rst $38
    ld b, b
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
    ret nz

    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld b, d
    rst $38
    ret nz

    rst $38
    ld bc, $19ff
    rst $38
    dec bc
    rst $38
    ld bc, $0fff
    rst $38
    inc a
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld l, $ff
    ld a, $ff
    sbc a
    rst $38
    db $dd
    rst $38
    rst $28
    rst $38
    rst $28
    cp b
    ld a, a
    or a
    ld a, a
    rra
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    ld l, a
    sbc a
    ld hl, $69df
    sub a
    inc b
    rst $38
    inc c
    rst $38
    inc h
    rst $38
    ld b, $ff
    dec h
    rst $18
    db $10
    rst $28
    nop
    rst $38
    inc h
    ei
    dec bc
    db $fc
    and b
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $93ff


    sub e
    rrca
    rrca
    dec d
    rla
    ld de, $8113
    sbc l
    ld a, [bc]
    cp $1f
    rra
    jr nc, jr_054_7de1

    add sp, -$18
    ld c, e
    ld c, a
    ld e, d
    ld a, [hl]
    or d
    cp [hl]
    ld c, $fe
    rra
    ccf
    ld e, $1e
    ld h, d
    ld a, [hl]
    ld h, b
    ld h, e
    ld l, h
    ld l, h
    jp c, $fdda

    db $fd
    and a
    and a
    ld bc, $0101
    ld bc, $006e
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_054_7de1:
    ld [$feff], a
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ld sp, hl
    db $fc
    nop
    ldh [rP1], a
    db $f4
    nop
    ret nc

    nop
    nop
    nop
    add hl, bc
    add hl, bc
    ld bc, $0a01
    dec bc
    ld [$1c08], sp
    dec e
    inc bc
    rlca
    ld c, $0e
    inc c
    ld c, $0e
    ld c, $1c
    inc e
    nop
    ld bc, $3333
    ld hl, $2523
    daa
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    ld [hl+], a
    ld [bc], a
    ld [$0c0a], sp
    ld c, $fc
    inc c
    db $fc
    inc c
    add sp, $08
    xor b
    nop
    xor d
    ld [bc], a
    and [hl]
    ld [bc], a
    cp $00
    cp $04
    cp $00
    db $fd
    nop
    rst $38
    ld bc, $1dff
    rst $38
    db $d3
    rst $38
    cp $bf
    rst $38
    add a
    ld hl, sp+$71
    adc a
    db $fc
    inc bc
    ret nz

    cp a
    or b
    rst $08
    ret nz

    cp a
    ld hl, sp-$79
    ldh a, [$cf]
    db $fc
    jp $ffff


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
    daa
    rst $38
    daa
    rst $38
    cp [hl]
    rst $38
    or [hl]
    jp hl


    xor a
    rst $30
    push af
    ld a, [$f0ff]
    ld hl, sp-$09
    nop
    ld bc, $2d2d
    ld [hl], a
    rst $30
    ld [hl], h
    ld a, h
    ld a, h
    ld a, h
    ld hl, sp-$04

jr_054_7e7c:
    jr nz, jr_054_7ebb

    nop
    ldh a, [$30]
    jr nc, jr_054_7e7c

    ld sp, hl
    rra
    rra
    ld a, h
    ld a, h
    sub d
    or d
    inc d
    inc [hl]
    ld d, h
    ld [hl], h
    inc a
    db $fc
    rrca
    adc a
    ld a, a
    ld a, a
    rst $18
    rst $18
    or $f6
    xor a
    xor a
    ld hl, sp-$08
    ret nz

    ret nz

    rst $18
    nop
    rst $38
    cp $ff
    or e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    rst $38
    ei
    rst $38
    push de
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38

jr_054_7ebb:
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    push hl
    rst $38
    di
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    add $ff
    rst $28
    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    db $fd
    rst $38
    ld a, [$faff]
    rst $38
    ld a, b
    rst $38
    ld [hl], a
    rst $38
    cp $ff
    ld [hl], h
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    ld [hl], d
    rst $38
    or b
    rst $38
    ld l, [hl]
    rst $38
    xor [hl]
    rst $38
    adc c
    rst $38
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    jr nz, jr_054_7f22

    add [hl]
    add [hl]
    ld [de], a
    ld [de], a
    ld [hl], e
    ld [hl], e
    add hl, sp
    dec a
    db $ec
    db $fc
    sbc c
    reti


    and l
    and l
    db $10
    db $10
    ld [$f808], sp
    ld hl, sp-$33
    call $d3d2
    ld de, $0b91
    dec bc
    ld e, $1f
    add hl, sp
    add hl, sp

jr_054_7f22:
    ld a, [de]
    ld e, $1e
    ld e, $27
    cpl
    add hl, de
    dec de
    ld hl, sp-$06
    db $fc
    rst $38
    cp d
    cp a
    or [hl]
    or [hl]
    ld a, b
    ld a, h
    ld a, [hl-]
    ld a, $26
    ccf
    xor l
    cp l
    dec a
    dec a
    ld d, d
    ld d, d
    jr nz, jr_054_7f60

    ld h, c
    ld h, c
    ld h, b
    ld h, e
    ld [c], a
    db $e3
    ld h, d
    ld h, e
    ld [c], a
    rst $20
    rst $00
    ld b, a
    dec c
    dec c
    dec c
    rrca
    add h
    rlca
    adc a
    rrca
    ld l, a
    rrca
    ld c, l
    rrca
    dec a
    rra
    ld b, $06
    inc c
    inc c
    inc l
    inc c

jr_054_7f60:
    add sp, -$01
    ld [$d4df], a
    rra
    add a
    adc a
    sub a
    adc a
    rst $38
    rst $08
    dec h
    ccf
    ld hl, sp+$5f
    add b
    add b
    or $f6
    and $ee
    and b
    and b
    and h
    and h
    xor $fe
    ret z

    call c, Call_000_0c0c
    jr jr_054_7fda

    adc b
    adc b
    adc a
    adc a
    cp d
    cp [hl]
    rrca
    cpl
    dec c
    dec c
    dec sp
    dec sp
    xor $ee
    push hl
    nop
    sbc l
    nop
    rst $28
    nop
    jp c, $fd00

    nop
    ld e, a
    nop
    rst $30
    ld b, b
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    nop
    rst $38
    ld bc, $82ff
    rst $38
    ret nz

    rst $38
    jp nz, $e0ff

    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    jp nz, $c0ff

    rst $38
    ret nz

    rst $38
    ld b, d
    rst $38
    db $10
    rst $38
    add e
    rst $38
    nop
    rst $38
    add e
    rst $38
    add h
    rst $38
    nop
    rst $38
    jp $c0ff


    rst $38
    and b
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    ret nz

    rst $38
    and b
    rst $38
    nop
    rst $38
    nop

jr_054_7fda:
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    add c
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
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

Jump_054_7fff:
    nop
