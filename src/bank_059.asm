SECTION "ROM Bank $059", ROMX[$4000], BANK[$59]

    ld bc, $d87e
    cpl
    db $18, $e4
    sub l
    jr nz, @+$3a

    ld b, b
    db $ec
    db $10
    add sp, $00
    jr jr_059_4010

jr_059_4010:
    ld a, e

jr_059_4011:
    add h
    ldh a, [rP1]
    ld l, h
    sub b
    ret nz

    jr jr_059_4011

    nop
    ld e, a
    nop
    adc b
    rlca
    ld e, b
    rlca
    rlca

Jump_059_4021:
    ld a, a
    ld a, [de]
    dec h
    ld a, [hl]
    nop
    adc [hl]
    ld [hl], b
    ld [bc], a
    db $fd
    adc b
    ld [hl], a
    db $10
    ld l, a
    cp [hl]
    ld bc, $0051
    or $09
    cp a
    ld b, b
    rst $18
    nop
    ld e, $00
    ld hl, sp+$00
    ld h, l
    nop
    ld h, b
    nop
    ld [$c11c], a
    ld a, $25
    ret c

    ld [hl], h
    add b
    ld e, $e0
    ld e, b
    and a
    ldh [$1f], a
    ldh [$1f], a
    rst $30
    nop
    or $01
    or a
    nop
    ld a, [$fc01]
    inc bc
    jp nz, Jump_059_4021

    and b
    add sp, $00
    adc l
    ld [hl], e
    ld d, c
    xor a
    ld b, b
    cp a
    inc bc
    db $fc
    dec h
    ret nz

    sbc $20
    ld [bc], a
    nop

jr_059_406e:
    nop
    nop
    add b
    ld a, a
    add b
    rst $38
    push af
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    nop
    add sp, -$80
    db $f4
    nop
    ldh a, [rP1]
    call nz, $e800
    nop
    nop
    nop
    nop
    nop
    rra
    ldh [$fc], a
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    nop
    jr z, jr_059_409b

jr_059_409b:
    ld b, b
    inc b
    ld [bc], a
    nop
    call nz, $e619
    adc d
    ld [hl], a
    rst $30
    ld [$10ef], sp
    cp a
    ld b, b
    ld [hl], e
    adc h
    rst $38
    jr c, jr_059_406e

    ld h, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    pop de
    ld l, $c2
    dec a
    jr nz, jr_059_40dd

    ld h, $1f
    and e
    inc e
    ld e, $00
    call z, $e200
    nop
    dec l
    nop
    pop bc
    nop
    ld h, b
    nop
    ld a, d
    nop
    sub a
    nop
    pop af
    nop
    ld a, a
    ret nz

    call c, $8f03
    nop
    rlca
    nop
    rlca

jr_059_40dd:
    nop
    add a
    nop
    ld b, [hl]
    nop
    ld [bc], a
    nop
    ld c, $00
    ld c, c
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    add b
    nop

Call_059_40f0:
    inc h
    rst $18
    ld a, [de]
    db $e4
    sub b
    ld l, h
    add e
    ld a, h
    ld [bc], a
    db $fc
    ld bc, $f0fc
    ld bc, $00d8
    sub h
    ld [$18e7], sp
    add b
    ld a, [hl]
    rlca
    ld hl, sp+$2a
    push de
    nop
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld e, b
    ld a, $3c
    rst $38
    ld [hl+], a
    db $fd
    adc b
    ld [hl], a
    sub a
    ld l, a
    sub d
    ld l, a
    ld l, b
    add a
    add [hl]
    ld a, a
    ld bc, $00fe
    rst $38
    ret z

    ccf
    ld c, l
    cp [hl]
    adc h
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    db $10
    rst $28
    ld e, d
    and a
    ld [de], a
    rst $28
    nop
    rst $38
    ret z

    ccf
    cp a
    ld a, a
    ccf
    ld a, a
    cp a
    ld a, a
    rlca
    rst $38
    cpl
    rst $38
    sub d
    ld a, a
    call c, Call_000_1a3f
    rst $38
    ld c, [hl]
    rst $38
    ld hl, sp+$07
    di
    inc c
    ldh a, [rIF]
    ret nz

    ccf
    ld b, b
    cp a
    ret nc

    cpl
    sub h
    ld l, e
    db $10
    rst $28
    ldh [$1f], a
    jr nz, @+$21

    ld l, $1f
    nop
    ld a, $1a
    nop
    inc [hl]
    inc bc
    or [hl]
    ld bc, $00d2
    ld a, l
    add d
    add hl, hl
    sub $00
    rst $38
    sub b
    nop
    dec bc
    db $f4
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld a, [$f1ff]
    rst $38
    and $ff
    ld hl, sp-$01
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    add c
    cp $07
    ld hl, sp+$3a
    push bc
    add hl, sp
    rst $00
    add h
    ld a, a
    ld d, $ff
    ld b, c
    rst $38
    ld [$f715], a
    jr c, jr_059_41b9

    ldh a, [rLCDC]
    ld h, b
    ld b, b
    jp nz, $c100

    nop
    inc de
    nop
    dec de
    jr nc, jr_059_4216

    ldh [rSVBK], a
    ld b, b
    ld h, d
    ld [hl], b
    jr c, jr_059_41c9

    ld e, $07
    rrca
    db $fd
    inc bc
    cp $01
    cp $01
    cp $03
    ld [hl], a

jr_059_41b9:
    adc b
    rst $38
    db $10
    rst $20
    cp b
    sbc e
    inc c
    adc l
    ld b, $75
    inc bc
    xor $01
    ld e, a
    nop
    ld a, a

jr_059_41c9:
    nop
    rrca
    nop
    ld a, $00
    ld a, [hl]
    nop
    ld e, [hl]
    nop
    ccf
    nop
    db $fc
    ld bc, $916a
    or $19
    push de
    dec bc
    ret z

    rlca
    inc bc
    dec b
    ld b, h
    inc bc
    ld bc, $1102
    ld [bc], a
    nop
    ld bc, $0003
    inc bc
    nop
    dec b
    nop
    rrca
    nop
    ld d, [hl]
    add c
    ld h, c
    ld e, $a4
    ld b, e
    inc hl
    inc d
    inc e
    inc hl
    add c
    ld a, a
    ld bc, $08ff
    rst $30
    inc bc
    ld l, a
    ld d, e
    cpl
    ld c, e
    ccf
    add hl, de
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rlca
    rst $38
    daa
    rst $18
    rlca
    rst $38
    ld b, a
    rst $38
    inc bc
    rst $38

jr_059_4216:
    ld bc, $9dff
    rst $38
    sub e
    rst $38
    ld e, a
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $38
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
    rst $38
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
    rrca
    rst $38
    ld a, a
    rst $38
    dec bc
    cp $1c
    rst $38
    cp c
    cp $f8
    cp $f4
    ld a, b
    ld [$8103], sp
    ld c, $11
    ld b, $01
    ld e, $25
    ld e, $40
    ccf
    ret nz

    ccf
    add d
    ld a, l
    adc b
    ld a, a
    jr @+$01

    sbc h
    ld a, e
    sub h
    ld a, e
    dec d
    ei
    ld bc, $05ff
    ei
    dec e
    di
    ld [hl], c
    ld bc, $1173
    ccf
    rra
    rst $38
    or a
    rst $38
    ld [hl], a
    ld a, e
    inc hl
    ld a, [$1000]
    nop
    ld [$01f1], sp
    ld [c], a
    nop
    adc d
    nop
    dec a
    jr nz, jr_059_42c3

    jr nz, @+$01

    nop
    db $ed
    add b
    db $f4
    nop
    rst $38
    ld bc, $59ff
    and a
    add c
    ld a, a
    nop
    db $fd
    ld b, b
    ld [hl], l
    ld [$009c], sp
    add h
    rst $38
    nop
    rst $38
    nop
    and b
    ld e, a
    rst $38
    rlca
    cp $07

jr_059_42aa:
    rst $38
    ld [bc], a
    ei
    inc b
    ld h, a
    ld hl, sp+$57
    ld hl, sp-$67
    cp $ff
    rrca
    ld a, l
    add e
    db $fc
    inc bc
    ld l, e
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    db $fd

jr_059_42c3:
    ld [bc], a
    sbc e
    db $e4
    add sp, $04
    ld l, e
    inc b
    ld a, l
    ld b, $6c
    inc de
    ld l, c
    db $10
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    sub b
    nop
    adc h
    nop
    ld [$0880], sp
    add b
    add b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_059_42aa

    ld a, a
    jr nz, jr_059_42f5

    scf
    daa
    inc bc
    add b
    ld h, b
    nop
    ldh [rP1], a

jr_059_42f5:
    ldh [rP1], a
    ldh [$b0], a
    ld [hl], b
    ld a, d
    db $f4
    jr nz, @-$06

    jr @-$0a

    ldh [$e0], a
    ldh [$e8], a
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$ec], a
    ldh [$f8], a
    ldh [$fc], a
    ldh a, [$ec]
    ldh [$f0], a
    ldh a, [$f4]
    ld hl, sp-$02
    ld a, [$f8fa]
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
    db $fd
    rst $38
    ldh a, [rIE]
    ldh [$f4], a
    ld bc, $011c
    ld c, h
    ld [$417d], sp
    add hl, sp
    add hl, bc
    ld d, l
    ld [$54d5], sp
    call $dd01
    ret nz

    dec e
    ld bc, $41dd
    sbc l
    dec c
    db $dd
    db $dd
    ld e, l
    dec e
    db $dd
    dec e
    db $dd
    ld a, l
    db $dd
    dec [hl]
    db $dd
    ld a, c
    db $dd
    ld e, l
    db $fd
    db $dd
    rst $38
    db $dd
    rst $38

jr_059_435a:
    db $ed
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    cp $ff
    ld sp, hl
    cp $e6
    ld sp, hl
    sbc b
    rst $20
    ld [hl], b
    adc a
    add e
    ld a, h
    nop
    cp a
    ld [$0087], sp
    ldh a, [rP1]
    ld l, l
    nop
    cp a
    nop
    cp l
    nop
    ld a, e
    nop
    and b
    add b
    ld a, a
    nop
    rst $38
    jr nz, @-$1f

    or b
    rst $38
    nop
    cp a
    ld [bc], a
    ld b, c
    ld bc, $0060
    ld b, $ff
    ld [bc], a
    cp $01
    rst $38
    nop
    reti


    ld h, $47
    cp [hl]
    ldh a, [rIF]
    ld a, a
    nop
    cp $01
    db $eb
    ld b, $63
    sbc [hl]
    rlca
    ld hl, sp-$12
    db $10
    rst $18
    jr nz, jr_059_435a

    ld [hl], b
    ld [hl], a
    ld hl, sp+$7d
    add d
    rst $38
    ld bc, $20dd
    ld h, h
    nop
    ld d, b
    nop
    ld e, b
    nop
    ld a, l
    nop
    dec a
    nop
    sbc a
    nop
    ld hl, sp+$00
    inc hl
    jr jr_059_43e3

    dec c
    ld b, $03
    ld bc, $0000
    nop
    ld b, b
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
    ld b, b
    nop
    ret nz

    nop
    call z, $7f00
    add b
    add l
    ld a, d
    and h

jr_059_43e3:
    ld e, e
    ld [$4ef7], sp
    or e
    adc b
    rst $30
    ld [bc], a
    db $fd
    ld [$28f7], sp
    rst $10
    ld b, d
    nop
    ld a, [de]
    nop
    adc b
    nop
    ld [de], a
    nop
    ld [de], a
    nop
    add b
    nop
    add b
    nop
    inc h
    nop
    sub c
    ld a, [bc]
    adc b
    ld e, c
    ld [$13fb], sp
    jp $bf1f


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    jp hl


    push hl
    push hl
    nop
    inc c
    ld hl, $3000
    jr nz, jr_059_447f

    jr nz, jr_059_446b

    sbc l
    ld e, [hl]
    sbc l
    sbc l
    sbc $98
    sbc $d5
    sbc $9e
    rst $18
    sub b
    db $db
    add h
    ret c

    rlca
    call c, $df81
    add l
    db $db
    add [hl]
    reti


    ret


    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    sbc a
    rst $18
    ld h, a
    rst $18
    rst $30
    rst $18
    rst $00
    rst $38
    ld e, a
    rst $38
    call c, $d8ff
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    jr nz, @+$61

    nop
    ld a, a
    ld [bc], a
    pop af
    nop
    ld hl, sp+$10
    ld l, b
    nop
    xor $86
    ld [hl], b
    nop
    or d
    nop
    rrca
    nop
    inc h
    nop
    db $e4
    nop

jr_059_446b:
    jp $e300


    nop
    ld c, $38
    rst $00
    cp d
    rst $00
    ld [de], a
    rst $28
    nop
    rst $38
    ld [de], a
    db $ed
    rst $38
    nop
    rst $38
    nop
    rlca

jr_059_447f:
    nop
    ccf
    ret nz

    ld e, a
    and b
    jp hl


    ld d, $fd
    inc bc
    rst $38
    nop
    adc a
    ldh a, [$3c]
    rst $18
    ld c, a
    ldh a, [$1f]
    ldh [$7f], a
    ldh [$ab], a
    ld a, h
    db $fd
    ld b, $ff
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    dec a
    ret nz

    or b
    ret nz

    sbc b
    ld h, b
    ld c, l
    jr nc, jr_059_4500

    ld [$0649], sp
    ld h, h
    inc bc
    sub $03
    inc b
    nop
    ld [hl], a
    ld [$807e], sp
    rst $18
    nop
    ei
    inc b
    dec hl
    inc b
    inc bc
    inc b
    inc bc
    nop
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $033c
    jr jr_059_44d3

    xor h
    rlca
    ld [hl], a
    adc h
    ld h, c
    ld [de], a
    ld h, h

jr_059_44d3:
    ld de, $1106
    inc d
    dec bc
    adc [hl]
    ld bc, $0528
    nop
    ld bc, $0180
    adc e
    ld a, [hl]
    inc b
    rst $38
    nop
    rst $38
    ld hl, $09df
    rst $30
    jr nz, @-$1f

    ld bc, $40fe
    cp a
    ld [hl+], a
    adc l
    ld [hl+], a
    ld h, c
    jr nc, jr_059_4566

    inc hl
    and e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_059_4500:
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ld a, l
    ld a, a
    ld c, e
    db $fd
    nop
    ld bc, $0200
    nop
    nop
    nop
    ld bc, $f788
    db $10
    add sp, $10
    jp hl


    add c
    ld a, b
    ld [de], a
    jp hl


    ld a, [de]
    adc c
    inc h
    db $db
    pop bc
    inc e
    ld d, l
    xor b
    inc de
    db $fc
    dec bc
    ldh a, [$ad]
    ldh a, [$e3]
    db $fc
    call nz, $03fb
    db $fc
    add l
    ei
    ret nz

jr_059_4531:
    ld b, b
    or b
    jr nz, jr_059_4531

    nop
    ld a, [c]
    ld [bc], a
    cp $00
    rst $38
    add b
    db $fd
    add l
    ld sp, hl
    jp hl


    db $fd
    rst $38
    ld c, l
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    xor $01
    adc h
    nop
    pop af
    nop
    nop
    inc bc
    ld bc, $0103
    rrca
    inc bc
    rrca
    inc bc
    rra
    rrca
    ld e, [hl]
    ld e, $7e
    inc e
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]

jr_059_4566:
    add b
    rst $38
    ld hl, sp+$07
    ld a, [c]
    dec c
    ldh [$1f], a
    ret nc

    ccf
    rrca
    jr nc, jr_059_4573

jr_059_4573:
    nop
    nop
    nop
    nop
    ret nz

    add b
    cp h
    nop
    ld b, b
    nop
    inc e
    inc b
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $c13e
    ldh a, [$3f]
    db $e4
    ccf
    inc b
    rst $38
    sbc b
    ld a, a
    ld c, a
    ccf
    sbc l
    ld [bc], a
    inc hl
    nop
    add a
    nop
    add [hl]
    ld bc, $00ff
    ld b, b
    cp a
    ld [hl], e
    adc a
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
    rst $38
    nop
    rst $38
    nop
    ld b, d
    nop
    add b
    nop
    ld b, b
    add b
    add c
    ret nz

    ld h, l
    ret nz

    cp e
    ld b, b
    ld sp, hl
    nop
    rst $08
    jr nc, jr_059_45e3

    ld e, l
    sub $39
    and $19
    jp z, $c235

    dec a
    sub $2d
    sbc e
    inc c
    sub d
    ld c, l
    sub e
    jr nz, jr_059_45db

    ldh a, [$7c]
    rst $38
    cp l
    rst $38
    and c
    rst $38
    di

jr_059_45db:
    rst $38
    ld [de], a
    rst $38
    ld [$8244], sp
    and d
    ld c, d

jr_059_45e3:
    ld b, [hl]
    xor h
    xor [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    push af
    push af
    sub a
    ld d, a
    ld de, $5267
    adc [hl]
    ld b, [hl]
    ld a, [de]
    ld b, h
    ld hl, $0188
    ld bc, $259d
    pop bc
    inc b
    add c
    inc l
    pop bc
    ld b, h
    and c
    ld [hl+], a
    ld bc, $01bc
    ld hl, sp+$03
    inc b
    di
    ld c, b
    rst $30
    add h
    ld a, e
    inc l
    ei
    ret


    ccf
    rra
    ei
    ld h, e
    nop
    inc hl
    nop
    ld [bc], a
    ld [bc], a
    ld a, [de]
    ld [bc], a
    ld a, [$fa02]
    ld [bc], a
    ld [c], a
    ld b, d
    ld a, [c]
    ld [bc], a
    di
    ld [c], a
    rst $20
    add e
    add a
    rlca
    rrca
    rlca
    rrca
    rrca
    rra
    rrca
    ld a, a
    rra
    rst $38
    cp d
    rst $38
    ld [hl], h
    rst $38
    ldh [$fc], a
    ldh [$e7], a
    add b
    add e
    add b
    adc l
    nop
    rlca
    nop
    ld bc, $0500
    rst $38
    dec b
    rst $38
    ld d, a
    rst $38
    xor h
    rst $38
    dec b
    rst $38
    nop
    rst $38
    add b
    rst $38
    pop de
    ld l, $bf
    ld b, b
    ld a, a
    nop
    ld hl, $1000
    ccf
    ld [bc], a
    cpl
    nop
    ld bc, $0000
    nop
    nop
    db $ec
    inc bc
    ld a, [hl]
    inc bc
    db $fd
    inc bc
    rst $28
    db $10
    rst $30
    ld [$c03f], sp
    cp a
    ret nz

jr_059_467e:
    ld a, a
    ret nz

jr_059_4680:
    di
    db $fc
    add sp, $1f
    db $dd
    inc bc
    db $d3
    ld bc, $8178

jr_059_468a:
    ld e, l
    and b

jr_059_468c:
    ld [hl], a
    adc b
    cpl
    ld hl, sp-$01
    jr c, jr_059_468a

    jr jr_059_468c

    jr jr_059_467e

    jr jr_059_4680

    jr jr_059_468a

    jr @-$03

    inc c
    pop af
    ld c, $ea
    rra
    ld a, e
    rla
    ld l, c

jr_059_46a5:
    db $10
    cp $00
    ld [$5a30], sp
    jr nc, jr_059_46a5

    jr nc, @+$6a

    jr nc, jr_059_46d2

    dec bc
    ld b, c
    dec de
    pop hl
    dec bc
    ld bc, $0117
    ld bc, $0301
    and c
    inc bc
    rlc c
    ld bc, $01df
    adc c
    ld de, $01ed
    dec e
    dec b
    add hl, de
    ld bc, $031d
    rlca
    rlca
    rst $28
    rlca
    cpl

jr_059_46d2:
    adc a
    xor a
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ld e, a
    ld a, a
    rlca
    rst $18
    ld c, c
    cp a
    db $10
    add b
    ld [$0838], sp
    rst $18
    ld [bc], a
    rst $18
    dec hl
    sbc $82
    ld e, [hl]
    or [hl]
    ld e, [hl]
    db $10
    rst $38
    or h
    ld e, e
    sbc b
    ld d, a
    ld d, c
    sbc $f8
    rst $10
    ldh a, [$df]
    cp $df
    ld e, $ff
    cp $df
    rst $18
    ld e, b
    rst $18
    ld d, [hl]
    rst $18
    ld de, $11d3
    ld d, c
    ld bc, $41f1
    ld d, a
    ld de, $1f3f
    ld a, a
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
    ld a, a
    ld a, a
    ccf
    rst $38
    cpl
    rst $38
    inc hl
    ld a, a
    dec b
    rst $38
    ld de, $adff
    cp a
    add hl, hl
    rst $38
    ld bc, $257f
    rst $38
    rst $38
    or a
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    cpl
    rst $38
    rra
    rst $38
    db $10
    rst $28
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    scf
    add sp, $14
    rst $38
    inc bc
    rlca
    nop
    ld bc, $00ff
    ei
    inc b
    ld a, l
    add d
    rra
    ldh [$f3], a
    inc c
    di
    inc c
    db $fd
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    ld sp, hl
    nop
    ld a, b
    add c
    jp nc, Jump_000_1fe1

    ldh [$ef], a
    nop
    cp l
    jp Jump_000_00cf


    ld a, a
    nop
    ld a, a
    nop
    dec sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    pop bc
    cp $9d
    ld a, a
    cp $01
    dec a
    nop
    rra
    nop
    rst $08
    nop
    daa
    nop
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ret c

    rst $38
    cp a
    rst $38
    xor a
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
    ld a, a
    rst $38
    sbc a
    ld a, a
    ccf
    cp a
    ccf
    rst $18
    inc de
    ld l, a
    dec c
    scf
    inc hl
    rra
    ld h, e
    inc bc
    ret nz

    or [hl]
    ld sp, hl
    ld a, [c]
    ldh a, [$fd]
    jr nc, @-$01

    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    xor h
    cp $a8
    rst $38
    db $ec
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    dec a
    ld a, a
    ld a, b
    ld a, a
    dec a

Call_059_4804:
    cp a
    add hl, sp
    ld a, a
    add hl, de
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38

jr_059_480d:
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld a, b
    cp $8e
    rst $38
    inc [hl]
    rst $38
    jr nz, @+$01

    db $10
    cp $00
    cp h
    jr nz, jr_059_482f

jr_059_482f:
    nop
    jr nc, @+$01

    ret nz

    rst $38
    nop
    rst $38
    di
    inc c
    ei
    inc b
    rst $38
    nop
    ld sp, hl
    and $70

Jump_059_483f:
    ei
    db $f4
    dec de
    ld sp, hl
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rra
    ldh [$73], a
    db $fc
    ld l, h
    sbc a
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    adc a
    ld [hl], b
    rrca
    ldh a, [$ee]
    rra
    rst $38
    rlca
    rst $38
    inc bc
    cp $01
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, e
    and h
    ld a, e
    add h
    rst $00
    inc a
    db $f4
    rrca
    rla
    rst $28
    adc e
    ld [hl], a
    ld a, a
    nop
    ccf
    nop
    cpl
    nop
    adc a
    nop
    and b
    jr jr_059_480d

    db $fc
    add c
    cp $f5
    cp $fe
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ldh a, [rIE]
    add e
    db $fc
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ld hl, $fbff
    rst $38
    cp $ff
    ld sp, hl
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    pop hl
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    db $fc
    rst $38
    call nc, Call_000_08ff

jr_059_48e3:
    rst $30
    ld b, b
    rst $38
    and b
    ld a, a
    inc c
    ld [hl], e

jr_059_48ea:
    ld [c], a
    ld a, l
    inc c
    ccf
    jr nz, jr_059_490f

    inc d
    inc bc
    scf
    rra
    rla
    rra
    ld [bc], a
    rra
    rrca
    nop
    dec d
    ld a, [bc]
    inc c
    inc bc
    inc bc
    nop
    adc [hl]
    pop af
    dec d
    ldh [rNR14], a
    pop hl
    ld e, b
    pop hl
    jr nz, jr_059_48ea

    pop af
    ldh [$90], a
    db $e3
    add b

jr_059_490f:
    rst $38
    rst $30
    and b
    ei
    ldh [$f3], a
    ldh [$fd], a
    and b
    ei
    add b
    rst $30
    nop
    sbc d
    nop
    db $e3
    add b
    xor d
    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop

jr_059_4929:
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    jr jr_059_4929

    ld d, d
    xor l
    ld [hl], d
    adc l
    pop bc
    ld a, $f2
    dec e
    add sp, $1f
    db $fc
    rrca
    ldh a, [rIF]
    rst $20
    jr jr_059_48e3

    rst $38
    sub $39
    or $19
    ei
    inc c
    db $fd
    ld c, $e7
    rra
    ld a, a
    cp a
    db $ec
    rst $38
    db $ec
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18

jr_059_496b:
    ld h, b

jr_059_496c:
    rst $30
    jr c, jr_059_496c

    ld a, $34
    db $db
    ld [hl], $d9
    sub b
    rst $38
    ld a, [c]
    db $fd
    ld [hl-], a
    db $fd
    ld hl, sp+$1f
    rst $38
    rra
    db $fc
    rlca
    dec bc
    nop
    inc d
    dec bc
    cpl
    db $10
    ld de, $c00e
    rra

jr_059_498a:
    jr nz, jr_059_496b

    xor l
    ret nc

    ld [$74f7], sp
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    pop af
    cp $00
    rst $38
    ld b, l
    cp $e1
    cp $87
    ld hl, sp+$36
    pop bc
    ld l, e
    db $f4
    cp $e0
    sub $e9
    jr jr_059_498a

    inc b
    ld a, [$e619]
    add c
    cp $95
    ld [$ffce], a
    and b
    rst $38
    jr nc, @+$01

    or h
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    adc [hl]
    rst $38
    add l
    ld a, [$ff80]
    adc e
    db $f4
    add l
    ld hl, sp-$10
    rst $38
    ld a, [$85fd]
    ld hl, sp+$0b
    db $f4
    xor a
    ret nc

    rst $18
    and b
    ld [hl], a
    adc b
    ccf
    ret nz

    dec h
    jp c, $e916

    ld a, [hl-]
    add c
    jr nc, @-$2f

    ld b, l
    cp d
    ld b, h
    cp e
    ld a, a
    add b
    dec c
    ld a, [c]
    ld [bc], a
    db $fd
    cp a
    ld b, b
    call $0700
    nop
    dec l
    nop

jr_059_49f6:
    add hl, sp
    nop
    ldh [$1f], a
    ld sp, $c40f
    dec de
    sub b
    ld l, a
    inc h
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    ld c, a
    or b
    ld [hl], b
    nop
    inc e
    nop
    ld h, d
    add hl, de
    ld a, h
    ei
    db $f4
    nop
    rst $18
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
    ccf
    nop
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec e
    rst $38
    ld b, d
    rst $38
    jr z, @+$01

    inc c
    rst $38
    inc h
    rst $38
    nop
    rst $38
    db $10
    rst $38
    xor c
    ld e, a
    db $ec
    dec de
    push hl
    dec de
    rst $20
    dec de
    db $f4
    dec bc
    rst $18
    jr z, jr_059_49f6

    ld c, b
    ld l, [hl]
    ldh a, [rNR22]
    ld hl, sp+$0a
    db $fd
    inc b
    rst $18
    ld [bc], a
    ld a, e
    nop
    cp $02
    xor $03
    ei
    adc l
    ld a, a
    ld a, [$bf05]
    ld b, b
    ld c, a
    or b
    add [hl]
    ld a, c
    ret nz

    ccf
    adc e
    or $7e
    rst $38
    xor $1f
    ccf
    jp Jump_059_71bf


    srl h
    push af
    ld c, $ff
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, l
    add d
    ld c, $f1
    adc b
    ld a, a
    adc e
    ld a, h
    daa
    ret nz

    daa
    ret nz

    and a
    ret nz

    ld b, h
    cp e
    inc c
    or b
    add a
    jr z, jr_059_4a87

jr_059_4a87:
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, e
    cp a
    ld bc, $00ff
    rst $38
    ld [bc], a

jr_059_4a95:
    db $fd
    and b
    nop
    add hl, de
    ld b, b
    xor h
    ld d, b
    ld l, a

jr_059_4a9d:
    db $10
    ld de, $8300
    ld a, h
    ld a, [c]
    nop
    ld a, d
    nop
    ret nc

    nop
    xor $11
    add [hl]
    ld a, c
    ld [bc], a
    db $fd
    dec sp
    call nz, Call_059_7186
    inc e
    db $e3
    jr jr_059_4a9d

    ld e, c
    and $04
    ldh a, [$0d]
    ld a, [c]
    add [hl]
    ld sp, hl
    add l
    ld a, [$c039]
    add b
    ld a, a
    jr nc, jr_059_4a95

    and d
    ld e, a
    sbc b
    rlca
    inc bc
    inc b
    ld c, c
    ld b, $9b
    ld h, h
    jp $b80c


    ld b, a
    rst $10
    ld [$05ca], sp
    add b
    nop
    ld c, c
    nop
    cp $01
    cpl
    ldh a, [rSTAT]
    cp [hl]
    nop
    rst $38
    ret nz

    ccf
    adc b
    ld a, a
    ld b, b
    rra
    and b
    nop
    ld l, [hl]
    sub b
    cp h
    ld b, b
    ret nz

    rlca
    cp l
    ld [bc], a
    add d
    ld bc, $0045
    dec sp
    call nz, $ff6e
    jr nz, @+$01

    add b
    ld a, a
    nop
    nop
    inc c
    nop
    nop
    nop
    ld b, c
    nop
    rst $38
    nop
    nop
    rst $38
    adc b
    scf
    ld [de], a
    add b
    add hl, bc
    add hl, bc
    db $fd
    nop
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    sbc a
    nop
    rst $28
    nop
    rst $28
    ld [bc], a
    di
    nop
    ld c, l
    nop
    ld l, e
    nop
    dec bc
    nop
    ld [hl], e
    nop
    jr @+$01

    rra
    rst $38
    ld b, c
    rst $38
    ldh [rIE], a
    and b
    rst $38
    inc b
    ei
    ldh [$1f], a
    db $eb
    inc e
    add b
    ld a, a
    inc b
    rst $30
    ret nz

    dec sp
    inc bc
    dec de
    ld bc, $01a3
    ld sp, hl

jr_059_4b4c:
    nop
    inc c
    add b
    add e
    add e
    rst $38
    ld [hl], c
    adc a
    db $fd
    add d
    xor [hl]
    ld d, c
    sbc $61
    ld a, e
    db $e4
    ld e, a
    ldh [$dc], a
    ld h, e
    jp Jump_059_7f3f


    add c
    cp [hl]
    pop bc
    rst $38
    ldh [$f7], a
    ld a, b
    ei
    inc a
    rst $38
    ld e, $d3
    rrca
    db $ed
    inc bc
    ld sp, hl
    ld b, $7a

jr_059_4b75:
    add a
    rst $28
    ld hl, sp+$7f
    add b
    rst $38
    nop
    db $d3
    inc l
    ld a, [$a117]
    cp $ba
    nop
    ccf
    ret nz

    ld [de], a
    push hl
    ld [hl], e
    add h
    jr nc, jr_059_4b4c

    dec [hl]
    jp z, $f0cf

    ld b, $01
    nop
    ld bc, $6f10
    adc [hl]
    ld [hl], c
    push bc
    ld a, [hl-]
    xor $11
    add c
    ld a, a
    rst $18
    nop
    ld [hl], b
    adc a
    sub e
    ld l, h
    jr nc, jr_059_4b75

    nop
    rst $38
    sub [hl]
    ld hl, $00e8
    db $ed
    nop
    ret nc

    ccf
    nop
    rst $38
    rra
    ldh [$fc], a
    ld [bc], a
    ld a, h
    add b
    and a
    nop
    db $db
    inc h
    db $fc
    inc bc
    ccf
    add b
    ld b, d
    nop
    dec hl
    call nc, $c03e
    ld a, $c0
    ld h, b

jr_059_4bc9:
    add b
    add sp, $00
    inc l
    add b
    ld hl, sp+$00
    pop bc
    ccf
    ccf
    nop
    ld a, c
    ld b, $fb
    ld b, $0a
    rst $38
    ld a, [$9100]
    nop
    rst $08
    db $10
    dec c
    ld [bc], a
    ld a, [hl-]
    call nz, $e41b
    rra
    ldh [$75], a
    add b
    add b
    nop
    cp $00
    ei
    inc b
    jr z, jr_059_4bc9

    rla
    rst $38
    jr nc, @-$2f

    inc b
    rst $38
    add $3f
    ccf
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld h, $ff
    dec c
    ldh a, [$74]
    add c
    ld hl, $1500
    nop
    add b
    nop
    sub b
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
    jr nz, @+$01

    nop
    rst $38
    ld d, h
    rst $38
    ld a, d
    rst $38
    inc sp
    rst $38
    ld a, l
    rst $38
    ld a, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld [hl], l
    rst $38
    inc c
    rst $38
    nop
    rst $38
    add d
    rst $38
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$e41b]
    di
    inc c
    ld e, a
    and b
    ld sp, hl
    ld b, $2f
    ldh a, [$8c]
    rra
    nop
    ret nz

    add b
    or b
    nop
    ldh a, [rNR41]
    ldh a, [$8c]
    rst $38
    call c, $e6e3
    ld sp, hl

jr_059_4c56:
    ldh a, [rIE]
    or b
    ld a, a
    ld a, h
    adc a
    scf
    rst $08
    rst $28
    pop af
    rst $28
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$af]
    ld [hl], b
    rst $18
    jr nz, jr_059_4caa

    ldh [$7f], a
    ldh [$7f], a
    ldh [$ef], a
    ldh a, [rIE]
    ldh a, [rIE]
    jr nc, jr_059_4c56

    jr nc, @-$05

    ld e, $ff
    rra
    rst $38
    rra
    ld l, a
    sbc a
    ld [$f0ff], sp
    rrca
    ld e, [hl]
    ld bc, $0629
    jp z, Jump_059_483f

    cp a
    ldh [$1f], a
    ldh [$1f], a
    ret nc

    ccf
    ccf
    rst $38
    xor a
    rst $38
    inc de
    rst $38
    sub [hl]
    ld a, a
    ld e, $ff
    ld b, b
    db $fc
    call nz, $0900
    call nz, Call_000_00fc
    ld [hl], $c9
    dec sp
    ret nz

    db $f4
    dec bc

jr_059_4caa:
    db $10
    rrca
    db $e3
    rra
    ld hl, $c0de
    ccf
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    dec [hl]
    ld c, d
    ld hl, sp+$07
    pop af
    ld c, $00
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], $ff
    inc a
    rst $38
    sbc c
    cp $20
    rst $38
    ldh [rIE], a
    push hl
    nop
    rst $10
    nop
    ld a, c
    ld [bc], a
    cp $01
    pop de
    rrca
    push af
    dec bc
    ld l, c
    sbc a
    push af
    dec bc
    ret


    scf
    and $19
    add d
    ld a, l
    add [hl]
    ld a, c
    and d
    rst $38
    sub e
    ld a, h
    add l
    ld a, b
    ld b, a
    cp b
    rla
    ld hl, sp+$0c
    ei
    ld b, $f9
    rla
    ld hl, sp-$10
    rst $38
    ret nz

    rst $38
    push de
    ld [$e25d], a
    add hl, bc
    or $1e
    ld bc, $0106
    ld [hl+], a
    ld bc, $0502
    rrca
    rlca
    rrca
    rlca
    ld bc, $0400
    inc b
    rst $28
    inc bc
    cp $0c
    rst $38
    ld c, $ff
    ld c, a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ei
    rst $38
    jp nc, $e8ff

    rst $38
    ret c

    rst $38
    adc b
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld e, b
    cp a
    db $e4
    dec de
    db $fd
    inc bc
    and d
    ld e, l
    ccf
    ret nz

    jp hl


    ld d, $ff
    ld [bc], a
    nop
    ld hl, $0400
    nop
    ld [bc], a
    nop
    ld bc, $c13e
    inc c
    rst $38
    ld de, $0aef
    push af
    add a
    ld a, b
    ld b, b
    cp a
    add hl, bc
    or $e5
    ld a, [$7ebd]
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
    ld a, [hl]
    add c
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
    sbc $21
    add c
    rst $38
    rst $28
    rst $38
    rst $30
    ld hl, sp+$00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    nop
    inc d
    dec d
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_059_4dbe

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_059_4dd4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_059_4de4

    ld a, [hl+]
    dec hl
    inc l

jr_059_4dbe:
    dec l
    ld l, $2f
    jr nc, jr_059_4df4

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_059_4e04

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_059_4dd4:
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

jr_059_4de4:
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

jr_059_4df4:
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

jr_059_4e04:
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
    nop
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
    nop
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, Jump_000_00cb

    nop
    call z, $cecd
    rst $08
    ret nc

    pop de
    nop
    jp nc, $d4d3

    push de
    sub $d7
    nop
    nop
    nop
    nop
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    nop
    nop
    nop
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    nop
    ld hl, sp-$07
    nop
    ld a, [$0000]
    nop
    nop
    nop
    ei
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    dec b
    nop
    dec b
    nop
    nop
    dec b
    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0101
    nop
    nop
    dec b
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0600
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    dec b
    ld b, $05
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    nop
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0505
    dec b
    nop
    nop
    nop
    dec b
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    ld bc, $0001
    nop
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    inc bc
    dec b
    ld bc, $0303
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    nop
    nop
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0d0d], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    add b
    rst $38
    ld [hl], a
    rst $38
    ld d, $ff
    cpl
    rst $38
    jp z, $e6ff

    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    ld e, a
    rst $38
    inc hl
    rst $38
    add hl, bc
    rst $38
    ld d, c
    rst $38
    cp b
    rst $38
    db $f4
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ret c

    rst $38
    inc c
    ld a, a
    inc a
    db $fc
    ld b, $1f
    nop
    nop
    nop
    ld [hl], h
    inc c
    ld e, $00
    rst $08
    nop
    cp $01
    rst $08
    nop
    ld sp, hl
    nop
    ld a, [hl]
    nop
    add sp, -$10
    ld hl, sp+$70
    ldh a, [rP1]
    ld e, b
    nop
    nop
    nop
    ld [$f00f], sp
    ld hl, $00fe
    rst $38
    nop
    rst $38
    pop bc
    ld a, $ff
    nop
    rst $38
    nop
    rrca
    ldh a, [rP1]
    nop
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    sub d
    rst $38
    add hl, bc
    rst $38
    inc h
    rst $38
    sub $ff
    pop bc
    rst $38
    ld c, c
    rst $38
    ld [$94ff], a
    rst $38
    sbc [hl]
    rst $38
    inc a
    rst $38
    ld e, [hl]
    rst $38
    ld e, h
    rst $38
    xor h
    rst $38
    sbc b
    rst $38
    ld [hl], b
    rst $38
    add sp, -$01
    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    add b
    rst $38

Call_059_50af:
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $10
    rst $38
    ld hl, $0b00
    nop
    ld c, e
    inc b
    ldh a, [rIF]
    nop
    inc bc
    ld c, c
    nop
    db $fd
    inc bc
    call c, $8023
    ldh a, [rP1]
    cp b
    ld bc, $8001
    ret nc

    add d
    ld a, [c]
    nop
    ld [c], a
    nop
    pop hl
    inc b
    add a
    add hl, de
    or $0a
    push af
    sub b
    ld l, a
    adc h
    ld h, e
    add hl, hl
    add $d6
    add hl, hl
    and h
    ld e, e
    ret nz

    ccf
    nop
    sbc b
    nop
    stop
    nop
    nop
    jr nz, jr_059_50f9

jr_059_50f9:
    jr nz, jr_059_50fb

jr_059_50fb:
    jr nz, jr_059_50fd

jr_059_50fd:
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    db $fc
    nop
    cp $1c
    db $e3
    inc b
    ei
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
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    add b
    rst $38
    add b
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
    inc b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
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
    rst $38
    db $fc
    rst $38
    db $fc
    cp $fc
    rst $38
    ld b, b
    ei
    pop hl
    rst $30
    ret nc

    ld a, [$fc80]
    xor b
    ld d, a
    or h
    rrca
    pop af
    ld e, $21
    cp $60
    cp $45
    ld a, [$fac5]
    ld h, c
    add $00
    ld l, e
    nop
    sbc e
    nop
    ld [hl], d
    ldh [$f4], a
    jr nz, jr_059_51ba

    nop
    and b
    nop
    ret nz

    nop
    ld b, d
    ld a, [bc]
    db $fd
    adc d
    ld a, l
    dec b
    cp $27
    cp $22
    rst $38
    inc sp
    rst $38
    add hl, bc
    rst $38
    jr @+$01

    inc b
    inc b
    ld e, $00
    cp b
    ld [$1839], sp
    inc a
    jr c, @+$1a

    nop
    ld [bc], a
    nop
    ld b, $00
    ccf
    jr c, @+$3a

    jr c, @+$7a

    jr z, jr_059_51e7

    nop
    nop
    nop

jr_059_51ba:
    ld sp, $8000
    nop
    ld bc, $0300
    ld bc, $0303
    inc bc
    nop
    pop bc
    nop
    rst $20
    nop
    cp $02
    add sp, $00
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    db $fc
    nop
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_059_51e7:
    rst $38
    rst $38
    rst $38
    cp $ff
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
    rst $28
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    inc d
    inc bc
    rrca
    adc a
    rra
    inc e
    rst $38
    ld a, b
    rst $38
    ret nz

    rst $38
    sbc b
    cp $1a
    pop hl
    sbc a
    jr nz, jr_059_5222

    and d
    ld b, $09
    add d
    ld b, l
    dec h
    jp Jump_000_0fb3


    di
    rrca
    ret nz

    ccf

jr_059_5222:
    ld h, b
    cp a
    ld d, b
    cp a
    ld h, e
    sbc a
    dec hl
    rst $18
    dec hl
    rst $18
    ld de, $17ef
    rst $28
    ld c, e
    rst $30
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    adc b
    rst $30
    add b
    add b
    ld b, b
    ld b, b
    ld h, b
    ld b, b
    and b
    and b
    or e
    or b
    rst $18
    ld d, c
    ld a, a
    ld a, h
    ccf
    dec l
    ccf
    ld e, $1f
    ld e, $1f
    rra
    rst $38
    adc a
    rst $38
    adc a
    ld a, a
    rra
    ld a, a
    inc bc
    rst $38
    sub e
    rst $38
    cp c
    rst $38
    jr c, @+$01

    ld a, [hl-]
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld a, c
    rst $38
    ld a, [$faff]
    rst $38
    ei
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $30
    nop
    ei
    nop
    ld a, c
    rst $38
    adc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add l
    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    add b
    rst $38
    push bc
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    di
    rst $38
    di
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $28
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
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    push af
    rst $38
    or $ff
    db $f4
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
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
    ld bc, $4f01
    add e
    ld a, a
    ld c, d
    rst $38
    ret nz

    rst $38
    dec b
    ld a, [$f40b]
    ld c, a
    or b
    ld a, e
    add h
    rst $38
    nop
    nop
    ld a, h
    inc c
    ld h, d
    sbc b
    ld h, a
    xor a
    rra
    adc a
    rra

jr_059_531a:
    rra
    adc a
    rst $08
    adc a
    add l
    rst $08
    xor l
    rst $00
    ld d, d
    rst $20
    inc de
    rst $20
    adc l
    di
    ret


    di
    rst $30
    ld sp, hl
    or $f9
    cp $f9
    ei
    db $fc
    ld sp, hl
    cp $e9
    cp $fc
    rst $38
    cp $ff
    ld a, [$7cff]
    rst $38
    ld a, a
    rst $38
    ccf
    ccf
    ld [hl-], a
    jr nz, jr_059_5375

    jr nc, jr_059_5363

    inc d
    sbc [hl]
    jr jr_059_531a

    ld c, l
    rst $28
    ld c, a
    rst $28
    ld l, $f7
    ld [hl], $ff
    ld d, $ff
    ld c, e
    rst $38
    rst $08
    rst $38
    rst $10
    rst $38
    db $eb
    rst $38
    jp $e1ff


    rst $38
    pop hl
    rst $38

jr_059_5363:
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    ld c, h
    rst $38
    sbc $ff
    ld sp, hl
    rst $38

jr_059_5375:
    ld e, b
    rst $38
    ld c, b
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ld h, c
    rst $38
    ld b, e
    rst $30
    nop
    ld e, a
    nop
    dec de
    nop
    inc e
    nop
    ld b, $00
    ld [bc], a
    nop
    jr nz, jr_059_5390

jr_059_5390:
    nop
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
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    ret nc

    rst $38
    ret


    rst $38
    add sp, -$01
    pop af
    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    pop hl
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
    ret nz

    rst $38
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
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc bc
    rst $38
    ld hl, $11ff
    rst $38
    ld h, e
    rst $38
    sub a
    rst $38
    ld b, e
    rst $38
    rst $18
    rst $38
    sub a
    rst $38
    or a
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
    ld [hl+], a
    rlca
    cpl
    rlca
    rst $28
    xor $ff
    ei
    rst $38
    ld b, e
    rst $30
    add b
    ld l, a
    nop
    or e
    nop
    ld a, $00
    ld bc, $8e00
    nop
    add $13
    add c
    inc bc
    pop af
    ld h, c
    pop af
    ld sp, hl
    pop af
    pop af
    ld hl, sp-$0f
    ld hl, sp-$04
    ld hl, sp-$08
    db $fc
    ld hl, sp-$04
    cp $fc
    inc h
    cp $b0
    cp $7b
    cp $ca
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    call c, Call_059_62ff
    rst $38
    ld d, b
    rst $38
    jr z, @+$01

    cp a
    ld a, a
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    ld e, $0f
    inc bc
    dec bc
    ld [$080c], sp
    and h
    inc h
    rst $20
    inc h
    rst $20
    ld h, $f3
    ld [hl], d
    di
    inc sp
    ei
    ld a, e
    db $fd
    ld a, l
    db $fd
    ld sp, hl
    rst $38
    or a
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ei
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    jr @+$01

    add h
    rst $38
    ld b, b
    rst $38
    nop
    db $fd
    ld bc, $00ff
    ld sp, hl
    nop
    cp $00
    ld a, [$8f90]
    nop
    adc $40
    rst $20
    add b
    rst $38
    sub b
    rst $38
    ld b, b
    di
    jr nz, jr_059_54c7

    nop
    rra
    nop
    rlca
    nop
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
    ld b, $ff
    inc bc
    rst $38
    ld bc, $21ff
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld b, h
    rst $38
    ld [bc], a
    rst $38
    ld c, c
    rst $38
    jr nz, @+$01

    sbc c
    rst $38
    ld h, a
    rst $38
    ld a, c
    rst $38
    dec [hl]
    rst $38
    ld a, [de]
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    inc c
    rst $38
    ld e, $ff
    rra

jr_059_54c7:
    rst $38
    ld e, $ff
    ccf
    cp $3d
    cp $3c
    rst $38
    ld a, h
    rst $38
    ld a, l
    cp $7b
    db $fc
    ld a, [$fffc]
    ld hl, sp-$05
    db $fc
    rst $38
    ld hl, sp-$06
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$e5]
    ld hl, sp-$1e
    ld hl, sp-$0b
    ld hl, sp-$16
    ldh a, [$fe]
    ldh [$dd], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp h
    rst $38
    ld [hl], l
    rst $38
    ld a, [c]
    rst $38
    ld b, b
    inc de
    ld b, b
    cpl
    nop
    sbc c
    ld e, a
    ld e, a
    jr c, jr_059_5542

    ld l, b
    add sp, $0e
    rrca
    jr z, jr_059_557e

    nop
    nop
    add h
    nop
    db $e3
    ret nz

    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    db $f4
    ld a, a
    ld h, l
    ld a, a
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    db $ec
    ccf
    ret nc

    ccf
    ret nz

    ccf
    ret nc

    ccf
    ld a, b
    sbc a
    ld l, [hl]
    sbc a
    ld l, a
    sbc a
    xor a
    rst $18
    cp a
    rst $08
    rst $10
    rst $28
    rst $10
    rst $28
    rst $00
    rst $38
    rst $00
    add a

jr_059_5542:
    jp $e383


    jp Jump_000_23f3


    db $d3
    inc bc
    ld [hl], c
    ld bc, $79f9
    ld sp, hl
    ld a, c
    db $fd
    ld a, h
    db $fd
    ld a, c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7f
    ld e, $3f
    ld c, $97
    nop
    db $ed
    nop
    cp h
    nop
    db $fc
    nop
    and [hl]
    nop
    pop bc
    nop

jr_059_557e:
    ld a, b
    nop
    ld [$e8ff], sp
    rst $38
    push hl
    rst $38
    ld a, [$fcff]
    rst $38
    db $f4
    rst $38
    ld [hl], c
    rst $38
    cp [hl]
    rst $38
    adc l
    cp $00
    rst $38
    nop
    rst $38
    add hl, de
    cp $0b
    db $fc
    ld b, $f9
    rlca
    ld hl, sp+$0f
    ld hl, sp+$07
    ld hl, sp+$2e
    pop de
    sbc l
    ld [c], a
    add a
    ld hl, sp+$07
    ld hl, sp+$2f
    ldh a, [$1f]
    ldh [$27], a
    ret c

    rlca
    ld hl, sp+$1f
    ldh [$36], a
    pop bc
    adc l
    pop bc
    ld a, a
    add b
    sbc a
    ret nz

    adc $80
    rst $28
    add b
    ld bc, $107b
    ld a, a
    inc l
    ld a, a
    ld bc, $117f
    ei
    inc bc
    ei
    nop
    rst $38
    nop
    ld [hl], a
    nop
    ld a, a
    ld d, [hl]
    rst $38
    add l
    rst $28
    daa
    rst $20
    daa
    rst $38
    and [hl]
    or $00
    push af
    ret nz

    ldh a, [rNR24]
    ld a, a
    nop
    rst $08
    add e
    rst $20
    dec d
    rst $38
    ld c, $ff
    ld a, [de]
    rst $18
    dec d
    rst $38
    ld a, [de]
    sbc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld c, $ff
    ld e, a
    rst $38
    rla
    rst $38
    dec b
    rst $38
    nop
    inc d
    db $10
    db $fc
    inc [hl]
    or h
    db $f4
    push af
    ld [bc], a
    dec bc
    db $fc
    db $fc
    ld a, h
    ld a, a
    ld [hl], b
    ldh a, [$0b]
    rst $30
    nop
    rst $38
    add h
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
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    ld a, a
    ld a, [bc]
    rrca
    ld [$080f], sp
    rlca
    inc bc
    rlca
    inc b
    ld b, a
    inc bc
    rst $38
    ld b, c
    db $fc
    ldh a, [$fc]
    db $fc
    cp $fc
    cp $fa
    cp $f4
    cp $f6
    rst $38
    call c, $c8ff
    ld hl, sp-$10
    pop hl
    nop
    db $db
    add c
    add $80
    db $fc
    db $ec
    rst $38
    db $db
    rst $38
    ld hl, sp-$08

jr_059_5655:
    ld hl, sp-$08
    ld hl, sp-$04
    add sp, -$08

jr_059_565b:
    ld [hl], b
    ldh a, [rSVBK]
    db $fc
    ld hl, sp-$10
    ldh a, [$f0]
    ldh [$fc], a
    add sp, -$20
    ldh [$e0], a
    ld h, b
    ld b, b
    nop
    ldh [rNR41], a
    ldh [rP1], a
    ld b, b
    rst $38
    and b

jr_059_5673:
    rst $38
    ldh [rIE], a
    add c
    rst $38
    dec b
    ei
    add hl, hl
    rst $30
    inc e
    db $e3
    ld bc, $01ff
    rst $38
    jr z, jr_059_565b

    ld [hl], $cb
    ld a, d
    add a
    ld [bc], a
    rst $38
    jr jr_059_5673

    jr c, jr_059_5655

    ld [hl], b
    adc a
    ldh a, [rIF]
    ld h, b
    sbc a
    ldh [$1f], a
    or b
    rrca
    ret nz

    ccf
    call nc, $e03b
    rra
    jp hl


    ld [de], a
    ld b, l
    rst $28
    dec bc
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    ld b, $ff
    nop
    adc $00
    adc b
    inc e
    ld e, l
    ld e, $7f
    dec a
    ld a, a
    ccf
    cp a
    ld l, a
    rst $38
    cp l
    rst $38
    ccf
    rst $38
    ld e, $bf
    add hl, sp
    rst $38
    ld [hl], d
    rst $38
    ld l, e
    rst $38
    inc b
    rst $38
    inc sp
    ld a, a
    dec e
    cp a
    pop de
    rst $38
    nop
    rst $38
    ld de, $67ff
    ld a, a
    ld d, a
    ld a, a
    ld a, e
    rst $38
    push bc
    rst $38
    cp c
    rst $38
    db $76
    ld a, a
    ld de, $10ff
    rst $38
    sub c
    rst $38
    or b
    cp e
    ld a, [hl+]
    cp a
    rst $38
    rst $38
    or $ff
    push bc
    rst $38
    scf
    rst $38
    or l
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    ld a, $7f
    inc a
    rst $38
    di
    rst $38
    adc a
    rst $38
    add l
    ld a, [hl]
    add $39
    adc a
    ld [hl], b
    add b
    ld h, b
    nop
    add b
    nop
    add b
    nop
    sbc $8c
    ld a, [c]
    cp l
    nop
    add sp, $00
    ld h, l
    nop
    cp a
    inc c
    rst $38
    ld c, d
    rst $28
    nop
    rst $38
    nop
    cp $00
    pop af
    add b
    pop de
    ld bc, $18ff
    rst $38
    adc b
    pop hl
    add c
    rst $38
    ld d, c
    cp $00
    rst $38
    ld b, b
    ei
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, jr_059_57b6

    nop
    ld a, a
    ld b, b
    jp $6700


    ld b, $47
    ld b, a
    rst $08
    inc bc
    sbc a
    rlca
    rlca
    rlca
    rrca
    rlca
    rrca
    dec c
    rrca
    add hl, bc
    rrca
    ld bc, $031f
    rrca
    inc bc
    rra
    inc bc
    ccf
    inc hl
    rra
    ld [bc], a
    rla

jr_059_5759:
    ld [bc], a
    rla
    ld b, $17
    rlca
    cpl
    inc b
    dec de
    rst $38
    ccf
    ei
    scf
    ei
    db $76
    ei
    ld h, a
    ei
    inc h

jr_059_576b:
    ei
    ld de, $15ee
    xor $19
    and $ff
    ret nz

    ld a, h
    ret nz

    add b
    rst $38
    jr nz, jr_059_5759

    inc h
    db $db
    sub d
    db $ed
    and b
    rst $38
    sub d
    db $fd
    ld b, c
    cp [hl]
    ld c, b
    or a
    add b
    ld a, a
    inc b
    ei
    jr nz, jr_059_576b

    inc b
    ei
    daa
    ret c

    ld l, b
    ret nc

    add hl, bc
    ldh a, [rNR23]
    ldh [rP1], a
    ld a, [$fa05]
    jp z, Jump_000_1215

    ret nz

    ld h, b
    add b
    rra
    rst $38
    cpl
    rst $38
    inc de
    rst $38
    push bc
    rst $38
    inc bc
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    ccf
    inc d
    cp a
    ld d, $ff
    add l
    rst $38

jr_059_57b6:
    adc [hl]
    rst $38
    sub d
    rst $38
    and [hl]
    rst $38
    or c
    rst $38
    ld d, e
    rst $38
    add $ff
    call $83ff
    rst $38
    dec d
    rst $38
    add h
    rst $38
    adc e
    rst $38
    sub a
    rst $38
    ld l, h
    rst $38
    add b
    rst $38
    adc b
    rst $38
    add hl, hl
    rst $38
    add h
    rst $38
    push bc
    rst $38
    jp nc, $c2ff

    rst $38
    add e
    rst $38
    dec bc
    rst $38
    and c
    rst $38
    ld h, d
    rst $38
    ld hl, sp-$01
    db $ed
    rst $38
    ld a, [$b8ff]
    rst $38
    jp nc, Jump_000_00ff

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [$c8ff]
    rst $38
    ld h, e
    rst $38
    ld [hl+], a
    ret nc

    nop
    rst $28
    ld b, b
    adc [hl]
    ld a, [$fffb]
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    call z, Call_059_40f0
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
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
    add b
    nop
    ret nz

    add b
    cp [hl]
    ld c, $fb
    nop
    db $fd
    nop
    xor l
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    di
    ld bc, $d2fe
    rst $38
    push af
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    cp a
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
    db $fd
    rst $38
    cp l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld h, a
    rst $38
    rst $28
    rst $38
    ld [hl], c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_059_5865:
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    inc bc
    rst $38
    add sp, $17
    or a
    ld c, b
    rst $38
    nop
    rst $18
    nop
    dec hl
    nop
    ld [hl], h
    add b
    or [hl]
    db $fd
    ld e, b
    rst $38
    ld sp, $00fe
    rst $38
    ld [bc], a
    rst $38
    inc d
    db $eb
    jr nz, jr_059_5865

    inc b
    ei
    ld d, h
    xor e
    ret nz

    ccf
    ld b, h
    cp e
    add b
    dec de
    di
    rst $30
    di
    rst $38
    ld c, e
    ei
    ldh [$e1], a
    call c, Call_000_3bfd
    rst $38
    cp $ff
    ld l, e
    rst $38
    and [hl]
    rst $38
    ld a, [$fdff]
    rst $38
    ld a, h
    rst $38
    cp a
    rst $38
    ld a, [hl]
    rst $38
    ld d, a
    rst $38
    rlca
    rst $38
    jr c, @+$01

    db $10
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    ret c

    rst $38
    dec l
    rst $38
    add d
    rst $38
    sub e
    rst $38
    rlca
    rst $38
    add e
    rst $38
    adc [hl]
    rst $38
    and $ff
    ld h, d
    rst $38
    or b
    rst $38
    ld [$80ff], sp
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc d
    rst $38
    sub h
    rst $38
    ld c, c
    rst $38
    dec d
    rst $38
    inc c
    rst $38
    dec [hl]
    rst $38
    ldh a, [rIE]
    ld d, c
    rst $38
    pop hl
    rst $38
    db $10
    rst $38
    ld [hl-], a
    rst $38
    pop hl
    rst $38
    or b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    inc bc
    ld bc, $0003
    ld bc, $ff2f
    inc bc
    rst $38
    ld [bc], a
    sbc a
    db $ed
    ld [de], a
    ld b, $01
    ld c, $01
    inc c
    inc de
    ld [$0a07], sp
    inc b
    ld a, [bc]
    db $fc
    add h
    ld a, a
    inc bc
    rst $38
    dec de
    rst $20
    ld b, l
    cp e
    ld bc, $00ff
    rst $38
    inc b
    ei
    ld [$18ff], sp
    rst $38
    ccf
    rst $38
    ld c, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    nop
    ld b, a
    nop
    ld h, a
    nop
    rst $38
    ld [bc], a
    rst $28
    add e
    adc a
    dec b
    rra
    nop
    rst $38
    nop
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    cp a
    rst $38
    ld b, l
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38

jr_059_595b:
    call z, $caff
    rst $38
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    rlca
    ei
    rst $00
    ei
    rlca
    ei
    db $76
    adc e
    ld a, [c]
    rrca
    pop af
    ld c, $71
    ld c, $5f
    nop
    or e
    ld b, b
    jr nc, @+$01

    ld a, [bc]
    rst $38
    scf
    rst $38
    daa
    rst $38
    inc hl
    rst $18
    ld [hl+], a
    rst $18
    db $10
    rst $28
    inc b
    rst $38
    inc c
    rst $30
    db $10
    rst $28
    add hl, bc
    or $40
    ret


    ret z

    ret z

    rst $18
    rst $38
    rst $20
    rst $38
    ld d, [hl]
    rst $38
    jr z, jr_059_595b

    sbc b
    rst $38
    ret z

    rst $18
    xor d
    xor $f0
    ld sp, hl
    ld l, b
    db $fc
    call nc, Call_000_20fc
    cp $b8
    rst $38
    db $76
    rst $38
    xor l
    db $fd
    call nc, Call_000_34fe
    rst $38
    inc d
    rst $38
    sub c
    rst $38
    dec e
    db $fd
    nop
    rst $38
    ld [$00ff], sp
    or $42
    cp $6a
    rst $38
    cp h
    rst $38
    ld a, h
    cp $3a
    cp $1e
    cp $08
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    ld c, $fe
    ld [de], a
    cp $3c
    db $fd
    cp b
    db $fd
    cp d
    rst $38
    ld a, h
    rst $38
    call c, $7cfe
    rst $38
    call c, Call_000_15ff
    rst $38
    adc d
    rst $38
    ld de, $a9ff
    ld sp, hl
    reti


    rst $38
    call nc, Call_000_00ff
    nop
    nop
    nop
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
    ld hl, sp-$08
    ld a, a
    cp $f8
    rst $38
    ld d, a
    rst $38
    ccf
    ld e, a
    inc c
    ld a, a
    ld b, b
    cp a
    rrca
    db $10
    ld bc, $00a0
    ld [$e000], sp
    ld b, b
    or h
    ret nz

    ld sp, hl
    ld sp, hl
    cp $f9
    rst $38
    ldh a, [rIE]
    ld [hl], l
    rst $38
    inc hl
    ld bc, $031b
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    ldh [rP1], a
    ld a, b
    nop
    jr nc, jr_059_5a30

jr_059_5a30:
    jr jr_059_5a32

jr_059_5a32:
    inc c
    nop
    ld b, $00
    rst $38
    add b
    rst $38
    ld [$90f9], sp
    ret nz

    add b
    and b
    nop
    rst $38
    ld [bc], a
    db $fc
    inc a
    ei
    inc bc
    ei
    ld [bc], a
    ld a, [$fa88]
    add sp, -$04
    db $ec
    ld hl, sp-$30
    ld a, [$fec0]
    call nz, $88fc
    ld a, [$f680]
    inc b
    ld a, [$f000]
    nop
    ldh [rP1], a
    cp b
    ld [$00b0], sp
    or b
    nop
    xor h
    nop
    xor b
    nop
    sub b
    nop
    call nz, Call_059_4804
    nop
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    rst $08
    ldh a, [$83]
    db $fc
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    and b
    rst $38
    db $d3
    db $ec
    jp z, Jump_000_03fd

    db $fc
    ld [bc], a
    db $fd
    jr z, @-$27

    ld h, d
    sbc l
    ld a, [de]
    push hl
    add hl, de
    and $00
    rst $38
    db $10
    cpl
    ld b, d
    dec a
    ld b, [hl]
    add hl, sp
    sbc $61
    ld a, $41
    ld c, [hl]
    or c
    ld c, a
    or c
    ld d, [hl]
    xor c
    dec [hl]
    jp $01df


    ld hl, sp+$03
    dec bc
    ret nz

    ld [c], a
    ld bc, $03fc
    db $ed
    inc de
    cp [hl]
    ld b, c
    inc a
    jp $8334


    ld a, h
    add e
    call c, $df23
    inc hl
    db $ed
    inc bc
    rst $38
    inc bc
    ld h, a
    inc bc
    rst $08
    inc bc
    rra
    inc bc
    rst $20
    inc bc
    sbc e
    rlca
    ei
    rlca
    ei
    rlca
    dec de
    rlca
    xor a
    inc bc
    inc sp
    rlca
    ei
    rlca
    ei
    rlca
    rst $30
    rlca
    rst $38
    rlca
    ei
    rlca
    rst $38
    rlca
    rst $10
    rrca
    rst $00
    rrca
    rst $30
    rrca
    rla
    rrca
    ld a, a
    rlca
    rla
    rrca
    rst $28
    rrca
    ld a, a
    add b
    set 6, h
    di
    db $fc
    sbc b
    rst $38
    ld b, d
    rst $38
    xor h
    ld e, a
    call nz, Call_059_5c3b
    and e
    rlca
    jr c, @+$04

    ld bc, $3800
    nop
    rra
    add b
    ld l, c
    ret nz

    ld a, [c]
    ld hl, sp-$01
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
    ld [$317f], sp
    ccf
    jr jr_059_5b54

    nop
    ld de, $1811
    nop
    stop
    sub c
    nop
    rst $30
    ld bc, $0161
    stop
    nop
    nop
    ld [bc], a
    nop
    dec e
    add hl, de
    rra
    rla
    cp $1e
    ld a, $1e
    ld c, $02
    ld c, $06
    inc a
    inc c
    dec a
    dec e
    dec c
    dec b
    ccf
    rrca
    ccf
    ccf
    ld a, a
    rra
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

jr_059_5b54:
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    inc a
    rst $38
    ld a, e
    ld a, a
    ld a, h
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld l, h
    ld [hl], a
    ld h, b
    ld a, a
    nop
    ld h, a
    ld b, c
    ld a, a
    ld bc, $40ff
    ld a, a
    ld b, d
    ld a, a
    ld [bc], a
    cp $80
    cp $04
    ld l, a
    nop
    ld l, h
    nop
    xor $00
    or a
    nop
    rst $38
    nop
    rst $38
    add b
    xor $00
    xor $00
    rst $38
    nop
    ld b, a
    cp a
    ld h, e
    sbc a
    sub b
    rst $28
    adc h
    di
    ld bc, $68fe
    rst $30
    call nc, $a27b
    ld e, l
    ld a, [hl]
    add c
    sbc l
    ld [c], a
    ld b, $f9
    ld e, c
    cp [hl]
    ret nz

    ccf
    ld [bc], a
    rst $38
    rlca
    ei
    jp nz, $e0fd

    rst $38
    db $fc
    rst $38
    cp [hl]
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $38
    rrca
    db $fd
    ld c, $f7
    ld [$00ff], sp
    nop
    db $e4
    ld b, b
    and $85
    push hl
    ld b, b
    ld c, b
    inc b
    call nz, Call_000_1b18
    add hl, bc
    sbc c
    nop
    dec c
    db $e4
    ei
    db $e4
    ei
    push hl
    ei
    set 6, a
    set 6, a
    jp $d7ff


    rst $28
    sub a
    rst $28
    add a
    add a
    adc a
    inc c
    rrca
    inc c
    ld [$1808], sp
    jr jr_059_5c33

    db $10
    db $10
    db $10
    inc e
    db $10
    ccf
    inc a
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
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    db $ec
    db $fc

jr_059_5c33:
    ld hl, sp-$7e
    add b
    add a
    nop
    pop af
    add c
    rst $38

Call_059_5c3b:
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_059_5c4a:
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld e, $ff
    ccf
    rst $38
    cp [hl]
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld [hl], e
    ei
    jr nz, @+$01

    jr nz, jr_059_5c4a

    ld b, b
    set 0, b
    rst $38
    add b
    inc hl
    ld bc, $01a7
    ld d, e
    inc bc
    rlca
    ld [bc], a
    ld d, a
    inc bc
    rlca
    ld b, $0f
    nop
    rst $38
    ld [$003f], sp
    ld a, a
    nop
    rst $38
    nop
    rst $30
    nop
    pop bc
    nop
    nop
    nop
    add b
    rst $38
    adc b
    rst $30
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    add b
    ld a, a
    inc d
    db $eb
    add d
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $10
    rst $28
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    inc hl
    rst $38
    sub a
    ld a, a
    dec a
    rst $38
    dec a
    rst $38
    xor a
    rst $38
    push af
    rst $38
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
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    di
    db $fc
    rra
    rst $38
    cp a
    ld a, a
    ld e, h
    rst $38
    pop bc
    ld a, a
    nop
    rst $38
    jp z, $fd35

    ld [bc], a
    cpl
    ret nc

    rst $00
    jr c, @+$1a

    rst $20
    adc [hl]
    pop af
    ld [hl], d
    db $fd
    ret nc

    rst $38
    or [hl]
    rst $38
    ld [c], a
    rst $38
    cp $52
    cp $c2
    db $fc
    inc d
    nop
    nop
    ld [$2000], sp
    nop
    stop
    ld hl, $f101
    add c
    di
    db $e3
    db $e3
    db $e3
    rst $20
    and $e7
    and $cc
    call z, $8ccc
    sbc a
    sbc d
    sbc l
    jr jr_059_5d72

jr_059_5d13:
    ld e, b
    or e
    or c
    pop af
    ldh a, [rIE]
    ldh a, [rIE]
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, $ff
    inc a
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $20
    ret nz

    rst $30
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $1dff
    rst $38
    sbc b
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    and b
    db $fd
    add b
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ldh a, [rP1]
    ld h, b
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
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $61ff
    rst $38
    ld sp, $13ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_059_5d72:
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ei
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
    ld a, a
    rst $38
    rra
    or a
    ld c, a
    db $fd
    inc bc
    cp a
    ld b, b
    rst $18
    jr nz, jr_059_5dfe

    sub b
    nop
    jr nz, jr_059_5d13

    adc h
    jr nz, @-$58

    inc c
    ld c, l
    pop bc
    rst $00
    inc bc
    di
    rlca
    daa
    ld b, $0f
    jr nc, jr_059_5dd2

    jr c, @+$32

    inc a
    jr nc, jr_059_5e26

    ld a, h
    ld a, a
    ld h, l
    rst $38
    ei
    rst $38
    push hl
    rst $38
    ld sp, hl
    rst $38
    db $ed
    rst $38
    or [hl]
    rst $38
    push de
    rst $38
    add b
    cp $50
    db $fc
    xor b
    db $fc
    nop
    add sp, $40
    ld sp, hl
    ld b, c
    ld b, c
    ld bc, $0343
    rlca
    rlca
    ld d, [hl]
    ld d, $fe
    ld e, [hl]
    db $fd
    db $ec
    rst $38
    rst $38
    rst $38
    db $fc

jr_059_5dd2:
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    ldh a, [rIE]
    ld a, [c]
    rst $38
    and l
    rst $38
    add hl, bc
    rst $38
    add e
    rst $38
    ld h, e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    cp $3e
    rst $38
    inc a
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    rst $38
    pop hl
    rst $38
    add $ff
    adc [hl]
    rst $38
    rst $10
    rst $38
    rst $18

jr_059_5dfe:
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, [hl]
    rst $38
    ld e, a
    rst $38
    add a
    rst $38
    ld bc, $00ff
    push af
    nop
    ldh a, [rP1]
    cp b
    rst $38
    inc c
    rst $38
    dec b
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $80ff
    rst $38
    ld de, $00ff
    rst $38
    ld bc, $80ff
    rst $38

jr_059_5e26:
    xor c
    rst $38
    adc b
    rst $38
    or c
    rst $38
    pop af
    rst $38
    or c
    rst $38
    or c
    rst $38
    pop af
    rst $38
    ld a, c
    rst $38
    ld a, e
    rst $38
    cp c
    rst $38
    reti


    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    rra
    xor [hl]
    pop af
    or a
    ld hl, sp+$39
    cp $51
    cp [hl]
    rst $28
    rra
    rst $38
    ccf
    call c, $c03f
    ccf
    adc b
    ld [hl], a
    ld l, h
    sub e
    db $ec
    inc de
    ld a, [hl]
    add c
    cp l
    jp nz, $e9d6

    push de
    ld [$f8c7], a
    adc l
    cp $8e
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    ret nz

    ret c

    ret z

    ld hl, sp-$78
    ld [hl], b
    db $10
    ret nz

    nop
    stop
    add c
    add b
    rst $10
    ld b, l
    rst $38

Call_059_5ea1:
    rst $38
    rst $38
    ld a, $fe
    ld a, $fe
    inc a
    cp $7c
    cp $f8
    cp $f0
    cp $f0
    cp $e0
    rst $38
    ret


    rst $38
    and e
    rst $38
    inc hl
    rst $38
    ld a, [bc]
    rst $38
    ld a, [hl-]
    cp $3e
    rst $38
    ld a, $ff
    ld a, b
    db $fd

jr_059_5ec3:
    cp h
    db $fd
    jr jr_059_5ec3

    ld [$90fd], sp
    rst $38
    jr @+$01

    sbc [hl]
    rst $38
    or h
    rst $38
    db $ec
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    add b
    rst $30
    ld b, b
    cp $00
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    sub a
    rst $38
    cp a
    rst $38
    sub a
    rst $38
    rst $28
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    and a
    rst $38
    and e
    rst $38
    and a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $18
    ccf
    rst $38
    cp a
    rst $38
    ld h, a
    ei
    scf
    di
    dec e
    ldh a, [rIF]
    ld a, a
    ldh a, [rNR21]
    ld sp, hl
    ld de, $05fe
    cp $04
    rst $38
    ld d, l
    xor a
    ld l, l
    sub e
    or [hl]
    ld c, c
    ld a, b
    add a
    ld hl, sp+$07
    ld a, e
    add l
    ld b, c
    cp [hl]
    dec b
    ld a, [$e817]
    inc b
    ei
    add b
    rst $38
    inc bc
    db $fc
    dec de
    db $fc
    jr @+$01

    ld sp, $62fe
    db $fd
    db $f4
    rst $28
    call nc, $a6ef
    rst $18
    ld h, h
    sbc a
    inc b
    rst $38
    ld [$18ff], sp
    rst $38
    sub b
    ld a, a
    db $10
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    inc [hl]
    db $10
    jr z, jr_059_5f84

    inc c
    ld [$0004], sp
    ld b, b
    nop
    nop
    nop
    add d
    nop
    sub b
    add b
    ret nz

    rst $38
    pop bc
    cp $48
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    rst $38
    nop

jr_059_5f84:
    rst $38
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
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ccf
    rra
    rst $38
    nop
    sbc [hl]
    or $f6
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    dec sp
    ld a, e
    rst $18
    ldh [$df], a
    db $e4
    sbc [hl]
    pop hl
    ld de, $00e2
    ldh a, [$80]
    ld [hl], b
    ld [$02f0], sp
    ld hl, sp+$46
    cp c
    ld [$65ff], sp
    sbc d
    inc sp
    call z, Call_059_7d8a
    inc de
    db $ec
    sub c
    xor $13
    db $ec
    nop
    inc hl
    nop
    inc bc
    nop
    ld [$0800], sp
    nop
    inc c
    nop
    inc hl
    nop
    inc bc
    nop
    rlca
    nop
    inc sp
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld l, b
    ld a, b
    add a
    cp a
    ld b, b
    adc e
    ld [hl], h
    nop
    rst $38
    or $ff
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
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
    cp a
    rst $38
    adc a
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
    cp a
    cp a
    ld a, a
    ld a, a
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nc, $feff

    cp $00
    pop bc
    nop
    ldh [$c0], a
    ldh [rP1], a
    ld hl, sp+$00
    cp h
    db $10
    ld hl, sp+$00
    add sp, $20
    ld hl, sp+$3d
    rst $38
    ld c, h
    ld a, a
    nop
    ld a, l
    nop
    ld [bc], a
    nop
    cp a
    cp $ff
    ld a, b
    rst $38
    rst $38
    nop
    ld [bc], a
    db $fd
    ld b, l
    cp d
    swap h
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld h, h
    rst $38
    ld [bc], a
    rst $38
    ld bc, $dffe
    jr nz, jr_059_60cd

    ld sp, hl
    db $10
    rst $38
    ret nc

    rst $38
    rst $38

jr_059_60cd:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld d, $ff
    rla
    rst $38
    dec bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $0aff
    rst $38
    nop
    rst $38
    dec b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add sp, -$01
    db $fc
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    cpl
    rst $38
    ccf
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
    ld bc, $00fb
    rst $28
    nop
    rst $38
    nop
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
    jr jr_059_6153

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_059_6163

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_059_6173

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_059_6183

    ld [hl-], a

jr_059_6153:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_059_6193

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_059_6163:
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

jr_059_6173:
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

jr_059_6183:
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

jr_059_6193:
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
    ld l, h
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
    ld l, h
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
    ld l, h
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
    jr jr_059_6256

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
    ld a, [bc]
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

jr_059_6256:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    ld a, [bc]
    ld b, $06
    ld b, $06
    nop
    ld bc, $0101
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld [bc], a
    ld bc, $0101
    ld bc, $0305
    inc bc
    ld bc, $0303
    inc bc
    inc b
    ld bc, $0601
    ld b, $01
    ld bc, $0101
    ld b, $03
    inc bc
    ld bc, $0501
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0306
    inc bc
    ld bc, $0505
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0300
    inc bc
    nop
    rlca
    rlca
    rlca
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0607
    dec b
    rlca
    rlca
    ld bc, $0601
    ld b, $06
    ld b, $04
    ld bc, $0101
    ld bc, $0707
    rlca
    ld bc, $0101
    ld bc, $0606
    dec b
    ld bc, $0101
    ld bc, $0101
    rlca
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

Call_059_62ff:
    ld bc, $0404
    ld b, $01
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    inc b
    inc b
    ld b, $01
    ld bc, $0101
    ld bc, $0701
    ld b, $05
    rlca
    rlca
    dec b
    dec b
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0701
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0105
    ld bc, $0101
    ld bc, $0607
    inc bc
    inc bc
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0701
    dec b
    inc bc
    rlca
    rlca
    ld bc, $0401
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0701
    dec b
    inc bc
    ld bc, $0707
    ld bc, $0404
    inc b
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld c, $0b
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    ld c, $0a
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld c, $0b
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld c, $0b
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0a
    ld a, [bc]
    ld c, $0a
    ld c, $09
    add hl, bc
    add hl, bc
    rrca
    ld c, $0b
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
    jp $c36c


    add h
    ld h, e
    ld e, d
    rst $20
    dec d
    rst $28
    ld l, b
    add a
    jr nz, @-$37

    sub d
    ld h, l
    nop
    rst $38
    rst $20
    db $10
    adc e
    ld [hl], b
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld [hl], h
    adc e
    ldh [$1f], a
    or c
    ld c, [hl]
    jr c, @-$37

    ld e, h
    inc bc
    ldh a, [rIF]
    cp b
    rlca
    ld [hl], b
    adc a
    and $1f
    ld h, b
    rra
    call c, Call_059_7003
    adc a
    ld h, b
    adc a
    ld d, h
    add e
    ld e, h
    and e
    ld d, b
    and a
    inc bc
    rst $38
    jr @-$17

    ret z

    nop
    ld b, d
    nop
    cp d
    ld b, b
    sbc d
    ld h, b
    di
    nop
    sbc b
    nop
    ld c, $00
    add e
    inc c
    nop
    rst $38
    ld b, b
    rst $38
    inc hl
    cp $41
    cp $0b
    db $f4
    add sp, $17
    rst $38
    nop
    ccf
    ret nz

    dec sp
    db $fc
    adc b
    ld [hl], a
    cp b
    ld b, a
    db $fd
    ld [bc], a
    ei
    inc b
    db $fd
    ld b, $f5
    ld a, [bc]
    rst $18
    jr nz, jr_059_6440

    ret nc

    ld c, e
    cp h
    or b
    ld c, a
    db $e3
    inc e
    ld c, a
    or b
    rst $30
    ld hl, sp-$23
    cp $53
    xor a
    ld b, e
    cp a
    ld a, $c7
    ld b, e
    db $fc
    ld [hl-], a
    call $c57b
    ld e, l
    and e
    ld e, $e3
    nop
    rst $38
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld bc, $0800
    and b
    ld e, l
    ld b, $f9
    db $10
    rst $38

jr_059_6440:
    dec c
    nop
    add b
    nop
    ret nz

    add b
    ld e, d
    nop
    xor c
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    jp nc, $40ff

    rst $38
    nop
    rst $38
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
    add b
    cp $40
    db $fd
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld [hl+], a
    rst $38
    ld bc, $82ff
    rst $38
    inc bc
    rst $38
    dec c
    rst $38

jr_059_6485:
    ld d, $ff
    rra
    rst $38
    dec a
    rst $38
    jr c, @+$01

    db $10
    rst $38
    jr nz, @+$01

    or b
    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    or h
    ld [hl], a
    add c
    ld [hl], $c1
    ld a, $c1
    sbc b
    rst $20
    sub b
    rst $28
    ld b, h
    ei
    ld b, b
    rst $38
    ld hl, $befe
    rst $38
    ld h, d
    sbc l
    jr c, jr_059_6485

    nop
    rst $38
    inc h
    rst $18
    ld b, b
    rst $38
    ld a, [bc]
    pop af
    ld c, [hl]
    or c
    ld b, $f9
    ld [hl], d
    rst $38
    add e
    ld a, h
    ld h, c
    sbc [hl]
    ld [hl], c
    adc [hl]
    add c
    cp $37
    ret z

    xor $00
    ld e, e
    and h
    ld d, b
    xor a
    ld e, c
    and a
    adc h
    add e
    dec c
    add e
    ld c, c
    add a
    add e
    rst $38
    ld h, c
    sbc a
    ld [hl], c
    adc a
    ld bc, $00ff
    rst $38
    rra
    ldh [$2c], a
    di
    jr nz, @+$01

    pop hl
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld a, [hl-]
    rst $38
    ld [hl], d
    adc a
    sub c
    ld l, [hl]
    jp nz, $af3f

    ld d, b
    rst $38
    db $10
    rst $10
    inc l
    db $fd
    ld [bc], a
    ccf
    ret nz

    xor a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    or [hl]
    ld c, c
    rst $38
    nop
    rst $38
    nop
    xor $11
    db $76
    ld sp, hl
    rrca
    ldh a, [$fe]
    ld bc, $00ff
    xor $1d
    call nz, $bb3b
    ld b, h
    ld h, a
    sbc b
    nop
    rst $38
    add b
    ld a, a
    ld c, d
    or l
    dec bc
    db $f4
    ld [$1af7], sp
    push hl
    nop
    rst $38
    call nz, $013b
    rst $38
    ld b, $ff
    sub e
    ld a, h
    rst $08
    jr nc, jr_059_65b0

    ld a, [$ff39]
    dec bc
    rst $38
    ld bc, $e900
    ld bc, $0079
    sub [hl]
    nop
    or $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$e0ff]
    rst $38
    nop
    cp $00
    cp $00
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
    ret nz

    rst $38
    ld [hl], b
    rst $38
    or b
    cp $f8
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    adc a
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld c, h
    rst $38
    ld [hl], $ff
    dec de
    rst $38
    inc c
    rst $38
    add [hl]
    rst $38
    jp $c0ff


    rst $38
    ld h, b
    inc h
    rra
    jr nz, @+$21

    db $10
    rrca
    db $10
    rrca
    nop
    rrca
    nop
    rrca
    ld [$0807], sp
    rlca

jr_059_65b0:
    ld [hl], b
    ld a, [$f800]
    ld b, b
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    ld d, b
    cp $08
    db $fc
    db $10
    cp $18
    rst $38
    ld [$00fe], sp
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ei
    inc b
    ld d, b
    adc a
    ld [hl+], a
    rst $18
    ret nc

    ld c, $64
    sbc [hl]
    ld b, b
    cp [hl]
    or b
    rst $38
    add e
    db $fc
    add h
    ld a, [$fe80]
    ld b, b
    rst $38
    pop bc
    ld a, $80
    ld a, a
    add b
    ld a, a
    ld [$36ff], sp
    ret


    nop
    rst $38
    add b
    rst $38
    ld b, [hl]
    cp c
    db $fc
    inc bc
    db $fd
    ld [bc], a
    xor a
    ld [hl], b
    db $10
    rst $38
    rst $38
    nop
    rra
    ldh [$fb], a
    inc b
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    ret nz

    dec hl
    call nc, $a15e
    db $fd
    inc bc
    ld e, c
    and [hl]
    db $dd
    ld [c], a
    ld c, a
    ldh a, [$3b]
    db $e4
    cp b
    ld h, a
    or a
    ld a, [hl]
    add hl, de
    and $94
    ld l, a
    rst $18
    jr nz, jr_059_66a2

    ret nz

    cp a
    ret nz

    ld a, a
    add b
    rlca
    ld hl, sp+$7f
    sbc b
    ld e, a
    cp a
    ld b, l
    cp a
    nop
    add sp, $00
    ldh [rP1], a
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    inc d
    db $eb
    ld b, b
    rst $38
    add b
    nop
    pop af
    ld b, b
    ldh a, [rP1]
    ld e, h
    ld [$0049], sp
    call nc, $ff00
    rst $38
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
    ld [hl-], a
    rst $38
    ld [bc], a
    ld a, a
    nop
    ei
    nop
    db $fd
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
    cp l
    rst $38
    sbc a
    rst $38
    ld a, e
    rst $38
    ld e, a
    rst $38
    ld e, [hl]
    rst $38
    rst $18
    rst $38
    ld a, e
    rst $38
    or h
    rst $38
    rst $18
    rst $38
    ld l, $ff
    rst $38
    rst $38
    ld a, d
    rst $38
    xor [hl]
    rst $38
    rst $18
    rst $38
    xor $ff
    rst $38
    cp $ff

jr_059_6691:
    cp $ff
    db $fc
    rst $38
    cp $ff

jr_059_6697:
    ld hl, sp-$01
    ld a, [$f0ff]
    rst $38
    ldh a, [rIE]
    pop hl
    nop
    rst $38

jr_059_66a2:
    nop
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    db $10
    rst $28
    jr jr_059_6697

    jr nz, jr_059_6691

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$fb04]
    inc b
    ei
    ld b, $f9
    db $10
    rst $28
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
    ld [bc], a
    db $fd
    ld b, $f9
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    inc hl
    call c, Call_059_50af
    adc a
    ld [hl], b
    ld bc, $877e
    ld a, b
    rrca
    jr nc, jr_059_66ee

    inc [hl]
    rlca
    jr c, jr_059_66ee

    jr c, @+$31

    db $10

jr_059_66ea:
    jr jr_059_66f3

    jr jr_059_66f5

jr_059_66ee:
    inc c
    inc de
    ld bc, $03e6

jr_059_66f3:
    db $ec
    adc a

jr_059_66f5:
    ld [hl], b
    rst $30
    ld [$f807], sp
    cp h
    ld b, e
    cp [hl]
    pop bc
    ld a, [$d705]
    ld [$708f], sp
    adc a
    ld [hl], b
    rst $38
    nop
    rst $18
    jr nz, jr_059_66ea

    jr nz, jr_059_674c

    ret nz

    ei
    inc b
    or h
    rrca
    add b
    ld a, a
    rst $28
    db $10
    rst $18
    jr nz, jr_059_6728

    ld hl, sp-$05
    inc b
    db $fd
    nop
    scf
    ret z

    rlca
    ld hl, sp-$0b
    ld a, [bc]
    rst $38
    ld bc, $03fc

jr_059_6728:
    rst $38
    nop
    db $fd
    nop
    ld [hl], a
    adc b
    ld [$00fd], a
    ld bc, $0400
    nop
    inc sp
    nop
    ld c, $00
    inc de
    nop
    ld b, $01
    rst $18
    ret nz

    ccf
    nop
    nop
    and b
    nop
    ld a, [bc]
    nop
    rrca
    ld bc, $000a
    ccf
    db $10

jr_059_674c:
    rst $38
    adc a
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
    ld e, a
    rst $38
    dec c
    rst $38
    nop
    db $eb
    rst $38
    rst $28
    rst $38
    sbc $ff
    add hl, hl
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    call c, $f0ff
    rst $38
    ld l, c
    cp $f3
    db $fc
    rst $10
    ld hl, sp-$6f
    cp $a7
    ld hl, sp-$02
    pop hl
    sbc h
    db $e3
    ld a, h
    add e
    cp a
    ret nz

    rst $38
    add b
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
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
    db $fc
    ld [bc], a
    ldh [rNR34], a
    add d
    ld a, h
    ld a, b
    add a
    dec d
    ld a, [$ef10]
    db $10
    rst $28
    db $10
    rst $28
    ld de, $11ee
    xor $11
    xor $19
    db $e4
    ld bc, $01fe
    cp $01
    cp $0e
    pop af
    dec bc
    db $f4
    dec c
    ld a, [c]
    add hl, bc
    or $01
    cp $01
    cp $01
    cp $00
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [hl-], a
    call $dd22
    inc hl
    call c, $ee11
    dec hl
    call nz, $8f70
    ret c

    daa

jr_059_67da:
    ret c

    daa
    pop af
    ld c, $d9
    ld h, $5c
    and e
    ld e, b
    and a
    ld hl, sp+$07
    cp $00
    ld hl, sp+$00
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    rst $20
    jr @+$01

    nop
    dec [hl]
    jp z, Jump_000_02fd

    xor $11
    rst $38
    nop
    ld l, a
    sub b
    rst $28
    db $10
    cp a
    ld b, b
    rst $38
    ld b, b
    cp [hl]
    ld b, b
    ld hl, sp+$00
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    pop de
    nop
    pop af
    ld c, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld hl, sp+$07
    rst $08
    jr nz, jr_059_67da

    ld h, b
    call nz, $f93f
    rlca
    db $db
    inc h
    ei
    inc b
    di
    inc b
    cp a
    ld [bc], a
    db $fc
    inc bc
    rst $38
    nop
    ld hl, sp+$07
    ccf
    ret nz

    nop
    rst $38
    nop
    ld c, $00
    cpl
    nop
    sbc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rrca
    inc bc
    nop
    sub h
    nop
    inc [hl]
    nop
    ld a, $14
    ld l, a
    ld a, [bc]
    and e
    ld bc, $00ac
    db $fc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    ld hl, sp-$04
    or b
    ld hl, sp+$00
    nop
    ld bc, $0700
    nop
    ld c, $00
    ld d, $00
    rrca
    nop
    ld a, $00
    ld l, a
    nop
    ld e, [hl]
    rst $38
    nop
    rst $38
    nop
    ld e, [hl]
    and c
    ldh a, [rIF]
    ret c

    ld h, $3c
    jp nz, Jump_000_20de

    ld a, [de]
    db $e4
    ld [de], a
    db $ed
    ld d, b
    xor a
    ldh a, [$0d]
    ldh a, [$09]
    nop
    ld hl, sp-$80
    ld a, b
    add b

jr_059_688d:
    ld a, b

jr_059_688e:
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop

jr_059_6899:
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$ed]

jr_059_68a1:
    nop
    adc a
    ld h, b
    rst $18
    jr nz, jr_059_68a1

jr_059_68a7:
    nop
    db $ed
    db $10
    db $ec
    db $10
    pop de
    jr nz, jr_059_688e

    jr nz, @-$38

    jr nc, jr_059_688d

    jr nz, @+$68

    db $10
    xor l
    ld d, b
    sbc $20
    db $dd
    ld [hl+], a
    add l
    ld [hl], d
    adc a
    ld [hl], b
    or a
    ld b, b
    ld e, a
    and b
    rra
    ldh [$df], a
    jr nz, jr_059_68a7

    jr nz, jr_059_6899

    jr nc, @+$58

    and b
    xor a
    nop
    nop
    rst $38
    ld hl, $40de
    cp a
    add d
    ld a, l
    ld [bc], a
    db $fd
    inc h
    db $db
    rlca
    ld hl, sp+$2d
    ret nc

    db $fc
    nop
    rst $38
    nop
    sbc e
    nop
    rrca
    nop
    ld a, [hl]
    ld bc, $03bc
    ret nz

    ld c, $80
    ld a, a
    or $00
    and a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_059_68fa:
    cp $00
    adc a
    nop
    ld h, $00
    ret c

    jr nz, jr_059_68fa

    ld [$0083], sp
    add c
    nop
    pop bc
    nop
    add [hl]
    ld b, c
    ld e, a
    add b
    adc h
    nop
    db $fd
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    add b
    add d
    ld bc, $00ff
    xor a
    ldh a, [$7f]
    ret nz

    ld sp, hl
    rlca
    cp $01
    cp $01
    ld a, [c]
    rrca
    cp a

jr_059_6929:
    ld b, b
    rst $18
    jr nz, jr_059_69ac

    ldh a, [$ce]
    ld sp, $0000
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    daa
    ret c

    ld [$00f0], sp
    ld hl, sp+$00
    db $fd
    nop
    ldh a, [$c0]
    ldh a, [$a0]
    ldh a, [$80]
    db $e3
    add b
    add [hl]
    sbc a
    ldh [$38], a
    rst $00
    ld a, b
    add a
    ld a, a
    add b
    ld a, a
    add b
    db $fd
    ld [bc], a
    di
    inc c
    ld a, e
    add h

jr_059_6960:
    cp $00
    ld d, $e8
    inc a
    ret nz

    db $e4
    jr jr_059_6929

    ld [hl], $b0
    ld b, a
    add b
    ld a, [hl]
    ret nz

    ld a, $c0
    ld c, $00
    add $c0
    ld h, $80
    ld c, c
    nop
    ld b, b
    nop
    jr nz, jr_059_697d

jr_059_697d:
    ld a, [hl+]
    nop
    db $10
    ld [hl], l
    adc d
    ld [hl], e
    adc h
    scf
    ret z

    add hl, sp
    add $cd
    ld [hl-], a
    ret z

    scf
    add sp, $17
    db $ed
    ld [de], a
    rst $38
    nop
    di
    inc c
    rst $38
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
    jr nz, jr_059_6960

    rra
    sbc a
    ccf
    ld e, a
    rra
    rst $38
    rra
    ld e, c
    rra
    ld l, e
    rra

jr_059_69ac:
    ld c, c
    rra
    add hl, bc
    rra
    ld a, c
    rrca
    adc c
    rra
    add hl, hl
    rra
    ld l, c
    rrca
    add hl, de
    adc a
    ld e, b
    rrca
    ld [$ea0d], a
    dec c
    ld [hl], b
    dec c
    ld [hl-], a
    dec c
    adc d
    dec d
    or a
    inc c
    ld c, [hl]
    dec [hl]
    adc [hl]
    dec d
    inc d
    daa
    inc a
    rlca
    ld h, h
    rla
    ld c, $27
    and $0f
    inc hl
    rra
    ld bc, $107f
    ld a, a
    nop
    rst $38
    rst $18
    jr z, jr_059_69e1

jr_059_69e1:
    nop
    ld c, $00
    rra
    nop
    ld a, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc h
    ld [hl], e
    ld e, $00
    inc b
    nop
    cp $00
    adc [hl]
    nop
    halt
    ld a, c
    ld b, $f4
    nop
    ld b, d
    nop
    rlca
    nop
    ld [hl], c
    add b
    cp $00
    rst $38
    nop
    adc a
    nop
    rst $38
    nop
    ld bc, $0100
    nop
    pop bc
    nop
    rst $30
    nop
    dec l
    ld [bc], a
    ccf
    nop
    ld a, a
    add b

jr_059_6a1a:
    db $e3
    inc e
    or $09
    xor b
    rla
    ld c, a
    or b
    ld e, a
    and b
    ld [hl], a
    adc b
    rra
    ldh [$d1], a
    ld a, $af
    db $10
    rst $38
    nop
    sbc a
    ld h, b
    inc b
    db $10
    ret c

    jr nz, @+$01

    nop
    ld sp, hl
    ld b, $e7
    jr jr_059_6a1a

    jr nz, @+$01

    nop
    ret


    ld [hl], $d5
    ld a, [hl+]
    rst $10
    jr z, @-$09

    ld a, [bc]
    nop
    cp $9a
    ld h, h
    ret c

    jr nz, @-$46

    ld b, b
    cp b
    ld b, b
    ldh a, [rP1]
    db $10
    ldh [rOBP0], a
    or b
    ld b, b
    or b
    sub b
    ld h, b
    and b
    ld b, b
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

jr_059_6a76:
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $18
    jr nz, jr_059_6a76

    ld [$00ff], sp
    pop af
    ld c, $fc
    inc bc
    rst $18
    jr nz, @+$01

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
    adc a
    ld [hl], b
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$faff]
    rst $38
    db $fc
    rst $38
    db $fd
    cp $d8
    rst $38
    ret z

    rst $38
    ret z

    or $c0
    cp $f1
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$40
    ld hl, sp-$40
    db $fc
    ldh [$fc], a
    ldh a, [$ec]
    ret nz

    db $ec
    pop hl
    cp $e0
    rst $38
    ldh [rIE], a
    db $e4
    ei
    pop hl
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, $ff
    and b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    add hl, de
    db $e4
    ld a, a
    add b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    add e
    nop
    db $fd
    nop
    rla
    nop
    ld [hl], b
    nop
    ret nz

    nop
    nop
    nop
    ld b, b
    nop
    add hl, de
    nop
    pop af
    nop
    rra
    nop
    ccf
    nop
    pop hl
    nop
    ei
    nop
    dec hl
    nop
    ldh [rP1], a
    ld sp, hl
    nop
    nop
    nop
    sub b
    nop
    rst $38
    nop
    ldh a, [rP1]
    or b
    nop
    ldh a, [rP1]
    db $fd
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld b, e
    db $fc
    ret z

    ccf
    rst $38
    nop
    cp a
    ld b, b
    rra
    ldh [$9f], a
    ld [hl], b
    rst $38
    nop
    ld hl, sp+$00
    cp $00
    nop
    nop
    nop
    ld [bc], a
    ldh a, [rP1]
    add b
    ld h, b
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    nop
    ret nz

    rst $18
    jr nz, @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    di
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
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
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    pop hl
    ld e, $eb
    inc d
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
    ei
    nop
    dec b
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    dec e
    ld [bc], a
    ccf
    nop
    or $09
    ld a, h
    inc bc
    ei
    inc b
    ei
    inc b
    ld a, d
    add l
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [hl+]
    pop bc
    nop
    nop
    add b
    nop
    inc e
    nop
    inc c
    cp b
    inc c
    ld hl, sp+$7e
    ld hl, sp+$1d
    db $fc
    ld c, b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$7c
    add e
    rst $38
    nop
    rst $38
    nop
    jp $e700


    nop
    rst $38
    nop
    ld a, a
    nop
    rst $28
    nop
    xor a
    nop
    ldh [rP1], a
    add b
    nop
    ld [hl], b
    nop
    nop
    nop
    cp c
    nop
    add a
    nop
    ld a, [$1f04]
    nop
    db $fd
    nop
    rst $38
    nop
    nop
    nop
    db $fd
    nop
    rst $28
    nop
    jp hl


    nop
    or $00
    ld l, a
    db $10
    di
    ld [$001f], sp
    ccf
    nop
    rst $20
    nop
    ld d, e
    and b
    cp $00
    ldh a, [rP1]
    call nc, $a900
    nop
    ld [hl], e
    add b
    db $db
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $18
    nop
    db $fc
    nop
    ld a, a
    nop
    pop af
    nop
    push af
    nop
    cp a
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fd
    nop
    db $fc
    nop
    push de
    nop
    rst $10
    nop
    rst $28
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    and [hl]
    nop
    rst $08
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
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
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $38
    nop
    rst $10
    nop
    rst $18
    nop
    push bc
    nop
    ret


    nop
    ei
    nop
    db $fd
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
    cp a
    nop
    ld a, h
    add e
    push af
    ld a, [bc]
    cp e
    ld b, h
    cp c
    ld b, [hl]
    db $f4
    dec bc
    ld l, $d1
    cp $01
    dec de
    db $e4
    ld [hl], $c9
    rrca
    ldh a, [rNR22]
    add sp, $0f
    ldh a, [rNR22]
    add sp, $45
    cp d
    rst $28
    db $10
    or [hl]
    ld c, b
    cp $00
    ei
    nop
    ld [$d000], a
    nop
    cp b
    nop
    nop
    nop
    dec c
    rst $38
    adc e
    rst $38
    nop
    rst $38
    ld a, [de]
    push hl
    call nz, $a23b
    ld e, l
    ld [hl], e
    adc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    jr nz, @+$01

    nop
    rst $38
    nop
    adc e
    nop
    xor a
    nop
    ldh a, [rP1]
    ei
    nop
    ld d, c
    nop
    rst $08
    nop
    jp $0600


    nop
    db $fd
    nop
    xor e
    db $10
    ld sp, hl
    nop
    ld a, e
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    adc b
    nop
    inc c
    nop
    ldh a, [rDIV]
    sbc h
    nop
    or h
    ld [$00fe], sp
    xor $00
    ldh a, [rP1]
    ei
    nop
    sbc l
    nop
    ld c, a
    add b
    rst $38
    nop
    ei
    nop
    ld [hl], b
    nop
    ld sp, hl
    nop
    ld [hl], d
    nop
    ld [hl-], a
    nop
    ld hl, sp+$00
    db $f4
    nop
    ld a, [c]
    nop
    cp c
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rst $18
    nop
    add d
    nop
    ld a, [hl]
    nop
    ei
    nop
    db $fc
    nop
    push af
    nop
    push af
    nop
    rst $38
    nop
    db $eb
    nop
    xor $00
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld e, a
    nop
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
    nop
    cp a
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $28
    nop
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
    rst $18
    nop
    sub a
    nop
    rst $38
    nop
    sbc e
    nop
    rst $18
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
    pop hl
    ld e, $f6
    add hl, bc
    jp c, $fd25

    ld [bc], a
    cp a

jr_059_6d79:
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    rra
    ldh [rIE], a
    nop
    rst $28
    db $10
    rst $18
    jr nz, jr_059_6d9e

    add sp, -$49
    ld c, b
    rst $00

jr_059_6d8b:
    jr c, jr_059_6d8b

    nop
    ldh a, [$0c]
    nop
    inc bc
    db $10
    rst $20
    add b
    ld a, a
    and b
    ld e, a
    jr nz, jr_059_6d79

    nop
    rst $38
    nop
    rst $38

jr_059_6d9e:
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $d4ff
    ccf
    adc c
    db $76
    add a
    ld a, b
    adc $31
    or a
    ld c, b
    di
    inc c
    rst $38
    nop

jr_059_6db2:
    rst $18
    jr nz, jr_059_6db2

    ld [bc], a
    rst $38
    nop
    cp $00
    cp $00
    ccf
    nop
    jr jr_059_6dc0

jr_059_6dc0:
    add b
    nop
    ret nz

    nop
    ld [$cf80], sp
    nop
    and a
    nop
    rst $30
    ld [$00fc], sp
    ret c

    nop
    ld hl, sp+$00
    rst $38
    nop
    ld a, a
    add b
    inc sp
    ret nz

    jr nz, jr_059_6dda

jr_059_6dda:
    jr c, jr_059_6ddc

jr_059_6ddc:
    inc hl
    nop
    ld b, b
    nop
    jr nz, jr_059_6de2

jr_059_6de2:
    jr nc, jr_059_6de4

jr_059_6de4:
    ld a, a
    nop
    rst $38
    nop
    ld a, [de]
    nop
    inc e
    nop
    rst $38
    nop
    rst $30
    nop
    jr nz, jr_059_6df2

jr_059_6df2:
    cp d
    nop
    scf
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    nop
    add b
    nop
    add a
    nop
    inc bc
    nop
    add hl, bc
    ld b, $0b
    inc b
    dec de
    inc b
    rrca
    db $10
    rla
    ld [$0817], sp
    inc de
    inc c
    ld de, $1f0e
    nop
    rrca
    db $10
    rrca
    db $10
    rra
    nop
    dec bc
    inc d

jr_059_6e1c:
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    rra
    jr nz, jr_059_6e58

    jr nz, @+$41

    nop
    rra
    jr nz, jr_059_6e7e

    nop
    ccf
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
    scf
    ld c, b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ld a, a
    nop

jr_059_6e58:
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    nop
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
    rst $38
    nop
    rst $18
    jr nz, @+$09

    ldh a, [$bf]
    ld b, b
    rrca
    ldh a, [$cb]
    jr nc, jr_059_6e1c

    ld h, b

jr_059_6e7e:
    and a
    ld e, b
    rst $28
    db $10
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    ei
    nop
    and a
    ld b, b
    jp z, Jump_000_2210

    ld e, l
    jr z, @+$59

    ld [hl], h
    add e
    db $10
    rst $28
    inc b
    ei
    inc d
    ei
    rst $38
    rst $38
    cp a
    rst $38
    inc d
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    db $f4
    dec bc
    cp [hl]
    ld b, c
    rst $38
    nop
    ld a, [$f701]
    ld [$00ff], sp
    rst $28
    nop
    ld [hl], $00
    ldh a, [rP1]
    ld b, e
    nop
    nop
    nop
    add hl, de
    nop
    ld [$be00], sp
    nop
    rlca
    nop
    db $ec
    nop
    ld b, a
    nop
    di
    nop
    inc de
    nop
    ret nz

    nop
    rst $38
    nop
    rst $08
    nop
    nop
    nop
    ld b, b
    nop
    ld hl, sp+$00
    inc a
    nop
    ld a, [bc]
    inc b
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    inc de
    nop
    inc b

jr_059_6eeb:
    ld bc, $00e4
    ret z

    ld b, $cf
    nop
    ld h, a
    nop
    di
    nop
    ei
    nop
    ld c, a
    nop
    dec d
    nop
    jr jr_059_6efe

jr_059_6efe:
    jr nc, jr_059_6f00

jr_059_6f00:
    ld de, $ff00
    nop
    ld a, [hl]
    add c
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    nop
    nop
    ld bc, $0301
    ccf
    jr nz, jr_059_6f37

    nop
    ccf
    dec [hl]
    ccf
    cpl
    ccf
    ld bc, $cb3f
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    cp a

jr_059_6f29:
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    cp a
    ld a, a
    db $db
    ccf
    ret nc

jr_059_6f37:
    jr c, jr_059_6f29

    jr c, jr_059_6eeb

    ld [hl], d
    ret nc

    add hl, sp
    ret c

    add hl, sp
    or b
    ld a, d
    cp b
    ld a, e
    sbc b
    ld a, d
    ret c

    ccf
    ret c

    dec sp
    ret c

    ccf
    cp c
    ld a, a
    ld hl, sp+$3d
    cp d
    ld a, a
    reti


    ccf
    sbc d
    ld a, a
    cp c
    ld a, a
    cp d
    ld a, a
    cp l
    ld a, a
    sbc l
    ld a, a
    jp c, $dd3f

    ccf
    db $fd
    ccf
    rst $38
    ld a, a
    ld a, a
    cp a
    rst $18
    ccf
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    nop
    ld a, $00
    ccf
    nop
    inc sp
    dec b
    inc sp
    or b
    ld b, a
    nop
    daa
    ld de, $4807
    scf
    ld bc, $019f
    ccf
    dec hl
    rla
    ld hl, $011f
    ld a, a
    nop
    rst $38
    ld de, $1aff
    rst $30
    adc c
    ld [hl], a
    ld l, a
    rst $38
    cpl
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
    cp a
    rst $38
    scf
    rst $38
    nop
    rst $38
    or d
    ld c, l
    ldh a, [rIF]
    ldh [$1f], a
    call z, Call_059_7733
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor $01
    ld a, a
    nop
    db $d3
    nop
    adc a
    nop
    ld [$8000], a
    nop
    jr nz, jr_059_6fc8

jr_059_6fc8:
    and b
    nop
    add a
    nop
    rst $08
    jr nc, @-$5b

    nop
    stop
    rrca
    nop
    rlca
    nop
    ld sp, hl
    nop
    rst $38
    nop
    ccf
    nop
    ld sp, $3f00
    nop
    ret nc

    jr nz, jr_059_7013

    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$0e

    nop
    ld a, $00
    adc d
    ld a, a
    ld [c], a
    rra
    ld hl, sp+$07
    rst $38
    nop
    ei
    nop
    and h
    ld b, c
    daa
    ld b, b
    ld e, e
    nop
    nop
    nop
    pop hl

Call_059_7003:
    nop
    ld e, a
    and b
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
    cp a

jr_059_7013:
    ld b, b
    ld h, b
    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    ld a, [$beff]
    rst $38
    push hl
    rst $38
    jr nc, jr_059_7022

jr_059_7022:
    rst $28
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    add sp, -$01
    rst $38
    rst $08
    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    pop de

jr_059_703b:
    ld l, a
    pop bc
    ld a, a
    db $10
    rst $28
    ld hl, $10ff
    rst $28
    nop
    rst $38
    ld [$c1f7], sp
    ld a, a
    jr nc, jr_059_703b

    ld b, b
    rst $38
    jr z, @-$07

    ld [c], a
    ld a, a
    ld e, c
    rst $30
    xor [hl]
    ei
    ld d, l
    rst $38
    and d
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    cp c
    rst $38
    ld d, h
    rst $38
    ld [hl], l
    rst $38
    push af
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$fdff]
    rst $38
    ld a, [$0fff]
    rst $38
    ld [hl], e
    rst $38
    jp $c7ff


    rst $38
    xor $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl+]
    rst $38
    ld h, a
    rst $38
    add h
    rst $38
    add hl, de
    and $74
    adc e
    xor $11
    ei
    inc b
    ei
    inc b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rlca
    nop
    rst $30
    nop
    ld c, b
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    add hl, sp
    ld b, $ee
    db $10
    rst $18
    jr nz, @+$01

    nop
    ei
    nop
    ld a, a
    nop
    ld sp, hl
    nop
    rst $30
    ld [$00ff], sp
    ld sp, hl
    nop
    rlca
    nop
    rlca
    nop
    pop bc
    nop
    ld a, [$3f01]
    nop
    rst $20
    nop
    ld l, a
    db $10
    ccf
    nop
    ccf
    ret nz

    ld a, a
    add b
    ld b, c
    cp [hl]
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    rst $08
    jr nc, @+$03

    ld bc, $1f1f
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    nop
    ld bc, $1000
    adc b
    db $76
    ld [$60f6], sp
    rst $38
    dec l
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld l, d
    nop
    rrca
    inc b
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld hl, sp+$5f
    nop
    rrca
    nop
    sbc a
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
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    db $e3
    db $fc
    dec hl
    db $f4
    or $f8
    ei
    db $f4
    and $f8
    and e
    db $fc
    sbc $f0
    rst $20
    ld hl, sp-$34
    ld a, [c]
    add $f8

Call_059_7186:
    sbc l
    ldh a, [$8f]
    ldh a, [$c6]
    ldh a, [$9e]
    ldh [$b9], a
    ld [c], a
    ld b, $f0
    adc h
    ldh a, [$ce]
    ldh a, [$ce]
    ldh a, [$da]
    ldh a, [$85]
    ld a, [c]
    db $db
    ldh [$c6], a
    ldh a, [$cb]
    ldh a, [$d5]
    add sp, -$2c
    ldh [$ec], a
    pop af
    push af
    ld hl, sp+$2a
    db $fc
    sub b
    db $fc
    jr nz, @-$04

    ld c, b
    or a
    rst $30
    ld [$22fd], sp
    ld c, h
    or e
    jp nz, $5b3d

    and h
    db $dd
    ld [hl+], a
    rst $28

Jump_059_71bf:
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld [hl], l
    ld [bc], a
    cp a
    ld b, b
    db $fd
    nop
    adc a
    ld [hl], b
    rst $38
    nop
    rst $28
    db $10
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
    sbc h
    inc bc
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    cp e
    ld b, h
    cp $01
    ld e, a
    ldh [$97], a
    ld l, b
    db $db
    daa
    pop bc
    ld a, $87
    ld hl, sp+$0d
    ld a, [c]
    rrca
    ldh a, [$dc]
    rst $38
    cp $01

Jump_059_7200:
    nop
    nop
    ret nz

    ret nz

    add b
    ld a, [hl]
    ld d, l
    xor d
    inc de
    db $ec
    rrca
    ldh a, [rIF]
    ldh a, [$3f]
    ret nz

    ld [hl], a
    adc b
    rla
    add sp, -$02
    ld a, c
    add hl, de
    xor $05
    rst $38
    rlca
    rst $38
    db $d3
    rst $38
    ei
    rst $38
    ld [hl], $00
    di
    nop
    cp $78
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rst $18
    rst $08
    rst $38
    add $ef
    ld b, h
    ld [c], a
    pop hl
    ldh a, [$d2]
    ld hl, sp-$20
    ld hl, sp-$24

jr_059_723f:
    ld hl, sp-$4a
    db $fc
    or h
    db $fc
    db $f4
    cp $f4
    cp $da
    cp $d2
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    call z, $c5ff
    rst $38
    adc $ff
    xor $ff
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    jr c, @+$07

    ld d, d
    dec c
    and d
    dec e
    ld [hl], $09
    ld [hl+], a
    dec e
    ld d, d
    dec c
    or [hl]
    add hl, bc
    db $eb
    nop
    ret nc

    rrca
    inc d
    dec bc
    rst $38
    nop
    ld a, h
    inc bc
    ret c

    inc bc
    call c, $e003
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld [c], a
    dec e
    add e
    inc a
    pop af
    ld c, $db
    inc h
    or e
    inc c
    ld [hl], c
    ld c, $52
    dec c
    db $f4
    add hl, bc
    db $76
    add hl, bc
    rst $18
    jr nz, jr_059_723f

    add hl, hl
    or a
    ld [$08f7], sp
    ld a, [$8f01]
    ld b, b
    rst $08
    nop
    rst $20
    jr jr_059_730a

    xor h
    ld e, l
    and d
    db $fc
    inc bc
    rst $38
    nop
    ld a, c
    add [hl]
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    or a
    ld b, b
    db $fc
    inc bc
    cp a
    ld b, b
    cp c
    ld b, [hl]
    db $db
    inc h
    cp a
    ld b, b
    sbc $21
    ld a, [hl]
    ld bc, $00ff
    sub e
    ld l, h
    ld sp, hl
    ld b, $ff
    nop
    ld a, a
    add b
    cp a
    ld h, b
    jp hl


    ld d, $ef
    db $10
    rst $38
    nop
    rst $38
    nop
    ei
    inc e
    and b
    ld a, a
    adc b
    ld [hl], a
    rst $08
    jr nc, @+$21

    ldh a, [$8e]
    ld a, a
    ldh [$1f], a
    rst $28
    db $10
    ld sp, hl
    ld c, $c6
    ccf
    db $e3

jr_059_72ff:
    rst $38
    ld b, b
    ld b, c
    nop
    nop
    nop
    ret nz

    rlca
    ld hl, sp-$1b
    ld a, [de]

jr_059_730a:
    ret c

    daa
    ldh a, [rIF]
    xor $11
    rst $18
    jr nz, @+$01

    nop
    ld a, l
    add d
    jr jr_059_72ff

    jr nz, @+$01

    add c
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ld a, b
    nop
    adc d
    nop
    and b
    nop
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
    ccf
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    db $db
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $28
    rra
    rra
    rra
    dec bc
    rra
    dec bc
    rra
    rrca
    rra
    add [hl]
    rrca
    ld b, a
    rrca
    rst $00
    rrca
    ld h, a
    adc a
    scf
    adc a
    adc $87
    xor e
    rst $00
    add $c7
    call $d5c7
    rst $20
    xor $f7
    push af
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    or h
    rst $38
    cp d
    rst $38
    adc $ff
    nop
    rst $38
    inc h
    db $db
    inc b
    ei
    ld c, h
    or e
    adc h
    ld [hl], e
    inc c
    di
    ld b, $f9
    sbc [hl]
    ld h, c
    rlca
    ld hl, sp+$00
    rst $38
    add b
    ld a, a
    ld h, d
    sbc l
    ld a, [hl-]
    push bc
    db $10
    rst $28
    adc b

jr_059_738d:
    ld [hl], a
    db $10
    rst $28
    jr c, @-$37

    nop
    rst $38
    db $10
    rst $28
    ret nc

    cpl
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    inc hl
    call c, Call_059_5ea1
    jp $fa1c


    dec b
    ld a, [$ba05]
    dec b
    ld a, b
    add a
    cp b
    ld b, a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    cp b
    ld b, a
    xor l
    ld d, d
    adc l
    ld [hl], d
    inc c
    add e
    ret z

    inc bc
    ldh [rNR13], a
    ldh a, [$03]
    jr c, jr_059_738d

    cp $01
    dec bc
    db $f4

jr_059_73ce:
    rst $38
    nop
    cp $01
    rst $08
    jr nc, @+$01

    nop
    sbc a
    ld h, b
    rst $10
    jr c, jr_059_73ce

    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    scf
    ret z

    rst $38
    inc c
    pop af
    ld c, $7b
    add [hl]
    rst $38

jr_059_73eb:
    inc a
    ld a, b
    add a
    db $fd
    inc bc
    cp $01
    rst $38
    ld bc, $817f
    ld [hl], $f9
    di
    ld c, $e4
    dec de
    or $09
    db $eb
    sub h
    nop
    rst $38
    nop
    nop
    nop
    nop
    add b
    nop
    ld a, d
    add l
    jr nz, jr_059_73eb

    ld b, b
    cp a
    adc e
    ld [hl], h
    nop
    add sp, $00
    ld e, e
    nop
    add [hl]
    jr nz, @-$22

    jr z, @-$27

    nop
    rst $38
    ret nz

    rst $38
    inc e
    rst $38
    rlca
    nop
    ld [bc], a
    nop
    ld [hl], l
    nop
    ld e, a
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $08
    rst $38
    ld [bc], a
    rst $38
    nop
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
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    ld d, a
    rst $38
    rst $18
    rst $38
    ld l, e
    rst $38
    db $fd
    rst $38

jr_059_7462:
    ld [hl], h
    rst $38
    ld [hl], a
    rst $38

jr_059_7466:
    ld e, a
    rst $38
    dec a
    rst $38
    ld l, $ff
    xor d
    rst $38
    di
    rst $38
    ld [$01f6], sp
    cp $01
    cp $02
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$34
    ret z

    inc b
    ld hl, sp+$06
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [$30]
    ret nz

    ld d, b
    and b
    ld d, b
    and b
    ld [hl], b
    add b
    db $10
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    jr nc, jr_059_7462

    nop
    ret nz

    jr jr_059_7466

    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld c, $7f
    ld c, h
    ccf
    ld l, h
    rra
    add sp, $1f
    xor e
    ld e, a
    jr nz, jr_059_750b

    ret z

    rlca
    ld e, b
    rlca
    ldh a, [rIF]
    or b
    ld c, a
    adc l
    ld [hl], d
    sbc l

jr_059_74c7:
    ld h, d
    ld b, d
    db $fd
    xor b
    ld a, a
    cp a
    ld b, b
    db $e3
    rra
    ld a, h
    add e
    db $fc
    inc bc
    rst $38
    nop
    ld c, a
    or b
    call nc, $ff2b
    nop
    rst $38
    nop
    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $30
    ld [$0ff0], sp
    and c
    ld e, a
    ld a, [hl]
    add c
    scf
    ret z

    xor b
    ld [hl], a
    ld h, c
    sbc [hl]
    xor l
    rst $10
    jr nc, jr_059_74c7

    or e
    ld c, h
    reti


    and $fd
    db $e3
    cp l
    ld a, e
    ret nz

    ldh a, [rP1]
    ld [hl], a
    nop
    ld a, c
    ld [$721d], sp
    adc l
    add c

jr_059_750b:
    ld a, [hl]
    rst $18
    jr nz, @+$01

    nop
    nop
    and b
    nop
    nop
    nop
    and b
    add b
    add b
    ld h, b
    ld h, e
    dec [hl]
    di
    dec c
    rst $38
    adc [hl]
    rst $38
    rst $08
    inc bc
    rst $10
    nop
    adc c
    nop
    jp hl


    ld b, b
    ld a, [$ffe0]
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
    ld a, a
    rst $38
    ld a, e
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    xor a
    rst $38
    rst $08
    rst $38
    ld h, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor c
    cp $18
    rst $30
    ld hl, $a6fe
    ld a, c
    ld bc, $28fe
    rst $38
    ld b, [hl]
    cp c
    or [hl]
    add hl, bc
    and h
    dec de
    call nz, $d63b
    ccf
    pop hl
    rra
    add sp, $07
    ld d, b
    adc a
    add $39
    adc h
    ld [hl], e
    rst $28
    nop
    call nc, $c803
    rlca
    ret z

    rlca
    inc a
    rst $08
    ld b, h
    cp e
    db $fc
    inc bc
    ret c

    daa
    add hl, sp
    rst $00
    db $10
    rst $28
    sbc [hl]
    nop
    jp nc, Jump_059_7a0c

    inc b
    nop
    rst $38
    inc h
    ei
    ld c, $f1
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$35
    ld a, [$fc13]
    ld [hl], $ff
    db $10
    rst $38
    add b
    ld a, a
    dec h
    cp $02
    rst $38
    call z, $9e33
    pop hl
    sub c
    ld l, [hl]

jr_059_75d2:
    rst $38
    nop
    ei
    inc b
    cp $01
    ld bc, $f0fe
    rrca
    cp $01
    rst $30
    nop
    dec bc
    ldh a, [$e3]
    inc e
    db $fd
    ld [bc], a
    cp $01
    nop
    rst $38
    ld bc, $affe
    ret nc

    rst $38
    nop
    cp c
    ld a, [hl]
    ld h, b
    rst $38
    ld l, a
    ldh a, [rTAC]
    ld hl, sp-$3e
    ccf
    pop af
    ld c, $41
    cp $81
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    ld [$7e3f], sp
    add c
    add hl, de
    and $20
    rst $18
    ld b, b
    cp a
    nop
    ld a, $00
    ld c, c
    nop
    add d
    nop
    add l
    nop
    rrca
    ld a, [bc]
    push af
    ld b, b
    rst $38
    adc d
    rst $38
    pop de
    nop
    ldh [rP1], a
    ld [hl], b
    ld b, b
    ld a, [hl+]
    jr nz, jr_059_75d2

    nop
    rst $38
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $18
    rst $38
    add e
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    ld [$ff00], a
    nop
    db $fc
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
    inc c
    cp $08
    cp $08
    cp $b9
    ld a, [hl]
    ld [hl], b
    rst $38
    adc e
    ld [hl], h
    inc c
    di
    ld a, [bc]
    push af
    ld h, d
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$1e
    db $fd
    ld h, c
    cp $24
    ei
    ret c

    rst $38
    rlca
    ld hl, sp+$42
    db $fd
    inc c
    ei
    ld c, e
    rst $38
    cp h
    rst $38
    ld a, c
    or $61
    cp $62
    db $fd
    ld b, b
    rst $38
    rra
    ldh [$7b], a
    add b
    ld e, a
    and b
    ld a, [hl+]
    pop af
    ld [hl+], a
    db $fd
    ld h, l
    ld a, [de]
    db $e4
    dec de
    rst $20
    ld e, $1c
    rst $38
    xor [hl]
    db $fd
    inc c
    rst $38
    sbc b
    ld a, a
    jr @+$01

    dec h
    cp $fb
    inc b
    or d
    ld c, l
    ld sp, $90cf
    rst $28
    dec l
    jp nz, $c4a9

    add hl, sp
    ret nz

    ld b, $f9
    ld b, $ff
    ld bc, $34ff
    ei
    cp c
    halt
    rst $38
    rla
    add sp, -$30
    cpl
    ld l, a
    sub b
    ld b, b
    cp a
    cp h
    ld b, e
    sbc [hl]
    ld h, c

jr_059_76d2:
    sub c
    ld a, [hl]
    rst $00

jr_059_76d5:
    jr c, jr_059_76d2

    inc b
    cp [hl]
    pop bc
    ld [bc], a
    db $fd
    ld h, d
    sbc l
    or $0f
    db $76
    adc c
    sbc l
    and $8c
    ld [hl], e
    rst $38
    nop
    dec de
    db $e4
    sbc [hl]
    ld a, a
    db $fd
    ld [bc], a
    ld a, a
    add b
    add b
    ret nz

    nop
    pop hl
    nop
    rst $28
    nop
    cp a
    ld [$80f7], sp
    ld a, a
    ld b, $f9
    adc a
    ld [hl], b
    inc b
    db $ec
    ld b, $c6
    inc c
    xor $00
    and d
    nop
    rst $08
    daa
    rst $18
    jr c, jr_059_76d5

    nop
    rst $38
    ret nz

    nop
    dec e
    nop
    rrca
    nop
    add c
    nop
    db $db
    nop
    ld a, a
    inc d
    rst $38
    rst $38
    rst $38
    rst $38

Jump_059_7720:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    dec hl
    ld a, a
    dec b
    ld a, a
    nop
    rst $18
    rst $38
    rst $38

Call_059_7733:
    rst $38
    rst $38
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
    rst $38
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    nop
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_059_779d

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_059_77ad

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_059_77bd

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_059_77cd

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_059_779d:
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

jr_059_77ad:
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

jr_059_77bd:
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

jr_059_77cd:
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
    nop
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
    ld [$a6eb], a
    and [hl]
    db $ec
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
    jr jr_059_7890

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
    jr nc, jr_059_78c0

    ld [hl-], a

jr_059_7890:
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld bc, $0101
    ld bc, $0404
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_059_78c0:
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld b, $02
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld b, $03
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0405
    inc b
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0105
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    nop
    ld b, $00
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0405
    inc b
    nop
    inc bc
    ld bc, $0606
    dec b
    rlca
    rlca
    ld bc, $0101
    ld bc, $0001
    inc b
    nop
    ld b, $02
    inc bc
    ld b, $01
    ld bc, $0706
    ld bc, $0107
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld b, $01
    ld bc, $0501
    ld bc, $0707
    rlca
    rlca
    nop
    nop
    nop
    ld b, $03
    inc bc
    ld [bc], a
    ld bc, $0101
    dec b
    ld bc, $0007
    nop
    rlca
    ld [bc], a
    ld b, $00
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0701
    rlca
    rlca
    dec c
    ld c, $0d
    ld [$0e08], sp
    ld c, $0e
    ld c, $0b
    dec bc
    add hl, bc
    dec c
    rrca
    add hl, bc
    rrca
    dec bc
    dec bc
    ld c, $0a
    ld c, $08
    ld [$080e], sp
    ld c, $09
    add hl, bc
    dec c
    rrca
    add hl, bc
    rrca
    dec bc
    dec c
    ld [$080e], sp
    ld [$080e], sp
    ld [$0e08], sp
    add hl, bc
    ld c, $0f
    rrca
    rrca
    dec bc
    dec c

jr_059_79cf:
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
    rst $38
    nop

jr_059_79e3:
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
    jr nz, jr_059_79cf

    ld b, b
    cp a
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
    ldh [$1f], a
    db $10
    rst $28
    jr nz, jr_059_79e3

    ld b, b
    cp a
    ld sp, hl
    ld b, $00
    rst $38
    ld [bc], a
    db $fd

Jump_059_7a0c:
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $f1fe
    ld c, $5b
    and h
    ld c, a
    or b
    rst $38
    nop
    sub [hl]
    ld l, c
    ld [bc], a
    db $fd
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $00
    nop
    jr nz, jr_059_7a3d

jr_059_7a3d:
    ld b, b
    nop
    add b
    xor a
    ld d, b
    ld l, l
    sub d
    ld l, a
    sub b
    rst $38
    nop
    ld a, l
    add d
    xor $01
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
    db $ed
    ld [bc], a
    ldh a, [$0e]
    rst $18
    jr nz, jr_059_7adb

    add b
    ld a, a
    add b
    ld h, c
    add b
    ld b, c
    add d
    ld a, h
    add e
    ld c, a
    nop
    inc bc
    nop
    ld bc, $3f00
    nop
    ld a, h
    add b
    ld hl, sp+$00
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc a
    inc bc
    ld sp, hl
    nop
    add b
    nop
    ld bc, $0700
    nop
    rst $38
    nop
    ld [hl+], a
    call c, $807f
    ret nz

    rlca
    ld l, b
    rlca
    pop de
    ld c, $ab
    db $10
    and d
    ld bc, $0007
    adc a
    nop
    ccf
    nop
    cpl
    ld d, b
    dec c
    ldh a, [$cf]
    jr nc, jr_059_7aaa

    jr jr_059_7ad4

    db $10
    ld e, $20
    and b
    ld b, b

jr_059_7aaa:
    ld d, b

jr_059_7aab:
    add b
    ld h, b
    nop
    ld [hl], b
    nop
    ld h, c
    nop
    db $e3
    nop
    ld h, [hl]
    nop
    cpl
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_059_7ac6:
    nop
    rst $38
    ldh a, [rIF]
    jr nz, jr_059_7aab

    ld [hl], b
    adc a
    ldh a, [rIF]
    rst $38
    nop
    db $fc
    inc bc

jr_059_7ad4:
    db $fc
    inc bc
    ld hl, sp+$07
    rst $38
    nop
    ld [bc], a

jr_059_7adb:
    db $fd
    ld c, $f1
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    push de
    nop
    nop
    jr nc, jr_059_7aed

jr_059_7aed:
    and b
    nop
    nop
    add e
    ld a, h
    rst $38
    nop
    rst $38
    nop
    ld c, a
    or b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    or $08
    ld hl, sp+$00
    jp $cb00


    nop
    rrca
    nop
    inc c
    nop
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    inc bc
    nop
    rst $30
    nop
    rst $00
    nop
    rlca
    nop
    rst $08
    nop
    sub [hl]
    ld [$100f], sp
    ld a, a
    nop
    ccf
    nop
    rra
    jr nz, @+$51

    jr nc, jr_059_7ac6

    ld h, d
    cp d
    ld b, h
    ld hl, sp+$00
    ldh a, [rP1]
    dec [hl]
    ld b, b
    ld h, b
    nop
    ld b, d
    ld bc, $023d
    scf
    ld [$14eb], sp
    ld [bc], a
    add b
    add b
    nop
    add d
    nop
    nop
    nop
    add b
    nop
    ld b, d
    add b
    ld b, h
    add b
    ldh [rP1], a
    ret nz

    nop
    ld b, e
    nop
    add $01
    sbc e
    ld h, h
    xor a
    ld b, b
    rrca
    ld b, b
    ld d, [hl]
    ld [$003e], sp
    xor h
    db $10
    call c, $fc20
    nop
    inc a
    nop
    rra
    nop
    rst $38
    nop
    sbc $00
    ld c, $00
    rrca
    nop
    rra
    nop
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01

jr_059_7b79:
    cp $01
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
    db $10
    rst $28
    jr jr_059_7b79

    ld [$08f7], sp
    rst $30
    push bc
    ld a, [hl-]
    add b
    ld a, a
    rlca
    ld hl, sp-$01
    nop
    db $fc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_059_7ba8:
    ld a, a
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    ld bc, $08f7
    rst $20
    jr jr_059_7ba8

    db $10
    ccf
    ret nz

    cp [hl]
    ld b, b
    cp d
    ld b, b
    db $eb
    nop
    db $fd
    nop
    db $eb
    nop
    cp $00
    ld a, [bc]
    nop
    jr z, jr_059_7bcc

jr_059_7bcc:
    ld b, c
    nop
    jp $ee00


    nop
    inc c
    nop
    rst $00
    ld [$08f7], sp
    db $fc
    nop
    rst $00
    nop
    inc b
    nop
    ld b, $00
    rlca
    nop
    inc bc
    inc b
    scf
    ld [$1826], sp
    daa
    jr jr_059_7c14

    ld d, $31
    ld b, $eb
    inc b
    db $d3
    inc c
    rst $18
    jr nz, @+$71

    add b
    adc h
    nop
    scf
    ld [$3cc3], sp
    ld a, [hl]
    nop
    ld bc, $0200
    ld bc, $0609
    ld [bc], a
    inc c
    ld h, $18
    dec c
    jr nc, jr_059_7c23

    ld h, b
    cp h
    ld b, b
    ld a, e
    add b
    di
    nop
    cp $01

jr_059_7c14:
    cp $00
    stop
    ld [bc], a
    nop

jr_059_7c1a:
    ld b, $00
    nop
    nop

jr_059_7c1e:
    ld e, $00
    ld [hl-], a
    nop
    inc bc

jr_059_7c23:
    nop
    ret


    nop
    ei
    nop
    ei
    nop
    di
    nop
    rst $38
    nop
    adc [hl]
    nop
    ld bc, $c300
    inc b
    rst $20
    nop
    and h
    ld b, d
    rlca
    nop
    dec [hl]
    ld [bc], a
    or h
    ld b, d
    ld h, $00
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld a, h
    add b
    ld [hl], b
    add b
    ld b, b
    add b
    ld b, d
    add b
    ld [bc], a
    ret nz

    ld a, [bc]
    ret nz

    nop
    ret nz

    jr nz, jr_059_7c1a

    nop
    ret nz

jr_059_7c5c:
    jr nz, jr_059_7c1e

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rDIV]
    ldh a, [rP1]
    ldh a, [$08]
    ldh a, [$09]
    ldh a, [$0a]
    ldh a, [rSB]
    ld hl, sp+$01
    ld hl, sp+$00
    ld hl, sp+$05
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    nop
    cp $80
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    cp $01
    cp $01
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    inc b
    nop
    ld b, $00
    dec e
    nop
    inc b
    rst $38
    nop
    ld l, [hl]

jr_059_7cb3:
    sub c
    db $e3
    inc e
    rst $38
    nop
    push de
    ld a, [bc]
    rst $00
    jr c, jr_059_7cb3

    add hl, bc
    rst $38
    nop
    db $fd
    nop
    ei
    nop
    db $e3
    inc c
    ld l, [hl]
    nop
    ld e, a
    nop
    ld a, [hl]
    nop
    rst $08
    nop
    add hl, bc
    ld b, $14
    dec bc
    daa
    jr jr_059_7c5c

    jr jr_059_7d06

    db $10
    ld a, [hl]
    nop
    ld [hl], b
    add b
    add l
    nop
    push hl
    ld [bc], a
    push hl
    ld [bc], a
    adc d
    inc b
    ld d, $08
    ld [$ff10], sp
    nop
    rst $38
    nop
    di
    nop
    pop af
    ld [bc], a
    push bc
    ld [bc], a
    cp $01
    db $fc
    ld bc, $00f3
    ld e, a
    nop
    xor h
    inc de

jr_059_7cfc:
    ld b, a
    jr c, jr_059_7cfc

    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop

jr_059_7d06:
    rst $30
    nop
    jp $cd00


    ld [bc], a
    cp b
    ld b, $7b
    inc b
    db $fc
    nop
    db $fc
    nop
    call c, $f800
    nop
    ld a, h
    nop
    ld a, h
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ld bc, $0300
    nop
    ld b, $00
    ld b, $00
    inc d
    nop
    ret z

    nop
    ld d, c
    ld [$00ed], sp
    add hl, hl
    nop
    ld a, l
    nop
    ld l, l
    nop
    dec l
    nop
    ld [hl], c
    nop

jr_059_7d42:
    ld c, a
    jr nz, jr_059_7d42

    nop
    ld a, b
    nop
    and e
    nop
    rra
    nop
    rst $38
    nop
    db $fc
    nop
    rst $30
    nop
    jp hl


    inc b
    ld h, l
    nop
    jp Jump_059_7720


    nop
    cp d
    nop
    ld h, c
    ld [de], a
    add hl, sp
    add b
    ld e, l
    add b
    db $dd
    nop
    sbc l
    nop
    ld l, c
    nop
    cp l
    nop
    call $7f00
    nop
    ld l, a
    nop
    ld [hl], h
    ld [bc], a
    ld [hl], $00
    ccf
    nop
    ld h, b
    ld [de], a
    ld e, a

jr_059_7d79:
    jr nz, jr_059_7d79

    nop
    sbc b
    nop
    adc b
    nop
    db $ec
    nop
    call nz, $ee20
    nop
    add [hl]
    ld b, b
    and a
    nop

Call_059_7d8a:
    ld a, [hl+]
    nop
    jr z, jr_059_7d8e

jr_059_7d8e:
    ld a, [de]
    nop
    jr nz, jr_059_7d92

jr_059_7d92:
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    add b
    ld b, b
    adc h
    ld b, b
    adc a
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld d, c
    add b
    nop
    nop
    ld [$1810], sp
    nop
    inc e
    nop
    inc c
    sbc a
    ld h, b

jr_059_7db2:
    ld [hl], e
    adc h
    cp $01
    db $fd
    ld [bc], a
    di
    inc c
    db $e3
    inc e
    and a
    ld e, b
    sbc a
    ld h, b
    rst $10
    ld h, b
    rst $18
    jr nz, jr_059_7db2

    ld [de], a
    rra
    jr nz, jr_059_7e1b

    jr nz, @-$1e

    nop
    pop bc
    nop
    ld c, a
    add b
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    rst $38
    nop
    sbc l
    nop
    add c
    nop
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    add b
    inc e
    nop
    dec e
    nop
    and c
    nop
    xor $01
    ld a, a
    add b
    ld a, h

jr_059_7dff:
    add b
    add b
    nop
    add c
    nop
    add b
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld h, c
    nop
    ld d, b
    nop
    ld hl, $0200
    ld bc, $0205
    rrca
    nop
    rra
    nop
    ccf

jr_059_7e1b:
    nop
    ld a, a
    nop
    ccf
    nop
    jr nc, jr_059_7e22

jr_059_7e22:
    ret c

    nop
    ret nz

    nop
    push hl
    nop
    ld b, h
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    dec sp
    push af
    add sp, $37
    cp l
    ld e, a
    rst $38
    inc e
    sbc [hl]
    dec [hl]
    ld e, a
    ld a, $5f
    ld l, $5f
    ld a, [bc]
    rst $18
    ccf
    ld e, a
    ccf
    sbc a
    ld a, [hl+]
    rst $28
    ld e, $ae
    ld e, l
    cp $0f
    dec a

jr_059_7e4d:
    ld b, $5f
    ld h, $7e
    dec b
    ld e, $2f

jr_059_7e54:
    xor [hl]
    rra
    db $ec
    rlca
    sbc [hl]
    rlca
    ld d, a
    ld c, $57
    rrca
    sub a
    rrca
    scf
    rrca
    ei
    ld b, $f3
    ld c, $87
    add hl, hl
    cp e
    dec b
    rst $30
    add hl, bc
    ccf
    add b
    ld a, [$ec01]
    db $10
    sbc e
    ld h, h
    rst $08
    jr nc, jr_059_7dff

    ld [hl], b
    ld bc, $e6fc

jr_059_7e7b:
    jr jr_059_7e4d

    ld l, $4e
    or a
    rst $08
    ccf
    ld l, [hl]
    sbc a
    ld a, h
    sbc a
    ld d, e
    cp a
    inc sp
    rst $38
    add b
    ld a, a
    ld de, $9cff
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [$3eff], sp
    pop af
    jr z, jr_059_7e7b

    and $19
    ld c, [hl]
    or c
    rst $08
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $18
    jr nz, @-$5f

    ld h, b
    ld a, a
    add b
    db $eb
    inc d
    xor $11
    rst $28
    db $10
    rst $28
    db $10
    cp a
    ld b, b
    rst $30
    ld [$08f7], sp
    rst $08
    jr nc, @-$3f

    ld b, b
    rst $18
    jr nz, jr_059_7e54

    ld h, b
    and e
    ld b, b
    ld h, a
    add b
    db $eb
    add h
    rst $38
    nop
    push af
    ld [$00de], sp
    ld bc, $0102
    ld [bc], a
    dec c
    ld [bc], a
    rrca
    nop
    add hl, bc
    ld b, $13
    inc c
    rlca
    jr jr_059_7ee4

    jr c, @-$46

    ld b, c
    rst $38
    nop
    rst $38
    nop

jr_059_7ee4:
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1ee1
    cp a
    ld b, b
    sub b
    nop
    ldh [rP1], a
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rra
    jr nz, jr_059_7f5e

    jr nz, jr_059_7f80

    add b
    ld e, [hl]
    add b
    sbc a
    nop
    ld [hl], h
    ld [$1028], sp
    ld [de], a
    jr nz, jr_059_7f73

    nop
    dec sp
    ld b, b
    ld l, [hl]
    add b
    xor a
    nop
    ld l, d
    nop
    ret nz

    nop
    ldh a, [rP1]
    nop
    nop
    ld bc, $c400
    nop
    adc a
    nop
    ld b, $01
    rlca
    nop
    ccf
    nop
    ld a, $00
    dec a
    nop
    ld a, e
    nop
    ld h, a
    nop
    rst $38
    rst $28
    ld a, a
    add sp, -$01
    ld l, d
    rst $38
    ld a, l
    ld a, [$ff7d]
    ld sp, hl
    rst $38
    ld hl, sp-$06

Jump_059_7f3f:
    xor l
    rst $38
    db $fd
    rst $38
    ld a, [$f8ff]
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $db
    ei
    add [hl]
    rst $38
    di
    rst $38
    cp c
    ld a, e
    call nc, $987f
    ld a, h
    adc a
    ld a, $d1

jr_059_7f5e:
    cp $1f
    cp [hl]
    ld e, a
    ld a, $ed
    cp $bf
    ccf
    db $dd
    bit 6, h
    rst $28
    ld a, [c]
    and e
    cp $d8
    daa
    rra
    nop

jr_059_7f72:
    ld b, d

jr_059_7f73:
    ld [$0042], sp
    jp nz, Jump_059_7200

    nop
    ld [hl], b
    nop
    jp c, $bc00

    rst $38

jr_059_7f80:
    db $fc
    ld b, b
    db $dd
    add b
    db $db
    nop
    add c
    nop
    ld bc, $0200
    nop
    inc b
    nop
    ld h, b
    nop
    ld b, b
    rst $38
    add h
    ei
    inc e
    db $e3
    sbc h
    db $e3
    ld sp, $e7ce
    sbc b
    ld a, [hl]
    sub c
    ld l, h
    sub e
    ldh a, [rIF]
    db $e3
    inc e
    rst $20
    jr jr_059_7f72

    inc [hl]
    dec bc
    db $f4
    ei
    inc b
    push hl
    ld e, $bf
    ld b, b
    rst $38
    nop
    pop hl
    ld e, $ed
    ld [de], a
    rst $38
    nop
    rst $30
    ld [$10ef], sp
    rst $38
    nop
    rst $38
    nop
    ld a, [c]
    ld bc, $03d4
    rst $00
    ld [$001f], sp
    rst $28
    db $10
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    ld b, b
    nop
    ld bc, $0700
    nop
    jp nz, $8001

    ld bc, $0003
    inc bc
    nop
    inc bc
    nop
    ld c, a
    nop
    ldh a, [rSB]
    ld c, c
    add b
    ret nz

    nop
    ld b, b
    nop
    ld h, b
    nop
    ld d, a
    ld [$00fe], sp
    or l
    ld b, b
    ld h, e
    add b
    ld l, a
    add b
    rst $28
    nop
    cp $00
