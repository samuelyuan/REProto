SECTION "ROM Bank $0d1", ROMX[$4000], BANK[$d1]

    nop
    nop
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
    ld bc, $0002
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    ld [bc], a
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    jr nz, jr_0d1_402d

jr_0d1_402d:
    nop
    ld a, a
    ld d, b
    nop
    nop
    rst $38
    adc b
    nop
    nop
    rst $38
    ret z

    nop
    nop
    rst $38
    adc b
    nop
    nop
    rst $38
    sub b
    nop
    nop
    rst $38
    sub b
    nop
    nop
    rst $38
    ret nc

    nop
    nop
    rst $38
    cp b
    nop
    nop
    rst $38
    sbc b
    nop
    nop
    rst $38
    adc b
    nop
    nop
    rst $38
    adc b
    nop
    nop
    rst $38
    xor b
    nop
    nop
    rst $38
    add sp, $00
    nop
    rst $18
    rst $38
    nop
    nop
    rrca
    ld [hl], b
    nop
    nop
    scf
    ld c, b
    nop
    nop
    rra
    ld h, b
    nop
    nop
    rrca
    jr nc, jr_0d1_4075

jr_0d1_4075:
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    ld [$0000], sp
    rra
    nop
    nop
    nop

jr_0d1_408a:
    rra
    nop
    nop
    nop
    rra
    inc de
    nop
    nop
    rra
    stop
    nop
    rra
    nop
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
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
    nop
    nop
    nop
    nop
    jr c, jr_0d1_408a

    nop
    nop
    inc d
    add sp, $00
    nop
    inc b
    ld hl, sp+$00
    nop
    add h
    ld a, b
    nop
    nop
    sbc h
    ld h, b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    cp $0a
    nop
    nop
    rst $38
    ld sp, hl
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $8080
    rst $38
    ld bc, $8080
    rst $38
    ld h, a
    add b
    add b
    rst $38
    add hl, bc
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    rst $38
    ld bc, $8080
    rst $38
    rlca
    add b
    add b
    rst $38
    ld [bc], a
    add b
    add b
    rst $38
    ld [bc], a
    add b
    add b
    rst $38
    ld [bc], a
    add b
    add b
    rst $38
    ld [bc], a
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    cp $85
    add b
    nop
    db $fd
    add [hl]
    nop
    add b
    rst $38
    add h
    nop
    add b
    db $fc
    adc e
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$48
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    xor b
    ret nc

    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    sub b
    ldh [rP1], a
    nop
    sub b
    ldh [rP1], a
    nop
    sub b
    ldh [rP1], a
    nop
    ldh a, [$80]
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
    ld bc, $0002
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    ld [bc], a
    nop
    nop
    rra
    rra
    rlca
    inc b
    rst $38
    nop
    rrca
    ld a, b
    rst $38
    nop
    ld a, a
    adc d
    rst $38
    ld a, [hl-]
    ld b, a
    and a
    rst $38
    db $fc
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    rst $38
    add b
    nop
    nop
    rst $38
    add b
    nop
    nop
    rst $38
    add b
    nop
    nop
    rst $38
    add b
    nop
    nop
    rst $38
    add b
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    jr nz, jr_0d1_41e9

jr_0d1_41e9:
    nop
    ccf
    jr nz, jr_0d1_41ed

jr_0d1_41ed:
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    ld [$0000], sp
    rra
    nop
    nop
    nop

jr_0d1_420a:
    rra
    nop
    nop
    nop
    rra
    inc de
    nop
    nop
    rra
    stop
    nop
    rra
    nop
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
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
    nop
    nop
    nop
    nop
    jr c, jr_0d1_420a

    nop
    nop
    inc d
    add sp, $00
    nop
    inc b
    ld hl, sp+$00
    nop
    add h
    ld a, b
    nop
    nop
    sbc h
    ld h, b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    rst $38
    ld a, [bc]
    nop
    nop
    rst $38
    ld sp, hl
    add b
    nop
    rst $38
    ld bc, $0080
    rst $38
    ld bc, $0080
    rst $38
    ld bc, $8080
    rst $38
    ld h, a
    nop
    nop
    cp $08
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $00
    nop
    nop
    cp $06
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$48
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    xor b
    ret nc

    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    sub b
    ldh [rP1], a
    nop
    sub b
    ldh [rP1], a
    nop
    sub b
    ldh [rP1], a
    nop
    ldh a, [$80]
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
    nop
    nop
    nop
    nop
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
    ld bc, $0002
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    rlca
    ld b, $00
    nop
    rrca
    ld sp, hl
    rrca
    rrca
    rst $38
    cp $0f
    ld a, [de]
    rst $38
    ld b, b
    rrca
    ld a, b
    rst $38
    ld bc, $ae5f
    rst $38
    cp a
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    ld b, $00
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    nop
    nop
    inc d
    add sp, $00
    nop
    ld [bc], a
    db $fc
    nop
    nop
    add d
    ld a, h
    nop
    nop
    call z, RST_30
    nop
    ld a, h
    add b
    nop
    nop
    res 6, l
    nop
    nop
    rst $38
    jp $8080


    rst $38
    inc a
    ret nz

    ld b, b
    rst $38
    add b
    ldh [rNR41], a
    rst $38
    add d
    ldh [rNR41], a
    rst $38
    add d
    ldh [rNR41], a
    rst $38
    nop
    ldh [rNR41], a
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    ld bc, $8080
    rst $38
    ld [hl-], a
    add b
    add b
    rst $38
    ld b, b
    add b
    add b
    rst $38
    nop
    add b
    add b
    rst $38
    inc b
    ret nz

    ld b, b
    rst $38
    inc b
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ret nz

    rst $38
    ld h, c
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rra
    nop
    nop
    cp $1a
    nop
    nop
    cp $12
    nop
    nop
    db $fc
    inc d
    nop
    nop
    db $fc
    inc c
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$38
    nop
    nop
    ld hl, sp+$48
    nop
    nop
    ld hl, sp+$38
    nop
    nop
    db $fc
    and h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $22
    nop
    nop
    cp a
    ld h, c
    nop
    nop
    cp a
    ld d, c
    nop
    nop
    sbc a
    ld [hl], c
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
    inc bc
    inc bc
    rrca
    inc c
    rst $38
    nop
    rrca
    ld a, b
    rst $38
    nop
    ld a, a
    adc c
    rst $38
    rst $00
    ld c, a
    xor a
    rst $38
    rst $38
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    rra
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    nop
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    inc bc
    nop
    nop
    rrca
    dec b
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    rlca
    inc b
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    ld bc, $0001
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
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    jr c, jr_0d1_454b

jr_0d1_454b:
    nop
    ld [hl+], a
    ld e, l
    add b
    nop
    ld h, b
    rra
    add b
    nop
    ld d, b
    cpl
    add b
    nop
    ld d, e
    inc l
    add b
    nop
    ld a, a
    jr nz, jr_0d1_455f

jr_0d1_455f:
    nop
    ld [hl], d
    ld c, h
    nop
    nop
    rst $38
    pop hl
    ldh [rLCDC], a
    rst $38
    rra
    ldh a, [rNR41]
    rst $38
    nop
    ldh a, [rNR41]
    rst $38
    ld b, b
    ldh a, [rNR41]
    rst $38
    add b
    ldh a, [$30]
    rst $38
    inc c
    ldh [$e0], a
    rst $38
    ld bc, $00c0
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    nop
    rst $38
    nop
    ret nz

    ret nz

    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    ld de, $0000
    cp $12
    nop
    nop
    cp $22
    nop
    nop
    db $fc
    inc l
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    ld hl, sp+$48
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ldh a, [$b0]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld hl, sp+$10
    nop
    nop
    ld hl, sp+$10
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$78
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
    call nz, RST_00
    cp $8e
    nop
    nop
    cp $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    rst $38
    add e
    rrca
    jr @+$01

    ld [$780f], sp
    rst $38
    jr c, jr_0d1_468c

    xor a
    rst $38
    rst $38
    nop
    rrca
    ld a, a
    add $0a
    dec b
    ld a, a
    ld a, c
    nop
    nop
    rrca
    ld [$0000], sp
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    dec e
    nop
    nop
    ccf
    jr nz, jr_0d1_464d

jr_0d1_464d:
    nop
    ccf
    jr c, jr_0d1_4651

jr_0d1_4651:
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ld hl, $0000
    ccf
    jr nz, jr_0d1_466d

jr_0d1_466d:
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, c
    nop
    nop
    cp $82
    nop
    nop
    db $fc
    add h
    ld bc, $f801
    ld [$0101], sp
    ld hl, sp+$08
    ld bc, $f001
    jr nc, @+$03

    ld bc, $10f0

jr_0d1_468c:
    inc bc
    ld [bc], a
    ldh a, [rNR10]
    inc bc
    ld [bc], a
    ldh a, [rNR10]
    inc bc
    ld [bc], a
    ldh a, [rNR10]
    inc bc
    ld [bc], a
    ldh a, [rNR10]
    inc bc
    ld [bc], a
    ldh a, [rNR10]
    inc bc
    ld [bc], a
    ldh a, [rNR10]
    inc bc
    ld [bc], a
    ldh a, [rNR10]
    inc bc
    ld [bc], a
    ldh a, [rNR10]
    inc bc
    ld [bc], a
    ldh a, [rNR10]
    inc bc
    ld [bc], a
    ldh a, [rNR10]
    inc bc
    inc bc
    ldh a, [$f0]
    rrca
    rrca
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
    ld b, $18
    nop
    nop
    inc de
    inc l
    nop
    nop
    ld [hl+], a
    dec e
    add b
    nop
    ld d, b
    cpl
    add b
    nop
    ld e, c
    ld h, $80
    nop
    ld a, a
    jr nz, jr_0d1_46df

jr_0d1_46df:
    nop
    db $e3
    ld a, h
    nop
    nop
    rst $38
    ld hl, $0000
    rst $38
    sbc a
    ret nz

    ret nz

    rst $38
    nop
    ldh [rNR41], a
    rst $38
    ld bc, $20e0
    rst $38
    ld [bc], a
    ldh [rNR41], a
    rst $38
    ld [bc], a
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    ld [hl], b
    add b
    add b
    rst $38
    inc bc
    add b
    add b
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    nop
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    pop hl
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$38
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp-$80
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    ld a, h
    ld l, h
    nop
    nop
    ld a, [hl]
    ld [hl], d
    nop
    nop
    ld a, $22
    nop
    nop
    ccf
    daa
    nop
    nop
    ccf
    ld hl, $0000
    rra
    ld de, $0000
    rrca
    ld [$8080], sp
    rrca
    ld [$0000], sp
    inc b
    rlca
    add b
    nop
    ld [bc], a
    ld bc, $0080
    ld [bc], a
    ld bc, $8040
    ld bc, $4000
    add b
    rlca
    rlca
    ldh [$e0], a
    rra
    rra
    ldh [$e0], a
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
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
    rrca
    inc c
    rst $38
    nop
    rrca
    ld a, b
    rst $38
    nop
    ld a, a
    adc c
    rst $38
    rst $00
    ld c, a
    xor a
    rst $38
    rst $38
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
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
    dec b
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    inc de
    nop
    nop
    ccf
    ld hl, $0000
    ccf
    ld hl, $0000
    ccf
    daa
    nop
    nop
    ccf
    ld hl, $0000
    ccf
    ld bc, $0000
    ccf
    ld hl, $0000
    ccf
    ld hl, $0000
    ccf
    ld hl, $0000
    ccf
    ld hl, $0000
    ccf
    ld hl, $0000
    ccf
    ld hl, $0000
    ccf
    ld hl, $0000
    ccf
    ccf
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    jr c, jr_0d1_484b

jr_0d1_484b:
    nop
    ld [hl+], a
    ld e, l
    add b
    nop
    ld h, b
    rra
    add b
    nop
    ld d, b
    cpl
    add b
    nop
    ld d, e
    inc l
    add b
    nop
    ld a, a
    jr nz, jr_0d1_485f

jr_0d1_485f:
    nop
    ld [hl], d
    ld c, h
    nop
    nop
    rst $38
    pop hl
    ldh [rLCDC], a
    rst $38
    rra
    ldh a, [rNR41]
    rst $38
    nop
    ldh a, [rNR41]
    rst $38
    ld b, b
    ldh a, [rNR41]
    rst $38
    add b
    ldh a, [$30]
    rst $38
    inc c
    ldh [$e0], a
    rst $38
    ld bc, $00c0
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    nop
    rst $38
    nop
    ret nz

    ret nz

    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    ldh a, [$80]
    add b
    rst $38
    ldh a, [$80]
    add b
    rst $38
    ld h, c
    nop
    nop
    rst $38
    ld hl, $0000
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    db $fc
    call nz, RST_00
    db $fc
    sbc h
    nop
    nop
    ld a, h
    inc l
    nop
    nop
    ld a, [hl]
    ld b, $00
    nop
    ld a, [hl]
    ld c, d
    nop
    nop
    ccf
    ld hl, $0000
    rra
    ld de, $0000
    rra
    ld de, $0000
    rrca
    ld [$8080], sp
    dec c
    ld a, [bc]
    add b
    add b
    inc b
    rlca
    ret nz

    ld b, b
    ld b, $05
    ret nz

    ld b, b
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rra
    ld e, $e0
    jr nz, jr_0d1_4938

    inc a
    ret nz

    ld b, b
    ld a, a
    ld [hl], c
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
    inc e
    ldh [rP1], a
    ld bc, $748a
    ld bc, $8200
    ld a, h
    ld bc, $4300
    cp l
    ld bc, $5f00
    cp [hl]
    add c
    ld a, c
    rst $38
    ld h, b
    rrca
    or $ff
    rra
    sbc a
    ld a, b
    rst $38
    nop
    rst $38
    sub b
    rst $38
    nop
    rst $38
    sub d
    rst $38
    ld b, b

jr_0d1_4938:
    rst $38
    add e
    rst $38
    add b
    ld a, a
    ld d, a
    rst $38
    add a
    jr c, jr_0d1_497a

    rst $38
    and b
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ccf
    jr nz, jr_0d1_4959

jr_0d1_4959:
    nop
    ccf
    jr nz, jr_0d1_495d

jr_0d1_495d:
    nop
    ccf
    jr nz, jr_0d1_4961

jr_0d1_4961:
    nop
    ccf
    inc hl
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rla
    nop
    nop
    ccf
    inc hl
    nop
    nop
    ccf
    ld hl, $0000

jr_0d1_497a:
    ld a, a
    ld b, c
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    sbc h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    rlca
    rlca
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

jr_0d1_49cf:
    nop
    nop
    nop
    nop
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
    ld hl, sp+$78
    nop
    nop
    cp $c6
    nop
    nop
    rst $38
    add hl, bc
    nop
    nop
    rst $38
    inc b
    add b
    add b
    rst $38
    inc b
    add b
    add b
    rst $38
    inc bc
    add b
    add b
    rst $38
    inc bc
    nop
    nop
    cp $0e
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    nop
    add b
    add b
    rst $38
    ld c, $80
    add b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    nop
    ret nz

    ld b, b
    rst $38
    ld bc, $c0c0
    rst $38
    ret nz

    ret nz

    ld b, b
    rst $38
    rst $38
    add b
    add b
    db $fc
    call nz, RST_00
    cp $82
    nop
    nop
    cp $82
    nop
    nop
    cp $82
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    ld a, a
    ld b, c
    nop
    nop
    ccf
    ld hl, $0000
    ccf
    ld hl, $0000
    ccf
    jr nz, jr_0d1_49cf

    add b
    rra
    db $10
    add b
    add b
    rra
    db $10
    add b
    add b
    rrca
    ld [$8080], sp
    dec c
    ld a, [bc]
    ld b, b
    ret nz

    nop
    inc bc
    nop
    add b
    ld [bc], a
    inc bc
    nop
    ret nz

    nop
    ld bc, $c000
    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [rNR10]
    rra
    ld e, $c0
    nop
    ccf
    jr c, jr_0d1_4a7f

jr_0d1_4a7f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0002
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    ld [bc], a
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    jr nz, jr_0d1_4ad9

jr_0d1_4ad9:
    nop
    ld a, a
    ld d, b
    nop
    nop
    rst $38
    adc b
    nop
    nop
    rst $38
    ret z

    nop
    nop
    rst $38
    adc b
    nop
    nop
    rst $38
    sub b
    nop
    nop
    rst $38
    sub b
    nop
    nop
    rst $38
    ret nc

    nop
    nop
    rst $38
    cp b
    nop
    nop
    rst $38
    sbc b
    nop
    nop
    rst $38
    adc b
    nop
    nop
    rst $38
    adc b
    nop
    nop
    rst $38
    xor b
    nop
    nop
    rst $38
    add sp, $00
    nop
    rst $18
    rst $38
    nop
    nop
    rrca
    ld [hl], b
    nop
    nop
    scf
    ld c, b
    nop
    nop
    rra
    ld h, b
    nop
    nop
    rrca
    jr nc, jr_0d1_4b21

jr_0d1_4b21:
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    rla
    nop
    nop
    rra
    inc c
    nop
    nop
    rra
    nop
    nop
    nop

jr_0d1_4b36:
    rra
    nop
    nop
    nop
    rra
    ld de, $0000
    rra
    jr jr_0d1_4b41

jr_0d1_4b41:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0d1_4b36

    nop
    nop
    inc d
    add sp, $00
    nop
    inc b
    ld hl, sp+$00
    nop
    add h
    ld a, b
    nop
    nop
    sbc h
    ld h, b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    cp $0a
    nop
    nop
    rst $38
    ld sp, hl
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $8080
    rst $38
    ld bc, $8080
    rst $38
    ld h, a
    add b
    add b
    rst $38
    add hl, bc
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    rst $38
    ld bc, $8080
    rst $38
    rlca
    add b
    add b
    rst $38
    ld [bc], a
    add b
    add b
    rst $38
    ld [bc], a
    add b
    add b
    rst $38
    ld [bc], a
    add b
    add b
    rst $38
    ld [bc], a
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    cp $85
    add b
    nop
    db $fd
    add [hl]
    nop
    add b
    rst $38
    add h
    nop
    add b
    db $fc
    adc e
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    adc $c0
    ld b, b
    rst $38
    adc $c0
    ld b, b
    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    ld h, e
    ldh a, [rNR10]
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    or c
    ld hl, sp-$78
    rst $38
    sbc a
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
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    nop
    inc bc
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
    inc bc
    ld bc, $0000
    rlca
    ld [bc], a
    nop
    nop
    rrca
    inc b
    nop
    nop
    rrca
    inc b
    nop
    nop
    rrca
    inc b
    nop
    nop
    rrca
    inc b
    nop
    nop
    rrca
    inc b
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    rra
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop

jr_0d1_4caa:
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    rlca
    rlca
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
    jr jr_0d1_4caa

    nop
    nop
    add h
    ld a, b
    nop
    nop
    add h
    ld a, b
    nop
    nop
    ld b, h
    cp b
    nop
    nop
    call z, Call_000_0070
    nop
    ld hl, sp+$40
    nop
    nop
    ret nc

    and b
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    db $fc
    inc b
    nop
    nop
    cp $0a
    nop
    nop
    cp $86
    nop
    nop
    cp $c6
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    adc h
    nop
    nop
    db $fc
    adc h
    nop
    nop
    db $fc
    call z, RST_00
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    adc h
    nop
    nop
    sbc h
    ld l, h
    nop
    nop
    sbc h
    db $ec
    nop
    nop
    xor b
    ld d, b
    nop
    nop
    or b
    ld c, b
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ret nz

    jr nc, jr_0d1_4d33

jr_0d1_4d33:
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$d0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0f01
    ld [$c0ff], sp
    rlca
    ld a, h
    rst $38
    ld b, b
    rrca
    db $f4
    rst $38
    inc e
    ld c, a
    adc a
    rst $38
    rst $38
    nop
    nop
    rrca
    inc b
    nop
    nop
    rrca
    inc b
    nop
    nop
    rrca
    inc b
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    rra
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop

jr_0d1_4e2a:
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    rlca
    rlca
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
    jr jr_0d1_4e2a

    nop
    nop
    add h
    ld a, b
    nop
    nop
    add h
    ld a, b
    nop
    nop
    ld b, h
    cp b
    nop
    nop
    call z, Call_000_0070
    nop
    ld hl, sp+$40
    nop
    nop
    ret nc

    and b
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    cp $02
    nop
    nop
    cp $42
    nop
    nop
    cp $7a
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc c
    nop
    nop
    db $fc
    inc d
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$d0]
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
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    rrca
    ld [$45fe], sp
    cpl
    rra
    rst $38
    ld b, h
    ld c, a
    scf
    rst $38
    sbc a
    or a
    ld c, h
    rst $38
    dec b
    ld l, a
    sub h
    rst $38
    nop
    ld e, a
    inc l
    rst $38
    db $e4
    nop
    ld b, b
    rlca
    rlca
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    ld b, $00
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ccf
    ld [hl+], a
    nop
    nop
    ccf
    ld [hl+], a
    nop
    nop
    ld a, a
    ld b, d
    nop
    nop
    ld a, a
    ld c, a
    nop
    nop
    ld a, l
    ld bc, $0000
    ld a, l
    dec b
    nop
    nop
    ld a, h
    ld h, h
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld e, h
    inc h
    nop
    nop
    ld c, h
    inc [hl]
    nop
    nop
    ld c, h
    jr nc, jr_0d1_4fa5

jr_0d1_4fa5:
    nop
    inc h
    jr jr_0d1_4fa9

jr_0d1_4fa9:
    nop

jr_0d1_4faa:
    jr nz, jr_0d1_4fc4

    nop
    nop
    jr nz, jr_0d1_4fc8

    nop
    nop
    jr nz, jr_0d1_4fcc

    nop
    nop
    ld hl, sp-$08
    rlca
    rlca
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    nop
    nop
    nop
    nop

jr_0d1_4fc4:
    nop
    nop
    nop
    nop

jr_0d1_4fc8:
    jr jr_0d1_4faa

    nop
    nop

jr_0d1_4fcc:
    inc b
    ld hl, sp+$00
    nop
    add h
    ld a, b
    nop
    nop
    add h
    ld a, b
    nop
    nop
    ld b, h
    cp b
    nop
    nop
    ret c

    ld h, b
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    db $fc
    inc c
    nop
    nop
    cp $82
    nop
    nop
    rst $38
    inc bc
    nop
    nop
    rst $38
    inc hl
    nop
    nop
    rst $38
    rst $20
    nop
    nop
    cp $fe
    nop
    nop
    cp $0e
    nop
    nop
    db $fc
    inc [hl]
    nop
    nop
    db $fc
    inc c
    nop
    nop
    db $fc
    inc d
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    cp $02
    nop
    nop
    cp $0e
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp+$58
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp-$38
    nop
    nop
    db $fc
    call nc, RST_00
    db $fc
    call nz, RST_00
    ld a, [hl]
    ld c, d
    nop
    nop
    ld a, $22
    nop
    nop
    ccf
    ld hl, $0000
    rra
    ld de, $0000
    rrca
    ld [$8080], sp
    rrca
    ld [$8080], sp
    rlca
    inc b
    ret nz

    ld b, b
    rlca
    rlca
    ret nz

    ret nz

    ccf
    ccf
    ret nz

    ret nz

    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$30ff], sp
    ld b, a
    inc a
    rst $38
    db $10
    adc a
    ld [hl], h
    rst $38
    rlca
    ld c, a
    adc a
    rst $38
    rst $38
    nop
    nop
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld bc, $0000
    rra
    stop
    nop
    rra
    ld de, $0000
    rrca
    ld [$0000], sp
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    ld b, $00
    nop
    dec b
    rlca
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    ld b, $78
    nop
    nop
    ld hl, $00de
    nop
    pop hl
    sbc $00
    nop
    sub c
    ld l, [hl]
    nop
    nop
    di
    inc e
    nop
    nop
    ld a, $d0
    nop
    nop
    db $f4
    jr z, jr_0d1_5163

jr_0d1_5163:
    nop
    ld a, a
    ld a, e
    nop
    nop
    rst $38
    nop
    add b
    add b
    rst $38
    db $10
    add b
    add b
    rst $38
    ld e, $80
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    ld bc, $0000
    rst $38
    inc bc
    nop
    nop
    rst $38
    dec b
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    rst $38
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc b
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $fc
    inc b
    nop
    nop
    cp $82
    nop
    nop
    ld a, [hl]
    jp nz, RST_00

    ld a, a
    and c
    nop
    nop
    ld e, a
    sub c
    nop
    nop
    ld c, a
    adc a
    nop
    nop
    ld c, a
    rst $08
    add b
    add b
    rst $18
    rst $18
    add b
    add b
    rst $38
    rst $38
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
    inc bc
    inc bc
    rst $38
    call z, Call_000_3f01
    rst $38
    inc b
    rrca
    ld [hl], c
    rst $38
    ld bc, $4f33
    rst $38
    rst $38
    ld a, a
    add d
    rst $38
    dec b
    ld b, a
    add a
    rst $38
    db $fd
    nop
    nop
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    ld b, $00
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rra
    stop
    nop
    rra
    stop
    nop
    ccf
    jr nz, jr_0d1_527d

jr_0d1_527d:
    nop
    ccf
    ld hl, $0000
    ld a, a
    ld b, d
    nop
    nop
    ld a, a
    ld c, a
    nop
    nop
    ld a, l
    ld bc, $0000
    ld a, l
    ld h, l
    nop
    nop
    ld a, h
    ld h, h
    nop
    nop
    ld a, h
    ld h, h
    nop
    nop
    ld a, h
    ld b, b
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld b, b
    nop
    nop
    ld a, h

jr_0d1_52b3:
    ld b, h
    nop
    nop
    db $fc
    db $f4
    rlca
    rlca
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    cpl
    nop
    nop
    ld [hl], b
    ld l, a
    add b
    nop
    ld c, b
    scf
    add b
    nop
    ld a, c
    ld c, $80
    nop
    rra
    ld l, b
    add b
    nop
    rra
    ld a, [hl]
    nop
    nop
    rst $38
    pop hl
    nop
    nop
    rst $38
    inc b
    add b
    add b
    rst $38
    rst $00
    ret nz

    ld b, b
    rst $38
    rst $38
    ret nz

    ld b, b
    rst $38
    jr jr_0d1_52b3

    ld b, b
    rst $38
    ld b, $c0
    ld b, b
    rst $38
    nop
    ret nz

    ret nz

    rst $38
    inc bc
    add b
    add b
    rst $38
    nop
    add b
    add b
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    rlca
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    pop af
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    inc e
    nop
    nop
    db $fc
    inc c
    nop
    nop
    ld hl, sp+$38
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp+$58
    nop
    nop
    ld hl, sp-$18
    nop
    nop
    ld hl, sp-$38
    nop
    nop
    db $fc
    call nc, RST_00
    db $fc
    call nz, RST_00
    ld a, [hl]
    ld c, d
    nop
    nop
    ld a, $22
    nop
    nop
    dec sp
    dec h
    nop
    nop
    inc de
    inc e
    nop
    nop
    add hl, bc
    ld c, $00
    nop
    inc b
    inc bc
    add b
    nop
    ld [bc], a
    ld bc, $0080
    rlca
    rlca
    add b
    add b
    ccf
    ccf
    ret nz

    ret nz

    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$30ff], sp
    ld b, a
    inc a
    rst $38
    db $10
    adc a
    ld [hl], h
    rst $38
    rlca
    ld c, a
    adc a
    rst $38
    rst $38
    nop
    nop
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0000
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld bc, $0000
    rrca
    nop
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    ld b, $78
    nop
    nop
    ld hl, $00de
    nop
    pop hl
    sbc $00
    nop
    sub c
    ld l, [hl]
    nop
    nop
    di
    inc e
    nop
    nop
    ld a, $d0
    nop
    nop
    db $f4
    jr z, jr_0d1_5463

jr_0d1_5463:
    nop
    ld a, a
    ld a, e
    nop
    nop
    rst $38
    nop
    add b
    add b
    rst $38
    db $10
    add b
    add b
    rst $38
    ld e, $80
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    ld bc, $0000
    rst $38
    inc bc
    nop
    nop
    rst $38
    dec b
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    rst $38
    nop
    nop
    cp $7e
    nop
    nop
    db $fc
    inc e
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$48
    nop
    nop
    ld hl, sp-$58
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    db $fc
    add h
    nop
    nop
    cp $92
    nop
    nop
    db $fc
    ret c

    nop
    nop
    jp nc, Jump_000_00cc

    nop
    adc l
    ld [bc], a
    nop
    nop
    add a
    rlca
    add b
    add b
    add a
    add a
    ret nz

    ret nz

    adc a
    adc a
    ret nz

    ret nz

    cp a
    cp a
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3002
    ret nz

    ld bc, $0806
    ldh a, [rTAC]
    ld b, $08
    ldh a, [rDIV]
    inc bc
    adc b
    ld [hl], b
    scf
    inc b
    sbc h
    db $ec
    ld b, a
    ld [hl], $fe
    cp [hl]
    rla
    pop hl
    rst $38
    ld bc, $a21f
    rst $38
    nop
    ccf
    add hl, bc
    rst $38
    adc b
    rra
    ld bc, $3eff
    rra
    nop
    rst $38
    ld b, h
    rrca
    ld bc, $c0ff
    ld bc, $ff01
    ld h, b
    nop
    nop
    rst $38
    and b
    nop
    nop
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ccf
    jr nz, jr_0d1_5559

jr_0d1_5559:
    nop
    ccf
    jr nz, jr_0d1_555d

jr_0d1_555d:
    nop
    ccf
    jr nz, jr_0d1_5561

jr_0d1_5561:
    nop
    ccf
    jr nz, jr_0d1_5565

jr_0d1_5565:
    nop
    ccf
    ccf
    nop
    nop
    rra
    inc de
    nop
    nop
    rra
    stop
    nop
    ccf
    jr nz, jr_0d1_5575

jr_0d1_5575:
    nop
    ccf
    jr nz, jr_0d1_5579

jr_0d1_5579:
    nop
    ld a, a
    ld b, c
    nop
    nop
    ld a, a
    ld b, e
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    ld a, h
    inc c
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld h, h
    nop
    nop
    ld a, h
    ld h, h
    nop
    nop
    ld a, h
    ld h, h
    nop
    nop
    ld a, h
    ld b, b
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld b, b
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    db $fc
    db $f4
    rlca
    rlca
    ld hl, sp-$08
    rrca
    rrca
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
    add b
    add b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    db $fc
    ld h, h
    nop
    nop
    db $fc
    inc c
    nop
    nop
    db $fc
    inc d
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $7a
    nop
    nop
    cp $fe
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $fc
    sub h
    nop
    nop
    ld a, h
    ld [hl], h
    nop
    nop
    ld a, [hl]
    ld [hl], h
    nop
    nop
    ld a, a
    ld h, c
    nop
    nop
    ccf
    ld hl, $0000
    rra
    db $10
    add b
    add b
    add hl, de
    ld d, $c0
    ld b, b
    inc c
    inc bc
    add b
    nop
    ld [bc], a
    ld bc, $8040
    ld bc, $4000
    add b
    ld bc, $e001
    ldh [rSB], a
    ld bc, $f0f0
    inc bc
    inc bc
    ldh a, [$f0]
    rrca
    rrca
    ldh [$e0], a
    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    ld bc, $0000
    rlca
    ld [bc], a
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    rlca
    ld b, $00
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    rrca
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    ld b, d
    cp h
    nop
    nop
    jp nz, Jump_000_00bc

    nop
    ld [hl+], a
    call c, RST_00
    and $38
    nop
    nop
    ld a, h
    and b
    nop
    nop
    add sp, $50
    nop
    nop
    ld a, h
    ld [hl], h
    nop
    nop
    cp $82
    nop
    nop
    rst $38
    dec b
    nop
    nop
    rst $38
    ld b, e
    nop
    nop
    rst $38
    ld h, e
    nop
    nop
    cp $42
    nop
    nop
    cp $46
    nop
    nop
    cp $46
    nop
    nop
    cp $66
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    cp $46
    nop
    nop
    adc $36
    nop
    nop
    adc $f6
    nop
    nop
    call nc, RST_28
    nop
    ret c

    inc h
    nop
    nop
    ret nz

    inc a
    nop
    nop
    ldh [rNR23], a
    nop
    nop
    ld hl, sp+$08
    inc c
    inc c
    ld hl, sp+$08
    inc e
    inc e
    ld hl, sp+$08
    ld a, [hl]
    ld l, [hl]
    rst $38
    rra
    cp $0e
    rst $38
    jr z, @+$01

    rrca
    rst $38
    adc b
    rst $38
    ccf
    rst $38
    add b
    rst $00
    ld b, a
    rst $38
    ld bc, $8383
    nop
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
    inc b
    inc bc
    nop
    nop
    rlca
    dec b
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rlca
    nop
    nop
    nop
    inc e
    dec bc
    nop
    nop
    add hl, sp
    rla
    nop
    nop
    ld [hl], e
    inc l
    nop
    nop
    ld [hl], a
    ld a, [hl-]
    nop
    nop
    ld [hl], e
    inc l
    nop
    nop
    ld [hl], a
    ld a, [hl-]
    nop
    nop
    ld [hl], c
    ld l, $00
    nop
    ld [hl], a
    ld a, [hl-]
    nop
    nop
    ld [hl], c
    ld l, a
    nop
    nop
    ld [hl], a
    ld a, [hl-]
    nop
    nop
    ld a, a
    ld a, $00
    nop
    rst $38
    ld [hl-], a
    nop
    nop
    rst $38
    ld [hl-], a
    nop
    nop
    rst $38
    ld [hl], d
    nop
    nop
    rst $38
    ld a, d
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    rra
    ld [hl-], a
    nop
    nop
    rra
    ld [hl-], a
    nop
    nop
    rra
    ld sp, $0000
    ccf
    ld de, $0000
    rra
    ld bc, $0000
    rra
    ld bc, $0000
    rra
    ld de, $0000
    rra
    ld de, $0000
    rra
    ld de, $0000
    rra
    dec b
    nop
    nop
    rra
    dec e
    nop
    nop
    rra
    add hl, de
    nop
    nop
    rra
    ld bc, $0000
    dec d
    dec bc
    nop
    nop
    ld bc, $000f
    nop
    add hl, bc
    rlca
    nop
    nop

jr_0d1_58a6:
    add hl, bc
    rlca
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    rrca
    ld bc, $0000
    ccf
    ld a, $01
    ld bc, $ffff
    inc bc
    inc bc
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
    ld [hl], b
    add b
    nop
    nop
    ld c, b
    or b
    nop
    nop
    ret z

    or b
    nop
    nop
    jr z, jr_0d1_58a6

    nop
    nop
    add sp, $10
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ld hl, sp-$48
    nop
    nop
    db $fc
    inc b
    nop
    nop
    cp $82
    nop
    nop
    cp $22
    nop
    nop
    cp $b2
    nop
    nop
    cp $a2
    nop
    nop
    cp $a2
    nop
    nop
    db $fc
    and h
    nop
    nop
    db $fc
    or h
    nop
    nop
    cp $22
    nop
    nop
    cp $22
    nop
    nop
    cp $22
    nop
    nop
    cp $2a
    nop
    nop
    cp $2c
    nop
    nop
    or $0c
    nop
    nop
    ldh a, [$cc]
    nop
    nop
    ld a, [c]
    inc c
    nop
    nop
    ldh a, [$0e]
    nop
    nop
    ldh a, [$0e]
    nop
    nop
    ld a, [$0004]
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$10
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$40
    nop
    nop
    ld hl, sp-$38
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
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
    nop
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
    inc b
    inc bc
    nop
    nop
    rlca
    dec b
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    rlca
    ld [bc], a
    nop
    nop
    inc b
    inc bc
    nop
    nop
    rlca
    nop
    nop
    nop
    add hl, sp
    rlca
    ccf
    nop
    rst $38
    inc bc
    ld c, [hl]
    ld sp, $fd03
    adc h
    ld [hl], e
    ld a, a
    sub e
    ld d, d
    and l
    rst $38
    ld hl, $0000
    ld [hl], a
    ld a, [hl-]
    nop
    nop
    ld h, c
    ld a, $00
    nop
    ld [hl], a
    ld a, [hl-]
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld [hl], a
    ld a, [hl-]
    nop
    nop
    ld a, a
    ld a, $00
    nop
    rst $38
    ld [hl-], a
    nop
    nop
    rst $38
    ld [hl-], a
    nop
    nop
    rst $38
    ld [hl], d
    nop
    nop
    rst $38
    ld a, d
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    rra
    ld [bc], a
    nop
    nop
    rra
    ld [bc], a
    nop
    nop
    rra
    ld bc, $0000
    rra
    ld bc, $0000
    rra
    ld bc, $0000
    rra
    ld bc, $0000
    rra
    ld bc, $0000
    rra
    ld bc, $0000
    rra
    ld bc, $0000
    rra
    dec b
    nop
    nop
    rra
    dec e
    nop
    nop
    rra
    add hl, de
    nop
    nop
    rra
    ld bc, $0000
    dec d
    dec bc
    nop
    nop
    ld bc, $000f
    nop
    add hl, bc
    rlca
    nop
    nop

jr_0d1_5a26:
    add hl, bc
    rlca
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    rrca
    ld bc, $0000
    ccf
    ld a, $01
    ld bc, $ffff
    inc bc
    inc bc
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
    ld [hl], b
    add b
    nop
    nop
    ld c, b
    or b
    nop
    nop
    ret z

    or b
    nop
    nop
    jr z, jr_0d1_5a26

    nop
    nop
    add sp, $10
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    rst $38
    di
    nop
    nop
    rst $38
    ld bc, $8080
    rst $38
    add l
    add b
    add b
    rst $38
    rlca
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    rst $38
    add e
    nop
    nop
    cp $82
    nop
    nop
    cp $82
    nop
    nop
    cp $82
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc b
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$10
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$40
    nop
    nop
    ld hl, sp-$38
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $ff
    ld [hl], l
    inc hl
    ld e, $ff
    inc hl
    ld e, a
    ld [hl+], a
    rst $38
    inc c
    and b
    ld d, b
    ld b, b
    ccf
    ld [bc], a
    ld bc, $e01f
    dec b
    ld [bc], a
    ccf
    rst $28
    ld a, [bc]
    dec b
    dec sp
    dec h
    nop
    nop
    dec a
    ld a, [hl+]
    nop
    nop
    dec sp
    dec h
    nop
    nop
    dec a
    ld a, [de]
    nop
    nop
    dec sp
    dec b
    nop
    nop
    ld a, l
    ld a, [bc]
    nop
    nop
    ld a, a
    rra
    nop
    nop
    ld a, a
    ld de, $0000
    rst $38
    ld de, $0000
    ld a, a
    ld sp, $0000
    ccf
    dec l
    nop
    nop
    ccf
    daa
    nop
    nop
    ld a, a
    ld b, a
    nop
    nop
    ld a, a
    ld b, a
    nop
    nop
    db $fd
    add l
    nop
    nop
    db $fd
    adc l
    ld bc, $f901
    add hl, bc
    ld bc, $f101
    ld de, $0203
    pop af
    ld [hl], c
    inc bc
    ld [bc], a
    pop af
    ld de, $0003
    pop hl
    ld h, c
    inc bc
    nop
    ldh [$a0], a
    inc bc
    inc bc
    ldh [rNR41], a
    inc bc
    ld [bc], a
    ldh [rNR41], a
    ld [bc], a
    ld bc, $60a0
    ld [bc], a
    inc bc
    nop
    ret nz

    inc bc
    ld [bc], a
    nop
    ret nz

    ld bc, $0000
    ret nz

    ld bc, $0000
    ret nz

    ld bc, $0000
    ret nz

    ld bc, $c000
    nop
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $001e
    nop
    ld b, b
    ccf
    add b
    nop
    ld b, h
    ld a, e
    add b
    nop
    ld a, [hl]
    add hl, de
    add b
    nop
    and e
    ld e, h
    nop
    nop
    cp $40
    nop
    nop
    sub [hl]
    ld l, d
    nop
    nop
    rst $38
    add a
    nop
    nop
    rst $38
    ld h, b
    add b
    add b
    ld a, a
    and b
    ret nz

    ld b, b
    rst $38
    ld h, h
    ret nz

    ld b, b
    rst $38
    add h
    ret nz

    ret nz

    rst $38
    ld a, a
    ret nz

    ret nz

    rst $38
    ld b, e
    add b
    add b
    rst $38
    ld c, l
    nop
    nop
    rst $38
    ld b, e
    nop
    nop
    rst $38
    add l
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $02
    nop
    nop
    cp $02
    nop
    nop
    cp $fe
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc d
    nop
    nop
    db $fc
    db $f4
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    cp $ca
    nop
    nop
    ld a, [hl]
    ld h, d
    nop
    nop
    ld a, $32
    nop
    nop
    rra
    ld de, $0000
    dec de
    inc d
    nop
    nop
    add hl, bc
    ld b, $00
    nop
    inc b
    inc bc
    add b
    nop
    ld [bc], a
    ld bc, $0080
    ld [bc], a
    ld bc, $0080
    rrca
    rrca
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ld b, $ff
    nop
    ld b, a
    ld a, [hl-]
    ret nz

    ccf
    adc a
    db $76
    adc a
    ld [hl], d
    ld d, b
    and b
    ld e, a
    and h
    nop
    nop
    ld c, $07
    nop
    nop
    ld c, $05
    nop
    nop
    ld c, $07
    nop
    nop
    ld c, $0d
    nop
    nop
    ld c, $07
    nop
    nop
    rrca
    rlca
    nop
    nop
    rra
    ld b, $00
    nop
    rra
    ld b, $00
    nop
    rra
    ld c, $00
    nop
    rra
    rrca
    nop
    nop
    rra
    rrca
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    add hl, bc
    nop
    nop
    rra
    ld de, $0000
    rra
    ld de, $0000
    rra
    ld de, $0000
    ccf
    ld hl, $0000
    ccf
    daa
    nop
    nop
    ccf
    ld hl, $0000
    ld a, a
    ld d, c
    nop
    nop
    ld a, [hl]
    ld [hl], d
    nop
    nop
    ld a, [hl]
    ld h, d
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    ld l, d
    ld d, [hl]
    nop
    nop
    jr nz, jr_0d1_5d5c

    nop
    nop
    jr nc, jr_0d1_5d50

    nop
    nop
    db $10
    inc c
    nop
    nop
    db $10
    inc c
    nop
    nop
    db $10
    inc c
    nop
    nop
    inc e
    nop
    nop
    nop
    ld a, h
    ld a, h
    inc bc
    inc bc
    cp $fe
    rlca
    rlca
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    jr nc, jr_0d1_5d4b

jr_0d1_5d4b:
    nop
    adc c
    halt
    nop

jr_0d1_5d50:
    ld sp, hl
    or [hl]
    nop
    nop
    and l
    ld e, d
    nop
    nop
    db $fd
    ld b, d
    nop
    nop

jr_0d1_5d5c:
    sbc [hl]
    ld h, b
    nop
    nop
    db $fc
    ld [$0000], sp
    ccf
    cp $e0
    ld h, b
    rst $38
    ld h, b
    ldh a, [$30]
    ld a, a
    or b
    ldh a, [$b0]
    rst $38
    ld h, b
    ldh a, [$f0]
    rst $38
    ccf
    ldh [$e0], a
    rst $38
    ld d, b
    ldh [$60], a
    ccf
    ret nc

    ret nz

    ld b, b
    rst $38
    ld d, b
    ret nz

    ld b, b
    ccf
    ldh a, [$c0]
    ld b, b
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    rst $38
    ret nz

    ret nz

    cp $9e
    nop
    nop
    cp $82
    nop
    nop
    cp $02
    nop
    nop
    db $fc
    inc c
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc c
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp-$68
    nop
    nop
    db $fc
    db $f4
    nop
    nop
    db $fc
    db $f4
    nop
    nop
    ld a, [hl]
    ld h, d
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    ccf
    ld hl, $0000
    rra
    db $10
    add b
    add b
    rra
    db $10
    add b
    add b
    rrca
    ld [$40c0], sp
    rlca
    dec b
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    ccf
    ccf
    add b
    add b
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    inc bc
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    rlca
    rlca
    nop
    nop
    ld b, e
    dec a
    ld [bc], a
    ld bc, $f30f
    dec h
    ld a, [de]
    ld e, a
    and e
    inc bc
    db $fc
    rst $38
    add l
    and b
    ld e, d
    rst $38
    db $fc
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    dec b
    nop
    nop
    rlca
    ld b, $00
    nop
    rlca
    ld bc, $0000
    rlca
    ld bc, $0000
    rlca
    inc bc
    nop
    nop
    rlca
    inc bc
    nop
    nop
    rlca
    inc bc
    nop
    nop
    rlca
    inc bc
    nop
    nop
    rlca
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0070], sp
    nop
    inc [hl]
    ret z

    nop
    nop
    inc h
    ret c

    nop
    nop
    ld [$00d4], a
    nop
    ld c, [hl]
    or b
    nop
    nop
    rst $38
    add a
    add b
    add b
    rst $38
    ld hl, sp-$40
    ld b, b
    rst $38
    nop
    ldh [$60], a
    rst $38
    cpl
    ldh a, [$f0]
    rst $38
    ld hl, sp-$10
    ldh a, [$bf]
    ld c, b
    ldh a, [rSVBK]
    ld a, a
    xor b
    ldh [$a0], a
    cp a
    ld c, b
    ldh [rNR41], a
    ld a, a
    xor b
    ldh [rNR41], a
    cp a
    ld c, b
    ldh [rNR41], a
    ld a, a
    or b
    ldh [rNR41], a
    cp a
    ld h, b
    ldh [rNR41], a
    rst $38
    ld hl, sp-$10

jr_0d1_5f0f:
    ldh a, [rIE]
    and c
    ldh a, [rNR10]
    rst $38
    jr nz, @-$0e

    db $10
    rst $38
    jr nz, @-$0e

    db $10
    rst $38
    jr nz, jr_0d1_5f0f

    db $10
    rst $38
    cp a
    ldh a, [$f0]
    rst $38
    pop af
    ret nz

    ret nz

    rst $38
    db $10
    ret nz

    ret nz

    rst $38
    ld hl, $8080
    rst $38
    and a
    nop
    nop
    cp $a2
    nop
    nop
    db $fc
    call z, RST_00
    db $fc
    call nz, RST_00
    ld a, b
    ld c, b
    nop
    nop
    ld hl, sp-$68
    nop
    nop
    db $fc
    adc h
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    db $fc
    db $ec
    nop
    nop
    cp $ca
    nop
    nop
    cp $8a
    nop
    nop
    cp $8a
    nop
    nop
    ld a, [$008e]
    nop
    ld a, [$008c]
    nop
    ld sp, hl
    adc [hl]
    nop
    nop
    db $fd
    adc d
    nop
    nop
    db $fc
    adc e
    add b
    add b
    ei
    ei
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ld b, $ff
    nop
    ld b, a
    ld a, [hl-]
    ret nz

    ccf
    adc a
    db $76
    adc a
    ld [hl], d
    ld d, b
    and b
    ld e, a
    and h
    nop
    nop
    ld c, $07
    nop
    nop
    inc c
    rlca
    nop
    nop
    ld c, $07
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, $07
    nop
    nop
    rrca
    rlca
    nop
    nop
    rra
    ld b, $00
    nop
    rra
    ld b, $00
    nop
    rra
    ld c, $00
    nop
    rra
    rrca
    nop
    nop
    rra
    rrca
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    add hl, bc
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
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
    nop
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    jr nc, jr_0d1_604b

jr_0d1_604b:
    nop
    adc c
    halt
    nop
    ld sp, hl
    or [hl]
    nop
    nop
    and l
    ld e, d
    nop
    nop
    db $fd
    ld b, d
    nop
    nop
    sbc [hl]
    ld h, b
    nop
    nop
    db $fc
    ld [$0000], sp
    ccf
    cp $e0
    ld h, b
    rst $38
    ld h, b
    ldh a, [$30]
    ld a, a
    or b
    ldh a, [$b0]
    rst $38
    ld h, b
    ldh a, [$f0]
    rst $38
    ccf
    ldh [$e0], a
    rst $38
    ld d, b
    ldh [$60], a
    ccf
    ret nc

    ret nz

    ld b, b
    rst $38
    ld d, b
    ret nz

    ld b, b
    ccf
    ldh a, [$c0]
    ld b, b
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    db $e3
    add b
    add b
    rst $38
    ld h, c
    add b
    add b
    rst $38
    ld hl, $8080
    rst $38
    ld hl, $0000
    cp $22
    nop
    nop
    cp $62
    nop
    nop
    cp $42
    nop
    nop
    db $fc
    call z, RST_00
    db $fc
    ld b, b
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    call nc, RST_00
    db $fc
    ld [hl], h
    nop
    nop
    db $fc
    ld h, b
    nop
    nop
    ld a, h
    add b
    nop
    nop
    ld a, h
    ret nz

    nop
    nop
    db $fc
    ld b, b
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, [hl]
    ld b, [hl]
    nop
    nop
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3800
    ret nz

    ld [bc], a
    ld bc, $d824
    inc bc
    ld [bc], a
    db $e4
    ret c

    ld [bc], a
    ld bc, $6894
    ld b, e
    ld sp, $0af7
    sub e
    ld h, e
    jp $47bd


    or h
    add c
    ld a, a
    cpl
    ld a, a
    or c
    rst $28
    ccf
    ld a, [hl-]
    ld hl, sp-$79
    ccf
    ld a, [bc]
    rst $38
    or c
    ccf
    dec bc
    rst $00
    ld a, e
    rra
    rlca
    rst $38
    ld e, e
    inc bc
    inc bc
    rst $00
    ld a, c
    ld bc, $ff01
    xor l
    ld bc, $e301
    ld a, a
    ld bc, $ff01
    inc l
    nop
    nop
    rst $38
    cp [hl]
    nop
    nop
    rst $38
    or d
    nop
    nop
    rst $38
    or e
    nop
    nop
    rst $38
    or c
    nop
    nop
    rst $38
    or e
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    dec e
    nop
    nop
    rra
    ld a, [de]
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    rlca
    ld b, $00
    nop
    rlca
    nop
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    inc b
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$b0]
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    db $fc
    sub b
    nop
    nop
    db $fc
    add b
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    db $fc
    inc c
    nop
    nop
    db $fc
    inc d
    nop
    nop
    cp $04
    nop
    nop
    cp $00
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    cp $0e
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$38
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ld hl, sp+$18
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    nop
    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ret c

    jr z, jr_0d1_625f

jr_0d1_625f:
    nop
    ret z

    jr nc, jr_0d1_6263

jr_0d1_6263:
    nop
    add sp, $50
    nop
    nop
    add sp, $50
    nop
    nop
    ld hl, sp+$58
    nop
    nop
    db $fc
    ld a, h
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld bc, $0000
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld c, $05
    nop
    nop
    inc e
    dec bc
    nop
    nop
    add hl, sp
    ld d, $00
    nop
    dec sp
    dec e
    nop
    nop
    add hl, sp
    ld d, $00
    nop
    dec sp
    dec e
    nop
    nop
    jr c, jr_0d1_6303

    nop
    nop
    dec sp
    dec e
    nop
    nop
    jr c, jr_0d1_632b

    nop
    nop
    dec sp
    dec e
    nop
    nop
    ccf
    rra
    nop
    nop
    ld a, a
    add hl, de
    nop
    nop
    ld a, a

jr_0d1_6303:
    add hl, de
    nop
    nop
    ld a, a
    add hl, sp
    nop
    nop
    ld a, a
    dec a
    nop
    nop
    ld a, a
    ccf
    nop
    nop
    rrca
    add hl, de
    nop
    nop
    rrca
    add hl, de
    nop
    nop
    rrca
    jr jr_0d1_631d

jr_0d1_631d:
    nop
    rra
    ld [$0000], sp
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca

jr_0d1_632b:
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp

jr_0d1_6336:
    rrca
    ld [bc], a
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0d1_6336

    nop
    nop
    inc h
    ret c

    nop
    nop
    db $e4
    ret c

    nop
    nop
    sub h
    ld l, b
    nop
    nop
    db $f4
    ld [$0000], sp
    ld a, b
    add b
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ld a, h
    call c, RST_00
    cp $82
    nop
    nop
    rst $38
    ld b, c
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    ld e, c
    nop
    nop
    rst $38
    ld d, c
    nop
    nop
    rst $38
    ld d, c
    nop
    nop
    cp $52
    nop
    nop
    cp $da
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    ld de, $0000
    rst $38
    ld de, $0000
    rst $38
    dec d
    nop
    nop
    rst $38
    ld d, $00
    nop
    ei
    ld b, $00
    nop
    ld hl, sp-$0a
    nop
    nop
    ld sp, hl
    ld b, $00
    nop
    ld hl, sp+$07
    nop
    nop
    ld hl, sp-$79
    nop
    nop
    db $fd
    add d
    nop
    nop
    cp $86
    jr nc, jr_0d1_6414

    rst $38
    add a
    ld a, b
    ld a, b
    rst $38
    add a
    db $fc
    inc c
    rst $38
    adc d
    db $fc
    inc c
    rst $38
    add d
    cp $1e
    rst $38
    and b
    cp $3e
    rst $38
    db $e4
    adc $ce
    rst $38
    rst $08
    adc [hl]
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d1_6414:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
