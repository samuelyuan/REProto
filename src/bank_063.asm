SECTION "ROM Bank $063", ROMX[$4000], BANK[$63]

    ld hl, sp-$01
    ld hl, sp-$01
    db $ec
    rst $38
    db $ed
    rst $38
    ld [c], a
    rst $38
    jp nz, $c1ff

    rst $38
    pop bc
    rst $38
    pop bc
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
    rst $38
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    cp a
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
    cp $ff
    cp $ff
    cp $ff
    sbc $ff
    sbc $ff
    sbc [hl]
    rst $38
    cp h
    rst $38
    call c, $fcff
    rst $38
    call c, $dfff
    rst $38
    reti


    rst $38
    ei
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
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [$fbff]
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, [$faff]
    rst $38
    ld a, d
    rst $38
    ld [hl], c
    rst $38
    ld sp, $70ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    rlca
    rst $38
    ld [bc], a
    db $fd
    rrca
    ldh a, [$37]
    ret z

    ret


    ld [hl], $c0
    ccf
    rrca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    or $ff
    pop af
    cp $0f

jr_063_40c5:
    ldh a, [$df]
    jr nz, jr_063_40c5

    inc bc
    ld a, a
    add b
    db $fc
    inc bc
    rst $38
    ld b, $00
    rst $38
    add a
    ld a, b
    rlca
    ld hl, sp+$01
    cp $49
    cp $04
    rst $38
    and [hl]
    ld a, a
    dec de
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
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
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38

Jump_063_40fd:
    rst $38
    rst $38
    rst $38
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ld a, b
    rst $38
    ld a, b
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    inc hl
    rst $38
    ld hl, $21ff
    rst $38
    ld sp, $79ff
    rst $38
    rst $08
    rst $38
    add e
    rst $38
    pop hl
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld a, $ff
    ld a, $ff
    inc a
    rst $38
    ld a, h
    rst $38
    ld [hl], h
    rst $38
    ld [hl], d
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    db $d3
    rst $38
    rst $10
    rst $38
    rst $00
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
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38

jr_063_4184:
    db $fc
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    xor h
    rst $38
    ld l, l
    rst $38

jr_063_418e:
    ld l, l
    rst $38
    ld l, l
    rst $38
    db $dd
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    add $ff
    rst $28
    ldh a, [$ef]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$05
    db $fc
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    inc bc
    rst $38
    rst $08
    ccf
    rst $18
    ccf
    rst $18
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $76
    ld sp, hl
    rst $00
    jr c, jr_063_4184

    ld a, $f3
    ld c, $76
    adc a
    ld h, e
    sbc h
    sbc $20
    jr nz, jr_063_418e

    pop bc
    nop
    ccf
    rst $38
    rst $08
    ccf
    rst $28
    rra
    rst $30
    rrca
    or $0f
    ld b, $ff
    adc [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc

Jump_063_41e7:
    rst $38
    db $fd
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    rrca
    rst $38
    ld a, [bc]
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    ld a, b
    rst $38
    ld hl, sp-$01
    ld a, [$ffff]
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
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
    ccf
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
    ld a, l
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], h
    rst $38
    ld sp, $70ff
    rst $38
    di
    rst $38
    cp $ff
    db $fc
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
    rst $30
    rst $38
    rst $20
    rst $38
    ld a, [c]
    rst $38
    db $f4
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
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    dec a
    rst $38
    scf
    rst $38
    inc d
    rst $38
    ld d, $ff
    inc e
    rst $38
    inc a
    rst $38
    ld a, [hl-]
    db $fd
    cp b
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    cp e
    rst $00
    dec a
    jp $837d


    rst $38
    nop
    rst $38
    nop
    ld a, [$9d05]
    ld h, e
    xor d
    ld a, l
    cp $79
    scf
    ld hl, sp+$3f
    ldh a, [$ef]
    ldh a, [$f0]
    rst $28
    ld hl, sp-$19
    add sp, -$09
    pop af
    rst $38
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    ret nc

    rst $38
    ld h, b
    sbc a
    or $09
    rst $38
    nop
    ld l, a
    sub b
    ld c, a
    or b
    ld a, a
    add b
    sbc l
    ld h, b
    ld d, c
    ccf
    ld e, $0f
    ld e, e
    inc b
    add hl, bc
    cp $03
    db $fc
    dec [hl]
    jp z, $c0bf

    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [rVBK], a
    ldh a, [$37]
    ld hl, sp+$34
    rst $38
    scf
    rst $38
    dec [hl]
    rst $38
    add l
    ld a, a
    ld h, b
    sbc a
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$1f], a
    ldh [$1f], a
    ldh [$7d], a
    add b
    ccf
    ret nz

    rst $38
    ldh a, [$73]
    db $fc
    rst $00
    ld hl, sp+$1c
    rst $38
    ld a, $df
    jr @+$01

    inc de
    db $fc
    ld [hl], a
    cp b
    ld e, c
    cp [hl]
    ld e, h
    cp a
    ld e, l
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
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
    db $ed
    rst $38
    jp Jump_063_5fff


    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    di
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, [$fbff]
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    ld a, e
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    add hl, de
    rst $38
    cp e
    rst $38
    cpl
    rst $38
    ld a, e
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
    cp a
    rst $38
    cp a
    rst $38
    ld l, $ff
    ld e, [hl]
    rst $38
    call c, $9dff
    rst $38
    dec e
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38

jr_063_4363:
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec e
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    jr jr_063_4363

    add hl, de
    rst $28
    dec sp
    call $ef11
    ldh a, [rIF]
    ldh [$1f], a
    ei
    rra
    rst $20
    rst $38
    add $ff
    or c
    rst $38
    dec sp
    rst $00
    dec sp
    rst $00
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld h, c
    rst $38
    ld bc, $03ff
    rst $38
    add a
    ld a, a
    ld e, $ff
    db $10
    rst $38
    ld c, $f1
    inc c
    di
    adc l
    di
    sbc c
    rst $20
    ld a, e
    add a
    cp [hl]
    pop bc
    sbc a
    ret nz

    ld a, a
    add b
    pop de
    nop
    ldh [rP1], a
    db $d3
    nop
    rst $38
    inc bc
    sbc e
    ld h, a
    rst $38
    ld b, a
    ld l, b
    add a
    adc e
    inc b
    dec bc
    inc b
    dec c
    ld [bc], a
    jp $8b3c


    ld [hl], h
    xor e
    ld d, h
    db $e3
    inc d
    xor l
    ld d, b
    adc $31
    sbc $39
    and a
    ld a, b
    rst $10
    ld l, b
    rla
    add sp, $34
    rst $08
    ld e, a
    xor a
    rra
    rst $28
    rra
    rst $28
    ld c, a
    cp a
    ccf
    rst $08
    rrca
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    sbc [hl]
    ld a, a
    sbc l
    ld a, [hl]
    db $dd
    ld a, $9b
    inc a
    db $db
    inc a
    db $db
    inc a
    dec sp
    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp+$77
    ld hl, sp-$6e
    ld a, l
    ld [hl-], a
    db $fd
    ld [hl], d
    db $fd
    or $f9
    ldh a, [rIE]
    db $e4
    rst $38
    jp $e1fd


    rst $38
    db $e3
    rst $38
    add $ff
    add $ff
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    adc [hl]
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    scf
    rst $38
    or a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff

jr_063_4450:
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    ld bc, $1bff
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    or d
    rst $38
    sub l
    cp $84
    rst $38
    add l
    rst $38
    rlca
    rst $38
    ret


    rst $38
    ld [hl], c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    cp a
    ld h, e
    sbc a
    add a
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    sub $3f
    ld h, l
    sbc [hl]
    cp [hl]
    rst $00
    ld bc, $02ff
    db $fd
    inc de
    db $fc
    inc bc
    db $fc
    ld b, b
    rst $38
    ld a, [c]
    db $fd
    or d
    call $8cf3
    or a
    ret z

    inc de
    db $ec
    push af
    ld c, $de
    ld bc, $0166
    cp [hl]
    inc bc
    push de

jr_063_44b1:
    ld l, $a9
    sbc $11
    xor $19
    and $df
    ldh [$ae], a
    ld [hl], b
    ld e, [hl]
    jr nc, jr_063_4450

    ld c, $3c
    jp Jump_063_46a9


    add e
    ld b, [hl]
    ret


    ld b, $c1
    ld c, $d7
    ld [$18e7], sp
    rst $38
    db $10
    rst $18
    jr nz, jr_063_44b1

    ld hl, $f906
    ld hl, sp-$01
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $18
    ld a, e
    sbc a
    ld a, a
    sbc a
    rst $38
    rra
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    sbc a
    ld a, a
    ld c, $ff
    rra
    rst $38
    rra
    rst $38
    cpl
    rst $38
    ld h, $f9
    ld l, h
    di
    ld l, $f1
    ld l, l
    di
    ld l, h
    di
    ld a, c
    rst $20
    ld [hl], c
    rst $28
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld [hl], a
    rst $38
    rst $28
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    adc b
    rst $38
    xor b
    rst $38
    ld [$ffff], a
    rst $38
    cp a
    rst $38
    and b
    rst $38
    xor e
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
    rst $20
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    inc a
    rst $38
    inc sp
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    db $ec
    rst $38
    call z, $adff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    add b
    rst $38
    dec b
    ei
    ld [hl+], a
    rst $38
    cp $ff
    ld h, e
    rst $38
    jp $3dff


    jp $c0ff


    ld [$fff7], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    ccf
    pop bc
    ccf
    rst $30
    ld [$d827], sp
    adc a
    ldh a, [rBGP]
    ld hl, sp-$49
    ld a, b
    ccf
    ld hl, sp-$2f
    rst $28
    set 6, a
    add c
    ld a, a
    push hl
    ld a, [de]
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    inc l
    di
    rst $18
    ccf
    rst $20
    rra
    rst $38
    rlca
    push af
    inc bc
    ld hl, sp+$00
    jr jr_063_45ac

jr_063_45ac:
    jr nc, jr_063_45ae

jr_063_45ae:
    ld [hl+], a
    nop
    rst $38
    rlca
    rst $30
    rrca
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$b04f], sp
    rst $18
    ldh a, [rPCM34]
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$15
    db $fc
    xor $ff
    rst $28
    rst $38
    db $ec
    rst $38
    call z, $caff
    db $fd
    add a
    ld sp, hl
    call nz, $e0fb
    rst $18
    and $dd
    db $e3
    db $dd
    rst $20
    reti


    cp [hl]
    pop bc
    ld a, [bc]
    push af
    db $fd
    cp $f8
    rst $38
    push af
    ei
    ld [hl], a
    ei
    db $d3
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    ei
    ld e, a
    db $e3
    rrca
    di
    ld e, $e3
    ld c, $f3
    jp z, $fef7

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    ld de, $11ff
    rst $38
    dec d
    rst $38
    ld d, l
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    or e
    rst $38
    ld a, [c]
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    ld [bc], a
    rst $38
    ld [hl-], a
    rst $38
    ld b, [hl]
    rst $38
    rst $00
    rst $38
    rst $08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld b, $ff
    sbc a
    rst $38
    cp a
    rst $38
    or c
    rst $38
    or e
    rst $38

jr_063_465a:
    ld a, a
    rst $38
    ld b, b
    rst $38
    pop bc
    rst $38
    ld bc, $81ff
    rst $38
    push bc
    ei
    push af
    ei
    ld sp, $19ff
    rst $38
    or c
    rst $08
    add sp, -$09
    ld hl, sp-$01
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    rst $38
    rst $00
    rst $38
    push de
    db $eb
    cp h
    db $e3
    adc [hl]
    pop af
    rla
    add sp, $2c
    di
    ld b, a
    cp b
    ei
    inc a
    cp l
    ld a, [hl]
    cp $7f
    ld l, b
    rst $38
    pop bc
    cp $dc
    rst $38
    ld a, [hl]
    rst $38
    rst $38

jr_063_4695:
    ld a, a
    and a
    ld a, a
    sbc $21
    rst $38
    jr nc, jr_063_4695

    ld a, a
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di

Jump_063_46a9:
    ld a, a
    ld [hl], h
    dec sp
    jr c, jr_063_46cb

    dec e
    ld c, $fe
    rst $38
    ld e, a
    cp a
    rst $30
    dec c
    ld a, [$fa05]
    dec b
    ei
    inc b
    di
    inc c
    ret nc

    cpl
    jp c, $d725

    jr z, jr_063_465a

    ld l, d
    add l
    ld a, d
    ld [hl], h
    ei
    db $fd

jr_063_46cb:
    di
    ld a, h
    di
    adc a
    ldh a, [$b5]
    rlc a
    rst $38
    add a
    ld a, a
    rlca
    rst $38
    ld c, $f1
    rst $10
    add sp, -$2d
    db $ec
    sub $e9
    add a
    ld hl, sp+$00
    rst $38
    ld [$a1f7], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, $ff
    sbc a
    rst $38
    ld sp, hl
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    rra
    rst $38
    dec e
    rst $38
    cp a
    rst $38
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    adc $ff
    call $ecff
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    cp c
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    ld b, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    sbc $ff
    xor $ff
    sbc $ff
    sbc $ff
    cp $ff
    or $ff
    adc $ff
    cp $ff
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ei
    rst $38
    add a
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    inc a
    rst $38
    call c, $faff
    rst $38
    ld bc, $48ff
    cp a
    add b
    rst $38
    ld e, e
    rst $20
    xor a
    ld [hl], c
    ld [hl], $f9
    sbc c
    ld a, [hl]
    xor [hl]
    ld e, a
    ld sp, hl
    rlca
    cp $01
    rra
    ldh [$b7], a
    ld a, b
    call c, $873f
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_063_479a:
    cpl
    di
    rst $30
    jr jr_063_479a

    inc c
    ld sp, hl
    ld b, $3e
    pop bc
    rst $18
    ldh [rIE], a
    ldh a, [$f9]
    cp $3f
    rst $38
    ld [hl], a
    adc a
    adc c
    ld b, a
    add h
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
    adc e
    ld [hl], a
    dec bc
    rst $30
    ld l, a
    sub e
    dec [hl]
    sla h
    db $db
    sbc $21
    ld e, $e1
    rrca
    ldh a, [rP1]
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    add a
    rst $38
    sbc [hl]
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, d
    rst $38
    reti


    rst $38
    ret c

    rst $38
    ld e, c
    rst $38
    ld a, [hl]
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
    ld b, c
    rst $38
    inc de
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    jr c, @+$01

    add hl, sp
    rst $38
    ld sp, $30ff
    rst $38
    ld [hl], b
    rst $38
    db $f4
    rst $38
    db $fd
    rst $38
    ld sp, hl
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
    rst $20
    rst $38
    db $e4
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld a, [hl-]
    rst $38
    ld d, $ff
    ld [hl-], a
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    sbc b
    rst $38
    cp b
    rst $38
    cp [hl]
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    add hl, de
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld c, $ff
    add sp, -$09
    ld [$8cff], sp
    ld a, a
    ld [hl], $cf
    cp e
    rst $00
    ld b, l
    ei
    ld a, [hl]
    pop af
    xor a
    ld [hl], b
    sbc a
    ld h, b
    rst $28
    ldh a, [$e3]
    db $fc
    push de
    xor $3c
    jp $01e2


    add e
    nop
    pop bc
    nop
    ldh a, [rP1]
    cp a
    nop
    sbc $00
    rst $30
    nop
    ei
    nop
    ld a, a
    add b
    db $db
    db $e4
    ld sp, hl
    cp $bd
    ld a, a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
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
    db $e3
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    pop af
    rst $38
    db $fc
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    call $c8ff
    rst $38
    add b
    rst $38
    add c
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld hl, sp-$01
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
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rra
    rst $38
    rrca
    rst $38
    sbc e
    rst $38
    sub a
    rst $38
    rst $30
    rst $38
    call nc, $d4ff
    rst $38
    call nc, $deff
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
    ld hl, sp-$01
    db $fd
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
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
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
    scf
    rst $38
    or e
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
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    ld c, [hl]
    rst $38
    ld c, $ff
    ld c, $ff
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    db $fc
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
    ccf
    rst $38
    rra
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    jr @+$01

    adc [hl]
    rst $38
    rst $38
    rst $38
    cp [hl]
    ld a, a
    ld sp, $c8cf
    rlca
    ld h, d
    add a
    inc sp
    pop bc
    xor b

jr_063_498b:
    pop af
    ld b, $f9
    ld sp, hl
    rlca
    ld a, [hl]
    add c
    db $fc
    nop
    db $f4
    ld [$04e2], sp
    ld [hl], b
    jp $f009


    cp $00
    or h
    inc bc
    inc e
    db $e3
    ld e, $e1
    add b
    ld a, a
    ld [$0fff], sp
    rst $38
    jr nz, jr_063_498b

    nop
    rst $38
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
    db $10
    ld de, $1312
    inc bc
    inc d
    dec d
    ld d, $17
    jr jr_063_49e4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_063_49f4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_063_4a04

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_063_4a14

    ld [hl-], a

jr_063_49e4:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_063_4a24

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_063_49f4:
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

jr_063_4a04:
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
    ld d, c

jr_063_4a14:
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

jr_063_4a24:
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

Call_063_4a42:
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
    sbc $51
    ld d, c
    ld d, c
    ld d, c
    inc bc
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$51eb], a
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
    inc bc
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$5109], sp
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
    jr jr_063_4aed

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
    jr nc, @+$33

    ld [hl-], a

jr_063_4aed:
    inc sp
    inc [hl]
    dec [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0505
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    inc bc
    dec b
    ld bc, $0505
    inc bc
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    inc bc
    dec b
    dec b
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0501
    inc bc
    inc bc
    dec b
    ld bc, $0001
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0505
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0809], sp
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

jr_063_4c1b:
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
    cp $03
    db $fc
    inc bc
    ld l, [hl]
    sub c
    ld a, [hl]
    add c
    ld a, h
    add e
    jr nz, jr_063_4c1b

    ld bc, $31ff
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    ld a, a
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    sub e
    ld a, a
    adc a
    ld a, a
    ld c, a

jr_063_4c7b:
    ccf
    rst $28
    rra
    db $e3
    rra
    di
    rrca
    di
    rrca
    inc de
    rst $28
    inc bc
    rst $38
    jp $f33f


    rrca
    ld a, c
    add a
    dec de
    rst $20
    ld a, [de]
    rst $20
    jr jr_063_4c7b

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
    nop
    rst $38
    and b
    rst $38
    and e
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    sbc d
    db $fd
    sbc a
    ld hl, sp+$5e
    ld sp, hl
    cp h
    ld e, e
    ret c

    ccf
    rst $38
    ccf
    cp $3f
    db $fd
    ld a, $ff
    ccf
    rst $08
    ccf
    ld b, a
    cp a
    and $1f
    ld h, b
    sbc a
    rst $38
    ldh a, [rIE]
    ldh [$9f], a
    ldh [$3f], a
    ret nz

    rst $38
    ret nz

    ccf
    ret nz

    ld [hl], a
    add b
    ld a, [hl]
    add b
    xor b
    nop
    ret nz

    nop
    nop
    nop
    nop

Call_063_4cf3:
    nop
    ld b, $00
    rlca
    nop
    ld e, $00
    ld b, [hl]
    nop
    ld d, $03
    scf
    rrca
    ld a, [de]
    inc a
    sbc b
    ld [hl], b
    rst $00
    ld hl, sp+$03
    rst $38
    ld [hl], c
    sbc a
    inc bc
    rst $38
    ld bc, $9fff
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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    db $db
    rst $38
    ld a, c
    sbc a
    ld a, [$fcbd]
    rst $30
    sbc d
    rst $38
    sub c
    dec sp
    sub b
    rst $28
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, [$fcff]
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
    db $fd
    rst $38
    db $fd
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    cp b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    call c, $dcff
    rst $38
    call z, $eeff
    rst $38
    ld b, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp a
    rst $38
    sbc a
    rst $38
    sub a
    rst $38
    sub e
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld a, e
    rst $38
    inc b
    rst $38
    ld e, b
    rst $38
    ld d, d
    db $fd
    ld [hl], a
    ld hl, sp-$01
    ldh a, [$f7]
    ld hl, sp+$62
    db $fd
    ld l, [hl]
    pop af
    cp [hl]
    pop bc
    cp $81
    cp b
    rlca
    add b
    ld a, a
    add hl, bc
    cp $8c
    rst $38
    add a
    ld hl, sp+$71

jr_063_4dc9:
    adc [hl]
    add e
    ld a, h
    add a
    ld a, b
    rst $28
    db $10
    jr c, jr_063_4dc9

    db $10
    rst $28
    ld sp, $72ce
    adc a
    rst $38
    inc bc
    rst $38
    ld bc, $01fe
    cp $01
    nop
    nop
    nop
    nop
    ld bc, $8900
    rlca
    call z, $bb3f
    ld a, h
    ld a, b
    rst $38
    ld e, l
    ld a, [$807e]
    nop
    nop
    add b
    nop
    add c
    ldh a, [rIE]
    rst $38
    rst $20
    rst $38
    di
    rst $28
    adc $ff
    rst $18
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $30
    rst $38
    rst $10
    rst $28
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
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
    rst $08
    rst $38
    rst $20
    rst $18
    ld a, h
    rst $38
    dec a
    cp $1c
    rst $38
    rra
    rst $38
    ld de, $19ff
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, $ff
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $fd
    rst $38
    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    ld e, $ff
    adc b
    ld a, a
    adc b
    ld a, a
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld d, e
    cp h
    add d
    rst $38
    add e
    rst $38
    adc $ff
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    ld a, $ff
    dec de
    rst $38
    add hl, de
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rlca

jr_063_4e8b:
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    pop hl
    ld a, a
    and b
    ld a, a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    or c
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    adc [hl]
    rst $38
    xor l
    cp $0b
    db $fc
    rst $08
    jr nc, jr_063_4e8b

    inc hl

jr_063_4eb0:
    adc e

Call_063_4eb1:
    ld [hl], a
    sub a
    ld l, a
    rla
    rst $28
    add a
    ld a, a

jr_063_4eb8:
    rst $00
    ccf
    daa
    rst $38
    ld h, h
    rst $38
    rst $08
    rst $38
    ld [$c1ff], sp
    ccf
    daa
    rst $18
    ld hl, sp+$07
    jp $c33f


    ccf
    rst $08
    ccf
    and $1f
    cpl
    rra
    rst $38
    rra
    db $fc
    rra
    sbc b
    ccf
    xor $39
    ld [hl], b
    cp $70
    db $fc
    ld [hl], l
    ld hl, sp-$0d
    ld a, b
    scf
    ld a, b
    and l
    ld a, d
    ret nz

    cp $d9
    cp $4f
    ldh a, [rNR41]
    ret nz

    jr nz, jr_063_4eb0

    cp $00
    or $00
    rst $28
    nop
    db $ec
    rra
    rst $38
    rst $38
    db $fd
    rst $38
    xor [hl]
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    dec hl
    rst $00
    rrca
    rst $00
    xor e
    rra
    cpl
    rst $18
    rst $18
    rst $38
    add b
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    cp $91
    ld h, [hl]
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rst $18
    jr nc, jr_063_4eb8

    ldh a, [$ac]
    db $d3
    adc $f1
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, d
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ld e, $e1
    ld a, $c1
    adc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    ei
    adc e
    ldh a, [$67]
    ld hl, sp+$3b
    db $fc
    ccf
    db $fc
    inc bc
    db $fc
    ld bc, $40fe
    rst $38
    ld b, c
    cp $5e
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rra
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld c, $ff
    adc [hl]
    rst $38
    add $ff
    sub $ef
    ld [$e2f7], a
    rst $38
    adc l
    di
    rst $00
    ld sp, hl
    rst $00
    ld sp, hl
    inc sp
    call $fd82
    jp nz, $82fd

    db $fd
    add a
    ld sp, hl
    add a
    ld sp, hl
    and e
    rst $18
    daa
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, e
    cp a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld [bc], a
    db $fd
    add c
    cp $e7
    ld hl, sp+$01
    cp $01
    cp $c3
    db $fc
    ld d, e
    db $ec
    inc de
    db $ec
    ld c, $f1
    ld b, b
    cp a
    ld hl, $f8fe
    rst $38
    ret nz

    rst $38
    sbc a
    ldh [$bb], a
    ret nz

    db $dd
    ldh [$e7], a
    sbc b
    dec de
    rst $20
    ld h, e
    rst $38
    db $dd
    db $e3
    call nz, Call_000_0781
    add b
    dec c
    nop
    dec b
    nop
    jr nz, jr_063_4fde

jr_063_4fde:
    nop
    nop
    sbc b
    ld h, a
    inc bc
    db $fd
    ld a, d
    adc l
    rst $28
    ld e, b
    xor l
    jp nc, $807f

    cp $01
    rst $08
    nop
    ld b, d
    nop
    nop
    nop
    db $f4
    ld [$fefd], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    rst $18
    db $f4
    db $eb
    ld e, a
    ldh [$96], a
    ld hl, sp+$50
    cp a
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
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    adc [hl]
    pop af
    ld b, l
    add b
    ld c, $f1
    rlca
    ld hl, sp+$0e
    pop af
    cpl
    ret nc

    ccf
    ret nz

    ccf
    ret nz

    dec sp
    call nz, $ec93
    db $e3
    db $fc
    jr nc, @+$01

    jr @+$01

    sbc [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
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
    sbc a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    adc a
    ld a, a
    rrca
    rst $38
    rst $00
    ccf
    rst $00
    ccf
    rst $20
    rra
    rst $20
    rra
    ld h, a
    sbc a
    inc hl
    rst $18
    add e
    ld a, a
    inc bc
    rst $38
    add e
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $00
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    dec hl
    rst $38
    cpl
    rst $38
    adc a
    ld a, a
    dec bc
    rst $38
    jp $c33f


    ccf
    pop bc
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld a, h
    add e
    cp $81
    cp a
    ret nz

    add sp, -$09
    rst $38
    rst $38
    db $d3
    rst $38
    ld de, $70ef
    rst $38
    cp $ff
    rst $38
    cp $fc
    rst $38

jr_063_509a:
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, h
    rst $38
    adc $3f
    ld l, [hl]
    sbc a
    rst $30
    rrca
    or $0f
    ei
    rlca
    ei
    rlca
    cp a
    ld b, a
    sub l
    ld l, a
    rst $30
    rrca
    ld l, a
    sbc a
    ld l, a
    sbc a
    rra
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    add b
    rst $38
    jr c, @-$37

    ld a, a
    ret nz

    adc e
    ld h, b
    ei
    nop
    push de
    nop
    and $00
    ld h, b
    add b
    pop hl
    add b
    jr nc, jr_063_509a

    ret nz

    ld h, b
    ret c

    ld h, b
    xor $70
    dec hl
    db $f4
    rst $38
    ret nz

    cp $81
    ld a, a
    add b
    ld a, a
    ret nz

    ld a, $c1
    rst $38
    nop
    rst $38
    nop
    ld c, a
    jr nc, jr_063_5132

    nop
    ld a, $01
    ld e, $01
    cp [hl]
    pop bc
    ld [c], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    adc h
    rst $30
    add l
    ld b, d
    rra
    ldh [$e4], a
    db $db
    sub [hl]
    db $eb
    and c
    rst $38
    ret c

    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    add l
    ld a, [hl]
    ld a, [hl+]
    ld b, h
    ccf
    rst $38
    scf
    rst $38
    add e
    ld a, a
    jp $f13f


    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    db $e4
    dec de
    nop
    rst $38

jr_063_5132:
    jr nc, @+$01

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [$e0ff]
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $f4
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    jr c, @+$01

    jr @+$01

    inc e
    rst $38
    ld [$04ff], sp
    rst $38
    adc h
    ld a, a
    and [hl]
    ld e, a
    ld c, $ff
    ld hl, sp-$01
    di
    db $fc
    jr nc, @+$01

    jr nz, @+$01

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $03ff
    rst $38
    add a
    rst $38
    pop af
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cpl
    ret nc

    add a
    ld hl, sp-$11
    ldh a, [$df]
    ldh a, [$ef]
    ldh a, [$f0]
    rst $38
    ldh [rIE], a
    add sp, -$09
    rst $38
    cp $d9
    cp $93
    db $fc
    jr @+$01

    db $10
    rst $38
    ld b, c
    ccf
    and b
    rra
    nop
    ld de, $0000
    nop
    nop
    inc b
    nop
    nop
    nop
    ld de, $0f01
    inc bc
    rlca
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0404
    rrca
    inc c
    ccf
    ld c, $1f
    inc c
    ccf
    jr jr_063_522e

    add hl, de
    reti


    ccf
    ld a, a
    cp a
    ld a, $ff
    ld a, $ff
    push af
    ld a, $8c
    ld [hl], b
    rst $20
    ld hl, sp-$02
    rst $38
    adc a
    ld a, [hl]
    call c, Call_063_5cfe
    db $fc
    ld [$9cfc], sp
    ld hl, sp+$30
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh a, [$f8]
    ldh [$e0], a
    ldh a, [$f0]
    ldh [$d2], a
    ldh [$f2], a
    add b
    pop af
    ldh [$f4], a
    ld hl, sp-$4e
    ld e, h
    ld a, [$fcfd]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38

jr_063_522e:
    ld a, e
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop af
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_063_5257:
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rra
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

jr_063_5267:
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    ld l, a
    rst $38
    ld [hl], c
    rst $38
    inc sp
    rst $38
    rra
    rst $38
    rst $28
    rra
    ld l, a
    sbc a
    adc a
    rst $38
    cp a
    ld a, a
    rst $28
    rra
    rst $30
    rrca
    scf
    rst $08
    jr nc, jr_063_5257

    ld bc, $83ff
    ld a, a
    add h
    ld a, a
    and a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    cp l
    ld a, a
    db $ed
    ccf
    add a
    ld a, a
    rst $30
    rra
    rst $28
    rra
    db $eb
    rra
    and $1f
    jp $df3c


    jr nz, jr_063_5267

    ld b, b
    ld a, h
    add b
    ld a, c
    add b
    cp b
    ret nz

    ei
    nop
    or $00
    db $fc
    nop
    inc a
    ret nz

    ld hl, sp-$80
    rst $30
    add b
    inc l
    jp $df20


    ld l, e
    sbc h
    add b
    ld a, a
    jp c, $ff25

    ld bc, $c3fd
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rrca
    ld a, a
    ccf
    ccf
    db $e3
    rra
    sbc d
    nop
    or b
    add b
    or e
    call z, $c033
    ld a, h
    ret nz

    ld c, a
    ldh a, [$5f]
    cp h
    sbc a
    ld a, [hl]
    ld a, h
    cp $f4
    ld [$807f], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ldh [rP1], a
    jr nc, jr_063_52fe

jr_063_52fe:
    jr nc, jr_063_5300

jr_063_5300:
    stop
    ld [$0800], sp
    nop
    pop bc
    nop
    ret nz

    nop
    jp nz, $b000

    nop
    inc d
    nop
    add hl, bc
    rst $30
    jr @-$17

    jr @-$17

    jr @-$17

    ld [$90f7], sp
    rst $28
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, [hl]
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
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
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret c

    rst $38
    sub b
    cp a
    sbc b
    rst $38
    add b
    cp l
    adc b
    db $dd
    add b
    sub h
    add b
    add b
    ld a, a
    ld a, a
    ld a, $3e
    inc e
    ld e, $18
    ld e, $00
    ld c, $02
    inc c
    ld b, $18
    ld c, $10
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    cp $ef
    rst $38
    ld h, b
    rst $38
    ldh [$fb], a
    ldh [$ef], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$ee], a
    pop af
    push bc
    ei
    pop hl
    rst $38
    cp $ff
    cp [hl]
    ld a, $3e
    ld a, $3c
    ld a, $7c
    dec a
    ld h, b
    ld h, e
    ld [hl], b
    rrca
    add sp, $07
    sub b
    rrca
    jr nc, @+$21

    jr nz, @+$41

    ld h, b
    ccf
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    rst $08
    nop
    add a
    nop
    inc bc
    nop
    ld bc, $0300
    ld bc, $0707
    rrca
    rrca
    rrca
    rrca
    rst $38
    pop hl
    xor $ff
    rst $18
    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    ldh [$a0], a
    ld [hl], b
    db $10
    rst $28
    ld bc, $10fe
    rst $38
    ld hl, $01de
    cp $60
    sbc a
    inc c
    di
    ldh [$1f], a
    ld a, [$f707]
    ld bc, $00fd
    cp $00
    ld hl, sp+$00
    db $fc
    nop
    or h
    ld b, b
    or a
    ld b, b
    rst $18
    nop
    ld c, $00
    dec b
    nop
    inc bc
    nop
    inc bc
    nop
    dec bc
    nop

jr_063_540c:
    rrca
    nop
    ld [bc], a
    ld bc, $ffdc
    ret z

    rst $38
    add b
    rst $38
    ld c, $ff
    ccf
    rst $38
    inc bc
    rst $38
    inc d
    rst $28
    ld b, $ff
    daa
    rst $38
    rrca
    rst $38

jr_063_5424:
    rlca
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
    pop af
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

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
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp a
    jr nc, @+$01

    jr nc, jr_063_5424

    jr jr_063_54ca

    jr jr_063_540c

    dec e
    jr @-$02

    ld hl, sp-$28
    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp+$1c
    db $fc
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    add sp, $7f
    ld a, [c]
    ccf
    ld [hl], d
    ccf
    db $fd
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $28
    rst $38
    ret nz

    rst $38
    adc h
    rst $38
    or a
    rst $38
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    cp $00
    ld [c], a
    nop
    ld hl, sp+$00
    db $fc
    nop
    jr nc, jr_063_54b0

jr_063_54b0:
    ccf
    rst $38
    ccf
    db $fd
    ccf
    db $fc
    rra
    db $fc
    rra
    ld a, [$f31f]
    ccf
    rst $30
    ccf
    rst $20
    ld a, a
    rst $08
    ld a, a
    pop bc
    ld a, a
    add b
    db $e3
    nop
    ret nz

    nop

jr_063_54ca:
    add c
    nop
    inc l
    nop
    sbc a
    nop
    ld hl, sp-$01
    cpl
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
    rst $38
    nop
    adc a
    ld [hl], b
    dec e
    ld [c], a
    rst $18
    ldh [$2c], a
    di
    cp h
    nop
    ld a, $c1
    pop hl
    rra
    scf
    rra
    ld hl, $181e
    rlca
    nop
    ld bc, $0000
    db $fd
    ld [bc], a
    rst $38
    nop
    cpl
    ldh a, [$27]
    ld hl, sp-$61
    ld h, b
    cp $01
    cp $01
    cp l
    ld b, b
    ld h, e
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, e
    rst $38
    ld b, e
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
    rst $10
    rst $38
    di
    rst $38
    or a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ld a, c
    rst $38
    rst $38

Jump_063_553f:
    rst $38
    daa
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    ld [bc], a
    rst $38
    ld [$c4f7], sp
    ei
    db $10
    rst $28
    nop
    rst $38
    ld b, l
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rrca
    dec hl
    rst $18
    rra
    cpl
    ccf
    rrca
    rrca
    rrca
    rst $38
    rrca
    ld a, [hl-]
    rra
    dec e
    rra
    ld a, [hl-]
    ccf
    ld a, l
    ld a, a
    ld a, [$fdff]
    rst $38
    jr jr_063_5582

jr_063_5582:
    call nc, $ec00
    nop
    ld a, [$f700]
    nop
    db $fd
    nop
    push de
    nop
    sub h
    nop
    or b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    cp $00
    ld sp, hl
    nop
    di
    nop
    sbc e
    rst $38
    rst $18
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $9f
    rst $38
    sbc a
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ccf
    rst $38
    ld a, b
    rlca
    rlca
    nop
    cpl
    nop
    rst $38
    nop
    ld d, $ff
    ld [hl], b
    adc a
    ld a, b
    add a
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    inc bc
    nop
    ld [bc], a
    ld bc, $0102
    ld b, $01

jr_063_55e8:
    dec c
    inc bc
    inc bc
    rrca
    dec hl
    rlca
    cp e
    rlca
    rrca
    ccf
    ld a, a
    rst $38
    pop af
    rst $38
    dec c
    di
    ld [c], a
    inc de
    ld [hl+], a
    pop de
    ldh a, [rP1]
    nop
    nop
    rst $38

jr_063_5601:
    nop
    ei
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_063_55e8

    jr nz, jr_063_562a

    ldh [$3f], a
    ret nz

    rst $18
    jr nz, jr_063_5601

    rst $38
    pop af
    rst $38
    ld a, [c]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$01
    pop af
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38

jr_063_562a:
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $fc
    rst $38
    ld a, [$f0ff]
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    db $f4
    rst $38
    or $ff
    and $ff
    or $ff
    or $ff
    or $ff
    cp $ff
    ld a, [hl]
    rst $38
    rst $38
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
    di
    rst $38
    di
    rst $38
    ld [c], a
    rst $38
    inc e
    inc e
    rlca
    ccf
    nop
    ld a, $a0
    inc e
    jr nc, jr_063_5686

    adc b
    inc d
    db $10
    ld [$0098], sp
    ld e, b
    nop
    adc b
    nop
    inc c
    nop

jr_063_5686:
    ld bc, $0f01
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    cp $c0
    rst $20
    ret nz

    di
    pop bc
    dec de
    pop hl
    rra
    db $e3
    rst $08
    rst $38
    rrca
    rst $38
    rst $30
    rst $38
    add e
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    cp a
    db $fc
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    inc e
    nop
    rst $38
    db $fd
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, d
    db $fd
    ei
    db $fc
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    db $fd
    rst $38
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    sbc a
    rst $38
    ld sp, $e38f
    ld bc, $012b
    jp Jump_000_0001


    ld bc, $0301
    add l
    inc bc
    call nz, Call_000_1e03
    inc bc
    dec hl
    rlca
    dec bc
    rlca
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    adc $ff
    rst $28
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
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    ld sp, $20ff
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc h
    ei
    jr nz, @+$01

    jr nz, @+$01

    ld [hl-], a
    db $fd

jr_063_5758:
    jr nc, @+$01

    jr c, @+$01

    cp a
    rst $38
    cp a
    rst $38
    or l
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    cp $d1
    xor $c8
    rst $30
    ldh a, [$ef]
    ld hl, sp-$01
    add [hl]
    rst $38
    add hl, sp
    rst $00
    ld a, [hl]
    add c
    inc a
    jp $c3bc


    add sp, -$09
    rst $38
    rst $38
    ld [bc], a
    rlca
    inc e
    rlca

jr_063_578a:
    dec hl
    inc e
    sbc a
    ld a, b
    ld a, a
    ld hl, sp-$29
    jr c, jr_063_578a

    jr jr_063_5758

    db $fc
    db $ed
    cp $5e
    rst $38
    ld e, [hl]
    rst $38
    dec a
    cp $7d
    cp [hl]
    rst $38
    cp $fe
    ld a, $7f
    sub h
    rra
    add h
    ccf
    call z, $fcff
    sbc l
    ld hl, sp+$0d
    ld hl, sp+$0f
    ld sp, hl
    ld bc, $71f8
    ld hl, sp-$68
    ld hl, sp-$10
    db $fc
    ld bc, $00fe
    cp $06
    cp $1e
    cp $3f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    ccf
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    rlca
    rst $38
    db $d3
    rst $28
    add c
    rst $38
    pop bc
    cp a
    dec c
    add e
    dec de
    ldh [$63], a
    db $fc
    ld a, c
    cp $a8
    ld d, b
    inc a
    ret nz

    rst $18
    jr nz, @+$18

    pop hl
    dec c
    di
    push af
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
    ld a, a
    rst $38
    rst $08
    rst $38
    pop de
    rst $38
    ld [$d8f7], sp
    and a
    add b
    rst $38
    inc c
    di
    ld b, l
    cp d
    sbc a
    ldh [$0a], a
    db $f4
    add b
    rst $38
    db $ec
    rst $38
    call nz, Call_000_00ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    jr nz, @+$01

    ld bc, $05ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

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
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    cp $ff
    cp $ff
    db $ec
    rst $38
    ld c, a
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    db $e3
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
    ld a, c
    rst $20
    ld h, b
    rst $18
    ld b, b
    cp a
    ld b, [hl]
    cp a
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld c, h
    rst $38
    sbc h
    rst $20
    ld a, $c7
    ld a, h
    add a
    cp $0f
    ld hl, sp+$37
    jp c, Jump_063_41e7

    cp a
    rst $18
    rst $38
    ld e, a
    rst $38
    daa
    rst $38
    inc sp
    rst $38
    xor h
    ld e, a
    ret z

    scf
    call z, $fc33
    inc bc
    db $fc

jr_063_5899:
    inc bc
    db $fc
    inc bc
    xor a
    ld d, b
    rst $38
    nop
    nop

jr_063_58a1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rrca
    rst $38
    ld e, $ff
    inc c
    rst $38
    sbc h
    rst $38
    db $fd
    cp $3d
    cp $3d
    cp $04
    rst $38
    jr jr_063_58a1

    inc a
    rst $00
    ld a, [hl]
    add a
    rst $20
    jr jr_063_5899

    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $fe
    ldh a, [$fc]
    ei
    ld hl, sp-$3a
    ldh a, [$e0]
    ldh [rP1], a
    ret nz

    ret nz

    add b
    rst $00
    nop
    xor [hl]
    nop
    sub c
    ld l, [hl]
    add b
    ld a, a
    ret nz

    ccf
    jr nc, jr_063_58ef

    jr c, jr_063_58f1

    inc bc
    rra
    rst $10
    rrca
    ld l, a

jr_063_58ef:
    sbc a
    rra

jr_063_58f1:
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    sub a
    rst $28
    sub e
    rst $28
    db $d3
    rst $28
    ld h, d
    rst $38
    db $fd
    ld [bc], a
    ei
    nop
    ld sp, hl
    inc b
    db $fc
    ld bc, $01fe
    ld l, a
    nop
    ld a, $01
    inc hl
    rst $38
    rrca
    rst $38
    ld c, e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    ld b, a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    sbc a
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

jr_063_596a:
    cp a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    add sp, -$01
    ldh a, [rIE]
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    pop af
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    jp $01ff


    rst $38
    ld hl, sp+$07
    ld b, $ff
    ld d, a
    rst $38
    rra
    rst $38
    ld [$cef7], sp
    ld sp, $00ff
    rst $08
    jr nc, jr_063_596a

    jr c, @+$42

    cp a
    nop
    rst $38
    jr @+$01

    rst $20
    rra
    ei
    rlca
    rst $00
    ccf
    call $e43f
    rra
    db $f4
    rrca
    ld b, c
    cp a
    ld b, e
    rst $38
    dec e
    db $e3
    db $db
    daa
    rst $08
    ccf
    rst $30
    rrca
    ld [hl], a
    rrca
    scf
    rrca
    db $d3
    rrca
    or $8f
    or $8f
    or $0f
    or $0f
    or $0f
    rlca
    rst $38
    rst $18
    ccf
    ei
    rlca
    adc b
    ld [hl], a
    ld hl, sp+$07
    rst $38
    nop
    rst $28
    db $10
    db $fc
    inc bc
    scf
    rst $08
    ld de, $73ff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $30
    rst $38
    cp $ff
    or $ff
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push bc
    rst $38
    sbc d
    push af
    jp nc, $92fd

    ld a, l
    pop bc
    ccf
    ld a, $01
    ld l, d
    ld bc, $e112
    inc b
    ei
    inc c
    rst $38
    ld e, a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    db $fd
    rst $38
    ei
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec bc
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $18
    cp a
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    cp l
    cp $bc
    rst $38
    cp h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    or b
    rst $08
    cp h
    jp $c3bc


    cp h
    jp $fe81


    adc h
    di
    call nc, $b4ab
    res 5, e
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    add b
    ld a, a
    ld [bc], a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld e, $ff
    rst $18
    inc a
    ld e, [hl]
    cp c
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    xor $fd
    cp $ff
    ld a, [$cbff]
    cp $e7
    cp $f3
    cp $f1
    cp $f3
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, l
    cp $7f
    db $fc
    ld a, l
    cp $fe
    rst $38
    rst $38
    rst $38
    dec l
    rst $38
    ccf
    db $fd
    db $fd
    rst $38
    cp $ff
    ld hl, $21ff
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld hl, $61ff
    rst $38
    ld hl, $c1ff
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    cp $ff
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
    cp $ff
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
    db $ec
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ei
    rst $38
    rst $20
    rst $38
    or a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    cp d
    rst $38
    sbc a
    rst $38
    or b
    rst $38
    ccf
    rst $38
    cp e
    rst $38
    add hl, sp
    rst $38
    ld a, c
    rst $38
    inc a
    rst $38
    cp h
    ld a, a
    cp h
    ld a, a
    ld e, $ff
    dec de
    rst $38
    ccf
    rst $38
    ld h, e
    rst $38
    di
    rst $38
    adc h
    di
    cp a
    ret nz

    or h
    res 3, a
    ldh [$8f], a
    ldh a, [$cf]
    ldh a, [$e0]
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
    ccf
    rst $38
    rla
    rst $28
    ld a, $c1
    rlca
    ld hl, sp+$00
    rst $38
    add b
    ld a, a
    sub c
    ld a, [hl]
    ld e, h
    cp a
    jr c, @+$01

    cp b
    ld a, a
    inc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc [hl]
    rst $38
    sbc $ff
    cp $ff
    rst $18
    rst $38
    reti


    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    rra
    ldh [$fd], a
    nop
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    ld bc, $04ff
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
    ld [$f7f7], sp
    nop
    db $fd
    nop
    rst $08
    nop
    xor a
    ret nz

    rst $30
    ret nz

    ei
    ret nz

    cp a
    ret nz

    rst $38
    add b
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ccf
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    add a
    rst $38
    add a
    rst $38
    add e
    rst $38
    add a
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    ld b, a
    cp a
    ld b, a
    cp a
    ld b, d
    cp a
    inc bc
    rst $38
    ld b, c
    cp a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $04ff
    rst $38
    dec c
    rst $38
    ld [hl], c
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ld b, e
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    rst $00
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ldh a, [rIF]
    pop af
    ld c, $f8
    rlca
    cp $01
    cp [hl]
    ld bc, $00ff
    ld a, a
    add b
    ld a, h
    add e
    inc a
    jp $e19e


    call c, $f0e3
    rst $28
    pop hl
    cp $0e
    rst $38
    rst $38
    rrca
    ld [hl], e
    adc a
    ei
    rlca
    db $fc
    inc bc
    cp $01
    ccf
    ret nz

    rrca
    ldh a, [$73]
    db $ec
    dec bc
    db $f4
    add e
    db $fc
    ld bc, $c6fe
    ld a, c
    xor d
    db $dd
    and b
    rst $18
    ld [$2cff], sp
    rst $18
    dec c
    cp $04
    rst $38
    nop
    rst $38
    ld c, [hl]
    or c
    rst $38
    nop
    rst $38
    nop
    jp $f03c


    rrca
    dec c
    cp $01
    cp $40
    cp a
    ld [hl+], a
    db $dd
    ldh [$1f], a
    sub l

jr_063_5c7f:
    ld l, b
    ld [$08ff], sp
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl-], a
    call $f708
    nop
    rst $38
    ld [de], a
    db $ed
    ld d, $e9
    add hl, bc
    or $00
    rst $38
    nop
    rst $38
    jr nz, jr_063_5c7f

    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    adc a
    rst $38
    jp $c0ff


    rst $38
    rst $00
    rst $38
    jp $e7ff


    rst $38
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
    rst $38
    rst $38
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
    db $ed
    rst $38
    rst $18
    rst $38
    ei
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
    db $fc
    rst $38
    ei
    cp $fb
    cp $fe
    rst $38

Call_063_5cfe:
    cp $ff
    db $f4
    rst $38
    push af
    xor $db
    db $e4
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$cf], a
    ldh a, [$f7]
    ld hl, sp-$01
    rst $38
    cp b
    rst $38
    add c
    cp $11
    xor $14
    rst $28
    ld d, $ef
    ld a, [bc]
    rst $38
    ld b, b
    rst $38
    ld hl, $17ff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    ld b, b
    rst $38
    rrca
    ldh a, [rTAC]
    ld hl, sp+$3f
    ret nz

    ld a, a
    add b
    cp a
    ret nz

    rst $38
    ret nz

    call $02f2
    db $fd
    ret nz

    ccf
    db $fd
    inc bc
    db $dd
    inc hl
    call $c533
    dec sp
    or l
    ld c, e
    xor c
    ld d, a
    dec c
    di
    dec c
    di
    add hl, de
    rst $30
    adc h
    rst $38
    dec e
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $30
    rrca
    xor $01
    ld bc, $81ff
    rst $38
    rlca
    rst $38
    ld b, e

jr_063_5d67:
    rst $38
    jp $c1ff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    ccf
    pop hl
    ld e, $f0
    rrca
    db $fd
    inc bc
    cp [hl]
    ld bc, $00ff
    rst $30
    nop
    adc b
    ld [hl], a
    ld [bc], a
    db $fd
    nop
    rst $38
    jr nz, jr_063_5d67

    nop
    rst $38
    ld bc, $00ff
    rst $38
    dec c
    rst $38
    nop
    rst $38
    ld [$f0ff], sp
    rst $38
    pop af
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    jp $e7ff


    rst $38
    rst $28
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
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $fd
    di
    db $fc
    db $e3
    db $fc
    pop bc
    cp $c9
    cp $c1
    cp $e0
    rst $18
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [c], a
    db $fd
    ldh [rIE], a
    ldh [rIE], a
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    di
    rst $38
    rst $30
    rst $38
    ld [hl], l
    rst $38
    inc d
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    dec hl
    rst $18
    ld c, a
    cp e
    jp $b73f


    ld a, a
    or e
    ld a, a
    or b
    ld a, a
    and a
    ld a, b
    ld [hl], $f9
    jr nz, @+$01

    nop
    rst $38
    cp $01
    cp $01
    db $fd
    ld [bc], a
    ldh a, [rIE]
    rst $38
    rst $38
    cpl
    rst $38
    ld b, a
    rst $38
    ld c, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $ff
    inc bc
    rst $38
    db $fd
    rlca
    cp $07
    ld hl, sp+$07
    cp $01
    cp $01
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $28
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp+$77
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    ld sp, hl
    rst $38
    call c, Call_000_1eff
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
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
    or [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $20
    rra
    ei
    rlca
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, h
    add e
    ld a, h
    add e
    ld a, a
    rst $38
    ld a, e
    rst $38
    set 7, a
    adc e
    rst $38
    add a
    rst $38
    add a
    rst $38
    jp $e3ff


    rst $38
    jp hl


    rst $30
    cp $f3
    ld [c], a
    rst $38
    add $ff
    add [hl]
    rst $38
    add c
    rst $38
    add c
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    set 6, h
    jp $e1fc


    cp $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld b, b
    cp a
    ld bc, $81ff
    ld a, a
    jp nz, $c63f

    ccf
    adc $3f
    ldh [$1f], a
    ld b, c
    cp a
    ld h, c
    sbc a
    inc hl
    rst $18
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ccf
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
    ld a, a
    rst $38
    cp a
    rst $38
    ld c, $ff
    ld e, $ff
    ld d, $ff
    inc c
    rst $38
    ld a, [bc]
    db $fd
    jr @+$01

    jr @+$01

    ld a, h
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    ld a, $c1
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    rst $18
    ld a, a
    sbc l
    ld a, [hl]
    rlca
    ld hl, sp-$41
    ld b, b
    cp a
    ld b, b
    rra
    ldh [$5f], a
    ldh [$1f], a
    ldh [$a1], a
    ld a, [hl]
    ld b, c
    cp $c7
    ld hl, sp-$71
    ldh a, [$2f]
    ret nc

    sbc a
    ldh [$8f], a
    ldh a, [$cf]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call nz, $c8ff
    rst $30
    adc $ff
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cpl
    rst $38
    ld c, $ff
    add hl, sp
    cp $b1
    cp $a7
    ld hl, sp-$1d
    db $fc
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld l, h
    rst $38
    ld a, e
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, a
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $0f
    rra
    jr nz, jr_063_5fd4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_063_5fe4

    ld a, [hl+]
    dec hl
    inc l
    rrca
    dec l
    ld l, $2f
    jr nc, jr_063_5ff5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_063_6005

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_063_5fd4:
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

jr_063_5fe4:
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
    ld h, d

jr_063_5ff5:
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

Jump_063_5fff:
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_063_6005:
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
    rrca
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
    jp nz, $c3c2

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nz, $d3d2

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
    jr jr_063_60c8

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
    jr z, jr_063_60e8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_063_60c8:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_063_60e8:
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0202
    ld bc, $0201
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
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
    ld bc, $0201
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    ld b, $06
    ld b, $02
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
    rlca
    ld b, $06
    rlca
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
    rlca
    rlca
    rlca
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
    nop
    ld b, $04
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $04
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    nop
    ld [bc], a
    dec b
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    inc b
    ld b, $03
    inc bc
    inc bc
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d0d], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc bc
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
    add b
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    cp a
    rst $38
    di
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    inc hl
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    call nz, $c3ff
    rst $38
    db $e3
    rst $38
    ld a, [c]
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    ld bc, $80ff
    rst $38
    adc b
    rst $38
    inc c
    di
    inc d
    ei
    ld b, $f9
    ld h, d
    sbc l
    ld h, e
    sbc h
    pop af
    ld c, $f1
    ld c, $f8
    rlca
    cp $01
    ccf
    ret nz

    or h
    ld c, e
    ld d, b
    xor a
    ld c, b
    or a
    ld c, d
    or a
    ld h, d
    sbc a
    and $1b
    ld h, h
    rst $38
    ld l, h
    rst $38
    adc b
    rst $38
    ld c, b
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    ld b, d
    rst $38
    jp nz, $e6ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, $ff
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add e
    rst $38
    jp $b3ff


    rst $38
    db $e3
    rst $38
    jp $b3ff


    rst $38
    cp a
    rst $38
    push de
    rst $38
    sbc d
    rst $38
    jp c, $d6ff

    rst $38
    cp $ff
    rst $38
    rst $38
    dec e
    rst $38
    add hl, de
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    add a
    rst $38
    ld b, l
    rst $38
    inc de
    rst $38
    ld e, $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld a, [c]
    rst $38
    xor $ff
    call c, $bdff
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
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
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add b
    rst $38
    add b
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
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, a
    rst $38
    rst $38

jr_063_6331:
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    inc hl
    call c, $9c63
    ld b, c
    cp [hl]
    pop bc
    ld a, $00
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, jr_063_6331

    rra
    ldh [rIF], a

jr_063_6355:
    ldh a, [$03]
    db $fc
    dec b
    ld a, [$fb04]
    add b
    ld a, a
    sub b
    ld a, a
    ld b, d
    cp a
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    add a
    ld a, b
    add a
    ld a, b
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld [bc], a
    db $fd
    nop
    rst $38
    jr @+$01

    inc c
    rst $38
    inc c
    rst $38
    ld c, h
    rst $38
    inc b
    rst $38
    dec b
    cp $01
    cp $c0
    ccf
    ld a, [c]
    rrca
    jr c, jr_063_6355

    rrca
    ldh a, [rP1]
    rst $38
    add b
    rst $38
    db $10
    rst $38
    ld c, b
    rst $38
    inc b
    rst $38
    inc h
    rst $38
    and d
    ld a, a
    ld b, b
    cp a
    ld h, c
    rst $38
    inc de
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
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    di
    rst $38
    push af
    rst $38
    jp c, $b6ff

    rst $38
    ld h, h
    rst $38
    pop bc
    rst $38
    jp $87ff


jr_063_63db:
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, $ff
    inc a
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    jp $87ff


    rst $38
    rlca
    rst $38
    rlca
    rst $38
    cp a
    rst $38
    ccf
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    jr nc, @+$01

    jr c, @-$37

    jr c, jr_063_63db

    dec b
    ei
    nop
    rst $38
    ld b, b
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    adc b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
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
    rst $18
    rst $38
    rst $38
    rst $38
    xor $ff
    ld a, a
    add b
    ld c, a
    or b
    rst $20
    jr @+$01

    nop
    cp a
    ld b, b
    ld h, b
    sbc a
    inc hl
    rst $18
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    and $f9
    call nz, Call_000_0efb
    pop af
    cp $01
    cp $ff
    ld a, [hl]
    rst $38
    ld l, $ff
    rlca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [$18ff], sp
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $40ff
    cp a
    ld b, d
    cp a
    ld h, b
    sbc a
    ld sp, hl
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, $ff
    ld a, $ff
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    adc a
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld h, c
    sbc [hl]
    ld hl, $64de
    sbc a
    inc b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld h, $df
    rlca
    rst $38
    inc bc
    rst $38
    and c
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    ld h, b
    rst $38
    and b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    inc c
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    adc a
    ld [hl], b
    add a
    ld a, b
    ld d, e
    cp h
    and e
    ld a, h
    add hl, de
    cp $1c
    rst $38
    ld [$86ff], sp
    ld a, a
    add a
    ld a, a
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    pop bc
    ccf
    ld b, b

jr_063_653b:
    cp a
    nop

jr_063_653d:
    rst $38
    sub b
    rst $28
    sub h
    rst $28
    ret nc

jr_063_6543:
    rst $28
    sub d
    rst $28
    ld a, h
    db $e3
    inc l

jr_063_6549:
    di
    dec c
    di
    dec c
    di
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    add sp, -$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $c1ff
    ccf
    nop
    rst $38
    jr nz, jr_063_6549

    jr nc, jr_063_653b

    jr nc, jr_063_653d

    inc e
    db $e3
    ldh a, [$cf]
    jr nc, jr_063_6543

    or b
    rst $08
    and l
    rst $18
    nop
    rst $38
    ld b, b
    cp a
    ld b, [hl]
    cp a
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    rst $38
    nop
    sbc a
    ld h, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $0afe
    push af
    ld bc, $01fe
    cp $01
    rst $38
    ld bc, $21ff
    rst $38
    ld bc, $48ff
    rst $38
    ld [$10ff], sp
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    rst $00
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld bc, $00ff
    rst $38
    ld [$58ff], sp
    rst $38
    inc hl
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add b
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    add e
    rst $38
    db $e3
    rst $18
    ld h, e
    rst $18
    scf
    rst $08
    rla
    rst $28
    inc hl
    rst $18
    inc sp
    rst $08
    db $fc
    inc bc
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, a
    add e
    ld a, a
    add e
    ld a, l
    add e
    dec a
    jp $e19f


    sbc $e1
    adc $f1
    rst $28
    ldh a, [$cf]
    ldh a, [$93]
    db $fc
    ld [hl], a
    ld hl, sp-$4e
    db $fd
    ld [hl], c
    cp $10
    rst $38
    ret nc

jr_063_6643:
    rst $38
    add hl, bc
    cp $01
    cp $20
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [$31f7], sp
    rst $08
    jr jr_063_6643

    ld [$69f7], sp
    or $68
    rst $30
    db $ec
    di
    db $fc
    di
    call z, Call_063_4cf3
    di
    adc h
    di
    db $ec
    di
    inc c
    di
    rrca
    ldh a, [rIF]
    ldh a, [$50]
    rst $28
    ld b, l
    rst $38
    ld b, h
    rst $38
    add d
    rst $38
    inc b
    rst $38
    add h
    ld a, a
    ld a, [$f407]
    dec bc
    ld hl, sp+$07
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $ec
    inc de
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    cp $ff
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add d
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, c
    rst $38
    ld h, e
    rst $38
    inc hl
    rst $38
    ld bc, $01fe
    cp $01
    cp $04
    ei
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    add c
    ld a, a
    and b
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld b, $ff
    inc c
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    inc a
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    inc e
    rst $38
    ccf
    rst $38
    ld b, c
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rlca
    rst $38
    cpl
    rst $38
    jr c, @+$01

    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    push hl
    ei
    ld [c], a
    db $fd
    push hl
    ld a, [$f0ef]
    ld [hl-], a
    db $fd
    ld e, [hl]
    cp a
    dec bc
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $e3
    rst $38
    ld h, e
    rst $38
    ld [hl], b
    rst $38
    cp h
    rst $38
    db $ec
    rst $38
    ldh a, [rIE]
    ret c

    rst $38
    dec l
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    ret nz

    ccf
    add d
    ld a, a
    sbc h
    ld a, a
    inc a
    rst $38
    ld e, $ff
    call z, $cc3f
    ccf
    adc $3f
    adc $3f
    adc $3f
    ld h, a
    sbc a
    and a
    rst $18
    and e
    rst $18
    inc sp
    rst $08
    ld [hl], e
    adc a
    cp b
    rst $00
    adc b
    rst $30
    dec b
    rst $38
    push bc
    ccf
    ld sp, hl
    rlca
    di
    rrca
    ld a, a
    add e
    ld a, a
    add e
    or $0b
    db $fd
    inc bc
    ld l, h
    sub e
    ld a, [hl-]
    push bc
    cp $01
    ccf
    ret nz

    add a
    ld hl, sp+$60
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld c, $f1
    ei
    inc b
    call nz, $c43b
    dec sp
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
    ld sp, hl
    rst $38
    pop af
    rst $38
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
    dec b
    rst $38
    add c
    ld a, a
    add a
    ld a, a
    rst $08
    ccf
    ld hl, sp+$07
    rst $38
    nop
    ccf
    ret nz

    ld b, h
    ei
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld b, $f9
    inc b
    ei
    nop
    rst $38
    ld bc, $81ff
    ld a, a
    inc de
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    cp a
    rst $08
    ccf
    rst $08
    ccf
    adc a
    ld a, a
    rra
    rst $38
    inc l
    rst $38
    ld [hl+], a
    db $fd
    jr @+$01

    jr c, @+$01

    db $10
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ld [$01ff], sp
    cp $01
    cp $b1
    or c
    inc b
    ld bc, $4144
    call nz, $d5c3
    jp nc, $c6c1

    pop hl
    db $ec
    add sp, -$15
    add sp, -$17
    ldh [$ed], a
    ret nz

    jp z, $cbc0

    jp nz, $dbd7

    rst $38
    db $d3
    di
    inc b
    dec de
    nop
    dec e
    inc b
    dec hl
    xor c
    or [hl]
    and c
    xor [hl]
    and c
    and d
    and c
    and d
    and b
    or c
    and b
    or [hl]
    ld b, $1e
    add [hl]
    sub a
    nop
    ld de, $3a09
    ld bc, $1636
    add hl, hl
    db $10
    ld l, $03
    inc de
    and h
    db $eb
    adc h
    di
    sbc c
    push hl
    add d
    ei
    call nz, $09bd
    ld a, [$73d0]
    db $10
    db $d3
    inc c
    rst $08
    inc b
    rst $20
    inc e
    rst $18
    ld h, b
    db $e3
    add hl, sp
    rst $38
    ld hl, $24e7
    db $ed
    ld [hl-], a
    di
    ld [de], a
    ld a, [c]
    dec e
    rst $38
    sub b
    cp $0c
    db $fc
    inc c
    db $fc
    dec c
    db $fd
    ld b, [hl]
    cp $96
    cp $ae
    rst $38
    adc [hl]
    rst $38
    di
    rst $38
    rst $30
    ei
    jp hl


    rst $30
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [de]
    ei
    ld c, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld l, l
    rst $38
    or b
    ld a, a
    ld [hl], b
    rst $38
    ld h, h
    rst $38
    ld a, d
    rst $38
    ccf
    rst $38
    cp e
    ld a, a
    or c
    ld a, a
    cp e
    ld a, a
    cp a
    ld a, a
    adc l
    ld a, a
    or h
    ld a, a
    ld b, $ff
    rrca
    rst $38
    ld b, e
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld [$15ff], sp
    cp $08
    rst $38
    add hl, de
    rst $38
    ld d, c
    cp a
    ld b, e
    cp a
    db $e3
    rra
    db $e3
    inc e
    add d
    ld a, l
    ret nz

    rst $38
    add l
    rst $38
    dec de
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $e4

jr_063_68c7:
    rst $38
    and b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    pop hl
    rst $38
    pop af
    rst $38
    push bc
    ei
    adc $f3
    cp b
    rst $00
    ld a, h
    add e
    jr jr_063_68c7

    inc e
    db $e3
    dec e
    db $e3
    ccf
    pop bc
    ld a, [hl]
    add c
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    db $10
    rst $08
    sub [hl]
    add hl, bc
    ld [hl+], a
    dec e
    nop
    ccf
    jr nz, jr_063_691b

    ld e, b
    daa
    db $fc
    inc bc
    ld c, c
    sub [hl]
    rrca
    cp $0d
    adc [hl]
    add c
    xor d
    add hl, bc
    sub [hl]
    sbc l
    ld [c], a
    rrca
    ldh a, [$0a]

jr_063_690f:
    cp l
    db $10
    rst $20
    inc bc
    and e
    ld c, d
    rst $30
    pop hl
    ld a, a
    ld h, d
    ei
    ld e, d

jr_063_691b:
    rst $00
    ld d, b

jr_063_691d:
    rst $28
    jr nz, jr_063_690f

    rrca
    nop
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ccf
    inc h
    ccf
    jr nz, jr_063_697c

    jr nz, jr_063_697e

    jr nz, jr_063_6980

    jr nz, @+$41

    jr nz, jr_063_6984

    jr nz, jr_063_6986

    jr nz, jr_063_6988

    inc hl
    inc a
    inc h
    jr c, jr_063_6986

    jr nz, jr_063_6970

    dec d
    ld d, l
    ld l, $6e
    adc [hl]
    adc $13
    ld d, e
    dec sp
    ld a, a
    db $10
    ld d, a
    jr jr_063_691d

    ld c, d
    ld [$9808], a
    add l
    ld d, l
    inc l
    db $ec
    adc b
    adc b
    ret


    ret


    db $eb
    rst $28
    ld sp, hl
    rst $38
    ldh a, [$f7]

jr_063_6970:
    rst $08
    di
    ccf
    jp $d32f


    rlca
    ei
    rst $10
    dec sp
    sbc l
    ld a, e

jr_063_697c:
    reti


    ccf

jr_063_697e:
    sbc c
    ld a, a

jr_063_6980:
    ld [$ee1d], a
    dec e

jr_063_6984:
    ld l, l
    sbc a

jr_063_6986:
    ld a, l
    adc a

jr_063_6988:
    ld h, h
    sbc a
    ld l, h
    sbc a
    inc c
    rst $38
    inc b
    rst $38
    ld b, d
    cp a
    ld h, $ff
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $38
    inc [hl]
    rst $38
    ld [hl], h
    rst $38
    or h
    rst $38
    sub a
    rst $38
    db $d3
    rst $38
    ret nc

    db $fc
    add b
    rst $38
    ret nz

    and a
    ld b, d
    xor e
    add c
    ld a, a
    jr c, @+$01

    ld a, h
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    cp $ff
    ld h, b
    rst $38
    ld b, e
    rst $38
    add c
    rst $38
    sbc c
    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    db $10
    rst $38
    jr @+$01

    inc d
    ei
    ld sp, $21ff
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    add e
    rst $38
    add a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, $ff
    inc a
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    jp nz, Jump_063_40fd

    cp a
    add h
    ld a, a
    rst $20
    rra
    rst $30
    rrca
    sbc e
    ld h, a
    dec b
    ei
    dec c
    di
    inc bc
    rst $38
    ld [bc], a
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    add b
    ccf
    ld b, [hl]
    add hl, sp
    add d
    ld a, l
    ld [bc], a
    db $fd
    ld [hl+], a
    db $fd
    and h
    ld a, e
    rlca
    ei
    rlca
    ei
    inc de
    rst $38
    sbc a
    sbc a
    sub a
    sub a
    rla
    rla
    ld d, $16
    ld [hl], $36
    ld b, $06
    ld [bc], a
    ld e, $00
    db $fc
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $08
    cp $08
    cp $08
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
    ld bc, $06fe
    rrca
    rst $38
    ccf
    rst $38
    ld c, [hl]
    adc $ae
    xor [hl]
    rra
    rra
    ld l, a
    ld l, a
    rst $18
    rst $18
    xor l
    xor l
    ld d, $bf
    ld d, a
    ld [hl], a
    ld e, a
    ld e, a
    rst $18
    rst $18
    ld a, d
    ld a, d
    ld hl, sp-$01
    ldh a, [rIE]
    or h
    cp e
    or h
    cp d
    db $ed
    db $e3
    ld e, c
    ld h, a
    ld a, [bc]
    rst $30
    ld l, e
    sub a
    ld c, d
    or a
    dec b
    ld a, e
    sub c
    rst $38
    sbc b
    rst $38
    sbc h
    ei
    db $db
    rst $38
    db $dd
    rst $38
    sbc $ff
    rst $10
    rst $38
    call c, Call_000_07ff
    cp $82
    rst $38
    jp z, $ceff

    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    db $e4
    ei
    db $ed
    di
    ld a, [$f8fd]
    rst $38
    ld bc, $81fd
    ld a, a
    nop
    rst $38
    ld [bc], a
    db $fd
    dec e
    db $e3
    ld b, e
    rst $38
    rrca
    ld a, a
    ret nz

    db $ed
    ld b, $f6
    inc bc
    ei
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    adc e
    rst $38
    cp l
    rst $38
    ld e, $ff
    rst $20
    rst $38
    ld hl, sp-$01
    cp h
    rst $38
    rra
    rst $38
    ld c, $ff
    inc c
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    push af
    ei
    db $f4
    ei
    ldh [rIE], a
    pop bc
    rst $38
    rst $10
    rst $38
    call nc, $9fff
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
    ld [hl], b

jr_063_6ae3:
    rst $38
    ld [hl], a
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    rst $00
    ld hl, sp-$71
    ldh a, [$9e]
    and c
    ccf
    ld a, a
    cpl
    ld a, a
    ld l, e
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ret nz

    ld hl, sp-$30
    rst $08
    ld b, d
    ld e, a
    nop
    rra
    nop
    cp a
    nop
    rst $38
    inc b
    rst $38
    inc bc
    ccf
    ld d, e
    ld c, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    sub b

jr_063_6b11:
    ld e, a
    db $10
    sub $38
    ei
    ld a, b
    ld a, c
    xor [hl]
    cp [hl]
    adc b
    adc b
    inc b
    inc b
    nop
    add d
    jr nz, jr_063_6b11

    jr nc, jr_063_6ae3

    ld c, b
    rst $08
    ld [$088f], sp
    adc a
    ld [$008f], sp
    inc bc
    nop
    ld bc, $0200
    nop
    add c
    nop
    ld b, b
    inc d
    db $dd
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ld c, b
    ld c, b
    ret z

    db $db
    ldh [$e4], a
    ret z

    ret


    ld h, b
    ld l, a
    ld b, b
    ld d, a
    ret nz

    db $d3
    ld h, b
    ld [hl], e
    ld l, h
    rst $38
    inc c
    rst $38
    ld [$48fb], sp
    ld a, d
    ret z

    reti


    ret z

    ld a, [$f5c0]
    add b
    cp a
    add b
    rst $38
    nop
    rst $38
    ld bc, $81fe
    cp $82
    db $fd
    ldh [rIE], a
    db $e4
    ei
    db $ec
    di
    xor h
    di
    adc l
    di
    dec de
    rst $20
    add c
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    call z, $c8f3
    rst $30
    ld b, $ff
    ld e, $ff
    ld b, b
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    cp a
    add b
    sbc b
    add l
    ld a, [$b708]
    ld h, c
    db $ed
    ld [hl], d
    ld a, d
    ret nz

    set 4, h
    ei
    ld h, b
    ld a, [hl]
    ld c, $f0
    nop
    rst $38
    ld [$8ef4], sp
    pop af
    pop hl
    cp $f7
    rst $38
    rst $30
    rst $38
    db $f4
    push af
    ldh a, [rIE]
    push hl
    db $eb
    ret


    push af
    rst $20
    rst $18
    rst $00
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld a, [$fcff]
    ei
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    rst $38
    add d
    ld a, a
    inc hl
    sbc $05
    cp $84
    ld a, a
    rrca
    db $fc
    srl h
    ei
    inc c
    srl h
    add e
    ld [hl], h
    add b
    ldh [$e0], a
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld [hl], e
    rst $28
    ld h, b
    rst $38
    ld h, b
    ld h, b
    ret nz

    ret nz

    ldh [$e0], a
    rst $28
    xor $7f
    ld a, [hl]
    ld a, a
    ld a, [hl]
    rst $38
    cp $7f
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ccf
    ld a, $7f
    ld a, [hl]
    ld l, a
    ld l, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $eb
    ld [$d0d1], a
    pop bc
    ret nz

    ld h, c
    ld h, b
    rra
    pop hl
    sbc a
    ld h, c
    adc a
    ld [hl], c
    ld bc, $85ff
    ei
    or c
    rst $08
    sbc l
    db $e3
    ld sp, $31cf
    rst $08
    dec h
    db $db
    ld de, $9def
    ld h, e
    ld c, l
    or e
    adc l
    ld [hl], e
    ld bc, $81ff
    ld a, a
    add e
    ld a, a
    inc hl
    rst $18
    inc bc
    rst $38
    db $e3
    rra
    inc de
    rst $28
    add e
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    jp Jump_000_233c


    call c, $f847
    rst $00
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    jp $c3fc


    db $fc
    rst $00
    ld hl, sp+$27
    ld hl, sp+$67
    ld hl, sp+$2f
    ldh a, [rNR22]
    ld hl, sp-$71
    ldh a, [$97]
    ld hl, sp+$77
    ld hl, sp-$09
    ld hl, sp+$3f
    ret nz

    inc bc
    db $fc
    dec e
    ld a, l
    nop
    rst $38
    add hl, de
    and $81
    cp $cd
    cp $3e
    ld a, a
    ld e, $fe
    nop
    cp $d0
    db $d3
    adc e
    adc e
    nop
    add b
    jr c, @-$06

    ld h, a
    ld h, a
    sub e
    or e
    cp h
    cp h
    ld a, l
    ld a, l
    ld a, e
    ld a, e
    and a
    ld e, a
    ld [hl], c
    adc a
    ld l, h
    sub e
    ld a, [hl-]
    push bc
    ld e, $e1
    jp $80dc


    xor a
    call z, $c6ff
    cp $e0
    db $fd
    ldh [$fd], a
    ret nz

    db $fd
    pop hl
    sbc $b1
    adc $89
    or $71
    cp $79
    db $f4
    add hl, bc
    or $19
    and $fa
    push bc
    jp z, $faf5

    db $fd
    db $fc
    rst $38
    rst $38

jr_063_6cdb:
    rst $38
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
    jp Jump_063_553f


    cp e
    rst $00
    add hl, sp
    add [hl]

jr_063_6ced:
    ld a, c
    adc h
    ld [hl], e
    nop
    ld a, a
    db $e3
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    pop hl
    rst $38
    ld b, c
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    nop
    nop
    rlca

jr_063_6d03:
    ld hl, sp+$00
    rst $38
    rra
    rst $38
    ld c, $ff
    jr nc, jr_063_6cdb

    inc sp
    call z, $ce31
    rst $08
    jr nc, jr_063_6ced

    dec h
    swap h
    jp c, $de25

    ld hl, $25da
    sbc $21
    db $db
    inc h
    sbc $21
    rst $18
    jr nz, jr_063_6d03

    ld hl, $20df
    rst $38
    nop
    rst $18

jr_063_6d2b:
    jr nz, @+$01

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
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret z

    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$01
    ldh [rIE], a
    add sp, -$01
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
    add sp, -$01
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
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
    add b
    sbc a
    inc a
    db $fd
    ld b, a
    or a
    or b
    ld c, [hl]
    ret c

    daa
    nop
    rst $38
    nop
    ld a, a
    ld a, b
    ld a, a
    jr jr_063_6d2b

    db $ec
    db $ec
    inc a
    inc a
    rrca
    rrca
    cp [hl]
    cp [hl]
    pop af
    pop af
    inc b
    rra
    ld e, [hl]

jr_063_6d99:
    ld e, a
    sbc b
    sbc b
    call nz, $c3fc
    rst $38
    jr z, jr_063_6d99

    inc bc
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    rrca
    ldh a, [rSB]
    rst $38
    ld bc, $61fd
    push hl
    sbc l
    ld a, l
    rst $08
    cpl
    adc $3e
    add [hl]
    ld a, [hl]
    or [hl]
    ld c, [hl]
    xor [hl]
    ld c, [hl]
    ld c, $ee
    ld e, a
    cp a
    ld e, h
    cp h
    db $10
    rst $10
    sub b
    ld e, l
    add b
    ld a, l
    nop
    db $ec
    ld bc, $93ed
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    db $fc
    ret nz

    db $fc
    ld b, h
    rst $38
    push bc
    rst $38
    add e
    rst $38
    add c
    rst $38
    nop
    nop
    rst $38
    nop
    dec bc
    db $f4
    rst $38
    rst $38
    add b

jr_063_6df9:
    rst $38
    rla
    add sp, -$01
    nop
    rst $38
    nop
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
    add b
    ld a, a
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
    ld d, b
    xor a
    jr nz, jr_063_6df9

    ld b, h
    cp e
    sub b
    ld l, a
    ld l, b
    sub a
    reti


    ld h, $fa
    dec b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_063_6e3f:
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    ld d, l
    rst $38
    ei
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
    nop
    ei
    ldh [$ee], a
    ld hl, sp-$04
    rra
    sbc a
    inc c
    rst $28
    sub b
    sub a
    ld b, e
    jp $f838


    cp $fe
    rrca
    rrca
    nop
    db $fc
    jr jr_063_6e3f

    inc c

jr_063_6e85:
    call z, $b000
    ld b, b
    ret nz

    ld bc, $02f1
    rst $20
    call nz, $ddf8
    ldh [rDIV], a
    ld hl, sp+$01
    cp $ce
    rst $38
    nop
    rst $38
    ret nc

    cpl
    jr jr_063_6e85

    nop
    rst $38
    add b
    cp e
    rrca
    rrca
    ld bc, $0f01
    rrca
    dec b
    dec b
    ld b, h
    ld b, h
    ld h, b
    ld h, b
    ldh [$e0], a
    dec de
    sbc e
    dec e
    db $fd
    rra
    cp a
    rra
    rst $18
    db $fd
    db $fd
    add a
    add a
    rst $10
    rst $10
    ei
    ei
    pop af
    ld sp, hl
    rst $30
    rst $38
    push af
    db $fd
    ldh a, [$fd]
    pop af
    cp $f9
    or $e8
    rst $30
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld a, a
    inc b
    ld a, a
    rra
    rst $38
    ld d, e
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    nop
    cp a
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    xor b
    ld d, a
    dec c
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    dec d
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ld d, h
    xor e
    xor b
    ld d, a
    and l
    ld e, d
    ld e, b
    and a
    db $ed
    ld [de], a
    ld a, [$fd05]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $a6ff
    rst $38
    ld c, e
    rst $38
    xor l
    rst $38
    ld d, e
    rst $38
    jp c, Jump_063_77ff

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    add b
    cp a
    inc b
    db $f4
    db $e3
    db $e3
    ld bc, $40ff
    rst $38
    add b
    adc a
    ld b, b
    ld b, e
    nop
    nop
    or $f6
    db $ec
    db $ec
    inc c
    inc de
    ldh a, [$f7]
    pop hl
    db $ed
    jp nz, $86c2

    ld a, [hl]
    ld [$f8a8], sp
    ld hl, sp+$04
    inc c
    db $10
    rla
    ld b, b
    ld e, a
    ld b, a
    ld e, a
    and d
    and d
    and b
    and b
    xor h
    xor l
    ld [hl], h
    ld [hl], h
    nop
    ld a, a
    pop bc
    cp $80
    sub a
    pop hl
    push hl
    call $c7dd
    rst $00
    sub b
    or [hl]
    ld e, b
    ld a, d
    jr nz, jr_063_7010

    inc l
    ld a, [hl]
    ld [hl-], a
    ld [hl], a
    ld c, e
    rst $10
    ld bc, $037d
    dec e
    nop
    adc a
    nop
    ld a, a
    nop
    ld a, a
    db $10
    ld l, a
    db $10
    rst $08
    ret nz

    rst $18
    ret nz

    rst $38
    add b
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    sub [hl]
    add b
    rst $00
    ret nz

    rst $20
    ld b, h
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    rst $38
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
    ld a, [hl]
    rst $38
    inc l
    rst $38
    jr z, @+$01

    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    and d
    ld e, l
    ld b, h
    cp e
    sub l
    ld l, d

jr_063_7010:
    ld d, l
    xor d
    cp l
    ld b, d

jr_063_7014:
    ld [$d715], a
    jr z, jr_063_7014

    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
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
    rlca
    rst $38
    add e
    rst $38
    daa
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    xor a
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
    ccf
    rst $38
    ld b, b
    ld e, e
    add sp, -$18
    ld b, $06
    nop
    rst $38
    db $10
    rst $28
    ld b, b
    cp a
    ldh [$ef], a
    nop
    rlca
    nop
    jr jr_063_7073

jr_063_7073:
    cp $ca
    push de
    dec bc
    inc c
    jr c, jr_063_70b5

    call c, Call_000_04ff
    ld c, $78
    ld a, a
    ld b, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld sp, hl
    nop
    rla
    add sp, -$08
    rst $38
    call z, $e733
    jr jr_063_70a5

    rst $28
    ld de, $42ef
    cp d
    ld h, b
    nop
    add b
    ldh [$a0], a
    ret nz

    ld h, e
    db $ec
    ld h, e
    ld l, h
    ld l, c

jr_063_70a5:
    db $76
    ld [hl], c
    ld a, [hl]
    di
    ld hl, sp-$0d
    ld hl, sp+$11
    ld d, d
    nop
    ld h, e
    ld d, $16
    ld d, $16
    ld [de], a

jr_063_70b5:
    ld a, [de]
    ld [bc], a
    ld a, [de]
    inc b
    ld e, $d0
    sbc $c0
    call nz, Call_063_4a42
    ld b, $f8
    ld b, $f8

jr_063_70c4:
    inc b
    cp b
    jr nz, jr_063_70c4

    nop
    db $fc
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    inc de
    db $ed
    push bc
    ei
    add l
    ei
    ld h, a
    ei
    ld h, a
    ei
    ld h, a
    ei
    ld h, a
    ei
    rst $28
    di
    xor d
    or $ea
    or $ca
    or $ce
    or $ce
    or $6e
    sub $fe
    add $de
    and $b6
    adc $16
    xor $b6
    adc $54
    xor [hl]

jr_063_7102:
    db $f4
    adc h
    ld [hl], h
    adc h
    ld [hl], h
    adc h
    ld [hl], h
    adc h
    db $f4
    inc c
    ldh a, [$0c]
    ldh [rNR23], a
    jr z, jr_063_7102

    ld [$08f0], sp
    ldh a, [$08]
    ldh a, [rOBP0]
    ldh a, [rOBP0]
    ldh a, [rLCDC]
    ldh a, [$50]
    ldh [rLCDC], a
    ldh a, [rLY]
    ldh a, [$c7]
    ldh a, [$87]
    ldh a, [$f7]
    ldh [rIE], a
    ldh [$af], a
    ldh [$a3], a
    ldh [$e3], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$f0], a
    ldh [$fb], a
    ret nz

    rst $38
    ret nz

    rst $38

jr_063_713d:
    ret nz

    rst $38
    ret nc

    cp $c0
    cp $c0
    cp $e0
    ld a, [hl]
    ret nz

    ld a, h
    ldh [$7c], a
    ret nz

    ld [hl], h
    ret nz

    db $fc
    ret nz

    rst $00
    ccf
    add a
    ld a, a
    adc a
    ld a, a
    adc e
    ld a, a
    adc a
    ld a, a
    adc e
    ld a, a
    sbc e
    ld a, a
    sbc c
    ld a, a
    ret nz

    ldh a, [$c0]
    ldh [$d0], a
    adc $c0
    db $fc
    call c, Call_000_00ff
    inc bc
    ret nz

    pop hl
    inc c
    db $ec
    ld c, $11
    cp l
    add d
    jr c, jr_063_713d

    ret z

jr_063_7177:
    jr z, jr_063_7179

jr_063_7179:
    nop
    ld bc, $02ff
    ld c, $a0
    and a
    ld [$930b], sp
    sub e
    nop
    add b
    inc a
    cp $8c
    cp a
    inc de
    rra
    ld d, c
    ld e, a
    ret nz

    adc $02
    ld a, l
    ld [hl], a
    adc b
    cp b
    ld b, a
    jr nz, jr_063_7177

    nop
    ccf
    ld [bc], a
    ld [bc], a
    ld bc, $0401
    inc b
    add b
    ld a, d
    pop bc
    cpl
    jp nz, $cc37

    ld a, $ef
    rra
    rst $20
    db $10
    add $29
    add b
    ld e, l
    ld bc, $25ed
    ret


    inc b
    ei
    nop
    and $08
    db $db
    inc a
    cp a
    inc a
    ccf
    inc e
    rst $38
    xor a
    db $10
    ld [hl-], a
    inc e
    add hl, sp
    ld e, $31
    ld a, $79
    ld a, $0e
    ld [hl], b
    and $70
    sub d
    ldh [$80], a
    ldh a, [rNR50]
    ld d, b
    ld [bc], a
    ld a, b
    ld bc, $007f
    ld a, a
    rlca
    ld a, a
    ld d, $ff
    inc a
    rst $38
    ld a, [hl]
    rst $38
    ld a, e
    rst $38
    ld e, a
    rst $38
    db $dd
    rst $38
    adc $ff
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ld a, l
    cp $7d
    cp $77
    db $fc
    cp b
    rst $38
    pop hl
    rst $38
    nop
    rst $30
    ld b, b
    rst $30
    add b
    rst $30
    add b
    rst $20
    add b
    adc e
    add c
    add a
    add a
    cp a
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ret z

    rst $38
    ld e, [hl]
    ld a, c
    ld b, $f9
    scf
    cp b
    dec [hl]
    ld a, $60
    ld a, l
    ret z

    db $fc
    add b
    ei
    add d
    ld a, [$ff02]
    inc bc
    ld a, [c]
    add c
    ld a, [c]
    add b
    ld hl, sp-$77
    ldh a, [$98]
    ldh [$f8], a
    ret nz

    ld b, b
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    cp $fe
    db $fd
    db $fd
    add b
    rst $38
    ret nz

    rst $38
    ld b, c
    ld a, [hl]
    ld d, c
    ld a, [hl]
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop hl
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    di
    rst $38
    dec bc
    ld e, a
    ccf
    ccf
    ld bc, $0077
    jp nz, Jump_000_2f0f

    ld c, a
    xor a
    nop
    ld [hl], b
    nop
    ld [$c480], sp
    add b
    add e
    add c
    sbc e
    ld [$e8ec], sp
    rla
    db $fc
    inc bc
    ldh a, [rIF]
    ld e, a
    ldh [$2c], a
    adc h
    ld a, c
    ld c, [hl]
    ld [hl-], a
    jr nz, jr_063_7287

jr_063_7287:
    dec b
    ldh [$e6], a
    or a
    or a
    add e
    add e
    add b
    add b
    ld h, b
    ld h, b
    nop
    db $fc
    jp nz, $c83e

    scf
    nop
    rst $38
    db $10
    db $ed
    ld hl, sp-$08
    ld c, h
    ld c, [hl]
    inc e
    ld d, e
    inc l
    ld d, d
    ld bc, $40a6
    ccf
    add b
    add b
    ldh a, [rIF]
    ld a, a
    add b
    adc h
    or e
    add b
    rst $38
    jp nz, $c2fd

    db $fd
    ld b, d
    db $dd
    ld h, d
    db $fd
    ld h, [hl]
    ld sp, hl
    and b
    rst $28
    ldh a, [$f4]
    add h
    ld bc, $0107
    rlca
    ld bc, $038c
    nop
    rrca
    inc b
    ld [$0c00], sp
    inc e
    nop
    inc e
    nop
    inc e
    nop
    ld b, b
    jr c, jr_063_72ff

    db $fc
    cp [hl]
    db $fc
    or $fc
    ld [hl], $ff
    daa
    rst $38
    di
    rst $38
    ld [c], a
    rst $38
    ei
    rst $20
    db $eb
    db $e4
    ld c, c
    and $c7
    ldh [$e7], a
    ret nz

    rst $00
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    adc $31
    rst $00
    ccf
    ld b, c
    cp [hl]
    inc bc
    db $fc
    ret nc

    xor $f0

jr_063_72ff:
    adc $3a
    add h
    or b
    ld [$20c0], sp
    or b
    ld b, b
    ld b, b
    add b
    add b
    nop
    ret nc

    ldh [$fc], a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $01fe
    cp $00
    cp $02
    db $fc
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    ld [de], a
    db $fd
    ld a, [bc]
    push af
    ld c, $f1
    ld [$90d7], sp
    inc de
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    or l
    ei
    ld bc, $60ff
    rst $38
    ld h, [hl]
    rst $38
    ld l, a
    cp $6e
    rst $38
    xor $ff
    db $f4
    rst $30
    call c, $d9fe
    rst $38
    ret c

    cp $d3
    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$02
    db $db
    rst $38
    cp $fe
    add hl, de
    ld sp, hl
    ld [$09c8], sp
    add hl, de
    jp Jump_000_00d3


    ld [hl], b
    ld b, $f6
    ld l, e
    ld a, e
    ld a, [hl+]
    ld a, [hl-]
    db $10
    add hl, de
    db $10
    ld e, a
    ldh a, [$f7]
    db $10

jr_063_7377:
    or a
    nop
    or a
    ld [hl], b
    db $76
    ld [$10bb], sp
    ld c, $17
    ld a, a
    inc bc
    cp e
    inc bc
    rst $38
    nop
    ld bc, $3fc0
    add hl, de
    cp d
    ld a, [hl]
    rst $38
    ld [bc], a
    rst $30
    db $fc
    ld b, d
    call z, $e0d2
    ldh [$b8], a
    cp e
    cp b
    cp a
    ld hl, sp-$01
    ld [hl-], a
    push af
    ld [$2f0d], sp
    rst $18
    inc bc
    ld a, a
    add c
    ld c, l
    nop
    dec a
    add b
    db $fc
    nop
    ld a, [hl-]
    ld hl, sp+$07
    jr c, jr_063_7377

    nop
    ld a, [$f800]
    nop
    call c, $fd00
    nop
    sbc $80
    ld c, l
    nop
    rst $00
    nop
    db $76
    add e
    cp $82
    rst $38
    add c
    cp $89
    cp $da
    db $fc
    di
    db $fc
    ld [hl], c
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    rlca
    ld a, d
    inc de
    ld l, b
    scf
    ld c, b
    ld e, $60
    ld [$ab76], sp
    ld [hl], h
    jp hl


    or $70
    rst $38
    inc [hl]
    rst $38
    ccf
    rst $38
    cp a
    ccf
    dec de
    ccf
    push de
    dec sp
    ld d, e
    ld sp, hl
    add e
    ld a, c
    inc bc
    add hl, sp
    inc hl
    add hl, de
    ld bc, $53f9
    cp c
    sub a
    add hl, sp
    add hl, de
    ccf
    add hl, de
    ccf
    add hl, de
    ccf
    nop
    ccf
    nop
    ccf
    ld hl, $211f
    rra
    add hl, bc
    scf
    add hl, bc
    scf
    nop
    ld a, a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    sub c
    cp $00
    rst $38
    add a
    ld a, a
    add [hl]
    ld a, a
    ld b, $ff
    ldh a, [$f3]
    db $fc
    rst $38
    db $f4
    rst $30
    ldh a, [$f3]
    call nz, $8ae7
    rst $28
    sub d
    rst $30
    sub b
    ei
    or b
    cp $e1
    rst $38
    and c
    cp a
    jr jr_063_7456

    ld h, d
    ld h, d
    and d
    and e
    ld c, $ef
    ld a, [de]
    ei
    ldh [$f6], a

jr_063_7442:
    ret nz

    db $dd
    ret nz

    db $dd
    ld l, c
    ldh [$61], a
    ld a, [$e413]
    ld de, $0126
    ld a, d
    db $10
    db $eb
    ld [$0b3f], sp
    ld sp, hl

jr_063_7456:
    inc e
    sbc l
    ld b, $1f
    rlca
    rrca
    dec b
    rrca
    ld bc, $0363
    ld h, a
    inc bc
    rra
    inc bc
    ld a, a
    dec bc
    or a
    rrca
    rla
    daa
    or a
    cpl
    rst $38
    cp [hl]
    ld a, $7e
    cp $3e
    ld a, $3c
    cp a
    jr c, @+$3f

    dec c
    sbc h
    inc c
    rra
    nop
    ld a, [hl-]
    nop
    ld l, d
    ld [$9c08], sp
    sbc h
    db $dd
    db $dd
    rst $38
    rst $38

jr_063_7488:
    cp $ff
    ld l, h
    ld a, a
    ld a, b
    ld a, a
    ld e, d
    ld a, l
    ld de, $f37f
    rst $38
    ld [hl], e
    ld a, a
    rst $20
    rst $38
    ld h, a
    ld a, a
    and $ff
    cpl
    ccf
    ld e, a
    ld a, a
    jr nz, jr_063_7442

    db $ec
    ldh [$f9], a
    pop af
    ld [hl], c
    ld [hl], c
    inc b
    ldh [rSB], a
    ld b, l
    ld bc, $1065
    db $ec
    nop
    inc a
    nop
    di
    ld bc, $0ad0
    ld a, [$6f03]
    ld bc, $0063
    ld l, c
    jr nc, jr_063_753c

    db $fd
    inc de
    ld l, h
    sub e
    inc e
    jp $cb00


    inc bc
    ret


jr_063_74ca:
    inc de
    jp hl


    ld bc, $78f9
    add c
    ld sp, hl
    nop
    pop af
    nop
    ld de, $8300
    nop
    ld a, [bc]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    jp nc, $d600

    nop
    ld b, $50
    adc h
    ld d, d
    ccf
    sbc $7f
    sbc a
    sbc l
    rst $38
    sbc d
    db $fd
    sbc l
    ld hl, sp-$4b
    ld hl, sp-$4c
    ld hl, sp-$0c
    cp b
    ld e, b
    cp b
    ld d, b
    cp b
    ld [hl], b
    sbc b
    ld c, b
    sbc b
    jr z, jr_063_7488

    jr c, jr_063_74ca

    sbc c
    add sp, $00
    ld sp, hl
    inc e
    ld sp, hl
    call z, Call_000_2e39
    sbc c
    ld a, [hl-]
    adc l
    ld d, e
    xor h
    rla
    db $ec
    and e
    ld l, h
    and a
    ld l, b
    ld b, c
    ld l, $48
    daa
    ret nz

    daa
    ld d, $e1
    ld d, [hl]
    and c
    inc a
    jp $c13e


    ld d, [hl]
    cp c
    ld d, h
    xor a
    ld c, h
    add a
    ret nc

    cpl
    xor c
    ld a, a
    jr c, jr_063_75af

    add hl, sp
    ld a, a
    dec [hl]
    ld a, a
    ld [hl], b
    db $fd
    ld l, c
    ei
    pop hl
    ld a, [$f0db]

jr_063_753c:
    reti


    ldh a, [$db]
    ldh a, [$cb]
    ldh a, [$63]
    ldh a, [$35]
    ld h, d
    inc e
    ld h, e
    sbc d
    ld h, a
    sub a
    ld l, [hl]
    dec h
    sbc $27
    call c, $dd20
    inc b
    ld sp, hl
    ld [bc], a
    ld sp, hl
    xor h
    db $d3
    add l
    di
    add h
    di
    sub b
    rst $20
    sbc d
    push hl
    db $10
    xor h
    nop
    inc a
    nop
    ld a, [de]
    add b
    rst $08
    ldh [$fd], a
    ldh [$ee], a
    ld [hl], b
    ld [hl], b
    ld a, h

jr_063_756f:
    cp $78
    rst $38
    jr c, jr_063_756f

    ld [hl], b
    rst $38
    ld h, c
    db $76
    pop bc
    ld [$c5c2], a
    jp nz, $c2d0

    ld sp, hl
    dec e
    db $dd
    rra
    rst $18
    cpl
    rst $28
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    inc l
    rst $38
    add b
    rst $38
    nop
    rst $38
    sbc h
    rst $38
    adc [hl]
    rst $38
    adc a
    rst $38
    ld e, a
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    ld b, e
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    ld a, c
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    di

jr_063_75af:
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld a, a
    ld d, a
    ld e, a
    or [hl]
    cp a
    ld b, $7f
    ld b, $ff
    rla
    cp a
    ld [bc], a
    ld a, [de]
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
    jr jr_063_75f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_063_7603

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_063_7613

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_063_7623

    ld [hl-], a

jr_063_75f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_063_7633

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_063_7603:
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

jr_063_7613:
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

jr_063_7623:
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

jr_063_7633:
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
    jr jr_063_76f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_063_7703

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_063_7713

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_063_7723

    ld [hl-], a

jr_063_76f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_063_7733

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc bc
    ld [bc], a
    ld [bc], a

jr_063_7703:
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

jr_063_7713:
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

jr_063_7723:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0202

jr_063_7733:
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0102
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
    ld bc, $0102
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
    dec b
    ld bc, $0202
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
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0002
    nop
    nop
    nop
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
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
    ld bc, $0202
    ld bc, $0101
    ld bc, $0202
    ld bc, $0202

Jump_063_77ff:
    ld [bc], a
    ld a, [bc]
    add hl, bc
    ld a, [bc]
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
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_063_782b:
    ld a, [bc]
    ld a, [bc]
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
    rst $08
    jr nz, jr_063_782b

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    add hl, bc
    nop
    and $ff
    xor $ff
    rrca
    cp $67
    sbc [hl]
    push hl
    ld e, $7b
    add h
    ld [hl], a
    adc h
    ld l, a
    sbc h
    sbc l
    ld a, a
    call c, Call_000_187f
    rst $38
    jr @+$01

    adc h
    ld a, e
    add h
    ld a, e
    ld e, [hl]
    ld sp, hl
    jr nc, @+$01

    or b
    ld a, a
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
    cp $7f
    cp $fe
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    or a
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
    add c
    cp $de
    rst $38
    jr c, @+$01

    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    sub c
    ld a, a
    add b
    ld a, a
    add a
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
    ld l, [hl]
    rst $38
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
    ld a, $ff
    adc d
    ld [hl], a
    cp $01
    ret z

    scf
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    ld [$01ff], sp
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    ld h, h
    rst $38
    or d
    ld a, a
    or b
    ld a, a
    and b
    ld a, a
    jp $c43c


    dec sp
    add sp, $17
    ld hl, sp+$07
    ld hl, sp+$07
    db $f4
    rrca
    rst $30
    rrca
    ld a, [c]
    rrca
    db $fd
    inc bc
    push af
    dec bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    nop
    rst $38
    ld e, a
    rst $38
    ld h, [hl]
    rst $38
    pop af
    rst $38
    ld sp, hl
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
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld b, $ff
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rst $30
    rrca
    ld hl, sp+$07
    rst $38
    nop
    adc a
    ld [hl], b
    inc sp
    call z, Call_063_4eb1
    adc b
    ld a, a
    xor $1f
    adc a
    ld a, a
    or [hl]
    ld a, a
    ld [hl], b
    cp a
    ld hl, sp-$41
    cp b
    rst $38
    cp l
    rst $38
    cp a
    rst $38

jr_063_7996:
    adc a
    rst $38
    add b
    rst $38
    ld e, a
    and b
    rrca
    ldh a, [$71]
    cp $78
    rst $38
    db $f4
    ei
    ldh a, [rIE]
    ld hl, sp-$09
    ld a, [c]
    rst $38
    ld [$f4ff], a
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    rst $18
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $10
    jr z, jr_063_7996

    inc l
    jp $c13c


    ld a, $02
    rst $38
    inc bc
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
    adc [hl]
    pop af
    ld c, d
    push af
    and a
    ld a, b
    add d
    ld a, l
    add d
    ld a, l
    ld c, d
    cp l
    res 7, h
    adc b
    rst $38
    xor b
    rst $18
    ld l, b
    sbc a
    xor b
    ld e, a
    inc d
    rst $28
    inc d
    rst $28
    ld b, l
    cp $e4
    rst $38
    ret c

    rst $20
    ret c

    rst $20
    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$b3], a
    call z, $bc43
    ld b, e
    cp h
    jp $913c


    ld a, [hl]
    ld sp, $73fe
    cp $22
    rst $38
    inc de
    rst $38
    ld d, $ff
    ld [$20ff], sp
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc c
    di
    ld a, b
    add a
    ld [hl], b
    adc a
    db $10
    rst $28
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    cp $00
    rst $38
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, a
    add b
    rlca
    ld hl, sp+$1e
    rst $20

jr_063_7a50:
    adc d
    ld [hl], a
    xor e
    ld [hl], a
    sbc c
    ld h, a
    add hl, de
    rst $20
    add hl, de
    rst $20
    reti


    daa
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, l
    add e
    call nz, $f8fb
    rst $38
    jp hl


    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld [hl], b
    rst $38
    db $ec
    di

jr_063_7a72:
    rrca
    ldh a, [$bf]
    ret nz

    xor a
    ret nc

    adc a
    ldh a, [$ef]
    db $10
    rst $28
    db $10
    rst $08
    jr nc, jr_063_7a50

    jr nc, jr_063_7a72

    db $10
    rst $08
    jr nc, jr_063_7ad6

    or b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$5f], a
    ldh [$df], a
    ldh [$d7], a
    add sp, -$21
    ldh [$37], a
    ret z

    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    cp h
    ld b, e
    xor [hl]
    ld e, a
    ld l, [hl]
    sbc a
    ld l, [hl]
    sbc a
    ld l, $df
    ld c, $ff
    add [hl]
    rst $38
    ld [de], a
    rst $38
    inc bc
    cp $61
    rst $38
    ld h, c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add a
    rst $38
    sbc $ff
    call z, $c2ff
    dec a
    pop bc
    ld a, $80
    ld a, a
    ld bc, $80ff
    ld a, a
    ret nz

    ccf
    ld b, c
    cp a
    ld h, c
    sbc a
    inc [hl]
    rr h
    db $e3
    ld c, $f1

jr_063_7ad6:
    ld c, $f1
    ld b, [hl]
    ld sp, hl
    ld [hl], h
    ei
    inc [hl]
    ei
    ld d, $f9
    inc d
    ei
    inc h
    ei
    ld [hl], c
    rst $38
    ld [hl], b
    rst $38
    add hl, hl
    rst $30
    add hl, bc
    rst $30
    nop
    rst $38
    jr nc, @-$0f

    ld e, a
    ldh [$1f], a
    ldh [$3d], a
    jp nz, $847b

    ld sp, hl
    ld b, $f8
    rlca
    db $f4
    rrca
    db $f4
    rrca
    db $fc
    rlca
    rst $30
    rrca
    push af
    rrca
    db $f4
    rrca
    or $0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    add e
    inc a
    jp Jump_000_23dc


    ld e, h
    and e
    xor b
    rst $10
    adc b
    or $8c
    ld a, [c]
    ret z

    db $f4
    ret nz

    db $fc
    ret nc

    add sp, -$64
    ld [c], a
    adc [hl]
    pop af
    inc c
    ld a, [c]
    dec l
    di
    ld sp, $b9ff
    ld a, c
    ld bc, $5fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    ldh a, [rIE]
    sub b
    rst $28
    or b
    rst $08
    add b
    rst $38
    add d
    db $fd
    xor [hl]
    pop de
    sbc h
    db $e3
    inc l
    db $d3
    inc a
    jp $a35c


    inc c
    di
    inc b
    ei
    adc h
    di
    adc l
    di
    and a
    ei
    and c
    rst $38
    or c
    rst $38
    inc h
    ei
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    jp $cf3c


    jr nc, @+$01

    nop
    ei
    inc b
    ld sp, hl
    ld b, $f1
    ld c, $fc
    rlca
    or $0f
    rst $30
    ld c, $f8
    rlca
    or $0f
    db $f4
    rrca
    or $0f
    db $f4
    rrca
    call nz, $e43f
    rra
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, c
    cp [hl]
    ret nz

    ccf
    ret z

    ccf
    ret c

    cpl
    add b
    ld a, a
    adc b
    ld [hl], a
    ret nz

    ld a, a
    add e
    ld a, h
    add a
    ld a, b
    ld de, $03ee
    cp $31
    adc $7b
    add h
    dec de
    db $e4
    ld e, c
    and $5a
    push hl
    ld a, e
    db $e4
    ld l, l
    ld a, [c]
    ret


    or $cd
    ld a, [c]
    dec c
    ld a, [c]
    rst $08

jr_063_7bcd:
    ldh a, [$cf]
    ldh a, [$4e]
    pop af
    inc l
    di
    ld [$2cf7], sp

jr_063_7bd7:
    di
    jr nc, @+$01

    jr nc, @+$01

    ld [de], a
    db $fd
    add a
    ld hl, sp-$71
    ldh a, [$bf]
    ret nz

    cp a
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

jr_063_7bf1:
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
    ld a, $ff
    ccf
    rst $38
    ld a, a
    add b
    ld e, $e1
    jr c, jr_063_7bcd

    jr nc, jr_063_7bd7

    jr nc, @-$2f

    inc sp
    rst $08
    dec sp
    rst $00
    ld e, $e7
    inc c
    rst $30
    ld [$08f7], sp
    rst $30
    inc l
    db $d3
    jr z, jr_063_7bf1

    nop
    ld hl, sp+$00
    pop af
    nop
    ldh [rP1], a
    jp $8700


    inc b
    adc e
    ld [$0007], sp
    add hl, de
    nop
    dec d
    ld [$000f], sp
    rla
    nop
    ld l, $04
    ld b, [hl]
    inc d
    db $f4
    ld h, b
    add sp, -$20
    cp $84
    cp e
    inc d
    ei
    and l
    ld a, [$07f8]
    pop hl
    rra
    ld [c], a
    rra
    or b
    ld c, a
    ldh [$1f], a
    pop hl
    ld e, $fd
    ld [bc], a
    ld a, b
    add a
    ld bc, $5dfe
    cp $3e
    rst $38
    inc sp
    rst $38
    ld a, [c]
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, b
    rst $38
    ld hl, $30df
    rst $08
    ld sp, $23ce
    call c, $ff80
    add h
    ei
    inc b
    ei
    rlca
    ei
    ld hl, $05df
    ei
    add l
    ei
    adc l
    di
    inc c
    di
    cp $01
    ei
    inc b
    ld sp, hl
    ld b, $f0
    rrca
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [c]
    rrca
    ldh a, [rIF]
    jp hl


    rra
    db $ed
    rra
    ldh [$1f], a
    pop af
    ld c, $fd
    ld [bc], a
    ld [hl], c
    adc [hl]
    ld l, h
    sbc a
    db $ec
    rra
    ld hl, sp+$1f
    ld sp, hl
    rra
    add sp, $1e
    add sp, $1e
    add sp, $1c
    ld sp, hl
    dec e
    reti


    add hl, sp
    ret c

    dec sp
    call $d53e
    inc a
    ret


    ld [hl], $e1
    inc e
    add c
    ld a, h
    push hl
    inc e
    push hl
    ld e, $e5
    inc e
    db $e4
    dec e
    db $f4
    dec c
    di
    db $fc
    ei
    db $fc
    cp $fd
    db $fc
    rst $38
    ei
    db $fc
    ei
    db $fc
    add e
    db $fc
    inc bc
    db $fc
    add l
    ei
    add c
    rst $38
    nop
    cp $01
    rst $38

jr_063_7cd8:
    inc c
    ld a, [c]
    dec e
    db $e3
    ld e, $e1
    ld a, [hl-]
    push bc
    xor $11
    rst $20
    add hl, de
    ldh [$1f], a
    pop hl
    rra
    pop hl
    rra
    ld h, h
    sbc a
    ld [de], a
    db $ed
    ld a, [bc]
    db $fd
    rlca
    ld hl, sp+$01
    cp $13
    xor $b0
    ld c, a
    ld hl, sp+$07
    db $fd
    inc bc
    db $f4
    dec bc
    ret nz

    ccf
    ld b, c
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    ld [bc], a
    rst $38
    add c
    cp $a3
    call c, $c1be
    ld a, $c1
    dec a
    cp $27
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    dec sp
    call nz, $827d
    rst $38
    nop
    rst $38
    nop
    nop
    adc [hl]
    nop
    rst $20
    jr nz, jr_063_7cd8

    nop
    db $fc
    nop
    cp $00
    db $db
    nop
    ret c

    nop
    db $10
    rst $38
    nop
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_063_7d39:
    nop
    ei
    inc b
    ld d, [hl]
    xor a
    adc $ff
    nop
    rst $38
    or h
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld d, $ff
    ld [bc], a
    rst $38
    ld [c], a
    rra
    ld hl, sp+$07
    ld a, h
    add d
    inc a
    ld b, e
    ld h, b
    db $ec
    dec sp
    cp e
    and l
    ld l, l
    jr nz, @+$01

    jr jr_063_7d39

    dec b
    push hl
    pop bc
    cp $c9
    or $c0
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    jp $80ff


    rst $38
    and c
    sbc $e3
    call c, $fcc3
    add [hl]
    db $fd
    cp h
    rst $38
    call c, $ecff
    rst $18
    rst $30
    adc $87
    cp $ee
    add $cb
    and $da
    rst $20
    ld e, a
    db $e3
    sbc $23
    adc h
    inc sp
    ld bc, $44bf
    cp e
    adc d
    push af
    add d
    db $fd
    add b
    rst $38
    ld b, b
    cp a
    inc d
    db $eb
    ld a, [bc]
    di
    ld c, $f3
    ld [$63b7], a
    cp a
    ld h, b
    cp a
    ld a, c
    and [hl]
    add hl, de
    and $14
    rst $28
    ld c, $ff
    rst $38
    rst $38
    sbc h
    rst $38
    call c, $dcbf
    cp a
    db $dd
    cp [hl]
    ld e, h
    cp a
    rra
    rst $38
    rra
    rst $38
    sub b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld h, c
    rst $38
    ld b, h
    rst $38
    ld h, a
    sbc b
    rst $18
    nop
    dec de
    call nz, $be4d
    inc e
    cp $3a
    sbc l
    inc e
    cp e
    ld d, e
    cp $93
    call z, $88f7
    ld l, [hl]
    sub c
    ld h, c
    cp a
    ld d, h
    db $e3
    ld h, $c3
    ld hl, $f2c6
    db $ec
    rst $28
    cp $fc
    rst $38
    ld sp, hl
    cp $f6
    ld sp, hl
    add [hl]
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add $f9
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    db $ec
    rst $38
    ldh a, [rIE]
    call nz, $c0fb
    rst $38
    pop hl
    cp $80
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    cp $01
    cp $01
    rst $38
    nop
    call c, $0923
    rst $30
    rra
    db $e3
    rra
    ld [c], a
    inc a
    jp $8300


    ld [$003f], sp
    ccf
    dec c
    ld [hl-], a
    ccf
    ret nz

    rst $08
    jr nc, jr_063_7e3c

    ldh a, [$0b]
    db $f4
    nop
    rst $38
    db $fc
    ccf
    or d
    ld a, l
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop

jr_063_7e3c:
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$83], a
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    db $db
    ld [hl], b
    ld a, a
    rlca
    ld a, b
    ld [de], a
    push de
    ld hl, $3de2
    cp $03
    rra
    call c, $c43f
    jr c, jr_063_7e65

jr_063_7e65:
    rst $38
    ld [bc], a
    db $fd
    ld b, e
    cp l
    add d
    db $fd

jr_063_7e6c:
    ld a, [bc]
    push af
    db $ec
    ld de, $19e6
    and $19
    ld b, h
    sbc e
    ld a, d
    sbc a
    ld c, $ff
    rra
    xor $3c
    adc $b4
    ld c, [hl]
    adc h
    ld h, [hl]
    inc b
    ld h, [hl]
    jr jr_063_7e6c

    db $10
    xor $11
    ld h, $c4
    inc hl
    add l
    ld [hl-], a
    add c
    ld [hl-], a
    ld hl, $3112
    add d
    ldh a, [$83]
    inc a
    jp $c788


    and $cf
    adc $e7
    adc $e7
    call c, $06e7
    rst $38
    ld d, b
    cpl
    call z, $ea20
    inc b
    adc h
    ld h, b
    ld b, d
    db $ec
    inc c
    rst $20
    sbc b
    ld h, a
    dec de
    db $e4
    ld a, e
    add h
    ld c, a
    or b
    dec c
    ldh a, [rLCDC]
    cp a
    ld b, d
    cp l
    ld b, c
    cp h
    ld e, b
    and l
    reti


    inc h
    add hl, bc
    db $f4
    ldh [$fc], a
    dec [hl]
    rst $38
    nop
    rst $38
    db $fd
    ld [bc], a
    adc e
    inc b
    rla
    ld [$f906], sp
    jr c, @-$37

    ld b, b
    rst $38
    ld a, [c]
    ld a, c
    ld h, c
    di
    xor e
    rst $00
    or $8f
    db $76
    adc a
    db $e4
    rra
    xor $10
    rst $00
    inc sp
    inc de
    ld l, a
    add h
    ld a, a
    and b
    rra
    ldh a, [rIF]
    ret z

jr_063_7ef1:
    rlca
    cp $01
    nop
    rst $38
    sbc e
    ld a, a
    dec c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    sub h
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_063_7ef1

    rra
    ldh [$80], a
    rst $38
    ld c, $ff
    nop
    rlca
    nop
    ret


    nop
    ld l, a
    ld a, a
    add b
    rst $38
    nop
    ld e, a
    and b
    ldh [rIE], a
    add b
    add b
    ld bc, $0083
    rst $38
    add b

jr_063_7f25:
    ld a, a
    jp nz, $f73d

    ld [$00ff], sp
    rst $38
    nop
    ld a, a
    add b
    rst $18
    jr nz, jr_063_7f62

    ret nc

    ld [$42f7], sp
    or l
    db $76
    adc a
    ld b, e
    cp a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    jr c, @+$01

    ld [$80ff], sp
    ld a, a
    inc c
    rst $38
    nop
    ld d, [hl]
    nop
    dec c
    nop
    ld h, c
    nop
    rst $38
    db $fd
    ld bc, $08f0
    jr c, jr_063_7f25

    inc e
    sbc a
    sbc b
    rlca

jr_063_7f62:
    ldh a, [rP1]
    adc [hl]
    ld [hl], c
    ld h, c
    sbc a
    xor a
    rst $18
    jr nz, @-$1f

    inc h
    ret c

    ld h, a
    sbc b
    or d
    ld [$3c43], sp
    ld de, $183c
    rst $38
    ld a, b
    rst $38
    ld a, c
    cp $3b
    ld a, h
    dec sp
    ld a, h
    ld [hl], c
    inc a
    ld d, b
    inc a
    ld b, b
    ccf
    ld b, b
    ccf
    ld sp, $3202
    nop
    ld [c], a
    db $10
    db $e3
    db $10
    ld b, c
    ld [de], a
    ld e, b
    inc bc
    ld a, a
    add c
    ld d, c
    cpl
    jr jr_063_7fff

    ld a, a
    add b
    ld c, a
    add b
    ld c, a
    add b
    rrca
    ret nz

    inc bc
    call z, $cc11
    ld l, c
    inc b
    ld l, c
    inc b
    sub a
    ld h, b
    and l
    ld [hl], d
    inc [hl]
    ei
    cp e
    rst $38
    dec a
    rst $38
    ld a, [$ba3d]
    dec a
    cp d
    ld a, l
    dec sp
    db $fc
    ei
    db $fc
    ld [$10ff], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    ret nz

    rst $38
    and b
    rst $18
    ret nz

    ccf
    ld c, b
    ld h, $c8
    rla
    add hl, de
    ld a, $38
    rst $38
    or $f9
    ei
    ldh [$8b], a
    ldh a, [$c0]
    rst $38
    ldh a, [rIE]
    cp $fc
    ld b, l
    ld a, $70
    rrca
    inc bc
    db $fc
    nop
    rst $38
    inc a
    rst $38
    ld [hl], b
    rst $38
    ld c, a
    ldh a, [$15]
    ld [$9100], a
    dec b
    rst $38
    rrca
    rst $38
    daa
    rst $18
    nop
    ld sp, hl
    ld b, c
    cp a
    ld a, l

jr_063_7fff:
    add c
