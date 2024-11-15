SECTION "ROM Bank $0e1", ROMX[$4000], BANK[$e1]

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
    rrca

jr_0e1_400b:
    rrca
    nop
    nop
    rrca

jr_0e1_400f:
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    cp $ff
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    sbc l
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    dec c
    dec bc
    ldh [rIE], a
    dec de
    rra
    ldh [rIE], a
    rra
    rra
    ldh a, [rIE]
    rla
    jr @+$72

    rst $38
    rra
    db $10
    ldh a, [$7f]
    rra
    db $10
    ccf
    cp a
    inc e
    inc de
    jr nc, jr_0e1_400b

    rra
    db $10
    jr c, jr_0e1_400f

    rla
    db $18, $98
    ld e, a
    dec bc
    inc c
    rst $18
    ccf
    dec b
    ld b, $f8
    rst $38
    inc bc
    inc bc
    db $ec
    sbc a
    ld bc, $de01
    push hl
    nop
    nop
    cp $fd
    nop
    nop
    ld a, h
    ld b, e
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
    ld h, b
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
    sbc a
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
    add b
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
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
    ld a, a
    ld a, a
    nop
    nop
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
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, [hl]
    adc [hl]
    nop
    nop
    cpl
    rst $18
    add b
    add b
    or $ff
    ret nz

    ret nz

    ldh a, [rIE]
    ldh [$e0], a

jr_0e1_40f0:
    nop
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ldh a, [$f0]
    ld bc, $f8ff
    ld hl, sp+$01
    rst $38
    add sp, -$68
    ld hl, $78ff
    adc b
    rst $38
    rst $38
    jr jr_0e1_40f0

    ld bc, $38ff
    ret z

    ld bc, $68ff
    sbc b
    ld [hl], e
    rst $38
    ldh a, [rNR10]
    xor [hl]
    rst $18
    ret nc

    jr nc, jr_0e1_418a

    rst $38
    ldh a, [$f0]
    inc bc
    db $fd
    or b
    ld [hl], b
    inc bc
    db $fd
    ld [hl], b
    or b
    adc e
    db $fd
    ldh [$e0], a
    ld [hl], c
    cp $c0
    ld b, b
    ld hl, $80ff
    add b
    ld hl, $00ff
    nop
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld h, c
    rst $38
    add b
    add b
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
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld a, h
    ld a, h
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
    cp a
    cp a
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
    rlca
    rlca
    nop
    nop

jr_0e1_418a:
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld a, $3f
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld bc, $ec01
    rst $38
    ld bc, $d601
    rst $28
    ld bc, $ef01
    rst $38
    ld bc, $fd01
    cp $01
    ld bc, $fcf3
    nop
    nop
    cp $f1
    nop
    nop
    ld [hl], e
    ld a, h
    nop
    nop
    jr c, jr_0e1_420b

    nop
    nop
    inc a
    ccf
    nop
    nop
    inc e
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    jr jr_0e1_41fb

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
    jr nz, jr_0e1_4227

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e1_422f

    nop
    nop
    jr nz, jr_0e1_4233

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop

jr_0e1_41fa:
    ld b, b

jr_0e1_41fb:
    ld a, a
    nop
    nop
    ld h, b
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
    cp a

jr_0e1_420b:
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
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld a, a

jr_0e1_4227:
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc a

jr_0e1_422f:
    inc a
    nop
    nop
    inc a

jr_0e1_4233:
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    add sp, $38
    nop
    nop
    ccf
    rst $08
    add b
    add b

jr_0e1_4264:
    dec e
    rst $28
    ret nz

    ret nz

    rst $08
    rst $38
    ldh [$e0], a
    cp $ff
    ld [hl], b
    ldh a, [rTIMA]
    cp $30
    ldh a, [$03]
    db $fc
    ret nc

    jr nc, jr_0e1_41fa

    ld a, [hl]
    ldh a, [rNR10]
    cp a
    ld c, a
    ret nc

    jr nc, jr_0e1_42f8

    adc a
    jr nz, jr_0e1_4264

    rst $28
    rra
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    add hl, sp
    rst $38
    add b
    add b
    rst $10
    rst $28
    add b
    add b
    add hl, sp
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    ld b, h
    rst $38
    add b
    add b
    jr c, @+$01

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
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld hl, $80ff
    add b
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
    ld b, b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, h
    ld a, h
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
    ccf
    ccf
    nop
    nop

jr_0e1_42f8:
    ccf
    ccf
    ret nz

    ret nz

    ccf
    ccf
    ldh [$e0], a
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    cp $ff
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    sbc l
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    dec c
    dec bc
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    ld [$700f], sp
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    rrca
    ld [$ff7f], sp
    ld c, $09
    ld [hl], b
    rst $38
    rrca
    ld [$7ff8], sp
    rrca
    ld [$7ff8], sp
    rrca
    ld [$ff7f], sp
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    and b
    rst $38
    dec bc
    rrca
    ldh [$bf], a
    dec b
    ld b, $a0
    ld a, a
    inc bc
    inc bc
    ldh [rIE], a
    nop
    nop
    jr nz, jr_0e1_43b3

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
    jr jr_0e1_43a3

    nop
    nop
    rra
    rra
    nop
    nop
    rla
    rra
    nop
    nop
    jr nz, jr_0e1_43cf

    nop
    nop
    jr nz, jr_0e1_43d3

    nop
    nop
    jr nz, jr_0e1_43d7

    nop
    nop
    jr nz, jr_0e1_43db

    nop
    nop
    jr nz, jr_0e1_43df

    nop
    nop
    db $10

jr_0e1_43a3:
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

jr_0e1_43b3:
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
    rrca
    rrca
    nop
    nop
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

jr_0e1_43cf:
    nop
    ld hl, sp+$08
    nop

jr_0e1_43d3:
    nop
    ld hl, sp-$08
    nop

jr_0e1_43d7:
    nop
    ld hl, sp+$08
    nop

jr_0e1_43db:
    nop
    ld hl, sp+$28
    nop

jr_0e1_43df:
    nop
    ld a, [hl]
    adc [hl]
    nop
    nop
    cpl
    rst $18
    add b
    add b
    or $ff
    ret nz

    ret nz

    ldh a, [rIE]
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld bc, $e0ff
    ldh [rSB], a
    rst $38
    and b
    ld h, b
    ld hl, $e0ff
    jr nz, @+$01

    rst $38
    ldh [rNR41], a
    ld bc, $d0ff
    jr nc, jr_0e1_440e

    rst $38

jr_0e1_440e:
    ret nc

    jr nc, jr_0e1_4484

    rst $38
    ldh a, [rNR10]
    xor [hl]
    rst $18
    ldh a, [rSVBK]
    ld [hl], c
    rst $38
    ld hl, sp-$08
    ld bc, $fcff
    db $f4
    ld bc, $fcff
    db $f4
    adc c
    rst $38
    ld hl, sp-$78
    ld [hl], c
    rst $38
    ld [hl], b
    ld [hl], b
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    inc h
    db $fc

jr_0e1_4452:
    nop
    nop
    inc h
    db $fc

jr_0e1_4456:
    nop
    nop
    jr z, jr_0e1_4452

    nop
    nop
    jr z, jr_0e1_4456

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh [$e0], a
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

jr_0e1_4484:
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
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    cp $ff
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    sbc l
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    dec c
    dec bc
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    ld [$700f], sp
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    dec bc
    inc c
    ld a, a
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    dec bc
    inc c
    cp b
    ld a, a
    dec b
    ld b, $b8
    ld a, a
    dec b
    ld b, $df
    ccf
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh a, [$ef]
    ld bc, $e001
    rra
    nop
    nop
    ldh [rIE], a
    nop
    nop
    jr nz, jr_0e1_4533

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
    ld h, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    adc a
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
    ld b, b
    ld a, a
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
    rra
    nop
    nop
    rra

jr_0e1_4533:
    rra
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

jr_0e1_4544:
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, [hl]
    adc [hl]
    nop
    nop
    cpl
    rst $18
    add b
    add b
    or $ff
    ret nz

    ret nz

    ldh a, [rIE]
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld bc, $e0ff
    ldh [rSB], a
    rst $38
    ld b, b
    ret nz

    ld hl, $40ff
    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    ld bc, $a0ff
    ld h, b
    ld bc, $a0ff
    ld h, b
    ld [hl], e
    cp $d0
    jr nc, jr_0e1_4544

    rst $18
    ldh a, [$f0]
    ld [hl], c
    rst $38
    ldh a, [$f0]
    ld bc, $f0ff
    ldh a, [rSB]
    rst $38
    ld hl, sp-$18
    adc c
    rst $38
    ldh a, [rNR10]
    ld [hl], c
    rst $38
    ldh [$e0], a
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld h, b
    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, h
    db $fc
    nop
    nop
    ld a, b
    ld hl, sp+$00
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
    ldh a, [$f0]
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    cp $ff
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    sbc l
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    dec c
    dec bc
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    ld [$700f], sp
    rst $38
    dec bc
    inc c
    or b
    ld a, a
    dec bc
    inc c
    rst $38
    ccf
    dec b
    ld b, $f0
    ccf
    dec b
    ld b, $d8
    ccf
    ld [bc], a
    inc bc
    ret c

    ccf
    ld [bc], a
    inc bc
    rst $38
    rra
    ld [bc], a
    inc bc
    ldh [$7f], a
    ld bc, $f001
    rst $38
    ld bc, $f801
    rst $30
    ld bc, $f801
    rst $30
    nop
    nop
    ldh a, [$8f]
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
    ld h, b
    ld a, a
    nop
    nop
    or b
    rst $38
    nop
    nop
    sbc a
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
    add b
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    jr c, jr_0e1_46e4

    nop
    nop
    jr c, jr_0e1_46e8

    nop
    nop
    jr c, jr_0e1_46ec

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
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
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, [hl]
    adc [hl]
    nop
    nop

jr_0e1_46e4:
    cpl
    rst $18
    add b
    add b

jr_0e1_46e8:
    or $ff
    ret nz

    ret nz

jr_0e1_46ec:
    ldh a, [rIE]
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld bc, $e0ff
    ldh [rSB], a
    rst $38
    ld b, b
    ret nz

    ld hl, $40ff
    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    ld bc, $c0ff
    ld b, b
    ld bc, $c0ff
    ld b, b
    ld [hl], e
    rst $38
    ld b, b
    ret nz

    xor a
    rst $18
    ret nz

    ret nz

    ld [hl], c
    rst $38
    ret nz

    ret nz

    ld bc, $a0ff
    ldh [rSB], a
    rst $38
    ldh [$a0], a
    adc c
    cp $a0
    ld h, b
    ld [hl], c
    rst $38
    ret nz

    ret nz

    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld h, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ret nz

    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
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
    add b
    add b
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
    ldh a, [$f0]
    ld c, $0f
    nop
    ldh [rIF], a
    rrca
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
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    cp $ff
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    sbc l
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    dec c
    dec bc
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    ld [$700f], sp
    rst $38
    dec b
    ld b, $f0
    ccf
    dec b
    ld b, $df
    ccf
    inc bc
    ld [bc], a
    ldh a, [$1f]
    ld [bc], a
    inc bc
    add sp, $1f
    ld bc, $f801
    rrca
    ld bc, $7f01
    adc a
    nop
    nop
    xor b
    rst $18
    nop
    nop
    ld a, h
    ld a, e
    nop
    nop
    ld a, h
    ld a, e
    nop
    nop
    ld a, h
    ld a, e
    nop
    nop
    ld a, b
    ld h, a
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
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    or b
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $02
    inc bc
    ld [bc], a
    cp $01
    ld bc, $fc04
    nop
    nop
    ld hl, sp-$08
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $e0e0
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
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
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, [hl]
    adc [hl]
    nop
    nop
    cpl
    rst $18
    add b
    add b
    or $ff
    ret nz

    ret nz

    ldh a, [rIE]
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    ld bc, $40ff
    ret nz

    ld bc, $40ff
    ret nz

    ld hl, $40ff
    ret nz

    rst $38
    rst $38
    add b
    add b
    ld bc, $80ff
    add b
    ld bc, $80ff
    add b
    ld [hl], e
    rst $38
    add b
    add b
    xor a
    rst $18
    nop
    nop
    ld [hl], c
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    ld bc, $80fe
    add b
    adc c
    rst $38
    nop
    nop
    ld [hl], c
    rst $38
    nop
    nop
    ld hl, $00ff
    nop

jr_0e1_48b0:
    ld hl, $00ff
    nop

jr_0e1_48b4:
    ld b, b
    rst $38
    add b
    add b

jr_0e1_48b8:
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    rst $08
    rst $38
    ret nz

    ret nz

jr_0e1_48c4:
    cp a
    cp a
    ret nz

    ret nz

    or b
    cp a
    ld b, b
    ret nz

    jr nz, jr_0e1_490d

    jr nz, jr_0e1_48b0

    db $10
    rra
    jr nz, jr_0e1_48b4

    db $10
    rra
    jr nz, jr_0e1_48b8

    db $10
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [$08]
    rrca
    jr nz, jr_0e1_48c4

    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ret nz

    ld hl, sp+$03
    inc bc
    ldh a, [$f0]
    ld [bc], a
    inc bc
    nop
    ret nz

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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop

jr_0e1_490d:
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    cp $ff
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    sbc l
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    dec c
    dec bc
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    ld [$700f], sp
    rst $38
    dec bc
    inc c
    or b
    ld a, a
    dec bc
    inc c
    rst $38
    ccf
    dec b
    ld b, $f0
    ccf
    dec b
    ld b, $d8
    ccf
    ld [bc], a
    inc bc
    ret c

    ccf
    ld [bc], a
    inc bc
    rst $38
    rra
    ld [bc], a
    inc bc
    ldh [$7f], a
    ld bc, $f001
    rst $38
    ld bc, $f801
    rst $30
    ld bc, $f801
    rst $30
    nop
    nop
    ldh a, [$8f]
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e1_49bf

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld e, a
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
    add b
    rst $38
    nop
    nop
    add b
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
    ld a, [hl]
    ld a, [hl]
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
    ldh a, [$f0]
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
    ld a, h

jr_0e1_49bf:
    ld a, h
    nop
    nop
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
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, [hl]
    adc [hl]
    nop
    nop
    cpl
    rst $18
    add b
    add b
    or $ff
    ret nz

    ret nz

    ldh a, [rIE]
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld bc, $e0ff
    ldh [rSB], a
    rst $38
    ld b, b
    ret nz

    ld hl, $40ff
    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    ld bc, $c0ff
    ld b, b
    ld bc, $c0ff
    ld b, b
    ld [hl], e
    rst $38
    ld b, b
    ret nz

    xor a
    rst $18
    ret nz

    ret nz

    ld [hl], c
    rst $38
    ret nz

    ret nz

    ld bc, $a0ff
    ldh [rSB], a
    rst $38
    ldh [$a0], a
    adc c
    cp $a0
    ld h, b
    ld [hl], c
    rst $38
    ret nz

    ret nz

    ld hl, $00ff
    nop
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld h, b
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld c, a
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0e1_4aa1

    add b
    add b
    rra
    rra
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
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ldh a, [$f0]
    rra
    rra
    ld hl, sp-$08
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop

jr_0e1_4aa1:
    nop
    cp $ff
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    sbc l
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    dec c
    dec bc
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    ld [$700f], sp
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    dec bc
    inc c
    ld a, a
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    dec bc
    inc c
    cp b
    ld a, a
    dec b
    ld b, $b8
    ld a, a
    dec b
    ld b, $df
    ccf
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh a, [$ef]
    ld bc, $e001
    rra
    nop
    nop
    ldh a, [rIE]
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
    rrca
    rrca
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
    jr nz, jr_0e1_4b4f

    nop
    nop
    jr nz, jr_0e1_4b53

    nop
    nop
    jr nz, jr_0e1_4b57

    nop
    nop
    jr nz, jr_0e1_4b5b

    nop
    nop
    ld de, $001f
    nop
    rra
    rra
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, $3e
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
    rrca
    rrca
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

jr_0e1_4b44:
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop

jr_0e1_4b4f:
    nop
    ld hl, sp+$08
    nop

jr_0e1_4b53:
    nop
    ld hl, sp-$08
    nop

jr_0e1_4b57:
    nop
    ld hl, sp+$08
    nop

jr_0e1_4b5b:
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, [hl]
    adc [hl]
    nop
    nop
    cpl
    rst $18
    add b
    add b
    or $ff
    ret nz

    ret nz

    ldh a, [rIE]
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld bc, $e0ff
    ldh [rSB], a
    rst $38
    ld b, b
    ret nz

    ld hl, $40ff
    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    ld bc, $a0ff
    ld h, b
    ld bc, $a0ff
    ld h, b
    ld [hl], e
    rst $38
    ret nc

    jr nc, jr_0e1_4b44

    rst $18
    ldh a, [$f0]
    ld [hl], c
    rst $38
    ldh a, [$f0]
    ld bc, $f0ff
    ldh a, [rSB]
    rst $38
    ld hl, sp-$18
    adc c
    rst $38
    ldh a, [rNR10]
    ld [hl], b
    rst $38
    ldh [$e0], a
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

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
    ldh a, [rIE]
    add b
    add b
    ldh a, [rIE]
    add b
    add b
    rra
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    add d
    cp $00
    nop
    ld a, h
    ld a, h
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
    cp $fe
    nop
    nop
    rst $38
    rst $38
    add b
    add b
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
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    cp $ff
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    sbc l
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    dec c
    dec bc
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    ld [$700f], sp
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    rrca
    ld [$ff7f], sp
    ld c, $09
    ld [hl], b
    rst $38
    rrca
    ld [$7ff8], sp
    rrca
    ld [$7ff8], sp
    rrca
    ld [$ff7f], sp
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    and b
    rst $38
    dec bc
    rrca
    ldh [$bf], a
    dec b
    ld b, $a0
    ld a, a
    inc bc
    inc bc
    ret nc

    rst $18
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
    rrca
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
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
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, [hl]
    adc [hl]
    nop
    nop
    cpl
    rst $18
    add b
    add b
    or $ff
    ret nz

    ret nz

    ldh a, [rIE]
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld bc, $e0ff
    ldh [rSB], a
    rst $38
    and b
    ld h, b
    ld hl, $e0ff
    jr nz, @+$01

    rst $38
    ldh [rNR41], a
    ld bc, $d0ff
    jr nc, jr_0e1_4d0e

    rst $38

jr_0e1_4d0e:
    ret nc

    jr nc, jr_0e1_4d84

    rst $38
    ldh a, [rNR10]
    xor [hl]
    rst $18
    ldh a, [rSVBK]
    ld [hl], c
    rst $38
    ld hl, sp-$08
    ld bc, $fcff
    db $f4
    ld bc, $fcff
    db $f4
    adc c
    rst $38
    ld hl, sp-$78
    ld [hl], c
    rst $38
    ld [hl], b
    ld [hl], b
    ld hl, $00ff
    nop
    ld hl, $00ff
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
    db $f4
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
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    cp $fe
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e1_4d84:
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
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    cp $ff
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    sbc l
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    dec c
    dec bc
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    ld [$700f], sp
    rst $38
    db $10
    rra
    ld [hl], b
    rst $38
    db $10
    rra
    ld a, a
    rst $38
    jr nz, jr_0e1_4e09

    ldh a, [rIE]
    ld h, $39
    ld hl, sp-$01
    daa
    add hl, sp
    ld a, b
    ld a, a
    daa
    add hl, sp
    ccf
    ccf
    ccf
    add hl, sp
    jr nz, jr_0e1_4e1b

    ccf
    ccf
    jr nz, jr_0e1_4e1f

    ld a, $3f
    and b
    cp a
    cpl
    ld a, $a0
    cp a
    rla
    add hl, de
    jr nz, @+$41

    ld c, $0e
    jr nz, jr_0e1_4e2f

    nop
    nop
    jr nz, jr_0e1_4e33

    nop
    nop
    jr @+$21

    nop
    nop
    jr jr_0e1_4e1b

    nop
    nop
    inc c
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    rla
    rra
    nop

jr_0e1_4e09:
    nop
    ld [de], a
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld b, c

jr_0e1_4e1b:
    ld a, a
    nop
    nop
    ld b, c

jr_0e1_4e1f:
    ld a, a
    nop
    nop
    jr nz, jr_0e1_4e63

    nop
    nop
    rra
    rra
    nop
    nop
    ld a, $3e
    nop
    nop
    inc a

jr_0e1_4e2f:
    inc a
    nop
    nop
    ld a, h

jr_0e1_4e33:
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
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
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, [hl]
    adc [hl]
    nop

jr_0e1_4e63:
    nop
    cpl
    rst $18
    add b
    add b
    or $ff
    ret nz

    ret nz

    ldh a, [rIE]
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld bc, $e0ff
    ldh [rSB], a
    rst $38
    ldh [rNR41], a
    ld hl, $d0ff
    jr nc, @+$01

    rst $38
    ldh a, [rNR10]
    ld bc, $e8ff
    jr jr_0e1_4e8e

    rst $38

jr_0e1_4e8e:
    ld hl, sp+$08
    ld [hl], e
    rst $38
    ld a, b
    adc b
    xor a
    rst $18
    xor h
    call c, $ff71
    ld a, [hl]
    ld a, d
    ld bc, $7eff
    ld a, d
    ld bc, $7eff
    ld a, d
    adc c
    rst $38
    ld a, h
    ld h, h
    ld [hl], d
    cp $38
    jr c, jr_0e1_4ecf

    cp $00
    nop
    inc h
    db $fc

jr_0e1_4eb2:
    nop
    nop
    inc d
    db $fc

jr_0e1_4eb6:
    nop
    nop
    jr jr_0e1_4eb2

    nop
    nop
    jr jr_0e1_4eb6

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
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00

jr_0e1_4ecf:
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add d
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld b, b
    ld a, b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld d, $1f
    nop
    nop
    inc de
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
    ld [hl], b
    ld a, a
    nop
    nop
    sub b
    rst $38
    rrca
    rrca
    db $10
    rst $38
    rra
    rra
    jr nc, @+$01

    rra
    rra
    jr nc, @+$01

    ccf
    ccf
    jr nc, @+$01

    ld a, $3e
    cp b
    rst $38
    ld a, h
    ld a, h
    ld a, a
    ld a, a
    ld a, b
    ld a, b
    ccf
    ccf
    ld [hl], b
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    ccf
    ccf
    cp $fe
    ld sp, hl
    rst $38
    ld a, a
    cp a
    ld e, $ff
    ld e, $fe
    xor $ff
    ld a, $e2
    or [hl]
    rst $38
    dec sp
    rst $08
    ld e, [hl]
    cp a
    ld h, a
    cp a
    cp a
    rst $38
    rra
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld [$07ff], sp
    rst $38
    or b
    ld c, a
    ld b, $f9
    or b
    ld c, a
    add [hl]
    ld sp, hl
    rst $08
    ccf
    jp hl


    or $70
    adc a
    ld e, $e1
    ld sp, hl
    add a
    db $ed
    di
    ld a, a
    add [hl]
    ld a, [hl]
    cp $3b
    add $f8
    ld hl, sp-$45
    db $dd
    db $fc
    db $fc
    ld a, a
    rst $38
    db $fc
    db $fc
    ld h, [hl]
    db $fd
    inc c
    db $fc
    inc a
    rst $20
    ld [$3ef8], sp
    db $fd
    ld [$2af8], sp
    push af
    db $10
    ldh a, [rNR41]
    rst $38
    jr nz, @-$1e

    ld d, b
    rst $18
    ld b, b
    ret nz

    ld c, a
    rst $08
    add b
    add b
    ld e, [hl]
    sbc $00
    nop
    ld e, [hl]
    sbc $00
    nop
    rst $38
    rst $38
    add b
    add b
    cp a
    cp a
    ldh [$e0], a
    ccf
    ccf
    ldh a, [$f0]
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
    db $76
    ld a, e
    nop
    nop
    db $ed
    or $00
    nop
    set 7, a
    nop
    nop
    rst $00
    db $fd
    nop
    nop
    db $ed
    ei
    rlca
    rlca
    cp e
    rst $18
    ld c, $0f
    or $0f
    dec e
    ld e, $f6
    rrca
    add hl, sp
    ld a, $e8
    rra
    add hl, sp
    ccf
    ld d, b
    cp a
    inc l
    ccf
    ldh [rIE], a
    ld a, $3f
    ld b, b
    rst $38
    rra
    rra
    add c
    rst $38
    ld c, $0f
    rrca
    rst $38
    inc bc
    inc bc

Jump_0e1_50c2:
    ldh a, [rIE]
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $f301
    rst $38
    ld bc, $0d01
    cp $01
    ld bc, $ff03
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc bc
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
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    inc b
    rlca
    rlca
    rst $38
    rlca
    rlca
    rlca
    rst $38
    rlca
    rlca
    db $fd
    db $fd
    rlca
    rlca
    ld a, [$04fb]
    rlca
    ld a, [$08fb]
    rrca
    ld a, [bc]
    ei
    ld [$0a0f], sp
    ei
    ld [$0a0f], sp
    ei
    ld [$0a0f], sp
    ei
    inc b
    rlca
    ld de, $03f1
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
    and b
    ldh [rP1], a
    nop
    ld d, b
    or b
    nop
    nop
    or b
    ld d, b
    nop
    nop
    ld h, b
    and b
    nop
    nop
    and b
    ld h, b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $30
    rst $38
    nop
    nop
    db $ed
    di
    add b
    add b
    sbc $e1
    ret nz

    ret nz

    ld e, a
    ldh [$c0], a
    ret nz

    ld l, $f1
    ret nz

    ret nz

    dec d
    ei
    ret nz

    ret nz

    rrca
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    or $fe
    nop
    nop
    ld c, $fe

jr_0e1_5182:
    nop
    nop
    inc e
    db $fc

jr_0e1_5186:
    nop
    nop
    jr jr_0e1_5182

    nop
    nop
    jr jr_0e1_5186

    nop
    nop
    sbc b
    ld hl, sp+$00
    nop
    ld a, b
    ld hl, sp+$00
    nop
    sbc b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    adc b
    ld hl, sp+$00
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
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    cp $fe
    nop
    nop
    rst $38
    rst $38
    add b
    add b
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
    ld c, $0e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, e
    ld a, h
    nop
    nop
    ld l, l
    ld [hl], e
    nop
    nop
    ld h, a
    ld a, h
    nop
    nop
    ld l, [hl]
    ld [hl], c
    inc bc
    inc bc
    rst $30
    ld sp, hl
    rlca
    rlca
    add hl, sp
    rst $38
    ld c, $0f
    rst $38
    rra
    dec e
    ld e, $9f
    ld h, c
    dec e
    ld e, $ff
    rlca
    dec e
    ld e, $ff
    inc bc
    ld e, $1f
    ld h, b
    sbc a
    rrca
    rrca
    add b
    rst $38
    rlca
    rlca
    pop hl
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $f301
    rst $38
    ld bc, $0d01
    cp $01
    ld bc, $ff03
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc bc
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
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    inc b
    rlca
    rlca
    rst $38
    rlca
    rlca
    rlca
    rst $38
    rlca
    rlca
    db $fd
    db $fd
    rlca
    rlca
    ld a, [$04fb]
    rlca
    ld a, [$08fb]
    rrca
    ld a, [bc]
    ei
    ld [$0a0f], sp
    ei
    ld [$0a0f], sp
    ei
    ld [$0a0f], sp
    ei
    inc b
    rlca
    ld de, $03f1
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
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
    ret nz

    ld b, b
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    adc e
    ld [hl], l
    nop
    nop
    ei
    dec b
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld e, e
    db $fc
    ld b, b
    ret nz

    push af
    sbc $c0
    ld b, b
    dec a
    cp $c0
    ld b, b
    rrca
    db $fc
    ld b, b
    ret nz

    nop
    rst $38
    add b
    add b
    rst $00
    rst $38

jr_0e1_5302:
    nop
    nop
    inc a
    db $fc

jr_0e1_5306:
    nop
    nop
    jr jr_0e1_5302

    nop
    nop
    jr jr_0e1_5306

    nop
    nop
    sbc b
    ld hl, sp+$00
    nop
    ld a, b
    ld hl, sp+$00
    nop
    sbc b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    adc b
    ld hl, sp+$00
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
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    cp $fe
    nop
    nop
    rst $38
    rst $38
    add b
    add b
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
    rra
    rra
    nop
    nop
    jr jr_0e1_53b7

    inc bc
    inc bc
    di

jr_0e1_539b:
    rst $38
    rlca
    rlca
    db $db
    db $fc
    dec bc
    rrca
    db $fd
    cp $0d
    dec bc
    xor $ff
    dec bc
    rrca
    ld h, e
    sbc a
    ld c, $0f
    ld [hl], b
    adc a
    ld b, $07
    jr jr_0e1_539b

    ld b, $07
    ld a, h

jr_0e1_53b7:
    add e
    inc bc
    inc bc
    ld a, l
    add d
    inc bc
    inc bc
    cp e
    rst $00
    inc bc
    inc bc
    ld h, a
    rst $38
    inc bc
    inc bc
    rra
    db $fd
    ld bc, $8701
    db $fd
    ld bc, $8001
    rst $38
    ld bc, $f301
    rst $38
    ld bc, $0d01
    cp $01
    ld bc, $ff03
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc bc
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
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    inc b
    rlca
    rlca
    rst $38
    rlca
    rlca
    rlca
    rst $38
    rlca
    rlca
    db $fd
    db $fd
    rlca
    rlca
    ld a, [$04fb]
    rlca
    ld a, [$08fb]
    rrca
    ld a, [bc]
    ei
    ld [$0a0f], sp
    ei
    ld [$0a0f], sp
    ei
    ld [$0a0f], sp
    ei
    inc b
    rlca
    ld de, $03f1
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
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
    ret nc

    ldh a, [rP1]
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld [hl], b
    sub b
    nop
    nop
    ld [hl], b
    ret nc

    nop
    nop
    ret c

    jr c, jr_0e1_5463

jr_0e1_5463:
    nop
    inc a
    db $fc
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    rlca
    rst $38
    add b
    add b
    inc bc
    rst $38
    ret nz

    ret nz

    db $d3
    ccf
    ret nz

    ret nz

    xor e
    ld e, a
    ret nz

    ret nz

    db $dd
    and [hl]
    ld b, b
    ret nz

    cp a
    jp nz, $c040

    jp c, $80e5

    add b
    and $b9
    add b
    add b
    ld [hl], l
    ei
    nop
    nop
    sbc [hl]
    cp $00
    nop
    ld a, b
    ld hl, sp+$00
    nop
    sbc b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    adc b
    ld hl, sp+$00
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
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    cp $fe
    nop
    nop
    rst $38
    rst $38
    add b
    add b
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
    ld bc, $0001
    nop
    rra
    rra
    nop
    nop
    dec a
    ccf
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld e, h
    ld a, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld e, h
    ld a, a
    nop
    nop
    ld a, h
    ld b, e
    nop
    nop
    and d
    rst $18
    nop
    nop
    rst $38
    add a
    ld bc, $7601
    adc a
    ld bc, $ee01
    rst $18
    inc bc
    inc bc
    sub $f7
    inc bc
    inc bc
    push hl
    rst $20
    rlca
    ld b, $e4
    daa
    rlca
    ld b, $e4
    daa
    inc bc
    ld [bc], a
    ret z

    ld c, a
    ld bc, $8801
    adc a
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0e1_55b7

    nop
    nop
    jr nz, jr_0e1_55bb

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ldh a, [rIE]

jr_0e1_5588:
    ld bc, $f901
    rst $38
    ld [bc], a
    inc bc
    ld a, [hl]
    cp $04
    rlca
    inc a
    db $fc
    ld [$080f], sp
    ld hl, sp+$08
    rrca
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [$08]
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    jr nz, jr_0e1_5588

    rrca
    rrca
    ret nz

    ret nz

    rra
    rra
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop

jr_0e1_55b7:
    nop
    cp $fe
    nop

jr_0e1_55bb:
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
    ccf
    ccf
    add b
    add b
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    ld [hl], a
    ld a, b
    ret nz

    ld b, b
    ld a, a
    ld d, a
    ret nz

    ret nz

    rst $28
    ret nc

    ret nz

    ld b, b
    rst $20
    ld sp, hl
    ldh a, [rSVBK]
    di
    db $fc
    db $fc
    inc e
    ret c

    rst $38
    ld a, [hl]
    sbc [hl]
    rrca
    rst $38
    rst $30
    sbc a
    rlca
    rst $38
    or a
    rst $38
    nop
    rst $38
    ccf
    ei
    nop
    rst $38
    dec sp
    push bc
    nop
    rst $38
    dec a
    jp $ff00


    rra
    pop hl
    ld [$1fff], sp
    pop hl
    ld hl, sp-$01
    dec l
    di
    rrca
    rst $38
    cp $fe
    nop
    rst $38
    ld h, b
    ldh [rSVBK], a
    rst $38
    ldh [$e0], a
    xor a
    rst $18
    ldh [$e0], a
    ld [hl], b
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    sub b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    sub a
    sbc a
    ld b, b
    ret nz

    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rla
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    ld [$800f], sp
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
    add b
    add b
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    nop
    nop
    dec a
    ccf
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld e, h
    ld a, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld e, h
    ld a, a
    nop
    nop
    ld a, h
    ld b, e
    nop
    nop
    and d
    rst $18
    nop
    nop
    rst $38
    add a
    ld bc, $7601
    adc a
    ld bc, $ee01
    rst $18
    inc bc
    inc bc
    sub $f7
    inc bc
    inc bc
    rst $20
    rst $20
    rlca
    ld b, $e4
    daa
    rlca
    ld b, $e4
    daa
    inc bc
    ld [bc], a
    call nz, $0147
    ld bc, $8f88
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e1_5737

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, h
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
    cp l
    rst $38
    ld bc, $0201
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $02
    inc bc
    ld [bc], a
    cp $02
    inc bc
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    ld bc, $f801

jr_0e1_5737:
    ld hl, sp+$07
    rlca
    ld hl, sp-$08
    rrca
    rrca
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ccf
    ccf
    add b
    add b
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    ld [hl], a
    ld a, b
    ret nz

    ld b, b
    ld a, a
    ld d, a
    ret nz

    ret nz

    rst $28
    ret nc

    ret nz

    ld b, b
    rst $20
    ld sp, hl
    ldh a, [rSVBK]
    di
    db $fc
    db $fc
    inc e
    ret c

    rst $38
    ld a, [hl]
    sbc [hl]
    rrca
    rst $38
    rst $30
    sbc a
    rlca
    rst $38
    or a
    rst $38
    nop
    rst $38
    ccf
    ei
    nop
    rst $38
    dec sp
    push bc
    nop
    rst $38
    dec a
    jp $ff00


    rra
    pop hl
    ld [$1fff], sp
    pop hl
    ld hl, sp-$01
    dec l
    di
    rrca
    rst $38
    cp $fe
    nop
    rst $38
    ld h, b
    ldh [rSVBK], a
    rst $38
    ldh [$e0], a
    xor a
    rst $18
    ldh [$e0], a
    ld [hl], b
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    ret nz

    ret nz

    ld c, b
    rst $38
    ld b, b
    ret nz

    jr nc, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ld h, a
    rst $38
    ld b, b
    ret nz

    xor a
    cp a
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rla
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    ld [$800f], sp
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
    add b
    add b
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld l, a
    ld [hl], b
    nop
    nop
    ld l, l
    ld e, a
    nop
    nop
    ld e, a
    ld h, b
    nop
    nop
    ld l, l
    ld [hl], d
    nop
    nop
    ld [hl], a
    ld a, b
    inc bc
    inc bc
    ld hl, sp-$01
    rrca
    rrca
    rst $38
    rst $38
    inc e
    rra
    rst $18
    rst $38
    ld a, $3f
    rlca
    db $fc
    ld [hl], a
    ld a, a
    inc e
    ei
    ld l, e
    ld [hl], a
    ld [hl], a
    xor $77
    ld a, a
    db $eb
    sub a
    ld e, a
    ld a, a
    ldh a, [$6f]
    ld [hl], l
    ld c, [hl]
    pop af
    rst $28
    ld [hl], c
    ld c, a
    cp $bf
    ld e, a
    ld h, e
    or b
    ld a, a
    ld hl, $c03f
    rst $38
    rra
    rra
    add c
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    ld bc, $02ff
    inc bc
    ccf
    rst $38

jr_0e1_5888:
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    ld [$020f], sp
    cp $10
    rra
    ld [bc], a
    cp $20
    ccf
    inc b
    db $fc
    jr nz, jr_0e1_58dd

    ld [$10f8], sp
    rra
    db $10
    ldh a, [$0c]
    rrca
    jr nz, jr_0e1_5888

    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    add b
    add b
    ccf
    ccf
    ret nz

    ret nz

    ccf
    ccf
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
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ret nz

jr_0e1_58dd:
    ld b, b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, [hl]
    add $00
    nop
    ld e, l
    db $db
    nop
    nop
    ld a, [$00e6]
    nop
    xor $9e
    nop
    nop
    or a
    ld a, a
    nop
    nop
    ld b, e
    cp a
    add b
    add b
    db $e3
    inc a
    ret nz

    ret nz

    di
    ld a, h
    ld b, b
    ret nz

    db $fd
    jp nc, $c040

    ld a, a
    ldh a, [$a0]
    ld h, b
    rst $38
    ldh a, [$a0]
    ld h, b
    inc c
    rst $38
    ld b, b
    ret nz

    inc bc
    rst $38
    add b
    add b

jr_0e1_5918:
    ld b, $fe
    nop
    nop
    call z, Call_000_00fc
    nop
    cp h
    ld a, h
    nop
    nop
    call nz, Call_000_00fc
    nop
    ld [bc], a
    cp $00
    nop
    ld hl, $00ff
    nop
    ld b, b
    rst $38
    ret nz

    ret nz

    add b
    rst $38
    jr nz, jr_0e1_5918

jr_0e1_5938:
    add b
    rst $38
    db $10
    ldh a, [$c3]
    rst $38
    ldh a, [$f0]

jr_0e1_5940:
    ld l, a
    ld a, a
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    daa
    ccf
    ldh a, [$f0]
    jr nz, jr_0e1_598d

    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rLCDC]
    ld a, a
    jr nz, jr_0e1_5938

    ld b, b
    ld a, a
    jr nz, @-$1e

    ld b, b
    ld a, a
    jr nz, jr_0e1_5940

    jr nz, jr_0e1_59a1

    ld b, b
    ret nz

    rra
    rra
    add b
    add b
    rra
    rra
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

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

jr_0e1_598d:
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    dec e
    ld e, $00

jr_0e1_59a1:
    nop
    rra
    dec d
    nop
    nop
    dec de
    inc d
    nop
    nop
    add hl, de
    ld e, $03
    inc bc
    db $fc
    rst $38
    rlca
    rlca
    cp [hl]
    rst $38
    rrca
    rrca
    db $db
    rst $38
    dec e
    rra
    pop bc
    rst $38
    ld a, [de]
    dec e
    ret nz

    rst $38
    dec e
    rra
    ret nz

    rst $38
    rra
    rra
    rst $38
    rst $38
    dec de
    inc d
    jp Jump_000_187e


    rla
    ld b, d
    rst $38
    dec d
    ld a, [de]
    rst $38
    ld a, h
    dec bc
    inc c
    sbc $6d
    inc b
    rlca
    ld a, h
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    ld bc, $02ff
    inc bc
    ccf
    rst $38

jr_0e1_5a08:
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    ld [$020f], sp
    cp $10
    rra
    ld [bc], a
    cp $20
    ccf
    inc b
    db $fc
    jr nz, @+$41

    ld [$10f8], sp
    rra
    db $10
    ldh a, [$0c]
    rrca
    jr nz, jr_0e1_5a08

    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    add b
    add b
    ccf
    ccf
    ret nz

    ret nz

    ccf
    ccf
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [rNR10]
    nop
    nop
    ldh a, [$50]
    nop
    nop
    db $fc
    inc e
    nop
    nop
    ld e, a
    cp a
    add b
    add b
    db $ed
    rst $38
    ret nz

    ret nz

    pop hl
    rst $38
    ldh [$e0], a
    ld bc, $f0ff
    ldh a, [rSC]
    rst $38
    call c, $ff3c
    rst $38
    cp $fe
    rst $38
    nop
    cp $0e
    nop
    rst $38
    ld c, $fe
    ld a, e
    cp h
    cp h
    ld a, h
    push af
    ld l, $40
    ret nz

jr_0e1_5a98:
    ccf
    rst $38
    add b
    add b
    db $ec
    db $fc
    nop
    nop
    ld e, h
    cp h
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld hl, $00ff
    nop
    ld b, b
    rst $38
    ret nz

    ret nz

    add b
    rst $38
    jr nz, jr_0e1_5a98

jr_0e1_5ab8:
    add b
    rst $38
    db $10
    ldh a, [$c3]
    rst $38
    ldh a, [$f0]

jr_0e1_5ac0:
    ld l, a
    ld a, a
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    daa
    ccf
    ldh a, [$f0]
    jr nz, jr_0e1_5b0d

    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rLCDC]
    ld a, a
    jr nz, jr_0e1_5ab8

    ld b, b
    ld a, a
    jr nz, @-$1e

    ld b, b
    ld a, a
    jr nz, jr_0e1_5ac0

    jr nz, jr_0e1_5b21

    ld b, b
    ret nz

    rra
    rra
    add b
    add b
    rra
    rra
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

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

jr_0e1_5b0d:
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
    inc bc
    inc bc
    nop

jr_0e1_5b21:
    nop
    rlca
    ld b, $01
    ld bc, $feff
    inc bc
    inc bc
    sbc $ff
    rlca
    rlca
    rst $28
    rst $38
    rrca
    rrca
    ld [hl], a
    rst $38
    ld c, $0f
    or a
    ld a, a
    rrca
    rrca
    ld [hl], b
    rst $38
    dec bc
    inc c
    ldh a, [rIE]
    dec c
    ld a, [bc]
    ldh [$7f], a
    inc c
    dec bc
    db $10
    rst $38
    dec bc
    inc c
    ret z

    ccf
    dec b
    ld b, $f7
    ld a, a
    ld [bc], a
    inc bc
    ld a, e
    rst $18
    ld bc, $de01
    rst $28
    nop
    nop
    ld a, a
    ld a, d
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    ld bc, $02ff
    inc bc
    ccf
    rst $38

jr_0e1_5b88:
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    ld [$020f], sp
    cp $10
    rra
    ld [bc], a
    cp $20
    ccf
    inc b
    db $fc
    jr nz, jr_0e1_5bdd

    ld [$10f8], sp
    rra
    db $10
    ldh a, [$0c]
    rrca
    jr nz, jr_0e1_5b88

    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    add b
    add b
    ccf
    ccf
    ret nz

    ret nz

    ccf
    ccf
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
    cp [hl]

jr_0e1_5bdd:
    cp $00
    nop
    cp d
    add $00
    nop
    ld a, h
    cp h
    nop
    nop
    inc a
    call nz, RST_00
    ld h, $de
    nop
    nop
    cp a
    rst $00
    nop
    nop
    set 7, a
    ret nz

    ret nz

jr_0e1_5bf8:
    ei
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    ldh a, [$f0]
    ld bc, $d0ff
    ldh a, [rNR11]
    rst $38
    ldh a, [$f0]
    cp $ff
    or b
    ld [hl], b
    dec b
    cp $a0
    ld h, b
    adc b
    rst $38
    jr nz, jr_0e1_5bf8

jr_0e1_5c18:
    ld [hl], a
    ld hl, sp+$40
    ret nz

    ld a, [hl]
    cp c
    add b
    add b
    ld sp, hl
    rst $18
    nop
    nop
    cp $ee
    nop
    nop
    rla
    ei
    nop
    nop
    dec hl
    db $fd
    add b
    add b
    ld b, a
    rst $38
    ret nz

    ret nz

    add b
    rst $38
    jr nz, jr_0e1_5c18

jr_0e1_5c38:
    add b
    rst $38
    db $10
    ldh a, [$c3]
    rst $38
    ldh a, [$f0]

jr_0e1_5c40:
    ld l, a
    ld a, a
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    daa
    ccf
    ldh a, [$f0]
    jr nz, jr_0e1_5c8d

    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rLCDC]
    ld a, a
    jr nz, jr_0e1_5c38

    ld b, b
    ld a, a
    jr nz, @-$1e

    ld b, b
    ld a, a
    jr nz, jr_0e1_5c40

    jr nz, jr_0e1_5ca1

    ld b, b
    ret nz

    rra
    rra
    add b
    add b
    rra
    rra
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    ret nz

    ret nz

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

jr_0e1_5c8d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e1_5ca1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    cp $ff
    inc bc
    inc bc
    ccf
    rst $38
    rlca
    rlca
    sbc l
    rst $38
    dec bc
    rrca
    ret nz

    rst $38
    dec c
    dec bc
    ldh [rIE], a
    dec bc
    rrca
    ldh [rIE], a
    rrca
    rrca
    ldh a, [rIE]
    ld [$700f], sp
    rst $38
    dec bc
    inc c
    ld [hl], b
    rst $38
    rrca
    ld [$ff7f], sp
    ld c, $09
    ld [hl], b
    rst $38
    rrca
    ld [$7ff8], sp
    rrca
    ld [$7ff8], sp
    rrca
    ld [$ff7f], sp
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    and b
    rst $38
    rrca
    rrca
    and b
    rst $38
    dec bc
    rrca
    pop hl
    cp a
    dec b
    ld b, $e0
    ld a, a
    inc bc
    inc bc
    ldh a, [rIE]
    nop
    nop
    sub b
    rst $38
    nop
    nop
    sub b
    rst $38
    ld bc, $9001
    rst $38
    ld bc, $9001
    rst $38
    ld bc, $df01
    rst $38
    ld bc, $cf01
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

jr_0e1_5d7c:
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp+$28
    nop
    nop
    ld a, [hl]
    adc [hl]
    nop
    nop
    cpl
    rst $18
    add b
    add b
    or $ff
    ret nz

    ret nz

    ldh a, [rIE]
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    nop
    rst $38
    ldh [$e0], a
    ld bc, $e0ff
    ldh [rSB], a
    rst $38
    and b
    ld h, b
    ld hl, $a0ff
    ld h, b
    rst $38
    rst $38
    and b
    ld h, b
    ld bc, $20ff
    ldh [rSB], a
    rst $38
    ldh [rNR41], a
    ld [hl], e
    cp $e0
    jr nz, jr_0e1_5d7c

    sbc $a0
    ld h, b
    ld [hl], c
    rst $38
    ldh [$e0], a
    ld bc, $e0ff
    ldh [rSB], a
    rst $38
    ldh [$e0], a
    ld de, $e0ff
    and b
    pop hl
    cp $c0
    ld b, b
    ld b, c
    rst $38
    add b
    add b
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, e
    rst $38
    nop
    nop
    rst $38
    rst $38
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
    ld bc, $0001
    nop
    rrca
    rrca
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    rst $30
    rst $38
    ld bc, $eb01
    rst $30
    ld [bc], a
    inc bc
    or a
    ld a, a
    dec b
    ld b, $de
    ccf
    ld b, $05
    db $fc
    rra
    ld a, [bc]
    dec c
    ldh [$1f], a
    rrca
    ld [$ff20], sp
    rrca
    ld [$7fbf], sp
    dec bc
    inc c
    ldh a, [$7f]
    ld c, $0f
    ld [hl], b
    rst $38
    rrca
    rrca
    ldh a, [rIE]
    add hl, bc
    rrca
    ldh a, [rIE]
    add hl, bc
    rrca
    rst $38
    cp a
    ld c, $0f
    and b
    ld a, a
    dec b
    ld b, $60
    rst $38
    inc bc
    inc bc
    pop bc
    rst $38
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
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    ld [$010f], sp
    rst $38
    ld [$020f], sp
    cp $04
    rlca
    inc b
    db $fc
    inc bc
    inc bc
    ld [$03f8], sp
    inc bc
    ldh a, [$f0]
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
    jr c, jr_0e1_5f0a

    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $28
    rst $38
    add b
    add b
    xor $b1
    add b
    add b
    rst $18
    xor a
    add b
    add b
    adc a
    pop af
    nop
    nop
    ret


    rst $30
    add b
    add b
    rst $28
    pop af
    ret nz

    ret nz

    ld a, [c]
    rst $38
    ldh [$e0], a
    ld a, $ff
    ldh [$e0], a
    nop
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    ld a, b
    ld hl, sp+$00
    rst $38
    ld l, b
    ld hl, sp+$04
    rst $38

jr_0e1_5f0a:
    ld a, b
    ld hl, sp-$01
    rst $38
    ld hl, sp-$08
    nop
    rst $38
    ld l, b
    sbc b
    nop
    rst $38
    ld l, b
    sbc b
    inc bc
    rst $38
    jr @-$16

    ccf
    rst $38
    add sp, -$68
    sbc $ed
    sub b
    ldh a, [$35]
    xor $e0
    ldh [$1f], a
    rst $20
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    sub b
    rst $38
    jr nc, @-$0e

    ld h, b
    rst $38
    ld [$60f8], sp
    rst $38
    inc b
    db $fc
    ld [hl], b
    rst $38
    db $fc
    db $fc
    ld e, e
    rst $18
    db $fc
    db $fc
    rst $00
    rst $00
    db $fc
    db $fc
    ret


    rst $08
    db $fc
    db $fc
    ret z

    rst $08
    inc b
    db $fc
    adc b
    adc a
    inc b
    db $fc
    sub b
    sbc a
    ld [$10f8], sp
    rra
    ld [$10f8], sp
    rra
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh a, [$f0]
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
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld a, [hl]
    ld a, a
    inc bc
    inc bc
    adc a
    rst $38
    rlca
    rlca
    rst $20
    ei
    rrca
    rrca
    ld a, h
    di
    dec e
    ld e, $7c
    di
    ld d, $1f
    db $fc
    di
    dec de
    rla
    db $ec
    di
    ld e, $11
    db $ec
    di
    ld e, $11
    inc l
    di
    dec d
    ld a, [de]
    rst $38
    ld a, a
    rrca
    ld [$69df], sp
    dec bc
    inc c
    rst $18
    ld l, c
    inc b
    rlca
    ld a, $fb
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, c
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
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    ld [$010f], sp
    rst $38
    ld [$020f], sp
    cp $04
    rlca
    inc b
    db $fc
    inc bc
    inc bc
    ld [$03f8], sp
    inc bc
    ldh a, [$f0]
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $38
    rrca
    nop
    nop
    ei
    dec l
    add b
    add b
    ld a, a
    adc e
    ret nz

    ret nz

    ld l, $db
    ldh [$60], a
    or $ff
    ld e, b
    ld hl, sp-$0d
    rst $38
    db $f4
    call z, $ff01
    ld a, [$01c6]
    rst $38
    ld a, $c2
    ld bc, $3eff
    jp nz, $ff01

    sbc d
    and $43
    rst $38
    ld a, h
    ld a, h
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    nop

Jump_0e1_60a0:
    ld e, a
    cp a
    nop
    nop

jr_0e1_60a4:
    db $e3
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    ld [$40ff], sp
    ret nz

    sub b
    rst $38
    jr nc, jr_0e1_60a4

    ld h, b
    rst $38
    ld [$60f8], sp
    rst $38
    inc b
    db $fc
    ld [hl], b
    rst $38
    db $fc
    db $fc
    ld e, e
    rst $18
    db $fc
    db $fc
    rst $00
    rst $00
    db $fc
    db $fc
    ret


    rst $08
    db $fc
    db $fc
    ret z

    rst $08
    inc b
    db $fc
    adc b
    adc a
    inc b
    db $fc
    sub b
    sbc a
    ld [$10f8], sp
    rra
    ld [$10f8], sp
    rra
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ld hl, sp-$08
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld a, [hl]
    ld a, a
    inc bc
    inc bc
    adc a
    rst $38
    rlca
    rlca
    rst $20
    ei
    rrca
    rrca
    ld a, h
    di
    dec e
    ld e, $7c
    di
    ld d, $1f
    db $fc
    di
    dec de
    rla
    db $ec
    di
    ld e, $11
    db $ec
    di
    ld e, $11
    inc l
    di
    dec d
    ld a, [de]
    rst $38
    ld a, a
    rrca
    ld [$69df], sp
    dec bc
    inc c
    rst $18
    ld l, c
    inc b
    rlca
    ld a, $fb
    inc bc
    inc bc
    rst $38
    rst $38
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
    jr nz, jr_0e1_61ab

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
    add b
    rst $38
    nop
    nop
    ldh [rIE], a
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
    sbc a
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b

jr_0e1_61ab:
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
    db $fc
    db $fc
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
    nop
    nop
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
    ld hl, sp+$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    rst $38
    rrca
    nop
    nop
    ei
    dec l
    add b
    add b
    ld a, a
    adc e
    ret nz

    ret nz

    ld l, $db
    ldh [$60], a
    or $ff
    ld e, b
    ld hl, sp-$0d
    rst $38
    db $f4
    call z, $ff01
    ld a, [$01c6]
    rst $38
    ld a, $c2
    ld bc, $3eff
    jp nz, $ff01

    sbc d
    and $43
    rst $38
    ld a, h
    ld a, h
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rst $20
    rst $38
    nop
    nop
    ld e, a
    cp a
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    sub c
    rst $38
    nop
    nop
    ld h, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop

jr_0e1_6230:
    ld b, b
    rst $38
    add b
    add b

jr_0e1_6234:
    ld b, b
    rst $38
    add b
    add b

jr_0e1_6238:
    ret nz

    rst $38
    add b
    add b

jr_0e1_623c:
    ldh a, [rIE]
    ld b, b
    ret nz

jr_0e1_6240:
    rst $38
    rst $38
    ret nz

    ret nz

    cp a
    cp a
    ret nz

    ret nz

    ld c, a
    ld a, a
    ret nz

    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0e1_6230

    ld b, b
    ld a, a
    jr nz, jr_0e1_6234

    ld b, b
    ld a, a
    jr nz, jr_0e1_6238

    ld b, b
    ld a, a
    jr nz, jr_0e1_623c

    ld b, b
    ld a, a
    jr nz, jr_0e1_6240

    jr nz, jr_0e1_62a1

    ld b, b
    ret nz

    rra
    rra
    add b
    add b
    rra
    rra
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
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ldh a, [$f0]
    rra
    rra
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
    db $fc
    db $fc
    ld bc, $fe01
    cp $01
    ld bc, $c2be
    ld bc, $b701
    ld a, l
    ld bc, $7d01
    add e
    ld bc, $b401
    rlc d

jr_0e1_62a1:
    inc bc
    rst $18
    ldh [rTIMA], a
    rlca
    ei
    call nz, Call_000_0f08
    reti


    and $09
    rrca
    ldh [rIE], a
    add hl, bc
    rrca
    di
    rst $38
    ld [$fc0f], sp
    rst $38
    inc b
    rlca
    ld bc, $05ff
    rlca
    rst $38
    rst $38
    ld [bc], a
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
    nop
    rst $38
    ld [bc], a
    inc bc
    ld c, $ff
    inc bc
    inc bc
    push af
    ei
    ld [bc], a
    inc bc
    ld c, $ff
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    add hl, bc
    rst $38
    inc b
    rlca
    ld b, $ff
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
    ld [$04ff], sp
    rlca
    inc b
    rst $38
    inc b
    rlca
    inc c
    rst $38
    ld [$0f0f], sp
    rst $38
    ld c, $0f
    rrca
    rst $38
    rrca
    rrca
    ei
    ei
    rrca
    rrca
    db $f4
    rst $30
    add hl, bc
    rrca
    db $f4
    rst $30
    db $10
    rra
    inc d
    rst $30
    db $10
    rra
    inc d
    rst $30
    db $10
    rra
    inc d
    rst $30
    db $10
    rra
    inc d
    rst $30
    ld [$220f], sp
    db $e3
    rlca
    rlca
    pop bc
    pop bc
    rlca
    rlca
    add c
    add c
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rrca
    rrca
    pop bc
    pop bc
    rra
    rra
    pop bc
    pop bc
    rra
    rra
    pop bc
    pop bc
    nop
    nop
    inc l
    inc [hl]
    nop
    nop
    ld d, h
    ld l, h
    nop
    nop
    cp b
    ret z

    ld bc, $6801
    sbc b
    ld c, $0f

jr_0e1_6352:
    ret nc

    jr nc, jr_0e1_6394

    ld a, $e0
    ld h, b
    ld a, [$c0ff]
    ld b, b
    db $db
    dec a

jr_0e1_635e:
    ret nz

    ld b, b
    rst $28
    rra
    ld b, b
    ret nz

    rst $18
    ccf
    add b
    add b
    ld h, b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0e1_6352

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, jr_0e1_635e

    nop
    nop
    and b
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
    jr nc, @-$0e

    nop
    nop

jr_0e1_6394:
    ldh a, [$f0]
    nop
    nop
    jr nc, @-$0e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
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
    inc b
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    rra
    rra
    nop
    nop
    jr c, jr_0e1_6487

    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    adc l
    rst $38
    nop
    nop
    adc d
    db $fd
    nop
    nop
    call Call_000_00ff
    nop
    adc $ff
    nop
    nop
    and h
    rst $38
    nop
    nop
    sbc h
    rst $38
    nop
    nop
    jp nz, $01ff

    ld bc, $ff21
    ld bc, $1801
    rst $38
    ld [bc], a
    inc bc
    rrca
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    inc b
    rlca
    inc bc
    rst $38
    inc b
    rlca
    ld [bc], a
    cp $04
    rlca
    ld a, [hl]

jr_0e1_6487:
    cp $07
    rlca
    cp $fe
    rrca
    rrca
    cp $fe
    db $10
    rra
    inc b
    db $fc
    jr nz, jr_0e1_64d5

    inc b
    db $fc
    ld b, b
    ld a, a
    ld [$40f8], sp
    ld a, a
    db $10
    ldh a, [rNR41]
    ccf
    jr nz, @-$1e

    jr jr_0e1_64c5

    ld b, b
    ret nz

    rra
    rra
    add b
    add b
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    add b
    add b
    nop
    nop
    nop
    nop
    nop

jr_0e1_64c5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e1_64d5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e1_64e0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e1_64e8:
    ld e, $1e
    nop
    nop
    ccf
    ccf

jr_0e1_64ee:
    add b
    add b
    ld a, a
    ld a, a
    ret nz

    ret nz

    rst $30
    rst $18
    ret nz

    ret nz

    xor b
    rst $10
    ret nz

    ret nz

    rst $38
    adc a
    jr nz, jr_0e1_64e0

    cp l
    jp Jump_0e1_60a0


    db $dd
    rst $20
    jr nz, jr_0e1_64e8

    db $e3
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    and b
    ldh [$e1], a
    rst $38
    ret nz

    ret nz

    pop hl
    rst $38
    nop
    nop

jr_0e1_6518:
    jp nz, Jump_000_003e

    nop
    and $1e
    nop
    nop
    ld a, h
    sbc h
    nop
    nop
    jr c, jr_0e1_64ee

    nop
    nop
    inc e
    db $e4
    nop
    nop
    adc e
    rst $30
    nop
    nop
    db $eb
    rst $30
    add b
    add b
    add a
    rst $38
    ret nz

    ret nz

    rlca
    db $fd
    and b
    ldh [$85], a
    rst $38
    and b
    ld h, b
    rst $18
    rst $38
    ldh [rNR41], a
    ccf
    ccf
    ld [hl], b
    sub b
    ld c, a
    ld a, a
    or b
    ret nc

    ld b, b
    ld a, a
    jr c, jr_0e1_6518

    ld b, b
    ld a, a
    jr c, @-$16

    add b
    rst $38
    ld d, b
    ret nc

    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    add b
    add b
    ccf
    ccf
    nop
    nop
    ld a, $3e
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
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
    cp $fe
    ld bc, $ff01
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $df01
    pop hl
    ld bc, $ff01
    ld e, a
    ld bc, $bf01
    ld b, c
    ld bc, $9f01
    push hl
    inc bc
    inc bc
    rst $08
    pop af
    inc b
    rlca
    ld h, c
    rst $38
    dec bc
    rrca
    cp [hl]
    rst $08
    dec bc
    rrca
    or e
    call z, Call_000_0f0b
    cp a
    ret nz

    dec bc
    rrca
    cp a
    ret nz

    add hl, bc
    rrca
    call z, Call_000_04f3
    rlca
    nop
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ld c, $ff
    inc bc
    inc bc
    push af
    ei
    inc b
    rlca
    ld c, $ff
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    add hl, bc
    rst $38
    inc b
    rlca
    ld b, $ff
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
    ld [$04ff], sp
    rlca
    inc b
    rst $38
    inc b
    rlca
    inc c
    rst $38
    ld [$0f0f], sp
    rst $38
    ld c, $0f
    rrca
    rst $38
    rrca
    rrca
    ei
    ei
    rrca
    rrca
    db $f4
    rst $30
    add hl, bc
    rrca
    db $f4
    rst $30
    db $10
    rra
    inc d
    rst $30
    db $10
    rra
    inc d
    rst $30
    db $10
    rra
    inc d
    rst $30
    db $10
    rra
    inc d
    rst $30
    ld [$220f], sp
    db $e3
    rlca
    rlca
    pop bc
    pop bc
    rlca
    rlca
    add c
    add c
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rrca
    rrca
    pop bc
    pop bc
    rra
    rra
    pop bc
    pop bc
    rra
    rra
    pop bc
    pop bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e1_664f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0e1_6660:
    add b
    add b

jr_0e1_6662:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    jr c, jr_0e1_664f

    jr nz, jr_0e1_6660

    ld hl, sp-$40
    ret nz

    rst $28
    ld a, a
    nop
    nop
    jr c, @-$06

    nop
    nop
    jr nc, @-$0e

    nop
    nop
    jr nz, jr_0e1_6662

jr_0e1_6682:
    nop
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
    jr nc, jr_0e1_6682

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, @-$0e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
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
    inc b
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0001
    nop
    rrca
    rrca
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    rst $30
    rst $38
    ld bc, $eb01
    rst $30
    ld [bc], a
    inc bc
    or a
    ld a, e
    dec b
    ld b, $5e
    or e
    rlca
    inc b
    ld a, h
    sub e
    rlca
    inc b
    cp b
    ld h, a
    dec b
    ld b, $58
    rst $20
    inc bc
    inc bc
    rst $28
    rst $38
    inc bc
    inc bc
    ld [hl], b
    rst $28
    ld bc, $d001
    rst $28
    ld bc, $f001
    rst $18
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, c
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
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    ld [$010f], sp
    rst $38
    ld [$020f], sp
    cp $04
    rlca
    inc b
    db $fc
    inc bc
    inc bc
    ld [$03f8], sp
    inc bc
    ldh a, [$f0]
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
    jr c, jr_0e1_698a

    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $28
    rst $38
    add b
    add b
    xor $b1
    add b
    add b
    rst $18
    xor a
    nop
    nop
    adc a
    pop af
    nop
    nop
    ret


    rst $30
    add b
    add b
    rst $28
    pop af
    ret nz

    ret nz

    ld a, [c]
    rst $38
    ldh [$e0], a
    ccf
    db $fc
    ldh [$e0], a
    rlca
    ei
    ldh a, [$f0]
    rlca
    ei
    ret nc

    ld [hl], b
    inc bc
    rst $38
    ldh a, [$f0]
    dec bc
    rst $38

jr_0e1_698a:
    ldh a, [$f0]
    db $fd
    cp $b0
    ld d, b
    inc bc
    db $fc
    or b
    ld d, b
    inc bc
    db $fc
    ret nc

    jr nc, @+$03

    cp $a0
    ld h, b
    ld a, [hl-]
    rst $38
    ld b, b
    ret nz

    rst $10
    rst $28
    add b
    add b

jr_0e1_69a4:
    add hl, sp
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    ld [$40ff], sp
    ret nz

    sub b
    rst $38
    jr nc, jr_0e1_69a4

    ld h, b
    rst $38
    ld [$60f8], sp
    rst $38
    inc b
    db $fc
    ld [hl], b
    rst $38
    db $fc
    db $fc
    ld e, e
    rst $18
    db $fc
    db $fc
    rst $00
    rst $00
    db $fc
    db $fc
    ret


    rst $08
    db $fc
    db $fc
    ret z

    rst $08
    inc b
    db $fc
    adc b
    adc a
    inc b
    db $fc
    sub b
    sbc a
    ld [$10f8], sp
    rra
    ld [$10f8], sp
    rra
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh a, [$f0]
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
    inc e
    inc e
    nop
    nop
    ld a, $22
    nop
    nop
    scf
    dec sp
    nop
    nop
    ld l, e
    ld e, a
    nop
    nop
    ld a, a
    ld a, h
    nop
    nop
    ld a, $3f
    nop
    nop
    cpl
    inc a
    nop
    nop
    ld [hl+], a
    dec a
    nop
    nop
    cpl
    jr nc, @+$03

    ld bc, $f3ec
    inc bc
    inc bc
    sbc l

jr_0e1_6a33:
    db $e3
    rlca
    rlca
    ld a, l
    add e
    ld c, $0f
    ei
    rlca
    ld c, $0f
    ld [hl], a
    adc a
    ld a, [bc]
    rrca
    jr jr_0e1_6a33

    rrca
    rrca
    db $10
    rst $38
    rlca
    rlca
    ldh a, [rIE]
    inc bc
    inc bc
    db $10
    rst $38
    ld bc, $8f01
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    rst $38
    rst $38
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
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0e1_6abf

    nop
    nop
    jr nz, jr_0e1_6ac3

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
    inc de
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
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
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

jr_0e1_6abe:
    rlca

jr_0e1_6abf:
    rlca
    nop
    nop
    nop

jr_0e1_6ac3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ldh [$a0], a
    add c
    add c
    or b
    ret nc

    jp Jump_0e1_50c2


    ldh a, [$e1]
    ld h, c
    ldh a, [$f0]
    pop hl
    pop hl
    ldh a, [$f0]
    pop hl
    ld hl, $f070
    and c
    ld h, c
    db $10
    ldh a, [$bf]
    ld a, a
    ld l, b
    sbc b
    ld a, a
    rst $38
    ld l, b
    sbc b
    sbc b
    rst $38
    add sp, $18
    sbc l
    cp $e8
    jr jr_0e1_6abe

    cp $d0
    jr nc, @-$1c

    rst $38
    ldh [$60], a
    ld bc, $c0ff
    ret nz

    inc bc
    rst $38
    add b
    add b
    ld b, $fe
    nop
    nop
    ld b, [hl]
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    xor h
    call c, RST_00
    ld [hl], h
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
    ld [de], a
    cp $00
    nop
    pop hl
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld hl, $00ff
    nop
    ld hl, $00ff
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
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    cp $fe
    nop
    nop
    rst $18
    rst $18
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec de
    rra
    nop
    nop
    dec a
    ccf
    nop
    nop
    ld e, [hl]
    ld a, a
    nop
    nop
    xor [hl]
    rst $18
    nop
    nop
    sbc $ff
    ld bc, $fe01
    rst $38
    ld [bc], a
    inc bc
    ld a, h
    adc a
    ld [bc], a
    inc bc
    ld [hl], b
    adc a
    dec b
    ld b, $cb
    ccf
    dec b
    ld b, $98
    ld a, a
    dec b
    ld b, $b8
    ld a, a
    rlca
    inc b
    inc l
    rst $28
    rlca
    rlca
    xor [hl]
    rst $28
    ld c, $0d
    ld l, c
    rst $28
    rrca
    ld a, [bc]
    add sp, -$11
    rrca
    dec bc
    ret nc

    rst $18
    rlca
    inc b
    sub b
    sbc a
    inc bc
    inc bc
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
    ld [hl], b
    ld a, a
    rrca
    rrca
    sub b
    rst $38
    rrca
    rrca
    adc a
    rst $38
    rrca
    rrca
    sbc a
    rst $38
    rrca
    rrca
    db $10
    rst $38
    rrca
    rrca
    sub b
    rst $38
    rrca
    rrca
    ld h, b
    ld a, a
    ld c, $0e
    ld b, b
    ld a, a
    ld c, $0e
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0e1_6de3

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
    rra
    rra
    nop
    nop
    rra
    rra
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
    nop
    nop
    nop
    ld a, a
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
    rst $28
    ldh a, [$80]
    add b
    rst $38
    xor a
    add b
    add b
    rst $18
    and b
    add b

jr_0e1_6de3:
    add b

jr_0e1_6de4:
    rst $08
    ld a, [c]
    ret nz

    ret nz

    rst $20
    ld hl, sp-$60
    ldh [$32], a
    db $fd
    or b
    ldh a, [$1f]
    rst $38
    jr nc, jr_0e1_6de4

jr_0e1_6df4:
    rrca
    rst $38
    jr c, @-$06

    nop
    rst $38
    jr c, jr_0e1_6df4

    nop
    rst $38
    ld a, h
    db $fc
    nop
    rst $38
    ld l, h
    call c, $ff08
    ld l, [hl]
    jp nc, $ffff

    rst $10
    jp hl


    nop
    rst $38
    ld [hl], a
    ret


    nop
    rst $38
    ld a, [c]
    sbc [hl]
    inc e
    rst $38
    add h
    db $fc
    db $eb
    rst $30
    ld hl, sp-$08
    inc e
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    add h
    rst $38
    add b
    add b
    ld a, c
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld a, [c]
    cp $00
    nop
    cp $fe
    nop
    nop
    ld e, h
    db $fc
    nop
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld [hl], b
    ldh a, [rP1]
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
    rra
    rra
    nop
    nop
    inc sp
    ccf
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    db $ed
    rst $38
    nop
    nop
    sub $ef
    ld bc, $ee01
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $7c01
    adc a
    ld bc, $7701
    adc a
    ld [bc], a
    inc bc
    ld h, h
    sbc a
    ld [bc], a
    inc bc
    adc b
    ld a, a
    ld [bc], a
    inc bc
    db $ec
    rra
    ld [bc], a
    inc bc
    db $ec
    rra
    ld [bc], a
    inc bc
    sbc [hl]
    ld a, a
    ld [bc], a
    inc bc
    cp c
    rst $38
    inc bc
    inc bc
    ld [hl], b
    xor a
    inc bc
    inc bc
    ldh a, [$ef]
    ld bc, $f001
    rra
    nop
    nop
    ldh [rIE], a
    nop
    nop
    jr nz, jr_0e1_6f2b

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e1_6f37

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr c, jr_0e1_6f3f

    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    add a
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
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    nop
    nop
    di
    rst $38
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b

jr_0e1_6f2b:
    ld a, b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    ld bc, $fc01

jr_0e1_6f37:
    db $fc
    ld bc, $fe01
    cp $00
    nop
    ccf

jr_0e1_6f3f:
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
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
    rst $28
    ldh a, [$80]
    add b
    rst $38
    xor a
    add b
    add b
    rst $18
    and b
    add b
    add b
    rst $08
    ld a, [c]
    add b
    add b
    rst $20
    ld hl, sp-$20
    ldh [$b2], a
    db $fd
    ldh a, [$f0]
    rra
    rst $38
    jr c, @-$06

    inc bc
    rst $38
    inc e
    db $fc
    nop
    rst $38
    inc e
    db $fc
    nop
    rst $38
    inc e
    db $fc
    add h
    rst $38
    inc a
    db $fc
    ld a, a
    rst $38
    ld hl, sp-$18
    nop
    rst $38
    ld a, b
    ret z

    nop
    rst $38
    ld c, [hl]
    or $00
    rst $38
    rst $20
    sbc c
    inc e
    rst $38
    db $eb
    sub h
    db $eb
    rst $30
    db $eb
    call nc, $ff1d
    add hl, hl
    ccf
    ld bc, $1eff
    ld e, $45
    rst $38
    nop
    nop
    jr c, @+$01

    add b
    add b
    db $10
    rst $38
    add b
    add b
    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    jr nz, @-$1e

    ld h, a
    rst $38
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [$e0], a
    ldh [rIE], a
    ld b, b
    ret nz

    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    ld a, [$00fa]
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $28
    rst $38
    ld bc, $f601
    rst $38
    inc bc
    inc bc
    ld [hl], a
    rst $38
    ld [bc], a
    inc bc
    cp b
    ld a, a
    rlca
    rlca
    ld a, b
    rst $38
    rlca
    rlca
    ld hl, sp-$01
    dec b
    ld b, $f8
    ld a, a
    dec b
    ld b, $ee
    rra
    inc b
    rlca
    add hl, hl
    rst $18
    dec b
    ld b, $e0
    rra
    dec b
    ld b, $f0
    rrca
    ld [bc], a
    inc bc
    db $fc
    rra
    ld bc, $6e01
    or a
    nop
    nop
    xor a
    push af
    nop
    nop
    ld a, [hl]
    ld a, l
    nop
    nop
    inc l
    inc sp
    nop
    nop
    jr nz, jr_0e1_709f

    nop
    nop
    ld b, c
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
    ld bc, $ef01
    rst $38
    ld bc, $3f01
    rst $38
    ld [bc], a
    inc bc
    rlca
    rst $38
    inc b
    rlca
    ld [bc], a
    cp $04
    rlca
    inc b
    db $fc
    ld [$040f], sp
    db $fc
    db $10
    rra
    ld [$0ff8], sp
    rrca
    db $10
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    rrca
    rrca
    add b

jr_0e1_709f:
    add b
    rra
    rra
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

    inc bc
    inc bc
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
    rst $18
    pop hl
    nop
    nop
    rst $38
    ld e, a
    nop
    nop
    cp a
    ld b, c
    nop
    nop
    sbc a
    push hl
    nop
    nop
    rst $08
    pop af
    add b
    add b
    ld h, l
    ei
    ldh [$e0], a

jr_0e1_70e4:
    ld a, $ff
    ret nc

    ldh a, [rTMA]
    rst $38
    jr jr_0e1_70e4

    nop
    rst $38
    inc e
    db $fc
    nop
    rst $38
    inc e
    db $fc
    nop
    rst $38
    inc e
    db $fc
    inc b
    rst $38
    ld l, b
    ret c

    rst $38
    rst $38
    ret nc

    ldh a, [rP1]
    rst $38
    ldh a, [$90]
    nop
    rst $38
    ret nc

    or b
    ld bc, $10ff
    ldh a, [$39]
    rst $38
    ldh a, [$30]
    rst $10
    xor $78
    sbc b
    dec sp
    cp $78
    sbc b
    ld bc, $30ff
    ldh a, [rSB]
    rst $38
    ldh [$e0], a

jr_0e1_7120:
    ld de, $00ff
    nop

jr_0e1_7124:
    ldh [rIE], a
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    add c
    rst $38
    ldh [$e0], a
    adc a
    rst $38
    ldh [$e0], a
    db $fc
    rst $38
    jr nz, jr_0e1_7120

    jr nz, jr_0e1_7181

    jr nz, jr_0e1_7124

    jr nz, jr_0e1_7185

    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rNR41]
    ccf
    db $10
    ldh a, [rNR13]
    rra
    and b
    ldh [rNR13], a
    rra
    ret nz

    ret nz

    dec c
    dec c
    cp $fe
    inc bc
    inc bc
    ld sp, hl
    rst $38
    inc bc
    inc bc
    and $fe
    ld bc, $9801
    ld hl, sp+$00
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

jr_0e1_7181:
    nop
    nop
    nop
    nop

jr_0e1_7185:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    ld bc, $de01
    rst $38
    inc bc
    inc bc
    rst $28
    rst $38
    ld b, $07
    ldh a, [rIE]
    dec b
    ld b, $78
    rst $38
    ld b, $07
    ld hl, sp-$01
    rlca
    rlca
    rst $38
    rst $38
    dec b
    ld b, $ec
    rra
    dec b
    ld b, $6c
    sbc a
    dec b
    ld b, $88
    ld a, a
    ld [bc], a
    inc bc
    rst $00
    ccf
    ld [bc], a
    inc bc
    or $0f
    ld bc, $7601
    adc a
    nop
    nop
    add a
    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    jr nz, jr_0e1_7223

    nop
    nop
    jr nz, jr_0e1_7227

    nop
    nop
    jr nz, jr_0e1_722b

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
    ldh [rIE], a
    ld bc, $3001
    rst $38
    ld b, $07
    inc e
    rst $38
    ld [$0f0f], sp
    rst $38

jr_0e1_7204:
    db $10
    rra
    rrca
    rst $38
    inc c
    rrca
    ld b, $fe
    ld e, $1f
    inc c
    db $fc
    ccf
    ccf
    jr nc, jr_0e1_7204

    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
    nop

jr_0e1_7223:
    nop
    ld e, $1e
    nop

jr_0e1_7227:
    nop
    ld c, $0e
    nop

jr_0e1_722b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $28
    ldh a, [$80]
    add b
    rst $38
    xor a
    add b
    add b
    rst $18
    and b
    ldh [$e0], a
    rst $08
    ld a, [c]
    ld [hl], b
    ldh a, [$e7]
    ld hl, sp+$78
    ld hl, sp+$32
    db $fd
    cp b
    ld hl, sp+$1f
    rst $38
    cp b
    ld hl, sp+$06
    rst $38
    jr c, @-$06

    nop
    rst $38
    jr c, @-$06

    nop
    rst $38
    ld l, b
    ret c

    add d
    rst $38
    ld d, b
    ldh a, [$7f]
    rst $38
    ret nc

    ldh a, [rP1]
    rst $38
    and b
    ldh [rP1], a
    rst $38
    ret nz

    ret nz

    ret nz

    rst $38
    ret nz

    ret nz

    db $fc
    ld a, a
    ret nz

    ret nz

    rst $28
    ld [hl], a
    add b
    add b
    ei
    cp $c0
    ret nz

    ld [bc], a
    rst $38
    ret nz

    ret nz

    adc e
    rst $38
    add b
    add b
    ld [hl], c
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
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
    rst $08
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    ldh a, [rIE]
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

jr_0e1_72d4:
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, c
    ld a, a
    nop
    nop
    ld l, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    rra
    ldh [$e0], a
    rra
    rra
    sub b
    ldh a, [$1f]
    rra
    jr nz, jr_0e1_72d4

    ld e, $1f
    ld b, b
    ret nz

    add hl, de
    rra
    add b
    add b
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec e
    rra
    nop
    nop
    ld a, $3f
    nop
    nop
    ld l, a
    ld a, a
    nop
    nop
    ld d, a
    ld l, a
    nop
    nop
    ld l, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, [hl]
    ld h, c
    nop
    nop
    ld e, [hl]
    ld h, c
    nop
    nop
    ld c, h
    ld [hl], e
    nop
    nop
    ld hl, $003e
    nop
    cpl
    jr nc, jr_0e1_7355

jr_0e1_7355:
    nop
    ld d, $19
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
    inc e
    rra
    rlca
    rlca
    db $e3
    rst $38
    rlca
    rlca
    pop hl
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
    and b
    cp a
    rlca
    rlca
    sbc a
    sbc a
    rlca
    rlca
    ld bc, $0301
    inc bc
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
    rrca
    rrca
    ldh [$e0], a
    rra
    rra
    ldh a, [$f0]
    rra
    rra
    ldh a, [$f0]
    dec e
    ld e, $f0
    db $10
    rra
    dec d
    ldh a, [$f0]
    ei
    db $f4
    ld hl, sp+$18
    ld sp, hl
    cp $fc
    ld e, h
    call z, $eeff
    ld e, $e2
    rst $38
    ld c, [hl]
    cp [hl]
    ld bc, $eeff
    cp $80
    rst $38
    adc $fe

jr_0e1_73f8:
    add b
    rst $38
    inc e
    db $fc

jr_0e1_73fc:
    ret nz

    rst $38
    jr jr_0e1_73f8

jr_0e1_7400:
    ret c

    rst $38
    jr jr_0e1_73fc

    db $fc
    rst $38
    sbc b
    ld hl, sp-$51
    rst $30
    ldh a, [$f0]
    xor $37
    jr nc, jr_0e1_7400

    cp $3f
    ld h, b
    ldh [$4e], a
    rst $38
    ld h, b
    ldh [$bb], a
    db $fd
    ret nz

    ret nz

    ld c, $ff
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ld b, h
    rst $38
    ld b, b
    ret nz

    jr c, @+$01

    ld b, b
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
    db $10
    rst $38
    add b
    add b
    jr nz, @+$01

    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld b, c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add d
    cp $00
    nop
    ld a, h
    ld a, h
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
    ccf
    ccf
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
    rlca
    rlca
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $28
    rst $38
    ld bc, $f701
    rst $38
    inc bc
    inc bc
    ld a, b
    rst $38
    ld [bc], a
    inc bc
    cp h
    ld a, a
    inc bc
    inc bc
    ld a, h
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    ld [bc], a
    inc bc
    or $0f
    ld [bc], a
    inc bc
    or [hl]
    ld c, a
    ld [bc], a
    inc bc
    rst $00
    ccf
    ld bc, $6601
    sbc a
    ld bc, $7e01
    add a
    nop
    nop
    cp a
    rst $00
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nc, jr_0e1_751f

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
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    dec bc
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca

jr_0e1_751f:
    rrca
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
    rrca
    rrca
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
    ccf
    ccf
    add b
    add b
    ld a, a
    ld a, a
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    ld [hl], a
    ld a, b
    ret nz

    ld b, b
    ld a, a
    ld d, a
    ret nz

    ret nz

    ld l, a
    ld d, b
    ldh a, [rSVBK]
    rst $20
    ld sp, hl
    cp b
    ld a, b
    di
    db $fc
    cp h
    ld a, h
    add hl, de
    cp $5c
    db $fc
    adc a
    rst $38
    call c, $03fc
    rst $38
    inc e
    db $fc
    nop
    rst $38
    inc e
    db $fc

jr_0e1_7578:
    nop
    rst $38
    inc [hl]
    db $ec
    pop bc
    rst $38
    jr z, jr_0e1_7578

    ccf
    rst $38
    add sp, -$08
    nop
    rst $38
    ld d, b
    ldh a, [$c0]
    rst $38
    ld h, b
    ldh [$c0], a
    ld a, a
    ld h, b
    ldh [$de], a
    ld a, a
    ld h, b
    ldh [$f7], a
    ei
    ret nz

    ret nz

    dec e
    rst $38
    ldh [$60], a
    ld bc, $60ff
    ldh [rLYC], a
    rst $38
    ret nz

    ret nz

    add hl, sp
    rst $38
    add b
    add b
    ld de, $00ff
    nop
    add hl, bc
    rst $38
    nop
    nop
    dec b
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    rra
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    call z, Call_000_00fc
    nop
    call nc, Call_000_00fc
    nop
    db $e4
    db $fc
    nop
    nop
    ret c

    ret c

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
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
    ld a, a
    ld a, a
    nop
    nop
    rst $28
    rst $38
    ld bc, $f601
    rst $38
    inc bc
    inc bc
    ld [hl], a
    rst $38
    ld [bc], a
    inc bc
    cp b
    ld a, a
    rlca
    rlca
    ld a, b
    rst $38
    rlca
    rlca
    ld hl, sp-$01
    dec b
    ld b, $f8
    ld a, a
    dec b
    ld b, $ee
    rra
    inc b
    rlca
    add hl, hl
    rst $18
    dec b
    ld b, $e0
    rra
    dec b
    ld b, $f0
    rrca
    ld [bc], a
    inc bc
    db $fc
    rra
    ld bc, $6e01
    or a
    nop
    nop
    xor a
    push af
    nop
    nop
    ld a, [hl]
    ld a, l
    nop
    nop
    inc l
    inc sp
    nop
    nop
    jr nz, jr_0e1_769f

    nop
    nop
    jr nz, jr_0e1_76a3

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0e1_76ab

    nop
    nop
    db $10
    rra
    nop
    nop
    jr jr_0e1_7693

    nop
    nop
    inc a
    ccf
    nop
    nop
    ld b, [hl]
    ld a, a
    nop
    nop
    add e
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld bc, $04ff
    rlca
    ld bc, $04ff
    rlca
    inc bc
    rst $38
    inc bc
    inc bc
    push bc

jr_0e1_7693:
    db $fd
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ret nz

jr_0e1_769f:
    ret nz

    rlca
    rlca
    ret nz

jr_0e1_76a3:
    ret nz

    inc bc
    inc bc
    ldh [$e0], a
    ld bc, $f001

jr_0e1_76ab:
    ldh a, [rP1]
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
    rst $18
    pop hl
    nop
    nop
    rst $38
    ld e, a
    nop
    nop
    cp a
    ld b, c
    nop
    nop
    sbc a
    push hl
    nop
    nop
    rst $08
    pop af
    add b
    add b
    ld h, l
    ei
    ldh [$e0], a

jr_0e1_76e4:
    ld a, $ff
    ret nc

    ldh a, [rTMA]
    rst $38
    jr jr_0e1_76e4

    nop
    rst $38
    inc e
    db $fc
    nop
    rst $38
    inc e
    db $fc
    nop
    rst $38
    inc e
    db $fc
    inc b
    rst $38
    ld l, b
    ret c

    rst $38
    rst $38
    ret nc

    ldh a, [rP1]
    rst $38
    ldh a, [$90]
    nop
    rst $38
    ret nc

    or b
    ld bc, $10ff
    ldh a, [$39]
    rst $38
    ldh a, [$30]
    rst $10
    xor $78
    sbc b
    dec sp
    cp $78
    sbc b
    ld bc, $30ff
    ldh a, [rSB]
    rst $38
    ldh [$e0], a
    ld b, l
    rst $38
    nop
    nop
    ld a, [hl-]
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    inc c
    db $fc
    nop
    nop
    ld b, $fe
    nop
    nop
    ld e, $fe
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    pop af
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
    add b
    add b
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    add b
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    ld b, b
    ret nz

    ld c, [hl]
    ld a, a
    add b
    add b
    ld c, a
    ld a, a
    nop
    nop
    scf
    scf
    ld hl, sp-$08

jr_0e1_7768:
    rrca
    rrca
    call nz, Call_000_0ffc
    rrca
    jr jr_0e1_7768

    inc b
    rlca
    ld h, b
    ldh [$03], a
    inc bc
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
    ld bc, $0001
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
    ld h, a
    ld a, a
    nop
    nop
    ei
    rst $38
    ld bc, $db01
    rst $38
    ld bc, $ac01
    rst $18
    inc bc
    inc bc
    call c, $03ff
    inc bc
    db $fc
    rst $38
    ld [bc], a
    inc bc
    ld hl, sp+$1f
    ld [bc], a
    inc bc
    rst $28
    rra
    inc b
    rlca
    ret z

    ccf
    dec b
    ld b, $10
    rst $38
    dec b
    ld b, $d8
    ccf
    dec b
    ld b, $d8
    ccf
    dec b
    ld b, $3c
    rst $38
    dec b
    rlca
    ld [hl], e
    rst $38
    ld b, $07
    ldh [$5f], a
    rlca
    rlca
    ldh [$df], a
    inc bc
    ld [bc], a
    ldh [$3f], a
    ld bc, $c001
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nc, jr_0e1_782f

    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    cp b
    rst $38
    inc bc
    inc bc
    jr @+$01

    inc b
    rlca
    dec bc
    rst $38
    ld [$070f], sp
    rst $38
    db $10
    rra
    ld b, $ff
    ld [$060f], sp
    rst $38
    inc a
    ccf
    ld a, [de]
    ei
    ld a, [hl]
    ld a, a
    ld h, d
    db $e3
    ld a, l
    ld a, l
    add d
    add e
    inc a
    inc a
    ld [bc], a
    inc bc
    ld a, $3e
    ld bc, $1e01
    ld e, $00
    nop
    ld e, $1e
    nop
    nop
    inc c
    inc c
    nop

jr_0e1_782b:
    nop
    nop
    nop
    nop

jr_0e1_782f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $18
    pop hl
    nop
    nop
    rst $38
    ld e, a
    nop
    nop
    cp a
    ld b, c
    nop
    nop
    sbc a
    push hl
    nop
    nop
    rst $08
    pop af
    ret nz

    ret nz

    ld h, l
    ei
    ldh [$e0], a

jr_0e1_786c:
    ld a, $ff
    ld [hl], b
    ldh a, [rTMA]
    rst $38
    jr c, jr_0e1_786c

jr_0e1_7874:
    nop
    rst $38
    jr c, @-$06

    nop
    rst $38
    jr c, jr_0e1_7874

    ld [$78ff], sp
    ld hl, sp-$01
    rst $38
    ldh a, [$d0]
    nop
    rst $38
    ldh a, [$90]
    nop
    rst $38
    sbc b
    ld hl, sp+$01
    rst $38
    call c, Call_000_3924
    rst $38
    adc $32
    rst $10
    rst $28
    adc $b2
    ld a, [hl-]
    cp $44
    ld a, h
    ld [bc], a
    cp $38
    jr c, jr_0e1_782b

    cp $00
    nop
    ld [hl], d
    cp $00
    nop
    inc h
    db $fc

jr_0e1_78aa:
    nop
    nop
    jr @-$06

jr_0e1_78ae:
    nop
    nop
    jr jr_0e1_78aa

jr_0e1_78b2:
    nop
    nop
    jr jr_0e1_78ae

    nop
    nop
    jr jr_0e1_78b2

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
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
    ldh a, [$f0]
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld hl, sp-$01
    add b
    add b
    pop af
    rst $38
    nop
    nop
    ld [c], a
    cp $00
    nop
    adc h
    db $fc
    nop
    nop
    ld [hl], b
    ld [hl], b
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
