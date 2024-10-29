SECTION "ROM Bank $097", ROMX[$4000], BANK[$97]

    rst $38
    rst $38
    rst $38
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
    rra
    rra
    rst $38
    inc bc
    ccf
    nop
    rrca
    nop
    jp $f000


    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    xor e
    ld d, h
    db $eb
    inc d
    xor d
    ld d, l
    xor [hl]
    ld d, c
    cp d
    ld b, l
    xor d
    ld d, l
    db $eb
    inc d
    xor d
    ld d, l
    xor [hl]
    ld d, c
    cp d
    ld b, l
    xor d
    ld d, l
    db $eb
    inc d
    xor [hl]
    ld d, c
    xor d
    ld d, l
    cp d
    ld b, l
    ld [$ab15], a
    ld d, h
    xor a
    ld d, b
    xor e
    ld d, h
    cp e
    ld b, h
    db $eb
    inc d
    xor a
    ld d, b
    xor a
    ld d, b
    cp a
    ld b, b
    rst $20
    db $10
    and c
    ld b, b
    and b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    ret nz

    nop
    add b
    nop
    add c
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    inc e
    rra
    inc e
    rra
    jr c, jr_097_40b5

    ld hl, sp+$3f
    ldh a, [$7f]
    ldh a, [$7f]
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    xor h
    rst $38
    or b
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
    inc c
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    add d
    rst $38
    add d
    rst $38

jr_097_40b5:
    add h
    rst $38
    add h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    and b
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    add [hl]
    rst $38
    add h
    rst $38
    inc c
    rst $38
    jr @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld b, c
    rst $38
    jp nz, $84ff

    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
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
    jr jr_097_4123

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_097_4133

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_097_4143

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_097_4153

    ld [hl-], a

jr_097_4123:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $36
    scf
    jr c, jr_097_4164

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_097_4133:
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
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_097_4143:
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
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_097_4153:
    ld h, d
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

jr_097_4164:
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
    push de
    push de
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    push de
    push de
    push de
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
    ld c, $d5
    rrca
    db $10
    ld de, $d512
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_097_422c

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_097_423c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_097_424c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_097_425c

    ld [hl-], a

jr_097_422c:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $07
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

jr_097_423c:
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

jr_097_424c:
    rlca
    rlca
    rlca
    rlca
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

jr_097_425c:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    ld bc, $0707
    rlca
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    rlca
    rlca
    rlca
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    ld bc, $0707
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0909
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    add hl, bc
    add hl, bc
    rrca
    ld [$090a], sp
    dec bc
    ld [$0800], sp
    ld [$0808], sp
    nop
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rrca
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    ld [$0f09], sp
    rrca
    add hl, bc
    add hl, bc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fd]
    ld [c], a
    db $fd
    ld [c], a
    db $fc
    db $e3
    ei
    rst $20
    ld a, e
    rst $00
    ld a, e
    rst $00
    ld [hl], a
    rst $08
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $20
    rra
    rst $30
    rrca
    di
    rrca
    sbc e
    ld h, a
    adc c
    ld [hl], a
    ld l, l
    di
    ld [hl], h
    ei
    db $76
    ld sp, hl
    ld a, [c]
    db $fd
    ei
    db $fc
    db $fd
    cp $fd
    cp $fe
    rst $38
    cp $ff
    cp $ff
    db $fd
    cp $fd
    cp $7d
    cp $7b
    db $fc
    cp e
    ld a, h
    cp d
    ld a, l
    sub $39
    ld d, l
    cp e
    ld h, l
    sbc e
    dec l
    db $d3
    cp e
    rst $00
    sbc e
    rst $20
    db $db
    rst $20
    db $db
    rst $20
    cp l
    jp $cbb5


    and [hl]
    reti


    ld h, d
    sbc l
    ld d, e
    cp h
    reti


    ld a, $d9
    ld a, $bc
    ld a, a
    cp [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp [hl]
    ld a, a
    sbc $3f
    sbc $3f
    ld l, l
    sbc [hl]
    ld h, l
    sbc [hl]
    or e
    call z, $ccb3
    sbc $e1
    sbc $e1
    db $ec
    di
    db $ed
    di
    xor $f1
    sbc $e1
    db $db
    db $e4
    db $d3
    db $ec
    or c
    adc $b5
    adc $6e
    sbc a
    ld l, [hl]
    sbc a
    adc $3f
    rst $18
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    ld l, a
    sbc a
    ld l, a
    sbc a
    or a
    rst $08
    or e
    rst $08
    jp c, $d8e7

    rst $20
    db $ec
    di
    db $ed
    ld a, [c]
    rst $30
    ld hl, sp-$09
    ld hl, sp-$05
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$19
    ld hl, sp-$14
    di
    call z, $dbf3
    rst $20
    sbc e
    rst $20
    inc sp
    rst $08
    scf
    rst $08
    ld l, a
    sbc a
    ld l, a
    sbc a
    ld c, a
    cp a
    ld l, a
    sbc a
    xor a
    rst $18
    or a
    rst $08
    db $d3
    rst $28
    db $db
    rst $20
    jp hl


    rst $30
    db $ed
    di
    db $f4
    ei
    or $f9
    ld a, [$fbfd]
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    adc $3f
    ld l, [hl]
    sbc a
    ld h, [hl]
    sbc a
    or l
    adc $b1
    adc $d9
    and $db
    db $e4
    rst $28
    ldh a, [$ee]
    pop af
    or $f9
    or $f9
    push af
    ld a, [$f3ed]
    rst $28
    ldh a, [$df]
    ldh [$df], a
    ldh [$d7], a
    add sp, -$49
    ret z

    scf
    ret z

    cpl
    db $db
    rst $28
    dec de
    rst $28
    dec de
    rst $18
    dec sp
    rst $18
    dec sp
    rst $28
    dec de
    rst $28
    dec de
    and a
    ld e, e
    rla
    db $eb
    rra
    db $e3
    ld c, a
    di
    rst $28
    di
    rst $20
    ei
    rst $30

Call_097_44bf:
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    ei
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    ei
    db $fd
    ei
    db $fd
    di
    db $fd
    ld [hl], a
    ld sp, hl
    ld h, a
    ld sp, hl
    xor a
    ld [hl], c
    xor e
    ld [hl], l
    db $db
    dec h
    ld [hl], a
    adc l
    ld [hl], a
    adc l
    cpl
    db $dd
    xor a
    db $dd
    ld [hl], a
    adc l
    ld a, e
    add l
    swap l
    rst $08
    ld sp, $7997
    or a
    ld a, c
    inc sp
    db $fd
    ld a, e
    db $fd
    ld a, e
    db $fd
    ld a, a
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $7f
    cp $7f
    cp $bf
    ld a, [hl]
    cp a
    ld a, [hl]
    db $dd
    ld a, $dd
    ld a, $6b
    sbc h
    ld l, e
    sbc h
    scf
    ret z

    or a
    ret z

    db $dd
    ld [c], a
    db $db
    and $db
    and $dd
    ld [c], a
    or a
    ret z

    or a
    ret z

    inc hl
    call c, $9e69
    ld e, l
    cp [hl]
    db $dd
    ld a, $dc
    ccf
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    ld l, [hl]
    sbc a
    ld l, [hl]
    sbc a
    or l
    adc $b1
    adc $d9
    and $db
    db $e4
    db $eb
    db $f4
    xor $f1
    cp $f1
    cp $f1
    rst $28
    ldh a, [$fb]
    db $e4
    ld sp, hl
    and $d9
    and $f4
    rst $08
    or [hl]
    rst $08
    ld l, [hl]
    sbc a
    ld l, a
    sbc a
    rst $18
    ccf
    rst $18
    ccf
    cp a
    ld a, a
    rst $18
    ccf
    ld e, a
    cp a
    ld l, a
    sbc a
    db $db
    rst $20
    db $db
    rst $20
    cp c
    rst $00
    cp c
    rst $00
    cp h
    jp $9b64


    ld h, [hl]
    sbc c
    jp c, $db3d

    inc a
    reti


    ld a, $bd
    ld a, [hl]
    cp h
    ld a, a
    cp [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rlca
    rlca
    rst $38
    rst $38
    ld a, a
    ld b, a
    ccf
    inc hl
    ccf
    ld hl, $203f
    ccf
    jr nz, jr_097_4622

    ld h, b
    cp $c1
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $81
    cp $c1
    cp $e1
    cp $f1
    cp $f9
    cp $fd
    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    ccf
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
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
    cp a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    add e
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
    add b
    rst $38
    add b

jr_097_4622:
    rst $38
    ldh a, [rIF]
    ld [$0407], sp
    rlca
    inc b
    rlca
    inc b
    rlca
    rlca
    ld [$8d08], sp
    ld [hl], e
    ld a, l
    add e
    ld a, e
    add a
    inc sp
    rst $08
    or a
    rst $08
    cp e
    rst $00
    ld a, e
    add a
    ld l, l
    sub e
    call $cd33
    inc sp
    sub [hl]
    ld a, c
    or [hl]
    ld a, c
    cp e
    ld a, h
    ld a, e
    db $fc
    ld a, l
    cp $fd
    cp $fd
    cp $fe
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    cp $bd
    ld a, [hl]
    cp e
    ld a, h
    db $db
    inc a
    sub $39
    ld h, [hl]
    sbc c
    ld l, h
    sub e
    dec l
    db $d3
    sbc c
    rst $20
    sbc e
    rst $20
    cp e
    rst $00
    cp l
    jp $936d


    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $f9
    cp $7b
    db $fc
    ld [hl], e
    db $fc
    ld [hl-], a
    db $fd
    ld [hl], $f9
    add [hl]
    ld a, c
    adc l
    ld [hl], e
    call Call_097_5b33
    and a
    ld a, e
    add a
    or e

jr_097_468f:
    rst $08

jr_097_4690:
    or a
    rst $08
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_097_4697:
    rst $38
    rst $38
    rst $38

jr_097_469a:
    rst $38

jr_097_469b:
    rst $38

jr_097_469c:
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    jr jr_097_46c3

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    rst $18
    rst $18
    rra
    ret c

    jr jr_097_4690

    jr jr_097_468f

    jr jr_097_4697

    ld e, $de
    ld e, $d8
    jr jr_097_469a

    jr jr_097_469c

    jr jr_097_469b

jr_097_46c3:
    jr jr_097_4724

    rra
    ld e, a
    rra
    ld b, b
    nop
    ld a, a
    nop
    ld a, a
    rrca
    ld a, a
    ld [$087f], sp
    ld a, a
    ld [$087f], sp
    ld a, a
    ld [$087f], sp
    ld a, a
    ld [$087f], sp
    ld a, a
    ld [$087f], sp
    ld a, a
    ld [$087f], sp
    ld a, a
    inc b
    ld a, a
    inc b
    ld a, a
    inc b
    ld a, a
    inc b
    ld a, a
    inc b
    ld a, a
    inc b
    ld a, a
    inc b
    cp a
    add h
    cp a
    add h
    cp a
    add h
    cp a
    add h
    cp a
    add h
    cp a
    add h
    call nz, $c4bf
    cp a
    call nz, Call_097_44bf
    ccf
    ld b, h
    ccf
    ld b, h
    ccf
    ld b, h
    ccf
    ld b, a
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    db $ec
    di

jr_097_4724:
    xor $f1
    rst $30
    ld hl, sp-$09
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$13
    ld a, [c]
    db $ec
    di
    ret c

    rst $20
    ld e, e
    rst $20
    inc sp
    rst $08
    or a
    ld c, a
    rst $20
    rra
    rst $28
    rra
    rst $08
    ccf
    rst $18
    ccf
    rst $28
    rra
    rst $28
    rra
    scf
    rst $08
    scf
    rst $08
    ld e, e
    rst $20
    db $db
    rst $20
    reti


    rst $20
    db $ed
    di
    db $ec
    di
    or $f9
    rst $30
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ld l, a
    sbc a
    ld [hl], a
    adc a
    rst $30
    rrca
    ei
    rlca
    sbc e
    ld h, a
    xor l
    ld [hl], e
    ld l, l
    di
    db $76
    ld sp, hl
    or $f9
    ei
    db $fc
    ei
    db $fc
    db $fd
    cp $fd
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc e
    nop
    ld l, e
    ld h, e
    ld l, e
    ld h, e
    ld l, e
    ld h, e
    ld l, e
    ld h, e
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
    ld a, a
    ld a, a
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, c
    ld l, c
    nop
    nop
    rst $38
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
    dec l
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    ld e, $ff
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
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
    rst $38
    ldh [rIE], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rst $00
    rst $00
    rst $38
    ccf
    rst $38
    nop
    rst $18
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    rst $08
    ccf
    ld l, [hl]
    sbc a
    ld h, [hl]
    sbc a
    or l
    adc $b1
    adc $db
    db $e4
    db $db
    db $e4
    xor $f1
    xor $f1
    xor $f1
    xor $f1
    db $db
    db $e4
    db $d3
    db $ec
    or c
    adc $a5
    sbc $66
    sbc a
    ld c, [hl]
    cp a
    adc $3f
    sbc a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    db $fd
    cp $fd
    cp $fb
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$0a
    ld sp, hl
    xor $f1
    db $ed
    di
    ld l, l
    di
    ld e, e
    rst $20
    sbc e
    ld h, a
    or a
    ld c, a
    rst $30
    rrca
    rst $20
    rra
    ld l, a
    sub b
    rrca
    rrca
    rst $38
    ldh a, [rIE]
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
    ldh [rIE], a
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    ld l, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ld l, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rst $38
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
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld e, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub h
    rst $38
    call nc, $d4ff
    rst $38
    or h
    rst $38
    or h
    rst $38
    sub h
    rst $38
    sub a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    add d
    rst $38
    add l
    rst $38
    add l
    rst $38
    add a
    rst $38
    add sp, -$01
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
    db $fc
    rst $38
    ccf
    rst $38
    nop
    rst $38
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
    rra
    ld a, a
    add b
    ld h, [hl]
    sbc c
    or h
    res 7, h
    jp $e7d9


    reti


    rst $20
    cp l
    jp $d3ac


    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc c
    srl h
    db $db
    inc a
    sbc l
    ld a, [hl]
    cp l
    ld a, [hl]
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, a
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
    cp a
    ld a, a
    cp [hl]
    ld a, a
    sbc $3f
    call c, $6d3f
    sbc [hl]
    ld l, c
    sbc [hl]
    inc sp
    call z, $c9b6
    rst $18
    ccf
    rst $28
    rra
    rst $28
    rra
    rst $30
    rrca
    scf
    rst $08
    cp e
    rst $00
    db $db
    rst $20
    db $dd
    db $e3
    db $ed
    di
    or $f9
    or $f9
    ei
    db $fc
    ei
    db $fc
    db $fd
    cp $ff
    db $fc
    rst $38
    ld bc, $feff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    ld hl, sp-$08
    db $fc
    db $fc
    call $cdff
    rst $38
    call $cdff
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    call $cdff
    rst $38
    call $cccd
    call z, $cccc
    call $01cc
    nop
    rst $38
    inc bc
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
    add d
    rst $38
    add e
    rst $38
    add e
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld hl, $21ff
    rst $38
    add hl, sp
    rst $38
    jr nz, @+$01

    ld hl, $bdff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    dec a
    rst $38
    dec h
    rst $38
    ld sp, $1cff
    rst $38
    and l
    rst $38
    cp l
    rst $38
    jr @+$01

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
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add b
    adc a
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    rst $38
    ld hl, sp-$01
    db $fc
    rra
    rra
    ld h, b
    ld h, b
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    inc a
    inc a
    jr c, jr_097_4a76

    jr jr_097_4a58

    db $10
    stop
    nop
    nop
    nop
    ld bc, $8301
    add e
    add e
    add e
    add e
    add e
    inc bc
    inc bc
    ld l, l
    sub e
    ld c, l
    or e
    sub $39
    or [hl]
    ld a, c

jr_097_4a58:
    cp e
    ld a, h
    ld a, e
    db $fc
    ld a, l
    cp $fd
    cp $fd
    cp $fd
    cp $fb
    db $fc
    ei
    db $fc
    or $f9
    or $f9
    db $ec
    di
    db $ed
    di
    reti


    rst $20
    db $db
    rst $20
    or e
    rst $08

jr_097_4a76:
    scf
    rst $08
    ld h, a
    sbc a
    ld l, a
    sbc a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    add [hl]
    nop
    ld a, d
    ld a, b
    db $fc
    db $fc
    xor $ee
    sub $c6
    or [hl]
    add [hl]
    cp b
    add b
    and b
    add b
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    and [hl]
    add [hl]
    or [hl]
    add [hl]
    adc $ce
    call z, $fccc
    db $fc
    ld a, d
    ld a, b
    add a
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    daa
    rst $38
    dec l
    rst $38
    jr z, @+$01

    xor b
    rst $38
    ld l, b
    rst $38
    ld l, l
    rst $38
    daa
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add $ff
    rst $28
    rst $38
    add hl, hl
    rst $38
    adc h
    rst $38
    rst $20
    rst $38
    add hl, hl
    rst $38
    rst $28
    rst $38
    add $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    ld [hl+], a
    rst $38
    add d
    rst $38
    db $e3
    rst $38
    ld [hl+], a
    rst $38
    ld [c], a
    rst $38
    jp $03ff


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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rra
    ld h, b
    ld h, b
    ld b, e
    ld b, e
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, c
    ld b, c
    ld h, c
    ld h, c
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $ff
    cp $ff
    cp $ff
    db $fd
    cp $7d
    cp $7b
    db $fc
    or e
    ld a, h
    or [hl]
    ld a, c
    rst $08
    ccf
    rst $28
    rra
    rst $20
    rra
    ld [hl], a
    adc a
    inc sp
    rst $08
    cp c
    rst $00
    db $dd
    db $e3
    call c, $eee3
    pop af
    xor $f1
    rst $30
    ld hl, sp-$09
    ld hl, sp-$05
    db $fc
    rst $38
    ret nz

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
    nop
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ret nz

    ret nz

    sbc $c0
    jp nz, $fac0

    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp-$3e
    ret nz

    sbc $c0
    ret nz

    ret nz

    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rla
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret z

    rst $38
    ld [$0dff], sp
    rst $38
    adc l
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    jp z, $caff

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
    ldh [rIE], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rrca
    ldh [$e0], a
    pop af
    pop af
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ld h, c
    ld h, c
    ld b, c
    ld b, c
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $20
    rra
    rst $28
    rra
    rst $28
    rra
    or a
    ld c, a
    or a
    ld c, a
    dec de
    rst $20
    ld e, e
    rst $20
    ld c, l
    di
    ld sp, hl
    cp $fb
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$1a
    ld sp, hl
    xor $f1
    call $ddf3
    db $e3
    rst $00
    rst $00
    rst $00
    rst $00
    adc a
    adc a
    rrca
    rrca
    inc e
    inc e
    inc bc
    inc bc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$04
    db $fc
    cp $fe
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    stop
    sub $c6
    sub $c6
    or $e6
    or $e6
    or $ff
    or $ff
    or $ff
    cp $ff
    cp $ff
    sbc $ff
    sbc $ff
    adc $ff
    adc $ce
    sub $c6
    sub $c6
    jr jr_097_4cb8

jr_097_4cb8:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    ld [hl], $ff
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], $ff
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, [hl]
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp [hl]
    rst $38
    or b
    rst $38
    or b
    rst $38
    cp h
    rst $38
    or b
    rst $38
    or b
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rra
    rst $38
    nop
    rst $38
    ret nz

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
    rst $38
    rst $38
    rrca
    rrca
    ldh [$e0], a
    jp $87c3


    add a
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    jp $e1c3


    pop hl
    pop hl
    pop hl
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $fb
    db $fc
    di
    rrca
    or e
    ld c, a
    add hl, de
    rst $20
    add hl, de
    rst $20
    adc h
    di
    call z, $e6f3
    ld sp, hl
    ld [c], a
    db $fd
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    nop
    nop
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
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$05
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    jp nz, $bc00

    inc a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $20
    rst $20
    db $db
    jp $c2da


    db $dd
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    ret c

    ret nz

    db $db
    jp $c7d7


    rst $20
    rst $20
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    cp l
    inc a
    jp $ff00


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
    di
    rst $30
    set 7, a
    set 7, a
    ei
    rst $38
    di
    rst $38
    jp $c3ff


    rst $38
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    rst $38
    ei
    rst $38
    db $db
    rst $38
    set 7, a
    set 7, a
    set 7, a
    set 7, a
    ei
    rst $38
    di
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
    ld sp, hl
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    di
    rst $38
    ei
    rst $38
    db $db
    rst $38
    db $dd
    rst $38
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
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
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
    rst $38
    rst $38
    rlca
    rlca
    ldh a, [$f0]
    ei
    db $fc
    ld sp, hl
    cp $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld hl, sp-$01
    ld sp, hl
    cp $fb
    db $fc
    di
    db $fc
    and $f9
    and $f9
    call z, Call_097_59f3
    rst $20
    sbc c
    ld h, a
    or e
    ld c, a
    rst $30
    rrca
    rst $20
    rra
    rst $28
    rra
    rst $28
    rra
    or a
    ld c, a
    or a
    ld c, a
    dec de
    rst $20
    db $fc
    rst $38
    ld sp, hl
    cp $f9
    cp $f3
    db $fc
    di
    db $fc
    ld h, [hl]
    ld sp, hl
    ld l, h
    di
    ld c, h
    di
    rst $20
    rst $20
    rst $20
    rst $20
    ld c, a
    ld c, a
    nop
    nop
    ld a, a
    ld a, a
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
    nop
    nop
    nop
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
    inc c
    nop
    db $ed
    pop hl
    ld l, l
    ld h, c
    ld l, l
    ld h, c
    ld [hl], e
    ld [hl], e
    inc sp
    inc sp
    or e
    inc sp
    sbc $1e
    sbc $1e
    sbc $1e
    ld l, l
    inc c
    ld l, l
    inc c
    ld l, l
    inc c
    ld l, l
    inc c
    db $ed
    inc c
    db $ed
    inc c
    db $ed
    inc c
    pop hl
    nop
    rst $38
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
    db $ec
    rst $38
    ld c, $ff
    rrca
    rst $38
    rst $28
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    db $ed
    rst $38
    db $ec
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    inc c
    rst $38
    call z, $ccff
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    db $ec
    rst $38
    db $ec
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
    rst $38
    rst $30
    rst $38
    ld [hl], $ff
    ld b, $ff
    ld [hl], a
    rst $38
    ld [hl], $ff
    or [hl]
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    cpl
    ldh a, [$8d]
    ld [hl], e
    sbc e
    ld h, a
    db $db
    daa
    ld [hl], a
    adc a
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    sub e
    ld l, a
    dec de
    rst $20
    ld e, c
    rst $20
    ld c, l
    di
    db $ec
    di
    and $f9
    or $f9
    di
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $fd
    cp $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $c3
    inc a
    sbc c
    ld a, [hl]
    sbc c
    ld a, [hl]
    inc a
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    rrca
    rrca
    rst $38
    di
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
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    rla
    rlca
    rst $10
    rst $00
    or a
    add a
    or [hl]
    add [hl]
    or [hl]
    add [hl]
    db $76
    ld b, $77
    rlca
    rst $30
    rlca
    rst $30
    rlca
    or $06
    or $06
    or $06
    or $06
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
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
    pop bc
    rst $38
    jp $c1ff


    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    reti


    rst $38
    db $dd
    rst $38
    dec e
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    dec de
    rst $38
    db $db
    rst $38
    reti


    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    nop
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
    add b
    add b
    db $fc
    db $fc
    inc bc
    inc bc
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    ld a, a
    pop af
    ld a, a
    db $e3
    dec e
    db $e3
    sbc e
    ld h, a
    or e
    ld c, a
    rst $30
    rrca
    rst $20
    rra
    rst $20
    rra
    rst $30
    rrca
    sub e
    ld l, a
    ld e, $ff
    sbc [hl]
    ld a, a
    adc h
    ld a, a
    call z, Call_097_613f
    sbc [hl]
    ld [hl], c
    adc [hl]
    inc sp
    call z, $e49b
    ldh [$e0], a
    pop af
    pop af
    nop
    nop
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
    rrca
    rrca
    rlca
    rlca
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
    rst $38
    nop
    nop
    nop
    di
    di
    di
    di
    di
    di
    dec b
    ld bc, $01fd
    ld c, $00
    xor $e0
    xor $e0
    xor $e0
    ld c, $00
    db $fd
    ld bc, $01fd
    inc bc
    inc bc
    di
    di
    rst $30
    rst $30
    rst $30
    rst $30
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    adc h
    rst $38
    sbc [hl]
    rst $38
    sbc d
    rst $38
    adc h
    rst $38
    sub [hl]
    rst $38
    sbc [hl]
    rst $38
    adc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp c
    rst $38
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    cp c
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ccf
    nop
    rst $38
    nop
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
    rst $38
    db $fc
    inc bc
    inc bc
    ld [hl], b
    ld [hl], b
    ld hl, $0321
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    daa
    daa
    ld h, e
    ld h, e
    ld h, e
    ld h, e
    pop af
    pop af
    pop af
    pop af
    ld hl, sp-$08
    ld hl, sp-$08
    rst $20
    ld hl, sp-$05
    db $fc
    db $fd
    cp $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    ld [hl], e
    adc a
    ld h, a
    sbc a
    rst $20
    rra
    rst $08
    ccf
    rst $08
    ccf
    sbc a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rP1], a
    ld l, l
    dec c
    ld e, l
    dec e
    sbc l
    sbc l
    sbc c
    sbc c
    cp c
    cp c
    push af
    pop af
    push af
    pop af
    push af
    pop af
    db $ed
    pop hl
    db $ed
    pop hl
    push af
    pop af
    push af
    pop af
    ld sp, hl
    ld sp, hl
    cp c
    cp c
    sbc l
    sbc l
    ld e, l
    dec e
    ld e, l
    dec e
    ld b, b
    nop
    rst $38
    nop
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
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    cp c
    rst $38
    sbc c
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    ld b, $ff
    add [hl]
    rst $38
    add [hl]
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
    rst $38
    nop
    rst $38
    jr c, jr_097_5235

    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    inc bc
    db $fc
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
    cp $ff
    ld a, h
    rst $38
    ld a, h
    rst $38
    add hl, sp
    cp $bb
    ld a, h
    sub e
    ld a, h
    rst $00
    jr c, jr_097_5299

    sub c
    ld c, $f1
    inc e
    db $e3
    and $f9
    di
    db $fc
    di

jr_097_5235:
    db $fc
    ld sp, hl
    cp $f8
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    ldh [$e0], a
    rra
    rra
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
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    add e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    cp e
    add e
    jr c, jr_097_5286

jr_097_5286:
    rst $38
    nop
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
    rst $38
    nop
    rst $38

jr_097_5299:
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
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    ld bc, $1e01
    ld e, $8e
    adc [hl]
    call z, $c4cc
    call nz, $c0ff
    sbc $e1
    adc $f1
    sbc [hl]
    pop hl
    cp [hl]
    pop bc
    ccf
    ret nz

    ld [hl], e
    adc h
    pop hl
    ld e, $e6
    rra
    adc $3f
    sbc [hl]
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld h, [hl]
    ld sp, hl
    inc l
    di
    adc h
    ld [hl], e
    sbc c
    ld h, a
    reti


    daa
    ld a, e
    add a
    ld [hl], e
    adc a
    scf
    call z, $0303
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    cp $fe
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
    rrca
    nop
    rst $28
    ldh [$ef], a
    ldh [$ef], a
    ldh [rIF], a
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
    db $fc
    add b
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
    db $fc
    ld [bc], a
    cp $03
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $3ecf
    adc a
    ld a, a
    sbc a
    ld a, a
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld l, a
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    di
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
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $0000
    add b
    add b
    ld b, b
    ret nz

    ld [hl], b
    ldh a, [$78]
    ld hl, sp+$7c
    db $fc
    ld a, a
    rst $38
    ld a, a
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
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
    rst $38
    rlca
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
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $20
    db $fc
    db $fc
    ld hl, sp-$08
    rst $28
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$0d
    inc c
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    cp $f3
    db $fc
    db $e3
    db $fc
    rst $00
    ld hl, sp-$72
    pop af
    sbc h
    db $e3
    inc e
    db $e3
    add hl, sp
    rst $00
    ld [hl], c
    adc a
    pop af
    cp $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    cp $f3
    db $fc
    rst $38
    ret nz

    rst $38
    ccf
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
    ld a, [hl]
    add c
    cp $ff
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    add h
    add a
    db $e4
    rst $20
    db $f4
    rst $30
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    jr c, @+$41

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr nc, jr_097_5583

    jr nc, jr_097_5585

    jr nc, jr_097_5587

    jr nc, jr_097_5589

    jr nc, jr_097_558b

    jr nc, jr_097_558d

    jr nc, jr_097_558f

    jr nc, jr_097_5591

    jr nc, jr_097_5593

    jr nc, jr_097_5595

    jr nc, jr_097_5597

    jr nc, jr_097_5599

    jr nc, jr_097_559b

    jr nc, jr_097_559d

    jr nc, jr_097_559f

    jr nc, jr_097_55a1

    or b
    cp a
    ldh a, [rIE]
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
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    ldh [rIE], a
    pop hl

jr_097_5583:
    rst $38
    pop hl

jr_097_5585:
    rst $38
    pop hl

jr_097_5587:
    rst $38
    ld h, c

jr_097_5589:
    ld a, a
    ld h, c

jr_097_558b:
    ld a, a
    ld h, c

jr_097_558d:
    ld a, a
    ld h, c

jr_097_558f:
    ld a, a
    ld h, c

jr_097_5591:
    ld a, a
    ld h, c

jr_097_5593:
    ld a, a
    pop bc

jr_097_5595:
    rst $38
    pop bc

jr_097_5597:
    rst $38
    pop bc

jr_097_5599:
    rst $38
    pop bc

jr_097_559b:
    rst $38
    pop bc

jr_097_559d:
    rst $38
    pop bc

jr_097_559f:
    rst $38
    pop bc

jr_097_55a1:
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    db $e3
    ccf
    di
    rra
    di
    rrca
    di
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    pop hl
    ld e, $c3
    ld a, $03
    db $fc
    ld h, a
    ld hl, sp+$6e
    pop af
    ld c, [hl]
    pop af
    inc e
    db $e3
    jr c, jr_097_558f

    ld [hl], c
    adc a
    ld [hl], e
    adc a
    rst $20
    rra
    rst $08
    ccf
    add a
    ld a, a
    add e
    ld a, a
    inc bc
    rst $38
    ld hl, $71ff
    rst $38
    pop af
    rst $38
    ld a, [$ffff]
    rst $38
    adc $31
    db $fc
    inc bc
    ld sp, hl
    rlca
    di
    rrca
    pop af
    rrca
    cp b
    ld b, a
    inc e
    db $e3
    inc c
    di
    ld e, $f1
    ld d, $f9
    dec de
    db $fc
    dec de
    db $fc
    dec e
    cp $1c
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    cpl
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, $ff
    inc e
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    ld a, [hl-]
    db $fd
    ld a, [hl-]
    db $fd
    ld [hl], $f9
    ld [hl], $f9
    inc a
    di
    inc l
    di
    inc l
    di
    dec hl
    rst $30
    ld hl, $2fff
    rst $38
    ccf
    rst $38
    scf
    rst $38
    ccf
    rst $38
    ccf
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
    ld l, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    dec sp
    rst $38
    ld a, [hl-]
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, c
    cp $31
    cp $73
    db $fc
    ld [c], a
    db $fd
    db $e4
    ei
    call z, $d8f3
    rst $20
    ret nc

    rst $28
    or c
    rst $08
    and c
    rst $18
    add e
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
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
    rst $38
    rst $38
    call z, $def3
    pop hl
    call c, $b8e3
    rst $00
    ld a, c
    add a
    ld [hl], e
    adc a
    db $e3
    rra
    rst $00
    ccf
    rst $08
    ccf
    sbc a
    ld a, a
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr jr_097_5713

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_097_5723

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_097_5733

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_097_5743

    ld [hl-], a

jr_097_5713:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_097_5753

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_097_5723:
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

jr_097_5733:
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

jr_097_5743:
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
    ld e, a
    ld d, l
    ld l, a
    ld [hl], b

jr_097_5753:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld e, a
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
    ld e, a
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
    ld b, [hl]
    ld b, [hl]
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
    ld b, [hl]
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
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld e, a
    jr jr_097_581d

    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld [hl+], a
    ld e, a
    inc hl
    inc h
    dec h
    ld h, $27

jr_097_581d:
    jr z, jr_097_5848

    ld a, [hl+]
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0400
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    nop
    inc b
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop

jr_097_5848:
    nop
    nop
    inc bc
    ld bc, $0101
    nop
    inc b
    ld b, $06
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    inc b
    ld b, $05
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    inc b
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0000], sp
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld [$0808], sp
    ld [$0808], sp
    ld [$6808], sp
    add a
    and h
    ld b, e
    jp nc, $e821

    db $10
    db $e4
    jr @-$04

    inc b
    ld sp, hl
    ld b, $7f
    add b
    ret nz

    rst $38
    and b
    rst $38
    ret c

    rst $38
    ld l, h
    rst $38
    ccf
    ccf
    inc c
    rra
    ld c, $07
    ld bc, $c103
    nop
    ld h, b
    nop
    jr c, jr_097_5986

jr_097_5986:
    inc c

jr_097_5987:
    nop
    rlca
    nop
    add c
    nop
    add b
    ret nz

    ld [hl], b
    ldh [$d4], a
    jr c, jr_097_5987

    ld c, $fc
    inc bc
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    add sp, $00
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
    rst $28
    db $10
    add hl, hl
    sub $01
    cp $00
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr nc, @-$2f

    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ldh a, [rIF]
    ldh a, [rIF]
    add sp, $17
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ret nz

    ccf
    ret nc

    cpl
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ret nz

Call_097_59f3:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f9
    rst $30
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$f6]
    ld sp, hl
    ld sp, hl
    ld a, [c]
    pop af
    ld a, [$faf5]
    rst $38
    ldh a, [$fd]
    ld a, [c]
    db $fc
    di
    db $fd
    ld a, [c]
    ld sp, hl
    or $f8
    rst $30
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    or $ef
    or $ef
    xor $ff
    xor $ff
    add sp, -$01
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    or e
    nop
    ld [$ff00], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $08
    ccf
    ld d, e
    adc a
    xor b
    rst $00
    ld e, b
    db $e3
    xor l
    ldh a, [rTMA]
    ld hl, sp+$01
    cp $00
    rst $38
    add b
    rst $38
    ld d, h
    db $eb
    and [hl]
    ld sp, hl
    rst $00
    ld hl, sp+$23
    ld a, h
    jr nc, jr_097_5aa5

    inc b
    rrca
    ld b, $03
    add b
    ld bc, $0060
    jr nc, jr_097_5a90

jr_097_5a90:
    inc c
    nop
    ld b, $00
    add c
    nop
    ld b, b
    add b
    sub b
    ld h, b
    jr z, jr_097_5aac

    ld a, [bc]
    inc b
    nop
    inc bc
    db $d3
    nop
    rst $38
    nop
    rst $38

jr_097_5aa5:
    nop
    rst $38
    nop
    rst $38
    nop
    or $09

jr_097_5aac:
    ld a, b
    add a
    ld [bc], a
    db $fd
    rst $38
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
    ld a, [hl-]
    push bc
    ld d, [hl]
    xor c
    inc b
    ei
    add [hl]
    ei
    add c
    rst $38
    nop
    rst $38
    ld a, l
    rst $38
    ei
    rst $38
    rst $10
    rst $38
    dec sp
    rst $38
    ld [bc], a
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
    jr @+$01

    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, a
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
    cp a
    ld h, b
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    ldh a, [rP1]
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    or l
    ld b, b
    or l
    ld b, b
    or l
    ld b, b
    cp l
    ld b, b
    cp l
    ld b, b
    cp l
    ld b, b
    ld a, l
    add b
    ld e, [hl]
    and b
    ld d, [hl]
    xor b
    ld d, [hl]

Call_097_5b33:
    xor b
    dec d
    ld [$e817], a
    rla
    add sp, $1f
    ldh [$2b], a
    call nc, $ffff
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    ld [$f800], sp
    ldh a, [$fc]
    ld hl, sp-$04
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
    ld a, a
    rst $38
    rra
    rst $38
    add [hl]
    ld a, a
    ld c, e
    ccf
    and c
    rra
    ld b, b
    adc a
    inc h
    jp $619e


    add a
    ld a, b
    db $e3
    inc e
    ldh [$1f], a
    ld l, b
    sub a
    inc c
    di
    adc [hl]
    pop af
    rst $00
    ld a, b
    ld hl, $083e
    rra
    ld c, $07
    add c
    inc bc
    pop bc
    nop
    jr nc, jr_097_5b9a

jr_097_5b9a:
    jr jr_097_5b9c

jr_097_5b9c:
    ld b, $00
    add e
    nop
    jr nz, @-$3e

    add b
    ld [hl], b
    add sp, $1c
    ei
    ld b, $3d
    jp $c13e


    ccf
    ret nz

    rra
    ldh [$ec], a
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
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ret nz

    rla
    add sp, $07
    ld hl, sp+$0b
    db $f4
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
    inc c
    di
    inc b
    ei
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
    nop
    rst $38
    nop
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    cp $00
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, e
    nop
    ld b, e
    nop
    ld b, a
    nop
    ld b, a
    nop
    ld b, [hl]
    nop
    add a
    nop
    rst $08
    nop
    adc a
    nop
    cp a
    nop
    rst $38
    ld bc, $03ff
    rst $30
    rrca
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    xor b
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
    ld d, a
    nop
    adc a
    nop
    cp a
    nop
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
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$06
    db $fc
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ret nz

    ccf
    ld b, b
    ccf
    jr nc, jr_097_5c95

    sbc b
    rlca
    call nz, $f203
    ld bc, $00f9
    cp h
    nop
    ld b, [hl]
    cp a
    ld bc, $00ff

jr_097_5c95:
    rst $38
    ldh a, [rIE]
    inc l
    ld a, a
    ld a, $1f
    rrca
    rrca
    inc bc
    rlca
    pop bc
    ld bc, $0030
    ld de, $0d08
    rlca
    ld bc, $4083
    pop hl
    cp b
    ld [hl], c
    call Call_097_7c3f
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, e
    xor h
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $28
    inc e
    db $e3
    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

    ld e, a
    and b
    ld l, a
    sub b
    ccf
    ret nz

    ld l, a
    sub b
    ld [hl], a
    adc b
    dec de
    db $e4
    rrca
    ldh a, [rNR22]
    add sp, $02
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    jr nz, jr_097_5d0a

jr_097_5d0a:
    jr nz, jr_097_5d0c

jr_097_5d0c:
    jr nz, jr_097_5d0e

jr_097_5d0e:
    dec hl
    inc d
    daa
    jr jr_097_5d4b

    nop
    add hl, sp
    nop
    dec l
    db $10
    daa
    jr jr_097_5d22

    jr c, jr_097_5d24

    jr c, jr_097_5d66

    jr c, jr_097_5d94

    dec h

jr_097_5d22:
    rst $00
    inc hl

jr_097_5d24:
    rrca
    ld [hl], e
    adc b
    ld [hl], e
    adc b
    ld [hl], e
    rst $08
    ld [hl], e
    rst $00
    ld a, a
    rst $18
    ld a, a
    rst $38
    ld a, a
    ld a, a
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
    dec b
    ld a, [$00ff]
    rst $38
    nop
    stop
    nop
    nop
    nop

jr_097_5d4b:
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
    rst $08
    nop
    ret


    nop
    or a
    nop
    ld a, e
    rlca
    ld a, l
    inc bc
    cp $01

jr_097_5d66:
    ld a, [hl]
    ld bc, $00ff
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    add b
    rst $18
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ei
    db $fc
    db $fd
    cp $f5
    cp $cb
    db $f4
    cp $c0
    db $fd
    jp nz, $efd1

    ld a, a
    rst $38
    ld b, b
    ccf
    pop hl
    rra

jr_097_5d94:
    ldh a, [rIF]
    reti


    daa
    call z, $e233
    dec e
    jp hl


    ld e, $a1
    rst $18
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rra
    and b
    ld e, a
    jr nc, @-$1f

    ldh [$1f], a
    db $e4
    dec de
    xor [hl]
    ld d, c
    inc l
    db $d3
    inc c
    di
    adc l
    ld [hl], d
    adc $31
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rla
    add sp, $03
    db $fc
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld [hl], b
    adc a
    ld hl, sp+$07
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    cp $01
    cp [hl]
    ld b, c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    ld l, h
    sub e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    jr z, @-$27

    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    rst $18
    inc hl
    cp e
    ld b, a
    add c
    ld a, a
    ld e, e
    add h
    rst $18
    cp a
    db $eb
    cp a
    db $ed
    cp a
    ei
    cp a
    rst $38
    cp a
    rst $38
    cp a
    ei
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $f4
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld a, a
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
    ccf
    nop
    xor $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    ld a, a
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    ld bc, $0003
    ld bc, $0000
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
    ld a, a
    nop
    rra
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$06
    db $fc
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld e, a
    cp a
    rst $08
    rst $38
    ld b, a
    rst $38
    ld [hl], e
    rst $38
    add hl, sp
    rst $38
    inc h
    rst $38
    daa
    rst $38
    ld hl, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_097_5ebb:
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop

jr_097_5ec1:
    rst $38
    add b
    ld a, a
    db $10
    rst $28
    sub b
    ld l, a
    sub b
    ld l, a
    or b
    ld c, a
    ldh a, [rIF]
    ret nc

    cpl
    ld e, b
    and a
    jr jr_097_5ebb

    jr z, @-$27

    db $10
    rst $28
    jr jr_097_5ec1

    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld a, b
    add a
    ld a, d
    add l
    ret c

    daa
    db $fc
    inc bc
    db $ec
    inc de
    ld hl, sp+$07
    ld [hl], b
    adc a
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
    ccf
    ld a, $00
    ccf
    nop
    db $fd
    ld [bc], a
    ld b, a
    cp h
    or [hl]
    dec c
    cp l
    ld c, $55
    xor [hl]
    ld a, l
    adc [hl]
    cpl
    call c, $5caf
    xor $dd
    db $ed
    cp $d9
    ld a, a
    ld e, $7f
    cp a
    ld a, a
    ld sp, hl
    rst $38
    ei
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    push de
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
    ld d, b
    xor a
    or b
    rst $08
    call nz, $d5fb
    ld [$f3ec], a
    db $f4
    ei
    ld sp, hl
    cp $fa
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    ld a, h
    ccf
    inc a
    rra
    rra
    inc c
    dec c
    ld b, $0a
    rlca
    dec b
    inc bc
    inc bc
    ld bc, $0001
    daa
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$fb]
    db $fc
    db $fd
    cp $fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $23ff
    rst $38
    daa
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld hl, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38

jr_097_6043:
    nop
    ld d, [hl]
    nop
    nop
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
    ei
    call nz, $853b
    ld a, d
    ld [hl], b
    adc a
    add b
    rst $38
    adc a
    ldh a, [rNR23]
    ldh [$ef], a
    nop
    rst $38
    nop
    jr nz, jr_097_6043

    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    or a
    ld a, a
    db $e3
    ccf
    db $e3
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$81]
    cp $c0
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
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
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    nop
    rst $38
    ld bc, $1ffe
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rSB]
    cp $00
    rst $38
    ld b, l
    cp d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    di
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    db $10
    rst $38
    ld bc, $01fe
    cp $09
    or $09
    or $f8
    rlca
    add d
    ld a, a
    nop
    rst $38
    scf
    ret z

    rst $38
    nop
    ld a, a
    nop
    pop af

Call_097_613f:
    ld c, $07
    ld hl, sp+$3d
    jp nz, $f906

    inc b
    ei
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
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    inc e
    rst $38
    ld c, $ff
    rrca
    rst $38
    adc a
    ld a, a
    rst $00
    ccf
    rst $20
    rra
    db $e3
    rra
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    add sp, -$01
    ret c

    rst $38
    ld [hl], b
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    jr @+$01

    inc e
    rst $38
    ld de, $10fe
    rst $38
    add hl, bc
    cp $0b
    db $fc
    ld c, b
    rst $38
    ld [$28ff], sp
    rst $38
    ret z

    rst $38
    adc b
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$03
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
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    add b
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, [$feff]
    rst $38
    nop
    rst $38
    rla
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rlca
    ld hl, sp+$6d
    sub d
    rst $38
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
    ld bc, $0000
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]

jr_097_6230:
    adc l
    ld a, a
    ld [c], a
    rst $38
    nop
    rst $38
    ld b, e
    cp h
    rst $08
    jr nc, jr_097_6230

    ld a, [bc]
    ld e, a
    and b
    ld a, a
    add b
    xor a
    ld d, b
    rst $38
    nop
    rst $30
    ld [$e41b], sp
    ld e, a
    and b
    ld [hl], h
    adc e
    inc b
    rst $38
    nop
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca

jr_097_6259:
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    db $e3
    rst $38
    ld b, a
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
    dec b
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $30
    add hl, de
    rst $20
    add hl, de
    rst $20
    add hl, sp
    rst $00
    jr c, jr_097_6259

    ld sp, hl
    rlca
    ld a, b

jr_097_6295:
    add a
    ld hl, sp+$07
    ld a, b
    add a
    ld a, b
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    cp b
    ld b, a
    ld hl, sp+$07
    ld a, b
    add a
    jr c, jr_097_6295

    jr c, @-$37

    ld de, $01ef
    rst $38
    ld bc, $01ff
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    ld bc, $ffff
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
    rst $38
    nop
    jp $f53c


    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cpl
    nop
    ld bc, $01fe
    cp $15
    ld [$02fd], a
    db $fd
    ld [bc], a
    ldh a, [rIF]
    rra
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rrca
    ldh a, [$fd]
    ld [bc], a
    rst $38
    nop
    ld a, [$fe05]
    ld bc, $05fa
    rst $28
    db $10
    xor $11
    pop hl
    rra
    nop
    rst $38
    ld b, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    sub a
    rst $38
    pop af
    rst $38
    sub c
    rst $38
    add a
    ld sp, hl
    add e
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    and c
    rst $38
    add c
    rst $38
    sub l
    rst $38
    ld b, a
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    ld b, [hl]
    cp c
    ld h, d
    sbc l
    ld bc, $88ff
    rst $38
    dec sp
    push bc
    add a
    ld sp, hl
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, h
    add c
    db $fd
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    nop
    ldh [$1f], a
    adc a
    ld [hl], b
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    cp c
    nop
    adc c
    nop
    add c
    nop
    add b
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    db $fd
    nop
    add b
    nop
    adc h
    nop
    add l
    nop
    add b
    nop
    ldh [rP1], a
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    di
    adc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    ret nz

    rst $38
    add b
    rst $38
    add e
    db $fc
    ld bc, $dffe
    rst $38
    jp nc, $80ff

    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    add hl, de
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    inc [hl]
    set 7, b
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
    nop
    rst $38
    nop
    rra
    nop
    rrca
    nop
    nop
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
    cp a
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ei
    inc b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$5f], a
    and b
    rst $08
    jr nc, jr_097_6488

    or b
    rrca
    ldh a, [rTAC]
    ld hl, sp-$79
    ld a, b
    ld b, e
    db $fc
    inc bc
    db $fc
    add e
    db $fc
    add e
    db $fc
    pop bc
    cp $c3
    cp $9e
    rst $38
    cp $ff
    rst $38
    rst $38
    push bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc a
    ldh [$80], a
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
    sub l
    ld [$c4bb], a
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

jr_097_647a:
    ccf
    ret nz

    scf
    ret nz

jr_097_647e:
    add c
    ret nz

    nop
    ret nz

    ld b, b
    add b
    nop
    ret nz

    ld b, b
    add b

jr_097_6488:
    ret nz

    nop
    ret nz

    nop
    add b
    ld b, b
    add b
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, b
    ret nz

    ldh [rLCDC], a
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rLCDC], a
    ld h, b
    ret nz

    ld h, h
    ret nz

    ld a, b
    ret nz

    ld a, l
    ret nz

    ret nz

    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    ret nz

    jr nz, jr_097_647a

    ld h, b
    ret nz

    jr nz, jr_097_647e

    ld h, e
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$db], a
    db $e4
    jp z, $c0f5

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    db $f4
    dec bc
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
    ld a, a
    nop
    rrca
    nop
    ccf

jr_097_650b:
    nop
    adc e
    nop
    ccf
    nop
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    add b
    ld a, a
    add sp, $17
    add sp, $17
    add sp, $17
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, l
    add d
    db $fc
    add e
    db $10
    rst $28
    nop
    rst $38
    jr nc, jr_097_650b

    db $10
    rst $38
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
    or d
    ld c, l
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
    ld a, a
    nop
    scf
    nop
    dec bc
    nop
    rlca
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    rra
    nop
    add b
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
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
    inc bc
    nop
    rrca
    nop
    rra
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
    ld hl, sp+$07
    ret nz

    ccf
    ldh a, [rIF]
    ld e, a
    and b
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    cp $7e
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp $3f
    cp $3f
    sbc $3f
    sbc $3f
    sbc $3f
    sbc $3f
    sbc $3f
    rst $18
    ccf
    cp a
    ld e, a
    rst $18
    ccf
    sbc a
    ld a, a
    rra
    rst $38
    ld c, $ff
    ld c, $ff
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
    nop
    rst $38
    nop
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
    ld b, b
    cp a
    and b
    ld e, a
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
    add a
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    dec bc
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rla
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ret nz

    ccf
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
    nop
    rst $38
    jr nz, @+$01

    rst $38
    nop
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    dec bc
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    dec b
    rst $38
    rlca
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
    ret nz

    ccf
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    nop
    cp $01
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    rra
    rst $38
    ld l, a
    sbc a
    ld l, a
    sbc a
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $38
    rrca
    rst $28
    rra
    rst $18
    rrca
    rst $28
    rra
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    db $e3
    rrca
    db $e3
    rrca
    rst $10
    cpl
    rst $10
    cpl
    ei
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    db $e3
    rra
    db $eb
    rla
    db $eb
    rla
    db $e3
    rra
    db $e3
    rra
    ld b, e
    cp a
    adc a
    ld a, a
    rrca
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    ld h, $ff
    daa
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    cp $01
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, a
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
    add b
    ld a, a
    add b
    ld a, a
    rst $30
    di
    db $e3
    rst $30
    rst $20
    rst $30
    rst $20
    rst $30
    rst $30
    rst $20
    rst $30
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $20
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    ld [$0aff], sp
    rst $38
    ld d, [hl]
    rst $38
    ld a, [c]
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld [hl-], a
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    inc hl
    rst $38
    ld hl, $01ff
    rst $38
    ld bc, $21ff
    rst $18
    ld hl, $31df
    rst $08
    ld [hl], c
    adc a
    ld [hl], c
    adc a
    ld [hl], c
    adc a
    ld a, c
    add a
    ld [hl], c
    adc a
    ld a, c
    add a
    ld a, c
    add a
    ld a, c
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, b
    add a
    ld a, h
    add a
    ld a, b
    add a
    ld [hl], h
    adc a
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], b
    adc a
    db $f4
    adc e
    or $89
    or $89
    cp $81
    cp $81
    cp $81
    cp [hl]
    pop bc
    cp a
    ret nz

    xor a
    ret nz

    xor a
    ret nz

    rst $28
    ret nz

    rst $28
    ret nz

    rst $28
    ret nz

    rst $28
    ret nz

    rst $28
    ret nz

    rst $30
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$0a
    ld sp, hl
    or $f9
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    add sp, -$09
    ld h, h
    ei
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld b, b
    rst $38
    nop
    rst $38
    add c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld sp, hl
    cp $f9
    cp $f9
    cp $f9
    cp $fd
    cp $fd
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f1
    cp $f1
    cp $f1
    cp $f9
    cp $f9
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $71
    cp $71
    cp $71
    cp $71
    cp $31
    cp $71
    cp $31
    cp $30
    rst $38
    db $10
    rst $38
    ld bc, $10fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    db $10
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
    add b
    ld a, a
    ld [$00ff], sp
    rst $38
    ld [$88ff], sp
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc h
    ld a, a
    adc h
    ld a, a
    inc c
    rst $38
    adc h
    ld a, a
    ld c, $ff
    inc c
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    inc c
    rst $38
    add b
    ld a, a
    ld c, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    rra
    rst $38
    rrca
    rst $38
    ld bc, $1fff
    ldh [$3f], a
    ret nz

    ld a, $c0
    ld a, $c0
    ccf
    ret nz

    ld a, h
    add b
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ret nc

    nop
    ldh a, [rP1]
    ret nc

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ld a, [c]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $f4
    nop
    db $f4
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [c]
    nop
    cp $00
    ld a, h
    add b
    cp $00
    ld a, [hl]
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, h
    add b
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld a, $c0
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    jp $e3fc


    db $fc
    db $e3
    db $fc
    pop hl
    cp $e1
    cp $e1
    cp $e0
    rst $38
    add sp, -$01
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ld sp, hl
    rst $38
    inc a
    rst $38
    ld l, [hl]
    sbc a
    ldh a, [rIF]
    db $fc
    inc bc
    ld a, [hl]
    add c
    ld a, c
    add b
    ld a, h
    add b
    ld a, h
    add b
    inc a
    ret nz

    inc e
    ldh [$2c], a
    ret nc

    ld [hl], $c8
    dec sp
    call nz, $c03f
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$9f], a
    ldh [$8f], a
    ldh a, [$9f]
    ldh [$cf], a
    ldh a, [$c0]
    nop
    nop
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    nop
    nop
    ld [$0800], sp
    nop
    inc b
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    add sp, $00
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld e, a
    and b
    cp a
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp-$7f
    ld a, [hl]
    ld b, b
    ccf
    db $10
    rrca
    ld [$0207], sp
    ld bc, $0001
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    ldh [rP1], a
    jr nc, jr_097_6b76

jr_097_6b76:
    inc d
    ld [$000e], sp
    add e
    nop
    add c
    nop
    add b
    nop
    rst $28
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
    ld [$0400], sp
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc c
    nop
    inc c
    nop
    ld c, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    rlca
    nop
    rlca
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
    ret nz

    nop
    ret nc

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, [$ff00]
    nop
    rst $38
    nop
    ld a, a
    add b
    cpl
    ret nz

    dec bc
    ldh a, [rSC]
    db $fc
    ld bc, $40fe
    ccf
    jr nz, @+$21

    nop
    rrca
    inc b
    inc bc
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
    ldh [rP1], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0906], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld b, $11
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_097_6c51

    ld b, $1a
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_097_6c62

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_097_6c72

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_097_6c82

jr_097_6c51:
    ld [hl-], a
    inc sp
    inc [hl]
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_097_6c93

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_097_6c62:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
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
    inc [hl]

jr_097_6c72:
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    inc [hl]
    inc [hl]

jr_097_6c82:
    inc [hl]
    inc [hl]
    inc [hl]
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
    inc [hl]
    inc [hl]
    inc [hl]

jr_097_6c93:
    inc [hl]
    inc [hl]
    ld h, d
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
    inc [hl]
    inc [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld d, c
    ld [hl], e
    ld d, c
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    inc [hl]
    inc [hl]
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
    inc [hl]
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
    inc [hl]
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
    cpl
    inc [hl]
    adc e
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


    ld d, c
    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    nop
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
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    inc [hl]
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $04
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
    ld b, $06
    ld b, $06
    nop
    inc b
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    dec b
    nop
    nop
    inc b
    inc b
    ld b, $06
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    ld b, $06
    ld b, $06
    inc b
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
    inc b
    inc b
    inc b
    ld b, $04
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_097_6e26

jr_097_6e26:
    jr nz, jr_097_6e28

jr_097_6e28:
    nop
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
    inc b
    inc b
    ld b, $06
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
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld b, $00
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0101
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    ld [$0e0e], sp
    ld c, $08
    ld [$0008], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    nop
    ld [$ff08], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
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
    db $fc
    inc bc
    db $f4
    dec bc
    ld sp, hl
    ld b, $e8
    rla
    ldh a, [rIF]
    ldh [$1f], a
    ret nc

    cpl
    and b
    ld e, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    ld c, $ff
    add hl, sp
    cp $e4
    ei
    sbc b
    rst $20
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    db $f4
    dec bc
    sbc $21
    add sp, $17
    db $fc
    inc bc
    add sp, $17
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    ret nc

    cpl
    ldh [$1f], a
    ldh [$1f], a
    and b
    ld e, a
    ret nz

    ccf
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld c, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $00
    rst $38
    inc e
    rst $38
    ld [hl], b
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
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld c, $f1
    ld c, e
    or h
    ld l, e
    sub h
    daa
    ret c

    inc bc
    db $fc
    ld bc, $41fe
    cp [hl]
    ld b, b
    cp a
    pop bc
    ld a, $80
    ld a, a
    add b
    ld a, a
    and b
    ld e, a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $fd
    ld [bc], a
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    or $09
    db $fc
    inc bc
    ld a, [$fc05]
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
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    add sp, $17
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    add sp, $17
    and b
    ld e, a
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
    nop
    rst $38
    ld bc, $01ff
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
    ld bc, $00ff
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    inc de
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    cp a
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    adc a
    ld a, a
    adc a
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld e, $ff
    ld c, $ff
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    jr @+$01

    jr c, @+$01

    jr c, @+$01

    jr nc, @+$01

    jr c, @+$01

    jr nc, @+$01

    ld sp, $31fe
    cp $31
    cp $31
    cp $71
    cp $71
    cp $73
    db $fc
    ld [hl], e
    db $fc
    di
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    ld h, e
    db $fc
    inc bc
    db $fc
    rst $20
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp+$47
    ld hl, sp+$67
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    jp $e2fc


    db $fd
    ld [c], a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    rst $38
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
    rrca
    rra
    adc a
    rra
    rrca
    sbc a
    adc a
    sbc a
    sbc a
    adc a
    sub a
    adc a
    rst $00
    adc a
    add a
    rst $08
    rst $00
    rst $08
    rst $08
    rst $00
    rst $08
    rst $00
    rst $20
    rst $00
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    di
    rst $20
    sbc l
    db $e3
    call $c1f3
    rst $38
    jp hl


    rst $38
    rst $28
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
    rst $38
    ei
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    jp nz, Jump_000_02fd

    db $fd
    ld [bc], a
    db $fd
    ld [de], a
    db $ed
    inc de
    db $ec
    inc sp
    call z, $c43b
    dec sp
    call nz, $c738
    ld a, h
    add e
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    xor $01
    db $e3
    nop
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    ld bc, $8100
    nop
    add c
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    inc b
    inc bc
    inc b
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    sbc [hl]
    nop
    ret nc

    jr nz, jr_097_7276

    ret nz

    ld b, c
    add b
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    jp nz, $c201

    ld bc, $02c5
    rst $08
    nop
    rst $18
    nop
    db $e3
    inc e
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38

jr_097_7276:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
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
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    cp $07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, $c0
    ccf
    ret nz

    ld a, [hl]
    add b
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $7f
    add b
    cp $00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
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
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    dec b
    ld a, [$f807]
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$37], a
    ret z

    ccf
    ret nz

    ld b, a
    ld hl, sp+$07
    ld hl, sp+$7f
    add b
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    cp $00
    cp $00
    nop
    nop
    nop
    nop
    ld d, $00
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    nop
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
    ldh [rIE], a
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
    rst $38
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$f000]
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    rra
    ldh [$3f], a
    ret nz

    rst $38
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
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    add sp, $00
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    db $e4
    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
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
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$0d], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_097_74b8:
    db $fd
    rst $38
    ret nz

    rst $38
    nop
    rst $38

jr_097_74be:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_097_74c4:
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    rra
    add b
    rra
    nop
    rra
    nop
    db $fc
    ret nz

    ld a, $00
    ccf
    rrca
    jr nc, jr_097_74df

    jr nc, @+$11

    jr nc, @+$11

    jr nc, jr_097_74e9

    jr nc, @+$0f

jr_097_74df:
    jr nc, jr_097_74c4

    inc a
    db $e3
    inc a
    jp $ef3c


    jr nc, jr_097_74b8

jr_097_74e9:
    jr nc, jr_097_7532

    jr c, jr_097_753c

    jr nc, jr_097_74be

    jr nc, jr_097_7550

    jr nz, jr_097_7572

    jr nz, jr_097_7551

    jr nz, jr_097_7573

    jr nz, jr_097_7551

    jr nz, jr_097_7553

    jr nz, jr_097_7555

    jr nz, jr_097_7567

    jr nz, jr_097_7549

    jr nz, jr_097_754b

    jr nz, jr_097_756d

    jr nz, jr_097_754f

    jr nz, jr_097_7551

    jr nz, jr_097_7553

    jr nz, jr_097_7555

    jr nz, jr_097_7557

    jr nz, jr_097_7559

    jr nz, jr_097_755b

    jr nz, jr_097_755d

    jr nz, jr_097_752f

    ld h, b
    ld [$1e60], sp
    ld h, b
    sbc a
    ld h, b
    rst $10
    jr z, jr_097_7541

    nop
    jr z, jr_097_7524

jr_097_7524:
    jr z, jr_097_7526

jr_097_7526:
    jr z, jr_097_7528

jr_097_7528:
    jr z, jr_097_752a

jr_097_752a:
    jr nz, jr_097_752c

jr_097_752c:
    ccf
    nop
    nop

jr_097_752f:
    nop
    ld hl, sp+$00

jr_097_7532:
    ldh [rP1], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_097_753c:
    rst $38
    nop
    rst $38
    nop
    db $e4

jr_097_7541:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a

jr_097_7549:
    and b
    rrca

jr_097_754b:
    ldh a, [rSB]
    cp $00

jr_097_754f:
    rst $38

jr_097_7550:
    nop

jr_097_7551:
    rst $38
    nop

jr_097_7553:
    rst $38
    nop

jr_097_7555:
    rst $38
    nop

jr_097_7557:
    rst $38
    nop

jr_097_7559:
    rst $38
    nop

jr_097_755b:
    rst $38
    nop

jr_097_755d:
    rst $38
    ld [bc], a
    db $fd
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38

jr_097_7567:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_097_756d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_097_7572:
    rst $38

jr_097_7573:
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
    db $fc
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
    ld a, [$ffff]
    rst $38
    rst $38
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
    inc b
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
    add b
    rst $38
    cp a
    ret nz

    sbc a
    and b
    nop
    add b
    nop
    nop
    nop
    rst $38
    db $fc
    inc bc
    nop
    nop
    ld a, [$c900]
    nop
    ld b, b
    nop
    nop
    nop
    rst $38
    nop
    cp a
    nop
    inc bc
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
    scf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld hl, sp+$07
    rst $38
    nop
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ld b, a
    cp b
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    nop
    rst $38
    ld [bc], a
    db $fd
    cp $01
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
    ldh [rIE], a
    sub b
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    daa
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rra
    rst $38
    add b
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
    cp a
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
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
    sub b
    ld a, a
    jr @+$41

    ld bc, $0000
    add b
    ld bc, $7ffe
    nop
    inc bc
    nop
    rst $38
    nop
    rra
    nop
    ld e, a
    nop
    rra
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    ld bc, $0100
    nop
    cp $01
    ld a, [$fa05]
    dec b
    cp $01
    ld a, [hl]
    ld bc, $053a
    ld a, $01
    ld e, $01
    ld a, [de]
    dec b
    ld a, [hl-]
    dec b
    ld a, d
    dec b
    ld a, [de]
    dec b
    ld c, $01
    ld c, $01
    ld c, $01
    ld b, $01
    ld [bc], a
    dec b
    ld a, [bc]
    dec b
    cp d
    dec b
    ld a, [$fa05]
    dec b
    ld a, [$7a05]
    add l
    cp $01
    ld a, [hl]
    add c
    ld a, [$fa05]
    dec b
    ld a, [$fe05]
    ld bc, $f50a
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
    add c
    nop
    pop bc
    nop
    nop
    nop
    nop
    nop
    jp $ff00


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
    rst $38
    nop
    ld d, l
    xor d
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$e01f]
    ld a, a
    add b
    rst $38
    nop
    db $10
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    db $e4
    rst $38
    di
    rst $38
    ldh [rIE], a
    add sp, -$01
    cp $ff
    db $fc
    rst $38
    cp $ff
    dec sp
    rst $38
    ld bc, $0ffe
    ldh a, [$03]
    db $fc
    ldh [rIE], a
    cp $ff
    ld bc, $87ff
    ld hl, sp+$0c
    rst $38
    add hl, sp
    rst $00
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_097_773b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, jr_097_773b

    nop
    rrca
    jr jr_097_7767

    cp $01
    rst $38
    nop
    ld a, a
    nop
    ccf

jr_097_7767:
    nop
    rra
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    dec b
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld e, a
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
    nop
    rst $38
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
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
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
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    di
    inc c
    nop
    rst $38
    ld bc, $dffe
    jr nz, @+$01

    nop
    rst $38
    nop
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $21ff
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    cpl
    rst $38
    jp $923f


    dec c
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld b, $ff
    cp $ff
    inc e
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
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
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add e
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, b
    rlca
    inc a
    inc bc
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    ld e, a
    nop
    rlca
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
    nop
    nop
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
    ld [hl+], a
    db $dd
    nop
    rst $38
    dec l
    jp nc, Jump_000_00ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    ei
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $ff
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    ccf
    ret nz

    rla
    add sp, $0f

jr_097_7913:
    ldh a, [$03]
    db $fc
    ld bc, $03fe
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    cp $71
    cp $73
    db $fc
    inc sp
    db $fc
    inc de
    db $fc

jr_097_7934:
    inc de

jr_097_7935:
    db $fc
    inc de
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp-$79

jr_097_793d:
    ld a, b

jr_097_793e:
    adc [hl]
    ld [hl], b
    adc $30
    call z, $cc30
    jr nc, jr_097_7913

    jr nc, jr_097_7935

    db $10
    db $ec
    db $10
    db $ec
    db $10
    add sp, $10
    db $ec
    db $10
    db $ec
    db $10
    ldh [rNR23], a
    db $e4

jr_097_7957:
    jr jr_097_793d

    jr @-$0a

jr_097_795b:
    ld [$08f4], sp
    db $f4
    ld [$08f6], sp
    or $08
    and $18
    and $18
    and $18
    rst $00
    jr c, jr_097_7934

    jr c, jr_097_7957

    db $10
    ld hl, sp+$00
    db $e4
    jr jr_097_795b

    jr @-$18

    jr @-$17

    jr jr_097_793e

    inc a
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
    ld bc, $0f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, $29
    sub $2f
    ret nc

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
    rst $38
    rst $38
    cp $fc
    cp $f8
    db $fc
    db $fc
    ld hl, sp-$04
    ldh a, [$ee]
    ldh a, [$f8]
    ldh [$f8], a
    ret nz

    ldh a, [$80]
    ld h, b
    add b
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret z

    nop
    or b
    nop
    rrca
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    ld c, $f1
    rrca
    ldh a, [$09]
    ldh a, [rTAC]
    ld hl, sp+$1f
    rst $38
    ret c

    rlca
    or c
    ld b, b
    ret nz

    ccf
    db $db
    rlca
    set 6, a
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    cp $87
    ld hl, sp+$47
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

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
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    add b
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
    cp $00
    rst $38
    nop
    ei
    nop
    db $fc
    nop
    db $fc
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld a, [$fd00]
    nop
    rst $38
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
    cp $00
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
    rrca
    ldh a, [$80]
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ret c

    daa
    ret nz

    ccf
    nop
    rst $38
    ld a, [$ff05]
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
    add b
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0306
    inc c
    rlca
    jr jr_097_7adf

    jr nc, jr_097_7af1

    ld [hl], b
    ccf
    ldh a, [$7f]
    ld b, b
    cp a
    add b
    rrca
    ld a, [bc]
    rlca
    nop
    rrca
    pop af

jr_097_7adf:
    ld c, $83
    db $fc
    add $f9
    call z, $98f3
    rst $20
    add c
    cp $21
    cp $00
    rst $38
    add b
    rst $38
    add c

jr_097_7af1:
    cp $80
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $0bfe
    db $f4
    rra
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$df], a
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
    ld a, a
    nop
    rst $38
    nop
    cp $00
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    or b
    nop
    stop
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
    rst $18
    nop
    cp l
    nop
    sbc a
    nop
    inc e
    nop
    adc b
    nop
    inc e
    nop
    ld [$1800], sp
    nop
    ld [$0400], sp
    nop
    inc b
    nop
    inc c
    ld bc, $0110
    nop
    ld bc, $0100
    inc b
    ld bc, $0114
    adc [hl]
    ld bc, $01ce
    xor $01
    xor $01
    cp $01
    cp $01
    cp $01
    cp $01
    sbc $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    ld bc, $013e
    ld a, [hl]
    ld bc, $003f
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
    ld hl, sp+$07
    ldh [$1f], a
    or b
    ld c, a
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
    cp [hl]
    ld b, c
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
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    dec bc
    rlca
    rla
    rrca
    rst $28
    rra
    jr nz, jr_097_7be1

    ld b, b
    ccf
    and b
    ld a, a
    add b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$09
    ldh a, [rNR13]
    ldh [rNR51], a
    jp nz, $8c43

    xor a
    db $10
    rst $38
    nop
    ld b, c

jr_097_7be1:
    rst $38
    add d
    rst $38
    dec c
    rst $38
    rra
    cp $7c
    db $fc
    ldh a, [$f8]
    ldh a, [$e0]
    pop hl
    ldh [rNR10], a
    and $98
    db $fc
    ld [hl], b
    ldh a, [rNR11]
    ldh [$03], a
    di
    ld e, [hl]
    rst $38
    ld hl, sp+$7f
    ldh a, [rIE]
    cp a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_097_7c1c:
    cp $01
    db $fd
    ld [bc], a
    cp $01
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    daa
    nop
    ld bc, $0000
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
    nop
    db $dd
    nop
    cp a
    nop
    add hl, bc

Call_097_7c3f:
    nop
    rrca
    nop
    rlca
    nop
    inc c
    inc bc
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
    ld bc, $4180
    add b
    ld b, c
    add b
    ld b, a
    add b
    ld b, b
    add b
    jr nc, jr_097_7c1c

    jr nc, jr_097_7c9e

    jr nc, jr_097_7ca0

    ld sp, $5840
    daa
    nop
    ld a, e
    nop
    ld a, b
    nop
    ld a, h
    inc e
    ld a, b
    inc a
    ld a, d
    dec sp
    ld a, h
    cp e
    ld a, h
    ld a, e
    cp h
    ld hl, sp+$3f
    jr c, @+$01

    rra
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    inc bc

jr_097_7c83:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_097_7c9e:
    rst $38
    nop

jr_097_7ca0:
    ld a, a
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    pop hl
    cp $c3
    db $fc
    adc e
    ldh a, [$94]
    db $e3
    jr z, jr_097_7c83

    ld d, b
    adc a
    pop hl
    ld e, $c7
    jr c, @-$6f

    ld [hl], b
    ld c, $f1
    jr @-$17

    ld de, $43ef
    cp [hl]
    inc b
    db $fc
    db $10
    ld hl, sp+$70
    ldh [$c1], a
    ret nz

    ld [bc], a
    add b
    inc c
    nop
    jr jr_097_7cda

jr_097_7cda:
    jr nz, jr_097_7cdc

jr_097_7cdc:
    ret nz

    ld bc, $0387
    dec b
    ld c, $3f
    jr jr_097_7d14

    ld [hl], b
    rst $18
    ldh [$3f], a
    ret nz

    dec d
    ld [$ef10], a
    nop
    rst $38
    ld a, [c]
    dec c
    ldh [$1f], a
    ldh [$1f], a
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [$02ff], sp
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [c], a
    dec e
    and $19
    or $09
    rst $30
    ld [$0877], sp
    ld [hl], a
    ld [$007f], sp

jr_097_7d14:
    ccf
    nop
    ccf
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
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
    ccf
    rst $38
    ret nz

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_097_7d4a

jr_097_7d4a:
    inc b
    nop
    inc e
    nop
    inc d
    nop
    inc sp
    inc c
    ld e, $81
    ld b, b
    rst $38
    jr nc, jr_097_7da7

    rra
    ld b, d
    ld [hl], $4b
    db $76
    dec bc
    or $0b
    di
    rrca
    or e
    ld c, a
    inc bc
    rst $38
    nop
    rst $38
    daa

jr_097_7d69:
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $02fe
    db $fc
    inc e
    ldh [$60], a
    sub b
    db $e3
    nop
    rst $00
    nop
    adc a
    nop
    rra
    nop
    ld a, $00
    ld a, d
    nop
    di

jr_097_7da7:
    nop
    jp $c700


    nop
    adc $01
    ld a, [hl]
    ld [bc], a
    adc h
    ld a, h
    db $10
    ld hl, sp+$10
    ldh [rP1], a
    ret nz

    inc bc
    add b
    inc b
    nop
    jr jr_097_7dbe

jr_097_7dbe:
    jr nc, jr_097_7dc0

jr_097_7dc0:
    ld b, b
    nop
    add c
    nop
    inc b
    inc bc
    ld a, [bc]
    inc b
    inc h
    jr jr_097_7d69

    ld h, b
    cp a
    ret nz

    rst $38
    nop
    stop
    stop
    ld a, [hl-]
    nop
    ccf
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
    rst $30
    ld [$06f9], sp
    pop af
    ld c, $e8
    rla
    ldh a, [rIF]
    jp nz, Jump_000_003f

    rst $38
    adc a
    ld a, a
    inc bc
    rst $38
    dec bc
    rst $38
    sbc e
    rst $38
    di
    rst $38
    ld l, l
    rst $38
    db $e4
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
    add b
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    add c
    ld a, a
    pop bc
    ccf
    pop af
    rrca
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    add b
    ld a, a
    rst $38
    rst $38
    inc bc
    nop
    rrca
    nop
    dec a
    nop
    rra
    nop
    rra
    nop
    db $e4
    dec de
    ld a, c
    ld b, $3d
    nop
    rra
    nop
    dec e
    nop
    inc sp
    dec c
    dec a
    ld b, $32
    rrca
    inc sp
    ld c, $7f
    ld b, $e6
    rra

jr_097_7e52:
    rst $08
    ccf
    ccf
    rst $38
    ccf
    rst $38
    xor e

jr_097_7e59:
    ld a, a
    adc l
    ld a, [hl]
    dec bc
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    sbc a
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
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    nop
    rst $38
    nop
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
    jr nc, jr_097_7e59

jr_097_7e8a:
    ld e, $e1
    rst $38
    nop
    rst $38
    nop
    dec bc
    add h
    inc de
    inc c
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ei
    inc b

jr_097_7ea0:
    srl a
    and a
    ld a, [hl]
    inc c
    db $fc
    jr nc, jr_097_7ea0

    jr nc, jr_097_7e8a

    ret nz

    ret nz

    ld bc, $0780
    nop
    inc c
    nop
    jr c, jr_097_7eb4

jr_097_7eb4:
    ld h, b
    nop
    add b
    nop
    ld [bc], a
    ld bc, $0702
    inc de
    inc c
    dec h
    jr jr_097_7e52

    ld h, b
    ld b, e
    add b
    inc bc
    nop
    inc bc
    nop
    rrca
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
    dec b
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $80fe
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rst $00
    nop
    ld b, a
    nop
    add a
    nop
    rst $38
    nop
    rrca
    ldh a, [$5f]
    and b
    ld a, a
    add b
    rst $38
    add b
    adc l
    ld a, [c]
    adc e
    db $f4
    ld b, a
    ld hl, sp+$4a
    push af
    ld h, [hl]
    ld sp, hl
    ld h, a
    ld hl, sp+$62
    db $fd
    pop bc
    cp $ae
    rst $10
    call nz, $f8ff
    rst $38
    jr nc, jr_097_7fcb

    and b
    ld a, a
    dec [hl]
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
    cpl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
    or a
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    nop
    ld c, $0f
    db $10
    inc bc
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_097_7fa8

    ld a, [de]
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_097_7fba

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_097_7fa1

jr_097_7fa1:
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    inc bc
    dec l

jr_097_7fa8:
    ld l, $2f
    jr nc, jr_097_7fdd

    ld [hl-], a
    inc sp
    inc bc
    inc [hl]
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_097_7fba

    add hl, sp
    ld a, [hl-]
    dec sp

jr_097_7fba:
    inc a
    dec a
    ld a, $3f
    inc bc
    ld b, b
    ld b, c
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    inc bc
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_097_7fcb:
    ld c, d
    ld c, e
    ld c, h
    inc bc
    inc bc
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    inc bc
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_097_7fdd:
    ld e, c
    inc bc
    ld e, d
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    inc bc
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    nop
    ld l, c
    ld l, d
    nop
    ld l, e
    ld l, h
    inc bc
    ld l, l
    ld l, [hl]
    ld h, d
    ld l, a
    inc bc
    ld e, d
    ld [hl], b
    ld [hl], c
    ld [hl], d
