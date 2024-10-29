SECTION "ROM Bank $0a8", ROMX[$4000], BANK[$a8]

    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $02
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    inc b
    ld hl, sp+$04
    ld hl, sp+$0c
    ldh a, [$08]
    ldh a, [$8f]
    add a
    adc a
    add a
    adc a
    add a
    adc a
    add a
    adc a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    rst $00
    add a
    rst $00
    add a
    rst $00
    add a
    rst $00
    add a
    rst $00
    add a
    rst $00
    add a
    rst $00
    add a
    rst $00
    rst $00
    rst $00
    jp $c3c7


    rst $00
    jp $c3c7


    rst $00
    jp $c3c7


    jp $e7c3


    jp $c3e3


    db $e3
    jp $c3e3


    db $e3
    jp $c3e3


    db $e3
    jp $e3e3


    db $e3
    ld h, c
    db $e3
    ld h, c
    db $e3
    pop hl
    db $e3
    pop hl
    db $e3
    ld h, c
    db $e3
    pop hl
    db $e3
    pop hl
    db $e3
    pop hl
    di
    pop hl
    di
    pop hl
    pop af
    pop hl
    pop af
    pop hl
    pop hl
    pop af
    pop hl
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    ldh a, [$f1]

jr_0a8_4096:
    ldh a, [$f1]
    ld hl, sp-$0f
    ld hl, sp-$0f
    ld sp, hl
    ldh a, [$f8]
    pop af

jr_0a8_40a0:
    pop af
    ld hl, sp-$0f
    jr jr_0a8_4096

    jr c, jr_0a8_40a0

    ld hl, sp-$07
    ld hl, sp+$79
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$03
    ld hl, sp-$04
    ld hl, sp-$03
    ld hl, sp-$07
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
    rst $30
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    cp $fc
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    add sp, -$08
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f0], a
    ldh [$f0], a
    ret nz

    pop af
    ret nz

    pop hl
    add b
    pop hl
    ld bc, $01e1
    jp $c301


    ld bc, $03c3
    jp $8703


    ld [bc], a
    add a
    inc bc
    add a
    rlca
    rlca
    rlca
    rlca
    ld b, $0f
    nop
    ld [$0807], sp
    rlca
    nop
    rrca
    ld de, $140e
    dec bc
    dec bc
    inc d
    inc b
    dec de
    inc hl
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f4ff]
    rst $38
    db $f4
    rst $38
    db $ec
    ei
    adc e
    db $f4
    adc [hl]
    ldh a, [$57]
    add sp, -$2d
    db $fc
    di
    db $fc
    adc a
    ldh a, [$9e]
    ldh [rNR23], a
    ldh [$3c], a
    ret nz

    inc a
    ret nz

    ld e, $e0
    ld a, $c0
    dec e
    ldh [rNR31], a
    db $e4
    adc e
    db $f4
    add a
    ld hl, sp-$39
    ld hl, sp-$3e
    db $fd
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
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
    cp $f9
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ei
    db $fd
    rst $38
    ld sp, hl
    db $fd
    di
    rst $38
    di
    ei
    rst $38
    sub $ef
    xor a
    add $0e
    add $04
    adc $8e
    call z, $cc9c
    call z, $dddc
    ret c

    reti


    ld hl, sp-$07
    ld sp, hl
    pop af
    ld sp, hl
    ld sp, hl
    pop af
    di
    pop af
    db $e3
    di
    di
    db $e3
    db $e3
    db $e3
    rst $00
    db $e3
    db $e3
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $08
    add a
    add a
    adc a
    adc a
    adc a
    adc a
    rrca
    sbc a
    rrca
    rra
    rrca
    rra
    rra
    rra
    rra
    ccf
    rra
    ccf
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $fe
    cp $fe
    cp $fc
    cp $00
    cp $00
    cp $02
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld a, $fc
    ld hl, sp-$04
    ld a, h

Jump_0a8_41fd:
    cp b
    or h
    ld a, b
    ld a, h
    or b
    db $f4
    jr c, jr_0a8_4239

    ld hl, sp+$35
    ld hl, sp+$2c
    ldh a, [$29]
    ldh a, [$e9]
    ld [hl], b
    jp hl


    ld [hl], b
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
    or $ff
    db $fd
    rst $38
    db $fd
    rst $38
    sub $ff
    db $fd
    rst $38
    db $ed
    rst $38
    jp nc, $a1ff

    rst $38
    ld sp, $73ef

jr_0a8_4239:
    sbc $5a

Call_0a8_423b:
    and l
    ld a, e

jr_0a8_423d:
    and l
    jp z, $e252

    nop
    nop
    nop
    nop
    nop
    nop

jr_0a8_4247:
    add b
    ld h, h
    add b
    adc d
    nop
    nop
    nop
    inc b
    nop
    ld b, d
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld d, b
    nop
    ld e, a
    nop
    ld d, h
    dec bc
    ret


    ld d, $80
    ld e, a
    and b
    ld e, a
    jr c, jr_0a8_423d

    jr nz, jr_0a8_4247

    inc l
    rst $18
    ld e, $ff
    rrca
    rst $38
    sbc a
    rst $38
    rst $10
    rst $38
    ld sp, hl
    rst $38
    sub d
    rst $38
    inc b
    rst $38
    sbc l
    rst $20
    rst $08
    or [hl]
    ld e, [hl]
    and c
    ld c, e
    and h
    rst $28

jr_0a8_4281:
    add h
    push hl
    add b
    ld h, h
    add b
    reti


    and h
    sbc e
    dec h
    xor [hl]
    rlca
    rst $08
    rst $20
    xor $c7
    and $0f
    ld a, $0f
    ld d, $4f
    ld d, [hl]
    ld c, a
    ld b, [hl]
    ld e, a
    rst $08
    ld d, a
    rst $00
    ld e, a
    rst $00
    sbc a
    and a
    rst $18
    rst $18
    rst $20
    rst $00
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38

Jump_0a8_42ac:
    rst $08
    rst $38
    rst $28
    rst $38
    rst $08
    rst $30
    rst $08
    rst $30
    xor $f7
    and $ff
    push hl
    rst $38
    push hl
    rst $38
    or $ef
    db $f4
    rst $08
    push hl
    rst $08
    call nz, $c2ef
    adc a
    sub b
    adc a
    cp a
    adc l
    or h
    adc a
    cp e
    adc [hl]
    ld a, [de]
    xor a
    jr jr_0a8_4281

    inc sp
    xor [hl]
    add b
    ccf
    and e
    dec a
    ld [hl+], a
    dec a
    inc sp
    inc a
    jr nc, jr_0a8_431c

    ld [hl], a
    ld a, [hl-]
    ld [hl], h
    dec sp
    ld h, [hl]
    add hl, sp
    ld h, b
    dec a
    inc sp
    ld a, h
    inc sp
    ld a, h
    ld sp, $357e
    ld a, d
    jr nc, jr_0a8_436b

    ld [hl], $79
    or h
    ld a, c
    or b
    ld a, l
    pop af
    ld a, h
    ld [bc], a
    db $fc
    nop
    cp $0f
    ld a, [c]
    inc c
    di
    add h
    ld a, e
    and c
    ld e, [hl]
    add hl, hl
    sub $09
    or $0d
    ld a, [c]
    inc c
    di
    xor b
    ld d, e
    ld a, [bc]
    pop af
    ld sp, hl
    rst $38
    or [hl]
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a8_431c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld c, d
    rst $38
    or h
    rst $38
    nop
    rst $38
    ld c, [hl]
    ei
    sbc h
    rst $30
    nop
    rst $38
    ld c, [hl]
    ei
    sbc l
    or $00
    rst $38
    inc e
    db $eb
    ld a, $d5
    add d
    ld a, l
    call c, Call_0a8_6b2b
    sub h
    rla
    nop
    nop
    nop
    ld bc, $2700
    nop
    dec hl
    nop
    rst $00
    db $10
    dec b
    nop
    dec hl
    nop
    ld d, a
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    xor a
    nop
    db $fd
    ld [bc], a
    ld sp, hl
    ld d, [hl]
    pop hl
    cp a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    db $10

jr_0a8_4369:
    rst $38
    xor l

jr_0a8_436b:
    rst $38
    ld a, d
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $38
    cp a
    or a
    ld e, a
    ld d, a
    cp a
    ld c, l
    cp a
    ld [hl], a
    rrca
    rst $30
    rrca
    rst $08
    ccf
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18

jr_0a8_4393:
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rlca
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    rla
    rst $38
    ld b, d
    rst $38
    jr c, jr_0a8_4393

    sub h
    rst $38
    ld [hl], b
    rst $18
    adc b
    ld a, a
    ld [hl], h
    xor a
    adc b
    rst $30
    ld h, b
    rst $18
    ld [$2cf7], sp
    db $d3
    db $fc
    ld c, e
    ld a, [c]
    dec l

jr_0a8_43b8:
    ld e, h
    and a
    add sp, -$69
    inc b
    db $db
    or $49
    db $10
    ld l, l
    ld a, [$0025]
    or a
    ld l, h
    sub e
    inc b
    db $db
    or [hl]
    ld c, c
    add d
    ld l, l
    ld c, d
    inc h
    ld d, b
    ld h, $25
    sub d
    jr z, jr_0a8_4369

    ld b, d
    sbc c
    inc d
    ret


    and c
    ld c, h
    xor d
    ld b, h
    sbc b
    ld h, [hl]
    cp a
    ld b, b
    ld bc, $a8cc
    ld b, h
    ld [bc], a
    ld h, h
    ld b, b
    ld h, $55
    ld [hl+], a
    nop
    inc sp
    xor d
    ld de, $ff0c
    jp Jump_000_18ff


    rst $38
    rst $00
    rst $38
    ei
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, $32de
    db $ed
    inc de
    db $ed
    ld sp, hl
    ld d, [hl]
    ld b, [hl]
    cp c
    inc sp
    db $ed
    db $fd
    ld d, d
    ld d, d
    xor l
    cp [hl]
    ld h, c
    ld a, l
    jp nc, $a55a

    ld d, [hl]
    xor c
    ld sp, hl
    ld d, [hl]
    ld e, a
    and b
    db $eb
    nop
    inc d
    nop
    add hl, hl
    nop
    rst $18
    jr nz, jr_0a8_43b8

    ld d, b
    ld e, [hl]
    and c
    rst $38
    nop
    rlca
    ld d, b
    ld d, $a9
    rst $28
    stop
    nop
    inc hl
    nop
    db $ed
    ld [de], a
    ld a, [hl+]
    push de
    db $e3
    cp l
    ld b, e
    cp $00
    rst $38
    nop
    rst $38
    add hl, hl
    sub $02
    db $fd
    nop
    rst $38
    ld d, d
    rst $38
    and c
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld l, b
    rst $38
    ldh a, [rIE]
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $17fe
    add sp, $50
    xor a
    inc bc
    db $fc
    add hl, hl
    sub $57
    xor b
    rst $30
    ld [$20df], sp
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld b, b
    cp a
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop

jr_0a8_44d0:
    jr c, jr_0a8_44d0

    adc h
    db $fc
    ld h, b
    db $fc
    ld d, b
    ld hl, sp-$27
    ldh a, [$e3]
    pop af
    db $ed
    di
    ei
    rst $20
    rst $00
    rst $38
    rst $38
    rst $38
    ld c, d
    or l
    ld [de], a
    db $ed
    pop af
    ld c, [hl]
    jp z, Jump_0a8_5ab5

    and l
    and $58
    ret c

    and l
    ld a, e
    add h
    and [hl]
    ld e, b
    ld e, [hl]
    and c
    or a
    nop
    sbc [hl]
    ld b, b
    jp c, $bba5

    ld b, h
    ld e, [hl]
    nop
    sub h
    nop
    ld e, l
    nop
    ei
    inc b
    ld a, [de]
    and l
    xor a
    ld d, b
    xor [hl]
    ld d, b
    ld e, $a1
    scf
    ld c, b
    ld e, a
    and b
    xor l
    nop
    reti


    nop
    ld l, d
    sub l
    ld b, d
    cp l
    push bc
    ld a, d
    pop hl
    cp a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jp c, Jump_000_0025

    rst $38
    and c
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld c, b
    rst $38
    jp c, $fbff

    rst $38
    cp h
    rst $38
    or $ff
    or h
    rst $38
    rst $38
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
    pop af
    rst $38
    ld hl, sp-$01
    cp $fd
    rst $38
    cp $f8
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, $ff
    inc b
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
    jr nc, @-$2f

    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    db $ec
    inc de
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    ld a, d
    add l
    rst $30
    ld [$10ef], sp
    rst $38
    nop
    rst $38
    nop
    call nc, $bf2b
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
    ccf
    rra
    ld a, a
    ccf
    ccf
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
    nop
    rst $38
    ret nc

    ld a, [hl+]
    db $ec
    sub l
    cp e
    ld b, h
    ldh a, [$0a]
    ld b, b
    or l
    db $fd
    ld [bc], a
    or h
    ld c, d
    ld l, b
    sub l
    or l
    ld c, d
    ret c

    ld [bc], a
    or h

jr_0a8_45db:
    ld bc, $4ab5
    ld e, [hl]
    nop
    and l
    nop
    ld b, b
    nop
    ld d, b
    nop
    cp h
    nop
    inc a
    ld b, d
    rst $38
    nop
    sbc h
    ld hl, $522c
    rst $38
    nop
    rst $18
    jr nz, @+$0a

    nop
    rst $18
    nop
    add b
    ld a, a
    jr nz, jr_0a8_45db

    ldh [$bf], a
    ret nc

    ld a, a
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ld [de], a
    db $ed
    nop
    rst $38
    ld d, h
    rst $38
    jr nz, @+$01

    nop
    rst $38
    and b
    rst $38
    xor h
    di
    db $10
    rst $38
    ld de, $d7ff
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    add hl, sp
    rst $38
    ld de, $f5ff
    rst $38
    pop hl
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld d, c
    rst $38
    ld sp, $10ff
    rst $38
    or c
    ld a, a
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
    cp a
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
    rst $38
    db $10
    rst $28
    ld [$f8f7], sp
    rlca
    nop
    rst $38
    ld a, [hl+]
    push de
    cp $01
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld hl, sp+$07
    ld e, a
    and b
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
    cp $ff
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$be]
    ldh a, [rIF]
    ldh a, [$fe]
    nop
    cp $00
    rst $38
    nop
    ld l, [hl]
    sub b
    cpl
    ld b, b
    rst $38
    nop
    xor $10
    xor a
    ld b, b
    cp $00
    cp a
    nop
    rrca
    nop
    ld a, [hl]
    add b
    ld a, [de]
    and b
    ld [$0300], sp
    ld bc, $0f17
    ld h, c
    ccf
    inc c
    di
    cp a
    ld b, b
    rra
    nop
    sbc a
    jr nz, jr_0a8_46f0

    nop
    ccf
    nop
    rra
    nop
    jr c, @+$09

    sub b
    cpl
    ret z

    scf
    ld h, b
    rra
    ldh [$3f], a
    ld b, b
    ccf
    add $3f
    rst $08
    ccf
    rst $08
    ccf
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $20
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a8_46f0:
    rst $30
    rst $38
    ld sp, hl

jr_0a8_46f3:
    rst $38
    sbc h
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    db $db
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld d, h
    rst $38
    inc h
    rst $38
    db $10
    rst $38
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
    nop
    rst $38
    ld c, b
    or a
    nop
    rst $38
    ld e, b
    and a
    jr c, jr_0a8_46f3

    add hl, hl
    sub $27
    ret c

    ld d, $e9
    sbc [hl]
    ld h, c
    sbc d
    ld h, l
    ld b, d
    cp l
    rlca
    ld hl, sp-$1b
    ld a, [de]
    rst $30
    ld [$1de2], sp
    ei
    inc b
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    ret nz

    ldh [$a0], a
    ret nz

    ld b, b
    add b
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
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0300
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0c00
    nop
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    add e
    ld bc, $0f1f
    cp a
    ld a, a
    rst $38
    rst $38
    db $fd
    cp $ec
    ldh a, [$78]
    add b
    db $f4
    nop
    ei
    nop
    cp $00
    rst $28
    db $10
    sbc a
    ld h, b
    ld a, a
    add b
    ld l, a
    sub b
    ld e, [hl]
    and c
    dec c
    ld a, [c]
    ld [$05f6], sp
    db $fc
    rrca
    ld hl, sp-$7c
    ei
    rst $30
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    jp $c0ff


    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    cpl
    rst $18
    rst $28
    rst $28
    rst $20
    rst $28
    jp hl


    rst $38
    db $f4
    rst $28
    rst $28
    rst $28
    jp hl


    rst $20
    rst $30
    ld hl, sp-$03
    cp $ef
    rst $38
    xor $ff
    db $eb
    rst $38
    xor $ff
    ld l, l
    cp $1d
    xor $bf
    adc $cd
    cp $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $dd
    rst $38
    rst $28
    rst $18
    sbc $ef
    rst $20
    rst $38
    di
    rst $38
    sbc $fd
    rst $18
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
    rra
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
    ld [de], a
    db $ed
    dec b
    ld a, [$fd02]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    xor $11
    inc bc
    db $fc
    ld [hl], d
    adc l
    ld [hl-], a
    call Call_0a8_6b94
    inc b
    ei
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0307
    rrca
    rlca
    rra
    rra
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f4
    ld hl, sp-$30
    ldh [$c0], a
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
    rlca
    ld bc, $0f1f
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    ld hl, sp-$60
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
    ld b, b
    nop
    cp a
    nop
    adc a
    ld [hl], b
    ld b, b
    add b
    dec sp
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ld e, l
    and d
    ret z

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld bc, $80fe
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
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $c0ff
    rst $38
    ldh a, [rIE]
    cp h
    ld a, a
    ld a, a
    adc a
    dec d
    db $e3
    add d
    db $fc
    jr nz, @+$01

    ld h, b
    rst $38
    sub [hl]
    ld l, a
    db $f4
    adc a
    dec e
    ld [c], a
    sub $39
    ld [hl], $cd
    cp [hl]
    pop hl
    ld h, [hl]
    ld sp, hl
    pop af
    rst $38
    db $dd
    cp $fd
    cp $dd
    rst $38
    rst $28
    rst $38
    ld a, h

jr_0a8_48ef:
    rst $38
    ld a, c
    cp [hl]
    cp a
    rst $18
    rst $10
    rst $28
    ei
    rst $30
    rst $38
    ld sp, hl
    db $fd
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
    rst $18
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    jr nz, jr_0a8_48ef

    ld d, h
    xor a
    and b
    ld e, a
    ld d, d

jr_0a8_4915:
    xor l
    nop
    rst $38
    dec b
    ld a, [$ed12]
    dec c
    ld a, [c]
    ld d, $e9
    dec bc
    db $f4
    inc b
    ei
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr nz, jr_0a8_4915

    ld h, b
    sbc a
    call nz, Call_0a8_423b
    cp l
    ld e, l

Jump_0a8_493d:
    and d
    ld a, [$ef05]
    db $10
    ei
    inc b
    xor l
    ld d, d
    rst $30
    ld [$29d6], sp
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rra
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    db $fc
    add sp, -$10
    ldh [$c0], a
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
    ld bc, $0700
    inc bc
    ccf
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$40
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
    inc bc
    nop
    rst $38
    nop
    add b
    nop
    ld b, [hl]
    nop
    cp a
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
    ld [bc], a

jr_0a8_49a5:
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$f8], a
    rst $38

Call_0a8_49b6:
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    jr jr_0a8_49a5

    rrca
    ldh a, [$c7]
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    inc a
    cp $01
    cp $7e
    add e
    xor h
    db $d3
    db $e3
    cp $3c
    ld a, e
    add c
    add hl, de
    and b
    jp $dba7


    sub d
    rst $28
    rst $00
    cp $a5
    cp $30
    rst $38
    cp e
    ld a, a
    jp $fbff


    rst $30
    db $76
    db $fd
    ld [hl], l
    rst $38
    rst $30
    rst $38
    rst $30
    di
    ld [hl], e
    rst $30
    ld [hl], c
    di
    db $fd
    ld hl, sp-$02
    db $fc
    ld hl, sp-$01
    db $fd
    rst $38
    ld a, a
    rst $38
    daa

jr_0a8_49fd:
    ld a, a
    rst $28
    add a
    rst $30

jr_0a8_4a01:
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    ld de, $1dff
    rst $38
    rra
    rst $38
    ld e, $ff
    ret nz

    ccf
    jr nz, jr_0a8_49fd

    ret c

    daa
    jr nz, jr_0a8_4a01

    sub b
    ld l, a
    ld l, b
    sub a
    or [hl]
    ld c, c
    reti


    ld h, $26
    reti


    add e
    ld l, h
    ld l, l
    sub d
    ld a, $c9
    add hl, de

Call_0a8_4a33:
    and $1c
    db $e3
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    ld c, b
    or a
    dec [hl]
    jp z, Jump_0a8_4fb0

    add l
    ld a, d
    add b
    ld a, a
    ld b, b
    cp a
    sub b
    ld l, a
    pop af
    ld c, $e9
    ld d, $f4
    dec bc
    db $ec
    cp $f0
    ld hl, sp-$30
    ldh [$c0], a
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
    ld bc, $0700
    inc bc
    ccf
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f8
    and b
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
    inc b
    nop
    rst $38
    nop
    ret nc

    nop
    ld [$d600], sp
    nop
    reti


    nop
    reti


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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret z

    scf
    rst $38
    nop
    rst $38

Call_0a8_4ab3:
    nop
    rst $38
    nop
    jp $fffc


    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld sp, hl
    rlca
    rst $38
    nop
    ld a, a
    add b
    adc a
    ldh a, [$b1]
    ld a, [hl]
    rla
    rrca
    db $10
    pop hl
    adc d
    ld a, h
    ld sp, hl
    rlca
    rst $38
    nop
    cpl
    ret nc

    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    pop af
    ld a, a
    ld hl, sp+$7f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $20
    sbc a
    cp l
    jp $e9d6


    push af
    ld a, [$7c3b]
    cp [hl]
    rra
    ld b, a
    adc a
    rla
    db $e3
    nop
    ld sp, hl
    jp nz, $e0fc

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec c
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$9f], a
    sub b
    ld l, a
    ld c, b
    or a
    inc h
    db $db
    sbc b
    ld h, a
    ld l, h
    sub e
    ld [hl], $c9
    reti


    ld h, $64
    sbc e
    or d
    ld c, l
    reti


    ld h, $65
    sbc e
    ld [hl], $c9
    ld a, [de]
    db $e4
    jr @-$1b

    and h
    ld e, c
    ld d, d
    xor h
    cp c
    ld b, [hl]
    nop
    nop
    ld bc, $0f00
    rlca
    ccf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $e8
    ldh a, [rLCDC]
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
    inc b
    nop
    inc b
    nop
    ld c, $00
    rst $38
    nop
    rst $38
    nop
    ld d, [hl]
    nop
    cp e
    nop
    cp $00
    cp l
    nop
    db $fd
    ld bc, $01fd
    ld hl, sp+$01
    rst $30
    ld [$18e7], sp
    rst $28
    db $10
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp $01
    add sp, $00
    db $f4
    nop
    cp $00
    rrca
    ldh a, [$fc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    ccf
    cp $01
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    pop af
    cp $2e
    rra
    rst $00
    add c
    inc [hl]
    ld hl, sp-$1e
    rra
    db $fc
    inc bc
    rst $38
    nop
    ccf
    ret nz

    inc bc
    db $fc
    ld d, b
    rst $38
    cp $ff
    ccf
    rst $38
    rst $00
    rst $38
    ld sp, hl
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
    ld a, a
    rst $38
    sbc a
    ld a, a
    ld h, a
    sbc a
    cp c
    ld b, a
    xor h
    db $d3
    ret z

    rst $30
    db $f4
    ei
    db $fc
    ld a, a
    ld a, $1f
    ld c, a
    adc a
    rlca
    db $e3
    ld [$80f1], sp
    db $fc
    pop bc
    cp $f0
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    add hl, de
    rst $38
    ld c, $ff
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    jr nz, @-$1f

    sub b
    ld l, a
    call z, Call_0a8_6633
    sbc c
    xor e
    ld b, h
    ld d, l
    ld [hl+], a
    ld [hl+], a
    sbc c
    and e
    ld c, h
    dec d
    ld h, d
    nop
    nop
    nop
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
    ld bc, $070f
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
    ei
    db $fc
    ldh a, [$c0]
    jr nz, jr_0a8_4c52

jr_0a8_4c52:
    ld b, [hl]
    nop
    add b
    ld b, b
    sbc b
    ld h, b
    ld d, c
    jr nz, jr_0a8_4c76

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
    ld e, l
    add b
    dec e
    adc b
    ld e, d
    add c
    sub d
    pop hl
    ld h, e
    call nz, Call_0a8_49b6
    add sp, $17

jr_0a8_4c76:
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
    add c
    ld a, a
    rra
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld a, $c0
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    pop af
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    jp Jump_0a8_5efc


    ccf
    adc e
    rlca
    ld d, b
    ldh [$8b], a
    ld a, h
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$c7], a
    ld hl, sp-$10
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    db $e3
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
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    ld a, a
    rra
    ccf
    rra
    adc a
    inc hl
    rst $00
    add hl, bc
    pop af
    nop
    db $fc
    pop bc
    cp $e0
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    ld l, [hl]
    rst $38
    inc sp
    cp $19
    cp $0c
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
    add b
    ld a, a
    ld b, b
    cp a
    jr nz, @-$1f

    ld d, b
    cpl
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0f1f
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    add a
    ld bc, $0000
    nop
    dec b
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ld a, [hl]
    ld bc, $0077
    ld a, a
    nop
    ld a, a
    nop
    cp $01
    db $fc
    inc bc
    ret nc

    cpl
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    cp b
    ld b, a
    ret nz

    ccf
    or d
    ld c, a
    ld [hl-], a
    rst $08
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $17
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    pop af
    nop
    add $f9
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    ccf
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    inc a
    jp $fac5


    cp a
    ld a, [hl]
    ld e, $07
    and c
    ret nz

    inc [hl]
    ld hl, sp-$19
    rra
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    db $10
    rst $28
    ret nz

    rst $38
    ld hl, sp-$03
    ei
    db $fd
    db $fd
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $38
    di
    di
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $10
    rst $28
    rst $28
    rst $28
    rst $28
    ld a, a
    rra
    ccf
    sbc a
    rrca
    ld h, e
    rst $00
    ld h, e
    pop af
    db $fc
    ld hl, sp-$04
    cp $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rra
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $08
    rst $38
    ld b, a
    rst $38
    ld hl, $18ff
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld bc, $00ff
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a8_4e53

    ld [hl+], a
    inc hl
    inc h
    rrca
    rrca
    dec h
    ld h, $27
    jr z, jr_0a8_4e65

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a8_4e75

    ld [hl-], a
    rrca
    rrca
    inc sp
    inc [hl]
    rrca
    dec [hl]
    ld [hl], $37
    jr c, jr_0a8_4e88

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_0a8_4e53:
    ld a, $3f
    ld b, b
    rrca
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
    ld c, [hl]

jr_0a8_4e65:
    ld c, a
    ld d, b
    rrca
    rrca
    rrca
    rrca
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

jr_0a8_4e75:
    ld e, e
    ld e, h
    rrca
    rrca
    rrca
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
    ld h, a
    ld l, b
    ld l, c
    ld l, d

jr_0a8_4e88:
    rrca
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld h, d
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    rrca
    ld a, b
    ld a, c
    ld a, d
    rrca
    ld a, e
    ld a, h
    ld h, d
    ld h, d
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    rrca
    add h
    ld h, d
    add l
    rrca
    add [hl]
    add a
    ld h, d
    ld h, d
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    rrca
    adc a
    ld h, d
    sub b
    rrca
    sub c
    sub d
    sub e
    ld h, d
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    ld h, d
    sbc l
    rrca
    rrca
    sbc [hl]
    sbc a
    ld h, d
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
    rrca
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    rrca
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
    ld de, $1203
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0a8_4f66

    ld a, [de]
    dec de
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

jr_0a8_4f66:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0a8_4fb0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    dec b
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    db $fc
    db $fc
    rst $38
    adc a
    rst $38
    add [hl]
    rst $30
    nop
    rst $30
    ld bc, $40f7
    rst $20
    ld b, d
    jp $c340


    add b
    jp $c302


    ld b, e
    db $e3
    nop
    jp $e380


    add b
    db $e3
    ld h, c
    pop hl
    and c
    pop hl
    ret nz

    pop hl
    ld bc, $01e1
    pop hl
    nop
    pop af
    add b
    pop af
    nop
    pop af
    nop
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$08]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$08
    add b
    ld hl, sp-$80
    db $fc
    add b
    db $fc
    add b
    db $fc
    sub b
    db $fc
    add b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    nop
    cp $00
    cp $00
    cp $08
    cp $08
    cp $0a
    cp $0a
    cp $3e
    rra
    cp $04
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a8_50ff:
    nop
    ldh [$1f], a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add e
    db $fc
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    adc a
    ld a, a
    ld a, a
    rst $38
    ld hl, sp-$04
    pop bc
    ldh [$8b], a
    rlca
    jr @+$41

    ret nz

    rst $38
    inc b
    ei
    add b
    ld a, a
    ld b, b
    cp a
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    jr c, jr_0a8_50ff

    ret nz

    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp $fe
    ld hl, sp-$04
    ld hl, sp-$0f
    ldh [$e3], a
    adc h
    rst $00
    add b
    rra
    ld bc, $073f
    ld a, a
    rrca
    rst $38
    inc e
    rst $38
    jr c, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $d616
    ld h, a
    sub a
    ld h, [hl]
    ld a, a
    add h
    db $ed
    add [hl]
    xor d
    ld h, a
    cp d
    ld h, a
    pop bc
    xor [hl]
    and l
    jp z, $b36f

    rst $28
    inc sp
    ld c, $f3
    sbc $e3
    rra
    di
    ld a, l
    or e
    ld c, c
    rst $30
    ld hl, sp-$19
    ld de, $93ff
    db $fd
    ld h, e
    db $fd
    ld h, a
    ld sp, hl
    sbc l
    ei
    sbc c
    rst $38
    db $ec
    ei
    ld [hl], h
    ei
    add sp, -$01
    ret z

    rst $38
    ld a, c
    cp $7b
    db $fc
    ld l, a
    db $fc
    db $fc
    ld a, a
    ld a, b
    ld a, a
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, l
    ld a, a
    inc a
    ld a, a
    ld a, $7f
    ld a, $7f
    ld a, $3f
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    rra
    rra
    rra
    ccf
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rrca
    ld e, a
    cp a
    rst $18
    cp a
    cp a
    rst $38
    cp l
    rst $38
    add b
    rst $38
    ld a, a
    add b
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    rst $30
    rrca
    rla
    rst $08
    jp z, $d1dc

    ret nz

    add a
    inc bc
    jr c, jr_0a8_523d

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc de
    rst $20
    ld [hl], a
    rst $20
    rst $38
    rst $20
    rst $20
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd

jr_0a8_523d:
    ei
    di
    ei
    rst $30
    ei
    rst $38
    rst $38
    db $fc
    rst $38
    jr c, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    db $fd
    dec e
    db $fd
    dec a
    rst $38
    ld l, h
    cp $f8
    db $fc
    ld hl, sp-$0f
    rst $20
    db $e3
    add l
    rst $08
    adc c
    rra
    ld h, a
    ccf
    rst $08
    ld a, a
    sbc h
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    xor $ff
    call c, $b8ff
    rst $38
    ld [hl], b
    rst $38
    ld c, d
    or l
    ld a, c
    inc sp
    jp z, $e435

    adc $6a
    push de
    rst $10
    add hl, sp
    ld a, [c]
    dec e
    ld e, a
    and $4b
    or $7e
    sbc c
    ld a, h
    sbc e
    jp c, $f267

    ld l, a
    ld a, [hl+]
    db $dd
    add sp, -$61
    inc hl
    rst $38
    inc hl
    rst $38
    adc l
    cp $8c
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    adc h
    rst $38
    call z, $b1ff
    rst $38
    or c
    rst $38
    adc $ff
    call nz, Call_000_04ff
    ei
    nop
    rst $38
    ld l, e
    sub h
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld h, a
    rst $38
    ld a, a
    rst $38
    ld e, l
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
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fd
    cp $e9
    ldh a, [rBGP]
    add e
    cpl
    rra
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    add b
    adc e
    db $f4
    rst $38
    rst $38
    push hl
    rst $38
    push bc
    rst $38
    ld bc, $04ff
    rst $38
    ld [bc], a
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    cp $78
    db $fc
    ei
    pop af
    jp nz, $80e7

    rst $08
    or b
    rra
    jr nc, @+$81

    ld [hl], b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    sbc a
    rst $38
    ldh [$9f], a
    ret nz

    cp a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld a, b
    cp a
    ld hl, sp-$41
    ld h, b
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
    rst $38
    nop
    rst $38
    inc bc
    db $fd
    rst $20
    jr jr_0a8_5396

    sbc h
    sbc h
    ld h, e
    sbc h
    ld h, e
    ld [hl], a
    adc b
    ld b, e
    sbc h
    ld d, h
    xor e
    ld b, h
    inc sp
    ld d, d
    xor l
    sub d
    call z, $add2
    call z, Call_0a8_4a33
    or l
    or l
    adc $a2
    db $dd
    call nz, $8a3b
    ld [hl], l
    push af
    adc $60
    rst $18

jr_0a8_5396:
    ld d, [hl]
    cp c
    nop
    rst $38
    ld d, d
    rst $28
    ld b, b
    rst $38
    adc d
    db $fd
    nop
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, a
    sbc b
    nop
    rst $38
    cp a
    ld b, b
    rst $38
    rst $38
    call c, $abff
    rst $38
    ld [hl], e
    rst $38
    db $ed
    rst $38
    call z, $f3ff
    rst $38
    ld [hl], e
    rst $38
    rst $30
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp d
    ld bc, $a058
    and l
    jp Jump_000_1f2f


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
    add b
    ld a, a
    and c
    ld b, b
    rst $38
    rst $38
    db $fc
    cp $78
    db $fd
    ld a, c
    di
    jp $dde7


    adc a
    sub b
    ccf
    jr nz, jr_0a8_547b

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    rlca
    rst $38
    ld bc, $11ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    ld b, $f9
    dec b
    ei
    ld [$09f7], sp
    or $25
    cp $55
    xor $53
    db $ec
    cp [hl]
    ret


    rst $20
    sbc c
    ld d, l
    cp e
    daa
    adc $2d
    sub $d7
    add hl, sp
    sub $39
    rra
    and $1f
    and $b6
    ld e, c
    ld d, $b9
    xor d
    ld d, a
    ld a, [de]
    rst $20
    and l
    ld e, d
    ld h, d
    sbc l
    sub [hl]
    ld l, e
    cp e
    ld h, a
    sub h
    ld l, e
    ld h, e
    sbc h
    ld d, h
    xor e
    xor e
    ld [hl], a
    db $10
    rst $28
    xor e
    call c, $bf40
    cp a
    ld [hl], e
    ld bc, $adff
    sbc $81
    rst $38
    dec [hl]
    ei
    ld bc, $7fff
    add b
    rla
    add sp, -$01

jr_0a8_547b:
    nop
    rst $38
    rst $38
    adc $ff
    ld d, l
    rst $38
    add hl, sp
    rst $38
    ld d, [hl]
    rst $38
    and $ff
    ld e, c
    rst $38
    sbc c
    rst $38
    ld h, [hl]
    rst $38
    rst $20
    rst $38
    sbc c
    rst $38
    db $fd
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
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
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $18
    sbc a
    ld e, a
    sbc a
    rra
    rra
    ccf
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    dec hl
    rst $38
    inc h
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld sp, $1bfe
    db $fc
    add hl, de
    cp $09
    rst $38
    dec b
    ei
    inc b
    ei
    rrca
    ld a, [c]
    add hl, hl
    or $3f
    db $e4
    nop
    db $ed
    ldh a, [rKEY1]
    inc bc
    reti


    ldh [$9b], a
    dec e
    or d
    db $e3
    ld [hl], $bd
    ld h, [hl]
    sub a
    ld l, h
    or b
    ld c, l
    inc [hl]
    res 0, h
    db $db
    ldh [$9f], a
    ld b, b
    cp a
    ret nz

    ccf
    ld de, $5a63
    and l
    sub d
    call z, $85fa
    jp z, $4e31

    or c
    cp a
    ret nz

    cp [hl]
    pop bc
    jp z, $ce31

    ld sp, $c4bb
    ei
    call nz, $f10e

jr_0a8_554a:
    db $db
    ld hl, $c23d
    reti


    and $2e
    pop de
    ld b, [hl]
    cp c
    ld c, l
    ld a, [c]
    call c, $2fe3
    ret nc

    ld b, [hl]
    cp c
    ld b, c
    cp $78
    rst $20
    dec b
    ld a, [$b9d6]
    ld b, $f9
    rst $38
    nop
    rst $20
    jr jr_0a8_554a

    jr nz, @+$01

    rst $38
    ld h, c
    rst $38
    and d
    db $fd
    add b
    rst $38
    jr nz, @+$01

    ld [hl], d
    rst $38
    adc b
    rst $38
    call z, $b0ff
    rst $38
    jr nc, @+$01

    ret z

    rst $38
    call z, $33ff
    rst $38
    pop af
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    xor $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ld b, [hl]
    rst $38
    inc b
    rst $38
    nop

jr_0a8_55b1:
    rst $38
    ld [bc], a
    db $fd
    ld b, $f9
    rrca
    ldh a, [$0e]
    pop af
    dec e
    db $e3
    ccf
    jp $877d


    db $fc
    rlca
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp $ff
    add h
    ld a, a
    jp c, $fc6d

jr_0a8_55cf:
    ld c, e
    jr nz, jr_0a8_55b1

    or b
    rst $18
    ldh [$9f], a
    nop
    cp a
    ret nz

    ccf
    nop
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
    jr nz, jr_0a8_55cf

    ld h, a
    sbc b
    sbc h
    ld h, e
    db $fc
    ld h, e
    rla
    add sp, -$3e
    sbc h
    ld d, [hl]
    xor c
    db $e4
    ld [hl], e
    or [hl]
    ld l, c
    ld [c], a
    sbc h
    jp nc, $acad

    ld [hl], e
    xor [hl]
    ld [hl], c
    ei
    adc h
    di
    adc h
    inc l
    di
    cp l
    ld [hl], e
    sub e
    db $ec
    or c
    adc $6e
    or c
    cp h
    ld [hl], e
    add e
    db $fc
    pop af
    adc $1a
    push af
    or h
    ld a, e
    add b
    rst $38
    push af
    adc $12
    db $fd
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    ld hl, sp-$01
    jr c, @+$01

    ld b, h
    rst $38
    add $ff
    db $10
    rst $38
    jr @+$01

    ld b, [hl]
    rst $38
    ld h, [hl]
    rst $38
    jr @+$01

    jr @+$01

    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    jr @+$01

    jp c, Jump_0a8_67ff

    rst $38
    ld a, a
    rst $38
    sbc h
    rst $38
    ld a, d
    rst $38
    ld [hl], a
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    db $e3
    rst $38
    jp $87ff


    rst $38
    rrca
    rst $38
    rra
    rst $38
    dec de
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $76
    rst $38
    inc sp
    rst $38
    sbc l
    rst $38
    and $ff
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$7f]
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, $01
    ld a, [hl]
    ld bc, $012e
    cpl
    nop
    scf
    nop
    ld [hl], $01
    ld h, $01
    cpl
    nop
    inc h
    inc bc
    ld [hl], $01
    dec h
    ld [bc], a
    cpl
    nop
    ld h, $01
    daa
    nop
    daa
    nop
    daa
    nop
    daa
    nop
    inc sp
    nop
    and e
    nop
    add d
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    and d
    nop
    add b
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
    ld h, b
    ld b, b
    add b
    ld l, b
    sub b
    dec e
    and d
    ld [de], a
    add c
    ld a, [hl-]
    add c
    sbc l
    add d
    cp [hl]
    add c
    inc c
    or e
    ld l, [hl]
    sub c
    db $ec
    sub e
    db $e4
    sub e
    ld h, d
    sbc a
    ld h, d
    sbc a
    or h
    db $db
    and c
    rst $18
    ld sp, $b3df
    rst $18
    or e
    rst $18
    xor [hl]
    rst $18
    add hl, sp
    rst $18
    or a
    rst $18
    ei
    rst $18
    ei
    rst $18
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    cp $ff
    ldh [rIE], a
    ret nz

    rst $38
    add a
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld h, [hl]
    rst $38
    sbc a
    rst $38
    db $fd
    rst $38
    xor $ff
    and e
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    ret nz

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
    ld [$5ef7], sp
    cp a
    rrca
    cp $84
    ld a, [hl]
    call nz, $843e
    ld a, [hl]
    add h
    ld a, [hl]
    call nz, $c43e
    ld a, $c5
    ld a, $e5
    ld e, $a7
    ld e, $80
    ccf
    pop hl
    ld e, $e0
    rra
    ldh [$1f], a
    and a
    ld e, $e5
    ld e, $87
    ld e, $a6
    rra
    rst $20
    ld e, $e7
    ld e, $87
    ld e, $07
    sbc [hl]
    and a
    ld e, $83
    ld e, $87
    ld e, $c7
    ld e, $a7
    ld e, $c7
    ld e, $c7
    ld e, $a7
    ld e, $07
    sbc [hl]
    ld e, [hl]
    sbc a
    sbc $1f
    add $1f
    ld b, a
    sbc [hl]
    ld c, [hl]
    sbc a
    adc $1f
    adc $1f
    ld e, [hl]
    sbc a
    ld b, [hl]
    sbc a
    add $1f
    xor $1f
    add $1f
    ld e, [hl]
    sbc a
    ld e, $df
    ld a, [hl]
    sbc a
    ld c, $ff
    ld l, $df
    sbc $ff
    ld e, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    rst $38
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

jr_0a8_5846:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    sbc h
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    ld b, c
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    rst $38
    nop
    rst $38
    cpl
    ret nc

    ld a, a
    nop
    ld c, a
    ld sp, hl
    ld c, c
    or [hl]
    ld b, $f9
    ld h, h
    db $db
    ld c, h
    or e
    rst $38
    ld c, c
    adc b
    db $76
    ld h, $d9
    or $49
    ret z

    ld [hl], $b6
    ld c, c
    rst $08
    jr nc, jr_0a8_5846

    ld [hl], $ff
    ld c, c
    ld c, b
    or [hl]
    sub [hl]
    ld l, c
    add a
    ld a, b
    ld c, c
    or [hl]
    or a
    ld c, b
    xor $10
    push af
    ld [$40bf], sp
    db $ed
    ld [de], a
    or $49
    ret


    ld [hl], $b6
    ld c, c
    cp a
    ld b, b
    db $ec
    inc de
    rla
    jp hl


    ret z

    scf
    ld c, c
    nop
    nop
    rst $28
    sub b
    ld l, a
    add h
    ld a, e
    add b
    ld a, a
    reti


    ld l, a
    sub d
    ld a, a
    ret


    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    sub b
    ld a, a
    ld l, l
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_0a8_58c0:
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
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
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
    ld e, [hl]
    and c
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
    ccf
    rst $38
    rst $38
    rst $38
    xor $ff
    ei
    rst $38
    sbc l
    rst $38
    and b
    ld e, a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    nop
    ldh [rP1], a
    ld e, d
    and c
    ld [hl], $c9
    ld d, b
    and [hl]
    ld a, $c1
    scf
    ret z

    ld [de], a
    and h
    inc de
    ret


    ld d, d
    and h
    rst $18
    jr nz, jr_0a8_58c0

    ld b, b
    sub d
    inc h
    sub d
    ld c, c
    dec sp
    call nz, $a45b
    sub d
    ld c, c
    ld d, d
    and h
    ld [hl], $c9
    scf
    ret z

    db $d3
    inc h
    ret nc

    add hl, bc
    sbc d
    inc h
    cp a
    ld b, b
    ld [hl], $c9
    ld e, e
    and h
    and h
    db $db
    ld e, e
    and h
    inc a
    jp $ef10


    db $e4
    ccf
    inc h
    db $db
    ccf
    nop
    ccf
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    rst $38
    ld d, b
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
    and h
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, d
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
    ld b, b
    cp a
    ld [bc], a
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
    rst $30
    rst $38
    sbc a
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    daa
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec c
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
    nop
    rst $38
    nop
    nop
    rrca
    reti


    reti


    ld h, $da
    dec h
    ld d, $c9
    ld d, d
    inc h
    cp $01
    rst $38
    nop
    inc de
    inc h
    inc bc
    reti


    db $db
    inc h
    rst $38
    nop
    db $db
    nop
    ld [bc], a
    inc h
    ld h, [hl]
    sbc c
    ei
    inc b
    ld e, e
    inc h
    ld b, b
    sbc e
    jp z, $ff24

    nop
    rst $18
    nop
    inc l
    nop
    rl b
    ld c, e
    inc h
    ld c, a
    or b
    dec l
    jp nc, Jump_0a8_649b

    ld l, l
    sub d
    sbc e
    ld h, h
    add hl, bc
    or $25
    jp c, $6c93

    ret nc

    nop
    xor $11
    sub b
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    sub d
    rst $38
    ld [de], a
    db $ed
    sub d
    rst $38
    nop
    rst $38
    dec b
    ld a, [$fa05]
    nop
    rst $38
    sub b
    rst $38
    ld l, l
    rst $38
    or $ff
    ld b, b
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    dec h
    rst $38
    ld b, b
    rst $38
    or $ff
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
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld d, h
    xor e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ld bc, $aaff
    ld d, l
    ld a, [$fe05]
    ld bc, $00ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, e
    inc b
    ld [$2a34], a
    call c, Call_0a8_7e83
    pop bc
    ccf
    cpl
    reti


    db $fd
    ld h, $c5
    dec sp
    db $76
    adc c
    db $fd
    ld h, $66
    sbc c
    rst $38
    nop
    rst $28
    nop
    ld c, [hl]
    sub c
    ld e, e
    inc h
    ld h, h
    sbc e
    ld l, d
    sub l
    ld e, e
    inc h
    ld b, b

Jump_0a8_5ab5:
    sbc e
    db $db
    inc h
    db $eb
    nop
    ld b, b
    add b
    ld h, b
    nop
    sub e
    nop
    call $ff20
    nop
    ld l, l
    sub d
    ld l, l
    nop
    ld [hl+], a
    sub b
    cp a
    ld b, b
    ccf
    ret nz

    ld h, e
    sub b
    ld b, b
    nop
    nop
    adc b
    sub a
    ld l, b
    cp $00
    ld l, [hl]
    sub c
    ld d, a
    jp hl


    ld c, c
    or [hl]
    ld e, a
    jp hl


    ld a, $c1
    db $fc
    nop
    rst $38
    nop
    jp c, $0425

    ei
    jr nz, @+$01

    ld c, c
    rst $38
    nop
    rst $38
    ld de, $50ef
    rst $28
    or h
    rst $30
    ld d, b
    rst $38
    db $ec
    rst $38
    pop de
    cp $02
    cp $48
    rst $30
    ld hl, sp-$05
    sbc $f9
    ret


    rst $38
    db $fd
    rst $28
    or $ef
    db $eb
    rst $38
    pop af
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    ld [hl], l
    rst $38
    ld a, $f5
    ld e, $f5
    ld de, $06fe
    ld a, [$fa17]
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, a
    cp a
    add a
    ld a, a
    rlca
    rst $38
    ld b, l
    cp a
    dec b
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    jp $c3ff


    rst $38
    jp $e3ff


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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ret z

    rst $38
    nop
    rst $38
    add b
    ld a, a
    xor b
    ld d, a
    rst $38
    nop
    ld a, a
    add b
    sub d
    rst $38
    or a
    db $db
    dec l
    db $db
    ld a, e
    call Call_0a8_6dd6
    or l
    ld l, [hl]
    jp hl


    ld [hl], $5b
    or [hl]
    ld e, h
    or e
    push af
    sbc e
    xor a
    reti


    jr c, @-$31

    ld [hl], a
    call z, Call_0a8_6cd6
    nop
    nop
    ld bc, $0100
    ld bc, $0103
    inc bc
    ld bc, $8283
    add $c0
    and $40
    jr nz, @-$0a

    dec h
    ret c

    or e
    ld c, h
    scf
    ret z

    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    inc d
    res 3, a
    ld b, h
    inc e
    db $e3
    ld a, l
    add d
    ei
    inc b
    ld c, l
    or d
    inc e
    add b
    call nc, $9000
    nop
    xor b
    nop
    ld d, b
    add d
    nop
    add b
    ld e, h
    add b
    db $10
    add d
    adc b
    nop
    ld [de], a
    add b
    ld e, b
    add b
    ld [$0080], sp
    nop
    add b
    nop
    add [hl]
    nop
    add c
    ld b, d
    dec c
    add b
    ld d, $e0
    ld [de], a
    ret


    jp nc, $b824

    ld b, b
    add b
    ld hl, $02a0
    and a
    nop
    db $db
    inc h
    call nz, $e03b
    ccf
    db $db
    inc h
    ret nz

    ccf
    ld b, b
    cp a
    jp nc, $c03f

    ccf
    ld d, d
    cp a
    add b
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    add b
    ccf
    ld d, l
    sbc a
    ld e, a
    rst $08
    ld c, a
    rst $20
    ld h, e
    rst $30
    ld a, c
    di
    ld a, c
    ld sp, hl
    ld a, l
    db $fc
    ld a, h
    cp $7e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    and b
    ld a, a
    sub b
    ld a, a
    db $10
    ld a, a
    and b
    ld a, a
    ld h, b
    cp a
    ldh a, [$bf]
    ret nc

    cp a
    or b
    rst $18
    ld hl, sp-$21
    ret z

    rst $38
    call c, $bcef
    rst $28
    sub [hl]
    rst $28
    ld l, [hl]
    rst $30
    dec sp
    rst $30
    ccf
    di
    or e
    ei
    cp c
    ei
    rst $38
    ld sp, hl
    ld hl, sp-$03
    db $fc
    db $fd
    rst $38
    db $fc
    db $fc
    cp $fe
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], c
    rst $38
    ld sp, $38ff
    rst $38
    jr c, @+$01

    jr z, @+$01

    jr z, @+$01

    jr @+$01

    jr @+$01

    inc e
    rst $38
    db $f4
    ccf
    ld hl, sp+$1f
    ret nz

    ld a, a
    and b
    ld a, a
    ld [hl], b
    cp a
    ld d, b
    cp a
    ldh a, [$9f]
    xor b
    rst $18
    ld a, b
    rst $08
    ret nc

    ld l, a
    or b
    ld l, a
    db $ec
    scf
    ld d, h
    cp a
    ldh a, [$9f]
    adc h
    rst $18
    inc a
    rst $08
    db $d3
    rst $08
    rst $10
    adc e
    add c
    sbc a
    sub b
    rrca
    rlca
    rra
    ccf
    rra
    ld a, a
    ccf
    ld a, $7f
    db $fd
    ccf
    and b
    ld a, a
    inc d
    jp hl


    ld [$a0f0], sp
    ld d, b
    and c
    ld b, b
    jp nz, $8501

    jp nz, Jump_0a8_42ac

    or c
    ld c, d
    ld h, b
    sbc a
    ld e, e
    inc h
    xor $11
    ccf
    nop
    rrca
    jr nz, @+$1b

    ld b, $45
    ld [hl+], a
    sub c
    ld a, [bc]
    sbc a
    nop
    ld c, l
    nop
    inc de
    add b
    ld c, h
    ld bc, $0003
    inc bc
    inc b
    nop
    add hl, bc
    nop
    ld b, $82
    ld d, c
    ld bc, $deba
    ld hl, $49b7
    db $fd
    ld h, $36
    ret


    cpl
    nop
    inc de
    inc b
    ld e, a

jr_0a8_5ce5:
    jr nz, jr_0a8_5ce5

    ld bc, $9b64
    add h
    ld a, a
    ld [de], a
    rst $38
    inc b
    ei
    nop
    rst $38
    sub e
    rst $38
    ld l, l
    rst $38
    nop
    rst $38
    ld c, l
    rst $38
    dec b
    rst $38
    ld bc, $03ff
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc a
    ccf
    sbc a
    sbc a
    adc a
    rst $08
    rst $28
    rst $00
    daa
    db $e3
    ld [hl-], a
    pop hl
    nop
    ld sp, hl
    inc b
    ld hl, sp+$02
    db $fc
    nop
    cp $06
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    cp a
    ccf
    rra
    cp a
    cp a
    sbc a
    adc $9f
    adc [hl]
    rst $18
    jp z, $e4cf

jr_0a8_5d63:
    rst $08
    call z, $c0e7
    rst $20
    ld [hl], b
    rst $20
    ld h, h
    di
    ld h, b
    di
    jr c, jr_0a8_5d63

    jr c, jr_0a8_5d63

    inc [hl]
    ld hl, sp+$36
    ld hl, sp+$1f
    ld hl, sp+$18
    rst $38
    ld [$0eff], sp
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $18
    xor e
    rst $10
    and e
    rst $18
    and e
    rst $18
    inc hl
    rst $18
    or e
    rst $08
    jp $bfbf


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    ccf
    ccf
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    reti


    rst $28
    jr nz, @+$01

    nop
    rst $38
    ld bc, $d0ff
    cpl
    ld sp, hl
    rlca
    ld a, h
    add e
    ld hl, sp+$07
    ld h, e
    sbc a
    sub h
    ld l, a
    ld b, b
    cp a
    ld b, d
    cp a
    sub h
    ld l, a
    ld [hl], d
    sbc a
    add b
    ld a, a
    ld hl, sp+$07
    ld hl, $7ede
    add c
    ld b, b
    cp a
    and c
    ld e, a
    add c
    ld a, a
    daa
    rst $38
    add hl, hl
    rst $18
    ld b, $ff
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $07ff
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
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
    db $76
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rra
    ccf
    rra
    rra
    adc a
    rra
    ld de, $8f8f
    sub b
    adc a
    ldh a, [rIF]
    ldh a, [$1f]
    ldh a, [rNR22]
    ld hl, sp-$61
    ld hl, sp-$21
    db $fc
    db $dd
    cp $5e
    rst $38
    rra
    ccf
    rra
    rra
    ccf
    rra
    rst $18
    ccf
    ccf
    rra
    rrca
    rra

jr_0a8_5e3c:
    adc a
    rrca

jr_0a8_5e3e:
    rst $08
    adc a
    rst $08
    rst $00
    and a
    rst $00
    add a
    db $e3
    or e
    pop hl

jr_0a8_5e48:
    and b
    pop af
    jr nz, jr_0a8_5e3c

    jr c, jr_0a8_5e3e

    jr nc, jr_0a8_5e48

    inc a
    db $fc
    ld a, [hl]
    db $fc
    ld a, [hl]
    cp $7e
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
    sbc a
    ld a, a
    sbc a
    ld a, a
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    dec de
    rst $38
    ld a, [de]
    rst $38
    dec e
    cp $1d
    cp $19
    cp $04
    rst $38
    inc b
    rst $38
    ld b, $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp d
    rst $30
    pop de
    rst $38
    db $fc
    rst $18
    rst $20
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
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
    ld a, a
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
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
    ld e, a
    rst $38
    ld e, a
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
    rst $18
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38

Jump_0a8_5efc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    db $e3
    rst $38
    rst $38
    ccf
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc [hl]
    rst $38
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
    ld a, [$f8ff]
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a8_5f37:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rra
    adc a
    rrca
    adc a
    add a
    add e
    rst $00
    rst $00
    jp $e340


    jr nz, jr_0a8_5f37

    ldh [$b1], a
    sub b
    ldh a, [$f0]
    ret c

    ld c, b
    ld hl, sp+$28
    db $fc
    ld e, $fc
    inc d
    cp $87
    cp $0a
    rst $38
    ld c, e
    rst $38
    push hl
    ld a, a
    ccf
    rst $38
    ld a, [hl]
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ei
    rst $30
    db $eb
    rst $30
    db $eb
    rst $30
    db $eb
    rst $30
    ld a, e
    rst $20
    ret c

    rst $20
    ldh a, [$ef]
    add sp, -$19
    ldh a, [$ef]
    call z, $cdf3
    ld a, [c]
    rst $00
    ldh a, [$e0]
    ret nz

    ret nz

jr_0a8_5fa1:
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    ret nz

    ret nz

jr_0a8_5faf:
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    jp nz, $8280

    add b
    call z, $fc80
    nop
    ld l, h
    sub b
    ld h, b
    sbc h
    ld [hl], b
    adc h
    inc c
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [rOBP0]
    or b
    add hl, bc
    ldh a, [$08]
    pop af
    jr z, jr_0a8_5faf

    jr nc, jr_0a8_5fa1

    and b
    pop de
    add c
    ldh a, [$c1]
    ldh a, [$c1]
    ldh a, [$c1]
    ldh a, [$c3]
    ldh a, [$e1]
    ld a, [c]
    pop af
    ld [c], a
    di
    ld [c], a
    push af
    ld [c], a
    push af
    ld [c], a
    pop hl
    ld [c], a
    inc b
    db $e3
    and a
    ld b, c
    ld h, a
    add c
    ld h, [hl]
    add c
    pop hl
    add b
    sbc a
    add b
    rst $18
    add b
    sbc a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$d7], a
    add sp, -$3d
    db $fc
    ld a, [hl]
    rst $38
    cp a
    ld a, a
    cp [hl]
    ld e, a
    sbc a
    ld a, a
    rst $28
    rra
    rla
    rst $28
    rlca
    rst $38
    add hl, de
    rst $38
    cp $fd
    cp $ff
    db $fc
    rst $38
    ei
    db $fc
    ld [c], a
    db $fd
    jp nc, Jump_000_00ed

    rst $38
    nop
    rst $38
    adc d
    rst $38
    ld d, h
    rst $38
    jp c, $deff

    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    sbc a
    rst $38
    rrca
    rst $38
    add a
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    adc b
    rlca
    nop
    add a
    call nz, $8083
    jp $fff8


    db $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fa
    db $fd
    ld hl, sp-$01
    ld hl, sp-$03
    ei
    db $fc
    ei
    db $fc
    ld a, [$fefd]
    ld sp, hl
    cp $f9
    ei
    db $fc
    db $fc
    ld hl, sp+$28
    ret nc

    ld [hl], c
    ld [c], a
    ld h, d
    add c
    add e
    ld b, c
    add l
    ld b, e
    push bc
    inc bc
    push bc
    inc bc
    ld b, a
    dec de
    ld d, a
    ld [bc], a
    ld d, a
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, $02
    ld b, $00
    ld c, $02
    ld a, [hl]
    nop
    ld d, b
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
    ld h, e
    db $10
    ld h, e
    ld [bc], a
    ld [hl], c
    jp nz, $b931

    nop
    ld bc, $3800
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e300
    nop
    ld a, h
    nop
    db $fd
    ld [bc], a
    sbc a
    ld h, b
    rst $30
    ld [$21de], sp
    rst $30
    ld [$06f9], sp
    ld a, h
    add e
    ccf
    ret nz

    rst $08
    or b
    xor e
    call c, $cfbc
    sub l
    ld l, [hl]
    rst $30
    ld c, $fe
    rlca
    db $f4
    inc bc
    pop af
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    ld a, [hl]
    add b
    cp $00
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    call nc, $e12f
    rra
    push hl
    rra
    jp hl


    rra
    jp hl


    rra
    and e
    ld e, a
    jp $ab3f


    ld e, a
    adc b
    ld a, a
    ret z

    ccf
    adc h
    ld a, a
    ld e, a
    cp a
    rra
    rst $38
    ld e, a
    cp a
    rra
    rst $38
    sbc a
    rst $38
    rst $18
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
    ld [hl], b
    rst $38
    ld [hl], c
    cp $39
    cp $39
    cp $39
    cp $19
    cp $1d
    cp $0d
    cp $0c
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    call z, $c0ff
    cp a
    inc bc
    db $fc
    adc a
    ldh a, [$3f]
    ret nz

    rst $38
    inc bc
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld e, h
    and e
    add b
    ld a, a
    rst $38
    ld a, a
    ld l, e
    rst $30
    db $e3
    rst $38
    add c
    rst $38
    ld [hl], c
    adc [hl]
    ld sp, hl
    ld b, $fc
    ld [bc], a
    cp $00
    cp $00
    ld a, a
    nop
    ld e, [hl]
    nop
    ccf
    nop
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop

jr_0a8_61be:
    ld [bc], a
    nop
    add d
    nop
    ld a, [bc]
    add h
    ld b, [hl]
    add b

jr_0a8_61c6:
    ld b, $c0
    ld h, $c0
    ld b, $e0
    ld a, $00
    ld b, h
    nop
    ld a, h
    nop
    inc e
    nop

jr_0a8_61d4:
    inc c
    nop
    inc c
    nop
    db $ec
    nop
    db $fc
    nop
    cp h
    nop
    ld a, b
    add b
    add sp, $10
    ld hl, sp+$00
    jr jr_0a8_61c6

    ld hl, sp+$00
    ld a, b
    add b
    xor b
    ld d, b
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    jr jr_0a8_61d4

    ret nc

    jr nz, @-$2e

    jr nz, @-$2e

    jr nz, jr_0a8_624b

    and b
    ld d, b
    jr nz, jr_0a8_624f

    jr nz, jr_0a8_6271

    nop
    ld [hl], b
    nop
    jr nc, jr_0a8_6246

    or c
    ld b, b
    and c
    ld b, b
    and c
    ld b, b
    or e
    ld b, b
    and a
    ld b, b
    scf
    ret nz

    ld l, a
    add b
    ld a, a
    add b
    ld [hl], a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add d
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, e
    add h
    ei
    inc b
    ei
    inc b
    ei
    inc b
    di
    inc c
    rst $30
    ld [$08f7], sp
    rst $20
    jr jr_0a8_61be

    ld hl, sp-$0d
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

jr_0a8_6246:
    rst $38
    rst $38
    rrca
    rst $38
    rlca

jr_0a8_624b:
    rst $38
    ld b, e
    cp a
    di

jr_0a8_624f:
    rrca
    pop af
    rrca
    ld sp, hl
    rlca
    call c, $fd23
    ld [bc], a
    cp $01
    ld hl, sp+$04
    ldh [rNR23], a
    ldh [rP1], a
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

jr_0a8_6271:
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0a8_6293

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a8_62a3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a8_62b3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a8_62c3

    ld [hl-], a

jr_0a8_6293:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a8_62d3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0a8_62a3:
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

jr_0a8_62b3:
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

jr_0a8_62c3:
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

jr_0a8_62d3:
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
    ld a, l
    adc l
    adc [hl]
    ld a, l
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
    ld a, l
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


    ld a, l
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $ccdb

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $68
    rst $20
    add sp, -$17
    ld [$eceb], a
    call z, $eeed
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ld l, d
    push af
    ld a, l
    ld a, l
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    ld a, l
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    ld l, d
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0a8_639f

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a8_63af

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a8_63bf

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $6a
    cpl
    jr nc, jr_0a8_63d0

jr_0a8_639f:
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a8_63af:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a8_63bf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a8_63d0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a8_648e

jr_0a8_648e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0a8_649b:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [hl], b
    adc a
    sbc d
    ld l, a
    adc a
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    cp h
    ld a, a
    sbc $3f
    or a
    rst $08
    db $ed
    di
    ld a, [$fcfd]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf

Call_0a8_64fb:
    rst $38
    ld a, a
    cp a
    cp a
    rst $18
    ld l, $dd
    ld e, d
    and l
    add $31
    cp l
    ld h, d
    call c, $bee3
    pop bc
    or $81
    ld l, l
    sub d
    push af
    ld a, [bc]
    pop af
    rrca
    nop
    rst $38
    add b
    ld a, a
    jp nz, Jump_0a8_7e3f

    cp a
    scf
    rst $18
    db $eb
    rst $18
    rst $38
    rst $28
    rst $28
    rst $30
    ld a, [$fff7]
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    db $fc
    ei
    push af
    ei
    ld sp, hl
    rst $30
    ld l, e
    rst $30
    cp c
    ld h, a
    cp a
    ld b, b
    cp h
    nop
    ld a, l
    add d
    or d
    ld b, c
    sbc c
    ld h, b
    db $ec
    db $10
    or $08
    add a
    ld a, b
    ld h, a
    inc e
    rla
    ld c, $0f
    inc bc
    ld [hl], $03
    ei
    ld b, $fd
    ld b, $37
    call z, $fc9f
    dec de
    db $fc
    sbc h
    ld a, e
    call nc, $fcbb
    rst $00
    cp $e7
    rst $08
    ei
    rst $28
    db $dd
    xor l
    sbc $de
    cp a
    ld e, a
    cp a
    cp a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ld a, h
    rst $38
    rst $30
    ld sp, hl
    jp Jump_000_32ff


    rst $08
    cp d
    ld b, a
    and $9f
    db $fc
    rst $08
    ld l, a
    pop af
    ld a, [$fafd]
    rst $38
    di
    rst $38
    ei
    rst $30
    ei
    rst $30
    rst $20
    rst $38
    ld [hl], a
    rst $28
    ld c, a
    cp $cb
    db $fc
    rst $20
    ret c

    sub b
    rst $28
    ld b, [hl]
    cp c
    sbc [hl]
    ld h, c
    ld sp, hl
    rlca
    ld e, e
    rst $20
    or a
    ld a, b
    cp h
    ld a, a
    cp [hl]
    ld a, a
    ld a, e
    or $fd
    and $ef
    call nz, $8dfe
    ld a, [de]
    db $fd
    rra
    ld hl, sp-$01
    jr jr_0a8_65f2

    db $10

jr_0a8_65b4:
    rra
    jr nc, jr_0a8_6626

    jr nc, @+$01

    jr nz, jr_0a8_65b4

    rlca
    adc $31
    db $dd
    cp $9f
    rst $38
    jp $a1bf


    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    cp e
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    ld a, $ff
    ld a, l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    db $f4
    ei
    ldh a, [rIF]
    rst $38
    rst $38
    ld d, c
    xor [hl]
    inc sp
    call c, $dfb0
    jp z, $fdff

    xor $e5
    cp $7e
    pop af
    sub [hl]
    ld sp, hl
    rst $20
    ei

jr_0a8_65f2:
    pop af
    rst $38
    cp l
    ld a, a
    ld l, $df
    rst $00
    rst $38
    pop af
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $30
    cp a
    ld a, e
    nop
    rst $38
    dec de
    db $e4
    sub a
    db $ec
    ld c, e
    cp h
    cp $19
    db $76
    sbc c
    ld c, b
    or a
    ld a, b
    rst $00
    jp nc, $b7ef

    rst $08
    xor a
    rst $10
    db $d3
    cp a
    ld e, a
    cp e
    cp l
    ld a, a

jr_0a8_6626:
    db $fd
    ld a, a
    ld a, a
    cp $be
    rst $38
    cp $7f
    cp $7f
    cp $bf
    sbc h

Call_0a8_6633:
    rst $38
    xor $dd
    pop de
    ld l, $ad
    ld [de], a
    ld [hl], h
    dec de
    ld a, [bc]
    dec [hl]
    cp d
    dec h
    add hl, sp
    ld h, d
    jp nc, $f261

    ld b, c
    cp l
    ret nz

    di
    inc c
    ret c

    daa
    ld c, a
    or c
    push af
    ld e, e
    or a
    ld l, e
    adc [hl]
    ld [hl], a
    rst $10
    ld a, [hl-]
    ld c, $f9
    ld c, $fd
    ld a, [de]
    rst $38
    dec de
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    and $7f
    ld h, e
    sbc h
    ldh [$df], a
    adc b
    rst $30
    push de
    cp e
    jp hl


    sbc a
    ld c, a
    cp h
    cp [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld a, [$7f7f]
    cp b
    add sp, -$29
    rst $28
    ldh a, [$fa]
    db $fd
    dec [hl]
    xor $bf
    ld h, a
    ld b, a
    ld a, a
    ld l, a
    rst $18
    db $db
    rst $38
    sub l
    rst $38
    add a
    ld sp, hl
    add $bb
    ld a, [hl]
    add e
    ld [c], a
    rlca
    db $fd
    ld b, $fb
    call nz, Call_0a8_71ee
    rst $18
    ld a, $9b
    ld a, a
    db $fd
    ei
    ld d, h
    cp e
    ld hl, sp+$17
    ret c

    scf
    add sp, $37
    and c
    ld a, a
    xor a
    ld a, a
    ld l, a
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    cp $07
    ei
    db $fc
    cp a
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
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
    rst $30
    rst $38
    rst $30
    rst $38
    inc e
    db $e3
    rra
    rst $38
    rst $38
    rst $38
    sub e
    rst $28
    ld d, e
    xor a
    push af
    dec bc
    ret nc

    cpl
    ld d, c
    xor [hl]
    dec d
    ld [$d32c], a
    dec b
    ld a, [$ecd3]
    ret z

    rst $30
    call nz, Call_0a8_64fb
    ei
    xor b
    rst $30
    pop af

jr_0a8_66fb:
    rst $38
    ld sp, hl
    rst $38
    add hl, sp
    rst $38
    add c
    rst $38
    pop hl
    rst $38
    ld sp, hl
    rst $38
    ld a, [$79ff]
    rst $38
    inc sp
    db $fd
    ld [hl], e
    db $fd
    jr nc, @+$01

    nop
    rst $38
    ld [hl], b
    rst $08
    db $10
    rst $28
    ld b, b
    cp a
    db $10
    rst $38
    jr nc, jr_0a8_66fb

    jr nc, @-$2f

    ld [hl], b
    rst $28
    ld b, b
    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    sbc b
    rst $38
    jr @+$01

    cp b
    ld a, a
    cp b
    ld a, a
    ld a, b
    cp a
    ld e, h
    rst $38
    db $fc
    rst $18
    db $ec
    rst $38
    ret nz

    ccf
    db $ec
    inc de
    or h
    dec de
    ld [hl], b
    sbc a
    ld l, b
    sub a
    ld h, h
    di
    ld a, [hl]
    pop hl
    adc [hl]
    ld [hl], c
    ldh [$9f], a
    xor b
    rst $10
    adc [hl]
    di
    ld a, $eb
    ld a, $f7
    db $f4
    ld a, e
    ld a, [hl]
    ld sp, hl
    ld a, h
    rst $38
    ld a, [$fbff]
    rst $38
    rst $30
    rst $38
    rst $30
    ld a, a
    rst $30
    cp a
    ld hl, sp-$31
    ldh a, [$ef]
    jp hl


    rst $30
    ld d, l
    ei
    ld e, c
    rst $38
    sbc a
    db $fc
    cp [hl]
    rst $38
    cp a
    rst $38
    dec a
    rst $38
    db $fd
    ld a, a
    cp a
    ld a, a
    ld a, [$f9bf]
    sbc $f8
    rst $20
    ld hl, sp-$09
    ld hl, sp-$01
    ld c, [hl]
    cp l
    xor $3f
    cpl
    rst $38
    ld l, [hl]
    rst $38
    ld e, e
    cp $df
    ld a, [$fe8b]
    call nz, $ec3f
    rst $18
    ld l, c
    or [hl]
    call nc, $bd3b
    ld c, $fb
    rrca
    db $eb
    rra
    rra
    rst $38
    ld [hl], e
    rst $38
    sbc e
    ld [hl], a
    rst $30
    ccf
    and a
    ld a, a
    xor a
    ld a, a
    rst $28
    sbc a
    ld hl, sp-$09
    ld sp, hl
    cp $df
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08
    scf
    ret nz

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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc b
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, c

jr_0a8_67e1:
    rst $28
    ld d, l
    rst $28
    ld h, a
    rst $18
    ld [hl], $df
    ld e, a
    cp a
    sbc a
    ld a, [hl]
    sbc l
    ld a, [hl]
    inc c
    rst $38
    inc bc
    db $fd
    adc a
    ld [hl], c
    ld [$18f7], sp
    rst $20
    jr jr_0a8_67e1

    add h
    ei
    add c
    cp $e3

Jump_0a8_67ff:
    call c, $dfac
    db $ed
    cp $ff
    cp $fd
    cp $be
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
    ld l, a
    rst $38
    rla
    rst $28
    ret nz

    ccf
    dec b
    ld a, [$f906]
    ld b, h
    ei
    ld b, b
    cp a
    add e
    db $fc
    ld bc, $26fe
    rst $38
    ld h, [hl]
    rst $38
    ld l, e
    rst $38
    ld a, e
    rst $30
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    rst $38
    dec a
    rst $38
    nop
    rst $38
    dec a
    jp nz, $e37e

    ld e, $e3
    add hl, hl
    sub $37
    call z, $cb34
    ld a, [de]
    db $ed
    ld [$0aff], sp
    rst $38
    ld e, $ff
    rla
    rst $38
    scf
    rst $28
    scf
    rst $38
    scf
    rst $38
    ld e, e
    rst $38
    ld a, c
    rst $38
    inc a
    rst $38
    ld d, [hl]
    rst $38
    ld b, h
    rst $38
    dec l
    rst $38
    ld c, a
    rst $38
    ld c, e
    rst $38
    ccf
    rst $30
    dec de
    rst $38
    dec sp
    rst $38
    cp h
    rst $38
    ld a, a
    cp $7b
    rst $38
    or d
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    ld [hl], h
    ei
    ld a, [$f9fd]
    rst $38
    cp $fb
    ld [hl], l
    ei
    push af
    ld a, e
    cp e
    rst $38
    ld a, a
    rst $38
    cp d
    ld a, a
    cp e
    ld a, a
    cp c
    ld a, a
    inc a
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    rst $38
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
    ld e, a
    cp a
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
    xor a
    ld a, a
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $bc
    rst $18
    sbc a
    db $fd
    ld a, e
    cp l
    rst $38
    dec sp
    rst $38
    ld a, e
    ld [hl], a
    rst $38
    ld e, a
    rst $30
    and $ff
    ld [$dcff], a
    rst $28
    cp $dd
    rra
    db $fd
    ld e, c
    cp a
    srl a
    sbc e
    ld l, a
    sbc e
    ld h, a
    ld l, [hl]
    sub a
    add sp, -$69
    sub [hl]
    jp hl


    inc b
    ei
    jp $c9fc


    cp $d8
    rst $38
    cp $fb
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
    cp a
    ld a, a
    ld c, a
    cp a
    ld h, l
    sbc a
    dec c
    di
    ld de, $11ee
    xor $b0
    rst $08
    jp Jump_0a8_74fe


    rst $38
    dec c
    rst $38
    dec l
    rst $38
    or l
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    ld e, e
    rst $38
    add b
    ld a, a
    db $f4
    cpl
    ret nz

    ccf
    ld [bc], a
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    db $db
    rst $38
    rst $08
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    ld a, [hl]
    rst $38
    db $76
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    db $dd
    rst $38
    call Call_0a8_6fff
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    cp e
    rst $38
    cp l
    rst $38
    call $ceff
    rst $38
    xor $ff
    rra
    rst $38
    ld [hl], d
    rst $38
    ld a, d
    rst $38
    ld [hl], l
    rst $38
    or l
    rst $18
    sub $ff
    xor a
    rst $38
    rst $20
    cp a
    ld [hl], a
    cp a
    cp e
    rst $38
    rst $38
    ld a, a
    cp l
    ld a, a
    sbc [hl]
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    rst $30
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
    ccf
    rst $38
    add $ff
    ld hl, sp-$01
    db $fd
    cp $fd
    cp $fb
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp-$71
    ldh a, [$ef]
    ldh a, [$ee]
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    and b
    ret nz

    pop bc
    add b
    ld b, c
    add b
    inc bc
    add c
    add e
    ld bc, $0382
    dec b
    ld [bc], a
    rlca
    ld bc, $dba4
    and b
    rst $18
    adc b
    rst $30
    db $eb
    or l
    ld [hl+], a
    db $fd
    db $e4
    ld a, e
    ld l, b
    rst $38
    ld c, l
    ld a, [$def9]
    call nc, $96ff
    db $fd
    or h
    rst $38
    jr z, @+$01

    ld a, [hl+]
    rst $38
    ld l, d
    rst $38
    ld c, b
    rst $38
    ld d, l
    rst $38
    push de
    rst $38
    call nc, $30ff
    rst $38
    ld [$4b3f], a
    cp a
    ld a, [$8f0f]
    ld [hl], a
    add hl, bc
    rst $30
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld c, a
    cp a
    ld d, e
    xor a
    and b
    rst $38
    add b
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    xor c
    rst $38
    inc bc
    rst $38
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
    cp a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ldh a, [rIE]
    add sp, -$09
    ret nz

    rst $38
    call nz, $89fb
    or $9f
    ldh [$ba], a
    push bc
    cpl
    ret nc

    ld l, a
    sub b
    ld [hl], a
    adc b
    ld a, a
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld bc, $73fd
    db $eb
    ld [hl], l
    adc l
    ld a, [hl]
    ld a, l
    sbc [hl]
    and l
    ld e, e
    ret c

    rst $20
    sbc b
    rst $20
    cp l
    ld a, a
    ld e, a
    cp a
    rst $18
    ccf
    rst $18
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $20
    rra
    ld h, e
    sbc a
    and e
    rra
    adc a
    inc sp
    pop de
    cpl
    ld sp, $218f
    sbc a
    or [hl]
    adc c
    inc d
    xor e
    ld e, l
    and d
    call z, Call_0a8_4ab3
    or l
    ret nc

    cp a
    db $db
    cp h
    ld b, b
    cp a
    ret c

    cp a
    ld [hl], h
    sbc a
    sub h
    rst $38
    ret c

    cp a
    cp e
    rst $18
    cp h
    rst $18
    dec sp
    rst $18
    add hl, sp
    rst $18
    dec a
    rst $18
    cp a
    rst $18
    rst $38
    rst $18
    ei
    rst $18
    sbc $ff
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $18
    ccf

Call_0a8_6b2b:
    rst $18
    rst $38
    rst $18
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
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
    cp $ff
    cp $ff
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$a9ff]
    rst $38

Call_0a8_6b94:
    db $10
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $90de
    ld l, a
    add hl, bc
    or $10
    rst $28
    ld b, b
    cp a
    ld bc, $00fe
    rst $38
    ld d, a
    xor b
    rst $38
    nop
    db $db
    inc h
    cp a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $30
    rst $08
    rst $30
    adc $5a
    or l
    rst $30
    ld a, c
    ld [$7175], a
    adc [hl]
    ld h, c
    sbc [hl]
    sbc e
    ld l, l
    nop
    rst $38
    pop bc
    cp $80
    rst $38
    pop bc
    cp $c0
    rst $38
    or b
    rst $38
    pop hl
    cp $d0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    add [hl]
    ld a, c
    xor a
    ld d, b
    sub [hl]
    ld l, c
    adc a
    ld [hl], b
    sbc a
    ld h, b
    xor a
    ld d, b
    sub a
    ld l, b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    add a
    ld a, b
    push de
    ld l, d
    adc e
    ld [hl], h
    push bc
    ld a, d
    ld [bc], a
    db $fd
    rst $00
    ld a, b
    rrca
    ldh a, [$c7]
    ld a, b
    inc b
    ld hl, sp+$4f
    ld hl, sp-$61
    ld a, b
    rra
    ld hl, sp+$3f
    ld hl, sp-$01
    ld hl, sp+$3f
    ld hl, sp+$3e
    ld sp, hl
    ld a, l
    ld a, [$f8bf]
    cp a
    ld hl, sp-$43
    ld a, [$feb9]
    cp c
    cp $b9
    cp $f9
    cp $f9
    cp $f8
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
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
    db $db
    rst $38
    adc d
    rst $38
    rst $38
    sbc a
    ld e, [hl]
    cp a
    ret nz

    ccf
    nop
    rst $38
    jr nz, @-$1f

    ld [bc], a
    db $fd
    ld [$02f7], sp
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld l, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    dec h
    jp c, $f708

    nop
    rst $38
    ld [$1df7], sp
    ld [c], a
    ld d, l
    xor d
    dec d
    ld [$00ff], a
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $dd00
    ld a, [hl-]
    rst $38

jr_0a8_6cd1:
    jr c, jr_0a8_6cd1

    inc de
    rst $38
    rst $00

Call_0a8_6cd6:
    rst $38
    add $47
    cp b
    add [hl]
    ld a, c
    ret


    ld [hl], $ef
    sub a
    rst $28
    db $10
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    cp $00
    ld a, e
    add b
    rst $08
    jr nc, jr_0a8_6d10

    ldh [$1f], a
    ldh [$03], a
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$b8]
    ld b, b
    ld [hl], b

Call_0a8_6cff:
    add b
    cp b
    ld b, b
    ld a, l
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38
    nop

jr_0a8_6d10:
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
    nop
    ld b, h
    nop
    ld b, d
    nop
    rst $38
    nop
    or a
    ld c, b
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
    cp a
    ld b, b
    cp e
    ld b, h
    ld e, d
    and l
    call nc, $d52b
    dec hl
    ld de, $01ef
    rst $38
    db $10
    rst $38
    ld [$00ff], sp
    rst $38
    inc h
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    jp $c3ff


    rst $38
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or l
    rst $38
    sub l
    rst $38
    ld d, a
    rst $38
    nop
    rst $38
    ld c, b
    or a
    nop
    rst $38
    ld hl, $04de
    ei
    nop
    rst $38
    adc b
    ld [hl], a
    ld d, d
    xor l
    nop
    rst $38
    ld b, b
    rst $38
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$24ff], a
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, b
    cp a
    ld a, [bc]
    push af
    nop
    rst $38
    add c
    ld a, [hl]
    push de
    ld a, [hl+]
    ld a, a
    add b
    xor b
    ld d, a
    ld e, d
    and l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a8_6db1:
    nop
    rst $38
    nop
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    db $fd
    inc bc
    rst $38
    rst $20
    or $cb
    cp e
    ld e, h
    db $db
    inc a
    and h
    ld e, e
    jr jr_0a8_6db1

    ld e, $e3
    dec sp
    call c, Call_000_3cdf
    ei

jr_0a8_6dd1:
    inc b
    cp $01
    db $fd
    ld [bc], a

Call_0a8_6dd6:
    sub l
    ld [$6f90], a
    ld [$cff7], sp
    inc [hl]
    db $fc
    nop
    ld sp, hl
    inc b
    db $fd
    nop
    ld sp, hl
    inc b
    db $fd
    nop
    ld sp, hl
    inc b
    db $fd
    nop
    ld sp, hl
    inc b
    push af
    ld [$04f9], sp
    db $fd
    nop
    ld sp, hl
    inc b
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    jp hl


    inc d
    push af
    ld [$1429], sp
    add l
    jr c, jr_0a8_6dd1

    dec [hl]
    jp nz, $e63d

    dec a
    jp $c23c


    dec a
    db $f4
    ccf
    add sp, $3f
    cp $3d
    db $fc
    ccf
    db $fd
    ccf
    cp l
    ld a, a
    db $fd
    ccf
    cp l
    ld a, a
    dec a
    rst $38
    dec a
    rst $38
    cp l
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
    cp [hl]
    ld sp, hl
    ld a, [de]
    db $fd
    xor a
    db $fc
    ld bc, $00fe
    rst $38
    inc de
    db $ec
    inc bc
    db $fc
    ld hl, $01de
    cp $91
    ld l, [hl]
    ld b, b
    cp a
    inc b
    rst $38
    inc h
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
    ei
    rst $38
    add b
    rst $38
    xor d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    xor b
    ld d, a
    ld [bc], a
    db $fd
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    db $fd
    ld a, e
    add h
    db $fc
    inc bc
    xor e
    ld d, h
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
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    cp e
    ld e, h
    cp $19
    rst $10
    ld l, e
    db $ec
    di
    rst $10
    ld l, b
    db $e3
    inc e
    ld h, e
    sbc h
    sub [hl]
    ld l, c
    rst $38
    ld [hl], e
    ld l, e
    push af
    sub e
    ld l, h
    adc $33
    and e
    ld e, h
    add b
    ld a, a
    ld b, b
    cp a
    ld b, b
    cp a
    ld h, h
    sbc e
    adc b
    ld [hl], a
    ld [hl+], a
    db $dd
    call nz, Call_000_103b
    rst $28
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$85]
    ld a, b
    di
    nop
    ld a, [$f100]
    nop
    ld hl, sp+$00
    pop af
    nop
    pop af
    nop
    di
    nop
    ei
    nop
    db $e3
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    cp $00
    db $fc
    nop
    ei
    ld bc, $03e7
    cp $0f
    db $eb
    inc e
    rst $28
    db $10
    adc [hl]
    ld [hl], c
    adc $31
    call z, $fe33
    ld bc, $f01f
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld de, $61ff
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    db $fd
    cp $bf
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    xor $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $10
    ld a, a
    dec de
    rst $38
    reti


    ccf
    call $ce3f
    ccf
    rst $08
    ccf
    rrca
    rst $38
    ld b, a
    cp a
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    jp $c3ff


    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    db $f4
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    add sp, -$01
    ret nz

    rst $38
    jp nc, Jump_0a8_41fd

    cp $00
    rst $38
    ld bc, $09fe
    or $84
    ld a, e
    nop
    rst $38
    ld b, b
    cp a
    ld bc, $87fe
    ld a, b
    or a
    ld c, b
    ret nz

    ccf
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    rst $38
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

    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    dec de
    rst $20
    rst $38
    db $e3
    jp c, Jump_0a8_7d6d

    sbc [hl]
    ld a, [hl]
    adc l
    xor h
    ld [hl], e
    sbc $31
    call Call_0a8_7736
    adc a
    or $cf
    db $fd
    sub d
    inc bc
    db $fc
    ld b, $f8
    ld d, $e8
    rrca
    ldh a, [$2e]
    ret nc

    ld e, $e0
    ccf
    ret nz

    ld a, $c0
    ld a, a
    add b
    rst $38
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    ld a, [$fc00]
    nop
    ld a, [$ae00]
    nop
    ld e, [hl]
    nop
    xor l
    nop
    dec sp
    nop
    cp $00
    db $fd
    nop
    or $00
    db $ec
    nop
    ret c

    ld bc, $03f7
    rst $08
    rlca
    sbc [hl]
    rra
    ld a, l
    ld a, $73
    db $fc
    jp hl


    or $e7
    sbc b
    add b
    ld a, a
    add h
    ld a, e
    nop
    rst $38
    ld hl, $06df
    ld sp, hl
    jr @+$01

    ld c, $ff
    xor a

Call_0a8_6fff:
    ld e, a
    rra
    rst $28
    rst $38
    rst $28
    rst $20
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc d
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $9f
    ld a, e
    rst $20
    ld a, [hl]
    ld sp, hl
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    cp a
    rst $38
    rst $18
    rst $38
    ld l, a
    rst $38
    rst $38
    ld [hl], a
    ld a, a
    ei
    ei
    db $fd
    db $fd
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
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    and l
    ld e, a
    ld e, c
    xor a
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    db $f4
    dec bc
    ld [$42f7], sp
    cp l
    ld hl, $11de
    xor $a2
    ld e, l
    ld b, b
    cp a
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
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    db $10
    ei
    inc e
    rst $28
    add hl, de
    rst $28
    ld [hl], e
    rst $28
    ld [hl], c
    ld d, c
    xor [hl]
    ld sp, $29ce
    sub $5f
    cp b
    ei
    inc a
    xor a
    ld e, e
    rst $38
    db $e3
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
    add b
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
    add b
    nop
    ld bc, $0200
    nop
    adc h
    nop
    jr jr_0a8_70d0

jr_0a8_70d0:
    jr nz, jr_0a8_70d2

jr_0a8_70d2:
    ret nz

    nop
    add c
    nop
    inc bc
    ld bc, $078f
    rra
    rrca
    rra
    ccf
    db $fd
    ld a, [hl]
    rst $38
    ld hl, sp-$11
    ldh a, [$bf]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    cp $01
    cp a
    ld b, b
    ld e, l
    and d
    ld l, $d1
    ld [de], a
    db $ed
    ld a, [bc]
    push af
    inc bc
    db $fc
    adc b
    rst $30
    ld b, h
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld [c], a
    db $fd
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    pop bc
    rst $38
    and b
    ld a, a
    ld l, b
    sbc a
    ret c

    rst $20
    push af
    ld hl, sp-$04
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    db $fd
    rst $08
    cp $e7
    or $f3
    ei
    ld sp, hl
    db $fd
    db $fc
    cp $fe
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
    ccf
    rst $38
    sbc a
    ld a, a
    ld e, a
    cp a
    rrca
    rst $38
    daa
    rst $18
    inc hl
    rst $18
    inc bc
    rst $38
    db $dd
    inc hl
    db $f4
    dec bc

jr_0a8_7178:
    ld a, [hl]
    add c
    rst $18
    jr nz, jr_0a8_7178

    inc b
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld [bc], a
    rst $18
    rst $20
    or $eb
    xor e
    ld e, h
    rst $28
    sbc h
    ei
    and l
    sub $39
    push de
    ld a, [hl-]
    ld l, e
    rst $10
    ei
    rst $20
    ld a, e
    db $ed
    rst $38
    ld c, $9f
    adc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld bc, $1c3f
    ld a, a
    inc a
    rst $38
    ld hl, sp-$03
    xor b
    db $fc
    ret z

    db $fc
    ret nc

    db $fc
    ld [$103c], sp
    sbc h
    ld [$088c], sp
    add h
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
    add b
    nop
    ld bc, $8100
    nop
    add c
    nop
    ld bc, $8100
    nop
    add c
    nop

Call_0a8_71ee:
    pop bc
    nop
    add c
    nop
    pop bc
    nop
    pop bc
    nop
    pop hl
    nop
    pop hl
    ld bc, $01f1
    ld sp, hl
    ld bc, $f1f9
    ld sp, hl
    pop af
    ld sp, hl
    pop af
    ld sp, hl
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    rst $38
    ld b, b
    pop af
    rst $38
    ld [hl], e
    rst $38
    ccf
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld [hl], e
    nop
    inc de
    add e
    pop de
    ld [c], a
    ret z

    ldh a, [$c3]
    ldh [$e2], a
    ldh [$36], a
    ldh [$b3], a
    db $e4
    ldh a, [$e7]
    db $ed
    di
    rst $30
    ei
    rst $30
    sbc b
    ld [hl], a
    adc b
    rst $10
    adc b
    rst $30
    adc b
    call nc, $e3eb
    rst $38
    ei
    rst $30
    ld a, e
    add [hl]
    ld a, c
    add [hl]
    ld a, e
    add [hl]
    rst $38
    ld b, $4f
    daa
    rrca
    and a
    rst $10
    add e
    push hl
    jp $c0f4


    rst $30
    rst $08
    ei
    call $ffed
    rst $28
    rst $38
    rst $20

jr_0a8_725b:
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld c, a
    rst $38
    xor a
    ld e, a
    adc b
    ld e, a
    rst $28
    jr jr_0a8_72de

    sbc h
    db $ed
    rra
    rst $20
    rra
    rst $20
    rra
    push hl
    ld e, $eb
    inc e
    rst $20
    jr jr_0a8_7290

    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    jp $8100


    ld b, b
    ld h, b
    ret nz

    add b
    ld h, b

jr_0a8_7290:
    or b
    ret nz

    or b
    ret nz

    ld a, b
    ret nc

    ld a, b
    sbc b
    call c, $eca8
    jr nc, jr_0a8_725b

    ld a, b
    sbc $3a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld [bc], a
    rst $38
    rst $38
    pop de
    rst $38
    ld d, $ff
    xor d
    rst $38
    ld d, h
    rst $38
    and h
    ld a, a
    jp nc, $297f

    cp $90
    db $fc
    xor b
    ldh a, [$50]
    ldh [rLCDC], a
    add b
    add b
    add b
    add b
    add b
    nop
    add b
    add b
    add b
    add b
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
    add b
    nop

jr_0a8_72de:
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
    add b
    nop
    add h
    nop
    ret nz

    nop
    cp a
    ret nz

    ld [$fff7], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    add b
    ld a, a
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
    ld bc, $ff00
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    ld b, c
    nop
    ld a, [hl+]
    nop
    rst $38
    nop
    sbc a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld b, e
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

    nop
    nop
    ld a, a
    add b
    rst $38
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
    ld a, b
    rst $38
    rst $08
    ldh a, [$be]
    pop bc
    sbc a
    rst $38
    ret nz

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
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0102
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
    ldh [rP1], a
    rst $38
    rst $38
    rla
    rst $38
    xor e
    rst $38
    call c, Call_0a8_6cff
    ldh a, [$80]
    ret nz

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
    dec b
    nop
    nop
    nop
    dec b
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    ld e, a
    nop
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    nop
    sub a
    nop
    ld c, a
    nop
    db $fd
    ld [bc], a
    rst $38
    rst $38
    xor b
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
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
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld a, [hl]
    ld bc, $01fe
    ld b, e
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
    nop
    rst $38
    add sp, $17
    add c
    ld a, a
    cp $ff
    ld e, a
    and b
    rst $30
    ld [$22dd], sp
    or $09
    ccf
    nop
    rrca
    db $10
    rra
    nop
    rlca
    ld [$048b], sp
    dec b
    add d
    jp nz, $e181

    ret nz

    ldh a, [$60]
    ld a, b
    jr nc, jr_0a8_7494

    jr jr_0a8_7476

    rrca
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp a
    rst $38
    rst $30
    ld hl, sp-$20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a8_7476:
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
    ccf
    nop
    rla
    nop
    rla
    nop
    inc bc
    nop
    nop
    nop
    ld a, [$ff00]
    nop
    ld l, $00
    rst $38
    nop
    rrca
    nop

jr_0a8_7494:
    rrca
    nop
    ccf
    nop
    inc bc
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    xor b
    ld d, a
    dec d
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    db $ed
    ld a, [c]
    nop
    nop
    ld b, b
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    ccf
    rst $38
    ld c, a
    cp a
    nop
    rst $38
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    add e
    ld a, a
    ld bc, $50ff
    rst $38
    nop
    rst $38
    ld a, [c]
    dec c
    db $fc
    inc bc
    ldh [$1f], a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    nop
    rlca
    rst $38
    ld hl, $ffdf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_0a8_74fe:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret z

    rst $38
    ld bc, $00fe
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld a, h
    add e
    db $fd
    ld [bc], a
    rst $30
    ld [$20df], sp
    db $fd
    ld [bc], a
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
    ld a, l
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, h
    add b
    pop af
    nop
    dec bc
    nop
    or a
    nop
    ld d, a
    nop
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    add $f9
    rst $38
    rst $38
    ld l, a
    rra
    dec c
    inc bc
    rlca
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    dec hl
    nop
    cpl
    nop
    rlca
    nop
    ld e, a
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
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    db $fc
    inc bc
    ldh [$1f], a
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    db $fc
    inc bc
    rst $18
    nop
    ld hl, sp+$07
    db $fd
    ld [bc], a
    db $f4
    dec bc
    rra
    rst $38
    rst $38
    rst $38
    pop bc
    ccf
    db $fc
    inc bc
    cp $01
    db $fd
    ld [bc], a
    and b
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ldh [$1f], a
    ld sp, hl
    ld b, $fa
    dec b
    ret nz

    ccf
    ld a, a
    rst $38
    rst $18
    ccf
    ld bc, $1f00
    rst $38
    db $e4
    dec de
    ret nc

    cpl
    add c
    ld a, a
    rla
    rst $38
    call nz, $ffff
    rst $38
    rst $18
    rst $38
    and c
    ld e, a
    sub c
    ld l, a
    inc bc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    ccf

jr_0a8_75cf:
    rst $38
    ld b, a
    cp a
    rlca
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    and b
    ld a, l
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_0a8_75cf

    nop
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    ld [$21f7], sp
    sbc $08
    rst $30
    db $10
    rst $28
    jp nz, Jump_0a8_493d

    or [hl]
    ld [$7a15], a
    add l
    sbc $21
    cp e
    ld b, h
    rst $38
    nop
    cp a
    ld b, b
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
    cp $01
    sbc a
    ld h, b
    jp hl


    nop
    db $eb
    nop
    db $d3
    nop
    or [hl]
    ld bc, $01a7
    ld e, l
    inc bc
    cp a
    inc bc
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $08
    ccf
    rst $30
    rrca
    rst $30
    rrca
    rst $00
    ccf
    rst $30
    rrca
    rst $30
    rrca
    rst $20
    rra
    rst $08
    ccf
    rst $28
    rra
    sbc a
    ld a, a
    rst $08
    ccf
    rst $38
    rrca
    rrca
    rst $38
    rst $08
    ccf
    cp a
    ld c, a
    rra
    rst $38
    rrca
    rst $38
    rra
    cp $ff
    ld e, $5f
    cp [hl]
    ld a, $fe
    sbc [hl]
    ld a, [hl]
    ld a, $fc
    ld a, $fc
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, e
    db $fc
    ldh a, [$f8]
    di
    db $fc
    rst $38
    rst $38
    adc a
    ld a, a
    rlca
    rst $38
    ld c, a
    cp a
    ld b, d
    cp a
    db $e3
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp $ff
    ldh [rIE], a
    ld a, a
    nop
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
    rst $38
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
    cp $ff
    rst $38
    nop
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    db $fc
    db $fd

jr_0a8_76e7:
    db $fc
    db $fd
    db $fd
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld [de], a
    db $ed
    add h
    ld a, e
    ld b, d
    cp l
    db $10
    rst $28
    ld [$82f7], sp
    ld a, l
    nop
    rst $38
    jr nz, jr_0a8_76e7

    sbc b
    ld h, a
    ld h, h
    sbc e
    or e
    ld c, h
    ld sp, hl
    ld b, $f4
    dec bc
    cp $01
    ld hl, sp+$07
    db $f4
    dec bc
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    and l
    ld e, d
    rst $38
    nop
    rst $38
    ld h, a
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
    cp $f8
    ldh a, [$e0]
    db $e3
    pop bc
    rst $38
    rst $00
    rst $38
    rst $38

Call_0a8_7736:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    add b
    rst $20
    add b
    xor $80
    cp $80
    cp $a0
    cp $f0
    db $fc
    and b
    ldh a, [$e0]
    db $f4
    ldh a, [$f4]
    ldh [$f8], a
    and b
    jr c, jr_0a8_7782

    ldh [rP1], a
    ld [hl], c
    nop
    ld sp, hl
    nop
    pop bc
    nop
    pop af
    nop
    ld sp, hl
    db $10
    ld c, c
    nop
    jr nz, jr_0a8_7773

    nop

jr_0a8_7773:
    ld bc, $010a
    ld a, [hl+]
    ld de, $40b3
    ld b, d

jr_0a8_777b:
    add b
    add d
    nop
    inc bc
    nop
    ld [bc], a
    nop

jr_0a8_7782:
    db $e3
    nop
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    db $fd
    nop
    sbc a
    ldh [$ee], a
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ef
    rst $38
    db $eb
    rlca
    ld b, b
    add b
    rst $38
    nop
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    call c, $dfc0
    sub b
    rst $38
    sbc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$61
    jr jr_0a8_777b

    ld hl, sp+$3f
    db $fc
    rst $38
    cp $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a8_77c7:
    ccf
    ccf
    ld a, a
    and b
    ld a, a
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    jr z, jr_0a8_77c7

    add b
    ld a, a
    ld a, [hl+]
    push de
    ld bc, $48fe
    or a
    ld [de], a
    db $ed
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ld d, b
    xor a
    xor e
    ld d, h
    db $d3
    inc l
    add sp, $17
    inc de
    db $ec
    dec sp
    call nz, Call_000_12ed
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
    inc b
    inc b
    ld d, $17
    jr jr_0a8_7845

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a8_7855

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc b
    ld h, $27
    jr z, jr_0a8_7866

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a8_7876

jr_0a8_7845:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [hl], $37
    jr c, jr_0a8_788d

    ld a, [hl-]

jr_0a8_7855:
    dec sp
    inc a
    dec a
    ld a, $04
    inc b
    ccf
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

jr_0a8_7866:
    ld c, d
    ld c, e
    ld c, h
    inc b
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
    ld d, a
    ld e, b

jr_0a8_7876:
    ld e, c
    ld e, d
    ld e, e
    inc b
    ld e, h
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
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    inc b
    ld l, e
    ld l, h
    ld l, l

jr_0a8_788d:
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
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
    dec h
    and a
    xor b
    xor c
    xor d
    xor e
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    inc b
    inc b
    inc b
    ld c, l
    or d
    or e
    or h
    or l
    xor e
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    inc b
    inc b
    inc b
    inc b
    inc b
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ld l, d
    inc b
    inc b
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    inc b
    inc b
    inc b
    add hl, hl
    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $04
    inc b
    inc b
    inc b
    inc b
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $04
    rst $20
    inc b
    inc b
    inc b
    add sp, $04
    inc b
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [rDIV]
    inc b
    inc b
    inc b
    pop af
    ld a, [c]
    di
    inc b
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$00fb]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0a8_7a2a

jr_0a8_7a2a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a8_7a47

jr_0a8_7a47:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a8_7a5a

jr_0a8_7a5a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor a
    rst $18
    ld e, a
    cp a
    rst $18
    ccf
    rlca
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    cp $ff
    cp $ff
    db $fd
    cp $38
    rst $38
    add c
    rst $38
    pop hl
    rst $38
    db $e4
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ld h, a
    rst $38
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    cp l
    rst $38
    db $eb
    rst $38
    db $f4
    rst $38
    rst $28
    cp $ee
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
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
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $18
    cp a
    ld a, a
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    or a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    sbc l
    rst $38
    rst $20
    rst $18
    rra
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    cp $ff
    db $ec
    rst $38
    di
    rst $38
    rst $20
    rst $38
    sbc a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $18
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
    cp $ff
    db $fc
    rst $38
    ei
    rst $38
    ld a, [c]
    rst $38
    or $ff
    cp $ef
    sbc a
    rst $38
    ld a, a
    cp a
    rst $38
    ld a, a
    ld a, a
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    push af
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    db $e4
    rst $38
    rst $38
    db $ec
    adc $fd
    sbc $fd
    cp h
    rst $38
    ld a, a
    cp $7f
    cp $fd
    cp $f8
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ei
    db $fd
    rst $38
    ei
    ld hl, sp-$01
    inc sp
    db $fc
    cp l
    jp $f1ee


    pop de
    xor $ff
    rst $08
    xor a
    rst $18
    ld e, a
    cp a
    rst $18
    ccf
    rla
    rst $28
    pop af
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fc
    rst $38
    ld a, c
    rst $38
    dec e
    ei
    jp $e0ff


    rst $38
    adc $ff
    sbc a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rst $28
    rst $38
    ldh a, [rIE]
    dec de
    db $e4
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    add b
    cp h
    jp $c3ff


    sbc $e1
    xor $f1
    db $eb
    db $f4
    rst $30
    ld hl, sp-$0b
    ld a, [$fcfb]
    ld sp, hl
    cp $fc
    rst $38
    db $fd
    cp $fe
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
    rst $20
    rst $38
    rst $30
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    db $db
    rst $38
    jp z, $ceff

    rst $38
    rst $28
    rst $38
    di
    rst $28
    rst $20
    rst $38
    call z, $9cff
    rst $38
    cp a
    rst $38
    ld c, [hl]
    rst $38
    adc a
    cp $de
    cp a
    db $dd
    cp a
    sbc l
    rst $38
    jp nc, $acff

    rst $18
    adc l
    rst $38
    sbc l
    rst $38
    dec a
    rst $38
    db $fc
    ld a, a
    dec a
    cp $9c
    rst $38
    dec a
    rst $38
    ld sp, hl
    ld a, a
    ei
    ld a, a
    ld a, l
    rst $38
    dec a
    rst $38
    ld c, c
    cp a
    ld e, a
    cp e
    rra
    ei
    dec sp
    rst $38
    ld a, b
    rst $38
    ld a, [$7bfd]
    db $fd
    ld sp, hl
    ld a, a
    ei
    ld a, a
    ld [hl], e
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    jp hl


    rst $38
    reti


    rst $38
    ld e, a
    rst $30
    ccf
    rst $30
    dec a
    rst $30
    db $76
    rst $38
    ld [hl], d
    rst $38
    push af
    ei
    push af
    ei
    rst $30
    ei
    di
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $fd
    cp $fb
    db $fc
    ld a, [hl]
    ld sp, hl
    ld d, l
    cp e
    cp e
    rst $00
    db $dd
    db $e3
    db $ed
    sbc $be
    rst $18
    ld e, a
    cp a
    cp a
    ld a, a
    rra
    rst $38
    rst $00
    rst $38
    ldh a, [rIE]
    ld a, [$f9fd]
    rst $38
    ei
    rst $38
    ccf
    rst $30
    add a
    rst $38
    pop bc
    rst $38
    sbc h
    rst $38
    add d
    db $fd
    rst $38
    nop
    cp $00
    add b
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    inc a
    rst $38
    adc a
    ldh a, [rIE]
    add b
    xor a
    ret nc

    ld e, e
    db $e4
    push de
    ld l, d
    rst $28
    ld [hl], b
    and [hl]
    ld a, c
    db $fd
    ld [hl-], a
    rst $10
    jr c, jr_0a8_7d3e

    sbc b
    ld l, c
    sbc [hl]
    inc l
    rst $18
    inc d
    rst $28
    ld d, $ef
    adc d
    rst $30
    set 6, a
    push bc
    ei
    pop hl
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
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
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38

jr_0a8_7d3e:
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
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
    rst $30
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
    rst $08
    ccf
    cp $c7
    push hl
    ld a, [$f8f7]
    ei
    db $fc
    push hl
    ei
    ld l, a

Jump_0a8_7d6d:
    di
    sbc e
    ld h, a
    or c
    rst $08
    db $dd
    or e
    ld e, b
    cp a
    cp [hl]
    ld a, a
    ld a, a
    rst $38
    ld a, $ff
    adc h
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    or $ff
    rst $20
    rst $38
    rra
    ldh [rIE], a
    nop
    ldh a, [rP1]
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    jp $f33f


    db $fc
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
    ld a, a
    add b
    ld e, a
    and b
    db $ed
    ld [de], a
    or a
    ld c, b
    ret z

    scf
    sbc c
    ld a, a
    rra
    ldh [$37], a
    ret z

    ld b, [hl]
    cp c
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    jr @+$01

    jr @+$01

    inc c
    rst $38
    adc h
    rst $38
    add $ff
    add $ff
    jp $fbff


    rst $38
    db $fd
    rst $38
    ld sp, hl
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
    ld h, a
    sbc b
    db $fd
    ld a, $be
    ld a, a
    cp [hl]
    ld a, a
    sbc l
    ld a, [hl]
    ld h, e
    sbc h
    sbc $e1
    rst $20
    ld hl, sp-$17
    or $17
    rst $28
    daa
    rst $18
    ld l, a
    sbc a
    add a
    ld a, a
    ld h, c
    rst $38
    ld sp, hl
    cp $fc
    rst $38
    ld sp, hl
    rst $38
    inc [hl]
    ei
    ld a, a
    add b
    cp $00
    add b
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    sbc h
    ld a, a
    sbc a
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
    nop
    rst $38
    nop
    ld b, a
    cp a
    cp $ff
    rst $08

Jump_0a8_7e3f:
    ldh a, [$b5]
    ld c, d
    xor $11
    rst $38
    nop
    cp d
    ld b, l
    ld [hl-], a
    call $ef10
    ld [$04f7], sp
    ei
    ld [bc], a
    db $fd
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $20ff
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    ld d, c
    rst $38
    ld l, b
    rst $38
    add sp, -$01
    db $fc
    rst $38
    rst $30
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

Call_0a8_7e83:
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $28
    ldh a, [$fe]
    add b
    rst $38
    nop
    ei
    rlca
    ld l, c
    adc a
    ld l, d
    adc a
    jp c, Jump_000_2287

    adc l
    and d
    rrca
    ld e, d
    add a
    ld c, [hl]
    add l
    inc l
    add a
    ld c, h
    add e
    add hl, hl
    add [hl]
    adc b
    add a
    jp $9087


    add a
    push bc
    add [hl]
    pop bc
    add a
    push bc
    add e
    push bc
    add d
    jp nz, $c487

    add e
    add $81
    rst $00
    add d
    add $83
    pop bc
    add e
    jp nz, $8281

    jp $c382


    add b
    jp $c182


    add b
    jp $c3c0


    jp $c3c0


    ret nz

    inc sp
    rst $08
    rst $28
    rra
    db $ed
    rra
    sub b
    ld l, a
    cpl
    ldh a, [$f7]
    ld hl, sp-$05
    db $fc
    sbc $f9
    add a
    ld a, e
    ld a, e
    add a
    cp e
    rst $00
    and h
    db $db
    ld e, h
    cp a
    cp [hl]
    ld a, a
    ld a, [hl]
    rst $38
    inc a
    rst $38
    and e
    call c, Call_000_00ff
    db $fc
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    di
    rrca
    di
    db $fc
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
    pop af
    rrca
    ccf
    rst $38
    ldh a, [rIE]
    ld e, $e1
    db $ed
    ld [de], a
    or [hl]
    ld c, c
    rst $28
    db $10
    rst $38
    nop
    xor h
    ld d, e
    ld b, d
    cp l
    ld [$80f7], sp
    ld a, a
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
    jr nz, @-$1f

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
    ld h, b
    rst $38
    jr nc, @+$01

    jr @+$01

    inc l
    rst $38
    add [hl]
    rst $38
    daa
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    db $e3
    ccf
    ld e, b
    rst $38
    add h
    rst $38
    ld h, c
    rst $38
    jr @+$01

    add [hl]
    rst $38
    and c
    rst $38
    add hl, hl
    cp $e8
    rst $18
    xor c
    or $cf
    inc a
    dec sp
    rst $08
    ld d, $fb
    ld [hl], l
    cp [hl]
    dec e
    rst $28
    ld b, l
    ei
    add hl, de
    cp $46
    cp a
    ld a, h
    rst $20
    ld c, [hl]
    ld sp, hl
    ld h, c
    sbc [hl]
    ld l, [hl]
    sub a
    add hl, hl
    rst $30
    ld [$bb7d], a
    rst $18
    xor d
    rst $30
    or c
    cp $ae
    ld a, l
    xor b
    rst $18
    call z, Call_000_2bf3
    db $f4
    pop hl
    ld a, $53
    db $ed
    ld c, l
    di
    ld a, [de]
    db $fd
    ld a, a
    add a
    dec sp
    rst $00
    ld h, l
    sbc e
    ld e, d
    cp l
    cp a
    ld a, [hl]
    cp a
    ld a, [hl]
    sbc h
    ld a, a
    xor e
    db $dd
    sbc l
    db $e3
    jp hl


    rst $30
    call c, $ffef
    rst $18
    rra
    rst $38
    sbc [hl]
    ld a, a
    ld c, a
    cp $cb
    db $f4
    rst $38
    nop
    ldh a, [rP1]
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
    rst $08
    ccf
    rst $00
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
    cp $01
