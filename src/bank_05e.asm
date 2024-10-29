SECTION "ROM Bank $05e", ROMX[$4000], BANK[$5e]

    inc bc
    rst $30
    ld sp, hl
    nop
    ld [c], a
    inc b
    jp nz, Jump_000_2004

    nop
    ld hl, $0002
    ld [bc], a
    nop
    inc bc
    nop
    set 7, [hl]
    rst $38
    rlca
    ret nz

    ld a, [hl]
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
    add sp, $74
    rst $38
    nop
    ld e, c
    rst $38
    nop
    add a
    nop
    rst $38
    nop
    cp $00
    ld [$2bf7], sp
    call nc, $c33c
    jr nc, jr_05e_4086

    inc l
    ld d, c
    ld [hl], h
    adc e
    ldh a, [rTIMA]
    add sp, -$2a
    db $fc
    add e
    rst $38
    ld [hl], d
    rst $38
    ld a, [bc]
    cp e
    ld b, h
    db $fc
    inc de
    ld h, b
    sbc b
    nop
    add b
    nop
    adc b
    ret nz

    jp nc, RST_00

    nop
    nop
    and b
    and h
    add b
    add b
    ret nz

    pop bc
    ldh [$e7], a
    ld h, b
    ld h, b

Call_05e_4060:
    ret nz

    inc h
    db $e4
    ld a, [de]
    ld b, b
    sbc a
    adc h
    ld [hl], d
    sbc $21
    nop
    rst $38
    ld b, b
    and a
    inc bc
    and b
    ret c

    dec a
    nop
    db $db
    add b
    ld l, l
    add b
    ld e, l
    adc h
    ld [hl], b
    inc b
    sbc d
    inc c
    sub d
    inc e
    ld [c], a
    call c, $9420

jr_05e_4083:
    ld l, a
    or [hl]
    ld e, h

jr_05e_4086:
    or $0d
    rst $38
    rst $38
    rst $38
    ld [$0000], sp
    nop
    rst $38
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rNR22]
    add sp, $07
    ld hl, sp+$00
    rst $38
    ld b, b
    cp a
    rst $38
    nop
    rst $38
    rst $38
    cpl
    pop de
    ld bc, $03fe
    db $fc
    ld bc, $00fe
    rst $28
    nop

jr_05e_40b1:
    rst $18
    nop
    cp a
    nop
    cp a
    nop

jr_05e_40b7:
    rst $38
    ret nz

    ccf
    jr c, jr_05e_4083

    rst $38
    add hl, hl
    nop
    sub [hl]
    nop
    ld a, e
    ld a, a
    nop
    ld a, a
    add b
    ld [hl], l
    adc d

jr_05e_40c8:
    ld sp, $a0ce
    ld e, a
    add b

Call_05e_40cd:
    ld a, a
    add l
    ld a, d
    nop
    ld d, b
    nop
    ld b, h
    or a
    or a
    add h
    ld a, e
    nop
    cp $00
    cp a
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_05e_40b1

    ld h, h
    sbc e
    ret nz

    add hl, sp
    ld h, b
    sbc l
    nop
    or b
    cp a
    cp a
    add b
    ld a, a
    jr c, jr_05e_40b7

    ret z

    dec [hl]
    jr z, jr_05e_40c8

    nop
    cp $80
    ld [hl], a
    sub b
    ld h, l
    nop
    or $40
    or h
    dec de
    dec de
    rst $38
    ldh a, [rSC]
    db $fd
    rst $28
    db $10
    rst $18

jr_05e_4107:
    jr nz, jr_05e_4107

    ld bc, $11ee
    cp $01
    pop af
    ld c, $01
    ld b, a
    nop
    ld e, [hl]
    rst $38
    nop
    add b
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
    stop
    ld [$ff00], sp
    or d
    rst $38
    ld e, a
    ret nz

    ld e, $00
    adc h
    nop
    add [hl]
    ld b, b
    sbc [hl]
    nop
    ld h, b
    sbc a
    ldh a, [$8f]
    ret nc

    ld a, [hl+]
    ret nz

    ld h, $00
    ld a, [c]
    inc h
    db $db
    inc a
    ld b, e

jr_05e_413e:
    rra
    ldh [$1f], a
    ld [c], a
    inc b
    ei
    ldh [$57], a
    ld hl, sp+$06
    ld a, [de]
    push hl
    rst $18
    ld h, $59
    and [hl]
    ld b, b
    or e
    ldh [$e0], a
    ret nz

    ret nc

    nop
    db $db
    nop
    ld hl, $f300
    nop
    add $00
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    add b
    ldh a, [$f0]
    ldh a, [$f0]
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld [hl-], a
    ld [hl-], a

jr_05e_4176:
    or h
    or h
    sub b
    sub c
    db $10
    db $10
    jr c, jr_05e_41b6

    jr nz, jr_05e_41a0

    nop
    sbc $00
    call nz, $ba00
    or [hl]
    ld c, c
    rst $38
    ld [hl], a
    rst $38
    ld e, [hl]
    nop
    nop
    jr jr_05e_4176

    db $fc
    db $10
    cp [hl]
    ld b, c
    cp a
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    daa
    ret c

jr_05e_41a0:
    daa
    ret c

    rst $38
    inc b
    rst $38
    pop af
    add b
    ld a, [hl]
    ld e, $e1
    adc e
    inc [hl]
    and a
    jr jr_05e_413e

    ld [hl], b
    add a
    ld a, b
    sbc a
    ld h, b
    add e
    ld a, h

jr_05e_41b6:
    pop bc
    ld a, $c1
    xor [hl]
    ei
    add h
    rst $18
    xor a
    nop
    ld [bc], a
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05e_41c9:
    nop
    rst $38
    nop
    rst $38
    ld bc, $08ff
    rst $38
    nop
    rst $38
    ld c, $ff
    cp $30
    rst $18
    ld sp, $30ce
    rst $08
    dec d
    ld [$e718], a
    jr jr_05e_41c9

    dec bc
    db $f4
    add hl, de
    xor $98
    ld l, a
    ei
    inc e
    pop af
    ld a, [$5d00]
    rra
    ldh [$d6], a
    nop
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    db $ed
    nop
    nop
    ld [bc], a
    call c, $82ff
    ld a, l
    or b
    ld c, h
    sub c
    ld l, [hl]
    ld b, c
    or [hl]
    inc bc
    cp c
    rra
    ret nz

    or l
    ld e, e
    db $dd
    ld h, $80
    rst $38
    ld a, a
    nop
    rst $38
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
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    adc d
    rlca
    ld hl, sp-$01
    nop
    rst $00
    jr c, @-$57

    ld e, b
    daa
    ret c

    daa
    ret c

    add a
    jr z, @+$07

    jp c, $6b04

    ld bc, $0ebe
    pop af
    ld a, [de]
    db $e4
    cp h

Jump_05e_423f:
    ld e, e
    ei
    inc [hl]
    ld l, a
    sub h
    ccf
    pop bc
    nop
    dec b
    nop
    ld bc, $8201
    ld [bc], a
    ld bc, $4000
    ld h, l
    ld h, l
    db $10
    inc e
    nop
    rst $18
    nop
    rrca
    nop
    rst $38
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
    ld a, h
    ld bc, $40e9
    ld b, c
    add b
    add e
    add b
    sbc b
    ld bc, $0051
    cp b
    sub b
    sub h
    ld [bc], a
    ld [bc], a
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
    cp d
    nop
    jp hl


    ld b, $f9
    rst $38
    ld a, e
    db $f4
    dec bc
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    sub d
    sub d
    ldh [$e0], a
    add b
    nop
    add a
    ld c, b
    rst $38
    inc b
    db $10
    xor e
    add b
    ld a, e
    nop
    call nc, $cc00
    nop
    db $db
    nop
    rst $18
    nop
    rst $30
    nop
    cp e
    add b
    ld a, l
    ldh a, [$0d]
    cp $01
    rst $38

Call_05e_42bd:
    nop
    nop
    daa
    rla
    add sp, -$0b
    ld a, [bc]
    or $09
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    rst $38
    add b
    di
    inc c
    nop
    rst $00
    ld [hl], b
    adc l
    ldh [rNR24], a
    ldh [rNR24], a
    ldh [rNR33], a
    ret nz

    ld a, [hl-]
    ld [hl], b
    adc a
    ld a, [hl-]
    push bc
    ccf
    ret nz

    rst $38
    inc d
    ld b, b
    cp [hl]
    nop
    ld hl, sp-$08
    inc b
    ldh [rNR34], a
    ldh a, [$0e]
    ret nz

    ld [hl], $c0
    ld a, $c0
    ccf
    and d
    ld e, l
    rst $38
    sbc l
    ldh a, [$0e]
    nop
    ld b, b
    nop
    ld a, [$4600]
    nop
    call c, Call_000_2600
    nop
    ld a, [c]
    nop
    rst $38
    rst $38
    add b
    inc b
    rst $38
    rst $38
    nop
    and e
    ld [$0c00], sp
    nop
    inc b
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $ff10
    ld bc, $00c0
    ld [bc], a
    jr nz, jr_05e_436d

    nop
    ld b, e
    nop
    ld b, d
    jr nz, jr_05e_4370

    rst $38
    ld b, c
    ld sp, hl

Call_05e_4333:
    ld b, [hl]
    db $10
    jp z, $f800

    nop
    sub b
    nop
    cp a
    nop
    ld a, a
    ld bc, $016e
    and $e0
    rra
    ldh [rNR33], a
    nop
    ld de, $8800
    nop
    nop
    nop
    and b
    nop
    ld [hl], b
    ldh [$e0], a
    db $fc
    db $fc
    ccf
    ccf
    rra
    rst $18
    rrca
    rst $38
    ld [$00fb], sp
    and $00
    xor $00
    ldh [$30], a
    jr nc, @-$3e

    call c, $3300
    nop
    sbc a
    nop
    ld a, l
    nop

jr_05e_436d:
    ld l, c
    nop
    ld l, e

jr_05e_4370:
    adc d
    dec [hl]
    dec bc
    inc d
    dec bc
    ld [hl], h
    ld a, [bc]
    ld b, l
    ld a, [bc]
    ld b, l
    ld a, [bc]
    dec b
    inc c
    ld b, e
    dec b
    ld c, d
    rlca
    ld c, e
    ld b, [hl]
    adc a
    call nz, $d90f
    ld h, $91
    ld b, d
    ld bc, $0082
    inc bc
    inc bc
    nop
    ld bc, $010a
    ld b, $01
    ld [bc], a
    ld bc, $0103
    dec bc
    nop
    dec bc
    nop
    add [hl]
    inc b
    dec b
    inc b
    ld a, [bc]
    cp b
    ld b, c
    ldh a, [$cc]
    nop
    inc b
    nop
    dec bc
    nop
    ld b, $00
    ld e, e
    nop
    inc sp
    nop
    ld c, e
    ld [bc], a
    ld bc, $3300
    inc b
    ld b, c
    inc b
    pop hl
    db $e4
    add hl, de
    ld hl, sp+$05
    add b
    ld h, e
    ret nz

jr_05e_43c1:
    dec sp
    ldh a, [$09]
    sub b
    ld l, e
    and b
    ld e, c
    add c
    ld a, b
    ret nz

    ccf
    ret z

    ld [hl-], a
    ldh a, [$0e]
    ld hl, sp+$06
    db $fc
    nop
    db $f4
    ld [$2400], sp
    nop
    sub [hl]
    nop
    ld [hl], $00
    call c, Call_05e_7600
    ld [bc], a
    ld [bc], a
    ld a, a
    ld a, a
    sub e
    sub e
    cp $fe
    cp $fe
    add b
    add a
    nop
    db $ed
    nop
    db $dd
    nop
    ld a, a
    nop
    ccf
    nop
    inc bc
    nop
    adc l
    nop
    adc e
    nop
    nop
    rst $38

jr_05e_43fd:
    rst $38
    ld bc, $0001
    ld h, d
    nop
    ld bc, $1100
    nop
    ld b, $00
    stop
    push bc
    ld bc, $ff7e
    inc b
    ldh a, [$0e]
    nop
    nop
    nop
    dec l
    nop
    dec hl
    nop
    sbc l
    nop
    push de
    nop
    ld [$5b80], a
    adc d
    sub l
    rst $38
    cp a
    or b
    ld c, a
    ldh [rNR31], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld sp, hl
    ld b, $f8
    add e
    jr nz, jr_05e_43c1

    nop
    add hl, bc
    nop
    add e
    ld bc, $0302
    or l
    inc bc
    db $fc
    add e
    ld a, [hl]
    ldh a, [$4e]
    nop
    db $ed
    nop
    add sp, $00
    nop
    nop
    ld a, [de]
    nop
    ld a, [hl-]
    nop
    ld hl, sp+$00
    cp b
    jr nc, @+$32

    ld c, b
    ld c, c
    ld a, h
    ld a, l
    db $fd
    db $fd
    add c
    adc c
    ld b, b
    ld e, e
    nop
    ccf
    nop
    ld a, c
    nop
    rlca
    nop
    cpl
    nop
    ld h, e
    add b
    and c
    nop
    rrca
    nop
    ld a, l
    nop
    ld l, d
    nop
    ld a, [hl]
    adc b
    dec h
    adc b
    rlca
    pop bc
    ld h, $c1
    jr z, jr_05e_43fd

    jr nc, jr_05e_4487

    ld h, b
    ld d, h
    ld b, b
    push hl
    adc c
    dec de
    and $1f
    add sp, -$61
    db $e4
    sbc a

jr_05e_4487:
    ld l, l
    cp a
    ret


    rst $18
    ld hl, $20df
    rst $38
    jr nz, jr_05e_44a1

    ld b, l
    ld [$8844], sp
    add h
    add b
    ld [bc], a
    add b
    dec b
    ld [$8916], sp
    ld d, $88
    ld [hl+], a
    ld a, a

jr_05e_44a1:
    and h
    ld l, a
    or b
    ld a, a
    and b
    ld a, a
    add b
    cp a
    ld h, b
    cp a
    ld l, d
    ld a, e
    and h
    ld [hl], e
    inc a
    inc sp
    ld a, h
    scf
    add sp, $37
    ld l, b
    scf
    ld l, c
    ccf
    ld hl, $643b
    ld a, a
    nop
    ccf

Jump_05e_44bf:
    ret z

    cp a
    ld c, b
    scf
    sbc b
    ld d, $e9
    scf
    ret z

    scf
    call z, $8536
    scf
    inc c
    scf
    ld c, $1f
    ld h, d
    ld e, a
    and c
    ld e, a
    and b
    rla
    ret


    rla
    jp hl


    rla
    ret c

    rla
    ret z

    inc de
    db $ec
    ld e, c
    and [hl]
    add hl, hl
    sub $4b
    or h
    ld a, e
    add h
    ld a, e
    add h
    ld e, a
    and c
    ld a, a
    add c
    ld a, a
    add e
    ld e, a
    dec h
    ld a, a
    ld b, $7f
    ld [bc], a
    ccf
    jp nz, $c23f

    cpl
    jp nc, Jump_05e_423f

    ld c, $77
    rra
    ld b, [hl]
    ld e, $63
    rra
    ld h, d
    rla
    adc $17
    adc $07
    cp $86
    add hl, sp
    inc b
    ld a, c
    inc c
    inc hl
    inc b
    dec sp
    inc c
    dec sp

jr_05e_4516:
    ld l, $51
    inc c
    ld a, e
    inc l
    ld e, e
    inc e
    xor e
    jr jr_05e_4548

    call c, $dc21
    adc d
    inc e
    ld l, d
    ld e, h
    cp d
    call c, Call_05e_7e3b
    sub c
    ld a, h
    sbc e
    inc b
    ei
    nop
    rst $30
    nop
    sub d
    nop
    or c
    ret nz

    ld sp, $4480
    sub b
    db $ec
    ld [$fef7], sp
    ld h, c

jr_05e_4540:
    sub $d6
    add c
    and c
    add c
    add c
    reti


    reti


jr_05e_4548:
    add hl, bc
    adc c
    jr nc, @-$4e

    nop
    nop
    nop
    nop
    nop
    nop
    ld [$7c08], sp
    ld a, h
    cp $ff
    ld hl, sp-$05
    ld a, b
    rst $38
    jr c, jr_05e_4516

    ld a, $fe
    inc c
    db $ec
    add hl, bc
    ld sp, hl
    inc de
    db $d3
    jr jr_05e_4540

    jr nc, @-$0b

    jr nc, @-$03

    jr nc, @+$01

    ld [hl], b
    rst $38
    ld d, b
    cp a
    ld hl, sp+$3f
    cp h
    ld a, a
    inc l
    rst $38
    rra
    rst $38
    jr nz, @+$01

    cpl
    rst $38
    rst $38
    ccf
    ld d, $7f
    ld [hl-], a
    ld a, a
    inc hl
    ld a, a
    rra
    ld a, a
    rst $18
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rra
    cp a
    ld a, a
    cp a
    sbc h
    ld a, a
    sub b
    ld a, a
    call c, $de3f
    ccf
    sbc $3f
    ld c, e
    cp a
    ld h, b
    cp a
    ld [$c81f], a
    ccf
    and h
    ld e, e
    ld hl, sp+$17

jr_05e_45a8:
    xor h
    ld d, e
    cp h
    ld d, e
    or $19
    adc a
    ld [hl], b
    rst $38
    ld sp, $20ff
    rst $38
    jr nz, @+$01

    jr nz, jr_05e_45a8

    jr nc, @+$01

    and c

jr_05e_45bc:
    rst $28
    sub b
    rst $30
    ld l, b
    db $e3
    ld e, h
    rst $38
    jr nz, jr_05e_45bc

    ld c, d
    db $dd
    ld h, d
    rst $38

jr_05e_45c9:
    ld b, b
    rst $10
    ld l, b
    cp $41
    rst $38
    ld b, b
    rst $20
    jr jr_05e_45c9

    add hl, bc
    xor $91
    xor $93
    and e
    call c, $89f6
    rst $38
    add b
    rst $20
    sbc c
    rst $08
    ld [hl-], a
    db $ed
    ld [de], a
    ei
    inc b
    cp a
    ld c, d
    dec bc
    db $f4
    sub a
    ld l, b
    db $f4
    dec bc
    db $ed
    ld [de], a
    rst $28
    sub e
    adc e
    ld [hl], h
    rrca
    ld a, [c]
    ld c, l
    or e
    and e
    ld e, h
    cp a
    ld b, d
    rst $18
    ld l, $0e
    pop af
    rlca
    ld hl, sp+$4e
    or c
    ld b, b
    cp a
    ret nz

    dec sp
    ld a, [de]
    push hl
    sbc $23
    ld a, [bc]
    push hl
    ld [bc], a
    inc a
    rlca
    sbc b
    ld [$8036], sp
    ld a, l
    nop
    and [hl]
    ld [bc], a
    push af
    inc a
    jp nz, $b60c

    nop
    db $eb
    ld bc, $052c
    ld [bc], a
    nop
    rrca
    nop
    sbc b
    add b
    ld e, e
    nop
    add hl, de
    nop
    xor e
    nop
    sbc $00
    sub d
    nop
    nop
    nop
    add d
    nop
    db $f4
    nop
    rst $38
    inc b
    dec sp
    nop
    cp a
    nop
    adc l
    ld bc, $0941
    ld l, e
    nop
    jr nz, jr_05e_4667

jr_05e_4647:
    jr nz, @-$6c

jr_05e_4649:
    sbc [hl]
    ld b, e
    ld c, a
    ret nz

    ldh [rP1], a
    nop
    ld b, h
    ld b, h
    ld l, a
    ld l, a
    or a
    or a
    nop
    dec c
    nop
    db $fc

jr_05e_465a:
    jr jr_05e_465a

    dec sp
    dec sp
    ld l, a
    ld l, a
    ld hl, sp-$08
    ld a, [$fcfa]
    db $fc
    inc e

jr_05e_4667:
    ld e, h
    nop
    ld a, [$fb01]
    ld bc, $00e9
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld h, a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rst $00
    rst $38
    dec de
    rst $38
    inc bc
    rst $38
    and e
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    rst $30
    rst $38
    call $ffff
    rst $38
    ld c, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    rla
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    add b
    ret nz

    nop
    and a
    ld c, a
    rra
    jr nz, jr_05e_4647

    dec b
    ldh a, [$30]
    rst $38
    ld hl, $00ff
    ld b, b
    cpl
    ret nz

    rst $38
    nop
    ret nz

    nop
    ldh a, [$03]
    ld [hl], h
    rlca
    jr c, jr_05e_46bc

jr_05e_46bc:
    rlca
    ld e, b
    inc bc
    inc b
    rst $38
    inc c
    rst $38
    and b
    rst $38
    db $10
    rst $38
    jr nz, jr_05e_4649

    ld [hl], e
    ld h, b
    or a
    add sp, $17
    nop
    dec b
    nop
    pop af
    rra
    and b
    rla
    add sp, $03
    cp h
    add e
    inc [hl]
    inc bc
    jp hl


    pop bc
    ld [hl], $a5
    ld e, d
    cp $03
    rst $38
    ldh [$af], a
    ld [hl], b
    rst $38
    ld bc, $21ff
    ld a, a
    adc b
    rst $38
    ld b, b
    rst $38
    ld [$04ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    ld bc, $1bfc
    nop
    sbc b
    ldh [rNR10], a
    or b
    ld c, b
    inc a
    db $d3

jr_05e_4702:
    jr nc, jr_05e_4702

    cp $41
    nop
    rst $08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    inc de
    ld b, $11
    inc b
    inc bc
    ld b, $bd
    nop
    ld [hl], h
    nop
    nop
    nop
    inc b
    nop
    nop
    add b
    or c
    add b
    sub c
    add b
    di
    add b
    add a
    add b
    adc c
    ret nz

    rst $08
    ld b, b
    ld b, a
    ld [hl], b
    ld [hl], a
    ld h, b
    ld h, l
    add hl, de
    dec de
    or b
    or d
    xor [hl]
    xor [hl]
    or [hl]
    or [hl]
    add e
    add e
    sub $d6
    db $ed
    db $ed
    db $ed
    db $ed
    and b
    and b
    sbc b
    sbc b
    ld a, [de]
    ld e, $48
    ld c, b
    sub e
    sub e
    ld [bc], a
    ld b, $05
    add l
    nop
    nop
    db $fc
    db $fc
    xor b
    xor b
    inc b
    db $f4
    inc b
    db $f4
    nop
    nop
    xor b
    xor b
    nop
    inc c
    jr nz, jr_05e_4782

    and c
    and c
    ld [bc], a
    ld [bc], a
    add c
    add c
    add b
    add b
    ld bc, $0101
    ld bc, $0100
    ret nz

    rst $38
    db $d3
    rst $38
    jp hl


    rst $38
    reti


    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]

jr_05e_4782:
    add sp, -$01
    db $fc
    rst $38
    jp $f9ff


    rst $00
    jp $8fff


    rst $38
    nop
    rst $38
    db $db
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    db $fd
    rst $38
    or h
    rst $38
    rst $38
    rst $38
    nop
    cp $c2
    rst $38
    ldh [rIE], a
    nop
    ldh [$82], a
    nop
    ld e, h
    rst $38
    or $ff
    ld c, d
    ld c, $81
    stop
    inc e
    jr @+$7a

    inc b
    cp $93
    ldh a, [$c3]
    nop
    rst $38
    nop
    db $ec
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [hl], a
    db $e3
    inc e
    nop
    ret


    inc bc
    db $fc
    ld bc, $07fa
    ld hl, sp-$40
    inc b
    nop
    inc c
    nop
    add a
    nop
    cpl
    nop
    cp e
    xor c
    ld sp, hl
    nop
    inc h
    rst $38
    nop
    nop
    sbc [hl]
    nop
    ld a, h
    nop
    ldh a, [rP1]
    cp e
    cp a
    ld b, e
    sbc a
    ld h, b
    rst $38
    rlca
    rst $38
    ld [de], a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    ld b, $00
    ld b, [hl]
    nop
    ld b, d
    nop
    rst $18
    nop
    ld b, c
    ld b, b
    xor b
    nop
    ei
    nop
    ld de, $0100
    nop
    nop
    ld bc, $0200
    add hl, bc
    sub d
    ld c, l
    inc sp
    call z, $f30c
    nop
    ld a, a
    nop
    inc a
    ld bc, $0056
    scf
    dec a
    cp l
    ld d, $16
    dec a
    db $fd
    ccf
    cp a
    ld a, a
    rst $38
    rlca
    rst $00
    ld bc, $1041
    ldh a, [$0c]
    db $fc
    inc b
    inc [hl]
    ldh a, [$f0]
    ret nz

    pop bc
    ld [hl], b
    ld a, a
    and b
    xor a
    or b
    or a
    jr jr_05e_485f

    ld e, b
    ld e, a
    adc b
    adc e
    add h
    add a
    inc d
    rla
    nop
    ld bc, $0504
    inc c
    dec c
    adc h
    adc a
    sbc h
    sbc h
    ld l, $2e
    nop
    rlca
    nop
    nop
    jr nc, jr_05e_488a

    nop
    nop
    nop
    nop
    nop

jr_05e_485f:
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    nop
    jr nc, jr_05e_48a0

    ldh a, [$f6]
    jr nz, jr_05e_4893

    ld c, $ff
    ld e, $ff
    add c
    rst $38
    add c
    rst $38
    push bc
    rst $38
    ld bc, $e1ff
    rst $38
    pop af
    rst $38
    ld bc, $41ff
    rst $38
    ld a, e
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38

jr_05e_488a:
    pop af
    rst $38
    push af
    rst $38
    db $f4
    rst $38
    db $fd
    rst $38
    ld d, c

jr_05e_4893:
    cp a
    dec e
    rst $38
    ld e, $ff
    add d
    rst $38
    adc l

jr_05e_489b:
    rst $38
    ld b, d
    rst $38
    and c
    rst $38

jr_05e_48a0:
    call Call_05e_4333
    cp a
    ld [hl], l
    adc e
    db $f4
    dec bc
    rst $30
    ld [$c8b7], sp
    rrca
    ld hl, sp+$3f
    ret nz

    add c
    ld a, [hl]
    pop af
    ld l, $5d
    and d
    ldh a, [$ef]
    nop
    xor $1e
    pop bc
    ld bc, $ccde
    inc sp
    rst $38
    db $fc
    rst $38
    or h
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ret nz

    jr nc, jr_05e_489b

    ret nz

    cp a
    rst $30
    ld a, e
    ld hl, sp-$39
    di
    call $f6ff
    rst $38
    ld [hl], h
    ldh a, [$cf]
    ret nz

    inc a
    ldh a, [$8f]
    inc e
    ld [c], a
    rlca
    jr c, jr_05e_48e3

Call_05e_48e3:
jr_05e_48e3:
    ld a, c
    jr @-$10

    rst $08
    inc h
    rst $38
    ld a, [bc]
    rst $38
    cp h
    rst $38
    xor $ff
    jr nz, @+$01

    adc [hl]
    rst $38
    rst $18
    rst $38
    add hl, bc
    rrca
    pop af
    inc bc
    xor h
    nop
    nop
    nop
    db $10
    dec b
    ei
    ld [bc], a
    db $eb
    inc bc
    adc d
    ld bc, $00da
    dec de
    ld bc, $1f1a
    ld h, b
    rst $38
    nop
    jp $5e3c


    and c
    ld [$2d77], sp
    sub d
    ld bc, $30fe
    adc a
    ld bc, $41fe
    cp [hl]
    ld c, b
    and a
    nop
    rst $28
    ld [$40d3], sp
    cp l
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ld a, e
    nop
    jp hl


    nop
    xor h
    jr nz, jr_05e_4952

    nop
    ccf
    nop
    ld a, a
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
    db $10
    sub $00
    nop

jr_05e_4952:
    add b
    add b
    nop
    db $fc
    nop
    ldh a, [rSB]
    pop af
    nop
    ldh [rP1], a
    ld h, b
    nop
    add hl, de
    add b
    ret z

    nop
    stop
    ld b, c
    nop
    nop
    nop
    ld [bc], a
    nop
    ld d, a
    ld [$00ae], sp
    or b
    inc b
    sbc a
    add h
    sub b
    ld d, $98
    nop
    ret c

    db $10
    ld a, c
    nop
    db $fd
    ld bc, $c073
    push af
    xor d
    ld [hl], l
    sub d
    ld l, l
    ld a, [hl-]
    rst $20
    ld l, l
    di
    cp b
    ld h, a
    ld l, c
    or a
    sub c
    ld l, a
    db $db
    and a
    ld h, c
    db $e3
    ld bc, $00f1
    sbc e
    add b
    adc e
    add b
    rst $28
    add b
    jp hl


    add d
    reti


    ld a, [bc]
    reti


    add d
    ld a, l
    ld b, b

jr_05e_49a3:
    cp a
    ld c, $f9
    ld a, [hl]
    xor c
    ld l, e
    db $f4
    jr z, jr_05e_49a3

    inc a
    di
    xor [hl]
    ld [hl], c
    nop
    ld [bc], a
    nop
    daa
    nop
    dec bc
    add b
    inc bc
    sub c
    rlca
    sub b
    nop
    nop
    ld [bc], a
    ret c

    nop
    rra
    ldh [$f5], a
    ld a, [hl+]
    cp $31
    db $fd
    and d
    nop
    xor a
    inc bc
    db $ec
    ld bc, $c0d2
    dec sp
    rst $38
    ld a, b
    ret nz

    ccf
    ret nc

    cpl
    ldh [$5f], a
    nop
    rst $00
    nop
    rst $28
    nop
    rst $38
    rra
    ret nz

    or $00
    rst $30
    nop
    or e
    inc b
    dec e
    ld b, b
    ld [$0053], sp
    ld h, h
    ld b, b
    ld h, c
    nop
    sub b
    rst $38
    nop
    db $fd
    add d
    rst $38
    sub h
    ld a, [$fcfd]
    add hl, hl
    rst $38
    ld b, b
    rst $38
    nop
    rst $18
    jr nz, jr_05e_4a01

jr_05e_4a01:
    sbc a
    nop
    jp nz, Jump_000_32c0

    ldh a, [rIF]
    db $fc
    ld [bc], a
    rst $38
    ld c, $3c
    jp Jump_000_0df2


    ldh a, [$0b]
    ldh a, [$09]
    db $10
    rst $28
    adc d
    ld [hl], l
    inc [hl]
    bit 0, b
    or a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fc
    db $fc
    ld hl, sp-$08
    db $10
    db $10
    db $f4
    db $f4
    ld a, h
    ld a, h
    ld d, e
    ld d, e
    pop hl
    pop hl
    ld bc, $00c1
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
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    add sp, $04
    push hl
    jr jr_05e_4a68

    ldh a, [$f0]
    ld d, b
    ld d, b
    nop
    ld b, b
    db $10
    db $10
    ld bc, $0041
    nop
    cp h
    cp h
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop

jr_05e_4a68:
    ld b, b
    ld b, b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    db $10

jr_05e_4a71:
    or b
    jr nc, jr_05e_4a71

    inc bc
    adc a
    sbc [hl]
    ldh [rP1], a
    pop bc
    ld bc, $49c1
    db $e3
    ld bc, $2863
    sbc a
    ld bc, $0017
    sbc e
    ld [bc], a
    ld e, e
    nop
    ld a, [hl]
    ld b, d
    ld e, $1c
    adc a
    ld bc, $0437
    inc a
    ld b, $2f
    ld b, $2f
    ld c, [hl]
    rra
    ld d, $0e
    ld b, $07
    ld [bc], a
    add a
    add b
    ld b, [hl]
    nop
    inc h
    nop
    ld a, h

jr_05e_4aa4:
    inc b
    ld h, $08
    ld h, $08
    push hl
    jr z, @-$1a

    jr z, jr_05e_4aa4

    nop
    ld a, h
    ld b, h
    and $4a
    ld h, [hl]
    nop
    and d
    nop
    and e
    nop
    sub d
    sub b
    adc l
    inc c
    add l
    ld [bc], a
    inc bc
    ld bc, $0425
    ld l, l
    nop
    ld e, $08
    rra
    call nz, $120f
    ld c, $40
    dec bc
    ldh [rSB], a
    or $09
    sbc a
    ld h, h
    add e
    ld a, h
    ld a, [hl-]
    push bc
    ccf
    ret nz

    add hl, de
    ld h, [hl]
    ld bc, $defe
    ld hl, $00ff
    inc c
    di
    dec b
    ld a, [$fd02]
    add c
    ld l, [hl]
    di
    adc h
    rst $38
    ld [hl+], a
    rst $30
    ld c, $ff

jr_05e_4af1:
    ld bc, $976b
    ei
    dec b
    rst $38
    rst $38
    jr jr_05e_4af1

    ldh a, [$08]
    ret nz

    dec a
    ldh [rNR23], a
    nop
    ld a, [hl]
    nop
    dec de
    nop
    rra
    ld b, b
    xor [hl]
    ld a, [hl]
    add c
    dec e
    ld [c], a
    rlca
    jp c, $d700

    nop
    adc b
    nop
    rrca
    dec c
    or $08
    rst $30
    jr nz, @-$1f

    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    cp a
    cp a
    inc bc
    inc de
    nop
    ld a, $00
    ld l, a
    nop
    or a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    ret nc

    db $db
    jr nc, jr_05e_4b6d

    rrca
    xor a
    rrca
    rst $18
    nop
    call nc, $ff00
    nop
    rst $38
    nop
    xor a
    ld b, b
    ld c, [hl]
    jr c, jr_05e_4b81

    inc a
    cp l
    ld c, $ee
    rlca
    rst $20
    rlca
    ld [hl], a
    ld [$1078], sp
    db $10
    ld b, h
    ld h, h
    ld d, e
    ld d, e
    di
    di
    ld [de], a
    ld [de], a
    nop
    nop
    ld bc, $e6a1
    and $28
    jr z, jr_05e_4b63

jr_05e_4b63:
    nop
    nop
    ld [$1710], sp
    nop
    jr nz, jr_05e_4b6b

jr_05e_4b6b:
    ld b, b
    dec b

jr_05e_4b6d:
    dec b
    nop
    ld [$5c08], sp
    ld [$9838], sp
    ld hl, sp+$38
    ld a, l
    ld [bc], a
    rlca
    rra
    ldh [rNR30], a
    and b
    ld a, [bc]
    ldh [rP1], a

jr_05e_4b81:
    ldh [$80], a
    ldh [rNR41], a
    ld h, b
    jr z, jr_05e_4b94

    ld [bc], a
    rrca
    nop
    add hl, bc
    jr nz, jr_05e_4b98

    nop
    ld a, [bc]
    nop
    jp c, Jump_000_3e80

jr_05e_4b94:
    add sp, $0e
    ld c, $07

jr_05e_4b98:
    inc bc
    scf
    add c
    dec de
    inc bc
    dec de
    inc bc
    ld [hl], e
    and c
    dec sp
    inc hl
    rra
    ld d, a
    rlca
    ld c, e
    inc bc
    nop
    inc bc
    nop
    push bc
    add b
    ld h, c
    nop
    ld hl, $5f08
    nop
    ld a, a
    dec de
    ld d, e
    ld c, l
    ld h, e
    ld c, [hl]
    ldh a, [$0c]
    ld [hl], c
    ld l, l
    ld [hl], c
    ld h, l
    ld [hl], c
    ld b, b
    ret


    ret nz

    rst $20
    ld b, c
    jp Jump_05e_6103


    ld b, b
    jr nz, @+$46

    sub b
    ld c, b
    ld [$0410], sp
    ld [$1607], sp
    inc bc
    ld bc, $2061
    ld h, d
    ld [bc], a
    ld d, e
    inc bc
    rra
    ld [bc], a
    rrca
    ld b, h
    rla
    ld [de], a
    rla
    ld [bc], a
    scf
    ldh [rTAC], a
    and b
    ld [bc], a
    inc e
    nop
    nop
    ld [bc], a
    ld a, b
    nop
    ld hl, sp+$00
    sub a
    ld l, b
    ld hl, sp-$79
    ei
    add h
    rst $38
    add b
    sub b
    ld l, a
    inc d
    dec de
    inc b
    inc bc
    inc bc
    inc c
    inc bc
    db $dd
    ld bc, HeaderSGBFlag
    ld [bc], a
    nop
    ld bc, $4100
    add b
    ld l, c
    db $f4
    dec bc
    cp $a1
    inc l
    db $d3
    nop
    call Call_000_0cc0
    nop
    rlca
    nop
    ret c

    inc e
    ei
    ld hl, $40d2
    and c
    ldh [$e5], a
    nop
    ld a, l
    nop
    rst $38
    nop
    ld a, l
    nop
    ld e, a
    nop
    adc a
    nop
    rst $00
    nop
    ldh [rSB], a
    sub c
    nop
    call c, $be22
    and b
    xor [hl]
    add b
    cp a
    nop
    ld a, a
    nop
    ld a, l
    nop
    cp l
    nop
    cp [hl]
    nop
    or $00
    rst $20
    nop
    rst $20
    nop
    ld h, e
    call z, Call_05e_40cd
    ld b, c
    ld b, l
    ld b, l
    ld a, l
    ld a, l
    inc b
    inc b
    add h
    add h
    ld bc, $0201
    ld [bc], a
    rla
    rla
    rst $00
    rst $00
    push de
    push de
    ld c, h
    ld c, h
    nop
    inc b
    inc bc
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0740

jr_05e_4c72:
    ld b, b
    rlca
    nop
    ld [bc], a
    nop
    sub l
    and b
    db $fd
    ccf
    ld a, a
    pop af
    dec b
    inc hl
    jr nc, @+$32

    ld a, h
    ret c

    ld a, a
    jr nz, jr_05e_4d03

    nop
    db $fc
    ld b, h
    ld a, [hl]
    db $f4
    rst $38
    inc e
    rst $38
    ld b, e
    ld h, a
    jr nz, jr_05e_4c72

    ld bc, $00e0
    ldh [$81], a
    ldh [$81], a
    ret nz

    ld b, c
    ldh a, [rLCDC]
    or h
    ret nz

    adc $ed
    db $e3
    adc $e0
    add c
    ldh [$c0], a
    ldh [$d0], a
    ret nz

    ld hl, sp-$20
    nop
    ldh a, [rP1]
    jp c, $8694

    inc c
    add e
    ld b, $c0
    add l
    add b
    add [hl]
    ret nz

    ld b, h
    ret nz

    nop
    or b
    jr nz, @-$66

    db $10
    add $0a
    ld [bc], a
    dec b
    inc bc
    nop
    jp nz, $8280

    ld b, b
    call nz, $e620
    inc d
    db $76
    push af
    ld c, [hl]
    or l
    ld l, [hl]
    or d
    ld c, a
    ld [hl], l
    adc a
    sub [hl]
    ld l, a
    or $2f
    ld b, a
    cp [hl]
    ccf
    sbc $0e
    xor $04
    db $f4
    adc b
    ld a, [c]
    inc b
    db $d3
    ld b, [hl]
    ld d, c
    daa
    ld [hl], b
    ld de, $2070
    db $10
    rst $38
    nop
    ld l, a

jr_05e_4cf3:
    sub b
    rst $30
    inc c
    rst $38
    ld b, [hl]
    ld l, a
    sub a
    rra
    db $ed
    rra
    ldh [$e3], a
    inc e
    dec de
    db $e4
    rst $28

jr_05e_4d03:
    ld de, $7887
    ld bc, $036e
    call nz, $9601
    ld [$b0f7], sp
    ld c, c
    ld h, b
    sbc a
    jr nz, jr_05e_4cf3

    nop
    rra
    db $10
    add d
    nop

jr_05e_4d19:
    sbc d
    nop
    add e
    nop
    jp nz, Jump_05e_6100

    nop
    nop
    add hl, bc
    ld c, c
    nop
    ld b, h
    nop
    inc b
    nop
    ld b, l
    nop
    sub a
    nop
    ld c, l
    nop

jr_05e_4d2f:
    ld e, a
    add b
    add d
    ld l, h
    ld l, h
    ld [bc], a
    ld [bc], a
    db $10
    db $10
    add b
    ret nc

    add d
    cp $00
    ccf
    ld b, b
    rst $38
    nop
    sbc a
    nop
    ld b, h
    db $10
    sub l
    db $10
    sub a
    ld [$00ea], sp
    ld a, [c]
    inc b
    db $fc
    dec b
    ld a, l
    ld c, a
    ld a, a
    rrca
    rrca
    add $c6
    ld b, [hl]
    ld b, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jp Jump_05e_58c3


    ld e, b
    inc b
    inc b
    jr nz, jr_05e_4d84

    nop
    nop
    ld hl, $0221
    ld [bc], a
    nop
    ld bc, $0100
    nop
    nop
    jr c, jr_05e_4dea

    jr nc, jr_05e_4dac

    jr c, jr_05e_4dae

    jr nc, jr_05e_4df0

    ld sp, $61f8
    ldh a, [$e1]
    ld hl, sp+$2c
    cp $8f
    ld [hl], e
    ret nz

    or a

jr_05e_4d84:
    ret nz

    cp a
    ret nz

    xor [hl]
    call nz, $ccbb
    or e
    sbc b
    rst $20
    call z, Call_000_1bb1
    ret nz

    db $d3
    jr nc, jr_05e_4d19

    ld c, $04
    ld bc, $000b
    inc b
    jr nz, @+$06

    jr nc, @+$0e

    ld bc, $8004
    ld b, b
    ldh a, [$d4]
    jr c, @+$6a

jr_05e_4da7:
    adc [hl]
    inc d
    adc [hl]
    jr jr_05e_4d2f

jr_05e_4dac:
    ld b, $00

jr_05e_4dae:
    inc b
    add b
    inc b
    add b
    inc b
    add b
    add h
    add b
    call nz, Call_05e_4060
    jr nc, jr_05e_4e2b

    ld c, $78
    ld b, $78
    inc bc
    ld a, [hl]
    ld bc, $007b
    di
    nop
    ld a, e
    add b
    dec bc
    ld b, b
    daa
    jr nc, @+$28

    sub b
    ld [hl-], a
    nop

jr_05e_4dd0:
    rst $00
    ld a, [hl+]

jr_05e_4dd2:
    jp $c115


    nop

jr_05e_4dd6:
    ret nz

    ld hl, $8ac1

jr_05e_4dda:
    pop bc
    ld [hl], d
    pop hl
    ld [hl-], a
    ldh a, [$0b]
    ret c

    dec sp
    rst $08
    jr nc, jr_05e_4da7

    ccf
    and e
    ld d, l
    and c
    ld d, [hl]

jr_05e_4dea:
    ret nz

    ld sp, $9c60
    jr nc, jr_05e_4dda

jr_05e_4df0:
    db $10
    sbc c
    jr jr_05e_4dda

    inc c
    di
    ld b, [hl]
    or l
    inc bc
    cp $85
    ld [hl], e
    add h
    rst $38
    adc $75
    rst $28
    ld d, b
    rst $28
    or h
    rst $38
    sbc b
    rst $38
    ld [$04ff], sp
    ld a, a
    adc h
    ccf
    jp z, $8b3f

    cp a
    ld c, b
    ld a, [hl]
    cp c
    rrca
    ldh a, [rSC]
    ld e, l
    dec b
    adc d
    dec b
    ld a, [bc]
    nop
    daa
    nop
    rst $30
    reti


    reti


    rst $18
    rst $18
    or $f6
    ld d, [hl]
    ld d, [hl]
    jr z, jr_05e_4dd2

    ld [bc], a

jr_05e_4e2b:
    add d
    jr z, jr_05e_4dd6

    jr nz, jr_05e_4dd0

    ld [hl], b
    ld [hl], b
    db $10
    db $10
    ld bc, $5b01
    ld e, e
    ld a, [hl-]
    ld a, [hl-]
    dec b
    dec b
    inc bc
    add e
    ld [bc], a
    and d
    ld bc, $012d
    db $dd
    ld bc, $00db
    ei
    nop
    and l
    nop
    cp a
    nop
    cp [hl]
    nop
    ld a, a
    add b

jr_05e_4e51:
    sub a
    ret nz

    rst $10
    ret nc

    rst $10
    ld l, b
    ld l, c
    jr nc, jr_05e_4e8a

    nop
    nop
    add [hl]
    add [hl]
    pop bc
    pop bc
    ld sp, $1831
    jr @+$03

    ld bc, $8000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    jr nz, jr_05e_4e51

    and b
    ld d, c
    nop
    db $fd
    nop
    ei
    nop
    add sp, $00
    xor $60
    sbc e
    ldh [$5f], a
    db $fc
    and e
    ccf
    sbc a
    rlca
    add b
    nop

jr_05e_4e87:
    nop
    ld b, $dd

jr_05e_4e8a:
    rlca
    cp h

jr_05e_4e8c:
    dec c
    jp nc, $a00f

    rrca
    ld d, b
    rrca
    ld [hl], b
    ld a, [de]
    push hl
    call c, $fce3
    ld a, e
    cpl
    call nc, $c937
    jr jr_05e_4e87

    ld a, [de]
    push hl
    jr jr_05e_4e8a

    jr jr_05e_4e8c

    inc [hl]
    ret


    ld [hl], h
    adc b
    ldh [rNR34], a
    db $f4
    db $eb
    cp h
    ld d, c
    call nz, $e38f
    inc d
    ld hl, sp-$80
    db $fc
    ld [bc], a
    cp $01
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$59
    ld hl, sp-$3c
    ld hl, sp+$67
    cp b
    ld d, l
    call c, $c622
    add hl, sp
    pop de
    ld a, [hl+]
    ret nz

    add hl, sp
    and b
    ld e, d
    ret nz

    inc a
    add b
    ld [hl], h
    and b
    sbc $e0
    inc c
    jr nz, @-$26

    cp b
    ld b, h
    ret z

    inc a
    add h
    ld [hl], d
    add e
    ld a, b
    add c
    ld [hl], b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    add sp, -$80
    ld [hl], b
    ld b, b
    cp b
    jr nz, jr_05e_4f48

    ld d, b
    cp b
    ld [$04fc], sp
    cp d
    sub d
    ld h, h
    inc de
    ret z

    add b
    ld a, a
    add b
    cp $40
    cp $62
    sbc h
    and b
    rra
    sub h
    ld e, e
    call z, $c412
    ld [hl-], a
    ld b, d
    or l
    ld b, e
    cp b
    ld b, c
    cp l
    ldh [$9d], a
    ldh a, [rVBK]
    ld [hl], c
    adc $b0
    ld l, a
    db $10
    rst $38
    add hl, de
    and $1c
    ld l, e
    rlca
    ld a, h
    inc bc
    db $76
    add e
    ld a, c
    or c
    ld a, b
    ld a, b
    add e
    db $10
    adc $00
    inc a
    ld [$0034], sp
    inc a
    ld a, $3e
    ld sp, hl
    ld sp, hl
    ld b, e
    ld b, e
    add hl, bc
    add hl, bc
    jp c, $afda

    xor a
    dec hl
    dec hl
    db $d3
    db $d3
    sub b
    sub c
    add c
    add c
    add b
    add b
    jr nz, @-$5e

jr_05e_4f48:
    jr nz, @-$1a

    nop
    add b
    nop
    add b
    ld [$0968], sp
    ld sp, hl
    dec b
    db $fd
    ld [bc], a
    ld a, [$fc00]
    ld bc, $8175
    add c
    inc c
    inc c
    add b
    add b
    inc b
    inc b
    add b
    add b
    ld c, c
    ld c, c
    ld [hl+], a
    ld [hl+], a
    rlca
    rlca
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    ld sp, hl
    db $10
    dec l
    inc b
    ei
    inc b
    ei
    nop

jr_05e_4f79:
    xor a
    nop
    rst $30
    ret nz

    dec sp
    and b
    ld e, a
    ret nz

    inc a
    ret nc

    ld a, [hl+]
    ld a, [$0fd5]
    inc a
    nop
    add b
    add b
    ld [hl], b
    ret nz

    ld [hl-], a
    ret nz

    jr c, jr_05e_4fb1

    jp nc, $ea00

    nop
    add sp, $00
    rst $28
    nop
    cp l
    jr nz, jr_05e_4f79

    ldh [$9c], a
    inc a
    db $e3
    rra
    rra
    and a
    or a
    add h
    add h
    ldh [$e1], a
    ret nz

    ret nz

    add h
    add h
    add b
    add c
    nop
    nop

jr_05e_4fb0:
    adc b

jr_05e_4fb1:
    adc b
    ld [$e808], sp
    add sp, $7e
    ld a, [hl]
    ld b, $66
    rlca
    ld e, a
    ld bc, $006d
    rra
    nop
    inc bc
    nop
    ld bc, $8000
    nop
    add b
    nop
    ld b, b
    add b
    add b
    pop bc
    pop hl
    ld l, h
    db $ec
    inc a
    inc a
    dec c
    dec l
    add e
    sbc e
    ld bc, $400d
    ld b, d
    nop
    jr jr_05e_4fdd

jr_05e_4fdd:
    inc c
    nop
    ld c, $80
    adc h
    ret nz

    call z, $f070
    inc [hl]
    or h
    inc e
    ld e, h
    ld c, $2e
    rlca
    rlca
    inc bc
    inc bc

Call_05e_4ff0:
    inc b
    ld bc, $2e00
    nop
    dec hl
    nop
    rrca
    nop
    sbc [hl]
    sub b
    ld c, l
    ld d, h
    xor d
    jr nc, jr_05e_504a

    jr jr_05e_5047

    inc c
    inc hl
    ld d, $e8
    ld a, [de]
    dec h
    cpl
    ld d, b
    rra
    ldh [$0e], a
    pop af
    cp $01
    db $fc
    add d
    db $fc
    ld b, d
    inc a
    ld h, d
    jr c, @-$79

    sbc b
    inc b
    inc c
    add d
    inc b
    jp nz, $c102

    ld bc, $00c2
    ld b, c
    nop
    ld h, b
    nop
    ld b, b
    nop
    add $40
    ld a, [hl+]
    jr nz, jr_05e_4fb0

    nop
    pop de
    db $10
    inc a
    ld [$2d75], sp
    ld d, d
    cpl
    sub b
    dec hl
    call nc, $9769
    ld sp, hl
    db $e4
    cp h
    ld b, c
    inc b
    dec hl
    nop
    dec l
    nop
    inc d
    ld [bc], a

jr_05e_5047:
    dec e
    ld [bc], a
    dec e

jr_05e_504a:
    nop
    rrca
    nop
    rrca
    nop
    ld [hl], b
    add b
    add b
    jp $95cb


    sub l
    jp c, Jump_05e_62da

    ld h, d
    sub h
    sub h
    ld a, [$ccfa]
    call z, Call_000_2000
    nop
    ld [de], a
    jr nz, @+$2a

    ld d, b
    ld d, d
    jr nz, jr_05e_5098

    ldh a, [$f6]
    ld hl, sp-$07
    ld hl, sp-$08
    ld b, b
    nop
    nop
    ld a, a
    ld bc, $01c6
    call nz, $9441
    ld bc, $00d6
    db $db
    nop
    jp $9300


    add c
    ld c, d
    add c
    ld a, [hl]
    ld [$ff15], a
    nop
    ccf
    ld b, b
    inc bc
    ld [$c000], sp
    jr nc, jr_05e_50c9

    sub b
    sub c
    jr nc, jr_05e_50cc

    ld [hl], b
    ld [hl], c

jr_05e_5098:
    sub b
    sub b
    or b
    or d
    sub b
    sub d
    ld h, b
    ld h, c
    ldh [$e2], a
    ldh a, [$f3]
    ldh a, [rIE]
    ld a, [de]
    jp c, Jump_05e_7303

    nop
    ld e, $01
    inc bc
    nop
    ret nc

    nop
    ret nz

    ld bc, $02e1
    ld [c], a
    ld bc, $0241
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jp nc, Jump_05e_72d2

    ld [hl], d
    ld e, $5e
    rrca
    xor a
    ld b, e
    ld c, a
    ld b, b
    ld b, [hl]
    add b

jr_05e_50c9:
    add e
    ld b, b
    ld b, b

jr_05e_50cc:
    nop
    nop
    ld [$5008], sp
    ld d, b
    ld de, $0011
    nop
    and b
    and b
    ldh [$e0], a
    ld a, b
    ld hl, sp+$18
    ld e, b
    ld c, $1e
    inc hl
    dec sp
    ld bc, $001f
    rra
    nop
    rrca
    nop
    rrca
    nop

jr_05e_50eb:
    ld l, $00
    dec h
    ld b, b
    ld e, a
    add b
    sbc [hl]
    ld b, b
    ld e, [hl]
    ld h, b
    ld l, d
    db $10
    inc de
    call z, $a7cc
    and a
    and a
    and a
    sub l
    sub a
    jr nz, jr_05e_5123

    ld h, b
    ld h, e
    ld l, b
    ld l, e
    ld [$a80b], sp
    xor e
    ret c

    rst $18
    ldh a, [$f5]
    ld [hl], b
    ld [hl], l
    jr nc, jr_05e_5149

    sbc h
    sbc a
    ld e, h
    ld e, l
    add [hl]
    add [hl]
    adc e
    adc e
    sub c
    sub c
    ret nz

    ret nz

    ld [bc], a
    ld [bc], a
    nop
    and d
    add b

jr_05e_5123:
    ld b, c
    add b
    ld b, c
    ld b, b
    ld h, c
    jr nz, jr_05e_513a

    db $10
    ld [hl+], a
    ld a, [bc]
    add h
    ld b, $89
    inc bc
    dec de
    ld bc, $0105
    inc bc
    nop
    add b

jr_05e_5138:
    jr nc, jr_05e_50eb

jr_05e_513a:
    ld [$d008], sp
    ret nc

    sbc $de
    ld b, b
    ld h, c
    jr nz, jr_05e_5138

    db $10
    ld a, [$f910]

jr_05e_5148:
    xor h

jr_05e_5149:
    ld e, e
    ld h, h
    sbc [hl]
    ld h, [hl]
    dec sp

jr_05e_514e:
    ld [hl+], a
    ld [hl], l
    ld sp, $010b
    ld a, [hl-]
    nop
    rst $38
    add b
    ld a, a
    jr @-$07

    inc e
    xor a
    ld a, [hl-]
    ld b, l
    inc bc
    inc [hl]
    inc bc
    inc l
    ld bc, $001a
    rrca
    nop
    dec b
    inc b

jr_05e_5169:
    inc bc
    nop
    rlca
    nop
    dec b
    nop
    inc bc
    rlca
    ld h, b
    ld a, b
    add h
    db $fc
    ld [bc], a
    jr z, jr_05e_514e

    ld e, b
    and l
    ld e, b
    and h
    jr nc, jr_05e_5148

    ld l, b
    sub c
    ld b, b
    cp b

jr_05e_5182:
    ldh [rNR30], a
    add b
    ld a, b
    add b
    ld h, h
    add b
    ld h, h
    ret nc

    jr z, jr_05e_5169

    inc hl
    rra
    ld [$fa02], sp
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    nop
    ld a, [c]
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    add c
    nop
    pop bc
    ld [bc], a
    ld b, e
    nop
    ld bc, $f1f0
    ld a, [hl]
    ld a, a
    rrca
    rrca
    inc hl
    inc hl
    ld b, b
    ld b, a
    ld b, b
    ld c, c
    ld b, b
    ld c, b
    db $10
    inc e
    ld b, b
    ld c, d
    add b
    adc d
    nop
    inc c
    add b
    add b
    inc c
    ld c, $f0
    ldh a, [$f8]
    db $fd
    jr c, jr_05e_5182

    rra
    rst $38
    rra
    ld a, a
    ld b, $16
    nop
    inc b
    jr nz, jr_05e_5238

    jr nz, jr_05e_523a

    nop
    inc b
    nop
    nop
    nop
    adc b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    add c
    add c
    ld l, h
    ld l, h
    inc [hl]
    or h
    ld c, $ee
    rlca
    rst $30
    inc bc
    cp e
    inc bc
    sbc e
    nop
    sub d
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    ld [$c008], sp
    ret nz

    ldh a, [$f0]
    ldh [$e0], a
    inc h
    and h
    db $10
    ldh a, [$0c]
    db $ec
    ld b, $fe
    inc bc
    ei
    ld bc, $00fd
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $80
    cp $c1
    rst $18
    ldh [$ee], a
    jr nc, jr_05e_5296

    add hl, de
    ld a, l
    ld c, $1e
    rlca
    rrca
    inc bc
    rlca
    ld bc, $0003
    nop
    nop
    ld [$9880], sp
    ld b, b
    ld c, b
    ret nz

    ret nz

    ret nz

    ret nz

jr_05e_5238:
    ld h, b
    ld h, b

jr_05e_523a:
    ld [hl], b
    ldh a, [$3d]
    dec a
    sbc d
    sbc d
    inc c
    ld a, [bc]
    ld b, $0c
    ld b, $01
    inc bc
    jr jr_05e_5266

    and b
    inc a
    jp nz, Jump_000_023c

    ld a, [hl-]
    ld b, l
    ld a, l
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, b
    ld a, a
    and b
    cp e
    ld b, h
    rst $18
    jr nc, @+$01

    ld c, b
    db $ec
    rla
    or $0d
    rst $38
    ld [bc], a
    rst $28
    inc de

jr_05e_5266:
    rst $38
    ld bc, $4db6
    ld [hl], $c9
    ld e, $e1
    inc c
    sub e
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
    jr jr_05e_52a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05e_52b3

    ld [hl+], a
    inc hl
    inc h
    dec h

jr_05e_5296:
    ld h, $27
    jr z, jr_05e_52c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05e_52d3

    ld [hl-], a

jr_05e_52a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05e_52e3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05e_52b3:
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

jr_05e_52c3:
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

jr_05e_52d3:
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

jr_05e_52e3:
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
    jr jr_05e_53a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05e_53b3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05e_53c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05e_53d3

    ld [hl-], a

jr_05e_53a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05e_53e3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc b
    inc b
    inc b

jr_05e_53b3:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_05e_53c3:
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_05e_53d3:
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0404
    inc b
    inc b

jr_05e_53e3:
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0406
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06

Jump_05e_5420:
    ld b, $01
    ld bc, $0601
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    inc b
    nop
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld b, $04
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    ld b, $04
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0101
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    inc b
    ld bc, $0406
    inc b
    inc b
    ld bc, $0601
    inc b
    inc b
    inc b
    nop
    inc b
    ld b, $06
    inc b
    ld c, $0e
    inc c
    inc c
    inc c
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $0c
    ld c, $0c
    ld c, $0c
    ld c, $09
    ld c, $0e
    add hl, bc
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    inc c
    rrca
    add hl, bc
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0c
    inc c
    ld c, $0c
    ld c, $0e
    add hl, bc
    add hl, bc
    db $e3

jr_05e_54f1:
    ld a, h
    ld sp, hl
    ld h, $f9
    ld d, $fd
    ld a, [bc]
    rst $38
    ld [$05ff], sp
    rst $38
    ld b, a
    rst $38
    inc bc
    rst $38
    ld b, d
    ei
    ld b, $df
    ld h, d
    cp $07
    sbc [hl]
    ld h, a
    ld e, [hl]
    and a
    ld l, [hl]
    sub a
    ld a, $cc
    inc e
    ld [$5e0c], a
    inc a
    ld c, a
    ld a, h
    rrca
    ld l, h
    sbc [hl]
    db $fc
    rrca
    ld c, $fc
    rra
    db $ec
    dec e
    adc $9d
    ld l, h
    inc e
    ei
    inc e
    or e
    jr c, jr_05e_54f1

    ld hl, sp+$0f
    ld hl, sp+$2a
    add sp, $13
    ld [hl], b
    adc [hl]
    db $10
    cp $10
    rst $30
    inc [hl]
    adc e
    ld [hl-], a
    call $8670
    ld h, $d9
    ld l, l
    ld [de], a
    ld l, h
    sub e
    add hl, hl
    ld d, [hl]
    ld l, b

jr_05e_5545:
    sub a
    ld l, b
    sub [hl]
    ld c, b

jr_05e_5549:
    or h
    ld b, b
    sub l
    sub b
    ld h, c
    add b
    ld e, c
    add b
    ld a, $80
    ld a, [hl]
    add b
    ld a, l
    add b
    dec h
    add b
    ld h, l
    nop
    xor $00
    reti


    nop
    ld [$fa00], a

jr_05e_5562:
    nop
    db $fc
    nop
    cp $30
    rst $08
    jr nz, jr_05e_5549

    ld h, b
    sbc a
    jr z, jr_05e_5545

    ld h, d
    sbc l

jr_05e_5570:
    jp nz, Jump_05e_663d

    sbc c

jr_05e_5574:
    or $09
    or $09
    rst $10
    jr z, jr_05e_5570

    ld a, [bc]
    call $d532
    ld a, [hl+]
    rst $08
    jr nc, jr_05e_5562

    jr nz, jr_05e_5574

    db $10
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $20

jr_05e_558f:
    jr jr_05e_558f

    inc bc
    ld c, $d3
    jp nz, $3e3d

    call $d60e
    ld b, $33

jr_05e_559c:
    ld b, $c9
    ld b, $c4
    inc b
    ld a, [hl]
    inc b
    xor $04
    sbc a
    inc b
    xor a
    inc c
    db $d3
    inc c
    and e
    ld [$08f7], sp
    cp a
    inc c
    xor d
    inc c
    db $db
    ld [$08df], sp
    ld hl, sp+$18

jr_05e_55b9:
    rr b
    jp $fe10


    jr nc, @-$21

    jr nc, jr_05e_559c

    jr nc, jr_05e_55b9

    ldh a, [$27]
    ldh a, [rNR41]
    ldh [$38], a
    ldh [$35], a
    ldh [$3c], a
    ldh [$3e], a
    ldh [$2f], a
    ldh [$1f], a
    ret nz

    ld a, h
    ret nz

    ld l, a
    ret nz

    ld l, [hl]
    ret nz

    ld l, a
    ret nz

    rst $38
    ret nc

    rst $28
    jp nz, $d0bd

    xor a
    add b
    rst $38
    add l
    ld a, [$fd82]
    add [hl]
    cp c
    or d
    call Call_05e_42bd
    sub b
    xor a
    sbc h
    db $e3

jr_05e_55f4:
    cp [hl]
    pop bc
    cp [hl]
    pop bc
    cp a
    ld b, b
    cp [hl]
    ld b, c
    dec a
    jp nz, $c03f

    ccf
    ld b, b
    ld a, a
    nop

Jump_05e_5604:
    ld a, a
    nop
    ld e, a
    jr nz, jr_05e_5688

    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, e
    add h
    ld a, l
    add d
    ld l, c
    sub [hl]
    push af
    ld a, [bc]
    ld h, l
    sbc e
    ld [hl], c
    adc a
    ld h, l
    sbc e
    inc sp
    ld c, l
    dec bc
    push af
    jp $e21c


    dec e
    ld [hl], d
    adc a
    ld e, d
    and l
    ld c, $f0
    ld c, $f0
    ld b, $f8
    nop
    sbc [hl]
    inc b
    ld [$6a04], a
    inc b
    ld l, b
    inc b
    sbc c
    inc b
    ldh a, [rDIV]
    pop de
    nop
    db $fd
    ld [$0094], sp
    ld a, h
    inc b
    cp b
    ld [$08a4], sp
    sub $08
    jr nc, jr_05e_564d

jr_05e_564d:
    ld a, b
    ld [$4830], sp
    ld c, b
    adc h
    adc [hl]
    ld e, b
    ld e, d
    ld l, b
    ld l, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld d, b
    ld d, d
    jr c, jr_05e_5698

    nop
    xor b
    jr nz, jr_05e_55f4

    nop
    ld h, b
    nop
    ld l, h
    nop
    ld [hl], h
    nop
    db $e4

jr_05e_566c:
    nop
    ldh [$80], a
    ld l, d
    add b
    ld e, b
    add b
    ld b, c
    ret nz

    dec h
    add b
    ld e, l
    ret nz

    dec sp
    or b
    ld c, l
    and c
    ld e, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, l
    add b
    ld a, a

jr_05e_5688:
    nop
    rst $38
    nop
    rst $38
    ld bc, $017e
    cp $01

jr_05e_5691:
    cp $01
    cp $01
    cp $85
    ld l, b

jr_05e_5698:
    add c
    ld l, e
    ld bc, $41e6
    or d
    inc bc
    add sp, $02
    pop af
    ld [bc], a
    push af
    ld [bc], a
    rst $30
    ld [bc], a
    rst $20
    ld [bc], a
    or $02
    db $fc
    ld b, $f8
    inc b
    ld a, [$f804]
    ld hl, sp+$05
    ld c, h
    or b
    inc b

jr_05e_56b7:
    xor h
    inc b
    ld sp, hl
    inc c
    ldh a, [$08]
    rst $30
    jr jr_05e_566c

    ld [$187d], sp
    ld l, a
    jr @-$17

    jr jr_05e_56b7

    jr c, jr_05e_5691

    jr c, jr_05e_5713

    jr jr_05e_5735

    db $10
    ld l, a
    ld sp, $7bda
    sub h

jr_05e_56d4:
    ld a, a
    sub b
    ld [hl], a
    ld hl, sp+$7f
    sub b
    ld a, a
    ret nz

    ld a, a
    xor b
    rst $28
    jr nc, jr_05e_5760

    and b
    rst $28
    jr nc, jr_05e_56d4

    jr nc, jr_05e_5756

    sub b
    ld l, a
    or b
    ld a, a
    and b
    rst $38
    nop
    rst $18
    jr nz, jr_05e_5691

    ld a, a
    ld h, d
    or l
    ld [c], a
    dec h
    pop hl
    ld a, [hl+]
    ldh [$03], a
    ldh [$03], a
    ret nz

    ld [hl-], a
    ret nz

    ld [hl], l
    ret nz

    ld a, e
    ret nz

    ld a, c
    ret nz

    ld e, l
    ret nz

    rra
    ret nz

    inc sp
    add b
    ld l, l
    add b
    rst $30
    add e
    db $ec
    add e
    add sp, -$7d

jr_05e_5713:
    cp c
    add c
    or $e1

Jump_05e_5717:
    rra
    ld hl, $31df
    adc $09
    ld d, [hl]
    add hl, bc
    ld [hl], $07
    ld d, b
    inc bc
    ld d, h
    ld [bc], a
    ld d, c
    ld [bc], a
    ld h, c
    ld [bc], a
    ld [hl], l
    ld [bc], a
    ld h, l
    ld [bc], a
    ld l, c
    ld [bc], a
    ld l, l
    ld bc, $0172
    sbc d
    nop

jr_05e_5735:
    rst $28
    ld bc, $04ce
    ld [hl], e
    ld b, $51
    ld b, $59
    inc c
    sub c
    ld [$0804], sp
    ld h, h
    ld [$0894], sp
    sub b
    ld [$0810], sp
    add b
    nop
    ld hl, sp+$00
    jr z, jr_05e_5779

    dec l
    nop
    rlca
    db $10
    rla

jr_05e_5756:
    db $10
    sub a
    db $10
    rla
    db $10
    rra
    db $10
    rra
    jr nz, jr_05e_578f

jr_05e_5760:
    jr nc, jr_05e_57a1

    db $10
    rra
    jr nz, jr_05e_5795

    and b
    xor a
    and b
    and e
    ld [hl], b
    ld [hl], b
    jr nz, jr_05e_578e

    or b
    or b
    nop
    ld h, b
    nop
    ld h, b
    ld b, b
    dec h
    ld b, b
    cp b
    ld b, b

jr_05e_5779:
    ld a, $40
    cp l
    nop
    ld a, l
    add c
    inc [hl]
    add c
    inc l
    add c
    ld a, d
    add c
    ld a, d
    add c
    ld [hl], d
    add c
    ld a, [hl-]
    add c
    ld a, [hl]
    add c
    ld a, [hl]

jr_05e_578e:
    add e

jr_05e_578f:
    inc [hl]
    ld [bc], a
    cp l
    ld [bc], a
    db $fd
    ld [bc], a

jr_05e_5795:
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    sub l
    ld [bc], a
    dec a
    ld c, [hl]
    or c
    ld [bc], a
    sbc l
    ld [bc], a

jr_05e_57a1:
    ld [hl], l
    ld [bc], a
    dec l
    ld [bc], a
    sub l
    inc b
    db $eb
    ld b, $31
    inc b
    db $d3
    inc b
    ld sp, hl
    dec b
    jp nc, Jump_05e_5604

    rlca
    ld e, b

jr_05e_57b4:
    inc bc
    inc a

jr_05e_57b6:
    ld [$0897], sp
    or a
    ld [$0877], sp
    ld a, a
    ld [$08f7], sp
    db $d3
    ld [$08f7], sp
    rst $30
    inc e
    jp $e718


    rla
    add sp, $7f
    add b
    ld a, a
    add b
    rra
    ldh [$df], a
    jr nz, jr_05e_57b4

    jr nz, jr_05e_57b6

    jr nz, @-$1f

    jr nz, @-$07

    ld [$28d7], sp
    rst $28
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld e, b
    rst $38
    dec c

jr_05e_57e8:
    rst $38
    jr nc, jr_05e_57e8

    ld h, e
    rst $38
    ld b, b
    rst $38
    ld b, b
    dec l
    jp nc, $9867

    ld h, e
    sbc h
    ld b, e
    xor l
    ld b, c
    rst $18
    jp $012d


    rst $00
    pop bc
    ld a, [bc]
    add c
    ld a, a
    add c
    ld e, d
    add c
    ld [hl], d
    add b
    ld d, a
    add e
    cp h
    add d
    ld b, l
    add d
    ld b, c
    add d
    ld l, l
    ld [bc], a
    push af
    inc bc
    sbc h
    add d
    dec a
    add b
    ld a, a
    ld h, b
    sub [hl]
    ld [hl], h
    add d
    db $fc
    inc bc
    inc a
    jp $c33c


    ld a, [hl-]
    push bc
    ld a, $c1
    cpl
    ret nc

    cpl
    ret nc

    cpl

jr_05e_582b:
    ret nc

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    sbc e
    ld h, h
    sub c
    ld l, [hl]
    jr @-$17

    db $10
    ld [$a810], a
    db $10
    jp nz, Jump_05e_5420

    jr nc, jr_05e_584e

    db $10
    ld b, $00
    add hl, sp
    nop
    daa

jr_05e_584e:
    jr nz, @+$14

    add hl, hl
    ld l, c
    ld hl, $21e1
    and c
    ld hl, $21a1
    pop hl
    ld sp, $3bb1
    cp e
    ld h, a
    rst $20
    ld b, d
    jp $e342


    ld b, d
    jp $d242


    ld b, [hl]
    ld b, a
    ld b, d
    ld b, d
    add d
    sub d
    add d
    or d
    nop
    add d
    add b
    nop
    add b
    inc b
    inc b
    add b
    add h
    ld bc, $8304
    inc b
    adc e
    ld bc, $0486
    add c
    inc b
    add c
    nop
    rst $08
    jr jr_05e_582b

    ld [$0077], sp
    ld e, e
    ld [$0893], sp
    and e
    nop
    sbc a
    db $10
    xor [hl]
    nop
    xor d
    nop
    cp [hl]
    db $10
    add $10
    adc [hl]
    sub b
    ld b, [hl]
    sub e
    ld h, h
    db $10
    push hl
    db $10
    jp hl


    db $10
    call $cf10
    add c
    ld a, [hl]
    ld bc, $01ea
    ld a, [$4ea1]
    ld hl, $e14e
    ld c, $61
    sbc [hl]
    ld hl, $20de
    rst $18
    ld h, b
    sbc a
    ld [hl+], a
    db $dd
    ld b, d
    cp h
    ld b, d
    cp l
    ld b, d

Jump_05e_58c3:
    cp h
    db $76
    adc b
    sbc $20
    sbc $60
    sub $08
    ret nz

    ld d, e
    ret nz

    rlca
    ret nz

    inc bc
    ret nz

    ld d, $80
    rst $38
    add b
    or $80
    db $e3
    add b
    rst $10
    add e
    adc h
    add a
    sbc b
    add a
    ld [$6d02], sp
    rlca
    ret c

    rlca
    ld hl, sp+$07
    cp b
    rlca
    ld hl, sp+$1e
    pop hl
    rrca
    ldh a, [$88]
    db $db
    ret c

    daa
    ld e, b
    xor a
    cp l
    ld b, d
    cp [hl]
    ld b, c
    sbc $25
    scf
    ret z

    scf
    ret


    scf
    ret


    sub a
    ld l, b
    sub a
    ld l, b
    rst $30
    ld [$08f7], sp
    cpl
    ret nc

    sub l
    ld l, d
    ld b, l
    cp d
    adc [hl]
    ld [hl], c
    cpl
    ret nc

    and [hl]
    ld e, c
    ld h, d
    adc l
    ld h, d
    sbc l
    ld [hl+], a
    call $c926
    ld h, $59
    inc b
    ei
    ld b, h
    cp e
    ld b, d
    cp l
    ld b, d
    cp h
    ld b, d
    cp l
    call nz, $c43b
    dec sp
    call nz, $d418
    ld [$18c4], sp
    ret nz

    inc e
    add b
    ld b, h
    add b
    ld b, h
    add b
    inc b
    nop
    add b
    nop
    add b
    add b
    nop
    add b
    add hl, bc
    add b
    add hl, bc
    nop
    add b
    nop
    adc e
    nop
    adc [hl]
    nop
    adc e
    ld bc, $3ba8
    dec sp
    dec c
    dec c
    ld d, a
    ld d, a
    inc de
    sub e
    ld [$00a8], sp
    add b
    nop
    add b
    nop
    add b
    inc de
    inc de
    ld a, [de]
    sbc d
    ld de, $1e11
    ld e, $1a
    ld a, [de]
    ld c, $0e
    rla
    rla
    ld de, $0011
    inc hl
    nop
    daa
    ld [bc], a
    ld hl, $2700
    nop
    daa
    nop
    rst $18
    ld b, b
    xor a
    ld b, b
    sub a
    ld d, b
    and a
    nop
    db $fd
    ld b, b
    cp e
    nop
    rst $20
    ld bc, $01c6
    jp nz, Jump_000_2f40

    ld b, c
    cp d
    add hl, bc
    ld b, [hl]
    nop
    db $d3
    nop
    push af
    nop
    pop de
    nop
    adc c
    add b
    ld d, e
    add b
    ld d, h
    nop
    sbc c
    add b
    ld c, e
    nop
    add a
    ld bc, $00c0
    and b
    nop
    ld bc, $d000
    nop
    ld b, b
    nop
    ld d, c
    ld d, b
    ld d, b
    pop hl
    pop hl
    or e
    or e
    nop
    nop

jr_05e_59b8:
    ld [de], a
    ld [de], a
    ld b, $06
    ld [hl+], a
    ld [hl+], a
    xor $ee
    nop
    and d
    nop
    and [hl]
    nop
    ld h, $00
    ld l, $00
    xor a
    nop
    cp $04
    cp e
    inc b
    ld a, d
    inc c
    ld [hl], e
    inc c
    ld [hl], e
    dec e
    ld [c], a
    ld e, $e1
    inc e
    ret nz

    ret z

    scf
    call nc, $d828
    dec h
    ld d, b
    xor l
    ret c

    daa
    ret z

    ld sp, $27d8
    cp b
    ld b, a
    cp e
    ld b, h
    adc a
    ld a, e
    sbc a
    ld a, a
    cp $01
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    jr nc, jr_05e_59b8

    ld b, d
    cp l
    ld b, d
    db $fc
    inc bc
    cp h
    ld b, e
    db $fc
    inc de
    db $fd
    ld [de], a
    rst $38
    inc h
    db $fd
    ld b, $ff
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    db $fd
    ld [de], a
    db $dd
    ld a, [hl+]
    ld e, [hl]
    xor c
    ld a, a
    adc b
    ld e, $e9
    ld e, [hl]
    add hl, hl
    ld e, $e9
    ld l, [hl]
    ld de, $f00f
    rrca
    or b
    dec de
    ld h, h
    dec bc
    ld [hl], h
    inc bc
    ld a, h
    ld bc, $035e
    ret z

    ld [bc], a
    sbc l
    nop
    adc e
    nop
    add a
    nop
    adc a
    nop
    adc e
    nop
    xor l
    nop
    ld [de], a
    nop
    sub [hl]
    and l
    and l
    ld hl, $4521
    ld b, l
    and h
    and h
    add l
    add l
    ld [hl], l
    ld [hl], l
    daa
    daa
    ld h, $26
    inc b
    ld h, d
    inc b
    dec hl
    inc bc
    inc h
    ld bc, $01a6
    sub [hl]
    nop
    rrca
    ld bc, $01a4
    add $03
    inc bc
    jp $43c3


    ld d, e
    inc bc
    inc bc
    dec bc
    dec bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, d
    ld b, [hl]
    ld b, c
    ld b, l
    ld h, b
    ld h, h
    and d
    and [hl]
    sub b
    sbc h
    jp nz, $82ce

    adc [hl]
    add c
    adc l
    add b
    adc h
    add b
    adc h
    sub c
    sbc l
    sub b
    sub b
    call nc, $f1d4
    pop af
    sub b
    sub b
    db $dd
    db $dd
    nop
    sbc l
    add c
    inc l
    jr nz, @-$79

    nop
    cpl
    nop
    ld c, l
    ld bc, $0036
    and l
    nop
    or h
    dec l
    dec l
    rra
    rra
    rlca
    rlca
    xor a
    xor a
    rlca
    rlca
    rrca
    rrca
    daa
    daa
    xor a
    xor a
    nop
    ld c, [hl]
    ld b, $49
    ld [bc], a
    ld c, l
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    inc bc
    ld l, h
    dec bc
    call nc, $ca05
    inc c
    ld d, e
    inc a
    ld b, e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add c
    inc a
    jp $c33c


    ld a, h
    add e
    ld a, l
    add b
    cp l
    ld d, d
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $7d
    add d
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    di
    inc c
    rst $38
    nop
    rst $38
    rlca
    rst $38
    and b
    rst $38
    ldh [rIE], a
    cp $ff
    add sp, -$18
    rla
    ld l, b
    sub a
    ld sp, hl
    ld b, $f9
    ld b, $b9
    ld b, [hl]
    ld a, $c1
    ld e, d
    and l
    or d
    ld c, l
    ld bc, $0135
    ld sp, $3101
    ld bc, $0035
    dec [hl]
    nop
    ld [hl], b
    add b
    ld [hl], b
    adc b
    nop
    ld [hl], a
    ld [$8877], sp
    ld [hl], e
    dec c
    ld a, a
    add d
    ccf
    jp $c33f


    ld e, a
    and b
    ld a, a
    add b
    cpl
    ld d, d
    cpl
    ld d, d
    xor a
    ld d, d
    xor a
    ld d, d
    adc a
    ld [hl], e
    adc a
    ld [hl], d
    adc a
    ld [hl], a
    xor a
    ld d, $af
    ld d, b
    cp a
    ld b, b
    cp a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    sbc a
    ld h, [hl]
    cp a
    ld b, h
    add b
    nop
    ret nz

    nop
    ld h, d
    nop
    ld b, d
    inc b
    add b
    inc b
    ld [hl], b
    inc b
    and h
    inc b
    add sp, $04
    ld d, a
    dec l
    ld d, a
    xor [hl]
    rra
    db $e4
    rrca
    db $f4
    rst $08
    inc [hl]
    rst $28
    inc d
    and h
    ld e, e
    add b
    ld a, a
    adc b
    daa
    adc d
    dec [hl]
    adc [hl]

jr_05e_5b65:
    ld hl, $b10e
    inc c
    sub e
    ld [$1df5], sp
    ld [hl+], a
    dec e
    ld h, d
    add hl, de
    and $18
    rst $20
    jr jr_05e_5b65

    ld [$183e], sp
    adc a
    jr jr_05e_5bab

    inc e
    xor e
    rra
    jr z, jr_05e_5bbf

    ret


    jr @+$40

    jr jr_05e_5c05

    jr jr_05e_5bc7

    jr jr_05e_5c09

    jr jr_05e_5bf3

    nop
    ld a, e
    ld b, b
    cp c
    ldh a, [$09]
    ld h, b
    sbc c
    ld [hl], c
    adc d
    add sp, $17
    ld a, h
    add e
    ldh a, [$0b]
    and b
    ld e, d
    ld [hl], e
    adc h
    ld h, e
    sbc h
    dec hl
    ret nc

    and b
    ld e, a
    and b

jr_05e_5ba7:
    ld e, c
    jr nz, @-$21

    or b

jr_05e_5bab:
    ld c, d
    and b
    dec e
    and b
    ld e, e
    cp c
    ld h, [hl]
    db $fc
    inc hl
    or b
    ld l, a
    jr nc, jr_05e_5ba7

    ld a, [hl+]
    push af
    cp a
    ld h, b
    dec sp
    db $e4
    dec sp

jr_05e_5bbf:
    db $e4
    ld bc, $40fa
    cp e
    ld b, d
    cp l
    ld h, e

jr_05e_5bc7:
    sbc h
    ld b, e
    cp h
    ld h, e
    sbc h
    ld a, [$f005]
    ld e, $07
    ld b, b
    dec de
    nop
    inc bc
    nop
    nop
    nop
    nop
    dec b
    nop
    ld b, e
    db $10
    ld a, a
    nop
    cp $40
    xor $00
    nop
    nop
    nop
    ld bc, $0100
    nop
    rra
    nop
    dec bc
    nop
    rla
    nop
    nop
    add b
    inc bc

jr_05e_5bf3:
    xor b
    inc bc
    cp b
    dec b
    jr c, jr_05e_5bf9

jr_05e_5bf9:
    ld [$0d01], sp
    inc bc
    rrca
    inc bc
    rra
    xor l
    ld d, e
    ld a, [hl]
    add e
    ld c, d

jr_05e_5c05:
    or a
    ld b, e
    cp a
    ld l, c

jr_05e_5c09:
    sbc a
    or $0b
    rst $20
    rra
    rst $00
    ccf
    adc $37
    ld e, [hl]
    and a
    db $fc
    rlca
    and l
    ld e, a
    add e
    ld a, a
    ld d, e
    cp a
    ret z

    scf
    db $e4
    dec de
    or $09
    call nz, $cc3f
    scf
    ld a, l
    add a
    db $fc
    rlca
    or $09
    add [hl]
    ld a, c
    ld d, h

jr_05e_5c2f:
    cp a
    nop

jr_05e_5c31:
    scf
    nop

jr_05e_5c33:
    inc de
    rlca
    rla
    dec bc
    ld h, a
    ld [$1823], sp
    dec b
    inc b
    inc c
    rlca
    jr jr_05e_5c31

    xor a
    pop af
    ld l, [hl]
    ldh a, [$6f]
    or b
    ld c, a

jr_05e_5c48:
    ld hl, sp+$07
    ld a, b
    sub a
    db $f4
    dec sp
    ld a, [c]
    dec c
    ldh [rNR31], a
    sub b
    ld l, e
    pop de
    jr z, jr_05e_5c48

    ld a, [bc]
    pop af
    ld a, $73
    sbc h
    db $e3
    inc d
    and e
    ld b, h
    ld h, d
    sbc l
    xor $11
    adc $30
    sbc [hl]
    ld h, c
    ld e, $e1
    jr c, jr_05e_5c33

    ldh [$1f], a
    ldh [rNR24], a
    pop hl
    ld d, b
    ld h, b
    sub c
    db $10
    jp hl


    nop
    di
    ld h, b
    sub a
    ld h, h
    sub c
    ld b, h
    cp e
    ld [$10d6], sp
    rst $08
    inc b
    ei
    sub b
    ld h, a
    ldh a, [$0d]
    ldh a, [$2f]
    di
    inc c
    dec b
    ld a, [c]
    ld b, b
    cp a
    ld b, b
    cp e
    ret nc

    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    db $10
    db $eb
    ld b, b
    cp e
    ld b, b
    sbc a
    ret nz

    ld a, $c0
    or a
    ret nz

    rra
    inc b
    ld a, [$f800]
    ld h, b
    sub h
    ret nz

    jr nz, jr_05e_5c2f

    ld h, d
    nop
    db $eb
    nop
    rst $38
    nop
    ld a, [hl]
    ld h, b
    sbc a
    ld h, b
    sbc [hl]
    ret nz

    ld a, $c0
    cp a
    ret nz

    rst $30
    inc b
    di
    sub h
    ld l, e
    sub b
    ld l, a
    sbc b
    ld h, a
    add [hl]
    ld a, c
    db $e3
    inc e
    ld h, b
    sbc a
    ld [hl], c
    adc [hl]
    inc bc
    db $fc
    ld [$18d7], sp
    rst $20
    dec l
    jp nc, Jump_05e_44bf

    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    nop
    cp $01
    rst $38
    nop
    ldh [$1f], a
    nop
    db $eb
    nop
    rst $38
    nop
    or l
    nop
    sbc a
    nop
    ld a, l
    xor a
    ld a, b
    add d
    ld a, a
    adc e
    ld a, a
    add b
    ld a, a
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    and b
    ld a, a
    add b
    ld a, a
    ld h, b
    rst $38
    jp nz, $daff

    db $fd
    ldh a, [rIE]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    sub l
    rst $38
    rst $10
    rst $38
    ld [hl], a
    cp l
    ld e, d
    db $ed
    ld d, b
    rst $28
    db $10
    rst $38
    ld l, d
    cp l
    ld hl, $15fe
    cp $2b
    call nc, $ffff
    rst $38
    sbc e
    rst $38
    sub h
    sbc a
    ld h, b
    sbc a
    ld h, e
    adc a
    db $76
    rst $28
    ldh a, [rTAC]
    ldh a, [rP1]
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld b, b
    cp [hl]
    nop
    pop af
    nop
    reti


    ld bc, $c0fc
    ld hl, $0ff0
    ldh [rNR10], a
    ret nz

    and b
    add b
    ld b, c
    nop
    pop bc
    nop
    add c
    nop
    add c
    nop
    add e
    add c
    ld l, h
    ret z

    inc sp
    ld b, b
    sbc a
    ld d, b
    and [hl]
    ld c, $f0
    rlca
    ld hl, sp+$01
    ld a, [hl]
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    cpl
    nop
    rst $08

Call_05e_5d80:
    ld c, d
    ld c, d
    rrca
    rrca
    nop
    nop
    and d
    and d
    ret nz

    ret nz

    ret


    ret


    ld hl, sp-$08
    ldh [$e0], a
    add b
    ld h, $00
    cp a
    nop
    rst $38
    nop
    scf
    nop
    scf
    nop
    ld d, a
    nop
    ld d, [hl]
    nop
    cp h
    ld l, a
    ld l, a
    cp h
    cp h
    rst $38
    rst $38
    sub $d6
    rst $08
    rst $08
    and a
    and a
    adc b
    adc b
    ld b, b
    ld b, b
    nop
    add d
    nop

jr_05e_5db3:
    add c
    nop
    add d
    nop
    scf
    nop
    ld a, [c]
    nop
    ld a, [$aa40]
    nop
    call nz, $cd00
    nop
    add hl, hl
    add b
    ld l, a
    ld e, $e1
    ld h, a
    sbc b
    and $59
    pop bc
    ld [hl-], a
    ret nz

    inc [hl]
    add b
    ld h, c
    jr nz, jr_05e_5db3

    add b
    ld a, a
    rrca
    pop af
    rst $38
    ccf
    rst $38
    rst $38
    db $fc
    ld b, e
    rst $38
    nop
    adc a
    ld [hl], b
    add e
    ld a, h
    inc bc
    ld [hl], h
    inc bc
    ld b, h
    nop
    rst $10
    nop
    ld b, [hl]
    nop
    rst $18
    nop
    rrca
    ld de, $0700
    ld [$f8cb], sp
    dec de
    ld hl, sp+$15
    ld hl, sp+$12
    ld hl, sp+$10
    cp $10
    di
    nop
    di
    nop
    db $e3
    ld h, e
    rst $30
    ld [hl], e
    rst $38
    ld [hl], l
    rst $38
    db $fd
    rst $38
    pop hl
    db $fd
    rst $20
    ld hl, sp-$11
    ldh [$df], a
    ret nz

    rrca
    add b
    cpl

jr_05e_5e17:
    nop
    rrca
    sub b
    add e
    ret nz

    ld c, l
    ldh [rKEY1], a
    ldh [$cf], a
    ldh [$df], a
    ldh [$df], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rNR50]
    ldh a, [$78]
    db $e3
    db $10
    db $e4
    db $10
    db $ec
    nop
    ld hl, sp+$00

jr_05e_5e35:
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh [rNR41], a
    jr nz, jr_05e_5e3d

jr_05e_5e3d:
    ld h, b
    nop
    nop
    ccf
    ldh a, [$2f]
    ld sp, hl
    jr nz, jr_05e_5e35

    nop
    rst $30
    nop
    ld a, [$bc00]
    jr nz, jr_05e_5e17

    nop
    db $ec
    nop
    jp hl


    nop
    ld [$9800], sp
    add b
    ld b, b
    nop
    nop
    nop
    ld bc, $8601
    rrca
    ldh a, [$bb]
    ld b, h
    sub [hl]
    ld c, c
    push bc
    ld a, [hl-]
    ld d, e
    xor h
    ld b, d
    cp l
    inc b
    db $db
    nop
    sub d
    nop
    adc b
    ld [$ec0e], sp
    rst $28
    db $fc
    rst $38
    ld hl, sp-$07
    cp b
    cp h
    jr c, jr_05e_5ebb

    ld a, b
    ld a, c
    ld a, $3e
    or e
    cp a
    ld [hl], d
    db $76
    add b
    add b
    ret nz

    ret nz

    jp nc, $fdd2

    db $fd
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    pop hl
    pop hl
    ret nz

    jp nz, $0700

    add b
    sbc a
    ret nz

    rst $18
    add b
    cp a
    nop
    ccf
    nop
    ld a, a
    nop
    cpl
    nop
    ld c, a
    nop
    rrca
    ld b, b
    ld c, a
    add b
    adc l
    add b
    adc a
    ret nz

    rst $08
    ldh [rIE], a
    ld h, b
    ld a, a
    ldh [rIE], a
    ld h, b
    ld a, a
    ld b, b
    ld c, a
    ld [hl], b

jr_05e_5ebb:
    ld [hl], a
    or b
    or b
    ld a, [c]
    or $00
    ld [c], a
    nop
    rst $20
    nop
    rst $28
    ld c, $f1
    rlca
    cp h
    ld c, $e1
    rrca
    ldh a, [$08]
    rst $10
    ld b, b
    cp [hl]
    ret nz

    ccf
    ld [$fe35], a
    db $fd
    cp $fe
    rst $38
    cp $ff
    nop
    nop
    rst $38
    ldh [$1f], a
    cp $01
    db $f4
    dec bc
    add b
    ld a, a
    nop
    jp c, $2810

    ld h, b
    sbc b
    nop
    db $fd
    inc e
    db $e3
    ld l, $d1
    db $10
    rst $28
    ld [$80f7], sp
    ld a, a
    inc l
    db $d3
    or a
    ld c, b
    cp a
    ld b, b
    ld a, [bc]
    ret nz

    ld e, $c1
    sbc l
    pop bc
    inc c
    db $e3
    ld c, $c0
    jr c, @-$7d

    add h
    adc a
    nop
    rst $08
    rst $38
    ld a, h
    sbc $61
    adc $71
    ld h, h
    db $db
    ld c, h
    di
    add $39
    ld b, d
    db $fd
    ld b, h
    cp e
    cp c
    nop
    and l
    inc b
    or l
    inc b
    or a
    inc b
    add e
    ld c, h
    inc bc
    ld l, b
    inc bc

jr_05e_5f2d:
    ld a, b
    inc bc
    jr jr_05e_5f2d

    dec bc
    db $fc
    rrca
    db $fc
    dec bc
    call c, $ec2b
    rra
    db $ec
    rla
    db $fc
    rlca
    cp h
    ld b, a
    db $fc
    ld c, e
    db $fc
    ei
    inc c
    rst $38
    dec c
    sub d
    nop
    rra
    nop
    ccf

jr_05e_5f4c:
    db $10
    ld a, [hl+]
    db $10
    xor e
    jr nz, jr_05e_5f71

    nop
    ld h, e
    nop
    ld a, c
    nop
    rlc b
    di
    add b
    ld l, $00
    adc h
    nop
    or d
    ret nz

    ret nz

    add b
    add h
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    call nz, $ccc0
    ld b, b
    ld h, h
    nop
    ld h, b
    nop

jr_05e_5f71:
    ld h, b
    nop
    call nz, $f600
    nop
    or a
    nop
    push af
    nop
    ld l, e
    nop
    ld l, c
    nop
    ld a, h
    nop
    ld h, d
    jr nz, @+$66

    ld b, b
    ld c, a
    nop
    rrca
    nop
    dec c
    add b
    adc a
    nop
    rrca
    nop
    rrca
    nop
    rra
    ld b, b
    ld a, h
    ld b, c
    ld e, c
    ld h, d

jr_05e_5f97:
    ld [c], a
    inc a
    cp h
    jr nz, jr_05e_5f4c

    nop
    sbc a
    nop
    sbc d
    nop
    sbc $20
    cp $20
    cp $20
    cp $21
    rst $38

jr_05e_5faa:
    jr nz, jr_05e_5faa

    nop
    sbc $01
    push de
    ld bc, $03dd
    db $d3
    inc bc
    rlc e
    rst $08
    ld hl, $35e1
    push af
    ld [hl], b
    ld a, b
    cp [hl]
    cp [hl]
    ld [$02f6], sp
    xor h
    nop
    or $02
    pop de
    nop
    rst $30
    jr nc, jr_05e_5f97

    db $10
    xor $08
    rst $30
    nop
    add $00
    xor [hl]
    ld b, $b9
    ld b, $f9
    ld e, a
    and e
    rst $38
    rst $38
    rst $28
    ld de, $5aa0
    nop
    rst $38
    nop
    push af
    db $10
    add sp, $00
    ld hl, sp+$00
    dec [hl]
    nop
    nop
    nop
    ld e, l
    ld [$6004], sp
    inc d
    call nz, $e00e
    ld c, $c0
    ld e, $8c
    ld e, $1c
    ld a, $48
    ld a, h
    sub d
    ld hl, sp+$28
    pop hl
    add h
    ret nz

    rlca
    add b
    jr nz, jr_05e_6070

    ld h, b
    ld hl, sp+$50
    db $fd
    rst $10
    rst $38
    adc a
    rst $38
    ld b, d
    rst $38
    jr nz, @+$01

    jr nc, jr_05e_6095

    xor $7f
    add c
    ccf
    ld b, h
    ld a, $e0
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    inc bc
    cp $03
    ld a, [$f803]
    rlca
    db $f4
    ld b, $f3
    inc b
    di

jr_05e_602d:
    ld [$08ff], sp
    add hl, de
    xor $1c
    rst $28
    inc c
    ld a, [$ff04]
    inc b
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    nop
    rst $38
    ccf
    jp z, $3ffb

    inc bc
    db $fd
    inc bc
    ld a, h
    jr nz, jr_05e_602d

    ld b, $f9
    ld b, $f9
    rlca
    sbc $0f
    inc [hl]
    rrca
    db $f4
    rrca
    ldh [rIF], a
    nop
    rrca
    ld [$510e], sp
    ld [$0637], sp
    add hl, de
    ld [bc], a
    dec e
    ld [bc], a
    dec c
    ld [bc], a
    dec b
    inc b
    inc bc
    inc b
    inc hl
    nop
    inc b

jr_05e_6070:
    dec b
    dec h
    ld bc, $0771
    rst $30
    dec b
    push af
    rlca
    rst $20
    inc bc
    jp Jump_05e_5717


    inc sp
    inc sp
    ld h, $26
    ld c, $8e
    inc c
    inc c
    jr c, jr_05e_60c0

    nop
    nop
    add b
    add b
    add hl, de
    add hl, de
    ld e, a
    rst $18
    ld e, d
    jp c, $bdbd

    ld l, e

jr_05e_6095:
    ld l, e
    ld [hl+], a
    ld [hl+], a
    add hl, de
    add hl, de
    ld [hl+], a
    and d

jr_05e_609c:
    dec b
    push bc
    inc c
    adc h
    inc e
    db $fc
    jr jr_05e_609c

    ld [$0ae8], sp
    ld a, [$0202]
    nop
    db $fc
    nop
    cp a
    nop
    ld c, a
    nop
    ld a, l
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    cp $01
    rst $38
    ld bc, $01ff
    ld sp, hl

jr_05e_60c0:
    nop
    inc bc
    nop
    ld bc, $0100
    ld bc, $770e
    adc b
    ld [hl], e
    adc h
    ld [hl], b
    adc l
    ld h, b
    sbc l
    and b
    ld d, e
    nop
    ei
    ldh [$1f], a
    ld b, d
    or l
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld bc, $de01
    nop
    ld a, a
    nop
    call nc, RST_00
    nop
    nop
    nop
    add hl, hl
    nop
    ld [hl-], a
    rrca
    ld [hl], b
    rrca
    ld d, b
    ld a, $c3
    pop hl
    rra
    sub [hl]
    ld l, a
    ldh a, [rIF]
    add sp, $17
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    and $1b

Jump_05e_6100:
    cp [hl]
    ld b, e
    ld a, e

Jump_05e_6103:
    add a
    inc hl
    rst $18
    ld h, $df
    ld a, [c]
    rrca
    ld sp, hl
    rlca
    ld a, l
    add e
    ld a, c
    add a
    ld [hl], c
    adc a
    sub a
    jp hl


    rra
    pop hl
    inc e
    db $e3
    db $10
    rst $28
    ld [hl-], a
    rst $08
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld bc, $0107
    add a
    ld bc, $018d
    and c
    ld bc, $01c3
    ld b, e
    ld bc, $830f
    rlca
    rst $38
    ld bc, $c07f
    ld a, a
    pop bc
    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    adc b
    ccf
    ldh a, [$3f]
    ldh [$3f], a
    jp $837f


    rst $38
    ld bc, $84fb
    ei
    add h
    ld e, e
    and h
    ccf
    pop bc
    ld a, a
    add b
    ld a, [$fd25]
    ld a, [bc]
    rst $38
    ld b, h
    rst $38
    add hl, bc
    sbc a
    ld l, c
    sbc a
    ld h, b
    add sp, $17
    add sp, $17
    add d
    ld a, l
    dec c
    ld a, [c]
    rra
    ret nz

    ld e, $a9
    dec de
    add h
    rlca
    jp c, $fa07

    add a
    ld a, d
    rlca
    ld a, d
    nop
    db $e3
    nop
    ld [hl], a
    inc b
    di
    add b
    ld e, h
    add c
    ld c, h
    ld bc, $01db
    cp d

Call_05e_6180:
    jr jr_05e_61a5

    nop
    ccf
    jr jr_05e_61ed

    jr jr_05e_618f

    ld [bc], a
    dec e
    ld [bc], a
    dec e
    ld bc, $041e

jr_05e_618f:
    dec de
    dec b
    ld a, [de]
    ld [bc], a
    sbc l
    ld [bc], a
    db $fd
    inc b
    ei
    dec b
    ld [hl], d
    ld bc, $09be
    inc d
    nop
    ld l, a
    ld [bc], a
    add hl, sp
    nop
    ld l, e
    ld [bc], a

jr_05e_61a5:
    or l
    nop
    rlca
    nop
    dec e
    nop
    cp d
    nop
    call c, Call_05e_6c03
    ld [bc], a
    ld a, l
    db $10
    ld l, a
    nop
    ld a, h
    nop
    ld a, h
    nop
    db $fc
    ret c

    dec h
    ld [$08d1], sp
    inc b
    nop
    call z, $8600
    nop
    sbc l
    rrca
    ldh a, [$83]
    ld a, a
    rst $00
    add hl, sp
    ld b, a
    xor b
    rlca
    ld a, b
    ld h, $51
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    rst $38
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    inc b
    ld c, e
    inc c
    di
    ld e, $e1
    jr @-$17

    inc c
    di
    rst $38

jr_05e_61ed:
    nop
    rst $38
    nop
    rla
    rst $28
    scf
    rst $08
    adc e
    ld a, a
    and b
    ld e, a
    jp z, $a83f

    ld e, a
    call z, $283f
    rst $18
    ld b, h
    cp a
    pop bc
    cp [hl]
    ld b, c
    cp [hl]
    add hl, bc
    cp $61
    cp $45
    ld a, [$fe69]
    rst $20
    ld hl, sp-$3b
    ld a, [$f8c7]
    rst $20
    ld hl, sp+$05
    ld a, [$f8c7]
    and a
    ld hl, sp+$43
    db $fc
    ld b, a
    ld hl, sp+$02
    db $fd
    ld a, [bc]
    push af
    ld c, $f1
    add hl, bc
    or $01
    rst $38
    ld bc, $11fe
    xor $82
    db $fd
    nop
    db $fd
    nop
    cp [hl]
    nop
    xor $08
    xor h
    ld [$100e], sp
    ld l, $00
    adc d
    nop
    jp nz, $c010

    add b
    ret nz

    nop
    jp nz, $e001

    ld b, c
    ldh [rSTAT], a
    ldh [rSTAT], a

jr_05e_624d:
    ldh [rSCX], a
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nz

    ld c, h
    ret nz

    ld c, c
    ldh [$08], a
    ldh [rVBK], a
    ld h, b
    ld [$2060], sp
    ld hl, $3a20
    ld [bc], a
    rra

jr_05e_6264:
    jr nc, jr_05e_626c

    ld d, b
    ld b, $e1
    nop
    reti


    nop

jr_05e_626c:
    add hl, de
    nop
    nop
    ld d, b
    xor $11
    nop
    or l
    jr nz, jr_05e_624d

    ret nz

    dec sp
    ret nz

    dec sp
    add b
    scf
    add b
    ld h, c
    add b
    ldh [$e0], a
    ld d, b
    jr nc, @-$1d

    jr nc, @-$36

    adc b
    ld a, l
    sbc b
    ld h, b
    sub b
    ld l, b
    and b
    ld e, d
    jr nz, jr_05e_6264

    ld d, b
    xor d
    ldh a, [$0e]
    cp h
    ld b, e
    db $fc
    inc bc
    ld e, a
    and b
    ld a, a
    add b
    rst $18
    jr nz, jr_05e_62fe

    and b
    ld a, [hl]
    add c
    cpl
    ret nc

    xor a
    ld d, b
    cp a
    ld b, b
    rst $38
    dec b
    rst $28
    inc d
    xor a
    ld d, b
    ld e, a
    and c
    ld d, a
    xor c
    ld [hl], a
    adc b
    ld bc, $00fe
    ld [$8000], sp
    nop
    db $ed
    nop
    rst $38
    nop
    rla
    nop
    inc bc
    nop
    dec bc
    inc bc
    db $fc
    add hl, bc
    or [hl]
    ld a, c
    add [hl]
    call c, $be23
    ld b, c
    adc [hl]
    ld [hl], c
    db $fd
    nop
    db $fc
    nop
    ld hl, sp+$00
    add sp, $00
    ld b, b
    inc bc

Jump_05e_62da:
    ld [bc], a
    rst $38
    add hl, bc
    nop
    nop
    nop
    cp a
    ld b, b
    cp b
    ld b, a
    nop
    cp $00
    db $fd
    ld b, b
    cp c
    ld h, b
    sbc [hl]
    ld hl, sp+$07
    call c, Call_000_0423
    push hl
    inc b
    rst $00
    inc b
    and a
    nop
    xor l
    nop
    add a
    nop
    add e
    nop
    inc de

jr_05e_62fe:
    inc b
    ld [de], a
    rst $38
    ld [de], a
    rst $38

jr_05e_6303:
    ld [de], a
    ei
    inc d
    rst $30
    jr jr_05e_6303

    dec b
    cp $01
    cp $01
    cp $01
    cp $41
    rst $38
    nop
    ld a, a
    ld [c], a
    rst $38
    ld b, b
    rst $38
    inc b
    ld a, a
    push bc

Jump_05e_631c:
    ld a, a
    adc b
    rst $38
    ld b, h
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    nop
    push af
    ld a, [bc]
    push af
    ld a, [hl+]
    db $f4
    adc a
    or [hl]
    ld c, l
    cp a
    ld b, h
    cpl
    ret nc

    cp a
    ld b, b
    rra
    db $e4
    rla
    add sp, -$69
    ld l, c
    sub a
    ld l, b
    sub a
    ld l, d
    sbc a
    ld h, b
    sbc a
    ld h, h
    rst $18
    ld hl, $af5f
    ld a, a
    add b
    ld [hl], a
    adc b
    ld a, a
    ld bc, $fc03
    inc bc
    ld a, h
    rlca
    rst $38
    rlca
    ld hl, sp+$06
    ld sp, hl
    rst $38
    ld d, $bf

jr_05e_635b:
    ld c, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    pop hl
    ei
    inc d
    cp a
    ld b, b
    rrca
    ldh a, [$7f]
    add b
    cpl
    ret nc

    ld a, a
    add e
    rrca
    ldh a, [rTIMA]
    ld a, d
    inc bc
    cp h
    inc bc
    ld e, h
    rlca
    ld hl, sp+$07
    db $fc
    rlca
    cp h
    rlca
    cp b
    rra
    and b
    rrca
    ld [hl], b
    ld [$0077], sp
    db $fc
    nop
    rst $38
    ld bc, $010a
    ld b, $01
    sbc d
    ld bc, $0206
    push af

jr_05e_6392:
    ld c, $f1
    ld e, $61
    ld [hl], $c9
    ld a, [c]
    dec c
    ldh [$1f], a
    db $fc
    inc bc
    ld hl, sp+$04
    ld hl, sp+$05
    ldh a, [$0c]
    ld hl, sp+$04
    ld hl, sp+$03
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$47
    ldh a, [rIF]
    cp $01
    or d
    ld c, l
    inc bc
    ldh a, [$03]
    xor l
    inc bc
    rlca
    ld bc, $018e
    cp $0f
    ld [hl], h
    ldh [rP1], a
    add d
    nop
    ld b, b
    ld bc, $0000
    ld [bc], a
    jr c, jr_05e_635b

    jr jr_05e_6392

    jr nz, @-$77

    jr nz, @+$08

    nop
    add b
    nop
    ld b, $20
    ld bc, $0083
    rst $38
    ld c, b
    rst $38
    ld hl, sp+$00
    inc bc
    inc b
    rst $38
    nop
    ld h, c
    sbc [hl]
    nop
    sub e
    nop
    ld a, [de]
    nop
    ld d, a
    nop
    rst $38
    jr nz, @-$20

    nop
    db $f4
    ld l, b
    rst $38
    ret


    ld a, [hl]
    push bc
    ld a, [hl]
    and l

jr_05e_63f7:
    ld a, [hl]
    or l
    ld a, [hl]
    xor e
    ld a, [hl]
    jp $c43e


    dec sp
    ld b, b
    dec sp
    ld b, b
    inc sp
    ld b, b
    inc de
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $0141
    ld b, b
    ld bc, $619f
    rst $18
    ld sp, $30df
    rst $18
    jr nz, jr_05e_63f7

    ld sp, $31de
    db $d3
    inc l
    ei
    inc b
    swap h
    adc e
    inc [hl]
    ld a, [bc]
    push af
    ld c, $f9
    adc a
    db $76
    add a
    ld a, a
    add b
    ld l, a
    add b
    ld a, a
    add b
    ccf
    add d
    ld a, l
    sbc a
    ld h, b
    rst $38
    ld a, [bc]
    sub a
    ld l, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    push hl
    rra
    ldh [$80], a
    ld a, a
    nop
    rst $38
    ld b, c
    cp a
    xor $11
    call $3832
    rst $00
    sbc [hl]
    ld h, c
    cp a
    ld b, b
    inc b
    ei
    or h
    ld c, e
    cp h
    ld b, e
    inc sp
    call z, $b748
    inc bc
    rst $38
    db $fc
    inc bc
    ld b, b
    rst $30
    nop
    rst $38
    nop
    rst $00
    nop
    nop
    stop
    nop
    nop
    nop
    jr nz, jr_05e_647f

    nop
    rst $30
    ld [$0ff0], sp
    pop bc
    ld a, $c0
    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    dec bc

jr_05e_647f:
    db $f4
    rst $28
    ld [de], a
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    db $fd
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    add b
    rst $38
    add c
    xor $43
    cp l
    rlca
    ld sp, hl
    rrca
    ld a, [c]
    ld b, $fb
    inc b
    ei
    inc b
    db $eb
    ld bc, $009e
    cp a
    ld l, a
    ld l, a
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    ld [bc], a
    db $fd
    rra
    ld a, [$70ff]
    rst $38
    ld h, b
    rst $38
    inc h
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    rrca
    nop
    sbc c
    nop
    inc a
    nop
    sbc l
    ld de, $0485
    ld b, c
    nop
    ld bc, $0080
    ld b, b
    nop
    nop
    nop
    nop
    ld [$0400], sp
    inc sp
    rst $38
    dec [hl]
    rst $38
    ld [hl], h
    rst $38
    nop
    ld e, l
    db $fc
    nop
    rst $38
    scf
    rst $38
    ld bc, $e01f
    cpl
    ret nc

    nop
    ld d, c
    nop
    sbc a
    nop
    rst $08
    nop
    add [hl]
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    jr nc, jr_05e_64f7

jr_05e_64f7:
    or b
    inc b
    ld a, b
    ld [$0878], sp
    ld a, b
    nop
    jr z, jr_05e_6515

    inc b
    nop
    ld b, h
    inc d
    inc b
    inc d
    add h
    ld a, h
    dec b
    ld hl, sp+$07
    ld hl, sp+$02
    ld hl, sp+$03
    add a
    ld a, b
    add b
    ld a, a
    add b

jr_05e_6515:
    cpl
    add b
    ld a, a
    add b
    rst $28
    add b
    rst $18
    adc b
    rst $30
    rst $38
    rst $38
    add b
    ld a, a
    ld b, h
    cp e
    nop
    rst $38
    sub b
    ld l, a
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    cp $0f
    rst $30
    rra
    cp $ff
    ld a, $7f
    rst $38
    rst $38
    ld e, a
    rst $38
    ld h, d
    rst $38
    db $e4
    rst $38
    inc c
    rst $38
    ld c, b
    nop
    dec c
    nop
    pop af
    nop
    ld [$f180], a
    nop
    nop
    nop
    nop
    nop
    and b
    ld b, c
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    rla
    add sp, $04
    ei
    ret nz

    ccf
    ld hl, $16de
    db $fd
    rst $38
    nop
    db $10
    rst $28
    add l
    ld a, [hl]
    di
    inc c
    di
    inc c
    rst $30
    ld [$40bf], sp
    rst $30
    ld [$38c7], sp
    sub b
    inc bc
    ld hl, sp+$02
    ld hl, sp+$00
    ldh a, [rTAC]
    ldh a, [rTAC]
    ret nz

    rrca
    add b
    dec a
    db $10
    ld a, a
    ld b, b
    ccf
    ldh [rNR22], a
    ret nz

    add hl, bc
    add b
    dec sp
    ld bc, $01af
    cp a
    nop
    or a
    nop
    and a
    ld bc, $00e9
    cpl
    nop
    ccf
    ret nz

    rrca
    ret nz

    ld e, $00
    inc e
    nop
    ld [hl], $80
    dec h
    ccf
    rst $30
    ccf
    db $fd

jr_05e_65a4:
    ccf
    pop de
    ccf
    jp $c13f


    ccf
    jp nz, $c03f

    rra
    ldh a, [rNR41]
    ld bc, $f810
    db $10
    ld [hl-], a
    nop
    dec bc
    nop
    dec e
    nop
    adc c
    nop
    add [hl]
    nop
    sbc h
    db $fd
    ld a, [bc]
    rst $38
    adc b
    rst $38
    ret z

    db $fd
    adc [hl]
    rst $38
    db $fc
    rst $38
    adc [hl]
    rst $38
    ld c, a
    rst $38
    nop
    jr nz, jr_05e_65d2

jr_05e_65d2:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    sra d
    rst $38
    nop
    ld c, l
    ld [$ff00], sp
    nop

jr_05e_65e2:
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$29]
    sub $3f
    ret nz

    nop
    ld l, a
    ld b, b
    dec de
    nop
    dec de
    db $10
    rra
    jr nc, @+$21

    ld hl, $251f
    rra
    rrca
    rra
    nop
    rra
    rst $18
    jr nz, jr_05e_65e2

    jr nz, jr_05e_65a4

    ld h, b
    ccf
    ret nz

    ld a, a
    add b
    db $fc
    inc bc
    sbc b
    ld h, a
    rst $28
    rst $38
    add b
    ld [bc], a
    db $fc
    ld bc, $01f0
    ldh a, [rSB]
    ldh [rP1], a
    ret nz

    ld bc, $3f80
    ld bc, $fcff
    nop
    nop
    nop
    sbc b
    ld bc, $0388
    nop
    rrca
    add b
    rst $38
    nop
    nop
    nop
    rst $38
    ld bc, $3efe
    pop bc
    ld b, c
    cp a
    ld l, [hl]
    sub c
    rst $38
    nop
    rst $38
    nop
    cp a

Jump_05e_663d:
    ld b, b
    ei
    inc b
    ld a, [de]
    nop
    jr nz, jr_05e_6644

jr_05e_6644:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld bc, $f603
    rrca
    adc a
    ld a, a
    cpl
    rst $38
    ld a, $ff
    nop
    rst $38
    db $fc
    inc bc
    and b
    ld e, a
    db $10
    rst $38
    sub b
    rst $28
    rra
    pop hl
    adc [hl]
    ld [hl], c
    cp $01
    rst $30
    ld [$05fa], sp
    ld hl, sp+$07
    ld h, a
    sbc b
    inc e
    rst $38
    rlca
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    ld hl, $31de
    adc $20
    rst $18
    inc sp
    call z, $956a
    ld a, [bc]
    push af
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    add hl, bc
    cp $20
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    dec b
    rst $38
    ld [hl+], a
    rst $18
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    jr @+$01

    ld b, d
    cp a
    ret z

    scf
    ld [$ea15], a
    dec d
    push de
    dec sp
    dec b
    ld a, [$d926]
    xor h
    ld d, e
    add b
    ld a, a
    sub b
    ld l, a
    add h
    ld a, a
    rst $00
    dec a
    pop bc
    ld a, $87
    ld hl, sp+$40
    cp a
    adc b
    rst $30
    nop
    rst $38
    push bc
    ld a, $eb
    inc e
    db $e3
    inc e
    rst $20
    jr @-$0f

    db $10
    ld [hl], a
    adc b
    or a
    ld c, b
    adc b
    ld [hl], a
    rlca
    rst $38
    cp $ff
    sub c
    ld l, a
    cp $01
    rst $38
    jr nz, @+$01

    nop
    ret nz

    ccf
    rst $38
    nop
    dec b

jr_05e_66e9:
    ld a, [$14eb]
    rst $38
    nop
    xor $11
    ld h, a
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    ld a, d
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ei
    rst $38
    inc bc
    db $fc
    ldh [$1f], a
    db $e3
    rra
    di
    rrca
    and c
    ld e, a
    jr nz, jr_05e_66e9

    nop
    rst $38
    inc h
    ei
    db $fc
    rst $38
    ld l, a
    sub b
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    rrca
    ldh a, [rNR33]
    ld [c], a
    nop
    rst $38
    rst $30
    rst $38
    or a
    ld c, b
    db $fc
    inc bc
    cp $01
    cp [hl]
    ld b, c
    and d
    ld e, l
    nop
    rst $38
    rst $38
    nop
    rrca
    ldh a, [$32]

jr_05e_6731:
    call $df20
    ld c, d
    rst $38
    pop af
    ld c, $f7
    ld [$00ff], sp
    jp nc, $f72d

    ld [$00ff], sp
    ld hl, sp+$07
    ld d, b
    xor a
    or b
    ld c, a
    cp $01
    ld hl, sp+$07
    call nz, $01ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld bc, $01fe
    cp $ff
    nop
    add c
    ld a, a
    ld hl, $67ff
    rst $38
    add e
    db $fc
    ld hl, $7dde
    add d
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rrca
    db $10
    rst $10
    ldh a, [$37]
    ldh a, [$2b]
    ld [hl], b
    ld l, $30
    scf
    ldh a, [$31]
    ld a, h
    jr nz, jr_05e_6731

    ld [$00f2], sp
    ld [hl], b
    nop
    ld [c], a
    inc b
    jp $ff00


    jr nc, @+$01

    db $10
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    ld b, b
    cp $81
    db $f4
    add e
    ldh a, [$27]
    ldh a, [rTAC]
    ldh a, [rIF]
    ret nz

    rrca
    ret nz

    rlca
    ret nz

    inc bc
    call nz, $e402
    add c
    ldh a, [$03]
    db $fc
    inc bc
    ret c

    ld de, $01bc
    ld a, h
    ld bc, $0d7c
    ld a, [hl]
    ld bc, $01fc
    ld a, h
    nop
    xor a
    ld a, [bc]
    rst $38
    inc h
    rst $28
    ld c, d
    rst $08
    ld e, b
    xor a
    push bc
    ld a, $30
    rst $08
    dec e
    ld [c], a
    ld c, $f1
    adc [hl]

Jump_05e_67cb:
    ld [hl], c
    cp $01
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $a8
    ld d, a
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    db $eb
    rst $38
    ld bc, $fffe
    inc bc
    rst $18
    inc hl
    inc bc
    db $fc
    rst $38
    dec b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $08

jr_05e_67ef:
    jr nc, jr_05e_67ef

    rst $28
    rst $38
    rst $08
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $fd83
    add [hl]
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, [hl]
    cp c
    and b
    ld a, a
    ld a, e
    rst $38
    add b
    jr c, jr_05e_6813

jr_05e_6813:
    db $e4
    nop
    or $00
    inc a
    nop
    inc d
    nop
    inc [hl]
    add b
    add sp, -$13
    rst $38
    ld a, l
    add d
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    sbc h
    ld l, a
    daa
    rst $18
    rst $38
    nop
    ret nz

    ccf
    nop
    rst $38
    add c
    ld a, a
    ld a, [hl]
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ld [hl+], a
    db $dd
    nop
    rst $38
    nop

jr_05e_6843:
    rst $38
    pop bc
    rst $38
    dec b
    ld a, [$807f]
    db $fc
    inc bc
    inc b
    rst $38
    ld e, a
    ldh [$7f], a
    add b
    dec b
    ld a, [$708f]
    dec d
    ld [$c73a], a
    rst $28
    rra
    cp [hl]
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    db $10
    ld sp, hl
    nop
    jr c, jr_05e_6867

jr_05e_6867:
    jr nc, jr_05e_6869

jr_05e_6869:
    nop
    nop
    add b
    nop
    and b
    inc bc
    ld c, b
    ld l, b
    sub a
    nop
    rst $38
    nop
    cp a
    inc b
    ei
    nop
    rst $38
    inc b
    ei
    dec de
    db $e4
    sbc l
    ld h, d
    cp e
    ld b, h
    ldh a, [$cf]
    ld a, [c]
    ld c, l
    ldh a, [$cf]
    ld hl, sp-$19
    ld hl, sp-$39
    ld hl, sp-$29
    ldh a, [$ef]
    ld c, $e0
    inc l
    pop hl
    ret nz

    ld sp, $1fc0
    ldh [rNR31], a
    rst $20
    db $10
    and $10
    rst $20
    ld [$fb0c], sp
    inc c
    ei
    inc c
    di
    inc c
    di
    inc b
    rst $38
    inc b
    ei
    inc b
    ei
    ld b, $f9
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    ld [hl], b
    inc bc
    pop bc
    rra
    ret nz

    rra
    ret nz

    jr nc, jr_05e_6843

    ld [hl], b
    nop
    ldh [rLCDC], a
    cp $00
    cp $00
    rst $30
    nop
    dec h
    nop
    nop
    ccf
    ret nz

    ccf
    ret nz

    ld e, a
    and b
    sbc a
    ldh [$60], a
    rst $38
    inc bc
    db $fc
    add sp, -$01
    ld [$00ff], sp
    rst $38
    ld d, h
    rst $38
    jr nz, @+$01

    ld [$f0ff], sp
    rrca
    ld [$c0ff], sp
    ccf
    ldh [$1f], a
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
    jr jr_05e_6923

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05e_6933

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05e_6943

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05e_6953

    ld [hl-], a

jr_05e_6923:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05e_6963

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05e_6933:
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

jr_05e_6943:
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

jr_05e_6953:
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

jr_05e_6963:
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
    jr jr_05e_6a23

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05e_6a33

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05e_6a43

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05e_6a53

    ld [hl-], a

jr_05e_6a23:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05e_6a63

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc b
    nop
    inc b

jr_05e_6a33:
    inc b
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
    inc b
    inc b
    inc b
    nop
    inc b

jr_05e_6a43:
    inc b
    nop
    nop
    nop
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    ld b, $04
    dec b
    inc b
    inc b

jr_05e_6a53:
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b

jr_05e_6a63:
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    ld b, $04
    inc b
    ld b, $06
    inc b
    ld b, $06
    ld b, $04
    ld b, $04
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0606
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    ld b, $06
    ld b, $01
    ld b, $04
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $01
    ld b, $04
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    nop
    nop
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0606
    ld b, $04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld b, $06
    ld b, $06
    inc b
    nop
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld b, $01
    ld b, $06
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld bc, $0101
    ld bc, $0601
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld bc, $0601
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    ld b, $06
    ld b, $06
    ld b, $04
    ld b, $06
    ld b, $06
    inc b
    inc b
    ld bc, $0604
    inc b
    ld b, $01
    ld b, $01
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    ld b, $0e
    ld c, $09
    add hl, bc
    ld c, $09
    ld c, $09
    add hl, bc
    ld c, $09
    add hl, bc
    inc c
    inc c
    inc c
    ld c, $09
    ld c, $09
    add hl, bc
    ld c, $0e
    add hl, bc
    ld c, $09
    ld c, $09
    add hl, bc
    ld c, $0c
    inc c
    inc c
    add hl, bc
    ld c, $0e
    add hl, bc
    inc c
    ld c, $0e
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $09
    add hl, bc
    ld c, $0e

jr_05e_6b6e:
    inc c
    inc c
    add b
    ld b, b
    ldh [rNR23], a
    inc a
    ld [bc], a
    rrca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    ldh [rP1], a
    ld h, b
    nop
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    add b
    sbc d
    jr nz, jr_05e_6b6e

    dec e
    ld [c], a
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    stop
    ld bc, $0000
    nop
    nop
    nop
    inc b
    nop
    ld b, e
    ld bc, $073e
    jr c, jr_05e_6bc3

    ld [$2928], a
    nop
    dec d
    add b
    sub b
    add d
    sbc e
    ld [bc], a
    inc de
    ld [bc], a
    inc de
    nop
    nop
    ld bc, $0201
    ld a, [bc]
    ret nz

jr_05e_6bc3:
    ret nz

    dec h
    dec h
    dec e
    dec e
    rst $38
    rst $38
    ld a, [$e0fa]
    rst $38
    nop
    ld e, a
    nop
    adc [hl]
    nop
    sub d
    nop
    ld bc, $2020
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld d, $17
    ld d, a
    ld d, a
    cpl
    cpl
    ld e, a
    ld e, a
    ldh a, [$f1]
    ret nz

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
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    inc bc
    ei
    ccf
    rst $38
    ld a, [hl]

Call_05e_6c03:
    ld a, [hl]
    db $ec
    db $ec
    add l
    or l
    rlca
    add a
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    dec b
    ld a, [de]

jr_05e_6c18:
    rlca
    dec a
    dec c
    jp nc, $ec18

    jr nc, jr_05e_6c18

    ldh [rSVBK], a
    add b
    ret nz

    nop
    add l
    nop
    dec sp
    nop
    dec hl
    nop
    ld a, [hl+]
    nop
    adc [hl]
    add b
    dec h
    add b
    ld l, [hl]
    add b
    rra
    add c
    rst $30
    add a
    ei
    adc $0d

jr_05e_6c3a:
    sbc l
    ret c

    pop af
    cp [hl]
    pop af
    adc $b1
    adc $61
    sbc [hl]
    ldh [$1f], a
    db $e3
    sbc h
    rst $08
    or b
    rst $38
    add b
    db $f4
    adc c
    ei
    inc b
    rst $30
    ld c, c
    rst $28
    ld sp, $e16f
    ld l, a
    sub e
    ld bc, $44de
    cp e
    inc b
    rst $18
    rrca
    db $f4
    ccf
    add $7d
    adc d
    ldh a, [rIF]
    add b
    ld a, d
    nop
    sbc $4a
    or l
    ld e, [hl]
    and c
    rst $38
    ret c

    db $10
    ld l, a
    db $10
    db $ed
    jr c, jr_05e_6c3a

    or b
    ld c, [hl]
    cp h
    inc bc
    ld a, $09
    rrca
    ld b, $03
    ld bc, $c000
    ld bc, $03f9
    rst $38
    inc bc
    ld [hl], e
    ld bc, $03a9
    ld h, e
    nop
    jr z, jr_05e_6c8f

jr_05e_6c8f:
    ld a, b
    nop
    inc bc
    nop
    pop bc
    ld sp, hl
    nop
    inc bc
    inc h
    nop
    ret nz

    nop
    ld b, b
    nop
    ret nz

    nop
    stop
    ldh [rP1], a
    ld b, b
    nop
    nop
    nop
    ret nc

    nop
    ld d, b
    nop
    or b
    ld [hl], b
    adc a
    dec h
    jp c, $ff00

    ld [bc], a
    ld [bc], a
    inc [hl]
    inc [hl]
    ld a, [hl+]
    ld a, [hl+]
    dec b
    dec b
    adc b
    adc b
    ld b, $06
    ld c, $0e
    dec b
    dec b
    add [hl]
    add [hl]
    dec c
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, [hl]
    nop
    ldh a, [rDIV]
    db $f4
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ld h, b
    inc b
    ld d, h
    nop
    ld b, b
    ld bc, $0571
    ld h, l
    rlca
    or a
    ld c, $38
    ldh [rNR11], a
    nop
    ret


    nop
    ld l, d
    nop
    ld e, c
    nop
    ld a, l
    nop
    ld [hl], l
    nop
    cpl

jr_05e_6cf0:
    nop
    inc hl
    nop
    ld b, a
    ld bc, $076a
    ld a, c
    ld e, [hl]
    daa
    ld a, a
    jr jr_05e_6cf0

    inc l
    jp Jump_000_038c


    ld b, h
    ld bc, $03df
    or h
    inc bc
    call c, $f601
    nop
    db $e3
    ld bc, $036e
    ld d, h
    ld a, $3e
    ld e, $1f
    ld hl, sp-$06
    ldh a, [$f0]
    and $e6
    ld [bc], a
    ld b, d
    ld e, $9e
    add hl, de
    add hl, de
    nop
    dec e
    nop
    sub a
    nop
    adc $00
    ld e, l
    inc bc
    dec e
    ld c, $87
    rrca
    db $fc
    dec de
    inc [hl]
    ld [hl], b
    rst $28
    db $e3
    call c, $f087
    rlca
    ldh a, [rSB]
    xor $e7
    add hl, bc

jr_05e_6d3c:
    rst $20
    sbc h
    xor b
    sub a

jr_05e_6d40:
    db $10
    db $ed
    and b
    ld c, l
    pop bc
    ld a, $c3
    inc e
    adc h
    ld [hl], e
    add h
    ld a, e
    ldh [rNR22], a
    rst $00
    jr z, jr_05e_6d61

    call nz, Call_05e_6180
    jr nz, @+$78

    jr nz, jr_05e_6d3c

    nop
    sbc b
    ld [$0800], sp
    or b
    jr jr_05e_6d40

    ld c, [hl]

jr_05e_6d61:
    or c
    rst $38
    add b
    rra
    ld h, b
    rra
    ld h, b
    inc b
    db $eb
    ld bc, $12ee
    db $ed
    rst $28

jr_05e_6d6f:
    db $10
    ld [$80f7], sp
    ld [hl], e
    nop
    ei
    ld [bc], a
    db $fd
    add d
    ld a, l
    sub b
    ld c, a
    ld a, [bc]
    dec d
    adc b
    add [hl]
    ld a, $4b
    rlca
    inc bc
    nop
    add c
    nop
    jr z, jr_05e_6d89

jr_05e_6d89:
    ld d, e
    inc bc
    xor h
    inc bc
    or h
    nop

jr_05e_6d8f:
    rst $08
    ld a, [bc]
    and c
    ld [$8af7], sp
    ld [hl], l
    cp $81
    ccf
    ld d, l
    ld bc, $0016
    sub b
    nop
    inc bc
    nop
    ld [$0300], sp
    nop
    ld bc, $0100
    nop
    ld bc, $8110
    jr nc, jr_05e_6d6f

    rst $20

jr_05e_6daf:
    inc e
    nop
    db $fc
    nop
    ld hl, sp+$00
    xor h
    nop
    nop
    nop
    nop
    add b
    add b
    ld bc, $0001
    inc b
    nop
    add b
    nop
    pop bc
    daa
    reti


    jr c, jr_05e_6d8f

    nop
    nop
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc d
    nop
    ld h, l
    ld c, e
    sub a
    ld hl, sp+$12
    ret nz

    and b
    nop
    ld b, b
    add b
    nop
    nop
    ret nz

    ld b, b
    jr nc, jr_05e_6e29

    sub b
    ld b, b
    sub b
    ret nz

    jr c, jr_05e_6daf

    ld hl, $2347
    ld a, [hl]
    adc l
    ldh a, [$ce]
    add b
    ld d, e
    jp nz, $e239

    add hl, de
    ld [c], a
    ld de, $1fe0
    pop hl
    ld d, $e1
    ld e, $ff
    ld [bc], a
    cp $07
    db $fc
    ld c, [hl]
    ld hl, sp+$3f
    ldh [rIE], a
    adc [hl]
    pop bc
    ld a, [bc]
    dec d
    ld [$0827], sp
    scf
    add hl, bc
    ld [hl], $0f
    jr nz, jr_05e_6e2a

    ld hl, $b70f
    inc c
    dec a
    ld [$30b0], sp
    ld b, a
    ld b, b
    db $ed
    add c
    xor $81

jr_05e_6e29:
    ld l, a

jr_05e_6e2a:
    add a
    ld a, b
    adc c
    ld [hl], d
    add e
    ld a, h
    ld [hl], l
    adc b
    ld l, e
    nop
    inc bc
    nop
    rrca
    ld b, b
    ld de, $1000
    ld b, $61
    adc l
    add b
    rrca
    or a
    ld c, e
    rst $18
    dec [hl]
    ei
    dec l
    or e
    ld e, h
    rlca
    ld hl, sp+$07
    jp c, $f30f

    rst $38
    nop
    cp a
    ret nz

    cp a
    ld e, b
    db $fc
    inc sp
    db $fd
    ld [hl+], a
    rst $30
    ld [$04ff], sp
    rst $38
    db $10
    ld a, a
    and b
    rst $38
    ld b, b
    ei
    add h
    ld sp, hl
    ld b, $9d

jr_05e_6e67:
    ld h, d
    ld d, a
    xor b
    sub $29
    rst $28
    db $10
    db $fc
    inc bc
    ldh a, [$e0]
    jr @-$01

    ld c, $05
    inc bc
    rst $10
    inc bc
    sub h
    ld [bc], a
    db $ed
    add b
    ld l, e
    nop
    di
    add b
    ld l, e
    ret nz

    ccf
    ld a, [c]
    db $ed
    ld a, $7f
    rrca
    rst $10
    pop hl
    ld [de], a
    ldh a, [rP1]
    ldh a, [rNR30]
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld a, b
    add l
    jr nc, jr_05e_6e67

    ld hl, sp+$07
    ld hl, sp-$09
    ld a, a
    add a
    ld d, a
    xor c
    inc e
    db $e3
    add hl, sp
    ld b, [hl]
    add hl, de
    ld h, [hl]
    add hl, de
    and $19
    ld h, [hl]
    dec l
    jp nc, $d22d

    rst $38
    inc e
    pop af
    inc bc
    db $fc
    nop
    nop
    rrca
    add b
    inc c
    ret nz

    ld a, [de]
    ret nz

    ld a, [bc]
    ret nz

    ld a, [bc]
    ret nz

    rrca
    ld a, a
    dec e
    cp a
    ld e, a
    rst $38
    dec sp
    ld e, $21
    inc a
    jp Jump_05e_631c


    inc c
    inc sp
    ld c, $71
    ld d, $69
    rra
    and b
    rla
    ld [$e71f], a
    ld [hl], b
    xor $c4
    cp d
    inc c
    ld [de], a
    ld c, $f0
    inc c
    ld a, [c]
    inc c
    ld a, [c]
    ld c, $f0
    ld b, $b9
    rrca
    ld [hl], e
    ld a, $cd
    ld a, b
    dec a
    ldh [$79], a
    ret nc

    xor [hl]
    ld [$6075], sp
    sbc a
    ld c, b
    and a
    ld c, c
    or [hl]
    sbc a
    ld h, e
    sbc a
    ld h, [hl]
    inc a

jr_05e_6eff:
    rst $28
    ld [hl-], a

jr_05e_6f01:
    rst $38
    rst $00
    ld l, d
    sbc a
    nop
    rra
    ld h, l
    ccf
    rst $00
    ccf
    pop bc
    ld a, a
    add c
    ld a, a
    add e
    rst $38
    ld b, $ff
    dec c
    rst $38
    ld sp, $f1ef
    rst $08
    pop af
    cp a
    ld b, c
    rrca
    push af
    ld c, $f1
    ld d, e
    nop
    ld b, h
    nop
    inc b
    nop
    inc bc
    nop
    ld [bc], a
    ld [$1704], sp
    ret nz

    ld c, $ec
    nop
    rra
    pop hl
    ccf
    ldh [$c0], a
    cpl
    nop
    rst $38
    jr c, jr_05e_6f01

    ld a, a
    and h
    rst $38
    xor b
    cp a
    ldh a, [rLCDC]
    ret nz

    ld b, c
    nop
    nop
    inc bc
    db $10
    dec c
    ret nz

    nop
    ld h, c
    nop
    add b
    nop
    nop
    nop
    cp $11
    db $fc
    inc bc
    rst $38
    ld b, b
    cp $81
    ld a, [$dd05]
    ld [hl+], a
    ld [hl], a
    adc b
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f3
    inc c
    ld a, [bc]
    push af
    adc c
    db $76
    ld [hl], c
    adc d
    db $10
    rst $28
    sbc h
    ld h, c
    ld [bc], a
    ld [$0881], sp
    add hl, bc
    jr jr_05e_6eff

    ret c

    ld b, b
    ld hl, sp+$39
    ld a, b
    nop
    inc a
    ld [bc], a
    rra
    sbc b
    dec e
    sbc b
    dec e
    sub b
    dec e
    add c
    dec e
    ld [$881d], sp
    rst $38
    sbc h
    ld a, a
    rst $30
    rrca
    inc bc
    rst $30
    ld b, d
    cp l
    rlca
    ei
    rlca
    ei
    daa
    ld e, e
    daa
    jp c, $3ac7

    rst $38
    ei
    pop bc
    rlca
    rrca
    nop
    ld b, b
    nop
    ld b, a
    nop
    ld b, e
    nop
    add a
    nop
    ld b, b
    ld [$fd20], sp
    ld b, c
    rst $10
    ccf
    nop
    ld b, c
    inc b
    ld b, b
    inc c
    ld b, b
    nop
    ld b, b
    inc b
    ld b, b
    ld b, $00
    inc b
    rlca
    cp a
    add c
    add sp, $79
    nop
    ei
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, b
    nop
    ld hl, sp+$03
    rst $00
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, [c]
    rra
    ld [$481f], a
    rra
    ld h, e
    rra
    inc hl
    rra
    inc hl
    di
    inc bc
    db $e4
    ld c, $da
    rra
    inc bc
    rst $20
    inc hl
    rlca
    ld [c], a
    rlca
    and e
    inc bc
    di
    inc bc
    rra
    db $e3
    rrca
    or $5c
    xor l
    ld sp, hl
    db $76
    pop hl
    sbc $8d
    ld a, [c]
    dec c
    ld h, d
    dec c
    ld a, [c]
    ldh a, [rP1]
    ldh a, [rSC]
    db $f4
    ld b, $a0
    ld c, $c0
    ld [hl-], a
    add b
    ld h, d
    nop
    push bc
    nop
    or a
    nop
    dec a

jr_05e_7012:
    nop
    dec sp
    jr nz, jr_05e_7016

jr_05e_7016:
    nop
    nop
    nop
    sub c
    ld [bc], a
    add b
    nop
    sbc l
    ld [bc], a
    rra
    rst $38
    dec c
    ld a, [$107d]
    xor $00
    rst $38
    rst $20
    ld [$49ff], sp
    cp $81
    sub b
    ld l, a
    ld bc, $01e0
    and d
    ld [bc], a
    dec c
    rra
    ldh [$ef], a
    db $10
    rst $28
    sub b
    cp a
    ld b, b
    ld a, b
    add a
    ld hl, sp+$07
    cp $01
    or $09
    cp h
    ld b, e
    or l
    jp z, Jump_000_00ff

    or [hl]
    ld c, c
    db $eb
    inc d
    ld a, $c1
    ld a, l
    add d
    ld l, e
    sub h
    ld d, a
    xor d
    rst $18
    jr nz, jr_05e_7012

    ld c, b
    ei
    inc b
    rst $38
    nop
    rst $28
    db $10
    add hl, de
    and $b6
    ld c, c
    ld [hl-], a
    call Call_05e_7f80
    nop
    rst $38
    ld de, $334e
    ret z

    db $fc
    ld a, [c]
    ld a, h
    pop af
    ld hl, sp+$16
    db $fc
    ld c, b
    ld a, [c]
    ld l, l
    pop af
    ld e, d
    ldh a, [$0b]
    ldh a, [$0a]
    ldh a, [$cb]
    ldh a, [$f8]
    ld hl, sp-$09
    and $d9
    db $e3
    call c, $9fe0
    ldh [rPCM34], a
    ldh a, [$af]
    ld b, [hl]
    ldh [$92], a
    inc a
    nop
    adc [hl]
    ld c, [hl]
    pop af
    daa
    ldh a, [rTMA]
    ld hl, sp-$6c
    ld hl, sp-$7d
    ld hl, sp-$2d
    ld hl, sp+$18
    inc a
    nop
    ccf
    ld [$1198], sp
    sbc d
    ld bc, $001a
    cp d
    nop
    cp [hl]
    ld l, a
    ld a, a
    add b
    rlca
    adc h
    ld a, $4e
    ld a, $0c
    ld e, $0c
    ld e, $4e
    ccf
    cp a
    ccf
    push de
    cp $c0
    inc e
    add b
    inc e
    add b
    inc c
    nop
    dec c
    dec c
    rra
    ld b, $1f
    inc de
    db $fc
    inc bc
    and h
    db $e3
    inc e
    ld b, e
    inc e
    inc bc
    inc e
    nop
    inc c
    ld bc, $4a1f
    inc e
    jr nc, jr_05e_7158

    add d
    ret c

jr_05e_70e2:
    ld [bc], a
    jr c, jr_05e_70e5

jr_05e_70e5:
    ld a, c
    nop
    ld l, a
    dec b
    ld l, [hl]
    ld [bc], a
    ld a, h
    jr nz, jr_05e_70e2

    call z, $6dcc
    sbc [hl]
    or l
    ld e, [hl]
    ld b, $fd
    inc b
    rst $38
    inc c
    rst $38
    ld d, b

jr_05e_70fb:
    cp a
    ld [hl], l
    xor $58
    rst $20
    ld b, h
    rrca
    add c
    rra
    nop
    add hl, bc
    nop
    ccf
    nop
    ld a, l
    ld c, $ff
    ld [bc], a
    rra
    nop
    ld [hl], h
    ld a, [bc]
    add c
    ld b, a
    ld sp, hl
    ld bc, $0ffc
    ldh a, [rNR31]
    nop
    ld [hl], a
    nop
    inc sp

jr_05e_711d:
    add b
    ld a, a
    add b
    rlca
    xor b
    rrca
    ld [hl], l
    ld a, [hl]
    sbc l
    db $f4
    ld a, [bc]
    ret nc

jr_05e_7129:
    jr z, jr_05e_70fb

    jr nz, jr_05e_7129

    inc hl
    ei
    inc b
    cp $23
    rst $38
    nop
    rst $28
    db $10
    ret nc

    cpl
    ldh a, [rIF]
    ld c, h
    or e
    jr nz, jr_05e_711d

    db $10
    rst $28
    add b
    ld e, a
    nop
    rst $38
    nop
    rst $38

jr_05e_7146:
    ret nz

    cpl
    nop
    ei
    db $10
    rst $28
    ld a, [$fc05]
    inc bc
    db $fc
    ld b, e
    ldh a, [rIF]
    db $e3
    inc e
    ld c, a
    or b

jr_05e_7158:
    ld b, b
    cp [hl]
    and b
    ld e, h
    add b
    ld b, b
    add b
    ld a, h
    nop
    ld sp, hl
    ld bc, $00fc
    ei
    jr nz, jr_05e_7146

    ld b, b
    or [hl]
    ret nz

    inc [hl]
    call nc, $80a0
    ld a, h
    ld c, h
    sub c
    inc c
    or d
    inc c
    sub c
    inc c
    xor c
    inc b
    ld a, [bc]
    nop
    dec c
    add b
    ld c, h
    nop
    ldh a, [rNR10]
    ld b, $00
    inc e
    inc b
    ld b, d
    nop
    adc c
    add b
    ld c, c
    ret nz

    dec e
    ldh a, [$09]
    sbc h
    ld l, c
    db $e3
    inc e
    ldh a, [$09]
    ldh [rNR24], a
    add sp, -$2f
    ld a, b
    ld h, $06
    ld hl, sp+$71
    adc b
    inc l
    ret nc

    inc a
    ret nz

    inc a
    pop bc
    db $fc
    or d
    sbc [hl]
    ld h, l
    adc [hl]
    ld [hl], c
    add h
    ei
    add h
    ld a, e
    sbc $a1

jr_05e_71b0:
    add b
    ldh [$fc], a
    inc bc
    jr nc, jr_05e_71f6

    ld de, $1186
    ld b, $10
    ld b, [hl]
    ld [de], a
    rst $28
    add c
    db $e4
    ld c, $f1
    ld c, a
    or h
    ld b, a
    cp h
    rst $20
    dec de
    ld a, [hl]
    xor a
    xor $71
    and $99
    cp $e1
    dec bc
    and b
    nop
    daa
    ld b, $6c
    ld b, d
    ld hl, sp-$3d
    add sp, $22
    ld hl, sp+$20
    ld a, c
    dec h
    ld a, [hl]
    ld sp, $2878
    db $76
    inc bc
    adc $60
    sbc [hl]
    and b
    rra
    ld [$881e], sp
    ld e, $20
    inc de
    db $10
    ld h, e
    nop
    rst $00
    nop
    xor e

jr_05e_71f6:
    db $10
    cp a
    ld [bc], a
    cp a
    nop
    rst $38
    ld e, b
    rst $38
    dec b
    cp a
    ld d, c
    xor a
    cp a
    rst $20
    ld e, a

jr_05e_7205:
    rst $38
    rrca
    rst $38
    ld c, a
    cp a
    ccf
    rst $38
    ld c, a
    rst $38
    ld [hl], e

jr_05e_720f:
    rst $38
    ldh a, [$f9]
    ld l, d
    ldh a, [$c1]
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rst $18
    nop
    rst $38
    nop
    nop
    call nz, Call_05e_4ff0
    nop
    ret nz

    nop
    ld bc, $0100
    ld bc, $cf0e
    jr nc, jr_05e_71b0

    ld a, h
    jr nz, jr_05e_7205

    rst $38
    ld hl, sp-$21
    dec h
    add b
    ld a, a
    nop
    rst $38
    add b
    ld [hl], a
    nop
    rst $38
    ld bc, $01fe
    cp $2c
    db $d3
    jr nc, jr_05e_720f

    ld e, a
    and b
    ld c, [hl]
    or a
    cp $05
    db $f4
    dec bc
    ldh a, [rIF]
    rst $38
    rst $38
    ld a, [c]
    di
    ldh [$e7], a
    add b
    add [hl]
    nop
    ld a, a
    nop
    rst $28
    nop
    rst $18
    ld b, b
    cp $80
    sbc a
    nop
    halt
    ld bc, $3f00
    nop
    ld hl, sp+$00
    db $fc
    nop

jr_05e_726d:
    ld a, l
    nop
    db $fc
    jr @+$31

    add hl, bc
    cp [hl]
    add hl, bc
    ld a, $28
    rra
    add hl, de
    and [hl]
    add hl, de
    ld h, $18
    and a
    add hl, de
    ld l, $39
    inc c
    add hl, de
    inc h
    ld [$091d], sp
    sbc h
    ld [$293d], sp
    inc d
    jr jr_05e_729b

    ld [$09b7], sp
    inc b
    adc b
    dec b
    jr z, jr_05e_726d

    add hl, bc
    cp [hl]
    ld [$08af], sp

jr_05e_729b:
    rst $20
    ret


    ld l, $28
    ld e, a
    ld [$085f], sp
    ld [hl], a
    ld [$4837], sp
    scf
    add hl, sp
    adc $19
    adc [hl]
    sbc c
    ld l, $9d
    ld c, d
    sbc l
    ld h, d
    dec e
    xor $1f
    and h
    sbc a
    ld a, h
    rra
    add sp, -$41
    ld e, h
    rst $38
    sbc l
    rra
    and h
    rra
    push af
    rra
    db $e4
    ld a, a
    sbc [hl]
    rst $10
    ld l, a
    rst $10
    cpl
    rst $10
    cpl
    rst $18
    daa
    rst $38
    rla
    inc b
    rst $00

Jump_05e_72d2:
    inc c
    rst $10
    inc b
    ld [hl], a
    nop
    ld a, a
    jr nz, jr_05e_7341

    nop
    rst $10
    ld b, a
    rla
    rst $00
    ccf
    ld d, $3f
    ld h, b
    ccf
    nop
    sbc a
    ld bc, $009f
    ld e, $04
    rst $38
    add hl, bc
    rst $38
    ld b, c
    rst $30
    nop
    ld hl, sp-$78
    ldh [rOBP0], a
    db $e3
    ld [$063e], sp
    rst $38
    rlca
    rrca
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05e_7303:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    rst $10
    rst $38
    ld [hl], d
    rst $38
    ld de, $21ff
    ccf
    cp $00
    db $fc
    nop
    db $fd
    ld [bc], a
    push af
    nop
    rst $38
    nop
    ld b, b
    xor c
    nop
    jr nz, jr_05e_7325

jr_05e_7325:
    jr nz, @+$03

    cp $ff
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_05e_7348

    add [hl]
    inc b
    ld c, c
    inc b
    xor $fe
    adc h
    ld a, b
    or c
    ld a, b
    and b
    ldh a, [$78]
    ldh [$d7], a
    ret nz

    add a
    nop

jr_05e_7341:
    and a
    nop
    adc $02
    adc l
    db $10
    rst $28

jr_05e_7348:
    add c
    ld a, [hl]
    add b
    ld a, a
    nop
    rst $30
    rlca
    ld a, b
    add a
    rst $30
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $28
    ld bc, $01fb
    rst $38
    nop
    cp $00
    db $fc
    nop
    or d
    nop
    ld [$dd01], sp
    ld bc, $017f
    db $fd
    inc bc
    rst $38
    ld [de], a
    db $ed
    ld hl, sp+$07
    cp b
    ld b, a
    nop
    rst $38
    db $10
    rst $28
    ldh a, [$0e]
    and b
    ld e, h
    ldh a, [rIF]
    ld h, b
    sbc a
    ld l, b
    sub a
    add b
    ld a, a
    ld h, d
    sbc l
    nop
    ld [$1be4], a
    add b
    ld [hl], e
    add b
    ld a, h
    ldh a, [rIE]
    or b
    cp a
    adc b
    adc a
    ld hl, sp-$01
    sbc a
    sbc a
    add [hl]
    add a
    ld a, [$86fb]
    add a
    cp $ff
    cp $ff
    add d
    add e
    jp z, $fecb

    rst $38
    xor [hl]
    xor a
    cp $ff
    add [hl]
    add a
    ret nz

    ccf
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    ld b, e
    db $fc
    rst $30
    db $fc
    ld b, a
    db $fc
    rst $38
    db $fc
    di
    db $e3
    db $fc
    add e
    db $fd
    jp $83fd


    db $fd
    and a
    db $fd
    and e
    db $fd
    rst $38
    db $fd
    add e
    db $fd
    ei
    db $fd
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
    ldh a, [rIE]
    add b
    or $03
    ldh [rP1], a
    ret nz

    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld e, l
    rst $38
    add h
    rst $08
    db $10
    ld [bc], a
    nop
    nop
    ld bc, $f280
    rlca
    inc b
    rst $38
    db $fc
    rst $38
    and e
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld hl, sp-$02
    jp $e1f0


    ld hl, sp-$09
    ldh a, [$ef]
    ldh a, [$e4]
    ldh a, [$d0]
    db $e3
    ret nz

    cp $c0
    pop hl
    add b
    ldh [rP1], a
    db $f4
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    add b
    ld b, b
    ld bc, $0602
    ld a, c
    ld hl, sp+$16
    db $fc
    inc hl

jr_05e_742a:
    db $fc
    inc de
    cp $01
    ld [c], a
    inc e
    ret nz

    rlc b
    rst $20
    nop
    db $fc
    nop
    ld [hl], e
    ld b, b
    ld b, c
    jr nz, jr_05e_742a

    jr nz, jr_05e_74ad

    pop hl
    db $ed
    cp a
    cp a
    db $fc
    db $fc
    xor $ee
    cp $fe
    cp $fe
    ld a, [$f0fa]
    di
    ret nz

    rst $08
    ldh [$e6], a
    ld a, [$fffa]
    rst $38
    rst $30
    rst $30
    ldh [$fc], a
    ret nz

    db $fc
    ret nz

    cp $c0
    rst $08
    ret nz

    rst $38
    add b
    sbc c
    add b
    db $ec
    add b
    rst $38
    add b
    rst $18
    nop
    rra
    nop
    sbc $00
    sbc $00
    rst $18
    nop
    rst $38
    add b
    ld a, a
    nop
    ld sp, hl
    nop
    rst $38
    nop
    db $fd
    nop
    ld b, c
    nop
    xor $c0
    ret nz

    pop af
    pop af
    ldh [$e0], a
    ldh [$e0], a
    nop
    nop
    rst $38
    rst $38
    inc bc
    inc bc
    call Call_000_00cd
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
    nop
    nop
    rst $38
    ld d, e
    xor h
    ld a, $c1
    ld a, $c1
    dec l
    jp nc, $f40b

    ld h, [hl]
    sbc c
    ld a, [bc]
    push af
    dec bc

jr_05e_74ad:
    db $f4
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
    ld h, d
    sbc l
    or d
    ld c, l
    ld [hl], d
    adc l
    ld a, l
    add d
    ei
    inc b
    ld a, [hl]
    add c
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    ld b, b
    rst $38
    nop
    ld [bc], a
    adc b
    ret nc

    rst $38
    call nz, $9ff1
    ldh [$d8], a
    ret nz

    ret nz

    cp $00
    rst $18
    ld e, a
    nop
    or b
    nop
    db $10
    db $fc
    ld h, d
    db $fc
    dec de
    ret nz

    inc b
    and b
    ld sp, $f97e
    db $fc
    ld [$e81d], sp
    ld [$08cd], sp
    ld h, e
    ld [$00e4], sp
    ld [$031b], sp
    rst $38
    rst $38
    ld b, e
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    rst $38
    adc a
    ld [hl], a
    dec b
    ld a, [$ff10]

jr_05e_751e:
    jr nz, jr_05e_751e

    ldh [$e0], a
    db $fd
    db $fd
    rst $28
    rst $28
    ld l, a
    ld l, a
    ld [bc], a
    ld [bc], a
    ld c, b
    ld c, h
    nop
    nop
    nop
    dec c
    db $10
    db $10
    adc h
    adc h
    nop
    ld b, b
    nop
    adc d
    nop
    add e
    nop
    jr nz, jr_05e_753d

jr_05e_753d:
    ld [$8383], sp
    ld b, l
    ld e, l
    nop
    rst $18
    nop

jr_05e_7545:
    di
    ld bc, $01e7
    ld h, l
    nop
    db $fd
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f6
    add sp, -$18
    nop
    jr nz, jr_05e_755b

jr_05e_755b:
    jr z, @+$13

    ld sp, $e700
    jr nz, jr_05e_7545

    nop
    jp $cd00


    db $10
    ld d, b
    ccf
    rst $38
    nop
    rst $08
    ld h, b
    xor $70
    di
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $10
    rst $10
    rst $38
    rst $38
    cp a
    cp a
    ld bc, $df01
    rst $18
    adc a
    adc a
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    dec bc
    dec bc
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
    ld bc, $0101
    db $fd
    xor c
    ld d, l
    pop af
    dec c
    ld sp, hl
    dec b
    ld [hl], c
    adc l
    ld sp, $91cd
    ld l, l
    or c
    ld c, l
    ld h, c
    sbc l
    ld de, $00ed
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$0c
    ldh a, [$4c]
    or b
    sbc b
    ld h, h
    call nc, $f82c
    inc b
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $feff
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
    ccf
    rst $38
    nop
    nop
    rst $38
    nop
    ld b, b
    nop
    jr nz, jr_05e_75eb

    ld h, d
    add a
    ld l, b

jr_05e_75eb:
    ld [de], a
    rrca
    jr nz, jr_05e_766e

    ld h, b
    dec a
    ldh [$08], a
    add b
    ld b, h
    db $10
    ld a, [de]
    ld bc, $0088
    rrca
    nop
    nop
    inc bc
    ld h, $0f

Call_05e_7600:
    adc b
    rra
    rst $28
    rst $38
    rlca
    rlca
    add hl, de
    ld b, e
    inc bc
    ld b, b
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    nop
    add d
    ld a, l
    nop
    rst $38
    add b
    ld a, e
    sub b
    ld l, a
    nop
    rst $38
    add a
    ld a, b
    nop
    rst $18
    nop
    rst $38
    ei
    ei
    rst $18
    rst $18
    ld [bc], a
    ld [bc], a
    add hl, bc
    add hl, bc
    rlca
    rlca
    ld bc, $0801
    ld [$0d0c], sp
    inc b
    dec b
    nop
    nop
    nop
    daa
    nop
    dec a
    nop
    ld e, b
    inc bc
    inc de
    ld b, a
    ld h, a
    ld c, a
    ld c, a
    ld [$2b37], sp
    ld d, h
    add hl, de
    ld h, [hl]
    ld d, b
    xor h
    nop
    jp $fb07


    rrca
    db $76
    rrca
    ld a, [c]
    dec d
    ld [$e31c], a
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    dec e
    ld bc, $0906
    ld b, $0f
    nop
    rrca
    rst $38
    rlca
    ld [hl], a
    inc bc
    rst $38
    ld bc, $fe9d
    cp $00
    rst $38
    nop
    cpl

jr_05e_766e:
    nop
    ld c, a
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    inc c
    rrca
    db $fd
    rst $38
    db $fc
    rst $38
    push de
    rst $10
    push hl
    rst $20
    cp h
    cp a
    inc e
    rra
    db $ec
    rst $28
    ld e, b
    ld e, e
    ld a, h
    ld a, a
    inc a
    rst $38
    inc a

jr_05e_7693:
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    db $f4
    rst $30
    add sp, -$15
    db $fd
    rst $38
    sbc l
    sbc a
    nop
    rst $38
    nop
    xor a
    add h
    ld a, e
    sbc b
    ld h, a
    ld hl, sp+$07
    nop
    rst $38
    db $fc
    dec bc
    adc b
    ld [hl], a
    cp b
    ld b, a
    jr nz, jr_05e_7693

    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    dec de
    db $fc
    inc bc
    db $fd
    ld [$42bd], a
    ld [bc], a
    adc b
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    pop hl
    nop
    ld hl, sp+$00
    cp c
    cp b
    db $fc
    nop
    db $fd
    add sp, -$01
    jr @+$01

    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld [bc], a
    rst $38
    nop
    ccf
    ldh [rTAC], a
    add c
    dec bc
    nop

jr_05e_76e7:
    ld c, a
    nop
    rst $38
    jr nc, @+$73

    add b
    ccf
    jr nc, @-$2f

    sbc b
    ld b, a
    ld [bc], a
    ld a, a
    ldh a, [rIE]
    ld hl, sp-$01
    ldh [$f3], a
    jr c, @+$7f

    ld a, [c]
    ei
    nop
    rst $00
    ld b, d
    db $e3
    rst $38
    rst $38
    cp $ff
    cp $fe
    ld e, $3f
    db $ec

jr_05e_770b:
    rra
    sub d
    ccf
    ld c, l
    ld h, c
    db $fd

jr_05e_7711:
    ld [c], a
    jr nz, jr_05e_770b

    jr nz, @+$01

    jr nc, jr_05e_76e7

    sbc b
    ld [hl], a
    rst $18
    ccf
    ld e, $a1

jr_05e_771e:
    jr nc, @+$01

    ld a, a
    sbc l
    rst $38
    ld a, [hl]
    ld a, a
    call nz, $c2ff
    rst $38
    add b
    ld a, c
    add [hl]
    ld a, h
    ld [bc], a
    inc a
    ld b, e
    dec a
    ld b, b
    ld [bc], a
    ld l, l
    ld b, $71
    ld b, $79
    rrca

jr_05e_7739:
    ld [hl], c
    ccf
    ld b, h
    ld e, [hl]
    xor a
    inc a
    ld c, e
    ld a, b
    or h
    ret nz

    jr nz, jr_05e_7745

jr_05e_7745:
    add b
    nop
    inc e
    nop
    call c, Call_05e_5d80
    and [hl]
    ld e, c
    jr nc, jr_05e_771e

    ld h, [hl]
    sbc c
    ld l, e
    sub h
    rra
    ret nz

    ld d, $69
    jr nz, jr_05e_7739

    ld h, $d9
    ldh [$1f], a
    add sp, $17
    add c
    halt
    rst $18
    inc de
    db $e4
    db $10
    ld l, a
    jr jr_05e_7711

    add hl, bc
    ld [hl], $03
    inc b
    nop
    ld bc, $5be6
    rst $20
    ld b, h
    rst $20
    ld c, b
    ld h, a
    call z, $ed63
    db $e3
    ld l, h
    and $73
    ld h, a
    ldh a, [$e5]
    ld h, d
    ld h, e
    call z, Call_05e_48e3
    jp $e375


    push de
    db $e3
    rst $00
    rst $20
    jp Jump_05e_67cb


    set 4, a
    jp $e3fd


    rst $18
    rst $00
    ei
    rst $10
    call z, $e1df
    rst $10
    db $eb
    rst $20
    srl b
    rst $00
    cp d
    rst $00
    inc e
    add $80
    call z, $e510
    sub b
    push bc
    sub b
    push bc
    db $10
    rst $00
    rrca
    rst $08
    ret nc

    call z, $cd01
    add l
    call $cf85
    add c
    db $ed
    add l
    rst $38
    inc de
    rst $08
    cp d
    push bc
    cp h
    rst $00
    ret z

    rst $30
    ld [bc], a
    db $fd
    xor b
    rst $18
    xor [hl]
    rst $10
    add hl, hl
    rst $10
    ret


    rst $30
    xor c
    rst $30
    sbc e
    rst $30
    sub e
    rst $38
    db $e3
    rst $38
    dec sp
    rst $30
    rrca
    rst $30
    rst $08
    rst $30
    ccf
    rst $28
    rst $10
    rst $28
    rst $20
    rst $38
    ld b, e
    rst $38
    ld c, [hl]
    rst $38
    ld e, l
    rst $38
    dec c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    db $fd
    ld a, a
    ld a, [bc]
    rst $38
    jr z, @+$01

    ld a, [bc]
    rst $38
    add hl, hl
    rst $38
    and e
    ld a, a
    dec b
    rst $38
    ld c, [hl]
    cp a
    and a
    ld e, a
    daa
    db $db
    cpl
    rst $18
    ld b, a
    cp a
    inc hl
    db $dd
    add hl, bc
    rst $38
    pop af
    rrca
    cp $01
    nop
    xor e
    add b
    di
    nop
    ld l, c
    add b
    ld b, b
    nop
    ld bc, $b100
    nop
    inc c
    inc b
    rla
    rst $18
    xor h
    db $f4
    xor e
    sbc b
    ld h, a
    rst $30
    ld [$40bf], sp

jr_05e_782a:
    sbc e
    ld b, h
    dec bc
    call nc, $9d03
    add a
    ld l, e
    inc bc
    db $fc
    nop
    rst $30
    add b
    ld a, c
    ret nz

    add hl, sp
    add c
    ld c, d
    add b
    ld b, [hl]
    ld e, $e5
    ld c, $13
    ld a, [de]
    ld h, a
    rrca
    ld [hl], a
    rlca
    ld a, [bc]
    inc bc
    inc b
    inc bc
    call nz, $fe01
    ld b, $a9
    dec b
    cp d
    rst $38
    nop
    db $fd
    ld b, d
    ld a, b
    and a
    ld a, $c1
    rst $08
    db $10
    adc l
    ld [hl], d
    dec e
    ld a, [c]
    cp $01
    dec hl
    call nz, $ed12
    ld bc, $06f4
    xor c
    rlca
    ld hl, sp-$19
    jr jr_05e_782a

    ld b, l
    sbc a
    ld a, c
    cp l
    ld e, e
    ld [hl], $db
    ld a, c
    sbc a
    ld a, e
    sbc l
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld c, c
    cp a
    add hl, bc
    rst $38
    call $91ff
    rst $38
    adc [hl]
    rst $18
    add a
    cp $99
    db $fc
    or l
    ld hl, sp-$5f
    or $c0
    cp $99
    cp $31
    cp $31
    ld a, [hl]
    ld sp, $3c7e
    rst $38
    inc a
    cp $3b
    db $fc
    ld h, h
    ldh a, [$f0]
    ld hl, sp-$20
    ld hl, sp+$60
    ld hl, sp+$60
    pop af
    ldh [$f1], a
    ldh a, [$f5]
    rst $20
    rst $38
    pop hl
    db $fc
    ld c, l
    ldh [$e0], a
    ld a, [c]
    ldh a, [$f2]
    ldh [$f2], a
    ldh [$f0], a
    ldh [$f2], a
    ldh [$f6], a
    ld h, b
    or $6e
    rst $38
    pop hl
    db $e3
    ld h, a
    ldh a, [$61]
    ldh a, [rLYC]
    ld hl, sp-$1b
    ldh [$e5], a
    ld hl, sp+$61
    ld l, b
    ld sp, $097c
    ld a, h
    ld hl, $6066
    ld [hl], e
    ld h, b
    ld h, l

jr_05e_78dc:
    ld h, b
    and $c4
    push hl
    ld a, [hl]
    push hl
    cpl
    db $f4
    cpl
    db $f4
    scf
    db $fc
    inc h
    rst $38
    cp d
    rst $30
    db $76
    rst $38
    ld [hl], a
    rst $38
    ld [hl], h
    rst $38
    dec h
    cp $57
    db $fc
    ld c, a
    db $fc
    ld l, a
    db $fc
    push hl
    cp $e5
    cp $e5
    ld a, [$faf6]
    rst $30
    ld sp, hl
    ld [c], a
    ld sp, hl
    pop de
    ld hl, sp-$2f
    ld hl, sp-$3f
    ld hl, sp-$40
    ld a, [$fa40]
    nop
    db $e4

jr_05e_7912:
    ld bc, $4126
    and $12
    or $04
    ld e, a
    inc d
    dec a
    sub h
    rra
    inc e
    ld a, a
    inc c
    db $fd
    ld h, l
    dec e
    ld h, b
    rlca
    nop
    ld [hl], $05
    add b
    ld c, h
    ld b, b
    nop
    ld e, b
    ld b, b
    adc $e7
    ld sp, hl
    db $e3
    db $fc
    cpl
    ret nc

    nop
    db $e3
    add a
    ld a, b
    rlca
    db $fc
    ld e, $ec
    rra
    ld l, a
    rra
    ld h, e
    rst $10
    jr z, jr_05e_78dc

    ld l, b
    di
    inc c
    cp e
    ld b, h
    ld a, a
    add a
    rst $38
    ld b, b
    rst $38
    ld h, h

jr_05e_7950:
    rst $18

jr_05e_7951:
    inc [hl]
    rst $38
    nop
    ld a, l
    add d
    rst $38

jr_05e_7957:
    ld b, d
    rst $38
    ld b, b
    rst $30
    ld a, [bc]
    rst $30
    ld a, [bc]
    rst $18
    jr nz, jr_05e_7950

    inc d
    xor a
    ld d, h
    ld a, a
    add [hl]
    ld a, $c1
    scf
    ret z

    ld [hl], l
    adc d
    ret z

    scf
    db $f4
    dec bc
    rlca
    add b
    dec c
    add b
    adc a
    add b
    cpl
    sub b
    jr nz, jr_05e_7912

    jr z, @-$62

    ld a, [hl+]
    adc a
    rla
    xor a
    ldh [$e5], a
    ret nz

    ld a, [$df80]
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, b
    cp a
    ld b, b
    cp a
    ld a, b
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld d, e
    rra
    ld [hl+], a
    ld a, a
    sbc b
    add b
    ld c, e
    nop
    inc bc
    add b
    ld b, l
    jr nz, jr_05e_79e3

    and b
    ld b, d
    and b
    ld b, d
    and b
    ld [bc], a
    jr nz, jr_05e_79ab

jr_05e_79ab:
    add b
    nop
    xor $ef
    rst $38
    add $77
    ret nz

    rlca
    ld b, e
    ccf
    ld b, b
    rra
    nop
    sbc a
    ld bc, $001f
    rla
    ld b, b
    rra
    inc b
    ccf
    dec b
    cp a
    xor a
    rst $38
    cp a
    ccf
    ret nz

    dec b
    call nc, $c600
    nop
    adc d
    jr nz, jr_05e_7951

    jr nz, jr_05e_7957

    nop
    add h
    nop
    add h
    ld b, b
    nop
    ret nz

    add b
    db $dd
    add a
    ld a, a
    rst $38
    nop
    nop
    xor d
    nop

jr_05e_79e3:
    or e
    nop
    and c
    nop
    add sp, $00
    ld l, l
    nop
    and $00
    ld e, a
    add b
    ld l, [hl]
    ld b, b
    sbc h
    ld a, d
    ld a, a
    rra
    ld b, b
    jr jr_05e_79f8

jr_05e_79f8:
    cpl
    nop
    ccf
    nop
    rrca
    nop
    ld a, e
    nop
    add hl, hl
    nop
    ld b, b
    ldh [rLCDC], a
    rst $38
    ccf
    ld a, a
    ret nc

    nop
    rst $38
    nop
    pop de
    nop
    ret z

    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    add b
    inc b
    add b
    inc b
    ld bc, $ffac
    rst $38
    inc bc
    ccf
    nop
    adc a
    add b
    jp $e580


    ld [bc], a
    xor a
    add b
    ld e, $60
    nop
    nop
    ld bc, $7780
    rst $38
    add b
    rst $38
    ld [hl], c
    ei
    inc b
    add h
    ld a, e
    add b
    ld a, a
    nop
    cp l
    nop
    and $00
    ld hl, sp-$38

jr_05e_7a41:
    or b
    db $fc
    jr nc, jr_05e_7a41

    inc bc
    ld e, a
    and [hl]
    sbc a
    ld h, [hl]
    db $fc
    inc bc
    db $fc
    rrca
    cp $21
    rst $38
    nop
    db $fd
    ld [bc], a
    di
    inc c
    ei
    inc b
    cp $01
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, $7f
    xor a
    ld a, a
    and c
    rra
    ldh [rIE], a
    nop
    cp $00
    cp $00
    cp h
    nop
    inc c
    nop
    nop
    jr nz, jr_05e_7a83

    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    inc bc

jr_05e_7a83:
    call $fb07
    ld b, a
    cp a
    rlca
    rst $38
    rrca
    rst $30
    rrca
    rst $30
    rra
    rst $28
    ld bc, $200f
    rrca
    db $76
    rrca
    adc a
    rst $38
    ret nz

    rst $30
    nop
    ld d, e
    ld [bc], a
    rrca
    ld b, $07
    ei
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    ld hl, sp+$07
    and b
    ld e, a
    push bc
    ld a, $34
    rst $38
    rst $18
    rst $38
    ld b, $80
    nop
    and $5b
    rst $38
    ld h, a
    rst $38

jr_05e_7ab8:
    ld b, a
    rst $38
    cpl
    rst $38
    daa
    rst $38
    cpl
    rst $38
    cp a
    rst $38
    ld a, a
    cp a
    cp a
    rst $38
    cp a
    rst $38
    jr c, @-$37

    ret nz

    ccf
    add sp, $1f
    db $fc
    rrca
    inc c
    rra
    ld [bc], a
    rra
    nop
    ld e, a
    nop

jr_05e_7ad7:
    ld a, a
    jr jr_05e_7ad7

    ld a, b
    rst $38
    rst $38
    rst $38
    add b
    nop
    pop bc
    rra
    add b
    rra
    add c
    rrca
    add c
    rra
    add d
    rlca
    add d
    ld c, e
    add b
    ld d, a
    add b
    ld c, a
    ld d, e
    rst $38
    cpl
    rst $38
    db $fc
    nop
    add l
    nop
    ret nz

    nop
    db $e4
    nop
    db $f4
    nop
    ld [c], a
    nop
    ret nz

    inc b
    nop
    ld [bc], a
    nop
    rst $28
    rst $38
    rst $38
    ld [bc], a
    ld a, $c0
    nop
    sbc l
    ccf
    db $fd
    ld a, a
    ld sp, hl
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld [hl], h
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    dec d
    rst $38
    cp $ff
    ld a, b
    rst $38
    ld a, h
    rst $38
    nop
    cp a
    ret nz

    nop
    ret nc

    nop
    ld a, [c]
    nop
    jr nz, jr_05e_7ab8

    rst $38
    ld b, c
    rst $28
    ret nc

    add b
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, c
    nop
    ld a, e
    nop
    dec de
    nop
    rla
    nop
    rst $38
    nop
    inc bc
    nop
    ld e, d
    nop
    ld e, [hl]
    add b
    ld a, l
    nop
    rst $28
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    adc e
    rst $38
    sbc [hl]
    rst $38
    dec e
    rst $38
    rlca
    rst $38
    add h
    nop
    dec b
    nop
    ld bc, $1d00
    nop
    rra
    nop
    ld b, a
    nop
    rrca
    nop
    rlca
    ld b, c
    ld hl, $0cc0
    push hl
    inc c
    ld [hl], h
    rlca
    nop
    rrca
    nop
    cpl
    add hl, bc

jr_05e_7b7b:
    rst $28
    cp a
    rst $38
    rst $38
    rst $38
    ld e, a
    nop
    nop
    add b
    add d
    rst $38
    adc d
    rst $38
    inc bc
    rst $38
    inc e
    rst $38

jr_05e_7b8c:
    inc b
    rst $38
    sub b

jr_05e_7b8f:
    rst $38
    ld [bc], a

jr_05e_7b91:
    db $fd

jr_05e_7b92:
    add b
    ld a, a
    sub b
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    dec hl
    call c, $ef18
    ld de, $01ee
    cp $43
    cp h
    dec bc
    db $fc
    ld [hl+], a
    db $dd
    ld h, $d9
    ld l, [hl]
    sbc c
    ld [$cfff], sp
    rst $38
    rst $38
    nop
    nop
    cp a
    sbc $ff
    db $f4
    rst $38
    ldh a, [rIE]
    ret z

    rst $38
    ret nz

    cp $e0

jr_05e_7bbf:
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    dec sp
    db $f4
    nop
    rst $38
    jp $873c


    ld a, b
    jr nz, jr_05e_7b7b

    jr nz, jr_05e_7b8c

    jr nz, jr_05e_7b92

    jr nz, jr_05e_7b8f

    jr nz, jr_05e_7b91

    inc sp
    rst $38
    sbc a
    rst $38
    ldh [rNR32], a
    ld c, a
    ldh a, [$80]
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    dec b
    ld a, [$fe01]
    jr nc, jr_05e_7bbf

    ld e, a
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    ldh a, [rIF]
    ldh [$1f], a
    ld sp, $3fcf
    ret nz

    ld [hl], a
    ret z

    nop
    rst $38
    xor h
    db $fd
    or c
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38

jr_05e_7c14:
    pop bc
    rst $38
    ret nz

    rst $38
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
    rst $00
    ld hl, sp-$30
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    or e
    ld c, a
    cp [hl]
    ld b, e
    adc $31
    pop hl
    ld e, $f8
    rlca
    rst $38
    ld c, h
    rst $38
    ccf
    ccf
    pop bc
    dec sp
    push bc
    rlca
    cp c
    rrca
    rst $30
    rrca
    or $1f
    db $e3
    cpl
    call nc, $b00f
    jr nc, jr_05e_7c14

    nop
    rst $38
    nop
    ld c, a
    nop
    ld [hl], a
    nop
    sbc a
    nop
    adc h
    nop
    rst $38
    add hl, bc
    db $76
    inc bc
    db $dd
    ccf
    jp Jump_000_24ff


    rst $38

jr_05e_7c5b:
    sbc a
    rst $38
    xor h
    rst $38
    adc e
    nop
    dec d
    add b
    dec de
    nop
    dec hl
    nop
    ei
    nop
    db $fd

jr_05e_7c6a:
    jr nz, jr_05e_7c6a

    db $10
    cp e
    nop
    db $fc
    and e
    ld e, a
    ld a, c
    add a
    inc [hl]
    rl b
    rst $28
    ld d, h
    db $eb
    jr z, jr_05e_7c5b

    rst $38
    rst $38
    rst $20
    rst $38
    cp $00
    nop
    ld sp, $ff10
    db $ec
    rst $38
    call nc, Call_000_14ff
    db $fd
    ld [$08ff], sp
    db $fd
    nop
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld a, [hl-]
    push bc
    ei
    inc b
    ld b, b
    cp a
    ld sp, hl
    ld b, $f8
    rlca
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rIF]
    ldh a, [rWY]
    push af
    rst $18
    rst $38
    pop af
    nop
    nop
    ldh [$e3], a
    ldh [rP1], a
    add sp, $00
    db $ec
    ld [bc], a
    add sp, $04
    add sp, $06
    add sp, $06
    add sp, $02
    add sp, $6a
    rst $38
    rrca
    rst $28
    xor c
    nop
    nop
    db $fc
    nop
    sbc h
    nop
    ld e, $df
    jr nz, @+$01

    nop
    rst $38
    nop
    rra
    ldh [$1f], a
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    inc hl
    add b
    nop
    ret nc

    jr nz, @-$2e

    nop
    ret nz

    nop
    ldh [rP1], a
    and b
    add b
    and b
    nop
    and h
    cp a
    ldh [rIE], a
    rst $38
    xor c
    rst $38
    add hl, hl
    sub $51
    rst $28
    di
    rst $38
    ld [hl], l
    rst $38
    xor a
    ld a, a
    dec b
    rst $38
    nop
    ld a, a
    nop
    rst $28
    rst $38
    rst $38

jr_05e_7d08:
    jr nz, jr_05e_7d08

    pop de
    nop
    ld [$80ff], sp
    rst $38
    ret nz

    rst $38
    sub c
    rst $38
    dec c
    rst $38
    sbc [hl]
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    ld a, a
    sub l
    db $eb
    nop
    rst $38
    ld bc, $81ff
    rst $38
    add e
    rst $38
    ld e, l
    and d
    sbc a
    ld h, b
    rrca
    ldh a, [rNR10]
    ret c

    db $10
    ld a, $00
    jr nc, jr_05e_7d37

jr_05e_7d37:
    cp $00
    ld l, b
    inc bc
    jr c, @+$09

    sub b
    rra
    ld b, b
    ldh a, [rVBK]
    rst $30
    ld [$5f00], sp
    nop
    rst $38
    inc e
    db $eb
    rrca
    rra
    rlca
    rst $38
    rla
    xor e
    ccf
    ld e, [hl]
    db $fc
    rrca
    cp $f9
    ei
    inc b
    rst $00
    jr c, @-$1d

    ld e, $fc
    or e
    ld hl, sp-$11
    db $fc
    ld a, [c]
    db $ec
    di
    ld hl, sp+$37
    cp $31
    cp $3d
    rst $38
    sbc h
    rst $38
    sbc $ff
    and $a1
    rst $38
    cp l
    ei
    dec hl
    rst $38
    inc bc
    rst $38
    ld b, $ff
    add a
    ld a, a
    rst $38
    rst $38
    adc e
    rst $30
    cp $00
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
    jr nz, @+$01

    or b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $ff
    add c
    inc c
    nop
    dec d
    inc b
    inc e
    db $e3
    inc e
    db $eb
    inc d
    rst $30
    ld [$08f7], sp
    ldh a, [rIF]
    or $0f
    dec b
    rst $38
    db $eb
    rst $30
    nop
    rst $38
    db $eb
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $05ff
    rst $38
    nop
    ldh [rSB], a
    add b
    ld bc, $ef01
    ccf
    rst $38
    ld c, a
    nop
    ld [$0000], sp
    ld b, b
    nop
    ret nz

    nop
    sub b
    nop
    stop
    jr nc, jr_05e_7dd7

jr_05e_7dd7:
    inc hl
    nop
    cpl
    rla
    rst $38
    rst $18
    rst $18
    ld a, a
    nop
    cp a
    ld b, b
    rst $38
    add hl, bc
    rst $38
    ld bc, $03ff
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc b
    or c
    ld c, [hl]
    rst $38
    rst $38
    add c
    rst $38
    ret nc

    ld l, a
    ret nz

    ld a, a
    ld h, b
    rst $38
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld h, d
    rst $38
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fc
    inc bc
    ld h, b
    rst $38
    xor a
    rst $38
    ld a, e
    rst $38
    ld c, e
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    inc [hl]
    add b
    ld a, [bc]
    rst $18
    nop
    sub $00
    ldh [rLCDC], a
    cp $00
    ld sp, hl
    ld [bc], a
    rlca
    nop
    ld bc, $40ff
    rst $38
    rrca
    rst $38
    dec c
    cp $01
    ld b, $f9
    di

Call_05e_7e3b:
    inc c
    ld c, b
    or a
    inc e
    db $e3
    dec e
    ld [c], a
    rst $38
    rrca
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add e
    ld a, h
    db $fc
    add e
    ldh [$da], a
    ldh [$5e], a
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    add b
    ld a, a
    nop
    rst $38
    nop
    ei
    nop
    ld hl, sp+$00
    xor $00
    adc a
    nop
    dec bc
    nop
    adc $00
    ld l, a
    ld bc, $00be
    rst $38
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld b, $11
    xor $1e
    rst $38
    xor a
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld d, $ff
    ld b, $ff
    ld e, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    pop hl
    ld hl, sp+$00
    nop
    inc a
    nop
    ld sp, $0004
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05e_7ea9

jr_05e_7ea9:
    pop de
    ld d, b
    rst $38
    db $db
    rst $38
    rst $28
    rst $38
    ld hl, sp+$00
    ld [$0001], sp
    inc sp
    nop
    dec sp
    inc d
    rla
    inc b
    ld a, a
    inc b
    ccf
    nop
    ld a, a
    ld de, $15ff
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    db $fc
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    add d
    nop
    ld e, a
    ld c, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld c, b
    dec e
    rst $30
    rrca
    ld c, a
    cp a
    ld c, a
    cp a
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    adc a
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
    nop
    adc h
    ld bc, $8080
    ldh a, [$85]
    ld a, [$ff80]
    add b
    rst $38
    add b
    rst $38
    add h
    ei
    rst $00
    ld hl, sp-$14
    rst $10
    ld d, c
    rst $38
    cp $01
    dec b
    rst $38
    ld bc, $11ff
    rst $38
    ld [hl], h
    rst $38
    dec [hl]
    cp $e4
    dec de
    ld b, b
    rst $38
    inc b
    ld a, a
    ld h, b
    rst $30
    or b
    rst $38
    ld [$bb01], sp
    nop
    ld e, a
    nop
    db $fc
    nop
    add h
    ld bc, $0f03
    ret nz

    db $fd
    rra
    ld b, b
    rst $38
    nop
    cp $00
    ld bc, $781f
    inc bc
    db $fc
    ld bc, $7f03
    rrca
    rst $30
    ccf
    rst $38
    ccf
    rst $08
    rrca
    push af
    rlca
    ld a, [$9d02]
    nop
    ld a, l
    nop
    ld a, e
    nop
    cp [hl]
    nop
    xor $00
    rst $38
    ld bc, $04fe
    ei
    ld b, $f9
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

Call_05e_7f80:
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_05e_7fa3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05e_7fb3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05e_7fc3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05e_7fd3

    ld [hl-], a

jr_05e_7fa3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05e_7fe3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05e_7fb3:
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

jr_05e_7fc3:
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

jr_05e_7fd3:
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

jr_05e_7fe3:
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
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
