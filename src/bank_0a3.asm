SECTION "ROM Bank $0a3", ROMX[$4000], BANK[$a3]

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rlca
    ld hl, sp-$0d
    inc c
    pop af
    ld c, $f9
    ld b, $fc
    inc bc
    ldh a, [rP1]
    di
    dec bc
    pop af
    dec c
    rrca
    cp $0b
    rst $38
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$0cff], sp
    rst $38
    ld c, $ff
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, h
    rst $38
    ldh [rIE], a
    ld a, a
    add b
    rst $38
    rlca
    rst $38
    rst $38
    db $e3
    add b
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    ld e, $e1
    ld e, $e1
    ld e, $e1
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
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
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$3f
    ret nz

    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    cp a
    rra
    rst $18
    nop
    ldh [rNR10], a
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld hl, $21ff
    rst $38
    ld hl, $43ff
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rrca
    ldh a, [rTAC]
    ld a, [$f907]
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ccf
    rst $38
    ld sp, hl
    cp $e7
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $ff
    dec b
    cp $03
    db $fc
    ld [bc], a
    db $fc
    ld bc, $80fe
    ld a, a
    ldh a, [rIF]
    nop
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01

jr_0a3_4128:
    db $fd
    inc bc

jr_0a3_412a:
    db $fd
    inc bc

jr_0a3_412c:
    db $fd
    inc bc

jr_0a3_412e:
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
    ei
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $f7
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $08
    jr c, jr_0a3_4128

    jr c, jr_0a3_412a

    jr c, jr_0a3_412c

    jr c, jr_0a3_412e

    jr c, @+$01

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    ldh [$e0], a
    rst $20
    ldh [$e3], a
    nop
    pop af
    ldh [$f8], a
    ldh a, [$f4]
    ld hl, sp-$02
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    ld sp, hl
    ld b, $fc
    inc bc
    nop
    rst $38
    db $fc
    inc bc
    cp $a9
    cp $55
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    ld a, a
    xor d
    ccf
    push de
    ccf
    jp z, $e01f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    db $e3
    jp nc, $d3e1

    pop hl
    db $d3
    pop hl
    db $d3
    ldh [$d3], a
    ldh [$d3], a
    ldh [$d3], a
    ldh [$d3], a
    ldh [$d3], a
    ldh [$d3], a
    ldh [$d3], a
    ldh [$d3], a
    ldh [$d3], a
    ldh [$d2], a
    pop hl
    jp nc, $d2e1

    pop hl
    jp nc, $b2e1

    pop bc
    ld h, d
    add c
    add $01
    adc h
    inc bc
    jr jr_0a3_41fb

    jr nc, jr_0a3_4205

    ret nz

    ccf
    ld bc, $03fe

jr_0a3_41fb:
    db $fc
    inc bc
    db $fc
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_0a3_4205:
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$04
    db $fc
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
    nop
    nop
    cp $00
    ld d, l
    nop
    xor d
    nop
    ld bc, $0000
    nop
    inc d
    nop
    adc d
    nop
    ld b, a
    add e
    and d
    ret nz

    ret nc

    ldh [rBCPS], a
    ldh a, [$33]
    db $fc
    add hl, de
    cp $0c
    rst $38
    ld c, $f7
    ld [hl], a
    add a
    scf
    rst $00
    ld [hl], $c6
    sub h
    ld h, h
    sub h
    ld h, h
    call nc, $f224
    nop
    ld [$f610], a
    ld a, [bc]
    ld a, [$f804]
    inc b
    db $fc
    nop
    db $fc
    nop
    ld a, h
    nop
    ld a, h
    nop
    add hl, sp
    nop
    ldh [$99], a
    ldh a, [rVBK]
    ldh a, [$af]
    ld hl, sp+$07
    nop
    rst $38
    nop
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
    rra
    rst $38
    ld a, a
    cp $ff
    ldh a, [rIE]
    ret nz

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
    db $fc
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
    nop
    cp $00
    cp $00
    cp $00
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
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh [rTAC], a
    ldh [rTAC], a
    nop
    rlca
    nop
    rst $38
    ld a, h
    inc bc
    rra
    nop
    rrca
    add b
    add e
    ld b, b
    pop bc
    jr nc, @-$0e

    ld [$06f8], sp
    ld [c], a
    dec e
    scf
    ld [$3887], sp
    rst $00
    jr z, jr_0a3_434c

    inc e
    cp c
    nop
    ld e, h
    nop
    ld l, $00
    rla
    nop
    adc a
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ldh [$1f], a
    rst $38
    nop
    ld a, $c1
    add b
    rst $38
    rst $38
    rst $38
    ldh [$5f], a
    jr nc, jr_0a3_4357

    ld a, b
    rlca
    ld l, h
    inc de
    ld b, [hl]
    add hl, sp
    add e
    ld a, h
    ld a, h
    nop
    ld a, h
    nop
    db $fc
    add b
    db $fc
    ret nz

    ld hl, sp-$20
    ld hl, sp+$70
    ldh [$78], a
    ldh [$38], a
    rra
    db $fc
    rra
    cp $0f
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ccf

jr_0a3_4331:
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop

jr_0a3_433a:
    rst $38

jr_0a3_433b:
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop

jr_0a3_434c:
    nop
    nop
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    ccf
    nop
    inc bc

jr_0a3_4357:
    ld b, b
    nop
    ld a, h
    jr nz, jr_0a3_433b

    ld h, b
    sbc e
    ld h, b
    sbc c
    ld sp, $31c8
    ret z

    ld sp, $1188
    add b
    ld de, $01c0
    ret nz

    add b
    jr nz, @-$7e

    jr nz, jr_0a3_4331

    db $10
    ld d, b
    add b
    ld d, b
    add b
    ld l, b
    add b
    jr z, jr_0a3_433a

    ld l, h
    add b
    ld [hl], l
    add b
    or $00
    or $00
    ld a, e
    add b
    dec de
    ldh [$c7], a
    jr c, @-$1d

    ld e, $f8
    rlca
    ld a, [hl]
    ld bc, $0000
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
    ld a, a
    nop
    ccf
    nop
    adc a
    nop
    rst $00
    nop
    inc bc
    nop
    inc bc
    nop
    db $e3
    inc e
    ld e, a
    db $fc

jr_0a3_43ac:
    add l
    ld a, [hl]
    add hl, bc
    cp $09
    cp $f1
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $83
    ld a, h
    rst $00
    jr c, jr_0a3_43ac

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ld hl, sp+$3f
    db $fc
    rra
    cp $0f
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
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
    ld [$1509], sp
    ld d, $00
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    nop
    nop
    ld [$1509], sp
    rra
    jr nz, jr_0a3_4467

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a3_444e

jr_0a3_444e:
    nop
    nop
    ld [$1509], sp
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a3_4483

    jr z, jr_0a3_445e

jr_0a3_445e:
    nop
    nop
    ld [$1509], sp
    ld sp, $3332
    inc [hl]

jr_0a3_4467:
    dec [hl]
    ld [hl], $37
    jr c, jr_0a3_44a5

    jr z, jr_0a3_446e

jr_0a3_446e:
    nop
    nop
    ld [$1509], sp
    nop
    nop
    ld a, [hl-]
    dec sp
    inc a
    nop
    dec a
    ld a, $3f
    jr z, jr_0a3_447e

jr_0a3_447e:
    nop
    nop
    ld [$1509], sp

jr_0a3_4483:
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    jr z, jr_0a3_448e

jr_0a3_448e:
    nop
    nop
    ld [$4709], sp
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop
    ld c, l
    ld c, [hl]
    daa
    jr z, jr_0a3_449e

jr_0a3_449e:
    nop
    nop
    ld [$4f09], sp
    ld d, b
    ld d, c

jr_0a3_44a5:
    ld d, d
    ld d, e
    nop
    nop
    ld d, h
    ld d, l
    daa
    jr z, jr_0a3_44ae

jr_0a3_44ae:
    nop
    nop
    ld [$4f09], sp
    ld d, b
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    jr z, jr_0a3_44be

jr_0a3_44be:
    nop
    nop
    ld [$4f09], sp
    ld d, b
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    jr z, jr_0a3_44ce

jr_0a3_44ce:
    nop
    nop
    ld [$4f09], sp
    ld d, b
    ld d, b
    ld h, [hl]
    ld h, a
    ld l, b
    nop
    ld b, h
    ld l, c
    daa
    jr z, jr_0a3_44de

jr_0a3_44de:
    nop
    nop
    ld [$4f09], sp
    ld d, b
    ld d, b
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld e, $00
    nop
    nop
    ld [$7109], sp
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld [de], a
    inc de
    inc d
    nop
    nop
    nop
    ld bc, $7a79
    ld a, e
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    rlca
    rlca
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
    inc b
    inc b
    rlca
    dec b
    inc b
    rlca
    rlca
    inc b
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
    rlca
    rlca
    dec b
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
    inc b
    inc b
    dec b
    rlca
    dec b
    dec b
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
    inc b
    dec b
    rlca
    inc b
    dec b
    dec b
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
    inc b
    ld bc, $0407
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
    inc b
    ld bc, $0404
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
    inc b
    ld bc, $0404
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
    inc b
    ld bc, $0501
    dec b
    dec b
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
    inc b
    ld bc, $0501
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    jr nz, jr_0a3_462e

jr_0a3_462e:
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a3_465c

    jr nz, jr_0a3_463e

jr_0a3_463e:
    nop
    nop
    jr nz, jr_0a3_4642

jr_0a3_4642:
    nop
    nop
    jr nz, jr_0a3_4666

    jr nz, jr_0a3_4648

jr_0a3_4648:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a3_465c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a3_4666:
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    rst $18
    rra
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    rst $18
    rra
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $00fe
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
    rst $38
    nop
    rst $38
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
    rst $38
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
    rst $38
    ld a, b
    rst $38
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, l
    cp $bd
    cp $bd
    cp $bd
    cp $bd
    cp $bd
    cp $bd
    cp $bd
    cp $dd
    cp $de
    rst $38
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $de
    xor $ee
    xor $ee
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    ld [hl], a
    ld [hl], a
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    cp e
    dec sp
    cp l
    dec a
    cp l
    dec a
    cp l
    dec a
    cp l
    dec a
    cp l
    dec a
    cp l
    dec a
    db $dd
    dec e
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    xor $0e
    xor $0e
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $00fc
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
    ld bc, $02ff
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
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    pop bc
    rst $18
    pop hl
    rst $18
    pop hl
    rst $18
    pop hl
    rst $18
    pop hl
    rst $18
    db $e3
    rst $18
    db $e3
    rst $18
    db $e3
    rst $18
    db $e3
    rst $18
    db $e3
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld l, a
    ld l, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    or a
    or a
    or a
    or a
    or a
    or a
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp b
    cp b
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    rst $00
    rst $38
    and d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
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
    ret nz

    rst $38
    ret nz

    rst $38
    ld l, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fe]
    ldh a, [$fc]
    ldh a, [$f8]
    ldh a, [$fb]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
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
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    and d
    rst $38
    or [hl]
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    nop
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
    db $e3
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $40fe
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    rst $38
    ld [hl], d
    rst $38
    db $76
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    cp [hl]
    ld a, [hl]
    ld a, $7e
    ld a, $7e
    ld a, $ff
    ld a, $ff
    ld a, $ff
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    cp $3f
    cp $3f
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
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
    adc b
    rst $38
    ret c

    rst $38
    xor b
    rst $38
    adc b
    rst $38
    adc b
    adc b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $e1
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    dec a
    jp nz, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    cp $02
    cp $06
    cp $06
    ld c, $fe
    inc e
    inc a
    inc a
    inc a
    ccf
    db $fc
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$7f
    ldh a, [$7e]
    pop af
    cp $f1
    cp $f1
    rst $38
    ld hl, sp-$01
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$61
    ld hl, sp+$0f
    sbc b
    inc b
    adc b
    nop
    ldh [rP1], a
    ret nz

    add b
    ret nz

    add b
    ret z

    add b
    rst $20
    jp nz, $e1f7

    ei
    ldh a, [$fd]
    ld hl, sp-$02
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh [$1f], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    adc a

jr_0a3_4a1f:
    add b
    add a
    add b
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
    inc e
    db $e3
    jr nz, jr_0a3_4a1f

    rst $38
    ld b, h
    rst $38
    ld l, h
    rst $38
    ld d, h
    rst $38
    ld l, h
    rst $38
    ld b, h
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    nop
    ld a, a
    add b
    ccf
    ld b, b
    rrca
    jr nc, jr_0a3_4a5a

    inc c
    nop
    rlca

jr_0a3_4a5a:
    nop
    ld c, $00
    ldh [rP1], a
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    rra
    ccf
    rrca
    adc a
    nop
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
    ld bc, $01ff
    rst $38
    jp nz, $fa3e

    ld [bc], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    cp $ff
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $ec
    inc de
    ret z

    scf
    add b
    ld a, a
    nop
    rst $38
    rst $38
    dec h
    rst $38
    ld d, l
    rst $38
    ld d, e
    rst $38
    set 7, a
    xor c
    rst $38
    dec h
    rst $38
    dec d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ld a, $00
    ret nz

    nop
    rlca
    ld bc, $031f
    ld a, a
    rlca
    rst $38
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    rra
    rst $28
    ccf
    jp $c33f


    ccf
    pop bc
    rra
    pop hl
    rrca
    di
    rrca
    pop af
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$fe], a
    nop
    rst $38
    nop
    ld [hl], e
    add b
    ld b, b
    add b
    ld b, d
    jp nz, $a3a3

    and d
    and d
    sub d
    sub d
    ld d, d
    ld d, d
    ld c, e
    ld c, e
    ld a, [hl+]
    ld a, [hl+]
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
    add hl, sp
    rst $38
    ld bc, $f8ff
    rlca
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    jr jr_0a3_4b57

jr_0a3_4b57:
    rlca
    nop
    add e
    nop
    ldh [$e0], a
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    nop
    jr nz, jr_0a3_4b88

jr_0a3_4b88:
    add b
    nop
    add b
    nop
    ld d, d
    ld d, d
    sbc h
    sbc h
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    sbc h
    sbc h
    ld d, d
    ld d, d
    nop
    nop
    jr @+$06

    jr c, @+$06

    db $10
    jr z, jr_0a3_4ba3

jr_0a3_4ba3:
    jr c, jr_0a3_4c16

    inc c
    ld sp, hl
    inc b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    cp $01
    cp $01
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
    nop
    rst $38
    nop
    ld e, $e1
    nop
    rst $38
    nop
    inc c
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
    adc b
    adc b
    call $aacd
    xor d
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc c
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $03e0
    cp $01
    cp $01
    cp $00
    ld a, b
    nop
    jr nz, jr_0a3_4c00

jr_0a3_4c00:
    nop
    add b
    add b
    ld e, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]

jr_0a3_4c16:
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rSB], a
    db $e4
    dec b
    jp z, $d18b

    ld d, e
    jp z, $c44b

    add a
    jp z, $d10f

    rla
    ldh [rTAC], a
    ldh a, [$03]
    ldh a, [$0b]
    ldh a, [$09]
    sub b
    ld l, c
    jr @-$59

    jr @+$36

    jr jr_0a3_4cba

jr_0a3_4c3e:
    jr c, jr_0a3_4c3e

    ld sp, hl
    rst $38
    pop af
    ei
    ldh [$f3], a
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
    nop
    nop
    nop
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    ld a, h
    inc bc
    inc a
    inc bc
    inc a
    rlca
    jr c, jr_0a3_4c86

    jr c, jr_0a3_4c84

    inc a
    inc bc
    ld [hl], h

jr_0a3_4c84:
    inc bc
    ld h, h

jr_0a3_4c86:
    inc bc
    ld h, h
    inc bc
    call nz, $c807
    rrca
    ret nc

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    call nz, $ec7f
    ld a, a
    call nc, $ec7f
    rst $38
    ld b, h
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a3_4cba:
    ld a, a
    add b
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    rra
    ld a, a
    rra
    ccf
    ccf
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$87], a
    ld hl, sp+$0f
    ldh a, [rTMA]
    ld sp, hl
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
    dec bc
    db $f4
    inc de
    db $ec
    ccf
    ret nz

    ld a, [hl]
    add c
    ld a, h
    add e
    ld a, b
    add a
    ld a, [$0705]
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
    cp $ff
    rst $38
    cp $fe
    cp $1e
    cp $0e
    cp $00
    cp $00
    sbc $20
    adc [hl]
    ld [hl], b
    ld b, $f8
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
    db $fd
    inc bc
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    sbc a
    rst $28
    sbc a
    rst $28
    ld e, a
    rst $28
    ld e, a
    xor $1f
    sbc $3f
    sbc $3f
    sbc $3f
    sbc $3f
    sbc $3f
    sbc $3f
    db $dd
    ccf
    db $dd
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    dec a
    dec a
    ei
    ei
    ei
    ei
    ei
    ei
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
    rra
    ccf
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30

jr_0a3_4dc8:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    sbc $de
    sbc $de
    sbc $de
    db $dd
    call c, $dcdd
    db $dd
    call c, $dcdd
    cp l
    cp h
    cp l
    cp h
    cp l
    cp h
    cp e
    cp b
    cp e
    cp b
    cp e
    cp b
    cp e
    cp b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    rst $30
    ldh a, [$fd]
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    ei
    ld hl, sp+$3b
    jr c, jr_0a3_4dc8

    cp b
    cp e
    cp b
    cp e
    cp b
    cp e
    cp b
    ld a, e
    ld a, b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    rst $30
    ldh a, [$ef]
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
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
    ld [$1509], sp
    ld d, $17
    jr jr_0a3_4e90

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    nop
    ld [$1509], sp
    jr nz, jr_0a3_4ea6

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a3_4eb6

    nop
    nop
    nop

jr_0a3_4e90:
    ld [$1509], sp
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a3_4ecc

    jr z, jr_0a3_4ec6

    nop
    nop
    nop
    ld [$1509], sp
    ld [hl-], a
    inc sp
    inc [hl]

jr_0a3_4ea6:
    dec [hl]
    ld [hl], $37
    jr c, jr_0a3_4ee4

    ld a, [hl-]
    add hl, hl
    nop
    nop
    nop
    ld [$1509], sp
    nop
    nop
    dec sp

jr_0a3_4eb6:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    add hl, hl
    nop
    nop
    nop
    ld [$1509], sp
    nop
    ld b, d
    ld b, e

jr_0a3_4ec6:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_0a3_4ecc:
    add hl, hl
    nop
    nop
    nop
    ld [$4a09], sp
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    jr z, jr_0a3_4f06

    nop
    nop
    nop
    ld [$5309], sp
    ld d, h

jr_0a3_4ee4:
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    ld e, b
    ld e, c
    ld e, d
    jr z, jr_0a3_4f16

    nop
    nop
    nop
    ld [$5309], sp
    ld d, h
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    add hl, hl
    nop
    nop
    nop
    ld [$5309], sp
    ld d, h
    ld h, e
    ld h, h

jr_0a3_4f06:
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    add hl, hl
    nop
    nop
    nop
    ld [$5309], sp
    ld d, h
    ld d, h
    ld l, e

jr_0a3_4f16:
    ld l, h
    ld l, l
    ld d, b
    ld l, [hl]
    ld l, a
    jr z, @+$2b

    nop
    nop
    nop
    ld [$5309], sp
    ld d, h
    ld d, h
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    rra
    nop
    nop
    nop
    ld [$7709], sp
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld [de], a
    inc de
    inc d
    nop
    nop
    nop
    ld bc, $807f
    add c
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    rlca
    rlca
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
    inc b
    inc b
    rlca
    dec b
    inc b
    rlca
    rlca
    inc b
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
    rlca
    rlca
    dec b
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
    inc b
    inc b
    rlca
    rlca
    dec b
    dec b
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
    inc b
    dec b
    rlca
    inc b
    dec b
    dec b
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
    inc b
    ld bc, $0407
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
    inc b
    ld bc, $0404
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
    inc b
    ld bc, $0404
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
    inc b
    ld bc, $0501
    dec b
    dec b
    inc h
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0501
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    jr nz, jr_0a3_506e

jr_0a3_506e:
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a3_509c

    jr nz, jr_0a3_507e

jr_0a3_507e:
    nop
    nop
    jr nz, jr_0a3_5082

jr_0a3_5082:
    nop
    nop
    jr nz, jr_0a3_50a6

    jr nz, jr_0a3_5088

jr_0a3_5088:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a3_509c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a3_50a6:
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    rst $18
    rra
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    rst $18
    rra
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $00fe
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
    rst $38
    nop
    rst $38
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
    rst $38
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
    rst $38
    ld a, b
    rst $38
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, l
    cp $bd
    cp $bd
    cp $bd
    cp $bd
    cp $bd
    cp $bd
    cp $bd
    cp $dd
    cp $de
    rst $38
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $de
    xor $ee
    xor $ee
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    ld [hl], a
    ld [hl], a
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    cp e
    dec sp
    cp l
    dec a
    cp l
    dec a
    cp l
    dec a
    cp l
    dec a
    cp l
    dec a
    cp l
    dec a
    db $dd
    dec e
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    xor $0e
    xor $0e
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $00fc
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
    inc bc
    db $fc
    inc b
    rst $38
    inc bc
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
    rst $38
    nop
    rst $38
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
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    pop bc
    rst $18
    pop hl
    rst $18
    pop hl
    rst $18
    pop hl
    rst $18
    pop hl
    rst $18
    db $e3
    rst $18
    db $e3
    rst $18
    db $e3
    rst $18
    db $e3
    rst $18
    db $e3
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld l, a
    ld l, a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    or a
    or a
    or a
    or a
    or a
    or a
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp b
    cp b
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $20
    jr jr_0a3_52d0

    ld a, e
    ld l, e
    ld a, e
    ld c, e
    ld a, b
    ld c, b
    ld a, e
    ld c, e
    ld a, e
    ld c, e
    ld a, e
    ld c, e
    rst $38
    add h
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

jr_0a3_52d0:
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld l, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fe]
    ldh a, [$fc]
    ldh a, [$f8]
    ldh a, [$fb]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
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
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc e
    db $e3
    and e
    ld l, a
    ld l, l
    ld l, a
    ld l, c
    rst $20
    and l
    ld l, a
    ld l, c
    ld l, l
    ld l, a
    ld h, e
    ld h, e
    sbc h
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
    db $e3
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $40fe
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    rst $38
    ld [hl], d
    rst $38
    db $76
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    cp [hl]
    ld a, [hl]
    ld a, $7e
    ld a, $7e
    ld a, $ff
    ld a, $ff
    ld a, $ff
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    cp $3f
    cp $3f
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
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
    ldh [$1f], a
    db $10
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_0a3_545e

    ld b, b
    ld h, b
    ld a, a
    db $10
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
    ld e, $e1
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    dec a
    jp nz, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    cp $02
    cp $06
    cp $06
    ld c, $fe
    inc e
    inc a
    inc a
    inc a
    ccf
    db $fc
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$7f
    ldh a, [$7e]
    pop af
    cp $f1
    cp $f1
    rst $38
    ld hl, sp-$01
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    cp $fa
    cp $fa
    cp $fa
    cp $fa
    cp $fa
    cp $fa
    sbc [hl]
    ld a, [$990f]
    inc b
    adc b
    nop
    ldh [rP1], a
    ret nz

    add b
    ret nz

    add b
    ret z

    add b
    rst $20
    jp nz, $e1f7

    ei
    ldh a, [$fd]
    ld hl, sp-$02
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a3_545e:
    rst $38
    rst $38
    nop
    rst $38
    ldh [$1f], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    adc a

jr_0a3_546f:
    add b
    add a
    add b
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
    inc e
    db $e3
    jr nz, jr_0a3_546f

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $28
    xor b
    ld c, a
    ld c, c
    xor a
    xor c
    xor $ea
    xor $aa
    db $ed
    xor l
    db $ed
    xor l
    rst $38
    ld [de], a
    ld a, a
    add b
    ccf
    ld b, b
    rrca
    jr nc, jr_0a3_54ba

    inc c
    nop
    rlca

jr_0a3_54ba:
    nop
    ld c, $00
    ldh [rP1], a
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    rra
    ccf
    rrca
    adc a
    nop
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
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    cp $02
    cp $c5
    dec a
    db $fd
    dec b
    jp nz, $8002

    nop
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    cp $ff
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $ec
    inc de
    ret z

    scf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    and d
    ld e, [hl]
    ld d, d
    ld e, [hl]
    ld d, d
    ld c, $0a
    xor $ea
    or $16
    or $16
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    ret nz

    ld a, $00
    ret nz

    nop
    rlca
    ld bc, $031f
    ld a, a
    rlca
    rst $38
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    rra
    rst $28
    ccf
    jp $c33f


    ccf
    pop bc
    rra
    pop hl
    rrca
    di
    rrca
    pop af
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$fe], a
    nop
    rst $38
    nop
    ld [hl], e
    add b
    ld b, c
    pop bc
    and d
    and d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld a, [bc]
    ld a, [bc]
    ld [$16ea], a
    ld d, $16
    ld d, $09
    add hl, bc
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    rst $38
    ld bc, $f8ff
    rlca
    db $fc
    inc bc
    cp $01
    cp $01

jr_0a3_55a0:
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0a3_55a0

    ret nc

    ld e, a
    ld d, b
    sbc a
    sub b
    rst $18
    ret nc

    rst $18
    ret nc

    rst $18
    ret nc

    rst $18
    ret nc

    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rlca
    jr jr_0a3_55d7

jr_0a3_55d7:
    rlca
    nop
    add e
    nop
    ldh [$e0], a
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    nop
    jr nz, jr_0a3_5608

jr_0a3_5608:
    add b
    nop
    rst $00
    rst $00
    jr z, jr_0a3_5636

    db $db
    db $db
    db $db
    db $db
    jr z, jr_0a3_563c

    set 1, e
    adc d
    adc d
    adc d
    adc d
    inc b
    inc b
    jr @+$06

    jr c, @+$06

    db $10
    jr z, jr_0a3_5623

jr_0a3_5623:
    jr c, jr_0a3_5696

    inc c
    ld sp, hl
    inc b
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a3_5636:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a3_563c:
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    xor e
    cp e
    xor e
    cp e
    xor e
    cp e
    cp e
    xor e
    xor e
    sub e
    sub e
    cp e
    xor e
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, $e1
    nop
    rst $38
    nop
    inc c
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
    db $10
    db $10
    xor c
    xor c
    ld l, c

jr_0a3_566f:
    ld l, c
    ld l, c
    ld l, c
    xor c
    xor c
    add hl, hl
    add hl, hl
    dec l
    dec l
    inc hl
    inc hl
    inc e
    inc e
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $03e0
    cp $01
    cp $01
    cp $00
    ld a, b
    nop
    jr nz, jr_0a3_5690

jr_0a3_5690:
    nop
    add b
    add b
    ld e, b
    ldh a, [rP1]

jr_0a3_5696:
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    db $e4
    push hl
    ld a, [de]
    dec de
    ld e, c
    ld e, c
    ld e, d
    ld e, d
    ld e, e
    ld e, e
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld a, [de]
    dec de
    db $e4
    rst $20
    ldh a, [$03]
    ldh a, [$0b]
    ldh a, [$09]
    sub b
    ld l, c
    jr jr_0a3_566f

    jr @+$36

    jr jr_0a3_574a

jr_0a3_56ce:
    jr c, jr_0a3_56ce

    ld sp, hl
    rst $38
    pop af
    ei
    ldh [$f3], a
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
    nop
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
    db $10
    db $10
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    jr nz, jr_0a3_5714

    ld b, b
    ld b, b
    ld h, b
    ld h, b
    db $10
    db $10
    ldh [$f0], a
    nop
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    ld a, h
    inc bc
    inc a
    inc bc
    inc a
    rlca
    jr c, jr_0a3_5716

    jr c, jr_0a3_5714

    inc a
    inc bc
    ld [hl], h

jr_0a3_5714:
    inc bc
    ld h, h

jr_0a3_5716:
    inc bc
    ld h, h
    inc bc
    call nz, $c807
    rrca
    ret nc

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rra
    ldh [$7f], a
    pop bc
    cp [hl]
    and d
    dec a
    dec h
    cp l
    and l
    cp b
    xor b
    cp e
    xor e
    or a
    or h
    or a
    or h
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a3_574a:
    ld a, a
    add b
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    rra
    ld a, a
    rra
    ccf
    ccf
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$87], a
    ld hl, sp+$0f
    ldh a, [rTMA]
    ld sp, hl
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
    dec bc
    db $f4
    inc de
    db $ec
    ccf
    ret nz

    ld a, [hl]
    add c
    ld a, h
    add e
    ld a, b
    add a
    ld a, [$0705]
    ld hl, sp-$05
    adc e
    ld a, c
    ld c, c
    ld a, d
    ld c, d
    dec sp
    dec hl
    cp e
    xor e
    db $db
    ld e, e
    db $db
    ld e, e
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    cp $fe
    cp $1e
    cp $0e
    cp $00
    cp $00
    sbc $20
    sbc [hl]
    ld h, b
    ld e, $e0
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
    db $fd
    inc bc
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    adc a
    ld l, a
    ld e, a
    ld l, a
    ld e, a
    ld l, a
    ld e, a
    ld l, a
    ld e, a
    ld l, a
    ld e, a
    ld l, a
    ld e, a
    ld l, a
    ld e, a
    xor $9f
    sbc $3f
    sbc $3f
    sbc $3f
    sbc $3f
    sbc $3f
    sbc $3f
    db $dd
    ccf
    db $dd
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    dec a
    dec a
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_0a3_5825:
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    ccf
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, $7f
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30

jr_0a3_5868:
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    sbc $de
    sbc $de
    sbc $de
    db $dd
    call c, $dcdd
    db $dd
    call c, $dcdd
    cp l
    cp h
    cp l
    cp h
    cp l
    cp h
    cp e
    cp b
    cp e
    cp b
    cp e
    cp b
    cp e
    cp b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    rst $30
    ldh a, [$fd]
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    ei
    ld hl, sp+$3b
    jr c, jr_0a3_5868

    cp b
    cp e
    cp b
    cp e
    cp b
    cp e
    cp b
    ld a, e
    ld a, b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    rst $30
    ldh a, [$ef]
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [rP1], a
    ld bc, $0101
    ld bc, $0302
    inc b
    dec b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld bc, $0101
    ld bc, $0d01
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    dec bc
    ld d, $17
    ld bc, $0101
    ld bc, $1918
    dec b
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $0b
    dec bc
    rra
    jr nz, @+$03

    ld bc, $0101
    ld hl, $0505
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $0b
    dec bc
    daa
    jr z, jr_0a3_593c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec b
    dec b
    ld l, $2f
    jr nc, jr_0a3_594e

    ld [hl-], a
    dec bc
    dec bc
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a3_592c

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_0a3_592c:
    ld a, $3f
    dec bc
    dec bc
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
    ld c, e

jr_0a3_593c:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    cpl
    cpl
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

jr_0a3_594e:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    cpl
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
    ld bc, $6b01
    cpl
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    dec b
    ld [hl], d
    ld [hl], e
    ld bc, $0101
    ld bc, $2f01
    cpl
    cpl
    cpl
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld bc, $0101
    cpl
    cpl
    cpl
    cpl
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    cpl
    add d
    dec b
    add e
    add h
    ld bc, $2f01
    cpl
    cpl
    cpl
    add l
    add [hl]
    add a
    ld [hl], $88
    cpl
    adc c
    adc d
    dec b
    adc e
    adc h
    ld bc, $8d2f
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    cpl
    cpl
    cpl
    sub e
    sub h
    dec b
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc h
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
    dec b
    dec b
    dec b
    dec b
    xor e
    dec b
    add hl, sp
    xor h
    xor l
    xor [hl]
    ld bc, $0101
    xor a
    or b
    or c
    or d
    dec b
    dec b
    dec b
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    ld bc, $b901
    ld bc, $ba01
    cp e
    cp h
    dec b
    dec b
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    cpl
    ld bc, $0101
    ld bc, $c201
    jp $c5c4


    dec b
    add $c7
    ret z

    ret


    cpl
    jp z, Jump_000_0101

    ld bc, $cb01
    call z, $cecd
    rrca
    ld a, b
    rst $08
    ret nc

    pop de
    ld l, e
    jp nc, Jump_000_002f

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc bc
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
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    nop
    nop
    nop
    nop
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
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a3_5b4a

jr_0a3_5b4a:
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    inc hl
    call c, $9867
    ld h, a
    sbc b
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rNR31], a
    db $e4
    dec bc
    db $f4
    add hl, bc
    or $09
    or $07
    ld hl, sp+$05
    ld a, [$f807]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_0a3_5ba4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $38
    ld b, c
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    add c
    cp $0e
    pop af
    ld [hl], h
    adc a
    ldh [$3f], a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    dec b
    cp $04
    ld hl, sp+$10
    ldh [rLYC], a
    add b
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $77
    rst $38
    add hl, de
    rst $38
    ld h, h
    sbc a
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
    ld a, a
    add b
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    dec de
    db $e4
    ld e, $e1
    nop
    rst $38
    nop
    rst $38
    ld [$10f7], sp
    rst $28
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    db $10
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    dec e
    db $e3
    ld l, a
    sbc a
    cp a
    ld a, a
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
    db $fd
    cp $f4
    ld hl, sp-$30
    ldh [rLCDC], a
    add b
    nop
    nop
    inc c
    nop
    nop
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
    ld e, a
    ccf
    ld d, a
    adc a
    xor e
    rst $00
    jp z, $75f1

    ld hl, sp+$5f
    db $fc
    ld c, [hl]
    rst $38
    rla
    rst $38
    rst $30
    rrca
    ei
    rlca
    db $fc
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
    nop
    db $eb
    inc d
    ei
    inc b
    sbc $21
    ld l, [hl]
    sub c
    ld d, b
    xor a
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
    ld b, e
    rst $38
    inc b
    rst $38
    dec c
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld e, $ff
    rla
    ld hl, sp-$61
    rst $20
    rst $38
    rra
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
    cp $f7
    ld hl, sp-$21
    ldh [$7f], a
    add b
    ld [hl], c
    nop
    ld b, d
    nop
    ld bc, $8000
    nop
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
    ccf
    xor a
    rra
    res 0, a
    push de
    db $e3
    pop af
    ld hl, sp-$06
    db $fc
    ld a, h
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    jp hl


    ld d, $80
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
    ld b, b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    ld [hl+], a
    rst $38
    ld [c], a
    rst $38
    jp nc, $b1ff

    rst $38
    pop af
    rst $38
    reti


    rst $38
    pop af
    cp $ff
    pop af
    or a
    rst $08
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
    db $fd
    cp $f7
    ld hl, sp-$21
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
    rst $18
    nop
    ld a, a
    nop
    ld d, b
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
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ccf
    rrca
    rra
    rrca
    add a
    pop hl
    jp $f1e0


    db $fc
    ld hl, sp+$7d
    cp $1f
    rst $38
    rst $08
    ccf
    and e
    ld e, a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
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
    ld a, [$f805]
    rlca
    ldh [$1f], a
    sub b
    ld l, a
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    rst $38
    ld e, h
    rst $38
    ld l, h
    rst $38
    ld a, l
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
    db $fc
    db $ed
    di
    ld a, a
    adc a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $ff
    ldh a, [$df]
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $30
    nop
    ld e, c
    nop
    and [hl]
    nop
    ld d, b
    nop
    and b
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    add b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    jp nz, $90fc

    ld hl, sp-$80
    ld hl, sp-$3c
    ld hl, sp-$1e
    db $fc
    db $f4
    cp $f0
    rst $38
    rst $38
    rst $38
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
    ld e, a
    ccf
    ld l, a
    sbc a
    sub a
    rst $28
    db $e3
    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    ld bc, $02ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld a, [bc]
    rst $38
    ld [$28ff], sp
    rst $38
    sub b
    rst $38
    db $76
    rst $38
    ld a, [$fcff]
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [$ffff]
    ld hl, sp-$05
    rst $20
    ld a, a
    sbc a
    rst $38
    ld a, a
    rst $38

jr_0a3_5f25:
    rst $38
    cp $ff
    ei
    db $fc
    rst $38
    ldh a, [$df]
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
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld l, h
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp a
    nop
    ld [bc], a
    nop
    ld c, $00
    rra
    nop
    nop
    nop
    jr nz, jr_0a3_5f50

jr_0a3_5f50:
    nop
    rst $38
    add b
    rst $38
    jr nc, jr_0a3_5f25

    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ldh [rNR41], a
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
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $28
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
    ccf
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $30
    rst $38
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, l
    rst $30
    db $fd
    rst $30
    ld a, l
    rst $30
    ld a, l
    rst $30
    ld a, l
    rst $30
    ld a, l
    rst $30
    db $fc
    rst $30
    cp $f7
    ld a, [hl]
    rst $30
    ld a, [hl]
    rst $30
    cp $f7
    cp $f7
    cp $f7
    cp $f7
    cp $f7
    cp $f7
    rst $28
    or $97
    cp $c7
    cp $87
    cp $07
    cp $07
    cp $07
    cp $04
    rst $38
    inc b
    rst $38
    inc de
    db $fd
    inc sp
    db $fd
    scf
    db $fd
    ld [hl], e
    db $fd
    ld [hl], l
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    db $76
    rst $38
    or $ff
    or a
    rst $08
    rst $18
    ccf
    ld c, a
    rst $38
    adc [hl]
    rst $38
    sbc e
    db $fc
    rst $28
    ldh a, [$b0]
    ret nz

    ret z

    nop
    ld hl, sp+$00
    pop af
    nop
    rst $38
    nop
    rst $38
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
    ld a, [$1000]
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
    and b
    nop
    add b
    nop
    nop
    nop
    jr nz, jr_0a3_6032

jr_0a3_6032:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_0a3_603c

jr_0a3_603c:
    ld bc, $0200
    nop
    inc b
    nop
    dec b
    nop
    dec bc
    nop
    rla
    nop
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    db $fd
    cp $fe
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $30
    ei
    rst $30
    ei

jr_0a3_608b:
    rst $30
    db $db
    rst $30
    db $eb
    rst $10
    adc e
    rst $30
    adc e
    rst $30
    db $db
    and a
    db $db
    and a
    ld sp, hl
    and a
    db $fd
    and a
    db $fd
    and a
    ld a, c
    and a
    ld a, l
    and a
    jr c, jr_0a3_608b

    cp [hl]
    ld h, a
    ld a, d
    rst $20
    rst $28
    rst $30
    push af
    rst $28
    ld [hl], h
    rst $38
    ld e, [hl]
    rst $30
    sbc $77
    ld [hl], a
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    db $ed
    rst $30
    db $ed
    rst $30
    db $eb
    push af
    rst $20
    db $fd
    rst $20
    db $fd
    push hl
    rst $38
    push hl
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    db $f4
    rst $38
    rst $20
    ld hl, sp-$41
    ret nz

    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld l, d
    nop
    ld bc, $0600
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr z, jr_0a3_60fa

jr_0a3_60fa:
    and h
    nop
    ld a, [hl+]
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
    dec de
    nop
    inc bc
    nop
    ld c, d
    nop
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0500
    nop
    dec bc
    nop
    dec d
    nop
    ld [hl], a
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $18
    ccf
    rst $18
    ccf
    sbc a
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
    db $fd
    cp $fc
    db $fc
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    ldh [$80], a
    rst $38
    rst $38
    rst $38
    ld a, [$f1ff]
    cp $f1
    cp $f0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    jr @+$01

    jr @+$01

    ld e, b
    cp a
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    ret c

    rst $38
    ret c

    rst $38
    ret c

    rst $38
    call c, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    and b
    ld e, a
    rst $38
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
    rst $38
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
    ld e, a
    nop
    rla
    nop
    rla
    nop
    rlca
    nop
    inc bc
    nop
    dec b
    nop
    inc bc
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
    ld sp, hl
    rst $38
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rrca
    inc bc
    rlca
    rrca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $ff00
    rst $38
    cp $ff
    inc bc
    db $fc
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rra
    ldh [rNR33], a
    ld [c], a
    dec c
    ld a, [c]
    inc c
    di
    ld c, $f1
    ld bc, $01fe
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
    ret nc

    rst $38
    ld a, b
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$fff7], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    db $e3
    db $fc
    nop
    nop
    ldh a, [rIF]
    db $fd
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
    cp $01
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    dec c
    ld a, [c]
    add h
    ld a, e
    add a
    ld a, b
    rlca
    ld hl, sp+$05
    ld a, [$ff00]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld b, e
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
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
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
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
    rst $38
    add b
    nop
    inc bc
    nop
    rlca
    rst $38
    ccf
    rst $38
    add b
    ld a, a
    ret nc

    cpl
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, $c1
    ld a, $c1
    inc a
    jp $9768


    and $19
    add $39
    ld a, [$ff05]
    nop
    rst $30
    ld [$807f], sp
    rst $38
    nop
    ld a, a
    add b
    ld a, [hl]
    add c
    ld hl, sp+$07
    add sp, $17
    ret c

    daa
    sbc b
    ld h, a
    ld d, b
    xor a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
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
    ld h, b
    sbc a
    ld [$8015], a
    ld a, a
    add b
    ld a, a
    pop af
    ld c, $ff
    nop
    rst $38

jr_0a3_6395:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp Jump_000_00fc


    nop
    add a
    ld a, a
    rst $38
    rst $38
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    jr nz, jr_0a3_6395

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    db $ec
    inc de
    db $fc
    inc bc
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, $00ff
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    cp $01
    add $39
    inc h
    db $db
    xor $11
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$f7], a
    ldh [$e6], a
    ldh [$e6], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp+$00
    ccf
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    daa
    rst $38
    dec de
    rst $38
    rst $38
    rst $38
    ccf
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
    ld a, $c1
    ld a, a
    add b
    cp a
    ld b, b
    cpl
    ret nc

    dec bc
    db $f4
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $f8
    rst $38
    ld a, [$f9fd]
    cp $fb
    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    db $f4
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rra
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    rst $38
    rrca
    db $fc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$dd], a
    ld [c], a
    sbc a
    ldh [$9f], a
    ldh [$8b], a
    db $f4
    adc l
    ld a, [c]
    add a
    ld hl, sp+$03
    db $fc
    ld bc, $007e
    rst $38
    add d
    db $fd
    add c
    cp $81
    cp $81
    cp $81
    cp $81
    cp $80
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
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret z

    rst $30
    call z, $dcf3
    db $e3
    sbc $e1
    ret nz

    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    and b
    sbc a
    adc b
    cp a
    adc b
    rst $38
    cp a
    ret nz

    cp [hl]
    pop bc
    cp l
    jp z, $e41b

    inc de
    db $ec
    ld d, $ed
    ld [$88f7], sp
    ld [hl], a
    add sp, $37
    add sp, $37
    call nz, $143b
    ei
    inc d
    ei
    inc b
    ei
    ld [de], a
    db $fd
    ld [de], a
    db $fd
    ld [bc], a
    db $fd
    ld a, [bc]
    db $fd
    add hl, bc
    cp $01
    cp $05
    cp $05
    cp $04
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c0ff
    ccf
    db $fc
    inc bc
    cp $01
    cp $01
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
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38

jr_0a3_65cb:
    nop
    rst $38

jr_0a3_65cd:
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
    cp e
    ld b, h
    ld a, a
    add b
    cp $01
    ld a, $c1
    dec a
    jp nz, Jump_000_20df

    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0b]
    db $f4
    dec b
    ld a, [$fc03]
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld d, h
    xor e
    call c, $ae23
    ld d, c
    ld b, b
    cp a
    or b
    rrca
    and b
    rra
    or b
    rra
    or b
    rra
    jr nc, jr_0a3_65cb

    jr c, jr_0a3_65cd

    db $10
    rst $38
    db $76
    adc c
    db $76
    adc c
    inc [hl]
    srl [hl]
    pop bc
    ccf
    ret nz

    ccf
    ret nz

    add hl, de
    and $19
    and $ff
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
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
    db $db
    inc h
    sbc a
    ld h, b
    cp e
    ld b, h
    add e
    ld a, h
    adc e
    ld [hl], h
    dec bc
    db $f4
    rlca
    ld hl, sp-$79
    ld a, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$05
    ld a, [$fa05]
    ld bc, $01fe
    cp $05
    ld a, [$fe01]
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $81ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    ld d, $ff
    ld [de], a
    rst $38
    dec e
    rst $38
    ld a, [bc]
    rst $38
    inc hl
    rst $38
    dec l
    rst $38
    ld [de], a
    rst $38
    dec d
    rst $38
    dec e
    rst $38
    add hl, de
    rst $38
    dec e
    rst $38
    ld a, [de]
    rst $38
    dec l
    rst $38
    inc l
    rst $38
    inc c
    rst $38
    dec bc
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    add h
    ld a, a
    ld b, $ff
    add a
    ld a, a
    ld b, $ff
    daa
    rst $18
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca

jr_0a3_66d9:
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
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

jr_0a3_66e9:
    nop
    rst $38

jr_0a3_66eb:
    nop
    rst $38

jr_0a3_66ed:
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
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, [c]
    dec c
    ldh [$1f], a
    jr nc, jr_0a3_66d9

    jr nz, jr_0a3_66eb

    ld sp, $30ce
    rst $08
    jr z, jr_0a3_66e9

    jr z, jr_0a3_66eb

    jr z, jr_0a3_66ed

    ld [$08f7], sp
    rst $30
    ld [$00f7], sp
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
    jr nz, @+$01

    db $10
    rst $38
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$01ff], sp
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    adc h
    rst $38
    ld d, $ff
    rra
    rst $38
    adc l
    rst $38
    dec de
    rst $38
    xor a
    rst $38
    ld c, [hl]
    rst $38
    rst $08
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    or [hl]
    ld c, c
    sbc [hl]
    ld h, c
    adc [hl]
    ld [hl], c
    rlca
    ld hl, sp+$06
    ld sp, hl
    ld c, $f1
    inc b
    ei
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld bc, $48ff
    rst $38
    jp $e3ff


    rst $38
    ld a, a
    rst $38
    di
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    or $ff
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $f4
    rst $38

jr_0a3_67ec:
    cp $ff

jr_0a3_67ee:
    ei
    rst $38
    db $fd
    rst $38
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
    rst $38
    rst $38
    nop
    rst $10
    jr z, @-$37

    jr c, jr_0a3_67ee

    jr jr_0a3_67ec

    inc e
    and e
    ld e, h
    db $e3
    inc e
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
    cp $01
    ld a, [$fa05]
    dec b
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld b, e
    cp h
    ld [c], a
    dec e
    db $d3
    inc l
    ret nc

    cpl
    ret nz

    ccf
    ld d, b
    xor a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
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
    inc bc
    rst $38
    ld bc, $11ff
    rst $38
    ld sp, $30ff
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld h, c
    rst $38
    inc hl
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    xor a
    rst $38
    ld [hl], a
    rst $38
    or a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    nop
    ld bc, $0201
    inc bc
    ld bc, $0504
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld bc, $0101
    ld bc, $0e01
    rrca
    db $10
    rlca
    rlca
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld bc, $0101
    ld bc, $1918
    rlca
    rlca
    rlca
    ld a, [de]
    dec de
    inc e
    dec e
    dec d
    dec d
    ld e, $01
    rra
    jr nz, jr_0a3_68d6

    ld [hl+], a
    inc hl
    rlca
    rlca
    inc h
    dec h
    ld h, $15
    dec d
    dec d
    dec d
    daa
    jr z, jr_0a3_68c4

    add hl, hl

jr_0a3_68c4:
    ld a, [hl+]
    dec hl
    inc l
    rlca
    rlca
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

jr_0a3_68d6:
    ld a, [hl-]
    rlca
    rlca
    rlca
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
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld bc, HeaderGlobalChecksum
    dec d
    dec d
    dec d
    ld c, a
    ld d, b
    ld d, c
    ld bc, $5352
    ld d, h
    rlca
    ld d, l
    ld d, [hl]
    ld bc, $0101
    dec d
    dec d
    dec d
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld bc, $5d5c
    rlca
    ld e, [hl]
    ld bc, $0101
    dec d
    dec d
    dec d
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld bc, $0101
    ld bc, $6968
    ld l, d
    dec d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld bc, $7271
    ld bc, $7301
    ld [hl], h
    ld [hl], l
    db $76
    dec d
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
    rlca
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    dec d
    dec d
    and d
    and e
    ld bc, $a401
    rlca
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    and c
    dec d
    xor h
    xor l
    ld bc, $0101
    xor [hl]
    xor a
    rlca
    or b
    or c
    or d
    or e
    or h
    or l
    and c
    or [hl]
    or a
    cp b
    ld bc, $b901
    cp d
    cp e
    rlca
    rlca
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    and c
    pop bc
    jp nz, $c4c3

    ld bc, $c6c5
    rlca
    rlca
    rlca
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    ld bc, $d101
    jp nc, $07d3

    call nc, $d6d5
    rst $10
    ld bc, $d801
    reti


    jp c, $db01

    inc b
    call c, Call_000_07dd
    rlca
    rlca
    sbc $df
    ldh [$e1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
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
    rst $30
    ld [$00ff], sp
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38

jr_0a3_6b45:
    nop
    rst $38
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
    call c, $f423
    dec bc
    db $fc
    inc bc
    db $fc
    inc bc
    jp c, Jump_0a3_5825

    and a
    ld [hl], b
    adc a
    ld e, b
    and a
    ld b, b
    cp a
    jr nz, jr_0a3_6b45

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
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
    jr nz, @+$01

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
    daa
    rst $38
    ld c, e
    rst $38
    ld c, $ff
    ccf
    rst $38
    and a
    rst $38
    daa
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    or a
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp c
    rst $38
    ld a, c
    rst $38
    ld [hl], c
    rst $38
    db $ed
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    rst $38
    nop
    rst $38
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
    adc $31
    jp hl


    ld d, $ec
    inc de
    and $19
    ldh [$1f], a
    jp hl


    ld d, $e0
    rra
    ret nz

    ccf
    ld b, b
    cp a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$09ff], sp
    rst $38
    dec bc
    rst $38
    ld e, c
    rst $38
    db $db
    rst $38
    rra
    rst $38
    inc de
    rst $38
    ccf
    rst $38
    sub a
    rst $38
    ccf
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
    xor $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38

jr_0a3_6c52:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $30
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
    rst $18
    jr nz, jr_0a3_6c52

    jr nz, @+$01

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
    ld a, d
    add l
    ld l, [hl]
    sub c
    ld l, $d1
    rst $38
    nop
    dec sp
    call nz, $cc33
    nop
    rst $38
    nop
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
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld a, [hl-]
    rst $38
    ld c, $ff
    rra
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    dec sp
    rst $38
    inc sp
    rst $38

jr_0a3_6cb8:
    dec sp
    rst $38
    dec sp
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    cp e
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
    rst $38
    cp a
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
    di
    inc c
    rst $10
    jr z, jr_0a3_6cb8

    inc l
    di
    inc c
    ei
    inc b
    ei
    inc b
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
    rst $18
    jr nz, @+$01

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
    xor $11
    ld [c], a
    dec e
    db $e4
    dec de
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
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
    jr nz, @-$1f

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
    ld c, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    sub a
    rst $38
    ld e, d
    rst $38
    ld a, [$bdff]
    rst $38
    cp [hl]
    rst $38
    cp e
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    cpl
    rst $18
    daa
    rst $30
    rrca
    di
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    or $09
    or $09
    di
    inc c
    ld [hl], a
    adc b
    or $09
    ld [hl-], a
    call Call_0a3_5ba4
    inc d
    db $eb
    ld d, b
    xor a
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
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    adc h
    rst $38
    xor c
    rst $38
    and c
    rst $38
    pop bc
    rst $38
    db $ec
    rst $38
    xor h
    rst $38
    sbc d
    rst $38
    call nc, $deff
    rst $38
    db $dd
    rst $38
    cp h
    rst $38
    db $dd
    rst $38
    rst $18
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
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
    ld sp, hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    ret nz

    rst $38
    ret nz

    pop af
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$c0]
    ret c

    ldh [$ef], a
    ldh a, [rSVBK]
    rst $38
    ld a, c
    rst $38
    add hl, sp
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $00ff
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $fd
    ld [bc], a
    db $fc
    inc bc
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

jr_0a3_6e7f:
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp b
    ld b, a
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, h
    add e
    ld a, b

jr_0a3_6e93:
    add a
    ld [hl], h
    adc e
    ld a, b
    add a
    xor b

jr_0a3_6e99:
    ld d, a
    ld h, b
    sbc a
    nop
    rst $38
    jr nz, jr_0a3_6e7f

    db $10
    rst $28
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
    nop
    rst $38
    jr nc, jr_0a3_6e99

    jr c, jr_0a3_6e93

    ld a, h
    add e
    ld a, [c]
    ld bc, $f308
    ld a, [de]
    di
    ld e, $f3
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
    ld sp, hl
    ld b, $f3
    inc c
    db $eb
    inc d
    db $eb
    inc d
    swap h
    rla
    add sp, $37
    ret z

    daa
    ret c

    rrca
    ldh a, [rIF]
    ldh a, [rVBK]
    ldh a, [$4e]
    ldh a, [$7f]
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$e3], a
    call c, $fe81
    add e
    db $fc
    sbc a
    ldh [$bf], a
    ret nz

    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    ld a, a
    rlca
    ld a, a
    inc bc
    ld a, e
    inc bc
    ld a, e
    inc bc
    ld a, e
    inc bc
    ld a, e
    inc bc
    ei
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf

jr_0a3_6f49:
    rst $38
    ccf
    rst $38
    ld a, b
    add a
    nop
    add b
    inc h
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38

jr_0a3_6f56:
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
    ccf
    rst $38
    rra
    rst $38
    ccf
    ldh a, [$38]
    ldh a, [$38]
    rst $38
    inc sp
    db $fc
    inc sp
    db $fc
    inc sp
    db $fc
    inc de
    db $fc
    ld sp, $13fe
    db $fc
    inc sp
    db $fc
    inc sp
    db $fc
    inc sp
    db $fc
    inc sp
    db $fc
    inc sp
    db $fc
    ld [hl-], a
    db $fd
    ld sp, $30fe
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    jr nc, @+$01

    jr c, @+$01

    jr nc, @+$01

    jr c, @+$01

    jr c, @-$0f

    jr nz, @-$0f

    inc l
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    jr nc, @+$01

    jr c, jr_0a3_6f49

    ld [$6097], sp
    sbc a
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
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    jr nc, @-$2f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $00
    jr c, jr_0a3_6f56

    ld a, h
    ld c, $f1
    sbc [hl]
    ld h, c
    inc bc
    db $fc
    ld bc, $8ffe
    ld [hl], b
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
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
    rst $38
    rst $38
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
    nop
    inc a
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
    sub b
    ld l, a
    nop
    nop
    ld bc, $fffe
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$9f], a
    ld h, b
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    rrca
    ldh a, [$0b]
    db $f4
    inc bc
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
    rst $38
    nop
    rst $38
    ldh [$1f], a
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
    add hl, bc
    or $0f
    ldh a, [$5f]
    and b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
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
    ccf
    nop
    db $fc
    nop
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
    rla
    rst $38
    nop
    nop
    cp $00
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
    cp $00
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    pop af
    nop
    di
    nop
    di
    nop
    db $eb
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    inc h
    db $db
    nop
    rst $38
    add hl, bc
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    adc a
    ld [hl], b
    ld a, a
    add b
    rst $38
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
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    nop
    ccf
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
    db $e3
    pop bc
    db $e3
    pop bc
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    ret nc

    cpl
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
    rla
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rst $18
    nop
    rst $08
    nop
    rst $20
    nop
    rst $20
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
    rst $28
    db $10
    ei
    inc b
    rst $28
    db $10
    call nz, Call_000_003b
    rst $38
    and b
    ld e, a
    nop
    rst $38
    ld e, [hl]
    and c
    ld [bc], a
    db $fd
    nop
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$2f
    ret nc

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
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    pop bc
    cp $e1
    cp $d0
    rst $38
    jp hl


    cp $fa
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$1f], a
    ret nz

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
    ldh [$1f], a
    nop
    nop
    nop
    rst $38
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
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f8
    rlca
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
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    xor d
    ld d, l
    nop
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

    xor a
    ld d, b
    nop
    rst $38
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
    db $fc
    nop
    ld hl, sp+$00
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    or $00
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $03fe
    db $fc
    nop
    rst $38
    ld [bc], a
    db $fd
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    nop
    rst $38
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$01
    cp $bf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    nop
    nop
    ldh [rP1], a
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
    ld a, a
    rst $38
    ld e, $0f
    inc c
    rst $38
    inc c
    rst $38
    xor h
    ld e, a
    db $ec
    rra
    add sp, $1f
    ld l, h
    sbc a
    adc h
    ld a, a
    call z, $ce3f
    ccf
    adc $3f
    rst $28
    rra
    and $1f
    or $0f
    ld [hl], a
    adc a
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $20
    rra
    rst $20
    rra
    rst $28
    rra
    rst $20
    rra
    rst $20
    rra
    rst $28
    rra
    rst $08
    ccf
    ld e, a
    cp a
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    rst $30
    rrca
    rst $00
    ccf
    rrca
    rst $38
    rst $28
    rra
    rst $28
    rra
    rst $38
    rlca
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or b
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
    ld b, b
    nop
    xor [hl]
    nop
    cp $00
    cp $00
    rst $38
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
    db $fc
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    db $f4
    nop
    ld a, [$fb00]
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
    nop
    db $fd
    nop
    db $fc
    nop
    ldh [rP1], a
    ld b, b
    nop
    and b
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    or b
    ld c, a
    ld [hl], b
    adc a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    db $fc
    inc bc
    nop
    ld bc, $0001
    ld [bc], a
    ld bc, $07db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    rst $38
    cp a
    add $bf
    di
    rst $00
    add $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    ld c, $ff
    inc c
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $28
    rst $38
    and $ff
    ld a, [$f6ff]
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [$fdff]
    rst $38
    sbc h
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, [$bcff]
    ld a, a
    db $ec
    rra
    adc c
    rlca
    ld [bc], a
    ld bc, $0004
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
    nop
    rrca
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
    nop
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
    ret nc

    nop
    xor a
    nop
    rst $10
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    and e
    nop
    cp b
    nop
    ld c, b
    nop
    sub b
    nop
    nop
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
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    rlca
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
    rrca
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
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
    cp $f8
    db $fc
    ldh a, [$f9]
    rst $30
    db $e3
    rst $30
    rst $08
    ld e, $ff
    inc a
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
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
    inc bc
    db $fc
    ld bc, $01fe
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
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    cp b
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add a
    rst $38
    pop af
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $28
    rra
    ei
    rlca
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    ld a, a
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
    nop
    nop
    nop
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
    jr z, jr_0a3_74fe

jr_0a3_74fe:
    and b
    nop
    stop
    nop
    nop
    nop
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
    nop
    nop
    rst $38
    rst $38
    ld a, [$f5fd]
    ld hl, sp-$1e
    pop af
    push bc
    db $e3
    ld [hl], a
    adc a
    sbc $3f
    ld hl, sp+$7f
    rst $30
    ld hl, sp-$21
    ldh [$bf], a
    ret nz

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
    rst $38
    nop
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld d, l
    xor d
    dec c
    ld a, [c]
    add h
    ld a, e
    ld b, b
    cp a
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
    add b
    rst $38
    nop
    rst $38
    jr z, @+$01

    jr @+$01

    ld a, h
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    rst $30
    rrca
    db $fd
    inc bc
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld bc, $5b00
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0000
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
    ei
    db $fc
    or $f9
    push de
    db $e3
    or a
    rst $08
    xor a
    rra
    cp a
    ld a, a
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

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
    dec l
    jp nc, $f807

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
    rst $38
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
    ld c, c
    rst $38
    ld a, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    jp $f0ff


    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    ccf
    rla
    rrca
    dec b
    inc bc
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
    ld [$e900], sp
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    rst $38
    nop
    rst $30
    nop
    ld [hl], a
    nop
    ld sp, $0000
    nop
    nop
    nop
    rst $38

jr_0a3_7661:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a3_7666:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fc
    ld hl, sp-$08
    di
    pop hl
    rst $00
    jp $8f07


    ccf
    rra
    ld a, $7f
    db $fd
    cp $fb
    db $fc
    rst $20
    ld hl, sp-$21
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
    rst $38
    nop
    rst $00
    jr c, jr_0a3_7666

    jr c, jr_0a3_7661

    ccf
    add b
    ld a, a
    add b
    ld a, a
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
    ld b, b
    cp a
    ldh [$1f], a
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
    add c
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
    ret nz

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    nop
    rst $38
    sub c
    rst $28
    and l
    ei
    push bc
    cp $c1
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld c, b
    ccf
    rla
    rrca
    dec c
    inc bc
    ld [hl], c
    nop
    jr nz, jr_0a3_76f2

jr_0a3_76f2:
    ld [$0200], sp
    nop
    ld bc, $0f00
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    cp a
    nop
    rst $18
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    db $fd
    cp $fc
    ld hl, sp-$07
    ldh a, [$c1]
    db $e3
    rst $08
    add a
    rrca
    rra
    ld a, a
    ccf
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    and b
    rst $18
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $f9
    ld b, $fb
    inc b
    ld sp, hl
    ld b, $fe
    ld bc, $01fe
    cp $01
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
    ld c, a
    or b
    ld e, a
    and b
    ld e, a
    and b
    ld l, a
    sub b
    ld c, a
    or b
    dec de
    db $e4
    inc de
    db $ec
    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    db $10
    rst $38
    ld de, $39ff
    rst $38
    jr @+$01

    add b
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld bc, $02ff
    rst $38
    sub b
    ld a, a
    inc h
    rst $18
    ld c, e
    rst $30
    ld a, [c]
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    ccf
    ccf
    rrca
    dec c
    inc bc
    ld a, [hl-]
    ld bc, $009f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rra
    nop
    dec bc
    nop
    ld bc, $0500

jr_0a3_77c9:
    nop
    dec d

jr_0a3_77cb:
    nop
    dec b

jr_0a3_77cd:
    nop
    ld bc, $1f00
    ccf
    cp a
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
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
    add b
    ld a, a
    jr nz, @-$1f

    jr nz, jr_0a3_77c9

    jr nz, jr_0a3_77cb

    jr nz, jr_0a3_77cd

    add sp, $17
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $f4
    dec bc
    dec [hl]
    jp z, $04fb

    ei
    inc b
    rst $38
    nop
    push af
    ld a, [bc]
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
    cp a
    ld b, b
    rst $38
    nop
    rst $38

jr_0a3_7811:
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
    ld l, a
    sub b
    db $fd
    ld [bc], a
    rra
    ldh [$8e], a
    ld [hl], c
    sub $29
    ld b, $f9
    dec b
    ld a, [$ef10]
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0a3_7811

    nop
    rst $38
    nop
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
    nop
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, l
    rst $38
    ld a, [bc]
    rst $38
    ld c, e
    rst $38
    ld b, e
    rst $38
    rst $00
    rst $38
    ld e, e
    rst $38
    xor [hl]
    rst $38
    ld c, l
    rst $38
    ld h, c
    rst $38
    add hl, bc
    rst $38
    add c
    rst $38
    ldh a, [rIE]
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
    cp a
    ld a, a
    rst $28
    rra
    ei
    rlca
    cp $01
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$2f]
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    db $fc
    inc bc
    ld a, h
    add e
    and d
    ld e, l
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
    ret nz

    rst $38
    ld h, b
    rst $38
    cp b
    rst $38
    ld l, h
    rst $38
    ld [hl], h
    rst $38
    ld a, [hl]
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
    ccf
    rst $38
    add a
    rst $38
    pop af
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
    cp a
    ld a, a
    rst $38
    rra
    rst $30
    rrca
    db $fd
    inc bc
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    inc b
    dec c
    ld c, $0f
    db $10
    ld de, $0a0a
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    inc b
    ld d, $17
    jr @+$1b

    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    dec de
    inc e
    inc b
    inc b
    dec e
    ld e, $1f
    jr nz, jr_0a3_7967

    ld a, [bc]
    ld a, [bc]
    ld hl, $0022
    inc hl
    inc h
    dec h
    ld h, $04

jr_0a3_7967:
    daa
    jr z, jr_0a3_7993

    ld a, [hl+]
    dec hl
    ld a, [bc]
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a3_7973

jr_0a3_7973:
    ld sp, $0432
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a3_79b6

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
    ld c, b
    ld c, c
    ld c, d
    ld c, d
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0a3_7993:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld a, [bc]
    ld d, a
    ld a, [bc]
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_0a3_79b6:
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld l, h
    ld l, l
    ld a, [bc]
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld c, d
    ld c, d
    ld c, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    inc hl
    ld a, [hl]
    ld a, a
    add b
    ld c, d
    add c
    ld a, [bc]
    ld a, [bc]
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    nop
    adc e
    adc h
    ld c, d
    ld a, [bc]
    ld a, [bc]
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
    nop
    sub a
    sbc b
    sbc c
    ld a, [bc]
    ld a, [bc]
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
    nop
    nop
    and h
    and l
    ld a, [bc]
    and [hl]
    and a
    nop
    nop
    xor b
    xor c
    inc b
    inc b
    inc b
    xor d
    xor e
    xor h
    nop
    xor l
    xor [hl]
    xor a
    or b
    nop
    nop
    nop
    or c
    or d
    inc b
    inc b
    inc b
    or e
    or h
    or l
    nop
    nop
    nop
    or [hl]
    nop
    nop
    nop
    nop
    or a
    cp b
    cp c
    inc b
    inc b
    inc b
    cp d
    cp e
    inc hl
    nop
    nop
    cp h
    cp l
    cp [hl]
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ret


    jp z, RST_00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, a
    sbc b
    ld l, a
    sub b
    ld c, e
    or h
    add a
    ld a, b
    sub a
    ld l, b
    adc l
    ld [hl], d
    adc c
    db $76
    add hl, bc
    or $09
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    and b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    sub c
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [$fbff]
    rst $38
    ei
    rst $38
    ld a, [$fbff]
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38

jr_0a3_7c37:
    rst $38
    rst $38

jr_0a3_7c39:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $30
    ld [$0cf3], sp
    ld a, e
    add h
    ld a, [hl-]
    push bc
    jr nc, jr_0a3_7c37

    jr nc, jr_0a3_7c39

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    dec bc
    rst $38
    adc a
    rst $38
    xor l
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    jp z, Jump_000_02ff

    rst $38
    add l
    rst $38
    add d
    rst $38
    ld d, [hl]
    rst $38
    ld b, e
    rst $38
    and a
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    db $eb
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
    cp $01
    cp $01
    cp $01
    ld a, [$f805]
    rlca
    ld hl, sp+$07
    ldh a, [rIF]
    ld [hl], b
    adc a
    ldh [$1f], a
    and b
    ld e, a
    and b
    ld e, a
    ldh [$1f], a
    add sp, $17
    ldh [$1f], a
    add b
    ld a, a
    and b
    ld e, a
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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $44ff
    rst $38
    add hl, bc
    rst $38
    ld c, a
    rst $38
    cp $ff
    and $ff
    rst $38
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    add h
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    di
    inc c
    swap h
    ld b, [hl]
    cp c
    ld b, d
    cp l
    ld b, d
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
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sub b
    rst $38
    nop
    rst $38
    add hl, hl
    rst $38
    ld a, [hl-]
    rst $38
    add hl, de
    rst $38
    or l
    rst $38
    db $db
    rst $38
    ei
    rst $38
    xor [hl]
    rst $38
    adc [hl]
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    xor h
    rst $38
    sbc a
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    sbc $ff
    rst $30
    rst $38
    cp $ff
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $f0
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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

jr_0a3_7de7:
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
    cp [hl]
    ld b, c
    xor $11
    cp $01
    cp $01
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld h, b
    sbc a
    jr nz, jr_0a3_7de7

    jr nz, @-$1f

    nop
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
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    add d
    rst $38
    add b
    rst $38
    adc d
    rst $38
    ld a, [bc]
    rst $38
    ld [hl-], a
    rst $38
    ld d, [hl]
    rst $38
    ld d, d
    rst $38
    ld l, h
    rst $38
    ldh a, [rIE]
    add sp, -$01
    ld hl, sp-$01
    ld l, [hl]
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp a
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
    cp $ff
    rst $38
    cp $fd
    cp $ff
    db $fc
    ld a, [$fffd]
    ld sp, hl
    push af
    ei
    db $fd
    di
    rst $28
    di
    ei
    rst $20
    rst $18
    rst $20
    rst $30
    rst $08
    rst $38
    rst $08
    xor a
    rst $18
    rst $38
    sbc a
    ld e, a
    cp a
    cp $3f
    cp a
    ld a, [hl]
    db $fd
    ld a, [hl]
    dec c
    rst $38
    dec a
    rst $08
    ld [hl], h
    adc a
    ld [hl], $cf
    ld [hl], $cf
    or d
    ld c, a
    ei
    rlca
    db $fd
    inc bc
    cp l
    ld b, e
    db $fd
    inc bc
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
    ld a, [hl]
    add c
    inc a
    jp $c33c


    xor h
    ld d, e
    inc c
    di
    inc b
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$0cff], sp
    rst $38
    ld e, $ff
    ld [$18ff], sp
    rst $38
    inc l
    rst $38
    inc e
    rst $38
    jr @+$01

    jr @+$01

    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    jr @+$01

    jr @+$01

    ld [$18ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    ld [$18ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    inc d
    rst $38
    ld b, b
    rst $38
    ld bc, $00ff
    rst $38
    add c
    rst $38
    ld b, c
    rst $38
    ld bc, $40ff
    rst $38
    ld b, b
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    jp $c0fe


    cp $e3
    db $fc
    ret nz

    db $fd
    add $f9
    ld [c], a
    ld sp, hl
    db $ec
    di
    db $e4
    di
    add sp, -$09
    ret nz

    rst $28
    ret z

    rst $28
    ei
    adc $90
    sbc $c2
    cp h
    ld d, b
    cp h
    ldh a, [$3c]
    or h
    ld a, b
    ldh a, [$78]
    ld [hl], b
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$e0]
    ldh a, [$f0]
    ldh [$c0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    add b
    ret nz

    ret nz

    add b
    add b
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    ld c, a
    cp a
    adc a
    ld a, a
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
    ld b, e
    cp a
    ld h, e
    sbc a
    ld h, e
    sbc a
    ld h, a
    sbc a
    ld h, e
    sbc a
    inc hl
    rst $18
    daa
    rst $18
    ld h, a
    sbc a
    ld b, e
    cp a
    inc hl
    rst $18
    ld a, [hl+]
    rst $18
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [$380c], sp
    ld a, $08
    ld c, $3a
    inc a
    dec bc
    inc c
    dec de
    rra
    ld [$290c], sp
    inc l
    dec de
    dec e
    add hl, de
    rra
    ld [$380e], sp
    jr c, @+$3f

    dec a
    ld sp, $3931
    rst $38
    ld de, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    dec sp
    rst $38
