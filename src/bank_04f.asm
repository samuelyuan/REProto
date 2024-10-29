SECTION "ROM Bank $04f", ROMX[$4000], BANK[$4f]

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
    ccf
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a

Call_04f_4023:
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    ldh a, [$f0]
    ldh a, [$f0]
    jr c, @-$06

    ld [hl], $f6
    ld de, $11f1

jr_04f_4045:
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR11]
    ldh a, [rNR11]
    ldh a, [rNR11]
    ldh a, [rNR11]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [$08]
    ldh a, [$80]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$40
    ld hl, sp+$24
    ld hl, sp+$27
    ld hl, sp+$4f
    ld hl, sp+$0e
    ld hl, sp-$72
    ld hl, sp+$0e
    ld hl, sp-$72
    ld hl, sp+$0c
    ld a, [$fd0b]
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    add hl, bc
    cp $0e
    db $fc
    inc c
    cp $0c
    cp $0d
    cp $4d
    rst $38

jr_04f_4084:
    dec c
    cp $0d
    cp $05
    cp $04
    rst $38
    inc c
    rst $38
    add hl, bc
    cp $04
    rst $38
    nop
    rst $38
    dec b
    ld a, [$ff20]
    nop
    rst $38
    nop
    rst $38
    ld de, $21fe
    sbc $73
    adc h
    ccf
    ret nz

    rra
    ldh [$15], a
    ld [$e817], a
    rlca
    ld hl, sp+$05
    ld a, [$f807]
    rlca
    ld hl, sp-$31
    jr nc, jr_04f_4084

    jr nc, jr_04f_4045

    ld [hl], c
    add a
    ld a, b
    dec b
    ld a, [$fe01]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add c
    cp $c0
    add b
    add b
    ret nz

    rst $38
    ret nz

    add c
    ret nz

    rst $10
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    ldh a, [$6d]
    ldh [$3f], a
    ret nz

    add b
    add b
    add b
    add b
    nop
    add b
    nop
    add b
    stop
    nop
    nop
    nop

Jump_04f_40ff:
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], a
    ld a, a
    scf
    ld a, a
    ccf
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
    ld a, a
    rst $38
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    adc a
    rrca
    rst $08
    db $db
    rst $18
    ei
    db $fd
    ld a, e
    add hl, sp
    rra
    rra
    rrca
    rrca
    rrca
    rlca
    inc bc
    add e
    ld b, e
    ld b, e
    and a
    ld h, a
    rst $38
    rst $18
    ccf
    ld c, a
    cp a
    cp a
    rst $08
    rst $38
    rst $28
    ld h, a
    rst $38
    ld e, [hl]
    rst $38
    ld a, $df
    ld a, [hl]
    sbc $3e
    sbc $fe
    ld e, $fe
    ld e, $ed
    dec e
    db $ed
    dec e
    db $fd
    dec e
    db $ec
    dec e
    db $ec
    dec e
    ld l, h
    sbc [hl]
    ld l, c
    sbc e
    ld l, e
    sbc a
    ld l, d
    sbc [hl]
    ld a, [bc]
    cp a
    ld c, $9f
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    call nz, Call_000_043f
    rst $38
    ld h, h
    sbc a
    ld h, h
    sbc a
    ld h, h
    sbc a
    ld [hl], h
    adc a
    ld h, h
    sbc a
    ld h, h
    sbc a
    scf
    call z, Call_000_0cf7
    ld d, l
    xor [hl]
    ld d, a
    xor h
    ld d, a
    xor h
    inc c
    rst $30
    inc c
    rst $30
    ld l, $d5
    dec h
    call c, $dc21
    inc h
    reti


    nop
    ld sp, hl
    jr nc, @-$35

    ld de, $03e9
    ld sp, hl
    ld b, e
    or c
    ld b, e
    or c
    ld bc, $05f3
    di
    rlca
    ld [c], a
    jp Jump_000_0306


    ld b, $0b
    ld b, $fb
    ld b, $7b
    add [hl]
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    ei
    db $fc

jr_04f_41ea:
    db $db
    db $e4
    ei
    inc b
    add b
    ld a, a
    ld [hl], a
    adc b
    rst $30
    ld [$08f7], sp
    rst $20
    jr @-$17

    jr jr_04f_41ea

    db $10
    rst $28
    db $10

jr_04f_41fe:
    rst $28
    stop
    rst $38
    nop
    rst $38

jr_04f_4204:
    nop
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
    ld b, $ff
    ld b, $ff
    rrca

jr_04f_4216:
    rst $38
    rrca
    rst $38
    rrca
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fd
    db $fd
    inc b
    ei
    inc b
    ei
    ld bc, $01fc
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    jr jr_04f_4216

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_04f_41fe

    nop
    rst $18
    nop
    rst $18
    jr c, jr_04f_4204

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    inc e
    ldh [rNR41], a
    rst $08
    ld b, b
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    inc a
    ld b, b
    ld b, b
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
    ld a, b
    add b
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
    inc a
    ret nz

    nop
    add b
    ccf
    add b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop

jr_04f_4280:
    add b

jr_04f_4281:
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
    nop
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
    or e
    ld c, h
    rst $18
    jr nz, jr_04f_4280

    jr nz, jr_04f_4281

    ld hl, $00ff
    ld a, l
    add d
    ld l, b
    sub a
    inc bc
    db $fc
    dec a
    jp nz, $c03f

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call c, Call_000_0323
    db $fc
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
    ld a, a
    nop
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
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
    sub b
    rrca
    ld [$00f7], sp
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, $01
    ld [bc], a
    db $fd
    dec hl
    call nc, $d52a
    ld a, [hl+]
    push de
    ld a, [hl+]
    push de
    ld a, [hl+]
    push de
    ld bc, $2a3e
    push de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
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
    ld bc, $7f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    ld a, [$fa05]
    nop
    rst $38
    ld a, c
    add [hl]
    jp hl


    ld d, $7d
    add d
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    nop
    rst $38
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
    cp $01
    cp $01
    cp $01
    cp $01
    ret nz

    ccf
    ld l, $d1
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
    cp $01
    cp $01
    nop
    rst $38
    cp $01
    ld e, e
    rst $38
    sbc b
    rst $38
    dec e
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld hl, sp-$02
    db $fc
    cp $fc
    cp $f8
    cp $fe
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
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    jp z, Jump_04f_4a00

    nop
    ld c, d
    nop
    ld c, d
    nop
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or d
    rst $38
    cp [hl]
    rst $38
    or d
    rst $38
    or d
    rst $38
    or d
    rst $38
    rst $38
    inc a
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ccf
    ccf
    rst $38
    jr nc, jr_04f_4438

    nop
    ld a, a
    nop
    ld a, a
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
    ld [$1df7], sp
    ld [c], a
    ld l, e
    sub h
    ldh [$1f], a
    rra
    ldh [rIE], a
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
    ldh [$1f], a
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

jr_04f_4438:
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
    ldh [$1f], a
    rra
    ldh [rIE], a
    nop
    ld bc, $03fe
    db $fd
    inc bc
    db $fd
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld bc, $07fe
    ld hl, sp+$0e
    ld hl, sp+$08
    rst $38
    ld a, [bc]
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    db $fd
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld c, b
    or a
    dec a
    jp nz, $bd42

    ld a, [hl+]
    push de
    nop
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    inc d
    rst $38
    ld de, $d1fb
    di
    add c
    di
    sub c
    di
    pop de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    xor d
    nop
    sub h
    nop
    jr nz, jr_04f_449b

jr_04f_449b:
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    db $f4
    rst $30
    inc b
    push af
    inc b
    rst $30
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    ld hl, sp-$01
    adc b
    rst $38
    rst $18
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
    db $10
    rst $38
    db $10
    rst $38
    rra
    rst $38
    rra
    rst $38
    ei
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04f_44dc:
    rst $38
    nop

jr_04f_44de:
    rst $38
    nop
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
    ld d, d
    xor l
    ld a, e
    add h
    sbc a
    ld h, b

jr_04f_44f0:
    ccf
    ret nz

    nop
    rst $38
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_04f_44dc

    jr nz, jr_04f_44de

Call_04f_44ff:
    jr nz, jr_04f_44f0

    db $10
    rst $28
    db $10
    rst $28
    stop
    rst $38
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ldh a, [rIF]
    dec c
    ld a, [c]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    cp $01
    ld bc, $fffe
    nop
    rst $38
    nop
    cp [hl]
    pop bc
    ld de, $40e0
    add b
    ld b, b
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    nop
    jp $ff00


    nop
    ld a, a
    add b
    ld e, $e1
    add hl, bc
    rst $38
    ld b, $ff
    inc c
    rst $38
    jr @+$01

    rst $30
    rst $38
    ldh a, [rIE]
    ld [c], a
    db $fd
    inc d
    db $eb
    db $10
    rst $28
    sub c
    ld l, [hl]
    nop
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    db $ed
    rst $38
    xor a
    rst $38
    xor c
    rst $38
    xor b
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ret nz

    ld a, [c]
    ld a, a
    rst $38
    ld a, a
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
    ld e, h
    rst $38
    ld d, b
    cp $50
    cp $d0
    cp $f8
    rst $38
    rst $38
    rst $38
    add b
    add a
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    scf
    rst $38
    ld [hl], e
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ret nc

    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    db $fd
    rst $38
    cp b
    rst $38

jr_04f_45c4:
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

jr_04f_45ce:
    rst $38
    nop
    nop
    rst $38
    ld [bc], a
    db $fd
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$d7], a
    jr z, jr_04f_45c4

    jr jr_04f_45ce

    db $10
    add b
    ld a, a
    ld [hl], a
    adc b
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    add b
    ld a, a
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

jr_04f_4614:
    rst $38
    nop

jr_04f_4616:
    rst $38
    nop

jr_04f_4618:
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
    ld a, a
    add b
    ld a, a
    add b
    nop
    rst $38

jr_04f_462a:
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_4614

    jr nz, jr_04f_4616

    jr nz, jr_04f_4618

    jr nz, jr_04f_462a

    db $10
    rst $28
    db $10
    rst $28
    db $10
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
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
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $4dfe
    or d
    rst $28
    db $10
    ld a, l
    add d
    ld l, [hl]
    sub c
    inc b
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
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
    rra
    rst $38
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    ld l, a
    rst $38
    rst $38
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
    ld hl, sp-$01
    and b
    rst $20
    sbc e
    sbc a
    add hl, de
    sbc a
    rra
    cp a
    ccf
    cp a
    jr z, @+$01

    jp $83c3


    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$ffff], sp
    rst $38
    rst $30
    db $fd
    rst $28
    db $fd
    ld l, a
    db $fd
    db $eb
    db $fd
    ld [bc], a
    rst $38
    ld sp, hl
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ret z

    nop
    ld l, [hl]
    sub c
    nop
    rst $38
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10

jr_04f_46dc:
    rst $38
    nop
    cp $01
    ld bc, $fffe
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

jr_04f_46ee:
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld bc, $bffe
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_46dc

    jr nz, jr_04f_46ee

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ld hl, sp+$07
    inc bc
    db $fc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld [hl], b
    nop
    cp a
    rra
    rra
    rra
    cp a
    rra
    ld e, a
    rra
    rst $38
    rra
    ld d, l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
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
    ld a, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$3f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $00
    nop
    add b
    nop
    add b
    ld a, a
    ld a, [hl]
    add c
    xor $11
    xor $11
    cp $01
    cp $01
    cp $01
    ld bc, $ffff
    ld bc, $01ff
    ld a, l
    add e
    ld a, a
    add c
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld bc, $fdff
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc

jr_04f_47d0:
    inc bc
    rlca
    ld [bc], a
    rlca
    nop
    inc bc
    ld bc, $ff01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_04f_47e2:
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_47d0

    jr nz, jr_04f_47e2

    db $10
    rst $28
    stop
    rst $38
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    rst $08
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
    ldh a, [rIE]
    cp h
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    pop bc
    ld a, a
    ldh [$7f], a
    ldh a, [$7f]
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
    and a
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $f4
    rst $38
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    ld b, e
    ld a, a
    ld hl, $003f
    ccf
    db $10
    rra
    nop
    rra
    ld [$040f], sp
    rlca
    nop
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    ld bc, $0000
    ld a, a
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
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    ld bc, $0fff
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
    ldh a, [$f8]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp $c1
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
    cp b
    rst $38
    ld bc, $c0ff
    rst $38
    cp $ff
    pop af
    rst $38
    ldh a, [$f0]
    db $fc
    cp $fe
    rst $38
    call $ceff
    rst $38
    jp z, $dcff

    rst $38
    call c, $f8ff
    rst $38
    ld hl, sp-$05
    inc e
    rst $38
    dec b
    rst $38
    pop bc
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
    rlca
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ldh a, [$3f]
    db $fc
    rra
    cp $17
    rst $38
    sbc e
    ld a, a
    add hl, bc
    ccf
    inc c
    rra
    add h
    rrca
    call nz, $e227
    inc de
    ld a, [c]
    nop
    ld hl, sp+$00
    db $fc
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    ld a, a
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
    inc bc
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, $ff
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld bc, $40ff
    ld a, a
    jr nz, jr_04f_49f9

    nop
    ccf
    db $10
    rra
    ld [$000f], sp
    rrca
    inc b
    rlca
    nop
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    ld bc, $0000
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
    ld bc, $0fff
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
    cp $ef
    ldh a, [$7f]
    add b
    rst $38
    nop
    cp $01
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_04f_49f9:
    rst $38
    rst $38
    rst $38
    ld b, $ff
    dec c
    rst $38

Jump_04f_4a00:
    inc c
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    rra
    rst $38
    inc b
    rst $38
    ld b, h
    rst $38
    call nz, $c4ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ccf
    ccf
    rra
    ccf
    cp $ff
    db $e4
    rst $38
    ld h, b
    rst $20
    and b
    db $e3
    ld [hl+], a
    pop hl
    ld [bc], a
    ldh [rSC], a
    ldh [$a0], a
    ldh [$a2], a
    ldh [$85], a
    ldh [$82], a
    ldh [rNR51], a
    ldh a, [rSB]
    ld hl, sp+$00
    cp $e0
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
    ccf
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $c0ff
    rst $38
    ldh [rIE], a
    ldh a, [$3f]
    call c, $fe5f
    ld c, a
    rst $38
    ld c, a
    rst $38
    rrca
    ld a, a
    cpl
    ccf
    cpl
    ccf
    adc a
    rla
    sbc a
    dec d
    rst $18
    add hl, de
    rst $38
    ld a, [bc]
    rst $38
    inc bc
    cp $00
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld d, b
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    dec sp
    rst $38
    ld a, [de]
    rst $38
    ld e, $ff
    inc c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ld b, c
    ld a, a

jr_04f_4ac0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld a, [$bafc]
    ld a, h
    cp b
    ld a, b

jr_04f_4adc:
    cp c
    ld a, b
    ld sp, hl
    ld a, b
    db $ed
    ld a, b
    db $ed
    ld a, b
    push bc
    ld a, b
    ld b, l
    ld a, b
    ld b, $70
    ld d, $f0
    ld e, [hl]
    ldh a, [$58]
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
    add d
    rst $38
    rst $38
    rst $38
    add l
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    xor d
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rlca
    ld a, a
    nop
    ldh [$0e], a
    rst $38
    inc c
    rst $38
    ld c, $7c
    adc [hl]
    inc e
    ld [hl+], a
    inc e
    rlca
    jr @+$11

    jr jr_04f_4adc

    jr jr_04f_4ac0

    jr jr_04f_4b80

    jr c, @+$09

    jr c, @+$51

    jr nc, jr_04f_4b48

    ldh a, [$1f]
    ldh a, [$0a]
    db $fc
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38

jr_04f_4b48:
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
    ei
    rst $38
    cp $ff
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
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld e, b
    rst $38
    ld d, [hl]
    rst $38
    rlca
    rst $38
    dec hl
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rst $18
    inc d
    rst $38

jr_04f_4b80:
    dec b
    rst $38
    dec b
    db $fd
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    rrca
    rst $38
    ld b, $ff
    ld [bc], a
    cp $00
    cp $00
    cp $80
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $38
    jr @+$01

    ld e, b
    rst $38
    call nc, $ffff
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    add hl, de
    rst $38
    sbc c
    ld a, e
    dec de
    ccf
    dec sp
    ld a, e
    cp e
    ccf
    inc sp
    ld a, e
    inc bc
    ccf
    ld [bc], a
    rst $30
    ld b, $77
    inc d
    ld [hl], a
    ld d, h
    ld [hl], a
    ld b, h
    ld [hl], a
    call nz, $056f
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
    db $fd
    rst $38
    xor c
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    rst $38
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
    add b
    rst $38
    and l
    rst $38
    ld bc, $00ff
    rst $38
    cp $ff
    ld a, a
    rst $38
    rrca
    rra
    ccf
    rst $38
    inc bc
    rst $38
    jr nz, jr_04f_4c37

    add h
    ld [bc], a
    ld b, b
    nop
    or l
    nop
    push af
    nop
    db $eb
    nop
    ld a, l
    nop
    ld e, a
    nop
    ld d, l

jr_04f_4c37:
    nop
    ld [$fa00], a
    nop
    rst $30
    nop
    cp a
    nop
    ld e, a
    ldh [rTIMA], a
    ld hl, sp+$04
    rst $38
    add c
    rst $38
    ldh [rIE], a
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
    cp a
    rst $38
    xor l
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7f
    cp $1f
    cp $0f
    db $fc
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    cp b
    rst $38
    xor [hl]
    rst $38
    xor a
    rst $38
    jp hl


    rst $38
    add hl, hl
    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    ld e, d
    ld a, a
    ld d, d
    rst $38
    ld d, $df
    ld d, $f7
    inc b
    rst $30
    inc b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    cp a
    jr jr_04f_4ce5

    inc c
    ld a, a
    ld b, $6f
    cpl
    ld l, a
    cpl
    ld l, a
    cpl
    rst $28
    rrca
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    rra
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
    rst $38
    rst $38
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
    cpl
    rst $38
    ld a, a
    rst $38
    ld l, a
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
    sbc a
    rst $38
    sbc a

jr_04f_4ce5:
    rst $38
    sbc a
    rst $38
    cp a
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
    ld l, e
    rst $38
    rst $28
    rst $38
    ld c, e
    rst $38
    rst $38
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
    inc d
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    ld hl, $69ff
    rst $38
    ld l, c
    rst $38
    dec bc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld bc, $00ff
    rra
    inc b
    ld [de], a
    nop
    nop
    or b
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    reti


    nop
    ld c, d
    nop
    ld c, l
    nop
    xor c
    nop
    call nz, $f200
    nop
    or [hl]
    nop
    cp $00
    ld l, $c0
    dec l
    ldh a, [$08]
    cp $07
    rst $38
    call nz, $f1ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ld a, c
    rst $38
    ld e, a
    rst $38
    ld e, e
    rst $38
    db $db
    rst $38
    db $d3
    cp $fb
    db $fc
    rst $30
    db $fc
    or a
    db $fd
    cp a
    db $fd
    and a
    ld sp, hl
    rst $20
    add hl, sp
    rst $38
    dec de
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    ld c, [hl]
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ld a, $bf
    ld a, $ff
    ld a, $fe
    inc a
    rst $38
    inc e
    rst $38
    dec c
    db $fd
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
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
    dec b
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec b
    dec b
    dec b
    dec c
    nop
    ld c, $0f
    db $10
    ld de, $1209
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_04f_4df7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04f_4e07

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04f_4e17

    ld a, [hl+]
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04f_4e28

jr_04f_4df7:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $09
    scf
    jr c, jr_04f_4e2a

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_04f_4e07:
    ld b, b
    ld b, c
    ld b, d
    inc h
    ld [de], a
    ld b, e
    inc [hl]
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_04f_4e17:
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
    ld a, [hl+]

jr_04f_4e28:
    ld e, l
    ld e, [hl]

jr_04f_4e2a:
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
    ld [hl], e
    ld a, [hl+]
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
    ld a, [hl+]
    ld a, [hl]
    ld a, [hl+]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    add hl, bc
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld a, [hl+]
    ld a, [hl+]
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
    ld a, [hl+]
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
    ld a, [hl+]
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
    ld a, [hl+]
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
    add hl, bc
    add hl, bc
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    add hl, bc
    add hl, bc
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
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
    ld bc, $0101
    ld bc, $0505
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0000
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $2101
    ld hl, $4101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0402
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0401
    ld bc, $0303
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $01
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
    ld bc, $0202
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
    ld bc, $0303
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
    ld b, $03
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    ld bc, $0206
    ld bc, $0102
    ld [bc], a
    ld bc, $0300
    inc bc
    ld bc, $0101
    nop
    ld bc, $0206

Call_04f_4fff:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld b, $01
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld a, [bc]
    ld c, $09
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld bc, $0101
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec c
    rst $38
    rst $30
    rlca
    db $e3
    inc bc
    jp $c303


    rlca
    add a
    rlca
    adc a
    rlca
    rrca
    rlca
    rrca
    rlca
    rra
    rrca
    ld e, $0f
    scf
    rrca
    ld a, $07
    ld a, [hl]
    rlca
    ld l, [hl]
    inc bc
    db $e4
    inc bc
    jp nz, $c001

    ld bc, $0081
    add d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    sbc $ff
    db $ec
    rst $38
    and h
    rst $38
    and h
    rst $38
    jp nz, Jump_04f_40ff

    rst $38
    ld h, c
    rst $38
    ldh [rIE], a
    or b
    rst $38
    jr @+$01

    ld [$0cff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    pop bc
    rst $38
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
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ld h, b
    rra
    ld [hl], b
    rrca
    jr z, @+$09

    ld [$0c07], sp
    inc bc
    inc c
    inc bc
    ld b, $01
    ld b, $01
    rlca
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
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
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
    cp $ff
    cp $ff
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
    ldh a, [rIE]
    di
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    reti


    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    and b
    rst $38
    and c
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
    ld b, b
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
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    dec b
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
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    jr c, @+$09

    dec de
    ld b, $0c
    nop
    inc c
    nop
    ld [$1000], sp
    nop
    stop
    stop
    stop
    ld de, $1100
    nop
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    ld b, c
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add a
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
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

Jump_04f_5200:
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld e, $ff
    ld a, h
    rst $38
    ld a, l
    rst $38
    xor l
    rst $38
    cp l
    rst $38
    db $db
    rst $38
    sbc e
    rst $38
    dec de
    rst $38
    ld d, a
    rst $38
    sbc b
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sub c
    rst $38
    or c
    rst $38
    and c
    rst $38
    add e
    rst $38
    rlca
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

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $02ff
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
    inc b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    nop
    ld a, a
    add b
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    ret z

    ccf
    ldh [$1f], a
    nop
    rrca
    nop
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    db $fd
    rst $38
    ld a, [$faff]
    rst $38
    db $eb
    rst $38
    db $e3
    rst $38
    rst $10
    cp $01
    cp $01
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
    ld [$00ff], sp
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
    nop
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
    jr nz, @+$01

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
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
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
    ld [bc], a
    rst $38
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
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    inc b
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
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca

jr_04f_53b4:
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
    rra
    rst $38
    adc a
    rst $38
    rst $28
    or $0f
    ldh a, [rIF]
    ldh a, [rIF]

jr_04f_53d5:
    ldh a, [$1f]

jr_04f_53d7:
    ldh [$1f], a

jr_04f_53d9:
    ldh [$1f], a

jr_04f_53db:
    ldh [$38], a
    ret nz

    ld b, b
    adc a
    ld b, b
    cp a
    ld b, b
    ccf
    nop
    ld a, a
    ld b, b
    ccf
    ret nz

    ccf
    add b
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_04f_53b4

    jr nz, jr_04f_53d5

    jr nz, jr_04f_53d7

    nop
    rst $18
    nop
    rst $18
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    inc e
    and b
    db $10
    and b
    db $10
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    jr nz, jr_04f_53d7

    jr nz, jr_04f_53d9

    jr nz, jr_04f_53db

    daa
    ret z

    inc b
    ret z

    inc b
    ret


    inc b
    ret


    inc b
    ret


    inc b
    ret


    inc b
    ret


    inc b
    ret


    inc b
    jp hl


    nop
    jp hl


    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    adc b
    ld sp, hl
    ld bc, $89f9
    ld sp, hl
    ld [$08fd], sp
    db $fd
    add hl, bc
    db $fd
    ld bc, $00ff
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
    nop
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

    jr nz, @+$01

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
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop

jr_04f_548f:
    nop
    rst $30
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    add hl, de
    rst $38
    ld a, e
    rst $38
    nop
    rst $38
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
    ld h, b
    rra
    jr nz, jr_04f_548f

    cp $ef
    rst $38
    rst $28
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
    ld sp, hl
    rst $38
    ld e, h
    add b
    nop
    ld a, a
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $00fe
    rst $38
    rlca
    nop
    nop
    nop
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
    inc e
    ldh [rP1], a
    nop
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
    inc bc
    db $fc
    ld [hl], b
    add b
    ld b, e
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    add b
    ccf
    add b

jr_04f_5502:
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

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

    ccf
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

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
    ret nz

    dec a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    jr c, jr_04f_5502

    inc [hl]
    ret nz

    ld h, b
    add b
    ld c, c
    add b
    ld c, c
    add b
    ld b, h
    add b
    ld b, h
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld l, a
    add b
    ld a, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld c, a
    add b
    ld [hl], b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    xor b
    rst $38
    dec hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl-], a
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
    call z, Call_000_00ff
    rst $38
    xor a
    rst $38
    db $ec
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $ffff
    rst $38
    push af
    rst $38
    and b
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld l, l
    sub d
    call $db32
    inc h
    db $db
    inc h
    cp a
    ld b, b
    nop
    rst $38
    jr nz, jr_04f_5611

    jr nz, @+$01

    dec b
    rst $38
    rst $18
    db $fd
    rst $18
    push af
    ld e, a
    push af
    rst $18
    push af
    rst $18
    rst $30
    ret nz

    nop
    nop
    ld bc, $7f00
    nop
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
    ldh [rP1], a
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
    nop
    nop
    ld bc, $1f00
    nop
    rst $38
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

jr_04f_5611:
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $07fe
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    ld b, $f9
    ld a, e
    add h
    ld d, e
    xor h
    dec de
    db $e4
    ld c, l
    or d
    ld c, l
    or d
    ld a, l
    add d
    ld e, a
    and b
    scf
    ret z

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
    ld a, $c1
    ld h, b
    sbc a
    rra
    ldh [$7f], a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b

jr_04f_564e:
    cp a
    ld b, b

jr_04f_5650:
    cp a
    ld b, b

jr_04f_5652:
    cp a
    ld b, b

jr_04f_5654:
    cp a
    ld b, b

jr_04f_5656:
    cp a
    ld b, b

jr_04f_5658:
    cp a
    ld b, b

jr_04f_565a:
    cp a
    ld b, b

jr_04f_565c:
    cp a
    ld b, b

jr_04f_565e:
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp b
    ld b, a
    rlca
    ld hl, sp-$41
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_564e

    jr nz, jr_04f_5650

    jr nz, jr_04f_5652

    jr nz, jr_04f_5654

    jr nz, jr_04f_5656

    jr nz, jr_04f_5658

    jr nz, jr_04f_565a

    jr nz, jr_04f_565c

    jr nz, jr_04f_565e

    jr nz, jr_04f_5689

    rst $38
    ret nz

    rst $08
    pop bc
    rst $18
    ld sp, hl
    rst $38
    ld sp, hl

jr_04f_5689:
    rst $38
    ld a, [hl]
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
    sbc $ff
    ret nz

    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    ld l, l
    rst $38
    nop
    rst $38
    ld e, [hl]
    rst $38
    ldh a, [rIE]
    ldh a, [$5f]
    ldh a, [$5f]
    ld hl, sp+$5f
    ld hl, sp-$21
    rst $38
    rst $38
    or l
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    cp a
    cp $bf
    ld l, d
    cp a
    ld l, d
    cp a
    ld l, d
    cp a
    ld l, e
    cp $ff
    nop
    ld a, a
    dec b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    db $db
    rst $38
    add b
    ld sp, hl
    ret nz

    ld bc, $0007
    rst $38
    nop
    rst $38
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
    ld bc, $0300
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
    inc b
    ei
    dec b
    ld a, [$7887]
    rst $00
    jr c, jr_04f_577f

    sbc c
    and a
    ld e, b
    ld l, a
    sub b
    jp nz, $a73d

    ld e, b
    rst $30
    ld [$08f7], sp
    di
    inc c
    rst $30
    ld [$4cb3], sp
    rst $30
    ld [$04fb], sp
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
    ld hl, sp+$07
    dec b
    ld a, [$02fd]
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
    db $fc
    inc bc
    jp Jump_000_3f3c


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
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    jp nc, $d200

    add b
    jp nc, Jump_04f_5200

    add b

jr_04f_577f:
    jp nc, $d280

    jp $fedf


    rst $38
    ldh [rIE], a
    nop
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
    db $10
    rst $38
    db $10
    rst $38
    or d
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [$00ff]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    db $fd
    rst $18
    or $ff
    jr nz, @+$01

    nop
    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    nop
    rst $38
    rla
    rst $38
    ld a, [c]
    rst $38
    sub b
    rst $38
    rla
    rst $38
    add a
    ld hl, sp-$01
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
    rst $38
    nop
    rst $38
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
    ld bc, $20fe
    rst $18
    nop
    rst $38
    pop bc
    ld a, $a2
    ld e, l
    ld h, d
    sbc l
    xor [hl]
    ld d, c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, a
    add b
    rst $38
    nop
    cp $01
    ld d, a
    xor b
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
    ldh [$1f], a
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

jr_04f_582a:
    ld a, a
    add b

jr_04f_582c:
    ld a, [hl]
    add c

jr_04f_582e:
    ld h, c
    sbc [hl]
    rra
    ldh [$7f], a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    rst $18
    jr nz, jr_04f_582a

    jr nz, jr_04f_582c

    jr nz, jr_04f_582e

    jr nz, @+$01

    rst $38
    ldh a, [rIE]
    nop
    sub h
    nop
    sub h
    nop
    sub h
    nop
    sub h
    nop
    sub h
    nop
    sub h
    ld l, e
    sub h
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    cpl
    rst $38
    xor $ef
    ld [$eaef], a
    rst $28
    ld a, [bc]
    rst $28
    ld a, [de]
    rst $28
    ld a, [bc]
    rst $28
    rrca
    rst $38
    sub b
    rst $38
    nop
    rst $38
    ld bc, $cfff
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
    ldh a, [rIE]
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    or b
    rst $38
    ret nz

    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_04f_58ac:
    inc de
    rst $38
    adc a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    dec d
    ld [$e01f], a
    cp e
    ld b, h
    rst $38
    nop

jr_04f_58c8:
    ld a, a
    add b

jr_04f_58ca:
    rst $18
    jr nz, jr_04f_58ac

    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add d
    ld a, a
    add b
    ld a, a
    add b

jr_04f_58de:
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_58c8

    jr nz, jr_04f_58ca

    jr nz, @-$1f

    jr nz, jr_04f_58de

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    db $ec
    inc de
    inc bc
    db $fc
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop
    add b
    add h
    ld c, a
    rst $38
    ld [hl], b
    rst $38
    ld b, e
    rst $38
    ld a, a
    rst $38
    ld b, e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [c], a
    rst $38
    nop
    rst $38
    rlca
    rst $38
    cp $ff
    ld l, b
    rst $38
    ld h, h
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld l, l
    rst $38
    ld l, a
    rst $38
    call nz, Call_000_00ff
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
    rst $38
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    or b
    rst $38
    nop
    rst $38
    ld bc, $faff
    rst $38
    ld [$3aff], sp
    rst $38
    cp $ff
    or b
    rst $38
    nop
    rst $38
    dec de
    rst $38
    rst $08
    ldh a, [rIE]
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_04f_5988:
    nop
    rst $38

jr_04f_598a:
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    or $0f
    ldh a, [rNR31]
    db $e4
    rra
    ldh [$b7], a
    ld c, b
    ld a, [hl]
    add c
    ld e, a
    and b

jr_04f_599c:
    ld a, a
    add b
    ld a, [hl+]
    push de
    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_5988

    jr nz, jr_04f_598a

    jr nz, jr_04f_599c

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ld a, [c]
    dec c
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    ldh [$1f], a
    rra
    ldh [rIE], a
    nop
    rst $38
    nop

jr_04f_59dc:
    rst $38
    nop

jr_04f_59de:
    rst $38
    nop

jr_04f_59e0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    rlca
    ld hl, sp+$7f
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a

jr_04f_59f1:
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_59dc

    jr nz, jr_04f_59de

    jr nz, jr_04f_59e0

    jr nz, jr_04f_59f1

    ld de, $10ef
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$8f07], sp
    rst $38
    rst $38
    ld b, $ff
    ld a, a
    rst $38
    cp $ff
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    add b
    ret


    nop
    ret


    nop
    ret


    nop
    ret


    nop
    ret


    nop
    ret


    call z, Call_000_00ff
    rst $38
    nop
    rst $38
    ld e, l
    rst $38
    or c
    rst $38
    inc de
    rst $38
    inc hl
    rst $38
    ld h, e
    rst $38
    daa
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    nop

jr_04f_5a59:
    rst $38
    ld bc, $3eff
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    cpl
    rst $38
    rst $18
    ldh [rIE], a
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
    dec b
    ld a, [$a25d]
    ld e, l
    and d
    ld l, a
    sub b
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_04f_5a59

    ld sp, $a25d
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    db $fc
    inc bc
    ld [hl+], a
    db $dd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04f_5aac:
    rst $38
    nop

jr_04f_5aae:
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_04f_5ac0:
    ld a, h
    add e
    inc bc
    db $fc
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_5aac

    jr nz, jr_04f_5aae

    jr nz, jr_04f_5ac0

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ld a, [$c105]
    ld a, $3d
    jp nz, Jump_000_02fd

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    rst $38
    add b
    rst $38
    rra
    rst $38
    db $fd
    rst $38
    dec e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    rst $38
    nop
    db $fd
    nop
    dec h
    nop
    dec h
    ld bc, $0125
    dec h
    ld bc, $3f25
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    adc $ff
    call z, $ccff
    rst $38
    ret c

    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, a
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
    ld bc, $00ff
    rst $38
    ld a, a
    rst $38
    or a
    rst $38
    or a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38

jr_04f_5b74:
    inc h
    db $db
    ld de, $2aee
    push de
    and b
    ld e, a
    or h
    ld c, e
    adc $31
    rst $08
    jr nc, @-$17

    jr jr_04f_5b74

    db $10
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fc
    inc bc

jr_04f_5b92:
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
    push af
    ld a, [bc]
    ld c, a
    or b

jr_04f_5ba4:
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_5b92

    jr nz, jr_04f_5ba4

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ldh [$1f], a
    dec de
    db $e4
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    rst $38
    nop

jr_04f_5bd0:
    ldh [$1f], a

jr_04f_5bd2:
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
    ld a, a
    add b
    ld a, a
    add b

jr_04f_5be6:
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_5bd0

    jr nz, jr_04f_5bd2

    jr nz, @-$1f

    jr nz, jr_04f_5be6

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    db $fd
    rst $38
    rlca
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
    ld e, a
    rst $38
    nop
    rst $38
    rra
    rst $38
    sbc [hl]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    rlca
    cp $ff
    cp $7f
    cp $ff
    cp $7f
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ccf
    db $fc
    rra
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $df
    rst $18
    rst $28
    rst $08
    rst $28
    jp $80f7


    di
    add b
    cp e
    nop
    cp l
    nop
    call c, $ce00
    nop
    rst $28
    nop
    rst $20
    nop
    rst $30
    nop
    ei
    nop
    ld sp, hl
    nop
    db $fd
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
    nop
    ret nz

    ccf
    ldh [$1f], a
    ld a, [$d405]
    dec hl
    db $76
    adc c
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
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    jp z, $9f35

    ld h, b
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    cp $01
    rst $38
    nop

jr_04f_5caa:
    db $fc
    inc bc
    add e

jr_04f_5cad:
    ld a, h
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
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_5caa

    jr nz, jr_04f_5cad

    rra
    rrca
    ldh a, [$f7]
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    ld b, $01
    inc b
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    rra
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$bf]
    ldh [$bf], a
    ldh [$bf], a
    ldh [$7f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
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
    add e
    rst $38
    inc bc
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
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
    ld a, a
    dec sp
    ccf
    rst $38
    ccf
    rst $38
    jr @+$01

    nop
    ld a, a
    nop
    ccf
    nop
    cp a
    nop
    rst $18
    nop
    rst $08
    nop
    rst $28
    nop
    rst $20
    nop
    di
    nop
    ld a, e
    nop
    add hl, sp
    nop
    cp h
    nop
    sbc h
    nop
    sbc $00
    rst $08
    nop
    rst $28
    nop
    rst $30
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop

jr_04f_5d82:
    ld a, $01
    rrca
    ld bc, $0304
    ld bc, $0007
    inc bc
    ld e, b
    ld bc, $0180
    rst $38
    nop
    rst $38
    nop

jr_04f_5d94:
    rst $38
    nop
    rst $38
    nop
    ld h, b
    sbc a
    rra
    ldh [$bf], a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_04f_5d82

    jr nz, jr_04f_5d94

    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ld a, [$f805]
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    add b
    ld a, a
    ld [hl], b
    adc a
    ldh a, [rIF]
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $037c
    ld a, b
    rlca
    ld hl, sp+$07
    nop
    rrca
    ld bc, $011e
    ld a, $00
    ld a, a
    ld [bc], a
    db $fd
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rNR10], a
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    inc b
    add h
    ld [bc], a
    add d
    ld [bc], a
    add d
    db $e4
    rra
    call nz, $c43f
    ccf
    and $3f
    adc b
    ld a, a
    call $f57f
    ld a, a
    ld sp, hl
    ld a, a
    ld a, [$fefe]
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld h, b
    ld a, a
    ret nz

    rst $38
    rst $18
    rst $38
    ei
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rra
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    and b
    rra
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
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    ld bc, $011f
    rrca
    inc bc
    rlca
    rlca
    rlca
    nop
    inc bc
    rlca
    nop
    ld a, a
    nop
    adc a
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
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
    ld hl, sp+$07
    ldh a, [rIF]
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    rlca
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    nop
    add h
    nop
    ld b, $00
    ld [bc], a
    ld bc, $0101
    ld bc, $8181
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_04f_5f04

    jr nz, jr_04f_5f06

    jr nz, jr_04f_5f08

    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$ff40], sp
    ret nz

    rst $38
    adc a
    rst $38
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rst $38
    rst $38

jr_04f_5f04:
    rst $38
    rst $38

jr_04f_5f06:
    db $f4
    rst $38

jr_04f_5f08:
    rst $18
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, l
    rst $38
    ld e, [hl]
    rst $38
    nop

jr_04f_5f1b:
    rst $30
    nop
    xor $02
    jp $ca48


    inc b
    db $fd
    pop bc
    rst $38
    call nc, $d4fc

jr_04f_5f29:
    db $fd
    ldh [$f9], a
    jr nz, jr_04f_5f29

    jr nz, jr_04f_5f1b

    xor b
    rst $38
    sbc h
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr @+$01

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
    add b
    ld a, a
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld b, $fe
    rrca
    rst $38
    rrca
    rst $38
    ld e, $fe
    inc a
    db $fc
    ld a, b
    ld hl, sp+$64
    db $e4
    ldh [$e0], a
    ret nz

    ret nz

    add e
    add e
    add b
    add c
    add b
    ld a, [hl]
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
    ldh a, [rIF]
    ldh [$1f], a
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    cp b
    nop
    inc e
    nop
    inc c
    nop
    ld c, $00
    ld b, $00
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_04f_5fe6

    jr nz, jr_04f_5fe8

    db $10
    db $10
    db $10
    db $10
    jr jr_04f_5fe6

    ld [$0008], sp
    rst $38
    ld [de], a
    rst $38
    or [hl]
    cp $00
    nop
    ccf
    ccf
    ld hl, sp-$08
    inc sp
    inc sp
    ld hl, sp-$08
    daa
    daa
    rst $38
    rst $38
    ld a, [c]
    rst $38

jr_04f_5fe6:
    sbc a
    rst $38

jr_04f_5fe8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld e, b
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ldh [rIE], a
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc e
    db $fc
    add hl, de
    ld sp, hl
    ld [hl], $f6
    ld [hl], b
    ldh a, [$ec]
    db $ec
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    rrca
    rrca
    ld a, [de]
    rra
    ld a, a
    ld a, a
    rst $08
    rst $08
    rst $38
    inc e
    rst $38
    ld bc, $28ff
    rst $30
    ld e, b
    rst $38
    nop
    ldh a, [$2f]
    ld hl, sp+$5f
    nop
    ld hl, sp-$01
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $01
    ccf
    ld bc, $031f
    rra
    rrca
    rrca
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
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
    ldh [rP1], a
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr c, jr_04f_60a3

jr_04f_60a3:
    jr c, jr_04f_60a5

jr_04f_60a5:
    inc e
    nop
    inc e
    nop
    ld c, $00
    rrca
    nop
    rlca
    nop
    rlca
    ld bc, $fdff
    rst $38
    nop
    nop
    ld [bc], a
    ld [bc], a
    db $fc
    rst $38
    inc b
    rlca
    ld hl, sp-$01
    jr z, @+$31

    ldh a, [rIE]
    ldh [rIE], a
    ld b, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $ff
    rra
    rst $38
    ccf
    rst $38
    ld a, d
    rst $38
    ld [hl], l
    rst $38
    ret nz

    db $fd
    rst $38
    rst $38
    set 7, a
    push af
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
    rrca
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
    jr nz, jr_04f_612b

    ldh [$e6], a
    pop hl
    db $ed
    db $e3
    ei
    add b
    cp a
    db $fc
    rra
    cp $81
    cp $01
    db $f4
    dec bc
    add b
    ld a, a
    jr nc, @+$01

    db $10
    rra
    ld [$003f], sp
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

jr_04f_612b:
    rst $38
    nop
    rst $38
    ld bc, $00fe
    cp $00
    ld a, [$f300]
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    ld bc, $0404
    ld bc, $0101
    ld bc, $0101
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
    ld b, b
    ret nz

    ret nz

    ret nz

    and b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$58]
    ld hl, sp-$60
    ldh [$c4], a
    call c, $8c8c
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    scf
    ccf
    rra
    rra
    rra
    rra
    inc c
    rrca
    inc b
    rlca
    ld b, $06
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
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
    jr jr_04f_61b3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04f_61c3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04f_61d3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04f_61e3

    ld [hl-], a

jr_04f_61b3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04f_61f3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_04f_61c3:
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

jr_04f_61d3:
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

jr_04f_61e3:
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

jr_04f_61f3:
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
    jr jr_04f_62b3

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
    jr z, jr_04f_62d3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04f_62e3

    ld [hl-], a

jr_04f_62b3:
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
    nop
    ld bc, $0101
    ld bc, $0100
    inc b
    inc bc
    inc b
    ld bc, $0304
    inc bc
    inc bc
    nop
    ld bc, $0000

jr_04f_62d3:
    nop
    ld bc, $0101
    inc b
    inc b
    ld bc, $0401
    inc bc
    inc bc
    inc b
    inc bc
    ld bc, $0001

jr_04f_62e3:
    ld bc, $0101
    ld bc, HeaderLogo
    nop
    nop
    inc b
    inc bc
    inc b
    inc b
    inc b
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc b
    ld bc, $0004
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc b
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0200
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0200
    nop
    ld bc, $0001
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
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
    ld [$0908], sp
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
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
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld [$0808], sp
    add hl, bc
    ldh a, [rIE]
    ret nc

    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld l, l
    rst $38
    ld [hl], h
    rst $38
    jr nc, @+$01

    inc a
    rst $38
    jp nz, $c33d

    inc a
    ld h, e
    inc e
    pop af
    ld c, $69
    ld d, $39
    ld b, $7c
    inc bc
    dec sp
    inc b
    cp c
    ld b, $97
    ld [$041b], sp
    sbc e
    inc b
    cp e
    inc b
    sbc a
    nop
    rst $08
    nop
    ld c, a
    add b
    rst $20
    nop
    rst $00
    nop
    push hl
    ld [bc], a
    rst $20
    nop
    di
    nop
    ld a, [c]
    ld bc, $21d2
    db $eb
    db $10
    ei
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    xor $10
    cp $00
    db $76
    adc b
    adc b
    rst $38
    ld hl, $61ff
    rst $38
    ld d, d
    rst $38
    ld l, b
    rst $38
    ld [hl-], a
    rst $38
    jr c, @+$01

    ld d, $ff
    db $e4
    dec de
    ld a, [c]
    dec c
    db $fd
    ld [bc], a
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    ld d, l
    xor d
    ld [bc], a
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a

jr_04f_647b:
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld b, [hl]
    ld sp, hl
    jr z, jr_04f_647b

    or $c9
    cp d
    push bc
    cp e
    ld b, l
    ei
    rlca
    push af
    rrca
    pop hl
    ld e, $ac
    db $10
    ld bc, $0ff9
    rst $30
    dec l
    rst $08
    rst $18
    rrca
    cp $3f
    db $f4
    ld a, a
    db $ec
    rst $38
    or a
    ei
    cp $bf
    or $ff
    ld l, [hl]
    rst $38
    rst $28
    rst $38
    xor l
    rst $38
    ld e, a
    xor e
    rst $28
    ld a, a
    adc [hl]
    rst $38
    sbc $ff
    rst $38
    db $fc
    ei
    db $fc
    ldh a, [rIE]
    rst $38
    ldh [$f5], a
    ld [$c4fb], a
    ld b, $f9
    add hl, bc
    or $00
    rst $38
    dec e
    db $e3
    ld b, a
    rst $38
    ld b, a
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    rlca
    rst $38
    add b
    rst $38
    pop af
    cp $fe
    rst $38
    rra
    rst $38
    ld b, a
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$40ff], sp
    cp a
    inc hl
    call c, $fe81
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
    sub [hl]
    ld l, c
    ld l, $51
    ld [$df15], a
    jr nz, @+$01

    nop
    rst $30
    ld [$09f6], sp
    ei
    inc b
    ret nz

    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    add d
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    dec e
    rst $38
    ld c, $ff
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    ld c, [hl]
    rst $38
    ld d, a
    rst $38
    ld b, a
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl+], a
    rst $38
    ld [c], a
    rst $38
    ld [hl], d
    rst $38
    ld d, d
    rst $38
    ld [de], a
    rst $38
    ld b, c
    rst $38
    cp [hl]
    ld b, c
    ld [hl], a
    adc b
    ld l, e
    sub h
    db $d3
    inc l
    and l
    ld e, d
    swap h
    ld h, c
    ld e, $61
    ld e, $29
    ld d, $90
    rrca
    or b
    rrca
    cp l
    ld [bc], a
    rst $38
    nop
    rst $18
    nop
    ld l, a
    add b
    rst $38
    nop
    rst $28
    nop
    ld [hl], a
    add b
    rst $30
    nop
    ei
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ccf
    ret nz

    inc bc
    db $fc
    ld [bc], a
    rst $38
    ld bc, $33fe
    call z, $bd42
    ld b, [hl]
    cp c
    ld [hl], e
    add b
    add d
    ld bc, $0384
    dec bc
    dec b
    sbc a
    inc bc
    sbc [hl]
    daa
    inc e
    rst $20
    ld c, l
    rst $28
    add hl, de
    rst $38
    cp e
    ccf
    ld [hl], d
    ld a, a
    push hl
    rst $38
    rst $30
    xor a
    xor [hl]
    cp a
    cpl
    ccf
    cpl
    ccf
    daa
    ccf
    daa
    cp l
    sub c
    ccf
    and b
    xor a
    ld [c], a
    xor a
    ld [$da87], a
    and a
    cp e
    rst $30
    cp a
    ei
    ei
    db $ed
    rst $38
    db $fd

jr_04f_65b0:
    call nc, $fdff
    rst $38
    cp a
    ld e, a
    ei
    dec b
    ld b, e
    cp h
    db $f4
    ld [$11ee], sp
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    adc d
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ld [$00ff], sp
    rst $38

jr_04f_65d0:
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    add c
    cp $d0
    rst $38
    ld a, b
    rst $38
    pop bc
    ld a, $fe
    ld bc, $018e
    inc b
    inc bc
    ld [$0b07], sp
    inc e
    ld [hl], $18

jr_04f_65ee:
    call $f030
    rst $38
    rst $38
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
    rst $18
    rst $38
    ld a, l
    add d
    db $fd
    ld [bc], a
    ld e, a
    add b

jr_04f_6606:
    ld a, a
    add b

jr_04f_6608:
    ld [hl], a
    add b
    ld e, a
    and b
    rst $18
    jr nz, jr_04f_6606

    nop
    rst $18
    jr nz, jr_04f_65b0

    ld h, b
    rst $18
    jr nz, jr_04f_65ee

    jr nz, jr_04f_6608

    db $10
    sub $28
    db $eb
    inc d
    ld l, l
    db $10
    inc d
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    ld [$84ff], sp
    rst $38
    add l
    rst $38
    or c

jr_04f_662d:
    rst $38
    add h
    rst $38
    ld l, a
    sub b
    ccf
    ret nz

    rra
    ldh [$bf], a
    ld b, b
    rla
    ldh [$cb], a
    jr nc, jr_04f_65d0

    ld h, b
    db $e3
    db $10
    ei
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
    rst $38
    nop
    rst $30
    ld [$00fe], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    ld [$00ff], sp
    sbc $01
    ld a, [$d501]
    ld a, [hl+]
    add l
    ld a, d
    jr c, jr_04f_662d

    ld c, [hl]
    or c
    ld b, d
    cp l
    call c, Call_04f_4023
    cp [hl]
    ld b, e
    cp h
    nop
    rst $38
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    jr nz, @+$01

    db $f4
    ccf
    pop af
    cp $f1
    cp $e0
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    call nz, $9afb
    push hl
    add b
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b

Call_04f_6699:
    rst $38
    or b
    rst $38
    and b
    rst $38
    or b
    rst $38
    pop de
    rst $38
    cp b
    rst $38
    ret nc

    rst $38
    ret c

    rst $38
    add sp, -$01
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ld sp, hl
    ld a, a
    rra
    cpl
    adc $00
    jp nc, $8f00

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
    ld hl, $0ede
    pop af
    add l
    ei
    push de
    ld a, [hl+]
    ei
    inc b
    ldh [$0c], a
    or $08
    rst $20
    jr @+$10

    ld sp, $23dc
    ld a, [hl-]
    ld b, e
    ld l, a
    sub a
    add [hl]
    rrca
    sbc [hl]
    rrca
    ld l, h
    sbc a
    sbc $3f
    ld a, [$b43f]
    ld a, a
    ld [hl], b
    rst $38
    jr nz, @+$01

    ldh a, [rIF]
    rlca
    ld hl, sp+$01
    cp $07
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $01ff
    rst $38
    add b
    rst $38
    rst $38
    nop
    ld e, a
    and b
    ld a, e
    add h
    cp l
    ld b, d
    db $fc
    ld [bc], a
    rst $38
    nop
    cp $00
    sbc a
    ld h, b
    or a
    ld [$00ff], sp
    ld a, a
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $28
    db $10
    rst $28
    db $10
    dec l
    sub b
    xor c
    db $10
    ld e, b
    add b
    sbc h
    nop
    sub h
    ld [$00c8], sp
    call z, $cc00
    nop
    adc $00
    rst $20
    nop
    add $20
    rst $20
    nop
    db $eb
    nop
    pop af
    ld [bc], a
    di
    nop
    push af
    nop
    db $fd
    nop
    ld sp, hl
    inc b
    db $fd
    nop
    cp $00
    ld a, [hl]
    nop
    rst $28
    db $10
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    ld [hl], b
    rst $38
    ld h, d
    rst $38
    call nc, $b0ff
    rst $38
    jr @+$01

    sub l
    rst $38
    xor l
    rst $38
    cp $ff
    ld a, [$beff]
    rst $38
    rst $18
    rst $38
    cp $ff
    ld l, a
    rst $38
    xor a
    rst $38
    sbc a
    rst $38
    xor e
    rst $38
    and a
    rst $38
    ld e, e
    rst $38
    add hl, hl
    rst $38
    or a
    rst $38
    cp a
    rst $38
    db $db
    rst $38
    ld a, h
    rst $38
    add hl, sp
    rst $38
    ld a, [$9cff]
    rst $38
    sbc e
    rst $38
    dec de
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld b, d
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc b
    rrca
    nop
    rlca
    ld sp, hl
    rlca
    ld a, a
    adc a
    rrca
    pop af
    rrca
    pop af
    dec bc
    rst $30
    bit 6, a
    rlca
    rst $38
    adc a
    rst $38
    rra
    rst $38
    ldh [$1f], a
    add b
    ccf
    nop
    ld a, a

jr_04f_67d6:
    add l
    ld a, a
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    daa
    rst $38
    ld sp, $18ff
    rst $38
    ld [$09ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld a, [de]
    rst $38
    ld b, $ff
    ld b, $ff
    ld c, $ff
    inc hl
    rst $38
    ld bc, $e1ff
    rra
    rst $38
    nop
    nop
    rst $38
    ld a, b
    rst $38
    ldh [rIE], a
    rlca
    ld hl, sp-$24
    rst $38
    ld l, h
    rst $38
    call nz, Call_04f_44ff
    rst $38
    ld b, h
    rst $38
    and d
    rst $38
    ld b, [hl]
    rst $38
    add d
    rst $38
    ccf
    ret nz

    sbc c
    ld h, [hl]
    db $dd
    ld [hl+], a
    db $ed
    ld [de], a
    adc h
    ld [hl], e
    sub [hl]
    ld l, c
    sbc l
    ld h, d
    ld d, $69
    add a
    ld a, b
    ld d, a
    jr z, jr_04f_687c

    jr z, jr_04f_67d6

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00df], sp
    rst $18
    nop
    rst $38
    nop
    rst $10
    ld [$0867], sp
    rst $28
    nop
    rst $30
    ld [$0c73], sp
    ld [hl], a
    nop
    ccf
    nop
    inc sp
    inc b
    dec sp
    inc b
    sbc a
    nop
    rst $38
    nop
    cp $01
    cp a
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    rst $30
    ld [$00ff], sp
    ld hl, $20ff
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, h
    rst $38
    add h
    rst $38
    jp z, $c4ff

    rst $38
    ld b, d
    rst $38
    ld b, c
    rst $38
    ld hl, $a2ff
    rst $38

jr_04f_687c:
    sub c
    rst $38
    ldh [rIE], a
    call nc, $e2ff
    rst $38
    rst $30
    rst $38
    ld l, a
    rst $38
    ld c, e
    rst $38
    ld l, a
    rst $38
    ld l, e
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
    cp a
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
    ld bc, $80ff
    ld a, a
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld d, e
    rst $38
    ld hl, $11ff
    rst $38
    ld de, $01ff
    rst $38
    db $10
    rst $38
    ld e, h
    rst $38
    ld c, h
    rst $38
    ld c, l
    cp $47
    db $fc
    add $fc
    rst $30
    ld hl, sp-$1b
    ld hl, sp-$16
    pop af
    ld l, d
    pop af
    ld a, h
    db $e3
    ld e, h
    db $e3
    cp b
    rst $00
    jp $8fff


    rst $38
    adc a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    pop hl
    rst $38
    di
    rst $38
    ld [hl], c
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$88ff], sp
    ld a, a
    add b
    ld a, a
    add h
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    or a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    or a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    dec e
    rst $38
    inc e
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld h, $ff
    add hl, hl
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    jr nc, @+$01

    ld [de], a
    rst $38
    ld a, [de]
    rst $38
    ld [de], a
    rst $38
    add l
    rst $38
    ld d, $ff
    sbc d
    rst $38
    call Call_04f_4fff
    rst $38
    call Call_04f_4fff
    rst $38
    xor a
    rst $38
    xor [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld l, [hl]
    rst $38
    add $ff
    and $ff
    xor $ff
    di
    rst $38
    ld a, [c]
    rst $38
    rst $30
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
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
    ld [bc], a
    rst $38
    add c
    ld a, a
    nop
    rst $38
    ld b, l
    cp a
    ld b, e
    cp a
    inc b
    rst $38
    add h
    rst $38
    rlca
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    inc bc

jr_04f_69a3:
    rst $38
    inc bc
    rst $38
    ld b, a
    rst $38
    ld b, e
    rst $38
    ld c, c
    rst $38
    and e
    rst $38
    xor e
    rst $38
    sbc e
    rst $38
    or a
    rst $38
    db $d3
    rst $38
    ei
    rst $38
    ld a, c
    rst $38
    cp c
    rst $38
    db $fc
    rst $38
    xor a
    cp $bd
    cp $3f
    db $fc
    ld a, a
    ld hl, sp+$76
    ld sp, hl
    ccf
    ldh a, [$6c]
    di
    ld a, [hl]
    pop hl
    sbc b
    rst $20
    ld a, [hl-]
    rst $00
    jr nz, jr_04f_69a3

    ld d, h
    adc a
    ld c, b
    sbc a
    add sp, $1f
    add b
    ccf
    sub b
    ccf
    jr nz, @+$81

    db $dd
    cp $bd
    cp $fb
    db $fc
    ld e, a
    ld hl, sp-$3d
    ld hl, sp-$25
    ldh a, [$86]
    pop af
    db $dd
    ld [hl+], a
    ld d, b
    rst $28
    db $ec
    ld d, e
    ld a, c
    add $dd
    and d
    ld e, l
    and d
    set 6, h
    ldh a, [rIE]
    rst $38
    rst $38
    scf
    rst $38
    dec hl
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld hl, $21df
    rst $18
    ld hl, $26df
    rst $18
    dec h
    rst $18
    dec b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld hl, $41df
    cp a
    ld hl, $02df
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $81ff
    ld a, a
    ld bc, $81ff
    ld a, a
    ld bc, $09ff
    rst $38
    ld [$05ff], sp
    rst $38
    db $10
    rst $38
    ld bc, $04ff
    rst $38
    inc h
    rst $38
    inc l
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    ld d, d
    rst $38
    ld d, a
    rst $38
    ld d, e
    rst $38
    ld [de], a
    rst $38
    scf
    rst $38
    cpl
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
    ld e, a
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc $ff
    db $dd
    cp $dd
    cp $eb
    db $fc
    cp $f9
    or $f9
    db $fc
    di
    xor $f1
    ld hl, sp-$19
    ret c

    rst $20
    ldh a, [$cf]
    or b
    rst $08
    ld h, b
    sbc a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ccf
    or $7f
    db $fc
    ld a, a
    ld hl, sp-$01
    db $fc
    rst $38
    ret c

    rst $28
    sbc b
    cp $c1

jr_04f_6ace:
    cp $f1
    db $fc
    db $e3
    ld hl, sp-$39
    ld hl, sp-$39
    ld a, [$fe85]
    pop de
    rst $30
    cp b
    rst $38
    jr nz, jr_04f_6ace

    jr nc, jr_04f_6b32

    cp [hl]
    dec hl
    db $f4
    ld a, [hl-]
    push hl
    ld d, [hl]
    jp hl


    ld d, l
    jp hl


    push de
    db $eb
    adc [hl]
    di
    xor [hl]
    db $d3
    and [hl]
    nop
    ld bc, $2b24
    inc b
    ld c, [hl]
    nop
    sub $08
    sub [hl]
    ld [$0cb3], sp
    rst $08
    ldh a, [$b8]
    rst $38
    cp b
    rst $38
    db $fd
    rst $38
    or h
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    db $f4
    rst $38
    push af
    cp $f0
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    pop af
    rst $38
    or c
    rst $38
    ld hl, sp-$01
    ret nc

    rst $38
    pop de
    rst $38
    ret c

    rst $38
    add b
    rst $38
    sub b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld [$00ff], sp
    rst $38
    sub b
    rst $38
    sub b
    rst $38

jr_04f_6b32:
    sub b
    rst $38
    or c
    cp $c1
    cp $51
    cp $60
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38
    ld l, b
    rst $38
    ld l, b
    rst $38
    ld a, b
    rst $38
    cp b
    rst $38
    ld c, b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    cp [hl]
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
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, [$fcfd]
    ei
    db $f4
    ei
    ld hl, sp-$09
    add sp, -$09
    ret nc

    rst $28
    ret nc

    rst $28
    and b
    rst $18
    and b
    rst $18
    ld b, b
    cp a
    ret nz

    ccf
    db $76
    rst $38
    ld l, [hl]
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    ld hl, sp-$09
    and $f9
    jp $c7fc


    ld hl, sp-$1d
    cp h
    rst $30
    ret z

    rst $38
    ldh [$f7], a
    ret z

    rst $30
    ret z

    rst $28
    sub b
    call $df90
    jr nz, jr_04f_6be5

    ei
    ld l, a
    or d
    ld c, d
    or $5e
    db $e4
    or a
    call z, $ccf7
    ld a, e
    adc h
    ccf
    adc b
    ld h, a
    sbc b
    rst $38
    db $10
    ld e, a
    or b
    rst $28
    ldh a, [$3e]
    pop hl
    db $fc
    ld hl, $619c
    rst $38
    ld b, b
    ld a, c
    jp nz, $c2b9

    rst $38

jr_04f_6be5:
    add b
    or e
    call nz, $84f3
    ld a, e
    add h
    and d
    ld c, l
    or d
    ld c, l
    or b
    ld b, a
    xor h
    ld d, e
    and c
    ld e, [hl]
    ld bc, $00fe
    rst $38
    ld [$a1f7], sp
    ld a, a
    ld bc, $19ff
    cp $1b
    db $fc
    ld b, e
    cp h
    and e
    ld e, h
    add e
    ld a, h
    ld d, e
    xor h
    rla
    add sp, -$7d
    db $fc
    res 6, h
    inc bc
    db $fc
    ld hl, $11de
    xor $16
    db $ed
    ld [hl-], a
    call $c23d
    ld e, e
    and h
    cp c
    ld b, [hl]
    dec [hl]
    jp z, $ca35

    ld e, a
    and b
    ld d, l
    xor d
    push de
    xor d
    dec e
    ld [c], a
    rra
    ldh [rIF], a
    ldh a, [$5d]
    and d
    dec e
    ld [c], a
    dec l
    jp nc, $f20d

    dec bc
    db $f4
    add l
    ld a, [$fa25]
    ld [$08f7], sp
    rst $30
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    ret nc

    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    ld d, c
    rst $38
    ret nc

    rst $38
    or d
    rst $38
    db $e4
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
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

jr_04f_6c78:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_04f_6c7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nc

    rst $38
    adc d
    rst $30
    xor c
    or $40
    rst $38
    ld [bc], a
    db $fd
    dec de
    db $e4
    ld d, e
    xor h
    ld e, a
    xor b
    xor a
    ld e, b
    and a
    ld e, b
    rst $28
    db $10
    ld c, a
    or b
    rst $38
    nop
    ld [hl+], a
    rst $38
    ld b, d
    rst $38
    ld l, d
    rst $00
    cp h
    rst $00
    ld hl, sp-$79
    ld l, b
    add a
    pop hl
    rrca
    ld hl, sp+$0f
    ld b, [hl]
    rra
    ld h, c
    rra
    and c
    rra
    and c
    rra
    ld e, c
    daa
    pop af
    rrca
    or e
    ld c, a
    or e
    ld c, a
    ld a, c
    ld b, $fd
    inc b
    pop af
    inc c
    db $fd
    nop
    ld d, a
    ld [$0813], sp
    inc bc
    ld [$0895], sp
    inc c
    db $10
    inc b
    db $10
    ld c, b
    db $10
    jr c, jr_04f_6ce8

jr_04f_6ce8:
    ld a, [de]
    jr nz, jr_04f_6c78

    jr nc, @+$5b

    jr nz, jr_04f_6d18

    ld [hl], b
    sbc b
    ld h, c
    ld e, b
    ld h, c
    xor c
    ld b, c
    ld a, e
    add c
    ld a, b
    add e
    jr nc, jr_04f_6c7f

    push de
    ld [hl+], a
    add $23
    add hl, de
    xor $a2
    ld e, l
    ld a, d
    add l
    ld a, [$fa05]
    dec b
    ld a, [$f305]
    inc c
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38

jr_04f_6d18:
    ld b, b
    rst $38
    ld b, b
    db $fc
    ld b, c
    db $fc
    ld hl, $01fc
    db $fc
    ld b, e
    db $fc
    inc bc
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    ld b, e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $81
    cp $01
    cp $81
    cp $91
    cp $81
    cp $c1
    cp $d1
    cp $f1
    cp $f5
    cp $f5
    cp $f5
    cp $09
    or $09
    or $05
    ld a, [$fe01]
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, d
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld d, d
    rst $38
    ld d, [hl]
    rst $38
    ld a, [$daff]
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
    sub $ff
    inc b
    ei
    nop
    rst $38
    ld [hl], b
    adc a
    ld b, a
    cp a
    and e
    ld e, a
    db $e3
    rra
    jp $c33f


    ccf
    ld b, h
    cp a
    add h
    ld a, a

jr_04f_6d9e:
    sub b
    ld l, a
    or b
    ld c, a
    db $e3
    inc e
    db $e3
    inc e
    ld h, e
    sbc h
    db $e3
    inc e
    ld a, [c]
    dec e
    ld a, [c]
    dec e
    adc $31
    rst $18
    ld hl, $ab55
    cp h
    ld b, e
    sbc a
    ld h, d
    pop af
    ld c, [hl]
    and h
    ld e, e
    inc e
    db $e3
    db $db
    and h
    jr nz, jr_04f_6d9e

    ld [bc], a
    db $fc
    and e
    ld e, h
    ld h, [hl]
    ret c

    rst $28
    ldh a, [$e6]
    ld hl, sp-$3a
    ld hl, sp+$48
    ldh a, [$37]
    ld hl, sp+$07
    ld hl, sp-$7d
    ld hl, sp+$2b
    ldh a, [$3b]
    ldh [$b3], a
    ld h, b
    cp e
    ld h, b
    sbc e
    ld h, b
    rlca
    ld a, b
    jr z, jr_04f_6e3b

    ld [hl+], a
    ld e, l
    ld [$ee15], a
    ld de, $936c
    db $fd
    ld [bc], a
    ld [hl], h
    adc e
    db $f4
    adc e
    ld [hl], l
    adc d
    add sp, $16
    db $ec
    ld d, $ce
    inc [hl]
    ret nz

    inc a
    ld [hl], l
    adc h
    pop af
    inc c
    ld e, a
    and b
    ld a, a
    add b
    ld a, a
    add b
    ei
    add h
    ld a, a
    add b
    or a
    ld c, b
    ei
    inc b
    ld a, a
    add b
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld a, [bc]
    nop
    rst $38
    nop
    nop
    jp nc, $e098

    adc h
    ldh a, [$80]
    rst $38
    adc h
    rst $38
    adc [hl]
    ld sp, hl
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld d, b
    rst $38
    push bc
    ld a, d
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nc

jr_04f_6e3b:
    ld a, a
    ret nz

    ld a, a
    ret nc

    ld a, a
    cp a
    ld b, b
    xor a
    ld d, b
    xor a
    ld d, b
    xor e
    ld d, h
    adc d
    ld [hl], l
    sub d
    ld a, l
    sbc [hl]
    ld [hl], c
    sbc a
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
    ld e, a
    add b
    rrca
    adc b
    rrca
    ret nc

    rra
    and b
    ld a, a
    ret nz

    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    cpl
    ldh a, [rLCDC]
    rst $38
    ld h, c
    rst $38
    ld e, l
    rst $38
    ld a, e
    rst $38
    ld a, d
    rst $38
    ld a, e
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_04f_6e7e:
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
    ld a, a
    ldh [$ed], a
    ld a, [c]
    rst $38
    rst $38
    nop
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    inc b
    ei
    inc e
    db $e3
    ld [hl], h
    swap b
    rst $08
    ld [bc], a
    db $fd
    ld [hl-], a
    db $fd
    ld [bc], a
    db $fd
    ld b, e
    cp h
    pop bc
    cp [hl]
    ld c, a
    cp b
    cpl
    ret c

    ld h, [hl]
    sbc c
    sub [hl]
    ld l, c
    ld c, $f1
    dec de
    db $f4
    ld e, d
    or l
    db $db

jr_04f_6ebb:
    inc [hl]
    rlca
    ld hl, sp+$27
    jr jr_04f_6e7e

    nop
    cp [hl]
    ld bc, $017c
    inc e
    ld hl, $210c
    inc a
    ld bc, $007d
    inc sp
    nop
    inc l
    db $d3
    ld h, $5b
    ld d, $6b
    sub d
    ld l, a
    cp b
    ld b, a
    jr nz, jr_04f_6ebb

    or h
    rst $08
    push af
    adc [hl]
    ld h, [hl]
    sbc a
    ret nz

    dec a
    pop bc
    dec a
    add $39
    add $39

jr_04f_6eea:
    ld a, h
    adc e
    ld a, [hl]
    adc c
    ld l, h
    sbc c
    ld b, $f9
    dec d
    ld hl, sp-$29
    jr c, @-$29

    ld a, [hl-]
    push de
    ld a, [hl-]
    sub l
    ld a, d
    ld d, a
    ld hl, sp+$5c
    ld a, [c]
    or e
    ld e, h
    xor e
    ld d, h
    cp e
    ld b, h
    or a
    ld c, b
    rst $18
    jr nz, jr_04f_6eea

    jr nz, jr_04f_6f74

    cp b
    ld c, a
    or b
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
    jr nz, jr_04f_6f1c

jr_04f_6f1c:
    rst $38
    nop
    nop
    ld [de], a
    inc bc
    nop
    add hl, bc
    nop
    push de
    ld [hl+], a
    sub $ff
    xor $11
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld e, c
    and [hl]
    nop
    rst $38
    nop
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
    add b
    ld a, a
    add b
    ld a, e
    add h
    sbc e
    ld h, h
    ld e, e
    and h
    jp nz, $3ffd

    rst $38
    ld [de], a
    db $ed
    ld [hl-], a
    call $ef10
    db $10
    rst $28
    db $10
    rst $28
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
    nop
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    cp a
    rst $38

jr_04f_6f74:
    db $10
    rst $38

jr_04f_6f76:
    inc d
    rst $38
    add d
    rst $38
    ret nc

    rst $38
    ld d, b
    rst $38
    ld d, d
    rst $38
    ld d, l
    rst $38
    ld d, a
    rst $38
    ld d, [hl]
    rst $38
    ld d, h
    rst $38
    sub [hl]
    ld a, a
    rst $38
    nop
    ld a, [c]
    db $fd
    daa
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01fe
    cp $01
    cp $23
    db $fc
    add hl, bc
    or $18
    rst $20
    ld e, b
    rst $20
    ld [bc], a
    db $fd
    ld hl, $abde
    ld d, h
    dec hl
    call nc, $847b
    ld a, c
    add [hl]
    ld c, e
    and h

jr_04f_6fb0:
    ld l, d
    add l
    ld l, e
    add h
    xor e
    inc b
    ld l, a

jr_04f_6fb7:
    add b
    di

jr_04f_6fb9:
    inc c
    reti


    nop
    ldh a, [$08]
    ldh [$08], a
    xor a
    ld e, b
    cp e
    ld c, b
    dec sp
    ret z

    or a
    ld c, b
    ld h, [hl]
    sbc b
    ld h, d
    sbc b
    db $eb
    db $10
    ld a, [$fb10]
    db $10
    ei
    db $10
    ld a, e
    db $10
    ld a, a
    db $10
    ld a, a
    db $10
    ld a, a
    db $10
    rst $38
    db $10
    rst $18

jr_04f_6fdf:
    jr nc, jr_04f_6fb0

    ldh a, [$2f]
    ldh a, [$de]
    jr nc, jr_04f_6f76

    jr nc, jr_04f_6fb7

    jr nc, jr_04f_6fb9

jr_04f_6feb:
    jr nc, jr_04f_6feb

jr_04f_6fed:
    jr nz, jr_04f_6fed

    jr nz, jr_04f_6fdf

    jr nc, jr_04f_7072

    jr nc, jr_04f_7073

    jr nc, jr_04f_7043

    ld [hl-], a
    call c, $b822
    ld h, [hl]
    ccf
    ldh [$99], a

Call_04f_6fff:
    ld h, [hl]
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld [bc], a
    rst $38
    rlca
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
    nop
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rlca
    cp a
    rst $38
    nop
    ld a, [hl]
    ld bc, $00ff
    rrca
    rst $38
    pop af
    rrca
    ld sp, hl
    rlca
    pop af
    rrca
    pop hl
    rra
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
    ld bc, $02ff
    rst $38
    db $fd
    ld [bc], a
    db $fd

jr_04f_7043:
    ld [bc], a
    db $ed
    ld [de], a
    ld h, h
    sbc e
    ld b, d
    cp a
    ld b, d
    cp a
    ld h, d
    sbc a
    ld b, d
    cp a
    cp $ff
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    jp nz, Jump_000_023f

    rst $38
    inc b
    rst $38

jr_04f_7072:
    ld h, h

jr_04f_7073:
    rst $38
    or d
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    ld c, l
    rst $38
    ld e, h
    rst $38
    ld a, c
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    cp l
    ld a, a
    db $fd
    rra
    rst $38
    rst $38
    ld e, a
    rst $38
    push bc
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    dec b
    rst $38
    add l
    ld a, a
    rst $00
    dec a
    sub c
    ld l, a
    pop de
    cpl
    ldh a, [rIF]
    or c
    ld c, a
    or l
    ld c, a
    add d
    ld a, a
    ld [c], a
    rra
    ret z

    scf
    xor h
    ld d, a
    or h
    ld c, a
    sbc l
    ld h, [hl]
    inc a
    ld b, a
    inc e
    ld h, a
    ld [hl], h
    rrca
    ld e, h
    daa
    ld l, h
    rla
    ld [hl], $4d
    ld b, d
    dec a
    ld a, [$6305]
    ld e, $f9
    rlca
    cp c
    rlca
    cp l
    inc bc
    cp c
    rlca
    cp e
    rlca
    cp b
    rlca
    db $fc
    rlca
    db $f4
    rrca
    ldh a, [rIF]
    dec c
    rst $38
    ld d, l
    xor a
    dec [hl]
    rst $08
    ld [hl], l
    adc a
    ld h, l
    sbc a
    ld b, a
    cp a
    ld [hl], l
    adc a
    ld b, e
    sbc a
    cp b
    rlca
    and h
    inc bc
    push bc
    inc bc
    sub c
    rlca
    cp c
    rlca
    ld a, a
    add e
    ld a, a
    rlca
    ld a, a
    inc bc
    inc de
    rst $38
    ld b, c
    rst $38
    ld [hl], c
    rst $38
    ld h, e
    rst $38
    inc hl
    rst $38
    jr nc, @+$01

    ld [hl+], a
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    ld sp, $78ff
    rst $38
    ld l, d

jr_04f_7117:
    rst $38
    ld h, d
    rst $38
    cp $03
    cp $03
    cp $f3
    db $fc

jr_04f_7121:
    inc sp
    inc e
    di
    inc e
    di
    inc e
    di
    inc e
    di
    jr c, @-$17

    inc a
    rst $20
    jr c, jr_04f_7117

    jr c, jr_04f_7121

    inc a
    rst $20
    ld a, [hl-]
    rst $28
    dec sp
    rst $20
    ld a, [hl-]
    rst $28
    ld a, d
    rst $08
    ld l, b
    rst $18

Jump_04f_713e:
    ld l, b
    rst $18
    or d
    ld c, l
    and h
    ld e, e
    inc [hl]
    bit 7, d
    sub l
    ld [hl], d
    sbc l
    ld a, b
    sub a
    ld a, d
    sub a
    ld [hl], b
    sbc a
    ld [hl], b
    sbc a
    ld [hl], b
    sbc a
    ld [hl], b
    sbc a
    ld [hl], b
    sbc a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, h
    cp a
    and h
    ld a, a
    cp h
    ld a, a
    db $ec
    ccf
    cp b
    ld a, a
    ld a, h
    rst $38
    ld a, b
    rst $38
    db $fc
    ld a, a
    ld a, h
    rst $38
    ld hl, sp+$7f
    ld [hl], h
    rst $38
    db $f4
    rst $38
    ret nc

    rst $38
    call nc, $daff
    rst $38
    db $fc
    rst $38
    ld a, [$fcff]
    rst $38
    db $f4
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
    cp h
    rst $38
    inc e
    rst $38
    ld a, b
    sbc a
    ld a, h
    sbc a
    ld a, d

jr_04f_7199:
    sbc a
    ld a, d
    sbc a
    ld a, b
    sbc a
    ld a, h
    sbc a
    ld [hl], h
    sbc a
    ld a, h
    sbc a
    ld a, h
    sbc a
    ld a, h
    adc a
    ld a, h
    adc a
    ld a, h
    adc a
    ld e, d
    xor a
    ld a, h
    adc a
    ld a, [hl]
    adc a
    ld a, $cf
    ld a, $cf
    ld a, $cf
    ld a, $cf
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    ld a, [hl-]
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $00
    inc a
    rst $00
    inc a
    rst $00
    jr c, jr_04f_7199

    inc a
    rst $00
    dec a
    rst $00
    inc a
    rst $00
    inc a
    rst $00
    ld a, $c7
    dec sp
    rst $00
    ccf
    rst $00
    dec a

jr_04f_71e1:
    rst $00
    dec a
    rst $00
    dec e
    rst $20
    dec de
    rst $20
    dec de
    rst $20
    dec de
    rst $20
    dec de
    rst $20
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    ld e, $e3
    ld e, $e3
    rra
    db $e3
    jr nz, jr_04f_71e1

    ld b, b
    cp a
    adc b
    ld [hl], a
    add b
    ld a, a
    db $10
    rst $28
    ret nc

    cpl
    ld d, b
    xor a
    ldh [$3f], a
    add c
    ld a, [hl]
    add b
    ld a, a
    ld d, d
    cp l
    ld h, d
    cp l
    add e
    ld a, h
    add l
    ld a, d
    and e
    ld e, h
    adc d
    ld [hl], l
    ld [hl], h
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ldh a, [rIE]
    ld [hl], h
    rst $38
    add sp, -$01
    ld [hl], b
    rst $38
    ld h, h
    rst $38
    adc l
    ld [hl], b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc [hl]
    ld h, b
    sbc [hl]
    ld h, b
    ld [hl], $c8
    ccf
    ret nz

    ld a, $c0
    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ld a, [hl-]
    ret nz

    ccf
    ret nz

    dec a
    ret nz

    ld a, $c0
    ccf
    ret nz

    ld a, l
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    and b
    cpl
    ret nc

    rra
    ldh [$7f], a
    add b
    ld e, a
    and b
    and b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld b, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    call nz, $e0ff
    rst $38
    ldh [rIE], a
    call nz, $c0ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp nc, $b8ff

    rst $38
    sub d
    rst $38
    jp nc, $d4ff

    rst $38
    call nc, $f4ff
    rst $38
    add sp, -$01
    db $ec
    rst $38
    db $ec
    rst $38
    ld a, [$daff]
    rst $38
    ld a, [$f6ff]
    rst $38
    ld a, [$f6ff]
    rst $38
    ld a, [$feff]
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [$faff]
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add c
    cp $a1
    cp $a1
    cp $c1
    cp $a1
    cp $42
    db $fd
    ld b, d
    db $fd
    ld b, d
    db $fd
    and d
    db $fd
    and d
    db $fd
    push bc
    ei
    ld b, [hl]
    ei
    ld h, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    and b
    rst $38
    and b
    rst $38
    ld h, c
    cp $c9
    cp $60
    rst $38
    ld b, d
    db $fd
    jp nz, $e8fd

    rst $38
    ret z

    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    add sp, -$01
    ldh [rIE], a
    sub b
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
    inc b
    rst $38
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    ld [$00af], sp
    rst $08
    nop
    adc e
    inc b
    ld e, e
    inc b
    add a
    jr jr_04f_7382

    db $10
    ld b, c
    jr jr_04f_7377

    nop
    ld h, h
    jr jr_04f_7377

    nop
    inc l
    db $10
    ld l, $10
    dec a
    nop
    dec l
    db $10
    ld a, l
    nop
    ld a, l
    nop
    db $db
    nop
    ei
    nop
    ei
    nop
    rst $18
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $30
    nop
    ld a, [$f400]
    nop
    ld [c], a
    nop
    rst $10
    nop
    ei
    nop
    push af
    nop
    pop hl
    nop
    db $e3
    nop
    db $d3
    nop
    sub l
    nop
    push bc
    nop
    reti


    nop
    pop af

jr_04f_7377:
    nop
    db $eb
    nop
    rst $30
    nop
    db $e3
    nop
    ld l, a
    add b
    db $d3
    nop

jr_04f_7382:
    ld d, a
    add b
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_04f_738c:
    cp $00
    cp $00
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    xor $10
    cp $01
    rst $18
    jr nz, @-$10

    ld de, $10ef
    rst $28
    db $10
    xor a
    ld d, b
    sub h
    ld l, d
    sub $28
    sbc $21
    sbc e
    ld h, h
    ld h, h
    rst $38
    ld c, b
    rst $38
    ld b, d
    rst $38
    add sp, -$01
    ret nc

    rst $38
    ret c

    rst $38
    sub h
    rst $38
    ret nc

    rst $38
    xor b
    rst $38
    xor b
    rst $38
    cp b
    rst $38
    ld c, b
    rst $38
    ld d, b
    rst $38
    ld e, b
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    cp b
    rst $38
    and b
    rst $38
    and b
    rst $38
    ret


    rst $38
    ret z

    rst $38
    call nc, $84ff
    rst $38
    xor d
    rst $38
    db $db
    rst $38
    ld a, e
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    push hl
    rst $38
    db $ed
    rst $38
    ret z

    rst $38
    reti


    rst $38
    reti


    rst $38
    db $db
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    dec [hl]
    rst $38
    dec [hl]
    rst $38
    dec hl
    rst $38
    and b
    rst $38
    ld b, d
    rst $38
    ld d, [hl]
    rst $38
    ld h, h
    rst $38
    adc b
    rst $38
    sub h
    rst $38
    sub b
    rst $38
    inc b
    rst $38
    adc b
    rst $38
    inc h
    rst $38
    jr z, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ld [bc], a
    rst $38

jr_04f_7422:
    nop
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    cp $01

jr_04f_7432:
    cp l
    ld b, d
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, b
    ld b, $f7
    ld [$047a], sp
    ei
    inc b
    jp hl


    inc d
    ei
    inc b
    db $fd
    nop
    db $eb
    db $10
    di
    ld [$08f7], sp
    db $eb
    db $10
    rst $20
    db $10
    rst $10
    jr nz, jr_04f_7432

    jr nz, jr_04f_7422

    ld [hl+], a
    xor [hl]
    ld b, b
    sbc $20
    xor $00
    ld e, [hl]
    nop
    db $dd
    nop
    db $fd
    nop
    db $fd
    nop
    cp e
    ld b, b
    ei
    nop
    ld a, e
    add b
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
    rst $20
    nop
    rst $20
    nop
    rst $08
    nop
    rst $08
    nop

jr_04f_747c:
    rst $08
    nop
    sbc a
    nop
    sbc a
    nop
    cp a
    nop
    cp [hl]
    nop
    ld a, $00
    ld a, [hl]
    nop
    ld [hl], l
    nop
    call z, $ec00
    nop
    db $db
    nop
    db $db
    nop
    sbc a
    nop
    cp a
    nop
    cp [hl]
    nop
    cp $00
    cp h
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, l
    nop
    ld hl, sp+$00
    ld a, b
    nop
    ld sp, hl
    nop

jr_04f_74aa:
    ld hl, sp+$00
    db $f4
    nop
    rst $30
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
    cp $00
    ei
    inc b
    ei
    inc b
    cp [hl]
    ld b, b
    cp a
    ld b, b
    db $fd
    nop
    rst $18
    jr nz, jr_04f_74aa

    jr nz, jr_04f_747c

    ld d, b

jr_04f_74ce:
    jp c, Jump_000_2021

    rst $38

jr_04f_74d2:
    add e
    rst $38

jr_04f_74d4:
    add d
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    inc b
    rst $38
    add h
    rst $38
    dec c
    rst $38
    dec bc
    rst $38
    sbc c
    rst $38
    dec bc
    rst $38
    sub a
    rst $38
    ld h, $ff
    ld l, $ff
    ld l, [hl]
    rst $38

jr_04f_74ee:
    db $dd

jr_04f_74ef:
    rst $38

jr_04f_74f0:
    inc sp
    call z, $d42b
    ld c, d
    or h
    ld e, e
    and h
    sbc a
    ld h, b
    ld l, $d1
    inc l
    db $d3
    dec a
    jp nz, Jump_000_1ce7

    db $e3
    inc e
    rst $20
    jr jr_04f_74ce

    jr c, jr_04f_74ef

    add hl, de
    rst $10
    jr z, jr_04f_74d4

    jr c, jr_04f_74ee

    jr nz, jr_04f_74f0

    jr nz, jr_04f_74d2

    ld b, b
    cp a
    ld b, b
    cp [hl]
    ld b, c
    ld [hl], $c1
    ld l, l
    add d
    ld a, a
    add b
    ld a, l
    add d
    xor l
    ld b, d
    sbc l
    ld b, d
    db $db
    inc b
    di
    inc c
    db $db
    inc b
    di
    inc c
    rst $30
    ld [$08b7], sp
    ld l, [hl]
    ld de, $09f6
    ld l, l
    ld [de], a
    ld l, a
    db $10
    rst $28
    db $10
    db $db
    inc h
    jp c, $da25

    dec h
    sbc $21
    cp a
    ld b, b
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    xor a
    db $10
    sbc a
    jr nz, jr_04f_75d0

    nop
    ld e, a
    jr nz, jr_04f_7594

    ld b, b
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    db $eb
    db $10
    ei
    nop
    or $01
    di
    nop
    di
    nop
    db $e3
    inc b
    rst $20
    nop
    rst $20
    nop
    adc $00
    rst $08
    nop
    rst $08
    nop
    ld l, $80
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    ld a, [hl-]
    ld bc, $003f
    dec h
    ld [bc], a
    ld a, a
    nop
    ld l, l
    nop
    ld l, c
    nop
    ld h, a
    nop
    and $00
    rst $08
    nop
    rlc b
    sub a
    nop

jr_04f_7594:
    rrca
    nop
    rrca
    nop
    inc e
    nop
    dec bc
    nop
    sbc d
    nop
    ld [hl-], a
    nop
    dec [hl]
    nop
    dec h
    nop
    ld l, l
    nop
    ld l, a
    nop
    rlc b
    adc $00
    sbc $00
    rla
    add b
    sub l
    nop
    dec a
    nop
    dec sp
    nop
    ei
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38

jr_04f_75bd:
    nop
    rst $28
    nop
    xor $00
    reti


    inc b
    jp c, $9404

    ld c, b
    or l
    ld [$08b1], sp
    xor l
    db $10
    ld a, e
    nop

jr_04f_75d0:
    ld d, [hl]
    ld hl, $21de
    cp l
    ld b, d
    cp e
    ld b, h
    ld l, h
    sub d
    adc $30
    ld e, l
    and b
    ld e, a
    and b
    sbc e
    ld h, b
    rla
    ldh [$32], a
    push bc
    ld l, d
    add l
    ld a, h
    add e
    ld a, l
    add d
    xor l
    ld [de], a
    xor c
    ld d, $4b
    inc [hl]
    ld a, e
    inc b
    di
    inc c
    xor d
    ld d, l
    dec d
    ld [$6897], a
    ld c, h
    or e
    ld [hl], $c9
    inc sp
    rst $38
    inc bc
    rst $38
    ld h, a
    rst $38
    ld b, a
    rst $38
    ld b, b
    rst $38
    add a
    rst $38
    ld b, [hl]
    rst $38

jr_04f_760e:
    ld c, [hl]
    rst $38
    add [hl]
    rst $38
    call z, $4dff
    rst $38
    dec e
    rst $38
    ld c, $ff
    ld a, [hl+]
    rst $38
    ld h, $ff
    inc d
    rst $38
    rst $08
    jr nc, jr_04f_75bd

    ld h, h
    sbc d
    ld h, h
    or l
    ld c, b
    ld a, a
    add b
    db $fd
    nop
    di
    ld [$10ef], sp
    db $db
    jr nz, jr_04f_760e

    jr nz, jr_04f_76b4

    add b
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    xor $00
    ld e, [hl]
    add b
    ld a, a
    add b
    rst $38
    nop
    cpl
    sub b
    cp $00
    sbc a
    jr nz, jr_04f_76ce

    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    db $fd
    nop
    rst $38
    nop
    rst $38
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
    ccf
    nop
    ccf
    nop
    db $eb
    nop
    xor $00
    ld h, l
    ld [bc], a
    jp z, $ce05

    ld bc, $00cf
    sbc l
    ld [bc], a
    sbc a
    nop
    ld a, [bc]
    inc b
    xor b
    inc b
    adc a
    nop
    jp c, $da01

    ld bc, $0291
    or h
    inc bc
    or a
    nop
    rst $28
    nop
    ld l, l
    ld [bc], a
    adc $01
    db $dd
    ld [bc], a
    sbc a
    nop
    cp a
    nop
    cp l
    ld [bc], a
    db $10
    daa
    ld c, l
    ld [hl+], a
    xor $01
    cp l
    ld b, d
    sbc l
    ld b, d
    ld a, [$ac05]
    inc bc
    adc $01

jr_04f_76b4:
    ret c

    inc bc
    sub e
    nop
    or a
    ld [$03ec], sp
    ld l, l
    ld [bc], a
    ld h, e
    inc c
    ld e, [hl]
    nop
    rst $10
    ld [$01fa], sp
    ld [$de11], a
    ld hl, $6196
    ld a, $c1

jr_04f_76ce:
    ld a, $c1
    ld l, h
    sub e
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    and d
    ld e, l
    add $39
    cp l
    ld b, d
    inc [hl]
    rst $38
    ld [hl], b
    rst $38
    and b
    rst $38
    ld b, h
    rst $38
    jr nz, @+$01

    sub c
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    jr @+$01

    jr @+$01

    jr z, @+$01

    jr z, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    add b
    rst $38
    ld a, [c]
    rst $38
    push af
    rst $38
    ld [hl], c
    rst $38
    ld [c], a
    rst $38
    and $ff
    ld [$caff], a
    rst $38
    call z, Call_04f_6fff
    sub b
    ld a, a
    add b
    or a
    ld [$00ff], sp
    rst $18
    jr nz, jr_04f_7798

    nop

jr_04f_771c:
    db $fd
    nop
    ld a, [$fa00]
    nop
    pop af
    nop
    ld [hl], c
    add b
    di
    nop
    db $e3
    nop
    jp hl


    ld [bc], a
    call nz, $c503
    ld [bc], a
    rst $10
    nop
    adc a
    nop
    adc a
    nop
    rra
    nop
    rra
    nop
    ld c, a
    db $10
    ld a, $00
    ld a, $00
    cp l
    nop
    db $fc
    nop

jr_04f_7744:
    ld a, [$f800]
    nop
    ld hl, sp+$00
    di
    nop
    pop hl
    nop
    rst $20
    nop
    jp $c700


    nop
    add a
    nop
    adc a
    nop
    sbc $01
    add [hl]
    add hl, bc
    cp [hl]
    ld bc, $12ed
    ei
    inc b
    db $db
    inc h
    ld a, d
    add h
    or [hl]
    ld c, b
    or c
    ld c, h
    call z, $c231
    add hl, sp
    jp z, $9631

    ld h, e
    sub e
    ld h, [hl]
    jp hl


    ld b, $f1
    ld c, $62
    sbc l
    ld h, l
    sbc d

jr_04f_777c:
    rst $00
    jr c, jr_04f_7744

    ld a, [hl-]
    rst $18
    jr nz, jr_04f_771c

    ld h, [hl]
    cp c
    ld b, [hl]
    ret c

    ld h, a
    ld [hl], h
    sra h
    db $d3
    inc a
    jp $c23d


    ld b, $ff
    ld e, h
    rst $38
    inc e
    rst $38
    dec l
    rst $38

jr_04f_7798:
    ld c, [hl]
    rst $38
    cp d
    rst $38
    ld hl, sp-$01
    db $e4
    rst $38
    sub a
    ld l, b
    ld l, a
    sub b
    adc [hl]
    ld [hl], b
    jr z, jr_04f_777c

    ld b, l
    cp b
    db $d3
    jr z, jr_04f_77d8

    ret nc

    sub l
    ld h, d
    rst $08
    jr nz, jr_04f_777c

    ld h, $59
    add [hl]
    rst $00
    jr jr_04f_77e0

    sbc b
    rst $20
    jr jr_04f_77cc

    ld [hl], b
    sbc a
    ld h, b
    ld b, c
    rst $38
    jp nz, $c2ff

    rst $38
    ld hl, $2aff
    rst $38
    add $ff

jr_04f_77cc:
    sub c
    rst $38
    ld l, b
    rst $38
    dec l
    rst $38
    ld e, b
    rst $38
    dec [hl]
    rst $38
    ld h, h
    rst $38

jr_04f_77d8:
    ld b, b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38

jr_04f_77e0:
    inc h
    rst $38
    dec bc
    rst $38
    ld b, e
    rst $38
    add $ff
    and l
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $28
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    jr jr_04f_7833

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04f_7843

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04f_7853

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04f_7863

    ld [hl-], a

jr_04f_7833:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04f_7873

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_04f_7843:
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

jr_04f_7853:
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

jr_04f_7863:
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

jr_04f_7873:
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
    ld a, [$fbb2]
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
    jr jr_04f_7934

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
    or d
    dec l
    ld l, $2f
    jr nc, @+$33

jr_04f_7934:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
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
    ld bc, $0001
    ld bc, $0301
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    ld bc, $0401
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0403
    inc b
    inc bc
    inc b
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0303
    inc b
    inc bc
    inc bc
    inc b
    dec b
    ld b, $06
    nop
    inc bc
    inc b
    ld bc, $0101
    ld bc, $0404
    inc b
    inc bc
    inc b
    inc bc
    dec b
    rlca
    ld b, $00
    nop
    inc bc
    ld bc, $0101
    ld bc, $0403
    inc b
    inc bc
    inc b
    ld b, $07
    rlca
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    inc bc
    inc b
    inc b
    inc bc
    inc b
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc b
    inc b
    inc bc
    inc b
    ld bc, $0200
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    inc bc
    inc b
    inc b
    inc bc
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0403
    inc bc
    inc bc
    inc b
    inc b
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0304
    inc bc
    inc bc
    inc bc
    inc b
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc b
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0809], sp
    ld [$0908], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0809], sp
    ld [$0908], sp
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
    add hl, bc
    add hl, bc
    ld [$0008], sp
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
    ld [$0909], sp
    ld [$0808], sp
    inc bc
    db $fc
    add hl, bc
    or $01
    cp $a4
    ld e, e
    jr nz, jr_04f_7ae9

    ld d, [hl]
    xor c
    ld e, d
    and l
    ld e, b
    and a
    db $ec
    ld d, e
    ld c, l
    cp d
    ld [hl], c
    xor [hl]
    inc sp
    db $ec
    cp l
    and $31
    xor $56
    jp hl


    dec hl
    or $2c
    db $db
    adc c
    ld a, [hl]
    ld [bc], a
    db $fd
    ld h, l
    sbc [hl]
    and l
    ld e, [hl]
    ld [hl], h
    xor a
    add b
    rst $38
    ret z

    rst $30
    rst $08
    rst $30
    db $fc
    di
    db $fd
    rst $30
    cp $f9
    ei
    db $fc
    cp $fd
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
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38

jr_04f_7ae9:
    rst $20
    rst $38
    inc hl
    ei
    inc sp
    ld a, l
    add hl, bc
    rst $38
    add h
    or $84
    rst $38
    ld [hl+], a
    ld [hl], a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$83], a
    ld a, b
    sub e
    ld l, h
    ld c, b
    or [hl]
    ld hl, $90de
    ld l, a
    ld e, h
    inc hl
    ld a, $01
    ld e, e
    add b
    cpl
    ret nz

    rlca
    ld [hl], b
    ld b, $39
    add d
    dec e
    inc de
    inc c
    sbc c
    ld b, $c5
    ld [bc], a
    rlca
    nop
    sub e
    nop

jr_04f_7b20:
    rlc b
    pop af
    nop
    ld a, c
    add b
    dec a
    ret nz

    call z, Call_04f_7e30
    nop
    dec a
    ld [bc], a
    ld c, $01
    rst $18
    nop
    ld a, e
    nop
    dec a
    nop
    sbc $00
    rst $20
    nop
    ld a, [de]
    nop
    reti


    nop
    ld a, h
    nop
    xor [hl]
    db $10
    inc l
    ld b, d
    call c, $fd23
    nop
    db $e4
    nop
    cp a
    nop
    ld d, d
    adc h
    rla
    add sp, -$7d
    ld a, h
    ld b, b
    cp a
    ldh [$1f], a
    ld e, l
    and d
    ld c, e
    jr nc, jr_04f_7b20

    ld [bc], a
    ld a, e
    add b
    ld [hl], c
    adc [hl]
    ld a, b
    add a
    cp e
    ld b, b
    cp a
    ld b, b
    ld a, [de]
    db $e4
    dec de
    db $e4
    add c
    ld a, [hl]
    ret nz

    ccf
    ldh [$1f], a
    sub b
    ld c, a
    inc b
    ei
    ret nz

    ccf
    ld h, [hl]
    db $10
    cp l
    ld b, d
    ld l, c
    add b
    adc d
    nop
    rst $20
    nop
    ld b, b
    rst $30
    ld h, d
    ld hl, sp+$21
    ld a, [c]
    rlca
    ld hl, sp+$47
    cp b
    nop
    db $fd
    ld hl, $41de
    cp [hl]
    sub b
    ld l, a
    or b
    ld c, a
    ret nz

    ccf
    ret nz

    ccf
    ret nc

    cpl
    ld [c], a
    sbc l
    ld a, [$3a45]
    call Call_04f_6699
    ld a, l
    and e
    xor l
    ld d, e
    ld l, $d1
    db $76
    adc c
    ld [hl], $c9
    cp a
    ld b, b
    rrca
    ldh a, [$5f]
    and b
    dec c
    ld a, [c]
    ld a, [hl+]
    push af
    sbc a
    ldh a, [$ba]
    push hl
    inc e
    db $e3
    xor [hl]
    ld [hl], c
    swap h
    ld a, a
    sub b
    cp a
    ld b, b
    pop de
    xor [hl]
    ei
    call nz, $f1de
    and $ff
    ld a, [$fbff]
    rst $38
    ld sp, hl
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$f8ff]
    rst $28
    db $f4
    rst $28
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    ld a, a
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, a
    db $fc
    ld e, a
    db $fc
    ld l, a
    db $fc
    cp a
    cp $cf
    rst $38
    rst $38
    ld a, a
    jr z, @+$01

    dec de
    rst $18
    adc l
    rst $28
    ld c, $f7
    inc b
    di
    db $10
    ld a, l
    ld de, $00bd
    rst $38
    inc c
    xor a
    nop
    ld e, a
    add b
    dec de
    ldh [rNR33], a
    ldh [$97], a
    ld h, b
    sbc e
    ld h, b
    call $6331
    sbc h
    inc hl
    call c, Call_04f_738c
    sbc $21
    ld l, [hl]
    sub c
    db $e3
    inc e
    add hl, de
    ld h, [hl]
    inc c
    or e
    adc [hl]
    ld [hl], c
    reti


    inc h
    or $00
    ld a, d
    ld bc, $007f
    cp e
    nop
    call $ec00
    nop
    ld hl, sp+$00
    xor $10
    ld a, e
    nop
    and l
    nop
    rst $20
    nop
    db $fd
    nop
    ret c

    inc b
    cp $00
    ld e, a
    and b
    inc sp
    call z, $5da2
    ld [hl], c
    ld c, $b1
    ld c, $a1

jr_04f_7c4f:
    ld [bc], a
    ld a, c
    add b
    rst $00
    jr nz, jr_04f_7c4f

    ld bc, $e01b
    xor c
    ld d, b
    xor $10
    jp hl


    ld b, $fe
    ld bc, $c02d
    sub b
    ld h, b
    or $08
    cp [hl]
    ld bc, $00df
    and a
    nop
    inc sp
    call nz, $fa04
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    jp nz, $c43d

    inc bc
    push af
    nop
    or c
    nop
    daa
    add b
    ld c, $c1
    ld b, $e1
    rlca

jr_04f_7c85:
    ldh [$87], a
    ld h, b
    adc e
    ld [hl], b
    swap b
    rst $08
    jr nc, @-$39

    jr c, jr_04f_7c85

    ld [$9867], sp
    db $76
    adc b
    ld [hl], e
    adc h
    or e
    ld c, h
    ld a, d
    add l
    ld a, c
    adc $1b
    db $e4
    dec e
    ld [c], a
    sbc l
    ld [hl], d
    rst $08
    jr nc, @-$37

    cp b
    ld b, e
    cp h
    and e
    ld e, h
    and e
    ld e, h
    or e
    ld c, h
    ld [hl-], a
    rst $38
    inc [hl]
    rst $38
    ld [de], a
    rst $38
    add b
    rst $38
    ld [$44ff], sp
    rst $38
    ld bc, $02ff
    rst $38
    db $fd
    ld [bc], a
    cp $01
    rst $38
    inc bc
    db $db
    ccf
    db $db
    rst $38
    db $d3
    rst $38
    ld d, c
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
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
    rst $38

jr_04f_7ce1:
    rst $38
    rst $38
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
    ret nz

    rst $38
    rst $38
    rlca
    ld hl, sp-$41
    add d
    db $fd
    rlca
    ei
    ld a, a
    rst $18
    sbc a
    rst $38
    ld b, [hl]
    rst $38
    ld l, a
    rst $38
    rst $38
    ld h, a
    rst $38
    and a
    rst $38
    ret


jr_04f_7d06:
    rst $38
    ld h, h
    rst $38
    jr z, @+$01

    dec de
    rst $38
    add hl, hl
    rst $38
    inc h

jr_04f_7d10:
    jp Jump_04f_713e


    dec hl
    ldh a, [$2b]
    db $fc
    ld d, e
    jr c, jr_04f_7ce1

    ld c, $f3
    adc $39
    ld l, c
    sbc [hl]
    rra
    ldh [$ef], a
    db $10
    ld e, a
    and b
    rst $38
    nop
    rst $18
    nop
    add hl, bc
    nop
    sub c
    nop
    call nz, $8608
    jr nz, jr_04f_7d44

    ld [bc], a
    ld bc, $0600
    nop
    add hl, bc
    nop
    ret z

    nop
    inc b
    nop
    jr nc, jr_04f_7d40

jr_04f_7d40:
    ld c, b
    nop
    inc b
    db $10

jr_04f_7d44:
    add hl, sp
    nop
    ld d, a
    nop
    add e
    nop
    ld h, d
    nop
    db $10
    add b
    jr c, jr_04f_7d10

    ld l, h
    add b
    jr z, jr_04f_7da4

    ld l, e
    db $10
    rst $18
    nop
    ld h, l
    ld [bc], a
    add c
    ld [$00e4], sp
    db $fc
    nop
    xor d
    ld d, b
    add sp, $10
    ld b, a
    jr c, jr_04f_7d06

    nop
    rst $00
    nop
    ld a, [$be00]
    ld b, b
    dec de
    inc b
    rst $20
    nop
    inc e
    ldh [rSCY], a
    cp h
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    sbc b
    rlca
    sub d
    ld bc, $ffef
    rst $10
    rst $38
    rst $28
    rst $38
    ld l, e
    rst $38
    ld l, a
    rst $38
    add hl, hl
    rst $38
    ld h, e
    rst $38
    ld de, $eeff
    ld de, $18e7
    db $ed
    db $10
    ld a, a
    nop
    cp [hl]
    nop
    ld a, [$ba04]
    inc b
    ld d, l
    adc d
    ld b, $ff
    add d
    rst $38

jr_04f_7da4:
    jp nz, $81ff

    rst $38
    add e
    rst $38
    and c
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr z, @+$01

    ld [$0cff], sp
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld a, h
    add a
    ldh [$7f], a
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    or b
    rst $38
    ret nc

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld b, c
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
    ld c, $f0
    inc e
    ldh [$fd], a
    ld b, $70
    rra
    jp Jump_000_13fc


    rst $28
    ld e, l
    cp a
    ld l, c
    rst $38
    ld [c], a
    rst $38
    jp hl


    rst $38
    rst $20
    rst $38
    rst $38
    pop af
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fc
    ld a, a
    db $fc
    ccf
    db $fc

jr_04f_7e0e:
    rst $18
    cp $7f
    db $fc
    ld a, a
    db $fc
    cp [hl]
    db $fd
    ld e, l
    cp $28
    rst $38
    ld a, $ff
    ld e, $ff
    dec de
    rst $38
    adc a
    rst $38
    daa
    rst $38
    and e
    rst $38
    sub e
    ld a, a
    ld e, a
    cp a
    rst $18
    cpl
    rst $38
    sub a
    rst $38
    ld c, e

Call_04f_7e30:
    ccf
    ld hl, $02bf
    rst $18
    inc bc
    rst $08
    add hl, hl
    add hl, sp
    inc b
    adc c
    ld d, $5a
    dec b
    ld d, $01
    ld e, $01
    ccf
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    jr nc, jr_04f_7e4c

jr_04f_7e4c:
    sbc b
    nop
    ld e, $00
    dec h
    nop
    ld d, e
    nop
    ld [hl], a
    nop
    dec sp
    nop
    jp hl


    nop
    xor c
    db $10
    ld a, a
    nop
    dec l
    ld [bc], a
    inc hl
    nop
    ld b, a
    nop
    ld bc, $4b00
    add b
    ld a, e
    add b
    scf
    ret z

    rra
    jr nz, jr_04f_7e0e

    nop
    di
    nop

jr_04f_7e72:
    push af
    nop
    cp $00
    ccf
    add b
    ld a, h
    add b
    rra
    ldh [$c5], a
    ld a, [hl-]
    inc h
    jp $50af


    ld [hl], e
    adc b
    ld [hl], l
    adc b
    ld h, [hl]
    sbc b
    scf
    ret z

    ccf
    ret nz

    or a
    ld b, b
    rst $38
    nop
    ld e, a
    and b
    ld e, e
    and b
    cpl
    ret nc

    xor e
    ld d, h
    adc a
    ld [hl], b
    db $d3
    jr z, jr_04f_7e72

    jr z, jr_04f_7efd

    jr nz, jr_04f_7f0a

    inc d
    ld l, e
    inc d

jr_04f_7ea4:
    cp h
    ld [bc], a
    db $fc
    ld [bc], a
    rst $08
    db $10

jr_04f_7eaa:
    ld e, a
    add b
    ld l, e
    add h
    ld l, e
    add h
    cp e
    ld b, h
    or h
    ld b, e
    cp l
    ld b, d
    ccf
    ret nz

    rst $18
    jr nz, jr_04f_7eaa

    inc de
    ei
    rra
    sbc h
    rst $38
    add h
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
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_04f_7eda:
    rst $38
    rst $38
    or a
    rst $38
    cp [hl]
    rst $38
    ld [hl], h
    adc b
    jr nz, jr_04f_7ea4

    add d
    ld bc, $0f10
    rst $18
    jr nz, jr_04f_7efa

    di
    ld a, l
    sbc a
    db $ed
    rst $38
    or [hl]
    rst $38
    add hl, sp
    rst $38
    add a
    cp $3d
    or $ea
    push af

jr_04f_7efa:
    db $fc
    di
    db $fc

jr_04f_7efd:
    di
    pop af
    cp $78
    rst $38
    cp h
    rst $38
    sbc b
    rst $38
    xor b
    rst $38
    sbc b
    rst $38

jr_04f_7f0a:
    sub d
    db $fd
    ld a, [hl-]
    db $fd
    rrca
    db $fc
    ld d, e
    xor h
    rst $18
    jr nz, jr_04f_7eda

    ld [hl+], a
    sbc d
    dec b
    and [hl]
    ld e, c
    inc d
    bit 2, e
    xor a
    ld e, [hl]
    cp a
    cp e
    rst $38
    db $fd
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp a
    rst $38
    ld e, a
    ei
    ld a, a
    push af
    rra
    ld a, h
    sbc a
    daa
    rst $18
    ld e, b
    xor a
    ld [$a8f7], sp
    ld d, a
    sub $29
    jr z, jr_04f_7f65

    or h
    dec bc
    rlca
    rst $38
    add e
    rst $38
    ld bc, $02ff
    rst $38
    ld [de], a
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    or $09
    di
    inc c
    rst $38

jr_04f_7f65:
    nop
    ld [hl], a
    nop
    db $db
    nop
    cp $01
    rst $28
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, a
    nop
    add hl, de
    ld b, $8f
    nop
    sbc l
    nop
    dec bc
    inc b
    rst $08
    nop
    ld a, a
    add b
    ld d, a
    nop
    ld l, a
    nop
    cp a
    nop
    xor e
    nop
    ld l, e
    nop
    xor e
    nop
    ld e, b
    nop
    ld d, c
    nop
    ldh [rP1], a
    ld b, l
    nop
    pop hl
    nop
    and b
    nop
    and b
    nop
    ret nc

    nop
    ret nz

    nop
    ld b, b
    add b
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    jr nz, jr_04f_7faa

jr_04f_7faa:
    ld [hl], b
    nop
    jr nc, jr_04f_7fae

jr_04f_7fae:
    or b
    nop
    cp b
    nop
    ld e, b
    add b
    ld e, c
    add b
    or $0f
    db $fc
    ld a, a
    ld [bc], a
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    or $ff
    di
    db $fc
    ret c

    ldh [$c7], a
    inc bc
    inc [hl]
    dec bc
    add a
    ld a, b
    ld a, a
    add e
    cp h
    rrca
    ldh a, [$7f]
    add b
    rst $38
    pop hl
    rst $38
    adc a
    rst $30
    inc a
    reti


    and $18
    or $08
    ld h, e
    sbc h
    ld [bc], a
    db $fc
    inc de
    db $ec
    dec sp
    call nz, Call_000_02f5
