SECTION "ROM Bank $07c", ROMX[$4000], BANK[$7c]

    rst $28
    db $10
    rst $18
    db $20, $df
    db $20, $bf
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, [hl]
    add c
    cp $01
    nop
    rlca
    nop

jr_07c_4013:
    ld d, a
    nop
    ld d, a
    db $10
    ld b, a
    nop

jr_07c_4019:
    ld [hl], a
    nop
    halt
    ld h, [hl]
    nop
    ld b, [hl]
    inc h

jr_07c_4021:
    db $db
    ld c, $f1
    ld c, $f1
    ld c, $f1
    rrca
    ldh a, [$0c]
    di
    dec c
    ld a, [c]
    dec b
    ld a, [$fb04]
    inc c
    di
    dec c
    ldh a, [$0c]
    di
    jr jr_07c_4021

    jr @-$17

    ld [$08f7], sp
    or a
    jr z, jr_07c_4019

    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    jr nc, jr_07c_4013

    db $10

jr_07c_404d:
    rst $20
    nop
    ld [hl], a
    ld b, b
    ccf
    nop
    ld l, a
    nop
    ld a, [hl]
    nop
    ld l, [hl]
    nop
    ld l, $80
    adc h
    inc a
    inc a
    jp $ffc3


    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_07c_404d

    dec hl
    ret nc

    dec e
    ldh [rTAC], a
    ld hl, sp+$01
    cp $00
    rra
    nop
    ld bc, $00c0
    ret z

    jr nc, @-$03

    inc b
    rst $38

jr_07c_4081:
    nop
    rst $38
    nop
    ld [hl], l
    ld a, [bc]
    ld bc, $018e
    ldh a, [rP1]
    cp $40
    rst $38
    jp nc, $ffff

    rst $38
    rst $38

jr_07c_4093:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    inc de
    rst $38
    add b
    ld a, a
    jr nz, jr_07c_4081

    db $f4
    dec bc
    xor $11
    rst $28
    db $10
    db $dd

jr_07c_40a9:
    ld [hl+], a
    db $db
    inc h
    cp e
    ld b, h
    ld [hl], a
    adc b
    rst $28
    db $10
    rst $28
    db $10
    sbc $21
    cp l
    ld b, d
    cp l
    ld b, d
    ld a, e
    add h
    rst $30
    ld [$0877], sp
    xor $11
    sbc $21
    db $dd
    ld [hl+], a
    cp l
    ld b, d

jr_07c_40c8:
    cp e
    ld b, h
    ld [hl], a
    adc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_07c_4093

    ld b, c
    cp l

jr_07c_40d7:
    ld b, d
    ld a, l
    add d
    ld a, e
    add h
    cp e
    inc b
    rst $30
    ld [$08f7], sp

jr_07c_40e2:
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_07c_40c8

    jr nz, jr_07c_40a9

    ld b, c

jr_07c_40ec:
    ld a, [hl]
    add c
    ld a, l
    add d
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    di
    inc c
    rst $20
    jr jr_07c_40e2

    jr jr_07c_40ec

    db $10
    rst $08
    jr nc, @-$1f

    jr nz, @-$20

    ld hl, $41be
    cp [hl]
    ld b, c
    ld a, l
    add d
    ld a, l
    add d
    ei
    inc b
    ei
    inc b
    nop
    ld [hl], e
    nop
    ld [hl], a
    inc b
    ld [hl], e
    ld b, $71
    inc b
    ld [hl], e
    inc b
    inc sp
    ld b, $69
    ld [bc], a
    dec l
    ld [bc], a
    db $ed
    ld b, $e9
    ld [bc], a
    db $ed
    inc c
    ld [c], a
    inc c
    ld a, [c]
    inc c
    db $d3
    inc b
    db $db
    inc b

jr_07c_412f:
    reti


    nop
    db $dd
    nop
    dec [hl]
    nop
    dec a
    nop
    add hl, sp
    nop
    cp e
    jr nz, jr_07c_40d7

    nop
    dec sp
    nop
    add hl, sp
    ld sp, $23ce
    call c, $bc43
    ld b, d
    cp l
    ld b, d
    cp l
    inc b
    ei
    nop
    rst $38
    jr nz, jr_07c_412f

    ld [bc], a
    db $ed
    ld [bc], a
    db $ed
    ld [bc], a
    db $ed
    nop
    rst $18
    nop
    rst $18
    nop
    db $dd
    nop
    db $dd
    ldh [$ed], a
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
    jr nc, @+$11

    ld b, d
    ld bc, $01a4
    db $fc
    inc bc
    ld de, $03ee
    inc a
    ld b, $01
    adc [hl]
    ld bc, $639d
    sbc $23
    sbc $23
    cp e
    ld b, a
    cp c
    ld b, a
    ld a, c
    rlca
    add hl, sp
    rst $00
    ccf
    rst $00
    ld a, [hl-]
    rst $00
    ld a, $c7
    ld a, l
    adc a
    ld a, e
    adc a
    di
    adc a
    rst $30
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, $1001
    nop
    ld b, b
    nop
    ldh [rP1], a
    ret z

    nop
    ret nz

    nop
    and b
    nop
    jr nc, jr_07c_41b0

jr_07c_41b0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld a, [bc]

jr_07c_41b9:
    push af

jr_07c_41ba:
    add b
    ld a, a
    and h
    ld e, e
    ld [hl], b

jr_07c_41bf:
    adc a
    ret nz

    ccf
    ret nc

    cpl
    jp z, $c335

    inc a
    jp nc, $d02d

    cpl
    cp h
    ld b, e
    cp h
    ld b, e
    ld [$40f7], sp
    cp a
    ld [c], a
    dec e
    ld a, [c]
    dec c

jr_07c_41d8:
    db $f4
    dec bc
    db $ec
    inc de
    db $ed
    ld [de], a
    rst $18
    jr nz, jr_07c_41bf

    ld hl, $41be
    cp l
    ld b, d
    ld a, l
    add d
    ld a, e
    add h
    ei
    inc b
    rst $30
    ld [$09f6], sp
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_07c_41d8

    jr nz, jr_07c_41ba

    ld b, b
    cp [hl]
    ld b, c
    ld a, $c1
    ld a, l
    add d
    ld a, l
    add d
    ld sp, hl
    ld b, $fb
    inc b
    ei
    inc b
    db $e3
    inc e
    rst $30
    ld [$58a7], sp
    ld [$08b5], sp
    or e
    jr jr_07c_41b9

    jr c, jr_07c_425b

    ld a, [bc]
    ld [hl], c
    ld [bc], a
    ld a, c
    nop
    ld [hl], e
    ld d, b
    and e
    ld b, b
    or a
    ld b, b
    or a
    add b
    ld a, a
    add b
    ld a, a
    and b
    ld c, [hl]
    nop
    xor $01
    pop hl
    ld bc, $c4cf
    dec sp
    call nz, $413b
    cp [hl]
    pop bc
    ld a, $81
    ld a, [hl]
    and c
    ld e, [hl]
    and c
    ld e, [hl]
    and e
    ld e, h
    inc bc
    db $fc
    ld [hl+], a
    db $dd
    inc bc
    ld [hl], h
    inc bc
    db $f4
    dec b
    ld a, [$be41]
    nop
    rst $38
    adc [hl]
    ld [hl], c
    ld c, $f1
    adc d
    ld h, l
    ld a, [bc]
    db $f4
    ld [$18f6], sp
    rst $00
    nop

jr_07c_425b:
    db $dd
    nop
    sbc l
    nop
    sbc l
    ld b, b
    ld a, a
    ld b, b
    ld c, e
    inc c
    inc c
    ld b, e
    ld b, e
    ld [bc], a
    ld [bc], a
    adc a
    xor a
    ld [$0008], sp
    ret nz

    rrca
    rst $38
    ld l, a
    sbc a
    rst $08
    ccf
    xor a
    ld a, a
    xor a
    ld a, a
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [$0108], sp
    ld bc, $8101
    nop
    nop
    nop
    jr jr_07c_42a1

jr_07c_42a1:
    jr nz, jr_07c_42a7

    ld [hl], h
    nop
    ld a, [c]
    nop

jr_07c_42a7:
    push af
    nop
    ld [$ec00], a
    nop
    call c, $fd00
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    add c
    ld bc, $0080
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    rst $38
    inc b
    rst $38
    add hl, bc
    cp $08
    cp $10
    cp $10
    cp $13
    db $fc
    ld hl, $21fd
    db $fd
    ld h, $f9
    ld b, [hl]
    ei
    ld b, [hl]
    ei
    add b
    rst $38
    add b
    rst $38
    ld [$04f7], sp
    ei
    db $76
    adc c
    ld [c], a
    dec e
    db $ec
    inc de
    db $ec
    inc de
    rst $38
    nop
    call c, $d823
    nop
    db $fc
    nop
    cp $00
    db $fc
    nop
    ld a, d
    ld [bc], a
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld a, [$fb01]
    nop
    or $01
    rst $30
    nop
    and $09
    ld l, l
    nop
    add sp, $01
    ret z

    nop
    ret c

    nop
    ld [bc], a
    call c, $cc12
    ld a, [de]
    call nz, $da04
    nop
    cp $80
    inc a
    add b
    dec a
    add b
    inc a
    nop
    cp c

jr_07c_4322:
    nop
    add hl, sp
    nop
    ld a, e
    jr nz, @+$4d

    nop
    ld a, e
    nop
    ld [hl], a
    nop
    rst $30
    nop
    rst $10
    rst $20
    jr jr_07c_4322

    db $10
    ld l, a
    sub b
    ld h, [hl]
    sbc c
    ld l, b
    sub a
    ret z

    scf
    ret nz

    ccf
    push de
    ld a, [hl+]
    add l
    ld a, d
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add b
    ld a, a
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    cp $01
    rst $30
    nop
    call c, $de02
    ld [bc], a
    sbc a
    ld b, b
    pop de
    jp nz, Jump_07c_5ec2

    ld e, [hl]
    cp a
    cp a
    or c
    or c
    adc a
    adc a
    adc c
    rst $38
    jp z, Jump_000_1bff

    rst $38
    rla
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
    ld a, a
    rst $38
    ld c, a
    rst $38
    xor l
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    db $fd
    ld hl, sp-$01
    ld hl, sp-$05
    ld hl, sp-$05
    ldh a, [$f6]
    ldh a, [$f5]
    ldh [$f4], a
    ldh [$e2], a
    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    add b

jr_07c_43b1:
    add b
    add b
    nop
    jr nz, jr_07c_43b6

jr_07c_43b6:
    inc [hl]
    ld c, b
    ld a, $41
    ld a, [hl]

jr_07c_43bb:
    ld bc, $051a
    ld [c], a
    add c
    add b
    add a
    ldh [$e0], a
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
    add [hl]
    ld b, $01
    ld bc, $0000
    ld bc, $2101
    ld bc, $0111
    nop
    nop
    nop
    nop
    ld b, b
    nop
    adc h
    inc c
    sbc b
    jr jr_07c_43f7

    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_07c_440e

    ld bc, $9100
    nop
    sub e
    nop
    rra
    add b
    daa

jr_07c_43f7:
    nop
    rlca
    nop
    add a
    add b
    add e
    add b
    sbc b
    add b
    ld b, b
    or e
    and b
    ld d, e
    ld [$00ff], sp
    rst $30
    nop
    rst $00
    nop
    rst $28
    nop
    xor a

jr_07c_440e:
    ld [$0826], sp
    rst $00
    ld [bc], a
    db $dd
    nop
    ld e, $06
    ret z

    inc b
    xor d
    nop
    cp l
    jr nz, jr_07c_43bb

    jr z, jr_07c_43b1

    jr z, jr_07c_4437

    nop
    ld a, e
    nop
    ld a, e
    nop
    ld b, e
    nop
    jp nz, $f600

    nop
    and b
    nop
    add b
    and b
    ld e, a
    add b
    ld a, a
    ld b, b
    cp a
    add h

jr_07c_4437:
    ld a, d
    nop
    cp $00
    cp $00
    db $fc
    ld [bc], a
    cp a
    nop
    cp l
    nop
    ei
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, a
    nop
    ld a, e
    nop
    or $00
    ldh a, [rP1]
    ldh [rNR10], a
    ldh a, [rNR11]
    pop de
    inc de
    db $d3
    inc sp
    ld [hl], e
    cp $fe
    rst $38
    rst $38
    rst $28
    rst $28
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
    rst $38
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
    db $f4
    ei
    xor $f1
    xor $f1
    sbc $e1
    rst $18
    ldh [$bf], a
    ret nz

    cp a
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

jr_07c_4499:
    nop
    rst $38
    nop
    rst $38
    nop
    cp d
    nop
    ld sp, hl
    nop
    ld a, a

jr_07c_44a3:
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rst $08
    nop
    daa
    nop
    inc sp
    nop
    dec e
    nop
    ld c, $00
    rlca
    nop
    rra
    nop
    dec c
    nop
    jp $d820


    jr nz, jr_07c_4499

    inc h
    db $db
    inc h
    dec hl
    inc d
    rlc h
    inc sp
    ret nz

    db $ec
    ldh a, [$7b]
    db $fc
    sbc $ff
    ei
    rst $38
    add d
    jp nz, $8282

    add b
    add b
    nop
    ret z

    nop
    ld hl, sp+$00
    jp c, $f600

    nop
    rst $30
    ld a, [bc]
    ld a, [bc]

jr_07c_44e2:
    ld [$0008], sp
    nop
    jr nz, jr_07c_44e8

jr_07c_44e8:
    jr c, jr_07c_44ea

jr_07c_44ea:
    inc c
    nop
    jr jr_07c_44ee

jr_07c_44ee:
    inc a
    nop
    db $fd
    ld [bc], a
    cp $01
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    cp $01
    ld a, h
    add e
    cp $01
    rst $18
    jr nz, jr_07c_44e2

    jr nz, jr_07c_44a3

    ld h, c
    sbc [hl]
    ld h, b
    cp [hl]
    ld b, b
    cp h
    ld b, d
    inc a
    jp $d429


    ld h, c
    sbc h
    ld e, b
    and a
    ret nc

    dec hl
    ret nc

    cpl
    ret nz

    ccf
    or b
    ld c, a
    and b
    ld e, a
    and b
    ld e, a
    ld b, b
    xor a
    nop
    rst $28
    nop
    rst $38
    nop
    sbc $01
    rst $38
    nop
    cp [hl]
    nop
    cp h
    nop
    ld sp, hl
    nop
    ld a, l
    nop
    ld a, e
    nop
    ld a, e
    nop
    rst $38
    nop
    rst $30
    nop
    or $10
    rst $30
    db $10
    rst $38
    nop
    call $cd00
    nop
    sla b
    ld hl, sp+$00
    sbc h
    ld bc, $419f
    ld e, l
    ld [bc], a
    ld a, $83
    and e
    adc a
    rst $28
    dec b
    ld b, l
    dec c
    dec c
    adc e
    adc e
    dec de
    dec de
    ld e, e
    ld e, e
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ld bc, $1eff
    pop hl
    ld e, $e1
    ccf
    ret nz

    rlca
    ld hl, sp+$00
    rst $38
    ld b, b
    cp a
    ld c, b
    or a
    ld d, b
    xor a
    sbc l
    ld h, d
    ld e, b
    and a
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc a
    nop
    rst $28
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    add a
    ld b, b
    or c
    ld b, b
    or h
    ld c, b
    scf

jr_07c_45c7:
    ret z

    sub a
    ld l, b
    daa
    jr jr_07c_45c7

    dec b
    sbc d
    pop hl
    rst $20
    ld hl, sp-$08
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

jr_07c_45e3:
    rst $38
    cp $fe
    db $fc
    db $fd
    ld hl, sp-$05
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    nop
    ld a, l
    nop
    ld a, l
    ld bc, $00fa
    ei
    add b
    ld a, e
    add b
    ld a, a
    sub b
    ld h, a
    or b
    ld b, a
    and b
    ld e, a
    jr nz, jr_07c_45e3

    nop
    rst $28
    nop
    rst $08
    jr nz, @+$01

    nop
    rst $18
    nop
    cp a
    ld b, b
    ld a, [$be00]
    add b
    cp $80
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    inc b
    rst $38
    nop
    or c
    nop
    di
    nop
    ld a, [c]
    ld [$00ea], sp
    ldh [rP1], a
    rlc b
    pop bc
    nop
    ret nz

    ld hl, $31e1
    or c
    ld e, h
    rst $38
    ld [hl+], a
    rst $38
    ld a, [c]
    rst $38
    adc [hl]
    rst $38
    sbc h
    rst $38
    inc a
    rst $38
    cp [hl]
    rst $38
    sbc $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    or e
    ld c, a
    xor d
    ld d, l
    push af
    ld a, [bc]
    ld a, [$0f05]
    ldh a, [rP1]
    rst $38
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
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nc

    cpl
    jp hl


    ld d, $e4
    dec de
    ld a, [$fd05]
    ld [bc], a
    cp $01
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rrca
    add b
    ld h, e
    add b
    ld l, b
    sub b
    ld h, [hl]
    sbc b
    ld l, [hl]
    sub c
    adc [hl]
    ld [hl], c
    ld [c], a
    dec e
    inc a
    jp $fbc4


    pop hl
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    or c
    nop
    ld a, [hl]
    nop
    rst $38
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
    nop
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
    jr jr_07c_4723

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07c_4733

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07c_4743

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07c_4753

    ld [hl-], a

jr_07c_4723:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07c_4763

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_07c_4733:
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

jr_07c_4743:
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

jr_07c_4753:
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

jr_07c_4763:
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
    add a
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
    add a
    add a
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c

Call_07c_4800:
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    add a
    add a
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07c_4838

    add a
    add a
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
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07c_4837

    ld b, $06
    ld b, $06
    ld b, $06

jr_07c_4837:
    dec b

jr_07c_4838:
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0006
    ld b, $06
    ld b, $06
    ld b, $05
    dec b
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld b, $06
    ld b, $00
    ld b, $05
    ld b, $05
    dec b
    ld bc, $0101
    ld b, $04
    ld bc, $0601
    ld b, $06
    ld b, $06
    ld b, $06
    dec b
    dec b
    ld bc, $0607
    ld [bc], a
    inc b
    ld bc, $0501
    ld b, $06
    dec b
    dec b
    ld b, $07
    inc bc
    nop
    dec b
    rlca
    inc b
    ld [bc], a
    inc b
    inc b
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    rlca
    inc bc
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    ld bc, $0505
    dec b
    nop
    nop
    nop
    ld bc, $0503
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0505
    dec b
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $05
    dec b
    dec b
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld b, $05
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $05
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld b, $02
    ld b, $02
    ld [bc], a
    ld b, $05
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0000], sp
    dec c
    dec c
    dec c
    ld c, $0a
    ld a, [bc]
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0000], sp
    dec c
    dec c
    dec c
    ld c, $0e
    ld a, [bc]
    ld c, $0d
    dec c
    dec c
    dec c
    ld [$0808], sp
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $08
    ld [$0808], sp
    ld [$0d0d], sp
    ld [$0d0d], sp
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    rlca
    ldh a, [$a7]
    ld e, b
    ld b, e
    cp h
    sub e
    ld l, h
    di
    ld [$20db], sp
    ei
    nop
    ei
    nop
    ld sp, hl
    ld [bc], a
    ld sp, hl

jr_07c_4983:
    ld b, $f9
    ld b, $79
    add h
    ld a, l
    add b
    ld a, h
    inc bc
    inc [hl]
    ld c, e
    inc l
    ld d, e
    inc d
    ld l, e
    ld l, $51
    inc d

jr_07c_4995:
    xor d
    ld [bc], a
    cp h
    inc d
    xor e
    db $10
    xor a
    adc b
    ld d, a
    adc b
    ld d, a
    nop
    rst $18
    add b
    ld e, a
    ret nz

    rra
    ret nz

    rra
    ret nz

    ccf
    add b
    ld l, a
    ldh [$1f], a
    ld h, c
    sbc [hl]
    ld h, b
    adc a
    ld h, c
    sbc [hl]
    nop
    rst $30
    ret z

jr_07c_49b7:
    dec sp
    ld h, b
    sub e
    jr nc, jr_07c_4983

    jr nz, jr_07c_4995

    add c
    db $76
    and b
    ld e, e
    or b
    ld c, e
    ld a, b
    add e
    cp b
    ld b, e
    ld hl, sp+$03
    ret c

    ld hl, $01f8
    ld e, b
    and l
    jr jr_07c_49b7

    inc e
    and c
    inc e
    ld b, b
    add hl, bc
    ld [hl], l
    add c
    db $fd
    add c
    db $fd
    ld bc, $013b
    ccf
    inc a
    add e
    ld [bc], a
    or d
    ld b, b
    ld b, c
    nop
    stop
    nop
    nop
    ld bc, $4f40
    nop
    rra
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    inc [hl]
    rst $38
    db $10
    rst $38
    sub h
    rst $38
    sbc d
    rst $38
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $cf
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ei
    nop
    pop bc
    nop
    ld [bc], a
    nop
    inc d
    nop
    ld [$ae00], a
    nop
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    inc bc
    nop
    inc c
    nop
    jr nc, jr_07c_4a2e

jr_07c_4a2e:
    pop bc
    nop
    dec b
    inc bc
    rla
    rrca
    rst $18
    ccf
    rra
    rst $38
    ccf
    jp $c03f


    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [$31]
    adc $bc
    db $e3
    ld l, e
    db $fc
    ld l, b
    rst $38
    ld l, l
    rst $38
    inc a
    rst $38
    adc l
    rst $38
    add [hl]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    sub c
    rst $38
    add d
    rst $38
    ld b, h
    rst $38
    ld b, b

jr_07c_4a63:
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ld a, [bc]
    rst $38
    ld b, c
    rst $38
    ld c, c
    rst $38
    ld a, [bc]
    rst $38
    rst $08
    jr nz, @-$2f

    jr nc, jr_07c_4a63

    ld de, $10ef
    xor $01
    db $eb
    inc b
    rst $28
    db $10
    rst $28
    db $10
    jr jr_07c_4a82

jr_07c_4a82:
    adc b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    nop
    nop
    ld b, b
    nop
    inc b
    nop
    ei
    inc b
    db $db
    inc h
    db $db
    inc h
    ld e, c
    and [hl]
    ld e, e
    and h
    ld e, a
    and b
    ld a, l
    add d
    dec e
    ld h, b
    ld e, h
    inc hl
    dec l
    ret nc

    dec l
    ret nc

    inc a
    jp $833c


    sbc b
    daa
    ld a, [hl-]
    add l
    sbc d
    dec h
    sbc b
    ld b, a
    sbc d
    ld b, l
    sbc b
    ld b, a
    inc c
    db $d3
    inc c
    jp $e30c


    inc c
    db $e3
    add d
    ld l, l
    jp nz, Jump_000_002d

    rst $28
    ld b, c
    xor [hl]
    ld b, b
    cp a
    nop
    rst $28
    nop
    rst $38
    inc b
    di
    inc b
    di
    ld b, $f1
    nop
    sub a
    nop
    and a
    nop
    inc sp
    nop
    inc bc
    nop
    inc bc
    inc b
    rlca
    rlca
    rlca
    db $10
    stop
    inc c
    nop
    ld h, b
    nop
    nop
    nop
    dec c
    add b
    db $fd
    nop
    ld a, l
    nop
    ld a, $01
    ccf
    ld b, c
    rst $38
    ld l, c
    rst $38
    ld b, c
    rst $10
    ld l, c
    jp hl


    ld l, a
    rst $28
    ld a, l
    db $fd
    ld [hl], b
    rst $38
    ld hl, sp-$01
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    db $fc
    nop
    call z, $3000
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ld b, b
    nop
    ld [$a000], sp
    nop
    add b
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [$3000], sp
    nop
    add c
    nop
    dec b
    inc bc
    rla
    rrca
    ld e, a
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    rst $38
    rst $38
    add l
    rst $38
    db $10
    ld a, a
    nop
    rrca
    nop
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ld h, b
    db $e3
    inc e
    inc e
    db $e3
    inc sp
    db $fc
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    daa
    rst $38
    dec de
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    cp c
    rst $38
    ld de, $20ff
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add hl, hl
    jp nc, Jump_000_1229

    dec sp
    ret nz

    add hl, sp
    add $3d
    add d
    dec a
    add d
    cp l
    nop
    cp l
    nop
    add l
    ld a, b
    add c
    ld a, h
    sub h

jr_07c_4b85:
    ld l, c
    add b
    ld a, l
    add b
    ld a, a
    ret c

    rlca
    ret nz

    ld e, $92
    ld c, l
    jp z, $ce34

    ld sp, $35ca
    xor $11
    db $ec
    inc de
    db $ec
    inc de
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    add hl, de
    nop
    db $dd
    nop
    ld c, a
    nop
    ld c, a
    nop
    rrca
    nop
    ld c, e
    nop
    dec bc
    nop
    adc a
    nop
    ld d, b
    xor a
    ld [hl], b
    adc a
    jr nc, jr_07c_4b85

    ld d, b
    add hl, hl
    ld e, b
    inc hl
    db $10
    ld l, e
    nop
    ld a, d
    ld [$b973], sp
    ld b, [hl]
    cp l
    ld b, d
    cp l
    ld b, d
    or l
    ld c, d
    cp l
    ld b, d
    dec a
    jp nz, $629d

    sbc b
    ld h, a
    add b
    inc e
    jr nz, @-$12

    ld hl, $00fd
    call nc, $c101
    ld bc, $3f81
    ccf
    cp $fe
    nop
    jr nz, jr_07c_4be3

jr_07c_4be3:
    ld bc, $0f00
    inc b
    ei
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ld a, [c]
    nop
    sbc d
    inc b
    ld e, h
    add h
    add h
    inc h

Jump_07c_4bff:
    inc h
    di
    rrca
    rrca
    ldh a, [$e0]
    rra
    rst $38
    nop
    add sp, $00
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
    nop
    ld [bc], a
    nop
    ld [$2000], sp
    nop
    add c
    nop
    dec b
    inc bc
    rla
    rrca
    ld e, a
    ccf
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
    cp $fc
    ld sp, hl
    ld hl, sp-$0f
    ldh a, [$e3]
    ldh [$c4], a
    ret nz

    pop bc
    ret nz

    add e
    add b
    nop
    ld a, a
    nop
    rra

jr_07c_4c44:
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr jr_07c_4c50

jr_07c_4c50:
    sbc b

jr_07c_4c51:
    rst $20
    rst $30
    ld hl, sp-$1b
    cp $fa
    rst $38
    ld e, [hl]
    rst $38
    ei
    rst $38
    ei

jr_07c_4c5d:
    rst $38
    pop af

jr_07c_4c5f:
    rst $38
    db $f4

jr_07c_4c61:
    rst $38
    ld a, [$0bff]
    rst $38
    dec hl
    rst $38
    ld bc, $02ff
    rst $38
    ld [de], a
    rst $38
    add l
    rst $38
    ret nz

    dec e
    pop bc
    ld e, $c1
    inc e
    pop bc
    inc e
    pop bc
    ld e, $80
    ld c, a
    add b
    ld l, l

jr_07c_4c7e:
    ldh [$0d], a
    ret nz

    ld l, $e0
    ld c, $a0
    ld c, [hl]
    adc b
    db $76
    ld l, d
    add h
    ld l, [hl]
    add b
    db $ec
    ld [bc], a
    ldh [$0e], a
    nop
    or $a0
    ld d, a
    jr nc, jr_07c_4c5d

    jr nc, jr_07c_4c5f

    jr nc, jr_07c_4c61

    db $10
    rst $20
    jr nz, jr_07c_4cf1

    ld h, b
    dec de
    jr nz, jr_07c_4cfc

    jr nz, jr_07c_4cff

    jr nz, jr_07c_4c7e

    jr nz, jr_07c_4d00

    jr nz, jr_07c_4d02

    jr nz, jr_07c_4d04

    nop
    ei
    jr z, jr_07c_4c44

    jr nz, @-$61

    jr nz, jr_07c_4c51

    db $10
    inc l
    ld [de], a
    cpl
    nop
    inc a
    nop
    inc a
    nop
    sbc h
    nop
    sbc h
    inc b
    jp c, Jump_000_1e00

    inc b
    jr @+$0a

    sub [hl]
    ld b, $88
    ld b, $88
    ld b, $69
    ld c, $e1
    ld l, $41
    inc b
    ld a, d
    nop
    ld a, a
    nop
    rst $38
    ld [bc], a
    ld b, d
    ldh [$e0], a
    add b
    add b
    call nc, $02d4
    dec c
    add d
    push af
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, l
    nop
    inc sp
    nop
    cp b
    dec b
    cp l
    rlca

jr_07c_4cf1:
    or a
    ld b, a
    rst $20
    rlca
    add a
    rlca
    add a
    rla
    sub a
    scf
    scf

jr_07c_4cfc:
    ccf
    ccf
    daa

jr_07c_4cff:
    daa

jr_07c_4d00:
    rst $38
    rst $38

jr_07c_4d02:
    sbc a
    ld a, a

jr_07c_4d04:
    ld b, e
    add a
    adc e
    ld [hl], c
    dec e
    ld bc, $0001
    inc bc
    nop
    ld [bc], a
    nop
    nop
    db $fd
    nop
    rst $30
    nop
    rst $38
    nop
    ld a, l
    ld [bc], a
    di
    ld c, $ce
    ld a, $be
    ld a, a
    ld a, a
    cp $fe
    cp d
    cp b
    add sp, -$18
    cp e
    cp b
    ldh [$e0], a
    cp c
    and b
    db $d3
    ret nz

    rst $28
    add b
    cp l
    ld b, d
    ld a, e
    add h
    rst $38
    nop
    sbc a
    ld h, b
    ccf
    ret nz

    ld a, a
    add b
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
    ld a, a
    nop
    rra
    nop
    inc bc
    nop
    nop
    nop
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $00
    jr c, jr_07c_4d90

    add $2e
    pop af
    sub c
    cp $f8
    rst $38
    sbc $ff
    sbc e
    rst $38
    ld c, l
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    add a
    rst $38
    rst $20
    rst $38
    pop af
    rst $38
    ret nc

    inc l
    ret nc

    cpl
    ret c

    daa
    ret c

    daa
    ret z

    scf
    ret z

    scf
    add sp, $17
    db $ec
    inc de
    add b
    ld l, b
    nop
    db $ec
    add b
    ld l, h
    add b
    ld l, h
    add b
    ld l, [hl]
    nop
    xor $00
    xor $01
    rst $20

jr_07c_4d90:
    nop
    cp $04
    ld a, d
    inc b
    ld a, b
    inc d
    ld h, d
    inc d
    ld h, d
    nop
    ld [hl], a
    inc b
    ld [hl], e
    nop

jr_07c_4d9f:
    ld [hl], a
    ld a, a
    add b
    sub a
    ld l, b
    cp c
    ld b, [hl]
    or c
    ld c, [hl]
    dec sp
    call nz, $ce31
    or c
    ld c, [hl]
    or d
    ld c, l
    sub b
    ld l, a
    pop de
    ld l, $d0
    cpl
    jr jr_07c_4d9f

    db $10
    rst $08
    sub b
    ld l, a
    ret nz

    ccf
    ret nz

    ccf
    nop
    ret nz

    ld [bc], a
    jp nz, $c202

    ld [bc], a
    ld [bc], a
    nop
    ret nz

    nop
    ret z

    add c
    ld c, c
    ld bc, $ff89
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$ef], a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    daa
    ret nz

    dec de
    rst $20
    dec de
    rst $38
    dec de
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    db $ed
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38

jr_07c_4dfc:
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38

jr_07c_4e06:
    db $fc
    db $fc
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    ld [hl-], a
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    rst $38
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
    nop
    rst $38
    rst $30
    ld [$30cf], sp
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_07c_4dfc

    ld b, b
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_07c_4e47:
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
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld [hl], b
    nop
    adc h
    nop
    db $e3
    nop
    dec sp
    db $fc
    ld a, [hl]
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
    ld bc, $005e
    add e
    jr nz, jr_07c_4e06

    nop
    cp h
    nop
    or $00
    cp d
    nop
    ld a, [$fa00]
    nop
    ld hl, sp+$40
    cp b
    ret nz

    jr c, jr_07c_4e47

    jr c, jr_07c_4e89

jr_07c_4e89:
    ld a, [$f800]
    nop
    sbc $00
    ei
    nop
    db $db
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $fc
    nop
    db $fc
    ld b, b
    cp h
    ld b, b
    cp l
    nop
    db $ec
    ld b, b
    cp h
    nop
    db $ec
    nop
    db $ec
    nop
    db $ec
    ld bc, $00ef
    db $ec
    nop
    cp $00
    cp $00
    cp $01
    db $ed
    nop
    xor $00
    add $00
    db $f4
    nop
    or [hl]
    nop
    sub [hl]
    nop
    and $00
    and $00
    add $00
    ld [c], a
    inc b
    and [hl]
    nop
    ret c

    ld hl, $20f9
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    inc bc
    rra
    ld bc, $01fd
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    ret nz

    adc c
    ldh [$c1], a
    ldh [$8f], a
    pop af
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    ld a, [$9280]
    nop
    inc a
    rlca
    scf
    rst $08
    rst $08
    xor $ee
    rst $28
    rst $38
    ldh [$f0], a
    ld h, b
    ld h, b
    add b
    sub b
    nop
    ld bc, $0700
    nop
    rlca
    nop
    ld l, [hl]
    nop
    daa
    nop
    daa
    nop
    rst $38
    inc bc
    db $fc
    ld c, $f1
    rra
    ldh [$3f], a
    ret nz

    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp $01
    cp a
    ld b, b
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
    cp a
    ld b, b
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
    cp $00
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
    ld a, a
    nop
    rra
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    sbc a
    ld h, b
    db $e3
    inc e
    cp h
    jp $f8f7


    db $fd
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
    ccf
    jr nz, jr_07c_4f9f

    nop
    nop
    dec a
    dec a
    cpl
    xor a
    cpl
    xor a
    cpl
    xor a
    rrca
    adc a
    cpl
    cpl
    rla
    rla
    rrca
    rrca
    rlca
    ld b, a
    rla
    ld d, a
    rrca
    ld c, a
    rlca
    rlca
    sub a
    sub a
    rla
    rla
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, a
    rlca
    rlca
    inc bc

jr_07c_4f9f:
    inc bc
    inc de
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    sbc e
    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    ld d, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $08
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
    rst $38
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
    ld a, a
    rst $38
    ccf
    ld a, a
    rra
    rst $30
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    jr c, @+$01

    add e
    rst $38
    rrca
    rst $08
    ld a, $be
    ld a, d
    ld a, d
    call c, $f0dc
    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld l, [hl]
    ld l, [hl]
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
    call nz, $3b3b
    call nz, Call_000_00ff
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

jr_07c_5024:
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    di
    nop
    rst $20
    nop
    rst $08
    nop
    ld a, a
    nop
    ld a, $00
    ld l, e
    nop
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    rst $18
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $ff
    rrca
    ld a, a
    rrca
    rra
    inc bc
    inc bc
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e7], a
    jr jr_07c_5024

    add $ef
    ldh a, [$fd]
    cp $07
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    add b
    db $fd
    db $fd
    db $f4
    db $f4
    inc h
    inc h
    jr nc, jr_07c_50b2

    or h
    or [hl]
    or h
    or a
    or b
    or d
    or h
    or l
    ld a, h
    ld a, [hl]
    db $fc
    db $fc
    inc [hl]
    dec [hl]
    db $f4
    rst $30
    ldh [$e0], a
    db $e4
    db $e4
    db $f4
    db $f4
    db $f4
    db $f4
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff

jr_07c_50b2:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07c_50e0:
    rst $38
    rst $38
    ccf
    ccf
    rra
    rst $38
    rra
    rst $18
    rra
    ld e, a
    rra
    rst $18
    ccf
    ccf
    cp a
    cp a
    cp a
    cp a
    add l
    add l
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    rst $30
    rst $30
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld c, $00
    dec e
    nop
    ld a, a
    nop
    db $fd
    ld [bc], a
    ei
    inc b
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, jr_07c_50e0

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
    cp a
    nop
    cp a
    nop
    ld a, e
    nop
    rst $30
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28
    nop
    xor $00
    cp $00
    rst $30
    nop
    jp hl


    nop
    push af
    nop
    jp $8e00


    nop
    ret nz

    rst $38
    or b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    db $10
    rra
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
    ld hl, sp+$07
    ld a, a
    add b
    rra
    ldh [rP1], a
    db $fd
    nop
    nop
    nop
    ld bc, $d780
    nop
    ld e, a
    add b
    rst $28
    nop
    ld e, a
    add b
    xor a
    nop
    daa
    add b
    rst $28
    ld [bc], a
    ld l, l
    nop
    cpl
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ccf
    nop
    ld a, a
    nop
    cp [hl]
    nop
    ld e, $00
    inc de
    nop
    scf
    nop
    rra
    nop
    ld d, $00
    scf
    nop
    ld sp, $5140
    ld b, b
    ld d, b
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    ld c, c
    ld c, c
    ld b, b
    ld b, b
    ret z

    rst $38
    ret nc

    rst $38
    add sp, -$01
    add sp, -$01
    db $ec
    rst $38
    ld hl, sp-$01
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $70
    ld [hl], b
    ret


    ret


    ld [$0408], sp
    inc b
    ld h, b
    nop
    db $fc
    nop
    rst $38
    nop
    cp $00
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    sbc a
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
    ld a, a
    nop
    rst $38

jr_07c_522d:
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, [$f000]
    nop
    db $ed
    nop
    ei
    nop
    rst $10
    nop
    or a
    nop
    dec l
    nop
    ld a, b
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    ld e, $00
    sbc [hl]
    nop
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    ei
    nop
    ld sp, hl
    nop
    rst $38
    nop
    cp a
    nop
    jr nz, @+$01

    db $10
    rst $38
    ld bc, $033f
    rrca
    ld b, $07
    nop
    rlca
    ld a, [bc]
    rlca
    add hl, de
    rlca
    nop
    rst $38
    nop
    rra
    nop
    ret nz

    cp l
    cp l
    nop
    add hl, bc
    nop
    rlc b
    db $db
    ld [bc], a
    ret


    ld [bc], a
    ld c, c
    ld [bc], a
    pop bc
    nop
    jp $c300


    jr nz, jr_07c_522d

    nop
    jp $c300


    inc bc
    ld [$e41b], sp
    dec de
    db $e4
    sbc e
    ld h, h
    dec de
    db $e4
    dec bc
    call nc, $9c43
    ld b, e
    cp h
    ld c, e
    sub h
    ld b, e
    sbc h
    inc bc
    db $fc
    ld bc, $03de
    call c, $ff00
    ld bc, $01fe
    sbc $01
    cp $01
    cp $01
    cp $00
    rst $18
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    ld a, a
    nop
    ld d, e
    nop
    sla b
    inc hl
    nop
    inc bc
    and b
    and e
    cp a
    rst $38
    ret nz

    rst $38
    xor $ff
    and h
    rst $38
    db $f4
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
    rst $38
    rst $38
    ld d, a
    ld d, a
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    dec c
    call z, Call_000_00cc
    nop
    nop
    nop
    rlca
    nop
    ld l, $00
    ld e, a
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
    ld a, a
    add b
    rst $38
    nop
    rst $38

jr_07c_530b:
    nop
    rst $38
    nop
    ld a, a

jr_07c_530f:
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or a
    nop
    cpl
    nop
    rrca
    nop
    sbc [hl]
    nop
    ccf
    nop
    ld a, a
    nop
    cp $00
    db $fc
    nop
    db $ec
    nop
    ld sp, hl
    nop
    ld [hl], d
    nop
    ld [hl-], a
    nop
    ld h, b
    nop
    ld b, c
    nop
    jp $c200


    nop
    inc b
    nop
    inc b
    nop
    jr jr_07c_533e

jr_07c_533e:
    add hl, de
    nop
    or b
    nop
    jr nc, jr_07c_5344

jr_07c_5344:
    ldh [rP1], a
    ret nz

    nop
    pop bc
    nop
    pop bc
    nop
    jp $a300


    nop
    daa
    nop
    ld h, l
    nop
    adc $00
    ld a, a
    nop
    ld e, [hl]
    nop
    cp l
    nop
    ccf
    nop
    ld a, l

jr_07c_535f:
    nop
    nop

jr_07c_5361:
    ld a, b
    nop
    sub b
    xor c
    xor c
    add b
    add c
    nop
    cp a
    jr nz, jr_07c_530b

    nop
    ccf
    jr nz, jr_07c_530f

    nop
    cp a
    ld bc, $03be
    cp h
    add e
    inc [hl]
    inc bc
    or h
    ld bc, $11b6
    xor $30
    rst $08
    db $10
    rst $20
    db $10
    xor a
    jr nc, @-$37

    jr nz, jr_07c_535f

    jr nz, jr_07c_5361

    and b
    ld e, a
    or h
    dec bc
    inc sp
    adc h
    ld [hl], $c1
    db $10

jr_07c_5393:
    rst $28
    ld [bc], a
    cp l
    nop
    rst $18
    nop
    cp $11
    xor [hl]
    db $10
    ld l, $00
    or a
    db $10
    inc h
    nop
    inc [hl]
    nop
    jr nc, jr_07c_53a7

jr_07c_53a7:
    stop
    stop
    stop
    stop
    nop
    jr nz, @-$1f

    jr nz, jr_07c_5393

    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    or a
    nop
    or a
    nop
    ld a, a
    xor b
    xor b
    ld b, b
    ld b, b
    nop
    nop
    ld [$0838], sp
    ld a, $00
    jr nz, @+$03

    ld hl, $5d49
    add c
    sub c
    ld b, c
    ld b, c
    jp hl


    jp hl


    db $ed
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ld e, a
    nop
    inc b
    nop
    add hl, bc
    nop
    cp b
    ld [$0008], sp
    nop
    ld b, b
    ld b, b
    jr nz, jr_07c_53f8

jr_07c_53f8:
    jp nz, $8002

    nop
    or e
    nop
    ld [hl], a
    nop
    cp $01
    rst $18
    jr nz, @+$01

    nop
    rst $38
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
    ld sp, hl
    nop
    db $fc
    nop
    push af
    nop
    ld sp, hl
    nop
    rst $28
    nop
    sbc a
    nop
    add a
    nop
    ld l, $00
    ld a, h
    nop
    ld a, b
    nop
    jr c, jr_07c_542a

jr_07c_542a:
    add hl, sp
    nop
    ld d, c
    nop
    jp $8300


    nop
    sbc a
    nop
    ccf
    nop
    ld e, a
    nop
    ld e, a
    nop
    sbc a
    nop
    ccf
    nop
    inc a
    nop
    ld [hl], h
    nop
    ld c, b
    nop
    ld c, l
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fc04]
    nop
    ld a, h
    nop
    call c, $f800
    nop
    ldh a, [rP1]
    pop af
    nop
    xor $00
    and $00
    nop
    ld bc, $0100
    ld bc, $0716
    ld [hl], b
    rlca
    ld [hl], b
    inc bc
    ld [hl], h
    inc bc
    ld a, h
    dec b
    ld [hl], d
    nop
    ld [hl], a
    ld [bc], a
    push af
    nop
    rst $30
    nop
    rst $30
    nop
    ld [hl], a
    nop
    rst $30
    ld [bc], a
    ld a, l
    ld d, $69
    ld c, $71
    ld b, $f8
    ld b, $78
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $ff
    add hl, bc
    rst $38
    ld bc, $09ff
    rst $38
    nop
    rst $38
    add hl, bc
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    add l
    ld h, b
    add l
    ld h, b
    add l
    ld h, b
    sbc a
    ld h, b
    sbc l
    ld h, b
    add l
    ld h, b
    add l
    ld h, b
    add l
    ld h, b
    add b
    ld a, a
    rst $38
    nop
    add b
    ld a, a
    add b
    ld c, c
    add b
    ld a, a
    add b
    ld c, c
    add b
    ld c, c
    add b
    ld c, c
    add b
    ld a, a
    add b
    ld c, c
    add b
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    db $ed
    ld d, d
    db $ed
    ld d, d
    db $ed
    ld d, d
    db $ed
    ld d, d
    db $ed
    ld d, d
    db $ed
    ld d, d
    db $ed
    ld d, d
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    ld a, a
    rst $38
    ccf
    cp a
    ld e, $9e
    rla
    sub a
    ld a, $3e
    ld a, $be
    ld e, $9e
    nop
    add b
    nop
    rrca
    ccf
    ccf
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    daa
    nop
    ld a, a
    nop
    rst $28
    db $10
    rst $18
    jr nz, @+$01

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
    db $fd
    nop
    rst $38
    nop
    rst $30
    nop
    sbc a
    nop
    and a
    nop
    ld c, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    ld [hl], l
    ld [$00ff], sp
    ei
    nop
    ei
    nop
    cp $00
    db $f4
    nop
    push af
    nop
    rst $30
    nop
    and l
    ld b, b
    rst $28
    nop
    ld a, a
    add b
    rst $28
    nop
    rst $28
    nop
    ld a, l
    ld [bc], a
    ld e, a
    nop
    and a
    nop
    dec c
    nop
    add hl, bc
    nop
    ld e, a
    nop
    rst $38
    nop
    sbc a
    nop
    ccf
    nop
    ccf
    nop
    cp a
    nop
    rst $38
    nop
    nop
    ld a, [bc]
    nop
    ld b, e
    rla
    ldh [rPCM12], a
    add c
    ld h, [hl]
    sub c
    ld h, [hl]
    sub c
    db $76
    add c
    or $01
    rst $30
    nop
    db $76
    add c
    db $76
    adc c
    ld [hl], d
    adc l
    ld h, a
    sbc b
    rst $28
    db $10
    rst $28
    db $10
    and $19
    reti


    nop
    ld de, $0100
    nop
    sub e
    nop
    ld de, $1100
    nop
    ld de, $5100
    nop
    xor [hl]
    ld d, c
    xor $11
    ld h, $d9
    ld l, d
    sub l
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    nop
    ccf
    dec h
    nop
    dec h
    nop
    rst $38
    nop
    db $fd
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    add b
    add b
    ld a, a
    ld a, a
    add b
    nop
    ld a, a
    nop
    and h
    nop
    ld a, a
    nop
    inc h
    nop
    inc h
    nop
    and h
    nop
    ld a, a
    nop
    and h
    add b
    ld a, a
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld d, l
    xor d
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld d, l
    nop
    nop
    nop
    db $fc
    db $fc
    ldh a, [$f0]
    or b
    or b
    cp b
    cp b
    ld hl, sp-$08
    ld e, b
    ld e, b
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    nop
    add c
    ldh [$e0], a
    ld a, a
    ld a, a
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    inc b
    jr @+$0a

    ld [hl], b
    nop
    add sp, $17
    db $e4
    dec de
    call $fd32
    ld [bc], a
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
    rst $18

jr_07c_5617:
    jr nz, jr_07c_5617

    ld bc, $01fe
    cp l
    ld b, d
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $28
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00fb], sp
    rst $28
    db $10
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
    nop
    rlca
    rlca
    ldh a, [rTAC]
    ldh a, [rTAC]
    ld hl, sp+$05
    ld a, [c]
    ld b, e
    or h
    ld b, e
    or h
    scf
    ret z

    scf
    ld c, b
    ld [hl], a
    adc b
    ld [hl], a
    ld [$0877], sp
    scf
    ret z

    daa
    ret nc

    rlca
    ld hl, sp+$03
    db $fc
    ld b, $f9
    ld b, [hl]
    cp c
    ld [bc], a
    db $fd
    ld c, d
    or l
    jp z, $e235

    dec e
    ld [$c215], a
    inc a
    ld sp, $1310

jr_07c_5693:
    ld de, $11b7
    rst $30
    ld bc, $01f7
    scf
    ld bc, $0000
    nop
    nop
    jr nz, @-$1f

    jr nz, jr_07c_5703

    dec hl
    ld d, h
    and b
    ld e, a
    jr nz, jr_07c_5709

    jr nz, jr_07c_570b

    jr z, jr_07c_5705

    jr z, @+$59

    dec hl
    ld d, h
    jr nz, jr_07c_5693

    rst $38
    nop
    ld b, b
    cp a
    ld b, b
    and h
    ld b, b
    and h
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    and h
    ld b, b
    and h
    ld b, b
    and h
    ld b, b
    cp a
    rst $38
    nop
    nop
    rst $38
    ld a, $ff
    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    jr nz, @+$01

    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    jr nz, @+$01

    jr nz, @+$01

    ld h, h
    db $e4
    ld h, b
    ldh [rSCY], a
    jp nz, $8a0a

    ld b, b

jr_07c_56e9:
    ret nz

    nop
    nop
    ld a, $3e
    ld [bc], a
    add d

jr_07c_56f0:
    nop

jr_07c_56f1:
    add b
    nop
    ld d, b
    nop
    nop
    nop
    or b
    nop
    cp e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e001

jr_07c_5703:
    nop
    db $ec

jr_07c_5705:
    nop
    ld hl, sp+$00
    db $dd

jr_07c_5709:
    nop
    cp l

jr_07c_570b:
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    ld a, e
    add h
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop

jr_07c_573c:
    rst $38
    nop

jr_07c_573e:
    ei
    inc b
    ei
    inc b
    ld a, a
    nop
    ld e, a
    nop
    rst $38
    nop
    sbc a
    nop
    cp a
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
    cp $00
    rst $38
    nop
    rst $18
    jr nz, jr_07c_573c

    jr nz, jr_07c_573e

    jr nz, jr_07c_56e9

    scf
    xor b
    rla
    xor c
    ld d, $83
    inc a
    add e
    inc a
    add e
    jr c, jr_07c_56f0

    jr c, jr_07c_56f1

    add hl, sp
    inc bc
    cp b
    inc bc
    cp b
    inc bc
    cp b
    inc bc
    ld hl, sp+$43
    cp h
    ld h, d
    dec e
    ld [hl], d
    adc l
    ld d, b
    and a
    ld h, [hl]
    ld de, $1265
    ld de, $0166
    ld a, [hl]
    dec b
    ld a, d
    dec b
    ld [hl], d
    dec b
    ld [hl], d
    nop
    ld a, a
    cp $08
    cp $08
    rst $38
    ld [$40ff], sp
    rst $38
    sub b
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld e, d
    and l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    ld b, d
    cp l
    ld e, d
    and l
    ld [bc], a
    db $fd
    ld hl, sp+$07
    rra
    ldh [rP1], a
    sbc a
    nop
    sub d
    nop
    ld a, [c]
    nop
    rst $38
    nop
    sbc a
    nop
    sub d
    nop
    sub d
    nop
    ld a, [c]
    ldh [$1f], a
    ccf
    ret nz

    nop
    rst $38
    and b
    ld e, a
    xor d
    nop
    xor d
    nop
    ld a, [bc]
    nop
    and b
    nop
    xor d
    nop
    xor d
    nop
    ld a, [bc]
    nop
    ld bc, $0001
    or a
    sbc b
    sbc b
    jr c, jr_07c_581e

    xor b
    xor b
    cp d
    cp d
    nop
    nop
    add b
    add b
    ld a, [$fffa]
    rst $38
    rrca
    rrca
    inc bc
    inc bc
    inc h
    inc h
    ld bc, $0081
    ld [hl], h
    nop
    ld h, d
    nop
    add $01
    ld bc, $0101
    add c
    ld bc, $00c0
    ld h, b
    nop
    ret nz

    nop
    call c, $de00
    nop
    sbc $21
    sbc [hl]
    ld h, c
    cp a
    ld b, b
    cp a
    ld b, b
    cp l
    ld b, d
    cp l
    ld b, d
    db $fd
    ld [bc], a

jr_07c_581e:
    db $fd

jr_07c_581f:
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38

jr_07c_5825:
    nop
    rst $38
    nop
    ei
    inc b
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
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08b7], sp

jr_07c_583c:
    rst $30
    ld [$08f7], sp
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
    rst $28
    db $10

jr_07c_584c:
    rst $28
    db $10
    rst $38
    nop
    rst $38

jr_07c_5851:
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, jr_07c_583c

jr_07c_585d:
    jr nz, @-$1f

    jr nz, jr_07c_5861

jr_07c_5861:
    adc $00
    sbc $08
    sub $80
    ld e, [hl]
    add b
    ld e, d
    add b
    ld e, [hl]
    add b
    ld e, [hl]
    add b
    ld e, h
    ret nz

    inc e
    nop
    call c, $bc00
    add h
    add hl, sp
    sub h
    add hl, hl
    and h
    add hl, de
    nop
    cp l
    jr jr_07c_5825

    cp b
    ld b, l
    jr nc, jr_07c_584c

    jr nc, jr_07c_5851

    and b
    ld e, e
    jr z, jr_07c_585d

    jr z, jr_07c_581f

    jr c, jr_07c_5851

    ld l, b
    sub e
    xor a
    add h
    rst $38
    add h
    rst $38
    and [hl]
    cp a
    add a
    rst $38
    adc a
    rst $38
    add a
    nop
    nop
    ld bc, $0201
    db $fd
    ld [bc], a
    db $fd
    xor e
    ld d, l
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    xor e
    ld d, l
    xor e
    ld d, l
    xor e
    ld d, l
    xor e
    ld d, l
    inc bc
    db $fd
    rst $38
    inc bc
    rlca
    ei
    rlca
    ld c, e
    rlca
    ld c, e
    rlca
    ei
    rlca
    ei
    rlca
    ld c, e
    rlca
    ld c, e
    rlca
    ld c, e
    rrca
    rst $30
    rst $38
    rlca
    rlca
    rst $38
    rlca
    rst $38
    and a
    ld e, a
    and a
    ld e, a
    and a
    ld e, a
    rrca
    rst $38
    xor a
    ld e, a
    xor a
    ld e, a
    xor a
    ld e, a
    cpl
    rst $38
    rrca
    sbc a
    rrca
    ccf
    rrca
    rrca
    rrca
    cpl
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rst $10
    rst $10
    db $dd
    db $dd
    add c
    add c
    nop
    nop
    add b
    sub b
    ld [$0008], sp
    nop
    nop
    nop
    rra
    rra
    ld e, $1e
    jr jr_07c_591e

    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [$a008], sp
    nop
    ld h, b
    sbc a
    dec b
    ld a, [$11ee]
    db $ed
    ld [de], a
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10

jr_07c_591e:
    rst $08
    jr nc, @+$01

    db $10

jr_07c_5922:
    rst $28
    nop
    rst $28
    nop

jr_07c_5926:
    rst $28
    nop

jr_07c_5928:
    rst $28
    nop
    rst $28
    nop
    rst $08
    nop
    db $eb
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    ld [hl+], a

jr_07c_5940:
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $18
    jr nz, jr_07c_5928

    jr nz, jr_07c_5926

    inc h
    rst $08
    jr nc, jr_07c_591e

    jr nc, jr_07c_5940

    jr nz, jr_07c_5922

    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    ld b, a
    or b

jr_07c_5962:
    add a
    ld [hl], b
    ld b, l
    or d
    add c
    ld a, [hl]
    pop bc
    ld a, $e7
    jr jr_07c_5962

    ld a, [bc]
    or $09
    db $ec
    inc de
    rst $28
    db $10
    rst $28
    db $10
    inc h
    db $db
    ld b, h
    cp e
    ld b, h
    cp e
    inc b

jr_07c_597d:
    ei
    ld b, $f8
    inc b
    ld a, [$ba44]
    ld b, h
    cp d
    inc d
    ld [$ba44], a
    pop bc
    ccf
    pop bc
    ccf
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    sub b
    ld l, [hl]
    nop
    db $fc
    db $10
    db $ec
    db $10
    db $ec
    nop
    db $fc
    nop
    db $fd
    jr nz, jr_07c_597d

    and b
    sbc l
    add b
    xor c
    sub h
    sub h
    add [hl]
    add a
    add [hl]
    add [hl]
    sub [hl]
    sub a
    call z, Call_000_04cd
    inc b
    adc h
    adc l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    call c, $8cdc
    adc h
    adc [hl]
    adc [hl]
    ld a, [hl]
    ld a, [hl]

jr_07c_59c0:
    ld a, l
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
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
    ld a, a
    db $fd
    db $fd
    dec d
    dec d
    ld bc, $8101
    add c
    nop
    inc b
    add b
    add [hl]
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_07c_59ed

jr_07c_59ed:
    ld a, b
    nop
    ld a, e
    nop
    ld a, a
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $38

jr_07c_59fa:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_07c_5a02

jr_07c_5a02:
    ld a, b
    nop
    ld a, [c]
    ld b, d
    ld b, d
    ld b, d
    ld h, d
    ld b, d
    and b
    nop

jr_07c_5a0c:
    cp h
    nop

jr_07c_5a0e:
    cp [hl]
    nop

jr_07c_5a10:
    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    or [hl]
    ld c, c
    cp $01
    ldh [$1f], a
    ret nz

    ccf
    ret z

    scf
    ret nz

    ccf
    pop bc
    ld a, $f0
    rrca
    db $fc
    inc bc
    rst $18
    jr nz, jr_07c_59fa

    jr nc, jr_07c_5a0c

    jr nz, jr_07c_5a0e

    jr nz, jr_07c_5a10

    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    adc $00
    xor b
    jr nz, jr_07c_59c0

    nop
    add b
    ld e, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    dec a
    add b
    dec a
    add b
    dec a
    ld b, b
    push af
    nop
    cp l
    nop
    cp c
    nop
    rst $38
    nop
    ld a, e
    ld b, h
    ccf
    ld b, b
    cp e
    ld b, h
    cp a
    ld b, b
    cp e
    nop
    di
    nop
    di
    nop
    di
    nop
    cp $00
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    push af
    nop
    push hl
    nop
    rst $00
    nop
    db $e3
    nop
    and d
    nop
    ld l, e
    nop
    ld c, $00
    ld [$7810], sp
    nop
    call z, Call_07c_4800
    nop
    ret z

    ld hl, $21e9
    ld hl, $2121
    ld hl, $2321
    and e
    ld bc, $4301
    jp $0303


    ld c, a
    ld c, a
    ld b, a
    ld h, a
    rrca
    rrca
    rla
    rla
    add a
    add a
    cp a
    cp a
    xor a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    dec [hl]
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    adc a
    adc a
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    ret nz

    nop
    ld b, b
    nop
    nop
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
    add b
    nop

jr_07c_5ad1:
    add b
    nop
    ret nz

    ld bc, $00d1
    sbc $00
    sbc $00
    rst $38
    nop
    rst $28
    nop
    rst $28
    db $10
    db $10
    add hl, de
    add hl, de
    ld [$0c08], sp
    ld [$0808], sp
    nop
    nop
    stop
    or b
    nop
    db $f4
    inc b
    db $fc
    inc b
    add sp, $00
    jp nz, $e802

    nop
    ld l, b
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld [hl], $c9
    inc [hl]
    bit 6, b
    adc a
    ld [hl], b
    adc a
    jr c, jr_07c_5ad1

    cp [hl]
    ld b, c
    cp d
    ld b, l
    cp d
    ld b, l
    cp b
    nop
    cp d
    nop
    cp b
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    jr nz, jr_07c_5b58

    jr nz, jr_07c_5b42

    jr nz, jr_07c_5b29

    jp hl


    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08

jr_07c_5b29:
    ld a, [$f808]
    nop
    ldh [rP1], a
    ldh [rNR10], a
    ret nc

    db $10
    ldh a, [rP1]
    db $ec
    nop
    db $ec
    nop
    ret nz

    nop
    call nz, $ca00
    nop
    call c, $d901

jr_07c_5b42:
    ld bc, $01d9
    reti


    ld bc, $2199
    or l
    ld bc, $029d
    or [hl]
    ld b, e
    ei
    ld b, d
    ld [c], a
    ld [bc], a
    ld [bc], a
    inc de
    inc de
    add e
    add e

jr_07c_5b58:
    add e
    add e
    add a
    add a
    add a
    add a
    rlca
    rlca
    daa
    rst $38
    adc a
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    rst $18
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
    rst $38
    rra
    rra
    rra
    cp a
    rlca
    rlca
    adc e
    xor e
    adc e
    adc e
    rlca
    rlca
    rlca
    rrca
    ld b, e
    ld b, e
    inc bc
    inc bc
    ld hl, $0121
    inc bc
    db $10
    ld a, [de]
    db $10
    ld de, $0a08
    nop
    nop
    nop
    nop
    inc b
    ld b, [hl]
    inc b
    db $e4
    nop
    ld [hl], c
    nop
    inc a
    nop
    or h
    nop
    cp $00
    call c, $dc00
    nop
    add sp, $00
    xor $10
    rst $38
    jr jr_07c_5bea

    nop
    nop
    ld [$0b08], sp
    dec bc
    cpl
    cpl
    inc b
    inc b
    inc b
    inc b
    inc h
    inc b
    ld [hl-], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, b
    nop

jr_07c_5bea:
    nop
    nop
    add hl, bc
    ld bc, $0109
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    add d
    ld [bc], a
    add sp, $20
    sbc b
    nop
    adc c
    ld bc, $ff37
    ld l, a
    rst $38
    ccf
    rst $38
    ld l, l
    rst $38
    ld [hl], l
    rst $38
    ld h, l
    rst $38
    ld h, c
    rst $38
    ld b, c
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    cp $ff
    ld a, $ff
    inc a
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    cp [hl]
    rst $38
    cp $ff
    ld a, [$faff]
    rst $38
    db $fc
    rst $38
    ld a, [$fcff]
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    db $f4
    db $f4
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f1]
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    db $f4
    db $f4
    add sp, -$16
    add sp, -$16
    ld hl, sp-$06
    ldh a, [$f2]
    db $fc
    cp $f8
    ld sp, hl
    ld a, b
    ld a, c
    cp b
    cp c
    ld e, b
    rst $38
    db $ec
    rst $38
    jp $e0ff


    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $f4
    rst $38
    cp $ff
    ld a, [$fefa]
    rst $38
    ld a, [$fafa]
    ei
    cp $ff
    ld hl, sp-$07
    db $f4
    db $f4
    ld hl, sp-$08
    db $f4
    or $f9
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    ld e, a
    rra
    sbc a
    rra
    sbc a
    dec bc
    db $eb
    rrca
    rst $38
    rlca
    ld [hl], a
    inc bc
    ld l, e
    add e
    or e
    add e
    adc e
    ld bc, $01b5
    cp a
    nop
    sub $00
    rst $18
    nop
    adc a
    db $10
    rra
    db $10
    scf
    nop
    add $00
    add [hl]
    nop
    jp nz, $f300

    nop
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld a, h
    ld bc, $007f
    ld a, a
    nop
    ccf
    nop
    cp a
    nop
    sbc a
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
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
    jr jr_07c_5d33

    ld a, [de]
    dec de
    dec c
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07c_5d44

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07c_5d54

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07c_5d64

jr_07c_5d33:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07c_5d74

    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec c
    ld a, $3f
    ld b, b
    ld b, c

jr_07c_5d44:
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

jr_07c_5d54:
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

jr_07c_5d64:
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

jr_07c_5d74:
    ld [hl], d
    ld [hl], e
    ld c, h
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
    dec c
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
    ld e, e
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
    sbc l
    sbc l
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$53eb], a
    ld d, e
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
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $5353
    ld d, e
    ld d, e
    ld d, e
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_07c_5e49

    ld a, [de]
    ld d, e
    dec de
    inc e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    dec e
    ld e, $1f
    jr nz, jr_07c_5e5e

    ld [hl+], a
    inc hl
    inc h
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101

jr_07c_5e49:
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    ld bc, $0101
    ld bc, $0301
    ld b, $04
    ld [bc], a
    nop
    ld [bc], a

jr_07c_5e5e:
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    ld bc, $0101
    ld bc, $0505
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    nop
    ld bc, $0501
    dec b
    dec b
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    dec b
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld b, $05
    ld b, $06
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rlca
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld b, $05
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca

Jump_07c_5ec2:
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld b, $06
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    dec b
    dec b
    rlca
    rlca
    ld bc, $0101
    inc bc
    dec b
    ld b, $05
    dec b
    ld b, $06
    ld b, $02
    dec b
    dec b
    rlca
    ld bc, $0101
    ld bc, $0501
    ld b, $05
    dec b
    dec b
    ld b, $06
    ld b, $05
    dec b
    rlca
    ld bc, $0101
    ld bc, $0500
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
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
    nop
    nop
    nop
    dec b
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
    nop
    nop
    nop
    nop
    ld [$0d0d], sp
    dec c
    dec c
    ld [$0000], sp
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    ld [$0008], sp
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    nop
    ld [$0008], sp
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$ff08], sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    inc h
    ld bc, $0001
    nop
    nop
    ld [hl+], a
    add b
    xor a
    ret nz

    rst $18
    ld b, b
    ld c, e
    nop
    add hl, bc
    jr nz, jr_07c_5fba

    db $10
    db $10
    db $10
    db $10
    ld [$4409], sp
    ld b, h
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld hl, $8080
    add b
    add b
    jp nz, $ffc2

    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    rst $38
    nop

jr_07c_5fba:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld sp, hl
    nop
    ld sp, hl

jr_07c_5fdd:
    nop
    di
    nop
    ld [c], a
    inc bc
    rst $20
    nop
    adc $01
    adc a
    nop
    sbc a
    nop
    rlca
    jr jr_07c_6023

    add hl, bc
    ld a, [hl-]
    ld bc, $0578
    cp [hl]
    ld b, b
    dec e
    ld [c], a
    call z, $e412
    ld a, [bc]
    ld a, [$ec04]
    db $10
    ld sp, hl
    nop
    ld l, c
    sub b
    inc sp
    ld b, b
    sub e
    jr nz, jr_07c_5fdd

    ld bc, $01c6
    call $8d03
    inc bc
    sbc e
    rlca
    inc b
    inc bc
    add hl, bc
    rlca
    ld a, [bc]
    rlca
    ld a, [de]
    rrca
    ld de, $200f
    rra
    ld h, b
    rra
    ld h, b
    rra
    inc sp
    inc c
    add hl, bc

jr_07c_6023:
    add [hl]
    inc b
    db $e3
    ld [bc], a
    pop af
    nop
    db $fc
    nop
    cp $00
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
    rla
    add sp, -$1f
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$f1]
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_07c_605f:
    nop
    rra
    ldh [$cf], a
    jr nc, jr_07c_605f

    dec b
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
    rst $38
    nop
    rst $38

jr_07c_6073:
    nop
    rst $38

jr_07c_6075:
    nop
    rst $30
    nop

jr_07c_6078:
    ei
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $f4
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07c_6090:
    jr nc, jr_07c_6090

    db $10
    sub a
    jr jr_07c_6075

    jr jr_07c_6073

    inc c
    call $f706
    ld b, $76
    inc bc
    ld h, e
    ld bc, $413d
    ld e, c
    nop
    ld a, [bc]
    jr nz, jr_07c_60c8

    nop
    nop
    adc b
    adc b
    ret z

    ret z

    ld h, b
    ld h, b
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
    ld hl, sp+$07
    rst $30
    ld [$00ff], sp
    db $fc
    ld bc, $01fa
    ld sp, hl
    ld [bc], a
    push af
    ld [bc], a

jr_07c_60c8:
    ldh [rTAC], a
    db $ed
    ld [bc], a
    rst $18
    nop
    add a

jr_07c_60cf:
    jr jr_07c_6078

    jr jr_07c_60ea

    jr z, jr_07c_6145

    dec bc
    inc a
    ld b, c
    jr @-$19

    cp b
    ld b, [hl]
    ldh a, [$0e]
    ld [c], a
    inc c
    pop af
    inc b
    ld h, b
    sub c
    ld a, [hl+]
    ld d, c
    add b
    inc sp
    add h
    inc sp

jr_07c_60ea:
    sub c
    ld b, a
    dec c
    jp $8f43


    ld e, e
    add a
    rla
    adc a
    scf
    rrca
    ld l, a
    rra
    ld l, a
    rra
    rst $18
    ccf
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    ccf
    rst $38
    ld a, a
    cp a
    ld a, a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, [hl+]
    rst $38
    cpl
    cpl
    db $f4
    db $f4
    ld a, $3e
    ld a, h
    ld a, h
    db $ec
    db $ec
    rra
    rra
    jr nz, jr_07c_611e

jr_07c_611e:
    add hl, sp
    jr jr_07c_60cf

    ld d, c
    adc b
    ld [hl], a
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
    rlca
    ld hl, sp-$01
    nop
    add c
    ld a, [hl]
    db $fc
    inc bc
    rst $38

jr_07c_6145:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $18
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
    db $f4
    nop
    cp $00
    rst $20
    nop
    rst $38
    nop
    nop
    rst $38
    db $fd
    rst $38
    ccf
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld bc, $00ff
    nop
    ld [bc], a
    or d
    inc bc
    di
    dec b
    db $fd
    inc bc
    ld a, e
    nop
    call c, $8e00
    nop
    or d
    nop
    nop
    add b
    add c
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    inc [hl]
    inc [hl]
    inc a
    inc a
    rst $38
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
    ld a, a
    add a
    ld a, a
    ld c, a
    or a
    dec hl
    rst $10
    add l
    ld a, e
    ld hl, sp+$0f
    ld [c], a
    dec e
    db $e4
    dec de
    call c, $9823
    ld h, a
    sbc c
    ld h, a
    db $d3
    cpl
    ld [hl], e
    adc a
    ld h, a
    sbc a
    ld h, a
    sbc a
    ld c, a
    ccf
    rst $08
    ccf
    sbc a
    ld a, a
    rra
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
    rst $28
    rst $28
    ld hl, sp-$07
    ldh a, [$f1]
    ldh [$e1], a
    ld h, b
    ld h, b
    ld h, b
    ld h, e
    ret nz

    rst $00
    ret nz

    ret nz

    nop
    ccf
    nop

jr_07c_61f3:
    rra
    nop
    dec e
    nop
    rra
    nop
    ccf
    add b
    adc a
    nop
    ld hl, $fe00
    ld h, b
    nop
    add b
    nop
    ld h, b
    nop
    ld e, [hl]
    nop
    ccf
    nop
    cp a
    add b
    inc bc
    nop
    db $10
    stop
    rst $38
    jr nz, jr_07c_61f3

    db $e4
    dec de
    ld sp, hl
    ld b, $ff
    nop
    cp $01
    ccf
    ret nz

    ret nz

    ccf
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    ei
    inc b
    db $fd
    ld [bc], a
    rst $38
    nop
    ld e, a
    and b
    jp $fc3c


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
    rra
    ldh [$f0], a
    rrca
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
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    cp a
    nop
    sbc a
    nop
    ld [hl], a
    nop
    ld sp, hl
    nop
    rst $38
    nop
    and a
    nop
    db $d3
    nop
    rst $20
    nop
    rla
    nop
    nop
    db $fc
    nop
    nop
    db $f4
    db $f4
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    and b
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ei
    nop
    ld a, e
    add b
    ei
    add b
    cp c
    ld b, b
    ld a, a
    nop
    adc c
    jr nz, jr_07c_62d2

    jr nz, jr_07c_62c4

    db $10
    ld a, [de]
    db $10
    dec de
    db $10
    rla
    ld [$c809], sp
    ret z

    inc b
    rst $38
    ld l, $ff
    sbc $ff
    or a
    rst $38
    and a
    rst $38
    db $fd
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    cp a
    cp a
    rst $18

jr_07c_62c4:
    rst $38
    rst $18
    rst $08
    rst $38
    rst $38
    rst $28
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    jr @+$1a

jr_07c_62d2:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    jr nz, jr_07c_62db

jr_07c_62db:
    dec de
    nop
    ld h, b
    nop
    sub $00
    ld a, l
    nop
    add h
    nop
    ldh a, [rP1]
    rst $38
    nop
    ld hl, sp+$00
    rrca
    nop
    ld a, a
    nop
    cpl
    nop
    add c
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld b, c
    inc b
    inc b
    inc bc
    nop
    ld b, $00
    rra
    nop
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl-]
    nop
    jr jr_07c_632a

    ld bc, $0001
    nop
    inc c
    nop
    sbc $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    ld a, [$07f8]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_07c_632a:
    rst $38
    nop
    or $09
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$fa], a
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$c3], a
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    dec bc
    ld [bc], a
    db $fd
    nop
    cp a
    nop
    nop
    ret c

    ret c

    rst $38
    rst $38
    ld c, a
    ld c, a
    nop
    nop
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

    db $10
    rst $38
    nop
    rst $20
    nop
    rst $00
    ld [$00ff], sp
    rst $10
    nop
    ei
    inc b
    rst $38
    nop
    ld a, c
    add b
    ld sp, hl
    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    cp d
    ld bc, $4199
    ld b, l
    nop
    db $10
    jr nz, jr_07c_63be

    nop
    ld [$0800], sp
    sub b
    sub b
    or b
    or b
    ret z

    ret z

    add sp, -$01
    add sp, -$01
    ldh a, [rIE]
    ei
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07c_63be:
    rlca
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
    and b
    nop
    ld e, h
    nop
    stop
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    ret nc

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    dec c
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
    inc c
    inc c
    ld c, $0e
    or b
    nop
    db $fd
    nop
    rst $38
    nop
    sub c
    nop
    cp $00
    ld a, a
    nop
    ld a, a
    nop
    add d
    add b
    ld [bc], a
    ld [bc], a
    dec e
    ld bc, $003c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$87], a
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    ld a, b
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
    rst $38
    nop
    rst $38
    nop
    pop af
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rrca
    ldh a, [$80]
    ld a, a
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
    rst $20
    nop
    rst $20
    ld [$006b], sp
    nop
    ldh [$e0], a
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
    ld [bc], a
    ld [c], a
    nop
    db $fc
    ld bc, $01fd
    rst $38
    nop
    cp $00
    or $00
    ldh a, [rP1]
    ld hl, sp+$00
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld a, e
    nop
    ld a, a
    nop
    ld [hl], a
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    add b
    cp l
    ld b, b
    ld d, c
    ld b, b
    ld b, b
    ld l, d
    ld l, d
    inc hl
    rst $38
    ld [hl], c
    rst $38
    ld sp, $d9ff
    rst $38
    cp h
    rst $38
    cp a
    rst $38
    cp $ff
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
    cp a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    dec bc
    nop
    scf
    nop
    rra
    nop
    rrca
    nop
    rla
    nop
    rrca
    nop
    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rlca
    nop
    add e
    add b
    dec a
    inc a
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
    ld [hl], l
    ld [hl], l
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $00
    db $fc
    nop
    cp b
    nop
    inc b
    nop
    inc b
    inc b
    ret c

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_07c_6516:
    rra
    ldh [$e1], a
    ld e, $fe
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
    rst $18
    jr nz, jr_07c_6516

    inc d
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
    rra
    ldh [$f0], a
    rrca
    db $f4
    dec bc
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
    rra
    ldh [$c0], a
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ld d, b
    ld a, a
    add b
    ld c, l
    or d
    ld bc, $007e
    ld bc, $8080
    ld a, a
    ld a, a
    nop
    sub b
    nop
    nop
    nop
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    cp $c0
    cp $c0
    cp $d0
    cp $e0
    cp $70
    cp $7a
    cp $74
    cp $36
    cp $36
    rst $38
    cp h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0808], sp
    ld [$9594], sp
    sub h
    sub l
    sub b
    sub e
    add b
    add e
    ret nz

    rst $00
    ret nz

    rst $00
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    pop hl
    cp $e1
    cp $c3
    db $fc
    rst $00
    ld hl, sp-$39
    ld hl, sp-$79
    add b
    adc a
    add b
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ld de, $1400
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
    cp a
    nop
    sbc a
    jr nz, @+$01

    nop
    pop hl
    nop
    nop
    nop
    nop
    add b
    nop
    db $fc
    nop
    rst $38
    nop
    rra
    nop
    inc a
    inc a
    dec bc
    dec bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    pop bc
    pop bc
    rst $38
    rst $38
    inc bc
    inc bc
    ld bc, $1201
    nop
    ld a, $c1
    rlca
    ld hl, sp-$01
    nop
    ld [hl], a
    adc b
    ld [bc], a
    db $fd
    ret nz

    ccf
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
    ld bc, $f600
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
    rrca
    ldh a, [$c1]
    ld a, $fc
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
    ld a, a
    add b
    ld bc, $f0fe
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
    nop
    rst $38
    nop
    rrca
    ldh a, [$03]
    db $fc
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rra
    and b
    rra
    and b
    rra
    and b
    rra
    and b
    rrca
    sub b
    nop
    dec b
    jr nz, jr_07c_668e

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
    db $fc
    db $fc
    ret nz

    rst $08
    add b
    sbc a
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

jr_07c_668e:
    nop
    ccf
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    nop
    ld a, a
    add b
    cp a
    ldh a, [$f7]
    db $fc
    rst $38
    rst $38
    rst $38
    inc c
    di
    ld a, h
    add e
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    dec bc
    db $f4
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    pop af
    ldh a, [$0a]
    ld a, [bc]
    nop
    nop
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    ld a, a
    nop
    di
    ldh a, [rP1]
    ld h, b
    nop
    ld a, b
    add b
    ld hl, sp-$80
    pop af
    add b
    di
    add b
    and a
    ld b, b
    ld b, b
    nop
    sbc a
    ld [hl], b
    ld [hl], b
    ld [$d800], sp
    nop
    sbc l
    nop
    ccf
    nop
    rla
    nop
    adc [hl]
    adc [hl]
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
    nop
    ei
    nop
    ld b, c
    ld b, b
    add b
    nop
    ret nz

    ccf
    cp h
    ld b, e
    db $fd
    ld [bc], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    inc bc
    db $fc
    ldh [$1f], a
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
    ld a, a
    add b
    db $eb
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    add c
    ld a, [hl]
    db $e4
    dec de
    db $ec
    inc de
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    ld e, $e1
    jr nz, jr_07c_677e

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
    rlca
    ld h, a
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    inc b
    nop

jr_07c_677e:
    jr c, jr_07c_6780

jr_07c_6780:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1ff9
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0100
    nop
    ld bc, $8300
    ld bc, $c7fe
    jr c, @+$01

    nop
    ld a, l
    nop
    db $d3
    nop
    ret nc

    nop
    rst $38
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, c
    add [hl]
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
    ret nz

    ccf
    cp $01
    rst $38
    nop
    sbc a
    add b
    pop de
    ret nc

    inc b
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    inc sp
    inc bc
    ld [hl], b
    nop
    ld a, a
    nop
    ld a, a
    nop
    dec c
    nop
    adc a
    nop
    rrca
    nop
    rst $30
    ldh a, [$88]
    ld [$0000], sp
    adc b
    nop
    add c
    nop
    ld e, e
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    ld a, [$7f80]
    and b
    ld e, a
    rra
    ldh [$87], a
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$80], a
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    inc h
    ld e, e
    inc [hl]
    ld c, e
    ld a, [hl-]
    ld b, l
    jr c, jr_07c_687f

    ld a, [hl-]
    ld b, l
    ld [hl-], a
    ld c, l
    ld bc, $703e
    ld [hl], b
    nop
    jr nz, jr_07c_6843

jr_07c_6843:
    jr nz, jr_07c_6845

jr_07c_6845:
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    cp a
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $18
    rra
    rst $18
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07c_687f:
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [hl]
    ld bc, $007f
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
    cp $01
    add sp, $17
    stop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc a
    inc a
    ld bc, $0001
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    ld de, $1510
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rrca
    rrca
    add c
    ld bc, $0000
    ld b, $00
    add a

jr_07c_68db:
    nop
    ld a, [hl]
    nop
    ld e, $00
    ld a, $00
    ldh [$e0], a
    rlca
    rlca
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    add sp, $00
    ld [$fe00], a
    ld bc, $fd02
    ld bc, $c0fe
    ccf
    ldh a, [rIF]
    jr nz, jr_07c_68db

    add b
    ld a, a
    ld a, h
    add e
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld [bc], a
    nop
    add d
    ld [bc], a
    ret nz

    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    pop af
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    nop
    db $fc
    nop
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    ld [hl], b
    ld [hl], b
    ld b, h
    ld b, h
    rrca
    rrca
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $09fb
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld sp, hl
    inc b
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    ld bc, $01ff
    cp $00
    ld hl, sp+$04
    db $f4
    ld d, b
    ldh a, [rP1]
    ldh a, [rP1]
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$02
    ld a, [$f802]
    ld [bc], a
    ld hl, sp+$06
    ldh a, [rTMA]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [$0e]
    ldh [$0c], a
    ldh [$15], a
    ldh [rNR10], a
    ret nz

    ld d, $d0
    jr nc, @-$1e

    inc a
    or b
    ld a, a
    and d
    ld a, e
    ld b, b
    rst $00
    nop
    pop bc
    add b
    ldh [$80], a
    ld hl, sp-$20
    ld a, a
    db $fc
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    ld a, [bc]
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    nop
    nop
    db $f4
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    inc de
    nop
    jr nz, @+$22

    rla
    rla
    add b
    add b
    nop
    nop
    ld [bc], a
    ld [bc], a
    jp nz, Jump_000_1fc2

    rra
    rlca
    rlca
    ldh [rP1], a
    ld a, b
    nop
    ret nc

    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld hl, sp-$08
    rra
    rra
    ld [$0c00], sp
    nop
    jr nz, jr_07c_69ee

jr_07c_69ee:
    ld h, h
    nop
    ld e, [hl]
    nop
    ld [bc], a
    nop
    inc c
    nop
    ld bc, $0200
    ld [bc], a
    ld b, b
    nop
    ld de, $f000
    nop
    cp $00
    ldh [rP1], a
    ld a, [$7900]
    nop
    ccf
    nop
    inc bc
    nop
    pop bc
    ld bc, $00fa
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07c_6a19:
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$70
    adc a
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
    ret nz

    ccf
    ld b, b
    cp a
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
    ld hl, sp-$07
    rst $28
    rst $28
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fe]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$ef], a
    ldh [$ef], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    ld a, a
    ld b, b

jr_07c_6a65:
    ld a, a
    ret nz

    rst $38
    nop
    rra
    nop
    rla
    nop
    nop
    nop
    nop
    rst $18
    cp $df
    ccf
    add b
    ld a, a
    nop
    rst $38
    jr c, @+$01

    ret c

    jr nc, jr_07c_6a65

    db $10
    rst $10
    ld [$04fb], sp
    db $fc
    inc bc
    ret z

    jr nc, jr_07c_6a99

    ld [$02e0], sp
    db $10
    jr z, jr_07c_6a8d

jr_07c_6a8d:
    rlca
    ld c, b
    jr nz, jr_07c_6a19

    rlca
    add c
    ld h, b
    jr nc, jr_07c_6aa2

    ld b, $81
    dec b

jr_07c_6a99:
    ldh a, [rNR33]
    cp $0f
    rst $38
    pop bc
    ccf
    rrca
    nop

jr_07c_6aa2:
    nop
    nop
    ldh [$80], a
    cp $f0
    rst $38
    cp $1f
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    dec hl
    nop
    inc c
    nop
    jr nz, jr_07c_6abb

jr_07c_6abb:
    ld e, a
    nop
    ld b, d
    nop
    cp $00
    nop
    nop
    nop
    ret nz

    nop
    db $fc
    nop
    ld a, h
    nop
    nop
    nop
    ld l, a
    ld l, a
    rlca
    rlca
    nop
    or $00
    cp h
    nop
    ld a, h
    nop
    ld e, $04
    call nz, $f000
    nop
    db $f4
    nop
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    push hl
    nop
    nop
    nop
    ret nz

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
    ld h, b
    ld h, b
    adc [hl]
    ld c, $31
    ld bc, $0080
    stop
    and b
    nop
    ld c, $00
    rra
    nop
    sub a
    nop
    rrca
    nop
    db $10
    db $10
    ld sp, $0601
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    xor c
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld bc, $dcfe
    inc hl
    sbc l
    ld h, d
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    inc bc
    inc bc
    di
    inc de
    db $eb
    ld b, $fe
    ld b, $fe
    inc b
    push af
    inc b
    push af
    inc c
    db $fd
    inc c
    cp a
    inc c
    xor a
    inc c
    dec c
    db $fc
    db $fc
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
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rst $28
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
    nop
    nop
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
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ret nz

    ld a, e
    call c, $8f77
    or c
    rst $08
    cp b
    rst $08
    ld [$2b1f], a
    ld bc, $01fc
    ld a, h
    add e
    add e
    ld a, h
    ccf
    nop
    ld c, b
    rlca
    ld b, a
    rrca
    rlca
    rrca
    ld [$05e1], sp
    inc e
    ld b, b
    and e
    inc [hl]
    ld [$8502], sp
    jr jr_07c_6bfa

    nop
    dec c
    db $e3
    add b
    db $fc
    ldh a, [$7f]
    rst $38
    rrca
    rst $38
    rst $00
    ccf
    ld hl, sp+$07
    ld a, $c1
    add d
    db $fd
    pop af
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    jr jr_07c_6bbf

jr_07c_6bbf:
    rla
    rra
    rra
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld hl, sp+$00
    ccf
    nop
    rla
    nop
    ret nc

    ret nc

    nop
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
    ld b, $86
    nop
    add b
    nop
    ld b, b
    nop
    ldh [rP1], a
    nop
    nop
    ld b, c
    nop
    db $e3
    nop
    ld b, l
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07c_6bfa:
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld e, b
    nop
    stop
    inc b
    nop
    add b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    inc e
    nop
    ld h, h
    ld h, b
    inc e
    inc e
    add c
    ld bc, $00e0
    ret z

    nop
    ld l, b
    nop
    inc c
    nop
    ret nz

    nop
    ldh a, [rP1]
    call nz, Call_000_1000
    nop
    and b
    and b
    ld c, $0e
    ld bc, $c001
    nop
    add b
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    add [hl]
    nop
    ld h, $00
    and [hl]
    nop
    ld c, $f0
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $08
    ld bc, $00f9
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
    ld bc, $0100
    nop
    ld bc, $f301
    ld bc, $03fd
    ld a, a
    add b
    db $ec
    di
    ldh [rIE], a
    ld h, c
    rst $38
    add b
    rst $38
    ret nc

    rst $28
    ld [hl], b
    rst $28
    ret nz

    ccf
    ret nc

    ccf
    sbc e
    ld a, a
    rst $18
    rst $30
    rst $20
    rst $38
    rst $20
    rst $38
    ld a, a
    ld l, a
    ld a, a
    rst $28
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ld b, b
    rst $38
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld e, b
    nop
    add b
    nop
    sub $00
    db $f4
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld [hl], b
    ld [hl], b
    inc c
    inc c
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], d
    nop
    ld hl, sp+$00
    ld a, l
    nop
    dec hl
    nop
    ld [$b414], sp
    nop
    jr nz, jr_07c_6cf5

jr_07c_6cf5:
    ld a, [$fe00]
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    ldh a, [rP1]
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    add b
    nop
    ld a, [$fc00]
    nop
    rst $28
    nop
    ld hl, sp+$00
    rst $38
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
    ld [bc], a
    ld [c], a
    nop
    db $fc
    ld [bc], a
    ld a, d
    inc bc
    cp e
    inc bc
    db $e3
    inc bc
    add e
    inc bc
    jp $c606


    ld b, $c6
    ld c, $4e
    ld c, $4f
    inc e
    dec e
    inc e
    dec e
    inc e
    inc e
    ld hl, sp-$08
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
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    ccf
    inc b
    ccf
    dec c
    ccf
    dec b
    ld a, a
    inc bc
    ld a, a
    adc a
    ld a, a
    inc bc
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rra
    rst $00
    db $db
    rst $20
    rst $38
    ld a, a
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
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld l, b
    nop
    adc d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, [hl]
    nop
    ld b, b
    db $10
    sub b
    nop
    add b
    jr nz, jr_07c_6dde

    ld hl, sp-$08
    ld a, $3e
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    nop
    ld [$0708], sp
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

jr_07c_6dde:
    nop
    ret nz

    nop
    ret nz

    nop
    jr nz, jr_07c_6de5

jr_07c_6de5:
    nop
    ld bc, $0001
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    nop
    ld a, d
    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $28
    nop
    or d
    nop
    inc bc
    nop
    sub b
    nop
    add c
    nop
    ld e, $00
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $08
    nop
    rlca
    db $10
    ld de, $fce0
    ld h, b
    ld a, l
    jr nz, jr_07c_6e51

    nop
    add hl, sp
    nop
    ld [hl], $00
    cp h
    nop
    inc a
    nop
    ld hl, sp+$00
    ld sp, $3900
    nop
    jr c, jr_07c_6e27

jr_07c_6e27:
    ld b, $00
    nop
    db $f4
    db $f4
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nc

    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    rra
    rst $38
    rrca

jr_07c_6e51:
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    daa
    rst $38
    rla
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
    rlca
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_07c_6e77

jr_07c_6e77:
    ld h, b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld e, b
    nop
    stop
    ld c, b
    nop
    db $f4
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh [$38], a
    cp b
    rra
    rra
    ld bc, $2001
    jr nz, jr_07c_6e9b

jr_07c_6e9b:
    nop
    ld [$0008], sp
    nop
    jr @+$01

    db $fc
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
    nop
    rst $38
    add b
    rst $38
    ld h, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, [bc]
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
    inc b
    nop
    ld [bc], a
    nop
    sbc e
    nop
    xor e
    nop
    ld [$0000], sp
    nop
    and b
    nop
    ld [c], a
    nop
    ld [$e900], a
    nop
    db $fc
    nop
    rst $38
    nop
    cp $00
    rst $30
    nop
    adc $01
    ld bc, $fd01
    inc bc
    rra
    inc bc
    ei
    inc bc
    dec sp
    inc bc
    ei
    rlca
    ld a, a
    ld b, $f6
    ld c, $fe

jr_07c_6f02:
    inc c
    ld l, h
    inc e
    db $fc
    jr jr_07c_6f60

    jr c, jr_07c_6f02

    jr c, jr_07c_6f44

    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nz, @+$01

    ld [$10ff], sp
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07c_6f44:
    nop
    rst $38
    ld [hl], b
    rst $38
    dec c
    rst $38
    nop
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
    ld a, [hl]
    rst $38
    ld bc, $10ff
    rst $38
    nop
    rst $38
    jr nc, @+$01

jr_07c_6f60:
    ld d, b
    rst $38
    db $10
    rst $38
    and h
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    dec de
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
    nop
    rst $38
    add b
    rst $38
    inc bc
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
    add b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_07c_6fa9

jr_07c_6fa9:
    add b
    nop
    add b
    nop
    ret nz

    nop
    and b
    ret nz

    ret nz

    ret nz

    ld hl, sp-$80
    cp d
    add b
    adc [hl]
    nop
    inc l
    nop
    ld b, b
    nop
    ld b, b
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
    ld a, [$fffa]
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
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
    ld h, b
    rst $38
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
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
    dec d
    rst $38
    nop
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
    ld hl, sp-$01
    ccf
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
    add b
    rst $38
    ldh a, [rIE]
    ld a, [hl]
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
    ld [hl], h
    rst $38
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or $ff
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
    ld c, h
    nop
    ld a, h
    nop
    ld [hl], c
    nop
    jr c, @+$03

    ld sp, $0101
    inc bc
    inc bc
    dec de
    dec de
    ccf
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    ld a, a
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
    jr c, @+$01

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
    add b
    rst $38
    ld a, h
    rst $38
    ld c, a
    rst $38
    nop
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

jr_07c_70dc:
    db $fc
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $f4
    rst $38
    ccf
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
    ret nc

    rst $38
    ld a, a
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
    cpl
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    cp h
    jr c, jr_07c_70dc

    ld a, a
    ld a, a
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
    rst $28
    rst $38
    ld l, $ff
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
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ldh [rIE], a
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
    db $fc
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ccf
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
    ld b, b
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $18
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
    ld bc, $fcff
    rst $38
    rra
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
    ldh a, [rIE]
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec c
    ld c, $07
    rlca
    rrca
    db $10
    ld de, $1312
    inc d
    inc b
    inc b
    inc b
    inc b
    inc b
    dec d
    ld d, $07
    rla
    jr jr_07c_7219

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07c_7229

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07c_7214

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

jr_07c_7214:
    dec l
    ld l, $2f
    jr nc, jr_07c_724a

jr_07c_7219:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07c_725a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_07c_7229:
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
    rlca
    ld d, b
    ld d, c
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
    ld c, a
    rlca
    ld e, [hl]
    ld e, a

jr_07c_724a:
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
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_07c_725a:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc b
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
    ld a, e
    ld a, h
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
    inc b
    inc b
    inc b
    and a
    rlca
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    rlca
    or c
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    cp a
    rlca
    ret nz

    pop bc
    jp nz, $c2c3

    inc b
    call nz, $c507
    add $04
    inc b
    inc b
    inc b
    rst $00
    ret z

    rlca
    ret


    jp nz, $cbca

    call z, Call_000_07cd
    adc $04
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $08
    rlca
    rlca
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $04
    inc b
    inc b
    inc b
    inc b
    inc b
    rst $10
    ret c

    rlca
    rst $10
    reti


    jp c, Jump_000_0704

    db $db
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    call c, Call_000_0707
    db $dd
    sbc $df
    push de
    add $04
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ldh [$e1], a
    rlca
    rlca
    ld [c], a
    db $e3
    ld bc, $0101
    ld b, $00
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
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0006
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    ld bc, $0101
    ld bc, $0601
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0206
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0001
    ld bc, $0106
    ld b, $00
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld b, $03
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    ld bc, $0006
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0006
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0006
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0006
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0301
    ld bc, $0005
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec b
    dec b
    ld bc, $2101
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld bc, $0101
    ld bc, $0003
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
    dec b
    ld bc, $0101
    inc bc
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
    dec b
    dec b
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
    ld [bc], a
    nop
    nop
    dec b
    dec b
    ld bc, $0000
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
    dec b
    ld bc, $ffec
    db $ec
    rst $38
    db $fd
    rst $28
    db $fc
    rst $28
    db $f4
    rst $28
    push af
    rst $28
    ld [hl], h
    rst $28
    ld [hl], h
    rst $28
    ld [hl], h
    rst $28
    ld [hl], h

jr_07c_7463:
    rst $38
    ld [hl], h
    rst $38
    ld [hl], h
    rst $38
    ld [hl], d
    rst $38
    jr c, jr_07c_7463

    ld a, [hl-]

jr_07c_746d:
    rst $30
    ld a, [hl-]
    rst $30
    ld a, [hl-]
    rst $30
    ld a, [hl-]
    rst $30
    jr c, jr_07c_746d

    inc [hl]
    ei
    dec [hl]
    ei
    inc e
    ei
    inc e
    ei
    ld e, h
    cp e
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    dec e
    rst $38
    inc c
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ret nz

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
    ld l, e
    rst $38
    ld l, c
    rst $38
    ld a, c
    rst $28
    ld a, c
    rst $28
    ld [hl], c
    rst $28
    ld [hl], c
    rst $28
    ld [hl], h
    rst $28
    ld [hl], h
    rst $28
    ld [hl], h
    rst $38
    inc [hl]
    rst $38
    inc [hl]

jr_07c_74e5:
    rst $38
    inc a

jr_07c_74e7:
    rst $30
    inc a
    rst $30
    ld a, [hl-]
    rst $30
    jr c, jr_07c_74e5

    jr c, jr_07c_74e7

    ld a, [hl-]
    rst $30
    ld a, [de]
    rst $30
    ld a, [de]
    rst $30
    ld a, [de]
    rst $30
    ld e, $fb
    inc e
    ei
    inc e
    ei
    inc e
    ei
    inc e
    ei
    inc e
    ei
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld l, d
    sbc l
    ld l, [hl]
    sbc l
    ld c, $fd
    ccf
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    cp $03
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    cp a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $28
    cp a
    rst $28
    cp a
    rst $28
    cp a
    call $edbf
    cp a
    push bc
    cp a
    db $dd
    cp a
    push de
    rst $38
    push af
    rst $18
    push af
    rst $18
    db $f4
    rst $18
    push af
    rst $18
    db $f4
    rst $18
    db $f4
    rst $18
    ld h, [hl]
    rst $18
    ld h, [hl]
    rst $18
    ld h, [hl]
    rst $18
    ld l, [hl]
    rst $18
    ld e, [hl]
    rst $28
    ld c, e
    cp $73
    xor $7b
    xor $72
    rst $28
    ld [hl-], a
    rst $28
    ld [hl-], a
    rst $28
    ld [hl-], a
    rst $28
    ld [hl-], a
    rst $28
    ld a, [hl+]
    rst $30
    add hl, hl
    rst $30
    ld hl, $01ff
    rst $38
    ld hl, sp+$07
    rst $38
    nop
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
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
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
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    rlca
    cp $07
    ld hl, sp+$0f
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ld a, a
    add b
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
    ei
    inc b
    rst $38
    nop
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $28
    or h
    rst $28
    or a
    rst $38
    ld a, [$f9ff]
    rst $38
    cp a
    db $fd
    rst $38
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
    db $db
    rst $38
    sbc $ff
    jp c, $daff

    rst $38
    ld e, d
    rst $38
    ld e, e
    rst $38
    jp c, Jump_07c_4bff

    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    add hl, bc
    rst $38
    add hl, hl
    rst $38
    add hl, sp
    rst $28
    add hl, sp
    rst $28
    cp c
    ld l, a
    or l
    ld l, a
    or a
    ld l, l
    or a
    ld l, l
    dec h
    rst $38
    dec h
    rst $38
    dec b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f2
    dec c
    ld [c], a
    dec e
    db $e3
    inc e
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    inc bc

jr_07c_765c:
    rst $38
    inc c

jr_07c_765e:
    db $fc
    inc de

jr_07c_7660:
    di
    inc e
    rst $30
    jr jr_07c_765c

    jr jr_07c_765e

    jr jr_07c_7660

    jr @-$03

    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ld a, [$fd0d]
    rlca
    db $fd
    rlca
    db $fc
    rlca
    db $fd
    ld b, $fd
    ld c, $f5
    ld e, $e5
    ld a, $e5
    ld a, $c5
    ld a, [hl]
    add d
    rst $38
    ld [bc], a
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
    cp $03
    cp $03
    cp $fd
    inc bc
    rst $38
    ld bc, $03ff
    cp $03
    db $fc
    rlca
    db $fd
    rlca
    ld a, [$ff0f]
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh a, [$3f]
    ret z

    ld a, a
    ld hl, sp+$7f
    add b
    rst $38
    ld a, a
    add b
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
    db $fd
    ld [bc], a
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
    nop
    nop
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rNR41]
    ld hl, sp-$80
    db $fc
    add [hl]
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    db $e3
    rst $38
    db $d3
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld c, a
    db $fc
    ld e, a
    db $fc
    ld c, e
    db $fc
    ld e, e
    db $fc
    ld e, a
    ld hl, sp-$21
    ld a, b
    ld d, b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    add b
    ld a, a
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_07c_7748:
    rst $38
    ret nz

    rst $38
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    cp a
    ld h, c
    cp [hl]
    ld h, e
    cp [hl]
    ld h, e
    cp h
    ld h, a
    ld b, a
    jr z, jr_07c_77b2

    jr nc, @+$61

    jr nz, jr_07c_77c6

    jr nz, jr_07c_7748

    jr nz, jr_07c_77ca

    and b
    rrca
    sub b
    xor a
    ld de, $112f
    ld l, $13
    ld l, $13
    inc l
    rla
    inc l
    rla
    jr z, @+$21

    jr z, @+$21

    jr z, jr_07c_779f

    db $10
    rra
    db $10
    rra
    jr nz, @+$41

    jr nc, jr_07c_77c7

    ld e, b
    ld a, a
    ld c, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    ld a, $c0
    ld e, $e0
    sbc $20
    ld a, a

jr_07c_779f:
    add b
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
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop

jr_07c_77b2:
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
    cp $01
    rst $30
    ld [$00ff], sp

jr_07c_77c6:
    ei

jr_07c_77c7:
    inc b
    rst $38
    nop

jr_07c_77ca:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ccf
    ret nz

    add b
    rst $38
    ret nc

    rst $38

jr_07c_7808:
    ld [hl], b
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rra
    rst $38
    cp a
    ld a, a

jr_07c_7812:
    cp a
    ld a, a

jr_07c_7814:
    sbc a
    ld a, a

jr_07c_7816:
    rst $18
    ccf

jr_07c_7818:
    sbc $3f

jr_07c_781a:
    adc $3d

jr_07c_781c:
    adc $3d
    adc $3d
    inc c
    rst $38
    ld [$00ff], sp
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
    ldh a, [rIF]
    ldh [$1f], a
    pop bc
    ld a, $c3
    inc a
    rst $00
    jr c, jr_07c_7808

    jr c, jr_07c_7812

    jr nc, jr_07c_7814

    jr nc, jr_07c_7816

    jr nc, jr_07c_7818

    jr nc, jr_07c_781a

    jr nc, jr_07c_781c

    jr nc, @+$01

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

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
    rst $38
    rra
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $fd
    nop
    db $fc
    nop
    jp c, $f000

    nop
    ret nz

    nop
    and b
    nop
    add b
    nop
    ld [de], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    add [hl]
    nop
    xor [hl]
    nop
    di
    nop
    rst $38
    nop
    jp c, $bf20

    ld b, b
    db $e3
    nop
    xor $00
    cp d
    nop
    rst $10
    nop
    ld l, c
    nop
    db $eb
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07c_78b5:
    nop
    cp a
    ld b, b
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, @-$47

    ld c, b
    db $fc
    inc bc
    rst $20
    jr jr_07c_78b5

    rrca
    rst $38
    nop
    cp $01
    rst $38
    nop
    dec de
    db $e4
    rst $38
    nop
    db $ed
    ld [de], a
    sub a
    ld l, b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07c_790c

    ret nc

    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    nop
    nop
    ld bc, $fdff
    inc bc
    or e
    ld bc, $01cd
    pop hl
    ld bc, $ffe1
    rst $38
    rst $38
    nop
    rst $38
    db $fd
    nop
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38

jr_07c_790c:
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ret nc

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
    add b
    ld a, [hl]
    nop
    add e
    ld a, h
    add a
    ld a, b
    rrca
    ldh a, [$1f]
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
    ld hl, sp+$00
    ld [$9800], sp
    nop
    ret


    nop
    stop
    ld b, b
    nop
    nop
    nop

jr_07c_7960:
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
    jr nz, jr_07c_7972

jr_07c_7972:
    jr nz, jr_07c_7974

jr_07c_7974:
    ld b, h
    nop
    ld [de], a
    nop
    db $dd
    nop
    sbc $00
    ei
    nop
    or $00
    call c, $be00
    nop
    ccf
    nop
    ld a, l
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    push af
    nop
    cp a
    nop
    db $fd
    nop
    cp $00
    cp $00
    ld a, [$f700]
    nop
    or $00

jr_07c_799e:
    rst $38
    nop
    ei
    inc b
    rst $28
    db $10
    sbc a
    ld h, b
    rst $20
    jr jr_07c_7960

    ld c, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld e, a
    and b
    rst $30
    ld [$48b7], sp
    sub c
    ld l, [hl]
    adc a
    ld [hl], b
    cp l
    ld b, d
    ld [hl], l
    adc d
    cp [hl]
    ld b, c
    rst $08
    jr nc, jr_07c_799e

    ld [hl+], a
    xor l
    ld d, d
    inc a
    jp Jump_000_3ac5


    add e
    ld a, h
    rst $38
    nop
    add b
    ld a, a
    ld bc, $fffe
    nop
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
    ld hl, sp-$01
    rst $38
    nop
    nop
    ld h, b
    sbc a
    ld a, a
    add b
    inc d
    add b
    nop
    add b
    nop
    add b
    inc a
    ret nz

    rst $38
    rst $38
    rlca
    rst $38
    nop
    nop
    cp $00
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    ld bc, $fe01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    inc a
    ret nz

    ld a, b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    pop hl
    nop
    ldh [rSC], a
    pop hl
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
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
    call nc, $e8fd
    rst $38
    or h
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
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
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fd
    rst $38
    or $ff
    ld sp, hl
    rst $38
    or $ff
    ei
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    ret nz

    nop
    db $e4
    nop
    ret nz

    nop
    db $db
    nop
    xor a
    nop
    jp hl


    nop
    ld [c], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    xor l
    ld d, d
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    cp e
    ld b, h
    jp hl


    ld d, $fe
    ld bc, $44bb
    ld a, [$ff05]
    nop
    sbc [hl]
    ld h, c
    ld [hl-], a
    call Call_000_00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $00
    nop
    nop
    nop
    db $fc
    inc bc
    rst $38
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    inc b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld bc, $0300
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
    rst $38
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
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $30
    nop
    rst $38
    ld bc, $e7f7
    rst $38
    rst $20
    rst $30
    rst $20
    rst $30
    db $e3
    rst $30
    add c
    rst $30
    nop
    ld b, d
    nop
    adc a
    nop
    rst $18
    ld bc, $039f
    rst $08
    inc bc
    sbc a
    rlca
    rst $18
    rlca
    cp a
    rlca
    rst $18
    rlca
    cp a
    rrca
    cp a
    rrca
    cp a
    rrca
    rst $18
    rrca
    cp a
    rrca
    rst $38
    rrca
    cp a
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $8eff
    rst $38
    ld e, e
    rst $38
    or $ff
    or a
    rst $38
    db $fd
    rst $38
    ld l, a
    rst $38
    db $db
    rst $38
    xor a
    rst $38
    push af
    rst $38
    cp a
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec c
    nop
    rst $18
    nop
    ld l, a
    nop
    rra
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
    cp a
    ld b, b
    rst $38
    nop
    cp $01
    rst $30
    ld [$00ff], sp
    ld [hl], a
    adc b
    rst $28
    db $10
    db $fc
    nop
    cp $01
    db $fd
    ld [bc], a
    inc b
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    jr nz, @+$01

    xor $71
    ei
    ld h, b
    pop af
    ld h, b
    ld [hl], b
    ld h, b
    ld h, b
    rst $38
    rst $38
    rst $38
    ccf
    nop
    nop
    nop
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    sbc a
    ld h, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $03ff
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
    ld e, l
    rst $38
    scf
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
    ld bc, $0600
    nop
    ld e, e
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    cpl
    nop
    rra
    nop
    rrca
    nop
    dec hl
    nop
    inc d
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
    dec b
    nop
    inc a
    nop
    jr nc, jr_07c_7c76

jr_07c_7c76:
    ld a, h
    nop
    db $fc
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    db $fc
    nop
    ldh [rP1], a
    or [hl]
    ld b, b
    pop hl
    nop
    db $f4
    nop
    ret nz

    nop
    ldh a, [rP1]
    add h
    nop
    ld a, [c]
    nop
    ld [$2000], sp
    add b
    nop
    nop
    ld [$0000], sp
    nop
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
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    cp $01
    rst $38
    nop
    ld a, a
    nop
    inc e
    db $e3
    rst $38
    rst $38
    rst $38
    nop
    rrca
    nop
    rst $38
    nop
    sbc h
    ld h, e
    inc b
    ei
    nop
    rst $38
    rst $38
    rst $38
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
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
    inc [hl]
    nop
    add sp, $00
    rst $38
    nop
    cp e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    or e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    add e
    rst $00
    add e
    rst $28
    rst $00
    rst $28
    rst $00
    rst $28
    rst $00
    rst $38
    rst $00
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
    nop
    nop
    ld bc, $0000
    nop
    nop
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
    rst $38
    nop
    ld a, a
    ld bc, $037f
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
    rlca
    inc bc
    rlca
    ld bc, $0107
    rst $38
    inc bc
    rst $38
    adc h
    ld a, a
    sbc b
    ld a, h
    ld a, d
    pop af
    jp $0fff


    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ld a, [$f807]
    scf
    ld hl, sp-$01
    ld hl, sp+$28
    rst $10
    ld b, $f9
    rlca
    ld hl, sp+$3f
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
    rst $00
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld a, a
    nop
    rlca
    add b
    ld a, a
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    nop
    rlca
    add b
    rlca
    ldh [rTAC], a
    ld hl, sp-$79
    ld hl, sp+$47
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    nop
    ld b, $00
    ld [bc], a
    nop
    ld b, $00
    dec b
    nop
    ld b, $00
    rrca
    nop
    rrca
    nop
    add a
    nop
    rla
    nop
    dec e
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
    rst $38
    nop
    rst $38
    nop
    pop af
    nop
    db $fc
    nop
    rst $38
    nop
    db $fd
    nop
    ld [hl], b
    nop
    jr jr_07c_7e44

jr_07c_7e44:
    nop
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
    nop
    ld c, $00
    ld c, $00
    adc e
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
    ccf
    nop
    sbc a
    nop
    ccf
    nop
    rra
    nop
    inc bc
    nop
    adc [hl]
    ld bc, $020d
    ld c, a
    db $10
    ld bc, $3d00
    ld [bc], a
    ld [bc], a
    ld bc, $007f
    add e
    nop
    nop
    nop
    nop
    nop
    ld bc, $007f
    rst $38
    ld [bc], a
    rst $38
    ld [$30ff], sp
    rst $38
    dec [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    db $ec
    di
    xor b
    rst $00
    nop
    sbc a
    ld b, b
    ccf
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    sbc b
    rst $38
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
    ldh [$1f], a
    db $f4
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    ld a, e
    nop

jr_07c_7eea:
    cp a
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
    ld a, e
    nop
    add e
    nop
    call nc, $0500
    nop
    ld c, c
    nop
    inc a
    nop
    dec b
    nop
    ld [$0c00], sp
    nop
    rrca
    nop
    rrca
    nop
    ld e, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07c_7eea

    ld b, b
    rst $30
    ld [$04fb], sp
    ei
    inc b
    rst $30
    ld [$827d], sp
    ld a, [$ef05]
    db $10
    rst $38
    nop
    dec de
    inc b
    inc bc
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

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
    cp $ff
    ld hl, sp-$01
    ldh [rP1], a
    rst $38
    ccf
    ret nz

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
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    nop
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
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    cp a
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
    rst $18
    jr nz, @+$81

    add b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp d
    ld b, l
    rst $38
    nop
