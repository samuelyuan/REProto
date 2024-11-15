SECTION "ROM Bank $0d0", ROMX[$4000], BANK[$d0]

    nop
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
    inc bc
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    ld [bc], a
    nop
    nop
    ld a, a
    ld [hl], c
    inc bc
    inc bc
    db $fd
    ld [de], a
    rlca
    inc b
    cp $11
    rlca
    inc b
    rst $38
    ld d, [hl]
    rlca
    inc b
    db $fc
    db $d3
    rlca
    inc b
    rst $38
    ld d, [hl]
    rlca
    inc b
    db $fc
    ld d, e
    inc bc
    ld [bc], a
    rst $38
    ld d, [hl]
    inc bc
    ld [bc], a
    db $fc
    db $db
    rlca
    inc b
    rst $38
    ld b, [hl]
    rlca
    inc b
    rst $38
    ld b, a
    rlca
    inc b
    rst $38
    ld b, h
    inc bc
    ld bc, $44ff
    inc bc
    inc bc
    ld a, a
    inc b
    ld [bc], a
    inc bc
    ld a, a
    ld b, $00
    inc bc
    ld a, a
    ld a, l
    nop
    inc bc
    cp a
    ld hl, $0700
    ld a, $a2
    nop
    rlca
    ld a, $82
    nop
    rlca
    cp [hl]
    ld [bc], a
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $00
    nop
    nop

jr_0d0_408a:
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $1c
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop

jr_0d0_409e:
    ld [hl+], a
    ld a, $00
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d

jr_0d0_40b3:
    ld [$0000], sp
    inc e
    inc e
    nop
    nop
    ld a, $3e
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
    jr nz, jr_0d0_408a

    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ldh a, [$60]
    nop
    nop
    ld d, b
    and b
    nop
    nop
    ldh [$80], a
    nop
    nop
    jr nz, jr_0d0_409e

    nop
    nop
    ldh [rNR41], a
    nop
    nop
    rst $38
    rst $00
    nop
    nop
    rst $18
    inc h
    ldh [$60], a
    ccf
    call z, $10f0
    ld a, a
    or l
    ldh a, [rNR10]
    rra
    push hl
    ldh a, [$90]
    ld a, a
    or l
    ldh a, [rNR10]
    rra
    push hl
    ldh a, [rNR10]
    ld a, a
    or l
    ldh [rNR41], a
    rra
    db $ed
    ldh [$a0], a
    ld a, a
    or c
    ldh a, [rNR10]
    rst $38
    pop af
    ldh a, [rNR10]
    rst $38
    ld de, $10f0
    rst $38
    ld de, $40e0
    rst $38
    db $10
    ld h, b
    ld h, b
    rst $38
    jr nc, jr_0d0_413f

    ld h, b
    rst $38
    rst $18
    nop
    ld h, b
    ld a, [hl]
    ld b, d
    add b
    ld h, b
    ld a, [hl]
    ld b, d
    nop
    ldh a, [$7e]
    ld b, d
    nop
    ldh a, [$3e]
    jr nz, jr_0d0_40b3

    ld [hl], b
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop

jr_0d0_413f:
    nop
    ld a, $02
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $1e
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    inc bc
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    ld [bc], a
    nop
    nop
    ccf
    ld de, $0304
    ld a, l
    sub d
    nop
    rlca
    ld a, $d1
    dec b
    ld [bc], a
    ld a, a
    sub [hl]
    ld bc, $7c02
    sub e
    nop
    nop
    ld a, a
    ld d, $00
    nop
    ld a, h
    ld d, e
    nop
    nop
    ld a, a
    ld d, [hl]
    nop
    nop
    ld a, h
    ld e, e
    nop
    nop
    ld a, a
    ld b, [hl]
    nop
    nop
    ld a, a
    rlca
    nop
    nop
    ld a, a
    inc b
    nop
    nop
    ld a, a
    ld b, h
    nop
    nop
    ld a, a
    inc b
    nop
    nop
    ld a, a
    ld b, $00
    nop
    ld a, a
    ld a, l
    nop
    nop
    ccf
    ld hl, $0000
    ld a, $22
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $00
    nop
    nop

jr_0d0_420a:
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $1c
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop

jr_0d0_421e:
    ld [hl+], a
    ld a, $00
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc e
    inc e
    nop
    nop
    ld a, $3e
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
    jr nz, jr_0d0_420a

    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ldh a, [$60]
    nop
    nop
    ld d, b
    and b
    nop
    nop
    ldh [$80], a
    nop
    nop
    jr nz, jr_0d0_421e

    nop
    nop
    ldh [rNR41], a
    nop
    nop
    cp $c4
    nop
    nop
    rst $18
    inc h
    db $10
    ldh [$3e], a
    call $f000
    ld a, a
    or h
    ld d, b
    and b
    rra
    push hl
    ld b, b
    and b
    ld a, a
    or l
    nop
    nop
    rra
    push hl
    nop
    nop
    ld a, a
    or h
    nop
    nop
    rra
    db $ec
    nop
    nop
    ld a, a
    or c
    nop
    nop
    rst $38
    pop af
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    ld de, $0000
    rst $38
    stop
    nop
    rst $38
    jr nc, jr_0d0_429f

jr_0d0_429f:
    nop
    rst $38
    rst $18
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
    ld a, [hl]
    ld b, d
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $1e
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ccf
    ld [de], a
    inc b
    inc bc
    ld a, a
    sub c
    nop
    rlca
    dec a
    jp nc, Jump_000_0205

    ld a, [hl]
    sbc c
    ld bc, $7f02
    sub $00
    nop
    ld a, h
    ld d, e
    nop
    nop
    ld a, a
    ld d, [hl]
    nop
    nop
    ld a, h
    inc de
    nop
    nop
    ld a, a
    ld d, $00
    nop
    ld a, h
    ld c, e
    nop
    nop
    ld a, a
    ld b, [hl]
    nop
    nop
    ld a, a
    ld b, a
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
    ld [$0000], sp
    rst $38
    inc c
    nop
    nop
    ld a, a
    ld a, d
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
    ld a, [hl]
    ld [bc], a
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, b
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    jr c, jr_0d0_43a0

jr_0d0_43a0:
    nop
    nop
    jr z, jr_0d0_43b4

    nop
    nop
    jr z, jr_0d0_43b8

    nop
    nop
    jr z, jr_0d0_43bc

    nop
    nop
    jr z, jr_0d0_43c0

    nop
    nop
    jr z, jr_0d0_43c4

jr_0d0_43b4:
    nop
    nop
    jr c, @+$3a

jr_0d0_43b8:
    nop
    nop
    ld a, h
    ld a, h

jr_0d0_43bc:
    nop
    nop
    cp $fe

jr_0d0_43c0:
    nop
    nop
    nop
    nop

jr_0d0_43c4:
    nop
    nop
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ld [$00f0], sp
    nop
    ld hl, sp-$50
    nop
    nop
    xor b
    ld d, b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ldh [rNR41], a
    nop
    nop
    cp $c4
    nop
    nop
    rst $18
    inc h
    nop
    nop
    ld a, $c5
    db $10
    ldh [$7f], a
    or h
    nop
    ldh a, [$1f]
    db $e4
    ld d, b
    and b
    ld a, a
    or h
    ld b, b
    and b
    rra
    push hl
    nop
    nop
    ld a, a
    or l
    nop
    nop
    rra
    db $ed
    nop
    nop
    ld a, a
    or c
    nop
    nop
    rst $38
    or b
    nop
    nop
    cp $e0
    nop
    nop
    cp $22
    nop
    nop
    cp $22
    nop
    nop
    cp $20
    nop
    nop
    cp $60
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
    db $e4
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, b
    nop
    nop
    ld a, h
    ld b, b
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
    nop
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
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
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
    inc b
    inc bc
    nop
    nop
    ld [$0007], sp
    nop
    rrca
    ld b, $00
    nop
    ld a, [bc]
    dec b
    nop
    nop
    rlca
    ld bc, $0000
    inc b
    inc bc
    nop
    nop
    rlca
    inc b
    nop
    nop
    ld a, a
    inc hl
    ld [$fb07], sp
    inc h
    nop
    rrca
    ld a, h
    or e
    ld a, [bc]
    dec b
    cp $2d
    ld [bc], a
    dec b
    ld hl, sp-$59
    nop
    nop
    cp $ad
    nop
    nop
    ld hl, sp-$59
    nop
    nop
    cp $2d
    nop
    nop
    ld hl, sp+$37
    nop
    nop
    cp $8d
    nop
    nop
    rst $38
    adc a
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
    ld [$0000], sp
    rst $38
    inc c
    nop
    nop
    rst $38
    ei
    nop
    nop
    ld a, [hl]
    ld b, d
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
    ld b, h
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
    nop
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop

jr_0d0_450e:
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    jr c, jr_0d0_4515

jr_0d0_4515:
    nop
    ld a, h
    inc b
    nop
    nop
    ld d, h
    ld l, h
    nop
    nop
    ld b, h
    ld a, h
    nop
    nop
    jr z, jr_0d0_4534

    nop
    nop
    jr z, jr_0d0_4538

    nop
    nop
    jr z, jr_0d0_453c

jr_0d0_452c:
    nop
    nop
    jr z, jr_0d0_4540

    nop
    nop
    jr z, jr_0d0_4544

jr_0d0_4534:
    nop
    nop
    jr c, @+$3a

jr_0d0_4538:
    nop
    nop
    ld a, h
    ld a, h

jr_0d0_453c:
    nop
    nop
    cp $fe

jr_0d0_4540:
    nop
    nop
    nop
    nop

jr_0d0_4544:
    nop
    nop
    nop
    nop
    ld b, b
    add b
    nop
    nop
    jr nz, jr_0d0_450e

    nop
    nop
    ldh [$c0], a
    nop
    nop
    and b
    ld b, b
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    db $fc
    adc b
    nop
    nop
    cp [hl]
    ld c, c
    jr nz, jr_0d0_452c

    ld a, h
    adc e
    nop
    ldh [$fe], a
    ld l, c
    and b
    ld b, b
    ld a, $c9
    add b
    ld b, b
    cp $68
    nop
    nop
    ld a, $ca
    nop
    nop
    cp $6a
    nop
    nop
    ld a, $da
    nop
    nop
    cp $62
    nop
    nop
    cp $e0
    nop
    nop
    cp $20
    nop
    nop
    cp $22
    nop
    nop
    cp $20
    nop
    nop
    cp $60
    nop
    nop
    cp $be
    nop
    nop
    db $fc
    add h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, b
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    jr c, jr_0d0_4626

    nop
    nop
    jr c, jr_0d0_462a

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
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
    ld [$0007], sp
    nop
    db $10
    rrca
    nop
    nop
    rra
    dec c
    nop
    nop
    dec d
    ld a, [bc]
    nop
    nop
    rrca
    ld [bc], a
    nop
    nop
    ld [$0007], sp
    nop
    rlca
    inc b
    nop
    nop

jr_0d0_4626:
    ld a, a
    inc hl
    nop
    nop

jr_0d0_462a:
    ei
    inc h
    ld [$7c07], sp
    and e
    nop
    rrca
    cp $2d
    ld a, [bc]
    dec b
    ld hl, sp+$27
    ld [bc], a
    dec b
    cp $2d
    nop
    nop
    ld hl, sp-$59
    nop
    nop
    cp $ad
    nop
    nop
    ld hl, sp-$49
    nop
    nop
    cp $8d
    nop
    nop
    rst $38
    dec c
    nop
    nop
    ld a, a
    rlca
    nop
    nop
    ld a, a
    ld b, h
    nop
    nop
    ld a, a
    ld b, h
    nop
    nop
    ld a, a
    inc b
    nop
    nop
    ld a, a
    ld b, $00
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
    daa
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $1e
    nop
    nop
    ld a, $22
    nop
    nop
    inc e
    nop
    nop
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc e
    inc e
    nop
    nop
    ld a, $3e
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
    add b
    nop
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    db $fc
    ld c, b
    nop
    nop
    cp $89
    jr nz, @-$3e

    cp h
    ld c, e
    nop
    ldh [$7e], a
    sbc c
    and b
    ld b, b
    cp $6b
    add b
    ld b, b
    ld a, $ca
    nop
    nop
    cp $6a
    nop
    nop
    ld a, $c8
    nop
    nop
    cp $68
    nop
    nop
    ld a, $d2
    nop
    nop
    cp $62
    nop
    nop
    cp $e2
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    ld de, $0000
    rst $38
    stop
    nop
    rst $38
    jr nc, jr_0d0_471f

jr_0d0_471f:
    nop
    cp $5e
    nop
    nop
    cp $c2
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    ld a, [hl]
    ld b, b
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $1e
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    inc bc
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    ld [bc], a
    nop
    nop
    ccf
    ld de, $0304
    ld a, l
    sub d
    nop
    rlca
    ld a, $d1
    dec b
    ld [bc], a
    ld a, a
    sub [hl]
    ld bc, $7c02
    sub e
    nop
    nop
    ld a, a
    ld d, $00
    nop
    ld a, h
    ld d, e
    nop
    nop
    ld a, a
    ld d, [hl]
    nop
    nop
    ld a, h
    ld e, e
    nop
    nop
    ld a, a
    ld b, [hl]
    nop
    nop
    ld a, a
    rlca
    nop
    nop
    ld a, a
    inc b
    nop
    nop
    ld a, a
    ld b, h
    nop
    nop
    ld a, a
    inc b
    nop
    nop
    ld a, a
    ld b, $00
    nop
    ld a, a
    ld a, l
    nop
    nop
    ccf
    ld hl, $0000
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $22
    nop
    nop

jr_0d0_480a:
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $1e
    nop
    nop
    ld a, $22
    nop
    nop

jr_0d0_481e:
    inc e
    nop
    nop
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0d0_480a

    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ldh a, [$60]
    nop
    nop
    ld d, b
    and b
    nop
    nop
    ldh [$80], a
    nop
    nop
    jr nz, jr_0d0_481e

    nop
    nop
    ldh [rNR41], a
    nop
    nop
    cp $c4
    nop
    nop
    rst $18
    inc h
    db $10
    ldh [$3e], a
    call $f000
    ld a, a
    or h
    ld d, b
    and b
    rra
    push hl
    ld b, b
    and b
    ld a, a
    or l
    nop
    nop
    rra
    push hl
    nop
    nop
    ld a, a
    or h
    nop
    nop
    rra
    db $ec
    nop
    nop
    ld a, a
    or c
    nop
    nop
    rst $38
    pop af
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    ld de, $0000
    rst $38
    stop
    nop
    rst $38
    jr nc, jr_0d0_489f

jr_0d0_489f:
    nop
    rst $38
    rst $18
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
    ld a, [hl]
    ld b, b
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $1e
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $c51f
    inc c
    inc bc
    ld e, e
    and [hl]
    inc c
    rlca
    cp a
    ld d, a
    rrca
    ld b, $7c
    sub e
    rlca
    inc bc
    rst $38
    sub $07
    nop
    db $fc
    ld d, e
    nop
    nop
    ld a, a
    ld d, [hl]
    nop
    nop
    ld a, h
    ld d, e
    nop
    nop
    ld a, a
    ld d, [hl]
    nop
    nop
    ld a, h
    ld e, e
    nop
    nop
    ld a, a
    ld b, [hl]
    nop
    nop
    ld a, a
    rlca
    nop
    nop
    ld a, a
    inc b
    nop
    nop
    ld a, a
    ld b, h
    nop
    nop
    ld a, a
    inc b
    nop
    nop
    ld a, a
    ld b, $00
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    daa
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop

jr_0d0_4992:
    ld a, $3e
    nop
    nop
    ld a, $1e
    nop
    nop
    ld a, $22
    nop
    nop
    inc e
    nop
    nop
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0d0_4992

    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ldh a, [$60]
    nop
    nop
    ld d, b
    and b
    nop
    nop
    ldh a, [$80]
    nop
    nop
    db $fc
    pop de
    jr nz, @-$3e

    db $ed
    ld [hl-], a
    db $10
    ldh [$fe], a
    push af
    sub b
    ld [hl], b
    rra
    db $e4
    ld [hl], b
    or b
    ld a, a
    or l
    ldh a, [$e0]
    rra
    push hl
    ldh a, [rP1]
    ld a, a
    or l
    nop
    nop
    rra
    push hl
    nop
    nop
    ld a, a
    or h
    nop
    nop
    rra
    db $ec
    nop
    nop
    ld a, a
    or c
    nop
    nop
    rst $38
    pop af
    nop
    nop
    rst $38
    ld de, $0000
    rst $38
    ld de, $0000
    rst $38
    stop
    nop
    rst $38
    jr nc, jr_0d0_4a23

jr_0d0_4a23:
    nop
    rst $38
    rst $18
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    ld a, [hl]
    ld b, b
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $1e
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0001
    nop
    ccf
    jr c, @+$03

    ld bc, $89fe
    inc bc
    ld [bc], a
    rst $38
    ld [$0203], sp
    rst $38
    dec hl
    inc bc
    ld [bc], a
    cp $69
    inc bc
    ld [bc], a
    rst $38
    dec hl
    inc bc
    ld [bc], a
    cp $29
    ld bc, $ff01
    dec hl
    ld bc, $fe01
    ld l, l
    inc bc
    ld [bc], a
    rst $38
    inc hl
    inc bc
    ld [bc], a
    rst $38
    inc hl
    inc bc
    ld [bc], a
    rst $38
    ld [hl+], a
    ld bc, $ff00
    and d
    ld bc, $bf01
    add d
    ld bc, $3f01
    add e
    nop
    ld bc, $be3f
    nop
    ld bc, $905f
    nop
    inc bc
    rra
    pop de
    nop
    inc bc
    rra
    pop bc
    nop
    inc bc
    ld e, a
    add c
    nop
    nop
    rra
    ld de, $0000
    rra
    ld de, $0000
    ccf
    ld hl, $0000
    ld a, a
    ld h, b
    nop
    nop
    ld a, a
    ld h, b
    nop
    nop
    rst $38
    pop af
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    xor $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d0_4b5b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ld [$00f0], sp
    nop
    ld hl, sp-$50
    nop
    nop
    xor b
    ld d, b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ldh a, [rNR10]
    nop
    nop
    rst $38
    db $e3
    add b
    add b
    rst $28
    ld [de], a
    ldh a, [$30]
    rra
    and $f8
    ld [$5abf], sp
    ld hl, sp-$78
    rrca
    ld a, [c]
    ld hl, sp-$38
    cp a
    ld e, d
    ld hl, sp-$78
    rrca
    ld a, [c]
    ld hl, sp-$78
    cp a
    ld e, d
    ldh a, [$90]
    rrca
    or $f0
    ret nc

    cp a
    ld e, b
    ld hl, sp-$78
    rst $38
    ld hl, sp-$08
    adc b
    rst $38
    ld [$88f8], sp
    rst $38
    ld [$a0f0], sp
    rst $38
    ld [$30b0], sp
    rst $38
    jr jr_0d0_4b5b

    jr nc, @+$01

    rst $28
    add b
    or b
    cp a
    and c
    ld b, b
    jr nc, @+$41

    ld hl, $7800
    ccf
    ld hl, $7800
    rra
    db $10
    ld b, b
    jr c, jr_0d0_4c00

    stop
    nop
    rra
    ld de, $0000
    rra
    ld de, $8080
    rra
    ld bc, $c0c0
    rra
    nop
    ret nz

    ret nz

    rra
    ld de, $e0e0
    rra
    rra
    ldh [$e0], a
    rra
    rrca
    ldh [$e0], a

jr_0d0_4c00:
    nop
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
    nop
    nop
    add hl, bc
    ld b, $00
    nop
    add hl, bc
    ld b, $00
    nop
    ld a, [bc]
    dec b
    nop
    nop
    dec bc
    inc b
    nop
    nop
    rlca
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    rrca
    ld c, $00
    nop
    rra
    stop
    nop
    ccf
    jr nz, jr_0d0_4c31

jr_0d0_4c31:
    nop
    ccf
    ld [hl+], a
    nop
    nop
    ccf
    ld h, $00
    nop
    ccf
    ld [hl+], a
    nop
    nop
    ccf
    ld [hl+], a
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    rra
    ld d, $00
    nop
    ccf
    ld [hl+], a
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
    ccf
    ld a, [hl+]
    nop
    nop
    ccf
    ld a, [de]
    nop
    nop
    scf
    jr jr_0d0_4c61

jr_0d0_4c61:
    nop
    rlca
    dec de
    nop
    nop
    daa
    jr jr_0d0_4c69

jr_0d0_4c69:
    nop
    rlca
    jr c, jr_0d0_4c6d

jr_0d0_4c6d:
    nop
    rlca
    jr c, jr_0d0_4c71

jr_0d0_4c71:
    nop
    cpl
    stop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    inc b
    nop
    nop
    rrca
    nop
    nop
    nop

jr_0d0_4c8a:
    rrca
    ld bc, $0000
    rrca
    add hl, bc
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    ld a, [bc]
    dec c
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0006
    nop
    ld bc, $0006
    nop
    ld bc, $0006
    nop
    ld bc, $0006
    nop
    rlca
    nop
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
    jr nz, jr_0d0_4c8a

    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ldh a, [$d0]
    nop
    nop
    ld d, b
    and b
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    sbc h
    add sp, $00
    nop
    adc $74
    nop
    nop
    rst $20
    sbc d
    nop
    nop
    rst $30
    ld l, $00
    nop
    rst $20
    sbc d
    nop
    nop
    rst $30
    xor [hl]
    nop
    nop
    rst $00
    cp d
    nop
    nop
    rst $30
    xor [hl]
    nop
    nop
    rst $00
    ei
    nop
    nop
    rst $30
    ld l, $00
    nop
    rst $38
    ld a, $00
    nop
    rst $38
    ld h, $80
    nop
    rst $38
    ld h, $80
    nop
    rst $38
    daa
    add b
    nop
    rst $38
    cpl
    add b
    nop
    rst $38
    rst $38
    add b
    nop
    db $fc
    ld h, $00
    nop
    db $fc
    ld h, $00
    nop
    db $fc
    ld b, [hl]
    nop
    nop
    cp $44
    nop
    nop
    db $fc
    ld b, b
    nop
    nop
    db $fc
    ld b, b
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld d, b
    nop
    nop
    db $fc
    call c, RST_00
    db $fc
    call z, RST_00
    db $fc
    ld b, b
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
    ld b, b
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
    ld b, h
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
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
    nop
    nop
    nop
    add hl, bc
    ld b, $00
    nop
    add hl, bc
    ld b, $00
    nop
    ld a, [bc]
    dec b
    nop
    nop
    dec bc
    inc b
    nop
    nop
    rlca
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    ld a, a
    ld h, a
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    rst $38
    ret nc

    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld h, b
    nop
    nop
    ccf
    jr nz, jr_0d0_4dc1

jr_0d0_4dc1:
    nop
    ccf
    jr nz, jr_0d0_4dc5

jr_0d0_4dc5:
    nop
    ccf
    jr nz, jr_0d0_4dc9

jr_0d0_4dc9:
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    jr nz, jr_0d0_4dd5

jr_0d0_4dd5:
    nop
    ccf
    jr nz, jr_0d0_4dd9

jr_0d0_4dd9:
    nop
    ccf
    jr nz, jr_0d0_4ddd

jr_0d0_4ddd:
    nop
    ccf
    jr nz, jr_0d0_4de1

jr_0d0_4de1:
    nop
    ccf
    ccf
    nop
    nop
    rra
    stop
    nop
    rra
    stop
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
    rrca
    inc b
    nop
    nop
    rrca
    nop
    nop
    nop

jr_0d0_4e0a:
    rrca
    ld bc, $0000
    rrca
    add hl, bc
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    ld a, [bc]
    dec c
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0006
    nop
    ld bc, $0006
    nop
    ld bc, $0006
    nop
    ld bc, $0006
    nop
    rlca
    nop
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
    jr nz, jr_0d0_4e0a

    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ldh a, [$d0]
    nop
    nop
    ld d, b
    and b
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    adc $f0
    nop
    nop
    rst $38
    ld h, b
    db $fc
    nop
    ldh [$df], a
    ld [hl-], a
    call z, Call_0d0_64ff
    ld de, $ffee
    jp nz, Jump_0d0_55aa

    rst $30
    xor [hl]
    nop
    nop
    rst $00
    cp d
    nop
    nop
    rst $30
    xor [hl]
    nop
    nop
    rst $00
    ei
    nop
    nop
    rst $30
    ld l, $00
    nop
    rst $38
    ld a, $00
    nop
    rst $38
    ld h, $80
    nop
    rst $38
    ld h, $80
    nop
    rst $38
    daa
    add b
    nop
    rst $38
    cpl
    add b
    nop
    rst $38
    rst $38
    add b
    nop
    db $fc
    inc h
    nop
    nop
    db $fc
    inc h
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld b, b
    nop
    nop
    db $fc
    ld b, b
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld d, b
    nop
    nop
    db $fc
    call c, RST_00
    db $fc
    call z, RST_00
    db $fc
    ld b, b
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
    ld b, b
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
    ld b, h
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
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
    inc b
    inc bc
    nop
    nop
    dec bc
    inc b
    nop
    nop
    add hl, bc
    ld b, $00
    nop
    dec d
    ld a, [bc]
    nop
    nop
    inc e
    inc bc
    nop
    nop
    ld a, a
    ld a, b
    nop
    nop
    rst $38
    add a
    ld bc, $ff01
    add b
    inc bc
    inc bc
    rst $38
    db $fd
    inc bc
    inc bc
    rst $38
    rst $00
    inc bc
    inc bc
    rst $38
    add h
    ld bc, $ff01
    ld b, l
    ld bc, $ff01
    inc b
    ld bc, $ff01
    dec b
    ld bc, $ff01
    inc b
    ld bc, $ff01
    inc bc
    ld bc, $ff01
    ld bc, $0303
    rst $38
    rst $00
    inc bc
    ld [bc], a
    rst $38
    ld hl, $0203
    rst $38
    ld bc, $0203
    rst $38
    ld bc, $0203
    rst $38
    ld bc, $0303
    rst $38
    rst $38
    nop
    nop
    rst $38
    db $e3
    nop
    nop
    rst $38
    jp nz, RST_00

    ld a, a
    ld h, c
    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    rra
    ld de, $0000
    rrca
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    rlca
    ld b, $00
    nop
    rrca
    inc c
    nop
    nop

jr_0d0_4f8e:
    rrca
    dec c
    nop
    nop
    rrca
    inc c
    nop
    nop
    rra
    inc d
    nop
    nop
    dec e
    ld d, $00
    nop
    inc e
    inc de
    nop
    nop
    inc a
    inc hl
    nop
    nop
    inc a
    inc hl
    nop
    nop
    ld a, h
    ld b, a
    nop
    nop
    ld a, h
    ld b, a
    nop
    nop
    ld a, a
    ld b, h
    nop
    nop
    ei
    ei
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
    add b
    nop
    nop
    jr nz, jr_0d0_4f8e

    nop
    nop
    db $10
    ldh [rP1], a
    nop
    ret nc

    ldh [rP1], a
    nop
    or b
    ld d, b
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$2f]
    add b
    nop
    db $fc
    inc sp
    db $10
    ldh [$fe], a
    pop af
    xor b
    ld d, b
    ld a, a
    xor b
    ldh a, [$4e]
    cp a
    ld c, a
    jp z, $78d5

    xor b
    nop
    nop
    cp b
    ld c, b
    nop
    nop
    ld a, b
    xor b
    nop
    nop
    cp b
    ld e, b
    nop
    nop
    ld a, b
    and b
    nop
    nop
    ld hl, sp-$20
    nop
    nop
    ld hl, sp+$70
    nop
    nop
    ld hl, sp+$30
    nop
    nop
    ld hl, sp+$30
    nop
    nop
    ld hl, sp+$30
    nop
    nop
    ld hl, sp+$70
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
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
    add b
    add b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
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
    ret nz

    nop
    nop
    nop
    ld b, b
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ldh [$e0], a
    nop
    nop
    db $fc
    db $fc
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
    ld [hl], d
    inc c
    nop
    nop
    sub c
    ld l, [hl]
    nop
    nop
    sbc a
    ld l, l
    nop
    nop
    and l
    ld e, d
    nop
    nop
    cp a
    ld b, d
    nop
    nop
    ld a, c
    ld b, $00
    nop
    ccf
    db $10

Call_0d0_50a4:
    rlca
    ld b, $fc
    ld a, a
    rrca
    inc c
    rst $38
    ld b, $0f
    dec c
    cp $0d
    rrca
    rrca
    rst $38
    ld b, $07
    rlca
    rst $38
    db $fc
    rlca
    ld b, $ff
    ld a, [bc]
    inc bc
    ld [bc], a
    db $fc
    dec bc
    inc bc
    ld [bc], a
    rst $38
    ld a, [bc]
    inc bc
    ld [bc], a
    db $fc
    rrca
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc bc
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $ff01
    rst $00
    ld bc, $ff01
    add [hl]
    ld bc, $ff01
    add h
    nop
    nop
    rst $38
    add h
    nop
    nop
    ld a, a
    ld b, h
    nop
    nop
    ld a, a
    ld b, [hl]
    nop
    nop
    ld a, a
    ld b, d
    nop
    nop
    ccf
    inc sp
    nop
    nop
    ccf
    ld [bc], a
    nop
    nop
    ld a, a
    ld a, [bc]
    nop
    nop
    ld a, a
    ld c, a
    nop
    nop
    ld a, a
    ld b, [hl]
    nop
    nop
    ld a, a
    ld b, d
    nop
    nop
    ld d, a
    ld l, h
    nop
    nop
    rlca
    inc a
    nop
    nop
    rrca
    ld sp, $0000
    ld c, $32
    nop
    nop
    inc c
    inc [hl]
    nop
    nop
    ld c, $36
    nop
    nop
    ld a, $06
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d0_515e:
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    rst $38
    nop
    db $fc
    ld h, b
    inc bc
    db $fc
    ld [c], a
    ld e, h
    pop af
    ld c, [hl]
    pop af
    ld l, [hl]
    ld a, [$0a25]
    dec b
    ld [hl], b
    ldh [rP1], a
    nop
    jr nc, jr_0d0_515e

    nop
    nop
    ld [hl], b
    ldh [rP1], a
    nop
    jr nc, @-$0e

    nop
    nop
    ld [hl], b
    ldh [rP1], a
    nop
    ldh a, [$e0]
    nop
    nop
    ld hl, sp+$60
    nop
    nop
    ld hl, sp+$60
    nop
    nop
    ld hl, sp+$70
    nop
    nop
    ld hl, sp-$10
    nop
    nop
    ld hl, sp-$10
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
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
    ldh [rNR41], a
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$90]
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

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    ld a, b
    ld bc, $0200
    db $fc
    ld bc, $2200
    sbc $01
    nop
    ld a, [hl]
    sbc b
    nop
    nop
    push bc
    ld a, [hl-]
    nop
    nop
    ld a, a
    ld [bc], a
    nop
    nop
    ld l, c
    ld d, [hl]
    nop
    nop
    rst $38
    pop hl
    ld bc, $ff01
    ld b, $03
    ld [bc], a
    cp $05
    inc bc
    ld [bc], a
    rst $38
    ld h, $03
    inc bc
    rst $38
    ld hl, $0303
    rst $38
    cp $01
    ld bc, $c2ff
    nop
    nop
    rst $38
    or d
    nop
    nop
    rst $38
    jp nz, RST_00

    rst $38
    and c
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
    nop
    nop
    nop
    ld a, a
    nop
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
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    jr jr_0d0_5279

jr_0d0_5279:
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    ccf
    jr nz, jr_0d0_5285

jr_0d0_5285:
    nop
    ccf
    jr z, jr_0d0_5289

jr_0d0_5289:
    nop
    ccf
    cpl
    nop
    nop
    ccf
    daa
    nop
    nop
    ld a, a
    ld d, e
    nop
    nop
    ld a, [hl]
    ld b, [hl]
    nop
    nop
    ld a, h
    ld c, h
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ret c

    jr z, jr_0d0_52a5

jr_0d0_52a5:
    nop
    sub b
    ld h, b
    ld bc, $2000
    ret nz

    ld bc, $4000
    add b
    ld bc, $4000
    add b
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $fefe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    xor [hl]
    ldh [$60], a
    rst $38

jr_0d0_52e5:
    call nz, Call_0d0_78c4
    rst $38
    jr nc, jr_0d0_52e5

    ld b, h
    ld [bc], a
    db $fc
    dec b
    ld a, [bc]
    ld hl, sp+$07
    ld b, b
    add b
    db $fc
    rst $30
    and b
    ld b, b
    call c, Call_0d0_50a4
    and b
    cp h
    ld d, h
    nop
    nop
    call c, Call_000_00a4
    nop
    cp h
    ld e, b
    nop
    nop
    call c, Call_000_00a0
    nop
    cp [hl]
    ld d, b
    nop
    nop
    cp $f8
    nop
    nop
    cp $88
    nop
    nop
    rst $38
    adc b
    nop
    nop
    cp $8c
    nop
    nop
    db $fc
    or h
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    cp $e2
    nop
    nop
    cp $e2
    nop
    nop
    cp a
    and c
    nop
    nop
    cp a
    or c
    nop
    nop
    sbc a
    sub b
    add b
    add b
    adc a
    adc b
    add b
    add b
    adc a
    adc [hl]
    ret nz

    ld b, b
    adc a
    adc b
    ret nz

    ld b, b
    add a
    add [hl]
    ret nz

    nop
    rlca
    dec b
    ret nz

    nop
    rlca
    dec b
    ret nz

    ret nz

    rlca
    nop
    ret nz

    ret nz

    rlca
    nop
    ret nz

    nop
    rlca
    nop
    ret nz

    ld b, b
    rlca
    nop
    ret nz

    ld b, b
    rlca
    inc b
    ret nz

    nop
    rlca
    inc b
    ret nz

    nop
    rlca
    inc b
    ret nz

    ld b, b
    rlca
    inc b
    ret nz

    ld b, b
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
    ld [hl], d
    inc c
    nop
    nop
    sub c
    ld l, [hl]
    nop
    nop
    sbc a
    ld l, l
    nop
    nop
    and l
    ld e, d
    nop
    nop
    cp a
    ld b, d
    nop
    nop
    ld a, c
    ld b, $00
    nop
    ccf
    db $10
    rlca
    ld b, $fc
    ld a, a
    rrca
    inc c
    rst $38
    ld b, $0f
    dec c
    cp $0d
    rrca
    rrca
    rst $38
    ld b, $07
    rlca
    rst $38
    db $fc
    rlca
    ld b, $ff
    ld a, [bc]
    inc bc
    ld [bc], a
    db $fc
    dec bc
    inc bc
    ld [bc], a
    rst $38
    ld a, [bc]
    inc bc
    ld [bc], a
    db $fc
    rrca
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc bc
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, c
    nop
    nop
    ld a, a
    ld b, c

jr_0d0_53ec:
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ccf
    jr nc, jr_0d0_53f5

jr_0d0_53f5:
    nop
    ccf
    jr nz, jr_0d0_53f9

jr_0d0_53f9:
    nop
    ccf
    jr nc, jr_0d0_53fd

jr_0d0_53fd:
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rrca
    ld [$0000], sp
    rra
    add hl, de
    nop
    nop
    ccf
    cpl
    nop
    nop
    ccf
    cpl
    nop
    nop
    ld a, [hl]
    ld b, [hl]
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    db $fc
    and h
    nop
    nop
    inc a
    ld [hl], h
    nop
    nop
    or b
    ld d, b
    nop
    nop
    jr nz, jr_0d0_53ec

    ld bc, $c001
    add b
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    ld bc, $fc01
    db $fc
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    nop
    nop
    rst $38
    nop
    db $fc
    ld h, b
    inc bc
    db $fc
    ld [c], a
    ld e, h
    pop af
    ld c, [hl]
    pop af
    ld l, [hl]
    ld a, [$0a25]
    dec b
    ld [hl], b
    ldh [rP1], a
    nop
    ld [hl], b
    and b
    nop
    nop
    ld [hl], b
    ldh [rP1], a
    nop
    ld [hl], b
    or b
    nop
    nop
    ld [hl], b
    ldh [rP1], a
    nop
    ldh a, [$e0]
    nop
    nop
    ld hl, sp+$60
    nop
    nop
    ld hl, sp+$60
    nop
    nop
    ld hl, sp+$70
    nop
    nop
    ld hl, sp-$10
    nop
    nop
    ld hl, sp-$10
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$90]
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
    db $fc
    add h
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    db $fc
    add h
    nop
    nop
    ld a, h
    ld b, b
    nop
    nop
    ld a, h
    ld d, b
    nop
    nop
    ld a, h
    ld e, h
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
    inc b
    nop
    nop
    ld a, h
    inc b
    nop
    nop
    ld a, h
    ld b, b
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
    ld b, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
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
    rlca
    ld b, $00
    nop
    rrca
    ld [$0000], sp
    rra
    inc de
    nop
    nop
    rra
    inc b
    nop
    nop
    rra
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
    rrca
    nop
    nop
    rra
    jr jr_0d0_5549

jr_0d0_5549:
    nop
    rra
    inc d
    nop
    nop
    ccf
    stop
    nop
    ccf
    nop
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
    jr c, jr_0d0_5565

jr_0d0_5565:
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
    add hl, bc
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
    add hl, de
    nop
    nop
    ld e, $10
    nop
    nop
    ld e, $12
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, h
    ld e, h
    nop
    nop
    ld a, h
    ld c, h

jr_0d0_5598:
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ret c

    xor b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    and b
    ld b, b
    nop
    nop

Jump_0d0_55aa:
    and b
    ld b, b
    nop
    nop
    ldh [$c0], a
    ld bc, $e001
    ldh [$03], a
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    db $fc
    db $fc
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
    ld c, $01
    ld b, b
    add b
    ld [de], a
    dec c
    jr nz, jr_0d0_5598

    inc de
    dec c
    ldh [$a0], a
    inc d
    dec bc
    and b
    ld b, b
    rst $30
    xor b
    ld [c], a
    ld c, h
    pop hl
    sbc $e9
    and $c0
    ld a, a
    ld a, [c]
    dec e
    add $fb
    db $f4
    cp $8f
    ldh a, [$fc]
    xor h
    rst $38
    add $fc
    and b
    pop af
    ld l, a
    db $fc
    ld h, b
    rst $38
    db $ed
    ld hl, sp+$70
    pop af
    ld c, a
    ldh [$60], a
    rst $38
    ld e, d
    ret nz

    ret nz

    db $e3
    ld a, a
    ret nz

    ld b, b
    rst $38
    ld a, [de]
    ret nz

    ld b, b
    rst $38
    ld a, $80
    add b
    rst $38
    ld h, $80
    add b
    rst $38
    ld h, [hl]
    add b
    add b
    rst $38
    ld b, [hl]
    add b
    add b
    rst $38
    ld h, [hl]
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    cp $f2
    nop
    nop
    cp $e2
    nop
    nop
    rst $38
    pop hl
    nop
    nop
    cp a
    and c
    nop
    nop
    sbc a
    sub c
    nop
    nop
    rra
    db $10
    add b
    add b
    rrca
    inc c
    add b
    add b
    rrca
    nop
    add b
    add b
    rrca
    ld [$0080], sp
    rrca
    ld a, [bc]
    add b
    nop
    rrca
    dec bc
    add b
    add b
    rrca
    ld bc, $8080
    rrca
    nop
    add b
    nop
    rrca
    nop
    add b
    add b
    rrca
    nop
    add b
    add b
    rrca
    ld [$0080], sp
    rrca
    ld [$0080], sp
    rrca
    ld [$8080], sp
    rrca
    ld [$8080], sp
    rrca
    rrca
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    rlca
    rlca
    nop
    nop
    rrca
    ld [$0000], sp
    rra
    stop
    nop
    rra
    ld de, $0000
    rra
    inc de
    nop
    nop
    rra
    ld de, $0000
    rra
    ld de, $0000
    rrca
    add hl, bc
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    ld de, $0000
    rra
    ld de, $0000
    rra
    ld de, $0000
    rra
    dec d
    nop
    nop
    rra
    dec c
    nop
    nop
    dec de
    inc c
    nop
    nop
    inc bc
    dec c
    nop
    nop
    inc de
    inc c
    nop
    nop
    inc bc
    inc e
    nop
    nop
    inc bc
    inc e
    nop
    nop
    rla
    ld [$0101], sp
    adc a
    adc h
    inc bc
    inc bc
    rst $18
    call c, $0607
    ccf
    call c, $0607
    rrca
    ld a, [c]
    rrca
    rrca
    rst $18
    jr nz, jr_0d0_5744

    rrca
    ld l, a
    db $10
    ld c, $0e
    ccf
    inc h
    ld c, $0e
    ccf
    ld a, $00
    nop
    nop
    nop

jr_0d0_5744:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d0_5752:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    nop
    nop
    adc b
    ld [hl], b
    nop
    nop
    ld hl, sp+$68
    nop
    nop
    jr z, jr_0d0_5752

    nop
    nop
    ld hl, sp+$10
    nop
    nop
    ret z

    jr nc, jr_0d0_578b

jr_0d0_578b:
    nop
    ld hl, sp-$80
    nop
    nop
    adc $74
    nop
    nop
    rst $20
    ld a, [hl-]
    nop
    nop
    di
    ld c, l
    add b
    nop
    ei
    rla
    add b
    nop
    di
    ld c, l
    add b
    nop
    ei
    ld d, a
    add b
    nop
    db $e3
    ld e, l
    add b
    nop
    ei
    ld d, a
    add b
    nop
    db $e3
    ld a, l
    add b
    add b
    ei
    rla
    add b
    nop
    rst $38
    rra
    add b
    nop
    rst $38
    inc de
    ret nz

    nop
    rst $38
    inc de
    ret nz

    nop
    rst $38
    inc de
    ret nz

    add b
    rst $38
    rla
    ret nz

    add b
    rst $38
    rst $38
    ret nz

    add b
    cp $13
    nop
    nop
    cp $13
    nop
    nop
    cp $23
    nop
    nop
    rst $38
    ld [hl+], a
    nop
    nop
    cp $20
    nop
    nop
    cp $20
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
    cp $a8
    nop
    nop
    cp $ee
    nop
    nop
    cp $66
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10
    rrca
    nop
    nop
    ld de, $000e
    nop
    add hl, de
    rlca
    nop
    nop
    rrca
    ld bc, $0000
    dec b
    ld [bc], a
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rra
    stop
    nop
    ccf
    jr z, jr_0d0_5831

jr_0d0_5831:
    nop
    ccf
    jr nc, jr_0d0_5835

jr_0d0_5835:
    nop
    ccf
    ld sp, $0000
    rra
    stop
    nop
    rra
    jr jr_0d0_5841

jr_0d0_5841:
    nop
    rra
    jr jr_0d0_5845

jr_0d0_5845:
    nop
    rra
    add hl, de
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
    jr jr_0d0_585d

jr_0d0_585d:
    nop
    inc e
    dec de
    nop
    nop
    inc e
    dec de
    nop
    nop
    ld a, [bc]
    dec b
    nop
    nop
    ld b, $09
    nop
    nop
    nop
    rrca
    nop
    nop
    ld bc, $0006
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
    ld [bc], a
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
    ld b, $00
    nop
    rlca
    inc b
    nop
    nop

jr_0d0_5896:
    rlca
    inc b
    nop
    nop
    ld b, $01
    nop
    nop
    ld b, $05
    nop
    nop
    ld b, $05
    nop
    nop
    ld b, $05
    nop
    nop
    ld b, $01
    nop
    nop
    ld b, $01
    nop
    nop
    ld b, $05
    nop
    nop
    rlca
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    add b
    ld h, b
    nop
    nop
    ldh [$60], a
    nop
    nop
    jr nz, jr_0d0_5896

    nop
    nop
    ldh [rP1], a
    nop
    nop
    add b
    ld h, b
    nop
    nop
    ldh [$80], a
    nop
    nop
    add b
    add b
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ld hl, sp-$70
    nop
    nop
    ld hl, sp-$70
    nop
    nop
    ld hl, sp-$70
    nop
    nop
    ld hl, sp-$70
    nop
    nop
    ld hl, sp-$70
    nop
    nop
    ld hl, sp-$68
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
    db $fc
    add h
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    inc b

jr_0d0_591e:
    nop
    nop
    db $fc
    db $fc

jr_0d0_5922:
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    and b
    ld b, b
    nop
    nop
    jr nz, jr_0d0_591e

    nop
    nop
    jr nz, jr_0d0_5922

    nop
    nop
    ld h, b
    add b
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp $fe
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
    inc c
    inc bc
    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10
    rrca
    nop
    nop
    ld de, $000e
    nop
    add hl, de
    rlca
    nop
    nop
    rrca
    ld bc, $0000
    dec b
    ld [bc], a
    nop
    nop
    rra
    dec de
    nop
    nop
    ccf
    jr nz, jr_0d0_59ad

jr_0d0_59ad:
    nop
    ccf
    ld hl, $0000
    ccf
    cpl
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    stop
    nop
    rra
    jr jr_0d0_59c1

jr_0d0_59c1:
    nop
    rra
    inc d
    nop
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    nop
    nop
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
    rra
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    inc c
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
    ld [bc], a
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
    ld b, $00
    nop
    rlca
    inc b
    nop
    nop

jr_0d0_5a16:
    rlca
    inc b
    nop
    nop
    ld b, $01
    nop
    nop
    ld b, $05
    nop
    nop
    ld b, $05
    nop
    nop
    ld b, $05
    nop
    nop
    ld b, $01
    nop
    nop
    ld b, $01
    nop
    nop
    ld b, $05
    nop
    nop
    rlca
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    add b
    ld h, b
    nop
    nop
    ldh [$60], a
    nop
    nop
    jr nz, jr_0d0_5a16

    nop
    nop
    ldh [rP1], a
    nop
    nop
    add b
    ld h, b
    nop
    nop
    ldh [$80], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    rst $38
    ld bc, $90f0
    rst $38
    ld bc, $3ce2
    rst $38
    inc e
    pop af
    ld l, $ff
    rst $38
    ld a, [c]
    pop af
    ld hl, sp+$10
    nop
    nop
    ld hl, sp+$10
    nop
    nop
    ld hl, sp+$10
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
    ld hl, sp+$08
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

jr_0d0_5a9e:
    nop
    nop
    db $fc
    db $fc

jr_0d0_5aa2:
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    and b
    ld b, b
    nop
    nop
    jr nz, jr_0d0_5a9e

    nop
    nop
    jr nz, jr_0d0_5aa2

    nop
    nop
    ld h, b
    add b
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ld h, b
    and b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp $fe
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
    ld [$01f4], sp
    nop
    ld c, $f6
    ld bc, $1200
    db $ec
    ld bc, $9e00
    ld [hl], b
    ld bc, $f800
    ld d, $00
    nop
    ld hl, sp+$7e
    nop
    nop
    rst $38
    add a
    ld bc, $ff01
    jr nz, jr_0d0_5b2c

    ld [bc], a
    rst $38
    db $e3

jr_0d0_5b2c:
    inc bc
    ld [bc], a
    rst $38
    rst $38
    inc bc
    ld [bc], a
    rst $38
    jr jr_0d0_5b38

    ld [bc], a
    rst $38
    ld h, b

jr_0d0_5b38:
    inc bc
    inc bc
    rst $38
    nop
    ld bc, $ff01
    ret nz

    ld bc, $ff01
    nop
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
    ldh [rP1], a
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
    adc a
    nop
    nop
    rst $38

jr_0d0_5b67:
    rst $38
    nop
    nop
    ccf
    jr c, jr_0d0_5b6d

jr_0d0_5b6d:
    nop
    ccf
    jr nc, jr_0d0_5b71

jr_0d0_5b71:
    nop
    rra
    inc e
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    add hl, bc
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rra
    ld a, [de]
    nop
    nop
    rra
    rla
    nop
    nop
    rra
    inc de
    nop
    nop
    ccf
    dec hl
    nop
    nop
    ccf
    inc hl
    nop
    nop
    ld a, [hl]
    ld d, d
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    db $fc
    add h
    nop
    nop
    ld hl, sp-$78
    ld bc, $f001
    db $10
    ld bc, $f001
    db $10
    inc bc
    ld [bc], a
    ldh [rNR41], a
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    db $fc
    db $fc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc sp
    ret nz

    ret nz

    rst $38
    jr nz, jr_0d0_5b67

    db $fc
    rst $38
    add b
    ldh a, [$8e]
    rst $38
    rst $38
    call z, $fff2
    and b
    cp $41
    rst $38
    cp a
    ld [c], a
    pop hl
    ret nz

    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ret nz

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
    ldh [$60], a
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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
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
    ld hl, sp+$08
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
    cp $42
    nop
    nop
    cp $f2
    nop
    nop
    cp [hl]
    add b
    nop
    nop
    cp [hl]
    and [hl]
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, [hl-]
    inc h
    nop
    nop
    ld [hl-], a
    inc l
    nop
    nop
    ld [hl-], a
    inc c
    nop
    nop
    inc h
    jr jr_0d0_5c67

jr_0d0_5c67:
    nop
    inc b
    jr jr_0d0_5c6b

jr_0d0_5c6b:
    nop
    inc b
    jr jr_0d0_5c6f

jr_0d0_5c6f:
    nop
    inc b
    jr jr_0d0_5c73

jr_0d0_5c73:
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    ldh [$e0], a
    rra
    rra
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
    ld h, b
    ld e, $00
    nop
    add h
    ld a, e
    nop
    nop
    add a
    ld a, e
    nop
    nop
    adc c
    halt
    nop
    rst $08
    jr c, jr_0d0_5c9d

jr_0d0_5c9d:
    nop
    ld a, h
    dec bc
    nop
    nop
    cpl
    inc d
    nop
    nop
    cp $de
    ld bc, $ff01
    nop
    ld bc, $ff01
    ld [$0101], sp
    rst $38
    ld a, b
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38
    add b
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    rst $38
    and b
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
    nop
    nop
    nop
    rst $38
    nop
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
    ld a, a
    ld a, [hl]
    nop
    nop
    ccf
    jr c, jr_0d0_5ced

jr_0d0_5ced:
    nop
    rra
    stop
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
    rrca
    ld a, [bc]
    nop
    nop
    rrca
    ld c, $00
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    rra
    dec e
    nop
    nop
    rra
    ld d, $00
    nop
    rra
    ld [de], a
    nop
    nop
    ld a, $23
    nop
    nop
    ld a, [hl]
    ld b, c
    nop
    nop
    cp $83
    ld bc, $fe01
    rlca
    ld bc, $f801
    add hl, de
    ld bc, $e001
    pop hl
    inc bc
    inc bc
    ldh [$e1], a
    inc bc
    inc bc
    pop af
    pop af
    ld bc, $fd01
    db $fd
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rNR10]
    rst $38
    ld [$3ce2], sp
    rst $38
    ldh [$f1], a
    ld l, $ff
    rst $38
    ld a, [c]
    pop af
    ret nz

    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ret nz

    add b
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
    ret nz

    ld b, b
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
    ldh [rNR41], a

jr_0d0_5d9e:
    nop
    nop
    ldh [$e0], a

jr_0d0_5da2:
    nop
    nop
    ret nz

    ld b, b
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
    ldh [rNR41], a
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
    ldh a, [$80]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    and b
    ld b, b
    nop
    nop
    jr nz, jr_0d0_5d9e

    nop
    nop
    jr nz, jr_0d0_5da2

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp $fe
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
    jr @+$09

    nop
    nop
    jr nz, jr_0d0_5e2f

    nop
    nop
    ld hl, $001e
    nop
    ld hl, $001e
    nop
    ld [hl+], a
    dec e
    nop
    nop
    dec de
    ld b, $00
    nop
    rrca
    inc bc
    nop
    nop
    ccf
    jr nc, jr_0d0_5e29

jr_0d0_5e29:
    nop
    ld a, a
    ld b, c
    nop
    nop
    rst $38

jr_0d0_5e2f:
    ret nz

    nop
    nop
    rst $38
    call nz, RST_00
    rst $38
    rst $20
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld [hl], b
    nop
    nop
    ccf
    inc l
    nop
    nop
    ccf
    jr nc, jr_0d0_5e49

jr_0d0_5e49:
    nop
    ccf
    jr z, jr_0d0_5e4d

jr_0d0_5e4d:
    nop
    ccf
    jr nz, jr_0d0_5e51

jr_0d0_5e51:
    nop
    ccf
    jr nz, jr_0d0_5e55

jr_0d0_5e55:
    nop
    ccf
    jr nz, jr_0d0_5e59

jr_0d0_5e59:
    nop
    ccf
    jr nz, jr_0d0_5e5d

jr_0d0_5e5d:
    nop
    ccf
    ld [hl+], a
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld [hl], b
    nop
    nop
    ccf
    ccf
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
    rrca
    ld [$0000], sp
    rra
    ld a, [de]
    nop
    nop
    rra
    rla
    nop
    nop
    rra
    inc de
    nop
    nop
    ccf
    dec hl
    nop
    nop
    ccf
    inc hl
    nop
    nop
    ld a, [hl]
    ld d, d
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    call c, Call_000_00a4
    nop
    ret z

    jr c, jr_0d0_5ea9

jr_0d0_5ea9:
    nop
    sub b
    ld [hl], b
    ld bc, $2000
    ret nz

    ld bc, $4000
    add b
    ld bc, $e001
    ldh [$03], a
    inc bc
    db $fc
    db $fc
    inc bc
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
    add b
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ld b, b
    add b
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld a, a
    and d
    ldh a, [rNR10]
    rst $38
    ld [hl+], a
    db $f4
    ld hl, sp-$01
    ld sp, hl
    ld a, [c]
    db $ec
    rst $38
    and b
    db $ed
    ld [hl-], a
    rst $38
    nop
    or $29
    rst $38
    daa
    ld a, [$e034]
    ldh [rP1], a
    ld [bc], a
    ldh [$a0], a
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ldh [$60], a
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
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld hl, sp+$48
    nop
    nop
    ld hl, sp+$48
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    cp $42
    nop
    nop
    cp $f2
    nop
    nop
    cp [hl]
    add b
    nop
    nop
    cp [hl]
    and [hl]
    nop
    nop
    ld a, $26
    nop
    nop
    ld a, $26
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ccf
    cpl
    nop
    nop
    rra
    rra
    ldh [$e0], a
    rra
    rra
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
    ld h, b
    ld e, $00
    nop
    add h
    ld a, e
    nop
    nop
    add a
    ld a, e
    nop
    nop
    adc c
    halt
    nop
    rst $08
    jr c, jr_0d0_5f9d

jr_0d0_5f9d:
    nop
    ld a, h
    dec bc
    nop
    nop
    cpl
    inc d
    nop
    nop
    cp $de
    ld bc, $ff01
    nop
    ld bc, $ff01
    ld [$0101], sp
    rst $38
    ld a, b
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38
    add b
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    rst $38
    and b
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
    nop
    nop
    nop
    rst $38
    nop
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
    jr nz, jr_0d0_5fe9

jr_0d0_5fe9:
    nop
    ccf
    jr nz, jr_0d0_5fed

jr_0d0_5fed:
    nop
    rra
    stop
    nop
    rra
    stop
    nop
    rrca
    ld [$0000], sp
    rlca
    inc b
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    inc bc
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
    rrca
    inc c
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    rra
    stop
    nop
    ccf
    jr nz, jr_0d0_601d

jr_0d0_601d:
    nop
    rra
    dec c
    nop
    nop
    cpl
    add hl, de
    nop
    nop
    ld c, e
    ld [hl-], a
    nop
    nop
    ld d, e
    ld [hl+], a
    nop
    nop
    di
    ldh a, [rSB]
    ld bc, $f2f3
    ld bc, $fb01
    ei
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rNR10]
    rst $38
    ld [$3ce2], sp
    rst $38
    ldh [$f1], a
    ld l, $ff
    rst $38
    ld a, [c]
    pop af
    ret nz

    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ret nz

    add b
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
    ret nz

    ld b, b
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
    ldh [rNR41], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    nop
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
    ldh a, [$80]
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$78
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp $fe
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
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    rra
    inc de
    nop
    nop
    rra
    jr jr_0d0_6151

jr_0d0_6151:
    nop
    rra
    inc d
    nop
    nop
    ccf
    jr nz, jr_0d0_6159

jr_0d0_6159:
    nop
    ccf
    jr nz, jr_0d0_615d

jr_0d0_615d:
    nop
    ccf
    jr nz, jr_0d0_6161

jr_0d0_6161:
    nop
    ccf
    cpl
    nop
    nop
    ccf
    ccf
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    inc c
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    nop
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rra
    inc d
    nop
    nop
    rra
    rla
    nop
    nop
    ccf
    rla
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
    inc b
    nop
    nop
    ld c, h
    inc [hl]
    nop
    nop
    sbc b
    ld h, b
    ld bc, $2000
    ret nz

    ld bc, $4000
    add b
    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    inc bc
    inc bc
    ld hl, sp-$08
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
    ld b, $01
    ld b, b
    and b
    ld [$4007], sp
    or b
    ld [$7007], sp
    or b
    ld [$9007], sp
    ld h, b
    inc e
    dec de
    db $fc
    sub b
    ccf
    ld a, $f2
    cp h
    rst $38
    ret nz

    ld hl, sp+$47
    rst $38
    nop
    ld hl, sp+$25
    rst $38
    ld [$c0fc], sp
    rst $38
    ld a, $f8
    ld b, b
    rst $38
    ld de, $00f8
    rst $38
    ld bc, $c0f0
    rst $38
    inc bc
    ret nz

    ld b, b
    rst $38
    ld [bc], a
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
    db $f4
    nop
    nop
    db $fc
    ld [hl], h
    nop
    nop
    cp $22
    nop
    nop
    cp $22
    nop
    nop
    rst $38
    ld b, c
    nop
    nop
    rst $38
    ld h, c
    nop
    nop
    cp a
    ld hl, $0000
    sbc a
    sbc b
    nop
    nop
    rra
    nop
    nop
    nop
    rra
    inc de
    nop
    nop
    rra
    inc de
    nop
    nop
    rra
    inc de
    nop
    nop
    rra
    ld bc, $0000
    rra
    ld de, $0000
    rra
    stop
    nop
    rra
    stop
    nop
    rra
    nop
    nop
    nop
    rra
    ld bc, $0000
    rra
    ld de, $0000
    rra
    rla
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    nop
    nop
    ld [$0007], sp
    nop
    ld [$0007], sp
    nop
    ld [$0007], sp
    nop
    inc c
    inc bc
    nop
    nop
    rlca
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    rlca
    dec b
    nop
    nop
    rrca
    ld [$0000], sp
    rra
    inc d
    nop
    nop
    rra
    jr jr_0d0_62e1

jr_0d0_62e1:
    nop
    rra
    jr jr_0d0_62e5

jr_0d0_62e5:
    nop
    rrca
    ld [$0000], sp
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
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    inc c
    nop
    nop
    ld c, $0d
    nop
    nop
    ld c, $0d
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    inc bc
    inc b
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    inc bc
    ld b, $06
    inc bc
    ld [bc], a
    rlca
    rlca
    inc bc
    ld [bc], a
    ld c, $0f
    inc bc
    add d
    ld c, $0f
    rra
    db $fd
    rra
    ld e, $83
    ld a, h
    rra
    rra
    rst $20
    sbc b
    inc a
    inc a
    ld h, e
    ld e, a
    jr c, @+$3a

    ccf
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    nop
    ld b, b
    or b
    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    sub b
    ld h, b
    nop
    nop
    ldh a, [$80]
    nop
    nop
    ret nz

    or b
    nop
    nop
    ldh a, [rLCDC]
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ld hl, sp+$10
    nop
    nop
    db $fc
    ld c, b
    nop
    nop
    db $fc
    ret z

    nop
    nop
    db $fc
    ld c, b
    nop
    nop
    db $fc
    ld c, b
    nop
    nop
    db $fc
    ld c, b
    nop
    nop
    db $fc
    call z, RST_00
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    db $fc
    ld b, h
    nop
    nop
    cp $42
    nop
    nop
    cp $42
    nop
    nop
    ld a, [hl]
    add d
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld [hl], b
    sub b
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
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    nop
    nop
    inc d
    dec bc
    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10
    rrca
    nop
    nop
    inc e
    inc bc
    nop
    nop
    rrca
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ccf
    jr z, jr_0d0_6429

jr_0d0_6429:
    nop
    ld a, a
    ld c, a
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    rst $38
    ret nz

    nop
    nop
    rst $38
    di
    nop
    nop
    ld a, a
    ld c, b
    nop
    nop
    ld a, a
    ld h, b
    nop
    nop
    ld a, a
    ld h, b
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    and b
    nop
    nop
    rst $38
    and b
    nop
    nop
    rst $38
    and b
    nop
    nop
    rst $38
    and b
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    cp a
    ld d, b
    nop
    nop
    ld e, a
    or b
    nop
    nop
    ld a, a
    sub b
    nop
    nop
    rra
    ld l, b
    nop
    nop
    rrca
    ld [$0000], sp
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
    ld [$0000], sp
    rrca
    ld c, $00
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
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    nop
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rra
    rra
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
    nop
    ret nz

    nop
    nop
    ld b, b
    and b
    nop
    nop
    ld h, b
    add b
    nop
    nop
    and b
    ld b, b
    nop
    nop
    and b
    ld b, b
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    db $fc
    ld a, h
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
    ld [$8080], sp
    rst $38
    add hl, bc
    add b
    add b
    rst $38
    ld [$8080], sp
    rst $38
    inc b
    add b

Call_0d0_64ff:
    add b
    rst $38
    inc b
    add b
    add b
    rst $38
    dec b
    add b
    add b
    rst $38
    ld c, $80
    add b
    rst $38
    inc c
    add b
    add b
    rst $38
    ld [$8080], sp
    rst $38
    ld [$8080], sp
    rst $38
    ld a, [bc]
    add b
    add b
    rst $38
    dec bc
    add b
    add b
    db $fd
    rst $38
    add b
    add b
    ld hl, sp-$79
    nop
    nop
    or $89
    nop
    nop
    db $fc
    add e
    nop
    nop
    ld hl, sp-$7a
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
    adc b
    nop
    nop
    db $fc
    add b
    nop
    nop
    db $fc
    add b
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add b
    nop
    nop
    call nc, Call_000_00ac
    nop
    call nz, Call_000_007c
    nop
    ret nz

    ld a, b
    nop
    nop
    and b
    jr jr_0d0_6567

jr_0d0_6567:
    nop
    and b
    sbc b
    nop
    nop
    and b
    sbc b
    nop
    nop
    cp b
    add b
    nop
    nop
    db $fc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    nop
    nop
    inc d
    dec bc
    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10
    rrca
    nop
    nop
    inc e
    inc bc
    nop
    nop
    rrca
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld a, a
    jr z, jr_0d0_65a9

jr_0d0_65a9:
    nop
    rst $38
    ld c, a
    nop
    nop
    rst $38
    ld b, b
    nop
    nop
    rst $38
    ld b, b
    nop
    nop
    rst $38
    ret nz

    nop
    nop
    ld a, a
    ld [hl], e
    nop
    nop
    ccf
    ld [$0000], sp
    ccf
    jr nz, jr_0d0_65c5

jr_0d0_65c5:
    nop
    ccf
    jr nz, jr_0d0_65c9

jr_0d0_65c9:
    nop
    ccf
    nop
    nop
    nop
    ccf
    jr nc, jr_0d0_65d1

jr_0d0_65d1:
    nop
    ccf
    jr nz, jr_0d0_65d5

jr_0d0_65d5:
    nop
    ccf
    jr nz, jr_0d0_65d9

jr_0d0_65d9:
    nop
    ccf
    jr nz, jr_0d0_65dd

jr_0d0_65dd:
    nop
    ccf
    jr nz, jr_0d0_65e1

jr_0d0_65e1:
    nop
    ccf
    ccf
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
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
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
    ld [$0000], sp
    rrca
    ld c, $00
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
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    nop
    nop
    nop
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rrca
    ld [$0000], sp
    rra
    rra
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
    nop
    ret nz

    nop
    nop
    ld b, b
    and b
    nop
    nop
    ld h, b
    add b
    nop
    nop
    and b
    ld b, b
    nop
    nop
    and b
    ld b, b
    nop
    nop
    ldh [rLCDC], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    db $fc
    ld a, h
    nop
    nop
    rst $38
    add b
    ldh [rNR41], a
    rst $38
    nop
    ldh a, [rNR34]
    rst $38
    ld l, $fe
    ld de, $1fff
    ld [c], a
    push hl
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
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
    nop
    add b
    add b
    rst $38
    nop
    add b
    add b
    rst $38
    nop
    add b
    add b
    rst $38
    nop
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    cp $82
    nop
    nop
    cp $82
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
    adc b
    nop
    nop
    db $fc
    add b
    nop
    nop
    db $fc
    add b
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add b
    nop
    nop
    call nc, Call_000_00ac
    nop
    call nz, Call_000_007c
    nop
    ret nz

    ld a, b
    nop
    nop
    and b
    jr jr_0d0_66e7

jr_0d0_66e7:
    nop
    and b
    sbc b
    nop
    nop
    and b
    sbc b
    nop
    nop
    cp b
    add b
    nop
    nop
    db $fc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    jr jr_0d0_670d

jr_0d0_670d:
    nop
    ret z

    inc [hl]
    ld bc, $4400
    cp b
    ld bc, $0a00
    db $f4
    ld bc, $9a00
    ld h, h
    nop
    nop
    cp $04
    nop
    nop
    rst $00
    ld a, $00
    nop
    rst $38
    add h
    inc bc
    inc bc
    rst $38
    ld sp, hl
    rlca
    inc b
    rst $38
    nop
    rlca
    inc b
    rst $38
    add b
    rlca
    inc b
    rst $38
    ld b, b
    inc bc
    ld [bc], a
    rst $38
    ld b, b
    inc bc
    ld [bc], a
    rst $38
    nop
    ld bc, $ff01
    ld c, $01
    ld bc, $c0ff
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
    nop
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
    add a
    nop
    nop
    rst $38
    rst $38
    nop
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
    ld de, $0000
    rra
    ld bc, $0000
    rra
    ld de, $0000
    ccf
    ld hl, $0000
    ccf
    ld hl, $0000
    ld a, $36
    nop
    nop
    ld a, [hl]
    ld c, [hl]
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    db $fc
    db $e4
    nop
    nop
    db $fc
    add h
    nop
    nop
    ld hl, sp-$78
    ld bc, $f001
    db $10
    ld bc, $f001
    db $10
    inc bc
    ld [bc], a
    ldh [rNR41], a
    inc bc
    ld [bc], a
    ldh [rNR41], a
    rlca
    inc b
    ret nz

    ld b, b
    rlca
    inc b
    ret nz

    ld b, b
    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    pop bc
    ldh a, [$b0]
    rst $38
    db $10
    ldh a, [rNR23]
    rst $38
    inc e
    ldh a, [rNR34]
    rst $38
    rst $38
    ld a, [$fef5]
    ld h, e
    nop
    ldh a, [$fe]
    sbc [hl]
    ld d, b
    and b
    ldh a, [rNR10]
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$48
    nop
    nop
    db $fc
    inc b
    nop
    nop
    db $fc
    inc e
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
    inc b
    nop
    nop
    cp $02
    nop
    nop
    cp $82
    nop
    nop
    ld a, a
    ld b, c
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
    inc c
    add b
    add b
    rrca
    ld [$8080], sp
    rrca
    ld [$40c0], sp
    rrca
    ld [$40c0], sp
    rrca
    ld [$00c0], sp
    dec c
    ld a, [bc]
    ld b, b
    ret nz

    inc b
    rlca
    ld b, b
    ret nz

    inc b
    rlca
    nop
    add b
    ld [bc], a
    ld bc, $8000
    ld [bc], a
    ld bc, $8000
    ld [bc], a
    ld bc, $8000
    inc bc
    nop
    add b
    nop
    rlca
    rlca
    ret nz

    ret nz

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
    ldh [rNR32], a
    ld bc, $4400
    cp d
    ld bc, $0600
    ld hl, sp+$01
    nop
    ld a, [bc]
    db $f4
    ld bc, $ca00
    inc [hl]
    nop
    nop
    cp $04
    nop
    nop
    ld c, [hl]
    ld [hl-], a
    rlca
    ld [bc], a
    rst $38
    add a
    rrca
    inc b
    rst $38
    ld hl, sp+$0f
    inc b
    rst $38
    nop
    rrca
    inc b
    rst $38
    ld [bc], a
    rrca
    inc c
    rst $38
    ld bc, $0707
    rst $38
    jr nc, jr_0d0_68c0

    nop
    rst $38
    add b

jr_0d0_68c0:
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    nop
    rst $38
    nop
    inc bc
    inc bc
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $ff01
    rrca
    ld bc, $ff01
    rrca
    nop
    nop
    rst $38
    add [hl]
    nop
    nop
    rst $38
    add h
    nop
    nop
    ld a, a
    ld b, d
    nop
    nop
    ld a, a
    ld b, d
    nop
    nop
    ccf
    inc hl
    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    ccf
    dec [hl]
    nop
    nop
    ld a, a
    ld h, c
    nop
    nop
    ld a, [hl]
    ld d, d
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
    ld bc, $f001
    db $10
    ld bc, $f001
    db $10
    inc bc
    ld [bc], a
    ldh [rNR41], a
    inc bc
    ld [bc], a
    ldh [rNR41], a
    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    rlca
    inc b
    ld hl, sp+$78
    inc bc
    ld [bc], a
    db $fc
    inc a
    ld bc, $fe01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    ldh a, [$30]
    rst $38
    nop
    ldh a, [rNR34]
    rst $38
    db $e3
    cp $91
    rst $38
    rst $38
    ld a, [c]
    push af
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
    ld hl, sp-$08
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$a0], a
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
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$38
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
    db $e4
    nop
    nop
    db $fc
    add h
    nop
    nop
    db $fc
    add b
    nop
    nop
    call nc, Call_000_00ac
    nop
    ld b, h
    ld a, h
    nop
    nop
    ld b, b
    ld a, b
    nop
    nop
    jr nz, jr_0d0_69fe

    nop
    nop
    jr nz, jr_0d0_6a02

    nop
    nop
    jr nz, jr_0d0_6a06

    nop
    nop
    jr c, jr_0d0_69f2

jr_0d0_69f2:
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a

jr_0d0_69fe:
    add b
    add b
    nop
    nop

jr_0d0_6a02:
    nop
    nop
    nop
    nop

jr_0d0_6a06:
    nop
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    jr z, jr_0d0_6a27

    nop
    nop
    ld b, b
    ccf
    nop
    nop
    ld b, c
    ld a, $00
    nop
    inc sp
    inc c
    nop
    nop
    ld a, $01
    nop
    nop
    db $d3
    xor l
    ld bc, $ff01

jr_0d0_6a27:
    jp $0203


    rst $38
    inc a
    rlca
    inc b
    rst $38
    ld bc, $0407
    rst $38
    ld b, c
    rlca
    inc b
    rst $38
    ld b, c
    rlca
    inc b
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    ld bc, $ff01
    add b
    ld bc, $ff01
    ld c, h
    ld bc, $ff01
    ld [bc], a
    ld bc, $ff01
    nop
    inc bc
    ld [bc], a
    rst $38
    jr nz, @+$05

    ld [bc], a
    rst $38
    jr nz, jr_0d0_6a5c

    ld [bc], a
    rst $38
    nop

jr_0d0_6a5c:
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    inc bc
    rst $38
    nop
    ld bc, $ff01
    add [hl]
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38
    ld hl, sp+$00
    nop
    ld a, a
    ld e, b
    nop
    nop
    ld a, a
    ld c, b
    nop
    nop
    ccf
    jr z, jr_0d0_6a7d

jr_0d0_6a7d:
    nop
    ccf
    jr nc, jr_0d0_6a81

jr_0d0_6a81:
    nop
    rra
    stop
    nop
    rra
    inc e
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    rra
    inc e
    nop
    nop
    ccf
    dec h
    nop
    nop
    ccf
    ld hl, $0000
    scf
    add hl, hl
    nop
    nop
    dec [hl]
    dec bc
    nop
    nop
    inc hl
    ld e, $00
    nop
    ld b, a
    ld a, [hl-]
    nop
    nop
    ld c, a
    inc [hl]
    nop
    nop
    rrca
    ld [hl], b
    nop
    nop
    rra
    ld h, b
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
    add b
    nop
    nop
    add b
    ld b, b
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ret nz

    nop
    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh a, [$9f]
    nop
    nop
    rst $38
    ld a, a
    ldh a, [$f0]
    rst $38
    ld [bc], a
    ldh a, [$58]
    rst $38
    add b
    ldh a, [rNR34]
    rst $38
    db $fd
    ld a, [$e075]
    ldh [rP1], a
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [$60], a
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
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
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
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rNR32], a
    ld bc, $4400
    cp d
    ld bc, $0600
    ld hl, sp+$01
    nop
    ld a, [bc]
    db $f4
    ld bc, $ca00
    inc [hl]
    nop
    nop
    cp $04
    nop
    nop
    ld c, [hl]
    ld [hl-], a
    rlca
    ld [bc], a
    rst $38
    add a
    rrca
    inc b
    rst $38
    ld hl, sp+$0f
    inc b
    rst $38
    nop
    rrca
    inc b
    rst $38
    ld [bc], a
    rrca
    inc c
    rst $38
    ld bc, $0707
    rst $38
    jr nc, jr_0d0_6bc0

    nop
    rst $38
    add b

jr_0d0_6bc0:
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    nop
    rst $38
    nop
    inc bc
    inc bc
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    rst $38
    adc b
    nop
    nop
    ld a, a
    ld c, b
    nop
    nop
    ld a, a
    ld b, h
    nop
    nop
    ccf
    inc [hl]
    nop
    nop
    ccf
    ld [hl+], a
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    rra
    ld de, $0000
    rrca
    dec c
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    ld [bc], a
    nop
    nop
    rrca
    inc b
    nop
    nop
    rra
    inc d
    nop
    nop
    rra
    inc d
    nop
    nop
    rra
    ld [$0000], sp
    dec e
    ld a, [bc]
    nop
    nop
    add hl, de
    rla
    nop
    nop
    dec de
    dec d
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
    ccf
    inc hl
    nop
    nop
    ld a, a
    ld [hl], c
    nop
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    ldh a, [$30]
    rst $38
    nop
    ldh a, [rNR34]
    rst $38
    db $e3
    cp $91
    rst $38
    rst $38
    ld a, [c]
    push af
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
    ld hl, sp-$08
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$c0]
    nop
    nop
    ldh a, [$a0]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$90]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
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
    nop
    nop
    nop
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

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [rSVBK]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    ld e, $00
    nop
    ld a, a
    ld h, e
    nop
    nop
    rst $38
    sub b
    ld bc, $ff01
    jr nz, @+$03

    ld bc, $20ff
    ld bc, $ff01
    ret nz

    nop
    nop
    rst $38
    ret nz

    nop
    nop
    ld a, a
    ld [hl], b
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
    ld bc, $ff01
    nop
    ld bc, $ff01
    ld [hl], b
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    inc bc
    rst $38
    add b
    inc bc
    ld [bc], a
    rst $38
    inc bc
    ld bc, $ff01
    rst $38
    nop
    nop
    ld a, a
    ld a, [hl]
    nop
    nop
    ccf
    ld a, $00
    nop
    rra
    ld e, $00
    nop
    rra
    inc e
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
    rla
    nop
    nop
    rra
    ld de, $0000
    rra
    ld de, $0000
    scf
    ld a, [hl+]
    nop
    nop
    scf
    ld a, [hl+]
    nop
    nop
    daa
    ld a, [de]
    nop
    nop
    daa
    dec e
    nop
    nop
    ld c, a
    ld [hl], $00
    nop
    ld e, a
    jr z, jr_0d0_6dad

jr_0d0_6dad:
    nop
    rst $38
    ld hl, sp+$01
    ld bc, $fcff
    ld bc, $ff01
    rra
    nop
    nop
    ld a, a
    rrca
    nop
    nop
    rra
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
    jr c, jr_0d0_6dd9

    nop
    nop
    ld d, c
    ld l, $00
    add b
    ld b, c

jr_0d0_6dd9:
    ld a, $80
    nop
    jp nz, $80bd

    nop
    ld a, [$807d]
    nop
    rst $38
    ld b, $81
    sbc [hl]
    rst $38
    ld hl, sp-$10
    ld l, a
    rst $38
    nop
    ld sp, hl
    ld e, $ff
    nop
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    ld c, c
    rst $38
    ld bc, $c1ff
    rst $38
    pop hl
    cp $ea
    rst $38
    dec b
    inc e
    inc e
    rst $38
    inc bc
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
    call nz, RST_00
    db $fc
    db $fc
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld a, [bc]
    dec b
    nop
    nop
    ld [$0007], sp
    nop
    ld [$0007], sp
    nop
    ld c, $01
    nop
    nop
    rlca
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    rra
    inc d
    nop
    nop
    ccf
    daa
    nop
    nop
    ccf
    jr nz, jr_0d0_6edd

jr_0d0_6edd:
    nop
    ld a, a
    ld h, b
    nop
    nop
    ld a, a
    ld h, b
    nop
    nop
    ld a, a
    ld a, c
    nop
    nop
    ccf
    inc h
    nop
    nop
    ccf
    jr nc, jr_0d0_6ef1

jr_0d0_6ef1:
    nop
    ccf
    jr nc, jr_0d0_6ef5

jr_0d0_6ef5:
    nop
    ld a, a
    ld h, b
    nop
    nop
    ld a, a
    ld a, b
    nop
    nop
    ld a, a
    ld d, b
    nop
    nop
    ld a, a
    ld d, b
    nop
    nop
    ld a, a
    ld d, b
    nop
    nop
    ld a, a
    ld d, b
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, a
    jr z, jr_0d0_6f15

jr_0d0_6f15:
    nop
    cpl
    ld e, b
    nop
    nop
    ccf
    ld c, b
    nop
    nop
    rrca
    inc [hl]
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    sbc h
    nop
    nop
    rst $38
    sbc h
    ld bc, $ff01
    rst $38
    inc bc
    ld [bc], a
    rst $38
    ld sp, $0303
    rst $38
    rst $38
    rlca
    inc b
    rst $38
    ld h, e
    rlca
    rlca

jr_0d0_6f3e:
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d0_6f4a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    nop
    jr nz, jr_0d0_6f4a

    nop
    nop
    jr nc, jr_0d0_6f3e

    nop
    nop
    ld d, b
    and b
    nop
    nop
    ld d, b
    and b
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ld [hl], b
    sub b
    nop
    nop
    cp $3e
    nop
    nop
    rst $38
    pop bc
    nop
    nop
    rst $38
    ld [bc], a
    add b
    add b
    rst $38
    inc b
    ret nz

    ld b, b
    rst $38
    inc b
    ret nz

    ret nz

    rst $38
    add h
    ret nz

    ld b, b
    rst $38
    ld [bc], a
    ret nz

    ld b, b
    rst $38
    ld [bc], a
    ret nz

    ld b, b
    rst $38
    ld [bc], a
    ret nz

    ret nz

    rst $38
    rlca
    ret nz

    ld b, b
    rst $38
    ld b, $c0
    ld b, b
    rst $38
    inc b
    ret nz

    ld b, b
    rst $38
    inc b
    ret nz

    ld b, b
    rst $38
    dec b
    ret nz

    ld b, b
    rst $38
    dec b
    ret nz

    ret nz

    cp $ff
    ret nz

    ret nz

    db $fc
    ld b, e
    nop
    add b
    ei
    ld b, h
    nop
    add b
    cp $41
    nop
    add b
    db $fc
    ld b, e
    nop
    nop
    cp $c2
    nop
    nop
    cp $c2
    nop
    nop
    cp $fa
    nop
    nop
    cp $cc
    nop
    nop
    add $b8
    nop
    nop
    adc $f0
    nop
    nop
    or $6a
    nop
    nop
    cp $46
    nop
    nop
    nop
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
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld b, $01
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld c, $0d
    nop
    nop
    rst $38
    ld hl, sp+$03
    inc bc
    rst $38
    rlca
    rlca
    inc b
    rst $38
    nop
    rlca
    inc b
    rst $38
    ld b, b
    rlca
    inc b
    rst $38
    ret nz

    rlca
    inc b
    rst $38
    ld e, h
    rlca
    inc b
    rst $38
    ld b, b
    inc bc
    ld [bc], a
    rst $38
    ld b, b
    inc bc
    inc bc
    rst $38
    ret nz

    rlca
    dec b
    rst $38
    ret nz

    rlca
    inc b
    rst $38
    ld c, [hl]
    rlca
    inc b
    rst $38
    ld b, b
    rlca
    inc b
    rst $38
    ld b, b
    rlca
    dec b
    rst $38
    ld b, b
    rlca
    rlca
    rst $38
    ld b, b
    ld [bc], a
    inc bc
    ld a, a
    ld a, a
    nop
    inc bc
    cp a
    ld hl, $0403
    ld a, $a2
    ld bc, $be06
    ld [hl+], a
    nop
    rlca
    cp [hl]
    ld [hl+], a
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3a
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $02
    nop
    nop

jr_0d0_70ba:
    ld a, $3e
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
    and b
    ld b, b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    or b
    ld b, b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    jr c, jr_0d0_70ba

    nop
    nop
    rst $38
    rrca
    add b
    add b
    rst $38
    ldh a, [$e0]
    ld h, b
    rst $38
    nop
    ldh a, [rNR10]
    rst $38
    ld bc, $10f0
    rst $38
    ld bc, $90f0
    rst $38
    dec e
    ldh a, [rNR10]
    rst $38
    ld bc, $10f0
    rst $38
    ld bc, $20e0
    rst $38
    ld bc, $e0e0
    rst $38
    ld bc, $d0f0
    rst $38
    ld bc, $10f0
    rst $38
    ld bc, $10f0
    rst $38
    ld bc, $10f0
    rst $38
    ld bc, $50f0
    rst $38
    ld bc, $70f0
    rst $38
    rst $38
    jr nz, jr_0d0_7184

    ld a, [hl]
    ld b, d
    add b
    ld h, b
    ld a, $22
    ld h, b
    sub b
    ld a, $22
    ret nz

    jr nc, @+$40

    ld [hl+], a
    add b
    ld [hl], b
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $38
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    jr nz, jr_0d0_719a

    nop
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc e
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
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

jr_0d0_7184:
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
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop

jr_0d0_719a:
    ld b, $01
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld c, $0d
    nop
    nop
    ccf
    ld [$0007], sp
    rst $38
    ld b, a
    rlca
    nop
    rst $38
    nop
    rlca
    inc b
    rst $38
    ld b, b
    ld bc, $7f03
    ret nz

    nop
    nop
    ld a, a
    inc e
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
    ld c, [hl]
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
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ld hl, $0000
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3a
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $02
    nop
    nop

jr_0d0_723a:
    ld a, $3e
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
    and b
    ld b, b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    or b
    ld b, b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    jr c, jr_0d0_723a

    nop
    nop
    cp $08
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    ld bc, $10f0
    rst $38
    ld bc, $e040
    rst $38
    inc e
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
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
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $38
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    jr nz, jr_0d0_731a

    nop
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc e
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec b
    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10
    rrca
    nop
    nop
    db $10
    rrca
    nop
    nop

jr_0d0_731a:
    ld a, [de]
    dec b
    nop
    nop
    rrca
    nop
    nop
    nop
    inc c
    inc bc
    nop
    nop
    ld [hl], e
    inc l
    nop
    nop
    rst $38
    sbc a
    dec bc
    rlca
    rst $38
    nop
    rrca
    inc b
    rst $38
    add c
    rrca
    nop
    rst $38
    add c
    rrca
    add hl, bc
    rst $38
    add b
    ld b, $06
    rst $38
    add b
    nop
    nop
    rst $38
    add b
    nop
    nop
    rst $38
    adc [hl]
    nop
    nop
    rst $38
    add b
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
    ld a, a
    nop
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    ld b, e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld b, d
    nop
    nop
    ld a, [hl]
    ld [bc], a
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld l, h
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld [hl], h
    nop
    nop
    ld a, h
    ld b, h
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
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    nop
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
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
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
    add b
    nop
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ld b, b
    add b
    nop
    nop
    ret nz

    nop
    nop
    nop
    add b
    nop
    nop
    nop
    db $fc
    inc l
    nop
    nop
    rst $38
    jp $c020


    rst $38
    inc b
    ret nz

    and b
    rst $38
    ld [bc], a
    ldh [rLCDC], a
    rst $38
    ld [bc], a
    ldh [rNR41], a
    rst $38
    inc bc
    ret nz

    ret nz

    cp $02
    nop
    nop
    cp $00
    nop
    nop
    cp $b8
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
    rst $38
    nop
    nop
    cp $fe
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
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld [hl], h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld l, h
    nop
    nop
    ld a, h
    ld b, h
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
    jr c, jr_0d0_745e

jr_0d0_745e:
    nop
    nop
    jr z, jr_0d0_7472

    nop
    nop
    jr z, jr_0d0_7476

    nop
    nop
    jr z, jr_0d0_747a

    nop
    nop
    jr z, jr_0d0_747e

    nop
    nop
    jr z, jr_0d0_7482

jr_0d0_7472:
    nop
    nop
    jr c, jr_0d0_74ae

jr_0d0_7476:
    nop
    nop
    ld a, h
    ld a, h

jr_0d0_747a:
    nop
    nop
    cp $fe

jr_0d0_747e:
    nop
    nop
    nop
    nop

jr_0d0_7482:
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
    ld [$0007], sp
    nop
    ld [$0007], sp
    nop
    ld [$0007], sp
    nop
    dec c
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    nop
    inc e
    dec de
    nop
    nop
    ld a, a
    db $10
    rrca
    nop
    rst $38
    adc a
    rrca
    nop

jr_0d0_74ae:
    rst $38
    nop
    rrca
    ld [$80ff], sp
    ld [bc], a
    rlca
    rst $38
    add b
    nop
    nop
    rst $38
    jr c, jr_0d0_74bd

jr_0d0_74bd:
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
    add b
    nop
    nop
    rst $38
    add b
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
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
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    inc e
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop

jr_0d0_750e:
    ld a, h
    ld b, h
    nop
    nop

jr_0d0_7512:
    ld a, h
    ld b, h
    nop
    nop

jr_0d0_7516:
    ld a, h
    inc b
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld d, h
    ld l, h
    nop
    nop
    ld b, h
    ld a, h
    nop
    nop
    jr z, jr_0d0_7538

    nop
    nop
    jr z, jr_0d0_753c

    nop
    nop
    jr c, jr_0d0_7568

    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h

jr_0d0_7538:
    nop
    nop
    ld a, h
    ld a, h

jr_0d0_753c:
    nop
    nop
    ld a, h
    ld b, h
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
    nop
    nop
    jr nz, jr_0d0_750e

    nop
    nop
    jr nz, jr_0d0_7512

    nop
    nop
    jr nz, jr_0d0_7516

    nop
    nop
    ld h, b
    add b
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    db $fc
    stop
    nop

jr_0d0_7568:
    rst $38
    ld [c], a
    ldh [rP1], a
    rst $38
    nop
    ldh [rP1], a
    rst $38
    ld [bc], a
    ldh [rNR41], a
    cp $03
    add b
    ret nz

    cp $38
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
    cp $72
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
    cp $fe
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
    ld a, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld l, h
    nop
    nop
    ld a, h
    ld b, b
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld [hl], h
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
    inc b
    nop
    nop
    ld a, h
    ld b, h
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
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
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
    ld bc, $0000
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    ccf
    inc [hl]
    inc b
    inc bc
    rst $38
    jp $0503


    rst $38
    jr nz, jr_0d0_7634

    ld [bc], a
    rst $38
    ld b, b
    rlca
    inc b
    rst $38
    ld b, b

jr_0d0_7634:
    inc bc
    inc bc
    rst $38
    ret nz

    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    dec e
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
    nop
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld b, $00
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld l, h
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld [hl], h
    nop
    nop
    ld a, h
    ld b, h
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
    ld b, h
    nop
    nop

jr_0d0_76a2:
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    nop
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
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
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
    ld d, b
    and b
    nop
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld e, b
    and b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    jr nc, jr_0d0_76a2

    nop
    nop
    adc $34
    nop
    nop
    rst $38
    ld sp, hl
    nop
    nop
    rst $38
    nop
    ret nc

    ldh [rIE], a
    add c
    ldh a, [rNR41]
    rst $38
    add c
    ldh a, [rP1]
    rst $38
    ld bc, $90f0
    rst $38
    ld bc, $6060
    rst $38
    ld bc, $0000
    rst $38
    ld [hl], c
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    rlca
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
    cp $02
    nop
    nop
    cp $c2
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
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    nop
    nop
    nop
    ld a, h
    ld [hl], h
    nop
    nop
    ld a, h
    ld b, h
    nop
    nop
    ld a, h
    ld l, h
    nop
    nop
    ld a, h
    ld b, h
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
    jr c, jr_0d0_775e

jr_0d0_775e:
    nop
    nop
    jr z, jr_0d0_7772

    nop
    nop
    jr z, jr_0d0_7776

    nop
    nop
    jr z, jr_0d0_777a

    nop
    nop
    jr z, jr_0d0_777e

    nop
    nop
    jr z, jr_0d0_7782

jr_0d0_7772:
    nop
    nop
    jr c, jr_0d0_77ae

jr_0d0_7776:
    nop
    nop
    ld a, h
    ld a, h

jr_0d0_777a:
    nop
    nop
    cp $fe

jr_0d0_777e:
    nop
    nop
    nop
    nop

jr_0d0_7782:
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
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld b, $01
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld c, $0d
    nop
    nop
    ccf
    ld [$0007], sp
    rst $38
    ld b, a
    rlca
    nop

jr_0d0_77ae:
    rst $38
    nop
    rlca
    inc b
    rst $38
    ld b, b
    ld bc, $7f03
    ret nz

    nop
    nop
    ld a, a
    inc e
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
    ld c, [hl]
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
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    ld a, a
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
    ld a, $3e
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $36
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $2e
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop

jr_0d0_783a:
    ld a, $3e
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
    and b
    ld b, b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    or b
    ld b, b
    nop
    nop
    ldh [rP1], a
    nop
    nop
    jr c, jr_0d0_783a

    nop
    nop
    cp $08
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    ld bc, $10f0
    rst $38
    ld bc, $e040
    rst $38
    inc e
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
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
    nop
    nop
    nop
    rst $38
    rst $38
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
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $38
    nop
    nop

Call_0d0_78c4:
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc e
    inc e
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $22
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc bc
    nop
    nop
    inc b
    inc bc
    nop
    nop
    ld b, $01
    ld [bc], a
    ld bc, $cc1f
    inc b
    inc bc
    rst $38
    rlca
    rrca
    nop
    rst $38
    ld b, b
    rrca
    nop
    rst $38
    nop
    rrca
    nop
    rst $38
    ld b, b
    rlca
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld a, a
    inc e
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
    ld c, [hl]
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
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    ld a, a
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
    ld a, $3e
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $00
    nop
    nop
    ld a, $2e
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $00

jr_0d0_79a8:
    nop
    nop
    ld a, $02
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld b, b
    nop
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    db $10
    ldh [rP1], a
    nop
    or b
    ld b, b
    nop
    nop
    db $fc
    add hl, de
    jr nz, jr_0d0_79a8

    rst $38
    ldh a, [$90]
    ld h, b
    rst $38
    ld bc, $00f0
    rst $38
    nop
    ldh a, [rP1]
    rst $38
    ld bc, $00f0
    rst $38
    ld bc, $0070
    rst $38
    inc e
    nop
    nop
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
    rst $38
    ld bc, $0000
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
    nop
    nop
    nop
    rst $38
    rst $38
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
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $3a
    nop
    nop
    ld a, $2e
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $20
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, [hl+]
    ld [hl], $00
    nop
    ld [hl+], a
    ld a, $00
    nop
    inc d
    ld [$0000], sp
    inc d
    ld [$0000], sp
    inc e
    inc e
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, $22
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    rlca
    ld b, $00
    nop
    ld a, a
    ld a, h
    ld bc, $ff01
    add e
    inc bc
    ld [bc], a
    rst $38
    nop
    inc bc
    ld [bc], a
    rst $38
    jr nz, jr_0d0_7ae4

    ld [bc], a
    rst $38
    ld h, b

jr_0d0_7ae4:
    inc bc
    ld [bc], a
    rst $38
    ld l, $03
    ld [bc], a
    rst $38
    jr nz, @+$03

    ld bc, $20ff
    ld bc, $ff01
    ldh [$03], a
    ld [bc], a
    rst $38
    ldh [$03], a
    ld [bc], a
    rst $38
    daa
    inc bc
    ld [bc], a
    rst $38
    jr nz, @+$05

    ld [bc], a
    rst $38
    jr nz, jr_0d0_7b08

    ld [bc], a
    rst $38
    and b

jr_0d0_7b08:
    inc bc
    inc bc
    rst $38
    and b
    ld bc, $3f01
    cp a
    nop
    ld bc, $905f
    ld bc, $9f02
    ld d, c
    nop
    inc bc
    rst $18
    ld de, $0300
    ld e, a
    sub c
    nop
    nop
    rra
    inc e
    nop
    nop
    ccf
    ld h, $00
    nop
    ccf
    daa
    nop
    nop
    ld a, a
    ld a, h
    nop
    nop
    ld a, a
    ld b, l
    nop
    nop
    rst $38
    ld sp, hl
    nop
    nop
    rst $38
    adc l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    and b
    nop
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld [$00f0], sp
    nop
    ld e, b
    and b
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    inc e
    db $ec
    nop
    nop
    rst $38
    rlca
    ret nz

    ret nz

    rst $38
    ld hl, sp-$10
    jr nc, @+$01

    nop
    ld hl, sp+$08
    rst $38
    nop
    ld hl, sp-$78
    rst $38
    nop
    ld hl, sp-$38
    rst $38
    ld c, $f8
    adc b
    rst $38
    nop
    ld hl, sp-$78
    rst $38
    nop
    ldh a, [$90]
    rst $38
    nop
    ldh a, [$f0]
    rst $38
    nop
    ld hl, sp-$18
    rst $38
    nop
    ld hl, sp-$78
    rst $38
    nop
    ld hl, sp-$78
    rst $38
    nop
    ld hl, sp-$78
    rst $38
    nop
    ld hl, sp-$58
    rst $38
    nop
    ld hl, sp-$48
    rst $38
    rst $38
    sub b
    or b
    cp a
    and c
    ld b, b
    jr nc, jr_0d0_7bf4

    ld de, $4830
    rra
    ld de, $1860
    rra
    ld de, $3840
    rra
    rla
    nop
    nop
    rra
    inc e
    add b
    add b
    rra
    inc b
    add b
    add b
    rla
    rra
    ret nz

    ret nz

    rla
    inc e
    ret nz

    ld b, b

jr_0d0_7bf4:
    dec de
    rla
    ldh [$e0], a
    rra
    ld d, $e0
    jr nz, jr_0d0_7c1c

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0d0_7c1c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
