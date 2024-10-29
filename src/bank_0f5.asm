SECTION "ROM Bank $0f5", ROMX[$4000], BANK[$f5]

    nop
    nop
    rrca
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f5_404f

    nop
    nop
    jr nz, jr_0f5_4053

    nop
    nop
    jr nz, jr_0f5_4057

    nop
    nop
    rra
    rra
    nop
    nop
    dec de
    rra
    nop
    nop
    rra
    dec de
    ld bc, $fb01
    rst $38
    inc bc
    inc bc
    db $fd
    cp $07
    rlca
    rst $38
    rst $38
    inc c
    rrca
    ld a, a
    rst $38
    ld [$7c0f], sp
    rst $38
    ld [$380f], sp
    rst $38
    ld [$080f], sp
    rst $38
    rlca
    inc b
    adc b
    ld a, a
    rlca
    inc b
    rst $38
    ld a, a
    rlca
    inc b
    ldh [$7f], a
    rlca
    inc b
    ld h, b

jr_0f5_404f:
    rst $38
    ld b, $05
    ld h, b

jr_0f5_4053:
    rst $38
    rlca
    inc b
    rst $38

jr_0f5_4057:
    ld a, a
    rlca
    inc b
    ldh [$7f], a
    rlca
    inc b
    ldh [$7f], a
    rlca
    rlca
    ldh [rIE], a
    dec c
    dec bc
    ldh [rIE], a
    dec c
    dec bc
    pop hl
    rst $38
    rrca
    rrca
    ldh [rIE], a
    inc b
    rlca
    and b
    cp a
    inc bc
    inc bc
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f5_40bb

    nop
    nop
    jr nz, jr_0f5_40bf

    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f5_40cb

    nop
    nop
    jr nz, jr_0f5_40cf

    nop
    nop
    jr nz, jr_0f5_40d3

    nop
    nop
    jr nz, jr_0f5_40d7

    nop
    nop
    jr nz, jr_0f5_40db

    nop
    nop
    jr nz, jr_0f5_40df

    nop
    nop
    jr nz, jr_0f5_40e3

    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf

jr_0f5_40bb:
    ccf
    nop
    nop
    ld a, a

jr_0f5_40bf:
    ld a, a
    add b
    add b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]

jr_0f5_40cb:
    nop
    ld [$00f8], sp

jr_0f5_40cf:
    nop
    ld [$00f8], sp

jr_0f5_40d3:
    nop
    ld hl, sp-$08
    nop

jr_0f5_40d7:
    nop
    ld hl, sp-$08
    nop

jr_0f5_40db:
    nop
    ld hl, sp-$08
    nop

jr_0f5_40df:
    nop
    ldh a, [$f0]
    nop

jr_0f5_40e3:
    nop
    sbc $fe
    nop
    nop
    cp a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    sbc a
    rst $38
    add b
    add b
    adc [hl]
    rst $38
    add b
    add b

Jump_0f5_40fc:
    adc h
    rst $38
    add b
    add b
    adc h
    rst $38
    add b
    add b
    rst $38
    ld hl, sp-$80
    add b
    adc a
    ld hl, sp-$80
    add b
    adc [hl]
    ld sp, hl
    add b
    add b
    adc h
    ei
    add b
    add b
    rst $38
    ld hl, sp-$80
    add b
    rrca
    ld hl, sp-$80
    add b
    rrca
    ld hl, sp-$80
    add b
    cpl
    rst $38
    add b
    add b
    cpl
    rst $38
    add b
    add b
    rst $08
    rst $30
    add b
    add b
    add a
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    add [hl]
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld a, a
    ld a, l
    nop
    nop
    db $fd
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $df01
    rst $38
    ld bc, $8f01
    rst $38
    ld bc, $0f01
    rst $38
    ld [bc], a
    inc bc
    ld c, $ff
    dec b
    ld b, $10
    rst $38
    rlca
    inc b
    jr nc, @+$01

    rlca
    inc b
    rst $18
    ld a, a
    inc b
    rlca
    jr nz, @+$01

    ld [bc], a
    inc bc
    jr nc, @+$01

    ld bc, $1001
    rst $38
    ld bc, $1f01
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld l, b
    ld e, a
    nop
    nop
    ld l, b
    ld e, a
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ld a, b
    ld b, a
    nop
    nop
    ld [hl], e
    ld c, a
    nop
    nop
    jr nz, jr_0f5_4233

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f5_423b

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld hl, $003f
    nop
    ccf
    ccf
    nop
    nop
    ld e, [hl]
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e

jr_0f5_4233:
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]

jr_0f5_423b:
    ld a, [hl]
    nop
    nop
    cp $fe
    ldh [$e0], a
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $ec
    db $fc
    nop
    nop
    ld e, a
    cp a
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    cpl
    rst $38
    add b
    add b
    cpl
    rst $38
    add b
    add b
    daa
    rst $38
    add b
    add b
    ld h, $ff
    add b
    add b
    push bc
    cp $80
    add b
    ld a, a
    db $fc
    add b
    add b
    ld b, a
    db $fc
    add b
    add b
    ld b, a
    db $fc
    add b
    add b
    cp $fd
    add b
    add b
    ld b, $f9
    add b
    add b
    ld b, d
    db $fd
    add b
    add b
    ld [hl+], a
    db $fd
    add b
    add b
    ld [hl+], a
    db $fd
    add b
    add b
    inc hl
    rst $38
    add b
    add b
    jp $80ff


    add b
    ld b, c
    rst $38
    add b
    add b
    add c
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    jp $80ff


    add b
    rst $38
    rst $38
    add b
    add b
    db $fc
    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    and b
    cp a
    add b
    add b
    and b
    cp a
    add b
    add b
    sub b
    sbc a
    add b
    add b
    sub b
    sbc a
    add b
    add b
    db $10
    rra
    add b
    add b
    db $10
    rra
    add b
    add b
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    rrca
    dec c
    nop
    nop
    db $fd
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld b, $07
    ccf
    rst $38
    inc b
    rlca
    ld a, $ff
    inc b
    rlca
    inc e
    rst $38
    inc b
    rlca
    inc b
    rst $38
    rrca
    ld [$ff04], sp
    rrca
    ld [$ff3f], sp
    inc c
    dec bc
    ld h, b
    rst $38
    ld c, $09
    ld h, b
    rst $38
    ld c, $09
    and b
    cp a
    inc c
    dec bc
    cp a
    cp a
    rrca
    rrca
    and b
    cp a
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    ld a, a
    rrca
    ld [$ff43], sp
    rlca
    rlca
    pop bc
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0f5_43c7

    nop
    nop
    jr nz, jr_0f5_43cb

    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop

jr_0f5_43b6:
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
    ret nz

    ret nz

    nop
    nop
    jr nc, jr_0f5_43b6

    nop

jr_0f5_43c7:
    nop
    ld [$00f8], sp

jr_0f5_43cb:
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld c, a
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    cp $f9
    add b
    add b
    ld c, [hl]
    ld sp, hl
    add b
    add b
    ld c, h
    ei
    add b
    add b
    ld c, h
    ei
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rlca
    rst $38
    add b
    add b
    rlca
    rst $38
    add b
    add b
    ld b, a
    cp $80
    add b
    ld b, a
    ld sp, hl
    nop
    nop
    add [hl]
    cp $00
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ldh a, [$f0]

jr_0f5_4446:
    nop
    nop
    ld d, b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    jr nc, @-$0e

    nop
    nop
    jr nc, jr_0f5_4446

    nop
    nop
    jr nc, @-$0e

    nop
    nop
    jr nc, @-$0e

jr_0f5_445e:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0f5_445e

    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    rrca
    dec c
    nop
    nop
    db $fd
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld b, $07
    ccf
    rst $38
    inc b
    rlca
    ld a, $ff
    inc b
    rlca
    inc e
    rst $38
    inc b
    rlca
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    rlca
    inc b
    ccf
    rst $38
    ld b, $05
    jr nz, @+$01

    rlca
    inc b
    jr nz, @+$01

    rlca
    inc b
    jr nz, @+$01

    rlca
    inc b
    ccf
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    ret nz

    cp a
    rlca
    inc b
    add e
    ld a, a
    inc bc
    inc bc
    pop bc
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add h
    rst $38
    ld bc, $fc01
    rst $38
    ld bc, $8401
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    dec e
    dec e
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop

jr_0f5_4536:
    jr c, jr_0f5_4577

    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    rra
    rra
    ret nz

    ret nz

    nop
    nop
    jr nc, jr_0f5_4536

    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld c, a
    rst $38
    ret nz

jr_0f5_4577:
    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    db $fd
    ei
    add b
    add b
    ld c, l
    ei
    nop
    nop
    ld c, l
    ei
    nop
    nop
    ld c, l
    ei
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    daa
    db $fd
    nop
    nop
    dec h
    ei
    nop
    nop
    add $fe
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ldh a, [$f0]
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    rrca
    dec c
    nop
    nop
    db $fd
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld b, $07
    ccf
    rst $38
    inc b
    rlca
    ld a, $ff
    inc b
    rlca
    inc e
    rst $38
    inc b
    rlca
    inc b
    rst $38
    rlca
    inc b
    add h
    ld a, a
    rlca
    inc b
    sbc a
    ld a, a
    dec b
    ld b, $00
    rst $38
    inc bc
    ld [bc], a
    sub b
    ld a, a
    inc bc
    ld [bc], a
    sub b
    ld a, a
    inc bc
    ld [bc], a
    sbc a
    ld a, a
    inc bc
    ld [bc], a
    ldh a, [rIE]
    inc bc
    inc bc
    ldh [rIE], a
    ld [bc], a
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh [$df], a
    ld [bc], a
    inc bc
    jp $013f


    ld bc, $ff81
    nop
    nop
    add d
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    inc bc
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    ld b, $ff
    ld [bc], a
    inc bc
    dec bc
    ei
    inc b
    rlca
    dec bc
    ei
    inc b
    rlca
    ld a, [bc]
    ei
    inc b
    rlca
    ld a, [bc]
    ei
    inc b
    rlca
    ld a, [bc]
    ei
    inc b
    rlca
    ld a, [bc]
    ei
    inc b
    rlca
    ld a, [bc]
    ei
    inc bc
    inc bc
    pop af
    pop af
    ld bc, $c001
    ret nz

    ld bc, $c001
    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca

jr_0f5_46b6:
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    nop
    nop
    ld bc, $c001
    ret nz

    nop
    nop
    jr nc, jr_0f5_46b6

    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld c, a
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    ei
    db $fc
    add b
    add b
    ld c, e
    db $fd
    nop
    nop
    ld c, e
    db $fd
    nop
    nop
    ld c, d
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    ld h, $fa
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    call nz, Call_000_00fc
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    jr c, jr_0f5_47a6

    nop
    nop
    jr c, @+$3a

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    rrca
    dec c
    nop
    nop

jr_0f5_47a6:
    db $fd
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld b, $07
    ccf
    rst $38
    inc b
    rlca
    ld a, $ff
    inc b
    rlca
    inc e
    rst $38
    inc b
    rlca
    inc b
    rst $38
    ld [bc], a
    inc bc
    call nz, $013f
    ld bc, $3fdf
    ld bc, $6001
    sbc a
    nop
    nop
    ldh [$9f], a
    nop
    nop
    ldh [$9f], a
    nop
    nop
    rst $28
    sbc a
    nop
    nop
    sub b
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld [hl], c
    ld c, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add e
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $8301
    rst $38
    ld bc, $fc01
    db $fc
    ld bc, $0401
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    ld [$02f8], sp
    inc bc
    ld [$04f8], sp
    rlca
    ld [$04f8], sp
    rlca
    ld [$04f8], sp
    rlca
    db $10
    ldh a, [rSC]
    inc bc
    db $10
    ldh a, [rSB]
    ld bc, $e0e0
    dec e
    dec e
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca

jr_0f5_4836:
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    jr nc, jr_0f5_4836

    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld c, a
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    rst $38
    db $fd
    add b
    add b
    ld c, [hl]
    ld a, [$0000]
    ld c, h
    db $fc
    nop
    nop
    ld c, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    call nz, Call_000_00fc
    nop
    add h
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f5_491d

    ld b, b
    ret nz

    jr nz, jr_0f5_4921

    add b
    add b
    rra
    rra
    nop
    nop
    ld c, $0e
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    add b
    add b
    inc e
    rra
    add b
    add b
    ccf
    ccf
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop

jr_0f5_491d:
    nop
    dec c
    rrca
    nop

jr_0f5_4921:
    nop
    rrca
    dec c
    nop
    nop
    db $fd
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld b, $07
    ccf
    rst $38
    inc b
    rlca
    ld a, $ff
    inc b
    rlca
    inc e
    rst $38
    inc b
    rlca
    inc b
    rst $38
    rlca
    inc b
    add h
    ld a, a
    rlca
    inc b
    sbc a
    ld a, a
    dec b
    ld b, $00
    rst $38
    inc bc
    ld [bc], a
    sub b
    ld a, a
    inc bc
    ld [bc], a
    sub b
    ld a, a
    inc bc
    ld [bc], a
    sbc a
    ld a, a
    inc bc
    ld [bc], a
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    ld [bc], a
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh [$df], a
    ld [bc], a
    inc bc
    jp $013f


    ld bc, $ffc1
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    jp Jump_000_00ff


    nop
    rst $38
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0f5_49e8

    nop
    nop
    jr c, jr_0f5_49ec

    nop
    nop

jr_0f5_49b6:
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    ld bc, $fc01
    db $fc
    ret nz

    ret nz

    nop
    nop
    jr nc, jr_0f5_49b6

    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $28
    rst $38
    nop
    nop

jr_0f5_49e8:
    rst $18
    ccf
    add b
    add b

jr_0f5_49ec:
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld c, a
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    rst $38
    db $fc
    add b
    add b
    ld c, e
    db $fd
    nop
    nop
    ld c, e
    db $fd
    nop
    nop
    ld c, d
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    ld h, $fa
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    call nz, Call_000_00fc
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    adc [hl]
    cp $00
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rra
    rra
    nop
    nop
    inc e
    rra
    add b
    add b
    rra
    rra
    nop
    nop
    add hl, sp
    ccf
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld h, d
    ld a, [hl]
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    rrca
    dec c
    nop
    nop
    db $fd
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld b, $07
    ccf
    rst $38
    inc b
    rlca
    ld a, $ff
    inc b
    rlca
    inc e
    rst $38
    inc b
    rlca
    inc b
    rst $38
    rlca
    inc b
    inc b
    rst $38
    rlca
    inc b
    ccf
    rst $38
    ld b, $05
    jr nz, @+$01

    rlca
    inc b
    jr nz, @+$01

    rlca
    inc b
    jr nz, @+$01

    rlca
    inc b
    ccf
    rst $38
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    ret nz

    cp a
    rlca
    inc b
    add e
    ld a, a
    inc bc
    inc bc
    pop bc
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    rra
    rra
    nop
    nop
    dec e
    dec e
    nop
    nop
    dec e
    dec e
    nop
    nop

jr_0f5_4b36:
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    nop
    jr nc, jr_0f5_4b36

    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld c, a
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    db $fd
    ei
    add b
    add b
    ld c, l
    ei
    nop
    nop
    ld c, l
    ei
    nop
    nop
    ld c, l
    ei
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rlca
    rst $38

jr_0f5_4b9a:
    nop
    nop
    rlca
    rst $38
    nop
    nop
    daa
    db $fd

jr_0f5_4ba2:
    nop
    nop
    dec h
    ei

jr_0f5_4ba6:
    nop
    nop
    add $fe
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0f5_4b9a

    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0f5_4ba2

    nop
    nop
    jr nz, jr_0f5_4ba6

    nop
    nop
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    and b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a

jr_0f5_4bea:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    jr nc, jr_0f5_4bea

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    rrca
    dec c
    nop
    nop
    db $fd
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld b, $07
    ccf
    rst $38
    inc b
    rlca
    ld a, $ff
    inc b
    rlca
    inc e
    rst $38
    inc b
    rlca
    inc b
    rst $38
    rrca
    ld [$ff04], sp
    rrca
    ld [$ff3f], sp
    inc c
    dec bc
    ld h, b
    rst $38
    ld c, $09
    ld h, b
    rst $38
    ld c, $09
    and b
    cp a
    inc c
    dec bc
    cp a
    cp a
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    ld a, a
    rrca
    ld [$ff41], sp
    rlca
    rlca
    and b
    cp a
    nop
    nop
    jr nz, jr_0f5_4cb3

    nop
    nop
    jr nz, jr_0f5_4cb7

    nop
    nop
    jr nz, jr_0f5_4cbb

    nop
    nop
    jr nz, jr_0f5_4cbf

    nop
    nop
    jr nz, jr_0f5_4cc3

    nop
    nop
    jr nz, jr_0f5_4cc7

    nop
    nop
    ccf
    ccf
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    inc sp
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    ld bc, $ff01

jr_0f5_4cb3:
    rst $38
    nop
    nop

jr_0f5_4cb6:
    rst $38

jr_0f5_4cb7:
    rst $38
    nop
    nop
    ccf

jr_0f5_4cbb:
    ccf
    nop
    nop
    rlca

jr_0f5_4cbf:
    rlca
    ret nz

    ret nz

    nop

jr_0f5_4cc3:
    nop
    jr nc, jr_0f5_4cb6

    nop

jr_0f5_4cc7:
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld c, a
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    cp $f9
    add b
    add b
    ld c, [hl]
    ld sp, hl
    add b
    add b
    ld c, h
    ei
    add b
    add b
    ld c, h
    ei
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rlca
    rst $38
    add b
    add b
    rlca
    rst $38
    add b
    add b
    daa
    cp $80
    add b
    ld h, $f9
    add b
    add b
    rst $00
    rst $38
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, @-$1e

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    rrca
    dec c
    nop
    nop
    db $fd
    rst $38
    ld bc, $fe01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld b, $07
    ccf
    rst $38
    inc b
    rlca
    ld a, $ff
    inc b
    rlca
    inc e
    rst $38
    inc b
    rlca
    inc b
    rst $38
    rrca
    ld [$ff04], sp
    ld c, $09
    ld a, a
    rst $38
    ld c, $09
    ld h, b
    rst $38
    jr jr_0f5_4de5

    and b
    cp a
    inc e
    inc de
    and b
    cp a
    dec e
    inc de
    ccf
    ccf
    add hl, de
    rra
    ld b, b
    ld a, a
    rra
    rra
    ld b, b
    ld a, a
    rla
    rra
    ld b, b
    ld a, a
    rra

jr_0f5_4de5:
    rra
    ld b, b
    ld a, a
    dec d
    dec de
    ld b, c
    ld a, a
    ld c, $0e
    jr nc, jr_0f5_4e2f

    nop
    nop
    jr nc, jr_0f5_4e33

    nop
    nop
    jr nc, jr_0f5_4e37

    nop
    nop
    jr jr_0f5_4e1b

    nop
    nop
    jr jr_0f5_4e1f

    nop
    nop
    jr jr_0f5_4e23

    nop
    nop
    rla
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, d

jr_0f5_4e1b:
    ld a, a
    nop
    nop
    ld b, c

jr_0f5_4e1f:
    ld a, a
    nop
    nop
    ld b, c

jr_0f5_4e23:
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ld e, $1e
    ld bc, $dc01

jr_0f5_4e2f:
    call c, Call_000_0101
    db $fc

jr_0f5_4e33:
    db $fc
    nop
    nop

jr_0f5_4e36:
    db $fc

jr_0f5_4e37:
    db $fc
    nop
    nop
    ld a, l
    ld a, l
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

    nop
    nop
    jr nc, jr_0f5_4e36

    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld c, a
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    ld b, [hl]
    rst $38
    ld b, b
    ret nz

    rst $38
    db $fc
    ld b, b
    ret nz

    ld c, a
    db $fc
    ld b, b
    ret nz

    ld c, a
    db $fc
    ld b, b
    ret nz

    ld c, a
    db $fc
    ld b, b
    ret nz

    db $fc
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh [$e0], a
    rlca
    rst $38
    ldh a, [$d0]
    daa
    rst $38
    ld [hl], b
    sub b
    daa
    cp $e0
    ld h, b
    push bc
    db $fd
    add b
    add b
    adc b
    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh a, [$f0]
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f001
    ldh a, [rSC]
    inc bc
    ld [$04f8], sp
    rlca
    inc b
    db $fc
    ld [$340f], sp
    db $fc
    ld [$7c0f], sp
    db $fc
    inc b
    rlca
    cp a
    rst $38
    ld [bc], a
    inc bc
    ld hl, sp+$7f
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    pop hl
    rst $38
    inc bc
    inc bc
    db $10
    rst $38
    ld [bc], a
    inc bc
    ld [$04ff], sp
    rlca
    ld [$04ff], sp
    rlca
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc c
    rst $38
    inc bc
    ld [bc], a
    rla
    rst $38
    inc bc
    ld [bc], a
    ld hl, sp+$7f
    inc bc
    ld [bc], a
    ldh a, [$7f]
    inc bc
    ld [bc], a
    di
    ld a, a
    inc bc
    ld [bc], a
    cp [hl]
    ld a, a
    ld [bc], a
    inc bc
    ret nc

    ccf
    ld bc, $c001
    rst $38
    ld bc, $8001
    rst $38
    inc bc
    inc bc
    ld bc, $07ff
    rlca
    ld b, $ff
    rlca
    rlca
    sbc [hl]
    rst $38
    rlca
    rlca
    ld a, [$04fb]
    rlca
    ld e, $ff
    ld [bc], a
    inc bc
    ld b, $ff
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld bc, $0201
    rst $38
    nop
    nop
    adc l
    db $fd
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    jr z, @-$06

    nop
    nop
    jr z, @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    inc h
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$e0f8], sp
    ldh [rNR33], a
    db $fd
    sub b
    ldh a, [rNR44]
    rst $38
    sub b
    ldh a, [rSCX]
    rst $38
    ldh a, [$f0]
    ret nz

    rst $38
    sub b
    ldh a, [$c1]
    rst $38
    ldh a, [$f0]
    jp nz, $90fe

    ldh a, [rP1]
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
    nop
    nop
    dec c
    dec bc
    nop
    nop
    ld e, $11
    nop
    nop
    rla
    jr jr_0f5_5099

jr_0f5_5099:
    nop
    dec bc
    inc c
    nop
    nop
    dec b
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ccf
    dec sp
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    adc [hl]
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld a, $3f
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f5_513b

    nop
    nop
    jr nz, jr_0f5_513f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f5_5163

    nop
    nop
    jr nz, jr_0f5_5167

    nop
    nop
    rra
    rra
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ccf

jr_0f5_513b:
    ccf
    nop
    nop
    ld a, a

jr_0f5_513f:
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    add c
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    ldh a, [rIE]
    ld b, b

jr_0f5_5163:
    ret nz

    rst $18
    rst $38
    ret nz

jr_0f5_5167:
    ret nz

    rst $38
    cp a
    add b
    add b
    cp a
    rst $38
    ld hl, sp-$08
    db $dd
    rst $28
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $fe
    sub e
    rst $38
    ld a, [$10fe]
    rst $38
    ld [c], a
    cp $10
    rst $38
    add h
    db $fc
    db $10
    rst $38
    sbc b
    ld hl, sp-$01
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    ld b, b
    ret nz

    dec bc
    rst $38
    ld b, b
    ret nz

    jr nc, @+$01

    ld b, b
    ret nz

    ld b, b
    rst $38
    add b
    add b

jr_0f5_51bc:
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    jr nz, jr_0f5_520d

    add b
    add b
    ccf
    ccf
    add b
    add b
    jr c, jr_0f5_5215

    ld b, b
    ret nz

    or b
    cp a
    jr nz, jr_0f5_51bc

    sub b
    sbc a
    db $10
    ldh a, [rOBP0]
    rst $08
    ld [$44f8], sp
    rst $00
    ld [$82f8], sp
    add e
    db $10
    ldh a, [rSB]
    ld bc, $f838
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld e, $1e
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
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

jr_0f5_520d:
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop

jr_0f5_5215:
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $f1f1
    inc bc
    ld [bc], a
    adc a
    ld a, a
    inc bc
    ld [bc], a
    cp a
    ld a, a
    inc bc
    ld [bc], a
    rst $38
    ld a, a
    ld bc, $ff01
    ld a, a
    ld bc, $bf01
    ld a, a
    ld bc, $8e01
    ld a, a
    nop
    nop
    jp nz, Jump_000_00ff

    nop
    ld a, $3f
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f5_52bb

    nop
    nop
    jr nz, jr_0f5_52bf

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f5_52e3

    nop
    nop
    jr nz, jr_0f5_52e7

    nop
    nop
    rra
    rra
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ccf

jr_0f5_52bb:
    ccf
    nop
    nop
    ld a, a

jr_0f5_52bf:
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld b, $fe
    nop
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b

jr_0f5_52e3:
    add b
    cp a
    rst $38
    add b

jr_0f5_52e7:
    add b
    rst $38
    cp a
    nop
    nop
    cp l
    rst $38
    ld hl, sp-$08
    db $db
    rst $20
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $fe
    sub e
    rst $38
    ld a, [$10fe]
    rst $38
    ld [c], a
    cp $10
    rst $38
    add h
    db $fc
    db $10
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    ret nz

    ret nz

    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    ld b, b
    ret nz

    dec bc
    rst $38
    ld b, b
    ret nz

    jr nc, @+$01

    ld b, b
    ret nz

    ld b, b
    rst $38
    add b
    add b

jr_0f5_533c:
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    jr nz, jr_0f5_538d

    add b
    add b
    ccf
    ccf
    add b
    add b
    jr c, jr_0f5_5395

    ld b, b
    ret nz

    or b
    cp a
    jr nz, jr_0f5_533c

    sub b
    sbc a
    db $10
    ldh a, [rOBP0]
    rst $08
    ld [$44f8], sp
    rst $00
    ld [$82f8], sp
    add e
    db $10
    ldh a, [rSB]
    ld bc, $f838
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld e, $1e
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
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

jr_0f5_538d:
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop

jr_0f5_5395:
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    nop
    adc [hl]
    rst $38
    nop
    nop
    add d
    rst $38
    ld bc, $e201
    sbc a
    ld [bc], a
    inc bc
    di
    rrca
    inc b
    rlca
    and $99
    ld b, $05
    adc $f7
    ld b, $05
    ld a, d
    ei
    inc bc
    inc bc
    di
    di
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f5_543b

    nop
    nop
    jr nz, jr_0f5_543f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f5_5463

    nop
    nop
    jr nz, jr_0f5_5467

    nop
    nop
    rra
    rra
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ccf

jr_0f5_543b:
    ccf
    nop
    nop
    ld a, a

jr_0f5_543f:
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld b, $fe
    nop
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b

jr_0f5_5463:
    add b
    cp a
    rst $38
    add b

jr_0f5_5467:
    add b
    rst $38
    cp a
    nop
    nop
    cp l
    rst $38
    ld hl, sp-$08
    db $db
    rst $20
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $fe
    sub e
    rst $38
    db $fc
    db $fc
    db $10
    rst $38
    db $e4
    db $fc
    db $10
    rst $38
    adc b
    ld hl, sp+$10
    rst $38
    sub b
    ldh a, [rIE]
    rst $38
    ldh [$e0], a
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    ld b, b
    ret nz

    inc b
    rst $38
    ld b, b
    ret nz

    dec bc
    rst $38
    ld b, b
    ret nz

    jr nc, @+$01

    ld b, b
    ret nz

    ld b, b
    rst $38
    add b
    add b

jr_0f5_54bc:
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    and b
    cp a
    add b
    add b
    jr nz, @+$41

    add b
    add b
    ccf
    ccf
    add b
    add b
    jr c, jr_0f5_5515

    ld b, b
    ret nz

    or b
    cp a
    jr nz, jr_0f5_54bc

    sub b
    sbc a
    db $10
    ldh a, [rOBP0]
    rst $08
    ld [$44f8], sp
    rst $00
    ld [$82f8], sp
    add e
    db $10
    ldh a, [rSB]
    ld bc, $f838
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld e, $1e
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
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
    ld bc, $f001
    ldh a, [rSC]
    inc bc
    inc c
    db $fc
    inc b

jr_0f5_5515:
    rlca
    ld [bc], a
    cp $04
    rlca
    ld bc, $04ff
    rlca
    ld bc, $04ff
    rlca
    rra
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rra
    rra
    add e
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    adc b
    rst $38
    sbc a
    rst $38
    adc b
    rst $38
    adc a
    rst $38
    ld [$83ff], sp
    rst $38
    nop
    rst $38
    add e
    rst $38
    rrca
    rst $38
    ei
    add a
    ldh a, [rIE]
    ld [hl], l
    ld c, l
    nop
    rst $38
    add hl, sp
    add hl, sp
    nop
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld [$02ff], sp
    inc bc
    ld [$02ff], sp
    inc bc
    ld [hl], a
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0401
    db $fc
    ld bc, $fc01
    db $fc
    ld bc, $8c01
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $8c01
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    pop af
    rst $38
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    cpl
    pop af
    nop
    nop
    rst $28
    pop af
    nop
    nop
    ld d, e
    call c, $8080
    ld d, a
    ret c

    add b
    add b
    ld c, a
    ret z

    add b
    add b
    ld c, e
    call z, $c0c0
    and a
    push hl
    ldh [$e0], a
    dec h
    rst $20
    ldh [$e0], a
    dec d
    rst $30
    ldh [$a0], a
    inc de
    ld a, [c]
    and b
    ld h, b
    add hl, bc
    ld sp, hl
    ret nz

    ret nz

jr_0f5_5630:
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    add e
    rst $38
    add b
    add b
    sbc a
    rst $38
    add b
    add b
    ld h, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f5_568d

    jr nz, jr_0f5_5630

    db $10
    rra
    db $10
    ldh a, [$08]
    rrca
    ld [$08f8], sp
    rrca
    ld [$04f8], sp
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld bc, $0401
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    nop
    ld bc, $f001
    ldh a, [rSC]
    inc bc
    inc c
    db $fc
    inc b

jr_0f5_568d:
    rlca
    ld [bc], a
    cp $04
    rlca
    ld bc, $04ff
    rlca
    ld bc, $04ff
    rlca
    rra
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rra
    rra
    add e
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    adc b
    rst $38
    sbc a
    rst $38
    adc b
    rst $38
    adc a
    rst $38
    ld [$83ff], sp
    rst $38
    nop
    rst $38
    add e
    rst $38
    rrca
    rst $38
    ei
    add a
    ldh a, [rIE]
    ld [hl], l
    ld c, l
    nop
    rst $38
    add hl, sp
    add hl, sp
    nop
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld [$02ff], sp
    inc bc
    ld [$02ff], sp
    inc bc
    ld [hl], a
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0501
    db $fd
    ld bc, $fc01
    db $fc
    ld bc, $8c01
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp-$7d
    add e
    ld hl, sp-$08
    add e
    add e
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    pop af
    rst $38
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    cpl
    pop af
    nop
    nop
    rst $28
    pop af
    nop
    nop
    ld d, e
    call c, $8080
    ld d, a
    ret c

    add b
    add b
    ld c, a
    ret z

    add b
    add b
    ld c, e
    call z, $c0c0
    rst $00
    push bc
    ldh [$e0], a
    dec h
    rst $20
    ldh [$e0], a
    dec h
    rst $20
    ldh [$a0], a
    inc de
    ld a, [c]
    and b
    ld h, b
    add hl, bc
    ld sp, hl
    ret nz

    ret nz

    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    rra
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld h, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f5_5811

    ld b, b
    ret nz

    jr nz, jr_0f5_5815

    ld b, b
    ret nz

    jr nz, jr_0f5_5819

    ld b, b
    ret nz

    jr nz, jr_0f5_581d

    ld b, b
    ret nz

    jr nz, jr_0f5_5821

    ld b, b
    ret nz

    db $10
    rra
    add b
    add b
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    nop
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
    inc b
    rlca
    nop

jr_0f5_5811:
    nop
    ld [$000f], sp

jr_0f5_5815:
    nop
    ld [$000f], sp

jr_0f5_5819:
    nop
    ld [$000f], sp

jr_0f5_581d:
    nop
    ld [$000f], sp

jr_0f5_5821:
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    ld b, $01
    ld bc, $fffe
    inc bc
    inc bc
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fc
    add a
    ld a, a
    rst $38
    ld hl, sp-$79
    ld a, a
    rst $38
    ld a, h
    ld [hl], e
    jr c, @+$01

    inc e
    inc de
    ld [$16ff], sp
    add hl, de
    ld [$0fff], sp
    rrca
    rst $38
    rst $38
    nop
    nop
    jr c, jr_0f5_5893

    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f5_58af

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0201
    cp $01
    ld bc, $fc04
    ld bc, $fc01

jr_0f5_5893:
    db $fc
    ld bc, $f401
    db $fc
    ld bc, $0201
    cp $01
    ld bc, $fe02
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc e

jr_0f5_58af:
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc a
    inc a
    nop
    nop
    cp $fe
    ld bc, $fe01
    cp $00
    nop
    nop
    nop
    nop
    nop

jr_0f5_58c6:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr jr_0f5_58c6

    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld a, $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop

jr_0f5_58e8:
    db $fc
    db $fc
    nop
    nop

jr_0f5_58ec:
    rst $30
    rst $38
    add b
    add b
    ld l, a
    sbc a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a

jr_0f5_58f8:
    rst $38
    rst $38
    ldh [$e0], a
    daa
    rst $38
    ldh [$e0], a
    inc hl
    rst $38
    and b
    ldh [rNR44], a
    rst $38
    jr nz, jr_0f5_58e8

    inc hl
    rst $38
    jr nz, jr_0f5_58ec

    rst $38
    cp $a0
    ld h, b
    ld b, e
    cp $a0
    ld h, b
    ld b, e
    rst $38
    jr nz, jr_0f5_58f8

    ld b, e
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ld hl, sp-$08
    inc bc
    rst $38
    ld hl, sp-$08
    ld bc, $f8ff
    ld hl, sp+$11
    rst $38
    ldh a, [$f0]
    ld de, $00ff
    nop
    dec l
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop

jr_0f5_5944:
    ld [bc], a
    cp $00
    nop

jr_0f5_5948:
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    cp $fe
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    ret nz

    rst $38
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f5_59a1

    jr nz, jr_0f5_5944

    db $10
    rra
    jr nz, jr_0f5_5948

    ld [$400f], sp
    ret nz

    inc b
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    nop
    nop
    ld a, b
    ld a, b
    ld bc, $fe01
    cp $03
    inc bc
    cp $fe
    nop
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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp

jr_0f5_59a1:
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    ld b, $00
    nop
    cp $ff
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38

jr_0f5_59bb:
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    jr c, @+$01

    ld [bc], a
    inc bc
    ld [$03ff], sp
    ld [bc], a
    adc b
    ld a, a
    rra
    ld e, $bf
    ld a, a
    ld hl, $803e
    ld a, a
    ld a, $21
    jr nc, @-$2f

    ld e, $1d
    jr c, jr_0f5_59bb

    inc bc
    inc bc
    rst $28
    rst $28
    ld bc, $c801
    rst $08
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f5_5a2f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0201
    cp $01
    ld bc, $fc04
    ld bc, $fc01
    db $fc
    ld bc, $f401
    db $fc
    ld bc, $0201
    cp $01
    ld bc, $fe02
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc e

jr_0f5_5a2f:
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc a
    inc a
    nop
    nop
    cp $fe
    ld bc, $fe01
    cp $00
    nop
    nop
    nop
    nop
    nop

jr_0f5_5a46:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr jr_0f5_5a46

    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld a, $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    rst $30
    rst $38
    ldh [$e0], a
    ld l, a
    sbc a
    ldh a, [$f0]
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    ld hl, sp-$08
    ld c, a
    rst $38
    add sp, -$08
    ld b, e
    rst $38
    adc b
    ld hl, sp+$42
    rst $38
    ld [$42f8], sp
    rst $38
    ld l, b
    sbc b
    rst $38
    rst $38
    db $ec
    sbc h
    ld b, e
    rst $38
    cp $fe
    ld b, e
    rst $38
    cp $fe
    ld b, e
    rst $38
    cp $fe
    db $fc
    rst $38
    inc c
    db $fc
    inc bc
    db $fc
    ret nc

    jr nc, jr_0f5_5aa6

    rst $38

jr_0f5_5aa6:
    ldh [$e0], a
    ld de, $00ff
    nop
    ld de, $00ff
    nop
    dec l
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop

jr_0f5_5ac4:
    ld [bc], a
    cp $00
    nop

jr_0f5_5ac8:
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    cp $fe
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    ret nz

    rst $38
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f5_5b21

    jr nz, jr_0f5_5ac4

    db $10
    rra
    jr nz, jr_0f5_5ac8

    ld [$400f], sp
    ret nz

    inc b
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    nop
    nop
    ld a, b
    ld a, b
    ld bc, $fc01
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
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
    jr jr_0f5_5b33

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
    nop

jr_0f5_5b21:
    nop
    scf
    ccf
    nop
    nop
    ccf
    scf
    nop
    nop
    scf
    ld a, $01
    ld bc, $fff8
    inc bc
    inc bc
    rst $38

jr_0f5_5b33:
    rst $38
    rlca
    rlca
    pop af
    rst $38
    rlca
    rlca
    ret nz

    rst $38
    ld b, $07
    jr nz, @+$01

    ld [bc], a
    inc bc
    jr nc, @+$01

    ld [bc], a
    inc bc
    rra
    rst $38
    ld bc, $0801
    rst $38
    ld bc, $0801
    rst $38
    nop
    nop
    ld hl, sp-$41
    nop
    nop
    ldh [$9f], a
    nop
    nop
    and b
    rst $18
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ldh a, [$bf]
    nop
    nop
    ldh [$9f], a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld [bc], a
    inc bc
    add hl, bc
    ld sp, hl
    inc bc
    inc bc
    ld sp, hl
    ld sp, hl
    inc bc
    inc bc
    jp hl


    ld sp, hl
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld bc, $0201
    cp $01
    ld bc, $fe02
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    jr c, jr_0f5_5be8

    nop
    nop
    jr c, jr_0f5_5bec

    nop
    nop
    ld a, b
    ld a, b
    ld bc, $fc01
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    cp $fe
    nop
    nop

jr_0f5_5be8:
    rst $38
    ld a, a
    nop
    nop

jr_0f5_5bec:
    ld a, h
    rst $38
    add b
    add b
    ret z

    rst $38
    add b
    add b
    adc b
    rst $38
    add b
    add b
    adc b
    rst $38
    add b
    add b
    adc b
    rst $38
    add b
    add b
    ld a, a
    ld hl, sp-$80
    add b
    rst $08
    ld sp, hl
    ret nz

    ret nz

    ld c, a
    ei
    ret nz

    ret nz

    ld b, a
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ret nz

    ret nz

    daa
    cp $c0
    ret nz

    daa
    db $fd
    add b
    add b
    cp $fe
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld e, d
    cp $00
    nop
    add d
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f5_5ca5

    ld b, b
    ret nz

    db $10
    rra
    add b
    add b
    add hl, bc
    rrca
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f5_5ca5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f5_5d03

    nop
    nop
    jr nz, jr_0f5_5d07

    nop
    nop
    jr nz, jr_0f5_5d0b

    nop
    nop
    rra
    rra
    nop
    nop
    dec de
    rra
    nop
    nop
    rra
    dec de
    ld bc, $fb01
    rst $38
    inc bc
    inc bc
    db $fd
    cp $07
    rlca
    rst $38
    rst $38
    inc c
    rrca
    ld a, a
    rst $38
    ld [$7c0f], sp
    rst $38
    ld [$380f], sp
    rst $38
    ld [$080f], sp
    rst $38
    rlca
    inc b
    adc b
    ld a, a
    rlca
    inc b
    rst $38
    ld a, a
    rlca
    inc b
    ldh [$7f], a
    rlca
    inc b
    ld h, b

jr_0f5_5d03:
    rst $38
    ld b, $05
    ld h, b

jr_0f5_5d07:
    rst $38
    rlca
    inc b
    rst $38

jr_0f5_5d0b:
    ld a, a
    rlca
    inc b
    ldh [$7f], a
    rlca
    inc b
    ldh [$7f], a
    rlca
    rlca
    db $e4
    rst $38
    dec c
    dec bc
    ld [c], a
    rst $38
    dec c
    dec bc
    pop hl
    rst $38
    rrca
    rrca
    ldh [rIE], a
    inc b
    rlca
    and b
    cp a
    inc bc
    inc bc
    inc hl
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    jr z, jr_0f5_5d73

    nop
    nop
    jr c, jr_0f5_5d77

    nop
    nop
    jr c, jr_0f5_5d7b

    nop
    nop
    jr c, jr_0f5_5d7f

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f5_5d73:
    nop
    add b
    add b
    nop

jr_0f5_5d77:
    nop
    ld h, b
    ldh [rP1], a

jr_0f5_5d7b:
    nop
    db $10
    ldh a, [rP1]

jr_0f5_5d7f:
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    sbc $fe
    nop
    nop
    cp a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    sbc a
    rst $38
    add b
    add b
    adc [hl]
    rst $38
    add b
    add b
    adc h
    rst $38
    add b
    add b
    adc h
    rst $38
    add b
    add b
    rst $38
    ld hl, sp-$80
    add b
    adc a
    ld hl, sp-$80
    add b
    adc [hl]
    ld sp, hl
    add b
    add b
    adc h
    ei
    add b
    add b
    rst $38
    ld hl, sp-$80
    add b
    rrca
    ld hl, sp-$80
    add b
    rrca
    ld hl, sp-$80
    add b
    rrca
    rst $38
    add b
    add b
    rra
    rst $38
    add b
    add b
    rst $28
    rst $30
    add b
    add b
    add a
    rst $38
    ldh [$e0], a
    sbc h
    rst $38
    ldh a, [$f0]
    di
    rst $38
    sub b
    ldh a, [$31]
    rst $38
    sub b
    ldh a, [$3d]
    rst $38
    ldh a, [$f0]
    add hl, sp
    rst $38
    ret z

    ld hl, sp+$3f
    rst $38
    ld hl, sp-$08
    jr @+$01

    ret z

    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    add d
    cp $01
    ld bc, $ff01
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    rrca
    rst $38
    ld [bc], a
    inc bc
    ccf
    rst $38
    ld bc, $5f01
    rst $38
    rrca
    rrca
    rst $18
    rst $38
    rra
    rra
    sub $f9
    ccf
    ccf
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    cpl
    ccf
    db $e4
    rst $38
    inc hl
    ccf
    add h
    rst $38
    jr nz, jr_0f5_5e85

    add h
    rst $38
    jr c, jr_0f5_5e71

    add h
    rst $38
    ld a, c
    ld b, a
    rst $38
    rst $38
    ld a, l
    ld b, e
    inc b
    rst $38
    ld a, l
    ld b, e
    add h
    rst $38
    ld a, d
    ld b, [hl]
    ld b, h
    ld a, a
    inc h
    inc a
    ld a, a
    ld a, a
    jr jr_0f5_5e7a

    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a

jr_0f5_5e71:
    inc bc
    ld bc, $02ff
    inc bc
    ld b, $ff
    inc b
    rlca

jr_0f5_5e7a:
    ld [$04ff], sp
    rlca
    ld [$08ff], sp
    rrca
    ld [$08ff], sp

jr_0f5_5e85:
    rrca
    jr @+$01

    ld [$140f], sp
    rst $30
    ld [$240f], sp
    rst $20
    rrca
    rrca
    rst $20
    rst $20
    rrca
    rrca
    and a
    rst $20
    ld [$160f], sp
    rst $30
    ld [$120f], sp
    di
    inc b
    rlca
    add hl, bc
    ld sp, hl
    inc b
    rlca
    ld [$03f8], sp
    inc bc
    ldh a, [$f0]
    ld bc, $e001
    ldh [rP1], a
    nop
    ldh [$e0], a
    ld bc, $e001
    ldh [rTAC], a
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    cp $ff
    add b
    add b
    jr c, @+$01

    add b
    add b
    ld [hl+], a
    db $fd
    add b
    add b
    daa
    ld hl, sp+$40
    ret nz

    rst $38
    ld hl, sp+$40
    ret nz

    inc sp
    db $fc
    and b
    ld h, b
    dec sp
    db $fc
    and b
    ld h, b
    dec de
    db $fc
    ld b, b
    ret nz

    rst $38
    rst $38
    add b
    add b
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    ld l, b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    add c
    rst $38
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rlca
    rlca
    add b
    add b
    inc bc
    inc bc
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rra
    rra
    ldh [$e0], a
    nop
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
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rst $28
    rst $28
    ld bc, $1d01
    rst $38
    inc bc
    inc bc
    rst $38
    db $dd
    ld [bc], a
    inc bc
    db $fd
    ld e, a
    ld [bc], a
    inc bc
    cp $ff
    inc bc
    inc bc
    rst $38
    rst $38
    inc b
    rlca
    ld a, a
    rst $38
    inc b
    rlca
    ccf
    rst $38
    ld [$1c0f], sp
    rst $38
    inc c
    dec bc
    inc e
    rst $38
    rlca
    inc b
    call nz, Call_000_033f
    ld [bc], a
    db $f4
    ld a, a
    ld bc, $9f01
    sbc a
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f5_602b

    nop
    nop
    ret nz

    rst $38
    ld bc, $0001
    rst $38

jr_0f5_5ff4:
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    ld bc, $08ff
    rrca
    rlca
    rst $38
    db $10
    rra
    add hl, de
    ld sp, hl
    rra
    rra
    pop hl
    pop hl
    rra
    rra
    and c
    pop hl
    db $10
    rra
    ld hl, $10e1
    rra
    jr nz, jr_0f5_5ff4

    ld [$200f], sp
    ldh [$08], a
    rrca
    db $10
    ldh a, [$08]
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [$03]
    inc bc
    ldh [$e0], a
    ld bc, $e001

jr_0f5_602b:
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rTAC]
    rlca
    ldh a, [$f0]
    rrca
    rrca

jr_0f5_603e:
    ldh a, [$f0]
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

    nop
    nop
    jr nc, jr_0f5_603e

    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop

jr_0f5_6068:
    ld hl, sp-$08
    nop
    nop

jr_0f5_606c:
    rst $28
    rst $38
    add b
    add b
    rst $18
    ccf
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    rla
    rst $38
    ldh [$e0], a
    inc de
    rst $38
    and b
    ldh [rNR13], a
    rst $38
    jr nz, jr_0f5_6068

    inc de
    rst $38
    jr nz, jr_0f5_606c

    ld [de], a
    rst $38
    ldh [rNR41], a
    cp $ff
    and b
    ld h, b
    ld hl, $c0fe
    ld b, b
    ld hl, $40fe
    ret nz

    db $fc
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    ld de, $00ff
    nop
    ld de, $00ff
    nop
    ld de, $00ff
    nop
    jp hl


    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop

jr_0f5_60c0:
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [c], a
    cp $00
    nop
    cp $fe
    nop
    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nc, jr_0f5_611d

    jr nz, jr_0f5_60c0

    ld [$200f], sp
    ldh [rTAC], a
    rlca
    ret nz

    ret nz

    ld bc, $c001
    ret nz

    ld bc, $c001
    ret nz

    ld bc, $c001
    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    nop
    nop
    rrca
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f5_614b

    nop
    nop
    jr nz, jr_0f5_614f

    nop
    nop
    jr nz, jr_0f5_6153

    nop
    nop
    jr nz, jr_0f5_6157

    ld bc, $df01
    rst $18
    ld [bc], a

jr_0f5_611d:
    inc bc
    dec sp
    rst $38
    rlca
    rlca
    rst $38
    cp e
    dec b
    ld b, $fb
    cp a
    dec b
    rlca
    db $fd
    cp $07
    rlca
    rst $38
    rst $38
    ld [$ff0f], sp
    rst $38
    ld [$7e0f], sp
    rst $38
    db $10
    rra
    jr c, @+$01

    jr jr_0f5_6155

    jr c, @+$01

    rrca
    ld [$7f88], sp
    rlca
    inc b
    add sp, -$01
    inc bc
    inc bc
    ccf

jr_0f5_614b:
    ccf
    nop
    nop
    db $10

jr_0f5_614f:
    rra
    nop
    nop
    db $10

jr_0f5_6153:
    rra
    nop

jr_0f5_6155:
    nop
    rra

jr_0f5_6157:
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    inc hl
    ccf
    nop
    nop
    jr nz, jr_0f5_61b3

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    pop af
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e

jr_0f5_61b3:
    inc e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld bc, $fe01
    cp $03
    inc bc
    cp $fe
    add b
    add b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rst $18
    rst $38
    nop
    nop
    cp a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    cpl
    rst $38
    ret nz

    ret nz

    daa
    rst $38
    ld b, b
    ret nz

    ld h, $ff
    ld b, b
    ret nz

    ld h, $ff
    ld b, b
    ret nz

    dec h
    cp $c0
    ld b, b
    db $fd
    cp $40
    ret nz

    ld b, e
    db $fc
    add b
    add b
    ld b, d
    db $fd
    add b
    add b
    ld sp, hl
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    or d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    and b
    cp a
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    rrca
    rrca
    add b
    add b
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    add b
    add b
    rra
    rra
    add b
    add b
    rra
    rra
    add b
    add b
    inc d
    inc l
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    dec d
    dec de
    nop
    nop
    ld a, [bc]
    dec c
    add b
    add b
    dec b
    ld b, $71
    pop af
    ld [bc], a
    inc bc
    cp c
    ld a, c
    ld bc, $9d01
    db $fd
    ld bc, $7b01
    sbc a
    ld bc, $1c01
    ei
    nop
    nop
    rst $38
    ld hl, sp+$00
    nop
    dec c
    dec bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    jr jr_0f5_62d7

    nop
    nop
    jr nc, jr_0f5_62fb

    nop
    nop
    ld [hl-], a
    ccf
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    dec c
    rrca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc b

jr_0f5_62d7:
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10

jr_0f5_62fb:
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f5_634b

    nop
    nop
    jr nz, jr_0f5_634f

    nop
    nop
    jr nz, jr_0f5_6353

    nop
    nop
    jr nz, jr_0f5_6357

    nop
    nop
    jr nz, jr_0f5_635b

    nop
    nop
    jr nz, jr_0f5_635f

    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld b, d
    ld a, [hl]
    nop

jr_0f5_634b:
    nop
    add c
    rst $38
    nop

jr_0f5_634f:
    nop
    nop
    rst $38
    add b

jr_0f5_6353:
    add b
    nop
    rst $38
    add b

jr_0f5_6357:
    add b
    nop
    rst $38
    ld b, b

jr_0f5_635b:
    ret nz

    ldh a, [rIE]
    ld b, b

jr_0f5_635f:
    ret nz

    rst $18
    rst $38
    ret nz

    ret nz

    pop af
    cp a
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    dec a
    rst $38
    ret nz

    ret nz

    dec e
    rst $38
    ret nz

    ret nz

    dec e
    rst $38
    add b
    add b
    add hl, de
    rst $38
    add b
    add b
    rst $28

jr_0f5_6381:
    rra
    add b
    add b
    ld [hl], c
    adc a
    add b
    add b
    ld sp, $80cf
    add b
    inc sp
    rst $08
    nop
    nop
    rst $30
    rst $08
    nop
    nop
    ld sp, $00cf
    nop
    ld sp, $00cf
    nop
    ld sp, $00cf
    nop
    jr c, @+$01

    add b
    add b
    jr c, @-$0f

    add b
    add b
    ld a, b
    xor a
    add b
    add b

jr_0f5_63ac:
    db $fc
    cp a
    add b
    add b

jr_0f5_63b0:
    jr nc, jr_0f5_6381

    add b
    add b
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    pop hl

jr_0f5_63c1:
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    jr nz, jr_0f5_63ac

    ld d, b
    rst $18
    jr nz, jr_0f5_63b0

    jr z, jr_0f5_63c1

    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [rLY]
    rst $00
    db $10
    ldh a, [$83]
    add e
    ldh [$e0], a
    add c
    add c
    ret nz

    ret nz

    ld bc, $c001
    ret nz

    ld bc, $c001
    ret nz

    add e
    add e
    ldh [$e0], a
    add a
    add a
    ldh [$e0], a
    add a
    add a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f5_6418:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0601
    rst $38
    rrca
    rrca
    rrca
    rst $38
    rra
    dec e
    cp a
    rst $18
    ld e, $1f
    rst $38
    rst $38
    rla
    rra
    rst $20
    cp a
    rra
    ld e, $e3
    rra
    rrca
    ld c, $03
    rst $38
    ld b, $07
    inc bc
    rst $38
    ld bc, $e201
    rst $38
    nop
    nop
    db $d3
    rst $38
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    jr nc, jr_0f5_649f

    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    ld [hl], $39
    nop
    nop
    ld c, b
    ld [hl], a
    nop
    nop
    ldh a, [$cf]
    ld bc, $e001
    cp a
    ld [bc], a
    inc bc
    add b
    ld a, a
    dec b
    ld b, $00
    rst $38
    ld a, [bc]
    dec c
    inc bc
    rst $38
    dec d
    dec de
    cp $fe
    dec hl
    scf
    ld [c], a
    cp $34
    inc l
    add d
    cp $18
    jr jr_0f5_6418

    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c

jr_0f5_649f:
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    ld hl, sp-$08
    nop
    nop
    call c, Call_000_00fc
    nop
    sbc h
    db $fc
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop

jr_0f5_651c:
    ld a, [bc]
    cp $00
    nop

jr_0f5_6520:
    dec b
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    ldh [rIE], a
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    and b
    ldh [rSB], a
    rst $38
    jr nz, jr_0f5_651c

    ld e, $ff
    jr nz, jr_0f5_6520

    ld h, b
    rst $38
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    ccf
    ccf
    ret nz

    ret nz

    jr c, jr_0f5_658d

    ld b, b
    ret nz

    db $10
    rra
    ld h, b
    ldh [rNR10], a
    rra
    db $10
    ldh a, [$08]
    rrca
    ld [$04f8], sp
    rlca
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld bc, $0801
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr c, jr_0f5_65ac

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop

jr_0f5_658d:
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0301
    inc bc
    rst $38
    rst $38

jr_0f5_65ac:
    rlca
    inc b
    rst $30
    ld a, e
    inc bc
    ld [bc], a
    and $5f
    ld bc, $f801
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld [hl-], a
    ccf
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    dec c
    rrca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f5_664b

    nop
    nop
    jr nz, jr_0f5_664f

    nop
    nop
    jr nz, jr_0f5_6653

    nop
    nop
    jr nz, jr_0f5_6657

    nop
    nop
    jr nz, jr_0f5_665b

    nop
    nop
    jr nz, jr_0f5_665f

    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    ld hl, sp-$08
    nop
    nop
    ld b, $fe
    nop
    nop
    ld bc, $00ff

jr_0f5_664b:
    nop
    nop
    rst $38
    add b

jr_0f5_664f:
    add b
    nop
    rst $38
    add b

jr_0f5_6653:
    add b
    rrca
    rst $38
    add b

jr_0f5_6657:
    add b
    rst $38
    rst $38
    add b

jr_0f5_665b:
    add b
    cp a
    rst $38
    add b

jr_0f5_665f:
    add b
    rst $38
    cp a
    nop
    nop
    cp l
    rst $38
    nop
    nop
    db $e3
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    dec a
    rst $38
    ret nz

    ret nz

    dec e
    rst $38
    ret nz

    ret nz

    dec e
    rst $38
    add b
    add b
    add hl, de
    rst $38
    add b
    add b
    rst $28

jr_0f5_6681:
    rra
    add b
    add b
    ld [hl], c
    adc a
    add b
    add b
    ld sp, $80cf
    add b
    inc sp
    rst $08
    nop
    nop
    rst $30
    rst $08
    nop
    nop
    ld sp, $00cf
    nop
    ld sp, $00cf
    nop
    ld sp, $00cf
    nop
    jr c, @+$01

    add b
    add b
    jr c, @-$0f

    add b
    add b
    ld a, b
    xor a
    add b
    add b

jr_0f5_66ac:
    db $fc
    cp a
    add b
    add b

jr_0f5_66b0:
    jr nc, jr_0f5_6681

    add b
    add b
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    pop hl

jr_0f5_66c1:
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    jr nz, jr_0f5_66ac

    ld d, b
    rst $18
    jr nz, jr_0f5_66b0

    jr z, jr_0f5_66c1

    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [$28]
    rst $28
    db $10
    ldh a, [rLY]
    rst $00
    db $10
    ldh a, [$83]
    add e
    ldh [$e0], a
    add c
    add c
    ret nz

    ret nz

    ld bc, $c001
    ret nz

    ld bc, $c001
    ret nz

    add e
    add e
    ldh [$e0], a
    add a
    add a
    ldh [$e0], a
    add a
    add a
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
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
    rra
    nop
    nop
    jr nz, jr_0f5_68d7

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld d, a
    ld a, a
    inc bc
    inc bc
    rst $38
    rst $30
    rlca
    rlca
    push af
    cp $0f
    rrca
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    dec bc
    rrca
    ld sp, hl
    rst $38
    ld [$e10f], sp
    rst $38
    ld [$210f], sp
    rst $38
    ld c, $09
    ld hl, $1eff
    ld de, $ff7f
    rra
    db $10
    ld h, c
    rst $38
    rra
    db $10
    ld h, c

jr_0f5_68d7:
    rst $38
    ld e, $11
    and c
    cp a
    add hl, bc
    rrca
    ccf
    ccf
    ld b, $06
    jr nz, jr_0f5_6923

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0301
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    inc b
    rlca
    inc b
    rst $38
    inc b
    rlca
    inc c
    rst $38
    inc b
    rlca
    ld a, [bc]
    ei
    inc b
    rlca
    ld [de], a
    di
    rlca
    rlca
    di
    di
    rlca
    rlca
    db $d3
    di
    inc b
    rlca
    dec bc
    ei
    inc b
    rlca
    add hl, bc
    ld sp, hl
    ld [bc], a
    inc bc
    inc b

jr_0f5_6923:
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld bc, $f801
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    inc bc
    inc bc
    ld hl, sp-$08
    rlca
    rlca
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop

jr_0f5_6964:
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop

jr_0f5_696c:
    rst $38
    rst $38
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    rst $38
    and b
    ldh [$0e], a
    rst $38
    jr nz, jr_0f5_6964

    ld [$a0ff], sp
    ld h, b
    add hl, bc
    cp $d0
    jr nc, @+$01

    rst $38
    ret nc

    jr nc, jr_0f5_699d

    rst $38
    jr z, jr_0f5_696c

    ld c, $ff
    add sp, $18
    ld c, $ff
    ret nc

    jr nc, @+$01

jr_0f5_699d:
    rst $38
    ldh [$e0], a
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    or h
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld hl, $803f
    add b
    rra
    rra
    add b
    add b
    inc bc
    inc bc
    ret nz

    ret nz

    ld bc, $e001
    ldh [rTAC], a
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    xor b
    ret c

    ld bc, $d001
    or b
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    ld [bc], a
    or c
    pop de
    ld [bc], a
    inc bc
    pop hl
    pop hl
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    ld [bc], a
    and c
    ld h, c
    rlca
    inc b
    and c
    ld h, c
    rlca
    inc b
    and a
    ld h, a
    rlca
    inc b
    rst $38
    ccf
    inc b
    rlca
    rst $18
    ccf
    inc bc
    ld [bc], a
    add e
    ld a, a
    ld bc, $0101
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld hl, $003f
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    sbc l
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld [c], a
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    jr nz, jr_0f5_6adf

    nop
    nop
    jr nz, jr_0f5_6ae3

    nop
    nop
    jr nz, jr_0f5_6ae7

    nop
    nop
    ld de, $001f
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0e
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    xor b
    ret c

    nop
    nop
    ld d, [hl]
    ld l, [hl]
    nop
    nop
    add c
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b

jr_0f5_6adf:
    add b
    ret nz

    rst $38
    add b

jr_0f5_6ae3:
    add b
    ld d, c
    rst $38
    nop

jr_0f5_6ae7:
    nop
    rst $38
    ld e, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    rst $38
    rst $38
    ldh [$e0], a
    pop hl
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh a, [$f0]
    push hl
    rst $38
    ret nc

    ldh a, [rDIV]
    rst $38
    ld d, b
    ldh a, [rDIV]
    rst $38
    ld h, b
    ldh [$08], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    ld de, $80ff
    add b
    inc de
    rst $38
    nop
    nop
    inc de
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    reti


    rst $38
    nop
    nop
    ld b, d
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$08
    ld bc, $0601
    cp $02
    inc bc
    ld bc, $02ff
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    rrca
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $bf01
    rst $38
    rlca
    rlca
    rst $38
    cp a
    rrca
    rrca
    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ld sp, $f83f
    rst $38
    ld hl, $e43f
    rst $38
    jr nz, jr_0f5_6d7d

    call nz, Call_000_20ff
    ccf
    inc bc
    rst $38
    ld [hl], $39
    cp $ff
    ld l, d
    ld [hl], l
    add c
    rst $38
    xor $d1
    add c
    rst $38
    call $c0f3
    rst $38
    ld h, d
    ld a, [hl]
    ld h, e
    ld a, a
    inc a
    inc a
    ld a, h
    ld a, a
    nop
    nop
    jr nc, @+$41

    nop
    nop
    jr nz, jr_0f5_6da3

    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f5_6db3

    nop
    nop
    jr nz, jr_0f5_6db7

    nop
    nop
    jr nz, jr_0f5_6dbb

    nop

jr_0f5_6d7d:
    nop
    daa
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr c, jr_0f5_6dcb

    nop
    nop
    jr jr_0f5_6daf

    nop
    nop
    rlca
    rlca
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop

jr_0f5_6da3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f5_6daf:
    nop
    nop
    nop
    nop

jr_0f5_6db3:
    nop
    nop
    nop
    nop

jr_0f5_6db7:
    nop
    nop
    nop
    inc bc

jr_0f5_6dbb:
    inc bc
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

jr_0f5_6dcb:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld [hl], h
    db $fc
    nop
    nop
    inc [hl]
    call z, RST_00
    ld a, [$00c6]
    nop
    ld a, [hl-]
    add $00
    nop
    ld a, [de]
    and $00
    nop
    dec e
    db $e3
    nop
    nop
    xor l
    di
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    inc de
    db $fd
    add b
    add b
    rrca
    ld a, [$8080]
    cpl
    cp $80
    add b
    rla
    ld sp, hl
    nop
    nop
    ld d, $fe
    nop
    nop
    inc l
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    ld c, b
    ld hl, sp+$00
    nop
    adc h
    db $fc
    nop
    nop
    di
    rst $38
    ldh a, [$f0]
    rlca
    rst $38
    adc b
    ld hl, sp+$07
    rst $38
    adc b
    ld hl, sp+$07
    rst $38
    sub b
    ldh a, [$fd]
    db $fd
    adc b
    ld hl, sp+$04
    db $fc
    adc b
    ld hl, sp+$04
    db $fc
    adc b
    ld hl, sp+$04
    db $fc
    ld [hl], b
    ld [hl], b
    inc b
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld l, a
    ld a, a
    ld bc, $ff01
    rst $28
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    inc c
    rrca
    ld a, a
    rst $38
    ld [$7e0f], sp
    rst $38
    ld [$390f], sp
    rst $38
    ld [$310f], sp
    rst $38
    add hl, bc
    ld c, $80
    ld a, a
    dec b
    ld b, $df
    ccf
    dec c
    ld c, $d0
    ccf
    dec [hl]
    ld a, [hl-]
    or b
    ld a, a
    ld [hl], a
    ld a, b
    jr c, @+$01

    or $d9
    ld c, h
    rst $08
    pop de
    rst $38
    adc a
    adc a
    ld a, [hl]
    ld a, [hl]
    ld b, $07
    jr c, jr_0f5_6f16

    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    dec b
    rlca
    nop
    nop

jr_0f5_6f16:
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop

jr_0f5_6f2e:
    nop
    nop
    nop
    nop

jr_0f5_6f32:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f5_6f2e

    nop
    nop
    jr nz, jr_0f5_6f32

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    dec e
    rst $38
    nop
    nop
    ld b, $f9
    add b
    add b
    rst $38
    ld hl, sp+$40
    ret nz

    jp Jump_0f5_40fc


    ret nz

    inc hl
    db $fc
    ld b, b
    ret nz

    dec h
    cp $40
    ret nz

    dec d
    cp $40
    ret nz

    ld a, a
    db $fc
    ld b, b
    ret nz

    add e
    rst $38
    ret nz

    ret nz

    ld bc, $c0ff
    ret nz

    ld [$40ff], sp
    ret nz

    inc b
    rst $38
    add b
    add b
    inc b
    rst $38
    add b
    add b
    ld a, [bc]
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld h, b
    rst $38
    add b
    add b
    ldh [rIE], a
    add b
    add b

jr_0f5_6fbc:
    and b
    cp a
    add b
    add b
    ld e, a
    rst $18
    ret nz

    ret nz

    ld e, a
    rst $18
    ret nz

    ret nz

    jr nc, @+$01

    ld b, b
    ret nz

    ret nc

    rst $38
    ld b, b
    ret nz

    ldh [rIE], a
    ld b, b
    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld hl, sp-$01
    jr nz, jr_0f5_6fbc

    call nz, Call_000_20ff
    ldh [$1f], a
    rst $38
    ret nz

    ret nz

    ld h, e
    db $e3
    ret nz

    ret nz

    add e
    add e
    ret nz

    ret nz

    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    ld bc, $f001
    ldh a, [rTAC]
    rlca
    ldh a, [$f0]
    rra
    rra
    add b
    add b
    ld [bc], a
    inc bc
    inc c
    db $fc
    inc b
    rlca
    ld [bc], a
    cp $04
    rlca
    ld bc, $04ff
    rlca
    ld bc, $04ff
    rlca
    rra
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, a
    rst $38
    rrca
    rrca
    rst $38
    ld a, a
    rra
    rra
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld h, e
    ld a, a
    rst $38
    rst $38
    ld b, e
    ld a, a
    call nz, $41ff
    ld a, a
    add h
    rst $38
    ld b, b
    ld a, a
    inc bc
    rst $38

jr_0f5_703c:
    cpl
    jr nc, jr_0f5_703c

    rst $38
    ld d, $19
    ret nz

    rst $38
    ld l, $31
    ret nz

    rst $38
    inc a
    inc sp
    ldh [rIE], a
    ld a, c
    ld a, a
    ld sp, $de3f
    cp $3e
    ccf
    db $ec
    cp h
    jr jr_0f5_7077

    ld a, b
    ld e, b
    db $10
    rra
    jr nc, @+$32

    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    db $e3

jr_0f5_7077:
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $1c01
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $0801
    ld hl, sp+$01
    ld bc, $f808
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    rra
    rra
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], h
    db $fc
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    ld a, [de]
    or $00
    nop
    adc d
    or $00
    nop
    add h
    db $fc
    nop
    nop
    ld e, b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc h
    db $fc
    nop
    nop
    ld [de], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld l, d
    cp $00
    nop
    add d
    cp $00
    nop

jr_0f5_712c:
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld a, [$00fe]
    nop
    pop hl
    rst $38
    nop
    nop
    ret nz

    rst $38
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f5_7189

    jr nz, jr_0f5_712c

    db $10
    rra
    db $10
    ldh a, [$08]
    rrca
    ld l, b
    ld hl, sp+$04
    rlca
    ldh a, [$f0]
    ld [bc], a
    inc bc
    db $fc
    db $fc
    ld bc, $7e01
    ld a, [hl]
    nop
    nop
    ld [hl-], a
    ld a, $00
    nop
    ld h, h
    ld a, h
    nop
    nop
    ld c, b
    ld a, b
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f001
    ldh a, [rSC]
    inc bc
    inc c
    db $fc
    inc b

jr_0f5_7189:
    rlca
    ld [bc], a
    cp $04
    rlca
    ld bc, $04ff
    rlca
    ld bc, $04ff
    rlca
    rra
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, a
    rst $38
    rlca
    rlca
    rst $38
    ld a, a
    rrca
    rrca
    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    jr jr_0f5_71cd

    rst $38
    rst $38
    db $10
    rra
    di
    rst $38
    db $10
    rra
    ld h, d
    rst $38
    db $10
    rra
    ld bc, $0bff
    inc c
    add c
    ld a, a
    dec bc
    inc c
    sbc $3f
    dec bc
    inc c
    and b
    ld a, a
    ld a, [bc]
    dec c
    or b
    ld a, a
    rrca

jr_0f5_71cd:
    ld [$df58], sp
    ld e, $1f
    adc h
    adc a
    inc de
    rra
    adc a
    adc a
    inc sp
    cpl
    add [hl]
    add a
    rra
    rra
    ld [$1e0f], sp
    ld [de], a
    ld [$0c0f], sp
    inc c
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f5_722f

    nop
    nop
    jr nz, jr_0f5_7233

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    ld bc, $fc01

jr_0f5_722f:
    db $fc
    nop
    nop
    db $fc

jr_0f5_7233:
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld a, [c]
    cp $00
    nop
    ld b, [hl]
    ld a, [$0000]
    ld h, $fa
    nop
    nop
    inc h
    db $fc
    nop
    nop
    ld d, $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    add d
    cp $00
    nop
    ld bc, $00ff
    nop
    ld de, $00ff
    nop
    ld [$80ff], sp
    add b
    ld [$80ff], sp
    add b
    ld [hl], l
    rst $38
    nop
    nop

jr_0f5_72ac:
    ld b, d
    cp $00
    nop
    add d
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld e, $fe
    nop
    nop
    pop hl
    rst $38
    add b
    add b
    ret nz

    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f5_72ac

    jr nz, jr_0f5_730d

    ldh [$e0], a
    ld de, $fc1f
    db $fc
    add hl, bc
    rrca
    ld a, [$06fe]
    rlca
    ld [hl], c
    rst $38
    ld bc, $a201
    cp [hl]
    nop
    nop
    ld h, d
    ld a, [hl]
    nop
    nop
    ld b, h
    ld a, h
    nop
    nop
    jr c, jr_0f5_7324

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f001
    ldh a, [rSC]
    inc bc
    inc c
    db $fc
    inc b

jr_0f5_730d:
    rlca
    ld [bc], a
    cp $04
    rlca
    ld bc, $04ff
    rlca
    ld bc, $04ff
    rlca
    rra
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    ld a, a
    rst $38

jr_0f5_7324:
    rrca
    rrca
    rst $38
    ld a, a
    rra
    rra
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ld sp, $ff3f
    rst $38
    ld hl, $e73f
    rst $38
    jr nz, jr_0f5_7379

    call nz, Call_000_20ff
    ccf
    ld [bc], a
    rst $38
    dec de
    inc d
    add e
    ld a, a
    ld c, $09
    inc a
    rst $38
    rlca
    inc b
    ret nz

    ld a, a
    rlca
    inc b
    ldh [$7f], a
    inc bc
    ld [bc], a
    ldh a, [$3f]
    inc bc
    ld [bc], a
    ld hl, sp-$01
    inc bc
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    ret nc

    rst $38
    inc bc
    inc bc
    ret nc

    rst $38
    ld [bc], a
    inc bc
    ldh a, [$3f]
    ld bc, $d001
    rst $18
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f5_73b3

    nop
    nop
    jr nz, jr_0f5_73b7

    nop

jr_0f5_7379:
    nop
    jr nz, jr_0f5_73bb

    nop
    nop
    jr nz, jr_0f5_73bf

    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0f5_73cf

    nop
    nop
    jr nz, jr_0f5_73d3

    nop
    nop
    jr nz, jr_0f5_73d7

    nop
    nop
    jr nz, jr_0f5_73db

    nop
    nop
    jr nz, jr_0f5_73df

    nop
    nop
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca

jr_0f5_73b3:
    rlca
    nop
    nop
    rrca

jr_0f5_73b7:
    rrca
    nop
    nop
    ccf

jr_0f5_73bb:
    ccf
    nop
    nop
    ld a, a

jr_0f5_73bf:
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f5_73cf:
    nop
    nop
    nop
    nop

jr_0f5_73d3:
    nop
    nop
    nop
    nop

jr_0f5_73d7:
    nop
    nop
    nop
    nop

jr_0f5_73db:
    nop
    nop
    nop
    nop

jr_0f5_73df:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    add sp, -$08
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    inc l
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld l, h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    cp $fe
    nop
    nop
    pop af
    rst $38
    db $fc
    db $fc
    ld bc, $f2ff
    cp $01
    rst $38
    ld a, [c]
    cp $81
    rst $38
    db $f4
    db $fc
    add d
    cp $32
    ld a, $fc
    db $fc
    ld [hl-], a
    ld a, $40
    ret nz

    ld [de], a
    ld e, $40
    ret nz

    ld a, [bc]
    ld c, $40
    ret nz

    inc b
    inc b
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ret nz

    ret nz

    ld [$300f], sp
    ldh a, [rNR10]
    rra
    ld [$10f8], sp
    rra
    inc b
    db $fc
    db $10
    rra
    inc b
    db $fc
    db $10
    rra
    ld a, h
    db $fc
    rrca
    rrca
    db $fc
    db $fc
    dec c
    rrca
    db $fc
    db $fc
    rra
    dec e
    cp $fe
    ccf
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld h, e
    ld a, a
    rst $38
    rst $38
    ld b, e
    ld a, a
    rst $08
    rst $38
    ld b, c
    ld a, a
    adc c
    rst $38
    ld b, b
    ld a, a
    ld [bc], a
    rst $38
    ld l, $31
    inc bc
    rst $38
    cpl
    jr nc, @+$3e

    rst $38
    ld l, $31
    ret nz

    rst $38
    ld a, [hl+]
    dec [hl]
    ldh [rIE], a
    dec a
    inc hl
    jr nc, jr_0f5_750f

    ld a, d
    ld a, [hl]
    jr @+$21

    ld c, [hl]
    ld a, [hl]
    rra
    rra
    adc $be
    db $10
    rra
    ld a, h
    ld a, h
    db $10
    rra
    ld a, b
    ld c, b
    db $10
    rra
    jr nc, jr_0f5_7516

    jr nz, jr_0f5_7527

    nop
    nop
    jr nz, jr_0f5_752b

    nop
    nop
    jr nz, jr_0f5_752f

    nop
    nop
    jr nz, jr_0f5_7533

    nop
    nop
    jr nz, jr_0f5_7537

    nop
    nop
    jr nz, jr_0f5_753b

    nop
    nop
    jr nz, jr_0f5_753f

    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f5_754b

    nop
    nop
    db $10

jr_0f5_750f:
    rra
    nop
    nop
    db $10
    rra
    nop
    nop

jr_0f5_7516:
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    add hl, bc

jr_0f5_7527:
    rrca
    nop
    nop
    rlca

jr_0f5_752b:
    rlca
    nop
    nop
    inc bc

jr_0f5_752f:
    inc bc
    nop
    nop
    inc bc

jr_0f5_7533:
    inc bc
    nop
    nop
    inc bc

jr_0f5_7537:
    inc bc
    nop
    nop
    rra

jr_0f5_753b:
    rra
    nop
    nop
    ccf

jr_0f5_753f:
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f5_754b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    nop
    nop
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $f0f0
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $f878
    ld bc, $e401
    db $fc
    nop
    nop
    adc h
    db $f4
    nop
    nop
    ld c, h
    db $f4

jr_0f5_7586:
    nop
    nop
    ld c, b
    ld hl, sp+$00
    nop
    jr z, jr_0f5_7586

jr_0f5_758e:
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    jr jr_0f5_758e

    inc bc
    ld [bc], a
    inc c
    db $fc
    ld bc, $0c01
    db $fc

jr_0f5_759e:
    nop
    nop
    inc c
    db $fc
    nop
    nop
    jr c, jr_0f5_759e

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ret nz

    ret nz

    nop
    nop
    and b
    ldh [rP1], a
    nop
    sub b
    ldh a, [rP1]
    nop
    adc b
    ld hl, sp+$00
    nop
    add h
    db $fc
    nop
    nop
    sbc b
    ld hl, sp+$00
    nop
    ld a, h
    db $fc
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld e, a
    rst $18
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    inc a
    rst $38
    ld b, b
    ret nz

    ld sp, $80ff
    add b
    add $fe
    nop
    nop
    ret c

    ld hl, sp+$00
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$300f], sp
    ldh a, [rNR10]
    rra
    ld [$10f8], sp
    rra
    inc b
    db $fc
    db $10
    rra
    inc b
    db $fc
    db $10
    rra
    ld a, h
    db $fc
    rrca
    rrca
    db $fc
    db $fc
    dec c
    rrca
    db $fc
    db $fc
    ccf
    dec a
    cp $fe
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
    adc a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc de
    rst $38
    ld b, $ff
    ld de, $00ff
    rst $38
    rrca
    rst $38
    cp a
    jp $fff4


    ld e, e
    ld h, a
    ld [bc], a
    rst $38
    cp e
    rst $00
    ld [bc], a
    rst $38
    di
    rst $08
    add c
    rst $38
    db $e4
    db $fc
    rst $00
    rst $38
    ld a, b
    ld hl, sp-$08
    rst $38
    or b
    ldh a, [$60]
    ld a, a
    ldh [$60], a
    ld h, b
    ld a, a
    ret nz

    ret nz

    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    sub b
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    sub b
    rst $38
    ld bc, $f801
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $0f01
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, b
    ld a, b
    rlca
    rlca
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f5_76da:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld l, b
    ret c

    nop
    nop
    jr z, jr_0f5_76da

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rSB], a
    ld bc, $c0c0

jr_0f5_770e:
    inc bc
    inc bc
    ld h, b
    ldh [rTAC], a
    ld b, $60
    ldh [rTMA], a
    rlca
    jr nc, @-$0e

    inc bc
    inc bc
    jr nc, jr_0f5_770e

    ld bc, $3001
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    adc b
    ld hl, sp+$00
    nop

jr_0f5_7744:
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    ld c, l
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    rra
    rra
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    ld b, $07
    jr nz, jr_0f5_7744

    inc c
    rrca
    ld b, b
    ret nz

    ld [$800f], sp
    add b
    ld de, $001f
    nop
    ld [de], a
    ld e, $00
    nop
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f001
    ldh a, [rSC]
    inc bc
    inc c
    db $fc
    inc b
    rlca
    ld [bc], a
    cp $04
    rlca
    ld bc, $04ff
    rlca
    ld bc, $04ff
    rlca
    rra
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld a, a
    rst $38
    rrca
    rrca
    rst $38
    ld a, a
    rra
    rra
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ld h, e
    ld a, a
    rst $38
    rst $38
    ld b, e
    ld a, a
    pop af
    rst $38
    ld b, c
    ld a, a
    ret z

    rst $38
    ld b, c
    ld a, a
    adc b
    rst $38
    ld c, h
    ld [hl], e
    rlca
    rst $38
    ld l, $31
    cp $ff
    ld l, [hl]
    ld [hl], c
    add c
    rst $38
    xor l
    db $d3
    add c
    rst $38
    cp c
    rst $00
    ret nz

    rst $38
    or d
    adc $63
    ld a, a
    adc h
    db $fc
    ld a, h
    ld a, a
    ldh a, [$f0]
    jr c, @+$41

    ret nz

    ret nz

    jr jr_0f5_77ff

    nop
    nop
    jr jr_0f5_7803

    nop
    nop
    jr jr_0f5_7807

    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc h

jr_0f5_77ff:
    ccf
    nop
    nop
    inc hl

jr_0f5_7803:
    ccf
    nop
    nop
    ld [hl+], a

jr_0f5_7807:
    ccf
    nop
    nop
    ld hl, $003f
    nop
    jr nz, jr_0f5_784f

    nop
    nop
    jr nz, jr_0f5_7853

    nop
    nop
    jr nz, jr_0f5_7857

    nop
    nop
    jr nz, jr_0f5_785b

    nop
    nop
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, $3e
    nop
    nop
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f5_784f:
    nop
    nop
    nop
    nop

jr_0f5_7853:
    nop
    nop
    nop
    nop

jr_0f5_7857:
    nop
    nop
    nop
    nop

jr_0f5_785b:
    nop
    add b
    add b
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    add sp, -$08
    nop
    nop
    inc [hl]
    call z, RST_00
    ld a, [$00c6]
    nop
    ld a, [de]
    and $00
    nop
    ld a, [de]
    and $00
    nop
    ld a, [hl+]
    or $00
    nop
    xor d
    or $00
    nop
    ld a, [$00e6]
    nop
    ld e, $fe

jr_0f5_7896:
    nop
    nop
    ld c, $fe

jr_0f5_789a:
    nop
    nop
    ld c, $fe
    nop
    nop
    ld c, $fa
    nop
    nop
    inc e
    db $fc
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, jr_0f5_7896

    nop
    nop
    jr nz, jr_0f5_789a

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    add [hl]
    cp $00
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    add e
    rst $38
    add b
    add b
    add a
    rst $38
    ldh a, [$f0]
    db $e3
    rst $38
    ld hl, sp-$08
    sbc l
    sbc l
    call nz, Call_000_00fc
    nop
    ret z

    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
