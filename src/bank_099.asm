SECTION "ROM Bank $099", ROMX[$4000], BANK[$99]

    ret nz

    ld a, a
    pop bc
    ld a, [hl]
    ret nz

    rst $38
    add d
    db $fd
    sub h
    db $eb
    add c
    cp $05
    ld a, [$dc23]
    rla
    jp hl


    rrca
    pop af
    ld c, $f2
    ld b, a
    cp b
    dec bc
    db $f4
    ld [$62f7], sp
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp l
    nop
    call c, Call_099_6c00
    nop
    sub a
    nop
    call nc, Call_000_3d00
    nop
    dec l
    nop
    adc [hl]
    nop
    adc [hl]
    nop
    ld a, [hl+]
    nop
    ld a, $00
    xor h
    nop
    cp h
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
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
    ld a, a
    nop
    ccf
    nop
    daa
    nop
    rla
    nop
    rra
    nop
    ld e, e
    nop
    pop bc
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    jr nz, @+$01

    nop
    db $fc
    nop
    ret nc

    nop
    cp h
    add [hl]
    add hl, sp
    inc bc
    db $fc
    sub h
    inc bc
    call z, $3c03
    add e
    dec a
    add d
    ld d, h
    add e
    ld c, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld e, $e1
    ld a, d
    push hl
    ld l, $f1
    add sp, -$09
    ld [hl], b
    rst $38
    db $fc
    di
    and l
    ld a, [$fa75]
    xor $f9
    cp d
    db $fd
    rst $20
    ld a, [$e39c]
    ld h, a
    sbc b
    and h
    ld [bc], a
    nop
    ld b, b
    nop
    ret nz

    nop

Jump_099_40bf:
    add b
    ld [$8b15], a
    ld [hl], h
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop

jr_099_40cc:
    rst $38
    nop
    rst $38
    nop
    ld l, b
    sub a
    add b
    ld a, a
    add b
    ld a, a
    xor c
    ld d, [hl]
    adc h
    ld [hl], e
    add a
    ld a, d
    rra
    pop hl
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
    add b
    ld a, a
    ld h, $d9
    add c
    ld a, [hl]
    ld e, [hl]
    and c
    rst $38
    nop
    rst $38
    jr nc, jr_099_40cc

    ld b, [hl]
    sbc c
    adc b
    inc sp
    db $10
    ld h, $21
    ld h, [hl]
    ld hl, $43cc
    ld hl, sp+$07
    ld [hl], b
    adc a
    jr nz, @+$01

    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    or $09
    db $fd
    ld [bc], a
    rra
    nop
    ld l, a
    nop
    jr nz, jr_099_4120

jr_099_4120:
    ld [hl], d
    nop
    ld d, e
    nop
    add b
    nop
    nop
    nop
    ld h, b
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld b, b
    nop
    add b
    nop
    and d
    nop
    or e
    nop
    ret


    nop
    and b
    nop
    ldh a, [rP1]
    jp hl


    nop
    db $e4
    nop
    cp $00
    rst $38
    nop
    jp c, $d600

    nop
    add h
    nop
    add [hl]
    nop
    ld a, [$fa00]
    nop
    db $db
    nop
    ret nc

    nop
    ld hl, sp+$00
    db $f4
    nop
    ld hl, sp+$00
    ld a, [$ff00]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a

jr_099_4175:
    nop
    rst $38
    nop
    ld hl, sp+$07
    ld a, a
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
    ld b, a
    nop
    nop
    nop
    ld b, $02
    db $fd
    sbc h
    inc bc
    ret nc

    cpl
    ld e, h
    and e
    jr nz, jr_099_4175

    nop
    rst $38
    ld [bc], a
    rst $38
    ld a, [hl+]
    rst $38
    sbc e
    rst $38
    cp l
    rst $38
    ld d, a
    rst $38
    db $76
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    dec hl
    rst $38
    rst $38
    ld a, a
    db $dd
    ccf
    ld [hl+], a
    rst $18
    daa
    ret c

    ld c, $f0
    ret nc

    nop
    nop
    jr nc, jr_099_41bb

jr_099_41bb:
    nop
    nop
    nop

Jump_099_41be:
    nop
    nop
    ld [c], a
    dec e
    ld b, l
    cp d
    ld b, c
    cp [hl]
    and $19
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ldh a, [rIF]
    ldh [$1f], a
    ld b, h
    cp e
    ld hl, $64de
    sbc e
    add h
    ld a, e
    call nc, $dcab
    di
    and l
    ld e, d
    nop
    rst $38
    nop
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
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec [hl]
    nop
    ld a, [de]
    db $e4
    add c
    cp $e0
    rst $38
    ldh [rIE], a
    rst $18
    rst $38
    cp a
    ld b, b
    ld l, a
    sub b
    ld a, a
    add b
    rst $38
    nop
    db $fd
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
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
    nop
    nop
    nop
    nop
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
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and c
    nop
    db $e3
    nop
    and $00
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    dec bc
    ccf
    rst $38
    rst $38
    rst $38
    ld a, [$e0ff]
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    jr nz, jr_099_4279

jr_099_4279:
    nop
    inc bc
    db $f4
    ld [hl-], a
    ld bc, $814e
    ld a, [hl-]
    pop bc
    dec de
    ldh [$0a], a
    ldh a, [rNR14]
    ld hl, sp-$57
    db $fc
    ld l, b
    cp $af
    cp $bb
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei

jr_099_4295:
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    and c
    cp $bf
    ld b, b
    ld l, h
    sub b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    ld l, b
    sub a
    ld c, d
    or l
    ld h, d
    sbc l
    jp hl


    ld d, $e9
    ld d, $40
    cp a
    jr z, jr_099_4295

    ld b, h
    cp e
    ld c, b
    or a
    ld [$00f7], sp
    rst $38
    ld b, h
    cp e
    jp nc, Jump_000_202d

    rst $18
    ld [bc], a
    db $fd
    adc c
    ld [hl], a
    rst $38
    nop
    sbc a
    nop
    rst $08
    nop
    ld [hl], c
    nop
    dec l
    nop
    ld b, $00
    nop
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    pop de
    nop
    ld e, l
    nop
    ld h, h
    ld [bc], a
    call nz, Call_000_0818
    ldh a, [$50]
    ldh [$e0], a
    ret nz

    add e
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_099_42fe

jr_099_42fe:
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$07
    ld hl, sp+$17
    add sp, $17
    add sp, $0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR22], a
    add sp, $1f
    ldh [$df], a
    jr nz, @-$1f

    jr nz, @+$41

    ret nz

    ccf
    ret nz

    rst $18
    jr nz, @+$61

    and b
    ld e, a
    and b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rNR11]
    xor $0b
    db $f4
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rP1], a
    ld a, [c]
    nop
    ld [c], a
    nop
    db $10
    rst $28
    add sp, -$01
    ld [bc], a
    db $fd
    inc de
    db $ec
    rra
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ld [hl], $00
    inc d
    db $eb
    ld d, c
    xor $04
    rst $38
    add d
    rst $38
    ld a, [bc]
    rst $38
    ld a, [hl+]
    ld a, a
    ld c, b
    ccf
    ld e, [hl]
    rra
    cp e
    rrca
    ld l, a
    rlca
    ld h, e
    add a
    push af
    add e
    xor b
    pop bc
    db $db
    ldh [rBCPD], a
    ldh a, [$e5]
    ldh a, [$03]
    ldh [$80], a
    rra
    cp $01
    ld [hl], a
    adc b
    rst $30
    ld [$05fa], sp
    cp $01
    rst $38
    nop
    or $09
    db $fc
    inc bc
    add $39
    adc h
    ld [hl], a
    cp $c7
    or [hl]
    ret


    rst $00
    jr c, jr_099_43cb

    rst $18
    ld b, b
    cp a
    db $10
    rst $28
    ld b, h
    cp e
    nop
    rst $38
    ld bc, $10fe
    rst $28
    db $10
    rst $28
    ld b, b
    cp a
    ld [bc], a
    db $fd
    ld b, $fb
    rst $38
    nop
    or a
    nop
    rrca
    nop
    or c
    nop
    ld hl, $f000

jr_099_43cb:
    nop
    ld bc, $0300
    nop
    rlca
    ld bc, $030c
    inc [hl]
    ld [$00f0], sp
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    nop
    ldh a, [rP1]
    rst $38
    nop
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    sbc h
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
    cp $00
    ld a, [$fc00]
    nop
    ld a, [$f000]
    nop

jr_099_4408:
    ldh a, [rP1]
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, [$ff00]
    nop
    db $fc
    nop
    ld [hl], b
    nop
    ret nc

    nop
    ld e, b

jr_099_441f:
    nop
    sub b
    nop
    add b
    nop
    or b
    nop
    jp nz, $8200

    nop
    cp b
    nop
    reti


    nop
    db $fd
    nop
    rst $38
    nop
    ret nz

    nop
    rst $18
    nop
    rst $18
    nop
    rst $08
    db $10
    rrca
    ret nc

    ld c, l
    sub d
    jr nz, jr_099_441f

    sbc $01
    sbc $01
    ld b, e
    sbc l
    pop de
    rst $18
    ld b, b
    rst $18
    ld b, d
    db $dd
    inc bc
    call c, $d807
    ld e, b
    nop
    sub b
    nop
    add b
    nop
    ldh [$1f], a
    cp b
    ld b, a
    db $ed
    inc de
    scf
    ret z

    dec de
    db $e4
    nop
    ei
    ld a, [bc]
    db $fd
    and b
    rst $38
    ld c, $ff
    ei
    rst $38
    cp e
    rst $38
    ld e, [hl]
    rst $38
    cp a
    rst $38
    ld l, l
    rst $38
    cp e
    rst $38
    rst $28
    rst $38
    ld a, [c]
    rst $38
    sbc b
    ld a, a
    xor a
    db $10
    ld l, d
    sub b
    jr nz, jr_099_4408

    push af
    ld a, [bc]
    rst $38
    nop
    ld c, a
    or b
    ld a, l
    add d
    ld [c], a
    dec e
    sub [hl]
    ld l, c
    ld c, e
    or l
    adc a
    ld [hl], e
    ld [de], a
    db $ed
    sbc h
    ld h, e
    ld [$01ff], sp
    cp $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    db $10
    rst $28
    nop
    rst $38
    ld [$20f7], sp
    rst $18
    ld b, h
    cp e
    inc h
    db $db
    rst $38
    nop
    rst $38
    jr c, @+$01

    nop
    rst $38
    ld bc, $03df
    ccf
    rlca
    ld a, $0f
    ld a, l
    ld e, $fc
    jr nc, jr_099_44cf

    ldh [$82], a
    db $fd
    add hl, de
    and $20

jr_099_44c5:
    rst $18
    inc b
    ei
    ld b, c
    cp [hl]
    adc e
    ld [hl], h
    rra
    ldh [$3f], a

jr_099_44cf:
    rst $38
    ret nz

    nop
    ld [hl], b
    add b
    rra
    ldh [rIE], a
    rst $38
    rra
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ld hl, sp+$07
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $18
    nop
    cp a
    nop
    rra
    nop
    rra
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
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    daa
    nop
    and a
    nop
    rra
    nop
    cp a
    nop
    cp $00
    nop
    nop
    ld a, $01
    ld a, [hl]
    ld bc, $0f70
    ld a, h
    inc bc
    ld b, b
    ccf
    add b
    ld a, a
    ld [hl], a
    ld [$7708], sp
    rra
    ld a, a
    ld [bc], a
    ld a, a
    nop
    ld a, a
    ld e, a
    jr nz, jr_099_45bc

    nop
    ld a, l
    nop
    ld hl, sp+$00
    ld d, c
    jr nz, jr_099_44c5

    ld a, a
    rst $38
    rst $38
    cp $ff
    db $ec
    rst $38
    db $e4
    rst $38
    ld h, b
    rst $38
    jr nz, jr_099_457c

    ld b, b
    adc l
    ld h, b
    add $00
    di
    ld c, h
    ld sp, hl
    ld b, [hl]
    db $fc
    or d
    rst $38
    cp e
    rst $38
    ret c

    rst $38
    rst $30
    rst $38
    sub $ff
    pop bc
    cp $4f
    or b
    and b
    nop
    inc bc
    nop
    nop
    nop
    and a
    ld e, b
    dec e
    ld [c], a
    ld [hl], l
    jp c, Jump_000_00ff

    ld sp, hl
    ld b, $88
    ld [hl], a

jr_099_457c:
    db $fc
    inc hl
    db $fc
    and e
    ld a, a
    add b
    ld a, [hl-]
    push de
    ld b, l
    cp d
    ld h, d
    sbc l
    xor a
    ld d, b
    inc bc
    db $fc
    ld e, e
    and l
    add c
    cp $d5
    ld a, [hl+]
    inc a
    rst $00
    cp d
    ld b, l
    rrca
    ldh a, [rSCY]
    cp l
    ld l, e
    sub $16
    jp hl


    db $ec
    inc de
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
    ld c, $ff
    inc a
    or h
    ld a, b
    ld e, b
    ldh [$a0], a
    ret nz

    nop
    add b
    add b
    nop
    nop
    nop

jr_099_45bc:
    nop
    nop
    nop
    nop
    ld [hl+], a
    db $dd
    add c
    ld a, [hl]
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ld b, $01
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
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
    ret nz

    ccf
    ldh [$1f], a
    pop af
    ld c, $a1
    ld e, [hl]
    xor c
    ld d, [hl]
    pop hl
    ld e, $f9
    ld b, $f1
    ld c, $f3
    inc c
    db $e3
    inc e
    add sp, $17
    di
    inc c
    ldh a, [rIF]
    ld a, [c]
    dec c
    pop af
    ld c, $f8
    rlca
    add b
    ld a, a
    ldh a, [rIF]
    db $f4
    dec bc
    ld a, [c]
    dec c
    ld a, [$fe05]
    ld bc, $01fe
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    add b
    ld a, a
    nop
    nop
    ld a, h
    ld [bc], a
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld [hl], $40
    cp c
    ld a, h
    db $fc
    ld a, [hl]
    sbc b
    ld a, [hl]
    add d
    ld a, h
    sub d
    ld l, h
    ld h, a
    jr @+$81

    nop
    add e
    nop
    cp e
    ld b, $5e
    rst $38
    cp $ff
    and [hl]
    rst $38
    ld b, $ff
    inc de
    rst $38
    sub a
    rst $38
    ld bc, $046e
    ld e, a
    inc b
    rst $38
    dec c
    rst $38
    db $fc
    rst $38
    db $fd
    ld a, a
    ld e, l
    ccf
    ld c, l
    sbc a
    call $35c7
    db $e3
    inc sp
    ld sp, hl
    add hl, de
    rst $38
    add e
    ld a, a
    ld b, b
    rra
    ld b, b
    ccf
    add b
    ld a, a
    rst $38
    ld [hl], e
    db $fc
    ld c, a
    rst $38
    dec sp
    ld e, a
    and b
    dec d
    ld [$e31c], a
    inc bc
    db $fc
    ld b, b
    cp a
    ld h, b
    sbc a
    add $39
    add b
    ld a, a
    inc c
    rst $30
    ld b, e
    cp [hl]
    db $e3
    inc e
    pop de
    xor [hl]
    adc h
    ld [hl], e
    ld [$90f7], sp
    ld l, a
    ld d, [hl]
    xor c
    ld h, d
    sbc l
    ld h, a
    sbc b
    ld [hl-], a
    call $a956
    inc h
    db $db
    rst $38
    rrca
    rst $38
    ld a, $ff
    ld a, b
    db $fc
    ldh [$f0], a
    ret nz

    ldh [rP1], a
    add b
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0708
    jr nc, jr_099_46c5

    jr nz, jr_099_46d7

    nop
    ccf
    jr nz, jr_099_46db

    ld bc, $073e
    jr c, jr_099_46c1

jr_099_46c1:
    ccf
    nop
    ccf
    nop

jr_099_46c5:
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38

jr_099_46d7:
    ret nz

    rst $38
    ret nz

    rst $38

jr_099_46db:
    ret nz

    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
    nop
    ld a, b
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    ld a, b
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld l, h
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld b, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld b, b
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, e
    nop
    ld d, b
    nop
    ld [hl], a
    nop
    ld a, h
    inc bc
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
    ld a, a

jr_099_471b:
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
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a

jr_099_472d:
    add b
    rst $38

jr_099_472f:
    add b
    ld a, a
    add b
    ld a, a
    add b
    db $eb
    inc d
    ld a, a
    add b
    ld a, a
    add b
    rla
    add sp, $2b
    call nc, $946b
    ccf
    ret nz

    ld e, l
    and d
    ld e, l
    and d
    dec e
    ld [c], a
    db $10
    rst $28
    jr nc, jr_099_471b

    jr nz, jr_099_472d

    jr nz, jr_099_472f

    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add e

jr_099_4759:
    rst $38
    ld b, c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    pop bc
    rst $38
    ldh a, [$7f]
    cp a
    ld e, a
    rst $38
    inc sp
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    add d
    ld a, l
    ld hl, $10de
    rst $28
    and b
    ld e, a
    xor h
    ld d, e
    ld h, $d9
    add l
    ld a, d
    ld c, c
    or [hl]
    jr z, jr_099_4759

    ld a, h
    sbc e
    ld a, $fd
    ld d, $fd
    pop de
    ld l, [hl]
    rst $38
    ld l, h
    rst $38
    ld a, [$52bd]
    ld b, b
    add b
    add b
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    jr jr_099_47a3

    jr nz, @+$21

    add b
    ld a, a
    ld bc, $01fe

jr_099_47a3:
    cp $03
    db $fc
    rla
    add sp, $3f
    ret nz

    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld hl, sp+$00
    cp h
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    pop bc
    nop
    ld b, b
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
    ld bc, $1000
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
    jr nz, jr_099_47ec

jr_099_47ec:
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ld [hl], b
    nop
    or b
    nop
    and b
    nop
    adc c
    nop
    cp $00
    db $e3
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
    and b
    nop
    jr nz, jr_099_4810

jr_099_4810:
    and b
    nop
    ldh [rP1], a
    ld h, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$00
    ld hl, sp+$00
    ldh [rP1], a
    db $e4
    nop
    add sp, $00
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    cp $00
    ld sp, hl
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
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
    ld a, a
    add b
    di
    inc c
    rst $38
    nop
    ld c, a
    or b
    ccf
    ret nz

    rrca
    ldh a, [$0b]
    db $f4
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    db $10
    rst $38
    xor d
    rst $38
    ld l, b
    rst $38
    inc e
    rst $38
    rst $28
    cp a
    rst $30
    rra
    db $fd
    rlca
    ld a, a
    add c
    rst $38
    ld b, $ff
    ld [bc], a
    ld l, [hl]
    sub c
    ld d, a
    xor c
    ld a, l
    cp d
    scf
    db $eb
    sbc a
    ld l, e
    cp a
    ld e, a
    ld [hl], a
    xor e
    cp a
    ld b, [hl]
    cp a
    ld b, a
    ld a, e
    add h
    rst $38
    db $fd
    rst $30
    rst $38
    rst $38
    inc a
    ld [$3107], sp
    ld c, $e7
    jr jr_099_48a6

    ldh a, [$1f]
    ldh [$3d], a
    jp nz, Jump_000_0cf3

    db $fc
    nop
    db $fc
    nop
    db $e4
    nop
    ldh a, [rP1]

jr_099_48a6:
    ret z

    nop
    sub b
    nop
    add b
    nop
    add b
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

Call_099_48b7:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1100
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
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
    jr nz, jr_099_490a

jr_099_490a:
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    add c

jr_099_4923:
    nop
    or b
    nop
    ldh [rP1], a
    jp hl


    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    inc b
    nop
    adc b
    add b
    jr jr_099_493d

jr_099_493d:
    cp d
    db $10
    ei
    ld [hl+], a
    db $dd
    jr nz, jr_099_4923

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ret nc

    rst $38
    cp c
    rst $38
    db $fd
    rst $38
    ld a, d
    rst $38
    xor a
    ld a, a
    rst $38
    ccf
    rst $30
    ld a, a
    or e
    ld a, a
    ld e, l
    cp a
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $08
    db $ed
    rla
    rra
    rst $20
    rra
    di
    rst $28
    ld d, e
    rst $38
    pop af
    rst $38
    pop bc
    rrca
    ldh a, [$df]
    jr nz, jr_099_49f4

    add b
    rst $38
    nop
    cp $00
    call nc, Call_000_3c00
    nop
    ld d, $00
    rrca
    nop
    ld b, $00
    rlca
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

    cpl
    or b
    ld c, a
    add b
    ld a, a
    ldh [$1f], a
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
    ld [$0000], sp
    nop
    nop
    nop
    jr nz, jr_099_49d0

jr_099_49d0:
    nop
    nop
    nop
    nop
    nop
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
    ld b, e
    nop
    ld a, a
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
    ld bc, $0100
    nop

jr_099_49f4:
    ld [bc], a
    nop
    add d
    nop
    ld b, b
    nop
    and b
    nop
    jr nz, jr_099_49fe

jr_099_49fe:
    ld [hl], c
    nop
    jr nc, jr_099_4a02

jr_099_4a02:
    inc hl
    nop
    ld bc, $0700
    nop
    inc bc
    nop
    adc a
    nop
    rra
    nop
    rrca
    nop
    cpl
    nop
    adc l
    ld [bc], a
    adc a
    nop
    rst $18
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

jr_099_4a22:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_099_4a22

    ld [$00ff], sp
    xor $11
    ld a, [$3705]
    ret z

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
    add b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    db $eb
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
    rst $20
    sbc a
    rst $28
    rst $38
    pop af
    rst $38
    adc [hl]
    rst $38
    adc $3f
    daa
    xor a
    rst $38
    nop
    ld [$b800], a
    nop
    ld a, h
    nop
    ld sp, hl
    nop
    ld [hl], $00
    ret z

    nop
    ld c, a
    nop
    ld c, e
    nop
    inc de
    nop
    sbc b
    nop
    add d
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $1400
    nop
    add hl, de
    nop
    ld [de], a
    nop
    ld bc, $1000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $8100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0900
    nop
    dec b
    nop
    rlca
    nop
    dec [hl]
    nop
    inc bc
    nop
    ld bc, $0900
    nop
    ld bc, $0700
    nop
    rlca
    nop
    rra
    nop
    rra
    nop
    ld e, a
    nop
    sbc a
    nop
    rst $30
    ld [$033c], sp
    inc bc
    nop
    ld bc, $0700
    nop
    rlca
    nop
    inc c
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    cpl
    nop
    ld a, a
    nop
    rst $38
    nop
    ei
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    cpl
    nop
    cp a
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $30

jr_099_4b1f:
    ld [$03fc], sp
    cp $01
    db $fc
    inc bc
    cp [hl]
    ld b, c
    sbc $21
    xor a
    ld d, b
    ld c, d
    or l
    ld e, b
    and a
    ret z

    scf
    ld [hl], b
    adc a
    or b
    ld c, a
    jr jr_099_4b1f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$06ff], sp
    rst $38
    dec b
    rst $38
    ld h, $ff
    inc d
    rst $38
    ld e, [hl]
    rst $38
    db $eb
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
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
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
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ld a, a
    nop
    ccf
    nop
    ld e, a
    nop
    xor a
    nop
    rst $28
    nop
    db $db
    nop
    rst $30
    nop
    ld [hl], a
    nop
    ld c, a
    nop
    rst $08
    nop
    adc e
    nop
    inc de
    nop
    inc bc
    nop
    rlca
    nop
    rst $18
    nop
    ld l, a
    nop
    rst $08
    nop
    rst $18
    nop
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
    rst $38
    nop
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    ei
    inc b
    db $fc
    inc bc
    rst $38
    nop
    ei
    inc b
    ldh a, [rIF]
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fc
    inc bc
    rst $38
    nop
    db $fd
    ld [bc], a
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
    nop
    ld a, [$fd05]
    ld [bc], a
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [$e705]

jr_099_4bed:
    jr jr_099_4bed

    ld bc, $01fe
    ld a, [c]
    dec c
    or $09
    ret c

    daa
    xor $11
    jp nz, $c03d

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    db $f4
    dec bc
    add sp, $17
    pop af
    rrca
    ld d, b
    xor a
    nop
    rst $38
    ld [$06f7], sp
    ei
    add b
    ld a, a
    ld [bc], a
    rst $38
    nop
    rst $38
    inc bc
    cp $02
    rst $38
    ld [de], a
    rst $38
    ld a, [de]
    rst $38
    ld a, [bc]
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
    inc b
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    ld c, [hl]
    rst $38
    inc a
    rst $38
    cp b
    rst $38
    ld a, h
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ei
    rst $38
    call c, $ffff
    rst $38
    rst $38
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
    ld [bc], a
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
    jr jr_099_4c84

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_099_4c94

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_099_4ca4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_099_4cb4

    ld [hl-], a

jr_099_4c84:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_099_4cc4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_099_4c94:
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

jr_099_4ca4:
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

jr_099_4cb4:
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

jr_099_4cc4:
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
    ld [bc], a
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
    jp nc, Jump_099_56d3

    call nc, $d6d5
    rst $10
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
    jr jr_099_4d86

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    call nc, Call_000_2120
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_099_4da7

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_099_4db7

jr_099_4d86:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    ld bc, $0101
    inc b
    inc b
    ld bc, $0404
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b

jr_099_4da7:
    inc b
    inc b
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0401

jr_099_4db7:
    inc b
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    dec b
    inc b
    ld [bc], a
    nop
    ld bc, $0204
    ld [bc], a
    inc b
    ld [bc], a
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld bc, $0002
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    nop
    ld [bc], a
    ld bc, $0101
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld bc, $0101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0200
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld hl, $0000
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
    nop
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0809], sp
    ld [$0808], sp
    ld a, [bc]
    inc c
    ld [$0808], sp
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0808], sp
    rst $30
    ld b, b
    cp a
    and b
    ld e, a
    adc b
    ld [hl], a
    ret c

    daa
    db $e4
    dec de
    ldh a, [rIF]
    cp b
    ld b, a
    ld hl, sp+$07
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
    ld a, a
    add b
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
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
    cp [hl]
    ld b, b
    rst $38
    nop
    cp l
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    add e
    ld a, h
    rst $38
    nop
    cp [hl]
    ld b, b
    cp a
    ld b, b
    db $fd
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_099_4f33:
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
    rst $38
    nop
    rst $30
    ld [$00fb], sp
    di
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
    cp $01
    ld a, [hl-]
    push bc
    dec a
    jp nz, $c23d

    jr c, jr_099_4f33

    dec d
    ld [$ff00], a
    nop
    nop
    nop
    nop
    ld b, $00
    ld [$8000], sp
    nop
    nop
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
    rlc b
    ld c, e
    nop
    ld a, e
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ei
    rlca
    rst $28
    rra
    rst $18
    ccf
    ccf
    rst $38
    db $fc
    rst $38
    push af
    rst $38
    ld hl, sp-$01
    ld a, [$e9ff]
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    jr nc, @+$01

    call nz, $f8ff
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ld d, b
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
    inc d
    db $eb
    ld a, h
    add e
    xor $11
    db $db
    inc h
    rst $38
    nop
    ld a, d
    add l
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
    ei
    nop
    ld sp, hl
    nop
    xor a
    nop
    jp c, $df00

    nop
    rst $10
    nop
    rst $28
    nop
    ld l, a
    nop
    sbc a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    ld e, a
    nop
    ld l, a
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
    ld hl, sp+$07
    rst $38
    nop
    pop hl
    nop
    ldh [rP1], a
    ld h, b
    nop
    ld h, c
    nop
    ld bc, $9100
    nop
    add hl, de
    nop
    or l
    nop
    call $8d00
    nop
    sbc a
    nop
    ccf
    nop
    xor a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    ei
    inc b
    ld a, a
    add b
    db $fc
    inc bc
    or h
    ld c, e
    ld b, c
    cp [hl]
    ld [bc], a
    db $fd
    inc bc
    db $fc
    rlca
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
    rst $38
    nop
    rst $38
    ld b, $00
    ld e, e
    nop
    rst $18
    nop
    db $ec
    inc bc
    cp b
    rlca
    db $f4
    rrca
    ret nz

    ccf
    ld a, b
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    add sp, -$01
    ei
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, d
    rst $38
    nop
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    and b
    rst $38
    nop

jr_099_50af:
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    nop
    ld a, e
    nop
    dec hl
    nop
    inc l
    nop
    ld d, c
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    add sp, $17
    jp hl


    ld d, $ea
    dec d
    db $eb
    inc d
    rst $08
    jr nc, jr_099_50af

    add hl, sp
    or $09
    rst $30
    ld [$08f7], sp
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    ld bc, $0057
    and [hl]
    ld bc, $01fe
    rst $38
    nop
    rst $28
    nop
    rst $08
    nop
    ld e, a
    nop
    ld c, a

Jump_099_5135:
    nop
    db $ed
    nop
    and a
    nop
    ld d, e
    nop
    ld a, a
    nop
    cp [hl]
    nop
    rst $18
    nop
    cp $00
    rst $28
    nop
    rst $38
    nop
    rst $38

jr_099_5149:
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
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    db $e4
    dec de
    and b
    ld e, a
    jr nz, jr_099_5149

    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    rrca
    nop
    inc e
    nop
    add hl, sp
    nop
    ld [$0e37], sp
    ld sp, $300b
    dec c
    inc sp
    ret nc

    ccf
    ret c

    ccf
    ret c

    ccf
    inc e
    rst $38
    adc h
    rst $38
    add d
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
    add b
    rst $38
    add hl, bc
    or $00
    rst $38
    pop bc
    cp $01
    cp $01
    cp $00
    rst $38
    ld de, $00ee
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
    ld bc, $01fe
    cp $03
    db $fc
    ld [$00f7], sp
    rst $38
    ld bc, $01fe
    cp $ff
    rrca
    rst $38
    inc bc
    cp $01
    ld e, l
    ld [bc], a
    ccf
    nop
    rra
    nop
    inc de
    nop
    rra
    nop
    dec c
    nop
    dec b
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ccf
    db $10
    rst $28
    add b
    ld a, a
    and b
    ld e, a
    ld d, b
    xor a
    ret nc

    cpl
    ldh a, [rIF]

jr_099_5200:
    db $f4
    dec bc
    ldh a, [rIF]
    ld [$f415], a

jr_099_5207:
    dec bc
    ld hl, sp+$07
    add sp, $17
    ei
    inc b
    ld a, [$f905]
    ld b, $f4
    dec bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    db $f4
    dec bc
    ret nc

    cpl
    jr jr_099_5207

    ret z

    scf
    ld a, d
    add l
    xor d

jr_099_5225:
    ld d, l
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, [$fd05]
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_099_5239:
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ld a, [c]
    dec c
    ldh a, [rIF]
    ret z

    scf
    or b
    ld c, a
    or b
    ld c, a
    and b
    ld e, a
    jr nc, jr_099_5225

    db $10
    rst $28
    jr nz, jr_099_5239

    db $10
    rst $28
    nop
    rst $38
    add b
    ld a, a
    nop
    nop
    inc b
    nop
    ld bc, $0400
    inc bc
    inc sp
    inc c
    ld c, a
    jr nc, jr_099_5200

    ld h, b
    ld a, e
    add b
    cp $01
    push af
    inc bc
    jp z, Jump_000_1e37

    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    inc h

jr_099_5285:
    db $db
    ld hl, $38de
    rst $00
    ld [hl], h
    adc e
    inc d
    db $eb
    ld sp, $75ce
    adc d
    ld [de], a
    db $ed
    db $10
    rst $28
    adc b
    db $76
    jp Jump_099_603c


    sbc a
    rst $30
    ld [$3ec1], sp
    jr nz, @-$1f

    nop
    rst $38
    jr nz, jr_099_5285

    and h
    ld e, e
    ld [bc], a
    db $fd
    sub e
    ld l, h
    adc d
    ld [hl], l
    ret nz

    ccf
    ccf
    ret nz

    rst $28
    db $10
    rst $28
    db $10
    ld e, c
    and [hl]
    rra
    ldh [$31], a
    adc $79
    add [hl]
    ld c, [hl]
    or c
    ld [$fbff], a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $28
    rra
    and e
    ld e, a
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
    ld e, a
    nop
    rst $18
    nop
    rst $18
    nop
    ld a, $00
    rrca
    nop
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    inc b
    ei
    inc b
    ei
    inc b
    ei
    ld b, $f9
    ld b, $f9
    add hl, bc
    or $0d
    ld a, [c]
    add hl, bc
    or $00
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_099_530a

jr_099_530a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    jr nc, jr_099_531e

jr_099_531e:
    nop
    nop
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    ret nz

    ccf
    and b
    ld e, a
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    and b
    ld e, a
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0900
    nop
    ld bc, $0f00
    nop
    dec bc
    nop
    rra
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld c, a
    nop
    ld e, l
    inc bc
    ld a, [de]
    rlca
    inc hl
    inc e
    adc [hl]
    ld [hl], c
    ld a, [hl-]
    push bc
    dec a
    jp $47bb


    rst $10
    ld l, a
    xor a
    ld a, a
    ld a, a

jr_099_536f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    inc b
    rst $38
    inc b

jr_099_5379:
    rst $38
    db $fc
    rst $38
    ld [bc], a
    rst $38
    ld c, b
    or a
    add b
    ld a, a
    ld b, b
    cp a
    ld a, [bc]
    push af
    rra
    ldh [$3e], a
    ret nz

    ld a, [bc]
    ldh a, [$0a]
    push af
    ld [hl+], a
    db $dd
    cp a
    ld b, b
    cp h
    ld b, b
    ld hl, sp+$04
    jr z, jr_099_536f

    ld e, c
    and [hl]
    sbc $20
    ld h, e
    add b
    rst $00
    jr c, jr_099_5379

jr_099_53a1:
    jr nz, jr_099_53a1

jr_099_53a3:
    nop
    ld a, $c0
    inc hl
    call c, $ae51
    sbc c
    ld h, [hl]
    ld b, c
    cp [hl]
    nop
    rst $38
    add h
    ld a, e
    ld b, e
    cp h
    ld bc, $12fe
    db $ed
    inc c
    di
    jr jr_099_53a3

    dec d
    ld [$3dc2], a
    dec c
    ld a, [c]
    ld b, b
    rst $38
    and b
    rst $38
    or h
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [de]
    rst $38
    ld c, b
    cp a
    ld sp, hl
    rlca
    cp $01
    db $fd
    nop
    db $fd
    nop
    cp $00
    ld [hl], h
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ret nc

    nop
    or b
    nop
    jr nz, jr_099_53e8

jr_099_53e8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    cp h
    ld b, c
    cp [hl]
    ld b, a
    cp b
    ld b, a
    cp b
    ld b, e
    cp h
    ld bc, $49fe
    or [hl]
    pop hl
    ld e, $57
    xor b
    rlca
    ld hl, sp+$07
    ld hl, sp+$05
    ld a, [$fc03]
    inc bc
    db $fc
    ld bc, $03fe
    db $fc
    inc hl
    call c, $cc33
    scf
    ret z

    daa
    ret c

    dec h
    jp c, $fb04

    inc a
    jp Jump_099_41be


    cp a
    ld b, b
    scf
    ret z

    scf
    ret z

    scf
    ret z

    scf
    ret z

    ccf
    ret nz

    rra
    ldh [$39], a
    add $00
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
    nop
    nop
    nop
    nop
    ld b, b
    nop
    add d
    nop
    adc [hl]
    nop
    ld e, a
    nop
    ld a, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    ld b, $e7
    inc e
    push bc
    ld a, $5d
    and $75
    adc a
    rst $28
    rla
    rst $08
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
    rst $38
    cp $ff
    adc b
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$04
    ld sp, hl
    ld hl, sp-$10
    db $fc
    rst $38
    ld hl, sp-$05
    ld sp, hl

jr_099_547e:
    ld a, e
    ld sp, hl
    ld [$b0f9], a

jr_099_5483:
    ld sp, hl
    cp b
    ld sp, hl
    ld e, b

jr_099_5487:
    ld sp, hl
    jr z, jr_099_5483

    add b
    ld sp, hl
    jr nc, jr_099_5487

    ld e, b
    ld sp, hl
    ld [de], a
    ld sp, hl
    add d
    ld sp, hl
    ld [hl+], a
    ld sp, hl
    ld b, $f9
    add d
    ld sp, hl
    ld b, $f9
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld a, h
    add b
    db $fc
    nop
    ld a, h
    add b
    inc e
    ldh [rNR14], a
    add sp, $00
    db $fc
    ret nz

    db $fc
    ld h, b
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld [$08fc], sp
    db $fc
    jr c, jr_099_547e

    sub b
    db $ec
    nop
    db $fc
    ret nz

    db $fc
    rst $38
    nop
    xor a
    ld d, b
    ld b, a
    cp b
    dec bc
    db $f4
    dec bc
    db $f4
    nop
    rst $38
    nop
    rst $38
    dec l
    jp nc, $e01f

    rra
    ldh [$1f], a
    ldh [$8f], a
    ld [hl], b
    ld [hl], a
    ld [$002f], sp
    inc bc
    nop
    ld bc, $fe00
    ld bc, $00ff
    rst $38
    nop
    ld [hl], a
    nop
    add l
    nop
    and a
    nop
    dec b
    nop
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fb00]
    nop
    rst $38
    nop
    db $fd
    nop
    db $f4
    nop
    pop hl
    nop
    pop hl
    nop
    pop bc
    nop
    add c
    nop
    sub b
    nop
    sub c
    nop
    sub c
    nop
    ldh a, [rP1]
    pop hl
    nop
    db $e3
    nop
    db $e3
    nop
    ld h, c
    add b
    ret nz

    nop
    pop bc
    nop
    add c
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop bc
    db $e3
    pop bc
    di
    ld b, c
    rst $38
    jp $e1ff


    rst $38
    db $e3
    nop
    db $eb
    nop
    ld [hl], a
    add b
    dec sp
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    ccf
    ret nz

    ld e, $e1
    ret nz

jr_099_5541:
    nop
    pop af
    nop
    di
    nop
    ld sp, hl
    nop
    cp $00
    rst $38
    nop
    ld a, [$e704]
    jr jr_099_5541

    nop
    ld h, [hl]
    add c
    ld a, [$f007]
    rrca
    ret


    ccf
    ld hl, sp+$7f
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    push af
    ld hl, sp-$1d
    ldh a, [$c7]
    db $e4
    sbc a
    call z, Call_000_1c9f
    ld a, a
    inc a
    dec sp
    db $fc
    ld e, a
    db $fc
    ld h, b
    rra
    ret nz

    nop
    ld b, $f8
    ld hl, sp-$01
    nop
    db $fc
    add b
    ld a, h
    ret z

    inc [hl]
    cp [hl]
    ld b, b
    xor $10
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    xor $10
    db $76
    adc b
    dec bc
    cp $09
    cp $03
    cp $05
    cp $0b
    cp $01
    cp $01
    cp $01
    cp $fc
    ld [bc], a
    cp $00
    db $fc
    ld [bc], a
    xor b
    ld d, [hl]
    add b
    ld a, a
    add c
    ld a, [hl]
    push bc
    ld a, [hl-]
    adc b
    ld [hl], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    cp a
    ld b, b
    ld l, a
    sub b
    rra
    ldh [rIE], a
    nop
    ld hl, sp+$00
    ret nc

    nop
    ldh [rP1], a
    ret z

    nop
    ldh a, [rP1]
    cp $00
    ld hl, sp+$00
    rra
    ldh [$e1], a
    ld a, [hl]
    ld a, d
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    push af
    ld a, a
    ld h, b
    ld a, a
    jr nz, jr_099_566d

    ld hl, $7f7f
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
    cp a
    ld a, a
    rst $38
    ld a, a
    ld b, d
    dec a
    ld b, b
    ccf
    ld b, c
    ld a, $42
    dec a
    ld b, c
    ld a, $42
    dec a
    ld b, d
    dec a
    ld hl, $033e
    inc a
    jr nz, jr_099_5653

    jr nz, jr_099_5655

    inc [hl]
    ccf
    db $10
    ccf
    inc bc
    inc a
    inc bc
    inc a
    ld bc, $033e
    inc a
    add hl, bc
    ld [hl], $0d
    ld [hl-], a
    ld bc, $093e
    ld [hl], $09
    ld [hl], $10
    cpl
    ld a, [hl+]
    dec d
    jr z, jr_099_5649

    jr z, jr_099_564b

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
    rlca
    rra
    rra
    rra
    rra
    rra
    ccf
    rra
    rra

jr_099_5649:
    rra
    rra

jr_099_564b:
    rra
    ld [$051f], sp
    ld a, $7e
    rst $38
    rst $00

jr_099_5653:
    rst $38
    reti


jr_099_5655:
    rst $38
    db $ec
    rst $38
    ld a, [$fcfc]
    ld hl, sp-$0e
    ldh a, [$e2]
    and $8e
    adc $1e
    sbc [hl]
    ld a, $3e
    cp $7e
    cp $fe
    ld a, [hl]
    cp $fe

jr_099_566d:
    cp $7e
    cp $fe
    cp $fe
    rst $38
    ld a, [hl]
    cp $7e
    cp $7e
    rst $38
    jr c, jr_099_5683

    nop
    nop
    add $f8
    add c
    ld a, [hl]
    add d

jr_099_5683:
    ld a, h
    add [hl]
    ld a, b
    ld d, $68
    ld e, [hl]
    jr nz, jr_099_5709

    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    and c
    ld e, [hl]
    add c
    ld a, [hl]
    xor c
    ld d, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add e
    ld a, h
    ld h, h
    jr @+$46

    jr c, jr_099_56ed

    jr nc, jr_099_56ff

    ld hl, $2153
    ld [hl], c
    inc bc
    ld h, a
    inc bc
    ld h, a
    rlca
    ld a, a
    rlca
    ld l, [hl]
    rrca
    ld c, [hl]
    rra
    ld e, h
    rra
    sbc b
    ccf
    ld a, b
    ccf
    ld a, l
    ld a, a
    ld sp, hl
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    adc a

Jump_099_56d3:
    ld a, h
    di
    ld [bc], a
    ld a, c
    add c
    ld c, h
    or b
    ld [bc], a
    db $fc
    nop
    rst $38

jr_099_56de:
    nop
    rst $38
    ld a, a
    add b
    add c
    cp $fe
    rst $38
    or $ff
    sub e
    db $ec
    sbc e
    db $e4
    xor a

jr_099_56ed:
    ret nc

    ld e, a
    and b
    cpl
    ret nc

    ld e, a
    and b
    ccf
    ret nz

    ld e, a
    and b
    ccf
    ret nz

    ld a, a
    add b
    ld e, a
    and b
    ld a, a

jr_099_56ff:
    add b
    ld a, [hl]
    add b
    rst $38
    nop
    ld a, e
    add b
    cp [hl]
    ld b, b
    ld e, h

jr_099_5709:
    and b
    ld e, h
    and b
    inc a
    ret nz

    ld a, h
    add b
    db $fc
    nop
    ld a, [hl]
    add b
    ld e, [hl]
    and b
    ccf
    ret nz

    ld e, $e0
    inc [hl]
    ret nz

    jr c, jr_099_56de

    ld [hl], h
    add b
    ld a, h
    add b
    cp $00
    ld a, h
    add b
    ld hl, sp+$00
    cp [hl]
    ld b, b
    cp $00
    ccf
    ret nz

    cp a
    ld b, b
    ld a, a
    add b
    rra
    ldh [$5f], a
    and b
    rrca
    ldh a, [$0d]
    ld a, [c]
    ld bc, $0bff
    cp $ea
    rst $30
    jp nz, $82ff

    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ld h, d
    db $fc
    nop
    ld hl, sp+$41
    or b
    ld h, d
    db $e3
    add b
    rlc b
    sbc e
    nop
    dec sp
    add b

jr_099_5759:
    ld a, e
    ld [hl], c
    ei
    jr z, jr_099_5759

    ld e, e
    ei
    ld h, d
    ei
    ld a, b
    ei
    ld a, c
    ei
    ld a, e
    ei
    ld a, c
    ei
    ld a, a
    ei
    ld a, a
    ei
    ld c, l
    ei
    db $ec
    ld a, e
    call c, $bd7b
    ld a, e
    dec l
    ei
    ld d, h
    ei
    push bc
    ld a, e
    ld e, $01
    nop
    nop
    ld a, $c0
    add sp, $7e
    ld e, [hl]
    inc l
    db $76
    inc c
    ld a, b
    ld b, $72
    db $10
    ld [hl], b
    ld [bc], a
    ld h, d
    ld [bc], a
    ld b, d
    ld b, $46
    ld b, $06
    ld c, $0e
    ld c, $0e
    ld e, $3e
    ld e, $7e
    ld a, $3e
    ld a, [hl]
    ld [hl], d
    ld a, [hl]
    ld [$e67e], a
    cp $c6
    cp $ce
    cp $ce
    cp $8e
    cp $0e
    cp $3e
    cp $3e
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $ff
    nop
    rst $38
    nop
    db $fd
    nop
    ret nc

    nop
    cp $00
    cp h
    nop
    sub b
    nop
    ld [bc], a
    nop
    ld l, c
    or $9f
    db $10
    sbc a
    db $10
    rst $08
    ld [$84e7], sp
    ld h, a
    ld b, h
    ld [hl-], a
    inc hl
    add b
    ld a, a
    push af
    nop
    ld c, a
    or b
    and h
    rst $38
    ld b, b
    rst $38
    cpl
    ret nc

    cp a
    ld b, b
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ret c

    nop
    ret nc

    nop
    ld b, b
    nop
    nop
    nop
    ret z

    nop
    add b
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $30
    ld [$c03f], sp
    cp $00
    cp $00
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    ld a, [hl]
    add b
    rst $38
    nop
    ld [hl], a
    adc b
    ld a, a
    add b
    scf
    ret z

    inc de
    xor $1b
    cp $e7
    ld a, [$fea3]
    ld [hl+], a
    cp $b0
    db $fc
    ld [hl], b
    ld a, [$e270]
    pop bc
    jp z, $9a81

    ld bc, $013a
    ld a, [hl-]
    ld hl, $2a9a
    sub b
    dec sp
    add b
    cp e
    nop
    cp e
    nop
    cp e
    nop
    cp e
    nop
    dec sp
    add b
    or c
    ld a, [bc]
    add hl, hl
    sub d
    add $bb
    adc $bb
    add $bb
    sbc $bb
    rst $18
    cp e
    sbc $bb
    db $dd
    cp e
    rst $18
    cp e
    di
    sbc a
    db $e3
    sbc a
    ld c, a
    sub a
    rst $00
    sbc a
    rst $18
    adc a
    rst $28
    sbc a
    rst $38
    rra
    dec de
    rlca
    nop
    nop
    pop af
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
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    cp a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    cp $7f
    ei
    ld a, [hl]
    ei
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    cp a
    ld a, [hl]
    cp a
    ld a, [hl]
    cp l
    ld a, [hl]
    or [hl]
    ld a, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc l
    nop
    inc d
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    dec bc
    db $f4
    rst $38
    nop
    rst $30
    nop
    ld b, h
    nop
    cp $00
    rst $38
    nop
    jp nz, Jump_000_003d

    rst $38
    ld b, b
    nop
    or a
    ld c, b

jr_099_58e4:
    nop
    rst $38
    rst $30
    ld [$00ff], sp
    ld a, a
    nop
    ld a, e
    nop
    jp nz, $ff00

    nop
    rst $38
    nop
    cp a
    ld b, b
    db $fd
    nop
    db $fd
    nop
    add sp, $00
    db $dd
    nop
    db $ec
    nop
    rla
    add sp, $4b
    or h
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    ld a, l
    add d

jr_099_590c:
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
    rrca
    ldh a, [$d3]
    inc l
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

    ccf
    ret nz

    rlca
    ld hl, sp+$0e
    pop af
    ld [bc], a
    db $fd
    add hl, bc
    db $fc
    ret nz

    ld hl, sp+$53
    ldh [$63], a
    ret z

    inc bc
    ret c

    ld hl, $891a
    ld a, [hl-]
    sbc e
    jr c, jr_099_58e4

    jr jr_099_58e4

    jr @-$54

    add hl, de
    sub c
    dec sp
    sub c
    dec sp
    add d
    add hl, sp
    add d
    add hl, sp
    and c
    jr jr_099_590c

    nop
    xor d
    db $10
    cp d
    ld [bc], a
    or [hl]
    ld [bc], a
    adc [hl]
    ld [hl], $b6
    ld c, $8c
    ccf
    sbc h
    ccf
    sbc $3d
    db $fd
    inc a
    cp l
    ld a, h
    rst $38
    ld a, l
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    cp $fb
    db $fd
    ld hl, sp-$04
    ei
    rst $38
    ei
    ei
    rst $38
    di
    rst $38
    ei
    rst $30
    db $fd
    ldh a, [rIE]
    db $f4
    rst $30
    rst $38
    add hl, bc
    rlca
    add b
    nop
    ld sp, hl
    cp $f8
    rst $30
    push af
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $18
    rst $28
    rst $18
    ld a, [c]
    push de
    push hl
    ret nc

    cp h
    rst $18
    rst $18
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $30
    cp a
    ld [hl], e
    and b
    cp d
    ld h, b
    ei
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    set 7, a
    di
    jp z, $fae2

    cp $ff
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
    ld b, h
    cp e
    cp $01
    rst $38
    nop
    rst $28
    nop
    and [hl]

jr_099_59cf:
    nop
    rst $38
    nop
    rst $38

jr_099_59d3:
    nop
    ld d, [hl]

jr_099_59d5:
    nop
    dec hl
    nop
    or a
    nop
    rst $38
    nop
    ld a, [hl+]
    push de
    nop
    rst $38
    ld e, a
    nop
    ld [c], a
    dec e
    add hl, bc
    or $ff
    nop
    rst $08
    nop
    add a
    nop
    add d
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
    inc bc
    db $fc
    ld [bc], a
    db $fd
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
    cp a
    ld b, b
    ld e, [hl]
    and c
    xor a
    ld d, b
    db $d3
    inc c
    nop
    rst $18
    db $10
    rst $08
    nop
    rst $18
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    jr nz, jr_099_59cf

    and b
    sbc a
    jr nz, jr_099_59d3

    jr nz, jr_099_59d5

    and b
    rra
    ccf
    ld e, a
    rra
    ld a, a
    scf
    ld e, a
    ld sp, $6e5f
    ld de, $ff16
    cp a
    rst $38
    add sp, -$69
    ld a, a
    add b
    ret


    nop
    and c
    cp $ff
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    add l
    ld b, d
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or c
    ld c, a
    ld [hl], d
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc e
    ld [hl], a
    sub b
    ld h, e
    cp $ff
    rst $38
    rst $38
    ld de, $c00f
    nop
    nop
    rst $38
    db $db
    daa
    rst $20
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
    ld c, a
    scf
    inc b
    cp $fc
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
    inc e
    ccf
    sbc b
    inc a
    ei
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
    ld e, a
    ccf

jr_099_5aa8:
    ld e, $19
    ret c

    jr c, jr_099_5aa8

    db $fc
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
    ld a, [$ff05]
    nop
    ld l, d
    nop
    dec de
    dec de
    db $e4
    inc b
    db $e4
    inc b
    db $e4
    inc b
    db $e4
    inc b
    db $e4

jr_099_5ac9:
    inc b
    ld h, h
    add h
    ccf
    ret nz

    rrca
    ldh a, [$f8]
    rlca
    nop
    rst $38
    sub a
    ld l, b
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    ld l, l
    nop
    ld b, c
    nop
    ccf
    ret nz

    cp $01
    cp $01
    rst $38

jr_099_5ae7:
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, a
    nop
    ld l, a

jr_099_5aef:
    nop
    jr z, jr_099_5ac9

    xor h
    ld d, e
    db $fc
    inc bc
    xor [hl]
    ld d, c
    ld c, h
    or e
    ld l, [hl]
    sub c
    or c
    ld c, [hl]
    db $fc
    inc bc
    rst $30
    ld [$857a], sp
    db $fc
    inc bc
    jr nz, jr_099_5ae7

    inc b
    ei
    rst $28
    db $10
    rst $28
    db $10
    db $eb
    inc d
    db $fd
    ld [bc], a
    ld a, [$e405]
    dec de
    ld h, b
    sbc a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    jr nc, jr_099_5aef

    nop
    nop
    nop
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
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld b, b
    rst $38
    ld c, e
    rst $38
    ld b, b
    cp a
    db $10
    rst $28
    dec b
    ld a, [bc]
    pop hl
    ld [$fe01], sp
    ldh a, [rIF]
    rla
    nop
    inc bc
    nop
    add b
    nop
    add hl, bc
    or $f1
    rst $38
    rst $38
    rst $38
    inc e
    inc bc
    ld bc, $d000
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    adc a

jr_099_5b61:
    nop
    ei
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    inc e
    inc bc
    ld [c], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, $c00f
    nop
    jr c, jr_099_5b61

    ld hl, sp+$07
    ret c

    rst $20
    ei
    rst $20
    db $e3
    rst $20
    db $e3
    rst $20
    rst $20
    db $e3
    inc hl
    rst $20
    ld bc, $8607
    nop
    rst $20
    ldh [$e7], a
    rst $20
    rst $28
    rst $20
    db $eb
    rst $20

jr_099_5b94:
    rst $38
    rst $20
    ccf
    rst $20
    dec e
    inc bc
    jr jr_099_5b9c

jr_099_5b9c:
    sbc h
    ldh [rIE], a
    rst $20
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    inc bc
    rra
    nop
    jr jr_099_5b94

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
    db $fd
    ld [bc], a
    ld e, a
    nop
    cpl
    nop
    dec c
    nop
    ld bc, $0700
    nop
    dec bc
    nop
    rla
    nop
    ld l, $01
    ld b, b
    ccf
    nop
    rst $38
    inc bc
    rst $38
    add hl, sp
    rst $38
    rst $28
    db $10
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
    dec l
    nop
    dec b
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [$0000], sp
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
    call c, $ff23
    nop
    rst $30
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
    nop
    add b
    nop
    ld a, a
    add b
    rst $38
    rst $38
    ld l, a
    rst $38
    ld [bc], a
    rst $38
    ld d, b
    xor a
    call nz, $903b
    ld l, a
    inc bc
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rrca
    nop
    ld a, a
    add b
    ld b, b
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $01
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    ld e, [hl]
    ld bc, $f807
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    rlca
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    rlca
    ret nz

    nop
    db $fc
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    nop
    pop hl
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
    rst $20
    rra
    rra
    nop
    dec a
    ret nz

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
    ccf
    rrca
    inc bc
    nop
    call z, $e033
    rra
    ld e, b
    and a
    or l
    ld c, d
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    ld bc, $0000
    nop
    rlca
    nop
    rla
    nop
    ld a, [hl]
    ld bc, $007f
    ret c

    daa
    ret z

    scf
    rrca
    rst $38
    rst $38
    rst $38
    adc d
    rst $38
    ld d, b
    xor a
    db $db
    inc h
    ei
    inc b
    ei
    inc b
    cp $01
    cp $01
    rst $38
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
    ccf
    nop
    rst $18
    nop
    ld e, a
    nop
    cpl
    nop
    rrca
    nop
    ld c, a
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld a, a
    nop
    ld a, a
    nop
    dec de
    nop
    dec bc
    nop
    ld [bc], a
    nop
    nop
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
    db $fd
    ld [bc], a
    reti


    ld [hl+], a
    reti


    ld [hl+], a
    reti


    ld [hl+], a
    reti


    ld [hl+], a
    ld sp, hl
    ld [hl+], a
    ld sp, hl
    ld [hl+], a
    ld sp, hl

jr_099_5d1f:
    ld [hl+], a
    cp d
    ld h, c
    cp d
    ld h, c
    xor e
    ld [hl], b
    xor d
    ld [hl], c
    jr z, jr_099_5d1f

    db $fc
    db $fd
    db $fc
    db $fd
    db $f4
    db $fd
    ld [hl], l

jr_099_5d31:
    db $fc
    jr jr_099_5d31

    ld [$7cfd], sp
    db $fd
    inc a
    db $fd
    ldh [rNR33], a
    rst $30
    jr @-$07

    ld [$fe19], sp
    di
    cp $fa
    cp $7f
    cp $e3
    ld e, $0a
    cp $ff
    cp $ff
    cp $ff
    cp $7f
    cp $f5
    ld c, $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
    rlca
    ret nz

    nop
    ld sp, hl
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
    rra
    rst $38
    scf
    rst $08
    and $ff
    rst $38
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
    di
    rrca
    cpl
    db $d3
    rst $38
    rst $38
    rst $38
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
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    add sp, $17
    cp $01
    cp $01
    db $fc
    inc bc
    db $f4
    dec bc
    ldh a, [rIF]
    ld [bc], a
    db $fd
    inc de
    db $fc
    rlca
    ld hl, sp+$4f
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    cp e
    ret nz

    dec sp
    ret nz

    add hl, sp
    ret nz

    ld a, c
    add b
    ld b, c
    add b
    ld b, c
    add b
    ld b, c
    add b
    cp [hl]
    pop bc
    cp [hl]
    pop bc
    ld a, [hl]
    add c
    ld a, a
    add b
    rst $38
    add b
    ld d, [hl]
    add c
    ld d, [hl]
    add c
    ld b, [hl]
    add c
    ld b, [hl]
    add c
    rst $00
    nop
    inc bc
    add b
    jp nz, $8601

    ld bc, $0186
    add [hl]
    ld bc, $018e
    adc [hl]
    ld bc, $018e
    adc [hl]
    ld bc, $038c
    adc h
    inc bc
    xor h
    inc bc
    inc c
    inc bc
    ld d, $01
    ld b, $01
    ld c, $01
    ld c, $01
    inc c
    inc bc
    ld c, $01
    inc b
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    ld [$1807], sp
    rlca
    sbc b
    rlca
    sbc b
    rlca
    jr @+$09

    ret c

    rlca
    ldh a, [rIF]
    ld c, $01
    ld c, $01
    ld c, $01
    inc e
    inc bc
    inc e
    inc bc
    inc d
    dec bc
    jr @+$09

    jr nc, jr_099_5e3f

    jr c, jr_099_5e39

    ld [hl], b
    rrca
    jp nc, $922f

    cpl
    ret z

jr_099_5e39:
    ccf
    ld b, [hl]
    cp a
    adc [hl]
    rst $38
    xor a

jr_099_5e3f:
    rst $38
    cp a
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_099_5e66:
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld sp, $800f
    nop
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
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

jr_099_5e82:
    rst $38
    cp a
    rst $38
    cp a
    sbc a
    rst $38
    cp a
    rst $18
    cp a
    rst $18
    rst $38
    rst $18

jr_099_5e8e:
    rst $38
    rst $18

jr_099_5e90:
    ccf
    rst $18
    rra
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
    rst $28
    rst $18
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, [hl]
    cp a

jr_099_5eb4:
    ld e, [hl]
    cp a

jr_099_5eb6:
    ld [de], a
    rst $38
    ld a, [bc]
    rst $38
    sbc l
    ld a, a
    add b
    ld a, a
    add h
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a

jr_099_5ecc:
    ret nz

    ccf
    ret nz

    ccf
    pop bc
    ld a, $c2
    dec a
    pop bc
    ld a, $c5
    ld a, [hl-]
    ret nz

    ccf
    jp nc, $c72d

    jr c, jr_099_5e66

    ld a, b
    rst $20
    jr @-$0f

    db $10
    db $d3
    inc l
    rst $20
    jr jr_099_5e90

    ld e, b
    rst $00
    jr c, jr_099_5eb4

    jr c, jr_099_5eb6

    jr c, jr_099_5eb6

    jr c, jr_099_5e82

    ld [hl], b
    add a
    ld a, b
    adc a
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [rTMA]
    ld sp, hl
    add e
    ld a, h
    call nc, $c72b
    jr c, jr_099_5ecc

    jr c, jr_099_5e8e

    ld a, b
    rrca
    ldh a, [$9f]
    ld h, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR34], a
    ldh [$1f], a
    ldh [rNR34], a
    ldh [$1f], a
    ldh [rNR30], a
    db $e4
    ld e, $e0
    rra
    ldh [$2e], a
    ret nc

    rla
    add sp, -$71
    ldh a, [rNR22]
    add sp, $17
    add sp, -$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$7d
    db $fc
    add a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$69
    ld hl, sp-$6d
    db $fc
    sub e
    db $fc
    or a
    ld hl, sp-$49
    ld hl, sp-$29
    ld hl, sp-$1b
    ld a, [$fcf3]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    jr nc, jr_099_5f7d

    nop
    nop
    or $f8
    ld sp, hl
    di
    ld sp, hl
    di
    ld a, [$fbf3]
    di
    ei
    di
    rst $28

jr_099_5f7d:
    di
    rst $28
    di
    rst $28
    di
    db $eb
    rst $30
    db $e3
    rst $30
    ei
    rst $20
    ei
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $30
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $10
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    add sp, -$01
    ldh [rIE], a
    pop af
    cp $c1
    cp $c3
    db $fc
    jp $87fc


    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp-$51
    ret nc

    rrca
    ldh a, [$2f]
    ret nc

    rrca
    ldh a, [$5f]
    and b
    ld a, [hl]
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, b
    add b
    or b
    ld b, b
    ld [hl], h
    add b
    ld b, b
    and b
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    add b
    ld h, b
    add b
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    pop hl
    nop
    ret nz

    nop
    ret nz

    nop
    ret nc

    nop
    ret nc

    nop
    ldh a, [rP1]
    ld sp, $f9c0
    nop
    ret nz

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
    ld bc, $06fe
    ld sp, hl
    ld a, [bc]
    push af
    ld c, $f1
    inc c
    di
    inc c
    di
    ld [$10f7], sp
    rst $28
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop

Jump_099_603c:
    ret nz

    nop
    ret nz

    nop
    ld [$0000], sp
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld h, b
    nop
    ldh [rP1], a
    pop hl
    nop
    ld [c], a
    nop
    rst $30
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, jr_099_6077

    ret nz

    nop
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38

jr_099_6077:
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
    ldh [rIE], a
    ldh a, [rIE]
    db $f4
    rst $38
    db $f4
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
    cp $00
    cp $00
    cp $00
    push af
    nop
    db $ec
    nop
    add $00
    db $ec
    nop
    and b
    nop
    add b
    nop
    add b
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_099_60c8

jr_099_60c8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld [bc], a
    nop
    stop
    halt
    cpl
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop

Call_099_60ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_099_6116

jr_099_6116:
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
    inc b
    nop
    add hl, bc
    nop
    ld bc, $0100
    nop
    ld bc, $0500
    nop
    ld bc, $c500
    nop
    dec b
    nop
    rlca
    nop
    rlca
    nop
    dec bc
    nop
    inc bc
    nop
    dec b
    nop
    dec bc
    nop
    adc a
    nop
    ld e, a
    nop
    rst $18
    nop
    cp a
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
    ld l, a
    sub b
    ld h, b
    rra
    ret nz

    nop
    ld hl, sp-$79
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    ret c

    rst $38
    add sp, -$01
    ldh [rIE], a
    db $fc
    rst $38
    ld a, [$fcff]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    nop
    cp a
    nop
    ld [hl], a
    nop
    rlca
    nop
    inc bc
    nop
    rrca
    nop
    dec hl
    nop
    dec de
    nop
    inc bc
    nop
    scf
    nop
    ccf
    nop
    ld a, a
    nop
    rla
    nop
    db $ed
    nop
    rst $20
    nop
    dec c
    nop
    inc bc
    nop
    dec h
    nop
    inc b
    nop
    inc b
    nop
    ld [$b900], sp
    nop
    ld hl, $1100
    nop
    ld hl, $0100
    nop
    stop
    ld bc, $0100
    nop
    ld bc, $0500
    nop
    ld bc, $0300
    nop
    rla
    nop
    rla
    nop
    rrca
    nop
    dec bc
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    dec e
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    cpl
    nop
    or a
    nop
    cp a
    nop
    rst $30
    ld [$0738], sp
    rla
    nop
    rla
    nop
    daa
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    cpl
    nop
    cpl
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    ld e, a
    nop
    ld a, a
    nop
    ld e, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $28
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
    rst $38
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
    db $fc
    inc bc
    db $fc
    inc bc
    ret nz

    ccf
    ret c

    daa
    ld [$e917], a
    ld d, $c3
    inc a
    add $39
    rst $30
    ld [$0af5], sp
    ld hl, sp+$07
    db $ec
    inc de
    add sp, $17
    sub $29
    and d
    ld e, l
    and b
    ld e, a
    ld a, [hl]
    rst $38
    ld [hl], b
    rrca
    ld h, b
    add b
    ld hl, sp-$01
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld b, c
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld hl, $33ff
    rst $38
    ld [de], a
    rst $38
    sbc h
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
    ld d, $08
    rla
    ld [$0808], sp
    jr jr_099_62c7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_099_62d7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_099_62e7

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_099_62f7

    ld [hl-], a

jr_099_62c7:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_099_6307

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    dec a

jr_099_62d7:
    ld b, d
    ld b, e
    dec a
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

jr_099_62e7:
    ld d, c
    ld d, d
    dec a
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

jr_099_62f7:
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

jr_099_6307:
    ld [hl], b
    ld [hl], c
    ld [hl], d
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
    dec a
    ld b, [hl]
    add d
    db $76
    dec a
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
    dec a
    dec a
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
    dec a
    dec a
    dec a
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
    ld [$3daa], sp
    dec a
    dec a
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
    ld [$b7b6], sp
    dec a
    add c
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
    jp nz, $c316

    call nz, $c53d
    add $c7
    ret z

    cp e
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
    ld [$1211], sp
    inc de
    inc d
    dec d
    ld d, $16
    ld [$1708], sp
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_099_63f1

    ld bc, $0401
    inc b
    ld bc, $0404
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0401
    ld bc, $0401
    ld bc, $0101
    ld bc, $0002
    nop
    ld [bc], a

jr_099_63f1:
    ld bc, $0202
    ld bc, $0402
    inc b
    ld bc, HeaderLogo
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    jr nz, jr_099_645c

jr_099_645c:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    rlca
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
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
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
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
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
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $0000
    ld bc, $0101
    ld [bc], a
    inc b
    ld [bc], a
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
    ld bc, $0101
    ld [bc], a
    inc b
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101

jr_099_64e3:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
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
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0109
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc

jr_099_650a:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    nop
    rst $38
    nop

jr_099_6514:
    sbc $21
    sbc $21
    rst $38

jr_099_6519:
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38

jr_099_6525:
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_099_650a

    jr nz, jr_099_6514

    jr jr_099_64e3

    ld c, e
    ld sp, hl
    ld b, $f0
    rrca
    cp l
    ld b, d
    ccf
    ret nz

    jr nz, jr_099_6519

    nop
    rst $38
    jr jr_099_6525

    db $ed
    ld [bc], a
    push af
    ld [bc], a
    or $01
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
    rst $38
    nop
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
    cp $01
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $ff
    nop
    ei
    inc b
    rra
    nop
    ccf
    nop

jr_099_6568:
    rra
    nop

jr_099_656a:
    dec e
    ld [bc], a
    dec de
    inc b
    rra
    nop
    dec e
    ld [bc], a
    dec de
    inc b
    rra
    nop
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    db $fd
    ld [bc], a
    ccf
    ret nz

    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_099_6568

    jr nz, jr_099_656a

    jr nz, @+$01

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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    ld [hl+], a
    rst $18
    jr nz, @+$01

    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld l, e
    sub h
    dec bc
    db $f4
    dec d
    ld [$f807], a
    rra
    ldh [$1f], a
    ldh [rNR31], a
    db $e4
    rla
    add sp, $0b
    db $f4
    ld [bc], a
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_099_65e7:
    nop
    add b
    nop
    ld [hl], b

jr_099_65eb:
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld sp, $38c0
    ret nz

    rra
    ldh [$1f], a
    ldh [rNR33], a
    ldh [$1f], a
    ldh [$df], a
    ldh [$1f], a
    ldh [$ee], a
    pop af
    ld h, d
    db $fd
    inc bc
    rst $38
    db $10
    rst $28
    and b
    ld e, a
    nop
    rst $38
    db $10
    rst $28
    swap h
    adc b
    ld [hl], a
    sub d
    ld l, l
    jr nc, jr_099_65e7

    ld d, b
    xor a
    or d
    ld c, l
    ld a, b
    add a
    add sp, $17
    or $09
    jr c, jr_099_65eb

    ret c

    daa
    ld l, h
    sub e
    ld b, b
    cp a
    ret nz

    ccf
    ld h, b
    sbc a
    sub b
    ld l, a
    rst $38
    nop
    rst $28
    nop
    daa
    nop
    ld a, a
    nop
    ldh a, [rIF]
    ei
    inc b
    sbc l
    nop
    ccf
    nop
    ret nz

    ccf
    ret nc

    cpl
    pop bc
    ld a, $c0
    ccf
    or $09
    cp $01
    xor $11
    rst $30
    ld [$00ff], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
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
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $30
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
    db $fd
    ld [bc], a
    cp l
    ld b, d
    db $fd
    ld [bc], a
    jp z, Jump_099_5135

    nop
    call $df00
    nop
    ei
    nop
    cp e
    nop
    dec sp
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    add b
    nop
    add b
    nop

jr_099_66bc:
    ret c

    nop
    add sp, $00
    ld a, h
    add b
    cp $00
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [rSB]
    cp $19
    and $70
    adc a
    ld a, [hl]
    ld bc, $017e
    sbc $01
    sub d
    ld bc, $01de
    sbc $01
    cp $01
    rst $38
    nop
    ld b, b
    cp a
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    ld b, b
    cp a
    nop
    rst $38
    ld d, b
    xor a
    ld de, $7fee
    nop
    rst $38
    nop
    cp a
    nop
    ldh [$1f], a
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $10
    jr nz, jr_099_66bc

    nop
    ld bc, $1500
    nop
    add [hl]
    nop
    ld [bc], a
    nop
    rst $38
    nop
    db $e4
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$0800], sp
    nop
    inc h
    ld bc, $0009
    ld bc, $0200
    nop
    rlca
    nop
    nop
    nop

jr_099_6730:
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
    cp l
    ld [bc], a
    cp a
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    ccf
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    jp c, $f325

    inc c
    ld e, e
    and h
    rst $38
    nop
    cp $01
    cp h
    inc bc
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
    cp $01
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38

jr_099_6785:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a

jr_099_678e:
    rst $18
    jr nz, jr_099_6730

    ld h, b
    daa
    ret c

    rst $20
    jr jr_099_678e

    ld [$18e7], sp
    db $eb
    inc d
    ld c, l
    or d
    inc h
    db $db
    ld [$90f7], sp
    ld l, a
    jr nz, jr_099_6785

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld b, b
    cp a
    add b
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    rst $20
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ld e, a
    and b
    ld bc, $20fe
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
    adc b
    ld a, a
    ld [$80ff], sp
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ld a, a
    ld l, b
    ld a, a
    ld c, a
    ld a, a
    ld c, d
    ld a, a
    jr nc, jr_099_687f

    jr nz, jr_099_6881

    nop
    ld a, a
    nop
    ld a, a
    ld [hl+], a
    ld a, a
    jr nz, jr_099_6889

    jr nz, jr_099_688b

    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
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
    rst $18
    ccf
    rst $18
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    xor a
    ld e, a
    ld c, a
    cp a
    rst $28
    rra
    ld l, a
    sbc a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    cpl
    rst $18
    rrca
    rst $38
    rlca
    rst $38
    and a
    ld e, a
    rst $20
    rra
    and a
    ld e, a
    ld [hl], a
    adc a
    or a
    ld c, a
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
    sub a

jr_099_687f:
    ld l, a
    or a

jr_099_6881:
    ld c, a
    rst $30
    rrca
    rst $10
    cpl
    rst $10
    cpl
    db $d3

jr_099_6889:
    cpl
    di

jr_099_688b:
    rrca
    di
    rrca
    ld [hl], e
    adc a
    jp $833f


    ld a, a
    db $d3
    cpl
    jp $c33f


    ccf
    ld b, e
    cp a
    ld b, e
    cp a
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, e
    cp a
    ld b, e
    cp a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    ld bc, $0103
    jp $ff01


    ld bc, $03fc
    db $fc
    inc bc
    inc e
    inc bc
    ld b, $01
    ld e, d
    ld bc, $012b
    ld l, $01
    ld a, $01
    cp d
    ld bc, $01a6
    cp $01
    cp $01
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    ld a, [$dfff]

Call_099_68ff:
    rst $38
    rlca
    rst $38
    inc l
    rst $38
    db $10
    rst $38
    jr z, @+$01

    jr nz, @+$01

    jr nc, @+$01

    ld de, $02ff
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $01ff
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
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld bc, $10ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    ld [$20ff], sp
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
    add b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $00ff
    rst $38
    dec b
    cp $0b
    db $fc
    sub a
    ld hl, sp+$2f
    ldh a, [rP1]
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
    nop
    rst $38
    inc b
    rst $38
    ld [de], a
    rst $38
    dec d
    rst $38
    inc e
    rst $38
    ld d, c
    rst $38
    inc b
    rst $38
    ld d, $ff
    ld c, $ff
    ld h, $ff
    ld e, $ff
    inc h
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    cp $ff
    ccf
    rst $38
    rlca
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc l
    rst $38
    inc a
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld [$04ff], sp
    rst $38
    ld [$09ff], sp
    rst $38
    ld hl, $10ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    ld bc, $0cff
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    and b
    rst $38
    and b
    rst $38
    jr nc, @+$01

    jr c, @+$01

    ld b, b
    rst $38
    ld h, b
    rst $38
    sub b
    rst $38
    db $10
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
    ld bc, $10ff
    rst $38
    db $10
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $35ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld a, [bc]
    rst $38
    adc l
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld b, $ff
    dec c
    cp $0b
    db $fc
    inc d
    ei
    inc l
    di
    ld e, d
    push hl
    sbc b
    rst $20
    ld a, l
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
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    jr z, @+$01

    inc c
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    ld c, [hl]
    rst $38
    jp c, $faff

    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    add hl, de
    rst $38
    ld [$68ff], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    adc b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld hl, $01ff
    rst $38
    ld hl, $10ff
    rst $38
    jr z, @+$01

    jr nz, @+$01

    ld a, [bc]
    rst $38
    ld [de], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [$20ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $20ff
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
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    dec l
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $00ff
    rst $38
    ld bc, $24ff
    rst $38
    and h
    rst $38
    inc c
    rst $38
    inc d
    rst $38
    add hl, bc
    rst $38
    ld bc, $80ff
    rst $38
    ld bc, $0aff
    rst $38
    add hl, bc
    rst $38
    ld bc, $01ff
    rst $38
    ld [$0aff], sp
    rst $38
    daa
    rst $38
    ld bc, $6bff
    rst $38
    jp hl


    rst $38
    xor l
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    di
    rst $38
    rst $30
    rst $38
    db $eb
    rst $38
    xor $ff
    call c, $f8ff
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$ef], a
    db $10
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
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    add b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    ld b, h
    rst $38
    ld [$daff], a
    rst $38
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_099_6c00:
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, d
    rst $38
    add hl, bc
    rst $38
    ld a, [bc]
    rst $38
    jr @+$01

    sbc l
    rst $38
    sub $ff
    sbc a
    rst $38
    ld hl, $42ff
    rst $38
    ld b, c
    rst $38
    or e
    rst $38
    inc de
    rst $38
    ld c, c
    rst $38
    db $dd
    rst $38
    set 7, a
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
    dec b
    ld a, [$e01f]
    ld a, h
    add e
    ld hl, sp+$07
    ld hl, sp+$07
    rst $30
    ld [$01fe], sp
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

    ccf
    ret nz

    dec de
    db $e4
    rra
    ldh [rNR31], a
    db $e4
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    scf
    ret z

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rTAC], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0c
    ldh a, [rSC]
    ld hl, sp+$00
    ld a, [$fa04]
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$05
    ld hl, sp+$00
    db $fc
    ld [bc], a
    db $fc
    nop
    cp $02
    db $fc
    nop
    cp $01
    cp $81
    cp $01
    cp $01
    cp $89
    db $76
    ld c, [hl]
    or c
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$0d]
    ld a, [c]
    ld a, a
    add b
    ret nz

    ld a, a
    rst $18
    ld h, b
    ret nc

    ld h, b
    ret c

    ld h, b
    rst $18
    ld h, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    ld b, c
    cp [hl]
    ld hl, $01de
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
    rst $38
    ld bc, $01fe
    cp $04
    ei
    ld bc, $80fe
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld [$02ff], sp
    rst $38
    ld a, [hl+]
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c1fe
    ld a, $49
    or [hl]
    ld a, h
    add e
    ld a, [c]
    dec c
    add d
    ld a, l
    and $19
    cp d
    ld b, l
    ld a, b
    add a
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0e]
    ldh a, [rNR34]
    ldh [$1f], a
    ldh [$5e], a
    and b
    ccf
    ret nz

    ld a, a
    add b
    ld [hl], a
    adc b
    xor $10
    cp $00
    ld a, [hl]
    add b
    cp [hl]
    ld b, b
    ld bc, $00fe
    rst $38
    ld bc, $01fe
    cp $0f
    rst $38
    rrca
    ld hl, sp+$0c
    ld hl, sp+$0e
    ld hl, sp+$0f
    cp $09
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$09ff], sp
    cp $09
    cp $0a
    db $fd
    dec bc
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    ld a, [bc]
    db $fc
    ld a, [bc]
    db $fc
    db $fc
    ld [$e81c], sp
    ld e, h
    jr z, jr_099_6dd3

    jr z, @-$22

    jr z, jr_099_6df7

    add sp, -$04
    ret z

    db $fc
    ld [$fc0b], sp
    dec bc
    db $fc
    dec b
    cp $05
    cp $04
    cp $04
    cp $05
    cp $05
    cp $80
    inc b
    add b

jr_099_6dd3:
    inc b
    add b
    inc b
    ldh [rDIV], a
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    inc b
    ldh [rDIV], a
    ld a, b
    add h
    ret c

    inc h
    cp b
    ld b, h
    cp d
    ld b, h
    cp d
    ld b, h
    ld d, d

jr_099_6deb:
    xor h
    ld a, [hl-]
    call nz, $c43b
    ld a, c
    add [hl]
    ld e, c
    and [hl]
    add hl, hl

jr_099_6df5:
    sub $39

jr_099_6df7:
    add $3b
    call nz, $d42b
    ld a, [bc]
    db $f4
    add hl, bc
    or $0f
    rst $30
    rrca
    db $f4
    ld b, a
    cp e
    rlca
    rst $38
    rrca
    db $fc
    dec c
    ld a, [c]
    inc bc
    db $fc
    rrca
    ldh a, [$08]
    rst $30
    jr z, jr_099_6deb

    jr nz, jr_099_6df5

    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
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
    ret c

    daa
    ld hl, sp+$07
    db $fc
    inc bc
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $e3
    db $10
    db $e3
    db $10
    push hl
    db $10
    db $e4
    db $10
    ldh [rNR10], a
    add sp, $10
    ld hl, sp+$04
    db $fd
    ld [bc], a
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    jr @+$01

    inc b
    rst $20
    add e
    ld a, c
    ldh [$1f], a
    ld hl, sp+$0f
    or $87
    ld a, c
    pop hl
    ld e, $7c
    add e
    adc a
    ld [hl], b
    pop af
    ld c, $fe
    ld bc, $00ff
    dec sp
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    ld hl, $2100
    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, bc
    nop
    add hl, hl
    nop
    ld bc, $2100
    nop
    ld bc, $ab00
    nop
    dec l
    nop
    db $ed
    nop
    adc c
    nop
    rrca
    nop
    add b
    nop
    add e
    nop
    rst $38
    rrca
    rst $38
    nop
    adc a
    ld h, b
    ld l, a
    add b
    rst $28
    nop
    rst $28
    nop
    xor $01
    add sp, $07
    add sp, $07
    add a
    nop
    add $01
    and $01
    and $01
    xor $01
    add sp, $07
    add sp, $07
    ld hl, sp+$07
    ld hl, sp+$06
    ld hl, sp+$01
    ld [hl], b
    add a
    ld b, $cf
    inc d
    sbc a
    db $10
    ccf
    jr c, jr_099_6f55

    and b
    rst $38
    sbc a
    ld b, b
    ccf

jr_099_6ee3:
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, [hl]
    add c
    ld [hl-], a
    call $bf40
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_099_6ee3

    ld e, h
    and e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ldh a, [rIF]
    jr nz, jr_099_6f93

    ldh a, [rIF]
    ld a, [$7405]
    dec bc
    rst $30
    ld [$007f], sp
    ld [hl], a
    ld [$7f80], sp
    add b
    ld a, a
    add b
    rst $38
    ldh [$7f], a
    ld d, b
    ccf
    ldh a, [$9f]
    ld [hl], b
    ld a, a
    sub b
    rra
    ld d, b
    sbc a
    sub b
    rra
    db $10

jr_099_6f55:
    sbc a
    ret nc

    rra
    sub b
    rra
    sub b
    rra
    sub b
    rra
    sub b
    rra
    sub b
    rra
    sub b
    rra
    sub b
    rra
    sub b
    rra
    sub b
    rra
    sub b
    rra
    sub b
    rra
    sub b
    ccf
    or b
    rra
    or b
    rra
    sub b
    ccf
    sub b
    ccf
    sub b
    ccf
    ret nc

    ccf
    ret nc

    ccf
    db $10
    cp a
    ccf
    db $10
    ld a, $11
    ld a, $11
    ld e, $31
    inc a

jr_099_6f89:
    inc de
    inc e
    inc sp
    jr jr_099_6fc5

    jr jr_099_6fc7

    db $10
    ccf
    db $10

jr_099_6f93:
    ccf
    ld d, c
    ccf
    push de
    ccf
    db $dd
    ccf
    sbc $3f
    db $fd
    rra
    jr c, jr_099_6fdf

    rrca

jr_099_6fa1:
    or b
    ld e, a
    and b
    rrca
    ldh a, [$bf]
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
    di
    inc c
    db $eb
    inc d
    ld e, c
    and [hl]
    inc de
    db $ec
    nop

jr_099_6fbb:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_099_6fc0:
    nop
    rst $38
    nop
    rst $38
    nop

jr_099_6fc5:
    rst $38
    nop

jr_099_6fc7:
    rst $38
    jr z, jr_099_6fa1

    jr nc, @-$2f

    nop

jr_099_6fcd:
    rst $38
    nop

jr_099_6fcf:
    rst $38
    jr nz, jr_099_6fd2

jr_099_6fd2:
    ret nc

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    rst $38

jr_099_6fdf:
    nop
    ld a, a
    add b
    ccf
    ret nz

    adc d
    ld [hl], l
    add b

jr_099_6fe7:
    ld a, a
    add a
    ld a, b
    add $30
    ret c

    jr nz, jr_099_6fc7

    jr nz, jr_099_6f89

    ld h, b
    ret nc

    jr nz, jr_099_6fc5

    jr nz, jr_099_6fe7

    nop
    ret nc

    jr nz, jr_099_6fbb

    jr nz, jr_099_6fcd

    jr nz, jr_099_6fcf

    jr nz, @-$2e

    jr nz, jr_099_7053

    jr nz, jr_099_6fc5

    jr nz, jr_099_7047

    jr nz, jr_099_7069

    nop
    ld b, b
    jr nz, jr_099_706d

    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld d, b
    jr nz, jr_099_7075

    nop
    ret nz

    jr nz, @-$3e

    jr nz, jr_099_707b

    nop
    ldh [rP1], a
    ret nz

    jr nz, jr_099_6fc0

    ld h, b
    sbc a
    ld h, b
    sbc [hl]
    ld h, b
    sbc [hl]
    ld h, b
    sbc l
    ld h, b
    sub d
    ld h, b
    ld e, $e0
    rra
    ldh [$9d], a
    ld h, b
    dec e
    ldh [rNR23], a
    ldh [rNR31], a
    ldh [rNR33], a
    ldh [$1f], a
    ldh [$3f], a
    ldh [rNR41], a
    rst $38
    ld a, a
    ldh [rSVBK], a
    rst $28
    ld [hl], a
    add sp, -$10

jr_099_7047:
    rst $28
    db $fd
    add sp, -$02
    add sp, -$01
    add sp, -$01
    add sp, -$31
    add sp, -$18

jr_099_7053:
    rst $28
    rst $08
    rst $28
    adc d
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
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38

jr_099_7069:
    nop
    rst $38
    nop
    rst $38

jr_099_706d:
    nop
    rst $38
    nop
    rst $38
    nop
    sub a
    ld l, b
    sub l

jr_099_7075:
    ld l, d
    cp a
    ld b, b
    ldh a, [rIF]
    ld h, e

jr_099_707b:
    sbc h
    dec b
    ld a, [$ff00]
    ld bc, $02fe
    db $fd
    ld bc, $40fe
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
    ld a, $c1
    inc a
    jp $997e


    ld l, [hl]
    adc c
    ld l, [hl]
    adc c
    ld h, a
    add h
    ld h, a
    add h
    ld [hl], a
    add h
    scf
    call nz, Call_000_00c1
    di
    nop
    rst $38
    nop
    ld hl, $fade
    nop
    nop
    nop
    nop

jr_099_70bd:
    nop
    nop
    nop
    nop

jr_099_70c1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0cf7], sp
    di
    ret nz

    ccf
    ld [bc], a
    db $fd
    jr nz, jr_099_70c1

    nop
    rst $38
    jr z, jr_099_70bd

    ld e, b
    and a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c1fe
    ld a, $e3
    inc e
    ccf
    ret nz

    ccf
    ret nz

    add hl, bc
    or $1f
    ldh [$bf], a
    ld b, b
    db $fc
    nop
    nop
    nop
    sbc [hl]
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld hl, sp+$06
    nop
    cp $04
    ld b, $84
    ld b, $a4
    ld b, $7c
    ld b, $04
    ld b, $04
    cp $fc
    rst $38
    cp a
    db $fc
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, [$fb05]
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    db $ec
    inc de
    ld [de], a
    db $ed
    jr @-$17

    add b
    ld a, a
    ld d, $e9
    ld [$00f7], sp
    rst $38
    inc b

jr_099_7157:
    ei
    inc b

jr_099_7159:
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_099_7157

    jr jr_099_7159

    nop
    rst $38
    nop
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
    rra
    nop
    ccf
    nop
    ccf
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
    cp $01
    db $e4
    dec de
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    add b
    ld a, a
    ld h, d
    sbc l
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    inc d
    db $eb
    nop
    rst $38
    sub h
    ld l, e
    add [hl]
    ld a, c
    sub h
    ld l, e
    ret z

    scf
    ld hl, sp+$07
    call c, Call_000_3f23
    nop
    ld a, a
    nop
    cp a
    nop
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    ld [bc], a
    db $fd
    db $f4
    rrca
    inc c
    rst $30
    inc l
    rla
    inc l
    rla
    inc l
    rla
    inc l
    rla
    dec l
    rla
    xor l
    rla
    rrca
    dec d
    dec c
    rla
    dec c
    rst $30
    rst $38
    rlca
    ld h, a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    dec e
    db $e3
    ld a, c
    add a
    cp c
    ld b, a
    cp l
    ld b, e
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
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    add e
    rst $38
    inc bc
    cp a
    ld b, e
    cp a
    ld b, e
    scf
    rrc d
    rst $30
    rla
    db $eb
    ld a, [hl-]
    rst $00
    inc sp
    rst $08
    ld [de], a
    rst $28
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    inc b
    rst $38

jr_099_7256:
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $18
    add d
    ld a, a
    adc d
    ld [hl], a

jr_099_7260:
    xor d
    ld d, a
    ld a, [bc]
    rst $30
    ld a, [de]
    rst $20
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
    jp hl


    ld e, $e8
    rra
    add sp, $1f
    ret nz

    rra
    sub b
    ld e, a
    adc b
    ld e, a
    sbc c
    ld e, [hl]
    sub c
    ld e, [hl]
    add hl, de
    sbc $11
    sbc $19
    sbc $d9
    ld e, $59
    ld e, $79
    ld e, $77
    inc e
    ld a, e
    inc e

jr_099_7290:
    ld [hl], e
    inc e
    inc sp
    inc e
    inc de
    inc a
    dec de
    inc a
    dec de
    inc a
    ld d, e
    inc a

jr_099_729c:
    inc de
    inc a

jr_099_729e:
    inc sp
    inc a
    and a
    jr c, jr_099_7256

    inc a
    or e
    inc a
    daa
    jr c, @+$39

    jr c, jr_099_731a

    jr nc, jr_099_7290

    inc a
    rst $20
    jr c, jr_099_7318

    jr c, jr_099_731a

    jr c, jr_099_729c

    jr c, jr_099_729e

    jr c, jr_099_7260

    ld a, b
    and a
    ld a, b
    daa
    ld a, b
    add a
    ld a, b
    xor a
    ld [hl], b
    and a
    ld a, b
    ld c, a
    ld [hl], b
    rst $28
    ld [hl], b
    rst $28
    ld [hl], b
    rst $28
    ld [hl], b
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    ld e, a
    ldh [rVBK], a
    ldh a, [$cf]
    ld [hl], b
    ld c, a
    ldh a, [$5f]
    ldh [rVBK], a
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [$df]
    ldh [rVBK], a
    ldh a, [$cf]
    ldh a, [$9f]
    ldh [$df], a
    ldh [$9f], a
    ldh [$cf], a
    ldh a, [$df]
    ldh [$df], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$df], a
    and b
    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$3f], a
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

jr_099_7318:
    ccf
    ret nz

jr_099_731a:
    ld a, $c0
    ccf
    ret nz

    ld a, $c0
    ld a, $c0
    cpl
    ret nc

    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ld a, $c0
    ld a, $c0
    ld a, a
    add b
    ld a, $c0
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld a, l
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld a, [hl]
    add b
    ld a, a
    add b
    ccf
    ret nz

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

    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, l
    add b
    ld a, l
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add b
    ld a, l
    add b
    rrca
    ldh a, [$0d]
    ldh a, [rNR33]
    ldh [$3e], a
    pop bc
    ld a, h
    add c
    ld a, e
    add b
    dec l
    ret nc

    rra
    ldh [$9b], a
    ld h, b
    ccf
    ret nz

    ld e, a
    and b
    xor a
    ld d, b
    rra
    ldh [$1f], a
    ldh [$5a], a
    and b
    ld e, a
    and b
    cpl
    ret nc

    cpl
    ret nc

    ld e, e
    and b
    dec bc
    ldh a, [$1f]
    ldh [$5f], a
    and b
    ccf
    ret nz

    ccf
    ret nz

    ld l, e
    sub b
    ld a, a
    add b
    ld a, a
    add b
    sbc a
    ld h, b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    scf
    ret nz

    ccf
    ret nz

    dec sp
    call nz, $c03f
    ld [hl], a
    adc b
    scf
    ret z

    ld a, a
    add b
    rra
    ldh [$3f], a
    ret nz

    daa
    ret nc

    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rVBK], a
    or b
    ld l, a
    sub b
    ld b, a
    cp b
    ld c, a
    or b
    ld e, e
    and b
    ld e, a
    and b
    ld [hl], a
    adc b
    ld c, a
    or b
    ld l, a
    sub b
    ld l, e
    sub b
    dec l
    ret nc

    ld l, l
    sub b
    ld l, c
    sub b
    ld c, e
    or b
    add hl, bc
    ldh a, [rBCPD]
    sub b
    ld c, d
    or b
    dec a
    ret nz

    db $ec
    db $10
    dec c
    ldh a, [$4c]
    or b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    xor h
    ld d, b
    ld l, h
    sub b
    inc l
    ret nc

    inc c
    ldh a, [$fc]
    nop
    add sp, $10
    ld e, b
    and b
    ld e, h
    and b
    inc e
    ldh [$38], a
    ret nz

    ld e, b
    and b
    ld [$08f0], sp
    ldh a, [rOBP0]
    or b
    adc [hl]
    ld [hl], b
    ld c, $f0
    ld e, [hl]
    and b
    ld e, $e0
    ld a, $c0
    sbc a
    ld h, b
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

    cp a
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
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
    ret nz

    nop
    ld l, $d0
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
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
    ld a, a
    add b
    ld [hl], a
    adc b
    ld a, a
    add b
    ld a, a
    add b
    cp $00
    ld a, [hl]
    add b
    rst $38
    nop
    cp $00
    cp $00
    ld b, [hl]
    cp c
    add $39
    add d
    ld a, l
    add $39
    rst $00
    jr c, jr_099_74da

    and b
    ld c, a
    or b
    ld c, [hl]
    or c
    ld c, [hl]
    or c
    ld c, $f1
    ld e, $e1
    rla
    add sp, $0f
    ldh a, [$8f]
    ld [hl], b
    rrca
    ldh a, [$8f]
    ld [hl], b
    rrca
    ldh a, [rNR22]
    add sp, $07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$0e]
    pop af

jr_099_749e:
    ld c, $f1
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    cpl
    ret nc

    dec de
    db $e4
    dec de
    db $e4
    rra
    ldh [$5f], a
    and b
    rra
    ldh [$1f], a
    ldh [$3e], a
    pop bc
    ld a, a
    add b
    ld a, l
    add d

jr_099_74c8:
    dec sp
    call nz, $c03f
    ld l, $d1
    ld l, [hl]
    sub c
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, [hl]
    sub c
    db $ed
    ld [de], a
    sbc l
    ld h, d

jr_099_74da:
    ld a, l
    add d

jr_099_74dc:
    ld sp, hl
    ld b, $57
    xor b

jr_099_74e0:
    rst $10
    jr z, jr_099_7562

    add b
    db $fd
    ld [bc], a
    ld a, h
    add e
    ld a, l
    add d

jr_099_74ea:
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop

jr_099_74f2:
    rst $38
    nop

jr_099_74f4:
    rst $38
    nop

jr_099_74f6:
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $18
    jr nz, @-$3f

    ld b, b
    rst $38
    nop
    db $db
    inc h
    rst $18
    jr nz, jr_099_74e0

    jr z, jr_099_74ea

    jr nz, jr_099_74dc

    jr nc, jr_099_749e

jr_099_750f:
    ld [hl], b
    rst $08
    jr nc, jr_099_74f2

    jr nz, jr_099_74f4

    jr nz, jr_099_74f6

    jr nz, jr_099_74c8

    ld d, b
    adc [hl]
    ld [hl], c
    call c, $bc23
    ld b, e
    cp h
    ld b, e
    sbc [hl]
    ld h, c
    db $dd
    ld [hl+], a
    ld a, l
    add d
    cp l
    ld b, d
    xor a
    ld d, b
    xor [hl]
    ld d, c
    rst $18
    jr nz, jr_099_750f

    ld hl, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    inc b
    rst $18
    jr nz, jr_099_75a0

    and b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ldh a, [$9f]
    ld h, b
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

jr_099_7556:
    ccf
    ret nz

    ld e, a
    and b
    cp l
    ld b, d
    rst $38
    nop
    ld a, a
    add b
    ld l, a
    sub b

jr_099_7562:
    cpl
    ret nc

    ccf
    ret nz

    cp a
    ld b, b
    ccf
    ret nz

jr_099_756a:
    add hl, sp
    add $39
    add $3b
    call nz, Call_000_25da
    db $d3
    inc l
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $08
    jr nc, jr_099_7556

    ld [hl-], a
    ret


    ld [hl], $c9
    ld [hl], $c9
    ld [hl], $cb
    inc [hl]
    db $db
    inc h
    rst $30
    ld [$08f7], sp
    rst $20
    jr @+$69

    sbc b
    db $ed
    ld [de], a
    rst $28
    db $10

jr_099_75a0:
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_099_75a8:
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop

jr_099_75ae:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_099_75b3:
    nop

jr_099_75b4:
    cp $01
    cp $01
    db $ec
    inc de
    xor $11
    xor $11
    rst $28
    db $10

jr_099_75c0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    di
    inc c
    rst $10
    jr z, jr_099_75c0

    inc c
    db $d3
    inc l

jr_099_75d0:
    rst $10
    jr z, jr_099_7562

    ld [hl], b
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_099_75a8

    jr nc, jr_099_756a

    ld [hl], b
    rst $08
    jr nc, jr_099_75ae

    jr nc, jr_099_75d0

    db $10
    rst $08
    jr nc, jr_099_75b3

    ld sp, $01fe
    rst $38
    nop
    sub $29
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_099_75f8:
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $20
    jr jr_099_75b4

    ld e, b
    ld l, $d1

jr_099_7610:
    ld l, h
    sub e

jr_099_7612:
    ld hl, sp+$07

jr_099_7614:
    ld hl, sp+$07
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b

jr_099_761e:
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    sbc a
    ld h, b

jr_099_7626:
    rst $18
    jr nz, jr_099_75f8

    jr nc, @+$01

    nop
    ei
    inc b
    ld [hl], a
    adc b
    ld [hl], a
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
    rst $18
    jr nz, jr_099_761e

    jr nz, jr_099_7610

    jr nc, jr_099_7612

    jr nc, jr_099_7614

    jr nc, jr_099_7626

    jr nz, @-$1f

    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $ec
    inc de
    db $fc
    inc bc
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
    ld e, a
    and b
    ld e, a
    and b
    rst $38
    nop

jr_099_768e:
    cp $01
    rst $28
    db $10
    rst $38
    nop

jr_099_7694:
    rst $38

jr_099_7695:
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    cp $01
    cp $01
    rst $28
    db $10
    cp $01
    rst $28
    db $10
    xor a
    ld d, b
    xor a
    ld d, b

jr_099_76aa:
    rst $00
    jr c, jr_099_7694

    jr jr_099_7695

    add hl, de
    rst $20
    jr jr_099_76aa

    ld [$40bf], sp
    ccf
    ret nz

    rra
    ldh [$0d], a
    ld a, [c]
    rrca
    ldh a, [$8f]
    ld [hl], b
    rst $08
    jr nc, jr_099_768e

    inc [hl]
    swap h
    swap h
    db $db
    inc h
    swap h
    db $eb
    inc d
    db $db
    inc h
    rst $28
    db $10
    ei
    inc b
    cp e
    ld b, h
    db $fc
    inc bc
    push hl
    ld a, [de]
    pop hl
    ld e, $c1

jr_099_76dd:
    ld a, $c0
    ccf
    ret nz

    ccf
    call nz, $f63b
    add hl, bc
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c

jr_099_76ec:
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    and $19

jr_099_76f2:
    rst $20
    jr @-$0f

    db $10

jr_099_76f6:
    rst $38
    nop

jr_099_76f8:
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01

jr_099_7700:
    rst $38
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
    jr nz, jr_099_76ec

    jr nz, jr_099_76dd

    ld sp, $3dc2
    and b
    ld e, a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    rst $20
    jr jr_099_76f6

    jr z, jr_099_7700

    jr nz, jr_099_76f2

    jr nc, @-$2f

    jr nc, jr_099_76f6

    jr nc, jr_099_76f8

    jr nc, jr_099_779a

    sub b
    ld a, a
    add b
    ld [hl], e
    adc h
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
    jr jr_099_7764

    ld a, [de]
    dec bc
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_099_7775

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_099_7785

    dec bc
    dec bc
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_099_7764:
    jr nc, jr_099_7797

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    dec bc
    jr c, jr_099_777a

    dec bc
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_099_7775:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_099_777a:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    dec bc
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_099_7785:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    dec bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_099_7797:
    ld e, [hl]
    ld e, a
    ld h, b

jr_099_779a:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    dec bc
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld e, h
    ld l, e
    ld l, h
    ld l, l
    ld e, h
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    dec bc
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld e, h
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
    ld a, b
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
    sbc $87
    rst $18
    dec bc
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    db $ed
    dec bc
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    dec bc
    db $fd
    cp $ff
    dec bc
    nop
    add a
    add a
    add a
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    dec bc
    ld [$0b09], sp
    dec bc
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
    jr jr_099_787e

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop

jr_099_787e:
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
    nop
    ld bc, $0100
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0606
    rlca
    rlca
    rlca
    ld b, $07
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0601
    ld b, $01
    ld bc, $0601
    rlca
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld b, $06
    dec b
    ld bc, $4601
    ld b, $01
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld b, $06
    dec b
    ld bc, $4605
    ld b, $01
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld b, $06
    dec b
    dec b
    inc b
    ld h, $01
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0506
    dec b
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0506
    dec b
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0506
    dec b
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0401
    ld bc, $0401
    inc b
    ld b, $05
    dec b
    dec b
    ld b, $04
    inc b
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, h
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec c
    dec b
    dec b
    dec b
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc b
    inc c
    inc c
    inc b
    inc b
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c

jr_099_799b:
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$00f7], sp
    rst $38

jr_099_79b4:
    add d
    ld a, l
    add d
    ld a, l
    ld b, [hl]
    cp c
    inc sp
    call z, $9867
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp-$5a
    ld e, c
    ld a, [bc]
    push af
    inc b
    ei
    rst $28
    db $10
    pop af
    ld c, $d7
    jr z, jr_099_79b4

    inc e
    jr c, jr_099_799b

    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, c
    cp [hl]
    ret nz

    ccf
    add b

jr_099_79df:
    ld a, a
    add c

jr_099_79e1:
    ld a, [hl]
    cp d
    ld b, l
    ld l, c
    sub [hl]
    ld d, c
    xor [hl]
    ld [hl], c
    adc [hl]
    ld d, l
    xor d
    inc sp
    call z, $ff00
    ld h, b
    sbc a
    ld [c], a
    dec e
    sub a
    ld l, b
    xor a

jr_099_79f7:
    ld d, b
    xor [hl]
    ld d, c
    xor $11
    ld d, b
    xor a
    jr nz, jr_099_79df

    ld sp, $3bce
    call nz, $cc33
    ld l, [hl]
    sub c
    ld h, [hl]
    sbc c
    ld h, $d9
    inc b
    ei
    db $10
    rst $28
    jr nc, jr_099_79e1

    rst $38
    nop
    rra
    ldh [$2f], a
    ret nc

    ld l, [hl]
    sub c
    ld l, a
    sub b
    rst $38
    nop
    rst $28

jr_099_7a1f:
    db $10
    rst $28
    db $10
    and $19
    adc $31
    add h
    ld a, e
    call nz, $803b
    ld a, a
    inc e
    db $e3
    jr c, jr_099_79f7

    add sp, $17
    ld hl, sp+$07
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    dec a
    jp nz, $c03f

    ld [hl], a
    adc b
    ld [hl], c
    adc [hl]
    add b
    ld a, a

jr_099_7a44:
    sub b
    ld l, a
    ldh a, [rIF]
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    jr nc, jr_099_7a1f

    ld [$e315], a
    inc e
    dec bc
    db $f4
    rra
    ldh [$0e], a
    pop af
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
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop

jr_099_7a78:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
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
    add b
    nop
    adc [hl]
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
    stop
    nop
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
    ld b, $f9
    jp $ec3c


    inc de
    add sp, $17
    ld [hl], b
    adc a
    ld [hl], e
    adc h
    rst $38
    nop
    rst $18
    jr nz, jr_099_7a44

    ld a, b
    rst $18
    jr nz, jr_099_7a78

    ld c, b
    add e
    ld a, h
    rlca
    ld hl, sp+$03
    db $fc
    ld hl, $41de
    cp [hl]
    ld b, c
    cp [hl]
    ld bc, $02fe
    db $fd
    and l
    ld e, d
    sbc e
    ld h, h
    sbc a
    ld h, b
    rst $08
    jr nc, jr_099_7b32

    xor b
    ccf
    ret nz

    rrca
    ldh a, [rRP]
    xor c
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    xor a
    ld d, b
    rst $28
    db $10
    xor a
    ld d, b
    rst $20
    jr jr_099_7b4d

    and e
    ld a, [hl-]
    push bc
    ld [hl], a
    adc b
    ld d, a
    xor b
    rlca
    ld hl, sp+$09
    or $09
    or $00
    rst $38
    ld h, e
    sbc h
    di
    inc c
    dec sp
    call nz, Call_000_00ff
    ld a, a
    add b
    rst $28
    db $10
    xor a
    ld d, b
    rlca
    ld hl, sp+$1a
    push hl
    inc de
    db $ec
    ld e, e
    and h
    ld [hl], d
    adc l
    ld a, c
    add [hl]
    ld [hl], d
    adc l
    rrca
    ldh a, [$61]
    sbc [hl]
    and e
    ld e, h
    or a
    ld c, b
    ld l, l
    sub d
    xor [hl]
    ld d, c
    rst $38
    nop
    cp a
    ld b, b
    sbc l
    ld h, d
    ld c, d
    or l
    adc b
    ld [hl], a

jr_099_7b32:
    ld e, $e1
    rst $38
    nop
    cp a
    ld b, b
    xor a
    ld d, b
    cp [hl]
    ld b, c
    inc [hl]
    sra b
    rst $10
    inc b
    ei
    ld a, l
    add d
    sbc a
    ld h, b
    rst $30

jr_099_7b47:
    ld [$d12e], sp
    rst $18
    jr nz, jr_099_7b52

jr_099_7b4d:
    ld a, [$b748]
    push af
    ld a, [bc]

jr_099_7b52:
    xor l
    ld d, d
    cpl
    ret nc

    sbc e
    ld h, h
    cp e
    ld b, h
    ccf
    ret nz

    ld a, [hl+]
    push de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_099_7b47

    db $10
    rst $28
    nop
    rst $38
    ld bc, $00fe
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
    ld b, b
    nop
    nop
    nop
    nop
    rst $38
    ld c, $f1
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_099_7b95:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $91fe
    ld l, [hl]
    rst $30
    ld [$c03f], sp
    ld a, a
    add b
    ld [hl], a
    adc b
    rst $38
    nop
    rst $38
    nop
    inc e
    db $e3

jr_099_7bac:
    jr jr_099_7b95

    ld a, a
    add b
    rst $38
    nop
    pop af
    ld c, $e3
    inc e
    rst $08
    jr nc, jr_099_7bac

    inc c
    ldh a, [rIF]
    ld h, b
    sbc a
    and h
    ld e, e
    cp a
    ld b, b
    cp a
    ld b, b
    rrca
    ldh a, [$2f]
    ret nc

    ccf
    ret nz

    db $e3
    inc e
    cp e
    ld b, h
    or [hl]
    ld c, c
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
    ld b, $07
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
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop

jr_099_7c40:
    sbc a
    ld h, b
    rst $38
    nop
    cp a
    ld b, b
    xor e
    ld d, h
    rst $38
    nop
    db $dd
    ld [hl+], a
    dec hl
    call nc, $d629
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld [hl], a
    adc b
    di
    inc c
    ld h, a
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    rst $38
    nop
    ld a, l
    add d

jr_099_7c82:
    ld a, a
    add b
    rst $38
    nop
    rst $20
    jr jr_099_7c40

    ld c, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$3c
    jp $03fc


    xor a
    ld d, b
    db $dd
    ld [hl+], a
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    add l
    ld a, d
    ld l, d
    sub l
    ld [hl], l
    adc d
    rst $00
    jr c, jr_099_7c82

    ld h, $fa
    dec b
    jp hl


    ld d, $22
    db $dd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $f0
    rst $38
    nop
    rst $38
    adc $ff
    ld b, a
    rst $38
    rst $00
    rst $38
    ld e, a
    rst $38
    rst $08
    rst $38
    ld h, b
    rst $38
    ret nc

    rst $38
    ld l, d
    rst $38
    push de
    rst $38
    ld l, d
    rst $38
    call nc, Call_099_68ff
    rst $38
    ret nc

    rst $38
    ld h, b
    rst $38
    ret nc

    rst $38
    ld l, d
    rst $38
    push de
    rst $38
    ld l, d
    rst $38
    pop de
    rst $38
    ld l, b
    rst $38
    ret nc

    rst $38
    ld h, b
    rst $38
    ret nc

    rst $38
    ld l, d
    rst $38
    call nc, $6aff
    rst $38
    call nc, Call_099_60ff
    rst $38
    push de
    rst $38
    ldh a, [rIE]
    db $fd
    rst $38
    jp hl


    rst $38
    ret nc

    rst $38
    ld l, d
    rst $38
    pop de
    rst $38
    ld l, d
    rst $38
    push de
    rst $38
    ld l, b
    rst $38
    ret z

    rst $38
    ld h, a
    rst $38
    rst $00
    rst $38
    ld h, a
    rst $38
    rst $08
    rst $38
    cp $ff
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
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $08

jr_099_7d27:
    jr nc, jr_099_7d27

    ld bc, $926d
    dec sp
    call nz, $ff00
    ld bc, $00fe
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
    jp nz, $ee3d

    ld de, $01fe
    db $fc
    inc bc
    ld e, $e1
    rra
    ldh [$5f], a
    and b
    ccf
    ret nz

    sbc a
    ld h, b
    or a
    ld c, b
    rst $20
    jr @+$01

    nop
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $d8
    daa
    xor [hl]
    ld d, c
    add l
    ld a, d
    add c
    ld a, [hl]
    ld a, [$ca05]
    dec [hl]
    inc c
    di
    ld a, e
    add h
    daa
    ret c

    db $76
    adc c
    scf
    ret z

    ld a, a
    add b
    ei
    inc b
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ld d, h
    rst $38
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    and b
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
    ldh [rIE], a
    ldh a, [rIE]
    ld a, [c]
    rst $38
    push de
    rst $38
    adc d
    rst $38
    ret nc

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld [bc], a
    rra
    ldh [$9f], a
    ld h, b
    inc hl
    call c, Call_099_48b7
    rst $38

jr_099_7dfb:
    nop
    sbc $21
    sbc h
    ld h, e
    rst $08
    jr nc, @+$07

    ld a, [$9f60]
    ret


    ld [hl], $07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld a, [bc]
    push af
    jr @-$17

    jr jr_099_7dfb

    jr @-$17

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    add c
    ld a, [hl]
    sub c
    ld l, [hl]
    cp c
    ld b, [hl]
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    call c, $fc23
    inc bc
    ld sp, hl
    ld b, $f9
    ld b, $ff
    nop
    cp $01
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $18

jr_099_7e5b:
    jr nz, jr_099_7e5b

    ld bc, $c837
    cp e
    ld b, h
    db $fd
    ld [bc], a
    ld a, b
    add a
    cp a
    ld b, b
    xor $11
    ret


    ld [hl], $fe
    ld bc, $7986
    pop hl
    rst $38
    di
    rst $38
    ld d, c
    rst $38
    ld a, c
    rst $38
    db $10
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
    rra
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$15], a
    ldh [rNR11], a
    pop hl
    ld [de], a
    ldh [rNR31], a
    ldh [rNR33], a
    pop hl
    rra
    db $e4
    rra
    pop hl
    rla
    db $e3
    rla
    db $e3
    rla
    pop hl
    dec bc
    pop af
    rrca
    ldh a, [$0b]
    ld a, [c]
    rrca
    pop af
    dec bc
    ldh a, [$0d]
    pop af
    add hl, bc
    ldh a, [$0a]
    ldh a, [$08]
    ldh a, [$09]
    ldh a, [$08]
    ldh a, [$f8]
    rrca
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
    xor d
    rst $38
    ld d, l
    rst $38
    and b
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
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$41be], sp
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld l, $d1
    ld h, h
    sbc e
    ld [c], a
    dec e
    cp b
    ld b, a
    ld a, [$a105]
    ld e, [hl]
    adc [hl]
    ld [hl], c
    dec c
    ld a, [c]
    ld [$00f7], sp
    rst $38
    ld [de], a
    db $ed
    nop
    rst $38
    ld bc, $01fe
    cp $00
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add h
    ld a, e
    add b
    ld a, a
    sub b
    ld l, a
    ld a, [c]
    dec c
    or b
    ld c, a
    xor b
    ld d, a
    db $e4
    dec de
    jp hl


    ld d, $ea
    dec d
    and h
    ld e, e
    pop hl
    ld e, $70
    adc a
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    db $10
    rst $28
    add b
    ld a, a
    nop
    rst $38
    jp nz, $023d

    db $fd
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    rst $00
    rst $38
    db $eb
    rst $38
    xor d
    rst $38
    inc d
    rst $38
    jr nz, @+$01

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
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    jr nz, @+$79

    adc b
    db $dd
    and d
    and e
    ld e, h
    ld d, d
    pop hl
    ld sp, hl
    ld [c], a
    ld sp, hl
    ld [c], a
    db $fd
    pop af
    db $fc
    pop af
    db $fc
    pop af
    db $fd
    pop af
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$3f
    db $fc
    ld e, a
    db $fc
    ccf
    db $fc
    ld e, a
    rst $38
    adc e
    ld a, a
    db $e4
    ccf
    sbc l
    ld h, d
    dec bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    rst $38
    ld b, b
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
    ldh a, [rIF]
    db $f4
    dec bc
    ld a, [c]
    dec c
    rst $38

jr_099_7fd7:
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
    ccf
    ret nz

    dec a
    jp nz, Jump_099_40bf

    adc $31
    add sp, $17
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_099_7fd7

    ld bc, $35fe
    jp z, $fe01

    inc bc
    db $fc
