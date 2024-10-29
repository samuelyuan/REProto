SECTION "ROM Bank $075", ROMX[$4000], BANK[$75]

    ld e, b
    and a
    ld h, h
    sbc e
    ld h, b
    sbc a
    call nz, $2c3f
    rst $38
    add h
    ld a, a
    ld a, b
    add a
    adc c
    or $e2
    rst $38
    ld a, e
    cp $df
    cp $38
    rst $38
    cp c
    ld a, a
    ld h, $df
    ld d, c
    rst $28
    ld l, b
    rlca

Jump_075_4020:
    add a
    ld a, c
    add c
    ld a, [hl]
    or h
    dec bc
    add h
    inc bc
    ld b, c
    add b
    dec bc
    db $f4
    inc b
    ei
    db $e4
    dec de
    ld c, a
    nop
    cp d

Call_075_4033:
    db $10
    db $f4
    ld [$18e4], sp
    and h
    jr @+$7f

    sbc [hl]
    ld l, [hl]
    sbc a
    rst $38

Jump_075_403f:
    ld bc, $03fd
    cp $01
    dec a
    jp nz, $05fa

    db $fc
    inc bc
    or $01
    rst $18
    ld h, b
    ld h, l
    ld a, [$8068]
    ld h, b
    add b
    jr nc, jr_075_4056

jr_075_4056:
    ld hl, sp+$00
    add h
    ld a, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld c, a
    or b
    adc d
    ret nz

    ld a, [$fee5]
    ldh [$fe], a
    ldh [$cd], a
    ldh a, [$0d]
    ldh a, [$87]
    jr @+$01

    nop
    inc d
    add sp, -$80
    ld a, [hl]
    sub l
    ld a, [hl]
    sbc b
    ld a, a
    inc l
    rst $18
    call nc, $a02f
    rra
    ld [hl], a
    adc b
    ld d, a
    and b
    sbc h
    ld h, b
    inc h
    ret c

    ld c, h
    ldh a, [$ac]
    ldh a, [$89]
    db $fc
    adc e

Call_075_408d:
    db $fc
    sbc c
    ld a, [hl]
    ld h, [hl]
    jr jr_075_40d5

    cp h
    db $76
    add b
    ld [hl], b
    add b
    cp b
    ld b, b
    cp a
    ld b, b
    db $e4
    inc de
    rst $38
    db $fc
    rra
    rst $38
    ld b, a
    cp a
    ld sp, hl
    rlca
    cp $01
    ei
    inc b
    cp [hl]
    ld b, c
    rst $28
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    db $fc
    daa
    db $fc
    inc hl
    cp $13
    cp $03
    cp $03
    cp $13
    cp $03
    cp $03
    cp $03
    cp $26
    db $fd
    ld h, $fd
    and [hl]
    db $fd
    and [hl]
    db $fd
    ld h, $fd
    ld l, h
    ei
    ld l, l
    ei
    ld c, l

jr_075_40d5:
    ei
    call Call_075_6dfb
    ei
    adc l
    ei
    cp l
    ei
    db $ed
    ei
    cp e
    rst $30
    cp e
    rst $30
    ei
    rst $30
    ei
    rst $30
    db $db
    rst $30
    ld a, [$faf6]
    or $fb
    rst $30
    ld a, [$fef6]
    or $f6
    xor $f4
    db $ec
    db $76
    ld l, [hl]
    inc [hl]
    inc l

Jump_075_40fc:
    ld sp, $1029
    jr jr_075_4105

    ei
    ld bc, $4dfe

jr_075_4105:
    ld a, [c]
    sbc b
    ld [hl], e
    ld b, b
    cp e
    adc $31
    ld a, c
    add [hl]
    rlca
    ld hl, sp-$0b
    ld a, [bc]
    ld l, c
    ld [bc], a
    inc h
    pop bc
    cp d
    ld b, l
    ld sp, hl
    ld b, $7a
    add l
    db $d3
    cpl
    pop af
    cpl

Jump_075_4120:
    rst $38
    rst $38
    ld a, a
    rst $38
    adc [hl]
    rst $38
    adc d
    push bc
    jp $f4e1


    ld hl, sp+$7a
    rst $38
    sub a
    rst $38
    ld d, [hl]
    ld bc, $00f8
    cp h
    ld b, b
    db $fc
    nop
    or a
    ld l, b
    rst $18
    jr nc, @+$01

    nop
    ld a, [$5f05]
    and a
    or $8f
    ld a, a
    rst $00
    sbc e
    ld h, a
    ld a, l
    add e
    cp [hl]
    pop bc
    inc e
    pop hl
    call nc, $9f38
    ld h, b
    ld a, h
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    adc a
    nop
    rst $38
    nop
    ld l, b
    rst $30
    xor $f7
    ldh [rIE], a
    add e
    ld a, h
    reti


    ld h, $53
    xor h
    xor c
    sub $41
    cp $df
    jr nz, jr_075_41ca

    jr nz, @-$4a

    inc bc
    or l
    ld b, e
    ld b, [hl]
    and c
    dec h
    jp $c3a5


    nop
    jp $e31d


    ld b, b
    cp a
    inc h
    ld e, a
    db $ec
    rra
    cp h
    ld c, a
    rst $30
    ld c, $f2
    dec c
    ei
    inc c
    adc d
    ld d, h
    ld d, [hl]
    ld [$06d8], sp
    db $ed
    ld [de], a
    ld d, e
    adc h
    dec a
    add $55
    xor d
    adc c
    or $80
    nop
    db $f4
    ret nz

    ld a, [c]
    ldh [$72], a
    ldh a, [$3a]
    ldh a, [$3b]
    ldh a, [$3b]
    ldh a, [$3d]
    ldh a, [$b6]
    db $76
    or d
    ld [hl], d
    cp b
    ld a, b
    cp b
    ld a, b
    ldh [$60], a
    db $f4
    ld [hl], h
    ldh [$60], a
    ld e, b
    ret c

    ld h, a
    ret nz

    ld h, a
    call nz, $c078
    cp b
    sub b
    or l
    add b

jr_075_41ca:
    sbc c
    sub b
    sub c
    sub b
    and b
    add b
    db $d3
    xor b
    ld a, [$8e04]
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [$7e]
    and c
    inc e
    db $e3
    or h
    bit 6, l
    adc d
    scf
    ret z

    inc l
    jp nc, $807e

    rst $18
    jr nz, @+$2f

    ret nc

    adc $f0
    ld b, c
    ld a, [$fc63]

jr_075_41f2:
    ld b, e
    db $fc
    ld c, a
    or b
    ld c, a
    or b
    rst $00
    cp b
    ld h, e
    sbc b
    ld c, h
    cp e
    jr c, @+$01

    ld a, c
    cp $4e
    db $fd
    add b
    ld a, a
    and b
    ld e, a
    ld [hl], a
    adc c
    ld [hl], l
    adc d
    sub d
    db $ed
    jp nc, $e42d

    dec de
    db $d3
    xor h
    ld d, e
    xor h
    or e
    call z, $dc23
    db $dd
    ld l, b
    and c
    ld a, b
    adc h
    ld [hl], b
    sbc h
    ld h, b
    push de
    ld [$0c5f], sp
    cp l
    ld a, [de]
    cp $08
    ld a, [hl+]
    ld d, h
    ld a, h
    add b
    ld c, l
    add b
    adc a
    nop
    ld hl, $200e
    rra
    jr nc, jr_075_4257

    ldh a, [$1f]
    ld d, h
    ccf
    call z, $dc3f
    rrca
    ld [hl], d
    adc l
    db $f4
    inc bc
    ld a, [c]
    rlca
    dec de
    rst $20
    ld h, c
    rst $38
    add hl, de
    rst $38
    inc bc
    db $fc
    add d
    ld a, h
    rst $00
    ccf
    ld a, l
    inc bc
    inc e
    inc bc
    sbc d

jr_075_4257:
    dec b
    cpl
    jr jr_075_41f2

    ld [$00ff], sp
    add h
    ld a, b
    rst $30
    inc c
    or d
    dec c
    ld a, [c]
    dec c
    cp [hl]
    ld bc, $033d
    rra
    inc hl
    ei
    rlca
    adc h
    ld h, e
    ld d, a
    and b
    ld l, a
    add b
    ld l, [hl]
    add c
    jp c, $bf81

    ret nz

    ei
    add h
    sbc h
    db $e3
    and a
    ret c

    jp nc, $cdec

    ld a, [c]
    rst $00
    ld hl, sp+$3f
    ld hl, sp-$65
    ld a, h
    rst $30
    ld e, $5e
    adc a
    daa
    rst $08
    swap a
    sbc l
    inc sp
    ld h, a
    sbc c
    ld c, l
    or e
    adc $31
    ld c, b
    or a
    and a
    dec de
    ld [hl], e
    rrca
    ld l, c
    ld [bc], a
    add b
    inc bc
    and h
    inc bc
    sub c
    inc bc
    add hl, sp
    add e
    ld b, [hl]
    or c
    add a

Jump_075_42ad:
    ld a, b
    dec sp
    db $fc
    or h
    ld a, e
    adc $31
    jp z, Jump_075_6e31

    sub c
    dec [hl]
    jp z, $e41b

    ld a, c
    add [hl]
    rlca
    ld hl, sp-$68
    rst $38
    add hl, de
    cp $9c
    ld sp, hl
    adc [hl]
    ld sp, hl
    nop
    rst $38
    ld h, [hl]
    sbc a
    add hl, hl
    rst $18
    adc e
    ld a, a
    ld bc, $5eff
    pop af
    ld b, e
    db $fc
    ld b, b
    rst $38
    ld hl, $20de
    rst $18
    ld c, b
    rst $38
    nop
    rst $38
    ld a, h
    rst $30
    ld e, b
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    jr @+$01

    rra
    rst $38
    ld h, a
    rst $38
    ld a, e
    rst $38
    and l
    ld e, e
    call nz, $ae3b
    ld de, $11ef
    xor $11
    ld h, e
    sbc h
    sub e
    ld a, h
    pop hl
    ld a, $c3
    inc a
    ld h, a
    cp h
    ld b, l
    ld a, [$b847]
    inc b
    ei
    cp $a1
    cp [hl]
    pop af
    ld c, h
    ei
    and c
    rst $38
    jr nz, @-$1f

    db $e4
    dec de
    sub a
    dec de
    inc de
    rrca
    dec bc
    rlca
    inc b
    inc bc
    inc c
    inc bc
    inc de
    rst $28
    ld e, e
    and a
    ei
    rlca
    ld [hl], c
    adc a
    add c
    ld a, a
    pop bc
    ccf
    push af
    rrca
    ld c, $ff
    jp hl


    ld d, $36
    sra [hl]
    db $d3
    sub e
    ld l, [hl]
    sub b
    ld l, a
    inc sp
    call $ff00
    jr nz, @+$01

    add h
    ld a, e
    inc b
    rst $38
    ld b, e
    cp l
    and l
    rst $18
    ccf
    rst $00
    inc bc
    db $fd
    or d
    ld c, l
    ld b, l
    inc bc
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
    jr jr_075_4383

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_075_4393

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_075_43a3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_075_43b3

    ld [hl-], a

jr_075_4383:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_075_43c3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_075_4393:
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

jr_075_43a3:
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

jr_075_43b3:
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

jr_075_43c3:
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
    jr jr_075_4483

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_075_4493

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_075_44a3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_075_44b3

    ld [hl-], a

jr_075_4483:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_075_44c3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc b
    inc bc
    nop

jr_075_4493:
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0501
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop

jr_075_44a3:
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    inc b
    dec b
    ld b, $06
    dec b
    inc bc
    nop
    inc bc

jr_075_44b3:
    inc bc
    inc b
    inc b
    inc b
    ld bc, $0101
    inc b
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    nop
    inc bc
    nop

jr_075_44c3:
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld bc, $0304
    inc b
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    rlca
    rlca
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    rlca
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0303
    inc b
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc b
    inc bc
    inc bc
    ld bc, $0301
    inc b
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc b
    ld bc, HeaderLogo
    ld bc, $0404
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0103
    ld bc, $0401
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc bc
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    ld bc, $0304
    inc b
    ld bc, $0304
    inc bc
    inc bc
    inc b
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    inc c
    inc c
    inc c
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    ld [$080b], sp
    dec bc
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    dec bc
    inc c
    inc c
    inc c
    ld [$080b], sp
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    dec bc
    ld c, $0e
    dec c
    dec bc
    dec bc
    dec bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc a
    ld a, a
    ccf
    rst $38
    rra
    rst $38
    inc e
    rst $38
    ld e, h
    rst $38
    ld a, l
    cp $70
    db $fc
    and $f8
    rst $30
    db $fc
    pop bc
    cp [hl]
    ld [hl], d
    adc h
    db $10
    db $ec
    inc a
    ld hl, sp-$28
    ld hl, sp-$3e
    ld a, [$9864]
    or a
    db $fc
    ld hl, sp-$0a
    ld hl, sp-$10
    add c
    ld hl, sp-$54
    di
    ld [hl], $e1
    inc l
    pop bc
    ld bc, $5280
    add c
    or [hl]
    ld bc, $0205
    sbc a
    nop
    daa
    jr jr_075_467a

    ld de, $4337
    dec b
    inc bc
    and d
    ld bc, $47a9
    ld de, $b0cf
    rrca
    ld h, h
    rra
    ld h, l
    dec bc
    ld b, c
    rrca
    db $10
    adc a
    adc b
    rlca
    sbc l
    inc bc
    ld e, l
    add e
    ld e, b
    add a
    pop bc
    rra
    ld h, b
    sbc a
    add b
    rst $38
    and c
    rst $38
    inc c
    di
    add b
    rst $38
    ld b, b
    cp a
    or d
    ld c, l
    and [hl]
    ld e, e
    nop
    rst $38

Jump_075_463c:
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    add d
    db $fd
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$bf], a
    jr nz, @+$01

    ld h, c
    sbc [hl]
    ld h, e
    sbc h
    ldh [$5f], a
    push bc
    rst $38
    call Call_075_58bb
    rst $38
    ld a, d
    rst $38
    ldh a, [$af]
    db $f4
    rst $18
    ld h, h
    rst $18
    ld a, c
    rst $18
    ei
    and a
    ld a, e
    cp a
    ld e, b
    rst $38
    jr c, @+$01

    add hl, de
    cp $26
    rst $18
    sub h
    ld l, e
    ld hl, sp-$79
    ld l, d
    sub l
    and l
    ld e, e
    ld l, l
    sub e

jr_075_467a:
    rst $38
    ld bc, $c73a
    ld [hl], a

Jump_075_467f:
    adc a
    cp l
    inc b
    adc a
    inc bc
    rst $30
    add a
    cp $fa
    ld a, [$fff2]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    inc bc
    rst $38
    jr @+$01

    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld c, l
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc de
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    ld a, [hl]
    sbc h
    db $ec
    nop
    ld l, b
    nop
    nop
    nop
    ld a, l
    rst $20
    or [hl]
    ld c, e
    ld [hl], $df
    sub h
    ld a, a
    sbc $29
    dec [hl]
    ld hl, sp+$52
    cp b
    cp a
    ldh a, [$7b]
    add b
    ld a, [c]
    rlca
    db $dd
    ld [bc], a
    ld d, $e0
    ret


    ldh a, [$ca]
    pop af
    add hl, bc
    ld a, [c]
    add a
    ld h, h
    rst $00
    ld [$a05e], sp
    ld e, a
    ld hl, sp+$70
    rst $38
    sub $ef
    ld e, a
    adc h
    dec b
    sbc h
    add l

jr_075_470f:
    rra
    cp c
    inc b
    ld a, b
    add a
    jr nz, jr_075_4735

    adc e
    inc a
    ld a, [hl]
    nop
    db $db
    ld h, $f1
    ld c, $fe
    rra
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    cp [hl]
    rst $38
    cp $ff
    xor $ff
    ld a, h
    rst $38
    ld e, [hl]
    db $fd
    inc c
    rst $38
    inc c

jr_075_4735:
    rst $38
    inc c
    rst $38
    ld e, $fd
    ld a, c
    cp $72
    db $ed
    ld l, b

Jump_075_473f:
jr_075_473f:
    rst $30
    ld [$39f7], sp
    rst $00
    ld [hl-], a
    rst $08
    jr c, jr_075_470f

    jr z, @-$27

    db $10
    rst $38
    ld bc, $81fe
    ld a, a
    ld bc, $01ff
    cp $01
    rst $38
    nop
    rst $38
    ld bc, $40ff
    cp a
    nop
    rst $38
    jr nz, jr_075_473f

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
    and b
    ld a, a
    db $10
    rst $38
    ld [$55f7], sp
    xor e
    inc h
    db $db
    pop af
    ld c, [hl]
    ld b, b
    cp a
    or e
    ld a, a
    ld a, a
    xor $ff
    call c, $f8ef
    rst $18
    ld l, h
    or e
    db $ec
    ld [$f755], a
    ld l, b
    ld hl, sp-$04
    ld hl, sp-$44
    ld a, [$f8f4]
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    cp $ff
    cp $fd
    rst $38
    db $fd
    db $fd
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    or $fe
    or $f6
    xor $fe
    xor $ff
    rst $28
    xor $de
    db $fc
    call c, $dcfc
    ld hl, sp-$48
    ld hl, sp-$48
    ccf
    db $f4
    ld a, a
    ld a, [c]
    ld a, [hl]
    ldh [$f8], a
    ldh [$e4], a
    ldh [$d5], a
    ret nz

    pop af
    ldh a, [$fc]
    add sp, -$0d
    db $fc
    rst $10
    ld hl, sp+$2f
    ret nz

    ld c, a
    add b
    call c, RST_00
    nop
    add b
    nop

jr_075_47de:
    ld b, b
    nop
    ld h, b
    add b
    ldh [rP1], a
    and e
    ld d, b
    rst $28
    sub b
    ld d, l
    xor b
    or h
    ld c, b
    call nz, $e738
    sbc c
    ld e, c
    ld b, $60
    rra
    inc b
    ccf
    ld [$c93f], sp
    ccf
    ld [bc], a
    ld a, a
    add $3f
    ld c, [hl]
    ccf
    ld a, h
    rlca
    adc e
    db $10
    call $9d12
    inc bc
    ld [$0707], sp
    jr c, jr_075_47de

    ld l, $ee
    inc de
    ld [c], a
    ld de, $a057
    cp [hl]
    ld b, b
    ld h, c
    sub b
    daa
    nop
    rra
    add b
    ld h, e
    sbc h
    ret


    inc a
    add hl, bc
    cp $22
    db $fd
    ld b, c
    cp $3d
    cp $60
    rst $18
    xor a
    ret nc

    adc c
    ldh a, [rNR30]
    push hl
    sbc e
    ld h, h
    xor d
    ld [hl], h
    dec c
    ldh a, [$4e]
    ld sp, hl
    db $f4
    ld e, e
    ld bc, $a1fe
    ld e, a
    adc d
    ld [hl], a
    ld e, b
    and a
    or a
    ld c, l
    ei
    dec e
    push hl
    dec de
    ld b, e
    rst $38
    rla
    rst $28
    jp nz, $2b3d

    db $dd
    ei
    dec a
    cp $7f
    ld a, b
    rst $30
    ld d, $ef
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    adc [hl]
    ld a, a
    xor e
    ld e, a
    ld c, $ff
    ld d, a
    cp h
    ld b, d
    cp h
    ld b, c
    cp [hl]
    ld b, a
    cp [hl]
    rst $18
    ccf
    ld c, b
    add a
    ld [hl-], a
    rst $20
    nop
    rst $38
    ld a, h
    adc a
    ld sp, $f0cf
    rrca
    ld a, l
    ld [bc], a
    ld sp, $3c02
    nop
    ld [$7400], sp
    adc e
    ld a, [$f9fd]
    cp $f2
    rst $38
    add sp, -$01
    add sp, -$02
    reti


    cp $d0
    db $fd
    db $ec
    di
    db $fc
    di
    db $fc
    db $e3
    adc h
    di
    rlca
    ld hl, sp-$01
    nop
    cp a
    ld b, b
    ld hl, sp-$01
    pop hl

Call_075_48b3:
    rst $38
    ret c

    rst $28
    ld bc, $0efe
    rst $38
    inc e
    rst $38
    ei
    ld a, h
    pop af
    cp $84
    rst $38
    sbc e
    ld a, a
    ei
    ld a, a
    ld [hl], d
    rst $38
    ldh a, [rIE]
    rst $38
    rst $30
    db $eb
    rst $30
    dec c
    rst $38
    jr nc, @-$30

    rlca
    ld hl, sp-$22
    pop hl
    inc l
    pop af
    dec [hl]
    ret z

    adc a
    ld h, b
    dec e
    ld b, d
    dec bc
    stop
    nop
    ld b, h
    jr jr_075_48ec

jr_075_48e5:
    ld e, $12
    rrca
    inc d
    rrca
    ld b, l
    ld a, [hl+]

jr_075_48ec:
    ld d, d
    inc l
    rst $28
    ld de, $fff7
    ld e, e
    rst $38
    xor b
    rst $30
    and $ff
    push hl
    rst $38
    ldh [$df], a
    ld [$e0c7], sp
    inc bc
    ld a, [bc]
    ld bc, $0661
    or b
    ld a, a
    add b
    ld a, a
    ld c, b
    rst $38
    inc h
    rst $38
    cp b
    ld a, a
    inc c
    rst $38
    jr @+$01

    dec d
    rst $38
    jr nc, jr_075_48e5

    ld l, [hl]
    sub c
    dec c
    ld a, [c]
    and a
    ld a, a
    ld d, $ff
    ld a, h
    rst $38
    xor [hl]
    ld e, b
    cp a
    ld b, b
    ld l, [hl]
    add c
    cp $00
    adc l
    ld d, b
    sbc a
    nop
    xor a
    db $10
    adc $30
    ld d, $68
    dec a
    ret nz

    ld c, h
    and c
    ld [hl-], a
    ret


    xor l
    ldh a, [$fc]
    pop af
    ldh a, [rSTAT]
    ld a, $c1
    rst $08
    ld [hl], b
    ld d, l
    ld [$f942], a
    add sp, -$69
    add a
    ld a, [$dbe4]
    ret


    or a
    ld e, [hl]
    and a
    inc d
    db $eb
    rlca
    ld hl, sp+$46
    cp [hl]
    ld l, l
    cp [hl]
    ld [hl], h
    cp a
    ld sp, $3ffe
    cp $7c
    rst $38

jr_075_4960:
    db $f4
    rst $38

jr_075_4962:
    inc bc
    rst $38
    rlca
    rst $38
    dec l
    rst $38
    dec bc
    rst $38
    ld b, b
    rst $38

jr_075_496c:
    dec sp
    call nz, $fe23
    push bc
    dec sp
    cp $01
    db $db
    inc h
    and a
    jr jr_075_496c

    inc c
    jp $c13c


    ld a, $f1
    ld c, $01
    rst $38
    ld [hl], a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    rst $28
    sbc a
    pop de
    rrca
    ld b, c
    sbc a
    jr nz, @-$1f

    dec hl
    call nc, $f08f
    dec a
    ret nz

    sub h
    dec bc
    rst $08
    jr nc, @-$5f

    ld h, b
    ld h, e
    jr jr_075_4962

    jr nc, jr_075_4960

    ldh a, [$da]
    push hl
    add l
    cp $a6

jr_075_49a7:
    rst $18
    inc hl
    sbc $c7
    ei
    jp $45ff


    rst $38
    nop
    rst $38
    rra
    db $e3
    adc b
    rst $20
    db $10
    rst $08
    sub $09
    nop

jr_075_49bb:
    ccf
    cp h
    ccf
    rst $28
    db $dd
    jp hl


    rst $18
    di
    rst $18
    add a
    rst $38
    rra
    rst $28
    ld [hl], l

jr_075_49c9:
    rst $28
    db $fd
    rst $28
    call $dfff
    rst $38
    add [hl]
    ld a, c
    ld e, [hl]
    ld bc, $00bd
    cp e
    ld b, a
    ld h, d
    adc a
    jr nz, jr_075_49bb

    ret nz

    ccf
    sbc l
    ld [bc], a
    jr c, @-$3e

    jr nc, jr_075_49a7

    adc [hl]
    ld [hl], c
    push de
    xor d
    db $f4
    set 0, h
    ei
    dec [hl]
    ei
    ld a, [c]
    db $fd
    sub l
    ld a, [$ff00]
    jr nz, @+$01

    sub $39
    jr nc, jr_075_49c9

    ldh a, [rIF]
    ld d, l
    xor e
    ld sp, $a0cf
    ld e, a
    rlca
    rst $38
    nop
    rst $38
    or e
    rst $08
    add hl, hl
    rst $10
    ld b, c
    cp a
    ld c, b
    rst $20
    xor b
    rst $10
    rst $00
    rst $38
    db $db
    rst $20
    di
    jp $e7db


    ld a, a
    db $e3
    ld h, l
    ld sp, hl
    ld a, [$48fd]
    cp a
    ld b, b
    nop
    ret nz

    nop
    jp hl


    nop
    nop
    inc bc
    ld b, h
    inc bc
    and b
    rlca
    rst $20
    nop
    ld b, a
    nop
    and $03
    ldh a, [$03]
    jp nc, $c101

    nop
    or c
    nop
    ldh [rP1], a
    ldh a, [rP1]
    di
    nop
    inc c
    di
    ld c, h
    db $e3
    ld d, a
    pop hl
    db $10
    di
    ldh a, [$87]
    or h
    jp $e19e


    adc a
    pop af
    ld c, a
    db $fc
    inc [hl]
    xor $3e
    rst $00
    db $d3
    cpl
    jp hl


    rra
    inc b
    rst $38
    ld h, e
    db $fd
    db $e4
    ei
    sbc a
    ld [hl], h
    ld h, e
    sbc [hl]
    ld d, e
    cp [hl]
    xor d
    rst $30
    or a
    xor $d7
    ld l, $ae
    ld a, a
    rra
    adc $ef
    call z, $e140
    or l
    ld h, b
    sbc d
    ld h, l
    sub $21
    ld a, [$fb01]
    nop
    cp e
    ld h, b
    rst $30
    ld l, b
    rst $20
    cp b
    dec bc
    db $f4
    and e
    ld d, h
    ld a, c
    add [hl]
    sub b
    rst $08
    ldh [$9f], a
    cp b
    rlca
    nop
    rst $38
    ld b, b
    cp a
    jp $033e


    cp $e2
    ccf
    add hl, sp
    cp $7e
    db $fd
    ld l, b
    rst $38
    ld sp, hl
    rst $38
    ld c, e
    rst $38
    db $db
    ccf
    sub d
    rst $38
    ret c

    ccf
    cp $d7
    or $ff
    and [hl]
    rst $18
    ld l, c
    add a
    nop
    ldh [rTIMA], a
    ldh [rNR30], a
    push hl
    ld e, e
    db $e4
    ld bc, $1ffe
    xor $06
    cp $c8
    or $ff
    db $e4
    ld [de], a
    db $ed
    ld h, h
    ei
    db $ec
    di
    ld hl, sp-$19
    call c, Call_000_38e3
    rst $00
    xor [hl]
    ld d, e
    ld b, a

jr_075_4ad3:
    ld hl, sp+$14
    ld hl, sp-$66
    ld a, h
    dec bc
    db $f4
    ld l, a
    ldh a, [$e1]
    ld c, $a6
    ld b, c
    ld [$c577], sp
    inc bc
    ld d, d
    add c
    rst $30
    ld [$1ee1], sp
    ld a, [c]
    rrca
    adc e
    rst $38
    ld sp, hl
    rst $38
    or d
    ld c, l
    and b
    rst $30
    add b
    rst $38
    ld b, c
    rst $38
    ld b, d
    db $fd
    xor b
    rst $38
    nop

Jump_075_4afd:
    rst $38
    add c
    rst $38
    adc c
    ld a, [hl]
    jr nc, jr_075_4ad3

    jr nz, @+$01

    sub b
    ld a, a
    dec h
    jp c, $ff00

    nop
    rst $38
    ld b, h
    cp a
    or c
    rst $08
    jr z, @+$01

jr_075_4b14:
    adc b
    rst $38
    ret z

    rst $38
    ld [hl], a
    rst $38
    call nz, $01bb
    rst $38
    sub d
    ld l, a
    rra
    nop
    cpl
    nop
    and a
    nop
    ld l, [hl]
    pop bc
    or $c1
    ld a, e
    sub c
    xor e
    db $10
    dec bc
    jr nc, jr_075_4b9f

    sub c
    ld [de], a
    pop hl
    cpl
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    adc a
    nop
    db $fd
    nop
    dec de
    db $fd
    ld c, a
    or b
    xor [hl]
    sub c
    ld c, [hl]
    or c
    ret z

    rst $30
    ld l, h
    sub a
    ld a, [de]
    add a
    di
    rrca
    ld de, $a3ee
    ld e, a
    jp $fc7c


    sbc a
    ld e, [hl]
    add hl, hl
    xor h
    ccf
    xor l
    ld e, $9e
    ld l, l
    cp e
    ld a, h
    db $dd
    jr nc, jr_075_4b14

    ld d, c
    cp l
    ld b, e
    rst $38
    rlca
    ld l, l
    sub e
    ret c

    ld sp, $20d2
    ld a, [bc]
    db $fc
    jp nz, $2ffc

    or $66
    cp a
    or [hl]
    ld a, a
    or [hl]
    ld a, a
    cp e
    ld [hl], h
    dec e
    ldh [$27], a
    rst $38
    sub e
    rst $38
    rst $08
    rst $38
    db $ed
    rst $38
    ld h, b
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    add h
    ei
    ret nz

    ld a, $bb
    ld [hl], h
    ld [hl], c
    cp $e7
    db $fc
    ld [c], a
    db $fd
    ld [hl], $f9
    ld [hl], b
    rst $38
    add hl, bc

jr_075_4b9f:
    rst $30
    inc hl
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld d, h
    db $eb
    dec d
    db $eb
    ld [de], a
    db $ed
    ld bc, $7fcf
    add e
    ld d, b
    xor a
    adc h
    ld h, e
    or e
    ld c, h
    ld h, l
    sbc [hl]
    pop hl
    ld e, $6e
    inc e
    nop
    ld a, h
    daa
    ld e, h
    db $e3
    dec e
    ld d, $e9
    add a
    ldh a, [rSC]
    pop af
    inc de
    pop hl
    inc hl
    pop bc
    add [hl]
    nop
    ld c, h
    add d
    sbc a
    ld [hl], b
    xor h
    ld d, e
    cp b
    ld b, a
    ld h, b
    rra
    ret z

    rra
    ccf
    rst $08
    pop bc
    ccf
    rst $00
    ccf
    ld h, [hl]
    sbc a
    add $3f
    ld bc, $c1ff
    ccf
    ld [c], a
    rra
    db $10
    ld a, a
    cp c
    ld a, a
    add hl, hl
    rst $38
    push af
    rst $38
    ld h, c
    rst $38
    ld [hl-], a
    rst $38
    adc d
    rst $38
    push hl
    rst $38
    adc h
    rst $38
    ld [hl], d
    adc a
    ld a, h
    add e
    sub d
    ld l, h
    ld hl, $02fe
    db $fc
    ld bc, $21fe
    sbc $ce
    ccf
    ld l, b
    rst $18
    rrca
    rst $38
    sbc d
    rlca
    rst $30
    nop
    cp $00
    cp a
    nop
    db $fd
    nop
    jp c, Jump_075_4120

    or b
    db $10
    add c
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    inc a
    ret nz

    ld l, h
    ret nc

    inc e
    ldh [$f4], a
    ld [$148b], sp
    ld [hl-], a
    call z, $dc20
    ld e, $e0
    cp $00
    or $00
    ld a, [$f200]
    nop
    di
    nop
    xor b
    rst $18
    add h
    ld l, a
    cp [hl]
    ld h, c
    ld e, c
    rst $38
    sbc b
    rst $38
    sbc d
    db $fd
    xor l
    or $8f
    ldh a, [$d0]
    ld bc, $2897
    dec de
    call nz, $e1de
    ld [c], a
    pop af
    ld a, e
    ldh [rIF], a
    ldh a, [$c9]
    ld [hl], $2e
    rst $10
    ld a, c
    add a
    cp a
    ret nz

    db $ed
    sub $ff
    sbc $bf
    sub $30
    call z, Call_075_48b3
    nop
    rst $38
    adc e
    ld a, a
    db $d3
    cpl
    ld a, h
    or e
    ccf
    ld hl, sp-$15
    db $fc
    and h
    db $db
    db $10
    rst $38
    db $10
    rst $28
    ld a, [c]
    db $ed
    adc c
    rst $20
    jp nc, Jump_000_3ce7

    jp $e11e


    cp a
    pop bc
    dec hl
    pop de
    push hl
    add hl, de
    ld h, b
    rst $18
    ld c, c
    or $3e
    call nz, $867f
    ld h, a
    sbc [hl]
    ld b, c
    cp [hl]
    sbc $a9
    ld a, e
    sbc l
    ld e, d
    cp l
    ld e, h
    cp d
    and a
    ld e, e
    ld c, l
    or b
    ld a, h
    or b
    add sp, $37
    and l
    ld a, [hl]
    ld [hl], e
    rst $38
    cpl
    rst $30
    dec sp
    db $e4
    ld c, c
    and $34
    rst $28
    ld [hl], l
    cp a
    xor h
    ld a, a
    and l
    ld a, a
    adc a

jr_075_4cc1:
    ld [hl], c
    ld c, d
    or l
    and $39
    ld [hl], c
    or d
    ld e, $e1
    ld d, b
    xor e
    rrca
    ret nc

    ld [hl], b
    add hl, bc
    sub a
    jr nz, jr_075_4cc1

    ld de, $fd12
    jr nz, @+$01

    ld [bc], a
    db $fd
    ld hl, $fcff
    rst $38
    rst $10
    rst $38
    ccf
    ldh [$7f], a
    add b
    inc sp
    call z, $e11e
    ld e, [hl]
    and c
    daa
    ret c

    ld b, [hl]
    cp l
    dec c
    ld a, [c]
    ld [hl+], a
    db $fd
    ld a, $f0
    ld a, [hl]
    pop af
    ld l, a
    rst $38
    ld h, e
    rst $38
    ld de, $75ff
    rst $38
    add a
    ld a, a
    cp h
    rlca
    rst $20
    rra
    ld bc, $49ff
    cp a
    ld l, [hl]
    rst $38
    cp h
    rst $38
    db $db
    rst $38
    ld a, h
    rst $38
    and a
    ld a, b
    ld a, [de]
    db $fd
    adc a
    ld a, [hl]
    sbc e
    ld a, [hl]
    add sp, $1f
    ld hl, sp+$07
    rst $38
    nop
    cp d
    inc b
    ld a, a
    rst $38
    ld e, $ff
    ld e, $ff
    adc a
    ld a, a
    call c, Call_000_153f

jr_075_4d2b:
    sbc a
    ld h, c
    sbc a
    ld bc, $29ef
    rst $30
    add l
    ld [hl], e
    inc sp
    ret nz

    ld [bc], a
    db $fd
    pop bc
    rst $38
    rst $00
    rst $38
    xor l
    rst $18
    sub $0f
    scf
    rst $08
    or a
    rst $08
    ld [$82f7], sp
    ld a, l
    ld e, h
    add e
    jr nz, jr_075_4d2b

    call $fd3e
    cp $0e
    db $fd
    call nc, $d7ef
    db $fc
    add e
    cp $5a
    cp a
    ld a, b
    ccf
    call nz, Call_000_243f
    ld e, a
    ld e, d
    daa
    ld [$81f3], sp
    ei
    ld c, d
    db $fd
    rlca
    db $fc
    ld h, l
    cp $79
    rst $30
    ret nc

    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    and h
    ld a, a
    ld h, b

jr_075_4d77:
    rst $38
    ld b, d
    cp a
    ld d, [hl]
    xor a
    ld a, $cf
    sbc [hl]
    ld a, a
    rla
    jp hl


    ret c

    ld h, e
    db $fc
    ld h, e
    rst $10
    jp hl


    call nz, $0fff
    cp $d9
    cp $3f
    call c, $bf40
    add h
    ld a, e
    add c
    ld a, a

jr_075_4d96:
    ld [$b717], a
    ld b, b
    ld e, a
    jr nz, jr_075_4d77

    dec h
    sub c
    rst $28
    xor l
    di
    and b
    ld e, a
    ld h, l
    rra
    ldh [$df], a
    ld c, e
    adc a
    adc a
    rrca
    ld [de], a
    rrca
    ld [$7597], sp
    sbc e
    push af
    sbc e
    inc bc
    db $fd
    inc h

jr_075_4db7:
    rst $18
    sbc a
    sbc $9d
    sbc $ed
    sbc $92
    db $ed
    pop de
    db $e3
    sbc e
    rst $20
    ld e, c
    rst $20
    ld l, b
    or a
    push bc
    ld a, [c]
    call $05f3
    ei
    reti


    rst $38
    jp c, $8e25

    ld [hl], c
    ld l, d
    sub b
    sbc $01
    xor h
    ld d, e
    ret z

    scf
    ld hl, sp+$17
    jr z, jr_075_4db7

    inc d
    rst $38
    db $10
    rst $38
    ret nc

    rst $38
    sub h
    rst $38

jr_075_4de8:
    pop af
    rst $38
    ld [hl], h
    ei
    ld a, c
    cp $a3
    rst $38
    rra
    db $ed
    add l
    ld a, a
    sub c
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    sub $ff
    ei
    rst $38
    sbc b
    rst $38
    adc c
    db $76
    add e
    ld a, h
    jp nc, $922d

    ld l, l
    ld l, b
    sub a
    ld hl, sp+$07
    rst $20
    jr jr_075_4d96

    ld a, b
    add e
    ld a, h
    add e
    ld a, h
    ld d, e
    cp h
    ld b, a
    ld hl, sp-$7b
    ld a, d
    add l
    ld a, d
    add c
    ld a, [hl]
    or d
    ld a, l
    rst $38
    ld a, a
    sbc a
    ld a, a
    or [hl]
    ld c, a
    add e
    ld a, a
    and b
    ld e, a
    add b

Call_075_4e2b:
    ld a, a
    jp nc, $e03f

    rra
    sbc l
    ld [bc], a
    dec h
    ld a, [de]
    dec [hl]
    ld a, [bc]
    inc a
    inc bc
    db $dd
    dec hl
    ld h, [hl]
    dec de
    ld h, c
    rra
    or [hl]
    ld c, a
    xor e
    ld d, a
    ld c, e
    ld sp, $c039
    add hl, sp
    ret nz

    di
    ld b, b
    rst $08
    nop
    xor $01
    inc e
    ld [bc], a
    ret nz

    ccf
    xor c
    ld d, $95

jr_075_4e55:
    ld a, [hl]
    ld e, [hl]
    db $fd
    ld [hl], d
    db $fd
    ld h, l
    cp $e9
    cp $d1
    rst $28
    ld a, h
    inc bc
    rst $10
    jr nz, jr_075_4de8

    ld [hl], b
    db $d3
    inc c
    and $0c
    ld a, [$f004]
    nop
    ld [$c600], sp
    jr @+$77

    adc b
    db $eb
    db $f4
    pop bc
    cp $20
    rst $18
    inc d
    rst $28
    ld sp, $3dee
    adc $2d
    ld a, [$f7cb]
    add hl, de
    and $7f
    cp c
    ccf
    db $fd
    inc l
    rst $38
    sbc $3c
    ld a, h
    sbc l
    ei
    call nz, $ec72
    ld e, [hl]
    ldh [$5b], a
    ldh [$b7], a
    ld l, b
    ld d, c
    xor $4c
    ei
    ld b, d
    cp a
    rlca
    rst $38
    ld e, h
    db $e3
    and h
    jp $c827


    cp [hl]
    call c, $cc12
    jp hl


    sub h
    ld l, e
    sbc h
    sbc b
    rst $20
    xor c

Call_075_4eb3:
    rst $38
    jr nc, jr_075_4e55

    push de
    ld [hl+], a
    ld e, l
    ld [hl+], a
    ld d, [hl]

jr_075_4ebb:
    ld hl, $3085
    add b
    cp h
    add sp, -$6c
    add e
    call z, $cee1
    ld b, b
    rst $00
    db $e3
    ld b, [hl]
    cp l
    ld h, d
    adc [hl]
    ld [hl], c
    dec l
    ld a, [c]
    ld sp, $75ce
    adc d
    sub l
    ld a, [bc]
    pop de
    ld c, $28
    rst $00
    ld d, c
    xor [hl]
    add sp, $1f
    dec bc
    db $fc
    ld [hl], c
    adc [hl]
    ld [hl], d
    adc l
    ld sp, hl
    ld b, $f9
    ld b, $f8
    rlca
    jr nc, jr_075_4ebb

    jp $b43c


    ld c, a
    ret nz

    ccf
    ret c

    scf
    ld [de], a
    rst $28
    ld l, b

jr_075_4ef7:
    scf
    add $3d
    xor c
    ld d, [hl]
    ret nc

    ld l, a
    sub c
    ld l, [hl]
    dec sp
    call nz, $946b
    db $10
    rst $28
    inc c
    di

jr_075_4f08:
    add b
    ld a, a
    inc e
    rst $20
    ld a, [$e305]
    inc e
    ld e, b
    and a
    and l

jr_075_4f13:
    ld a, e
    ld b, b
    cp a
    xor c
    ld e, [hl]
    adc c
    ld [hl], a
    ldh [$1f], a
    adc c
    db $76
    pop bc
    ld a, $08
    rst $30
    db $d3
    ld l, h
    ld c, b
    rst $30
    ld b, b
    cp a
    rlca
    db $fc
    cp h
    ld b, e
    rst $38
    nop
    jr nc, jr_075_4f13

    ld h, c
    sub d
    jr jr_075_4ef7

    ret nc

    nop
    jr nz, jr_075_4f08

    pop af
    add d
    scf
    ret z

    ld b, h
    ld a, [$d8c6]
    ld b, $d8
    db $76
    sbc b
    ld d, a
    sbc b
    sbc a
    ld h, b
    add a
    ld h, b
    or b
    nop
    add b
    nop
    cp d
    nop
    sbc d
    ld h, a
    ld e, $e3
    db $10
    rst $28
    db $e3
    ld a, h
    dec e
    db $e3
    dec d
    ei
    jp c, Jump_075_4afd

    db $f4
    ld c, e
    or h
    swap h
    push de
    cp $43
    db $fc
    sbc b
    db $e4
    ld [$31ff], sp
    rst $38
    ld c, $fb
    ld a, [de]
    ldh [$a2], a
    ld d, c
    sbc d
    ld [hl], l
    cp b
    ld a, [hl]
    ld [hl-], a
    db $fc
    xor [hl]
    db $10
    rst $08
    inc sp
    dec e
    di
    inc de
    cp $4f
    ldh a, [$0c]
    di
    sbc a
    pop hl
    ld h, a
    sbc b
    add d
    ld a, l

jr_075_4f8c:
    inc bc
    db $fc
    ld b, e
    cp h
    ld a, l
    rst $38
    rst $20
    ld sp, hl
    ld [hl+], a
    db $dd
    ret c

    ld a, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    rra
    sub b
    ccf
    add hl, hl
    sbc $02
    rst $38
    rst $30
    rst $38
    ld [hl], d
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $ec
    ld l, e
    db $e4
    ld [hl], c

jr_075_4fb1:
    and $a5
    or $1c
    and $ce
    jr nc, jr_075_4f8c

    jr nz, jr_075_4fce

    ldh [$e2], a
    add c
    db $10
    add e
    ld h, d
    sbc c
    ld bc, $09f8
    db $f4
    ld b, h
    jr c, jr_075_4fb1

    nop
    ld [hl], a
    add b
    rst $30
    nop

jr_075_4fce:
    db $eb
    inc b
    cp $01
    db $d3
    inc l
    xor l
    ld e, [hl]
    pop bc
    ld a, $aa
    ld d, l
    ld l, $d1
    inc bc
    db $fc
    sub e
    ld l, h
    reti


    rst $38
    or b
    rst $38
    ld b, b
    rst $38
    ld b, l
    rst $38
    push bc
    rst $38
    and c
    rst $18
    ret nz

    rst $38
    rst $08
    rst $38
    ret


    db $76
    ld c, b
    rst $30
    dec b
    ld a, [$bb44]
    nop
    rst $38
    cp b
    ld b, a
    add sp, $17
    ld a, h
    add e
    adc c
    db $76
    add e
    ld a, h
    ld b, $f9
    dec de
    db $ec
    ld [de], a
    db $ed
    add hl, de
    and $1e
    pop hl
    or d
    ld c, l
    xor $11
    ld a, h
    add e
    nop
    rst $38
    ld [hl], h
    xor a
    ld a, h
    or e
    ld l, [hl]
    pop af
    dec [hl]
    adc $8c
    ld [hl], e
    ld [hl], c
    adc [hl]
    db $f4
    ld l, e
    push de
    ld l, d
    and a
    ret c

    ld c, a
    sub b
    xor l
    add b
    dec a
    nop
    ld d, a
    nop
    ld h, [hl]
    sbc l
    ld b, [hl]
    db $fd
    jp nc, Jump_000_172d

    ld l, c
    adc d
    ld [hl], l
    jp c, $f225

    dec l
    ld h, c
    ld e, $20
    rra
    ld e, h
    ccf
    sbc e
    ld a, [hl]
    or d
    ld c, l
    ld e, $e1
    xor a
    ld a, a
    ld l, d
    rst $38
    sbc a
    ld a, [hl]
    sbc l
    jp nc, $d32d

    ld l, [hl]
    pop de
    ld h, d
    sbc a
    adc a
    ldh a, [$ec]
    rst $38
    sbc e
    db $ed
    jp nz, $a13f

    ld e, [hl]
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld sp, hl
    ld b, $7b
    adc h
    call z, $ac7f
    ld a, a
    ld b, h
    dec sp
    add [hl]
    ld a, c
    inc bc
    rst $38
    ld b, d
    cp l
    ld e, d
    ld bc, $015e
    ld d, $cf
    xor [hl]
    rst $08
    add b
    rst $38
    ld de, $d16e
    cpl
    ld l, a
    add b
    inc d
    adc e
    db $e4
    rra
    ret z

    ld a, a
    pop bc

jr_075_508d:
    ld a, $30
    rst $08
    rst $30
    rst $08
    rla
    rst $28
    add l
    ld a, a
    call nc, $4d2f
    or [hl]
    ld h, a
    ldh a, [$89]
    or $2b
    sub $f4
    jr nc, jr_075_5115

    add a
    jr jr_075_508d

    ld e, $e1
    ld b, b
    rst $30
    pop de
    ld h, $a3
    inc b
    jp z, $f735

    nop
    ld h, $00
    ld [hl], c
    ld b, $91
    ld h, [hl]
    add hl, de
    and $1b
    db $e4

Jump_075_50bc:
    adc b
    ld [hl], a
    ret z

    scf
    ld [hl], b
    add a
    ld [hl], d
    add c
    add c
    ld [bc], a
    db $76
    ld bc, $f314
    call nz, $8b33
    ld [hl], b
    xor b
    ld d, b
    nop
    rst $38
    nop
    rst $38
    ld bc, $85fe
    ld a, d
    add a
    ld a, b
    jp Jump_000_023c


    db $fd
    rst $30
    dec c
    ld bc, $f0ff
    rrca
    db $eb
    inc d
    dec b
    ld a, [$7f80]
    ld c, $f1
    rrca
    ldh a, [$63]
    sbc h
    ld [hl], l
    adc d
    ld [de], a
    db $ed
    add hl, sp
    rst $00
    cp d
    ld b, l
    rrca
    ldh a, [$80]
    ld a, a
    db $10
    rst $28
    ld de, $25ee
    db $db
    or l
    ld c, e
    ld a, [hl-]
    rst $00
    xor d

jr_075_5107:
    ld d, a
    ld c, l
    or d
    and e
    ld e, h
    db $dd
    ld [hl+], a
    rst $18
    jr nz, @+$21

    ldh [$7f], a
    add c
    ccf

jr_075_5115:
    ret nz

    ld e, h
    and e
    sbc $21
    ld e, d
    and l
    inc e
    db $e3
    jr jr_075_5107

    add [hl]
    ld a, l
    ld b, h
    cp a
    add hl, hl
    sbc $39
    adc $98
    ld a, a
    db $dd
    ld a, $80
    ld a, [hl]
    jp nz, $0a3c

Jump_075_5131:
    db $fc
    db $fd
    nop
    jp z, Jump_075_4020

    add b
    ld b, h
    add b
    jp nz, Jump_075_463c

    cp b
    rst $28
    db $10
    ld a, $54
    db $db
    inc h
    db $76
    add c
    sub d
    ld bc, $800b
    cp h
    add b
    ld h, [hl]
    add b
    ld hl, $81c0
    ld a, [hl]
    ld [hl-], a
    rst $08
    rst $28
    rra
    inc hl
    rst $18
    sbc e
    ld l, a
    add e
    ld a, [hl]
    ld a, [hl-]
    db $fd
    and b
    ld a, a
    db $d3
    inc a
    sbc h
    ld h, e
    ld b, e
    db $fc
    jp hl


    ld a, [hl]
    ld c, b
    cp a
    dec b
    ld a, [$f926]
    inc e
    db $e3
    pop bc
    rst $38
    ldh [$f7], a
    ld [hl], e
    cp $87
    ei
    add l
    ei
    di
    db $fc
    pop af
    cp $f6
    rst $38
    ld a, [bc]
    pop af
    ld l, e
    db $10
    jp c, Jump_000_3f00

    ret nz

    dec b
    ld a, [$a2dd]
    add sp, $07
    ld [hl], b
    ld bc, $b851
    or a
    ld c, b
    or d
    db $ed
    ld hl, $24fe
    ei
    ld bc, $9a7b
    ld h, c
    ld h, $f9
    ld b, d
    cp l
    or h
    rrca
    cp $0f
    ld c, $f9
    ld b, a
    ld hl, sp-$70
    ld l, a
    and [hl]
    ld c, c
    ccf
    rst $08
    or a
    ld c, e
    ld b, h
    dec de
    dec e
    adc $18
    rst $08
    adc b
    ld e, a
    db $e4
    dec de
    add $38
    call z, $943a
    dec hl
    ld a, [$7201]
    ld bc, $0064
    ld h, [hl]
    add b
    ld a, [$6840]
    ld d, b
    or d
    ld b, c
    db $10
    rst $38
    db $fc
    inc hl
    and b
    ld e, a
    ld bc, $0cfe
    di
    ld h, l
    cp e
    call nc, $c06b
    cp a
    adc $b3
    inc bc
    db $fd
    ld l, l
    sub e
    inc [hl]
    bit 7, h
    add e
    add hl, hl
    rst $30
    ld h, b
    rst $38
    ld l, a
    rst $18
    add $3f
    and $19
    ld a, $fb
    set 7, h
    ld [bc], a
    db $fd
    ld b, $f9
    add a
    ld hl, sp-$33
    ld a, [c]
    sub [hl]
    jp hl


    cpl
    ret nc

    sbc d
    ld h, l
    ld b, c
    cp [hl]

jr_075_5208:
    ld h, d
    sbc l
    inc d
    db $eb
    ret c

    daa
    ldh [$1f], a
    rst $38
    ld [bc], a
    pop hl
    ld e, $a6
    ld a, c
    pop bc
    ld a, [hl]
    xor $91
    ld [bc], a
    rst $38
    sbc c
    db $76
    cp c
    ld c, [hl]
    daa
    ret c

    add hl, hl
    sbc $76
    adc l
    ld b, l

jr_075_5227:
    cp d
    jr nz, jr_075_5208

    ld c, l
    or b
    ld a, h
    nop
    adc e
    nop
    ldh [rIE], a
    adc d
    rst $38
    ld b, b
    rst $38
    ld de, $62ff
    db $fc
    di
    ld a, h
    rst $38
    rst $38
    di
    rst $38
    or h
    ei
    and h
    ei
    ld [$ebbf], a
    rst $38
    db $ed
    cp $6d
    cp $ee
    ld a, h
    and c
    cp $7b
    add $db
    ld h, h
    add hl, de
    and $ca
    ld [hl], a
    and $39
    adc a
    ld a, h
    xor [hl]
    pop bc
    jr z, jr_075_5227

    dec d
    rst $20
    ld a, [hl]
    add c
    ld c, c
    ld a, $8b
    ccf
    ld d, c
    xor a
    adc c
    ld [hl], a
    xor $71
    jp nz, Jump_000_3735

    rst $08
    sbc a
    rst $20
    cpl
    db $fd
    ld [hl], h
    adc a
    rlca
    cp [hl]
    ld [$337f], a
    rst $38
    ld b, $ff
    cpl
    db $10
    ld d, a
    jr c, jr_075_52a8

    inc e
    and a
    ld e, $38
    jp $c03b


    ld b, l
    cp d
    ld [hl+], a
    sbc a
    inc hl
    rst $38
    cp $3f
    inc hl
    rst $18
    ret z

    di
    rra
    ld hl, sp+$14
    ei
    ld [bc], a
    db $fd
    ld b, a
    cp $7f
    add b
    xor e
    db $10
    or a
    ld e, c
    sbc a
    ld h, b

jr_075_52a8:
    ret


    jr nc, jr_075_52ac

    inc a

jr_075_52ac:
    sbc l
    ld [bc], a
    rst $08
    nop
    nop
    rst $38
    ld l, $f9
    inc d
    ld sp, hl
    or b
    ld e, a
    ldh [$1f], a
    ld hl, sp+$0f
    add c
    ld l, [hl]
    ld a, b
    inc bc
    ld e, $21
    inc bc
    inc c
    sub d
    ld c, $9f
    ld c, $de
    dec c
    ld a, [c]
    rrca
    ld a, [$3505]
    jp nz, $df28

    inc h
    rst $18
    rst $30
    ld c, $87
    ld a, a
    rra
    rst $30
    ccf
    rst $30
    ccf
    cp $3f
    db $fd
    sbc a
    ld a, b
    inc a
    rst $38
    ldh a, [rIE]
    jr nz, @+$01

    ld h, b
    cp a
    and e
    db $fc
    ld hl, sp-$40
    ld hl, sp-$80
    ld h, [hl]
    rst $38
    add c
    cp $ad
    rst $38
    rst $38
    rst $38
    or h
    rst $38
    add h
    rst $38
    ld b, $ff
    ld d, b
    xor a
    ld a, l
    add d
    xor [hl]

jr_075_5303:
    ld d, c
    rst $18
    ldh [$cd], a
    ld a, [c]
    ld e, [hl]
    and c
    cpl
    ldh a, [$f3]
    adc h
    rst $30
    nop
    ld b, a
    cp b
    pop hl
    ld e, $b1
    ld e, [hl]
    inc l
    rst $38
    add e
    db $fc
    ld [de], a
    db $ed
    rlca
    ld hl, sp+$21
    sbc $40
    rst $38
    sub b
    rst $28
    or b
    ld c, a
    xor $11
    ld h, l
    ld a, [de]
    add e
    ld a, $60
    rra
    rst $00
    jr c, jr_075_5398

    rst $38
    adc b
    ld [hl], a
    daa
    nop
    xor e
    inc b
    jp z, Jump_000_1407

    db $e3
    bit 7, h
    sub h
    ld a, [hl]
    rst $10
    ld [$5f92], sp
    ld h, a
    sbc [hl]
    xor e
    inc e
    and a
    jr jr_075_5303

    rlca
    and h
    dec de
    ld d, [hl]
    dec bc
    dec hl
    ld d, $6f
    sub b
    rla
    ret z

    ccf
    ret nz

    dec h
    jp nc, Jump_000_00fb

    and c
    ld e, [hl]
    inc hl
    call c, Call_000_009e
    ld c, a
    sub b
    rlc b
    ld a, [de]
    ld bc, $03fe
    ld sp, hl
    ld b, $3a
    call nz, Call_075_4eb3
    sbc b
    ld h, a
    dec [hl]
    srl [hl]
    jp $3bc5


    ld c, b
    scf
    ld [hl+], a
    rlca
    ret nc

    rlca
    xor [hl]
    ld de, $ffc1
    ld a, b
    rst $00
    adc d
    ld [hl], a
    ld b, c
    ccf
    ld l, l
    di
    ld a, [c]
    db $fd
    db $10
    rst $38
    ld d, b
    rst $38
    rlca
    ei
    db $db
    rst $20
    ccf
    di
    ccf
    pop af

jr_075_5398:
    or l
    ld a, a
    rra
    ld a, a
    ld e, e
    cp a
    ld a, [hl-]
    jp Jump_075_6b95


    adc d
    ld [hl], l
    ld h, c
    rst $30
    rst $20
    ei
    cpl
    ei
    inc de
    rst $38
    inc hl
    db $dd
    jp nz, Jump_000_133d

    db $fc
    inc bc
    db $fc
    ld l, d
    push af
    ld h, [hl]
    ld sp, hl
    ld l, a
    sub b
    inc de
    db $e4
    db $d3
    and $42
    pop af
    ld a, [bc]
    rst $30
    sub $23
    ld e, $63
    adc b
    ld h, a
    dec sp
    add $7b
    call z, $ccff
    xor h
    sbc $2f
    ret nc

    rrca
    ldh a, [$fd]
    add b
    sbc c
    ldh [$bb], a
    ret nz

    or e
    ret nz

    cp c
    ret nz

    sbc b
    ldh [$ce], a
    pop af
    rst $38
    ldh a, [rNR41]
    rst $38
    jr nz, @+$01

    ld l, c
    or $21
    call c, Call_000_08ff
    call nc, Call_075_4e2b
    or c
    inc [hl]
    srl [hl]
    pop bc
    xor d
    push de
    sbc l
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ret z

    rst $38
    inc bc
    rst $38
    sub c
    rst $38
    adc e
    rst $30
    ld c, h
    cp a
    ld l, $df
    inc b
    rst $38
    or e
    rst $38
    ld [$21ff], sp
    sbc $00
    rst $38
    xor b
    ld a, a
    ld e, c
    rst $38
    dec c
    rst $38
    ld b, l
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld h, $d9
    ld c, b
    or a
    jp nc, $086d

    rst $30
    ld c, [hl]

jr_075_5429:
    cp e
    ld b, b
    cp a
    add hl, bc
    or $92
    ld h, l
    rst $20
    rst $38
    push hl
    rst $38
    adc $f1
    pop bc
    db $fc
    ld bc, $a3fc
    ld sp, hl
    add hl, bc
    rst $30
    ld l, c
    or $29
    call nz, Call_075_408d
    ld d, l
    jr z, jr_075_5468

    call c, Call_000_1ee5
    jp c, $d807

    daa
    sub $7f
    dec sp
    call nz, Call_000_000f
    push bc
    ld [bc], a
    inc e
    inc bc
    rst $28
    db $10
    dec l
    nop
    sub $09
    db $fd
    ld [hl+], a
    ld [hl], b
    rst $38
    ld a, e
    cp h
    and h
    ld a, e
    inc de
    rst $28

jr_075_5468:
    jr jr_075_5429

    db $d3
    inc a
    or a
    ld a, b
    pop hl
    ld a, a
    inc hl
    db $fd
    jp z, Jump_000_2bfd

    db $f4
    inc bc
    db $fc
    db $e3
    db $fc
    cpl
    ldh a, [rNR12]

jr_075_547d:
    rst $38
    ret nz

    rst $38
    ld h, d
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld c, $f1
    inc c
    di
    dec h
    db $db
    dec b
    rst $38
    ld l, b
    rst $30
    daa
    ldh a, [$37]
    ld hl, sp+$3f
    ret c

    add e
    call c, $c897
    sbc [hl]
    ldh [rNR34], a
    and $ca
    scf
    db $fc
    inc sp
    ld [$ee11], a
    ld de, $9c4b
    ret z

    add a
    ld [hl+], a
    rst $00
    ld a, [hl-]
    add a
    dec e
    jr nc, jr_075_547d

    jr nc, jr_075_54f8

    ld a, [de]
    rst $28

jr_075_54b5:
    nop
    sbc [hl]
    ld h, b
    ld b, a
    ld hl, sp+$47
    ld hl, sp-$3d
    ld a, b
    ld d, c
    ld [$14a9], sp
    ld h, d
    dec e
    ld l, d
    dec c
    inc [hl]
    ld b, c
    ld [hl], d
    ld bc, $3340
    ld e, d
    ld sp, $3b30
    ld [bc], a
    db $fd
    ld c, b
    or a
    ld de, $11ee
    xor $37
    ret z

    ld l, a
    sub b
    ld c, [hl]
    or c
    db $d3
    inc a
    sub e
    ld l, h
    di
    inc c
    inc a
    jp $8778


    jr nz, jr_075_5509

    call nc, $8320
    ld a, b
    ld l, a
    jr nc, jr_075_54b5

    dec sp
    inc c
    ld a, a
    ret z

    ccf
    ld b, b
    cp a

jr_075_54f8:
    dec d
    rst $28
    dec bc
    rst $38
    ld c, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    inc hl
    rst $18
    inc hl
    rst $38
    inc de
    rst $38
    dec c

jr_075_5509:
    rst $38
    rra
    rst $38
    ld c, $ff
    adc $ff
    sbc $20
    ld l, e
    db $10
    rra

jr_075_5515:
    ldh [$5f], a
    ldh [rSC], a
    db $fd
    ld b, c
    cp [hl]
    nop
    rst $38
    sbc e
    ld h, h
    adc b
    nop
    ld c, $00
    ld b, b
    nop
    ld [c], a
    nop
    or e
    nop
    call nc, $ed00
    ld [bc], a
    db $10
    rrca
    pop af
    rrca
    ret c

    cpl
    sbc h
    ld h, e
    rst $38
    jr nz, jr_075_5515

    inc hl
    ld a, a
    nop
    ccf
    nop
    rlca
    nop
    ld d, $ff
    adc [hl]
    ld a, a
    ld b, d
    rst $38
    ld a, [$1aff]
    rst $38
    ld d, $ff
    inc c
    rst $38
    ld [hl], e
    inc c
    or a
    ld a, b
    jp c, $987c

    db $fc
    and b
    call c, $a8d5
    add c
    ld a, a
    cp h
    rst $08
    db $e4
    db $db
    add hl, hl
    sbc a
    ld [hl], a
    rst $38
    pop hl
    rst $38
    jp Jump_000_3eff


    rst $30
    sbc $33
    pop af
    rrca
    rla
    rst $28
    ld e, l
    db $e3
    ld [$b875], a
    ld d, a
    rrca

jr_075_5577:
    ldh a, [rLY]
    ld hl, sp+$05
    ld hl, sp+$59
    cp l
    sub l
    db $eb
    sub c
    ld a, b
    ld b, $f9
    add l
    ld a, a
    ld e, a
    or b
    ld d, a
    cp b
    ld a, l
    cp b
    or d
    ret


    call c, $56e3
    add c
    ld e, b
    and a
    sbc b
    ccf
    and c
    ld e, $94
    dec bc
    ld e, $01
    push bc
    ld a, [hl-]
    ld bc, $b0fe
    ld c, a
    ld h, b
    sbc a
    ld [hl], e
    adc h
    ld d, e
    adc h
    db $dd
    ld b, $75
    adc d
    ld l, l
    or d
    dec h
    ei
    rst $10
    add hl, hl
    rst $38
    ld bc, $621d
    rst $08
    jr nz, jr_075_5577

    ld bc, $91ee
    xor $91
    ld l, b
    sub a
    ldh [$1f], a
    sub b
    ld l, a
    inc de
    xor $fc
    set 6, b
    res 2, d
    ld b, c
    sbc l

jr_075_55cd:
    nop
    db $fd
    nop
    adc h
    ld [hl], e
    inc c
    di
    dec l
    ret nc

    add l
    ld a, b
    adc [hl]
    ld [hl], b
    inc hl
    call c, $9ce3
    call z, $d833
    daa
    adc a
    ld [hl], a
    ld d, $ff
    ld de, $8cfe
    ld [hl], e
    ld a, a
    nop
    or $03
    sbc $20
    ld sp, hl

jr_075_55f1:
    ld b, $c7
    jr c, jr_075_5636

    cp $15
    ld [$f788], a
    ret


    rst $30
    nop
    rst $38
    ld d, $fb
    nop
    rst $38
    rra
    rst $38
    adc c
    rst $38
    ldh [rIE], a
    jp z, $c0ff

    rst $38
    pop hl
    rst $38
    ld b, h
    ei
    ld d, $e9
    ld b, $f9
    adc h
    pop af
    add hl, hl
    ldh a, [$a7]
    ld hl, sp+$65
    ld a, [$f887]
    add [hl]
    ld hl, sp-$08
    nop
    ld d, b
    jr nz, jr_075_55cd

    nop
    pop af
    nop
    ei
    nop
    ld sp, hl
    ld bc, $817c
    jr nc, jr_075_55f1

    and c
    nop
    ld bc, $c280
    nop

jr_075_5636:
    db $e3
    nop
    rst $30
    nop
    rla
    nop
    push af
    nop
    rst $30
    nop
    dec hl
    rst $30
    ld b, e
    rst $38
    inc bc
    rst $38
    ld [bc], a
    db $fd
    adc [hl]
    pop af
    rra
    ldh [$de], a
    ld bc, $0330
    ld c, b
    rlca
    ld c, h
    rlca
    inc e
    rlca
    inc a
    rrca
    inc d
    dec bc
    cp h
    rrca
    ld l, l
    sbc [hl]
    jp nc, $010d

    sbc [hl]
    push bc
    cp [hl]
    xor c
    rst $18
    db $ed
    sbc a
    ld [$7f9f], a
    add b
    pop hl
    nop
    ldh [rP1], a
    inc l
    di
    ei
    db $e4
    add b
    rst $28
    inc h
    rst $08
    sub c
    ld c, a
    ld l, e
    rst $10
    di
    rst $08
    or c
    rst $28
    ld a, b
    rlca
    xor h
    ld a, a
    sub b
    ld a, a
    ld [$687f], sp
    rst $20
    add hl, hl
    ldh a, [$60]
    ld sp, hl
    ld b, $f9
    xor d
    pop af
    ld [de], a
    db $ed
    ld c, d
    cp l
    ld c, [hl]
    or c
    xor $11
    rla
    add sp, -$74
    ldh a, [$99]
    ld h, [hl]
    inc sp
    xor $67
    cp $57
    rst $28
    ccf
    rst $30
    xor a
    ld [hl], a
    or d
    ld a, a
    cp l
    db $76

jr_075_56ae:
    ld d, d
    cp a
    ld d, $fb
    xor h
    db $d3
    rst $38
    add e
    ld h, l
    bit 5, h
    di
    ld [hl], b
    cp a
    db $e3
    dec e
    rst $30
    add hl, bc
    xor d
    dec d
    ld d, d
    sbc l
    ld l, [hl]
    add [hl]
    ld l, [hl]
    add [hl]
    add $2e
    sub e
    ld l, h
    dec c
    cp $00
    rst $38
    jp z, Jump_000_20ff

    rst $38
    add e
    ld a, h
    rst $28
    db $10
    and b
    ld e, a
    ld a, [bc]
    rst $38
    push af
    jp z, $fff0

    adc $31
    ldh [$1f], a
    xor [hl]
    rra
    pop hl
    ld e, $33
    call z, $8c63
    jr c, jr_075_56ae

    ld [hl+], a
    ld e, h
    ret nz

    rra
    rst $18
    ldh [$6d], a
    ldh a, [$72]
    push hl
    ret z

    rst $38
    ld a, d
    db $fd
    ld a, l
    cp $a1
    cp $38
    ldh [$1f], a
    ldh [$b7], a
    ret z

    ld h, a
    sbc h
    dec h
    sbc $6b
    sbc a
    ld b, e
    cp a
    ld d, [hl]
    cp a
    cp $01
    ld a, d
    add l
    ld [$f505], a
    ld [bc], a
    ld hl, sp+$07
    ld c, h
    inc sp
    ld b, [hl]
    add hl, sp
    ld a, $79
    rrca
    ld a, b
    ld l, h
    or e
    ld c, h
    di
    ld e, c
    ld [c], a
    dec sp
    pop bc
    add a
    ld [hl], c
    dec h
    reti


    rlca
    ld hl, sp+$0f
    ldh a, [$cb]
    ld [hl], b
    adc h
    di
    rst $08
    ld [hl], b
    rst $08
    ldh a, [$e7]
    ld hl, sp-$16
    db $fd
    jp c, $d7ed

    add sp, -$6a
    jp hl


    adc h
    ld [hl], e
    dec bc
    rst $30
    adc a
    ld [hl], a
    add c
    ld a, a
    ld h, c
    rst $38
    ld b, l
    ei
    dec b
    ei
    ld b, c
    rst $38
    rst $00
    ei
    ld b, h
    cp e
    and [hl]
    ld e, c
    sbc h
    ld h, e
    ld d, b
    xor a
    call nz, $d63f
    ccf
    call $d336
    inc l
    add sp, $1f
    ret nc

    rrca
    db $db
    inc c
    sbc [hl]
    ld bc, $0b75
    ld c, d
    dec [hl]
    add b
    ld a, a
    inc hl
    call c, Call_075_5ba4
    ld a, [hl+]
    push de
    ld l, c
    sub [hl]
    inc hl
    db $fc
    add a
    ld a, b
    ld h, a
    sbc b
    ld [c], a
    dec e
    db $eb
    inc e
    inc bc
    inc e
    inc de
    inc c
    ld [hl], a
    ld [$ce39], sp
    nop
    rst $38
    ld a, [$d1ff]
    cpl
    jp nz, Jump_000_2a3f

    rst $10
    and b
    rst $38
    or d
    ld a, a
    ld de, $69ff
    rst $38
    rra
    ld [hl], b
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, c
    ld b, $fd
    inc b
    rst $38
    ld h, l
    ld a, [hl-]
    sub d
    ld a, a
    adc e
    db $76
    jp z, $8037

    ccf
    ld b, e
    cp a
    ld sp, $110f
    rrca
    ld sp, $1fcf
    ldh [$ae], a
    pop de
    dec c
    inc bc
    ld c, $01
    xor [hl]
    ld b, c
    ldh a, [rVBK]
    ld d, a
    ld [$0788], sp
    ld b, b
    rlca
    rrca
    ldh a, [rPCM34]
    adc b
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld d, e
    xor l
    inc b
    ei
    inc bc
    rst $38
    sub e
    ld a, a
    ld [hl], $c9
    ld e, a
    and b
    sbc $21
    sbc [hl]
    ld h, c
    dec e
    db $e3
    sbc e
    dec b
    ld c, $01
    ld c, d
    ld bc, $f28d
    db $10
    rst $38
    srl l
    db $e3
    rra
    jp Jump_075_621f


    sbc l
    add c
    cp $bb
    db $fc
    inc a
    nop
    ld [c], a
    ld bc, $01f2
    ld e, e
    ld hl, $21df
    cp d

jr_075_580b:
    ld b, l
    ld a, [hl+]
    push de
    scf
    ret


    sbc [hl]
    pop hl
    ld a, c
    add a
    ld [hl], l
    adc c
    ld a, a
    add b
    db $d3
    inc l
    db $f4
    dec bc
    ld sp, $64cf
    rst $18
    add sp, -$69
    ld e, b
    rst $20
    ld l, l
    or $34
    ei
    ld h, $f9
    jr z, jr_075_580b

    dec hl
    sub $24
    rst $18
    db $f4
    rrca
    xor a
    ld [de], a
    adc b
    rla
    ret


    rla
    xor e
    dec d
    db $fc
    inc bc
    or h
    ld c, e
    or a
    ld c, b
    db $10
    db $eb
    inc d
    db $eb
    db $10
    rst $28
    dec de
    db $e4
    db $e3
    db $fc
    db $db
    db $e4
    sbc c
    add $92
    rst $08
    jp hl


    sub a
    sbc h
    ld h, e
    adc [hl]
    pop af
    ld b, $f9
    xor a
    ld d, b
    ld a, [hl]
    add c
    ld a, [bc]
    push af
    inc de
    xor $90
    ld l, a
    sub h
    ld l, e
    and b
    ld e, a
    sub b
    ld l, a
    ret nz

    ld a, a
    nop
    rst $38
    ld b, h
    cp e
    inc b
    ei
    nop
    rst $38
    ld [de], a
    db $ed
    dec b
    ld a, [$ef10]
    add l
    ld a, d
    add h
    ld a, e
    ld b, b
    cp a
    ld [bc], a
    db $fd
    ld b, c
    cp h
    ld h, [hl]
    sbc c
    ld l, l
    sub b
    rla
    ldh [$5b], a
    db $e4
    ld [de], a
    db $ed
    sbc b
    ld h, a
    call nz, $3b3b
    rst $38
    ld l, c
    cp a
    ld b, a
    cp a
    rra
    rst $38
    inc de
    rst $38
    rra
    rst $38
    dec [hl]
    rst $38
    scf
    rst $38
    inc bc
    inc bc
    ld b, $07
    dec de
    rra
    ld a, a
    db $d3
    ld sp, hl
    ld l, a
    ld a, [c]
    rrca
    dec sp
    ld b, a
    ld e, h
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    ld e, $3f
    ccf
    ccf
    ccf

jr_075_58b9:
    rra
    ccf

Call_075_58bb:
    rra
    cp a
    sbc a
    cp a
    sbc a
    sbc a
    ccf
    cp a
    sbc a
    ld e, a
    rrca
    rst $18
    rst $08
    rst $38
    ld l, a
    rst $38
    cpl
    cp a
    cpl
    rst $28
    ld c, a
    scf
    ld c, a
    ld l, a
    rla
    ld e, e
    add a
    ld [hl], l
    adc e
    ld [hl], l
    adc e
    db $fc
    inc bc
    xor h
    inc de
    add sp, $17
    ld a, b
    add a
    sbc b
    ld h, a
    ret c

    daa
    ld [hl], h
    adc a
    jr jr_075_58b9

    ld a, [hl-]
    rst $08
    ld sp, $d7cf
    xor a
    inc de
    rst $28
    daa
    rst $18
    add c
    rst $38
    ld h, b
    sbc a
    ld h, h
    sbc a
    push de
    cpl
    ld b, c
    ccf
    ld l, h
    dec de
    dec c
    ld [bc], a
    add c
    ld b, $83
    add [hl]
    add l
    jp nz, $c2a5

    ld l, l
    jp nz, $e0de

    sub a
    add sp, -$23
    ld [c], a
    db $fc
    jp $e3dc


    sbc $e1
    cp [hl]

jr_075_5919:
    ld h, c
    xor a
    ld [hl], b
    ld e, [hl]
    and c
    ccf
    ret nz

    ld h, a
    ld hl, sp-$79
    ld a, b
    db $d3
    inc l
    add e
    ld a, h
    add hl, sp
    add $38
    rst $00

jr_075_592c:
    ld e, h
    and e
    or h
    ld c, e
    ld l, a
    sub b
    rst $10
    jr z, jr_075_592c

    ld [$ac53], sp
    dec [hl]
    ld [$cc33], a
    adc l
    ld [hl], d
    ld l, e
    or $e4

jr_075_5941:
    ei
    and a
    ret c

    jp $7bfc


    add h
    add hl, sp
    add $ee
    ld de, $00ff
    ld [hl], a
    adc b
    pop de
    ld l, $e9

jr_075_5953:
    ld d, $f7
    ld [$4bb4], sp
    sub d
    ld l, a
    sbc d
    ld h, a
    adc d
    ld [hl], l
    ld a, [de]
    rst $20
    ld a, $cb
    inc sp
    rst $08
    db $76
    adc l
    ld d, b
    xor a
    or d
    ld l, l
    jr c, jr_075_5953

    ld l, l
    or d
    ld a, [hl+]
    push af
    jr nc, jr_075_5941

    sbc b
    ld h, a
    ld hl, $03df
    cp $00
    rst $38
    ld b, d
    cp l
    or $09
    or d
    ld c, l
    ld l, $d1
    rlca
    ld hl, sp-$02
    ld bc, $01ae
    ld a, d
    dec b
    db $fd
    inc bc
    db $f4
    inc bc
    xor h
    inc bc
    jr nc, jr_075_5919

    ld a, b
    add a
    ld a, b
    add a
    ld hl, sp+$07
    cp e
    ld b, a
    adc a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    and a
    rst $38
    jr @+$01

    ldh [rIE], a
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
    ret nz

    rst $38
    and b
    rst $38
    and b
    rst $38
    db $e4
    rst $38
    cp b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    call nc, $e0ff
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $38
    cp $ff
    db $fc
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
    jr jr_075_5a03

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_075_5a13

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_075_5a23

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_075_5a33

    ld [hl-], a

jr_075_5a03:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_075_5a43

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_075_5a13:
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

jr_075_5a23:
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

jr_075_5a33:
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

jr_075_5a43:
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
    jr jr_075_5b03

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_075_5b13

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_075_5b23

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_075_5b33

    ld [hl-], a

jr_075_5b03:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_075_5b43

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0304

jr_075_5b13:
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $03
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld bc, $0403

jr_075_5b23:
    ld bc, $0505
    ld [bc], a
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0404

jr_075_5b33:
    inc b
    ld bc, $0101
    ld bc, $0401
    nop
    inc bc
    nop
    nop
    inc bc

Call_075_5b3f:
    nop
    ld bc, $0404

jr_075_5b43:
    inc b
    inc b
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0304
    inc b
    inc b
    ld bc, $0401
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $0404
    inc bc
    inc bc
    ld bc, $0401
    inc b
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0304
    nop
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0004
    nop
    inc b
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0301
    inc b

Call_075_5ba4:
    ld bc, $0404
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0401
    inc bc
    ld bc, $0101
    inc b
    inc b
    inc b
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    ld bc, $0101
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0401
    inc bc
    inc bc
    ld bc, $0401
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    inc b
    ld bc, $0101
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc bc
    ld bc, $0404
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    nop
    nop
    nop
    inc b
    ld bc, $0101
    inc bc
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc b
    dec bc
    ld [$0808], sp
    inc c
    add hl, bc
    add hl, bc
    inc c
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld [$0808], sp
    ld [$090c], sp
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    inc c
    inc c
    dec bc
    dec bc
    ld [$0c08], sp
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0a
    dec c
    dec c
    inc c
    inc c
    ld [$0d0b], sp
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld b, b
    rst $38
    adc d
    rst $38
    jp $fcff


    rst $38
    nop
    rst $38
    ld a, [hl]
    add c
    add e
    db $fc
    ld l, a
    add b
    and b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld a, [$8500]
    ld a, d
    xor b
    ld e, l
    daa
    db $dd
    add c
    ld a, a
    jp nc, Jump_075_403f

    cp a
    ldh [$1f], a
    ld l, [hl]
    rra
    inc sp
    dec c
    rst $38
    ld bc, $03ff
    or a
    ld bc, $07d8
    adc h
    inc bc
    rst $20
    nop
    db $e3
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    db $fd

jr_075_5c9b:
    ld [bc], a
    rst $38

jr_075_5c9d:
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    cp a
    ld b, b
    xor a
    ld d, b
    rst $00
    jr c, @+$49

    cp b
    ld b, e
    cp h
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    pop bc
    ld a, $40
    cp a
    jr nz, jr_075_5c9b

    jr nz, jr_075_5c9d

    db $10
    rst $28
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld d, a
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    push hl
    ld a, [$e0f8]
    ldh a, [$80]
    ld hl, sp-$01
    db $fc
    rst $38
    call nz, $c0ff
    ccf
    ld h, e
    sbc h
    ld h, $d9
    cp l
    nop
    ld a, [c]
    add c
    ld h, d
    adc l
    dec sp
    ret nz

    ld [hl], d
    ld bc, $2255
    ld l, [hl]
    ldh a, [$86]
    ld sp, hl
    sub [hl]
    ld a, c
    ld a, a
    add b
    inc hl
    ldh [rNR50], a
    ret z

    sub h
    ld [$019f], sp
    jp nz, $e13d

    ld e, $08
    inc [hl]
    ld c, a
    jr nc, jr_075_5d99

    rst $38
    ld l, e
    db $fc
    sub b
    ld a, h
    ld a, h
    ld sp, hl
    ld a, e
    db $fc
    di
    db $fc
    db $e3
    db $fc
    ld c, b
    rst $38
    sbc a
    ld a, a
    xor b
    ld [hl], a
    ld b, d
    rst $38
    add $3f
    adc [hl]
    ld a, a
    ld c, $ff
    inc c
    rst $38
    ld [hl], e
    add a
    ldh a, [rTAC]
    call $bc26
    add $a6
    db $fc
    ld [$27fc], sp
    ld hl, sp+$4f
    ldh a, [$c5]
    ld [bc], a
    ret nz

    ccf
    rst $38
    nop
    ld a, [$f005]
    rrca
    rla
    rst $38
    xor a
    rst $38
    sbc a
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    cp $ff
    ld b, $f9
    ld h, c
    add b
    rst $28
    db $10
    jp nc, Jump_000_0e3d

    pop af
    adc l
    ld a, [c]
    ld [hl], d
    inc b
    xor d

jr_075_5d73:
    dec d
    dec sp

jr_075_5d75:
    add b
    ld b, b

jr_075_5d77:
    cp b
    dec c

jr_075_5d79:
    ldh a, [$87]

jr_075_5d7b:
    ld a, b
    sub b
    ld a, [hl]
    rst $18
    inc l
    ld [hl], a
    adc b
    ret z

    rst $30
    rst $38
    ei
    db $fc
    rst $38
    db $fc
    ld a, a
    inc e
    rst $38
    ld c, $f7
    inc hl
    rst $18

jr_075_5d90:
    adc l
    nop
    adc [hl]
    nop
    inc c
    nop
    inc b
    nop
    nop

jr_075_5d99:
    add b
    ld [bc], a
    add b
    ld b, c
    add b
    ld b, c
    add b
    ld l, l
    add b
    ld l, $c0
    inc a
    ret nz

    ld a, $c0
    inc [hl]
    ret nz

    inc c
    ret nz

    inc e
    ret nz

    jr jr_075_5d90

    ret nz

    jr nz, jr_075_5d73

    jr nz, jr_075_5d75

    jr nz, jr_075_5d77

    jr nz, jr_075_5d79

    jr nc, jr_075_5d7b

    jr nc, jr_075_5dfd

    or b
    ld b, b
    or b
    jr @-$0e

    inc c
    ldh a, [$08]
    ldh a, [rDIV]
    ld hl, sp+$4e
    ld hl, sp+$44
    ld hl, sp+$26
    ld hl, sp+$26
    ld hl, sp-$53
    db $fc
    xor a
    db $fc
    dec hl
    db $fd
    xor c
    db $fc
    ld hl, sp-$04
    db $fc
    db $fc
    cp $fc
    rst $30
    db $fc
    ldh a, [$fc]
    jp nz, $a2fc

    cp $56
    db $fc
    inc e
    ldh [$79], a
    add b
    sub e
    nop
    jp nz, $0200

    rst $38
    ld [de], a
    rst $38
    inc bc
    db $fc
    ld l, e
    add a
    xor b
    ld [hl], a
    ld [$01f1], sp

jr_075_5dfd:
    ldh a, [$27]
    ldh a, [rNR23]
    rlca
    cp [hl]
    ld a, l
    or b
    rst $38
    cp l
    ld a, [hl]
    ld h, a
    ld hl, sp+$5b
    and e
    ld l, c
    ld d, $e8
    nop
    ld h, d
    add h
    sub [hl]
    ld h, b
    ld [$5134], a
    db $ec
    inc hl
    call c, $48b7
    ld c, h
    jr nc, jr_075_5e5c

    ldh [$0c], a
    rst $38

jr_075_5e22:
    adc h
    ld a, a
    ld a, d
    db $fd
    ld a, l
    cp $02

jr_075_5e29:
    db $fc
    rst $18
    jr nz, jr_075_5e22

    ld c, $a1
    sbc $f1
    inc c
    ccf
    ld b, b
    ld l, c
    add [hl]
    or b
    ld c, a
    rst $18
    nop
    push de
    ld [$fbe5], sp
    rst $08
    di
    jr jr_075_5e29

    and c
    ld e, $4e
    ccf
    ld e, [hl]
    ccf
    ld hl, sp+$07
    pop bc
    nop
    rst $30
    ld [$1ec1], sp
    ld [$c5f7], sp
    ccf
    rrca
    rst $38
    scf
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38

jr_075_5e5c:
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    sbc a
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld h, b
    add b
    ld hl, sp+$04
    db $e4
    ld [$906e], sp
    ld b, d
    cp h
    or e
    ld a, h
    add [hl]
    ld a, l
    rst $18
    jr nz, jr_075_5edc

    rra
    ld hl, sp+$07
    cp h
    ld b, e
    and $19
    push hl
    ld a, [de]
    ld h, b
    sbc a
    ld [hl+], a
    db $dd
    ld [hl], $c9
    adc e
    ld [hl], h
    ld sp, $75f8
    ld hl, sp+$6e
    pop af
    db $e4
    dec de
    db $fc
    inc bc
    call nc, Call_075_5f2b
    and b
    rrca
    ldh a, [$a7]
    ld e, b
    ld [de], a

jr_075_5e9f:
    rst $28
    ld bc, $80fe
    rst $38
    add c
    ld a, a
    ld b, c
    cp [hl]
    ld b, c
    cp a
    call nz, Call_075_717b
    adc $25
    jp c, $e15e

    or [hl]
    ld c, c
    rst $30
    ld [$2bd4], sp
    ret c

    daa
    adc b
    ld [hl], a
    or h
    ld c, e
    rst $30
    ld [$c13e], sp
    rst $30
    ld [$ed12], sp
    and c
    ld e, [hl]
    db $10
    rst $28
    ldh [$3f], a
    jp nz, $ed3d

    db $d3
    ldh [rIE], a
    inc d
    rst $38
    add e
    ld a, h
    xor a
    ld [hl], b
    cp l
    ld h, d
    or d
    ld c, a

jr_075_5edc:
    adc h
    ld [hl], e
    db $10
    rst $28
    ld hl, sp+$0f
    sbc b

jr_075_5ee3:
    ld a, a
    db $e3
    inc e
    ld [c], a
    inc e
    cp $00
    db $dd
    jr nz, jr_075_5e9f

    nop
    cp [hl]
    nop
    ld hl, sp-$01
    or [hl]
    rst $38
    add l
    ld a, [c]
    rst $08
    rst $30
    reti


    rst $38
    rst $20
    rst $38
    ldh [$df], a
    add hl, sp
    cp $7b
    ldh [$b1], a
    ret nz

    ld e, $e1
    ld c, a
    or b
    db $fc
    nop
    jp z, $80f0

    ld a, b
    sbc $e0
    ld e, [hl]
    db $fd
    di
    ld hl, sp-$2d
    ldh [rNR12], a
    pop hl
    ld c, h
    db $e3
    jr z, jr_075_5ee3

    db $10
    rst $20
    pop af
    cp $33
    db $fc
    db $ed
    di
    db $d3
    rst $28
    pop bc
    dec sp
    adc h
    ld [hl], e
    inc bc

Call_075_5f2b:
    rst $38
    ld d, h
    rrca
    pop af
    ld c, $f8
    nop
    ld sp, hl
    ld b, $e0
    rrca
    ldh [$1f], a
    swap h
    ld e, [hl]
    pop hl
    adc $e1
    ret nz

    add c
    ld c, e
    or [hl]
    ld h, b
    rst $38
    ld [$f8ff], sp
    rst $38
    ld hl, sp-$01
    ret nz

    ccf
    ld [hl+], a
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    di
    db $fc
    ld b, [hl]
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    add c
    rst $38
    or $ff
    ld sp, $000f
    ld bc, $000b
    ld c, $00
    inc d
    ld [$001f], sp
    adc c
    ld [hl], b
    sub $60
    sbc a
    ld h, b
    call nz, $d338
    inc c
    db $eb
    add h

jr_075_5f7c:
    pop af
    add $21
    add $60
    sub e
    ei
    ld bc, $f906
    ld l, a
    sub b
    rst $10
    jr c, jr_075_5f7c

    inc e
    add a
    ld a, b
    add d
    ld a, h
    ld h, b
    adc h
    ld [hl], b
    adc b
    dec bc
    ldh a, [$86]
    ld a, b
    inc bc
    db $fc
    ld l, b
    cp a
    dec [hl]
    jp c, $d639

    ld a, [hl+]
    push de
    sbc b
    ld h, a
    ld a, e
    add h
    ccf
    ret nz

    ld h, e
    sbc h
    inc bc
    db $fc
    xor a
    ld [hl], b
    rra
    ldh [$bf], a
    ld b, b
    dec sp
    call nz, $d827
    ld [de], a
    db $fd
    ld [bc], a
    db $fd
    srl h
    or a
    ld c, h
    sub c
    ld l, [hl]
    sbc d
    ld h, a
    rst $20
    dec de
    dec hl
    rst $10
    jp Jump_075_473f


    cp a
    rst $28
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, $ff
    cpl
    rst $38
    rrca
    rst $38
    ld e, [hl]
    rst $28
    ld [hl], c
    xor $cf
    ldh [$a0], a
    rst $38
    add hl, bc
    cp $b1
    cp $b3
    ld h, d
    sbc a
    ld [hl], b
    cpl
    sbc b
    ld l, l
    add d
    sbc d
    inc c
    ld h, l
    cp $8e
    ld [hl], c
    ldh [$1f], a
    dec bc
    db $fc
    daa
    ld hl, sp-$06
    inc b
    add hl, sp
    nop
    ld a, [hl]
    ld bc, $c13e
    ld de, $30ff
    rst $38
    ld h, b
    rst $38
    jp $741c


    adc a
    and l
    ld e, e
    add e
    ld a, a
    ld a, a
    ldh [$cc], a
    inc bc
    dec de
    daa
    add a
    daa
    inc sp
    inc c
    db $eb
    db $10
    db $ed
    ld b, $f6
    dec c
    sub [hl]
    ld l, a
    inc l
    rst $18
    inc b
    ld sp, hl
    ld c, $f1
    inc a
    add e
    adc d
    ld bc, $7388
    ld c, e
    rst $30
    call nz, $ff03
    nop
    ldh a, [rIF]
    ret nz

    ccf
    ld b, b
    cp a
    inc b
    ei
    add e
    rst $38
    ld e, e
    and a
    rst $08
    scf
    and a
    ei
    ld b, h
    rst $38
    db $fc
    di
    ldh [$f7], a
    and c
    ld b, e
    dec hl
    rst $00
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    rst $28
    nop
    rst $38
    nop
    rst $38

jr_075_605c:
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$df]
    xor a
    ret nz

    ret c

    nop
    adc d
    ld [hl], h
    ld a, [hl]
    nop
    ld l, [hl]
    db $10
    adc h
    rst $38
    xor $1f
    rst $28
    nop
    inc c
    ldh [rHDMA2], a
    and b
    ld a, $c0
    sbc a
    ldh [$fa], a
    push bc
    ld h, a
    ret nz

    or [hl]
    ld c, b
    ld h, b

jr_075_6085:
    sbc a
    or c
    rrca
    ld b, h
    inc sp
    push bc
    jr c, jr_075_6085

    ld [bc], a
    ret c

    jr nz, jr_075_605c

    nop
    db $e3
    nop
    rst $38
    nop
    jp z, $ff35

    nop
    cp d
    ld b, b
    rra
    ldh [$9c], a
    ld a, e
    ld d, h
    cp e
    ld e, d
    or l
    dec h
    db $db
    ld l, b
    sub a
    add sp, $1f
    ldh a, [rIF]
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $80fe
    ld a, a
    ld b, b
    cp a
    ld sp, $81ce
    ld a, [hl]
    and c
    ld e, [hl]
    ld b, e
    cp h
    and b
    ld a, a
    ld b, c
    cp [hl]
    db $fc
    and e
    or e
    call nz, $e093
    ld l, $c1
    ld h, $c9
    db $fd
    rst $28
    db $ed
    rst $28
    db $ec
    rst $28
    dec l
    xor $e0
    rst $08
    ld hl, sp-$31
    xor [hl]
    ld d, c
    cp c
    inc bc
    ld a, [$4a05]
    scf
    ld a, b
    ld d, $e0
    rra
    call nc, $b42b
    ld e, e
    ld a, b
    add a
    or b
    ld a, a
    rst $00
    jr c, jr_075_614a

    xor b
    jp Jump_000_103c


    rst $20
    and $01
    ld b, c

Call_075_60fb:
    or e
    push bc
    inc hl
    ld b, a
    cp h
    ld hl, sp+$00
    ld b, [hl]

Call_075_6103:
    add b
    xor [hl]
    nop
    inc a
    nop
    sbc [hl]
    ld b, b
    sbc c
    ld b, $b7
    ld c, $54
    xor [hl]
    ld d, e
    db $ec
    ld l, l
    sub e
    rst $38
    add b
    xor [hl]
    pop de
    inc d
    db $e3
    jp Jump_000_0f24


    nop
    cp a
    nop
    ld a, l
    ld c, $e0
    rra
    jp hl


    ld d, $b2

jr_075_6127:
    ld c, h
    ld a, b
    add b
    ld a, d
    ld bc, $fb10
    jr c, jr_075_6127

    rst $38
    rst $20
    daa
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $08
    cp a
    inc c
    rst $38
    rst $20
    ld hl, sp-$25
    push hl
    cp [hl]
    pop bc
    ld a, a
    add b
    rst $00
    jr c, @+$41

    ld hl, sp+$7b
    db $fc

jr_075_614a:
    ld a, [$cbfc]
    db $f4
    db $76
    adc b
    nop
    rst $38
    nop
    rst $38
    ld hl, $c1de
    ld a, a
    rra
    rst $38
    rra
    rst $28
    rrca
    rst $38
    ccf

jr_075_615f:
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    ld hl, sp+$00
    ld b, b
    nop
    nop
    nop
    inc bc
    ld bc, $0718
    ei

jr_075_6171:
    rrca
    ret nz

    ccf
    jp c, Jump_000_0007

    inc bc
    stop
    ret nz

    jr jr_075_61d9

    nop
    inc e
    nop
    or d
    ld c, h
    cp e
    ld b, b
    call c, Call_075_7f03
    add b
    db $76
    adc c
    rst $20
    jr jr_075_615f

    ccf
    ld h, b

jr_075_618f:
    rst $18
    ld b, $ff
    ld h, a
    cp b
    add a
    ld hl, sp-$7c
    ei
    jr z, jr_075_6171

    ld hl, $74de
    adc a
    dec e
    rst $38
    ret nz

    ccf
    cp l
    ld [hl], d
    or [hl]
    ld e, e
    sbc [hl]
    ld a, e
    ld c, l
    cp e
    sub b
    rst $38
    ld b, d
    cp l
    jr nz, jr_075_618f

    jr nz, @-$1f

    ld h, b
    sbc a
    and d

jr_075_61b5:
    db $dd
    and d
    ld a, l
    jr @+$01

    ld [$aef7], sp
    ld e, l
    inc e
    ei
    inc a
    db $d3
    dec bc
    cp $2b
    call nc, $9e61
    sub $2c
    adc e
    ld [hl], h
    and c
    sbc $ab
    ret nz

    ldh [$80], a
    pop hl
    db $10
    ret z

    ld sp, $20d7
    db $eb

jr_075_61d9:
    inc d
    cp l
    ld b, d
    rlca
    ld [$01f8], sp
    ld l, d
    sbc l
    ld b, l
    cp $40
    rst $38
    ld d, c
    cp [hl]
    ld b, $f9
    db $76
    adc a
    push de
    ld c, $78
    or a
    ld c, [hl]
    or c
    ld a, [hl-]
    ld b, c
    and h
    ld e, e
    db $eb
    inc d
    or l
    ld c, [hl]
    ld a, a
    add b
    ld h, [hl]
    cp b
    and d
    ld e, h
    and b
    rst $38
    dec bc
    rst $30
    add hl, hl
    ld d, [hl]
    db $fc
    rlca
    add hl, sp
    rst $08
    ld c, a
    ldh a, [$66]
    ldh a, [$e7]
    ld c, $5c
    rrca
    xor [hl]
    rra
    cp [hl]
    ld b, c
    ld [hl], $c0
    ld h, e
    sbc h
    ld a, b

jr_075_621b:
    sbc h
    add h
    jr jr_075_61b5

Jump_075_621f:
    ld [$3885], sp
    ld c, b
    scf
    ld h, l
    dec de
    add a
    inc bc
    ld a, [hl+]
    rla
    ld [hl], $fe
    add hl, bc
    or $7b
    add h
    rst $08
    ldh a, [$f7]
    ld hl, sp-$1f
    rst $38
    sbc $e1
    ld c, c
    cp [hl]
    rst $18
    ld a, $01
    ld a, [hl]
    ret z

    ldh a, [$f0]
    ld hl, sp+$18
    ldh [$9e], a
    ld bc, $013e
    ld a, a

jr_075_6249:
    nop
    inc d
    dec bc
    inc e
    inc bc
    dec l
    ld [de], a
    rst $28
    rst $38
    dec [hl]
    rst $38
    jr @+$01

    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    adc a
    rst $38
    ld [bc], a
    db $fd
    ld hl, sp+$07
    dec bc
    rlca
    ld b, $19
    ld c, [hl]
    ld hl, sp+$44
    cp $f7
    rst $38
    ld a, l
    rst $38
    ld l, a
    rst $38
    and e
    db $fc
    db $e4
    jr c, jr_075_621b

    ld d, b
    ret nc

    nop
    ld b, b
    jr nc, jr_075_62cb

    or b
    ldh a, [rP1]
    or e
    ld b, b
    xor a
    ld d, b
    ld d, h
    cp e
    db $10
    rst $38
    jp nz, $b0ff

    rst $18
    stop
    ld b, d
    nop
    ldh [rP1], a
    cp $00
    rst $18
    jr nz, jr_075_6249

    ld [hl], c
    ld l, $d1
    ccf
    ldh [$8f], a
    ldh a, [$1f]
    ldh [$df], a
    ldh [$ad], a
    ld [hl], d
    ld l, a
    or b
    dec e
    ldh [rNR34], a
    ldh [$1f], a
    ldh [$57], a
    xor b
    ld h, $d9
    ld e, l
    or d
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$4f
    or b
    rlca
    ld hl, sp+$12
    db $ec
    ld hl, sp-$01
    pop af
    cp $c1
    cp $75
    ld a, [$fb74]
    db $eb

jr_075_62cb:
    db $fc
    ld [c], a
    db $fc
    db $d3
    cp $12
    db $fc
    and $f8
    rst $08
    ldh a, [rDMA]
    ld sp, hl
    add h
    rst $38
    or h
    ld a, a
    cp l
    rst $38
    jp c, $d9ff

    rst $38
    ld h, $df
    db $76
    add e
    cp h
    inc bc
    cp $21
    ret z

    ld [hl], $36
    ret z

    rlca
    ldh a, [$2b]
    call nz, $f304
    or l
    ld h, e
    and a
    nop
    pop af
    ld c, $cd
    jr nz, jr_075_6362

    inc sp
    ld a, [hl+]
    ld b, a
    ld e, h
    cp e
    add h
    ei
    ld e, l
    ldh [$d8], a
    and h
    cp e
    ld a, h
    cp $7f
    ld a, b
    rst $38
    inc sp
    rst $00
    adc a
    scf
    ld e, e
    rst $20
    adc d
    rst $30
    dec bc
    rst $30
    ccf
    rst $00
    ld a, [c]
    dec c
    inc de
    db $fc
    sbc a
    ld a, e
    db $ed
    rra
    cp h
    rst $38
    rrca
    db $fc
    jp $e83c


    scf
    xor h
    ld a, a
    push bc
    ld e, $9d
    ld l, [hl]
    inc c
    cp $02
    db $fc
    sbc $e0
    ld d, c
    xor $08
    rst $38
    call z, $dd3f
    ld a, $fb
    inc a
    nop
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ret nc

    rrca
    ldh a, [rTAC]
    ld c, a
    jr nc, @+$71

    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    pop hl
    rst $38
    inc b
    rst $38
    add e
    rst $38
    ldh [rIE], a

jr_075_6362:
    ret nc

    rst $38
    rst $28
    rst $38
    sbc a
    ld a, a
    rst $10
    rst $38
    ccf
    rst $38
    inc l
    rra
    add hl, bc
    ld b, $8e
    rst $38
    sub c
    rst $28
    db $dd
    ld [c], a
    rrca
    ldh a, [$b0]
    ld b, b
    ret nz

    nop
    sub a
    ld b, b
    ld l, e
    inc b
    reti


    ld b, $69
    ld b, $74
    adc a
    ld h, $df
    ld c, b
    rst $30
    sub d
    ld l, a
    ld [de], a
    rst $28
    ld bc, $0fff
    nop
    ld l, a
    nop
    ld a, b
    inc bc
    add sp, $17
    add d
    ld a, l
    ld a, [hl]
    add c
    ld [hl], $c1
    rst $38
    ld bc, $ff20
    ld de, $31ff
    rst $38
    cp [hl]
    pop af
    ld a, a
    ldh a, [$3f]
    ret nc

    ld b, e
    db $fc
    ld b, $f9
    ldh [$1f], a
    ld b, d
    cp a
    sub c
    rst $38
    and a
    rst $18
    sub b
    rst $28
    ldh [rIE], a
    ld bc, $03ff
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld [hl], c
    rst $38

jr_075_63c8:
    dec b
    ei
    ld a, h
    add e

jr_075_63cc:
    ld e, c
    add a
    sbc e
    ld b, l
    inc bc
    ld [$008d], sp
    add $08
    ld [c], a
    nop
    daa
    ld hl, sp-$6f
    rst $38
    pop bc
    rst $38
    ld b, [hl]
    db $fd
    adc [hl]
    rst $38
    inc c
    rst $38
    ld bc, $ecff
    rra
    db $e4
    dec de
    ld c, l
    inc de
    db $e3
    rra
    ld a, d
    add c
    jr c, @+$01

    cpl
    rst $18
    ld b, b
    cp a
    add hl, bc
    ld a, b
    sbc a
    ld h, b
    sub h
    ld l, a
    pop bc
    dec sp
    db $ec
    ld d, e
    rla
    cp $6e
    sbc a
    adc a
    ld b, b
    ld l, h
    di
    jr nc, jr_075_6459

    add hl, de
    rra
    adc $39
    ld b, [hl]
    jr c, jr_075_63c8

    ret z

    pop hl
    ld b, $4b
    inc [hl]
    db $db
    jr nz, @-$0a

    inc bc
    ld bc, $fffe
    ld c, $6e
    sbc a
    rst $18
    ld a, $be
    ld a, a
    cp $7f
    adc [hl]
    ld a, a
    ld e, $ff
    cp a

jr_075_642b:
    ld a, a
    ld c, [hl]

jr_075_642d:
    cp a
    jp $0200


    ccf
    or $7f
    cp $7f
    daa
    ld a, [hl]
    jp z, Jump_075_5131

jr_075_643b:
    ld [hl+], a
    ld a, a
    jr c, jr_075_643b

    jr c, @-$1d

    jr c, jr_075_63cc

    ldh a, [$d9]
    ldh [$cd], a
    add b
    ld a, a
    add b
    jr nz, jr_075_642b

    jr c, jr_075_642d

    rra
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38

jr_075_6459:
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ccf
    rst $18
    ld a, l
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    db $eb
    rst $38
    or a
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    ei
    rrca
    ccf
    rst $38
    cp $ff
    add b
    ld a, a
    cp [hl]
    ld b, c
    ld bc, $9200
    ld h, c
    sbc h
    ld h, e
    adc e

jr_075_647f:
    ld [hl], a
    jp hl


    ld b, $33
    inc c
    push de

jr_075_6485:
    rrca
    ld sp, $f2cf
    dec c
    ret nz

    ccf
    ld d, a
    cp a
    ld e, a
    cp a
    xor b
    rra
    ld c, a
    cp a
    adc a
    ld a, a
    rst $00
    ccf
    ld c, a
    cp a
    db $db
    ccf
    ld b, $ff
    add $3f
    db $fc
    rst $38
    rst $38
    db $fc
    or $79
    adc h
    ld [hl], e
    ld [hl], e
    inc c
    ret c

    rrca
    ldh [$1f], a
    jr nc, jr_075_647f

    jr z, @-$37

    ld a, b
    add a
    jr nc, jr_075_6485

    ld b, b
    rst $38
    jp nz, $abff

    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc $ff
    jp z, $efff

    rst $38
    adc c
    rst $38
    inc bc
    rst $38
    or $1f
    pop hl
    rra
    ld c, a
    sub e
    adc $01
    ld [hl], $0b
    jr nz, jr_075_64e5

    inc d
    rrca
    ld [c], a
    dec e
    sbc b
    rst $38
    add d
    rst $38
    ret z

    ld a, a
    xor b
    ld d, a
    cp l
    ld b, d
    ld [bc], a

jr_075_64e5:
    ld a, l
    push bc
    ld a, $87
    ld a, b
    sub d
    ld h, c
    ld [hl+], a
    ret c

    add c
    ld a, d
    cp b
    ld c, a
    ld [hl], e
    rst $08
    and h
    ld a, a
    ld a, h
    rst $38
    ld [de], a
    db $ed
    sub e
    ld a, l
    ld l, h
    sbc e
    db $ec
    ld [hl], b
    ld d, l
    inc hl
    dec c
    rst $38
    xor e
    adc $b1
    xor $e1
    cp $e1
    sbc $2c
    sub d
    ld e, [hl]
    nop
    xor b
    db $10
    ld de, $dce0
    ld bc, $f847
    inc b
    rst $38
    ld l, [hl]
    rst $38
    db $e4
    ei
    ld [hl], e
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ret nz

    ccf
    xor b
    ld a, a
    scf
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    or e
    ld a, a
    ld sp, $0dff
    di
    rst $38
    rlca
    push hl
    ld [bc], a
    ld l, b
    rst $30
    sbc l
    ld a, [hl]
    and [hl]
    dec e
    cpl
    rst $18
    ld a, a
    rst $38
    ld a, [de]
    rst $38
    ld de, $a58f
    rra
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld e, c
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ld [hl], a
    rst $38
    jr c, @+$01

    ld b, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $ffff
    nop
    call z, $b813
    ld bc, $0043
    dec b
    add d
    rlca
    nop
    ld sp, hl
    rlca
    sub b
    ld a, a
    ld c, l
    ei
    inc b
    ei
    sbc [hl]
    ld h, c
    adc e
    ld [hl], h
    ld a, $e3
    ld a, [hl+]
    rst $38
    db $f4
    ld a, a
    push af
    xor $fc
    ei
    di
    db $fc

Jump_075_659a:
jr_075_659a:
    ld hl, $04fe
    ei
    dec bc
    cp $43
    db $fd
    pop af
    ld c, [hl]
    ld d, b
    cpl
    sub $3b
    pop bc
    ld a, $c9
    ccf
    call nc, $c23b
    dec a
    call nc, $fb3b
    ccf
    db $fc
    ccf
    db $fd
    ld a, $fc
    ccf
    ld [hl-], a
    ld a, a
    add c
    ld a, [hl]
    call nz, Call_075_5b3f
    and a
    or e
    ld c, a
    add hl, de
    and $42
    cp a
    ld b, b
    rst $38
    ld d, e
    xor a
    and [hl]
    ld a, c
    pop de
    jr nz, jr_075_65dd

    di
    ld e, [hl]
    add c
    and d
    db $fd
    xor h
    rst $38
    db $fc
    rst $38
    rra
    cp $d6

jr_075_65dd:
    rst $38
    ld d, c
    cp $73
    adc [hl]
    daa
    ret c

    rra
    ldh [$de], a
    nop
    reti


    jr nz, jr_075_659a

    ld b, b
    jp c, $fe21

    ld bc, $c16e
    ld a, [de]
    db $fc
    ld e, h
    cp a
    ld [hl-], a
    call $e5da
    ret


    rst $30
    ld [$6c15], a
    rst $18
    db $f4
    rst $28
    or b
    rst $28
    ld h, l
    sbc e
    add hl, sp
    rst $38
    db $dd
    ccf
    sbc [hl]
    ld a, a
    inc c
    rst $38
    ld a, b
    rst $00
    ld h, [hl]
    ld c, $0e
    ldh a, [$96]
    add sp, $58
    rst $20
    call z, Call_000_191b
    rst $38
    daa
    reti


    ld hl, $10dc
    add sp, $09
    ldh a, [$b1]
    add $7e
    add [hl]
    and c
    sbc $e3
    sbc h
    ld a, h
    add e
    ld d, [hl]
    adc a
    adc $3f
    add c
    ld a, [hl]
    db $e4
    rra
    cp b
    rst $00
    xor [hl]
    call c, $9c7c
    rst $30
    jr jr_075_6652

    inc c
    dec e
    ld [bc], a
    ld h, b
    rra
    ld [$70f7], sp
    rst $38
    ld de, $3afe
    push af
    ld bc, $1dff
    db $e3
    rst $38
    rst $38

jr_075_6652:
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ccf
    rst $38
    xor a
    rst $38
    ld bc, $e0ff
    rst $38
    ld a, [c]
    rst $38
    add hl, bc
    rst $38
    db $ed
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
    rst $38
    ccf
    rra
    rst $38
    and a
    ld e, a
    add sp, $07
    ld b, b
    rlca
    db $fd
    ld [bc], a
    dec a
    nop
    inc b
    nop
    add c
    ld [$8081], sp
    ret c

    db $e3
    db $e3
    db $fc
    ld [c], a
    db $fc
    jr c, @+$01

    ld a, $ff
    inc e
    rst $38
    add e
    ld a, h
    ld c, h
    or e
    ld b, d
    cp l
    ld [bc], a
    db $fd
    jp nz, $803d

    ld a, a
    ld bc, $01fe
    cp $02
    db $fd
    add e
    ld a, h
    push bc
    dec sp
    ret nz

    cp a
    sub c
    xor $90
    rst $28
    rra
    ldh [rLYC], a
    cp d
    add d
    ld a, l
    jp Jump_000_083c


    rst $38
    dec e
    xor $0f
    db $fc
    add e
    ld a, [hl]
    dec hl

jr_075_66bd:
    db $fd
    ld [bc], a
    rst $38
    inc c
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    pop bc
    cp a
    add h
    ei
    sub b
    rst $28
    ld a, $c4
    ld a, h
    add b
    ld [hl], b
    adc [hl]
    ld d, b
    xor [hl]
    ld [hl], d
    adc h
    adc e
    ld [hl], h
    pop hl
    db $10
    rst $28
    db $10
    cp l
    ld b, d
    sbc c
    ld h, a
    db $ed
    ld e, $d0
    ccf
    ld h, b
    ccf
    add c
    ld a, [hl]
    cp h
    ld b, e
    db $fd
    ld [bc], a
    jr nc, jr_075_66bd

    db $e4
    dec bc
    ld [hl], d
    rst $38
    dec [hl]
    ld a, e
    xor d
    ld [hl], a
    ld l, [hl]
    sbc a
    inc de
    rst $38
    inc a
    rst $38
    ld a, [hl+]
    rst $38
    ld e, $ff
    ld e, $ff
    cp a
    ld b, [hl]
    ret nc

    rst $28
    db $e3
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld b, b
    cp a
    sub c
    cpl
    ld a, $ff
    db $e3
    rst $38
    adc e
    ld a, l
    jr z, @-$0d

    or [hl]
    ld a, c
    rst $20
    rst $38
    rst $08
    rst $38
    ld e, h
    cp a
    inc [hl]
    ei
    ld c, h
    di
    ldh [rIE], a
    ld sp, hl
    ld a, [hl]
    ld hl, $711e
    adc [hl]
    add hl, de
    and $7e
    ldh a, [$30]
    ldh [$78], a
    add b
    ld b, b
    ldh a, [rLCDC]
    and $35
    ld c, [hl]
    nop
    rrca
    ld a, e
    inc b
    adc h
    ld a, [hl]
    add l
    ld a, [hl]
    ld de, $e1ff
    rra
    db $10
    rst $28
    dec de
    db $e4
    add l
    ld hl, sp-$3d
    db $fc
    xor c
    call nz, $ffff
    rst $38
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    rst $10
    rst $38
    cp $ff
    rst $28

jr_075_675f:
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    rst $38
    rst $38
    db $76
    rst $38
    ld [c], a
    dec e
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, $10de
    rst $28
    add c
    ld a, [hl]
    dec h
    ld a, [$f50a]
    jr nz, jr_075_675f

    cp l
    ld a, a
    ld d, d
    dec a
    or b
    ld c, a
    or c
    ld l, a
    db $fc
    inc bc
    jp hl


    nop
    ld e, e
    ldh [rNR43], a
    ld sp, hl
    add e
    ld a, h
    jp $a13c


    ld e, [hl]
    and h
    ld e, e
    ld b, $f9
    rla
    add sp, -$43
    ld b, d
    ret nc

    cpl
    inc h
    db $db
    cp h
    ld b, e
    rst $28
    db $10
    add $b9
    add $b9
    ret nz

    ccf
    ld d, [hl]
    xor c
    rst $08
    jr nc, @-$77

    ld a, b
    adc [hl]
    ld [hl], c
    ld h, e
    cp [hl]
    ldh [$df], a
    di
    call z, $33ec
    rst $20
    ld a, b
    add c
    ld a, [hl]
    jp nz, $8a3d

    ld [hl], a
    inc hl
    ld e, a
    ld [$f577], sp
    ld a, d
    push de
    ld a, d
    ld b, a
    ld hl, sp+$5e
    pop af
    sbc l
    ld h, b
    db $eb
    nop
    ld b, h
    inc bc
    db $e3
    inc e
    or l
    xor $45
    cp [hl]
    or b
    ld e, a
    ld c, e
    or h
    ld de, $76fe
    adc c
    pop af
    ld c, $81
    ld a, [hl]
    rst $08
    rst $38
    ld c, e
    or $2f
    ld hl, sp+$43
    cp b
    ld [bc], a
    db $fd
    jp Jump_075_7ffd


    rst $38
    ld d, h
    ei
    add a
    ld a, e
    rst $30
    rrca
    ld e, a

Jump_075_67fd:
    cp a
    xor l
    ld a, a
    adc h
    cp a
    sbc d
    db $fd
    ld sp, $438f
    cp a
    rlca
    rst $38
    ld [hl], d
    cp $f1
    db $fc
    add l
    ld sp, hl
    cpl
    ld [hl], c
    ld bc, $8cff
    rst $30
    ei
    cp $06
    rst $38
    sbc d
    dec b
    add hl, de
    ccf

jr_075_681e:
    or d
    dec e
    ld c, c
    or [hl]
    rst $20
    jr c, jr_075_681e

    nop
    reti


    nop
    ld hl, sp+$07
    ld [hl], c
    ld c, $54
    dec bc
    inc bc
    rrca
    push hl
    ld a, [de]
    add hl, bc
    cp $06
    ei
    ld d, c
    ld l, $d8
    cpl
    sub e
    inc c
    or $00
    add sp, $11
    add hl, bc
    di
    rst $18
    ld sp, $9d22
    ld c, l
    cp [hl]
    cpl
    rst $38
    inc sp
    db $fc
    inc [hl]
    ld hl, sp+$27
    db $fc
    call $f2ff
    db $fd
    ld h, d
    rst $38
    ld a, b
    rst $30
    ldh [rIE], a
    sbc l
    ld a, [c]
    ld a, e
    db $fc
    db $fd
    cp $cf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp [hl]
    ret nz

    ld h, b
    add b
    or b
    ld b, b
    cp e
    ret nz

    cp [hl]
    ret nz

    and l
    ld e, d
    nop
    rst $38
    ld e, [hl]
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    jp z, Jump_000_20ff

    rst $38
    jr @+$01

    inc bc
    db $fc
    and a
    jr jr_075_68dd

    inc de
    sub d
    ld b, c
    daa
    ret nz

    add b
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    ld [$41f7], sp
    cp [hl]
    ld l, c
    sub [hl]
    ld h, e
    sbc h
    ld b, [hl]
    cp c
    adc [hl]
    ld [hl], c
    dec de
    db $e4
    rst $28
    db $10
    ldh [$1f], a
    pop hl
    ld e, $a3
    ld e, h
    ret nz

    ccf
    add sp, $1f
    ld [de], a
    db $ed
    add h
    ld a, e
    jp nz, $013d

    cp $01
    cp $03
    db $fc
    adc a
    ld [hl], b
    add a
    ld [hl], b
    sbc a
    ld h, b
    rlca

jr_075_68cd:
    ldh a, [$94]
    ld [c], a
    or c
    cp $14
    ei
    ld l, d
    db $fd
    ld l, b
    db $fd
    inc e
    db $fd
    ld a, l
    ei
    ld [hl], c

jr_075_68dd:
    rst $38
    jp $b6ff


    ld c, c
    ld a, [hl-]
    rst $08
    and [hl]
    ld e, a
    inc bc
    db $fc
    ld e, c
    and $bf
    ld b, b
    ld h, $18
    ld d, a
    xor b
    ldh [rIE], a
    ldh a, [rIE]
    adc [hl]
    rst $38
    ld a, [de]
    rst $38
    or e
    rst $08
    pop hl
    cp $20
    rst $38
    inc h
    rst $08
    rst $20
    ld [$0ed1], sp
    dec sp
    add b
    db $e3
    db $10
    ld d, $79
    db $db
    jr nz, jr_075_68cd

    inc bc
    ld a, [hl+]
    pop de
    sub a
    ei
    jp hl


    or a
    xor a
    ld [hl], a
    ld d, [hl]
    rst $28
    dec sp
    rst $00
    xor c
    scf
    adc a
    db $10
    and a
    jr @+$59

    jr z, @-$4f

    ld b, b
    sub b
    ld c, a
    pop hl
    ld e, $61
    sbc [hl]
    add [hl]
    ld a, h
    ld [hl], a
    db $ec
    db $db
    push hl
    adc h
    ld [hl], e
    add hl, de
    rst $20
    cp a
    ld b, e
    di
    rra
    jp $a53f


    ld a, e
    ld c, c
    rst $30
    sbc c
    rst $20
    dec l
    di
    ld d, $f9
    inc [hl]
    ei
    add d
    ld a, l
    ld c, [hl]
    pop af
    adc $31
    ld a, $01
    ld [bc], a
    ld bc, $ffff
    db $76
    ei
    ld a, [de]
    rst $38
    cpl
    rst $18
    ret z

    scf
    ld c, h
    or e
    ld a, [bc]
    pop af
    inc d
    add sp, $2d
    sbc $05
    ei
    ld h, a
    sbc b
    adc [hl]
    ldh a, [$86]
    ld hl, sp-$34
    or b
    push af
    ld a, [$f8e7]
    rst $10
    ld hl, sp-$46
    ld d, h
    dec [hl]
    ld e, b
    db $e4
    jr c, jr_075_69a6

    ret nz

    push af
    ld a, [bc]
    inc bc
    db $fc
    ld [hl], h
    ei
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

    rst $38
    ld d, d
    cp a
    jp nz, Jump_000_003f

    rst $38
    ret nz

    ld a, a
    add l
    ld a, a
    db $f4
    dec de
    ld hl, sp+$17
    pop bc
    ld a, $48
    scf
    rst $28
    db $10
    rlca
    ld hl, sp-$38
    scf
    add h
    ld a, e
    inc e
    di
    rrca
    ldh a, [$7e]
    or c

jr_075_69a6:
    jr nc, @+$01

    ld [hl], b
    cp a
    ld l, b
    or a
    ld [hl-], a
    rst $38
    rla
    db $fc
    ld h, $f9
    and e
    ld a, h
    ld de, $16ee
    rst $38
    ld a, b
    rst $38
    db $fd
    ld h, a
    cp a
    ld a, h
    ld a, h
    rst $38
    and c
    ld a, a
    nop
    rst $38
    sub d
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    ld [hl], b
    cp a
    db $f4
    rst $38
    ldh [rIE], a
    db $fd
    rst $38
    rst $30
    ld hl, sp-$36
    pop af
    dec hl
    rst $00
    rst $38
    rrca
    ld [hl], $ff
    call $95fe
    rst $28
    ld [hl], l
    adc d
    call nc, $d528
    ld a, [hl+]
    ld e, $e1
    ld [hl], d
    adc l
    sbc e
    ld b, h
    ld a, [hl]
    add l
    ld [hl], c
    adc a
    add hl, sp
    add $fe
    ld bc, $78b6
    sub a
    nop
    jr nz, jr_075_6a19

    xor h
    ld e, a
    adc c
    ld b, [hl]
    rst $18
    inc hl
    db $e3
    inc e
    adc b
    ld a, a
    ld b, a
    cp $f9
    ld a, [hl]
    sub e
    add sp, $44
    cp c
    inc a
    pop bc
    ld [hl-], a
    pop bc
    ei
    db $fc
    ld a, [$f9fd]
    rst $38
    ld a, a
    rst $38
    add a

jr_075_6a19:
    ld a, e
    ld [hl], b
    rst $38
    ld a, c
    or $ee

jr_075_6a1f:
    inc de
    ld [hl], $01
    ld b, b
    add a
    ld l, e
    sbc h
    ld e, e
    db $fc
    ld d, h
    ei
    ld [hl], e
    ld a, a
    nop
    rst $38
    add c
    rst $38
    ret


    scf
    ccf
    rst $38
    cp $ff
    ldh a, [rIE]
    db $fd
    di
    rst $00
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    jr nz, @-$1f

    sbc a
    ld a, a
    xor $1f
    ld a, [hl]
    adc l
    ld a, $c1

jr_075_6a4a:
    cp $01
    rst $08
    nop
    rst $18
    nop
    xor [hl]
    ld [hl], c
    ld l, a
    db $fc
    inc h
    ei
    sub e
    rst $28
    and a
    rst $18
    ret c

    daa
    adc $b1
    pop hl
    jr jr_075_6a1f

    rst $38
    or b

jr_075_6a63:
    rst $00
    or a
    ret nz

    scf
    ret nz

    dec e
    ldh [rLCDC], a
    rst $38
    db $f4
    ei
    ldh a, [$80]
    ld d, c
    add b
    di
    nop
    ld e, [hl]
    and c
    add sp, $17
    ld h, b
    rra
    ld a, l
    add a
    jr nz, @-$1f

    call z, $9bff

jr_075_6a81:
    db $ec
    jr nz, jr_075_6a63

    and h
    rst $18
    dec a
    ret nz

    jr nc, jr_075_6a4a

    ld h, $d0
    rrca
    ldh a, [$dd]
    ldh a, [$cf]
    ldh a, [$d0]
    rst $28
    adc [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld [c], a
    rst $38
    ld c, a

jr_075_6a9b:
    rst $38
    cp a
    rst $38
    rst $38

jr_075_6a9f:
    rst $38
    jr nz, jr_075_6a81

    adc b
    ld [hl], a
    adc b
    ld [hl], a
    inc d
    db $eb
    db $10
    rst $28
    jr nc, jr_075_6a9b

    or b
    rst $38
    add b
    ld a, a
    add sp, $17
    and b
    ld e, a
    ld e, [hl]
    pop hl
    ret nc

    ld l, a
    ld hl, $41df
    cp a
    jr nz, @+$01

    add c
    rst $38
    ld [hl], d
    adc a
    ld [bc], a
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    pop bc
    rst $38
    ld d, b
    rst $28
    jp nz, Jump_075_67fd

    ld hl, sp-$18
    rst $38
    add sp, $7f
    inc c
    ld a, [$fd80]
    xor [hl]
    db $fc
    xor h
    cp $3f
    ret c

    inc e
    db $e3
    db $ed
    ld [de], a
    sub [hl]
    ld bc, $01fe
    nop
    rst $38
    xor c
    ld d, a
    inc h
    db $db
    sub e
    ld l, a
    dec h
    ld a, [$6799]
    ld l, l
    sbc a
    inc bc
    ld a, h
    rst $00
    jr c, jr_075_6a9f

    ret c

    ld h, d
    call c, $fc43
    ld a, $fc
    ld sp, hl
    ld d, b
    ld l, d
    push af
    pop bc
    ld a, $83
    ld a, h
    dec bc
    db $f4
    sbc h
    ld a, [c]
    sub h
    ret z

    inc d
    add sp, $76
    rst $38
    jp z, $ecff

    rst $38
    cp b
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    add c
    ld a, a
    ld [bc], a
    rst $38
    jp nz, $b37f

    ld a, a
    ld [hl], l
    cp e
    ld e, c
    or b
    ld a, [hl-]
    inc b
    add a
    ld hl, sp+$06
    ld sp, hl
    nop
    rst $38
    ld e, h
    db $e3
    sbc a
    ldh [$86], a
    ld sp, hl
    ld b, d
    db $fd
    adc b
    rst $38
    reti


    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    dec e
    ld [c], a
    ld a, $f1
    ld [hl], e
    ld sp, hl
    ei
    ld sp, hl
    ld a, [$fbf9]
    db $fc
    xor $77
    dec bc
    rlca
    ld a, a
    add b
    ld a, a
    add b
    ld d, a
    xor b
    jp nc, Jump_075_50bc

    adc [hl]
    add sp, $00
    ld a, h
    add b
    jp $f138


    rst $38
    adc a
    ld a, a
    ld [de], a
    ld l, a
    and b
    inc bc
    add b
    nop
    call c, Call_000_3700
    ret z

    dec de
    inc b
    jr nc, jr_075_6b72

jr_075_6b72:
    adc b
    jr nc, jr_075_6bb9

    sbc b
    ld c, l
    add b
    rst $38
    ret nz

    jp z, Jump_000_0cf6

    rst $38
    xor $ff
    jp hl


    cp $f3
    db $ec
    add a
    ldh [$6e], a
    add c
    sbc $23
    add b
    ld a, a
    sbc h
    ld a, a
    ld e, h
    cp a
    ld a, [hl-]
    nop
    cp $01
    and [hl]

Jump_075_6b95:
    ld e, c
    or c
    ld c, a
    and e
    ld e, a
    reti


    ccf
    jr nz, @+$01

    ld sp, $30fe
    rst $38
    rrca
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    cpl
    rst $18
    add a

jr_075_6baf:
    ld a, a
    ld b, c
    cp a
    ret nz

jr_075_6bb3:
    rst $38
    ld b, c
    rst $38
    ld bc, $e9ff

jr_075_6bb9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $28
    rst $20
    rst $38
    jp nz, $c0ff

    rst $38
    ld h, b
    rst $38
    inc a
    rst $38
    dec a
    cp $bd
    ld a, [hl]
    add hl, sp
    rst $38
    add hl, hl
    rst $38
    ld b, [hl]
    cpl
    cp c
    rlca
    sbc b
    rlca
    ld d, $03
    inc b
    inc bc
    or b
    rlca
    reti


    rlca
    ldh a, [rIF]
    add l
    db $e3
    jr c, jr_075_6baf

    nop
    cp $46
    ld sp, hl
    pop bc
    cp $02
    db $fd
    jr nc, jr_075_6bb3

    cp $39
    sbc a
    ldh [$ce], a
    ld sp, $31ce
    inc d
    inc bc
    sbc [hl]
    ld bc, $0c1f
    rst $20
    di
    ld hl, sp-$09
    ld [hl], b
    rst $38
    ld c, e
    rst $30
    inc de
    ld a, a
    ld [hl], d
    dec e
    cp l
    ld b, b
    adc [hl]
    ld h, a
    ld a, [hl]
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    ld h, e
    sbc a
    di
    rrca
    ret


    rst $30
    xor d
    pop af
    adc $f1
    ldh a, [$ef]
    and b
    rst $18
    add b
    rst $38
    rst $30
    rrca
    adc a
    rra
    ccf
    rra
    ldh a, [rIF]
    db $76
    add b
    add hl, bc
    di
    ld h, a
    sbc b
    ret nc

    rst $28
    ldh [rIE], a
    ret nz

    rst $38
    cp [hl]
    rst $38
    xor $ff
    ei
    db $fc
    ld l, h
    sub b
    ld a, h
    add b
    rst $30
    ret c

    jp hl


    sbc $ec
    cp $f2
    ld l, h
    db $e4
    ld [hl], c
    and d
    ld de, $f04f
    ld b, [hl]
    ld sp, hl
    ld l, l
    ldh a, [$e3]
    inc e
    add e
    db $fc
    inc de
    db $ec
    ld b, $f9
    ld e, d
    push hl
    ld a, [c]
    rst $38

jr_075_6c62:
    inc h
    db $db
    jp Jump_075_40fc


    rst $38
    add b
    ld a, a
    ld h, b
    rra
    ld e, h
    inc bc
    ret z

    scf
    xor l
    jr jr_075_6c7f

    ld bc, $0087
    and [hl]
    nop
    xor l
    ld d, b
    cp $00
    ld b, [hl]
    cp b
    ret


jr_075_6c7f:
    ldh a, [$b8]
    ld h, h
    add c
    ld a, [hl]
    and $3d
    adc b
    ld a, a
    ccf
    rst $18
    ccf
    rst $38
    dec a
    rst $38
    ld a, a
    db $fd
    rst $38
    nop
    jr nc, jr_075_6c62

    adc l
    ld a, [c]
    or $d9
    call nz, $9dfb
    ld h, d
    inc b
    ei
    dec bc
    or $82
    ld a, a
    ld b, e
    cp a
    ld bc, $c0ff
    rst $38
    di
    rst $38
    pop hl
    rst $38
    dec e
    rst $38
    or e
    db $fd
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    add $ff
    or $ff
    or $ff
    ld sp, hl
    cp $f8
    rst $38
    ld [c], a
    db $fd
    ld c, h
    di
    ld c, b
    rst $30
    nop
    rst $38
    cpl
    rst $18
    adc $35
    adc $11
    sub [hl]
    dec bc
    ld a, e
    adc a
    rlca
    db $fd
    ld e, l
    ccf
    ei
    rst $38
    inc de
    rst $38
    dec bc
    rra
    rst $00
    ccf
    rst $08
    scf
    pop bc
    ccf
    ld b, a
    cp a
    ld h, c
    sbc a
    pop hl
    rra
    ld b, b
    ccf
    pop bc
    rst $38
    pop bc
    ccf
    inc hl
    rst $38
    dec a
    db $d3
    db $eb
    rla
    rrca
    pop af
    ld b, c
    cp a
    inc hl
    db $fd
    ld [hl], l
    ei
    ld d, b
    cp [hl]
    and [hl]
    ld e, c
    ld b, b
    cp $78
    add [hl]
    ld b, [hl]
    cp h
    db $e4
    ret c

    ld [hl], b
    add c
    ld b, [hl]
    add c
    cp h
    jp $07f8


    ld hl, sp+$07
    ret c

    rrca
    or b
    ld c, a
    ld b, b
    add a
    reti


    add a
    or e
    rst $08
    ld b, d
    cp a
    ld h, b
    sbc a
    pop af
    rrca
    rst $38
    ld bc, $817e
    xor [hl]
    rst $10
    or $9f
    jr nc, @-$5f

    ld h, h
    sbc e
    ld b, $79
    ld c, c
    and $91
    ld l, [hl]
    ld d, b
    ccf
    sbc c
    ld h, [hl]
    ld d, e

jr_075_6d39:
    db $fc
    and [hl]
    ld a, a
    ld b, [hl]
    cp a
    di
    ld c, $df
    ld h, b
    db $ec
    ld [hl], e
    ld hl, sp+$37
    ldh a, [$3f]
    sbc d
    ld a, a
    inc sp
    rst $38
    inc hl
    rst $38
    ccf
    ret nz

    ccf
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld e, $ff
    jr nz, jr_075_6d39

    ld e, b
    rst $20
    ld [hl], $c1
    jr c, @-$17

    ld h, b
    cp a
    ld e, e
    db $e4
    cp [hl]
    ld b, c
    ldh a, [rSB]
    ld a, d
    add b
    ld h, a
    cp b
    rrca
    db $fc
    dec sp
    call nz, Call_000_04fa
    dec [hl]
    jp z, $0fb0

    ld a, b
    rlca
    dec a
    inc bc
    ld b, [hl]
    add hl, sp
    swap h
    ld l, a
    db $10
    jr nz, jr_075_6d85

    jr jr_075_6d85

    dec a

jr_075_6d85:
    add $83
    ld a, a
    rst $00
    cp a
    add a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp b
    inc bc
    and d
    add hl, de
    rr b
    ld d, b
    sbc e
    ld h, d
    sbc e
    and a
    ld e, e
    dec sp
    rst $18
    rra
    rst $38
    ld a, $ff
    cp [hl]
    ld a, a
    cp [hl]
    rst $38
    sbc $ff
    sbc $ff
    cp [hl]
    rst $18
    call c, $c6ff
    rst $38
    ld d, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld c, $ff
    ld b, h
    cp a
    sbc h
    cp a
    jr @-$3f

    sub b
    cp a
    dec a
    cp a
    ld a, c
    cp [hl]
    xor b
    ld a, a
    add hl, hl
    rst $38
    and l
    ld a, a
    pop hl
    ld a, a
    ld [c], a
    ld a, l
    ld [c], a
    ld a, a
    ld h, d
    rst $38
    ld l, d
    rst $38
    jp nz, Jump_075_467f

    rst $38
    ld b, h
    rst $38
    inc c
    rst $38
    add h
    rst $38
    adc h
    rst $38
    ld b, $ff
    ld h, $ff
    inc sp
    rst $38
    pop de
    ccf
    and c
    ld a, [hl]
    ld h, d
    db $fd
    ret nz

    db $fd
    and $f9
    jp z, $c2f1

    pop af
    adc $e1
    db $ec
    jp $c7a8


    ld b, c

Call_075_6dfb:
    adc [hl]
    ld b, c
    ld c, $11
    ld c, $17
    inc l
    ld d, b
    cpl
    dec c
    ld a, e
    ld [de], a
    db $fd
    ld [$95f7], sp

jr_075_6e0b:
    ld l, [hl]
    inc [hl]
    ld c, a
    call $d73a
    ld l, d
    ld [bc], a
    db $fd
    inc hl
    cp $ea
    rst $38
    rst $08
    db $f4
    rst $28
    db $fd
    db $e3
    rst $38
    di
    rst $38
    di
    rst $38
    dec sp
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    jr c, @+$01

    db $10
    rst $38
    jr c, @+$01

    inc d

Jump_075_6e31:
    rst $38
    xor [hl]
    ld a, a
    add l
    ld a, a
    add a
    ld a, a
    ld e, a
    rrca
    jr nc, jr_075_6e0b

    ld hl, sp+$07
    ld a, h
    inc bc
    inc hl
    rra
    ccf
    sbc a
    ld d, h
    adc a
    ld c, [hl]
    add c
    add d
    dec c
    ld a, c
    add [hl]
    rla
    adc b
    sbc h
    inc bc
    ld a, h
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    ld [bc], a
    db $fd
    or d
    ld c, a
    xor $1f
    inc d
    db $eb
    dec de

jr_075_6e5f:
    rst $38
    ld b, a
    ccf
    rst $20
    rra
    sbc l
    ld a, [hl]
    jp z, Jump_075_403f

    ccf
    ld l, h
    inc de
    ld l, $01
    ld b, b
    inc bc
    ld h, l
    inc bc
    inc de
    pop hl
    ld [hl], l
    ld [c], a
    cp h
    db $e3
    rla
    add sp, $39
    jp nz, Jump_075_42ad

    di
    nop
    ld a, d
    pop bc
    ld l, a
    ret nc

    add b
    ld a, a
    jr z, jr_075_6e5f

    sub $fb
    ld sp, hl
    rst $20
    db $ed
    di
    pop af
    cp $f7
    add b
    or a
    ret nz

    cpl
    ret nz

    rrca
    ldh [$fb], a
    inc b
    ccf
    ret nz

    dec sp
    call nz, $ec13
    ld [hl], $c9
    ld [de], a
    db $ed
    ld b, b
    rst $38
    ld c, a
    pop af
    ld e, e
    db $ed
    ld c, a
    ld sp, hl
    sbc l
    ld [hl], e
    or l
    ld e, e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    nop
    ld bc, $0100
    ld b, c
    ld b, b
    ld b, b
    ld b, c
    inc bc
    ld [bc], a
    add d
    add e
    ld [de], a
    inc de
    ld de, $0113
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0503
    rlca
    inc de
    rla
    rlca
    rlca
    dec de
    rra
    ld e, d
    ld e, a
    db $db
    sbc $0f
    ld c, $6e
    ld l, a
    cpl
    ld l, $86
    adc a
    inc c
    rrca
    inc e
    rra
    dec c
    rrca
    dec d
    rra
    dec b
    rra
    ld [de], a
    rra
    jr jr_075_6f11

    sbc d
    sbc a
    ld a, [bc]
    rra
    ld a, [hl-]
    ccf
    jr c, jr_075_6f39

    inc e
    ccf
    inc d
    ccf
    inc l
    scf
    jr c, jr_075_6f39

    ld sp, $7c3f
    ld [hl], a
    ld a, d
    ld [hl], a
    ld a, h
    ld a, a
    ld l, [hl]
    ld a, a
    ld l, [hl]
    ld a, a
    ld l, a
    ld a, a
    cpl

jr_075_6f11:
    ld a, a
    rst $38
    rst $28
    rst $28
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $30
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
    rst $28
    rst $38
    rst $28
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

jr_075_6f39:
    rst $38
    rst $38
    rst $38
    ei
    ccf
    rst $38
    ccf
    db $fd
    ccf
    db $fd
    ccf
    cp $3f
    cp $bf
    cp $df
    ld a, $1f
    ccf
    rra
    ld a, a
    ccf
    cpl
    pop bc
    cp l
    ld b, e
    rst $08
    inc bc
    jp $d307


    rlca
    db $db
    rlca
    dec de
    rlca
    cp e
    ld b, $3f
    inc bc
    ld [hl], $0f

jr_075_6f64:
    scf
    inc c
    push af
    ld c, $b7
    inc c
    or e
    inc c
    ei
    inc c
    db $db
    inc l
    rst $38
    rst $38
    ld a, a
    rst $38
    adc a
    ld a, a
    adc a
    ld [hl], a
    cp a
    ld e, a
    daa
    ld e, a
    ld e, a
    daa
    ld c, a
    or a
    ld h, b
    add a
    cp b
    rlca
    and h
    ld [hl], e
    ld e, l
    and e
    dec d
    db $eb
    ld d, b
    cp a
    add sp, $17
    ld h, b
    rra
    ld b, b
    nop
    ld h, b
    nop
    ld a, [hl]
    inc e
    ei
    ccf
    cp $7f
    sbc $7f
    sbc c
    rst $38
    sub c
    rst $38
    push af
    sbc d
    rst $10
    cp b
    rst $38
    and b
    rst $38
    and b
    ld [hl], a
    xor b
    rst $30
    jr z, jr_075_6f64

    ld l, b
    push af
    ld l, d
    ldh a, [$6f]
    db $f4
    ld c, e
    ldh [$5f], a
    ldh [$5f], a
    ld l, h
    db $d3
    add sp, -$29
    add sp, -$29
    ldh a, [$8f]
    ret nc

    xor a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ret nz

    cp a
    ld b, b
    cp a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld c, $ff
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    inc h
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
    rst $38
    sub c
    rst $38
    ld d, e
    rst $38
    add a
    rst $38
    or e
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    ld [c], a
    rst $38
    and $ff
    and $ff
    xor $ff
    db $e4
    rst $38
    call nc, $dcff
    rst $38
    call c, $deff
    rst $38
    db $fc
    rst $38
    call c, $fcff
    rst $38
    cp [hl]
    rst $38
    cp h
    rst $38
    cp a
    rst $38
    rst $18
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
    jr jr_075_7083

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_075_7093

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_075_70a3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_075_70b3

    ld [hl-], a

jr_075_7083:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_075_70c3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_075_7093:
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

jr_075_70a3:
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

jr_075_70b3:
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

jr_075_70c3:
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

Jump_075_7100:
    or b
    or c
    ld [hl], b
    ld [hl], b
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
    ld [hl], b
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
    jr jr_075_7186

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

Call_075_717b:
    jr z, jr_075_71a6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_075_7186:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_075_71c6

    ld a, [hl-]
    dec sp
    inc a
    inc b
    inc b
    ld bc, $0404
    ld bc, $0401
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0404
    ld bc, $0101

jr_075_71a6:
    ld bc, $0304
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    inc b
    ld bc, $0303
    nop
    inc bc
    nop
    nop
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_075_71c6:
    ld bc, $0101
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, HeaderLogo
    inc b
    inc bc
    inc bc
    ld bc, $0404
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $0205
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
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
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
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
    dec b
    nop
    inc bc
    nop
    inc bc
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
    ld [bc], a
    dec b
    inc bc
    nop
    inc bc
    inc bc
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
    ld [bc], a
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld [bc], a
    dec b
    inc bc
    nop
    inc bc
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
    ld [bc], a
    dec b
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0401
    ld bc, $0101
    ld bc, HeaderLogo
    inc bc
    inc bc

Call_075_728d:
    inc bc
    inc bc
    nop
    inc b
    ld bc, $0901
    inc c
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    inc c
    inc c
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    inc c
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    dec bc
    ld [$0b0b], sp
    dec bc
    inc c
    inc c

jr_075_72c2:
    add hl, bc
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    ld [$0b0b], sp
    dec bc
    dec h
    ld a, [$e11e]
    add b
    ld a, a
    adc $31
    jp c, $4225

    or l
    ld e, e
    and h
    ld a, l
    add d
    ccf
    ret nz

    ld a, h
    add e
    cp b
    ld b, a
    ld d, a
    xor b
    cp a
    ld h, b
    db $fd
    ld [bc], a
    ld l, l
    add b
    dec a
    ret nz

    db $db
    inc h
    ld [hl], a
    adc b
    rst $30
    ld [$807f], sp
    ld a, a
    add b
    or c
    ld c, [hl]
    rst $28
    db $10
    ei
    inc b
    rst $28
    db $10
    di
    inc e
    rst $08
    jr c, jr_075_72c2

    db $ec
    ld a, [hl-]
    db $fd
    daa
    ld hl, sp-$2b
    xor b
    cp a
    ret nz

    rlc h
    rst $38
    nop
    or $08
    or e
    ld c, h
    or c
    ld c, [hl]
    ld [hl], b
    rst $08
    ld h, $f9
    ld e, a
    and b
    inc b
    ei
    ld c, b
    cp a
    call nz, $fcfb
    ei
    sbc a
    ld hl, sp-$0e
    sbc l
    sub d
    ld l, l
    sub [hl]
    ei
    jp $987c


    ld h, a
    ret nc

    cpl
    ld l, b
    sub a
    ld d, $fd
    cpl
    db $fc
    inc [hl]
    db $eb
    xor d
    db $dd
    call nz, $803f
    ld a, a
    ld bc, $08fe
    cp $08
    or $c3
    db $fc
    nop
    cp $fe
    nop
    db $fd
    ld a, [c]
    dec c
    ld a, [c]
    rrca
    ldh a, [$03]
    db $f4
    add [hl]
    pop af
    and e
    ldh a, [$27]
    ldh a, [rOCPD]
    ldh a, [rSCX]
    ld hl, sp-$35
    ldh a, [$c7]
    ld hl, sp-$6c
    add sp, -$64
    ldh [$90], a
    add sp, -$4a
    ld hl, sp-$2a
    cp b
    ld [hl], b
    cp a
    di
    db $fc
    ld a, [c]
    pop hl
    dec de
    pop hl
    ld a, d
    add e
    ld b, a
    cp h
    ldh [$7f], a
    inc b
    rst $38
    ei
    inc b
    and [hl]
    ld e, c
    adc a
    ld [hl], b
    ld a, a
    add b
    push af
    rrca
    xor l
    rra
    add h
    ld a, e
    ldh [$1f], a
    di
    inc l
    or c
    ld c, h
    dec de
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld d, a
    ld hl, sp+$05
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ret z

    rst $38
    add sp, $17
    or $0f
    db $fd
    cp $70
    ld hl, sp+$72
    ld hl, sp-$12
    pop af
    db $e3
    sub b
    ld e, c
    add [hl]
    push af
    ld c, $fc
    inc bc
    ld a, h
    add e
    rst $18
    jr nz, jr_075_73fc

    nop
    push bc
    ld [bc], a
    pop hl
    rst $38
    db $e3
    rst $38
    db $ec
    rst $38
    inc bc
    db $fc
    reti


    inc bc
    sbc e
    rlca
    sub b
    ld l, a
    ld b, h
    cp a
    and a
    ld a, b
    add c
    ld a, [hl]
    inc hl
    call c, $6c93
    ld sp, $55ee
    xor d
    ld [hl], c
    xor [hl]
    sbc d
    ld l, a
    ld c, c

jr_075_73e1:
    cp a
    sbc b
    ld l, a
    ldh a, [rIF]
    inc [hl]
    dec bc
    ldh a, [rIF]
    ld d, d
    xor l
    di
    inc c
    ld d, e
    xor h
    rst $20
    inc e
    ld [hl], b
    rlca
    nop
    rst $38
    ld e, $e1
    ld b, b
    cp a
    ret z

    scf

jr_075_73fc:
    rrca
    ldh a, [$ea]
    dec d
    adc e
    ld [hl], h
    and [hl]
    ld a, c
    ld [de], a
    db $ed
    jr nc, @-$2f

    reti


    ld h, $95
    ld l, d
    sbc e
    ld h, h
    rst $38
    nop
    db $d3
    inc l
    ret


    ccf
    ret nz

jr_075_7415:
    ccf
    ld h, b
    sbc a
    jr c, jr_075_73e1

    ld hl, $00de
    rst $38
    ld h, b
    sbc a
    add d
    ld a, l
    ld b, b
    cp a
    db $10
    rst $28
    add h

jr_075_7427:
    ei
    ld d, b
    rst $28
    add b
    ld a, a
    add c
    ld a, [hl]
    ld h, c
    sbc [hl]
    ld hl, sp+$0f
    ld a, [c]
    dec c
    ld l, [hl]
    sub l
    add hl, hl
    sub $71
    adc [hl]
    ld hl, sp+$07
    db $fc
    inc bc
    jr jr_075_7427

    cp c
    add $55
    db $eb
    xor a
    ld [hl], e
    dec l
    db $d3
    add l
    ld a, e
    sub b
    ld a, a
    ld [c], a
    dec a
    ld h, l
    ld a, [de]
    sub a
    ld a, a
    rst $10
    ccf
    db $e4
    rra
    call nz, $e13f
    rra
    ld h, c
    sbc a
    ldh [$1f], a
    ldh a, [rIF]
    sub a
    rst $38
    inc de
    rst $38
    scf
    rst $38
    ld [hl], $ff
    nop
    rst $38
    add b
    ld a, a
    or h
    ld l, a
    ld b, c
    ld a, $c8
    scf
    ld a, e
    rst $00
    ld h, h
    db $e3
    db $fc
    jp $dc23


    ret nz

    ld a, $37
    ldh [rDMA], a
    cp b
    ld a, [c]
    inc c
    ld c, $f0
    db $fc
    nop
    db $f4
    ld [$f8ed], sp
    add c
    cp $61
    sbc [hl]
    rst $18
    jr nz, jr_075_7415

    ld a, e
    add b
    ld a, a
    and c
    cp $f1
    db $fc
    ld e, c
    and b
    db $eb
    rla
    add $fb
    add b
    rst $38
    db $e4
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld a, [de]
    db $fd
    ld a, a
    add c
    inc de
    rrca
    cpl
    sbc [hl]
    ld h, a
    sbc b
    or d
    ld c, a
    ret c

    ccf
    ld [hl], b
    rst $38
    add b
    rst $38
    adc c
    cp $17
    ld hl, sp+$03
    db $fc
    pop af
    cp $f6
    ld sp, hl
    ret nz

    rst $38
    ld a, [bc]
    rst $30
    ld h, [hl]
    rst $38
    ld b, $ff
    ld d, [hl]
    cp a
    dec sp

jr_075_74cd:
    db $fc
    ld [hl], h
    ld sp, hl
    di
    inc c
    ld a, a
    add b
    ei
    inc b
    db $ed
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $30
    ld [$fb4e], sp
    inc a
    ei
    and h
    ld e, e
    jr jr_075_74cd

    inc h
    db $db
    inc e
    db $e3
    inc e
    db $e3
    ld [$c0f7], sp
    ccf
    ldh a, [rIF]
    adc a
    ldh a, [$e9]
    cp $62
    cp l
    ld [hl-], a
    rst $38
    jr nz, @+$01

    ld d, d
    db $ed
    ld b, [hl]
    cp c
    and b
    ld e, a
    db $e4
    dec de
    xor l
    ld d, e
    add h
    ld a, e
    add d
    ld a, l
    adc a

jr_075_750b:
    db $76
    ld h, h
    cp a
    ret z

    ld [hl], a
    ld c, [hl]
    pop af
    jr z, jr_075_750b

    ldh [$1f], a
    ld a, [c]
    dec c
    ld c, a
    or b
    add e
    ld a, h
    adc b
    ld a, a
    db $10
    rst $28
    and h
    db $db
    inc l

jr_075_7523:
    db $d3
    ld c, h

jr_075_7525:
    di
    and b
    ld e, a
    rla
    db $ec
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
    nop
    rst $38
    inc b
    ei
    ld d, h
    xor e
    ld c, $f1
    sbc [hl]
    ld h, c
    call nz, $e43b
    dec de
    db $fd
    ld [bc], a
    inc bc
    db $fc
    ld c, l
    or d
    inc h
    db $db
    jr nz, jr_075_7525

    ld [hl], a
    add b
    ld e, a
    and b
    ld h, a
    sbc b
    ld [hl], h
    adc e
    sub a
    add sp, $07
    ld hl, sp-$51
    ret nc

    rst $08
    or b
    ld a, [hl]
    add c
    dec e
    ld [c], a
    ld h, c
    rst $38
    ld a, [hl-]
    push af
    xor $11
    ld d, b
    rst $38
    ret z

    rst $38
    ld [hl], h
    rst $38
    db $ed
    ld a, [hl]
    sbc d
    ld a, a
    sbc [hl]
    ld a, a
    dec b
    cp $54
    add sp, $6e
    pop af
    ld b, c
    rst $20
    add e
    ld a, a
    ld b, b
    rst $38
    ld [hl], a
    adc a
    inc bc
    inc a
    ld a, $01
    ld a, [c]
    ld bc, $3946
    jr nz, jr_075_7523

    sbc $3f
    cp [hl]
    db $fd
    sub d
    pop hl
    db $ed
    inc bc
    or a
    rst $28
    adc [hl]
    rst $30
    add c
    ld a, h
    ld a, [hl]
    rst $38
    ld a, e
    db $fc
    ld c, d
    pop af
    ld a, [de]
    pop af
    and e
    rst $38
    ld l, $df
    ld [hl], b
    adc h
    dec bc
    db $fc
    inc a
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld c, h
    inc sp
    rrca
    ldh a, [rSCY]
    cp a
    ld b, $ff
    dec de
    rst $38
    ld b, a
    rst $38
    nop
    rst $38
    ld a, h
    add e
    adc b
    rlca
    ld de, $e2ef
    rra
    inc bc
    cp $2e
    rst $18
    ld c, l
    cp $4f
    add b
    dec e
    nop
    ld b, a
    jr c, @-$7d

    ld a, [hl]
    ld h, a
    add b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $d4
    cpl
    db $ed
    ld a, [c]
    sbc l
    ld [c], a
    ld a, a
    add b
    ld b, b
    rst $38
    rra
    ldh [$7f], a
    add b
    rra
    ret nz

    ld l, a
    add b
    ld e, a
    and b
    jp c, Jump_000_1b24

    db $f4
    inc [hl]
    rst $18
    sub $2f
    add e
    ld a, h
    sub a
    ld l, b
    ld c, l
    ld a, [c]
    ld a, b
    and a
    sbc e
    db $e4
    add b
    ld a, l
    sbc [hl]
    jp hl


    add l
    ld a, [$f689]
    dec c
    ld a, [c]
    or $49
    inc d
    rst $28
    ld l, b
    sub a
    ld [hl], d
    adc l
    add d
    db $fd
    ccf
    call nc, Call_075_728d
    sbc e
    ld h, h
    ld sp, hl
    ld b, $72
    add c

jr_075_7620:
    ld h, e
    call c, $d56a
    ld [hl], c
    rst $38
    ld [hl], $d9
    ld c, $f1
    ld c, h
    ld a, [c]
    ld c, a
    ldh a, [$03]
    ld hl, sp+$27
    ret c

    rra
    ldh [rNR31], a
    db $e4
    scf
    ret z

    ccf
    ret nz

    ld b, e
    db $fc
    ld e, e
    and h
    db $db
    inc h
    ld sp, hl
    ld b, $7f
    add b
    sub a
    ld hl, sp-$80
    ld a, a
    swap a
    cp [hl]
    ld b, e
    pop bc
    rst $38
    ld [hl], e
    db $ec
    cp a
    ld b, b
    ei
    inc b
    cp a
    ld b, b
    ld a, a
    add b
    cp $01
    inc bc
    db $fd
    dec a
    rst $38
    add a
    ld a, h
    adc c
    ld a, [hl]
    ld b, a
    jr jr_075_7690

    inc d
    ret nz

    ld a, $42
    inc a
    ld c, h
    jr nc, @+$06

    jr c, @+$17

    ld [$0df2], sp
    ld b, a
    cp b
    push de
    ld a, [hl-]
    ld h, l
    sbc e

jr_075_7678:
    db $fd
    inc bc
    cp [hl]
    ld bc, $1fe6
    xor l
    ld e, [hl]
    rst $00
    jr c, jr_075_76f0

    jr jr_075_7620

    inc b
    ld e, a
    jr nz, jr_075_7678

    nop
    rst $18
    ldh [$d0], a

jr_075_768d:
    and b
    cp b
    ld b, b

jr_075_7690:
    ld hl, sp-$01
    db $e4
    ei
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $28
    jr nz, @-$1f

    ld bc, $ef7f
    rst $38
    xor a
    ld e, a
    ld a, [de]
    add a
    dec e
    adc a
    and a
    rra
    ld l, b
    add a
    jr nz, jr_075_768d

    ldh a, [rIF]
    ld [bc], a
    rst $38
    ld h, d
    pop af
    and a
    jp $835e


    ld b, d
    cp l
    db $eb
    inc e
    dec d
    ld hl, sp-$78
    pop af
    ld hl, sp+$3c
    cp d
    ld a, l
    dec e
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    ld hl, $04df
    rst $38
    cp a
    ld a, a
    rst $28
    rra
    ld hl, sp+$07
    db $fd
    ld [bc], a
    cp a
    ld b, b
    cp l
    ld b, d
    rst $38
    nop
    db $fd
    ld [bc], a

jr_075_76e0:
    rst $38
    nop
    ei
    inc b

jr_075_76e4:
    ld b, l
    cp [hl]
    ei
    inc b
    rst $38
    nop
    rst $18
    jr nz, jr_075_76e4

    nop
    rst $20
    db $10

jr_075_76f0:
    rst $38
    nop
    rst $08
    jr c, jr_075_76e0

    inc d
    rra
    ldh [$d3], a
    inc l
    cp $33
    ld d, l
    cp d
    ld e, e
    cp l
    ld [de], a
    db $ed
    db $10
    rst $28
    adc h
    ld [hl], e
    cp b
    rlca
    ldh [$1f], a
    and [hl]
    ld e, e
    inc a
    jp $835e


    db $e3
    rst $18
    rst $08
    rst $38
    ld bc, $0cff
    di
    ldh [$1f], a
    ret nz

    ccf
    ld [hl], b
    adc a
    ld [$c0f7], sp
    ccf
    ld a, b
    add a
    ld b, b
    cp a
    nop
    rst $38
    adc h
    di
    ld b, b
    cp a
    ret


    ccf
    sbc c

jr_075_772f:
    rst $38
    and [hl]
    ld e, e
    ld [$a7ff], sp
    sbc $61
    sbc $9e
    ld h, c
    ld c, h
    or e
    db $eb
    inc d
    sbc $21
    rst $10
    ld [$61de], sp
    dec bc
    db $f4
    jr jr_075_772f

    rrca
    ldh a, [$8f]
    ldh a, [$5d]
    and d
    ld hl, sp+$07
    xor [hl]
    ld de, $01fe
    rst $28
    db $10
    xor $10
    cp l
    ld b, d
    ld h, l
    jp c, $e21d

    rst $38
    nop
    inc [hl]
    rst $38
    srl a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld [hl], h
    adc e
    inc [hl]
    rst $08
    cp b
    rst $00
    xor e
    inc d
    ld a, d
    add l
    and b
    ld e, a
    sub e
    ld a, a
    rra
    rst $38
    jr z, @-$27

    sbc e
    ldh [rNR32], a
    db $e3
    add a
    rst $38
    inc de
    rst $38
    add hl, de
    and $01
    rst $38
    ld [hl], e
    rst $38
    pop bc
    ccf
    inc de
    rrca
    rst $18
    ccf
    ei
    inc e
    rst $28
    db $10
    push bc
    ld a, [hl-]
    add hl, sp
    ret nz

    jr jr_075_779a

jr_075_779a:
    adc a
    ld [hl], b
    cp h
    ld b, e
    and d
    call $ce31
    xor $1f
    sub $3f
    ld a, e
    rst $38
    or a

jr_075_77a9:
    rst $38
    xor $ff
    and b
    ld a, a
    cp $01
    db $fc
    inc bc
    inc b
    ei
    or e
    rst $38
    db $d3
    rst $20
    scf
    adc $eb
    inc e
    rst $00
    jr c, jr_075_77a9

    db $fd
    inc bc
    db $fc
    rlca
    ld hl, sp+$75
    adc [hl]
    call nz, $d83f
    rlca
    ld l, $d1
    ld a, e
    add a
    add hl, bc
    add a
    ld sp, hl
    xor $e1
    sbc $f0
    ld c, a
    inc b
    ei
    ld c, [hl]
    ld sp, hl
    rla
    add sp, -$71
    ld [hl], b
    cpl
    ret nc

    rlca
    nop
    rst $38
    ld e, $ff
    cp [hl]
    ccf
    rrca
    add hl, hl
    rrca
    ld e, b
    rra
    ld [$180f], sp
    rra
    jr jr_075_7801

    add sp, $0f
    ld hl, sp+$7f
    ld hl, sp+$0f
    ld a, b
    cpl
    xor b
    rrca
    ret c

    rrca
    jr z, jr_075_780f

    xor b

jr_075_7801:
    cpl
    xor h
    rrca
    call c, $ec9f
    ld l, a
    xor h
    adc a
    db $f4
    rst $20
    call c, $eccf

jr_075_780f:
    ld c, a
    ld e, h
    rrca
    db $e4
    rlca
    call z, $0c87
    rlca
    inc c
    rlca
    inc a
    rrca
    db $f4
    rlca
    ld c, $07
    ld c, $07
    ld b, $07
    ld e, $07
    ld c, $07
    ld c, $07
    ld c, $07
    xor [hl]
    rlca
    sbc $07
    and $87
    rst $20
    rlca
    ld a, [hl]
    rlca
    rst $38
    add e
    cp $03
    rst $08
    dec bc
    rra
    inc bc
    and [hl]
    inc bc
    sbc $0b
    rst $18
    inc bc
    db $76
    inc bc
    rlca
    inc bc
    ld h, h
    inc bc
    cp [hl]
    inc bc
    rst $18
    rlca
    rst $38
    inc bc
    db $e3
    inc bc
    db $ed
    inc bc
    call c, $0703
    inc bc
    dec e
    inc bc
    add a
    inc bc
    rrca
    rlca
    rrca
    ld bc, $0107
    cp $03
    ld c, $03
    inc bc
    ld bc, $0103
    nop
    ld bc, $01a2
    ld b, e
    ld bc, $010d
    sbc [hl]
    ld bc, $4171
    reti


    ret nz

    ldh a, [rP1]
    ld h, c
    nop
    rrca
    nop
    nop

jr_075_787f:
    nop
    db $fc
    cp $f4
    rst $38
    add b
    ld a, a
    xor $ff
    rst $38
    rst $38
    ld de, $03ff
    rst $38
    ld hl, sp-$01
    or $08
    and d
    ld b, b
    db $e3
    inc b
    inc b
    nop
    ld hl, sp+$07
    jr @+$01

    ret c

    rst $38
    or b
    ld c, a
    ld [c], a
    ld bc, $fd22
    add [hl]
    rst $38
    daa

jr_075_78a7:
    rst $18
    rst $10
    jr c, jr_075_78a7

    inc bc
    sbc h
    ld h, e
    jr nc, jr_075_787f

    add c
    cp $5e
    pop hl
    inc e
    db $e3
    ld [$4ff7], sp
    ld a, $df
    inc a
    di
    rra
    rst $30
    rrca
    rlca
    rlca
    ld bc, $0100
    nop
    rlca
    nop
    inc h
    inc bc
    dec hl
    ldh a, [$7b]
    db $fc
    ld e, h
    cp a
    ld sp, $43fe
    db $fc
    ld d, a
    add sp, $73
    adc h
    push af
    ld a, [bc]
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    call nz, $ae00
    nop
    ei
    ld bc, $ffff
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    scf
    ld hl, sp+$0b
    db $f4
    rst $18
    and b
    ld l, [hl]
    or c
    sbc b
    rst $20
    di
    db $ec
    or c
    ld l, [hl]
    or c
    adc $cf
    ldh a, [$be]
    ld b, c
    add a
    ld a, b
    xor h
    db $d3
    ld a, d
    and l
    ld b, c
    cp [hl]
    adc l
    ld [hl], d
    db $dd

jr_075_790f:
    ld [hl+], a
    sub l
    ld l, d
    ld e, l
    or d
    sub c
    ld a, [hl]
    jr jr_075_790f

    ret c

    scf
    ld b, b
    cp a
    nop
    rst $38
    ret c

    ld a, a
    ld b, b
    rst $38
    ld e, b
    rst $38
    ret nz

    ld a, a
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld c, c
    cp $68
    rst $38
    add sp, $7f
    jr nc, @+$01

    ld d, b
    rst $38
    ld l, d
    rst $38
    ld l, b
    rst $38
    ld e, h
    rst $38
    ld l, b
    rst $38
    ld c, d
    rst $38
    ld a, d
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    cp e
    ld a, a
    ld a, h
    rst $38
    dec a
    rst $38
    sbc $3f
    dec a
    rst $38
    cp a
    ld a, a
    db $fd
    cp a
    ld a, a
    rst $38
    ccf
    rst $08
    ld h, a
    cp a
    sub a
    rst $28
    cp a
    ld l, a
    xor a
    rst $38
    or a
    rst $28
    ld c, e
    push af
    or a
    ld l, e
    xor c
    db $76
    ld b, c
    cp $de
    ld sp, $ef10
    ldh a, [rIF]
    ld a, e
    rst $00
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    ld e, a
    nop
    jp c, Jump_075_7100

    nop
    add hl, hl
    nop
    inc de
    ld l, h
    ld e, l
    ld [c], a
    ld h, d
    dec e
    ld [hl], c
    cp $08
    rst $30
    ld a, a
    add b
    ld c, a
    or b
    inc l
    ld [hl], e
    ld h, h
    dec de
    ld d, [hl]
    add hl, hl
    adc a
    ld h, b
    jr nc, jr_075_79e7

    sub $29
    ldh a, [$8f]
    adc h
    ld a, a
    db $fd
    cp $7f
    ldh a, [rWY]
    add l
    and [hl]
    ret nz

    ldh [rP1], a
    ld hl, sp+$07
    sub a
    rst $38
    cpl
    rst $18
    dec [hl]
    rst $08
    ld h, a
    inc sp
    db $d3
    inc c
    adc l
    ld [bc], a
    rrca
    nop
    rlca
    nop
    sub c
    ld h, b
    jp hl


    ldh a, [$75]
    ld hl, sp-$01
    ld sp, hl
    ld [hl], l
    ei
    ld a, h
    ei
    ld [hl], l
    ei
    add hl, de
    rst $38
    jr c, @+$01

    rlca
    ld hl, sp-$32
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_075_79df:
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_075_79e7:
    rst $38
    jp hl


    rst $10
    ld c, a
    or b
    add l
    ld a, d
    sub a
    ld l, b
    swap h
    dec bc
    db $f4
    ld c, e
    or h
    jp nz, $a33d

    ld e, h
    rst $38
    nop
    sub [hl]
    ld l, c
    ld a, h
    add e
    sub $29
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $18

jr_075_7a0f:
    jr nz, jr_075_79df

    ld sp, $00ff
    xor $11
    ld a, l
    add d
    ei
    inc b
    push af
    ld a, [bc]
    db $db
    inc h
    xor e
    ld d, h
    ld d, l
    xor d
    adc l
    ld [hl], d
    ld b, a
    cp b
    inc [hl]
    swap c
    adc $25
    jp c, $9f60

    jr nz, jr_075_7a0f

    add hl, hl
    sub $00
    rst $38
    ld bc, $01fe
    cp $40
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ld de, $44ff
    rst $38
    ld [de], a
    rst $38
    xor c
    rst $38
    ld [hl], l
    rst $38
    db $76
    rst $38
    ld e, a
    rst $38
    cp $ff
    rst $30
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
    ld l, a
    sbc a
    ld a, l
    rst $38
    db $76
    db $eb
    ld b, $ff
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $30
    nop
    dec [hl]
    nop
    ret nz

    nop
    ldh [rP1], a
    db $e3
    rlca
    ld [hl], b
    add a
    db $e3
    inc e
    rrca
    cp $8b
    rst $00
    ei
    rlca
    inc bc
    rst $38
    call c, $cdff
    cp $83
    ld a, h
    jp z, Jump_000_1f00

    add b
    ld l, a
    sub b
    ld b, a
    cp b
    xor a
    db $10
    sbc a
    nop
    push af
    ld c, $2f
    rst $18
    adc a
    ld a, a
    rst $08
    ccf
    rst $18
    cpl
    inc e
    db $e3
    ld a, a
    add b
    jr @-$1e

    ld b, h
    ei
    ld hl, $9bde
    inc b

jr_075_7ab6:
    srl h
    cp e
    ld a, [hl]
    dec de
    cp $dc
    jr nz, @+$01

    nop
    pop af
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    adc b
    rst $30
    add d
    rst $38
    cpl
    rst $18
    rst $08
    rra
    jr nc, jr_075_7ade

    pop af
    rst $38
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_075_7ade:
    rst $38

jr_075_7adf:
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, e
    add h
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    or h
    ld c, e
    cp l
    ld b, d
    rst $18
    jr nz, jr_075_7ab6

    ld b, b
    ld a, l
    add d
    adc d
    ld [hl], l
    ld b, d
    cp l
    add h
    ld a, e
    ldh a, [rIF]
    and d
    ld e, l
    inc h
    db $db
    jr z, jr_075_7adf

    ld [hl], h
    adc e
    ld d, b
    xor a
    ldh [$1f], a
    ld d, b
    xor a
    adc $31
    ld b, h
    cp e
    db $ec
    inc de
    xor l
    ld d, d
    ld l, b
    sub a
    ld hl, sp+$07
    cp b
    ld b, a
    cp $01
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    cp a
    ld b, b
    ld l, a
    sub b
    cp l
    ld b, d
    sub e
    ld l, h
    ld l, $d1
    dec hl
    call nc, $ed12
    ld a, [bc]
    push af
    ld bc, $01fe
    cp $00
    rst $38
    ld hl, $15fe
    ld a, [$ff28]
    ld b, b
    rst $38
    call nc, Call_075_60fb
    rst $38
    jp z, $c1ff

    rst $38
    rst $30
    rst $38

jr_075_7b54:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ld e, a
    cp a
    di
    ld b, h
    rst $38
    ret nz

    rst $38
    inc [hl]

jr_075_7b75:
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $08
    ld bc, $0058
    jr nz, jr_075_7b80

jr_075_7b80:
    ld l, b
    sub b
    ld hl, sp+$01
    add a
    ld a, c
    ld a, [hl+]
    push de
    sbc c
    add $c7
    adc [hl]
    ld h, c
    adc [hl]
    push hl
    db $10
    cp $00
    jr nc, jr_075_7b54

    ld hl, sp+$00
    rst $10
    jr c, jr_075_7b75

    inc hl
    db $db
    daa
    ld [$eb01], a
    inc b
    rlca
    nop
    pop bc
    sbc a
    db $d3
    db $ec
    rst $20
    ld hl, sp-$39
    ld hl, sp+$07
    ld hl, sp+$02
    ld a, h
    inc [hl]
    ld c, a
    jp $f73f


    rrca
    ld sp, hl
    ld b, $1f
    ldh [rIF], a
    ldh a, [$b0]
    ld b, b
    nop
    ld bc, $01fe
    nop
    rst $38
    ld a, [de]
    rst $38
    dec e
    ei
    ld a, [de]
    db $fd
    ld a, h
    rst $38
    adc b
    rst $38
    ld l, a
    sub b
    jp $9b3c


    rst $38
    cp d
    rst $38
    cp a
    rst $38
    ld a, c
    rst $38
    ei
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
    rst $38
    rst $38
    cp [hl]
    ld b, c
    ld h, e
    sbc [hl]
    ld hl, sp+$07
    rst $30
    ld [$40bf], sp
    rst $38
    nop
    rst $30
    ld [$02fd], sp
    rst $30
    ld [$8c73], sp

jr_075_7bfa:
    rst $08
    jr nc, jr_075_7bfa

    ld [bc], a
    cp l
    ld b, d
    ld l, a
    sub b
    dec hl
    call nc, $f40b
    ld c, e
    or h
    ld c, e
    or h
    db $d3
    inc l
    add $39
    db $d3
    inc l
    rst $18
    jr nz, @-$67

    ld l, b
    sub b
    ld l, a
    add l
    ld a, d
    ld d, $e9
    db $10

jr_075_7c1b:
    rst $28
    ld de, $16ee
    jp hl


    sub c
    ld l, [hl]
    or d
    ld c, l
    or d
    ld c, l
    adc l
    ld [hl], d
    or l
    ld c, d
    cp d
    ld b, l
    db $db
    inc h
    rst $18
    jr nz, jr_075_7c1b

    dec d
    rrca
    ldh a, [$8f]
    ld [hl], b
    cp a
    ld b, b
    and a
    ld e, b
    xor e
    ld d, h
    xor e
    ld d, h
    ld h, a
    sbc b
    add $39
    ld b, e
    cp l
    ld a, [bc]
    push af
    ld b, [hl]
    cp c
    ld b, b
    cp a
    ld bc, $82ff
    db $fd
    and b
    rst $18
    add b
    rst $38
    push bc
    rst $38
    ldh a, [rIE]
    pop de
    rst $38
    ld a, [$fbff]
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    pop bc
    rst $38
    or c
    rst $38
    ld h, d
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    adc a
    inc c
    ccf
    inc b
    ld a, a
    nop
    ld a, a
    rst $38
    cp $cf
    jp c, $fdfd

    rst $38
    and e
    ld a, a
    ld [hl], b
    ccf
    sbc c
    ld a, [hl]
    sbc e
    ld a, h
    ld hl, $1a1e
    rlca
    ld a, a
    add [hl]
    ld d, e
    ldh [$f0], a
    ldh [$e4], a
    ld hl, sp-$18
    db $fc
    add b
    ld a, b
    ld a, a
    add b
    rst $30
    jp $e71a


    ccf
    rst $38
    sbc $ff
    rlca
    ld hl, sp+$0f
    pop af
    db $76
    ld sp, hl
    rlca
    ld hl, sp-$75
    or $fe
    rlca
    rst $18
    jr nz, jr_075_7ce2

    ret nz

    jp nz, Jump_000_2000

    ret nz

    ld b, c
    or b
    ld h, c
    rst $38
    ei
    rst $38
    jp $c5ff


    ei
    dec [hl]
    jp Jump_000_01fe


    db $fd
    nop
    ld a, $01
    ld d, $eb
    cp [hl]
    ld b, e
    or e
    ld c, [hl]
    sub d
    ld l, a
    ld d, c
    xor a
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    nop

jr_075_7ce2:
    rst $38
    rst $38
    add hl, sp
    or $74
    adc e
    rst $38
    nop
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld a, $c1
    ccf
    ret nz

    ld [hl], a
    adc b
    dec hl
    call nc, $d02f
    dec h
    jp c, Jump_075_659a

    sbc c
    ld h, [hl]
    xor c
    ld d, [hl]
    call z, Call_075_4033
    cp a
    ld b, b
    cp a
    ld d, h
    xor e
    ld [$7315], a
    xor h
    ld [c], a
    dec e
    ld a, [de]
    push hl
    or $29
    ld l, d
    sub l
    or h
    ld c, e
    ld a, [hl]
    add c
    ld a, l
    add d
    ld a, a
    add b
    ld e, [hl]
    and c
    db $76
    adc c
    or a
    ld c, b
    sub h
    db $eb
    ld b, [hl]
    cp c
    add [hl]
    ld sp, hl
    adc d
    push af
    adc [hl]
    pop af
    ret


    rst $30
    add h
    ei
    ret nz

    rst $38
    and c
    cp $f5
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], a
    ld a, [$8740]
    nop
    cp c
    ld b, [hl]
    dec h
    inc bc
    inc c
    rlca
    inc hl
    ret nc

    ld b, e
    jr nc, jr_075_7e04

    ld b, $d5
    ld c, $ef
    db $10
    ei
    ld a, h
    ld a, d
    db $fd
    ei
    rst $38
    rst $38

jr_075_7d97:
    rst $38
    rst $18
    ccf
    cpl
    inc de
    adc h
    ld [hl], e
    cp l
    ld a, a
    sbc a
    ld a, h
    ldh [rIE], a
    adc [hl]
    ld [hl], c
    rlca
    ei
    inc b
    ei
    sbc e
    ld h, b
    ld [hl], e
    db $fc
    inc de
    rst $28
    add $3f
    add [hl]
    ld a, l
    db $e3
    inc e
    jr nz, jr_075_7d97

    db $fd
    ld [bc], a
    rlca
    jr jr_075_7dbd

jr_075_7dbd:
    nop
    call $e962
    rst $38
    ld c, b
    rst $38
    and $ff
    rst $00
    rst $38
    ld sp, hl
    rst $38
    ld b, $f9
    db $fc
    jp $cfb7


    ld b, $f9
    and h
    ld e, e
    adc h
    ld [hl], e
    nop
    rst $38

jr_075_7dd8:
    add h
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    nop

jr_075_7de2:
    rst $38
    rst $38
    jr nz, @-$1f

    jr z, @-$27

    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    or a
    ld c, b
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
    db $ed
    ld [de], a
    cp e
    ld b, h
    ld l, c
    sub [hl]
    inc hl
    call c, $c738

jr_075_7e04:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $a4fe
    ld e, e
    nop
    rst $38
    and h

jr_075_7e11:
    ld e, e
    ld c, [hl]
    or c
    push hl
    ld a, [de]
    rst $00
    jr c, jr_075_7dd8

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $18
    jr nz, jr_075_7de2

    ld b, b
    ld e, [hl]
    and c
    cp e
    ld b, h
    ld [hl-], a
    call $b44b
    inc c
    ei
    ld [hl+], a
    db $dd
    jr nz, jr_075_7e11

    inc b
    ei
    inc h
    rst $38

jr_075_7e36:
    db $10
    rst $38
    jr z, @+$01

    ld [hl], h
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
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
    ld hl, sp-$01
    jr z, @+$01

    rst $38
    rst $38
    rst $38
    nop
    sbc h
    nop
    call c, RST_00
    nop
    xor l
    ld e, [hl]
    ld [$3ccd], a
    jp $c063


    xor h
    ld b, e
    ld de, $d1ff
    ccf
    ld h, d
    sbc a
    add hl, bc
    db $76
    ld h, $c1
    sub a
    ldh [$c9], a
    or $c2
    db $fc
    ld [hl], d
    ret nz

    add b
    ret nz

    cp h
    ret nz

    ld [hl], b
    add b
    ld b, b
    and b
    reti


    and $c8
    rst $30
    and d
    ld e, a
    adc $07
    ld a, l
    add a
    sub d
    rst $38
    ld b, c
    rst $38
    inc e
    rst $38
    sbc h
    ld a, a
    ld [hl], c
    cp $76
    ld sp, hl
    jr nc, @+$01

    pop bc
    ld a, $7f
    add b
    xor $ff
    ld [hl], d
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    add d
    db $fc
    rrca
    ldh a, [$dd]
    ld a, $1f
    cp $c7
    jr c, jr_075_7e36

    ld a, h
    add a
    ld a, b
    ld d, b
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
    nop
    rst $38
    rst $38
    scf
    ret z

    ld d, $e9
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
    rst $38
    nop
    db $fc
    inc bc

jr_075_7ed8:
    rst $28
    db $10

jr_075_7eda:
    cp $01
    or $09
    cp $01
    cp $01
    cp $01
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
    ei
    inc b
    ld sp, hl
    ld b, $98
    ld h, a
    sbc d
    ld h, l
    dec c
    ld a, [c]
    add a
    ld a, b
    dec b
    ld a, [$de21]
    ld de, $53ee
    xor h
    ld e, [hl]
    and c
    ld e, e
    and h
    db $d3

Call_075_7f03:
    inc l
    db $fd
    ld [bc], a
    rst $10
    jr z, jr_075_7ed8

    jr nc, jr_075_7eda

    jr nc, @+$01

    nop
    rst $28
    db $10
    ei
    inc b
    ld l, e
    sub h
    push de
    ld a, [hl+]
    ld d, l
    xor d
    inc b
    ei
    ld c, b
    or a
    nop
    rst $38
    ld a, [bc]
    push af
    ld a, [de]
    push hl
    add hl, bc
    rst $30
    ld hl, $2eff
    db $fd
    xor $fd
    xor [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38

jr_075_7f33:
    rst $38
    rst $38
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
    call z, Call_000_23ff
    rst $38
    ld d, $ff
    add c
    rst $38
    rst $38
    ld a, a
    add a
    nop
    ei
    ld b, b
    ld l, [hl]
    nop
    inc b
    ei
    jr nz, jr_075_7f33

    push bc
    ccf
    ld h, h
    sbc a
    inc b
    ld sp, hl
    ld l, b
    ldh a, [$5c]
    db $e3
    ld b, e
    add c
    sbc b
    ld l, a
    ld h, a
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld [hl], b
    rst $38
    db $ec
    ld a, a
    adc a
    ld a, l
    ld d, e
    dec l
    inc h
    add hl, de
    ld hl, $181e
    rlca
    adc c
    inc bc
    pop de
    nop
    ld [hl], a
    sbc b
    inc c
    sbc a
    sub l
    rrca
    xor a
    rst $18
    cp a
    rst $18
    ld h, e
    sbc a
    or b
    rst $08
    ldh a, [$ef]
    pop hl
    cp $50
    adc a
    ld a, [de]
    add l
    call nz, Call_075_6103
    add d
    add hl, sp
    jp nz, $bf5e

    sbc $3f
    rst $38
    ccf
    sbc a
    ccf
    rst $38
    rra
    sbc $21
    ld e, h
    and e
    nop
    rst $38
    and b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    dec b
    rst $38
    ld [hl], d
    adc l
    ld a, $c1
    rst $38
    nop
    ld hl, sp+$07
    ld h, e
    sbc h
    rst $38
    nop
    rst $30
    ld [$09f6], sp
    cp $01
    rst $30
    ld [$1ce3], sp
    or $09
    db $fc
    inc bc
    rst $38
    nop
    cp $01
    ld a, a
    add b
    ld a, [hl]
    add c
    rst $38
    nop
    ld a, a
    add b
    sbc c
    ld h, [hl]
    rst $28
    db $10
    dec c
    ld a, [c]
    xor b
    ld d, a
    ld e, a
    and b
    cpl
    ret nc

    dec l
    jp nc, $9a65

    dec a
    jp nz, $a857

    rra
    ldh [rNR33], a
    ld [c], a
    dec d
    ld [$8877], a
    ld [hl-], a
    call Call_000_26d9
    push af
    ld a, [bc]
    ld c, b

Jump_075_7ffd:
    or a
    db $fc
    inc bc
