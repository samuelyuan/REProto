SECTION "ROM Bank $092", ROMX[$4000], BANK[$92]

    rst $38
    rst $38
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
    ld hl, sp-$01
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

Jump_092_403d:
    rst $38
    nop
    rst $38
    jr nz, jr_092_4062

    db $10
    db $10
    db $10
    db $10
    ld [$8408], sp
    add h
    ld b, h
    call nz, $e222
    ld [de], a
    ld a, [c]
    rrca
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_092_4062:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rst $38
    ld a, a
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    jr nc, jr_092_40d5

    jr nc, jr_092_40d7

    jr jr_092_40b9

    jr jr_092_40bb

    inc c
    rrca
    jr jr_092_40bf

    ldh a, [$fc]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_092_40b9:
    rst $38
    nop

jr_092_40bb:
    rst $38
    nop
    rst $38
    nop

Call_092_40bf:
jr_092_40bf:
    nop
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
    ld a, a
    nop
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a

jr_092_40d5:
    ccf
    ld a, a

jr_092_40d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    add b

Jump_092_40ff:
    rst $38
    add b
    add b
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
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    pop af
    cp $f4
    pop hl
    cp $e0
    cp $e0
    xor $f1
    rst $28
    ldh a, [$e7]
    ld hl, sp-$1d
    db $fc
    pop hl
    cp $e0
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
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
    db $fc
    nop
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    pop hl
    rra
    inc c
    ld a, [c]
    ld c, $01
    rrca
    nop
    rrca
    ldh a, [rIE]
    nop
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
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
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    inc bc
    inc bc
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
    ld hl, sp+$07
    cp $07
    ld b, $07
    nop
    rlca
    inc bc
    inc bc
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
    nop
    nop
    nop
    ld a, a
    rst $38
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
    nop
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
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIF]
    ld l, $cc
    ld l, $cc
    and $e8
    ldh [$6f], a
    and [hl]
    ld c, b
    rst $30
    ld a, e
    rst $30
    ld a, e
    or $f8
    rlca
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
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    add b
    nop
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

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
    cp $ff
    cp $03
    cp $ff
    cp $03
    rst $38
    rst $38
    db $fc
    rlca
    db $fc
    rst $38
    db $fc
    rlca
    db $fc
    rst $38
    db $fc
    rlca
    db $fc
    rst $38
    ld hl, sp+$0f
    ld hl, sp-$01
    ld [$f8f8], sp
    ld hl, sp+$08
    ld [$fefe], sp
    ld a, [$fd0a]
    dec b
    db $fd
    dec b
    ld a, [hl]
    add d
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add b
    ld c, a
    ldh a, [$7f]
    ldh a, [rSVBK]
    ldh a, [rLCDC]
    ldh a, [$f8]
    ld hl, sp-$40
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0001
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
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
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$01
    pop af
    inc bc
    ld [c], a
    rlca
    inc b
    rrca
    inc c
    jp $03fc


    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    rlca
    jr c, jr_092_43cc

    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b

jr_092_43cc:
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rrca
    ld a, a
    ldh a, [rIE]
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    rst $38
    rst $38
    nop
    nop
    ccf
    ccf
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    ld b, e
    ld b, e
    inc hl
    inc hl
    or e
    or e
    db $db
    ld e, e
    rst $08
    ld c, a
    inc h
    inc h
    inc h
    inc h
    ld [de], a
    ld [de], a
    add hl, bc
    add hl, bc
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ret nz

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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rlca
    rst $20
    rlca
    rst $00
    rlca
    add a
    rlca
    rlca
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    rst $00
    cp a
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    rst $38
    adc a
    rst $38
    adc a
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
    cp $1f
    cp $1f
    cp $1f
    cp $1f
    cp $df
    cp $3f
    cp $ff
    cp $00
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
    rst $38
    rst $38
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
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_092_44da

    jr nz, jr_092_44dc

    db $10
    db $10
    adc b
    adc b
    ret z

    ret z

    call nz, $e2c4
    ld [c], a
    ld a, [c]
    ld a, [c]
    pop af
    pop af
    ld hl, sp-$08
    ld hl, sp-$08
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop

jr_092_44da:
    nop
    nop

jr_092_44dc:
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
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rSB], a
    pop bc
    inc bc
    add d
    rlca
    inc b
    rrca
    ld [$f01f], sp
    ccf
    ldh [$7f], a
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

    rlca
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
    cp $03
    cp $01
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
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, @+$22

    db $10
    db $10
    db $10
    db $10
    adc b
    adc b
    add h
    add h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld hl, $1021
    db $10
    db $10
    db $10
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rra
    ldh a, [$3f]
    ldh [$7f], a
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
    add b
    ld a, a
    ret nz

    ccf
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
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_092_4608

    db $10
    db $10
    db $10
    db $10
    ld [$0408], sp
    inc b
    add h
    add h
    add d
    add d
    pop bc
    pop bc
    pop hl
    pop hl
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38

jr_092_4608:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    ld a, a
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    add e
    add e
    ld b, e
    ld b, e
    inc hl
    inc hl
    inc de
    inc de
    dec bc
    dec bc
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
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_092_470e

    jr nz, jr_092_4710

    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    add c
    add c
    add c
    add c
    ret nz

    ret nz

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

jr_092_470e:
    rlca
    rlca

jr_092_4710:
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_092_47d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_092_47e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_092_47f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_092_4803

    ld [hl-], a

jr_092_47d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_092_4813

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_092_47e3:
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

jr_092_47f3:
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

jr_092_4803:
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

jr_092_4813:
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
    ld [hl], h
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
    ld [hl], h
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    adc d
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    ld [hl], h
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
    ld [hl], h
    ld [hl], h
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

    call Call_092_7474
    ld [hl], h
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $da74

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
    push hl
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $e5
    push hl
    push hl
    push hl
    push hl
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    push hl
    push hl
    push hl
    push hl
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @-$19

    push hl
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_092_48fa

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_092_48e3

    nop
    nop

jr_092_48e3:
    nop
    nop
    nop
    nop
    nop
    inc bc
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
    inc bc
    ld [bc], a

jr_092_48fa:
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
    inc bc
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
    dec b
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $05
    ld b, $06
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld b, $06
    dec b
    ld b, $06
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
    ld b, $00
    ld b, $06
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    ld bc, $0001
    ld b, $06
    ld b, $05
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    nop
    ld b, $05
    ld b, $05
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc b
    nop
    nop
    nop
    nop
    rlca
    inc b
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
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld b, b
    nop
    inc bc
    rlca
    inc b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    inc b
    inc b
    inc b
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
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld [$0808], sp
    ld [$0a08], sp
    rrca
    rrca
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0a0b], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    inc c
    rst $38
    rst $38
    cp $ff
    nop
    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    db $fd
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    dec hl
    call nc, $b04f
    push de
    ld a, [hl+]
    or e
    ld c, h
    and $19
    jp hl


    ld d, $f0
    rrca
    ld d, a
    xor b
    xor [hl]
    ld d, c
    push de
    ld a, [hl+]
    ld l, e
    sub h
    push hl
    ld a, [de]
    or $09
    rst $38
    nop
    or l
    ld c, d
    cp a
    ld b, b
    rst $30
    ld [$01fe], sp
    ld e, a
    and b
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    ld a, [hl]
    add c
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$01be], sp
    ei
    inc b
    db $fd
    ld [bc], a
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
    rst $28
    db $10
    ccf
    nop
    ccf
    nop
    ld a, [de]
    dec b
    cp a
    nop
    dec hl
    inc d
    dec c
    nop
    cpl
    nop
    dec a
    ld [bc], a
    swap a
    adc a
    ld a, a
    ld d, $ff
    ld [bc], a
    rst $38
    inc bc
    nop
    daa
    nop
    inc de
    nop
    adc a
    nop
    ret c

    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop
    ld a, $00
    db $fd
    nop
    ld [$1e10], a
    ldh [rTMA], a
    ld hl, sp+$02
    db $fc
    inc bc
    db $fc
    ld bc, $31fe
    adc $40
    cp a
    ldh [$1f], a
    ld d, b
    xor a
    ld h, c
    sbc [hl]
    ld a, [hl]
    add c
    ld [$6b15], a
    sub h
    inc e
    db $e3
    ldh a, [rIF]
    ret z

    scf
    jp nz, Jump_092_403d

    cp a
    ld [bc], a
    db $fd
    dec c
    ld a, [c]
    rra
    ldh [$7e], a
    add c
    ld a, [$f405]
    dec bc
    di
    inc c
    ccf
    ret nz

    ld e, h
    and e
    ld [hl], h
    adc e
    ld [hl], c
    adc [hl]
    db $e3
    inc e
    adc a
    ld [hl], b
    ld e, l
    and b
    db $f4
    nop
    db $d3
    nop
    ld d, e
    nop
    ld d, l
    nop
    or d
    nop
    ld e, [hl]
    nop
    sub [hl]
    nop
    ld c, d
    nop
    dec l
    nop
    ld h, a
    nop
    xor $00
    db $fc
    ld bc, $00ff
    ld hl, sp-$01
    nop
    ldh [rP1], a
    add b
    nop
    add b
    nop
    nop
    nop
    ld c, b
    nop
    add [hl]
    nop
    push hl
    ld hl, sp-$01
    ld d, e
    xor h
    xor d
    ld d, l

jr_092_4b36:
    cp e
    ld b, h
    ld a, l
    add d
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add d
    ld a, a
    add b
    rst $18
    jr nz, jr_092_4b36

    db $10
    rst $38
    nop
    cp a
    ld b, b
    ei
    inc b
    rst $28
    db $10
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld e, a
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
    rst $28
    db $10
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
    ld l, a
    sub b
    rst $28
    db $10
    ei
    inc b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $30
    ld [$807f], sp
    or a
    ld c, b
    jp z, Jump_092_5335

    xor h
    push de
    ld a, [hl+]
    ld [hl], c
    adc [hl]
    db $dd
    ld [hl+], a
    rst $10
    jr nz, @+$01

    nop

jr_092_4b9a:
    rst $18
    nop
    cp a
    nop
    adc h
    inc bc
    ld a, l
    ld [bc], a
    reti


    daa
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    xor d
    rst $38
    ld hl, sp-$01
    db $fc
    nop
    ldh a, [rP1]
    db $e4
    nop
    xor c
    ld b, b
    db $dd
    nop
    or l
    nop
    cp a
    nop
    sbc [hl]
    nop
    rst $38
    nop
    cp a
    nop
    ld a, e
    inc b
    rst $00
    jr c, jr_092_4c18

    jr nc, jr_092_4b9a

    jr nc, jr_092_4c24

    jr z, @-$22

    inc hl
    cp h
    ld b, e
    ld a, b
    add a
    ld [hl], b
    adc a
    ldh [$1f], a
    nop
    rst $38
    ret nz

    ccf
    ld b, c
    cp [hl]
    ld bc, $2afe
    push de
    ld c, l
    or d
    ld [de], a
    db $ed
    dec h
    jp c, Jump_092_609f

    ccf
    ret nz

    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    ld a, b
    add b
    rst $18
    nop
    jp nz, Jump_000_1f30

    ldh [rNR34], a
    ret nz

    ld a, $80
    db $dd
    jr nz, @+$01

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
    xor $10
    ld sp, hl
    nop
    or d
    nop
    rst $10
    nop
    db $dd
    ld [bc], a

jr_092_4c18:
    cp [hl]
    ld bc, $00ff
    push af
    ld [$00e4], sp
    inc b
    ei
    ld h, c
    sbc [hl]

jr_092_4c24:
    nop

jr_092_4c25:
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    db $fc
    rst $38
    dec bc
    db $f4
    rst $38
    nop
    ccf
    ret nz

    rst $28
    db $10
    cp [hl]
    ld b, c
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
    ld a, a
    add b
    db $fd
    nop
    db $fc
    nop
    db $f4
    nop
    cp b
    nop
    pop af
    nop
    ld hl, sp+$00
    add sp, $00
    add sp, $00
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    add sp, $00
    db $f4
    nop
    call c, $f000
    nop
    rst $28
    nop
    cp a
    nop
    rst $38
    nop
    push af
    nop
    rst $38
    nop
    ei
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    or $08

jr_092_4c7e:
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    jr nz, jr_092_4c25

    ld b, b
    or $00
    pop af
    nop
    pop de
    jr nz, jr_092_4c7e

    nop
    rst $20
    db $10
    xor $00
    ld hl, sp+$00
    pop af
    nop
    rst $18
    nop
    ld a, a
    add b
    pop af
    ld c, $a2
    ld e, l
    rst $00
    ccf
    jr nc, jr_092_4cb1

    ld de, $6eee
    sub b
    ld h, c
    add b
    jr nz, jr_092_4caa

jr_092_4caa:
    inc b
    nop
    cp [hl]
    nop
    ld [de], a
    nop
    inc de

jr_092_4cb1:
    nop
    xor [hl]
    nop
    adc e
    nop
    dec bc
    nop
    rra
    nop
    xor h
    inc de
    cp a
    ld b, b
    sbc a
    ld h, b
    ld l, a
    db $10
    rst $28
    db $10
    rst $08
    jr nc, jr_092_4ce6

    ld h, b
    ld c, a
    jr nc, @-$70

    ld [hl], c
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc bc
    db $fc
    inc e
    db $e3
    ld l, l
    sub d
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b

jr_092_4ce6:
    db $fd
    nop
    cp [hl]
    nop
    push af
    nop
    ld d, l
    add b
    rst $00
    nop
    ld [hl], a
    nop
    ld e, d
    nop
    dec h
    nop
    push de

jr_092_4cf7:
    nop
    inc [hl]
    nop
    and b
    nop
    and c
    nop
    ld b, a
    nop
    adc a
    nop
    sbc [hl]
    nop
    ld hl, sp+$00
    push de
    jr nz, jr_092_4cf7

    nop
    ret c

    nop
    jr nz, jr_092_4d0e

jr_092_4d0e:
    ld b, b
    nop
    inc c
    nop
    ld a, b
    nop
    ld hl, sp+$00
    db $f4
    nop
    pop af
    nop
    db $e3
    nop
    rla
    nop
    adc b
    inc b
    rlca
    rst $38
    ld d, c
    xor a
    add l
    ld a, d
    ld de, $00ee
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    ldh [$f8], a
    nop
    rst $38
    nop
    cp $01
    ld e, a
    nop
    pop bc
    nop
    ld hl, sp+$00
    rst $38
    nop
    cp $00
    db $fd
    nop
    ldh [rP1], a
    and b
    nop
    inc b
    nop
    ld c, b
    nop
    nop
    nop
    add b
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
    cp $00
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
    nop
    ld b, b
    nop
    sub b
    nop
    ret z

    nop
    or $00
    ld h, h
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld bc, $1300
    nop
    ld b, $00
    add e
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    ld de, $8000
    ld bc, $0101
    cp [hl]
    ld bc, $0172
    ld b, [hl]
    ld bc, $002f
    cp b
    rlca
    ld a, [$d705]
    cpl
    ccf
    rst $38
    db $fd
    rst $38
    ld [hl], h
    add b
    ld sp, hl
    nop
    xor a
    nop
    dec l
    ld [bc], a
    cpl
    nop
    and e
    nop
    adc c
    nop
    rst $20
    nop
    rst $28
    nop
    db $fd
    nop
    di
    nop
    ld a, [hl]
    add b
    ld a, a
    add b
    rst $38
    nop
    ei
    inc b
    ld a, e
    add h
    rst $38
    nop
    call c, $f003
    rrca
    pop bc
    ccf
    add c
    ld a, a
    inc bc
    rst $38
    ld d, d
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld [hl], b
    adc a
    ret nz

    ccf
    nop
    rst $38
    and b
    ld e, a
    ld [c], a
    dec e
    ret c

    daa
    cp h
    ld b, e
    rst $30
    nop
    sbc e
    nop
    ld h, a
    nop
    ld e, e
    inc b
    cp a
    nop
    ld e, b
    ld hl, $40a9
    push de
    nop
    ld b, c
    ld e, $81
    ld e, $40
    dec a
    add b
    ld h, a
    nop
    ld l, a
    ld a, [bc]
    dec d
    add b
    ld de, $0168
    ld b, b
    rst $38
    ld de, $42ff
    rst $38
    inc b
    rst $38
    ld a, [de]
    rst $38
    dec d
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    add b
    add hl, de
    ld [bc], a
    ld sp, $e708
    ldh [rTAC], a
    ld b, b
    rra
    add b
    scf
    db $10
    ld l, a
    nop
    rst $18
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
    ld c, $f0
    nop
    nop
    rst $38
    nop
    ei
    nop
    inc a
    ret nz

    inc bc
    db $fc
    ld b, b
    cp a
    ld hl, sp+$07
    ld a, a
    add b
    ld e, a
    and b
    rst $38
    nop

jr_092_4e42:
    rst $38
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
    db $f4
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $1002
    nop
    add b
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    db $fc
    nop
    db $fd
    ld [bc], a
    cp $00
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

    ccf
    ret nz

    rra
    ldh [rSCY], a
    nop
    add c
    nop
    stop
    ret nz

    nop
    add [hl]
    nop
    ld b, a
    jr nc, jr_092_4e42

    ld e, d
    jp nz, $6638

    cp c
    push af
    cp e
    xor e
    rst $38
    sbc e
    rst $38
    push af
    rst $38
    pop de
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld [hl], c
    nop
    rst $38
    nop
    ld l, a
    add b
    ccf
    ret nz

    ld c, e
    nop
    ccf
    nop
    ei
    inc b
    di
    inc c
    ld sp, hl
    ld b, $fc
    inc bc
    jp z, $d425

    inc hl
    sub $21
    db $dd
    inc hl
    call nz, $e33b
    rra
    rlca
    ei
    inc d
    ei
    nop
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    ei
    db $10
    rst $28
    nop
    nop
    ld bc, $0f00
    nop
    rrca
    rra
    rra
    rra
    ccf
    rra
    ccf
    ccf
    ccf
    ccf
    dec sp
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, d
    ld a, [hl]
    ld a, $7e
    ld a, a
    ld a, $7f
    ld a, $3e
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    ccf
    ccf
    rra
    ld e, $1f
    rra
    rra
    ld e, $1f
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0303
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop

jr_092_4f1a:
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    jr jr_092_4f1a

    ld bc, $40fe
    cp a
    ldh a, [rIF]
    rst $38
    nop
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $bd00
    ld b, d
    cp $00
    ld b, $00
    ld c, $00
    cp $00
    ld a, [de]
    nop
    cp [hl]
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
    dec d
    nop
    dec h
    nop
    sub h
    ld bc, $0538
    ld hl, sp+$05
    db $e4
    add hl, de
    ret nz

    inc bc
    dec h
    rra
    ld bc, $0d00
    add d
    or l
    adc b
    ld a, a
    add b
    rst $38
    nop
    ld a, l
    ld [bc], a
    cp c
    ld b, $f9
    ld b, $f9
    ld b, $e9
    ld d, $f1
    ld c, $a0
    ld e, a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    cp a
    rlca
    rst $38
    rrca
    rst $38
    ld h, $ff
    call $83ff
    rst $38
    nop
    nop
    nop
    rrca
    nop
    inc c
    nop

jr_092_4fc7:
    nop
    nop
    nop
    nop
    nop
    jr jr_092_4fce

jr_092_4fce:
    ld [hl], h
    inc c
    ld a, [$e61f]
    ccf
    db $fc
    rst $38
    db $ec
    rst $38
    ld e, h
    rst $38
    rst $28
    rst $08
    rrca
    add a
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
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
    inc bc
    rlca
    rlca
    inc bc
    rlca
    add e
    adc l
    add e
    sbc c
    add a
    rst $30
    adc e

jr_092_5000:
    sbc $ef
    db $dd
    cp $fb
    db $fc
    or $f9
    and $f9
    call $99f2
    and $33
    call z, $906f
    sbc $21
    db $fc
    inc bc
    ld a, c
    add [hl]
    di
    inc c
    rst $20
    jr @-$0f

    db $10
    rst $38
    jr nz, jr_092_5000

    rst $38
    db $ec
    rst $38
    db $f4
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ldh a, [rP1]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop

jr_092_503a:
    add b
    nop

jr_092_503c:
    rlca
    ld hl, sp+$0c
    ld hl, sp-$6c
    ld a, b
    add b
    ld a, b
    ret nz

    jr c, jr_092_4fc7

    ld a, b
    call nz, $6539
    add hl, de
    ld d, b
    add hl, hl
    ld [hl], h
    add hl, bc
    ret nz

    ccf
    rst $00
    ccf
    rst $08
    ccf
    cp a
    ld a, a
    nop
    rst $38
    ldh [rNR32], a
    jr nz, jr_092_503a

    jr nz, jr_092_503c

    or b
    ld c, h
    ld hl, sp+$04
    ld [hl], b
    inc c
    ld [hl], b
    inc c
    ld [hl], d
    inc c
    ld [hl-], a
    inc c
    ld [hl-], a
    inc c
    ld [hl-], a
    inc c
    ld [hl+], a
    inc e
    inc bc
    inc a
    jp $013c


    ld a, $01
    ld a, $81
    ld a, $81
    ld a, $c1
    ld a, $3a
    ld b, $32
    ld c, $32
    ld c, $37
    ld c, $36
    rrca
    and [hl]
    rra
    rlca
    cp a
    rra
    rst $38
    ld [bc], a
    rra
    ld b, $9f
    rlca
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
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
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

jr_092_50b3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    call c, $a0ff
    rst $38
    ld bc, $00fe
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_092_50b3

    dec a
    jp nz, Jump_092_51ae

    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    add b
    nop
    add b
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    ret nz

    jp $c3c0


    ret nz

    rst $00
    ret nz

    rst $08
    ret nz

    rst $18
    ret nz

    rst $38
    add b
    rst $38
    nop
    ld b, $f9
    inc d
    db $eb
    add hl, sp
    add $53
    xor h
    ccf
    ret z

    cpl
    ret nc

    ld a, a
    and b
    rst $38
    ld b, b
    cp $80
    db $ec
    nop
    db $fc
    nop
    db $fd
    nop
    ld a, [$f901]
    ld [bc], a
    or $00
    add sp, $04
    rlca
    rst $38
    scf
    rst $38
    rst $20
    ccf
    rra
    rst $38
    ret nz

    rst $38

jr_092_512a:
    db $10
    rst $28
    ld e, a
    add b
    ld bc, $7f80
    add b
    rst $38
    nop
    cpl
    add b
    add e
    nop
    adc e
    nop
    rst $38
    nop
    ld a, a
    add b
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    xor a
    ld b, b
    xor c
    ld b, b
    ld d, b
    ldh [$e0], a
    ldh a, [$a0]
    ldh a, [rLCDC]
    or b
    jr nz, jr_092_512a

    ld a, [$f9fc]
    cp $fd
    rst $38
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
    db $fc
    nop
    rst $38
    nop
    rst $38

jr_092_517d:
    nop
    rst $38
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
    ldh [rP1], a
    sub e
    db $ec
    add b
    rst $38
    ld h, l
    add b
    inc d
    db $e3
    jr jr_092_517d

    adc b
    rst $30
    or b
    rst $38
    cp l
    rst $38
    rst $38
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

Jump_092_51ae:
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld [$00f7], sp
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    add a
    ld a, b
    dec b
    ld a, [$f609]
    dec d
    xor $42
    cp l
    ld e, $e1
    ld [$28f7], sp
    rst $10
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
    ccf
    nop
    ld a, a
    nop
    add b
    ld a, a
    ld bc, $06fe
    ld sp, hl
    sub h
    ld l, e
    cpl
    ret nc

    ld e, e
    and h
    or l
    ld c, d
    ld h, c
    sbc [hl]
    jp $df3c


    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    or d
    inc b
    db $ed
    nop
    sbc b
    ld [$1032], sp
    ld d, b
    jr nz, jr_092_5233

    ld b, b
    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    nop
    rst $38
    ld b, c
    cp a
    add b
    ld a, a
    ld hl, sp+$07
    add b
    ld a, a
    add b

jr_092_5233:
    ld a, a
    ld hl, sp+$07
    cp $01
    db $fc
    inc bc
    ret nz

    ccf
    rst $38
    nop
    rlca
    nop
    inc bc
    nop
    ld a, a
    nop
    rst $38
    nop
    ld e, a
    nop
    cpl
    nop
    dec b
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
    add b
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
    ld bc, $0b00
    nop
    ld c, a
    nop
    rst $18
    nop
    ld a, a
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
    db $e4
    nop
    nop
    rst $38
    add [hl]
    nop
    inc d
    add sp, -$79
    ld a, b
    jp nz, Jump_000_003d

    rst $38
    sub d
    rst $38
    or $ff
    jp hl


    rst $38
    pop hl
    rst $38
    and e
    rst $38
    rst $30
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
    rst $28
    rst $38
    adc $ff
    db $10
    rst $38
    nop
    rst $38

jr_092_52ae:
    ld [bc], a
    db $fd
    inc b
    ei
    nop
    rst $38
    ld bc, $02fe
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $fafe
    dec b
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
    nop
    rst $38
    nop
    add hl, bc
    or $12
    db $ed
    daa
    ret c

    rrca
    ldh a, [$57]
    xor b
    adc a
    ld [hl], b
    rrca
    ldh a, [$3e]
    pop bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $38
    nop
    rst $18
    jr nz, jr_092_52ae

    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld bc, $007f
    ld e, l
    ld [bc], a
    or [hl]
    inc b
    ld l, [hl]
    nop
    add hl, de
    ld [$1099], sp
    jr nc, jr_092_5306

jr_092_5306:
    ld h, b
    jr nz, jr_092_5329

    ld b, b
    pop bc
    nop
    ld [bc], a
    add b
    add c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    call nc, Call_000_00ff
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
    ld b, b
    cp a
    add b
    ld a, a
    and b
    ld e, a
    add c

jr_092_5329:
    ld a, a
    ld e, a
    and b
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a

Jump_092_5335:
    nop
    ld a, a
    nop
    scf
    nop
    inc de
    nop
    dec bc
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    cpl
    nop
    ld l, a
    nop
    rrca
    nop
    cpl
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
    ld [bc], a
    nop
    rra
    nop
    ld bc, $80fe
    nop
    xor b
    nop
    ld a, a
    add b
    daa
    ret c

    inc hl
    call c, $8e71
    ld [hl], b
    adc a
    nop
    rst $38
    add b
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    add h
    rst $38
    adc b
    rst $38
    jr z, @+$01

    ld hl, sp-$01
    add sp, -$01
    ldh a, [rIE]
    cp $ff

jr_092_5394:
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    ld l, a
    db $10
    rst $28
    ld b, b
    cp a
    add c
    ld a, [hl]
    inc b
    ei
    ld a, [bc]
    push af
    sub l
    ld l, d

jr_092_53ae:
    dec bc
    db $f4
    ld a, e
    add h
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, jr_092_5394

    inc h
    sub b
    ld l, a
    ld c, $f1
    db $db
    dec h
    rst $38
    ld [bc], a
    ld sp, hl
    ld b, $f7
    inc c
    rst $38
    ld [$18e7], sp
    rst $38
    db $10
    rst $18
    jr nz, jr_092_53ae

jr_092_53cf:
    jr nz, jr_092_53cf

    ld b, c
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
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    pop af
    cp $f0
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    inc hl
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $00
    dec sp
    nop
    ld c, a
    nop
    cp a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rla
    nop
    inc bc
    nop
    rlca
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
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_092_544a

jr_092_544a:
    ret nz

    nop
    ld sp, hl
    nop
    rra
    ldh [rP1], a
    nop
    nop
    nop
    nop
    sbc [hl]
    ld b, $fb
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca

jr_092_545f:
    rst $30
    rrca
    nop
    dec bc
    dec b
    inc c
    inc bc
    rrca
    ld bc, $050b
    ld a, [bc]
    rlca
    dec c
    rlca
    dec c
    ld b, a
    rrca
    ld d, $0f
    nop
    rlca
    ldh [$ef], a
    ldh a, [$9f]
    pop hl
    dec a
    jp nz, $807f

    rst $38
    nop
    pop bc
    ld a, $84
    ld a, e
    ld bc, $04ff
    ei
    nop
    rst $38
    inc e
    rst $20
    dec sp
    call z, $9966
    and $19
    add $39
    xor d
    ld d, l
    jr c, jr_092_545f

    inc e
    db $e3
    cp c
    ld b, [hl]
    push af
    ld c, $d3
    inc l
    and a
    ld e, b
    cp $11
    adc $31
    sbc l
    ld h, d
    db $fd
    ld b, d
    ld a, b
    add a
    ld a, l
    add [hl]
    di
    inc c
    db $76
    adc c
    db $fc
    inc bc
    db $e3
    inc e
    ei
    inc c
    or [hl]
    ld c, c
    or $09
    ld a, h
    add e
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    di
    inc c
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    sbc $21
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    pop af
    rst $38
    db $ec
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
    rlca
    ld hl, sp-$40
    nop
    ld a, d
    nop
    rst $28
    nop
    db $fd
    nop
    cp $00
    ld a, [$f500]
    nop
    ldh [rP1], a
    ld l, b
    nop
    ld c, b
    nop
    add a
    nop
    nop
    nop
    ld [hl], l
    ld [hl], l
    ld h, l
    ld [hl], l
    ld b, b
    ld d, l
    ld b, b
    ld d, l
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
    ld [$0000], sp
    nop

jr_092_552c:
    ld b, b
    nop
    rst $30
    ld [$0000], sp
    jr jr_092_5534

jr_092_5534:
    dec b
    nop
    add b
    nop
    call z, Call_092_6c00

Call_092_553b:
    add e
    inc c
    di
    nop
    rst $38
    nop
    nop
    ld bc, $0702
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    add b
    rst $38

jr_092_554f:
    nop
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [$01ff], sp
    rst $38
    add d
    ld a, a
    add c
    ld a, a
    ld h, e
    rst $38
    ld b, b
    rst $38
    adc d
    rst $30
    inc d
    rst $28
    nop
    rst $38
    ld [$4aff], sp
    or l
    ld h, $f9
    ld c, a
    ldh a, [$66]
    reti


    add [hl]
    ld sp, hl
    inc d
    db $eb
    jr z, jr_092_554f

    ld [hl+], a
    db $dd
    call z, $eb33
    inc d
    pop hl
    ld e, $e6
    add hl, de
    ld [c], a
    dec e
    pop bc
    ld a, $a3
    ld e, h
    ld b, d
    cp l
    add l
    ld a, d
    ld [$0ff7], sp
    di
    sbc [hl]
    ld h, e
    ld a, [hl+]
    rst $10
    ld [hl], h
    adc a
    ld [hl], c
    adc [hl]
    pop af
    ld c, $f7
    inc c
    and d
    ld e, l
    xor c
    ld e, [hl]
    db $e3
    inc e
    ld e, e
    or h
    rst $00
    jr c, jr_092_552c

    ld a, d
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, $f9
    add h
    ld a, e
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $07ff
    ld sp, hl
    dec b
    ei
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    or e
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
    db $eb
    nop
    inc h
    nop
    and h
    nop
    ld a, a
    nop
    ld b, d
    nop
    add b
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
    db $eb
    nop
    nop
    dec b
    ld d, l
    push de
    ld d, l
    ld [hl], l
    ld d, h
    ld d, h
    inc b
    ld d, h
    nop
    nop
    db $e3
    nop
    db $e3
    nop
    dec a
    inc e
    inc l
    inc e
    inc d
    inc c
    inc c
    inc e
    inc c
    inc e
    inc d
    inc c
    db $10
    inc c
    ld [$1018], sp
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
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    db $db
    inc h
    ld h, $f9
    add hl, bc
    or $10
    rst $28
    nop
    rst $38
    add $ff
    rst $38
    rst $38
    cp $ff
    nop
    nop
    nop
    nop
    ld a, a
    add b
    ld a, [$ff15]
    ld [bc], a
    rst $38
    inc b
    cp a
    ld b, b
    rst $30
    adc b
    nop
    nop
    db $10
    db $10
    ld [$0028], sp
    nop
    nop
    nop
    ld [bc], a

jr_092_565b:
    and d
    nop
    nop
    nop
    nop
    ld b, h
    ei
    jr jr_092_565b

    nop
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc e
    db $e3
    ld b, h
    cp e
    db $10
    rst $28
    ld d, b
    xor a
    ld bc, $31fe
    adc $77
    adc b
    db $e3
    inc e
    and b
    ld e, a
    ld b, c
    cp [hl]
    add c
    ld a, [hl]
    sub e
    ld l, h
    dec b
    ld a, [$fe01]
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, d
    cp l
    inc h
    db $db
    adc a
    ld [hl], d
    rrca
    ld a, [c]
    adc c
    db $76
    adc a
    ld [hl], h
    cp $05
    cp $05
    cp d
    ld c, l
    cp h
    ld c, e
    add sp, $1f
    ldh [$1f], a
    ldh a, [$1f]
    add b
    ld a, a
    and b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
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
    ld b, b
    cp a
    inc bc
    rst $38
    ld bc, $87ff
    rst $38
    rst $18
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
    ld hl, sp+$2a
    nop
    add l
    nop
    ld d, [hl]
    nop
    rst $38
    nop
    ld a, [bc]
    nop
    inc b
    nop
    add d
    nop
    ld [$0000], sp
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
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ldh a, [rDIV]
    ld b, l
    cp d
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ld c, c

jr_092_570d:
    rst $38
    cp $ff
    nop
    nop
    nop
    nop
    add b
    nop
    rst $38
    jr nz, @+$01

    ld b, c
    db $fd
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    ld b, b
    rst $38
    sub b
    rst $28
    add b
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld bc, $02ff
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $30
    ld [$04f7], sp
    rst $38
    dec c
    or $10
    rst $28
    ld [hl], h

jr_092_573b:
    rst $08
    jr c, jr_092_570d

    add sp, $1f
    add b
    ld a, a
    ldh [$1f], a
    ret nc

    ccf
    ret nz

    ccf
    ld l, d
    or l
    jr nc, jr_092_573b

    add b
    ld a, a
    ret nz

    ld a, a
    ld c, b
    rst $30
    ld [$80f7], sp
    rst $38
    add b
    rst $38
    ld bc, $61ff
    sbc a
    and c
    ld e, a
    add b
    ld a, a
    ld b, d
    cp a
    inc bc
    cp $c3
    ld a, $80
    ld a, a
    ld [$04f7], sp
    rst $38
    dec b
    cp $04
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop

jr_092_5779:
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr jr_092_5779

    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld h, b
    cp a
    and b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$75ff]
    nop
    xor a
    nop
    rra
    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop
    rst $18
    nop
    ld [hl-], a
    nop
    dec c
    nop
    ld b, $00
    ld [bc], a
    nop
    ld b, d
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
    ld bc, $0100
    nop
    ld bc, $0320
    db $fc
    ld d, b
    xor a
    nop
    rst $38
    add h
    ld a, a
    inc b
    rst $38
    dec h
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    ld [hl+], a
    ld a, [c]
    cpl
    ei
    ld d, [hl]
    rst $38
    jr z, @-$7e

    add h
    add b
    add h
    nop

jr_092_5805:
    ld b, h
    ld b, h
    ld b, h
    ld [$0888], sp
    ld [$0800], sp
    nop
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $00fe
    rst $38
    nop
    rst $38
    jr nz, jr_092_5805

    ldh [$5f], a
    nop
    rst $38
    add b
    rst $38
    ld de, $81ef
    rst $38
    adc c
    rst $30
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    ei
    dec b
    ei
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    ld de, $0fef
    di
    ld c, a
    or e
    ld c, a
    or e
    adc e
    ld [hl], a
    nop
    rst $38
    add l
    ld a, [hl]
    add l
    ld a, [hl]
    rlca
    db $fd
    rla
    db $fd
    ld bc, $05ff
    rst $38
    add [hl]
    ld a, l
    add h
    ld a, a
    rlca
    db $fd
    dec b
    rst $38
    ld [$2bff], sp
    db $dd
    dec hl
    db $dd
    cpl
    ret c

    ld a, a
    adc b
    ld l, l
    sbc d
    ld l, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, b
    rst $38
    cp a
    nop
    rst $38
    nop
    cp [hl]
    ld bc, $fe01
    push af
    ld a, [bc]
    rst $38
    nop
    ld a, [$f905]
    ld b, $ff
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp [hl]
    ld bc, $007f
    cp [hl]
    ld bc, $007f
    ld a, a
    nop
    sbc a
    nop
    ccf
    nop
    cpl
    nop
    cpl
    nop
    dec l
    nop
    rra
    nop
    dec bc
    nop
    daa
    nop
    rra
    nop
    ld e, $00
    ld d, [hl]
    nop
    stop
    inc h
    nop
    sbc [hl]
    nop
    jr nz, jr_092_58c4

jr_092_58c4:
    ld c, c
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld h, e
    nop
    and c
    nop
    add a
    nop
    add e
    nop
    di
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    ld a, d
    dec b
    scf
    ld [$00bf], sp
    rst $30
    ld [$017e], sp
    ld b, a
    cp b
    ld h, $ff
    rst $08
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rst $28
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    add sp, $28
    ld b, b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, $42
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    jr nc, jr_092_598e

    ld l, b
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    add b
    ld hl, sp+$00
    ld sp, hl
    nop
    ld sp, hl
    ld bc, $00fb
    ld sp, hl
    nop
    pop af
    ld bc, $00f3
    di
    ld bc, $00fb
    di
    ld [bc], a
    rst $28
    ld b, $f7
    ld b, $ff
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld [$e8ff], sp
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    or b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    ld a, a
    jr nz, jr_092_5997

    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, jr_092_59e1

    ret nz

    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ret nc

    cpl
    add sp, $17
    sub b
    ld a, a
    and b
    ld e, a
    add hl, hl
    sub $e0
    rra
    ret nc

    cpl
    cp b
    ld b, a
    ld d, b
    xor a
    ret c

    daa
    inc c
    di
    and d
    ld e, l

jr_092_598e:
    db $f4
    dec bc
    cp [hl]

jr_092_5991:
    ld b, c
    ld hl, sp+$07
    ld [$9215], a

jr_092_5997:
    ld l, l
    call c, $f823
    rlca
    cp d
    ld b, l
    ld a, [$dc05]
    inc hl
    push af
    ld a, [bc]
    db $f4
    dec bc
    ldh a, [rIF]
    ld a, c
    ld b, $58
    rlca
    ld a, a
    nop
    cp [hl]
    ld bc, $05fa
    ld a, a
    nop
    ld a, h
    inc bc
    rst $38
    nop
    ldh a, [rIF]
    sub b
    ld l, a
    ldh [$1f], a
    call z, $f933
    ld b, $f4
    dec bc
    ld hl, sp+$07
    sub b
    ld l, a
    jr c, jr_092_5991

    ld b, b
    cp a
    ld [$00f7], sp
    rst $38
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    xor a
    db $10
    jp hl


    ld d, $5f
    and b
    dec l
    jp nc, $e11e

    inc e

jr_092_59e1:
    db $e3
    sub h
    ld l, e
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    ret nz

    ld a, $c0
    ccf
    adc e
    ld a, a
    rst $08
    ccf
    or $3f
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
    cpl
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    ld bc, $17ff
    rst $38
    rst $38
    rst $38
    nop
    adc b
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld e, d
    nop
    sub c
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop

jr_092_5a3f:
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    ld a, a
    ld [bc], a
    rst $38
    db $10
    rst $28
    ld e, b
    and a
    nop
    rst $38
    nop
    rst $38
    sub b
    ld a, a
    jr nz, jr_092_5a3f

    ld b, b
    cp a
    add b
    ld a, a
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
    ld [bc], a
    rst $38
    dec b
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
    inc b
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    nop
    nop
    ld [de], a
    or l
    ld c, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    nop
    nop
    ld [$0800], sp
    nop
    jr jr_092_5a99

jr_092_5a99:
    jr nc, jr_092_5a9b

jr_092_5a9b:
    add hl, sp
    nop
    ccf
    inc b
    rra
    ld [$0c3f], sp
    ccf
    inc b
    ld a, a
    nop
    ld a, a
    ld hl, $a8ff
    rst $38
    ldh a, [rIE]
    pop hl
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
    ld a, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    inc de
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
    nop
    rst $38
    nop
    rst $38
    dec de
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, [$00ff]
    add hl, bc
    nop
    add b
    nop
    add h
    nop
    cpl
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    ld e, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    daa
    rst $38
    adc e
    rst $38
    rrca
    rst $38
    daa
    rst $38
    rla
    rst $38
    rra
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $41ff
    rst $38
    inc bc
    rst $38
    adc a
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    add a
    rst $38
    dec bc
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
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    nop
    ld a, $00
    ld a, a
    nop
    ld a, [hl]
    ld b, b
    cp a
    ld [$38ff], sp
    rst $38
    inc a
    rst $38
    ld e, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $10
    db $fc
    nop
    db $fc
    nop
    db $fc
    add b
    db $fc
    ldh [$fc], a
    ld b, b
    db $fc
    ldh [$fc], a
    ret nz

    ld hl, sp-$20
    db $fc
    and b
    db $fc
    ldh [$fc], a
    ret nz

    db $fc
    ld d, b
    ld hl, sp+$40
    ld hl, sp-$80
    db $fc
    add b
    db $fc
    add b
    db $fc
    ldh [$fc], a
    ldh [$fe], a
    ret nz

    cp $c0
    rst $38
    add b
    rst $38
    ld h, b
    rst $38

jr_092_5b8e:
    jr nz, jr_092_5b8e

    inc a
    cp $14
    rst $38
    nop
    rst $38
    ld [$1cff], sp
    rst $38
    ld c, $ff
    inc e
    rst $38
    db $10
    rst $38
    db $10
    cp $00
    cp $00
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    dec hl
    rst $38
    ld e, [hl]
    rst $38
    db $fd
    cp $f9
    db $fc
    ld sp, hl
    db $fc
    add c
    db $fc
    db $10
    ld a, e
    db $10
    ld a, a
    ld [$303f], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, [$fc00]
    nop
    db $fc
    ld b, b
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl], h
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add sp, -$01
    ldh [rIE], a
    ldh a, [rIE]
    ret nc

    rst $38
    add b
    rst $38
    ret z

    rst $38
    add d
    db $fd
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
    jp nz, Jump_000_00fd

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    db $fd
    ld [bc], a
    db $fd
    ld bc, $09fe
    or $01
    cp $87
    ld hl, sp+$02
    db $fd
    add d
    db $fd
    ld de, $00ee
    rst $38
    nop
    rst $38
    ld bc, $92fe
    db $ed
    sub e
    db $ec
    ld [c], a
    db $dd
    pop hl
    cp $fc
    di
    ld sp, hl
    or $f8
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    add b
    db $fc
    ld [bc], a
    ld a, [hl]
    add c
    ld [hl], a
    add b
    ld a, l
    add b
    ld c, a
    and b
    ld e, l
    and b
    ld a, [de]
    db $e4
    ld b, $f8
    ld a, [bc]
    push af
    dec h
    jp c, $cb34

    inc a
    jp $807f


    ld e, l
    and b
    dec l
    ret nc

    ld e, [hl]
    and b
    ld e, [hl]
    and b
    ld a, $c0
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    dec a
    ret nz

    ei
    add b
    cp [hl]
    pop bc
    ld l, [hl]
    pop de
    ld l, [hl]
    pop de
    ld e, a
    pop hl
    dec a
    db $e3
    dec l
    di
    adc l
    di
    sbc a
    di
    nop
    ld b, e
    nop
    dec bc
    nop
    rlca
    nop
    adc a
    nop
    rst $08
    nop
    rst $08
    ld bc, $01ee
    cp $02
    db $dd
    ld [hl-], a
    db $fc
    ld [hl], d
    db $fc
    ld [hl-], a
    db $fc
    ld [hl-], a
    db $fc

jr_092_5c9a:
    jr c, jr_092_5c9a

jr_092_5c9c:
    jr nc, jr_092_5c9c

    jr @+$01

    inc e
    rst $38
    ld c, $ff
    rrca
    rst $38
    rlca
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
    jr jr_092_5ce3

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
    jr z, jr_092_5d03

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec l
    ld l, $2f
    jr nc, jr_092_5d14

jr_092_5ce3:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_092_5d24

    ld a, [hl-]
    jr z, jr_092_5d16

    dec sp
    jr z, jr_092_5d2d

    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    jr z, jr_092_5d25

    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_092_5d03:
    ld c, l
    ld c, [hl]
    ld c, [hl]
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

jr_092_5d14:
    ld c, [hl]
    ld c, [hl]

jr_092_5d16:
    ld c, [hl]
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

jr_092_5d24:
    ld l, c

jr_092_5d25:
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_092_5d2d:
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
    cp d
    cp e
    cp h
    cp l

jr_092_5d79:
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

jr_092_5d98:
    db $dd
    jr z, jr_092_5d79

    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    jr z, jr_092_5d98

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
    ld c, [hl]
    ld c, [hl]
    jr jr_092_5df2

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_092_5e02

    ld [hl+], a
    inc hl
    inc h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    dec h
    ld h, $27
    jr z, jr_092_5e15

    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc b
    ld [bc], a

jr_092_5df2:
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a

jr_092_5e02:
    ld [bc], a
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
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop

jr_092_5e15:
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop

Jump_092_5e25:
    nop
    nop
    inc bc
    ld [bc], a
    ld bc, $0201
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    rlca
    rlca
    inc b
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
    ld [bc], a
    rlca
    ld bc, $0704
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    rlca
    ld bc, $0701
    inc b
    rlca
    rlca
    ld [bc], a
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0707
    ld [bc], a
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    rlca
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld bc, $0101
    ld bc, $0201
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    nop
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    rlca
    ld bc, $0101
    ld bc, $0001
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
    rlca
    ld bc, $0101
    ld bc, $0200
    ld [bc], a
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    nop
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    rrca
    add hl, bc
    add hl, bc
    ld [$0c0a], sp
    ld [$0808], sp
    ld [$0b08], sp
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    ld [$080a], sp
    ld [$0008], sp
    nop
    ld [$0a0b], sp
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [$0808], sp
    ld [$0000], sp
    nop
    ld [$0b08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld l, [hl]
    rst $38
    ld a, [c]
    rst $38
    adc [hl]
    rst $38
    ld bc, $ffff
    rst $38

jr_092_5f42:
    rst $38
    rst $38
    rla
    rst $38
    nop
    ld a, a
    jr nc, jr_092_5f89

    ld [$143f], sp
    rra
    nop
    rlca
    nop
    rst $38
    add c
    ld a, a
    and b
    ld e, a
    or b
    ld c, a
    and b
    ld e, a
    ld e, b
    and a
    cp b
    ld b, a
    cp $01

jr_092_5f60:
    call c, $bc23
    ld b, e
    xor [hl]
    ld d, c
    cp a
    ld b, b
    ld a, e
    add h
    ld a, e
    add h
    ld a, c
    add [hl]
    cp c
    ld b, [hl]
    cp $00
    dec sp
    call nz, Call_000_00ff
    ld e, a
    and b
    cp a
    ld b, b
    ld [hl], l
    add d
    rst $10
    jr nz, jr_092_5ffa

    add b
    or c
    ld b, b
    ldh a, [rP1]
    ld a, b
    add b
    ld a, b
    add b
    cp b

jr_092_5f89:
    ld b, b
    ld hl, sp+$00
    ld sp, hl
    nop
    ld e, h
    and b

jr_092_5f90:
    ld a, h
    add b

jr_092_5f92:
    or h
    ld c, b
    call c, $6e20
    sub b
    cp a
    ld b, b
    sbc a
    ld h, b
    ld l, a
    sub b
    xor a
    ld d, b
    cp a
    ld b, b
    cp [hl]
    ld b, c
    ld l, [hl]
    sub c
    ld e, [hl]
    and c
    rst $18
    jr nz, jr_092_5f92

    jr jr_092_5f60

    ld c, h
    rst $08
    jr nc, jr_092_5f90

    jr nz, jr_092_5f42

    ld [hl], b
    rst $30
    ld [$10ef], sp
    rst $38
    nop
    or a
    ld c, b
    rst $38
    nop
    or $09
    ei
    inc b
    ld d, a
    xor b
    cp $01
    rst $30
    ld [$22dd], sp
    cp e
    inc b
    ei
    inc b
    ei
    inc b
    cp $01
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    pop af
    inc c
    ei
    inc b
    ld a, [$ff04]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    db $fc
    inc bc
    rst $38
    ld bc, $03fd
    db $db
    dec h

jr_092_5ffa:
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    dec sp
    rst $00
    ei
    rlca
    ei
    rlca
    ld a, [c]
    rrca
    rst $38
    rlca
    and $1f
    cp $07
    and $1f
    add $3f
    add $3f
    adc a
    ld a, a
    adc h
    ld a, a
    ld l, h
    sbc a
    call Call_000_1d3f
    rst $38
    db $dd
    ccf
    rst $18
    ccf
    sbc l
    ld a, a
    cp l
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    or l
    ld a, a
    ld a, l
    cp a
    add hl, sp
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld [$ebff], a
    rst $38
    sbc d
    rst $38
    ret nz

    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    ld a, [de]
    cp a
    rra
    rst $38
    rra
    rst $38
    nop
    ld e, a
    nop
    ld [hl], b
    jr nz, jr_092_6092

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
    ld a, $ff
    sbc a
    ld a, a
    ld e, $ff
    ld e, $ff
    sbc [hl]
    ld a, a
    sbc l
    ld a, a
    sbc h
    ld a, a
    sbc [hl]
    ld a, a
    sbc c
    ld a, a
    sbc [hl]
    ld a, a
    adc b
    ld a, a
    sbc b
    ld a, a
    call z, Call_000_0a3f
    ld a, a
    ld c, h
    ccf
    ld l, d
    rra
    ld c, h
    ccf
    inc c
    ld a, a
    adc $3f
    nop
    dec b

jr_092_6092:
    nop
    inc b
    nop
    ld b, $00
    ld b, $18
    ld e, $38
    ccf
    jr c, jr_092_611d

    ld a, b

Jump_092_609f:
    ld a, a
    ld hl, sp-$05
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
    ldh a, [$f6]
    ldh a, [$f5]
    ld h, b
    push af
    ld h, b
    push hl
    push hl
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    add a
    ld a, a
    rst $00
    ccf
    add a
    ld a, a
    nop
    rrca
    ld bc, $110f
    rrca
    ld bc, $110f
    rrca
    ld de, $190f
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, bc
    rlca
    ld de, $010f
    rrca
    ld hl, $210f
    rrca
    ld sp, $110f
    rrca
    ld sp, $110f
    rrca
    ld hl, $310f
    rrca
    ld sp, $b10f
    rrca
    or c
    rrca
    ld h, c
    sbc a
    ld hl, $c19f
    rra
    pop bc
    rra
    ldh [$1f], a
    and c
    rra
    ld [hl], d
    rrca
    ld h, d
    rra
    ld h, e
    rra
    ld [c], a
    rra
    ld [hl+], a
    rra
    ld [c], a
    rra
    ld [hl+], a
    rra
    ld [hl-], a
    rrca
    sub d
    rrca
    ld [hl-], a
    rrca
    cp d
    rlca
    ld d, d
    adc a
    ld [de], a
    rst $08
    ld [hl], d
    rst $08
    ld [hl-], a
    rst $08
    ld [hl], d
    rst $08
    sub d

jr_092_611d:
    rst $28
    add [hl]
    rst $38
    ld e, h
    rst $20
    inc e
    rst $20
    sub [hl]
    rst $28
    cp h
    rst $20
    cp h
    rst $20
    cp h
    rst $20
    db $e4
    cp a
    ld h, l
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    db $ed
    rst $38
    add b
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
    xor b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    scf
    nop
    ld a, l
    pop hl
    rst $38
    db $e4
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
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
    add c
    cp $02
    db $fd
    ld [hl+], a
    db $fd
    add b
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld d, b
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
    adc $ff
    inc bc
    db $fc
    add b
    rst $38
    pop bc
    cp $5f
    and b
    ld a, h
    add b
    ld hl, sp-$80
    sbc b
    ldh [$f8], a
    add b
    ld hl, sp-$80
    rst $10
    xor b
    rst $08
    or b
    sbc a
    ldh [$9a], a
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    pop bc
    rst $38
    sbc a
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
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    rst $28
    rst $38
    ld a, [c]
    rst $38
    jp nc, Jump_000_00ff

    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    nop
    rst $10
    nop
    sbc [hl]
    nop
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
    ld [hl], a
    rst $38
    nop
    adc d
    nop
    nop
    ld c, a
    ldh a, [rP1]
    rst $38
    dec b
    ld a, [$f906]
    ld a, [bc]
    push af
    rlca
    ld hl, sp+$26
    reti


    rrca
    ldh a, [$2f]
    ret nc

    ccf
    ret nz

    dec de
    db $e4
    ld e, a
    and b
    ld a, e
    add h
    ld d, a
    xor b
    ccf
    ret nz

    rra
    ldh [$6f], a
    sub b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, [hl]
    add b
    rst $28
    db $10
    ld e, l
    and b
    add hl, de
    ldh [$3a], a
    ret nz

    ld a, h
    add b
    ld a, h
    add b
    ld a, a
    add b
    ld a, $c0
    sub a
    ld l, b
    ld [hl], $c9
    cp a
    ld b, b
    rrca
    ldh a, [$1f]
    ldh [rTAC], a
    ld hl, sp+$25
    jp c, $dc23

    inc bc
    db $fc
    ld de, $f4ee
    rst $38
    db $fc
    rst $38
    ld [bc], a
    db $fd
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
    rrca
    db $f4
    rst $20
    ld e, $d7
    ld a, $7f
    add b
    rst $38
    nop
    rrca
    nop
    dec c
    ld [bc], a
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $08
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    sub d
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $28ff
    rst $38
    ld bc, $09ff
    rst $38
    rst $38
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
    nop
    ld h, $00
    ld a, [$ff00]
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
    ld c, a
    nop
    nop
    ei
    nop
    rrca
    ldh a, [$6f]
    sub b
    cp a
    ld b, b
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    or $00
    ld [$e800], a
    nop
    ret c

    nop
    db $e4
    nop
    add sp, $00
    and b
    nop
    ld b, b
    nop
    ret nz

    nop
    ld b, b
    nop
    and b
    nop
    add b
    nop
    jr nz, jr_092_6348

jr_092_6348:
    ld b, b
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
    and b
    nop
    db $e4
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    adc b
    nop
    ldh [rP1], a
    ldh [rP1], a
    add sp, $00
    ret nz

    nop
    ldh a, [rP1]
    xor e
    ld e, [hl]
    inc b
    ei
    ret nz

    rst $38
    inc b
    ret nz

    ld l, d
    add h
    ld [hl-], a
    call z, $f806
    ld bc, $02fc
    db $fd
    ld [$1cff], sp
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    cp l
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
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    rrca
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
    db $ec
    rst $38
    ld a, [$feff]
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
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
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
    rst $38
    rst $38
    add b
    rst $38
    ld a, [hl+]
    rst $38
    rlca
    rst $38
    nop
    rst $38
    sub c
    rst $38
    nop
    rst $38
    add l
    rst $38
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    ld [$ffff], sp
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
    xor [hl]
    ld bc, $00d1
    call nc, $f700
    nop
    add b
    nop
    add d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $b1ce
    rst $38
    add b
    sub l
    db $eb
    nop
    nop
    ld h, b
    nop
    halt
    ld b, d
    inc e
    pop hl
    inc e
    rlca
    ld hl, sp+$03
    db $fc
    ld b, $f9
    nop
    jr nz, jr_092_6443

jr_092_6443:
    jr nz, jr_092_6448

    ld h, b
    rra
    pop de

jr_092_6448:
    rra
    or b
    rra
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rlca
    rst $38
    rlca
    rrca
    rlca
    rrca
    inc bc
    rlca
    dec b
    rlca
    ld [bc], a
    rlca
    ld bc, $041f
    rst $38
    ld bc, $00ff
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    push af
    rst $38
    push bc
    rst $38
    and $ff
    add l
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    adc d
    rst $38
    inc hl
    rst $38
    rst $00
    rst $38
    ld h, [hl]
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    sbc $ff
    cp $ff
    adc $ff
    ld a, [$6aff]
    rst $38
    push hl
    rst $38
    db $fd
    rst $38
    sbc $ff
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    nop
    nop
    cp $20
    rst $38

jr_092_64b6:
    add l
    rst $38
    ld bc, $0cff
    rst $38
    nop
    rst $38
    adc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    nop
    xor b
    nop
    ret nc

    nop
    ld [c], a
    nop
    db $fd
    nop
    rst $30
    ld bc, $01fd
    rst $38
    nop
    xor a
    ld [hl+], a
    nop
    call nz, $fd00
    nop
    sub l
    nop
    ld de, $0000
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
    dec d
    nop
    db $ec
    inc de
    ld l, b
    sub a
    cp d
    ld b, l
    add b
    ld a, a
    nop
    nop
    nop
    nop
    ld [$7d00], sp
    nop
    daa
    jr jr_092_64b6

    inc d
    rst $38
    nop
    ld a, e
    add h
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add h
    rst $38
    ld b, b
    rst $38
    ld bc, $ff01
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld [c], a
    rst $38
    ld sp, hl
    rst $30
    ld hl, sp-$09
    ldh a, [rIE]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    ld a, e
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc a
    ld a, [hl]
    inc a
    ld a, [hl]
    inc a
    ld a, a
    inc a
    ccf
    ccf
    cp [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ccf
    rra
    cp a
    jr jr_092_657f

    rrca
    rst $38
    rrca
    ld a, a
    rrca
    sbc a
    dec bc
    rra
    rlca
    rra
    rrca
    rra
    rrca
    ccf
    rrca
    ld e, a
    add hl, bc
    rra
    rrca
    ld e, a
    rrca
    ld a, a
    inc bc
    cpl
    inc bc
    adc e
    inc bc
    di
    ld [bc], a
    sub a
    inc bc

jr_092_657f:
    rrca
    and b
    nop
    ld b, $f8
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
    ld a, a
    rst $38
    nop
    ld [bc], a
    nop
    jr nz, jr_092_65a5

jr_092_65a5:
    nop
    nop
    ld b, b
    nop
    cp $81
    sbc a
    nop
    add c
    nop
    rst $38
    cp h
    inc bc
    pop de
    nop
    ld e, d
    nop
    rst $38
    nop
    cp a
    nop
    ld e, a
    nop
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    dec b
    nop
    nop
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
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    ld e, a
    nop
    jp c, $0625

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38

Call_092_6600:
    nop
    ld a, a
    nop
    ccf
    ld a, a
    nop
    reti


    jr nz, jr_092_6610

    ld hl, sp-$63
    ld h, b
    cp $01
    dec e
    ld [c], a

jr_092_6610:
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
    ld l, [hl]
    sbc c
    cp c
    add $00
    rst $38
    ret nc

    cpl
    ld [$0ef7], sp
    ld sp, hl
    ld bc, $8bfe
    or $41
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$3f], a
    ldh a, [$3f]
    ld a, b
    rra
    ld a, b
    rra
    db $f4
    ld a, a
    sub [hl]
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc hl
    inc hl
    ld a, c
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    jp $81eb


    rst $00
    add d
    rst $20
    jp $81c7


    jp $c000


    nop
    ret nz

    ret nz

    ret nc

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    nop
    ldh [$c0], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ret nz

    nop
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$88ff], sp
    rst $38
    and b
    rst $38
    jr @+$01

    sbc b
    rst $38
    scf
    rst $38
    inc bc
    ld a, a
    nop
    nop
    nop
    nop

jr_092_66a6:
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld [$a8ff], sp
    rst $38
    rrca
    rst $38
    ld a, a
    nop
    cp a
    nop
    add h
    ld a, e
    and $19
    rst $18
    jr nz, jr_092_66a6

    ld d, $f7
    ld [$02fd], sp
    ld a, [$fe05]
    ld bc, $027d
    rst $38
    nop
    cp [hl]
    ld bc, $005f
    ld e, a
    nop
    ld e, a
    nop
    ccf
    nop
    ld e, a
    nop
    cpl
    nop
    cp a
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    inc l
    nop
    ld a, b
    nop
    xor b
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ld e, d
    nop
    reti


    nop
    ld a, h
    inc bc
    ret nc

    rrca
    ld h, b
    rra
    adc h
    ld a, a
    inc l
    rst $38
    ld b, $ff
    rst $10
    rst $38
    rst $08
    rst $38
    push af
    ld [$08f7], sp
    ld a, a
    nop
    rst $18

jr_092_6707:
    nop
    and a
    ld [$00df], sp
    db $fd
    ld [bc], a
    db $e3
    inc e
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
    or h
    ld c, e
    ld h, [hl]
    sbc c
    sub a
    ld l, b
    ld b, l
    cp d
    inc sp
    call z, $e619
    inc c
    di
    jr z, jr_092_6707

    or $09
    cp c
    add $58
    rst $20
    inc h
    ei
    ld b, $f9
    ld d, $f9
    inc bc
    db $fc
    dec b
    cp $82
    rst $38
    ld b, e
    db $fd
    ld b, e
    db $fc
    inc sp
    db $ec
    inc sp
    db $fc
    dec e
    ld a, [$fc0b]
    dec b
    cp $03
    cp $01
    rst $38
    add d
    db $fd
    add e
    db $fc
    pop bc
    cp $f1
    xor $e0
    rst $38
    ld hl, sp-$09
    rst $30
    ld hl, sp-$09
    ld hl, sp-$09
    db $fc
    rst $30
    cp $37
    cp $a7
    rst $38
    db $db
    rst $38
    ld a, e
    ei
    ld a, c
    ld a, e
    jr nc, jr_092_67ed

    ld b, b
    ld hl, sp+$78
    db $fc
    jr c, jr_092_67f6

    jr nz, jr_092_67b4

    nop
    nop
    nop
    nop
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
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$acff], sp
    rst $38
    ld hl, $a1ff
    rst $38
    and b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    nop
    inc bc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_092_67b4:
    ldh a, [rIF]
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    ret nz

    ccf
    ret nz

    ccf
    or b
    ld c, a
    ret nz

    ccf
    and b
    ld e, a
    adc b
    ld [hl], a
    ld b, h
    cp e
    xor d
    ld d, l
    db $ec
    inc de
    and h
    ld e, e
    ret c

    daa
    ld d, h
    xor e
    rst $38
    nop
    add sp, $17
    push af
    ld a, [bc]
    call z, $f033
    rrca
    scf
    ld [$017e], sp
    db $e4
    dec de
    di
    inc c
    ldh a, [rIF]
    db $f4

jr_092_67ed:
    dec bc
    ld hl, sp+$07
    nop
    nop
    nop
    nop
    rlca
    nop

jr_092_67f6:
    ld l, [hl]
    ld bc, $01ae
    ld d, a
    jr z, @-$16

    rla
    xor b
    ld d, a
    add b
    ld a, a
    adc [hl]
    ld [hl], d
    or e
    ld c, a
    rst $30
    rrca
    add $3f
    ld c, h
    or l
    and h

jr_092_680d:
    ld e, h
    ld b, [hl]
    cp [hl]
    inc b
    rst $38
    dec c
    rst $38
    ld c, $ff
    inc d
    rst $28
    ld bc, $0aff
    push af
    add h
    ld a, e
    ld c, b
    or a
    ld d, b
    xor a
    ldh [$1f], a
    jr jr_092_680d

    sbc b
    ld h, a
    call z, $c333
    inc a
    ld sp, $b1ce
    ld c, a
    ld e, [hl]
    and c
    rra
    ldh [$57], a
    xor b
    ld [hl], b
    adc a
    inc a
    jp $e01f


    dec de
    db $e4
    rst $38
    nop
    db $eb
    inc d

jr_092_6842:
    ld e, a
    and b
    cp a
    ret nz

jr_092_6846:
    ld a, a
    ret nz

    sbc a
    ld h, b
    rst $18
    jr nc, @-$17

    jr jr_092_6842

    inc c
    ld sp, hl
    ld b, $fc
    inc bc
    cp $81
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    ld h, b
    rst $18
    jr nc, jr_092_6846

    jr @+$01

    ld [$04ff], sp
    ld a, a
    add d
    ld a, a
    add c
    cp $01
    cpl
    ret nc

    jp $a1bc


    sbc $ff
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ldh a, [$7f]
    ld a, b
    ccf
    inc a
    rra
    inc a
    rra
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    and d
    rst $38
    and d
    rst $38
    jr nz, @+$01

    ld [$70ff], sp
    rst $38
    jr @+$01

    and e
    rst $38
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $28
    nop
    rst $38
    jr nc, @+$01

    rlca
    rst $38
    nop
    nop
    nop
    ld bc, $0a00
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    inc c
    rst $38
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
    ld hl, $00df
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    nop
    rst $38
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
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    nop
    dec c
    and b
    ld e, a
    db $10
    rst $28
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $817f
    cp a
    add c

jr_092_6907:
    cp a
    db $d3
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18

jr_092_690e:
    rst $18
    rst $18
    add b
    rst $38
    and b
    rst $18
    add b
    rst $38
    and b
    call nz, $c0a0

jr_092_691a:
    ret nz

    ret nz

    ret nz

    nop
    ldh [rP1], a
    ld a, b
    add b
    cp h
    ld b, b
    rst $18
    jr nz, jr_092_690e

    jr jr_092_691a

    ld c, $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    xor c
    sub $a0
    ld e, a
    ld d, b
    xor a
    jr nc, jr_092_6907

    sbc h
    ld h, e
    ld c, d
    or l
    pop bc
    ld a, $e5
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    xor c
    nop
    db $db
    nop
    and h
    nop
    ldh [rP1], a
    ldh a, [rP1]
    pop hl
    nop
    ldh a, [rP1]
    ld b, b
    add b
    ldh [rLCDC], a
    ldh a, [rNR41]
    or b
    db $10
    ldh a, [$08]
    cp b
    inc b
    cp h
    ld [bc], a
    sbc [hl]
    ld bc, $0082
    ld b, b
    add b
    ld b, b
    add b
    db $ec
    ld b, b
    cp $20
    di
    db $10
    ld l, e
    sub b
    ld a, l
    adc b
    ld l, [hl]
    add h
    daa
    jp nz, $c32c

    ld [hl-], a
    pop bc
    dec de
    ldh [rP1], a
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
    ei
    nop
    rst $18
    add b
    di
    ret nz

    rst $38
    jp $86ff


    rst $38
    db $10
    rst $38
    ld bc, $92ff
    rst $38
    ld [$11ff], sp
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
    sbc a
    nop
    rra
    nop
    rst $38
    add b
    rst $38
    cp $ff
    add b
    rst $38
    add b
    db $fc
    nop
    db $fd
    add b
    sbc h
    nop
    sbc b
    nop
    add d
    add b
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld hl, sp-$01
    inc c
    rst $38
    jr nc, jr_092_69dd

    jr nz, jr_092_69ef

    nop
    ccf
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    db $fc

jr_092_69dd:
    rst $38
    cp $ff
    nop
    ld a, $00
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    db $10
    ccf
    nop

jr_092_69ef:
    ld a, $10
    cp $38
    rst $38
    ld a, [hl-]
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    ld a, $ff

jr_092_69fe:
    cp $ff
    jr nz, @+$01

    db $10
    rst $38
    add b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld a, b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub [hl]
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    jr nc, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    cp [hl]
    ld b, l
    sbc l
    ld h, d
    ld l, [hl]
    ld de, $00af
    sub a
    nop
    dec c
    ld [bc], a
    rlca
    nop
    cpl
    nop
    inc b
    nop
    inc bc
    nop
    ld h, e
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    inc de
    nop
    adc c
    nop
    call Call_092_6600
    nop
    dec de
    jr nz, jr_092_69fe

    db $10
    ld h, a
    ld [$04bf], sp
    rst $38
    ld [bc], a
    rst $28
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ccf
    ret nz

    rst $38
    nop
    dec hl
    call nc, $ff00
    pop af
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    dec b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ret c

    ret nz

    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    and b
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    jr nz, @+$01

    and b
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add h
    ei
    add b
    rst $38
    add d
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    add h
    ei
    add b
    rst $38
    ld bc, $21fe
    cp $24
    ei
    ld bc, $02fe
    db $fd
    nop
    rst $38
    pop hl
    cp $fc
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
    sub b
    rst $38
    or b
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_092_6b1f:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_092_6b25:
    rst $38
    nop
    rst $38
    ld a, [de]
    pop hl
    rst $00

jr_092_6b2b:
    jr c, jr_092_6b2b

    nop
    ld a, l
    add b
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, h
    add b
    sbc a
    ld h, b
    rst $28
    db $10
    di
    inc c
    db $fd
    ld [bc], a
    add b
    ld a, a
    ld b, b
    cp a
    jr nz, jr_092_6b25

    db $10
    rst $28
    dec c
    di
    or [hl]
    ld c, c
    db $db
    inc h

jr_092_6b4e:
    db $fc
    inc de
    ei
    inc c
    db $fd
    ld b, $fc
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
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, jr_092_6b4e

    jr nc, jr_092_6b1f

    ld h, c
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    add c
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    add b
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
    ld [$00f7], sp
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
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $18fe
    rst $20
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp-$6b
    ld l, d
    ld [hl-], a
    call $9966
    ld h, [hl]
    sbc c
    rst $30
    ld [$00f8], sp
    ld a, [$fa03]
    inc bc
    ld sp, hl
    inc bc
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $30
    ld [$d12e], sp
    ld c, a
    or b
    adc b
    rst $30
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38

Call_092_6c00:
    nop
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
    ret nz

    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    or b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    and b
    rst $38
    ld l, b
    rst $38
    jr nc, @+$01

    ld bc, $00ff
    rst $38
    dec [hl]
    jp z, $847b

    cp h
    ld b, e
    ld l, [hl]
    sub c
    rst $28
    nop
    and e
    ld e, h
    adc h
    ld [hl], e
    nop
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
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, jr_092_6c65

    ei
    call nz, $f83f
    rlca
    adc b
    rst $30
    jr nz, @+$01

    ret nc

    ccf
    xor b
    ld e, a
    sub h
    ld l, a
    db $e3
    rra
    ldh a, [rIF]
    db $fc

jr_092_6c65:
    inc bc
    ld h, h
    sbc e
    ret nc

    cpl
    call c, $e223
    dec e
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld sp, hl
    ld b, $f8
    rlca
    call nz, $c03b
    ccf
    ldh [$1f], a
    ret nz

    ccf
    db $10
    rst $28
    ld b, l
    cp d
    adc $31
    sub c
    ld l, [hl]
    ld a, [$fc05]
    inc bc
    ld a, d
    add l
    cp b
    rst $00
    nop
    ret nz

    nop
    ret nz

    nop
    ldh a, [$fa]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    nop

jr_092_6cad:
    ld bc, $1600
    inc bc
    rst $38
    ld [bc], a
    db $fd
    inc de
    db $ec
    dec bc
    db $f4
    ld [bc], a
    db $fd
    dec b
    ld a, [$ff00]
    dec e
    ld [c], a
    rst $18
    jr nz, jr_092_6d42

    add b
    rla
    add sp, $1c
    ldh [rIE], a
    nop
    rst $38
    nop
    cp a
    ld b, b
    dec e
    ld [c], a
    ld e, [hl]
    and b
    inc a
    ret nz

    ld hl, sp+$00
    db $fc
    nop
    cp a
    ld b, b
    db $dd
    ld [hl+], a
    db $fc
    inc bc
    rst $28
    db $10
    rlca
    nop
    and b
    rst $38
    ld b, d
    rst $38
    ld bc, $04ff
    ccf
    ret nz

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
    ld a, a
    add b
    dec de
    db $e4
    ret z

    rst $38
    cp $ff
    and b
    ld e, a
    dec l
    jp nc, $c03f

    dec c
    ld a, [c]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$a0ff], sp
    ld e, a
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    call c, $e003
    rra
    jr c, jr_092_6cad

    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$09
    ret nz

    ld b, h
    add e
    ld b, b
    ccf
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38

jr_092_6d42:
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ld [hl+], a

jr_092_6d49:
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    jp z, Jump_092_40ff

    rst $38
    ld h, b
    cp a
    ld e, b
    rst $38
    inc c
    rst $38
    inc bc

jr_092_6d5d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    jr nz, jr_092_6d49

    db $10
    rst $28
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld d, b
    xor a
    and b
    ld e, a
    ld [$80f7], sp
    ld a, a
    inc b
    ei
    jr nz, jr_092_6d5d

    ret nz

    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$06
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    cpl
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], l
    adc d
    xor d
    ld d, l
    or $09
    ld [$3f15], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    sbc $21
    rst $18
    jr nz, @-$40

    ld bc, $00ff
    rst $10
    jr z, @+$71

    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    add b
    nop
    pop af
    nop
    and c
    ld b, b
    ldh a, [rP1]
    cp a
    ld b, b
    rst $38
    nop
    nop
    nop
    ld a, [hl+]
    rst $38
    ld bc, $14ff
    rst $38
    ld bc, $f83f
    nop
    rst $38
    nop
    jr nc, jr_092_6de2

jr_092_6de2:
    adc a
    nop
    db $ec
    nop
    and $00
    db $ec
    nop
    ldh [rP1], a
    ld hl, sp+$00
    adc a
    ldh a, [$78]
    add b
    db $e4
    jr @-$26

    nop
    ld a, [hl+]
    ret nz

    add hl, de
    ldh [rIF], a
    ldh a, [rSC]
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    ei
    ld de, $00fe
    rst $38
    nop
    rst $38
    ld [hl], $c9
    ld e, a
    and b
    rst $30
    ld [$c639], sp
    ld l, a
    nop
    db $db
    nop
    ld d, e
    nop
    dec e
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0100
    ld bc, $8101
    ld bc, $01e1
    ld sp, hl
    nop
    db $fc
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
    add b
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    jr @+$01

    ld b, h
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    add h
    rst $38
    jp nz, Jump_092_71ff

    rst $38
    ld a, [bc]
    rst $38
    ld d, $ff
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
    add b
    ld a, a

jr_092_6e66:
    nop
    rst $38
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
    inc b
    nop
    nop
    nop
    stop
    ld a, [$fffd]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    ld e, d
    and l
    inc sp
    call z, Call_092_40bf
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_092_6e66

    ld b, b
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    ldh [rP1], a
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
    ld b, $00
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh [rIF], a
    ldh [$2f], a
    ldh [$3f], a
    ldh [$1f], a
    ld h, b
    rst $38
    nop
    ld sp, hl
    nop
    pop bc
    nop
    cpl
    nop
    call $e500
    nop
    db $fd
    nop
    cp l
    nop
    ld c, b
    nop
    call c, $df00
    nop
    add a
    ld hl, sp+$59
    rst $38
    ld d, c
    rst $38
    add $ff
    adc [hl]
    rst $38
    rst $18
    rst $38
    db $fd
    ld [bc], a
    ld e, a
    and b
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
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
    ld c, $06
    rrca
    rra
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, b
    db $fc
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ld hl, sp-$08
    ldh a, [$78]
    ldh a, [$d8]
    ld [hl], b
    ld a, [c]
    inc e
    ld hl, sp+$0f
    cp $03
    add b
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld b, h
    rst $38
    jr nz, @+$01

    ld [$54ff], sp
    rst $38
    ld [hl+], a
    rst $38
    ld b, $ff
    jp z, $e5ff

    rst $38
    db $76
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    inc d
    nop
    inc hl
    nop
    ld d, $00
    xor a
    nop
    sub a
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rra
    rst $38
    cpl
    rst $38
    ld h, e
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    scf
    rst $38
    inc de
    rst $38
    db $fc
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
    cp $00
    db $dd
    nop
    cp $00
    ei
    nop
    db $f4
    nop
    ldh a, [rP1]
    db $f4
    nop
    pop hl
    nop
    jr nc, jr_092_6fae

jr_092_6fae:
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    inc d
    nop
    jr z, jr_092_6fba

jr_092_6fba:
    jr nz, jr_092_6fbc

jr_092_6fbc:
    ret nz

    nop
    jr nc, jr_092_6fc0

jr_092_6fc0:
    add b
    nop
    ld l, b
    nop
    ret nc

    nop
    jr z, jr_092_6fc8

jr_092_6fc8:
    xor b
    nop
    db $e4
    nop
    ld d, b
    nop
    call nc, $aa00
    nop
    ld a, [$ee00]
    nop
    call c, $fe00
    nop
    inc bc
    nop
    ld bc, $8100
    nop
    ld bc, $4300
    nop
    pop hl
    nop
    ret nc

    nop
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $80ff
    rst $38
    ret nz

    nop
    push bc
    nop
    cp e
    nop
    add hl, sp
    nop
    or l
    ld [$00ff], sp
    ld a, $c0
    dec b
    ldh [rNR23], a
    ldh [rNR13], a
    ldh [$8f], a
    ld [hl], b
    ld c, $f1
    ld c, $f1
    adc [hl]
    ld [hl], c
    add a
    ld a, b
    rst $08
    jr nc, jr_092_7011

jr_092_7011:
    add b
    ldh a, [$80]
    db $ed
    ld a, [c]
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    dec a
    rra
    ld e, $0f
    inc c
    rrca
    inc c
    rlca
    ld c, $07
    ld c, $07
    rrca
    rlca
    rrca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    cp $0e
    ld hl, sp+$04
    db $fc
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, jr_092_7069

    rst $38
    inc b
    rst $38
    ld hl, $04ff
    rst $38
    ld [bc], a
    rst $38
    ld b, c
    rst $38
    jr nz, @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_092_7069:
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    nop
    nop
    ld b, b
    nop
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $c0
    ldh [$df], a
    ldh [$ee], a
    ret nz

    cp l
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    cp a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    db $fd
    nop
    cp $00
    cp d
    nop
    jp hl


    nop
    call nc, $e000
    nop
    ld [de], a
    nop
    and b
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
    sub c
    nop
    jp z, $6400

    nop
    reti


    nop
    ld e, b
    nop
    ret nz

    nop
    nop
    nop
    jr nz, jr_092_70c8

jr_092_70c8:
    ld b, b
    nop
    db $ed
    db $10
    rst $20
    ld hl, sp+$7a
    rst $38
    nop
    inc bc
    ld [bc], a
    ld bc, $0094
    and b
    nop
    add b
    nop
    sub b
    nop
    jr nz, jr_092_70de

jr_092_70de:
    ld b, b
    nop
    add sp, $00
    db $e4
    nop
    ld hl, sp+$00
    ld a, [$7700]
    add b
    ld a, d
    add c
    adc e
    ld [hl], b
    rlca
    ld hl, sp+$00
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

    add b
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    add sp, $60
    ld [c], a
    ld h, b
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
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
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    jr @+$01

    add [hl]
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp [hl]
    rst $38
    di
    db $fc
    db $fd
    add b
    ld [hl-], a
    nop
    cp $00
    push af
    nop

jr_092_7164:
    rst $18
    jr nz, jr_092_7164

    nop
    db $f4
    nop
    ret nc

    nop
    db $e4
    nop
    ret c

    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    jr z, jr_092_7178

jr_092_7178:
    nop
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
    ret nz

    nop
    jr nc, jr_092_7194

jr_092_7194:
    jr nc, jr_092_7196

jr_092_7196:
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld l, $90
    ld l, e
    sub b
    jp nc, $f3fd

jr_092_71a3:
    rst $38
    dec e
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $fd
    jr jr_092_71a3

    nop
    rst $38
    db $10
    rst $38
    inc b

jr_092_71b1:
    nop
    stop
    inc b
    nop
    xor l
    nop
    and $00
    ld a, [$ff00]
    nop
    cp $00
    ld a, c
    add [hl]
    rst $38
    nop
    cp $01
    cp $01
    adc a
    nop
    rst $38

jr_092_71cb:
    nop
    ld a, a
    add b
    dec bc
    ldh a, [rTMA]
    ld hl, sp+$40

jr_092_71d3:
    cp $e8
    rst $38
    add hl, sp
    rst $38
    push bc
    ccf
    ld hl, $00df
    rst $38
    add c
    ld a, a
    jr nc, jr_092_71b1

    jr jr_092_71cb

    ld bc, $00fe
    rst $38
    ldh [$1f], a
    or b
    ld c, a
    ld e, [hl]
    and c
    ld b, e
    cp h
    ret nz

    ccf
    jr nz, jr_092_71d3

    call c, $be23
    ld b, c
    rst $18
    jr nz, @+$29

    ret c

    dec bc
    db $f4
    add b

Jump_092_71ff:
    ld a, a
    nop
    nop
    nop
    nop
    sub b
    add b
    ldh [$08], a
    ldh a, [rP1]
    ld hl, sp+$00
    cp $40
    rst $38
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    db $10
    db $10
    dec e
    db $10
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_092_7266

    ld a, [hl+]
    dec hl
    inc l
    db $10
    dec l
    ld l, $2f
    db $10
    db $10
    jr nc, jr_092_7279

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_092_7260

    add hl, sp
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
    ld b, [hl]
    ld b, a
    db $10

jr_092_7260:
    ld c, b
    db $10
    ld c, c
    inc de
    ld c, d
    ld c, e

jr_092_7266:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    db $10
    ld d, l
    db $10
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_092_7279:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    db $10
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
    db $10
    ld [hl], h
    ld [hl], l
    db $76
    db $76
    db $76
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    inc de
    ld a, a
    add b
    add c
    db $76
    db $76
    db $76
    db $76
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
    db $76
    db $76
    db $76
    db $76
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
    db $76
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

    db $10
    push de
    sub $13
    rst $10
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
    xor $10
    db $10
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $10
    db $10
    db $10
    db $fd
    cp $ff
    stop
    ld bc, $0302
    inc b
    dec b
    ld b, $10
    rlca
    db $10
    call c, Call_000_0908
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1012
    inc de
    inc d
    dec d
    db $10
    ld d, $00
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
    inc b
    inc b
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld bc, $0701
    ld [bc], a
    ld [bc], a
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
    rlca
    ld bc, $0701
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0001
    ld [bc], a
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
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld bc, $0001
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    rlca
    rlca
    inc b
    ld [bc], a
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop

Call_092_7474:
    ld a, [bc]
    dec c
    dec c
    dec c
    ld [$0a08], sp
    ld [bc], a
    ld a, [bc]
    nop
    ld b, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    ld [$0008], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
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
    ccf
    ld e, a
    xor a
    and a
    ld e, e
    ld e, h
    and a
    or h
    ld c, e
    jp c, Jump_092_5e25

    pop hl
    ld sp, $8aff
    ld a, a
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop

jr_092_74b5:
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
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
    add b
    ld a, a
    ld bc, $80fe

jr_092_74d1:
    ld a, a
    ldh [$1f], a
    jr nz, jr_092_74b5

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $85ee
    ld a, d
    call nz, $f03b
    rrca
    ldh [$1f], a
    add b
    ld a, a
    inc bc
    db $fc
    dec b
    ld a, [$f50a]
    db $10
    rst $28
    nop
    rst $38
    jr nz, @-$1f

    jr z, @-$27

    jr z, jr_092_74d1

    ld l, l
    sub d
    rst $18
    jr nz, jr_092_7539

    push bc
    or $09
    call nz, $c83b
    scf
    ld c, h
    or e
    call c, Call_000_1e23
    pop hl
    adc a
    ld [hl], b
    sbc [hl]
    ld h, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    rlca
    db $ec
    rrca
    or b
    ccf
    ld d, h
    rst $38
    pop de
    rst $38
    ld b, b
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add hl, bc
    db $fc
    inc de
    ld hl, sp+$07
    ldh a, [$1f]
    ldh [$3f], a
    add b
    rst $38
    nop
    rst $38

jr_092_7539:
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

jr_092_7543:
    add b
    cp e
    ld b, h
    add hl, sp
    add $b9
    ld b, [hl]
    cp h
    ld b, e
    ld e, $e1
    ld e, $e1
    ld e, $e1
    dec b
    ld a, [$fe01]
    ld bc, $00fe
    rst $30
    ld bc, $01ff
    rst $38
    rrca
    rst $38
    jr z, jr_092_7579

    ld [$0827], sp
    ld [hl], a
    nop
    rst $38
    inc bc
    db $fc
    db $10
    rst $28
    db $10
    rst $28
    ld d, b
    xor a
    jr nz, @-$1f

    jr nc, jr_092_7543

    ldh a, [rIF]
    ldh [$1f], a
    ld h, b

jr_092_7579:
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rla
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ld d, c
    rst $38
    inc bc
    rst $38
    ld [bc], a
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
    inc b
    ei
    call nz, $043b
    ei
    ret nc

    cpl
    ld b, b
    cp a
    add b
    ld a, a
    call nz, Call_092_553b
    xor d
    ld h, l
    sbc d
    db $fc
    inc bc
    ld a, h
    add e
    sbc [hl]
    ld h, c
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
    add b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ld d, b
    ld c, $f1
    sub $29
    ld [hl], c
    adc [hl]
    rst $28
    db $10
    and $19
    sbc h
    ld h, e
    ld a, $c1
    ld a, [hl]
    add c
    db $ec
    inc de
    push af
    dec bc
    pop hl
    rra
    db $e3
    rra
    rst $10
    cpl
    adc a
    ld a, a
    ld e, a
    cp a
    ld b, $31
    inc c
    ld [hl], e
    ld [$0077], sp
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
    nop
    rst $38
    ld hl, $21ff
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
    ld [hl], b
    rst $38
    dec e
    cp a
    rrca
    ld e, a
    inc bc
    ld b, a
    nop
    rst $00
    nop
    ld b, a
    nop
    rst $00
    nop
    rst $38
    ld [bc], a
    ld a, a
    ld bc, $003f
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    xor a
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
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    ld de, $09ff
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $03ff
    rst $38
    ld c, b
    cp a
    ld b, e
    cp a
    ld bc, $00ff
    rst $38
    ld bc, $00ff

jr_092_76d9:
    rst $38
    add b
    ld a, a
    nop
    rst $38
    and b
    ld e, a
    add c
    ld a, a
    inc bc
    rst $38
    add l
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $28
    nop
    rst $38
    add b
    ld a, a
    ld [hl+], a
    rst $18
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_092_76d9

    add d
    ld a, a
    ld b, b
    cp a
    ld bc, $00ff
    rst $38
    ld hl, $83df
    ld a, a
    rst $10
    cpl
    rst $28
    rra
    rst $08
    ccf
    rra
    rst $38
    ccf
    rst $38
    ld b, b
    ccf
    add b
    ld a, a
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
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $ff
    rrca
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld d, e
    rst $38
    or [hl]
    rst $38
    ld [hl], $ff
    inc l
    rst $38
    ld c, h
    rst $38
    ld e, c
    rst $38
    reti


    rst $38
    or e
    rst $38
    or e
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, d
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    pop hl
    add d
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
    rst $38
    rst $38
    ld a, d
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    ld [$047f], sp
    ccf
    dec b
    ccf
    rrca
    ccf
    rrca
    ccf
    ld e, $7f
    ld l, $7f
    cpl
    ld a, a
    rrca
    rst $38
    nop
    rrca
    ld [bc], a
    rra
    inc bc
    rra
    nop
    rrca
    ld bc, $001f
    rra
    inc bc
    ld e, $03
    rra
    nop
    rra
    inc bc
    inc e
    inc bc
    inc a
    rlca
    jr c, @+$11

    jr nc, @+$03

    ld a, $1f
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rP1]
    rst $38
    nop
    cp a
    nop
    ei
    nop
    ld h, e
    nop
    ldh [$c0], a
    rst $38
    ret nz

    rst $38
    add b
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
    rst $38
    rst $38
    cp $ff
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
    ldh [rIE], a
    ei
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    adc a
    nop
    ld e, e
    nop
    dec c
    nop
    ldh [rP1], a
    db $f4
    ld a, [$fcff]
    rst $38
    db $f4
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    ret z

    rst $38
    xor b
    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    sub h
    rst $38
    adc b
    rst $38
    ldh [rIE], a
    add h
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    sub d
    rst $38
    jr @+$01

    db $10
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ret z

    rst $38
    ldh a, [rIE]
    push hl
    rst $38
    ret nc

    rst $38
    add sp, -$01
    ldh [rIE], a
    ld a, [c]
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    inc bc
    db $fc
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

    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    ld a, a
    add b
    rst $38
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
    add c
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
    nop
    add sp, $00
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fdff]
    rst $38
    db $ed
    rst $38
    db $f4
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    nop
    ld [hl], h
    nop
    xor b
    nop
    ld [hl], b
    nop
    ld e, e
    nop
    nop
    nop
    rst $38
    ld bc, $00fe
    rst $38
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $02
    db $fd
    ld bc, $15fe
    ld [$fd02], a
    inc bc
    db $fc
    add hl, bc
    or $11
    xor $01
    cp $05
    ld a, [$fd02]
    ld b, b
    rst $38
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $08
    rst $30
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
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    rst $28
    nop
    dec b
    ld a, [$ea15]
    nop
    rst $38
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
    db $fd
    ld [bc], a
    ei
    inc b
    db $e4
    rra
    ret z

    ccf
    jr z, @+$01

    ld [hl], d
    db $fd
    ld d, $e9
    cp $01
    cp $01
    ld a, $01
    ld a, [hl-]
    dec b
    ld a, [hl-]
    dec b
    ld a, [hl-]
    dec b
    ld a, [de]
    dec h
    ld a, [de]
    dec h
    ld a, [$fa05]
    dec b
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    or d
    nop
    nop
    nop
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, d
    rst $38
    ld [$24ff], sp
    rst $38
    ld d, d
    rst $38
    db $10
    rst $38
    ld h, h
    rst $38
    ld [bc], a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl+]
    push de
    rra
    ldh [$7f], a
    add b
    sub a
    add sp, $00
    rst $38
    rrca
    ldh a, [rNR12]
    db $ed
    daa
    ret c

    add hl, de
    and $3f
    ret nz

    ld d, a
    xor b
    dec e
    ld [c], a
    ld e, a
    and b
    rst $00
    jr c, jr_092_7a92

    add b
    cp a
    ld b, b
    ld e, a
    and b
    ld [hl], a
    adc b
    rst $28
    db $10
    cp e
    ld b, h
    rst $38
    nop
    sbc $20
    rst $28
    db $10
    ld a, a
    add b
    rst $18
    jr nz, jr_092_7aa8

    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    xor [hl]
    ld b, b
    cp a
    ld b, b
    rst $28
    db $10
    ld hl, sp+$00
    xor $10
    ld hl, sp+$00
    cp $00
    ei
    nop
    cp $00
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    ld l, l
    sub d
    ld e, $e0
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3b], a
    call nz, Call_092_7c83
    rlca
    ld hl, sp+$2f
    ret nc

    rra
    ldh [$1f], a
    ldh [rWX], a
    or h
    ld h, l
    nop
    ld a, [$7300]
    adc h
    add [hl]
    ld a, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$00
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
    ret nz

    rlca
    ret nz

    rlca
    add b
    ld l, a
    add b
    ld a, a
    add b
    ld [hl], a
    add b
    ld l, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a

jr_092_7a92:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, l
    add b
    ld a, b
    add b
    ld d, b
    add b
    ld b, b
    nop
    nop
    rlca
    nop
    rrca
    inc b

jr_092_7aa8:
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    ld [$f807], sp
    rrca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [$94], a
    rst $38
    jr @+$01

    and b
    rst $38
    inc d
    rst $38
    ret nz

    rst $38
    db $10
    rst $38
    add d
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
    nop
    ld sp, hl
    nop
    or $00
    rst $38
    nop
    rst $00
    jr c, jr_092_7b70

    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add b
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    db $e4
    nop
    add sp, $00
    ld b, b
    nop
    sub b
    nop
    ldh [rP1], a
    and b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    or b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    add b
    nop
    ld hl, sp+$00
    db $fc
    nop
    ldh a, [rP1]
    db $e4
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, [$f800]
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ld d, b
    nop
    jr nc, jr_092_7b56

jr_092_7b56:
    jp z, $9f00

    ld h, b
    ld c, $f1
    rra
    ldh [$1f], a
    ldh [$3e], a
    pop bc
    ld a, $c1
    ld [$c0f7], sp
    rst $38
    push bc
    rst $38
    jp nz, $c0ff

    rst $38
    pop hl
    rst $38

jr_092_7b70:
    pop bc
    rst $38
    set 7, a
    adc a
    rst $38
    cp h
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
    ld sp, hl
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
    nop
    nop
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $28
    db $10
    inc de
    db $fc
    ld d, b
    cp a
    db $10
    rst $38
    ld de, $10fe
    rst $38
    db $10
    rst $38
    inc d
    ei
    add b
    ld a, a
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
    ld [$80f7], sp
    rst $38
    ld d, c
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    ld d, b
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
    and l
    nop
    ret nc

    nop
    db $fc
    nop
    rst $38
    nop
    add sp, $00
    add d
    nop
    ld de, $2000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl-]
    push bc
    add b
    nop
    nop
    nop
    jr nz, jr_092_7c16

jr_092_7c16:
    nop
    nop
    ld d, d
    nop
    db $ed
    ld [bc], a
    ld a, d
    add h
    inc bc
    db $fc
    add e
    ld a, h
    add a
    ld a, b
    rlca
    ld hl, sp+$0d
    ld a, [c]
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
    add b
    rst $38
    add d
    rst $38
    adc d
    rst $38
    ld a, [$feff]
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
    nop
    rst $38
    ld bc, $41fe
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_092_7c5f:
    nop
    nop

jr_092_7c61:
    rst $38
    nop
    rst $38
    nop

jr_092_7c65:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    jr nc, jr_092_7c5f

    jr nc, jr_092_7c61

    jr nz, @+$01

    jr nc, jr_092_7c65

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    add b
    nop

Call_092_7c83:
    rst $38
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
    ld [bc], a
    rst $18
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    rra
    ld b, d
    nop
    sub c
    nop
    nop
    nop
    sbc [hl]
    ld h, b
    add h
    nop
    jr nz, jr_092_7ca4

jr_092_7ca4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_092_7cb3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    nop
    cp $01
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld de, $0f00
    nop
    rrca
    nop
    ld [$9800], sp
    nop
    ld a, [hl]
    nop
    rst $28
    db $10
    pop hl
    ld e, $e0
    rra
    pop hl
    ld e, $ef
    db $10
    ld a, h
    add e
    ld a, b
    add a
    ld [$08f7], sp
    rst $30
    jr nc, jr_092_7cb3

    nop
    rst $38
    ld [hl-], a
    rst $38
    sub d
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
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
    add sp, $17
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

jr_092_7d15:
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    ld b, [hl]

jr_092_7d1d:
    ld sp, hl
    ld [hl], c
    adc $11
    xor $10
    rst $28
    db $10
    rst $28
    inc b
    ei
    inc b
    ei
    inc d
    db $eb
    jr jr_092_7d15

    inc c
    di
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
    jr nz, jr_092_7d1d

    nop
    rst $38
    nop
    ld b, b
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $1fff
    rra
    jr jr_092_7d6e

    ld e, l
    cp $7d
    cp $ff
    rst $38
    db $76
    rst $38
    add hl, hl
    nop
    inc de
    nop
    ld [de], a
    nop
    sub a
    nop
    ld d, d
    nop
    adc c
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_092_7d6e:
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
    ld b, $00
    rst $28
    nop
    sbc h
    ld h, e
    inc sp
    rst $38
    inc sp
    nop
    ld [$1800], sp
    nop
    sub [hl]
    add hl, bc
    sub b
    rrca
    sub b
    rrca
    adc b
    rlca
    ld a, d
    dec b
    ei
    inc b
    jp $803c


    ld a, a
    add b
    ld a, a
    cp e
    ld b, h
    push hl
    ld a, [de]
    ld h, c
    sbc [hl]
    inc bc
    db $fc
    inc bc
    db $fc
    dec b
    ld a, [$ff0b]
    add hl, hl
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    nop
    add b
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
    rra
    nop
    sub b
    ld a, a
    db $10
    rst $38
    db $10
    rst $38
    ld c, $f9
    ld c, $f9
    dec bc
    db $fc
    dec h
    sbc $a4
    ld e, a
    inc [hl]
    rst $08
    ld [hl], d
    adc a
    ld [hl], d
    adc a
    ld d, [hl]
    xor e
    rrca
    pop af
    ld e, a
    and c
    ld a, $c1
    ld l, a
    sub b
    ccf
    ret nz

    inc hl
    call c, $f807
    rla
    add sp, $1f
    ldh [$1f], a
    ldh [$3b], a
    call nz, $d02f
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
    nop
    nop
    ld c, b
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    cp $ff
    ldh [rIE], a
    ld b, c
    rst $38
    dec sp
    ld c, a
    add c
    ld a, a
    rst $38
    rst $38
    ld [$5aff], a
    nop
    dec d
    nop
    adc d
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $10
    nop
    cpl
    nop
    rla
    nop
    rla
    nop
    ld bc, $0200
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld a, [bc]
    nop
    dec hl
    nop
    ld e, $00
    rlca
    nop
    rlca
    nop
    ld b, $00
    dec b
    nop
    inc b
    nop
    call c, $ff00
    nop
    nop
    rst $38
    ld [hl], b
    rst $38
    sbc h
    nop
    ld [bc], a

jr_092_7e73:
    nop
    add a
    nop
    xor c
    ld b, [hl]
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp-$11

Call_092_7e81:
    nop
    cp $00
    cpl
    ret nz

    cpl
    ret nz

    rst $30
    ld [$3cc3], sp
    jp nz, $fe3d

    ld bc, $01fe
    jr nz, jr_092_7e73

    sub b
    rst $38
    ldh a, [rIE]
    db $fd
    rst $38
    rst $38
    rst $38
    sbc $ff
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
    rlca
    nop
    rst $38
    nop
    ld b, b
    rst $38
    add h

jr_092_7eb3:
    ld a, e
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    jr jr_092_7eb3

    sbc h
    ld [hl], e
    ld bc, $0cfe
    ei
    or b
    ld c, a
    dec [hl]
    adc $bd
    ld b, [hl]
    db $eb
    ld d, $03
    cp $c0
    cp a
    add $b9
    add h
    ei
    rlca
    ld hl, sp+$6b
    call nc, $64db
    and e
    ld a, h
    and c
    ld a, [hl]
    ret nz

    ccf
    ret nc

    ccf
    db $10
    rst $28
    dec b
    ld a, [$fe01]
    nop
    rst $38
    inc d
    db $eb
    dec bc
    db $f4
    inc c
    di
    ret nc

    cpl
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp-$01
    ret nz

    ld a, [$f600]
    nop
    rst $38
    ld b, b
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
    nop
    sub a
    nop
    ld a, e
    nop
    rst $18
    nop
    ret c

    daa
    db $ed
    ld [de], a
    ei
    inc b
    cp $01
    ei
    inc b
    cp $01
    cp l
    ld [bc], a
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld l, a
    nop
    rra
    nop
    ld a, e
    nop
    rra
    nop
    ld d, a
    nop
    rrca
    nop
    rrca
    nop
    dec d
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    dec c
    nop
    ld c, e
    nop
    rra
    nop
    xor a
    nop
    rra
    nop
    ld a, d
    nop
    ld l, a
    nop
    ld a, a
    nop
    rra
    nop
    or a
    nop
    rst $30
    nop
    or [hl]
    nop
    cp [hl]
    nop
    call nc, $fe00
    nop
    cp $00
    rst $38
    nop
    cp l
    nop

jr_092_7f60:
    call c, $0800
    nop
    add hl, bc
    nop
    inc de
    nop
    ccf
    nop
    ld sp, hl
    ld b, $88
    rst $38
    rst $28
    rst $38
    ld l, $00
    xor d
    nop
    or a
    nop
    rst $18
    nop
    rst $18
    nop
    and a
    jr jr_092_7f60

    inc e
    rst $30
    ld [$00df], sp
    rst $18
    nop
    rst $30
    ld [$08f7], sp
    or $09
    db $fd
    ld [bc], a
    adc $31
    ld d, e
    xor h
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
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
    inc b
    ei
    ld b, [hl]
    cp c
    ld b, d
    cp l
    ld hl, $27de
    call c, Call_092_7e81
    add d
    ld a, a
    add b
    ld a, a
    ld d, c
    xor a
    jp nz, $9ebd

    ld h, c
    sbc [hl]
    ld h, c
    adc a
    ld [hl], b
    rst $28
    jr nc, @+$63

    cp [hl]
    add hl, sp
    sub $08
    rst $30
    ld c, d
    or l
    ld c, $f1
    jp $4f3f


    cp a
    rrca
    rst $38
    rst $28
    rra
    rst $38
    rra
    nop
    rra
    nop
    rra
    add b
    rst $30
    nop
    add hl, de
    nop
    rlca
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
