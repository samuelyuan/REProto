SECTION "ROM Bank $065", ROMX[$4000], BANK[$65]

    db $18, $8b
    add hl, de
    ld h, $18
    and a
    ld [bc], a
    adc a
    ld b, $97
    nop
    add e
    dec h
    db $ed
    inc [hl]
    rst $30
    db $10
    or c
    db $10
    ei
    ld e, b
    sbc a
    db $10
    rst $30
    ret nc

jr_065_4019:
    di
    reti


    ld a, [$ae01]
    jr nz, jr_065_406f

    jr @+$1a

    jr jr_065_403c

    jr nz, jr_065_4046

    xor h
    xor h
    ld d, d
    ld d, e
    jr z, jr_065_4095

    call c, Call_065_7fbf
    add b
    rst $38
    add b
    rst $38
    add b
    cp $81
    cp $81
    cp l
    jp $c3bd


jr_065_403c:
    db $fd
    jp $c7f9


    ret


    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38

jr_065_4046:
    dec e
    rst $38
    dec l
    rst $18
    pop bc
    rst $38
    jp hl


    rst $38
    add sp, -$01
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    db $76
    rst $38
    scf
    rst $38
    rst $38
    ld a, a
    cp l
    ld a, a
    cp e
    ld a, l
    sub a
    ld a, c
    ld d, b
    cp b
    ld d, $fe
    dec [hl]
    push bc
    pop bc
    jr z, jr_065_4019

    ld h, e
    ld b, c
    ld [hl], a
    add c
    add a
    ld c, a

jr_065_406f:
    ld c, a
    ld b, [hl]
    ld c, [hl]
    ld b, $0e
    ld c, $0e
    inc a
    inc a
    inc [hl]
    inc [hl]
    ld c, h
    ld l, h
    jr z, jr_065_40d6

    ld a, h
    add h
    adc b
    ld [hl], b
    nop
    xor b
    add b
    jr c, jr_065_4098

    cp c
    ret nc

    ld e, l
    inc d
    sbc e
    ld [hl], $38
    db $10
    ld e, $23
    cpl
    nop
    add hl, bc
    ld h, b

jr_065_4095:
    ld h, c
    ld b, b
    ld d, e

jr_065_4098:
    db $10
    inc de
    ld h, b
    ld h, d
    ld [bc], a
    add l
    rlca
    nop
    ret nc

    rrca
    adc b
    rra
    ld h, c
    rra
    inc bc
    ccf
    ei
    scf
    and a
    ld a, a
    sub a
    ld l, a
    rst $30

jr_065_40af:
    rst $08
    ld b, a
    cp b
    ld c, $f1
    ld e, $e1
    ld a, $c0
    inc a
    jp nz, $817d

    reti


    dec h
    or a
    rrca
    db $db
    rlca
    ret


    rlca
    ld a, [bc]
    rst $00
    nop
    rst $00
    inc b
    jp $8166


    ld h, [hl]
    add c
    cpl
    ret nz

    rra
    and b
    rra
    ld h, b
    ld e, $e1

jr_065_40d6:
    adc $e1
    add [hl]
    cp c
    sub b
    rst $28
    adc b
    or a
    nop
    rst $28
    cp [hl]
    ld b, b
    ld a, l
    ret nz

    ld c, a
    and b
    ld a, a
    add b
    rst $10
    ld h, b
    rst $20
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    jr nc, jr_065_40af

    inc [hl]
    cp e
    jr nz, jr_065_4174

    nop
    ld a, [$c100]
    ld [$f0da], sp
    ld sp, hl
    ld hl, $41bb
    sbc l
    inc c
    rst $38
    sub d
    ld b, a
    nop
    scf
    inc bc
    inc e
    dec bc
    sbc h
    ld bc, $01f6
    add $10
    db $10
    ret nz

    and b
    call nz, Call_065_60ac
    jr jr_065_4153

    ld c, [hl]
    ld c, $7e
    inc c
    ld a, h
    add h
    db $f4
    inc b
    ld [hl], h
    add b
    ret nz

    jr nc, jr_065_40d6

    ld d, e
    db $d3
    ld b, d
    jp $e7e4


    db $fc
    rst $38
    cp b
    ld a, a
    pop af
    ld c, $7f
    add b
    rst $08
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$0d
    db $fc
    db $e3
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    ld sp, hl
    cp $f9
    cp $e9
    cp $f9
    cp $fc
    rst $38
    or $fd
    or $fd
    db $fd

jr_065_4153:
    cp $95
    cp $b5
    cp $65
    cp $e6
    rst $38
    rst $10
    cp $d2
    rst $38
    ld l, h
    sub e
    ld a, c
    dec b
    jp hl


    ld de, $629a
    ret nc

    db $dd
    push de
    sbc $c5
    add $86
    add l
    ld [bc], a
    dec c
    ld e, $10

jr_065_4174:
    ld de, $041f
    inc b
    ld bc, $0805
    ld [$1212], sp
    dec c
    dec e
    db $10
    sbc $15
    cp e
    add hl, bc
    and a
    dec bc
    sub a
    db $db
    rst $00
    ld l, d
    di
    push hl
    rst $28
    ld sp, hl
    rst $38
    ld [hl], h
    adc a
    pop hl
    rra
    pop af
    rrca
    ld hl, sp+$04
    ld a, $42
    ld a, h
    nop
    ld sp, hl
    rlca
    db $fc
    inc bc
    ld a, [c]
    rst $38
    db $fd
    cp $f1
    cp $e1
    cp $c3
    db $fc
    adc $f0
    cp $c0
    sbc h
    ldh [$e3], a
    db $e4
    ld h, a
    ld l, b
    ld b, [hl]
    ld l, c
    add $d9
    add [hl]
    ret


    ld c, $c1
    dec c
    and d
    dec b
    jp z, $fcfb

    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, a
    db $fc
    ld h, a
    db $fc
    ccf
    db $f4
    cp a
    ld a, h
    cp a
    ld a, h
    sbc $3c
    ld e, l
    ld a, $1d
    ld a, $bd
    ld e, $ee
    rra
    rst $28
    rra
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ld [c], a
    rra
    ld hl, $e31f
    rra
    di
    rrca
    ldh a, [rIF]
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01fe
    pop af
    nop
    rst $38

jr_065_41f9:
    nop
    ld hl, $5fdf
    pop hl
    cp [hl]
    pop bc
    ld e, a
    and b
    pop de
    ld a, $5d
    inc sp
    rla
    add hl, sp
    ld a, $19
    dec a
    ld a, [de]
    ld l, a
    jr jr_065_41f9

    dec e
    ld c, b
    ld d, c
    ld a, d
    ld h, e
    ld [$1a10], sp
    dec b
    ld a, a
    ld h, b
    ld h, e
    ld a, h
    ld c, a
    ld a, a
    ld c, [hl]
    ld a, [hl]
    ld e, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $30
    rst $30
    scf
    rst $08

jr_065_422a:
    db $e3

jr_065_422b:
    rra
    jp $f53f


    rrca
    rst $38
    inc b
    push af
    ld c, $f5
    ld c, $f4
    rrca
    or $0f
    sub $2f
    rst $10
    cpl
    rst $38
    rlca
    rst $18
    daa
    rst $28
    rla
    rst $08
    scf
    db $eb
    rla
    ret z

    scf
    rst $28
    db $10
    db $fd
    ld [bc], a
    ld b, b
    rst $38
    ld a, [$f9fd]
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, c
    rst $38
    reti


    ld a, a
    jp c, Jump_000_1a7d

    db $fd
    ld bc, $11f6
    or $43
    xor e
    ret c

    jr jr_065_422a

    ld sp, $6383
    ld [de], a
    di
    inc h
    and a
    nop
    inc bc
    ret z

    bit 0, b
    ld b, e
    call z, Call_065_50cd
    ld d, e
    ld b, d
    ld b, d
    ld b, b
    ld b, b
    add b
    ldh [rSB], a
    pop bc
    ld hl, $23e1
    and e
    daa
    and a
    ld sp, $7031
    or $6f
    add sp, -$1f
    xor $f6
    add hl, bc
    cp $11
    adc $31
    ei
    jr nz, jr_065_422b

    ld h, c
    di
    ld b, b
    inc hl
    ret nz

    and $81
    call z, $c403
    inc bc
    adc l
    inc bc
    dec c
    inc bc
    dec hl
    rlca
    dec de
    rlca
    ccf
    rlca
    ld a, a
    rlca

jr_065_42b0:
    di
    rrca
    rst $30
    rrca
    push af
    rrca
    ld a, l
    rrca
    ld l, [hl]
    rra
    ld a, [hl]
    rra
    ld e, a
    ld a, $ff
    ld a, $63
    sbc a
    ld h, e
    sbc a
    inc hl
    rst $18
    pop af
    rrca
    ld [hl], c
    adc a
    pop af
    rrca
    ld [hl], c
    rrca
    pop de
    rrca
    jp hl


    rlca
    sbc c
    ld h, a
    add b
    ld a, a
    nop
    rst $38
    ld a, [$85ff]
    ei
    add l
    ei
    add hl, hl
    rst $10
    ld a, b
    add h
    jr nc, jr_065_42b0

    jr nz, jr_065_4342

    ld b, b

jr_065_42e7:
    ld hl, sp+$40
    ld hl, sp+$60
    ld e, b
    ld d, b
    add sp, $18
    rst $20
    or e
    ld b, b
    inc sp
    ret nz

Call_065_42f4:
    ld [hl], e
    add b
    cp e
    ret nz

    sbc a
    ldh [$df], a
    ldh [rIE], a
    ldh [$ee], a
    pop af
    jr jr_065_42e7

    inc d
    ld l, h
    nop
    ld hl, sp-$4c
    ld c, h
    db $fc
    nop
    ld [hl], l
    adc c
    ld c, h
    or d
    add $38
    ld a, h
    add e
    ld e, h
    and d
    ld c, b
    ld [hl], $44
    cp e
    db $f4
    dec bc
    cp $01
    ldh [$9f], a
    ld a, [hl]
    ld a, a
    pop bc
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    ld bc, $0301
    inc bc
    ld [hl], c
    xor $bf
    ld b, b
    inc bc
    db $fc
    add hl, sp
    or $79
    cp $fb
    db $fc
    ldh a, [rIE]
    xor $ff
    rst $08
    rst $38

jr_065_4342:
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    dec c
    rst $38
    xor e
    ld e, l
    cp h
    ld a, a
    ld a, $ff
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc $ff
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_065_435e:
    rst $38
    rst $38

jr_065_4360:
    jp c, $f93b

    ld b, $7f
    add b
    ld c, a
    jr nc, jr_065_437a

    ld [$f101], a
    ld bc, $0061
    ldh a, [$80]
    rst $08
    add c
    cp c
    add hl, bc
    rst $10
    ld [bc], a
    ld e, a
    nop
    ld e, d

jr_065_437a:
    nop
    sbc b
    nop
    adc b
    nop
    ld e, $c2
    jp nc, $f3c3

    sub c
    xor a
    cp h
    jp Jump_000_037c


    ld a, c
    add [hl]
    ld hl, sp+$07
    cp $01
    cp $01
    db $fc
    ld [bc], a
    db $fd
    inc bc
    ld a, h
    add b
    inc a
    ret nz

    jr c, jr_065_4360

    jr c, jr_065_435e

    ld a, b
    add h
    ld a, h
    add h
    ld a, l
    add l
    db $f4
    ld c, $f0
    ld b, $a4
    ld e, d
    ldh a, [rNR32]
    db $e4
    inc l
    add d
    ld b, d
    and b
    sbc l
    ret nz

    xor c
    ld b, b
    inc [hl]
    db $10
    db $f4
    nop
    call c, $ee20
    nop
    cp h
    nop
    sbc $c3
    inc a
    jp $c33c


    inc a
    add a
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    inc bc
    db $fc
    rlca
    ld hl, sp+$01
    cp $44
    cp e
    inc b
    ei
    rla
    ld hl, sp+$0f
    ldh a, [$09]
    or $39
    add $7a
    add l
    ld a, h
    rst $38
    ld a, [$72ff]
    rst $38
    ld a, [hl]
    rst $38
    ld d, d
    rst $38
    ld d, $ff
    ld [hl], $ff
    ld a, [hl]
    rst $38
    ld a, [hl+]
    push de
    ld a, [hl+]
    push de
    dec sp
    call nz, Call_065_4976
    ld l, a
    ret nc

    ld a, a
    ret nz

    ld e, a
    ldh [$1f], a

Jump_065_43ff:
    ldh [$1f], a
    ldh [$6d], a
    ld [hl], d
    ld l, a
    ld [hl], b
    ld h, a
    ld a, b
    ld h, a
    ld a, b
    ld h, e
    ld a, h
    ld a, a
    ld h, b
    ld l, d
    ld [hl], l
    ld [$6af5], a
    ld [hl], l
    ld l, c
    db $76
    ld a, c
    and $19
    and $79
    add [hl]
    ld a, l
    add d
    inc e
    db $e3
    inc l
    di
    inc [hl]
    ei
    inc [hl]
    ei
    jp nc, $b33d

    ld a, h
    inc sp
    db $fc
    inc bc
    db $fc
    ld b, a
    ld hl, sp+$07
    ld hl, sp+$37

Call_065_4433:
    ret z

    rla
    add sp, -$21
    ldh [$df], a
    ldh [$cf], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$e3]
    db $fc
    set 6, h
    rst $18
    ldh [$95], a
    ld [$fec1], a
    jp $83fc


    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp-$39
    ld hl, sp-$1e
    db $fd
    ld h, b
    rst $28
    pop af
    rst $38
    jp hl


    push hl
    jp hl


    rst $30
    pop hl
    rst $38
    ld h, b
    db $fc
    ld b, b
    call nc, $36a2
    and d
    ld l, [hl]
    add c
    ld h, l
    ld [de], a
    ld d, l
    inc [hl]
    ld [hl], e
    inc [hl]
    cp e
    ld [hl], b
    cp $70
    db $fc
    pop hl
    db $fd
    ld b, d
    ld e, [hl]
    ld b, e
    ld a, e
    inc de
    inc sp
    ld d, [hl]
    ld a, [hl]
    nop
    jr c, jr_065_44c1

    ei
    ld b, b
    ld b, a
    ret nz

    rst $10
    ret nz

    sbc $80
    cp $91
    xor a
    sbc c
    push hl
    sbc e
    rst $20
    cp e
    rst $00
    scf
    rst $08
    rla
    rst $28
    rlca
    rst $28
    daa
    rst $28
    ld [hl], $ef
    inc c
    rst $38
    dec c
    rst $38
    jr nc, jr_065_44dc

    ld l, b
    ld h, e
    ld d, [hl]
    ld e, a
    ld b, [hl]
    ld d, [hl]
    push bc
    push de
    adc [hl]
    sbc [hl]
    ld l, $3e
    adc [hl]
    cp [hl]
    ld l, $1e
    add sp, -$22
    add hl, hl
    dec c
    ld e, $7e
    sub c
    pop de
    and c
    pop hl
    or c
    or c
    ldh [$e0], a
    rst $28

jr_065_44c1:
    ld e, $ef
    ld e, $e7
    ld e, $ce
    ccf
    rst $08
    ld a, $df
    ld a, $de
    ccf
    rst $08
    ccf
    rst $18
    cpl
    xor $1f
    ld a, [$f91f]
    rra
    ld a, [$fb1d]
    inc e

jr_065_44dc:
    inc a
    rst $18
    inc e
    rst $38
    inc e

jr_065_44e1:
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    rra
    cp $be
    ld a, a
    ld e, [hl]
    rst $38
    ld e, [hl]

jr_065_44ed:
    rst $38
    sbc a
    ld a, a
    rst $10
    ccf
    rst $10
    ccf
    rst $20
    rra
    ld hl, sp+$07
    jp $cf3c


    jr c, @-$73

    ld a, h
    srl h
    ld c, a
    cp h
    ld c, l
    cp [hl]
    ld c, l
    cp [hl]
    db $ed
    ld e, $e1
    ld e, $d1
    ld l, $eb
    inc d
    ldh a, [rIF]
    jr nc, jr_065_44e1

    db $10
    rst $28
    ld b, b
    cp a
    nop
    rst $38
    inc h
    rst $18
    and h
    ld e, a
    and h
    ld e, a
    pop hl
    ld e, $10
    rst $28
    ld a, $c5
    jr c, jr_065_44ed

    ld [hl], $c9
    jr nc, @-$2f

    ld a, b
    add a
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIE]
    ret nc

    rst $38
    call nc, $dcff
    rst $38
    ret c

    rst $38
    ret c

    rst $38
    ret nc

    rst $38
    ret c

    rst $38
    ret c

    daa
    ret z

    scf
    call z, $de33
    ld hl, $3cc3
    call z, $0f3f
    rst $38
    ld b, b
    db $f4
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    inc sp
    db $fc
    db $e3
    inc e
    cp e
    inc e
    dec hl
    inc e
    rlca
    inc a
    ret


    ld [hl], $0c
    inc l
    sbc [hl]
    cp [hl]
    inc e
    ld e, h
    adc b
    adc b
    jr z, @+$2a

    ld d, b
    ld d, b
    dec b
    db $fd
    ld d, b
    xor c
    ld [hl], d
    adc e
    ld l, h
    sub h
    jr nc, jr_065_45d2

    sub b
    or a
    sbc h
    sbc [hl]
    inc l
    inc l
    db $fc
    db $fc
    jr nc, jr_065_45b1

    ld hl, $8420
    add a
    add e
    add h
    inc bc
    inc b
    ld [bc], a
    dec c
    and [hl]
    or c
    rlca
    add hl, sp
    rlca
    ld a, c
    ld b, [hl]
    jr c, @+$10

    ld [hl], c
    dec c
    db $d3
    rla
    sbc e
    dec h
    ld hl, $c4c0
    jr nz, @+$2a

    dec h
    dec l
    jr nz, @+$2a

    nop
    ld [$7961], sp
    inc c
    dec d
    rrca
    db $10
    ld c, a
    ld [hl], b
    rrca
    ld [hl], b
    rst $08
    ret nz

    rst $28

jr_065_45b1:
    ldh a, [$8f]
    sub b
    add a
    sbc b
    sbc a
    add b
    cp a
    and b
    rra
    nop
    rra
    jr nz, @+$41

    nop
    cp $01
    di
    inc c
    jp $eb3c


    inc e
    call $ec3e
    rra
    db $ec
    rra
    call z, $de3f
    ccf

jr_065_45d2:
    sbc $3f
    db $fc
    rra
    db $fc
    rra
    ld hl, sp+$1f
    ld a, b
    sbc a
    ld [hl], b
    sbc a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$9f], a
    ldh [$df], a
    and b
    rst $18
    ldh [$df], a
    ret nz

    rst $38
    ldh [$df], a
    ldh [$df], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    ccf
    jp nz, $8e3d

    ld [hl], c
    cp $87
    cp $c7
    cp $e7
    cp $e7
    cp $87
    cp $ff
    cp $ff
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
    rst $18

jr_065_461b:
    inc bc
    adc a
    ld [bc], a
    rst $18
    ld c, $9e
    ld h, c
    ld c, $f1
    inc c
    di
    inc c
    di
    inc e
    db $e3
    add hl, bc
    rst $30
    ld de, $00ef
    rst $38
    nop
    rst $38
    cp $ff
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld sp, $24ff
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    nop
    ld a, [hl]
    add c
    and h
    db $db
    jr nc, jr_065_4687

    jr @+$41

    jr jr_065_4693

    add hl, bc
    ld a, [hl+]
    sub a
    db $f4
    inc d
    rst $30
    sub [hl]
    ld sp, hl
    sbc a
    ldh a, [rVBK]
    or b
    rrca
    ldh a, [rP1]
    ld c, a
    jr nc, jr_065_46e3

    jr nc, jr_065_46e6

    ld [hl-], a
    ld a, l
    or b
    rst $30
    ld h, $e1
    inc e
    sbc d
    jr @-$1f

    jr nz, jr_065_461b

    ret nc

    ld d, h
    ld hl, sp+$7e
    ld [hl-], a
    or [hl]
    ld h, d
    ld a, [c]
    inc h
    or h
    ld h, h
    db $f4
    ret z

    ld e, b
    inc b
    add h
    and [hl]
    cp [hl]
    ld h, b

jr_065_4687:
    ld h, b
    ld [hl], b
    ld [hl], b
    nop
    nop
    jr @+$1a

    ld e, $3f
    call c, $f1df

jr_065_4693:
    di
    ld sp, hl
    rst $38
    db $ec
    di
    db $dd
    db $d3
    pop bc
    call $cdc0
    jp hl


    xor $ea
    db $ed
    pop bc
    rst $08
    call $fbd1
    rlca
    ld sp, hl
    ld bc, $0df5
    pop af
    ld bc, $19e9
    rst $28
    ldh a, [$3b]
    ldh [$db], a
    ldh [rNR31], a
    ldh [rNR31], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, [hl]
    add c
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
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
    inc de
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
    rst $38
    nop
    rst $38

jr_065_46e3:
    nop
    rst $38
    ld h, b

jr_065_46e6:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    di
    ccf
    db $fd
    ccf
    db $dd
    ccf
    adc $3f
    rst $18
    ccf
    db $db
    ccf
    adc $7f
    add e
    ld a, a
    and b
    ld a, a
    or l
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    call nz, $c27f
    ld a, a
    ldh [$7f], a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    inc e
    rst $38
    ret nz

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
    rst $38

Jump_065_4738:
    rst $18
    rst $38
    add c
    rst $38
    add b
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    push hl
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    inc de
    rst $38
    nop
    rst $38
    jr nc, @+$01

    add hl, sp
    rst $38
    ld d, l
    ei
    and c
    rst $38
    and l
    rst $38
    jr nc, @+$01

    cp b
    ld a, a
    db $e4
    rra
    ldh a, [rIF]
    or $09
    adc l
    di
    dec [hl]
    ei
    ld [hl], e
    rst $38
    di
    rst $38
    db $e3
    rst $38
    ld b, e
    rst $30
    ld [bc], a
    or a
    pop hl
    rst $28
    and b
    xor a
    jr nz, jr_065_47a7

    ld h, b
    ld a, a
    ld c, e
    ld [hl], a
    dec hl
    inc sp
    ld h, h
    ld a, h
    and $ff
    inc b
    rra
    call z, Call_065_4aff
    ld l, e
    add d
    db $eb
    add hl, hl
    jp hl


    cp e
    dec sp
    ld a, [hl]
    rst $38
    ld [hl], d
    ld [hl], e
    db $f4
    push af
    inc a
    ccf
    jr c, jr_065_47d7

    ld b, c
    ld a, $ff
    nop
    cp a
    ld b, b
    rrca
    ldh a, [rNR22]
    add sp, -$61
    ldh [$8f], a
    ldh a, [$1f]

jr_065_47a7:
    ld h, b
    rrca
    ldh a, [rIF]
    ld [hl], b
    rrca
    ld [hl], b
    ld c, a
    ld d, b
    ld l, a
    sbc a
    ld c, a
    cp a
    ld c, a
    cp a
    ld e, a
    cp a
    rrca
    rst $38
    adc a
    ld a, a
    rrca
    rst $38
    ccf
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    ld a, l
    add d
    ld a, l
    add d
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra

jr_065_47d7:
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ld sp, hl
    rst $38
    push af
    rst $38
    db $eb
    rst $38
    rst $18
    rst $38
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $7f
    cp $07
    cp $8f
    cp $3f
    cp $ff
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld bc, $80ff
    add a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$faff]
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    db $ec
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    sub b
    rst $28
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    cp $ff
    inc a
    rst $38
    inc e
    rst $38
    cp $ff
    rst $38
    cp $fd
    cp $fd
    cp $fd
    cp $79
    cp $fd
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld a, l
    ld a, a
    ld a, l
    rst $38
    ld sp, $31ff
    rst $38
    ld sp, $70ff
    rst $38
    ld [hl], c
    cp $74
    ld a, e
    push hl
    ld a, [$e31c]
    ld h, b
    sbc a
    ld a, h
    add e
    db $fc
    ld bc, $837e
    rst $38
    inc bc
    rst $28
    inc de
    db $eb
    rla
    rst $38
    inc bc
    rst $28
    inc de
    rst $08
    inc sp
    rst $38
    inc bc
    ei
    rlca
    rst $28
    inc de
    rst $38
    inc bc
    rst $38
    inc bc
    rst $28
    inc de
    rst $38
    inc bc
    swap a
    rst $08
    inc sp
    rst $08
    inc sp
    rst $08
    inc sp
    swap a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rra
    rst $20
    ld a, a
    add a
    rst $38
    rlca
    ccf
    rst $00
    sbc a
    ld h, a
    sbc a
    ld h, a
    cp a
    ld b, a
    sbc [hl]
    ld h, a
    ld e, c
    and $3f
    ret nz

    cp e
    ld b, h
    ld a, [$0005]
    rst $38
    inc c
    di
    add hl, bc
    rst $30
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    ld [$f0ff], sp
    rra
    ld hl, sp+$1f
    db $fc
    sbc a
    db $fc
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $28
    sbc a
    rst $28
    sbc a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    jp nz, $c23f

    ccf
    jp nz, $f87f

    ld a, a
    ret c

    ld a, a
    ret c

    ld a, a
    ret z

    ld a, a
    ret z

    ld a, a
    ret z

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add b
    rst $38
    pop bc
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
    ccf
    rst $38
    ld a, $ff
    ld e, $ff
    ld e, $ff
    ld c, $ff
    rrca
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld a, $ff
    sbc [hl]
    rst $38
    cp $ff
    ld l, l
    rst $38
    ld l, h
    rst $38
    push hl
    rst $38
    add l
    rst $38
    ld a, [$f8ff]
    rst $38
    ret z

    scf
    call z, $ce33
    ld sp, $39c6
    adc [hl]
    ld [hl], c
    db $fd
    inc bc
    dec [hl]
    ei
    push af
    ei
    push af
    ei
    ldh a, [rIE]
    sub $f9
    sub $f9
    ei
    db $f4
    di
    db $fc
    cp c
    cp $a0
    ld a, a
    ld h, [hl]
    cp c
    sbc h
    ld h, e
    db $ec
    di

Call_065_4976:
    xor $f3
    ld a, [$eaf7]
    rst $30
    xor d
    rst $30
    or $ef
    add sp, -$01
    add sp, -$01
    ld l, l
    cp $5d
    cp $b8
    ld a, a
    ret c

    ld a, a
    sbc h
    ld a, e
    and h
    ld a, e
    db $ec
    inc sp
    ld c, c
    or a
    ld h, c
    sbc a
    db $e3
    rra
    ld l, d
    sbc a
    ld l, [hl]
    sbc a
    ld a, [hl]
    sbc a
    ld h, [hl]
    sbc a
    db $76
    adc a
    ld c, l
    cp [hl]
    ld a, l
    cp [hl]
    rst $38
    cp h
    cp e
    db $fc
    cp a
    ld hl, sp-$49
    ld hl, sp-$4a
    ld sp, hl
    and b
    rst $38
    add b
    rst $38
    sbc e
    rst $38
    cp e
    rst $38
    ei
    rst $38
    cp e
    rst $38
    ei
    rst $38
    cp [hl]
    rst $38
    rst $08
    cp $c2
    db $fd
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    dec e
    db $e3
    jp hl


    rla
    rst $20
    rra
    add a
    ld a, a
    rrca
    rst $30
    adc a
    rst $30
    rst $08
    rst $30
    rst $30
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    daa
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    ld [$8a15], a
    ld [hl], l
    db $10
    rst $28
    ld d, [hl]
    rst $28
    inc e
    rst $28
    rla
    db $ec
    rla
    db $e4
    ld d, e
    db $e4
    inc de
    db $ec
    ld [hl], $c9
    ld l, $d1
    ld h, $d8
    inc h
    ret c

    ld h, $da
    ld a, $c3
    ld a, [hl+]
    rst $10
    ld [hl+], a
    db $db
    ld h, [hl]
    sbc a
    ld b, [hl]
    cp a
    ld b, h
    cp l
    ld b, h
    cp h
    push hl
    dec e
    adc $3e
    add $3e
    adc $3f
    ret z

    inc a
    ret


jr_065_4a27:
    ccf
    ret z

    ld a, $fc
    ld c, $2c
    rst $18
    ld l, h
    sbc a
    ld l, h
    sbc a
    dec hl
    rst $18
    ccf
    rst $08
    ld [hl], $cf
    ccf
    rst $00
    db $76
    adc a
    ld a, [hl]
    adc a
    ld c, h
    cp a
    ld e, [hl]
    xor l
    adc [hl]
    ld a, l
    sbc b
    ld a, a
    jr c, jr_065_4a27

    ld [hl], e
    rst $18
    ld d, e
    rst $38
    rla
    rst $38
    daa
    rst $38
    rla
    rst $28
    rra
    rst $20
    dec de
    rst $20
    sub h
    db $eb
    xor a
    ret nc

    add b
    rst $38
    add a
    rst $38
    and [hl]
    rst $38
    cp a
    cp $fd
    cp $fc
    rst $38
    ld a, h
    rst $38
    ld a, c
    rst $38
    ld e, e
    db $fd
    ld b, e
    db $fd
    ret nz

    cp $b4
    jp z, $d826

    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, b
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    db $fd
    rlca
    ld a, c
    add a
    ld sp, hl
    rlca
    add hl, sp
    rst $00
    add hl, sp
    rst $00
    cp d
    ld b, l
    cp l
    ld b, a
    scf
    call Call_065_4dbb
    ei
    rra
    reti


    ccf
    ld sp, hl
    ccf
    cp l
    ld a, e
    ld a, [$7f7d]
    ld sp, hl
    ld a, e
    db $fd
    ld a, e
    db $fd
    ld sp, hl
    ld a, a
    db $fd
    ld a, a
    ld [hl], e
    push af
    ld a, e
    db $fd
    ld a, c
    rst $38
    ld l, c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, e
    rst $38
    ld l, c
    sbc e
    ld [c], a
    sub l
    and b
    rst $10
    xor b
    call $97f0
    ld hl, sp-$61
    and b
    rst $00
    and b
    push bc
    ret z

    rst $28
    ld [$f8cf], a
    rst $18
    ld a, b
    rst $18
    ld [hl], b
    rst $10
    ld h, b
    rst $18
    ld h, b
    sbc $62
    sbc $32
    sbc $30
    adc $ed
    di
    db $f4
    ld a, [$f3f4]
    ld a, b
    rst $38
    ld h, b
    rst $20
    ld h, b
    rst $20
    rst $00
    rst $18
    ld b, a
    ld a, a
    ld d, a
    ld l, a
    rst $30
    rst $00
    sub a
    rst $20
    or a
    add a
    and a
    rst $18
    sbc a

Call_065_4aff:
    xor a
    ld e, a
    ret nc

    rrca
    sub b
    ld b, $79
    ld h, $d0
    ld h, a
    sub c
    daa
    pop bc
    ld c, $e9
    rra
    cp b
    scf
    or b
    rla
    sub b
    inc b
    add e
    inc hl
    cp a
    inc hl
    cp a
    dec bc
    adc a
    ld a, b
    ld hl, sp+$68
    ld sp, hl

jr_065_4b20:
    ld l, b
    ld sp, hl
    call nc, $90f5
    or c
    adc a
    xor [hl]
    add [hl]
    rst $38
    sub h
    db $ec
    nop
    ret nc

    add [hl]
    ld a, [hl]
    ld [$00c4], sp
    db $ec
    ld h, b
    xor b
    jr nz, jr_065_4b20

    nop
    db $ec
    ld [hl-], a
    ld a, [c]
    ld [hl], b
    or h
    ld a, h
    cp e
    inc a
    ld a, [$fc30]
    ld a, d
    or $2b
    rst $30
    ld l, e
    rst $30
    db $ed
    di
    cp $e1
    rst $38
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
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
    rrca
    ldh a, [$cf]
    ldh a, [$c7]
    ld hl, sp-$39
    ld hl, sp-$19
    ldh [$0a], a
    dec c
    rrca
    inc c
    ld bc, $41eb
    ccf
    add b
    pop af
    add b
    di
    add b
    or b
    add b
    or c
    add c
    pop af
    jp $0df3


    adc $3d
    cp $bc
    rst $38
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
    ld [hl], a
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
    sbc a
    rst $38
    sbc a
    rst $38
    ld hl, $2420
    inc h
    jr nz, jr_065_4bc6

    nop
    nop
    ld bc, $0301
    inc bc
    ld b, $06
    ld [bc], a
    ld [bc], a
    rst $00
    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    rst $10
    rst $28
    rst $10
    rst $28
    rst $30
    rst $28
    rst $00
    rst $38
    ld [hl], b
    rst $30
    ldh [$f2], a
    ld h, b
    ld a, [c]

jr_065_4bc6:
    pop af
    db $f4
    pop af
    ldh a, [$e0]
    di
    ldh [$f3], a
    ldh a, [$f6]
    dec l
    db $dd
    ld h, h
    sub h
    inc b
    db $f4
    inc c
    db $ec
    inc e
    db $fc
    ld e, d
    ld e, [hl]
    db $10
    inc [hl]
    dec d
    ccf
    inc b
    or a
    ld bc, $8172
    ld a, [c]
    ld de, $01f2
    ld [c], a
    ld [bc], a
    pop bc
    ld h, h
    and [hl]
    ld h, l
    and a
    set 2, e
    set 2, a
    add d
    ei
    sub d
    adc e
    sub d
    adc d
    add d
    sbc a
    add b
    sbc a
    add b
    cp c
    nop
    inc sp
    nop
    ld [hl], e
    ld b, b
    rst $38
    ld b, b
    ld [hl], a
    ld b, b
    rst $38
    jp $e4d4


    rst $30
    db $e4
    rst $38
    ld [c], a
    ld c, $ea
    ld d, $3b
    rst $00
    ld [hl-], a
    jp z, $c23a

    inc d
    db $ec
    add l
    dec [hl]
    adc $6f
    add c
    and c
    sub c
    cp c
    db $10
    ld a, c
    inc c
    ld c, l
    inc c
    rst $38
    ld b, $f7
    ld b, $f6
    ld h, $de
    sub h
    ld l, a
    ld [hl], h
    add [hl]
    call z, Call_000_202c
    db $f4
    ld b, b
    db $e3
    ld b, c
    rst $00
    add c
    add e
    ld bc, $18a3
    add hl, de
    adc h
    adc a
    add b
    add b
    ld b, e
    ld b, e
    ld [hl+], a
    inc hl
    db $e3
    ld [c], a
    ld b, c
    ld b, d
    nop
    ld bc, $8e0e
    dec bc
    adc e
    db $10

jr_065_4c55:
    sub h
    cp c
    cp e
    jr jr_065_4c76

    sub b
    sbc h
    ld a, [de]
    ld d, $62
    ld a, [$b8d7]
    add a
    ld hl, sp-$13
    ld hl, sp-$1c
    ld hl, sp-$04
    ldh a, [rIE]
    ldh a, [$f6]
    ld hl, sp-$69
    ld hl, sp-$0f
    cp $bc
    ld a, [$f856]

jr_065_4c76:
    ld a, e
    db $f4
    ld l, e
    db $f4
    ld h, e
    db $fc
    ei
    db $e4
    ld a, [$eae4]
    ld a, [bc]
    add sp, $08
    db $e3
    inc de
    ld a, [c]
    nop
    ld d, h
    and a
    ld [hl], d
    adc a
    jr c, jr_065_4c55

jr_065_4c8e:
    ld hl, sp-$39
    call nc, Call_065_743f
    rra
    ld l, e
    rra
    rst $38
    rrca
    sub a
    rrca
    add a
    rrca
    ld d, $0f
    ld l, $1f
    sbc $e1
    sbc [hl]
    pop hl
    ld b, $f9
    jr nz, @+$01

    ld [hl], d
    db $fd
    sub h
    sbc a
    adc l
    adc a
    rrca
    rrca
    jr nc, jr_065_4cb2

jr_065_4cb2:
    db $dd
    ld hl, $3905
    dec [hl]
    add hl, bc
    add hl, sp
    ld bc, $0161
    ld bc, $0601
    nop
    ld a, a
    ld [hl], b
    ld h, a
    ld l, b
    daa
    jr z, jr_065_4c8e

    ret z

    adc d
    sbc l
    ld b, [hl]
    ld e, c
    add d
    sbc l
    sbc [hl]
    add c
    db $fd
    ld e, $bd
    ld e, $b5
    ld e, $85
    ld a, $cc
    ccf
    call $f53e
    ld l, $bd
    ld l, [hl]
    dec l
    ld d, e
    sbc h
    ld [c], a
    inc c
    ret nc

    call z, Call_000_0c32
    ldh a, [rNR32]
    ldh [$7c], a
    add b
    sbc $22
    ld a, [$bafc]
    ld a, h
    ld a, [c]
    inc a
    jp nc, $c23c

    inc a
    jp nc, $f62c

    ld [$106e], sp
    sub b
    ld e, e
    sub b
    ld [hl], e
    or b
    ld [hl], e
    or b
    ld a, e
    and b
    cpl
    and b
    cpl
    add b
    ld e, a
    adc b
    ld [hl], a
    ret nz

    ld [hl], e
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld h, a
    nop
    db $db
    add b
    db $d3
    sub b
    sbc [hl]
    add b
    sbc $88
    rst $00
    adc b
    push hl
    ld [$0175], sp
    ld l, a
    ld bc, $217d
    add hl, hl
    ld bc, $0109
    dec bc
    ld bc, $0131
    dec b
    ld bc, $010d
    xor l
    add b
    xor a
    adc b
    db $e4
    call z, $ece0
    ld [c], a
    dec de
    ldh [$0b], a
    ldh a, [rNR52]
    reti


    scf
    ret z

    add e
    call c, $ceb7
    rst $28
    add $ff
    add $46
    xor b
    ld h, [hl]
    add hl, bc
    ld h, d
    dec c
    and d
    db $dd
    db $e4
    db $d3
    ldh [$d6], a
    pop hl
    rst $18
    ld b, b
    ld [hl], d
    ld [de], a
    scf
    ld [de], a
    rla
    ld h, $17
    ld b, $bf
    ld [bc], a
    cp [hl]
    nop
    sub l
    add b
    ld [hl], l
    ret nz

    ccf
    db $e3
    inc e
    pop hl
    ld e, $d3
    inc c
    sub c
    ld c, $12
    adc l
    db $10
    adc a
    cp b
    rlca
    ret nz

    ccf
    add d
    ld a, h
    add b
    ld e, a
    dec b
    ld sp, hl
    ld [bc], a
    ei
    jr nc, @+$4c

    and b
    db $dd
    add c
    sub h
    ld a, [bc]
    xor l
    cp $08
    or b
    ret c

    sbc [hl]
    ldh a, [$3e]
    ldh a, [$6e]
    ldh a, [$df]
    ldh [$ce], a
    pop af
    db $ed
    di
    dec bc
    db $ec
    ld b, a
    xor b
    ld c, $61
    sbc a
    pop hl
    sbc a
    pop hl
    cp l
    jp $c2bc


    db $fc
    add d
    ret z

    ld [hl], $cc
    db $10
    add h
    ld d, e
    add b
    ld a, h
    add e
    ld c, a
    add h

Call_065_4dbb:
    inc e
    add d
    ld c, e
    jp z, $f30a

    db $fc
    db $e3
    db $fc
    and a
    ld hl, sp-$21
    ldh [$dc], a
    db $e3
    cp a
    ret nz

    daa
    ret nc

    inc bc
    ldh a, [$33]
    ret nz

    inc de
    ldh [rNR44], a
    ret nz

    ld h, $c1
    inc b
    jp $8344


    ld b, h
    add e
    inc b
    add e
    inc c
    add e
    inc c
    add e
    sbc h
    inc bc
    sub l
    dec bc
    sub a
    add hl, bc
    db $fd
    inc bc
    push af
    dec bc
    db $fd
    inc bc
    db $fd
    inc bc
    ei
    rlca
    rst $38
    inc bc
    db $db
    daa
    db $db
    daa
    swap a
    adc e
    ld [hl], a
    adc e
    ld [hl], a
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    jp hl


    rlca
    ld hl, sp+$07
    pop af
    rrca
    pop af
    rrca
    ei
    rlca
    ld b, a
    ld c, b
    inc hl
    inc a
    inc bc
    jr jr_065_4e5e

    ld e, b
    add a
    ld hl, sp-$32
    or b
    adc a
    pop af
    inc l
    ret nc

    ld c, $fc
    add hl, de
    db $fc
    db $dd
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$6f]
    ldh a, [$5d]
    ld [c], a
    ld l, l
    jp nz, $ef94

    adc l
    cp $9b
    db $fc
    ld [de], a
    db $fc
    ld h, $f8
    ld [hl], h
    ld hl, sp+$44
    ld hl, sp-$3c
    ld hl, sp+$01
    ld hl, sp-$75
    ldh a, [$0b]
    ldh a, [$2b]
    ret nc

    ld [bc], a
    pop af
    or [hl]
    ld b, c
    and $01
    ld b, $81
    add [hl]
    ld bc, $0186
    add d
    ld bc, $8166
    ld a, h
    add e
    call c, $fc03
    inc bc

jr_065_4e5e:
    ld [hl], b
    adc a
    ld [hl-], a
    call $cf30
    jr c, @-$3a

    ldh a, [$0c]
    ld d, d
    xor l

jr_065_4e6a:
    ldh a, [rIF]
    db $10
    ld l, e
    inc b
    ld a, [$6e91]
    ld hl, $c0ac
    rla
    ret nc

    ccf
    ld bc, $00aa
    ld l, e
    inc b
    sbc l
    ld b, [hl]
    ld [hl], a
    ld b, b
    and $c0
    adc $a0
    sub b
    ld h, b
    ld de, $03f0
    or b
    ld b, e
    db $f4
    rlca
    rst $20
    rra
    inc d
    rrca
    dec h
    rra
    ld e, a
    ccf
    ld l, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    ld b, e
    jr c, jr_065_4e6a

    ld b, b
    ld h, d
    db $10
    ld [de], a
    scf
    scf
    ld c, $fe
    rra
    ld e, a
    cpl
    ld l, a
    ccf
    cp a
    nop
    pop bc
    ld d, b
    rst $18
    ld hl, $c928
    or $1b
    and h
    rra
    ld h, b
    sbc a
    ldh [$bf], a
    ld a, a
    or a
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    db $d3
    ccf
    sbc a
    ld a, a
    ld e, l

jr_065_4ecd:
    ccf
    rst $00
    ccf
    rlca
    ld l, b
    rlca
    ld a, b
    rra
    jr nz, jr_065_4f16

    ret nz

    ld c, a
    or b
    sbc a
    ldh [$bf], a
    ret nz

    rra
    ldh [rTAC], a
    cp b
    swap h
    rst $00
    jr c, @+$15

    xor h
    rlca
    ld hl, sp+$02
    db $fd
    dec b
    sra h
    jp nz, $fefd

    ld a, [$f8fc]
    db $fc
    db $f4
    ld hl, sp-$0f
    ld hl, sp-$17
    ldh a, [$e9]
    ldh a, [$fa]
    ldh [$ce], a
    ldh a, [$cf]
    ldh a, [$cb]
    ldh a, [$9e]
    pop hl
    sub l
    ld [c], a
    sub [hl]
    pop hl
    sub e
    ldh [$87], a
    ldh [$d0], a
    ldh [$f0], a
    ldh [$e8], a
    ld [hl], b

jr_065_4f16:
    ld d, h
    ld hl, sp+$7d
    cp $77
    rst $38
    ld [hl], a
    rst $38
    cp a
    ld a, a
    cp e
    ld a, a
    cp a
    ld a, a
    db $dd
    ccf
    rst $00
    ccf
    db $fd
    inc bc
    xor a
    inc de
    ld a, [hl]
    ld bc, $007f
    jr nz, @-$18

    add sp, $77
    add b
    ld l, a
    adc b
    ld l, a
    adc b
    ld l, d
    ret z

    jr c, jr_065_4ecd

    ld d, h
    and b
    inc hl
    inc [hl]
    ld [hl], h
    ld l, b
    ld l, b
    ld h, b
    ld h, b
    and $e7
    push bc
    add $42
    ld b, l
    ld l, a
    ld l, b
    cpl
    jr nz, jr_065_4fd0

    rrca
    ld l, a
    rra
    ld l, a
    rra
    ccf
    rra
    db $fc
    rra
    db $fc
    rra
    cp $1f
    sbc $3f
    cp $c1
    ld a, a
    ld b, b
    ccf
    nop
    ccf
    ld b, b
    ld a, [hl-]
    ld b, l
    ld sp, hl
    add [hl]
    db $fd
    add d
    db $fc
    add e
    ld a, e
    inc b
    ld e, e
    and h
    db $76
    adc c
    cp h
    jp $87f8


    ld sp, hl
    add a
    ld e, b
    ld [hl+], a
    ld b, b
    inc a
    inc c
    ld [hl], h
    jr nz, jr_065_4fdc

    ld hl, $3119
    add hl, bc
    or c
    adc c
    di
    xor e
    rrca
    ld d, a
    dec de
    db $d3
    ld a, $c5
    db $fc
    rst $00
    and a
    jp nz, $c2a7

    cp a
    pop bc
    ld a, [hl-]
    pop bc
    ei
    ret nz

    cp a
    ret nz

    sub h
    db $eb
    add hl, de
    ld h, $3b
    inc b
    jr @+$29

    ld e, h
    ldh [rNR10], a
    xor l
    db $10
    add a
    add b
    ret


Call_065_4fb0:
    ld a, $c0
    push af
    nop
    db $fd
    nop
    ld a, c
    add b
    cp l
    ret nz

    cp $c0
    ei
    ldh [$ed], a
    ldh a, [rP1]
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f

jr_065_4fd0:
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_065_4ff3

    ld a, [de]
    dec de

jr_065_4fdc:
    inc e
    dec e
    ld e, $1f
    jr nz, jr_065_5003

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_065_5013

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_065_5023

    ld [hl-], a

jr_065_4ff3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_065_5033

    ld a, [hl-]
    dec sp
    inc a
    dec a

Call_065_4ffe:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_065_5003:
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

jr_065_5013:
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

Call_065_5022:
    ld h, d

jr_065_5023:
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

jr_065_5033:
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

Call_065_50cd:
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_065_50f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_065_5103

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_065_5113

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_065_5123

    ld [hl-], a

jr_065_50f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_065_5133

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0202

jr_065_5103:
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0205

jr_065_5113:
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0201
    ld [bc], a
    ld bc, $0502

jr_065_5123:
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0501
    ld [bc], a
    ld [bc], a
    ld bc, $0501

jr_065_5133:
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0501
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    dec b
    ld bc, $0202
    dec b
    ld [bc], a
    dec b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0505
    dec b
    dec b
    ld bc, $0502
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0200
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0505
    dec b
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0502
    ld [bc], a
    ld [bc], a

Jump_065_51c3:
    ld [bc], a
    ld bc, $0201
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
    dec b
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
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
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $08
    nop
    rst $08
    nop
    ld a, [$3301]
    pop bc
    rst $08
    pop af
    add e
    ld a, a
    sbc [hl]
    ld [hl], c
    ld l, c
    or b
    ld b, b
    add b
    ldh [$90], a
    ld [hl], h
    ld c, h
    jr jr_065_52b8

    rrca
    inc sp
    ld bc, $0511
    dec b
    add e
    add a
    ld b, c
    ld b, c
    add d
    ld [hl], e
    ld a, c
    add [hl]
    dec e
    ld [c], a
    ld c, $51
    ld bc, $046e
    ld a, e
    inc b
    dec de
    inc b
    dec de
    ld [hl], l
    ei
    cp e
    ld a, l
    ld c, b
    cp a
    ld bc, $10fe
    rst $28
    ld e, $e1
    rst $38
    nop
    cp a
    rst $38
    sbc e
    rst $38
    jp hl


    rst $38
    ld hl, sp-$01
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    pop bc
    ld a, $81
    ld a, [hl]
    sbc b
    ld [hl], a
    add c
    ld a, [hl]
    pop hl
    ld e, $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc

jr_065_52b8:
    inc bc
    db $fc
    rlca
    ld hl, sp+$27
    ld hl, sp+$1e
    pop af
    ld l, l
    di
    dec l
    di
    dec de
    rst $20
    dec sp
    rst $00
    ld a, e
    rst $00
    ld e, a
    rst $20
    or a
    rst $08
    rst $20
    sbc a
    and a
    rst $18
    rrca
    rst $38
    adc [hl]
    rst $38
    ld e, a
    cp $df
    cp $30
    rst $38
    dec de
    push hl
    ld sp, hl
    rlca
    ei
    rlca
    di
    rrca
    rst $30
    rrca
    rst $30
    rrca
    db $e3
    rra
    and $1f
    push de
    ld a, $db
    inc a
    sub [hl]
    ld a, c
    add a
    ld a, a
    sbc a
    ld a, a
    adc a
    ld a, a
    sbc [hl]
    ld a, a
    inc l
    rst $18
    sbc a
    db $fc
    ld a, [$fafd]
    db $fd
    cp $f9
    push af
    ei
    ld a, l
    di
    ei
    rst $30
    rst $20
    rst $38
    cp $ef
    ld a, a
    rst $38
    rst $18
    rst $38
    cp h
    rst $38
    ld h, $f9
    dec l
    di
    ld c, l
    di
    ld bc, $a0ff
    ld a, a
    db $10
    rst $28
    adc b
    rst $38
    sub d
    rst $28
    cp a
    ret nz

    ld [hl], h
    adc e
    cp [hl]
    ld a, a
    ld hl, sp+$79
    ld a, a
    cp $5d
    cp $0c
    rst $38
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$06
    ld sp, hl
    ld c, $f1
    adc [hl]
    ld [hl], c
    sbc [hl]
    ld h, c
    dec e
    ld [c], a
    add hl, de
    ld b, $17
    nop
    ld a, c
    add b
    inc b
    ld hl, sp+$1b
    db $fc
    db $fd
    cp [hl]
    rst $38
    sbc a
    ld a, a
    rst $08
    rla
    adc a
    adc e
    inc de
    ld h, c
    sbc l
    ld h, [hl]
    sbc b
    ret nz

    db $d3
    ld b, e
    ld a, a
    ld h, c
    rst $38
    add b
    cp $d0
    sub b
    call nc, Call_065_42f4
    db $d3
    and l
    ld h, l
    ld h, e
    sbc e
    sub [hl]
    ld l, a
    ld c, $3e
    rlca
    rst $30
    daa
    rst $08
    and e
    rst $18
    set 7, a
    db $eb
    rst $38
    inc a
    rst $38
    ld e, $ff
    adc $ff
    rlca
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, $b2
    ld c, l
    or d
    ld c, l
    add b
    ld a, a
    add h
    ld a, e
    sbc d
    ld [hl], a
    add d
    ld a, a
    add [hl]
    ld a, a
    db $ed
    ld e, $f5
    ld c, $cb
    inc [hl]
    xor a
    ld [hl], b
    rst $20
    ld a, b
    ld h, a
    ld hl, sp-$1d
    db $fc
    rst $00
    ld hl, sp-$39
    ld hl, sp-$34
    di
    sbc [hl]
    pop hl
    sbc e
    db $e4
    rra
    ldh [rNR34], a
    pop hl
    adc a
    pop af
    or l
    ei
    ccf
    ei
    cp e
    ld a, a
    ei
    ld a, a
    ld a, d
    rst $38
    ei
    db $fd
    ld sp, hl
    rst $38
    pop af
    rst $38
    rst $30
    ld sp, hl
    db $fd
    di
    ei
    rst $20
    sbc $e6
    rst $38
    adc a
    ld a, a
    adc a
    ld a, [$d81a]
    add hl, sp
    xor b
    ld l, b
    add b
    xor a
    nop
    scf
    nop
    ld a, a
    nop
    ld [hl], a
    ld bc, $0566
    db $10
    inc [hl]
    ld a, e
    db $ec
    di
    ld [de], a
    pop hl
    ld [hl+], a
    pop bc
    and h
    ld b, e
    ld l, $c3
    rst $38
    add b
    db $fc
    nop
    xor e
    db $10
    ld a, e
    nop
    jp nc, Jump_000_1e20

    ldh [$85], a
    ld a, [hl]
    pop af
    ld c, $6a
    sbc h
    or $18
    sbc $38
    or a
    ld a, b
    ld [hl], a
    adc a
    db $e4
    rra
    ret nz

    ccf
    ret z

    scf
    ret nz

    ccf
    cp b
    ld a, a
    inc a
    rst $38
    ld a, c
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $77
    ld hl, sp-$3c
    ccf
    add l
    ld a, a
    nop
    rst $38
    sub h
    ld l, e
    rrca
    ldh a, [$af]
    db $10
    call z, $f300
    nop
    dec a
    nop
    rrca
    nop
    ld sp, hl
    ld b, $ff
    rst $38
    db $fc
    rst $38
    ld a, b
    add h
    db $fc
    nop
    ld hl, sp+$04
    sbc l
    ld h, c
    ld e, h
    ld [hl+], a
    ld l, h

jr_065_545b:
    sub d
    call c, Call_065_5022
    ld l, a
    inc de
    call nc, $f403
    ld hl, $c1d8
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    ld a, l
    db $10
    ld d, l
    pop de
    reti


    rst $38
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    dec e
    rst $38
    ld [hl], h
    rst $28
    ld a, b
    rst $38
    inc a
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $28
    rra
    db $e3
    rra
    ldh a, [rIF]
    jr nc, jr_065_545b

    inc a
    rst $00
    db $fc
    inc bc
    ccf
    rst $38
    sbc [hl]
    rst $38
    add a
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    adc a
    ld [hl], b
    adc l
    ld [hl], d
    ld [$18f7], sp
    rst $20

jr_065_54a8:
    ld [hl], e
    adc a
    ld h, l
    sbc e
    db $ec
    inc de

jr_065_54ae:
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    ei
    rla
    rst $18
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    cp $fd
    sbc a
    db $fd
    ld a, c
    sbc a
    rst $18
    ccf
    rst $38
    ld a, a
    cp $ff
    rst $38
    cp $ed
    cp $ee
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    add b
    and c
    ld b, c
    ld b, b
    ld bc, $2502
    ld h, $07
    inc b
    ld [bc], a
    dec b
    ld c, $08
    or a
    ld c, $f7
    ld c, $ef
    inc e
    ld l, [hl]
    inc e
    ld a, d
    inc e
    dec a
    jr jr_065_5572

    jr c, @-$01

    ld a, b
    rst $38
    ld hl, sp+$77
    db $fc
    ld l, a
    ldh a, [$7f]
    ldh [rNR33], a
    ldh [$78], a
    nop
    ld [hl], c
    nop
    ld l, c
    nop
    add c
    db $76
    add c
    ld a, $87
    jr c, jr_065_54ae

    jr c, jr_065_54a8

    ld [hl], b
    inc c
    ld [c], a
    ld b, c
    db $db
    pop af
    pop af
    rst $18
    ccf
    sbc $3f
    ld c, a
    cp [hl]
    ld b, l
    cp [hl]
    ld c, h
    cp a
    ld c, d
    cp l
    ld h, e
    sbc a
    cp a
    rst $38
    db $eb
    db $f4
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$9f], a
    ldh [$bf], a
    ld b, b
    rst $38
    nop
    cp $01
    adc a
    ldh a, [$fd]
    ld [hl], d
    ld a, [$fb3d]
    rlca
    db $fd
    inc bc
    ld a, l
    nop
    ld a, h
    adc b
    ld a, [$78fd]
    rst $38
    cp l
    ld a, [hl]
    inc a
    rra
    or h
    rrca
    sbc h
    rlca
    call $e302
    nop
    inc sp
    ret nz

    nop
    rst $18
    and b
    ld a, e
    ret nc

    scf
    jr jr_065_55e3

    adc h
    xor a
    add h
    call nz, $fec8
    cp $fe
    nop
    ld [hl], d

jr_065_5572:
    rst $18
    rst $38
    rst $08
    rst $38
    ld d, a
    rst $38
    ld sp, hl
    cp a
    sbc [hl]
    db $fd
    call Call_065_4ffe
    cp $0f
    cp $0c
    rst $38
    call z, $f2bf
    dec c
    rra
    ldh [$5f], a
    ldh [$2f], a
    ldh a, [rNR22]
    ld hl, sp+$07
    rst $38
    scf
    rst $38
    daa
    rst $38
    and c
    rst $38
    add c
    rst $38
    pop af
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $ed
    ld [de], a
    push bc
    ld a, [hl-]
    ret nz

    ccf
    nop
    rst $38
    adc l
    rst $38
    sbc l
    cp $3f
    db $fc
    ld a, h
    rst $38
    inc l
    rst $38
    cp l
    ld l, [hl]
    ld a, c
    rst $28
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc e
    rst $38
    jp $dfbf


    xor a
    xor a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [$f6fb]
    or $ff
    rst $38
    db $f4
    db $fc
    db $f4
    db $ec
    ret c

    add sp, -$10
    sub b
    ld [hl], b
    sub b
    ret nc

    jr nc, @+$01

    ret nz

    cp a

jr_065_55e3:
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld l, $81
    adc a
    ld bc, $039d
    dec a
    inc bc
    dec sp
    rlca
    ld c, a
    inc sp
    ld h, $7f
    xor $3f
    rst $18
    ccf
    db $fc
    rra
    ld l, a
    ld e, $ef
    ld e, $14
    rst $28
    db $10
    ld l, [hl]
    ld bc, $017e
    ld [hl], d
    ld hl, $0612
    rst $28
    inc b
    ld [hl], l
    ld b, b
    xor a
    add hl, bc
    call nc, $fe21
    ld h, $a9
    ld b, $e1
    rlca
    jp hl


    add c
    db $ed
    add a
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    add b
    ld a, a
    nop
    rst $38
    ld de, $41ef
    rst $38
    ld [hl], a
    rst $38
    pop af
    cp $f6
    ld sp, hl
    db $ed
    inc de
    db $fd
    inc bc
    db $fd
    inc bc
    cp $01
    or e
    ld c, h
    ld b, d
    rst $38
    ld l, e
    ei
    sbc h
    db $fc
    ld sp, $1301
    inc hl
    ld [de], a
    xor d
    db $f4
    inc l
    add a
    ld a, a
    db $ed
    dec e
    dec hl
    dec de
    ld c, $0e
    ld [bc], a
    add e
    inc h
    push hl
    add hl, de
    ld a, l
    ld [hl], b
    db $76
    ld [hl], c
    ld sp, hl
    ld bc, $8005
    ldh a, [$74]
    add h
    ld a, b
    rst $38
    ld a, b
    ld a, e
    add hl, hl
    cp d
    dec b
    ld d, $05
    ld [hl], h
    inc bc
    cp d
    ld bc, $75e8
    ld [hl], a
    or l
    jp z, $e07f

    rst $28
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp+$7f
    ld hl, sp+$37
    ld hl, sp+$7b
    cp $fb
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    rst $18
    jr nz, jr_065_56ca

    ret nz

    rst $18
    ldh [$5f], a
    ldh [$7f], a
    ldh [$2f], a
    ldh a, [$87]
    ld a, b
    add e
    ld a, h
    jp $c33c


    inc a
    push bc
    ld a, [hl-]
    rst $38
    nop
    adc $31
    ld c, $f1
    nop
    rst $38
    ld l, b
    rst $38
    dec sp
    rst $38
    di
    ld a, a
    ei
    rst $38
    rst $38
    rst $38
    db $f4
    ei
    ld a, [c]
    db $fd
    jp $fffc


    ret nc

    add $f9
    rst $10
    add sp, -$24
    and e
    xor l
    di
    xor $f2
    ldh a, [$ec]
    ld sp, hl
    push hl
    call z, $cff3
    pop af

jr_065_56ca:
    ld l, h
    sub d
    adc h
    ld h, d
    add d
    ld [hl], d
    ret z

    ret nc

    sub b
    db $ed
    jr nc, jr_065_56e1

    db $10
    xor d
    db $10
    ld l, a
    db $10
    and a
    ld d, b
    rst $08
    ld c, d
    ld sp, hl
    or d

jr_065_56e1:
    call $dd22
    or h
    db $db
    add h
    ei
    and c
    cp $c3
    db $fc
    jp $e0f4


    rst $30
    ldh a, [$e7]
    ret nc

    rst $28
    add b
    rst $18
    ld [c], a
    sbc a
    ld b, e
    cp a
    ld bc, $a8ff
    ld a, a
    jr nz, @+$01

    ld bc, $68f6
    sbc a
    pop hl
    ld a, [de]
    ld [hl], a
    adc a
    ld b, $ff
    ld [hl-], a
    and $60
    or $64
    rst $38
    rst $20
    ld a, b
    ld c, b
    db $f4
    cp h
    ret nz

    db $fc
    ret z

    db $db
    add b
    and a
    db $10
    or a
    nop
    ld b, a
    and b
    jp nz, $0c3c

    ld [hl], d
    add b
    add b
    add sp, -$18
    ld hl, sp-$04
    dec [hl]
    db $fd
    rst $38
    rrca
    xor $1e
    cp a
    rst $18
    adc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld h, e
    sbc a
    or d
    rst $08
    ld l, b
    ld [hl], a
    ld bc, $11bf
    cpl
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    inc [hl]
    ld a, $2b
    ld a, b
    ld b, c
    sub $08
    db $ec
    ld h, $26
    ld h, d
    ld [hl], d
    ld d, b
    ld [hl], d
    jr nc, jr_065_57d9

    inc c
    ld b, e
    ld b, b
    ld b, a
    ret z

    rst $08
    nop
    db $fd
    add b
    db $e3
    nop
    ld a, a
    add b
    ld a, e
    add b
    ld a, e
    ret nz

    ccf
    ldh a, [rIF]
    db $f4
    dec bc
    sbc e
    nop
    add hl, de
    add b
    ld [hl], h
    add c
    or e
    ret nz

    or $c1
    sbc $e1
    cp $e1
    rst $30
    ld hl, sp-$01
    nop
    rst $38
    add b
    cp a
    ldh [$f2], a
    db $fd
    ld a, [$7dfd]
    ld a, [$fc1b]
    sub h
    ld a, a
    xor h
    ld a, a
    db $ec
    ccf
    rst $00
    ccf
    ld a, [c]
    rrca
    db $10
    rst $28
    ld h, b
    rst $38
    add e
    ld a, h
    ld sp, hl
    ld b, $3c
    jp $e01f


    ld d, c
    xor $84
    rst $38
    dec bc
    rst $38
    inc c
    rst $38
    ld b, b
    rst $38
    ld sp, hl
    cp $f5
    ld a, [$eff7]
    ccf
    rst $18
    rst $10
    scf
    ld a, [$a93e]
    ld l, l
    add [hl]
    add [hl]
    add b
    adc e
    inc bc

jr_065_57c1:
    ld b, e
    ld [hl-], a
    cp $02
    rst $28
    nop
    cp l
    add b
    ld c, h
    nop
    cp $00
    or e
    ld [bc], a
    push hl
    rst $38
    ld bc, $01fb
    sbc l
    ld h, e
    rst $30
    inc bc
    ei

jr_065_57d9:
    rlca
    db $eb
    ld b, $dc
    ld b, $d7
    inc c
    inc c
    db $fd
    adc c
    ld l, b
    add b
    ld e, a
    xor b
    ld l, $81
    ld e, [hl]
    rst $00
    jr z, jr_065_57ed

jr_065_57ed:
    sbc a
    ld [hl], c
    rst $38
    rra
    sbc a
    ret nz

    ld hl, $f200
    nop
    ret nz

    db $fc
    db $fc
    ld c, $1f

jr_065_57fc:
    inc bc
    ccf
    jr jr_065_57fc

jr_065_5800:
    nop
    cp $80
    ld a, d
    add b
    ld c, e
    ld b, b
    rst $18
    dec a
    jp nz, $fb80

    ld a, h
    rst $38

jr_065_580e:
    ld l, c
    cp $03
    db $ec
    add c
    ld h, [hl]
    xor h
    ld l, d
    ld a, h
    ld a, e
    ld e, b
    ld e, a
    ld l, b
    rla
    add d
    ld a, l
    add b
    ld [hl], d
    ld a, a
    nop
    cp a
    ld h, b
    or e
    ld h, b
    sbc a
    ld h, b
    ld [hl], a
    nop
    db $d3
    jr nz, jr_065_5800

    jr nz, jr_065_580e

    jr nz, jr_065_57c1

    or b
    or b
    sub b
    sub c
    or b
    add b
    and c
    jp z, $c2fb

    di
    ld h, [hl]
    or $86
    or $4e
    rst $28
    ld b, $b6
    ret z

    ld hl, sp-$68
    cp e
    reti


    ld a, [$4205]
    jp nz, $e02d

    ld a, [de]
    add [hl]
    ld [hl], a
    ld [bc], a
    sbc a
    ldh a, [$0c]
    ret nz

    ccf
    ld h, b
    sub [hl]
    ldh [$9f], a
    and b
    rst $08
    add b
    cp b
    ld c, c
    adc $c9
    ret z

    sbc $df
    ld c, h
    ld c, l
    ld b, [hl]
    ld b, a
    and l
    db $e4
    ld c, [hl]
    ld [hl], c
    ld c, a
    ld [hl], b
    adc a
    ldh a, [$1f]

jr_065_5873:
    ldh [$1f], a
    and b
    rra
    ldh [$87], a
    ld a, b
    rlca
    ld hl, sp+$02
    db $fd
    jp nz, Jump_000_21dd

    cp [hl]
    ld de, $441e
    jp $ef68


    db $10
    rst $38
    inc b
    ei
    inc b
    ei
    ret nz

    ccf
    ldh [$1f], a
    jr nz, jr_065_5873

    ld [$fcf7], sp
    inc bc
    ld sp, hl
    inc b
    inc e
    pop hl
    db $fd
    inc bc
    rst $38
    ld bc, $817e
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld h, d
    sbc l
    dec e
    db $fd
    sbc $3e
    ldh [$e9], a
    nop
    inc bc
    nop
    nop
    add b
    jr @+$49

    jr jr_065_58be

    db $fc
    nop
    ei

jr_065_58be:
    rlca
    and a
    inc b
    jr c, jr_065_58cc

    jp z, $b700

    inc d
    sub d
    or a
    ld a, b
    ld l, [hl]
    pop hl

jr_065_58cc:
    rst $38
    ldh [$cb], a
    call nc, $c0a1
    cp c
    ret nz

    call c, $8080
    nop
    ld a, a
    add b
    di
    rrca
    ld hl, sp+$07
    rst $00
    nop

jr_065_58e0:
    inc e
    db $e3
    ld a, [$0e01]
    ldh a, [$c2]
    ccf
    ld a, h
    add e
    rst $38
    nop
    ld b, c
    cp [hl]
    rlca

jr_065_58ef:
    ld hl, sp+$38
    jr c, jr_065_590d

    ld a, [$5f40]
    sub [hl]
    sbc c
    jp hl


    or $0d
    ld d, d
    ld l, a
    ld [hl], b
    rst $28
    ldh a, [$5f]
    ld h, b
    rrca
    jr nc, jr_065_5978

    ld [hl], h
    ld b, d
    ld b, b
    jr jr_065_5928

    add hl, de
    rra
    inc bc

jr_065_590d:
    inc bc
    nop
    nop
    ldh [rNR10], a
    add b
    ld b, c
    rrca
    rst $18
    add e
    rst $38
    ld a, a
    rst $38
    inc bc
    or e
    ld d, c
    xor a
    jr nc, jr_065_58ef

    ld de, $0851
    reti


    add c
    cp [hl]
    ld h, b
    ld [hl], e

jr_065_5928:
    ld h, d
    ld a, d
    ld l, c
    ld [hl], a
    add sp, -$09
    ld e, b
    ld b, a
    ld h, b
    ld e, a
    ld [$076e], sp
    add a
    ld a, a
    ld a, a
    ld h, e
    db $e3
    nop
    ld [c], a
    ld c, h
    cp h
    jr nz, jr_065_58e0

    rst $38
    rst $38
    rlca
    rra
    ld b, e
    add e
    ld b, c
    add c
    ret z

    jr c, jr_065_58ef

    ld d, h

jr_065_594c:
    add b
    ld a, a
    db $10
    rst $28
    jr nz, @-$5e

    jr c, jr_065_594c

    add b
    rst $18
    ld [hl], e
    db $fc
    xor a
    xor h
    add hl, de
    ld a, [de]
    inc c
    rrca
    rlca
    inc b
    or a
    ld [hl], h
    or e
    ld c, h
    inc sp
    call z, $8c73
    ld l, b
    sub a
    inc h
    db $db
    add h
    ld a, e
    ret z

    scf
    ret nz

    rst $38
    adc a
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38

jr_065_5978:
    and b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    rla

jr_065_5981:
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    jr nz, @+$01

    ld a, h
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    inc b
    rst $38
    ret nz

    rst $38
    dec b
    ei
    rst $08
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    adc [hl]
    rst $38
    and $ff
    ccf
    rst $38
    ccf
    rst $38
    ld h, c
    rst $38
    sbc a
    ld a, a
    or $16
    ld [$002a], a
    nop
    nop
    nop
    ld hl, sp+$07
    inc bc
    rst $38
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_065_5981

    ccf
    ld a, [hl-]
    rra
    cp h
    rra
    rst $20
    rra
    ld b, a
    and a
    rst $20
    rla
    inc bc
    ei
    inc bc
    ld a, e
    inc bc
    scf
    add e
    daa
    ld b, c
    add c
    ld l, l
    adc a
    sbc h
    rst $28
    ld [de], a
    db $ed
    add b
    ccf
    add b
    ld a, a
    ld c, d
    and l
    ldh a, [$f8]
    ld hl, sp-$01
    ld [hl], b
    db $fd
    inc c
    ld b, e
    db $e3
    db $ec
    inc h
    db $fd
    nop
    ld e, e

jr_065_59e8:
    ld hl, sp-$08
    nop
    add h
    ldh a, [$0a]
    ldh [$0d], a
    rla
    rla
    ld hl, $7621
    or $46
    push bc
    call c, $fc3f
    inc bc
    rst $38
    nop
    rst $38
    nop
    xor a
    rst $38
    add c
    rst $38
    ld a, $c1
    rst $38
    nop
    rlca
    nop
    push af
    nop
    ld e, a
    ldh [$eb], a
    inc e
    sub h
    sbc e
    db $ec
    di
    ld e, $61
    ld a, h
    add e
    ld a, h
    add e
    rra
    ldh [$1f], a
    ldh [$3f], a
    ld b, b
    cp a
    ret nz

    or b
    ld c, a
    ld [hl], b
    adc a
    cp $01
    rst $20
    ld hl, sp-$7c
    add a
    ld b, b
    ld b, b
    jr c, jr_065_59e8

    inc e
    call c, $8f07
    add a
    and a
    ld d, $37
    inc e
    ld a, a
    db $fc
    rst $38
    nop
    ld [bc], a
    inc b
    rlca
    jr nz, @+$22

    nop
    add b
    nop
    add b
    jr nz, jr_065_59e8

    sub h
    sub h
    ret nz

    ret nz

    rla
    rla
    ld d, c
    ld d, c
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    cp a
    ret nz

    ld e, [hl]
    pop hl
    ld b, a
    rst $38
    ld b, [hl]
    rst $38
    inc c
    rst $38
    call c, $b8ff
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
    ld [$08ff], sp
    rst $30
    ld hl, $1fde
    ldh [rP1], a
    rst $38
    and c
    ld e, a
    nop
    rst $38
    ld c, $f1
    ld c, $f1
    rra
    ldh [$1f], a
    ldh [rTAC], a
    ld hl, sp+$44
    ei
    db $10
    rst $38
    add b
    rst $38
    ld [$89f7], sp
    cp $03
    db $fc
    rst $00
    ld hl, sp-$09
    ld hl, sp-$10
    rst $38
    db $f4
    ei
    ldh [rIE], a
    rra
    rst $38
    sbc a
    ld a, a
    rst $00
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    db $ed
    di
    ld a, b
    ld h, a
    ld bc, $1f3f
    ccf
    ld e, [hl]
    ld a, a
    adc $3f
    xor a
    ld e, a
    rlca
    rst $38
    xor a
    xor a
    inc bc
    inc bc
    inc [hl]
    swap l
    adc $fd
    ld [bc], a
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    nop
    rst $38
    jr c, @+$01

    db $fc
    rst $38
    sbc a
    sbc a
    ld b, b
    ret nz

    ret nc

    or b
    or h
    call z, $c7bb
    jr jr_065_5aff

    ld c, a
    ld d, b
    ld [hl], a
    ld a, b
    rlca
    ld a, b
    ld bc, $7f3e
    ld a, a
    ld a, a
    ld a, a
    ld [hl], a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp $ff
    ei
    db $fc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, h
    ld a, a
    add $3f
    rst $38

jr_065_5aff:
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, a
    ld hl, sp+$7f
    ld a, a
    ld a, a
    ld a, a
    dec bc
    dec bc
    dec b
    dec b
    rlca
    rlca
    ld a, a
    rst $38
    nop
    adc [hl]
    nop
    add e
    ld b, $f6
    nop
    ei
    add b
    ld a, e
    ld hl, sp+$07
    db $fc
    inc bc
    ei
    inc bc
    ld h, b
    sub b
    ld [hl], h
    adc h
    ld [$02f6], sp
    db $fd
    cp $01
    adc [hl]
    or c
    inc [hl]
    dec sp
    db $ec
    di
    cp h
    jp $976b


    inc bc
    ei
    rlca
    rst $38
    jp nz, Jump_000_01fe

    inc bc
    ld b, c
    ld b, c
    nop
    cp $00
    ld l, a
    nop
    db $fd
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $38
    inc b
    ld a, e
    dec c
    ld d, d
    cp $00
    rst $38
    nop
    ld sp, hl
    rlca
    push bc
    ccf
    ld a, b
    rst $38
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    ld e, e
    rst $38
    xor e
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    jp hl


    rst $38
    ld c, h
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    add c
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    ld l, a
    rst $38
    nop
    rst $38
    nop
    dec bc
    db $f4
    ld [$a7ff], sp
    rst $18
    ld [hl], e
    adc a
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    rst $08
    ldh a, [$38]
    rst $38
    rrca
    rst $38
    sbc l
    cp $f2
    db $fd
    ld a, [c]
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $f4
    ei
    db $f4
    res 6, e
    rst $08
    inc hl
    rst $18
    reti


    daa
    add a
    ld a, a
    rst $30
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    adc l
    ld [hl], e
    inc bc
    rst $38
    rst $08
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    add b
    ld b, b
    nop
    ldh [rP1], a
    nop
    ld bc, $8501
    add l
    rst $38
    rst $38
    di
    di
    pop af
    pop af
    ld a, b
    ld [hl], b
    inc [hl]
    jr nc, @+$26

    jr nz, @+$07

    nop
    inc bc
    inc bc
    ld bc, $4801
    ld c, b
    nop
    nop
    ld a, a
    rst $38
    ld b, $ff
    di
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, a
    rst $38
    ccf
    rst $38
    or $0f
    db $fd
    inc bc
    rst $38
    ld bc, $f906
    or $f9
    ldh [$e7], a
    db $e3
    db $e3
    ei
    ei
    rst $38
    rst $38
    rrca
    ld c, $29
    xor d
    ld c, c
    rst $18
    inc d
    ld [hl], a
    ld [$19e9], sp
    ld sp, hl
    ld hl, $1021
    ld l, $00
    cp $00
    cp $26
    xor [hl]
    ld a, a
    ld a, a
    rst $38
    rst $38
    rra
    rst $38
    ld [bc], a
    add $09
    adc l
    ld b, e
    or e
    or h
    push af
    call c, $fddc
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    ld d, c
    nop
    di
    nop
    rst $18
    nop
    ld a, [hl]
    nop
    rst $38
    ld hl, $a1df
    ld e, l
    add e
    ld a, e
    ld d, e
    ld e, h
    dec bc
    db $f4
    rst $38
    nop
    ld a, a
    add b
    ld bc, $07fe
    ld hl, sp-$41
    ld b, b
    rst $28
    db $10
    sbc l
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    or $ff
    rst $00
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    db $10
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
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rra
    ldh [rSB], a
    cp $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    call nz, Call_065_7f3f
    rst $38
    ld c, $ff
    rst $38
    nop
    ld c, b
    cp a
    add $3f
    ld b, $ff
    ld [de], a
    rst $38
    di
    rst $38
    db $e3
    db $fc
    ld d, a
    add sp, $07
    ld hl, sp+$39
    cp $f8
    rst $38
    db $fd
    rst $38
    cp $ff
    dec a
    rst $38
    inc hl
    db $fc
    rst $28
    ldh a, [$df]
    ldh [rLY], a
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
    ld a, $ff
    nop
    rst $38
    push hl
    ld a, [$f0ef]
    rst $38
    ldh [$f3], a
    call z, $c0bf
    ld a, a
    add b
    rra
    ldh [$c1], a
    rst $38
    rst $38
    di
    ld c, $f1
    ld d, $f9
    db $f4
    ei
    db $fd
    ei
    ld a, e
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    add e
    db $fc
    ld hl, sp-$01
    pop hl
    pop hl
    rst $30
    rst $30
    cp $fe
    ld e, [hl]
    ld e, [hl]
    inc hl
    inc hl
    ld bc, $0001
    nop
    daa
    rlca
    ld a, a
    ld hl, sp-$32
    rst $30
    ld h, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    pop hl
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    adc [hl]
    ld a, a
    cp $0f
    rst $10
    ld l, a
    sbc e
    ld h, a
    ld a, a
    add b
    sub e
    ld l, h
    nop
    rst $38
    ld a, [hl]
    add c
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    add b
    rrca
    ldh a, [$0b]
    db $f4
    add e
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld h, b
    ld a, a
    cp [hl]

jr_065_5d37:
    cp [hl]
    jp $ffc3


    rst $38
    ld e, $5e
    jr nc, jr_065_5d37

    add l
    xor e
    sub [hl]
    cp d
    dec b
    ld l, c
    ld bc, $a95d
    or l
    dec de
    db $e3
    ld a, e
    add a
    ld hl, sp+$07
    ld hl, sp-$01
    db $fc
    ei
    ld hl, sp-$01
    db $fc
    ei
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $ec
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    jr nz, @+$01

    nop
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld c, $ff
    inc c
    rst $38
    nop
    rst $38
    call nz, $0fff
    rst $38
    ld b, c
    rst $38
    ld [hl], a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp+$07
    ld a, [hl]
    add c
    cp a
    ret nz

    rst $38
    ret nz

    rra
    ldh [$bf], a
    ld b, b
    rra
    ldh [rP1], a
    rst $38
    ld e, $ff
    ld c, $ff
    add b
    rst $38
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    ld c, $ff
    ld e, h
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    rra
    rst $38
    cp $01
    ld a, a
    add b
    ld a, a
    add b
    sub a
    add sp, -$1d
    db $fc
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [$cf]
    jr nc, @+$01

    nop
    rst $38
    nop
    ld a, h
    add e
    ei
    rlca
    rst $38
    rlca
    di
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    and $ff
    rst $28
    rst $38
    ld e, e
    rst $38
    di
    rst $38
    rst $38
    rst $38
    db $dd
    ccf
    db $dd
    ccf
    adc [hl]
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    rst $30
    db $10
    rst $38
    rst $18
    rst $38
    rla
    rst $38
    sbc $21
    ld hl, $90fe
    rst $38
    ld e, $ff

jr_065_5e08:
    sbc $ff
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld [hl-], a
    rst $08
    sbc c
    and $e0
    rst $38
    add b
    ld a, a
    rst $38
    nop
    ccf
    ret nz

    dec bc
    rst $38
    rst $38
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
    ld [hl], a
    rst $38
    jp hl


    ld d, $00
    rst $38
    db $10
    rst $28
    nop
    ccf
    ldh [$ee], a
    add a
    rst $10
    ld bc, $007d
    rst $38
    nop
    ld a, $00
    dec e
    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
    ld [$0077], sp
    ld a, a
    nop
    ld a, a
    jr nz, @-$1e

    and b
    ldh [rP1], a
    ld h, b
    jr nc, jr_065_5e08

    ld a, b
    ld hl, sp+$00
    inc a
    jr c, @+$49

    ldh a, [$09]
    pop af
    inc bc
    db $f4
    ld b, $1e
    xor $0c
    cp $f4
    ld c, $fa
    ld [bc], a
    ld hl, sp+$04
    db $fc
    nop
    rst $38
    ld bc, $f00f
    inc bc
    db $fc
    inc hl
    call c, $fe01
    ld bc, $83fe
    ld a, h
    add b
    ld a, a
    ldh [rIE], a
    rst $18
    rst $38
    add b
    rst $38
    jp Jump_065_43ff


    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld [c], a
    rst $38
    rrca
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
    ccf
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    ld a, [$f805]
    rlca
    ccf
    ret nz

    nop
    rst $38
    ld e, $ff
    db $d3
    rst $38
    ld [hl], l
    ei
    ld [bc], a
    db $fd
    or $09
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    ldh [$1f], a
    db $fc
    rrca
    ld a, [hl]
    adc a
    ld e, a
    xor a
    rst $18
    cpl
    push af
    rrca
    db $db
    rst $20
    ld d, e
    rst $28
    db $d3
    cpl
    db $fd
    rrca
    di
    inc c
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    dec e
    db $e3
    db $db
    rst $20
    ld [hl], a
    adc a
    db $76
    adc [hl]
    ld [hl], a
    adc a
    or l
    adc $4c
    di
    ld c, [hl]
    pop af
    and $f9
    ldh a, [rIE]
    ldh a, [rIE]
    or $f9
    db $fc
    di
    add sp, -$09
    rst $38
    rst $20
    reti


    rst $20
    ret z

    rst $38
    rst $38
    rst $38
    ld [$e6ff], sp
    add hl, de
    swap h
    ld a, a
    add b
    ld h, e
    sbc h
    ld e, h
    cp a
    cp h
    rst $38
    xor $ff
    xor b
    rst $38
    rra
    rst $38
    adc l
    ld a, a
    adc b
    ld a, a
    ld b, b
    cp a
    inc c
    rst $38
    ldh a, [rIF]
    ret nc

    cpl
    db $fc

jr_065_5f21:
    rrca
    db $f4
    rrca
    db $fc
    rrca
    di

jr_065_5f27:
    inc c
    rst $30
    ld [$7c83], sp
    add c
    ld a, [hl]
    add h
    ld a, a
    ret c

    ccf
    ret nz

jr_065_5f33:
    ccf
    ld h, c
    sbc [hl]
    ld hl, $11de
    xor $d1
    xor $90
    rst $28
    jr jr_065_5f27

    nop
    ldh [$03], a

jr_065_5f43:
    add e
    ld bc, $00c1
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_065_5f21

    jr nz, jr_065_5f33

    ld h, b
    sub l
    ld [bc], a
    rst $30
    ld [bc], a
    and e
    ld [bc], a
    sub l
    nop
    ld a, a
    ld b, b
    xor a
    ldh [$1f], a
    jr nz, jr_065_5f43

    ld [bc], a
    db $fd
    add hl, hl
    sub [hl]
    ld c, c
    or [hl]
    inc d
    db $eb
    rla
    add sp, $18
    rst $20
    rst $08
    nop
    db $dd
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$c3], a
    db $fc
    jp z, Jump_000_1eff

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ld [$00ff], sp
    rst $38
    jr @+$01

    add b
    ld a, a
    ret nz

    ccf
    add sp, $17
    add b
    ld a, a
    nop
    rst $38
    ld bc, $00ff
    rst $38
    dec b
    ld a, [$fa85]
    and a
    ld hl, sp-$7d
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$78
    rst $38
    dec a
    cp $14
    rst $38
    call z, $e8ff
    rst $38
    and $ff
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    cp $fd
    cp $ff
    ld hl, sp-$11
    ldh a, [$c1]
    ld a, $b5
    ld a, [hl]
    ld a, a
    db $fc
    xor $e9
    di
    db $fc
    rst $20
    ret c

    and $d9
    cp a
    pop bc
    cpl
    pop af
    ld [hl], a
    ld hl, sp-$0a
    ld sp, hl
    rst $28
    ldh a, [$d7]
    xor $77
    adc [hl]
    dec c
    cp $00
    rst $38
    ldh [$1f], a
    inc b
    ei
    ld [hl], b
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rBGP]
    ld hl, sp+$06
    ld sp, hl
    ld b, a
    cp b
    rlca
    ld hl, sp+$06
    ld sp, hl
    add e
    ld a, h
    add c
    ld a, [hl]
    ld hl, $4dfe
    ld a, [c]
    ld c, h
    di
    inc e
    db $e3
    ld l, l
    ld a, [c]
    ld l, a
    ldh a, [$5c]
    db $e3
    sbc a
    ldh [rVBK], a
    or b
    add b
    ld a, a
    ld [$18f7], sp
    rst $20
    inc b
    ei
    dec bc
    rst $30
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    dec c
    cp $00
    rst $38
    add [hl]
    ld a, c
    cp $01
    dec bc
    db $f4
    ld bc, $41fe
    cp $41
    cp $44
    ld a, [hl]
    nop
    rst $38
    ld de, $faff
    cp $1a
    rra
    ld a, [de]
    dec de
    db $10
    inc de
    rlca
    rlca
    ld [bc], a
    rlc h
    push bc
    nop
    add b
    add d
    sbc d
    add e
    add e
    dec de
    db $db
    ld c, a

jr_065_605d:
    xor a
    dec bc
    db $eb
    ld [$08ed], sp
    jp hl


    db $10
    db $d3
    nop
    pop bc
    nop
    rst $30
    nop
    jp c, Jump_000_3ac0

    nop
    db $fc
    db $10
    db $10
    jr nc, jr_065_60a4

    jr nz, jr_065_6096

    ld bc, $0001
    nop
    jr nz, jr_065_609c

    nop
    nop
    ret nz

    ret nz

    ld hl, $11e1
    pop de
    inc bc
    db $e3
    inc bc
    di
    add e
    ld [hl], a
    sbc a
    ld a, a
    add hl, bc
    ld sp, hl
    ld a, [hl-]
    add $dc
    ld [hl+], a
    sbc a
    ld h, b
    jr c, jr_065_605d

jr_065_6096:
    rlca
    rst $38
    rrca
    rst $38
    cpl
    rst $18

jr_065_609c:
    ccf
    rst $18
    ld [hl+], a
    rst $18
    rlca
    rst $38
    ld b, d
    cp a

jr_065_60a4:
    ld d, b
    xor a
    ld b, l
    cp d
    ld c, a
    or b
    cp a
    ret nz

Call_065_60ac:
    dec a
    jp nz, $827d

    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, [$c9ff]
    rst $38
    ld c, e
    rst $38
    ld c, a
    rst $38

jr_065_60be:
    rst $08
    rst $38
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $28
    sub b
    ld c, a
    or b
    rst $08
    jr nc, jr_065_60be

    db $10
    adc $ff
    ret nz

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    and e
    rst $38
    ld b, e
    rst $38
    jp $e7ff


    rst $38
    ld h, a
    sbc b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    ld sp, hl
    ld b, $fb
    inc b
    ld sp, hl
    ld b, $e9
    ld d, $89
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    sub c
    rst $38
    pop de
    rst $38
    sub c
    rst $38
    ld d, c
    rst $38
    add a
    ld hl, sp+$03
    db $fc
    inc de
    db $ec
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
    rst $38
    ld h, a
    rst $38
    rlca
    rst $38
    ld b, e
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld d, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [bc], a
    db $fd
    ld [$08ff], sp
    rst $38
    ld bc, $80fe
    rst $38
    add b
    ei
    nop
    rst $38
    ld [$00fb], sp
    push hl
    nop
    or $20
    sbc $00
    rst $38
    nop
    sbc a
    db $10
    rra
    add b
    add [hl]
    jr z, jr_065_6190

    jr nc, jr_065_619a

    xor d
    xor d
    inc b
    rlca
    dec b
    dec b
    nop
    nop
    ld c, a
    ld c, a
    ld b, a
    ld b, a
    sbc d
    sbc d
    add b
    add b
    jr nz, jr_065_619c

    nop
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    dec b
    pop bc
    pop bc
    ret nz

    ret nz

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop

jr_065_6190:
    ld bc, $7e01
    rst $38
    rst $00
    ld a, $7b
    add h
    rst $38
    add b

jr_065_619a:
    cp a
    ret nz

jr_065_619c:
    adc a
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    adc h
    rst $38
    sbc b
    rst $38
    sbc c
    rst $38
    or c
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    jp $c1ff


    rst $38
    jp $c7ff


    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    sub a
    rst $38
    di
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    push af
    rst $38
    xor b
    rst $38
    di
    rst $38
    rst $08
    rst $38
    sbc [hl]
    rst $38
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    sbc a
    rst $38
    sbc a
    rst $38
    inc e
    rst $38
    ld [$08ff], sp
    rst $38
    rra
    rst $38
    ld e, $ff
    inc e
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    sub d
    rst $38
    or e
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add e
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
    rst $08
    rst $38
    jp $c1ff


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    call nz, $c4ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add sp, -$01
    cp $ff
    ld b, h
    cp e
    nop
    rst $38
    ld c, b
    or h
    nop
    ld hl, sp+$00
    pop af
    nop

jr_065_624b:
    ei
    ld [bc], a
    rst $30
    ld [bc], a
    ei
    call nz, $803d
    ld a, c
    add hl, de
    ld a, [$9e9d]
    ld de, $1116
    ld [de], a
    reti


jr_065_625d:
    jp c, $e625

    db $10
    db $d3
    nop
    add e
    ld [bc], a
    sub l
    nop
    cp a
    ld b, b
    rst $18
    nop
    rst $30
    ld b, b
    cp a
    nop
    rrca
    ld h, c
    ld l, [hl]
    daa
    ld l, b
    rra
    db $10
    ld c, $31
    ld e, b
    ld h, a
    ret c

    rst $20
    sbc b
    rst $20
    db $10
    ld l, a
    db $10
    rst $28
    jr c, jr_065_624b

    jr z, jr_065_625d

    adc $f1
    ld c, a
    ld [hl], b
    ld l, a
    ld d, b
    cpl
    ld d, b
    rst $08
    or b
    ld c, a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add sp, -$01
    ret z

    rst $38
    ret


    rst $38
    add c
    rst $38
    nop
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    cp b
    rst $38
    add sp, -$01
    db $eb
    rst $38
    jp hl


    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    call nz, $82ff
    rst $38
    add d
    rst $38
    add h
    rst $38
    and h
    ld a, e
    add h
    ld a, e
    adc c
    db $76
    sbc c
    ld h, [hl]
    di
    inc c
    rst $20
    jr jr_065_6324

    cp b
    ld c, [hl]
    or c
    ld b, h
    rst $38
    ld b, h
    rst $38
    sbc b
    rst $38
    or c
    rst $38
    inc sp
    rst $38
    ld h, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    db $e3
    rst $38
    ld l, e
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    or b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    di
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    pop de
    rst $38
    ld a, [c]
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$feff]
    rst $38
    db $fd
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

jr_065_6324:
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    cp e
    rst $38
    ei
    rst $38
    ei
    rst $38
    dec sp
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
    rrca
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ld a, b
    rst $38
    ld d, e
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    rrca
    rst $38
    ld e, $ff
    dec h
    rst $38
    inc hl
    rst $38
    ld h, a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec c
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
    rra
    rst $38
    ld a, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    ld l, a
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
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    inc a
    rst $38
    inc a
    rst $38
    jr @+$01

    jr @+$01

    sub b
    rst $38
    ldh a, [rIE]
    jp hl


    rst $38
    ret


    rst $38
    ret z

    rst $38
    adc b
    rst $38
    ld [$0cf7], sp
    di
    inc c
    di
    inc e
    db $e3
    inc c
    di
    inc c
    di
    dec c
    di
    ld [hl+], a
    rst $18
    add c
    rst $38
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    pop hl
    rst $38
    ld h, c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rra
    rst $38
    inc c
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    db $fd
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
    rst $28
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, [c]
    rst $38
    add d
    rst $38
    ld c, $ff
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    rst $20
    rst $38
    call nz, $c3ff
    rst $38
    adc [hl]
    rst $38
    inc c
    rst $38
    ld d, e
    rst $38
    rst $00
    rst $38
    add d
    rst $38
    inc e
    rst $38
    ld sp, $c3ff
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    or b
    rst $38
    and b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    db $fc
    rst $38
    inc e
    rst $38
    ld e, $ff
    rra
    rst $38
    scf
    rst $38
    scf
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ld sp, hl
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
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    ld [$f8ff], a
    rst $38
    rst $30
    rst $38
    rst $00
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    db $dd
    rst $38
    call z, $deff
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    add e
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    ccf
    rst $38
    ccf
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
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    or $ff
    cp $ff
    rst $38
    rst $38
    dec sp
    rst $38
    ld [hl], b
    rst $38
    rst $20
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, [c]
    rst $38
    rst $20
    rst $38
    ld b, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld a, h
    rst $38
    db $e3
    rst $38
    rst $10
    rst $38
    call z, $d8ff
    rst $38
    db $10
    rst $38
    ld [hl], c
    rst $38
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld sp, hl
    rlca
    db $e3
    rra
    ld c, b
    cp a
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp $ff
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
    db $fd
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add a
    rst $38
    add a
    rst $38
    cp a
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
    db $fd
    rst $38
    ld [hl], e
    rst $38
    ld a, d
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    add a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    or e
    rst $38
    and a
    rst $38
    ccf
    rst $38
    ld a, $ff
    cp $ff
    cp $ff
    or $ff
    ld l, [hl]
    rst $38
    ld [hl+], a
    rst $38
    ld h, $ff
    ld h, [hl]
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    and a
    rst $38
    pop hl
    rst $38
    push hl
    rst $38
    sbc a
    rst $38
    dec a
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    dec sp
    rst $38
    ldh a, [rIE]
    cp $ff
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $30
    rst $38
    di
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
    jr jr_065_6673

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_065_6683

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_065_6693

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_065_66a3

    ld [hl-], a

jr_065_6673:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_065_66b3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_065_6683:
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

jr_065_6693:
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

jr_065_66a3:
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

jr_065_66b3:
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
    jr jr_065_6773

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_065_6783

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_065_6793

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_065_6773:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0101

jr_065_6783:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101

jr_065_6793:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $06
    inc bc
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
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    inc b
    inc b
    inc bc
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
    ld [bc], a
    inc bc
    inc b
    ld b, $03
    inc bc
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
    ld [bc], a
    rlca
    rlca
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    dec c
    ld a, [bc]
    dec c
    dec c
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
    add hl, bc
    add hl, bc
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $20
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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
    cp $ff
    xor $ff
    rst $08
    rst $38
    add [hl]
    rst $38
    sub d
    rst $38
    sbc b
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld a, [c]
    rst $38
    ld a, [$9aff]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [$f2ff]
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    or $ff
    rst $20
    rst $38
    db $e3
    rst $38
    ld [hl], e
    rst $38
    ld sp, $30ff
    rst $38
    db $10
    rst $38
    inc e
    rst $38
    ld c, $ff
    add [hl]
    rst $38
    adc h
    rst $38
    push bc
    rst $38
    push bc
    rst $38
    ld h, a
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
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
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
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    jp Jump_065_43ff


    rst $38
    ld b, e
    rst $38
    and a
    rst $38
    add c
    rst $38
    jp Jump_065_43ff


    rst $38
    inc e
    rst $38
    ld c, h
    rst $38
    ld l, d
    rst $38
    ld h, d
    rst $38
    ld [hl], c
    rst $38
    jr c, @+$01

    ld a, $ff
    scf
    rst $38
    inc sp
    rst $38
    sbc a
    rst $38
    ld a, a
    add b
    cp [hl]
    ld b, c
    cp h
    ld b, e
    ld a, e
    add a
    pop af
    rrca
    rst $30
    rrca
    ld l, h
    sbc a
    ld [hl], b
    sbc a
    jp $873c


    ld a, b
    dec l
    ld a, [c]
    ld c, b
    rst $30
    ld d, c
    rst $28
    xor c
    rst $18
    db $10
    rst $38
    ld [hl], d
    rst $38
    cp $f7
    ret z

    rst $30
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    inc c
    rst $38
    dec sp
    db $fc
    or a
    ld a, b
    cpl
    ldh a, [$1f]
    ldh [$7f], a
    add b
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    push hl
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
    ld a, $ff
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    adc a
    rst $38
    add a
    rst $38
    add d
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $20
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
    ld e, $ff
    rra
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc b
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
    ld c, a
    rst $38
    ld e, a
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    cp c
    rst $38
    add hl, sp
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
    rst $28
    rst $38
    rst $20
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $28

jr_065_6a41:
    rst $38
    rst $20
    rst $38
    rst $28

jr_065_6a45:
    rst $38
    rst $08

jr_065_6a47:
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [c], a
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    pop af
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    jr nc, jr_065_6a45

    jr nc, jr_065_6a47

    jr c, jr_065_6a41

    ld a, c
    add a
    ld hl, sp+$07
    ldh [$1f], a
    jr nc, @+$01

    ld b, a
    ld hl, sp-$21
    ldh [$3c], a
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld a, $c1
    add e
    ld a, h
    add e
    ld a, h
    ld b, e
    db $fc
    ld bc, $00fe
    rst $38
    inc b
    ei
    nop
    rst $38
    ld [bc], a
    rst $38
    ld l, $ff
    ld e, a
    db $fc
    ld a, a
    ld hl, sp-$01
    ldh a, [$de]
    pop hl
    cp a
    ret nz

    ld [hl], c
    adc [hl]
    pop af
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    ld h, [hl]
    rst $38
    ld l, a
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
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    ld a, a
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    jr nc, @+$01

    db $10
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    db $fc
    rst $38
    cp $ff
    ld [c], a
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [c], a
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    di
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    di
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    dec a
    rst $38
    dec c
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ccf
    rst $38

jr_065_6b58:
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38

jr_065_6b66:
    ld b, a
    rst $38
    sbc a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld [hl], a
    rst $38
    dec sp
    call nz, Call_065_7e81
    ld de, $76fe
    ld sp, hl
    sbc a
    ldh [$73], a
    adc h
    sbc a
    ld h, b
    rra
    ldh [$7e], a
    add c
    rst $38
    nop
    ld hl, sp+$07
    inc b
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    db $fc
    rst $38
    call nz, $c2ff
    db $fd
    inc de
    db $ec
    rst $20
    jr jr_065_6b66

    jr nc, jr_065_6b58

    ld h, b
    ld e, a
    ldh [$3f], a
    ret nz

    ld [hl], e
    adc h
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    add hl, de
    rst $38
    jr @+$01

    jr @+$01

    rla
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    and a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld [hl-], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    sub d
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    ld a, $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    rst $10
    jr z, jr_065_6c1c

    ld hl, sp+$03
    db $fc
    ld [$08f7], sp
    rst $30

jr_065_6c1c:
    ld c, b
    rst $30
    ld [$08f7], sp
    rst $38
    adc h
    rst $38
    call z, $8cff
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    db $f4
    rst $38
    ret z

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
    and b
    rst $38
    or b
    rst $38
    db $fc
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    or l
    rst $38
    ldh [rIE], a
    or b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    ldh [rIE], a
    ldh a, [rIE]
    add sp, -$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    jp $83ff


    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, h
    add e
    db $ed
    ld [de], a
    and b
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld e, h
    cp a
    jr c, @+$01

    ld a, c
    cp $53
    db $fc
    add h
    ld a, e
    ld sp, hl
    ld b, $e3
    inc e
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
    ld a, [c]
    dec c
    reti


    daa
    pop bc
    ccf
    add c
    ld a, a
    ld bc, $47ff
    cp a
    add a
    ld a, a
    rlca
    rst $38
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    ld [$02ff], sp
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
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    sbc $ff
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    ld [hl], h
    rst $38
    ld h, b
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld de, $11ff
    rst $38
    ld de, $31ff
    rst $38
    inc sp
    rst $38
    inc hl
    rst $38
    ld hl, $63ff
    rst $38
    dec bc
    rst $38
    inc hl
    rst $38
    ld [de], a
    rst $38
    ld e, $ff
    cp $ff
    rst $20
    rst $38
    ld [hl], $ff
    ld a, $ff
    adc [hl]
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    adc c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    jr c, @+$01

    add hl, sp
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ld e, $ff
    dec e
    rst $38
    dec e
    rst $38
    sbc h
    rst $38
    cp h
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, $ff
    ld [de], a
    rst $38
    ld [hl], c
    rst $38
    db $10
    rst $38
    inc bc

jr_065_6d5d:
    rst $38
    dec de
    rst $38
    ld a, [$fb05]
    inc b
    add hl, sp
    add $3d
    jp nz, $8679

    inc b
    ei
    ret nz

    ccf
    ld b, a
    cp a
    pop de
    cpl
    ld c, a
    or e
    jr jr_065_6d5d

    ei
    rlca
    rst $00
    ccf
    add $3f
    sbc h
    ld l, a
    ld [$11ff], sp
    cp $d0
    ccf
    jr nc, @+$01

    inc de
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    xor a
    ld e, a
    rrca
    rst $38
    add hl, bc
    rst $38
    add b
    ld a, a
    add h
    ld a, a
    add hl, hl
    cp $06
    ld sp, hl
    ld e, l
    db $e3
    add hl, de
    rst $20
    di
    rrca
    rst $28
    rra
    adc a
    ld a, a
    ld a, $ff
    db $fd
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    ld [c], a
    rst $38
    or $ff
    ld hl, sp-$01
    cp b
    rst $38
    or c
    cp $33
    db $fc
    ld b, a
    ld hl, sp+$0f
    ldh a, [$df]
    ldh [rLCDC], a
    cp a
    inc bc
    db $fc
    rra
    ldh [rNR12], a
    rst $28
    inc bc
    rst $38
    nop
    rst $38
    ld de, $00ef
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
    add b
    ld a, a
    sbc d
    ld l, a
    ld a, [$fa0f]
    rrca
    sub $2f
    ret nc

    cpl
    add h
    ld a, e
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    add c

jr_065_6df3:
    rst $38
    add c

jr_065_6df5:
    rst $38
    add d
    rst $38
    sub [hl]
    rst $38
    or $ff
    ld [hl], h
    rst $38
    inc [hl]
    rst $38
    inc h
    rst $38
    nop
    rst $38
    ld [$09ff], sp
    rst $38
    ld de, $10ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub b
    ld l, a
    cp b
    ld b, a
    pop hl
    ld e, $e9
    ld e, $29
    sbc $20
    rst $18
    jr z, jr_065_6df5

    inc l
    rst $10
    inc [hl]
    rst $08
    jr nc, jr_065_6df3

    or b
    ld c, a
    cp b
    ld b, a
    ld a, c
    add [hl]
    ld bc, $00fc
    db $fd
    and b
    ld e, l
    ld hl, $02df
    db $fd
    add d
    ld a, l
    sub e
    ld l, h
    cp a
    ld b, b
    cp e
    ld b, h
    rst $38
    nop
    db $d3
    inc l
    inc de
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $21ff

jr_065_6e49:
    rst $38
    ld c, a
    rst $38
    and a
    rst $38
    ld [hl+], a
    rst $38
    ld h, d
    sbc l
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $01fe
    cp $03
    cp $00
    rst $38
    daa
    ret c

    ld [c], a
    rra
    ldh [$1f], a
    rst $20
    jr jr_065_6e49

    rra
    ld bc, $86fe
    rst $38
    db $db
    rst $38
    cp b
    rst $38
    dec h
    rst $18
    ldh [rIE], a
    sub b
    rst $38
    daa
    ld hl, sp+$0f
    ldh a, [$0b]
    db $f4
    add $39
    ret z

    scf
    ld d, b
    xor a
    inc b
    rst $38
    ld [$48ff], sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp-$01
    nop
    ccf
    ret nz

    rst $18
    ldh [rVBK], a
    ldh a, [$cf]
    ldh a, [$e3]
    db $fc
    rst $00
    ld hl, sp+$43
    db $fc
    rst $08
    ldh a, [$bf]
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    cp $01
    db $fd
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    ld hl, sp+$07
    ld sp, hl
    ld b, $c3
    inc a
    ld a, a
    add b
    ldh a, [rIF]
    ldh a, [rIF]
    ld e, $e1
    ld e, $e1
    ld e, [hl]
    pop hl
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    inc b
    ei
    ld [de], a
    rst $38
    ld e, $ff
    rra
    cp $1e
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rra
    rst $38
    daa
    rst $38
    rst $20
    ccf
    rst $10
    cpl
    push af
    rrca
    rst $30
    add hl, bc
    ldh a, [rIF]
    ld h, b
    sbc d
    ld h, b
    sbc a
    ld h, d
    sbc a
    ld h, a
    sbc a
    cpl
    rst $08
    ld l, e
    sbc e
    ld [hl], e
    adc a
    ldh [rNR14], a
    nop
    db $fd
    nop
    cp l
    nop
    add sp, $1f
    rst $38

jr_065_6f0a:
    rra
    ld a, a
    dec sp

jr_065_6f0d:
    ei

jr_065_6f0e:
    ld [hl+], a
    and d
    ld b, [hl]
    cp [hl]
    ld hl, sp+$07
    xor $10
    xor d
    ld d, l
    ld [bc], a
    push hl
    jr z, jr_065_6f0a

    jr z, jr_065_6f0d

    jr z, jr_065_6f0e

    nop
    add $00
    and $01
    rst $38
    ld bc, $015f
    ccf
    ld bc, $005f
    sbc h
    nop
    or [hl]
    nop
    rst $30
    dec bc
    db $fc
    dec bc
    db $fc
    add hl, hl
    sbc $f1

jr_065_6f39:
    ld c, $f3
    ld c, $b3
    ld c, [hl]
    or b
    ld c, a
    and b
    ld e, a
    sbc c
    ld a, [hl]
    jp nz, $907d

    ld l, a
    sbc b
    ld h, a
    sub c
    ld l, [hl]
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    adc c
    db $76
    add c
    ld a, [hl]
    add b

jr_065_6f57:
    ld a, a
    add d
    ld a, l
    add c
    ld a, [hl]
    dec b
    rst $38
    inc bc
    rst $38
    rla
    rst $18
    rrca
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_065_6f39

    ld bc, $16ff
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$00
    rst $38
    jr nz, jr_065_6f57

    add b
    ld a, a
    ld [hl], b
    rst $38
    ld h, b
    rst $38

jr_065_6f7e:
    pop de
    cp $c2
    db $fd
    push bc
    ei
    ldh [rIE], a
    ld b, b
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    ldh [$7f], a
    add b
    ld a, a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fd
    inc bc
    ei
    rlca
    ei
    rlca
    ld a, [$fa07]
    rlca
    pop af
    ld c, $f7
    ld [$718e], sp
    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    sub d
    rst $28
    ld [bc], a
    rst $38
    ld c, h
    cp a
    sbc h
    ld a, a
    inc e
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    pop af
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop af
    ld c, $1f
    ldh [$1f], a
    ldh [rIE], a
    nop
    rst $20
    jr jr_065_6f7e

    ld a, h
    ld e, c
    and $d0
    rst $28
    ld c, l
    cp $28
    db $db
    ldh a, [$c1]
    pop hl
    pop hl
    rst $00
    rst $00
    add $c6
    rst $20
    rst $20
    ldh a, [$f0]
    ld h, e
    db $e3
    rla
    rst $30
    dec c
    db $fd
    jr nc, jr_065_7040

jr_065_6ff8:
    cp b

jr_065_6ff9:
    add h
    dec sp
    ld b, a
    or [hl]
    rst $00
    rst $28
    sbc a
    ld c, [hl]
    ld a, $09
    jp hl


    adc [hl]
    ld c, a
    ld l, $ff
    ldh [$fe], a
    and b
    xor [hl]
    adc b
    sbc $08
    ld e, $00
    ld d, $40
    or $00
    xor l
    db $10
    rst $38
    jr nz, jr_065_6ff9

    add l
    or $94
    cp $d0
    cp e
    ld e, b

jr_065_7021:
    ld sp, $c1a8
    ldh [$9d], a
    adc b
    or h
    xor $ee
    add $c6
    db $e3
    db $eb
    ld hl, $02e3
    db $fc
    rst $20
    jr jr_065_6ff8

    inc a
    jp $df3c


    inc a
    db $dd
    ld a, $d5
    ld a, $42
    cp l

jr_065_7040:
    jr nz, jr_065_7021

    ld h, b
    sbc a
    ld b, $ff
    ld c, $ff
    ld a, [de]
    rst $38
    ld d, b
    cp a
    nop
    rst $38
    jr @-$1e

    nop
    rst $38
    ld d, $d6
    rst $08
    ccf
    ld bc, $1ff1
    rst $18
    ld [c], a
    ld e, $e0
    ld a, [$ffff]
    ldh [rIE], a
    db $10
    rst $38
    nop
    rst $28
    nop
    rst $38
    pop hl
    dec e
    nop
    rst $38
    xor b
    rst $38
    add c
    ld a, a
    call z, $ed3f
    rra
    nop
    rst $38
    db $10
    rst $28
    ret nz

    ccf
    add c
    ld a, [hl]
    add e
    ld a, h
    rlca
    ld hl, sp+$25
    ld a, [$e11e]
    ld d, b
    rst $28
    sub b
    rst $28
    and b
    rst $18
    and b
    rst $18
    ld b, b
    cp a
    call z, $c73f
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $18
    ccf
    rla
    rst $28
    rrca

jr_065_709b:
    rst $30
    inc hl
    rst $38
    ld sp, $31ff
    rst $38
    ld [hl], b
    rst $38
    ld h, d
    rst $38
    ld b, a
    cp $25
    cp $65
    cp $67
    db $fc
    ld b, e
    db $fc
    dec bc
    db $fc
    ld b, $f9
    inc d
    ei
    ld bc, $00ff
    rst $38
    jr nz, jr_065_709b

    ld h, b
    sbc a
    ld h, b
    sbc a
    ret z

    rst $38
    ret nc

    rst $38
    add hl, de
    rst $38
    ld [hl], c
    rst $38
    ccf
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    inc a
    rst $38
    add b
    ld a, a
    pop bc
    ccf
    pop af
    rrca
    ld hl, sp+$07
    db $f4
    dec bc
    add h
    ld c, e
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    cp a
    ld b, b
    ccf
    and b
    add b
    rst $38
    sbc b
    and a
    ld [$4134], sp
    ld b, [hl]
    ld [hl], c
    ld a, [hl]
    sbc a
    sub b
    ld a, e
    ld [hl], h
    or b
    cp a
    ld l, b
    ld l, [hl]
    ld [hl], b
    ld [hl], l
    ld b, b
    ld b, a
    add e
    ld a, h
    jp $fe3c


    jp $c7de


    sbc $87
    cp $07
    cp $07
    cp $4b
    cp $13
    sbc $03
    cp $03
    xor $03
    cp $03
    cp $03
    cp $e3
    cp $af
    ld a, [hl]
    rrca
    cp [hl]
    dec bc
    ld a, d
    dec bc
    ld a, [$fe0b]
    dec bc
    cp $03
    ld a, [hl]
    rlca
    ld a, [hl]
    inc bc
    cp $03
    rst $38
    ccf
    ccf
    ret nz

    sub e
    ld l, h
    sbc e
    ld h, h
    dec de
    db $e4
    ld c, e
    db $f4
    dec bc
    db $f4
    ld b, e
    cp h
    inc bc
    db $fc
    dec bc
    db $f4
    rlca
    ld hl, sp+$00
    rst $38
    jr @-$19

    ld bc, $02fd
    rst $18
    daa
    and a
    ld b, $46
    ld [$6e08], sp
    ld l, a
    ld l, c
    ld h, l
    ldh [$fe], a
    ld [hl], d
    ld a, l
    push af
    ld a, [$e901]
    sub a
    rst $28
    dec h
    rst $10
    nop
    db $fc
    ld a, h
    add d
    cp a
    ret nz

    ld a, [bc]
    or l
    ld b, $f9
    ld d, b
    rst $38
    ld h, l
    rst $38
    inc h
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    add b
    ld a, a
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld l, b
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    sub $ef
    or l
    adc $fb
    adc h
    ld [hl], a
    adc b
    ld a, h
    add e
    ld h, c
    sbc a
    pop bc
    ccf
    call $8533
    ld a, e
    add b
    ld a, a
    add d
    ld a, a
    nop
    rst $38
    inc c
    di
    nop
    rst $38
    inc bc
    rst $38
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    db $fc
    inc bc
    ld hl, sp+$07
    ret z

    scf
    ret z

    scf
    ret


    scf
    call z, Call_065_4433
    cp e
    db $fc
    inc bc
    db $fd
    inc bc
    ld e, [hl]
    and c
    adc [hl]
    pop af
    inc de
    db $fc
    adc b
    ld l, d
    ld bc, $80fd
    ld c, l
    inc bc
    db $fc
    jr @-$05

    ld e, $fe
    ld bc, $60c9
    cp c
    inc bc
    sbc $58
    cp h
    ldh [$1f], a
    swap h
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    and $ff
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld e, a
    ldh [rKEY1], a
    ld a, [c]
    ld e, a
    ldh [rVBK], a
    ldh a, [rVBK]
    ldh a, [rBGP]
    ld hl, sp+$4b
    db $f4
    ld b, a
    ld hl, sp+$43
    db $fc
    ld b, d
    db $fd
    ld b, c
    cp $40
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    jr z, @+$01

    jr c, @+$01

    cp e
    rst $38
    cp $ff
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp $ff
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
    rra
    ldh [rIF], a
    ld [hl], b
    db $e3
    db $fc
    or a
    cp b
    ld b, b
    ld e, a
    rlca
    rst $38
    ld l, $b1
    ld l, b
    ld l, a
    ld a, [$fffa]
    rst $38
    ld [$e6f7], sp
    rra
    nop
    cp $fd
    cp $f0
    rst $38
    ld sp, hl
    ei
    jp $f0eb


    ld c, $39
    rst $00
    pop hl
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ld [hl+], a
    db $fd
    nop
    rst $38
    ld d, a
    xor [hl]
    call Call_000_3d3e
    cp $1e
    db $fd
    ld a, [de]
    db $fd
    ld [hl+], a
    db $fd
    xor h
    ld a, a
    ld l, d
    sbc l
    ld [bc], a
    db $fd
    ld bc, $31fe
    cp $e3
    db $fc
    rst $30
    ld hl, sp-$12
    pop af
    sbc [hl]
    pop hl
    ld e, $e1
    sbc [hl]
    ld h, c
    ld e, a
    and b
    ld b, $f9
    dec b
    ei
    inc b
    ei
    rlca
    ei
    adc h
    di
    sbc $e1
    ccf
    ret nz

    ld b, a
    cp b
    rlca
    ld hl, sp+$07
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$7f
    ldh a, [rIE]

jr_065_72b3:
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$6f]
    ldh a, [$df]
    ldh [$1f], a
    ldh [rTAC], a
    ld hl, sp-$69
    ld a, b
    adc a
    ld [hl], b
    rrca
    ldh a, [rP1]
    rst $38
    inc b
    ei
    db $10
    rst $38
    ld bc, $84ff
    rst $38
    ld c, $ff
    ld c, [hl]
    rst $38
    ld d, d
    db $d3
    ld [hl], b
    push af
    ld a, [bc]
    adc e
    adc e
    dec bc
    and b
    ld h, b
    db $e4
    daa
    ld b, b
    jr nz, jr_065_72e6

    pop bc

jr_065_72e6:
    ld [bc], a
    add d
    add b
    ld a, a
    jr c, jr_065_72b3

    ld [$80f7], sp
    ld a, a
    rst $38
    ret nz

    db $eb
    nop
    or $00
    ei
    ld bc, $00ff
    rst $38
    nop
    ldh [rIE], a
    nop
    rst $38
    rst $38
    nop
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec bc
    db $fd
    ld [de], a
    db $fd
    ld a, [de]
    db $fd
    inc b
    rst $38
    ld [bc], a
    db $fd
    ld a, [bc]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    add e
    ld a, h
    ld b, d
    cp l
    and e
    ld e, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    ldh [rIE], a
    call nc, $a0ff
    rst $38
    db $e4
    rst $38
    cp h
    rst $38
    db $f4
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    ld bc, $e8fe
    push af
    add a
    rst $20
    inc l
    call c, Call_000_1d0d
    ld b, d
    ld d, [hl]
    dec bc
    rst $38
    dec de
    rst $20
    inc hl
    ccf
    rrca
    rst $08
    ld h, $e6
    db $fc
    rst $38
    adc $cf
    rst $18
    rst $18
    ld hl, sp-$03
    cp $ff
    ld a, b
    rst $38
    jr c, @+$01

    rrca
    rst $38
    dec de
    rst $20
    inc b
    ei
    nop
    rst $38
    ld [$87f7], sp
    ld hl, sp+$07
    ld hl, sp+$06
    ld sp, hl
    inc d
    ei
    db $e4
    ei
    add b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $02fe
    rst $38
    add e
    rst $38
    rlca
    rst $38
    nop
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
    db $fd
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    pop af
    rrca
    pop hl
    rra
    rst $20
    rra
    xor $1f
    call z, $feff
    rst $38
    rst $30
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld [$e0f7], sp
    rst $38
    ldh a, [rIE]
    ld [hl], b
    ld [hl], a
    ld hl, sp+$06
    ld bc, $c3fe
    db $db
    cp h
    cp l
    ld a, [hl]

jr_065_73e1:
    adc [hl]
    ld a, c
    adc c
    ld b, b
    cp l
    ld b, d
    or e
    nop
    ld c, a
    ld [$13fe], sp
    xor h
    rra
    and b
    rst $38
    rst $38
    inc a
    inc a
    sbc l
    sbc l
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    db $eb
    rst $38
    nop

jr_065_7400:
    rst $10
    jr z, jr_065_73e1

    ld a, a
    ld [bc], a
    rst $38
    jr z, @+$01

    and h
    ld a, a
    sub b
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
    adc d
    ld [hl], l
    xor d
    ld d, l
    sub a
    ld l, b
    adc l
    ld [hl], d
    rst $00
    jr c, jr_065_7400

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor b

Call_065_743f:
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    inc b
    cp h
    nop
    ld [bc], a
    ld a, [$eaca]
    rst $00
    rst $38
    add sp, -$15
    ld d, h
    call c, Call_065_7775
    call z, Call_000_07f3
    scf
    ld [$777b], sp
    adc a
    ld e, $de
    nop
    cp $46
    ld b, a
    nop
    rst $38
    rst $28
    rra
    srl a
    db $10
    rst $38
    rst $18
    ldh [$cc], a
    rst $38
    ld e, $ff
    nop
    rst $38
    ld bc, $21fe
    sbc $00
    rst $38
    ld bc, $1cfe
    rst $38
    jr nc, @+$01

    reti


    cp $d5
    cp $dd
    cp $bd
    cp $f0
    rst $38
    db $e4
    ei
    ret


    rst $30
    ld [bc], a
    rst $38
    ld b, b
    cp a
    ldh [$1f], a
    srl h
    rlca
    ld hl, sp+$1f
    ldh [rSVBK], a
    adc a
    and $1f
    adc $3f
    call c, $bc3f
    ld a, a
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    ld a, e
    add c
    ld a, [hl]
    inc bc
    db $fc
    ld b, e
    cp h
    ret z

    ccf
    cp $01
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$3b
    db $fc
    inc bc
    cp h
    inc a
    jp Jump_065_4738


    db $fc
    ld [bc], a
    ld a, h
    add e
    add [hl]
    add [hl]
    sbc d
    sbc d
    db $10
    rla
    add b
    ld l, a
    ld a, h
    add e
    inc c
    di
    dec a
    jp nz, $38ff

    cp a
    nop
    ei
    ld [bc], a
    ei
    ld b, e
    rst $38

jr_065_74f9:
    nop
    rst $38
    nop
    inc e
    rst $38
    nop
    rst $38
    rst $18
    jr nz, @+$04

    db $fd
    ld bc, $05fe
    ld a, [$fd02]
    dec b
    ld a, [$fe01]
    dec b
    ld a, [$05fa]
    add sp, $17
    ld l, b
    sub a
    ld b, b
    cp a
    jr nz, jr_065_74f9

    ld b, b
    cp a
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    daa
    rst $38
    rrca
    rst $38
    ld d, a

jr_065_753d:
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_065_7545:
    rst $38
    rst $38
    sbc a
    rst $38
    nop
    db $fd
    jr c, jr_065_753d

    nop
    ld b, b
    nop
    nop
    db $eb
    add hl, sp
    push bc
    ldh [$e8], a
    ld c, a
    rst $08
    ld [$be57], sp
    pop bc
    jr jr_065_7545

    rrca
    ld a, a
    ld b, c

jr_065_7561:
    ld a, a
    ld hl, sp-$01
    rrca
    rst $38
    nop
    ccf
    ld a, a
    add b
    rrca
    ldh a, [$f8]
    rst $38
    ld [hl], b
    rst $38
    ld a, [de]
    db $fd
    cp [hl]
    ld a, a
    ld b, b
    cp a
    inc hl
    call c, $ff00
    add c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_065_7561

    pop af
    rrca
    pop hl
    rra
    srl a
    ret c

    ccf
    add hl, de
    cp $37
    ld hl, sp+$18
    rst $38
    ld e, $ff
    sbc [hl]
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    rst $30
    ld [$00ff], sp
    ld l, a
    sub b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rNR22], a
    add sp, $4f
    or b
    rrca
    ldh a, [rTAC]

jr_065_75ad:
    ld hl, sp+$2f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rSB]
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    inc b
    ei
    add e
    ld a, h
    rst $28
    db $10
    reti


    ld h, $70
    adc a
    pop hl
    rra
    ld bc, $11ff
    rst $28
    ld bc, $0fff
    rst $38
    adc a
    ld a, a
    ld c, a
    cp a
    rlca
    ld a, a
    rlca
    rst $38
    ld [hl], e
    sub e
    sbc c
    cp e
    ld de, $0071
    add b
    inc bc
    sub e
    inc c
    db $fc
    rlca
    sub a
    dec [hl]
    and l
    ld h, a
    rst $20
    ld d, [hl]
    sub $81
    add c
    add e
    add e
    inc hl
    inc hl
    ei
    ei
    cp c
    cp c
    ld l, c
    ld l, c
    ld sp, hl
    ld a, c
    ld a, b
    ld hl, sp-$07
    ld a, c
    ld sp, hl
    ld a, c
    pop hl
    ld h, c
    db $ec
    ld l, h
    call z, $dc4c
    ld e, h
    ld hl, sp+$78
    ld hl, sp+$78
    ld c, h
    add b
    ld e, c
    add b
    ld a, a
    add b
    ld e, a
    add b
    ld a, a
    add b
    ld a, a
    and $7e
    cp b
    ld a, a
    add b
    add b
    ld e, [hl]
    add d
    ld e, [hl]
    add d
    ld e, [hl]
    add b
    ld a, h
    sub b
    ld l, e
    ret nz

    jr c, jr_065_75ad

    ld a, b
    add c
    ld a, a
    adc l
    ld [hl], e
    db $db
    dec h
    or b
    ld c, [hl]
    sub b
    ld l, a
    sub h
    ld l, a
    sub b
    ld l, a
    add b
    ld a, a
    ld [c], a
    rra
    jp hl


    ld e, $81
    ld a, [hl]
    ldh [$1f], a
    inc b
    ei
    jp nz, Jump_000_00df

    rst $28
    ldh [$ef], a
    db $f4
    ei
    ret nz

    rst $38
    ld b, b
    ld e, a
    dec e
    dec a
    xor [hl]
    xor [hl]
    sbc $df
    pop bc
    rst $08
    ld hl, $10ed
    rra
    cp h
    cp l
    ld l, e
    ld a, e
    rst $38
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld d, b
    rst $38
    ld hl, $00fe
    rst $38
    sub d
    ld l, a
    dec hl
    db $fc
    rst $20
    db $fc
    db $eb
    db $fc
    add a
    db $fc
    ld [hl], e
    db $fc
    ret nc

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    or [hl]
    ld sp, hl
    jr c, @+$01

    ld a, b
    rst $38
    ld [hl], c
    cp $06
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
    ld sp, hl
    rst $38
    rst $38
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
    ld h, d
    sbc l
    ld [hl-], a
    call Call_065_4fb0
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    sub [hl]

jr_065_76cf:
    ld a, c
    rlca
    ld hl, sp-$79
    ld hl, sp-$65
    db $fc
    sub e
    db $fc
    sub a
    ld hl, sp-$09
    ld hl, sp-$5f
    cp $89
    or $01
    ld a, [hl]
    nop
    rst $38
    or b
    rst $08
    jr nc, jr_065_7737

    ld h, h
    sbc a
    ld h, b
    rra
    ldh [$9f], a
    jr nz, jr_065_76cf

    ld [$18ff], sp
    ld l, a
    sub b
    adc a
    nop
    ccf
    ld c, b
    ld [hl], a
    ld c, e
    ld h, [hl]
    set 4, [hl]
    add [hl]
    rst $38
    xor [hl]
    rst $18
    ld c, $7f
    ld c, $ff
    ld b, $7f
    add b
    cp a
    add c
    cp [hl]
    add e
    db $ec
    add c
    cp $01
    ld l, $8d
    ld a, [$b8c7]
    dec b
    ld a, d
    ld b, l
    cp d
    dec b
    ld a, d
    add c
    cp [hl]
    nop
    rra
    adc b
    or a
    adc h
    rst $30
    adc h
    rst $00
    nop
    ld a, a
    nop
    rst $38
    nop

jr_065_772b:
    cpl
    add b
    xor a
    nop
    cpl
    db $10
    cp a
    db $10
    rst $38
    adc b
    ld [hl], a
    db $fc

jr_065_7737:
    inc bc
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    jp z, $e875

    ld [hl], a
    xor b
    ld [hl], a
    adc b
    ld [hl], a
    add b
    ld a, a
    db $10
    rst $28
    db $10
    rst $28
    ld d, b
    rst $28
    add h
    ei
    add h
    ei
    add h
    ei
    add [hl]
    ld sp, hl
    rlca
    ld hl, sp-$80
    ld a, a
    jr nc, jr_065_772b

    ld de, $016e
    cp $02
    ld a, l
    ld a, [de]
    ld b, l
    sbc h
    db $e3
    cp $01

jr_065_7768:
    ld e, $e1
    ld b, $f9
    ccf
    ret nz

    inc bc
    db $fc
    ld bc, $2dfe
    cp $f3

Call_065_7775:
    db $fc
    inc bc
    db $fc
    adc a
    ld [hl], b
    add e
    ld a, h
    adc a
    ld [hl], b
    or e
    ld c, h
    jp Jump_065_7d3c


    cp $ed
    cp $f0
    rst $38
    push bc
    rst $38
    ld b, a
    rst $38
    dec bc
    rst $38

jr_065_778e:
    or c
    ld c, a

jr_065_7790:
    add hl, sp
    rst $00
    cp e
    ld b, a
    sbc l
    ld h, e
    and a
    ld a, b
    xor a
    ld [hl], b
    rst $20
    jr c, jr_065_7790

    inc a
    reti


    ld a, $fd
    ld e, $e8
    rra
    cp $0f
    or $0f
    rst $38
    rlca
    cpl
    rst $10
    dec sp
    rst $00
    cp e
    ld b, a
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    sbc a
    ld h, c
    adc [hl]
    ld [hl], c
    xor a
    ld d, b
    rst $08
    jr nc, jr_065_778e

    jr nc, jr_065_7768

    ld b, a
    rlca
    rst $30
    xor a
    ld e, a
    rst $18
    cpl
    rst $20
    rra
    or a
    ld c, a
    or [hl]
    ld c, [hl]
    ld h, [hl]
    sbc [hl]
    ld b, h
    cp h
    db $e4
    inc e
    add $3e
    ld [c], a
    ld e, $c2
    ld a, $c2
    ld a, $ce
    ld [hl], $c5
    dec a
    jp nz, $c03b

    dec a
    add a
    ld a, [hl]
    ld b, $f7
    dec bc
    ld a, [$b243]
    inc bc
    ld a, [c]
    add l
    db $e4
    inc sp
    jp nc, $d330

    inc [hl]
    push de
    or h
    ld d, h
    sub b
    ld [hl], b
    add e
    ld h, e
    add b
    ld h, d
    add b
    ld h, d
    and b
    ld b, c
    and d
    ld b, d
    jp nz, $c422

    inc h
    ldh [rP1], a
    ldh [rP1], a
    ld [$e31a], a
    dec de
    pop hl
    add hl, de
    pop af
    add hl, bc
    di
    dec bc
    pop af
    add hl, bc
    rst $30
    rrca
    di
    dec bc
    rst $30
    rrca
    rst $30
    rrca
    push af
    dec c
    ld [hl], b
    add e
    ld hl, sp+$0a
    ld [hl], e
    adc e
    ld [hl], c
    adc c
    di
    dec bc
    ld a, [c]
    dec bc
    db $f4
    dec c
    or $0e
    db $f4
    dec b
    or $06
    db $76
    adc [hl]
    or $06
    rst $30
    rlca
    rst $30
    rlca
    db $f4
    inc b
    jp nc, $d22a

    ld [hl+], a
    ld [hl], l
    add l
    ld [hl], a
    adc a
    rst $30
    rrca
    ei
    rlca
    ei
    rlca
    jp $d13f


    ccf
    pop de
    ccf
    ld d, c
    cp a
    pop de
    ccf
    pop af
    rra
    db $ed
    inc de
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
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    sbc h
    rst $38
    sbc l
    cp $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    and b
    rst $18
    db $fc
    rst $38
    or e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $28
    rra
    rst $30
    rrca
    ld a, [c]
    rrca
    db $db
    inc h
    db $fc
    inc bc
    or b
    ld c, a
    ld d, d
    xor a
    ld b, e
    cp a
    inc bc
    rst $38
    pop bc
    rst $38
    or b
    rst $38
    db $fc
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    set 7, a
    sub b
    rst $28
    rst $38
    nop
    ld [$0376], sp
    dec bc
    inc bc
    rla
    rrca
    rrca
    jr jr_065_7923

    jr nz, @-$4f

    ld h, b
    rst $20
    ld h, b
    push af
    ld [de], a
    ld [hl], d
    inc b
    ld h, [hl]
    adc c
    db $eb
    add e
    rst $08
    dec b
    ld c, a
    ld c, c
    adc e
    ld l, e
    cp e
    adc d
    ld e, a
    sub c
    or c
    and e
    db $e3
    ld sp, $0171
    rst $28
    inc hl
    cp a
    ld bc, $04af

jr_065_78ed:
    add sp, $00
    db $fc
    ld b, b
    cp h
    nop
    call z, Call_065_7d80
    nop
    db $ec
    inc c
    add b
    inc b
    cp c
    dec c
    and c
    dec c
    pop hl
    jp nz, Jump_065_51c3

    ld d, d
    ld sp, $1532
    ld d, $07
    inc b
    and e
    and h
    scf
    or b
    ld b, d
    call $cf47
    rst $08
    ld c, a
    ld e, a
    rst $18
    ld c, a
    rst $08
    ld e, e
    rst $18
    bit 1, a
    ld c, a
    rst $08
    ld e, e
    rst $18
    dec de
    rra
    dec sp

jr_065_7923:
    ccf
    dec de
    rst $18
    dec sp
    rst $38
    inc l
    xor e
    ld h, $a9
    jr nc, jr_065_78ed

    jr jr_065_794f

    ld b, b
    rst $38
    inc bc
    cp a
    add a
    cp a
    ld c, $3f
    ld c, [hl]
    ld e, a
    rst $08
    rst $18
    adc a
    cp a
    ld c, $3f
    ld a, [hl]
    rst $38
    ld a, b
    ld a, a
    db $fc
    di
    db $ec
    di
    ld hl, sp-$19
    db $e3
    rst $38
    and d
    rst $38
    add e

jr_065_794f:
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    sbc a
    ldh [$a6], a
    reti


    and b
    rst $18
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    add b
    rst $38
    add d
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $dd
    cp $cf
    db $fc
    dec c
    cp $77
    adc [hl]
    ld [hl], c
    adc [hl]
    ld l, a
    sbc [hl]
    ld c, $ff
    ld b, $ff
    add a
    rst $38
    jp $c1ff


    rst $38
    call nz, $c0ff
    rst $38
    jp nz, Jump_000_16ff

    rst $38
    ld [c], a
    rra
    db $ec
    inc de
    rrca
    ldh a, [$df]
    ldh [$ee], a
    pop af
    or $f9
    ld a, [$f9fd]
    cp $f8

jr_065_79af:
    rst $38
    ld hl, $b7df
    rst $08
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
    ld a, a
    rst $38
    rra
    ldh [$2c], a
    rst $18
    ld e, [hl]
    cp a
    dec e
    cp $1a
    db $fd
    ld de, $7dff
    add e
    jr nz, jr_065_79af

    inc l
    rst $18
    ld c, $ff
    rrca
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    cp a
    ld l, a
    ld a, a
    rst $28
    ld a, b
    rst $20
    ld [hl], a
    ld l, a
    ld e, a
    ld a, a
    rra
    ld a, a
    rra
    rst $38
    ld e, a
    cp a
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a

jr_065_7a01:
    ld a, a
    ret nz

jr_065_7a03:
    ccf
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    jp c, $e225

    dec e
    nop
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    jp hl


    sbc $90
    rst $38
    and b
    rst $18
    jr nz, jr_065_7a01

    jr nz, jr_065_7a03

    ret nz

    rst $38
    ld [c], a
    rst $18
    and d
    rst $18
    ld h, [hl]
    sbc a
    inc l
    rst $18
    ld a, [hl+]
    rst $18
    inc l
    rst $18
    inc l
    rst $18
    inc c
    rst $38
    inc c
    rst $38
    inc d
    rst $28
    inc a
    rst $08
    or b
    rst $08
    ld [hl], b
    adc a
    cp $01
    rst $38
    nop
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$2f], a
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$3f]
    ldh [$7f], a
    ldh [$5f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    inc a
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    ld e, $ff
    rlca
    rst $38
    rrca
    rst $38
    add a
    ld a, a
    dec b
    rst $38
    ld b, a
    rst $38
    di
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], a
    ld hl, sp+$3b
    db $fc
    ld e, c
    cp [hl]
    ld a, h
    sbc a
    xor $1f
    xor $1f
    ld l, a
    sbc a
    rra
    rst $28
    scf
    rst $08
    or a
    ld c, a
    rlca
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    push hl
    rst $38
    db $fd
    rst $30
    ld a, [$fbf7]
    rst $30
    rst $28
    di
    inc bc
    db $fc
    rst $28
    ret nc

    rlca
    ld hl, sp+$62
    db $fd
    rst $20
    ld hl, sp-$0f
    cp $f0
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    di
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ret nc

    cpl
    ld a, a
    add b
    cpl
    ret nc

    adc a
    ldh a, [$81]
    cp $c1
    cp [hl]
    dec c
    cp $08
    rst $38
    ld c, $ff
    adc $ff
    cp [hl]
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    ldh a, [rIE]
    ld sp, hl
    cp $fb
    db $fc
    add e
    db $fc
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    ld a, $c1
    ld a, $c1
    rrca
    pop af
    inc d
    ei
    jr @+$01

    ld a, [de]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    jp nz, $863f

    ld a, a
    add [hl]
    ld a, a
    add a
    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, $ff
    inc e
    rst $38
    add hl, bc
    cp $02
    db $fd
    ld [hl], $f9
    ld c, b
    rst $30
    ld d, b
    rst $28
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [c]
    rrca
    and $1f
    db $f4
    rrca
    adc [hl]
    ld a, a
    db $ec
    rra
    adc $3f
    adc [hl]
    ld a, a
    ld e, $ff
    inc c
    rst $38
    inc b
    rst $38
    dec b
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
    add b
    ld a, a
    add b
    ld a, a
    add hl, sp
    add $01
    cp $02
    db $fd
    rlca
    ld hl, sp+$06
    ld sp, hl
    nop
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    ld e, $e1
    inc c
    di
    add h
    ld a, e
    ld h, $d9
    ld h, d
    sbc l
    reti


    and $77
    ld hl, sp-$03
    cp $ff
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
    ld l, a
    sbc a
    inc sp
    rst $08
    ret nz

    ccf
    add hl, de
    cp $bc
    ld a, a
    ld e, a
    cp a
    xor a
    rst $18
    rst $08
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, $ff
    rst $38
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld a, e
    rst $38
    rst $18
    jr nc, jr_065_7be2

    ldh a, [$2b]
    db $f4
    xor a
    ld [hl], b
    cpl
    ldh a, [$7f]
    ldh [rIE], a
    ldh [$f9], a
    and $d9
    and $df
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $30
    ret z

    di
    call z, $ccb3
    rst $38
    add b
    ld h, a
    sbc b

jr_065_7be2:
    ld h, e
    sbc h
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    reti


    ccf
    inc hl
    rst $38
    or b
    ld a, a
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3ffe
    ret nz

    ret nz

    rst $38
    jp nc, $d2ff

    rst $38
    ld [bc], a
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
    add hl, sp
    rst $00
    or c
    rst $08
    or h
    res 7, h
    jp $cfb0


    or b
    rst $08
    pop bc
    cp a
    ld h, b
    sbc a
    ld d, h
    xor a
    call nc, Call_000_062f
    rst $38
    ld c, $ff
    xor $ff
    dec l
    cp $19
    cp $39
    cp $06
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf

jr_065_7c53:
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $08
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    dec de
    db $e4
    rrca
    ldh a, [$1f]
    ldh [rNR23], a
    rst $20
    add hl, sp
    rst $00
    jr jr_065_7c53

    inc a
    jp $c33c


    inc a
    jp $c33d


    dec a
    jp $e11e


    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld [bc], a
    db $fd
    jr c, @+$01

    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    sbc [hl]
    ld a, a
    sbc a
    ld a, a
    rst $00
    rst $38
    ld h, c
    rst $38
    or d
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld a, d
    db $fd
    push bc
    dec sp
    ld a, $c1
    jr c, @-$37

    sub [hl]
    jp hl


    jp nz, $e2fd

    db $fd
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, c
    rst $38
    or b
    rst $38
    pop bc
    rst $38
    push hl
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
    jr jr_065_7cf3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_065_7d03

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_065_7d13

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_065_7d23

    ld [hl-], a

jr_065_7cf3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_065_7d33

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_065_7d03:
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

jr_065_7d13:
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

jr_065_7d23:
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

jr_065_7d33:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e

Jump_065_7d3c:
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

Call_065_7d80:
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
    jr jr_065_7df3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_065_7e03

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_065_7e13

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_065_7e23

    ld [hl-], a

jr_065_7df3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_065_7e33

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_065_7e03:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201

jr_065_7e13:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_065_7e23:
    ld [bc], a
    ld bc, $0202
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0202

jr_065_7e33:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a

Call_065_7e81:
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    dec b
    ld bc, $0101
    ld bc, $0202
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $090a
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
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

Call_065_7f3f:
    ld a, [bc]
    db $10
    rst $38
    inc sp
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    or $ff
    and $ff
    xor $ff
    ld c, $ff
    ld h, a
    sbc [hl]
    ld h, l
    sbc [hl]
    ld a, e
    add h
    ld [hl], a
    adc h
    ld l, a
    sbc h
    sbc a
    ld a, l
    inc e
    rst $38
    jr @+$01

    jr @+$01

    adc h
    ld a, e
    add h
    ld a, e
    sbc $79
    jr nc, @+$01

    jr nc, @+$01

    cp c
    ld a, a
    cp b
    ld a, a
    cp [hl]
    ld a, c
    cp l
    ld a, d
    cp a
    ld a, b
    cp e
    ld a, h
    cp e
    ld a, h
    cp a
    ld a, h
    ld a, l
    cp $7d
    cp $7d
    cp $7e
    rst $38
    cp $ff
    cp e
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    scf
    rst $38
    di
    rst $38
    db $e3
    rst $38
    set 7, a
    ld b, e
    rst $38
    pop af
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec sp
    call nz, $fec1
    pop bc
    cp $dc
    rst $38
    jr c, @+$01

    ld hl, sp-$01
    cp $ff
    db $fc
    rst $38
    ld a, l
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    or c
    ld a, a
    add b
    ld a, a
    add a

Call_065_7fbf:
    ld a, b
    add a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld e, $ff
    sbc h
    rst $38
    add sp, -$01
    ret nz

    rst $38
    ld c, [hl]
    cp a
    ld e, a
    cp $ef
    cp $ef
    cp $ee
    rst $38
    xor $ff
    xor $ff
    and $ff
    and $ff
    and $ff
    db $e3
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    sbc b
    ld h, a
    nop
    rst $38
    nop
    rst $38
    ld l, l
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
