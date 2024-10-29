SECTION "ROM Bank $080", ROMX[$4000], BANK[$80]

    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ret nc

    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    pop af
    cp $c0
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    cp $3b
    cp $a5
    cp $b0
    rst $38

Call_080_4020:
    jr nc, @+$01

    ld [bc], a
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ret nc

    rst $28
    ld b, c
    cp $42
    db $fd
    ld hl, $a1de
    sbc $13
    db $ec
    ld d, a
    add sp, -$55
    call nc, $dcb3
    ld d, e
    db $fc
    jp $e2fc


    db $fd
    db $e3
    db $fc
    and e
    db $fc
    sub a
    add sp, $3f
    ldh [rKEY1], a
    or b
    jp z, $c334

    inc a

jr_080_404e:
    adc e
    ld [hl], h
    add e
    ld a, h
    dec hl
    call nc, $b04f
    cp e
    ld b, h
    inc e
    db $e3
    sbc e
    ld h, h
    sbc a
    ld h, b
    adc e
    ld [hl], h
    rra
    ldh [$9f], a
    ld h, b
    rla
    add sp, -$0b
    ld a, [bc]
    rst $38
    nop
    rst $18
    jr nz, @-$1f

    jr nz, jr_080_404e

    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    add b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    cp a
    ld b, b
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    rra
    ld b, b
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $03
    cp $03
    ld a, [$0f07]
    cp $0e
    cp $1f
    db $fc
    inc e
    db $fd
    inc a
    ld sp, hl
    ld a, [hl]
    ei
    ld a, d
    di
    db $76

Call_080_40bf:
    rst $20
    adc [hl]
    rst $08
    ld [$119f], sp
    ccf
    ld [bc], a
    ld a, a
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    rst $28
    rra
    ccf
    adc a
    ld l, a
    adc a
    rst $28
    rrca
    scf
    rst $08
    rst $00
    cp a
    ld hl, sp+$01
    add sp, -$10
    ld hl, sp-$10
    add sp, -$10
    ld sp, hl
    ldh [rIE], a
    nop
    rst $38
    nop

Call_080_40ee:
    rst $38
    nop
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld [hl], c
    cp $fd
    rst $38
    and [hl]
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld c, b
    rst $30
    add hl, bc
    cp $74
    sbc e
    ld [de], a
    db $fd
    dec b
    ei
    rst $28
    ret nc

    inc de
    db $ec
    inc sp
    ret nz

    sbc b
    rst $20
    sbc b
    rst $20
    call c, Call_000_1fe3
    ldh [rIF], a
    ldh a, [rTIMA]
    ld a, [c]
    rrca
    ldh a, [rTAC]
    ld hl, sp+$06
    ld sp, hl
    ld e, a
    and b
    dec de
    db $e4
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    ld [$ff14], a
    nop
    cp $00
    cp a
    nop
    xor a
    nop
    rst $30
    nop
    xor $00
    rst $18
    nop
    rst $30
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    ld sp, hl
    cp $7b
    cp $d3
    cp $f3
    rst $38
    ei
    rst $38
    cp [hl]
    ld b, b
    rst $28
    nop
    ld a, [hl]
    ret nz

    rst $18
    ld h, b
    sbc $61
    sbc a
    ld h, b
    sbc e
    ld h, h
    ld a, $e5
    db $ed
    inc [hl]
    rst $28
    inc [hl]
    db $eb
    inc [hl]
    rst $28
    inc [hl]
    db $db
    inc h
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fd
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    cp $ff
    ei
    rst $38
    cp $ff
    rst $28
    rst $38
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    ld sp, hl
    nop
    call c, $fc20
    nop
    cp $00
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld a, e
    add h
    di
    inc c
    db $eb
    inc d
    ld [de], a
    rst $38
    inc [hl]
    rst $38
    sub [hl]
    rst $38
    or h
    rst $38
    sub b
    rst $38
    or d
    rst $38
    ld c, e
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec sp
    rst $38
    add hl, sp
    rst $38
    cp e
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38

Jump_080_41be:
    ld [hl], a
    rst $38
    ld b, b
    cp [hl]
    inc b
    cp $04
    cp $a4
    ld e, h
    adc h
    ld a, h
    sub h
    ld l, l
    xor l
    ld e, h
    cp a
    ld c, h
    adc e
    ld l, h
    adc b
    ld l, a
    ret z

    ld l, a
    ret nz

    ld c, a
    ld b, [hl]
    ret


    rst $18
    ret nz

    sbc $c1
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    db $eb
    rst $38
    ld bc, $90ff
    rst $38
    ld a, h
    rst $38
    add hl, de
    rst $38
    ld b, a
    cp a
    rla
    rst $28
    ld c, e
    or a
    ld d, c
    xor [hl]
    sub h
    ld l, e
    ld c, [hl]
    add hl, de
    ld a, b
    rra
    ld b, a
    or b
    jp hl


    cp $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    push af
    cp $f0
    rst $38
    di
    db $fc
    pop bc
    cp $e1
    cp $f0
    rst $38
    db $f4
    ei
    db $fd
    ld a, [$fff0]
    call c, $f9fb
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ret c

    rst $38
    ld l, d
    db $fd
    ld [hl], l
    cp $c9
    db $76
    ld c, c
    or $45
    ld a, [$fa05]
    dec hl
    db $f4
    rrca
    ldh a, [rTAC]
    ld hl, sp-$0b
    ld a, d
    sbc b
    ld [hl], a
    xor c
    or $ff
    ldh a, [$f3]
    db $fc
    ld sp, hl
    cp $f5
    cp $dd
    cp $e3
    cp $f2
    rst $38
    ld a, [hl]
    add b
    ld h, [hl]
    nop
    ld [$ff00], a
    nop
    rst $28
    nop
    db $eb
    nop
    rst $38
    nop
    daa
    nop
    scf
    rst $38
    ld [hl], c
    cp a
    ld bc, $99ff
    ld h, a
    ld [c], a
    dec e
    di
    rrca
    jp c, $d227

    cpl
    sub e
    ld l, h
    ld c, a
    ldh a, [rVBK]
    ldh a, [$ef]
    ldh a, [$b6]
    ld l, c
    ld h, b
    rst $38
    rst $20
    db $fc
    db $fc
    rst $38
    ei
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    cp h
    ld [bc], a
    ld sp, hl
    ld b, $fd
    ld [bc], a
    rst $10
    ld a, [hl+]
    sub a
    ld l, d
    ld bc, $cdfe
    ld [hl-], a
    ld a, [c]
    dec bc
    sbc e
    ld l, e
    ld c, c
    cp e

jr_080_42ac:
    cp c
    ld a, e
    ld [hl-], a
    ei
    ld c, l
    rst $38
    ld a, d
    rst $18
    ld c, b
    rst $18
    pop de
    rst $18
    add c
    rst $18
    and b
    rst $18
    ret nz

    cp a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $05fe
    ld a, [$00ff]
    rst $38
    nop
    ei
    inc b
    ld sp, hl
    ld b, $fc
    inc bc
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIE], a
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
    cp $ff
    ld sp, hl
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    dec sp
    rst $18
    sbc l
    rst $38
    rlca
    rst $38
    ld d, a
    rst $38
    ld b, [hl]
    rst $38
    ld bc, $a4ff
    db $db
    ld hl, $6ade
    sub l
    adc b
    ld d, a
    ld a, l
    jp nz, $c037

    jp nc, $e009

    add b
    ret nz

    add b
    add b
    ret nz

    ld d, b
    add b
    ld l, b
    add b
    add b
    ld b, b
    nop
    ret nz

    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    adc b
    nop
    ldh [rP1], a
    ld h, b
    add b
    jr nz, jr_080_42ac

    add b
    nop
    ldh [rP1], a
    ld a, [c]
    nop
    ld c, b
    add b
    ldh [rP1], a
    ret z

    nop
    add sp, $0a
    nop
    adc d
    adc c
    nop
    jp nz, $8000

    nop
    nop
    add b
    add b
    nop
    jr nz, jr_080_4348

jr_080_4348:
    ld h, b
    nop
    ret nz

    nop
    and b
    nop
    and b
    nop
    ret z

    nop
    ldh [rP1], a
    ret nc

    nop
    ldh [rP1], a
    xor b
    ld b, b
    and b
    ld b, b
    call nc, Call_080_4020
    and b
    ret z

    or b
    sbc b
    ld h, b
    sub b
    ld h, b
    ld b, b
    ldh [rNR41], a
    ret nz

    and b
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$c0], a
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    ld a, a
    ret nz

    ld a, a
    ld l, b
    rst $38
    pop hl
    rst $38
    ld a, [bc]
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld e, l
    rst $38
    inc e
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    add h
    ld a, e
    add e
    ld a, h
    ld a, [de]
    push hl
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $28
    db $10
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
    rst $38
    rst $38
    rst $38

jr_080_43f3:
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ei
    rst $38

Jump_080_43fc:
    ldh [rIE], a
    pop bc
    rst $38
    jp nc, Jump_000_00ad

    rst $38
    dec c
    ld a, [c]
    inc c
    di
    ld [hl+], a
    db $dd
    jr jr_080_43f3

    ld [hl], b
    xor a
    and b
    ld e, a
    dec bc
    ld bc, $010b
    inc bc
    ld bc, $0103
    ld [$0103], sp
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0007
    ld b, $01
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop

Call_080_4437:
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
    ld bc, $0100
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
    ldh [$c0], a
    rst $38
    ccf
    ccf
    nop
    nop
    ld b, e
    nop
    rst $10
    nop
    or a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_080_449d:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$7bff], sp
    rst $38
    sub a
    rst $38
    inc bc
    rst $38
    sub a
    rst $38
    rst $30
    rst $38
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    jr z, @+$01

    and b
    rst $38
    or b
    rst $38
    ld de, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    cp a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld a, b
    adc a
    ldh [$1f], a
    db $ec
    inc de
    rst $20
    jr jr_080_449d

    dec sp
    ld hl, sp+$07
    rst $38

jr_080_44dd:
    nop
    rst $18
    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    di
    nop
    rst $38
    rst $38
    rst $00
    rst $38
    dec b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sub e
    rst $38
    ld a, [de]
    rst $38
    rlca
    rst $38
    add b
    rst $38
    inc b
    rst $38
    jr z, jr_080_44dd

    and c
    ld e, [hl]
    ld [hl+], a
    db $dd
    ret nc

    ld l, a
    sub b
    ld l, a
    ld c, b
    or a
    cp b
    ld a, h
    cp b
    ld a, h
    cp b
    ld a, h
    cp b
    ld a, h
    ld hl, sp+$3c
    cp b
    ld a, h
    cp b
    ld a, h
    call c, $dc3c
    inc a
    call c, $dc3c
    inc a
    call c, Call_080_7c3c
    inc a
    ld e, h
    inc a
    inc e
    inc a
    ld a, h
    inc a
    ld e, h
    inc a
    ld e, h
    inc a
    ld e, h
    inc a
    ld e, h
    inc a
    ld e, h
    inc a
    ld e, h
    inc a
    inc e
    ld a, h
    ld e, h
    inc a
    ldh [rP1], a
    cp h
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    cp b
    ccf
    cp b
    ccf
    or b
    nop
    or b
    ccf
    or b
    ccf
    or b
    ccf
    cp b
    ccf
    and b
    ccf
    and b
    ccf
    ret nz

    ccf
    nop
    ld a, a
    ld hl, sp+$00
    ccf
    ret nz

    cp d
    ld b, b
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    cp a
    ld b, b
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    rrca
    ldh a, [$f7]
    ld hl, sp-$05
    sbc h
    db $fd
    adc $ff
    and $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $01
    ld a, [hl]
    ld bc, $f90e
    ld b, $ff
    ld b, $9f
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld e, $0e
    rst $38
    cp $06
    ld a, [hl]
    add h
    ld a, [$3204]
    call z, $cc33
    rlca
    ld hl, sp+$0f
    ld hl, sp-$6d
    db $fc
    rla
    ld hl, sp+$3f
    ldh a, [$73]
    db $fc
    and e
    db $fc
    push hl
    cp $60
    rst $38
    ret nz

    rst $38
    ld b, c
    cp $82
    db $fd
    ld c, b
    rst $30
    ret nz

    rst $38
    add c
    cp $01
    cp $52
    db $fd
    dec b
    ld a, [$dc23]
    ccf
    ret nz

    ld a, e
    add h
    ld a, a
    add b
    cp d
    ld b, l
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp h
    ld b, e
    cp e
    ld b, h
    ldh [$1f], a
    ret nc

    cpl
    ld sp, hl
    ld b, $f3
    inc c
    rst $38
    nop
    rst $28
    db $10
    rst $30
    ld [$00ff], sp
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    ld d, a
    rst $38
    ld sp, $2dff
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    sub c
    rst $38
    inc b
    rst $38
    inc hl
    rst $18
    ld [bc], a
    nop
    ld de, $0200
    nop
    add hl, bc
    nop
    ld bc, $0100
    nop
    inc b
    nop
    ld bc, $0000
    rlca
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    ld bc, $0dfd
    db $fd
    db $fd
    db $fd
    ld bc, $0001

jr_080_4631:
    db $fd
    jr jr_080_4631

    dec de
    db $fd
    add hl, bc
    db $fd
    ld [bc], a
    db $fd
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
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
    add b
    nop
    nop
    nop
    add b
    nop
    add sp, $00
    ret nc

    nop
    ret


    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld e, a
    and b
    ld sp, hl
    and $1b
    db $e4
    sbc $ef
    sub $ff
    cp $ff
    rst $18
    rst $38
    db $eb
    nop
    rst $28
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld e, $01
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    push hl
    rst $38
    di
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld l, [hl]
    sub c
    ld e, $e1
    ld a, $c1
    rra
    ldh [$30], a
    rst $08
    add b
    ld a, a
    inc b
    ei
    ret nz

    ccf
    nop
    rst $38
    ld c, h
    or e

jr_080_46a8:
    ld e, a
    and b
    ret nz

    ccf
    ld d, d
    xor l
    and b
    ld e, a
    db $fc
    inc bc
    scf
    ret z

    and h
    ld e, e
    push hl
    ld a, [de]
    ld c, b
    or a
    dec bc
    db $f4
    ld a, [bc]
    push af
    cp [hl]
    ld b, c
    dec [hl]
    jp z, $09f6

    rst $38
    nop
    rst $18
    jr nz, jr_080_46a8

    jr nz, @+$01

    nop
    db $eb
    inc d
    ld sp, hl
    ld b, $fc
    inc bc
    cp $01
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld e, a
    rst $38
    rst $38
    rst $38
    dec hl
    nop
    inc de
    nop
    ld a, [de]
    nop
    ld c, c
    nop
    inc de
    nop
    and c
    nop
    rlca
    nop
    inc h
    nop
    ld [bc], a
    nop
    dec h
    nop
    add hl, hl
    nop
    add hl, bc
    nop
    ld de, $5600
    nop
    ld a, [de]
    nop
    ld c, e
    nop
    ld [$b701], a
    nop
    rst $38
    rrca
    rst $18
    cpl
    xor a
    ld e, a
    adc a
    ld a, a
    ld h, a
    sbc a
    adc a
    ld a, a
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    rra
    nop
    cp $01
    ld hl, sp+$07
    pop af
    rrca
    add e
    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    db $db
    daa
    ld a, [c]
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    dec sp
    inc b
    ld bc, $0007
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    inc de
    nop
    or a
    nop
    rst $18
    nop
    rst $38
    nop
    db $dd
    ld [hl+], a
    xor $01
    add sp, $07
    and c
    ld b, a
    xor c
    ld b, a
    ld sp, $bdce
    rst $10
    push de
    rst $38
    push hl
    rst $38
    and $00
    rst $20
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
    rra
    nop
    inc bc
    nop
    rlca
    nop
    ld e, $01
    rra
    nop
    cp a
    nop
    ld a, h
    inc bc
    ld a, h
    inc bc
    db $fc
    inc bc
    jp $803f


    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $05ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    inc hl
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sub a
    ld a, a
    ld d, a
    cp a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    daa
    rst $18
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    db $e4
    dec de
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b
    cp a
    call nz, $f83b
    rlca
    ei
    inc b
    ld a, b
    add a
    ei
    inc b
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fc
    inc bc
    cp h
    ld b, e
    cp $01
    cp $01
    rst $38
    nop
    or a
    rrca
    ld e, a
    daa
    ld a, e
    rlca
    ld a, e
    rlca
    ld [hl], a
    rrca
    ld l, a
    rra
    or a
    ld c, a
    ld [hl], a
    rrca
    xor $1f
    adc [hl]
    ld a, a
    cp [hl]
    ld a, a
    db $76
    cp a
    ld c, $ff
    sbc [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    ld a, [hl-]
    inc b
    ld a, [hl]
    nop
    and d
    ld e, h
    adc d
    ld a, h
    and $1c
    ld c, [hl]
    cp h
    ld e, $fc
    adc h
    ld a, [hl]
    sbc h
    ld a, [hl]
    ld c, $fc
    ld c, h
    cp $1c
    cp $1c
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $be
    cp $16
    cp $40
    cp [hl]
    cp $fe
    ld a, $00
    ld a, [hl]
    nop
    ld e, $00
    ld c, $00
    ld a, [bc]
    inc b
    ld e, $00
    ld e, [hl]
    nop
    or [hl]
    ld [$007c], sp
    ld a, [hl]
    nop
    db $fc
    nop
    or h
    ld c, b
    call z, $f030
    inc c
    call nz, $cc38
    jr c, jr_080_489b

    db $ec
    inc d
    ld hl, sp+$2c
    ld hl, sp-$24
    ld hl, sp-$48
    ld hl, sp-$04
    ld hl, sp-$26
    db $fc
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    add hl, bc
    ldh a, [rSB]
    ldh a, [$8f]
    ld [hl], b
    pop bc
    ccf
    add e
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    sbc a
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
    rst $38
    rst $38

jr_080_489b:
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

jr_080_48a8:
    sbc a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    ld h, [hl]
    rst $38
    ld [bc], a
    rst $38
    ld d, b

jr_080_48bd:
    rst $38
    push bc
    rst $38
    inc d
    rst $38
    sbc h
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    nop
    rst $38
    jr z, @+$01

    ld e, $ff
    rra
    rst $38
    dec bc
    rst $38
    db $d3
    ccf
    add b
    ld a, a
    jr nz, @+$01

    db $10
    rst $28
    jr nz, jr_080_48bd

    add b
    ld a, a
    reti


    or b
    ld bc, $d1b0
    jr nc, jr_080_48a8

    jr nc, jr_080_491a

    jr nz, jr_080_493c

    jr nz, jr_080_48fd

    ld h, c
    ld d, c
    jr nz, jr_080_4901

    ld h, c
    ld b, e
    jr nz, jr_080_4956

    ld [bc], a
    ld h, d
    ld bc, $0162
    jp Jump_080_6301


jr_080_48fd:
    ld bc, $03c1
    ret nz

jr_080_4901:
    inc bc
    ld b, l
    inc bc
    ld b, l
    inc bc
    push bc
    inc bc
    adc a
    inc bc
    ld b, l
    adc e
    ld c, a
    add e
    add a
    inc bc
    inc bc
    add a
    add c
    rlca
    add a
    inc bc
    adc l
    rlca
    dec c
    rlca

jr_080_491a:
    rlca
    rrca
    rrca
    rlca
    dec c
    inc bc
    dec b
    inc bc
    dec c
    inc bc
    add hl, bc
    rlca
    dec bc
    rlca
    rrca
    rlca
    dec c
    rlca
    scf
    rrca
    rla
    rrca
    rla
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    rra
    ccf
    rra
    ld a, a
    rra

jr_080_493c:
    ld a, a
    rra
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rra
    ccf
    ld a, l
    ccf
    ld e, a
    ccf
    rst $18
    ccf
    ld e, a
    ccf

jr_080_4956:
    ld c, $7f
    ld e, a
    ccf
    ld d, a
    ccf
    rst $18
    ccf
    sbc $3f
    cp a
    ld a, a
    cp a
    ld a, a

jr_080_4964:
    cp a
    ld a, a
    db $fc
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    rst $18
    jr nz, jr_080_4964

    db $10
    rst $08
    jr nc, jr_080_49e8

    db $10
    ld a, a
    nop
    ld l, a
    db $10
    rst $08
    or b
    rst $28
    sub b
    rst $08
    or b
    rst $18
    and b
    ld l, e
    sub b
    rra
    ldh [$7f], a
    add b
    cp a
    ret nz

    cp [hl]
    ret nz

    cp a
    add b
    cp a
    add b
    cp a
    add b
    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$8f], a
    ldh a, [$bf]
    ret nz

    cp a
    ret nz

    sbc a
    and b
    sbc a
    and b
    cp a
    add b
    cp a
    add b
    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    add b
    sbc a
    and b
    sbc a
    and b

jr_080_49be:
    sbc a
    and b
    sbc a
    ldh [$df], a
    ldh [$5f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    rst $38
    ret nz

    rst $18
    ret nz

    ld e, a
    ret nz

    sbc a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

jr_080_49d8:
    rra
    ldh [$1f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$cf], a
    ccf
    call $c73f
    ccf
    and b
    ld e, a

jr_080_49e8:
    and h
    ld e, e
    jp nc, $e22f

    rra
    and $1f
    or $0f
    rst $00
    ccf
    ld b, a
    ccf
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
    and c
    ld e, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld hl, $21fe
    cp $03
    db $fc
    inc bc
    db $fc
    add l
    ld a, d
    ld b, a
    cp b
    rst $20
    jr jr_080_49be

    ld e, b
    rst $20
    jr jr_080_49d8

    ld b, b
    ld a, [hl]
    add b
    db $fd
    nop
    rst $38
    nop
    ld e, a
    add b
    cp a
    nop
    cp $00
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    jp hl


    nop
    rst $38
    nop
    xor e
    ld b, b
    cp $00
    ld a, [hl]
    add b
    ld a, a

jr_080_4a39:
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    db $ed
    ld [de], a
    jp hl


    ld [de], a
    cp a
    ld b, b
    db $fd
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    cp a
    nop
    cp [hl]
    nop
    scf
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld l, a
    rst $38
    ld c, e
    rst $38
    rst $18
    rst $38
    xor d
    rst $38
    ld l, b
    rst $38
    ld d, b
    rst $28
    ld h, l
    ei
    ld h, l
    ei
    ld [hl], d
    db $fd
    push bc
    ld a, [$f3cc]
    adc h
    di
    adc h
    di
    rst $18
    ldh [$9b], a
    db $e4
    sbc [hl]
    ldh [$8d], a
    ldh a, [$cf]
    ldh a, [$96]
    jp hl


    and a
    ret c

    add $f9
    rst $30
    ld sp, hl
    sub [hl]
    ld sp, hl
    rst $08
    ldh a, [$1f]
    ldh [$5f], a
    ldh [$d4], a
    add sp, $4f
    ldh a, [rNR31]
    db $e4
    adc [hl]
    pop af
    rst $00
    ld hl, sp-$15
    db $f4
    add $f9
    push de
    add sp, -$32
    ldh a, [$ac]
    ldh a, [$c6]
    ld hl, sp-$31
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$c7]
    ldh a, [$ce]
    ldh a, [$8e]
    ldh a, [$ae]
    ldh a, [$fd]
    jr nz, jr_080_4a39

    ld [hl], b
    sbc b
    ld h, b
    ld [hl], c
    xor b
    ld a, c
    add b
    ld a, d
    add b
    or d
    ld b, b
    ld hl, sp+$00
    ld [hl], b
    ret nz

    push de
    ldh [$e9], a
    ret nz

    cp b
    ret nz

    sbc d
    ret nz

    inc c
    ldh [rNR10], a
    ldh [rNR44], a
    ret nz

    or $e1
    ld [hl], l
    ldh [$f9], a
    call nz, Call_080_40ee
    jp nz, $9cc8

    ret nz

    cp h
    ret nz

    xor [hl]
    ld b, b
    cp $f9

jr_080_4ae2:
    sbc $f9
    ld a, d
    db $fd
    inc sp
    db $fc
    ld sp, $a7fe
    ld hl, sp-$7d

jr_080_4aed:
    db $fc
    cp a
    ldh a, [$b7]
    ld hl, sp-$71
    ldh a, [$8f]
    ldh a, [rTAC]
    ld hl, sp+$2f
    ret nc

    ld a, a
    sub b
    db $76
    sbc b
    add hl, hl
    ret nc

Jump_080_4b00:
    xor l
    ld d, b
    ld l, a
    sub b
    ld l, a
    sub b
    ld a, l
    sub b
    call Call_080_5a30
    and b
    ld c, h
    or b
    ld a, [hl]
    sub b
    xor $10
    ld [hl], $80
    ld [hl], a
    add b
    call c, $f000
    nop
    inc [hl]
    nop
    ldh a, [rP1]
    jr c, jr_080_4b20

jr_080_4b20:
    rst $28
    db $fc
    ld a, l

jr_080_4b23:
    cp $30
    rst $38
    ld hl, sp-$01
    db $d3
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_080_4b30:
    ld a, d
    inc b
    rst $30
    inc c
    ld sp, hl
    inc e
    rst $38
    jr jr_080_4b30

    jr jr_080_4ae2

    jr jr_080_4b23

    jr jr_080_4aed

    db $10
    cp h
    ld [bc], a
    cp d
    ld b, $7b
    ld b, $ff
    ld b, $dc
    ld b, $7e
    inc b
    ld [$ff04], a
    nop
    ei
    rst $38
    xor l
    ei
    ld a, [hl]
    ld sp, hl
    cp [hl]
    ld sp, hl
    rst $10
    ld hl, sp-$0c
    ei
    jr nc, @+$01

    ld a, b
    or a
    call nc, $133b
    db $fc
    ld b, a
    cp b
    srl h
    sbc c
    ld l, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop de
    ld l, $cc
    dec sp
    add e
    ld a, [hl]
    inc h
    jp c, $d824

    ld h, d
    sbc b
    xor d
    ld d, b
    add [hl]
    ld a, b
    sub h
    ld l, b
    push hl
    jr jr_080_4baf

    ret nc

    or h
    ld b, b
    xor b
    ld d, b
    cp d
    ld b, b
    ld hl, sp+$00
    db $10
    ret z

    ld a, b
    adc b
    ret c

    ld [$00c8], sp
    cp b
    nop
    sbc h
    nop
    ld c, [hl]
    add b
    inc c
    add d
    sbc [hl]
    ld [bc], a
    dec e
    ld [bc], a
    ld e, a
    nop
    add [hl]
    add hl, bc
    ld e, a
    ld bc, $030f
    db $dd
    inc bc
    cpl
    inc bc
    ld l, a
    inc bc
    ld a, a

jr_080_4baf:
    inc bc
    dec hl
    ld d, a
    rrca
    ld d, a
    scf
    ld c, a
    rst $38
    rrca
    ld a, a
    rrca
    sbc a
    ccf
    sbc a
    ccf
    cp h
    ccf
    cp [hl]
    dec e
    db $db
    inc e
    db $dd
    jr @-$1f

    jr jr_080_4bf8

    jr @-$47

    ld [$000f], sp
    rst $00
    nop
    jp Jump_000_2a04


    ld b, h
    sbc e
    ld b, h
    ld [c], a
    ld c, h
    and l
    ld c, b
    ret nz

    inc b
    inc d
    ld b, h
    ld d, h
    nop
    ld e, a
    and b
    inc a
    pop bc
    cp l
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    push af
    nop
    db $fd
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_080_4bf8:
    db $f4
    rst $38
    call nc, $f2ff
    rst $38
    or $ff
    ld a, $ff
    rst $38
    cp $8d
    rst $38
    db $db
    rst $28
    adc [hl]
    rst $38
    cp l
    jp c, $d82f

    ld a, [de]
    db $fd
    ld h, b
    sbc a
    ldh a, [rIF]
    ld a, c
    adc [hl]
    ld l, l
    sbc [hl]
    cpl
    call c, $3fcc
    ret z

    ccf
    ld d, b
    cp a
    pop bc
    cp [hl]
    db $ec
    sbc e
    ld h, [hl]
    cp c
    ld h, e
    cp b
    ld a, l
    cp b
    cp $b8
    sub e
    db $ec
    or c
    adc $f9
    add [hl]
    ld h, c
    sbc [hl]
    daa
    sbc d
    add hl, sp
    adc [hl]
    ld l, l
    cp d
    dec [hl]
    ld [$e09e], a
    sbc d
    ldh [$f6], a
    add b
    ld a, [c]
    nop
    ldh a, [rP1]

jr_080_4c46:
    ld [c], a
    nop
    push hl
    nop
    and $00

jr_080_4c4c:
    db $ed
    ret nz

jr_080_4c4e:
    db $e3
    call z, $c0ed
    rst $38
    ld b, b
    cp d
    ld h, h
    rst $38
    ld h, b
    and [hl]
    ldh [rNR12], a
    ldh [$b9], a
    ld b, b
    or d
    ld d, b
    scf
    ld hl, sp+$65
    cp b
    dec h
    ld hl, sp-$61
    ld h, b
    rra

jr_080_4c69:
    ldh [$d9], a
    jr nz, jr_080_4c46

    jr nz, jr_080_4c4c

jr_080_4c6f:
    jr nz, jr_080_4c6f

    jr nz, jr_080_4c69

    ld [$08fb], sp
    adc a
    ld [$008e], sp
    rla
    nop
    dec b
    nop

jr_080_4c7e:
    dec h
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld h, [hl]
    nop
    ld c, a
    nop
    db $eb
    nop
    inc hl
    nop
    inc hl
    nop
    inc sp
    nop
    ld [hl+], a
    nop
    inc bc
    nop
    ld sp, $2200
    nop
    nop
    nop
    ld bc, $a600
    nop
    ld [hl], d
    nop
    ld e, h
    jr nz, jr_080_4d0b

    db $10
    ld [hl], $d0
    ld a, [$f8f0]
    ld a, [c]

jr_080_4cac:
    ld sp, hl
    ld a, [c]
    ld a, [c]
    ld a, [$fab1]
    di
    jr c, jr_080_4c7e

    jr nc, jr_080_4cac

    nop
    ldh a, [rP1]
    or c
    nop
    jr nz, jr_080_4c4e

    ld b, b
    or b
    ld h, c
    or b
    or e
    ldh [$a0], a
    ldh [$60], a
    add b
    add b
    nop
    sub h
    nop
    dec d
    nop
    dec b
    nop
    inc h
    nop
    ld bc, $0000
    ld bc, $0100
    ld hl, $0000
    nop
    stop
    nop
    nop
    add $f9
    push de

jr_080_4ce3:
    db $eb
    adc a
    di
    inc c
    di
    ld b, h
    ei
    and e
    call c, $cc33
    scf
    ret z

    ld a, a
    add b
    rst $38
    add b
    ld c, a
    ldh a, [rNR34]
    pop hl
    ld e, $e1
    rst $18
    jr nz, jr_080_4ce3

    add hl, de
    or $09
    ld h, l
    sbc d
    ld l, a
    sub b
    ld e, a
    or b
    ld e, a
    and b
    ccf
    ret nz

    rst $38

jr_080_4d0b:
    ld b, b
    ld a, e
    add h
    rst $38
    nop
    rst $38
    nop
    ld a, e
    add h
    swap h
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    cp $00
    ld a, d
    nop
    cp $00
    rst $28
    nop
    rst $38
    nop
    db $fd
    nop
    di
    nop
    ld d, l
    nop
    ld d, c
    nop
    ld c, e
    inc b
    ld [hl], h
    rlca
    ldh a, [rTAC]
    ld a, h
    inc bc
    ld l, l
    db $10
    ld l, l
    db $10
    ld l, a
    db $10
    ld a, [hl]
    nop
    db $76
    ld [$0cd1], sp
    di
    inc c
    ld a, $00
    ccf
    nop
    ld a, [hl+]
    nop
    ld [bc], a
    nop
    jr z, jr_080_4d4e

jr_080_4d4e:
    jr jr_080_4d50

jr_080_4d50:
    dec e
    nop
    rra
    nop
    rra
    nop
    ld h, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    rst $30
    nop
    cp $00
    db $dd
    nop
    rst $00
    nop
    and $01
    call nz, $cf03
    nop
    add $00
    and h
    nop
    push af
    nop
    rst $38
    nop
    scf
    nop
    sbc h
    nop
    inc e
    nop
    dec d
    ld [$009c], sp
    sbc d
    nop
    sub d
    nop
    or [hl]
    nop
    or l
    nop
    push hl
    nop
    ld h, l
    nop
    and d
    nop
    inc bc
    nop
    and b
    nop
    ret nc

    nop
    ld bc, $1800
    nop
    ld a, l
    nop

jr_080_4d96:
    ld e, l
    jr nz, jr_080_4d96

    nop
    ld b, l
    nop
    ld b, l
    nop
    adc a
    nop
    ld c, $00
    xor [hl]
    nop
    and h
    nop
    ld b, b
    nop
    jr c, jr_080_4daa

jr_080_4daa:
    ld c, b
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_080_4db4

jr_080_4db4:
    jr nc, jr_080_4db6

jr_080_4db6:
    stop
    ret z

    nop
    ret nc

    nop
    add d
    nop
    add d
    nop
    sub h
    add d
    sbc d
    add b
    adc [hl]
    add b
    add d
    add b
    add b
    add b
    ret nz

    add b
    ret nc

    ret nz

    ret z

    ret nz

    add sp, -$40
    di
    add sp, -$15
    or b
    ld a, b
    or b
    or b
    ld a, b
    ld hl, sp+$78
    ld a, [hl]
    ld hl, sp+$74
    ld hl, sp+$0c
    di
    inc h
    rst $38
    dec l
    cp $38
    rst $28
    cp b
    ld c, a
    xor c
    ld e, [hl]
    or c
    ld c, [hl]
    dec [hl]
    jp z, Jump_080_43fc

    ld c, $f1
    rra
    ldh [$7f], a
    add b
    ei
    inc b
    ei
    inc b
    db $db
    inc h
    push af
    ld [$18e7], sp
    di
    jr jr_080_4e54

    or b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    cp a
    nop
    rst $10
    jr nz, @-$0f

    nop
    db $fd
    nop
    push af
    nop
    push af
    nop
    ld l, d
    add c
    sbc $21
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    cp $00
    rst $30
    ld [$00ff], sp
    rst $28
    db $10
    ei
    db $10
    ld l, e
    db $10
    rla
    jr nz, @+$79

    nop
    rst $18
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    nop
    di
    nop
    cp d
    nop
    ld a, $00
    ld l, [hl]
    nop
    halt
    cpl
    nop
    ld h, a
    nop
    cpl
    nop
    ld a, [de]
    nop
    rla
    nop

jr_080_4e54:
    rra
    nop
    rrca
    nop
    ld l, h
    nop
    ld l, c
    nop
    ld l, l
    nop
    xor $00
    xor [hl]
    nop
    or b
    nop
    call z, $8900
    nop
    pop af
    nop
    halt
    rst $30
    nop
    ld a, [hl]
    nop
    cp b
    nop
    cp [hl]
    nop
    rlc b
    rst $00
    nop
    sub d
    ld bc, $0118
    jr c, jr_080_4e7f

    inc sp

jr_080_4e7f:
    nop
    ccf
    nop
    ld [bc], a
    inc d
    ld a, e
    inc b
    ld a, e
    inc b
    ld [hl+], a
    inc b
    ld c, b
    inc b
    and l
    ld [bc], a
    add $01
    and d
    ld bc, $01c2
    add b
    nop
    nop
    add b
    adc b
    nop
    adc b
    nop
    ld [$0d00], sp
    nop
    rlca
    nop

jr_080_4ea2:
    ld [bc], a
    ld bc, $0106
    dec bc
    ld bc, $0107
    ld b, $01
    daa
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    ld [hl], b
    nop
    jr nz, jr_080_4ecc

    jr nz, jr_080_4ece

    jr nc, jr_080_4ec0

jr_080_4ec0:
    stop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc de
    nop

jr_080_4ecc:
    ld [bc], a
    nop

jr_080_4ece:
    ld bc, $6000
    nop
    ldh [rP1], a
    ld b, b
    nop
    ld c, b

jr_080_4ed7:
    nop
    ld c, b
    nop
    ld l, b
    nop
    nop
    jr nz, jr_080_4eff

    nop
    db $d3
    inc l
    or e

jr_080_4ee3:
    ld c, h
    rst $20
    jr jr_080_4ece

    jr @-$17

    jr jr_080_4ea2

    ld c, b
    cpl
    ret nc

    dec bc
    ldh a, [$37]
    ldh [rNR22], a
    ldh [$5f], a
    and b
    rst $10
    jr z, jr_080_4ed7

    ld hl, $43bc
    xor h
    ld b, e
    ld l, h

jr_080_4eff:
    add e
    db $fc
    inc bc
    cp $01
    ld h, [hl]
    add hl, de
    ei
    inc e
    ld a, e
    inc e
    rst $10
    jr z, @+$01

    nop
    or a
    ld b, b
    ld a, a
    add b
    cpl
    ret nz

    ld e, a
    add b
    ld c, a

jr_080_4f17:
    add b
    ld e, a
    add b
    cp h
    inc bc
    ld a, [hl]
    ld bc, $01be
    ld e, [hl]
    ld bc, $00ff
    rst $30
    ld [$08f7], sp
    cp a
    ld b, b
    ld a, a
    add b
    rst $30
    ld [$06b9], sp
    ld sp, hl
    ld b, $eb
    inc b
    ld a, e
    inc b
    ld a, [c]
    inc c
    rst $10
    jr z, @-$17

    jr jr_080_4ee3

    ld e, c
    rst $20
    jr jr_080_4f88

    cp b
    xor $30
    xor a
    ld [hl], b
    xor e
    ld [hl], b
    ld [$df71], a
    ld h, b
    ei
    nop
    ld h, e
    nop
    di
    nop
    db $e3
    nop
    xor a
    nop
    adc l
    ld [bc], a
    cp b
    rlca
    inc a
    inc bc
    rra
    nop
    cp a
    nop
    ld a, a
    nop
    push af
    ld [$00fc], sp
    cp [hl]
    nop
    cp [hl]
    nop
    ld a, $00
    inc sp
    nop
    inc hl
    nop
    inc sp
    nop
    ld a, $00
    ld a, [hl]
    nop
    cp a
    nop
    sbc e
    nop
    rst $18
    add b
    ld a, [hl]
    add b
    sub $20
    cp h
    ld h, b
    ld l, h
    jr nc, jr_080_4fd5

    jr nz, jr_080_4f17

    nop

jr_080_4f88:
    ld [hl], b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    xor b
    db $10
    and b
    jr jr_080_4fa5

    jr z, @+$1a

    jr nz, jr_080_4fa9

    jr nz, jr_080_4fab

    jr nz, jr_080_4fcd

    nop
    ld [bc], a
    nop
    inc b
    nop
    nop
    inc b
    dec bc

jr_080_4fa5:
    inc b
    jp $c20c


jr_080_4fa9:
    inc c

jr_080_4faa:
    db $fd

jr_080_4fab:
    nop
    cp $00
    ld hl, sp+$00
    inc b
    jr @+$56

    jr c, jr_080_4faa

    jr c, @+$14

    add hl, sp
    ld hl, $1b19
    ld bc, HeaderOldLicenseeCode
    nop
    ld bc, $0049
    ld c, l
    nop
    ld e, $00
    ld a, [de]
    inc b
    ld c, $04
    inc c
    ld [bc], a
    inc b

jr_080_4fcd:
    nop
    ld bc, $0000
    ld bc, $0102
    ld [bc], a

jr_080_4fd5:
    ld bc, $0100
    dec b
    nop
    ld bc, $0000
    nop
    ld [bc], a
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
    jr jr_080_5013

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_080_5023

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_080_5033

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_080_5043

    ld [hl-], a

jr_080_5013:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_080_5053

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_080_5023:
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

jr_080_5033:
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

jr_080_5043:
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

jr_080_5053:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld [hl], l
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
    ld [hl], l
    ld [hl], l
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
    ld [hl], l
    inc c
    dec c
    ld [hl], l
    ld c, $0f
    db $10
    ld de, $1012
    ld [hl], l
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_080_511a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_080_512a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_080_513a

    ld a, [hl+]
    ld [hl+], a
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_080_514b

jr_080_511a:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
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

jr_080_512a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop

jr_080_513a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop

jr_080_514b:
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0202
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0303
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
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
    ld [bc], a
    ld [bc], a
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld [$080a], sp
    nop
    add hl, bc
    add hl, bc
    nop
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    nop
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0a0a], sp
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
    add hl, bc
    scf
    ret


    dec h
    db $db
    ld [hl], $c9
    ld a, [$8c05]
    ld [hl], d
    ld c, $f3
    ld c, $f3
    ld b, c
    cp a
    ld bc, $c6ff
    ld a, b
    ld b, $f8
    add h
    ei
    and b
    ld e, [hl]
    add d
    ld a, h
    call z, $cc33
    ld [hl-], a
    or $08
    cp [hl]
    ld b, b
    ld a, [hl]
    add b
    db $fc
    ld [bc], a
    cp $00
    ld hl, sp+$07
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    cp $01
    or $00
    ei
    nop
    ld a, [$0e00]
    ret nz

    xor $00
    rst $38
    nop
    or $00
    cp $00
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ld a, c
    rst $38
    rst $38
    rst $38
    call c, $faff
    rst $38
    db $76
    rst $38
    db $d3
    rst $38
    dec a
    rst $38
    ld e, e
    rst $38
    ld a, [$b2ff]
    rst $38
    ld l, d
    rst $38
    ld a, $ff
    rst $20
    rst $38
    ld a, [$75ff]
    rst $38
    ld a, [bc]
    rst $38
    push af
    rst $38
    ld sp, hl
    rst $38
    and $ff
    db $f4
    rst $38
    sbc $ff
    xor $ff
    ld a, h
    rst $38
    cp $ff
    ld h, a
    rst $38
    ld h, e
    rst $38
    cp $7f
    inc h
    rst $38
    ld l, b
    rst $30
    ld b, [hl]
    ld sp, hl
    adc b
    rst $30
    db $ed
    di
    add hl, hl
    rst $30
    ret nz

    rst $38
    ld b, d
    cp l
    call c, $c02f
    ccf
    sbc h
    ld l, a
    sub h
    ld l, a
    ld [hl], h
    adc a
    ret c

    ld h, a
    ret z

    scf
    cp d

jr_080_5305:
    push bc
    ld a, [bc]
    push af
    ld c, a
    ld hl, sp+$50
    cp a
    jp nz, Jump_000_063d

    ld sp, hl
    jp nc, $c26d

    dec a
    jr jr_080_5305

    cp e
    ld c, h
    xor h
    ld e, a
    jr z, @+$01

    rlca
    ld hl, sp+$3f
    ret nz

    dec b
    ei
    rrca
    di

jr_080_5324:
    rra
    db $e3

jr_080_5326:
    ld e, l
    db $e3
    ld e, a
    xor b
    ld d, e
    xor h
    rst $38
    nop
    rst $18
    jr nz, jr_080_5326

    ld a, [bc]
    rst $20
    jr jr_080_5324

    inc e
    ei
    inc e
    db $db
    inc a
    db $fd
    ld a, [de]
    db $e3
    inc e
    or a
    ld c, b
    di
    inc e
    ld a, [c]
    dec c
    ret c

    daa
    rst $30
    ld [$52ad], sp
    sub $29
    call nc, $f82b
    rlca
    ld h, [hl]
    sbc l
    ld [hl], $c9
    ld [hl+], a
    db $dd
    ld [hl], d
    adc l
    sub h
    ld l, e
    jp z, Jump_000_2175

    rst $38
    ld h, d
    rst $38
    nop
    rst $38
    nop
    ld l, a
    nop
    rst $08
    nop
    ld b, a
    nop
    inc sp
    db $10
    ccf
    db $10
    ld a, $10
    rst $38
    nop
    jp z, $b900

    nop
    jr c, jr_080_5377

jr_080_5377:
    dec [hl]
    nop
    ld sp, $e000
    nop
    inc bc
    nop
    nop
    nop
    ld a, [bc]
    nop
    ld c, $40
    add h
    add h
    nop
    jr nz, jr_080_538a

jr_080_538a:
    nop
    nop
    inc b
    nop
    ld e, b
    nop
    inc [hl]
    rst $38
    nop
    rst $38
    inc h
    rst $38
    ld b, d
    rst $38
    ld b, c
    rst $38
    ld b, d
    rst $38
    ld a, [de]
    rst $38
    and [hl]
    rst $38
    or d
    rst $38
    inc h
    rst $38
    xor e
    rst $38
    pop hl
    rst $38
    ld e, $ff
    adc d
    rst $38
    dec h
    rst $38
    ld c, b
    rst $38
    ld l, b
    rst $38
    ld [hl-], a
    rst $38
    ld h, e
    rst $38
    ld l, [hl]
    rst $38
    inc b
    rst $38
    ld e, l
    rst $38
    call nc, $e3ff
    rst $38
    ld a, [hl-]
    rst $38
    ld h, $ff
    adc $ff
    or d
    rst $38
    sbc c
    rst $38
    or c
    rst $38
    or [hl]
    rst $38
    and h
    rst $38
    xor c
    nop
    ld c, l
    nop
    or [hl]
    nop
    ld d, h
    nop
    push bc
    nop
    add b
    nop
    ld h, c
    inc b
    ld h, e
    nop
    ret nz

    rst $38
    sbc a
    rst $38
    xor b
    rst $38
    xor b
    rst $38
    ld c, h
    rst $38
    ld [bc], a
    rst $38
    ccf
    rst $18
    ld a, [bc]
    rst $38
    ld d, a
    rst $38
    jr z, @+$01

    dec a
    rst $38
    ld c, h
    rst $38
    jp nc, $ccff

    rst $38
    dec de
    rst $38
    ld l, e
    db $fd
    jr nc, @+$01

    reti


    rst $38
    ld h, [hl]
    rst $38
    xor d
    ld a, a
    db $ed
    ld a, a
    sbc l
    ld a, a
    dec de
    rst $38
    ld de, $36ff
    rst $38
    add a
    rst $38
    ld d, l
    cp a
    sub [hl]
    ld a, a
    ld e, d
    cp a
    rst $18
    ccf
    dec bc
    rst $38
    sbc d
    ld l, a
    ld a, [hl-]
    rst $18
    add l
    ei
    ld b, c
    cp a
    ld d, d
    xor a
    sub b
    ld l, a
    push de
    cpl
    ld [hl], c
    adc a
    add sp, $17
    ld l, b
    sub a
    db $f4
    dec bc
    cp b
    ld b, a
    push af
    dec bc
    or d
    ld c, l
    ldh [$1f], a
    ld [hl], b
    adc a
    ld a, [c]
    rrca
    ld [hl], c
    adc [hl]
    jp nc, $b62f

    ld c, a
    ld h, l
    rst $18
    jp $01ff


    rst $38
    inc bc
    rst $38
    ld h, $fd
    ld b, d
    cp l
    inc d
    rst $38
    jr nz, @+$01

    and h
    ld a, a
    jr z, @+$01

    add hl, hl
    rst $38
    ld a, $ff
    set 7, a
    ld h, $f8
    rrca
    rst $38
    dec l
    rst $38
    ld b, $ff
    inc b
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld e, a
    ld [$009f], sp
    ld e, a
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    ccf
    nop
    scf
    nop
    nop
    nop
    sbc h
    nop
    dec d
    nop
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld b, $00
    inc bc
    nop
    ld bc, $ff00
    jr nz, @+$01

    nop
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    ld c, c
    rst $38
    dec b
    rst $38
    sbc h
    rst $38
    ld [$9800], sp
    nop
    or b
    ld bc, $00ac
    ld [hl], $00
    ld b, c
    nop
    and b
    nop
    ld bc, $c800
    rst $38
    xor l
    rst $38
    ld [hl], h
    rst $38
    db $10
    rst $38
    and d
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    jr z, @+$01

    ld d, b
    nop
    ld c, b
    nop
    ld h, b
    nop
    ld b, h
    nop
    sub [hl]
    nop
    ld a, [bc]
    ld bc, $0062
    sub h
    nop
    sub c
    rst $38
    ld c, l
    rst $38
    or d
    rst $38
    ld c, c
    rst $38
    ld b, b
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld [hl], b
    rst $38
    db $d3
    nop
    ld d, d
    nop
    inc e
    nop
    jr z, jr_080_5528

    and b
    nop
    jp nc, $ad00

    nop
    sbc c
    nop
    sub a
    ld b, b
    ld a, [bc]
    nop
    adc l
    nop
    adc [hl]
    nop
    ld b, b
    nop
    di
    nop
    inc a
    nop
    sbc e
    nop
    ld b, e
    rst $38
    ld d, e
    rst $38
    rst $08
    rst $38
    ld h, $ff
    ld a, [hl+]
    rst $38
    inc c
    rst $38
    ld b, [hl]
    rst $38
    sbc c
    rst $38
    call c, $35ff
    rst $38
    add sp, -$01
    dec hl
    rst $38
    ld h, h
    ei
    ld l, $fd
    sbc l
    rst $38
    or c
    rst $38
    sub $00
    dec b
    nop
    push de
    nop
    sub h
    ld b, b

jr_080_5528:
    ld b, $c0
    dec d
    ld b, b
    sub [hl]
    ld b, b
    ld [hl], $00
    jp c, $5cff

    rst $38
    ld e, l
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [hl], $ff
    dec d
    rst $38
    dec d
    rst $38
    dec e
    rst $38
    inc d
    rst $38
    ld c, $ff
    inc de
    rst $38
    dec h
    rst $38

jr_080_554a:
    ld a, [hl-]
    rst $38
    ld e, a
    rst $38
    adc l
    rst $38
    call nc, $0900
    nop
    ld b, a
    nop
    db $db
    nop
    db $d3
    nop
    or a
    nop
    db $d3
    ld bc, $0358
    nop
    nop
    or h

jr_080_5563:
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    and h
    rst $18
    ld [$08ff], sp
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $28ff
    rst $38
    ldh [rIE], a
    or b
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, jr_080_5563

    ld h, b
    sbc a
    ld [hl], b
    adc a
    db $fc
    inc bc
    sbc [hl]
    ld h, c
    cp a
    ld b, b
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    rst $28
    db $10
    cp $01
    db $fd
    ld [bc], a
    ld e, a
    nop
    cp $01
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    cp $01
    rst $18
    jr nz, jr_080_554a

    ld h, b
    rst $38
    nop
    rst $38
    nop
    ld a, [$f905]
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    ld [hl], a
    nop
    rst $38
    nop
    ei
    nop
    or $00
    db $d3
    jr nz, @+$01

    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    db $db
    rst $38
    rst $10
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    nop
    or e
    ld [$0875], sp
    ei
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
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld a, a
    nop
    ld a, l

jr_080_55fd:
    ld [bc], a
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc a
    nop
    scf
    nop
    ld de, $5d04
    nop
    dec d
    nop
    cp e
    rst $38
    ld c, a
    rst $38
    xor a
    rst $38
    scf
    rst $38
    rst $10
    rst $38
    ld e, e
    rst $38
    ld c, e
    rst $38
    sbc [hl]
    rst $38
    rst $20
    nop
    scf
    nop
    push af
    nop
    or a
    nop
    ld b, l
    nop
    ld a, a
    nop
    or $08
    xor l
    db $10
    and l
    db $10
    ld [hl], l
    nop
    di
    nop
    ld h, a
    nop
    rla
    nop
    and [hl]

jr_080_563b:
    ld bc, $001f
    ld l, e
    nop
    ld bc, $01ff
    rst $38
    ld [bc], a
    cp $02
    cp $05
    db $fc
    ld bc, $1bfc
    ld sp, hl
    inc de
    ld sp, hl
    dec d
    di
    jr z, jr_080_563b

    ret z

    rst $20
    ld d, h
    rst $08
    sub b
    rst $08
    or b

jr_080_565b:
    sbc a
    jr nz, jr_080_55fd

    ld h, b
    ccf
    nop
    nop
    ldh [rP1], a
    ld d, a
    rst $38
    dec [hl]
    rst $38
    ld [hl], h
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    nop

jr_080_5679:
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$80ff], sp
    rst $38
    jr nz, @+$01

    add b
    ld a, a
    ld d, b
    xor a
    jr nc, jr_080_565b

    db $10
    rst $28
    db $10
    rst $28
    sub b
    ld l, a
    ld d, [hl]
    xor c
    db $dd
    ld [hl+], a
    ldh a, [rIF]
    jr nz, jr_080_5679

    jp nz, $c83d

    scf
    sbc d
    ld h, l
    xor $11
    cp $01
    ccf
    ret nz

    rra
    ldh [rIE], a
    add b
    cpl
    ret nc

    ccf
    ret nz

    ld l, $d1
    ccf
    ret nz

    db $fd
    ld [bc], a
    sub $29
    cp $01
    cp $01
    sbc $21
    ld c, a
    jr nc, jr_080_56fe

    nop
    cp a
    nop
    rst $38
    nop
    ld d, e
    xor h
    rst $28
    db $10
    rst $28
    db $10
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

jr_080_56d4:
    cp $01
    rst $38
    nop
    db $f4
    inc bc
    rst $30
    nop
    rst $38
    nop
    ei
    inc b
    cp $01
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @-$03

    inc b
    cp a
    ld b, b
    and a
    ld e, b
    rst $30
    ld [$0af5], sp
    rst $18
    jr nz, jr_080_56d4

    ld [hl+], a
    cp $01
    rst $38
    nop
    ld a, a
    add b

jr_080_56fe:
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
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    ld b, $fe
    dec c
    db $fc
    dec e

jr_080_572f:
    db $fc
    ld a, [bc]
    ld sp, hl
    jr jr_080_572f

    dec d
    di
    inc hl
    rst $30
    cpl
    rst $20
    ld e, l
    rst $08
    inc e
    rst $08
    cp h
    sbc a
    inc e
    cp a
    ld a, b
    ccf
    xor e
    ld a, a
    add b
    ld a, a
    add d
    rst $38
    add d
    rst $38
    nop
    rst $38
    inc b
    rst $38
    db $fd
    nop
    cp $04
    and $1c
    db $ec
    rrca
    db $ec
    rrca
    call z, $cc0f
    rrca
    call z, Call_000_000f
    nop
    nop
    nop
    ld e, h
    ldh [rWX], a
    rst $38
    ld h, c
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    and h
    rst $38
    inc h
    rst $38
    sbc a
    rst $38
    ld c, $ff
    jr @+$01

    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$18ff], sp
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
    ld c, b
    or a
    inc d
    db $eb
    ld d, b
    xor a
    ld [$4af7], sp
    or a
    adc c
    rst $30
    ld d, $e9
    rlca
    ld hl, sp+$42
    db $fd
    ld c, $f1
    rrca
    ldh a, [rNR31]
    db $e4
    add a
    ld hl, sp+$1f
    ldh [$58], a

jr_080_57af:
    rst $20
    rst $08
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    rra
    ldh [$9f], a
    ld h, b
    ld e, e
    and h
    rst $38
    nop
    sub l
    ld l, d
    db $dd
    ld [hl+], a
    rst $28
    db $10
    ld e, e
    and h
    ld l, a
    sub b
    sub $29
    sbc $21
    call z, $da33
    dec h
    ld d, [hl]
    xor c
    call z, Call_080_7633
    adc c
    or d
    ld c, l
    xor b
    ld d, a
    ld a, b
    add a
    jr nc, jr_080_57af

    ldh a, [rIF]
    sbc b
    ld h, a
    ld hl, sp+$07
    ret c

    daa
    db $fc
    inc bc
    db $fc
    inc bc
    db $f4
    dec bc
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
    cp $01
    db $fc
    inc bc
    call c, $b823
    ld b, a
    sub e
    rst $38
    sub e
    rst $38
    inc hl
    rst $38
    add e
    rst $38
    rla
    rst $38
    rra
    rst $38
    adc a
    rst $38
    ld c, $fe
    dec e
    db $fc
    dec e
    db $fd
    dec sp
    ld sp, hl
    dec sp
    ei
    db $76
    di
    rst $30
    rst $30
    db $eb
    rst $20
    db $d3
    rst $08
    jp $a3df


    sbc a
    adc [hl]
    cp a
    ld b, l
    ccf
    ld l, l
    ld a, a
    sub e
    ld a, a
    rst $30
    rst $38
    ld h, c
    rst $38
    ld e, c
    push hl
    ld e, l
    pop hl
    ld [hl], c
    call $cd35
    ld l, h
    sbc a
    db $ec
    rra
    ret z

    ccf
    adc h
    ld c, a
    adc h
    ld c, a
    adc b
    ld e, a
    ld c, b
    rst $18
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
    add b
    ld a, a
    nop
    nop
    nop
    nop
    ld c, c
    nop
    db $e3
    rst $38
    pop de
    rst $38
    jp nz, $80ff

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
    daa
    ret c

    ld c, h
    or e
    xor h
    db $d3
    ld d, [hl]
    xor c
    ld l, a
    sub b
    ld d, a
    xor b
    ld c, a
    or b
    daa
    ret c

    and [hl]
    ld a, c
    ld l, d
    push af
    db $ed
    ld [hl], d
    ld b, [hl]
    cp c
    ld e, a
    and b
    dec sp
    call nz, Call_000_26d9
    ld h, c
    sbc [hl]
    db $dd
    ld [hl-], a
    db $e3
    inc e
    ld b, e
    cp h
    rra
    ldh [$af], a
    ld d, b
    sbc a
    ld h, b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $28

jr_080_58b1:
    nop
    rst $38

jr_080_58b3:
    nop
    rst $38
    nop
    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    add b
    rst $28
    db $10
    ld e, a
    and b
    sub a
    ld l, b
    sbc e
    ld h, h
    sbc d
    ld h, l
    adc d
    ld [hl], l
    ld [bc], a
    db $fd
    sub b
    ld l, a
    nop
    rst $38
    jr nz, @-$1f

    jr nz, jr_080_58b1

    jr z, jr_080_58b3

    ld b, b
    cp a
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
    db $10
    rst $28
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $21ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fc
    db $fd
    db $fd
    ei
    ld sp, hl
    ei
    ei
    rst $30
    di
    rst $30
    rst $30
    rst $38
    rst $28
    rst $18
    rst $08
    rst $18
    rst $18
    cp a
    sbc a
    cp a
    cp a
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld c, $ff
    ld c, $ff
    ld d, $ff
    sub [hl]
    ld a, a
    rlca
    rst $38
    sub a
    ld [hl], a
    ld d, a
    rst $30
    scf
    rst $30
    scf
    rst $38
    scf
    rst $38
    rra
    rst $38
    ccf
    cp a
    or a
    cp a
    cp a
    cp a
    adc e
    cp a
    call $ccff
    rst $38
    ret z

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
    ld bc, $05fe
    ld a, [$fd02]
    inc c
    di
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$9f]
    ld h, b
    sbc a
    ld h, b
    rrca
    ld c, $0f
    ld c, $3c
    inc bc
    add e
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$2f]
    ret nc

    cpl
    ret nc

    rra
    ldh [$5f], a
    and b
    ld e, a
    and b
    ld a, a
    add b
    ld e, a
    and b
    rst $18
    jr nz, jr_080_5a02

    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld l, a
    sub b
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    nop
    rst $30
    ld [$906f], sp
    cp a
    ld b, b
    ei
    inc b
    rst $30
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
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
    nop
    rst $38
    nop
    ld l, a
    sub b
    dec hl
    call nc, $b847
    ld [de], a
    db $ed
    ld [bc], a
    db $fd
    ld b, $f9
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fd
    db $fd
    ei
    ld sp, hl
    ei
    ei
    rst $30
    rst $30
    rst $30
    rst $30
    rst $28
    rst $28
    rst $28
    rst $28
    rst $18
    rst $18
    cp a
    sbc a
    cp a
    cp a
    ld a, a
    ccf
    inc bc
    ld a, a
    ld h, l
    rst $38
    ld d, e
    rst $38
    ld b, a
    rst $38
    ld c, l
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38

jr_080_5a02:
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
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
    cp a
    rst $38
    sub $ff
    jp z, $40ff

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop

jr_080_5a27:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_080_5a30:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_080_5a3c:
    ld a, [bc]
    push af
    jr jr_080_5a27

    ld c, $f1
    dec bc
    db $f4
    cp $01
    sbc a
    ld h, b
    ld e, a
    and b
    sbc a
    ld h, b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, jr_080_5a3c

    rra
    cp $1f
    db $fc
    rra
    db $ec
    rra
    db $eb
    rra
    jp hl


    rra
    jp hl


    rra
    ld [c], a
    rra
    ldh [$1f], a
    ld hl, sp+$0f
    db $ec
    rra
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    pop af
    rrca
    ld a, [c]
    rrca
    pop af
    rrca
    pop af
    rrca
    ret nc

    rrca
    ld a, b
    rrca
    db $fc
    rrca
    ldh a, [rIF]
    ret nz

    rrca
    ldh [rIF], a
    jp nc, $e20f

    rrca
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ret c

    rlca
    call nc, $d00f
    rrca
    ld [hl], h
    rrca
    call nc, $fe0f
    rlca
    db $e4
    rrca
    db $ec
    rlca
    cp $07
    db $fd
    rlca
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    rst $38
    rlca
    rst $30
    dec c
    rst $30
    dec c
    add hl, de
    ei
    dec sp
    ei
    scf
    rst $30
    ld [hl], a
    rst $30
    rst $20
    rst $28
    rst $00
    rst $28
    rst $00
    rst $18
    and a
    sbc a
    add a
    cp a
    daa
    ld a, a
    ld h, a
    ld a, a
    sub a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld [$28ff], sp
    rst $38
    jr z, @+$01

    inc [hl]
    rst $38
    or e
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
    rst $38
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
    cp $ff
    db $fc
    rst $38
    cp $ff
    add sp, -$01
    ldh [rIE], a
    ret nz

    rst $38
    ld d, b
    rst $38

jr_080_5afe:
    add b
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
    add d
    db $fd
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    sbc l
    ld h, d
    cp l
    ld b, d
    ld [hl], a
    adc b
    or a
    ld c, b
    rst $18
    jr nz, jr_080_5afe

    jr z, jr_080_5b88

    and b
    rst $38
    nop
    rst $38

Jump_080_5b2d:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    jr nc, @+$01

    jr c, @+$01

    nop
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
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld bc, $41fe
    cp $05
    ld a, [$fe81]
    inc bc
    db $fc
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $20
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$40ff], sp
    rst $38
    and b
    rst $38

jr_080_5b88:
    ldh a, [rIE]
    call nz, $d0ff
    rst $38
    db $fd
    rst $38
    adc $ff
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $05fe
    ld a, [$f807]
    dec b
    ld a, [$f807]
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$0d], a
    ld a, [c]
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $ec
    rst $38
    db $fc
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
    ei
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    xor l
    rst $38
    ld a, l
    rst $38
    ld l, h
    rst $38
    and h
    rst $38
    ld b, d
    rst $38
    ld b, $ff
    ld b, $ff
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    adc b
    ld [hl], a
    db $ec
    inc de
    db $ed
    ld [de], a
    ld [hl], a
    adc b
    db $fd
    ld [bc], a
    ld a, [$fc05]
    inc bc
    ei
    inc b
    rst $38
    nop
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    ld e, a
    nop
    cp a
    ld b, b
    inc sp
    call z, $c639
    db $dd
    ld [hl+], a
    dec a
    jp nz, $906f

    ld [bc], a
    db $fd
    ld b, e
    cp h
    inc hl
    db $fc
    ld h, l
    cp $66
    db $fd
    inc bc
    db $fc
    daa
    call c, $fc03
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    rst $18
    jr nz, jr_080_5cda

    adc d
    ld a, a
    add b
    dec sp
    call nz, Call_080_40bf
    scf
    ret z

    rst $08
    jr nc, jr_080_5ce0

    sub b
    ccf
    ret nz

    rla
    add sp, $7f
    add b
    ld l, $d1
    rrca
    ldh a, [rNR34]
    pop hl
    rrca
    ldh a, [rNR34]
    pop hl
    inc de
    db $ec
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld sp, $38bb
    cp l
    sbc h
    rst $38
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    cpl
    ret nc

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
    rst $38
    nop
    cp a
    ld b, b
    ld e, a
    and b
    dec c
    ld a, [c]
    rlca
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$05
    ld a, [$fe01]
    ld bc, $c0fe
    rst $38
    pop bc
    cp $80
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$80ff], sp
    rst $38
    add b
    rst $38

jr_080_5cda:
    sub b
    rst $38
    ld h, b
    rst $38
    pop af
    rst $38

jr_080_5ce0:
    ld hl, sp-$01
    set 7, a
    db $db
    rst $38
    push af
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld l, a
    rst $38
    ld h, e
    rst $38
    rst $00
    rst $38
    scf
    rst $38
    ld c, [hl]
    rst $38
    adc a
    rst $38
    ld d, e
    rst $38
    ld sp, $91ff
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    add c
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    pop hl
    ld e, $c3
    inc a
    add l
    ld a, d
    cpl
    ret nc

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
    cp $ff
    pop af
    rst $38
    sbc $ff
    jp c, $fd00

    nop
    dec l
    ret nc

    cp [hl]
    ld b, b
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld [$ee00], a
    nop
    pop af
    rst $38
    db $eb
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    and $ff
    rst $18
    rst $38
    sub [hl]
    rst $38
    sbc c
    rst $38
    rst $28
    rst $38
    jp z, $d2ff

    rst $38
    db $dd
    rst $38
    db $e4
    rst $38
    call c, $e7ff
    rst $38
    di
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    scf
    ret z

    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    add h
    call nz, $e7c6
    rst $20
    db $e3
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret z

    scf
    cp l
    ld b, d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rst $30
    nop
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
    cp e
    ld b, h
    ld [hl], $c9
    cp l
    ld b, d
    inc [hl]
    rlc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ld [c], a
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    scf
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    ld d, a
    rst $38
    sub a
    rst $38
    cp e
    rst $38
    ld h, a
    rst $38
    ld b, [hl]
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ld d, b
    rst $38
    ld d, b
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
    adc b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff

jr_080_5e36:
    cp $ff
    ld l, [hl]
    rst $38
    and a
    rst $38
    ld c, a
    rst $38
    ld c, h
    rst $38
    or a
    rst $38
    sbc b
    rst $38
    inc hl
    rst $38
    ld d, h
    rst $38
    xor c
    rst $38
    db $76
    rst $38
    inc [hl]
    ei
    xor a
    rst $38
    and a
    rst $38
    db $ec
    rst $38
    db $f4
    rst $38
    ld h, b
    rst $38
    ld h, h
    rst $38
    and l
    rst $38
    db $eb
    rst $38
    xor h
    rst $38
    and b
    rst $38
    ld c, [hl]
    rst $38
    ld l, a
    rst $38
    and c
    cp $9c
    ei
    ld d, d
    rst $38
    sbc a
    rst $38
    ld l, d
    rst $38
    dec e
    rst $38
    ret c

    rst $38
    ld a, [de]
    rst $38
    ld a, [$57ff]
    rst $38
    db $d3
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $eb
    inc b
    rst $38
    nop
    jp c, Jump_080_5f25

    or b
    xor a
    ld [hl], b
    xor h
    ld d, e
    sub h
    ld l, e
    sub d
    db $ed
    nop
    daa
    nop
    db $10
    jr jr_080_5ed0

    jr jr_080_5e36

    inc l
    rst $38
    inc b
    rst $38
    nop
    rst $38
    add b
    ld a, a
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
    rst $30
    ld [$02fd], sp
    db $fc
    inc bc
    rst $38
    nop
    jp c, $8825

    ld [hl], a
    ldh [$1f], a
    ld hl, sp+$07
    ldh a, [rIF]
    or b
    ld c, a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp a
    ld b, $ff

jr_080_5ed0:
    dec b
    rst $38
    dec bc
    rst $38
    ld b, e
    rst $38
    and $ff
    ld b, $ff
    rla
    rst $38
    ld c, l
    rst $38
    adc h
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    or $ff
    ld a, [c]
    rst $38
    cp $ff
    rst $30
    rst $38
    xor $ff
    jp z, $dfff

    rst $38
    rst $18
    rst $38
    or [hl]
    rst $38
    db $d3
    rst $38
    ld b, a
    rst $38
    sub [hl]
    rst $38
    ld [hl], $ff
    db $f4
    rst $38
    ld [hl], b
    rst $38
    ld [hl], h
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc hl
    rst $38
    db $10
    rst $38
    ld b, $ff
    inc hl
    rst $38
    ld h, d
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b

Jump_080_5f25:
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
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    rra
    nop
    add a
    nop
    rst $18
    nop
    adc $01
    ccf
    nop
    rst $28
    nop
    rlc b
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    db $ec
    inc bc
    rra
    nop
    cp a
    nop
    ld c, a
    nop
    ei
    inc b
    ccf
    nop
    rst $38
    nop
    cpl
    nop
    ld b, e
    nop
    ld a, a
    nop
    sbc a
    nop
    adc a
    nop
    rst $28
    nop
    rst $38
    nop
    cp $01
    rst $28
    db $10
    adc $31
    xor $11
    call c, $a823
    ld d, a
    ld hl, sp+$07
    db $10
    rst $28
    xor b
    ld d, a
    sub b
    ld l, a
    ld d, b
    rst $28
    add c
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $08
    ld [bc], a
    rst $00
    db $e3
    ld [c], a
    ld [hl], e
    ld a, [$fe3f]
    rrca
    cp $ff
    cp $ff
    cp $7f
    cp $5f
    cp $3e
    db $fd
    ld l, $fd
    ld b, $fd
    rlca
    db $fd
    and [hl]
    db $fd
    scf
    db $fd
    rst $38
    db $fd
    rst $00
    db $fd
    cp a
    db $fd
    cp a
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
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30

jr_080_5fea:
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    cp $f7
    rst $38
    rst $30
    cp $f7
    rst $38
    rst $30
    cp $f7
    cp $f7
    cp $ef
    cp $ef
    cp $ef
    db $fc
    rst $28
    cp $ef
    db $fc
    rst $28
    db $fc
    rst $28
    db $fc
    rst $28
    db $fc
    rst $28
    cp $ef
    db $fc
    rst $28
    db $fc
    rst $28
    db $fc
    rst $28
    db $fc
    rst $28
    db $fc
    rst $28
    db $ec
    rst $18
    db $fc
    rst $18
    db $ec
    rst $18
    db $fc
    rst $18
    ld hl, sp-$21
    ld hl, sp-$21
    ld hl, sp-$21
    ld hl, sp-$21
    ld a, [hl]
    add c
    add a
    ld a, b
    sub h
    ld l, d
    or $08
    sbc [hl]
    ld h, b
    and h
    ld e, d
    db $d3
    inc l
    ld [$b114], a
    ld c, h
    pop hl
    inc e
    push hl
    jr jr_080_5fea

    ld e, h
    and l
    ld e, b
    add h
    ld a, c
    sub l
    ld l, b
    ld h, $d9
    di
    ld [$09f2], sp
    cp $01
    ld a, [$ea01]
    ld de, $01fa
    ld a, [$bf01]
    ld b, c
    cp [hl]
    ld b, c
    sub h
    ld h, e
    db $fc
    inc bc
    db $fd
    inc bc
    db $f4
    inc bc
    call nc, $f823
    rlca
    ret nc

    daa
    db $fc
    inc bc
    ret z

    daa
    ret z

    daa
    ret c

    daa
    ld a, b
    add a
    add sp, $07
    ld h, b
    adc a
    and b
    ld c, a
    ld [hl], d
    adc l
    add hl, sp
    add $37
    ret z

    dec sp
    call nz, $c817
    ccf
    ret nz

    rra
    ret nz

    dec hl
    call nc, $8af5
    db $db
    db $e4
    bit 6, h
    ld l, a
    sub b
    ld h, a
    sbc b
    db $e3
    sbc h
    pop bc
    cp [hl]
    jp $c3bc


    cp h
    jp $c7bc


    cp b
    jp nz, $c7bd

    cp b
    add a
    ld hl, sp-$7a
    ld hl, sp-$7a
    ld hl, sp-$7a
    ld hl, sp-$7a
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$67]
    ret c

    ld e, $e0
    sbc [hl]
    ldh [$7e], a
    ret nz

    ld l, $d0
    ccf
    ret nz

    rra
    ldh [$3e], a
    ret nz

    ld e, $e0
    add hl, de
    ldh [$3f], a
    ret nz

    dec de
    ldh [rNR34], a
    ldh [$3f], a
    ret nz

    ld e, $e0
    ld a, $c0
    dec a
    ret nz

    dec a
    ret nz

    ld l, $c0
    ld a, $c0
    db $76
    add b
    db $fc
    nop
    ld [hl], e
    add b
    di
    nop
    ld [hl], d
    add b
    ld l, [hl]
    add b
    ld h, d
    add b
    rst $30
    nop
    call $fbff
    rst $38
    db $eb
    rst $38
    ld [c], a
    rst $38
    db $db
    rst $38
    ret z

    rst $38
    db $ed
    rst $38
    ld a, [c]
    rst $38
    adc c
    rst $38
    cp d
    rst $38
    and e
    rst $38
    rst $10
    rst $38
    db $db
    rst $38
    call z, $e4ff
    rst $38
    sub [hl]
    rst $38
    sub l
    rst $38
    jp z, $a9ff

    rst $38
    xor d
    rst $38
    and a
    rst $38
    ret z

    rst $30
    inc b
    rst $38
    add $ff
    adc e
    rst $30
    nop
    rst $38
    call nc, Call_000_24ff
    rst $38
    sub h
    rst $38
    or [hl]
    rst $28
    sbc e
    rst $38
    call nz, $a4ff
    ld e, a
    sbc d
    ld a, a
    cp d
    ld a, a
    ld hl, sp+$7f
    jr c, @+$01

    ld hl, sp+$7f
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    cp $60
    rst $38
    ld hl, $a1fe
    cp $21
    cp $51
    cp $41
    cp $43
    db $fc
    inc hl
    db $fc
    rla
    ld hl, sp+$13
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, a
    ld hl, sp-$7d
    db $fc
    ld b, a
    ld hl, sp+$57
    add sp, -$21
    ldh [$9f], a
    ldh [$9f], a
    ldh [$8d], a
    ld a, [c]
    inc sp
    call z, $d02f
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, [$f400]
    nop
    db $eb
    nop
    db $e4
    nop
    pop af
    nop
    ld e, e
    add b
    ld [hl], e
    add b
    push af
    nop
    or l
    nop
    sub $ff
    push de
    rst $38
    call $9cff
    rst $38
    ret


    rst $38
    ret


    rst $38
    reti


    rst $38
    sbc c
    rst $38
    cp b
    rst $38
    sub d
    rst $38
    ld a, [hl+]
    rst $38
    dec e
    rst $38
    ld l, l
    rst $38
    or l
    rst $38
    ld e, h
    rst $38
    ld d, c
    rst $38
    cp l
    rst $38
    ld h, e
    rst $38
    ld hl, $47ff
    rst $38
    push de
    rst $38
    ld h, [hl]
    rst $38
    dec l
    rst $38
    xor l
    rst $38
    ret


    rst $38
    ld d, d
    rst $38
    adc $ff
    sub [hl]
    rst $38
    ld d, a
    rst $38
    ld b, d
    rst $38
    ld [hl], d
    rst $38
    sub e
    rst $38
    ld d, a
    rst $38
    call nc, $d1ff
    rst $38
    ld b, a
    rst $38
    adc l
    rst $38
    xor a
    rst $38
    ld d, e
    rst $38
    add a
    rst $38
    push de
    rst $38
    dec e
    rst $38
    rra
    rst $38
    rst $28
    rst $38
    ld l, $ff
    xor h
    rst $38
    cp e
    rst $38
    and [hl]
    rst $38
    pop hl
    ld [bc], a
    ld a, a
    nop
    xor h
    ld [bc], a
    ccf
    nop
    dec sp
    inc b
    ld sp, hl
    inc b
    ld [hl], d
    nop
    ld d, [hl]
    nop
    ld d, $ff
    xor e
    rst $38
    dec sp
    rst $38
    ld h, a
    rst $38
    ld e, a
    rst $38
    xor $ff
    cp a
    rst $38
    call z, $bfff
    rst $38
    ld l, l
    rst $38
    xor l
    rst $38
    ld a, l
    rst $38
    ld l, h
    rst $38
    ld l, l
    rst $38
    ld c, a
    rst $38
    db $ed
    rst $38
    ld a, c
    rst $38
    db $76
    rst $38
    ld a, $ff
    ld h, d
    rst $38
    ld [c], a
    rst $38
    and e
    rst $38
    ld b, a
    rst $38
    rla
    rst $38
    sbc a
    ld h, b
    ccf
    ret nz

    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    cp $00
    ld a, [hl]
    add b
    sbc $20
    db $fd
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    ei
    nop
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    di
    rst $38
    db $db
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    xor [hl]
    rst $38
    db $ed
    rst $38
    sbc $ff
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sub a
    rst $38
    cp c
    rst $38
    ld h, e
    rst $38
    rla
    rst $38
    ld b, a
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    or [hl]
    rst $38
    adc a
    rst $38
    ld c, a
    rst $38
    cp e
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    ld l, [hl]
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $28
    rst $38
    rrca
    rst $38
    ld e, c
    rst $38
    adc a
    rst $38
    or a
    rst $38
    ccf
    rst $38
    ld [hl], e
    rst $38
    or a
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp a
    nop
    ld a, e
    nop
    ld a, e
    nop
    cp $01
    cp [hl]
    ld bc, $01be
    ld a, $01
    rrca
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, $ff
    dec sp
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    cp a

Jump_080_6301:
    nop
    ld a, a
    nop
    ld e, a
    jr nz, jr_080_6386

    nop
    ccf
    ld b, b
    cp $00
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
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
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
    db $fc
    inc bc
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f1
    ld c, $f7
    ld [$00ff], sp
    ld e, e
    inc b
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
    rst $18
    jr nz, @+$01

    nop
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    cp $01
    cp a
    nop

jr_080_6386:
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $28
    db $10
    cp a
    ld b, b
    db $ec
    inc de
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp a
    ld b, b
    cp l
    ld b, d
    cp a
    ld b, b
    rst $18
    jr nz, @+$81

    add b
    rst $28
    db $10
    ld l, a
    sub b
    ld h, a
    sbc b
    ei
    sub b
    dec sp
    ret nc

    ld e, a
    or b
    ld c, a
    or b
    rst $30
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
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
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
    rst $20
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    add b
    db $fd
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $bb
    ld b, h
    ld e, a
    and b
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
    ld e, a
    and b
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
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
    ld a, l
    add d
    ld a, a
    add b
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fb
    inc b

jr_080_642c:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    rst $38
    nop

jr_080_6436:
    or $09
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop

jr_080_6440:
    or $09
    rst $10
    jr z, jr_080_642c

    jr jr_080_6436

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
    rst $28
    db $10
    db $dd
    ld [hl+], a
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
    rst $18
    jr nz, jr_080_6440

    jr z, @+$01

    nop
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $db
    inc h
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
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
    ccf
    nop
    cp a
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
    sbc a
    nop
    rst $18
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
    ld [hl], a
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    cp a
    nop
    cp l
    ld [bc], a
    dec a
    ld [bc], a
    db $dd
    ld [bc], a
    ei
    inc b
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
    cp a
    ld b, b
    rst $30
    ld [$48b7], sp
    ld [hl], a
    adc b
    ld a, $c1
    ld a, d
    add l
    ld a, [c]
    dec c
    di
    inc c
    ei
    inc b
    or a
    ld c, b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
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

jr_080_6520:
    rst $38
    nop
    rst $38
    nop
    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    cp b
    ld b, a
    ldh a, [rIF]
    db $f4
    dec bc
    push af
    dec bc
    db $fd
    inc bc
    db $dd
    inc hl
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
    cp $01
    db $fc
    inc bc
    db $ec
    inc de
    push hl
    ld a, [de]
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_080_6558:
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_080_656a:
    rst $38
    nop
    rst $38
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
    jr nc, jr_080_6558

    jr nz, jr_080_656a

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
    rst $30
    ld [$2cd3], sp
    add $39
    add a
    ld a, b
    rst $00
    jr c, jr_080_6520

    ld [hl], b
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    cp $00
    cp $00
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rNR34], a
    pop hl
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    db $db
    ld hl, $01fa
    cp $01
    db $fc
    inc bc
    cp l
    ld b, d
    ld a, e
    add h
    ccf
    ret nz

    ld a, $c0
    cp [hl]
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    cp $01
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
    jr jr_080_6613

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_080_6623

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $1d
    daa
    jr z, jr_080_6634

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_080_6644

jr_080_6613:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_080_6654

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_080_6623:
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
    ld d, d

jr_080_6634:
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

jr_080_6644:
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

jr_080_6654:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    dec e
    dec e
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld l, a
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
    ld l, a
    adc h
    adc l
    adc [hl]

jr_080_6674:
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
    dec e
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
    jr nz, jr_080_6674

    rst $00
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
    dec e
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_080_671b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_080_672b

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

jr_080_671b:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_080_672b:
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    ld bc, $0101
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $03
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    rlca
    rlca
    rlca
    ld b, $06
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    rlca
    rlca
    rlca
    ld b, $06
    ld bc, $0000
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0706
    rlca
    rlca
    rlca
    ld b, $06
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld b, $07
    rlca
    rlca
    rlca
    ld b, $06
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0100
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop

jr_080_6803:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
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
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc

jr_080_6851:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]

jr_080_685b:
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_080_6860:
    ld c, $f1
    rrca
    ldh a, [$0e]
    pop af
    dec bc
    db $f4
    dec bc
    db $f4
    ld bc, $10fe
    rst $28
    add h
    ld a, a
    jr nz, jr_080_6851

    jr jr_080_685b

    nop
    rst $38
    inc b
    ei
    inc b
    ei
    ld h, $d9
    rst $08
    jr nc, jr_080_6803

    ld a, e
    inc b
    ei
    add c
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    ld bc, $00fe
    rst $38
    db $10
    rst $28
    ld [$48f7], sp
    or a
    jr z, @-$27

    dec a
    jp nz, $609f

    ld a, [hl]
    add c
    di
    inc c
    ccf
    ret nz

    inc e

jr_080_689f:
    db $e3
    rst $20
    jr jr_080_689f

    inc bc
    or [hl]
    ld c, c
    rst $20
    jr jr_080_6860

    ld c, b
    xor [hl]
    ld d, c
    xor d
    ld d, l
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $30
    ld [$00ff], sp
    db $fd
    nop
    sbc $21
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    rst $38
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
    ld a, a
    add b
    ld a, l
    add d
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
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    nop
    ei
    nop
    rst $38
    nop
    db $fd
    nop
    rst $30
    ld [$0cf3], sp
    push af
    ld a, [bc]
    rst $08
    nop
    xor a
    nop
    xor a
    nop
    rst $28
    nop
    rst $30
    nop
    db $db
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    and $ff
    or $ff
    push af
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    rst $20
    nop
    rst $28
    nop
    rst $20
    nop
    pop hl
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
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
    db $fd
    ld [bc], a
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
    cp $ff
    sbc $ff
    ld e, a
    rst $38
    ld a, d

jr_080_695f:
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
    ret nc

    cpl
    sub b
    ld l, a
    db $10
    rst $28
    inc h
    ei
    ld [hl], $f9
    inc b
    ei
    inc e
    db $e3
    sub h
    ld l, e
    ld [de], a
    db $ed
    db $10
    rst $28
    jr nz, jr_080_695f

    and c
    ld e, [hl]
    ld b, a
    cp d
    rlca
    ld a, [$7f80]
    add h
    ld a, e
    rst $00
    jr c, jr_080_69b2

    jp c, $f906

    ld l, [hl]
    sub c
    ld a, $c1
    rrca
    ldh a, [$8e]
    ld [hl], c
    adc h
    ld [hl], e
    adc e
    ld [hl], l
    adc a
    ld [hl], c
    adc $31
    add a
    ld a, b
    sub [hl]
    ld l, c
    db $e3
    inc e
    db $e3
    inc e
    or a
    ld c, b
    cp l
    ld b, d
    ld [hl], a
    adc b
    rst $38
    nop
    ld a, l
    add d

jr_080_69b2:
    rst $38
    nop
    cp $01
    rst $38
    nop
    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_080_69d8:
    rst $38
    nop
    rst $30
    ld [$00ff], sp

jr_080_69de:
    rst $38
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
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b

jr_080_69f4:
    rst $38
    nop
    rst $38
    nop

jr_080_69f8:
    cp a
    ld b, b

jr_080_69fa:
    rst $28
    db $10
    ret


    ld [hl], $c7
    jr c, jr_080_69f8

    jr jr_080_69fa

    jr jr_080_69f4

    db $10
    ld l, a
    sub b
    ld a, a
    add b
    di
    inc c
    rst $08
    jr nc, jr_080_69de

    jr nc, jr_080_69d8

    jr c, @+$01

    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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

jr_080_6a2a:
    ld a, a
    nop
    rst $38
    nop
    rst $18
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    db $dd
    rst $38

jr_080_6a56:
    sub a
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rrca
    rst $38
    rla
    rst $38

jr_080_6a60:
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
    inc b
    rst $38
    ld b, [hl]
    rst $38
    inc b
    rst $38
    ldh [$1f], a
    or b
    ld c, a
    ld h, d
    sbc l
    ld b, c
    cp [hl]
    and a
    ld e, b
    rst $00
    jr c, jr_080_6a56

    jr nc, jr_080_6a60

    jr z, jr_080_6a2a

    ld h, b
    cp e
    ld b, h
    ld e, c
    and [hl]
    daa
    ret c

    daa
    ret c

    adc h
    ld [hl], e
    sbc a
    ld h, b
    cp l
    ld b, d
    cp l
    ld b, d
    ld e, a
    and b
    ld l, a
    sub b
    ld d, a
    cp b
    ld l, a
    sub b
    cp a
    ld b, b
    rst $28
    db $10
    cp e
    ld b, h
    ei
    inc b

jr_080_6aac:
    or e
    ld c, h
    ld sp, hl
    ld b, $f9
    ld b, $7d
    add d
    dec l
    jp nc, $06f9

    ei
    inc b
    ei
    inc b

jr_080_6abc:
    rst $38
    nop
    db $fd
    ld [bc], a
    jp hl


    ld d, $f7
    ld [$02fd], sp
    rst $38
    nop

jr_080_6ac8:
    db $fd
    ld [bc], a
    cp $01
    cp $01
    rst $38
    nop
    rst $28
    db $10
    rst $30
    ld [$04fb], sp
    rst $20
    jr jr_080_6ac8

    db $10
    rst $18
    jr nz, jr_080_6abc

    jr nz, jr_080_6aac

    ld [hl-], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $eb
    inc d
    cp l
    ld b, d
    cp c
    ld b, [hl]
    jp nc, Jump_080_5b2d

    and h
    ld l, a
    sub b
    add $39
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_080_6b7a

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
    ei
    inc b
    ld l, e
    sub h
    rst $28
    db $10
    ld a, [c]
    dec c
    db $ec
    inc de
    push hl
    ld a, [de]
    push de
    ld a, [hl+]
    sbc l
    ld h, d
    sbc a
    ld h, b
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

jr_080_6b28:
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    cp $01
    ei
    inc b
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $30
    ld [$0cf3], sp
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
    cp a
    ld b, b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    db $10
    xor $11
    rst $28
    db $10
    cpl
    ret nc

    ld l, a
    sub b
    ccf
    ret nz

    ccf
    ret nz

    ld a, e
    call nz, $c07f
    ccf
    ret nz

    dec sp
    call nz, $c03f
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, jr_080_6b28

    ld d, b

jr_080_6b7a:
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
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld l, a
    sub b
    rst $38
    nop
    ld e, a
    and b
    rst $38
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

jr_080_6ba4:
    rst $38
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
    rst $38
    nop
    db $eb
    nop
    and l
    ld b, b
    ld a, [$ff00]
    nop
    db $e4
    nop
    rst $30
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    rst $28
    rst $38
    rra
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
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $30
    ld [$8877], sp
    rst $20
    jr jr_080_6ba4

    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc

jr_080_6bec:
    cp l
    ld b, d
    cp [hl]
    ld b, c
    rst $38
    add b
    db $fd
    add d
    inc a
    jp $e11e


    sbc h
    ld h, e
    ld a, $c1
    cp $01
    cp a
    ld b, b
    cp e
    ld b, h
    cp l
    ld b, d
    cp a
    ld b, b
    rst $18
    jr nz, jr_080_6c88

    add b
    ccf
    ret nz

    ld [hl], a
    adc b
    ei
    inc b
    cp [hl]
    ld b, c
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $18
    jr nz, jr_080_6bec

    ld [hl-], a
    adc a
    ld [hl], b
    rst $38
    nop
    xor a
    ld d, b
    cp l
    ld b, d
    rst $30
    ld [$04fb], sp
    sub [hl]
    ld l, c
    add d
    ld a, l
    ld d, $e9
    cp h
    ld b, e
    ld e, $e3
    cp h
    ld b, e
    cp c
    ld b, [hl]
    ld d, c
    xor [hl]
    or b
    ld c, a
    ld l, e
    sub l
    dec e
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    rra
    rst $38
    rra
    rst $38
    scf
    rst $38
    ld [hl], $fe
    ld [hl], $fe
    and h
    rst $38
    add $ff
    pop hl
    rst $38
    ldh [rIE], a
    db $ec
    rst $38
    add sp, -$01
    ld hl, sp-$01
    ret z

    rst $38
    ld [c], a
    rst $38
    ld sp, hl
    cp $f0
    rst $38
    jp hl


    cp $f0
    rst $38
    add sp, -$01
    ldh a, [rIE]
    ld a, [c]
    rst $38
    push af
    rst $38
    push af
    rst $38
    ld hl, sp-$01
    ld [$efff], a
    rst $38
    db $ec
    rst $38
    ld a, [$ffff]
    rst $38
    ld h, c
    add b
    db $ed
    nop
    db $eb
    nop
    db $fd
    nop

jr_080_6c88:
    ld sp, hl
    nop
    ld hl, sp+$00
    push af
    nop
    or $00
    cp $00
    ld sp, hl
    nop
    cp $00
    db $fc
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    ld a, [hl]
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    cp c
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    cp l
    rst $38
    jp c, $fbff

    rst $38
    sub [hl]
    rst $38
    ld d, [hl]
    rst $38
    ei

jr_080_6cc3:
    rst $38
    ld h, h
    rst $38
    di
    rst $38
    jp hl


    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $28
    db $10
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_080_6d5e

    add b
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $18
    jr nz, jr_080_6cc3

    dec h
    or a
    ld c, b
    rst $38
    ld [$0cf3], sp
    ld l, a
    sub b
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
    sbc $21
    ld e, h
    and e
    ld a, $c1
    cp h
    ld b, e
    inc e
    db $e3
    sbc h
    ld h, e
    xor b
    ld [hl], a
    xor c
    ld [hl], a
    ld e, c
    or a
    pop bc
    ccf
    cpl
    rst $38
    ld l, a
    rst $38
    ld a, d
    rst $38
    ld e, [hl]
    cp $7e
    cp $7e
    cp $3d
    db $fc
    ld a, l
    db $fc
    ld l, l
    db $fd
    ld a, c
    db $fd
    ld a, e
    ld sp, hl
    ei
    ld sp, hl
    ld sp, hl
    ei
    rst $30
    di
    or [hl]
    di
    db $76
    di
    ld l, c
    rst $20
    ld l, h
    rst $20
    ld l, h
    rst $20
    db $ec
    rst $28
    ret c

    rst $08
    jp c, $dbcf

    rst $08
    xor l
    sbc a
    and c
    sbc a
    xor e
    sbc a
    ld l, l
    ccf
    ld c, e
    ccf
    ld e, l
    ccf
    ld b, e
    ccf
    db $d3
    ld a, a
    db $d3
    ld a, a
    ld e, h
    inc bc
    ld c, $01
    ld d, $01
    ld d, $01
    ld b, $01
    scf
    nop
    rlca
    nop

jr_080_6d5e:
    rrca
    nop
    inc de
    rst $38
    adc e
    rst $38
    dec hl
    rst $18
    dec [hl]
    rst $18
    add hl, hl
    rst $18
    ld h, c
    rst $18
    inc de
    rst $28
    inc bc
    rst $38
    sbc e
    ld h, a
    ld d, b
    xor a
    db $d3
    xor a
    ld [$04ff], sp
    ei
    ld bc, $c1ff
    rst $38
    adc c
    rst $30
    ld a, [de]
    push af
    ld b, a
    ld sp, hl
    ld d, l
    ei
    inc a
    db $d3
    adc h
    di
    and $f9
    db $76
    jp hl


    ld b, $f9
    push hl
    ei
    ld b, h
    ei
    add l
    ei
    and c
    rst $38
    and e
    rst $38
    set 7, a
    ld c, d
    rst $38
    ld c, b
    rst $38
    ld h, b
    rst $38
    ld hl, $59ff
    rst $38
    and b
    rst $38
    db $eb
    db $fd
    add hl, bc
    rst $38
    pop hl
    cp $f2
    db $fd
    or e
    db $fc
    or h
    rst $38
    ld d, h
    rst $38
    ld h, [hl]
    db $fd
    jp $fafe


    rst $38
    ld b, d
    rst $38
    add [hl]
    rst $38
    ld [c], a
    nop
    pop af
    nop
    ret


    nop
    xor a
    nop
    jp z, Jump_080_4b00

    add b
    ld d, [hl]
    add b
    ld l, c
    add b
    ld a, e
    add b
    rst $38
    nop
    rst $18
    nop
    jp c, $fd01

    inc bc
    rst $38
    ld bc, $03fc
    cp $02
    ld [bc], a
    cp $0a
    cp $0c
    cp $45
    db $fc
    inc d
    db $fd
    adc h
    db $fd
    ld a, [hl+]
    ld sp, hl
    ld a, [hl-]
    ld sp, hl
    cp c
    ei
    ret nc

    ei
    db $f4
    di
    ldh a, [$f7]
    ldh a, [$f7]
    db $ec
    rst $20
    add sp, -$19
    add sp, -$11
    call z, $d4ef
    rst $08
    add $df
    adc [hl]
    rst $18
    and a
    sbc a
    xor a
    sbc a
    xor a
    cp a
    ld a, l
    ccf
    ld e, l
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    jr c, @-$23

    ld l, $df
    ld a, h
    sbc a
    ld c, h
    cp a
    call nz, Call_080_4437
    or a
    ld h, l
    or a
    dec [hl]
    rst $38
    cp d
    ld a, a
    dec sp
    rst $38
    ld a, b
    rst $38

jr_080_6e36:
    dec e
    rst $18

jr_080_6e38:
    dec e
    rst $18

jr_080_6e3a:
    dec c
    rst $18

jr_080_6e3c:
    dec c
    rst $18
    ld d, h
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld h, e
    ld a, a
    ld [hl], l
    ld a, a
    inc de
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ret z

    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, l
    add b
    ld d, b
    add b
    ld b, b
    add b
    ld c, [hl]
    add b
    ld d, b
    add b
    ld [hl], b
    add b
    ld d, b
    add b
    ld d, b
    add b
    ld b, b
    add b
    ld c, b
    add b
    ld l, b
    add b
    ld l, b
    add b
    jr z, jr_080_6e36

    jr z, jr_080_6e38

    jr z, jr_080_6e3a

    jr z, jr_080_6e3c

    inc h
    ret nz

    inc [hl]
    ret nz

    inc [hl]
    ret nz

    inc [hl]
    ret nz

    inc e
    ldh [rNR14], a
    ldh [rNR14], a
    ldh [rNR30], a
    ldh [rNR30], a
    ldh [rNR30], a
    ldh [rNR30], a
    ldh [rNR30], a
    ldh [rNR30], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$0d]
    ldh a, [$0d]
    ldh a, [$0d]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    rla
    rst $30
    rla
    rst $30
    daa
    rst $28
    inc hl
    rst $28
    ld hl, $43ef
    rst $28
    ld b, [hl]
    rst $18
    ld b, [hl]
    rst $18
    inc b
    rst $18
    add h
    cp a
    add b
    cp a
    nop
    cp a
    ld b, b
    ccf
    inc b
    ld a, a
    nop
    ld a, a
    ld a, [bc]
    ld a, a
    ld a, e
    inc b
    cp a
    nop
    cp a
    nop
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    sbc a
    ld h, b
    ld a, a
    and b
    rst $18
    jr nz, jr_080_6f72

    add h
    db $fd
    ld b, d
    adc a
    ld [hl], b
    adc c
    db $76
    add e
    ld a, h
    rst $18
    and b
    add a
    ld hl, sp-$7c
    ei
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
    nop
    rst $38
    nop
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
    inc b
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
    ld b, b
    rst $38
    ld h, h
    rst $38
    or b
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ret nc

    rst $38
    sub h
    rst $38
    ret z

    rst $38
    inc [hl]
    rst $38
    sub d
    rst $38
    ld h, h
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    ld b, c
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
    nop
    nop
    nop
    rst $38
    nop
    and h
    ld e, c
    ldh [rP1], a
    ret nc

    nop
    ld d, b
    nop
    ret nz

    nop
    stop
    ldh a, [rP1]
    ld d, b
    nop

jr_080_6f72:
    ld [hl], h
    nop
    ld [$7100], sp
    nop
    or b
    nop
    ld c, h
    nop
    ld l, h
    nop
    call c, $bc00
    nop
    jp c, $1500

    nop
    ei
    nop
    db $ec
    nop
    push af
    nop
    ei
    nop
    add sp, $00
    ld a, [$fe00]
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
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
    add [hl]
    nop
    add e
    nop
    add b
    nop
    add a
    nop

jr_080_6fac:
    add a
    nop
    ret nz

    nop
    ret nz

    nop
    add sp, $00
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
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld de, $5bee
    and h
    rst $18
    jr nz, jr_080_6fac

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp e
    ld b, h
    ccf
    ret nz

    ld b, $f9
    ld l, $d1
    daa
    ret c

    ld b, e
    cp h
    dec c
    ld a, [c]
    dec bc
    db $f4
    dec b
    ld a, [$fa05]
    inc b
    ei
    jr nz, @+$01

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
    inc b
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
    inc b
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rst $38
    nop
    and h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    xor e
    inc b
    and c
    ld e, $3f
    nop
    scf
    nop
    ld d, h
    nop
    cp $00
    rst $38
    nop
    xor [hl]
    nop
    di
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    jr nz, jr_080_707a

jr_080_707a:
    ret nz

    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    push af
    ld d, l
    xor d
    xor a
    ld d, b
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
    rst $38
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    cp $ff
    or $ff
    reti


    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    cp $ff
    ei
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld e, l

jr_080_70d1:
    and b
    db $dd
    jr nz, jr_080_70d1

    nop
    rst $38
    nop
    cp a
    ld b, b
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
    ld l, a
    sub b
    ld a, a
    add b
    dec sp
    call nz, $d02f
    cpl
    ret nc

    daa
    ret c

    rra
    ldh [rNR33], a
    ld [c], a
    add hl, bc
    or $08
    rst $30
    ld [hl-], a
    call $dd22
    inc bc
    db $fc
    nop
    rst $38
    dec b
    ld a, [$fc03]
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
    nop
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh [rNR31], a
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    nop
    nop
    add b
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
    add b
    nop
    nop
    add b
    nop
    nop
    ld b, b
    add b
    ld b, b
    nop
    ldh [rP1], a
    ld e, l
    and b
    or e
    ld c, h
    ldh a, [rIF]
    and b
    ld b, b
    jp nz, $c000

    nop
    ld d, b
    nop
    rst $00
    nop
    ld h, c
    nop
    rrca
    ld b, b
    cp a
    ld b, b
    nop
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
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
    rst $38
    rst $38
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp d
    nop
    rst $18
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    ld e, l
    rst $38
    cp $ff
    rst $38
    rst $38
    add $ff
    cp [hl]
    rst $38
    sub a
    rst $38
    and $ff
    cp a
    rst $38
    rst $18
    rst $38
    sub $ff
    db $fd
    rst $38
    ld d, c
    rst $28
    ld b, h
    ei
    ld b, h
    ei
    adc $f1
    ld e, $e1
    rst $18
    ldh [$87], a
    ld hl, sp-$62
    pop hl
    add sp, -$29
    xor [hl]
    pop af
    xor h
    di
    inc h
    ei
    and c
    rst $38
    add hl, hl
    rst $38
    ld [hl], e
    db $fd
    rst $18
    rst $38
    or c
    rst $38
    or [hl]
    rst $38
    adc a
    rst $38
    xor $ff
    rst $28
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_080_722a

    ret nz

    rra
    ldh [$37], a
    ret z

    dec c
    ld a, [c]
    add hl, de
    and $9f
    ld h, b
    inc de
    db $ec
    ld b, e
    cp h
    ld h, c
    sbc [hl]
    ld b, c
    cp [hl]
    ret z

    scf
    dec c
    ld a, [c]
    ret nz

    ccf
    ld bc, $04fe
    ei
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
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    nop
    nop
    nop
    and c
    ld e, [hl]
    rla
    nop
    dec c
    nop
    nop
    nop
    dec bc
    nop

jr_080_722a:
    ld bc, $0200
    nop
    ld [hl+], a
    nop
    inc e
    nop
    jr nz, jr_080_7234

jr_080_7234:
    add hl, hl
    nop
    dec e
    nop
    dec a
    nop
    ccf
    nop
    ld a, [hl-]
    nop
    dec sp
    nop
    or b
    nop
    ld b, a
    nop
    ld [hl], e
    nop
    and [hl]
    nop
    ld [hl], h
    nop
    ld l, e
    nop
    dec bc
    nop
    ld c, e
    nop
    xor a
    nop
    ld b, a
    nop
    ld e, e
    nop
    rla
    nop
    xor a
    nop
    ld l, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    inc b
    nop
    and b
    nop
    db $fc
    nop
    inc e
    nop
    db $f4
    nop
    db $fc
    nop
    nop
    nop
    ld [bc], a
    nop
    dec d
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
    and b
    ld e, a
    ld d, h
    xor e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    db $ed
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38

Call_080_72b2:
    ld a, a
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    rst $18
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
    ei
    inc b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    db $fd
    ld [bc], a
    jp c, $fc25

    inc bc
    db $fc
    inc bc
    or b
    ld c, a
    ret nc

    cpl
    add b
    ld a, a
    and b
    ld e, a
    and b
    ld e, a
    pop af
    ld c, $f0
    rrca
    ld b, d

Jump_080_72fd:
    cp l
    ld b, b
    cp a
    db $10
    rst $28
    adc b
    ld [hl], a
    sub b
    ld l, a
    sub b
    ld l, a
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $dd
    inc bc
    dec b
    inc bc
    jr c, jr_080_7325

    add hl, bc
    inc bc
    add hl, bc

jr_080_7325:
    inc bc
    add hl, bc
    inc bc
    ld [$0803], sp
    inc bc
    add hl, bc
    inc bc
    ld [$0003], sp
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec d
    inc bc
    ld [de], a
    inc bc
    ld d, $03
    ld d, $03
    ld d, $03
    ld d, $03
    inc d
    inc bc
    inc d
    inc bc
    inc d
    inc bc
    inc d
    inc bc
    inc d
    inc bc
    inc d
    inc bc
    inc d
    inc bc
    inc c
    inc bc
    inc l
    inc bc
    inc a
    inc bc
    inc c
    inc bc
    inc l
    inc bc
    inc l
    inc bc
    inc l
    inc bc
    inc l
    inc bc
    inc l
    inc bc
    inc l
    inc bc
    inc a
    inc bc
    ld a, h
    inc bc
    ld a, $03
    inc a
    inc bc
    ld a, h
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rra
    db $fc
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
    ld bc, $43fe
    cp h
    and c
    ld e, [hl]
    call nc, $ea2b
    dec d
    db $fd
    ld [bc], a
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

jr_080_7397:
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

jr_080_73a2:
    rst $38
    nop
    rst $38
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
    rst $08
    jr nc, jr_080_73a2

    db $10
    ld a, [$fa05]

jr_080_73b7:
    dec b
    ld hl, sp+$07
    db $f4
    dec bc
    ldh a, [rIF]
    ld hl, sp+$07
    add b
    ld a, a
    ldh [$1f], a
    and b
    ld e, a
    jr nc, jr_080_7397

    ld d, b
    xor a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_080_73b7

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
    ld a, a
    add b
    push af
    nop
    push af
    nop
    ld a, b
    add b
    or $00
    ld [hl], b
    add b
    ldh a, [rP1]
    db $f4
    nop
    db $ed
    cp $f0
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    jp hl


    cp $f5
    ld a, [$fec9]
    pop af
    cp $f1
    cp $c1
    cp $c2
    db $fd
    jp $d3fc


    db $fc
    adc $f1
    ret


    or $ea
    rst $30
    and [hl]
    ld sp, hl
    and $f9
    ld h, l
    ld a, [$f8a7]
    adc l
    ld a, [c]
    adc $f1
    xor $f1
    adc l
    ld a, [c]
    ret


    or $d3

jr_080_7443:
    db $ec
    scf
    ld hl, sp-$39
    ld hl, sp-$75
    db $f4
    or [hl]
    ld sp, hl
    ld [de], a
    db $fd
    sub [hl]
    ld sp, hl
    ld b, $f9
    add d
    db $fd
    ld b, l
    ld a, [$fd02]
    ld d, h
    ei
    jp nz, Jump_080_72fd

jr_080_745d:
    db $fd
    ret nc

    rst $38
    ld l, b
    nop
    ldh [rP1], a
    db $ec
    nop
    add sp, $10
    cp b
    db $10
    cp b
    nop
    ret nc

    ld [$00ce], sp
    ld [$00f3], sp
    ei
    nop
    db $fd
    add d
    db $fc
    add c
    cp $c0
    rst $38
    add b
    rst $38
    nop
    rst $38
    pop de
    jr nz, jr_080_745d

    jr nz, jr_080_7443

    ld b, b
    xor $10
    db $ec
    db $10
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$02fd], sp
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38

jr_080_7497:
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    cp $01
    rst $18
    jr nz, jr_080_7497

    add hl, bc
    ld a, [$fe05]
    ld bc, $0df2
    ld a, b
    add a
    ld a, b
    add a
    ld a, [hl]
    add c
    ld hl, sp+$07
    ld b, h
    cp e
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
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

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
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    inc h
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [$09ff], sp
    rst $38
    dec d
    rst $38
    and c
    rst $38
    dec hl
    rst $38
    ld l, b
    cp a
    sbc h
    ld a, a
    sub c
    ld a, a
    ld d, e
    cp a
    ld [hl-], a
    rst $18
    sub c
    ld a, a
    ld de, $93ff
    ld a, a
    inc hl
    rst $18
    push de
    ccf
    xor d
    ld e, a
    pop hl
    rra
    rst $38
    rrca
    ld l, d
    sbc a
    db $fd
    rrca
    add $3f
    push de
    ccf
    ld [$851f], a
    ld a, a
    ret nz

    ld a, a
    sub b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    ret z

    ld a, a
    ld bc, $adff
    ld e, a
    daa

jr_080_752d:
    rst $18
    ld [hl+], a
    rst $18
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    dec bc
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $38
    push de
    cp a
    db $eb
    cp a
    add h
    rst $38
    ld b, d
    cp a
    ld a, $df
    rrca
    rst $38
    nop
    rst $38
    dec c
    rst $38
    ld l, l
    rst $18
    ld [hl], h
    rst $18
    ld c, e
    rst $38
    ld h, $ff
    ld e, d
    rst $38
    jp hl


    rst $38
    jp c, $dfff

    rst $38
    or $ff
    ei
    rst $38
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
    ld b, b
    ld a, a
    jr nz, jr_080_752d

    ld b, b
    sbc a
    db $10
    rst $18
    ld [$16ef], sp
    rst $20
    rlca
    rst $30
    inc bc
    ei
    dec h
    ld sp, hl
    ld [de], a
    db $fc
    nop
    cp $ee
    db $10
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld c, l
    or d
    db $ed
    ld [hl-], a
    cp a
    ld h, b
    dec sp
    db $e4
    add e
    ld l, h
    xor e
    ld c, h
    dec bc
    db $fc
    rrca
    ld hl, sp+$03
    ld sp, hl
    inc bc
    ei
    inc bc
    rst $38
    rlca
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
    ld bc, $00ff
    rst $38
    ld [$0cff], sp
    rst $38
    ld b, $ff
    ld d, $ff
    ld c, $ff
    adc d
    rst $38
    ld a, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    ld c, [hl]
    rst $38
    rrca
    rst $38
    add d
    rst $38
    sub b
    rst $38
    jr z, @+$01

    ld a, [hl+]
    rst $38
    inc b
    rst $38
    jr @+$01

    inc e
    rst $38
    adc [hl]
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $ddff
    nop
    ld c, e
    nop
    ld l, a
    nop
    ld a, a
    nop
    rst $38
    nop
    dec sp
    inc b
    ld e, e
    inc b
    rla
    nop
    ei
    nop
    ld l, a
    nop
    db $dd
    nop
    ld e, [hl]
    ld bc, $015e
    xor $01
    and e
    inc b
    or l
    nop
    ld d, d
    rst $38
    pop de
    rst $38
    xor e
    rst $38
    ret nz

    rst $38
    ld l, d
    rst $38
    ld c, d
    rst $38
    ld [hl-], a
    rst $38
    ld a, [hl]
    rst $38
    dec e
    rst $38
    ld c, b
    rst $38
    ld [hl-], a
    rst $38
    ld d, [hl]
    rst $38
    rst $38
    rst $38
    adc $ff
    ld [bc], a
    rst $38
    ld e, d
    rst $38
    ld c, [hl]
    rst $38
    sub e

Call_080_7633:
    rst $38
    db $e3
    rst $38
    db $eb
    rst $38
    ld h, a
    rst $38
    rst $08
    rst $38
    call $a7ff
    rst $38
    ld l, a
    rst $38
    cp l
    rst $38
    adc $ff
    cp h
    rst $38
    sub c
    rst $38
    dec [hl]
    rst $38
    and c
    rst $38
    db $eb
    rst $38
    ld a, [hl-]
    rst $38
    sub l
    rst $38

jr_080_7654:
    sub [hl]
    rst $38
    ld e, e
    rst $38
    call Call_000_1eff
    rst $38
    rst $10
    rst $38
    ld [hl], l
    rst $38
    sub a
    rst $38
    dec de
    rst $38
    sbc a
    rst $38
    cpl
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38

jr_080_766d:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    jr nz, jr_080_7654

    jr nz, jr_080_766d

    add hl, bc
    cp $01
    cp a
    ld b, b
    ccf
    ret nz

    call Call_080_72b2
    ld a, a
    cp d
    ccf
    inc a
    cp a
    ld e, $df
    ld l, $cf
    rla
    rst $20
    rlca
    rst $30
    dec hl
    di
    dec h
    ld sp, hl
    xor c
    db $fd
    inc c
    cp $93
    cp $12
    rst $38
    rst $00
    rst $38
    ld d, d
    rst $38
    ld h, e
    rst $38
    ld [hl], l
    xor d
    jr z, jr_080_771b

    inc [hl]
    ld a, e
    db $e4
    ld a, e
    ld [hl], h
    ei
    and $f9
    rst $10
    db $ec
    rst $00
    db $ec
    rlca
    xor $9f
    xor $9e
    rst $38
    inc e
    rst $38
    inc e
    db $fd
    ld a, b
    db $fd
    ld d, b
    cp $09
    rst $38
    ld b, c
    rst $38
    dec de
    rst $38
    ld c, a
    rst $38
    ld [hl], e
    rst $38
    db $fd
    rst $38
    cp $ff
    or $ff
    pop af
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    dec b
    rst $38
    ld h, c
    rst $38
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    dec c
    rst $38
    ld b, $ff
    nop
    rst $38
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    ei
    inc b
    swap h
    sbc $21
    ld a, [hl]
    add c
    ld l, e
    sub h
    ld a, d
    add l
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld sp, hl
    ld b, $fc
    inc bc
    ld a, [$fe05]
    ld bc, $05fa
    ld [hl], c
    ld c, $f9
    ld b, $fb

jr_080_771b:
    inc b
    ld [hl], a
    inc c
    di
    inc c
    ld [hl], a
    ld [$00ff], sp
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    or e
    rst $38
    adc e
    rst $38
    dec h
    rst $38
    rst $10
    rst $38
    dec sp
    rst $38
    ld c, e
    rst $38
    or a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38

jr_080_775e:
    cp l
    rst $38
    rst $20
    nop
    xor e
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ei
    inc b
    ld a, a
    add b
    ei
    inc b
    rst $18
    jr nz, jr_080_775e

    ld [hl+], a
    ld hl, sp+$07
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    db $f4
    dec bc
    ld e, [hl]
    and c
    sbc $21
    cpl
    ret nc

    ret nz

    rst $38
    db $e4
    rst $38
    db $fc
    rst $38
    ld [hl], h
    ld a, a
    cp l
    ccf
    dec a
    cp a
    sbc $9f
    rst $28
    rst $08
    ld c, a
    rst $28
    rst $30
    rst $20
    ld a, e
    di
    inc sp
    ei
    ld a, c
    db $fd
    ld a, [hl]
    db $fc
    db $fd
    cp $3a
    rst $38
    nop
    rst $38
    ld c, b
    or a
    ld bc, $70fe
    adc a
    ld [hl], b
    adc a
    ld [hl], $c9
    add e
    db $fc
    jp $c8fc


    rst $30
    ldh a, [$ef]
    pop bc
    cp $82
    db $dd
    ld [bc], a
    db $dd
    inc c
    db $db
    sbc b
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    cp b

jr_080_77d7:
    db $fd
    or b
    db $fc
    adc b
    db $fc
    and b
    db $fd
    ld hl, $83ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    ld de, $11ff
    rst $38
    ld a, c
    rst $38
    cp b
    rst $38
    and b
    ld e, a
    nop
    rst $38
    jr nz, @-$1f

    jr nz, jr_080_77d7

    ret nc

    cpl
    xor d
    ld d, l
    db $d3
    inc l
    or d
    ld c, l
    or $09
    ld a, [$ee05]
    ld de, $00ff
    rst $38
    nop
    sbc [hl]
    ld h, c
    xor e
    ld d, h
    rst $38
    nop
    ld a, a
    add b
    ld hl, sp+$07
    cp d
    ld b, a
    or [hl]
    ld c, c
    db $ec
    inc de
    db $db
    ld h, $d9
    ld h, $ff
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld a, l
    add d
    ld sp, hl
    ld b, $f8
    rlca
    reti


    ld h, $fc
    inc bc
    ld l, l
    add e
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $28
    nop
    ld a, e
    add b
    db $ed
    nop
    ld sp, hl
    nop
    db $db
    nop
    rst $10
    nop
    sub e
    nop
    rst $10
    nop
    db $e3
    nop
    push af
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
    ld a, a
    rst $38
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
    rra
    ldh [$5e], a
    and c
    rst $38
    nop
    cp a
    ld b, b
    db $eb
    inc d
    ld a, a
    add b
    rst $28
    db $10
    db $fd
    ld [bc], a
    cp l
    ld b, d
    ld a, a
    add b
    cp l
    ld b, d
    db $db
    inc h
    ld c, l
    or d
    rla
    add sp, -$35
    inc [hl]
    or l
    ld c, d
    or a
    ld c, b
    add hl, hl
    sub $27
    ret c

    daa
    ret c

    sub e
    ld a, h
    ld c, c
    or [hl]
    cp c
    ld b, [hl]
    ld e, d
    and l
    sbc a
    ld h, b
    ld b, a
    cp b
    inc hl
    call c, $fff2
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, b
    ld a, a
    ld a, h
    ld a, a
    cp l
    ccf
    rst $18
    sbc a
    sbc a
    rst $18
    rst $28
    rst $08
    scf

jr_080_78b9:
    rst $20
    xor e
    di
    db $d3
    ei
    ld a, l
    ld sp, hl
    cp d
    db $fc
    call z, $effe
    cp $69
    rst $38
    sub $ff
    db $f4
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld a, [bc]
    push af
    add hl, bc
    or $17
    add sp, $04
    ei
    push bc
    ld a, [$f6c9]
    push af
    ld [$f6e9], a
    add sp, -$09
    ret nc

    rst $28
    jr nz, jr_080_78b9

    ld [$a1e7], sp
    add $42
    rst $20
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    db $10
    rst $28
    ld d, $e9
    sub e
    ld l, h
    ld a, [de]
    db $ed
    dec e
    xor $21
    sbc $fe
    ld bc, $13ec
    ld [$df17], a
    daa
    ccf
    rst $00
    rst $20
    rra
    ld [hl], e
    adc a
    ld a, e
    add a
    or c
    ld c, a
    push hl
    dec de
    call z, $ff33
    nop
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$18e7], sp
    rst $20
    jr jr_080_796e

    cp h
    rlca
    ld hl, sp+$07
    ld hl, sp-$7a
    ld a, c
    add a
    ld a, b
    db $e3
    inc e
    db $e3
    inc e
    ld a, d
    add l
    call c, $fd23
    ld [bc], a
    di
    inc c
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
    rst $38
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
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $20
    jr @+$01

    nop
    rst $28
    db $10
    ld a, l
    add d
    ld a, [$fe05]
    ld bc, $04fb

jr_080_796e:
    rst $38
    nop
    ei
    inc b
    sbc a
    ld h, b
    ei

jr_080_7975:
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$40bf], sp
    rst $30
    ld [$00ff], sp
    rst $18
    jr nz, jr_080_7975

    ld de, $02fd
    rst $38
    nop
    xor e
    ld d, h
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    ld a, e
    add h
    ld l, [hl]
    sub c
    rst $38
    nop
    db $db
    inc h
    cp e
    ld b, h
    di
    inc c
    rst $18
    jr nz, jr_080_7a25

    add c
    ccf
    ret nz

    cpl
    ret nc

    adc l
    ld a, [c]
    sbc e
    db $e4
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    ld a, a
    cp [hl]
    ccf
    ld d, a
    sbc a
    rst $18
    sbc a
    ld l, l
    rst $08
    ld d, a
    rst $20
    scf
    rst $30
    dec de
    di
    dec l
    ld sp, hl
    ld bc, $16fd
    db $fc
    inc bc
    cp $01
    rst $38
    ld bc, $55ff
    xor d
    ccf
    ret nz

    cp $01
    rst $18
    jr nz, jr_080_7a57

    add c
    sbc l
    ld h, d
    ei
    inc b
    ld a, l
    add d
    ld [bc], a
    db $fd
    ld [hl-], a
    call $edd2
    ret nz

    rst $38
    dec b
    ei
    ld a, [$5325]
    xor h
    pop hl
    ld e, $f9
    ld b, $6d
    sub d
    adc e
    ld [hl], h
    ld d, c
    xor [hl]
    ld b, [hl]
    cp c
    sub [hl]
    ld l, c
    reti


    ld h, $f1
    ld c, $53
    xor h
    dec d
    ld [$da25], a
    dec c
    ld a, [c]
    db $db
    inc h
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    db $dd
    ld [hl+], a
    ei
    inc b
    db $fd
    ld [bc], a
    cp a
    ld b, b
    dec a
    jp nz, Jump_080_41be

    rst $38
    nop
    ld a, [hl]
    add c
    ccf
    ret nz

    ld [hl], a
    adc b
    daa

jr_080_7a25:
    ret c

    ld e, a
    and b
    ld c, a
    or b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop

jr_080_7a3e:
    rst $18
    jr nz, jr_080_7a3e

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
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $30

jr_080_7a57:
    ld [$08f7], sp
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    db $fd
    ld [bc], a
    xor $11
    rst $30
    ld [$00ff], sp
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$807f], sp
    ld a, a
    add b
    ld l, a
    sub b
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
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    push af
    ld [$04fb], sp
    ei
    inc b
    rst $38
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
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
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld [hl], a
    adc b
    ccf
    ret nz

    ldh [rIE], a
    pop hl
    rst $38
    ldh a, [rIE]
    jp hl


    rst $38
    ret c

    rst $38
    ld a, h
    ld a, a
    cp d
    ccf
    or h
    ccf
    jp c, $2d9f

    rst $08
    rrca
    rst $28
    scf
    rst $20
    dec hl
    di
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    ld b, [hl]
    db $fc
    nop

jr_080_7ae1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld bc, $10fe
    rst $28
    inc h
    db $db
    add sp, -$69
    add sp, $17

jr_080_7af2:
    ld [$38f7], sp
    rst $00
    or b
    ld c, a
    or d
    ld c, l
    call c, $f623
    add hl, bc
    cp $01
    rst $18
    jr nz, jr_080_7ae1

    ld hl, $827d
    ld hl, sp+$07

jr_080_7b08:
    ldh a, [rIF]
    ld a, [c]
    dec c
    ld a, l
    add d
    ld [hl], e
    adc h
    db $f4
    dec bc
    push af
    ld a, [bc]
    rst $20
    jr c, jr_080_7b08

    ld l, $d0
    cpl
    ret nc

    cpl
    ld [c], a
    dec e
    db $d3
    inc a

jr_080_7b20:
    db $e3
    inc e

jr_080_7b22:
    db $db
    inc h
    push af
    ld a, [bc]
    rst $38
    nop
    push af
    ld a, [bc]
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop

jr_080_7b30:
    rst $18
    jr nz, jr_080_7af2

    ld b, b
    rst $38
    nop
    ld a, [hl]
    add c
    xor a
    ld d, b
    rst $28
    db $10
    ld c, a
    or b
    rst $00
    jr nc, jr_080_7b20

    jr nz, jr_080_7b22

    jr nz, @+$01

    nop
    cp e
    ld b, b
    rst $38
    nop
    rst $30
    nop
    cp a
    nop
    rst $38
    nop
    ei
    inc b
    cp d
    ld b, l
    rst $38
    nop

jr_080_7b56:
    rst $18
    jr nz, jr_080_7b30

    jr z, jr_080_7b56

    inc b
    rst $38
    nop
    ld l, e
    sub h
    xor a
    ld d, b
    cp $01
    db $fd
    ld [bc], a
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    and $19
    adc $31
    ld [$ff11], a
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
    ei
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, a
    add b
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    add h
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    di
    nop
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
    cp $00
    rst $28
    db $10
    cp [hl]
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, l
    add b
    cp l
    ld b, b
    cp a
    ld b, b
    ld e, l
    and b
    rra
    ldh [$9f], a
    ldh [$ef], a
    ret nc

    nop
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_080_7c27

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $1b
    daa
    jr z, jr_080_7c2a

    dec de
    add hl, hl
    ld a, [hl+]
    ld e, $2b
    inc l
    dec l
    ld l, $2f
    jr nc, jr_080_7c4b

    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld [hl-], a
    inc sp
    ld e, $1e
    ld e, $34
    dec de

jr_080_7c27:
    dec de
    dec [hl]
    dec de

jr_080_7c2a:
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld [hl], $1e
    ld e, $1e
    ld e, $34
    dec de
    dec de
    dec [hl]
    dec de
    dec de
    dec de

Call_080_7c3c:
    dec de
    dec de
    dec de
    dec de
    scf
    ld e, $1e
    ld e, $1e
    inc [hl]
    dec de
    dec de
    dec [hl]
    dec de
    dec de

jr_080_7c4b:
    dec de
    dec de
    dec de
    dec de
    dec de
    scf
    ld e, $1e
    ld e, $1e
    jr c, jr_080_7c72

    dec de
    dec [hl]
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    scf
    ld e, $1e
    ld e, $1e
    add hl, sp
    dec de
    dec de
    ld a, [hl-]
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec sp
    inc a

jr_080_7c72:
    ld e, $1e
    ld e, $39
    dec a
    ld a, $3a
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ccf
    scf
    ld e, $1e
    ld e, $39
    dec de
    dec de
    ld a, [hl-]
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    add hl, bc
    scf
    ld e, $1e
    ld e, $39
    dec de
    dec de
    ld a, [hl-]
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    add hl, bc
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld c, c
    ld bc, $4a01
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    dec de
    dec de
    dec de
    dec de
    ld d, e
    ld bc, $0101
    ld bc, $5554
    ld d, [hl]
    ld d, a
    add hl, bc
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    dec de
    dec de
    ld bc, $0101
    ld bc, $5c01
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld bc, $6867
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
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld bc, $7776
    ld a, b
    ld a, c
    ld bc, $7b7a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    ld bc, $8584
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $9190
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    add hl, bc
    sub a
    nop
    nop
    nop
    inc bc
    ld bc, $0202
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
    inc bc
    ld bc, $0101
    dec b
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
    inc b
    ld [bc], a
    ld bc, $0507
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0106
    nop
    nop
    nop
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
    ld bc, $0506
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
    nop
    ld bc, $0501
    dec b
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $1f0f
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rra
    rst $38
    nop

jr_080_7e70:
    rst $38
    nop

jr_080_7e72:
    rst $38
    nop

jr_080_7e74:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    nop
    add b
    nop
    ret c

    nop
    ld hl, sp+$00
    cp $00
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    jr nz, jr_080_7e70

    jr nc, jr_080_7e72

    jr c, jr_080_7e74

    dec a
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [$9f]
    ldh a, [$df]
    ldh a, [rIE]
    ret nc

    rst $38
    call z, $4cff
    rst $38
    ld c, a
    rst $38
    ld c, a
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    and e
    rst $38
    cpl
    ldh a, [$a0]
    ld [hl], b
    ld b, b
    pop hl
    add e
    rst $00
    ld b, $0f
    rrca
    ccf
    ccf
    ld a, a
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld [c], a
    rst $38
    add $ff
    call nz, $88ff
    rst $38
    jr @+$01

    jr nc, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ld e, a
    ccf
    dec c
    inc bc
    ld [$0800], sp
    nop
    inc b
    nop
    inc b
    ld hl, sp-$08
    rlca
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
    rst $38
    nop
    ldh a, [rIF]
    nop
    cp $01
    ld bc, $3f1e
    nop
    ccf
    nop
    ccf
    ld [bc], a
    ccf
    dec c
    ld a, [hl-]
    inc c
    ld a, [de]
    rrca
    jr jr_080_7f70

    rra
    ld c, $1f

jr_080_7f70:
    add e
    ld e, $e3
    dec e
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    nop
    ld sp, hl
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rlca
    db $fd
    ld b, $57
    xor d
    rlca
    ld a, [$fb06]
    ld b, $fb
    rlca
    ei
    db $fc
    cp $fc
    cp $fd
    cp $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor b
    rst $38
    cp $ff
    cp $ff
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    ldh a, [$ef]
    ldh a, [$ef]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp a
    db $fc
    cp a
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
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    and $ff
    call nz, $ccff
    rst $38
    sbc b
    rst $38
