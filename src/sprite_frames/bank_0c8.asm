SECTION "ROM Bank $0c8", ROMX[$4000], BANK[$c8]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld b, $05
    ld c, [hl]
    pop af
    inc b
    rlca
    ld c, l
    ld a, [c]
    db $db
    cp a
    rla
    ld hl, sp-$11
    db $fc
    push hl
    cp d
    ld a, a
    xor h
    jp nz, $ff3d

    xor [hl]
    reti


    ld h, $ff
    cp $a5
    ld e, d
    cp $ff
    srl l
    cp $ff
    and e
    ld e, h
    ld a, a
    rst $38
    add hl, sp
    and $7d
    rst $38
    sub a
    ld a, [hl]
    cp a
    rst $38
    adc h
    rst $30
    ld a, $fe
    db $ec
    db $fc
    cp $fe
    or b
    ldh a, [$7e]
    ld a, [hl]
    call c, Call_0c8_6adc
    ld l, [hl]
    call c, Call_0c8_5edc
    ld a, [hl]
    sbc $df
    ld a, $3e
    rst $08
    rst $08
    ld a, $3e
    rst $00
    rst $00
    rra
    rra
    jp Jump_000_1fc3


    rra
    ret nz

    ret nz

    ld de, $c019
    ret nz

    ld de, $c019
    ret nz

    add hl, de
    dec e
    jp nz, $0fc3

    rrca
    ld bc, $0fc7
    rrca
    add a
    rst $08
    rlca
    rlca
    sbc h
    sbc h
    ld bc, $ac07
    cp h
    ld bc, $9007
    ldh a, [rSB]
    rlca
    ldh a, [$f0]
    rlca
    rlca
    rst $00
    ld hl, sp+$03
    inc bc
    adc a
    rst $38
    ld bc, $f001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c8_40dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ret nz

    add b
    db $d3
    ld l, a
    jr nz, jr_0c8_40dc

    ldh [$3f], a
    ld h, b
    ret nz

    sub h
    ld a, a
    sub b
    ldh [$ca], a
    ccf
    db $10
    ldh [$f9], a
    ld b, $48
    cp b
    adc [hl]
    ld [hl], e
    or b
    ld c, b

jr_0c8_4110:
    and [hl]
    ld e, c
    inc a
    ret nz

jr_0c8_4114:
    ld a, [c]
    rra
    ld a, h
    sub b
    rst $18
    dec l
    ld h, $d8
    ei
    inc b
    ld a, h
    jp z, Jump_000_16e9

    and c
    cp $2c
    rst $10
    rrca
    ldh a, [$af]
    ld d, a
    rst $10
    rst $18
    ld a, e
    ld a, a
    sbc a
    cp a
    ld h, e
    ld h, a
    rst $18
    rst $38
    ld [hl], a
    ld [hl], a
    ld a, $fe
    db $76
    ld [hl], a
    ld a, [hl]
    cp $3d
    ccf
    call z, $9bcc
    sbc a
    adc h
    adc h
    sub a
    rst $18
    inc e
    inc e
    xor $fe
    inc e
    inc e
    cp $fe
    inc e
    inc e
    cp $fe
    inc c
    inc a
    cp [hl]
    cp $38
    jr c, jr_0c8_41b7

    rst $18
    jr @+$3a

    adc a
    adc a
    jr nc, jr_0c8_4110

    dec b
    rlca
    jr nc, jr_0c8_4114

    inc bc
    inc bc
    ldh a, [$f0]
    ld bc, $b001
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    add hl, de
    ld b, $f0
    ld [hl], b
    di
    rrca
    ldh a, [$f0]
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
    ld bc, $ff01
    rst $38
    cp $ff
    nop
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    sbc a
    rst $38
    rst $38
    ldh a, [$87]
    db $fc
    rst $38
    rlca
    add a
    db $fc
    ld hl, sp-$01
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b

jr_0c8_41b7:
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add b
    rst $38
    add a
    db $fc
    add a
    rst $38
    add a
    db $fc
    rst $38
    ld hl, sp-$79
    db $fc
    rst $38
    nop
    add a
    db $fc
    cp $01
    add a
    db $fc
    add c
    ld a, a
    add h
    rst $38
    ld a, a
    cp $87
    rst $38
    rst $38
    add b
    add a
    cp $ff
    nop
    add a
    cp $fe
    ld bc, $fe87
    cp $01
    add a
    cp $ff
    nop
    add a
    cp $ff
    nop
    add a
    cp $ff
    nop
    add a
    cp $ff
    nop
    add a
    cp $ff
    nop
    add a
    cp $ff
    nop
    add a
    cp $ff
    nop
    ld b, a
    ld a, [hl]
    ldh a, [rIF]
    daa
    ld a, $0f
    rst $38
    ld d, $1f
    ldh a, [$f0]
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    ldh [$e0], a
    ldh a, [rIE]
    inc e
    db $fc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    ld a, l
    rst $38
    rst $08
    add a
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08

jr_0c8_426e:
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    rlca
    db $fd
    ld a, b
    rst $08
    ld a, a
    db $fd
    ld a, a
    rst $08
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ld bc, $00ff
    pop af
    rrca
    db $fc
    inc bc
    rrca
    rst $38
    inc bc
    rst $38
    rst $38
    di
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    jr nc, @+$01

    inc bc
    rst $38
    jr nc, @+$01

    inc bc
    db $fd
    ld [hl], $ff
    inc bc
    db $fd
    or [hl]
    rst $38
    inc bc
    rst $38
    or b
    rst $38
    inc bc
    rst $38
    jr nc, @+$01

    inc bc
    rst $38
    jr nc, @+$01

    inc bc
    rst $38
    jr nc, @+$01

    inc bc
    rst $38
    jr nc, @-$03

    rlca
    rst $38
    jr nc, jr_0c8_426e

    ld a, a
    ld hl, sp+$37
    ld a, b
    ld hl, sp+$37
    rst $38
    add b
    add b
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
    ld c, $0f
    inc c
    rrca
    db $fd
    ld [bc], a
    rst $18
    ldh [rIE], a
    nop
    scf
    ld hl, sp-$01
    nop
    dec c
    cp $ff
    rra
    inc bc
    rst $38
    ldh [rIE], a
    add d
    rst $38
    nop
    rst $38
    ld [bc], a
    ld a, a
    nop
    rst $38
    ld b, c
    ld a, a
    inc bc
    db $fc
    ld sp, $870f
    ld sp, hl
    dec c
    inc sp
    db $ec
    rst $30
    inc bc
    dec a
    adc c
    cp $21
    ccf
    inc bc
    db $fc
    ld hl, $033f
    db $fc
    ld hl, $073f
    ld hl, sp+$21
    ccf
    rlca
    ld sp, hl
    db $10
    rra
    add a
    ld hl, sp+$10
    rra
    add a
    ld hl, sp+$00
    rrca
    add b
    rst $38
    inc c
    rrca
    add b
    rst $38
    rrca
    rrca
    rrca
    rst $38
    rrca
    rrca
    ldh a, [rIE]
    rrca
    rrca
    sbc b
    rst $30
    rrca
    rrca
    sbc b
    rst $30
    rrca
    rrca
    sbc b
    rst $30
    rrca
    rrca
    sbc b
    rst $30
    rrca
    rrca
    sbc b
    rst $30
    rrca
    rrca
    sbc b
    rst $30
    rrca
    rrca
    sbc b
    rst $30
    rrca
    rrca
    sbc b
    rst $30
    rrca
    rrca
    sbc b
    rst $30
    rrca
    rrca
    sbc b
    rst $30
    rrca
    rrca
    sbc b
    rst $30
    rra
    rra
    sbc b
    rst $30
    rra
    rra
    sbc b
    rst $30
    rla
    rra
    sub b
    rst $38
    inc de
    rra
    sbc a
    rst $38
    ld bc, $f11f
    cp $00
    rra
    sbc a
    ldh [rP1], a
    rra
    or b
    rst $08
    nop
    rra
    add b
    rst $38
    db $10
    rra
    add b
    rst $38
    ld [$400f], sp
    rst $38
    inc b
    rlca
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld bc, $4701
    rst $38
    nop
    nop
    ld hl, sp-$08
    rrca
    rrca
    ret nz

    ret nz

    inc bc
    rst $38
    ldh a, [$f0]
    ld d, b
    xor a
    ld hl, sp-$08
    ld [$bf15], a
    ld a, a
    rst $38
    ccf
    pop bc
    rst $38
    ret nz

    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $ffff
    nop
    add c
    ld a, a
    rst $38
    ld a, a
    ret nz

    ld a, $80
    rst $38
    ld h, b
    sbc $3f
    ret nz

    nop
    cp $f7
    inc e
    add b
    ld a, [hl]
    and e
    cp $c0
    ld a, $c1
    ld a, a
    ret nz

    ld a, $82
    rst $38
    ret nz

    cp [hl]
    ld d, a
    db $fc
    jp nz, $fc3e

    inc bc
    ld [bc], a
    cp $80
    ld a, a
    inc e
    db $fc

jr_0c8_440c:
    inc bc
    rst $38
    ldh [$f8], a
    ld a, h
    rst $38
    jr nz, jr_0c8_440c

    add b
    rst $38
    ld h, b
    cp b
    nop
    rst $38
    ld h, b
    cp b
    nop
    rst $38
    ret nz

    ld a, b
    nop
    rst $38
    ret nz

    ld [hl], b
    nop
    rst $38
    ret nz

    ld [hl], b
    nop
    rst $38
    ret nz

    ld [hl], b
    nop
    rst $38
    ret nz

    ld [hl], b
    nop
    rst $38
    ret nz

    ld [hl], b
    nop
    rst $38
    ret nz

    ld [hl], b
    nop
    rst $38
    ret nz

    ld [hl], b
    nop
    rst $38
    ret nz

    ld [hl], b
    nop
    rst $38
    ret nz

    ld [hl], b
    nop
    rst $38
    ld b, b
    ldh a, [rP1]
    rst $38
    ldh a, [$f0]
    rrca
    rst $38
    ld [$f1f8], sp
    cp $f4
    inc c
    rra
    ldh [rDIV], a
    db $fc
    ldh a, [rIF]
    nop
    db $fc
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    inc b
    db $fc
    nop
    rst $38
    ld a, b
    ld hl, sp+$07
    rst $38
    add b
    add b
    ld a, b
    ld hl, sp+$00
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    cp $fe
    inc b
    rlca
    dec bc
    rst $38
    inc b
    rlca
    ld [$04ff], sp
    rlca
    ld [$04ff], sp
    rlca
    ld [$07ff], sp
    inc b
    ret


    ld a, $04
    rlca
    ld a, c
    adc [hl]
    ld b, $07
    add hl, bc
    rst $38
    ld [bc], a
    inc bc
    add hl, bc
    rst $38
    ld [bc], a
    inc bc
    ld [$02ff], sp
    inc bc
    ld [$02ff], sp
    inc bc
    ld [$03ff], sp
    inc bc
    ld [$01ff], sp
    ld bc, $ffff
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    ld bc, $f901
    rst $38
    inc bc
    inc bc
    ld sp, hl
    rst $38
    inc bc
    inc bc
    ld sp, hl
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld b, $07
    ld [$04ff], sp
    rlca
    dec bc
    db $fc
    inc b
    rlca
    ld [$04ff], sp
    rlca
    ld [$04ff], sp
    rlca
    ld [$04ff], sp
    rlca
    ld [$04ff], sp
    rlca
    ld [$07ff], sp
    rlca
    ld [$01ff], sp
    ld bc, $ffc8
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    rra
    rst $38
    add b
    add b
    nop
    rst $38
    ldh a, [$f0]
    db $fc
    inc bc
    db $10
    ldh a, [rIE]
    ld a, b
    db $10
    ldh a, [rIE]
    add [hl]
    sub b
    ld [hl], b
    rst $38
    ld sp, $7090
    rst $00
    inc a
    sub b
    ldh a, [$c3]
    ld a, h
    sub b
    ldh a, [$f3]
    ld c, $10
    ldh a, [rIE]
    nop
    db $10
    ldh a, [rTAC]
    ld hl, sp+$10
    ldh a, [$f0]
    rst $38
    jr nc, @-$0e

    rrca
    rst $38
    ldh [$e0], a
    add b
    ld a, a
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$81], a
    ld a, [hl]
    and b
    ldh [$80], a
    ld a, a
    ldh a, [$f0]
    rrca
    rst $38
    sub b
    ldh a, [$f8]
    rst $38
    ldh a, [rNR10]
    ccf
    ret nz

    sub b
    ld [hl], b
    ldh a, [rIF]
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    ld h, b
    ldh [$03], a
    rst $38
    add b
    add b
    ld a, h
    db $fc
    nop
    nop
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
    ld bc, $0001
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
    ld b, $07
    nop
    nop
    nop
    rlca
    nop
    nop
    ld b, $07
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $07
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
    inc bc
    inc bc
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
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, $0f
    ld bc, $1e01
    rst $38
    ld bc, $8f01
    rst $38
    ld bc, $c701
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $fa01
    push hl
    ld bc, $e101
    cp $01
    ld bc, $ffe0
    ld bc, $e001
    rst $38
    ld bc, $e101
    cp $01
    ld bc, $ffe8
    ld bc, $f001
    rst $38
    ld bc, $fc01
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    ccf
    ccf
    ld [hl], b
    nop
    nop
    nop
    jr nc, jr_0c8_4736

    nop
    nop
    jr jr_0c8_4702

    nop
    nop
    jr jr_0c8_46fe

    nop
    nop
    jr jr_0c8_46e2

jr_0c8_46d2:
    nop
    nop
    inc c
    ld [$0000], sp
    inc c
    ld [$0000], sp
    db $fc
    ret nc

    nop
    nop
    xor b
    db $f4

jr_0c8_46e2:
    nop
    nop
    ret c

    ldh [rP1], a
    nop
    sub b
    add sp, $00
    nop
    or b
    ret nc

    nop
    nop
    jr nc, jr_0c8_46e2

    nop
    nop
    jr z, @-$0e

jr_0c8_46f6:
    nop
    nop
    ld [$00f8], sp
    nop
    jr jr_0c8_46f6

jr_0c8_46fe:
    nop
    nop
    jr nc, jr_0c8_46d2

jr_0c8_4702:
    nop
    nop
    and b
    ret nz

    nop
    nop
    and b
    ret nz

    nop
    nop
    ldh a, [$c0]
    nop
    nop
    ret nc

    ldh [rP1], a
    nop
    ld d, b
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    or b
    ldh a, [rP1]
    nop
    ldh a, [$e0]
    nop
    nop
    sub b
    ldh [rP1], a
    nop
    jr nc, @-$3e

    nop
    nop
    jr nz, jr_0c8_46fe

    nop
    nop
    ld l, b
    or b
    nop
    nop
    ld [hl], b
    xor b

jr_0c8_4736:
    nop
    nop
    ret nc

    ld l, b
    nop
    nop
    ldh [$d0], a
    nop
    nop
    or b
    ret nc

    nop
    nop

jr_0c8_4744:
    or b
    ret nc

    nop
    nop
    ret nc

    cp b
    nop
    nop
    ret c

    db $fc
    nop
    nop
    nop
    cp $00
    nop
    xor d
    ld d, h
    nop
    nop
    ld d, h
    xor d
    nop
    nop
    xor b
    ld d, [hl]
    nop
    nop
    inc b
    ld a, [$0000]
    jr nz, jr_0c8_4744

    nop
    nop
    ld [$00f6], sp
    nop
    ld b, d
    cp [hl]
    nop
    nop
    ld b, $fe
    nop
    nop
    sbc [hl]
    cp $00
    nop
    ld e, [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    inc bc
    rlca
    nop
    nop
    ld bc, $0003
    nop
    ld bc, $0003
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    inc bc
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [$000f], sp
    nop
    ld bc, $000f
    nop
    add hl, bc
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
    ld b, $07
    nop
    nop
    ld b, $07
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
    add hl, bc
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld c, $0f
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
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
    dec e
    ld e, $00
    nop
    dec e
    ld e, $00
    nop
    dec de
    dec e
    nop
    nop
    inc sp
    ccf
    nop
    nop
    ld a, [hl-]
    ccf
    nop
    nop
    ld a, [hl-]
    ccf
    nop
    nop
    ccf
    ld a, $00
    nop
    rra
    ccf
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld l, d
    dec d
    nop
    nop
    dec b
    ld a, d
    nop
    nop
    ld [bc], a
    ld a, l
    nop
    nop
    nop
    ld a, a
    nop
    nop
    inc b
    ld a, e
    nop
    nop
    jr nz, jr_0c8_48ab

    nop
    nop
    ld b, c
    ld a, [hl]
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld a, d
    ld a, a
    nop
    nop
    ld [hl], l
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
    add b
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
    add b
    nop
    nop
    ret nz

    add b

jr_0c8_485a:
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

    add b
    nop
    nop
    ret nz

    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ldh [$c0], a
    nop
    nop
    or b
    ret nz

    nop
    nop
    jr nc, jr_0c8_485a

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ret nz

    ld b, b
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

    nop
    nop
    nop
    ld b, b
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
    ldh [$c0], a
    nop
    nop
    ldh [$80], a
    nop
    nop
    ld h, b
    add b
    nop
    nop
    ldh [rP1], a
    nop

jr_0c8_48ab:
    nop
    and b
    ld b, b
    nop
    nop
    and b
    ret nz

    nop
    nop
    ret nz

    and b
    nop
    nop
    ld b, b
    and b
    nop
    nop
    add b
    ld b, b
    nop
    nop
    ret nz

    ld b, b

jr_0c8_48c2:
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld h, b
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    xor b
    ld d, b
    nop
    nop
    ld d, b
    xor b
    nop
    nop
    and b
    ld e, b
    nop
    nop
    db $10
    add sp, $00
    nop
    add b
    ld a, b
    nop
    nop
    jr nz, jr_0c8_48c2

jr_0c8_48ea:
    nop
    nop
    ld [$00f8], sp
    nop
    jr jr_0c8_48ea

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ld c, $00
    nop
    nop
    inc c
    ld c, $00
    nop
    ld a, [bc]
    ld c, $00
    nop
    inc b
    inc c
    nop
    nop
    inc b
    inc c
    nop
    nop
    ld [bc], a
    ld b, $00
    nop
    ld [bc], a
    ld b, $00
    nop
    inc bc
    rlca
    nop
    nop
    rlca
    ld bc, $0000
    add hl, bc
    rlca
    nop
    nop
    dec c
    inc bc
    nop
    nop
    rlca
    ld bc, $0000
    nop
    rlca
    nop
    nop
    ld [$0007], sp
    nop
    inc c
    inc de
    nop
    nop
    inc b
    dec de
    nop
    nop
    inc b
    dec bc
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
    dec c
    inc bc
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    dec c
    rrca
    nop
    nop
    rrca
    rlca
    nop
    nop
    add hl, bc
    rlca
    nop
    nop
    inc c
    inc bc
    nop
    nop
    inc b
    dec bc
    nop
    nop
    ld d, $0d
    nop
    nop
    ld c, $15
    nop
    nop
    dec bc
    ld d, $00
    nop
    rlca
    dec bc
    nop
    nop
    dec c
    dec bc
    nop
    nop
    dec c
    dec bc
    nop
    nop
    dec de
    dec c
    nop
    nop
    dec sp
    rra
    nop
    nop
    ld a, a
    ld bc, $0000
    ld bc, $007e
    nop
    jr nz, jr_0c8_49fb

    nop
    nop
    ld de, $006e
    nop
    jr nz, jr_0c8_4a03

    nop
    nop
    inc b
    ld a, e
    nop
    nop
    db $10
    ld l, a
    nop
    nop
    ld b, d
    ld a, l
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld a, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
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
    ld h, b
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a

jr_0c8_49fb:
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop

jr_0c8_4a03:
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
    ld b, b
    ret nz

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
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

jr_0c8_4a2e:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nc, jr_0c8_4a2e

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld a, [hl]
    cp $00
    nop
    or $fe
    nop
    nop
    xor $fe
    nop
    nop
    or $de
    nop
    nop
    cp $3e
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    ld d, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    cp b
    ld hl, sp+$00
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
    inc e
    inc e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rst $38
    ld sp, hl
    nop
    nop
    cp c
    ld h, a
    nop
    nop
    ldh [$df], a
    nop
    nop
    jp Jump_000_00ff


    nop
    ld c, a
    ld a, h
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    jr z, jr_0c8_4afb

    nop
    nop
    jr c, jr_0c8_4aff

    nop
    nop
    inc a
    inc sp
    nop
    nop
    ld d, $19
    nop
    nop
    dec de
    inc e
    nop
    nop
    rrca
    ld c, $00
    nop
    add hl, bc
    rrca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    dec de
    dec d
    nop
    nop
    ld [hl], b
    rra
    nop
    nop
    ld a, h
    dec bc
    nop
    nop
    db $fc
    rlca
    nop
    nop
    ld hl, sp-$71
    nop
    nop
    rst $38
    adc a
    nop
    nop
    rst $38
    ldh [rP1], a
    nop
    ld a, a

jr_0c8_4afb:
    ld a, b
    nop
    nop
    ccf

jr_0c8_4aff:
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr c, jr_0c8_4b47

    nop
    nop
    jr c, jr_0c8_4b4b

    nop
    nop
    jr c, jr_0c8_4b4f

    nop
    nop
    jr c, jr_0c8_4b53

    nop
    nop
    jr c, jr_0c8_4b57

    nop
    nop
    jr c, jr_0c8_4b5b

    nop
    nop
    ld a, b
    ccf
    nop
    nop
    ld a, b
    ccf
    nop
    nop
    ld hl, sp+$3f
    nop
    nop
    ld hl, sp-$61
    nop
    nop
    ld hl, sp-$79
    nop
    nop
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    ld a, b
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
    nop
    nop
    nop
    nop
    nop

jr_0c8_4b47:
    nop
    nop
    nop
    nop

jr_0c8_4b4b:
    nop
    nop
    nop

jr_0c8_4b4e:
    nop

jr_0c8_4b4f:
    nop
    nop
    nop
    nop

jr_0c8_4b53:
    nop
    nop
    nop
    nop

jr_0c8_4b57:
    nop
    nop
    nop
    nop

jr_0c8_4b5b:
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
    jr nz, jr_0c8_4b4e

    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ret nc

    ld [hl], b
    nop
    nop
    ret nc

    ld [hl], b
    nop
    nop
    add sp, $78
    nop
    nop
    ld l, b
    cp b
    nop
    nop
    ld l, b
    cp b

jr_0c8_4b86:
    nop
    nop
    ld l, b
    cp b

jr_0c8_4b8a:
    nop
    nop
    ld h, h
    cp h

jr_0c8_4b8e:
    nop
    nop
    db $e4
    db $fc

jr_0c8_4b92:
    nop
    nop
    inc d
    db $fc

jr_0c8_4b96:
    nop
    nop
    inc d
    db $fc

jr_0c8_4b9a:
    nop
    nop
    jr jr_0c8_4b96

    nop
    nop
    call c, Call_000_00f8
    nop
    db $fc
    cp b
    nop
    nop
    ld a, [hl]
    ret nz

    nop
    nop
    ld a, h
    ld [c], a
    nop
    nop
    db $fc
    ld [c], a
    nop
    nop
    ldh a, [$0e]
    nop
    nop
    ret nz

    inc a
    nop
    nop
    ret z

    ldh a, [rP1]
    nop
    ld hl, sp-$40
    nop
    nop
    jr c, jr_0c8_4b86

    nop
    nop
    jr c, jr_0c8_4b8a

    nop
    nop
    jr c, jr_0c8_4b8e

    nop
    nop
    jr c, jr_0c8_4b92

    nop
    nop
    jr c, jr_0c8_4b96

    nop
    nop
    jr c, jr_0c8_4b9a

    nop
    nop
    inc a
    ret nz

    nop
    nop
    inc a
    ret nz

    nop
    nop
    ld a, $c0
    nop
    nop
    inc a
    jp nz, RST_00

    inc a
    jp nz, RST_00

    ldh a, [$0e]
    nop
    nop
    ret nz

    inc a
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rst $08
    rrca
    inc bc
    nop
    ccf
    rst $08
    ld [bc], a
    ld bc, $f70f
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld sp, $07ff
    dec b
    set 7, a
    rlca
    inc b
    rla
    rst $38
    ld b, $05
    ld d, [hl]
    cp a
    ld b, $05
    and $3f
    rlca
    inc b
    and h
    ld a, a
    rlca
    inc b
    ld b, h
    rst $38
    inc bc
    ld [bc], a
    sbc b
    rst $38
    ld bc, $f801
    rst $20
    ld [bc], a
    inc bc
    inc h
    ei
    ld [bc], a
    inc bc
    ld [hl-], a
    db $ed
    ld [bc], a
    inc bc
    ld [hl+], a
    db $fd
    ld [bc], a
    inc bc
    ld [hl], d
    db $fd
    ld [bc], a
    inc bc
    ld a, [$018d]
    ld bc, $0ef9
    nop
    nop
    rst $38
    add a
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
    ld a, b
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
    jr c, jr_0c8_4cc7

    nop
    nop
    jr c, jr_0c8_4ccb

    nop
    nop
    jr c, jr_0c8_4ccf

    nop
    nop
    jr c, jr_0c8_4cd3

    nop
    nop
    jr c, jr_0c8_4cd7

    nop
    nop
    jr c, jr_0c8_4cdb

    nop
    nop
    ld a, b
    ccf
    nop
    nop
    ld a, b
    ccf
    nop
    nop
    ld hl, sp+$3f
    nop
    nop
    ld hl, sp-$61
    nop
    nop
    ld hl, sp-$79
    nop
    nop
    rst $38
    ldh [rP1], a
    nop
    ld a, a
    ld a, b
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
    nop
    nop
    nop
    nop
    nop

jr_0c8_4cc7:
    nop
    nop
    nop
    nop

jr_0c8_4ccb:
    nop
    nop
    nop
    nop

jr_0c8_4ccf:
    nop
    nop
    nop
    nop

jr_0c8_4cd3:
    nop
    nop
    nop
    nop

jr_0c8_4cd7:
    nop
    add b
    add b
    nop

jr_0c8_4cdb:
    nop
    ret nz

    ret nz

    nop
    nop
    and $e0
    nop
    nop
    ld sp, hl
    and $80
    nop
    ldh [$df], a
    add b
    nop
    add b
    rst $38
    add b
    add b
    jr @+$01

    add b
    add b
    and a
    rst $38
    ret nz

    ld b, b
    pop de
    cp $c0
    ld b, b
    call nc, $c0fb
    ld b, b
    adc $f9
    ret nz

    ld b, b
    ld c, e
    db $fc

jr_0c8_4d06:
    ret nz

    ld b, b
    ld b, l
    cp $c0
    ld b, b
    inc sp
    cp $80
    add b
    ccf
    rst $08

jr_0c8_4d12:
    nop
    nop
    ld c, b
    cp a

jr_0c8_4d16:
    add b
    add b
    sbc b
    ld l, a

jr_0c8_4d1a:
    add b
    add b
    adc b
    ld a, a
    add b
    add b
    sbc h
    ld a, a
    add b
    add b
    cp [hl]
    ld h, e
    add b
    add b
    ccf
    pop hl
    nop
    nop
    db $fc
    jp nz, RST_00

    db $fc
    ld [bc], a
    nop
    nop
    ldh a, [$0e]
    nop
    nop
    ret nz

    inc a
    nop
    nop
    ret z

    ldh a, [rP1]
    nop
    ld hl, sp-$40
    nop
    nop
    jr c, jr_0c8_4d06

    nop
    nop
    jr c, @-$3e

    nop
    nop
    jr c, @-$3e

    nop
    nop
    jr c, jr_0c8_4d12

    nop
    nop
    jr c, jr_0c8_4d16

    nop
    nop
    jr c, jr_0c8_4d1a

    nop
    nop
    inc a
    ret nz

    nop
    nop
    inc a
    ret nz

    nop
    nop
    ld a, $c0
    nop
    nop
    inc a
    jp nz, RST_00

    inc a
    jp nz, RST_00

    ldh a, [$0e]
    nop
    nop
    ret nz

    inc a
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ffff
    ld bc, $b203
    rst $08
    inc bc
    rlca
    db $76
    adc a
    ld b, $0f
    call z, $0f3f
    rra
    rst $38
    rst $38
    jr jr_0c8_4e0d

    inc b
    rst $38
    dec de
    inc e
    ei
    inc c
    dec de
    inc e
    cp e
    ld c, h
    dec de
    inc e
    ld a, [$1a0d]
    dec e
    ld a, [$1a0d]
    dec e
    cp e
    ld c, h
    jr jr_0c8_4e25

    dec bc
    db $fc
    ld a, [de]
    dec e
    cp e
    ld c, h
    dec de

jr_0c8_4e0d:
    inc e
    ei
    inc c
    dec de
    inc e
    ld a, e
    adc h
    dec de
    inc e
    ld a, e
    adc h
    dec de
    inc e
    ei
    inc c
    ld a, [de]
    dec e
    ld a, [$1a0d]
    dec e
    ld a, [$1b0d]

jr_0c8_4e25:
    inc e
    ld hl, sp+$0f
    dec de
    inc e
    cp b
    ld c, a
    ld a, [de]
    dec e
    cp d
    ld c, l
    ld a, [de]
    dec e
    ld a, [$1b0d]
    inc e
    ei
    inc c
    jr jr_0c8_4e59

    inc b
    rst $38
    rrca
    rra
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

jr_0c8_4e59:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp d
    ld b, a
    di
    rrca
    ld [hl], a
    adc [hl]
    ei
    rlca
    or $0f
    ld [hl], e
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    ei
    ld b, $fb
    rlca
    sbc e
    ld h, [hl]
    dec sp
    rst $00
    sbc e
    ld h, [hl]
    ei
    rlca
    ei
    ld b, $eb
    rla
    ei
    ld b, $eb
    rla
    sbc e
    ld h, [hl]
    dec sp
    rst $00
    sbc e
    ld h, [hl]
    dec sp
    rst $00
    ld a, [$d307]
    cpl
    ld a, d
    add a
    inc bc
    rst $38
    ld a, d
    add a
    db $d3
    cpl
    ei
    ld b, $fb
    rlca
    ei
    ld b, $eb
    rla
    ei
    ld b, $eb
    rla
    sub e
    ld l, [hl]
    ei
    rlca
    inc bc
    cp $3b
    rst $00
    sub e
    ld l, [hl]
    dec hl
    rst $10
    ei
    ld b, $eb
    rla
    ei
    ld b, $fb
    rlca
    inc b
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    nop
    ld bc, $0001
    nop
    ld a, $3f
    rlca
    rlca
    pop bc
    cp $78
    ld a, a
    ccf
    ret nz

    add a
    ld hl, sp-$01
    rlca
    rst $38
    add c
    rst $38
    ccf
    rst $38
    sbc a
    rst $28
    ccf
    rst $30
    sbc a
    rst $28
    ccf
    rst $30
    sbc a
    rst $20
    ccf
    rst $30
    sbc a
    rst $28
    ccf
    di
    sbc a
    rst $20
    ccf
    rst $30
    sbc a
    db $e3
    ccf
    di
    sbc a
    rst $20
    ccf
    pop af
    sbc a
    db $e3
    ccf
    di
    sbc a
    db $e3
    ccf
    pop af
    sbc a
    pop hl
    ccf
    pop af
    sbc a
    ldh [$3f], a
    pop af
    sbc a
    ldh [$3f], a
    pop af
    sbc a
    ldh [$3f], a
    pop af
    sbc a
    ldh [$3f], a
    pop af
    sbc a
    ldh [$3f], a
    pop af
    sbc a
    ldh [$3f], a
    push af
    sbc a
    ldh [$3f], a
    rst $38
    adc a
    ldh [$3f], a
    rst $38
    add b
    rst $38
    rra
    rst $28
    sbc b
    rst $38
    nop
    cp $9b
    cp a
    ld h, b
    rst $38
    sbc e
    xor $77
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $38
    sbc e
    rst $38
    ld [hl], a
    rst $28
    sbc e
    rst $38
    ld [hl], a
    db $fd
    add e
    rst $38
    ld [hl], a
    cp a
    ret nz

    cp a
    ld [hl], a
    rst $00
    ld hl, sp-$15
    rla
    jr c, jr_0c8_4fe5

    db $fd
    inc bc
    rlca
    rlca
    rra
    ldh [rP1], a
    nop
    db $e3
    db $fc
    nop
    nop
    inc e
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ldh a, [rIE]
    ld bc, $12fd
    ld l, e
    sub l
    ld sp, hl
    ld d, $23
    db $dd
    ld hl, sp-$69
    inc bc
    db $fd
    ldh a, [$9f]
    ld bc, $f0ff
    sbc a
    ld bc, $f0ff
    sbc a
    ld bc, $f0ff
    sbc a
    ld bc, $f0ff

jr_0c8_4fe5:
    sbc a
    ld bc, $f0ff
    sbc a
    ld bc, $f0ff
    sbc a
    ld bc, $f0ff
    sbc a
    inc bc
    rst $38
    ld hl, sp-$61
    ld bc, $f0ff
    sbc a
    ld bc, $f8ff
    sbc a
    inc bc
    rst $38
    ldh a, [$9f]
    ld bc, $f8ff
    sbc a
    inc bc
    rst $38
    ld hl, sp-$61
    ld bc, $f0ff
    sbc a
    inc bc
    rst $38
    ld hl, sp-$61
    rlca
    rst $38
    ld hl, sp-$61
    inc bc
    rst $38
    db $fc
    sbc a
    rlca
    rst $38
    cp $9f
    dec bc
    rst $38
    db $fd
    sbc a
    rla
    rst $38
    cp $1f
    xor e
    rst $38
    db $fd
    rra
    ld e, a
    rst $38
    ld a, a
    sbc a
    xor e
    rst $38
    rst $38
    sbc a
    rst $18
    rst $38
    rst $38
    sbc a
    cp a
    rst $38
    rst $38
    sbc a
    ld e, a
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    ld a, a
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    ld a, a
    sbc a
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
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
    add b
    ld hl, sp+$0f
    sub $a9
    cp a
    ld c, b
    call nz, $9fbb
    ld l, b
    ret nz

    cp a
    rra
    jp hl


    add b
    rst $38
    rrca
    ld sp, hl
    add b
    rst $38
    rrca
    ld sp, hl
    add b
    rst $38
    rrca
    ld sp, hl
    add b
    rst $38
    rrca
    ld sp, hl
    add b
    rst $38
    rrca
    ld sp, hl
    add b
    rst $38
    rrca
    ld sp, hl
    add b
    rst $38
    rrca
    ld sp, hl
    ret nz

    rst $38
    rrca
    ld sp, hl
    add b
    rst $38
    rra
    ld sp, hl
    add b
    rst $38
    rrca
    ld sp, hl
    ret nz

    rst $38
    rra
    ld sp, hl
    add b
    rst $38
    rrca
    ld sp, hl
    ret nz

    rst $38
    rra
    ld sp, hl
    add b
    rst $38
    rra
    ld sp, hl
    ret nz

    rst $38
    rrca
    ld sp, hl
    ldh [rIE], a
    rra
    ld sp, hl
    ret nz

    rst $38
    rra
    ld sp, hl
    ldh [rIE], a
    ccf
    ld sp, hl
    ret nc

    rst $38
    ld a, a
    ld sp, hl
    add sp, -$01
    cp a
    ld sp, hl
    push de
    rst $38
    ld a, a
    ld hl, sp-$06
    rst $38
    cp a
    ld hl, sp-$2b
    rst $38
    rst $38
    ld sp, hl
    ei
    rst $38
    rst $38
    ld sp, hl
    db $fd
    rst $38
    rst $38
    ld sp, hl
    ld a, [$ffff]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $ff
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    db $fc
    ei
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rrca
    rst $38
    nop
    nop
    ldh a, [rIF]
    ldh a, [$f0]
    rst $38
    ret nz

    ld c, $fe
    rst $38
    db $fc
    pop af
    rrca
    rst $30
    db $fc
    rst $38
    pop hl
    rst $30
    db $fc
    rst $38
    ld sp, hl
    rst $20
    db $fc
    rst $38
    ld sp, hl
    rst $30
    db $fc
    rst $28
    ld sp, hl
    rst $20
    db $fc
    rst $08
    ld sp, hl
    rst $00
    db $fc
    rst $28
    ld sp, hl
    rst $20
    db $fc
    rst $08
    ld sp, hl
    rst $00
    db $fc
    adc a
    ld sp, hl
    rst $00
    db $fc
    rst $08
    ld sp, hl
    add a
    db $fc
    adc a
    ld sp, hl
    rlca
    db $fc
    adc a
    ld sp, hl
    rlca
    db $fc
    adc a
    ld sp, hl
    rlca
    db $fc
    adc a
    ld sp, hl
    rlca
    db $fc
    adc a
    ld sp, hl
    rlca
    db $fc
    adc a
    ld sp, hl
    rlca
    db $fc
    adc a
    ld sp, hl
    rlca
    db $fc
    adc a
    ld sp, hl
    rlca
    db $fc
    adc a
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $eeff
    rst $38
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $ff
    reti


    rst $38
    xor $b7
    reti


    db $dd
    xor $ff
    ld bc, $c0bf
    ld sp, hl
    rlca
    rst $38
    nop
    rlca
    rst $38
    ldh [$1f], a
    ld hl, sp-$08
    rra
    rst $38
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
    ld bc, $0000
    nop
    inc bc
    ld bc, $0000
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $03
    nop
    nop
    dec b
    rlca
    nop
    nop
    rrca
    rlca
    nop
    nop
    ld c, $0f
    nop
    nop
    dec c
    ld c, $00
    nop
    dec bc
    inc c
    nop
    nop
    rrca
    ld [$0000], sp
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc c
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld b, e
    ld a, h
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    inc a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld e, a
    nop
    nop
    rst $38
    sbc a
    ld bc, $ff01
    nop
    ld bc, $ff01
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
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
    ld a, [hl]
    ld a, a
    nop
    nop
    ld bc, $8001
    add b
    nop
    nop
    add b
    add b

jr_0c8_52c6:
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
    ldh [$60], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    and b
    ld h, b
    nop
    nop
    jr nz, jr_0c8_52c6

    nop
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
    ret nz

    ret nz

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
    inc b
    nop
    nop
    inc b
    db $fc

jr_0c8_5306:
    nop
    nop
    inc c
    db $fc
    nop
    nop
    jr jr_0c8_5306

    nop
    nop
    ccf
    rst $38
    add b
    add b
    rst $38
    ld sp, hl
    add b
    add b
    rst $38
    di
    add b
    add b
    rst $38
    di
    add b
    add b
    rst $38
    rlca
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    ld e, $fe
    nop
    nop
    ld e, $fe
    nop
    nop
    ld e, $fe
    nop
    nop
    ld e, $fe
    nop
    nop
    ld e, $fe
    nop
    nop
    ld e, $fe

jr_0c8_5372:
    nop
    nop
    inc e
    db $fc
    nop
    nop
    jr jr_0c8_5372

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    ld bc, $0000
    inc bc
    ld bc, $0000
    ld bc, $0003
    nop
    rlca
    rlca
    nop
    nop
    rrca
    dec c
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    dec bc
    dec c
    nop
    nop
    add hl, bc
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
    ld c, $0f
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
    ld h, b
    nop
    nop
    ld a, b
    ld b, a
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
    jr nc, jr_0c8_540f

    nop
    nop
    inc a
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld e, a
    nop
    nop
    rst $38
    rst $08
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
    ret nz

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

jr_0c8_540f:
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
    ld h, b
    ld a, a
    nop
    nop
    jr nz, jr_0c8_546f

    nop
    nop
    jr nz, jr_0c8_5473

    nop
    nop
    jr nz, jr_0c8_5477

    nop
    nop
    jr nz, jr_0c8_547b

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

jr_0c8_5446:
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
    nop
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    and b
    ld h, b
    nop
    nop
    jr nz, jr_0c8_5446

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a

jr_0c8_546f:
    nop
    ldh [$e0], a
    nop

jr_0c8_5473:
    nop
    ret nz

    ret nz

    nop

jr_0c8_5477:
    nop
    ld hl, sp-$08
    nop

jr_0c8_547b:
    nop
    db $fc
    inc c
    nop
    nop
    inc a
    call nz, RST_00
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc

jr_0c8_548a:
    nop
    nop
    ld [$00f8], sp
    nop
    jr jr_0c8_548a

    nop
    nop
    inc a
    db $fc
    nop
    nop
    db $fc
    db $f4
    nop
    nop
    cp $e6
    nop
    nop
    cp $02
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
    ld b, $fe
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
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, h
    nop
    nop
    ld e, a
    ld a, b
    nop
    nop
    ld b, a
    ld h, a
    nop
    nop
    ld b, h
    ld h, [hl]
    rlca
    rlca
    call nz, $ffe6
    ld hl, sp-$0c
    ld [hl], $ff
    ldh [$fc], a
    rrca
    sbc a
    ret c

    db $fd
    ccf
    add a
    rst $38
    call c, $bcfe
    cp $04
    ld b, $44
    ld h, [hl]
    inc b
    ld b, $24
    ld [hl], $04
    ld b, $14
    ld e, $04
    rst $38
    inc c
    rrca
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
    ccf
    inc a
    rst $38
    rra
    ccf
    ccf
    pop af
    di
    ld [hl+], a
    inc sp
    ld hl, $2263
    inc sp
    ld hl, $2263
    inc sp
    ld hl, $fa63
    ei
    ld hl, $fe63
    rlca
    ld hl, $fe63
    rra
    ld hl, $e263
    di
    ld hl, $2263
    inc sp
    ld hl, $2263
    inc sp
    ld hl, $2263
    inc sp
    ld hl, $22e3
    rst $38
    pop hl
    di
    cp $ff
    ld de, $021b
    inc bc
    add hl, bc
    rrca
    ld [bc], a
    inc bc
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $021f
    ld a, a
    rra
    rst $38
    ld a, a
    rst $38
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rst $38
    ldh a, [$fc]
    inc a
    rst $38
    rst $38
    db $fc
    db $fc
    add h
    add $44
    call z, $c684
    ld b, h
    call z, $c684
    ld b, h
    call z, $c684
    ld e, a
    rst $18
    add h
    add $7f
    ldh [$84], a
    add $7f
    ld hl, sp-$7c
    add $47
    rst $08
    add h
    add $44
    call z, $c684
    ld b, h
    call z, $c784
    ld b, h
    db $ec
    add a
    rst $08
    ld h, b
    rst $38
    adc b
    ret c

    ld e, a
    rst $18
    sub b
    ldh a, [rLCDC]
    ret nz

    add b
    ldh [rLCDC], a
    ret nz

    ldh [$fe], a
    ld b, b
    ret nz

    ld e, $1f
    ld b, b
    ldh [rSB], a
    ld bc, $ffe0
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $3e
    nop
    nop
    ld a, [$001e]
    nop
    ld [c], a
    and $00
    nop
    inc hl
    ld h, a
    ldh a, [$f0]
    cpl
    ld l, h
    rst $38
    rrca
    ccf
    ld [hl], b
    rst $38
    rlca
    ccf
    ld a, h
    ld sp, hl
    dec de
    inc hl
    di
    pop hl
    db $e3
    or e
    rst $38
    and c
    db $e3
    cpl
    ld l, a
    ld hl, $20f3
    ld h, b
    or c
    rst $38
    jr nz, jr_0c8_584a

    dec l
    ld l, a

jr_0c8_57ec:
    jr nz, jr_0c8_584e

    ld [hl+], a
    ld h, [hl]
    ld h, b
    ldh a, [rNR50]
    ld l, h
    ldh a, [rIE]
    jr z, jr_0c8_5870

    rrca
    rrca
    jr nc, jr_0c8_57ec

    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rst $38
    cp $ff
    db $fc
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, c
    rst $38
    sbc a
    adc a
    ld sp, hl
    ldh a, [$9f]
    rrca
    ld sp, hl
    ldh a, [$9f]
    rrca
    ld sp, hl
    ldh a, [$9f]
    ccf
    ld sp, hl
    rst $38
    sbc a
    rst $38
    ret


    rst $38
    sub b
    rst $38
    add hl, sp
    rst $38
    sbc a
    rst $08
    ld sp, hl
    ldh a, [$9f]
    rrca
    ld sp, hl
    ldh a, [$9f]
    rrca
    ld sp, hl
    ldh a, [$9f]
    ccf
    ld sp, hl
    rst $38
    sbc a
    rst $38
    ret


    rst $38
    sub b
    rst $38
    add hl, sp
    rst $38
    sbc a

jr_0c8_584a:
    rst $08
    ld sp, hl
    ldh a, [$9f]

jr_0c8_584e:
    rrca
    ld sp, hl
    ldh a, [$9f]
    rrca
    ld sp, hl
    rst $38
    sbc a
    rst $38
    ld sp, hl
    rst $38
    sub b
    rst $38
    add hl, bc
    rst $38
    sbc a
    rst $38
    ld sp, hl
    ldh a, [$9f]
    rrca
    ld sp, hl
    ldh a, [$9f]
    rrca
    ld sp, hl
    rst $38
    sbc a
    rst $38
    ld sp, hl
    rst $38
    sub b
    rst $38
    add hl, bc

jr_0c8_5870:
    rst $38
    sbc a
    rst $38
    ld sp, hl
    ldh a, [$9f]
    rrca
    ld sp, hl
    ldh a, [$9f]
    rrca
    ld sp, hl
    rst $38
    sbc a
    rst $38
    ld sp, hl
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    sbc [hl]
    rst $38
    ld a, c
    rst $38
    sbc [hl]
    rst $38
    ld a, c
    rst $38
    sbc [hl]
    rst $38
    ld a, c
    rst $38
    sbc [hl]
    rst $38
    ld a, c
    rst $38
    sbc [hl]
    rst $38
    ld a, c
    rst $38
    sbc [hl]
    rst $38
    ld a, c
    rst $38
    sbc [hl]
    rst $38
    ld a, c
    rst $38
    sbc [hl]
    rst $38
    ld a, c
    rst $38
    sbc [hl]
    rst $38
    ld a, c
    rst $38
    add b
    rst $38
    ld a, c
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
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
    db $fc
    db $fc
    rst $38
    rst $38
    cp $0e
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $08
    ldh [rIE], a
    ld a, a
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    rra
    rst $38
    rst $38
    rst $08
    rst $38
    ldh [rIE], a
    ld c, a
    rst $38
    rra
    rst $38
    rst $08
    ldh [rIE], a
    ld a, a
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    rra
    rst $38
    rst $38
    rst $08
    rst $38
    ldh [rIE], a
    ld c, a
    rst $38
    rra
    rst $38
    rst $08
    ldh [rIE], a
    ld a, a
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    nop
    rst $38
    ld a, a
    rst $08
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    ld bc, $cfff
    rst $38
    nop
    rst $38
    rrca
    rst $38
    db $fc
    cp $0e
    inc bc
    inc bc
    ld hl, sp-$08
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    sbc a
    rst $38
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    rst $38
    sbc a
    rst $38
    db $fc
    rst $38
    sub b
    rst $38
    inc b
    rst $38
    sbc a
    rst $38
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    rst $38
    sbc a
    rst $38
    db $fc
    rst $38
    sub b
    rst $38
    inc b
    rst $38
    sbc a
    rst $38
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    rst $38
    sbc a
    rst $38
    db $fc
    rst $38
    sub b
    rst $38
    inc b
    rst $38
    sbc a
    rst $38
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    rst $38
    sbc a
    rst $38
    db $fc
    rst $38
    sub b
    rst $38
    inc b
    rst $38
    sbc a
    rst $38
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    ldh a, [$9f]
    rlca
    db $fc
    rst $38
    sbc a
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $20
    add b
    rst $38
    ccf
    rst $20
    add b
    rst $38
    ccf
    rst $20
    add b
    rst $38
    ccf
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    add b
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    rst $20
    add b
    rst $38
    ccf
    rst $20
    add b
    rst $38
    ccf
    rst $20
    add b
    rst $38
    ccf
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    add b
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    rst $20
    add b
    rst $38
    ccf
    rst $20
    add b
    rst $38
    ccf
    rst $20
    add b
    rst $38
    ccf
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    add b
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    rst $20
    add b
    rst $38
    ccf
    rst $20
    add b
    rst $38
    ccf
    rst $20
    add b
    rst $38
    ccf
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    add b
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    rst $20
    add b
    rst $38
    ccf
    rst $20
    add b
    rst $38
    ccf
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rra
    rst $38
    rst $38
    jr jr_0c8_5b65

    ld a, a
    rst $38
    ld e, $1f
    ccf
    rst $38
    rra
    rra
    rrca
    rst $38
    rra
    rra
    add a
    rst $38
    rra
    rra
    ret nz

    rst $38
    dec de
    rra
    ldh [rIE], a
    dec de
    rra
    pop hl
    cp $1b
    rra
    ldh [rIE], a
    dec de

jr_0c8_5b65:
    rra
    ldh [rIE], a
    add hl, de
    rra
    ldh [rIE], a
    add hl, de
    rra
    ldh [rIE], a
    jr jr_0c8_5b91

    ldh [rIE], a
    jr @+$21

    ld h, b
    sbc a
    add hl, de
    ld e, $e0
    rra
    add hl, de
    ld e, $f0
    rra
    rra
    inc e
    ldh a, [$1f]
    rra
    inc e
    ldh a, [$1f]
    dec de
    ld a, [de]
    ldh a, [$1f]
    dec de
    ld a, [de]
    ldh a, [$1f]
    add hl, de

jr_0c8_5b91:
    add hl, de
    ldh a, [$1f]
    ld bc, $f001
    rra
    nop
    nop
    ldh a, [$9f]
    nop
    nop
    ldh a, [$9f]
    nop
    nop
    ld [hl], b
    ld e, a
    nop
    nop
    ld [hl], b
    ld e, a
    nop
    nop
    jr nc, jr_0c8_5beb

    nop
    nop
    jr nc, jr_0c8_5bec

    nop
    nop
    db $10
    inc e
    nop
    nop
    db $10
    inc e
    nop
    nop
    db $10
    inc e
    nop
    nop
    db $10
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c8_5beb:
    nop

jr_0c8_5bec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ldh [$fe], a
    nop
    nop
    ld hl, sp-$01
    nop
    add b
    cp $ff

jr_0c8_5c0a:
    nop
    ldh [rIE], a
    rst $38

jr_0c8_5c0e:
    add b
    ld hl, sp-$01
    rst $38
    ldh [$fe], a
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $ff
    nop
    ld hl, sp+$06
    ld a, a
    add b
    ld hl, sp+$06
    rra
    ldh [$f8], a
    ld b, $0f
    ldh a, [$f8]
    ld b, $07
    ld hl, sp-$08
    ld b, $03
    db $fc

jr_0c8_5c32:
    ld hl, sp+$06
    ld bc, $f8fe
    ld b, $00
    rst $38
    ld hl, sp+$06
    nop
    rst $38
    ld a, b
    add [hl]
    nop
    rst $38
    jr c, jr_0c8_5c0a

    nop
    rst $38
    jr c, jr_0c8_5c0e

    nop
    rst $38
    jr jr_0c8_5c32

    nop
    rst $38
    jr @-$18

    nop
    rst $38
    ld [$00f6], sp
    rst $38
    ld [$00f6], sp
    rst $38
    ld [$00f6], sp
    rst $38
    ld [$00f6], sp
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $ff
    rst $38
    ld hl, sp-$02
    nop
    nop
    ld [$000e], sp
    nop
    ld [$000e], sp
    nop
    ld [$000e], sp
    nop
    ld [$000e], sp
    nop
    ld [$000e], sp
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    ld h, a
    cp a
    ret nz

    ei
    ld h, a
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    cp a
    ret nz

    ei
    rlca
    add b
    rst $38
    ei
    rlca
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    rst $38
    rlca
    rst $38
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    sbc b
    rst $30
    rrca
    ld a, a
    sbc b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    ld a, a
    add b
    rst $30
    rrca
    rlca
    ld hl, sp-$09
    rrca
    ld hl, sp-$01
    ld b, $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
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

Call_0c8_5edc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rst $38
    cp $fe
    inc bc
    rst $38
    rst $38
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
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
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
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    rst $38
    ld b, $07
    ld a, a
    rst $38
    inc b
    rlca
    rst $38
    ret nz

    inc b
    rlca
    rst $38
    ret nz

    inc b
    rlca
    rst $38
    rst $38
    inc b
    rlca
    rst $38
    ret nz

    inc b
    rlca
    rst $38
    ret nz

    inc c
    rrca
    rst $38
    rst $38
    add hl, bc
    rrca
    rst $38
    add b
    add hl, bc
    rrca
    rst $38
    add b
    add hl, bc
    rrca
    rst $38
    rst $38
    add hl, bc
    rrca
    rst $38
    rst $38
    ld [$000f], sp
    rst $38
    ld [$000f], sp
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    inc c
    rrca
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    rst $38
    rst $38
    ld b, $07
    ld a, a
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc bc
    inc bc
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c8_6090:
    nop
    nop
    nop
    nop

jr_0c8_6094:
    nop
    nop
    nop
    nop

jr_0c8_6098:
    rst $38
    rst $38
    ret nz

    ret nz

jr_0c8_609c:
    nop
    rst $38
    ld b, b
    ret nz

jr_0c8_60a0:
    nop
    rst $38
    ld b, b
    ret nz

    cp $ff
    ld b, b
    ret nz

    cp $ff
    ld h, b
    ldh [rIE], a
    inc bc
    jr nz, jr_0c8_6090

    rst $38
    inc bc
    jr nz, jr_0c8_6094

jr_0c8_60b4:
    rst $38
    rst $38
    jr nz, jr_0c8_6098

    rst $38
    inc bc
    jr nz, jr_0c8_609c

    rst $38
    inc bc
    jr nz, jr_0c8_60a0

    rst $38
    rst $38
    jr nc, jr_0c8_60b4

    rst $38
    ld bc, $f090

jr_0c8_60c8:
    rst $38
    ld bc, $f090

jr_0c8_60cc:
    rst $38
    rst $38
    sub b
    ldh a, [rIE]
    rst $38
    sub b
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rP1]
    rst $38
    db $10
    ldh a, [rIE]
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    jr nc, @-$0e

    nop
    rst $38
    jr nz, jr_0c8_60c8

    rst $38
    rst $38
    jr nz, jr_0c8_60cc

    cp $ff
    ld h, b
    ldh [$fe], a
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0c8_6adc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
