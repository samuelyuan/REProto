SECTION "ROM Bank $0aa", ROMX[$4000], BANK[$aa]

    ld [hl], e
    rlca
    ld l, e
    ld b, $62
    ld c, $7c
    ld [bc], a
    sbc $30
    or $23
    adc a
    ld h, a
    ld e, a
    rst $38
    rst $38
    ldh a, [$bf]
    ret nz

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
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    rst $10
    nop
    xor a
    nop
    sbc e
    nop
    rst $28
    nop
    rst $30
    nop
    ccf
    nop
    push de
    nop
    ld a, e
    nop
    ld e, a
    nop
    xor $01
    ld c, a
    nop
    rrca
    dec c
    rra
    dec c
    rra
    dec e
    rra
    rra
    rra
    rra
    ccf
    rra
    ccf
    ccf
    ccf
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
    db $fd
    rst $38
    ei
    rst $38
    ld b, e
    rst $38
    ld d, l
    rst $38
    and l
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
    ld c, a
    ccf
    ld h, $c1
    ld [bc], a
    db $fc
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    ld b, d
    cp l
    ld a, b
    add a
    ld [hl-], a
    call Call_0aa_7887
    rra
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld b, $02
    dec b
    ld [bc], a
    dec b
    ld b, $07
    inc c
    ld c, $0d
    inc e
    dec c
    dec e
    dec e
    add hl, sp
    dec e
    ld sp, hl
    dec e
    ccf
    reti


    ccf
    reti


    add hl, sp
    db $db
    add hl, sp
    db $db
    ld e, d
    cp e
    ld d, e
    cp d
    ei
    ld [hl-], a
    ld [hl], l
    or d
    rst $30
    jr nc, jr_0aa_4139

    or a
    ld [hl], $f7
    and h
    ld [hl], a
    push hl
    db $76
    ld [hl], h
    ld h, a
    jp hl


    ld h, a
    db $eb
    ld h, a
    ld h, e
    rst $28
    ld c, a
    rst $28
    rst $28
    rst $08
    rst $28
    rst $08
    rst $08
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    adc a
    rst $18
    sbc a
    rst $18
    sbc a
    rst $18
    sbc a
    sbc a
    sbc a
    cp a
    sbc a
    cp a
    ld e, $bf
    ld c, $3f
    inc b
    rlca
    inc b
    ld bc, $9c00
    nop
    ccf
    inc e
    ccf
    rra

Call_0aa_4100:
    sbc a
    ccf
    ld e, $9f
    ld e, $8f
    sbc a
    ld a, a
    ld a, a
    ccf
    sbc l
    nop
    add b
    add b
    ldh [$c0], a
    ld a, e
    db $fc
    cp a
    ld c, $fd
    inc bc
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0aa_4139:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    cp $fe
    rst $38
    cp $ff
    ld hl, sp-$01
    ld a, [$aeff]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    cp $fe
    cp $fc
    db $fd
    db $fc
    ld sp, hl
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ei
    ei
    di
    di
    rst $30
    rst $20
    rst $30
    rst $38
    rst $20
    rst $38
    ld l, a
    sbc a
    ld l, a
    rst $38
    rra
    cp a
    ld e, a
    sbc [hl]
    ld a, a
    cp $7f
    cp $7f
    db $fc
    ld a, a
    db $fc
    ld a, a
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, c
    cp $f8
    cp $fa
    db $fc
    ldh a, [$fc]
    db $fc
    ld hl, sp-$0f
    ld hl, sp-$07
    ldh a, [$e3]
    ldh a, [$f6]
    ldh [$c4], a
    ldh [$fd], a
    ret nz

    sbc l
    pop bc
    db $dd
    add e
    ld a, a
    add e
    cp a
    inc bc
    ei
    rlca
    rst $38
    rrca
    xor a
    ld e, a
    ld a, a
    sbc a
    ld e, a
    cp a
    sbc $3f
    db $fc
    ld a, a
    ld a, h
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    ld hl, sp-$09
    ld hl, sp-$1c
    ei
    ldh [rIE], a
    pop hl
    cp $c1
    cp $82
    db $fc
    adc [hl]
    ld hl, sp+$16
    ld hl, sp+$2c
    ldh a, [rIE]
    ldh [$df], a
    ldh [$bf], a
    pop bc
    cp a
    jp $877f


    ld [hl], a
    adc a
    xor a
    ld e, a
    ld e, a
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rra
    ccf
    add e
    rlca
    ret nc

Jump_0aa_41ff:
    ldh [$fc], a
    ld hl, sp-$62
    pop hl
    ld a, [hl]
    add c
    cp a
    ret nz

    rst $28
    ldh a, [$fc]
    ld a, a
    rst $30
    rrca
    ld a, $01
    rlca
    nop
    pop hl
    nop
    db $fc
    ret nz

    cp a
    ld a, b
    rst $30
    rrca
    ld c, l
    or e
    ld b, c
    cp [hl]
    and b
    ld e, a
    add b
    ld a, a
    ld d, b
    xor a
    and b
    ld e, a
    ld d, b
    xor a
    call nc, $a02b
    ld e, a
    ldh [$1f], a
    db $f4
    dec bc
    xor b
    ld d, a
    add sp, $17
    ld [$f415], a
    dec bc
    add sp, $17
    push af
    ld a, [bc]
    ld hl, sp+$07
    db $ec
    inc de
    cp $fe
    cp $fc
    db $f4
    ld hl, sp-$0b
    ld hl, sp-$03
    ld hl, sp-$08
    ld sp, hl
    db $eb
    ldh a, [$c8]
    ld [c], a
    cp $c2
    call c, $bec3
    push bc
    ld a, [$b585]
    adc d
    db $fd
    ld [bc], a
    push hl
    ld [de], a
    push hl
    ld [de], a
    ld b, e
    and h
    ld h, c
    and [hl]
    ld [hl+], a
    call $cd4a
    jr @-$2f

    sbc b
    sbc a
    cp h
    sbc e
    sbc b
    ccf
    jr c, jr_0aa_42b1

    jr c, jr_0aa_42f3

    ld [hl], b
    ld a, a
    ldh a, [$7f]
    pop af
    cp $e0
    rst $38
    pop hl
    cp $c2
    db $fd
    jp $c2fc


    db $fc
    add $f8
    add h
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld [$08c0], sp
    ret nz

    ld e, b
    add b
    add hl, de
    add b
    add b
    nop
    ld [hl-], a
    ld bc, $0307
    daa
    rlca
    ld b, a
    rrca
    ld e, a
    rrca
    sbc a
    rra
    cp a
    rra
    rra
    ccf
    ccf
    ld e, $fd

jr_0aa_42b1:
    ld a, [hl]
    rst $38
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$21
    ldh [$bf], a
    ret nz

    cp $81
    ld a, a
    add b
    or [hl]
    ld c, b
    ld d, [hl]
    xor b
    inc c
    ldh a, [$08]
    ldh a, [rNR23]
    ldh [rNR10], a
    ldh [$a0], a
    ld b, b
    ld b, b
    add b
    ld b, c
    add b
    add e
    ld bc, $0383
    rlca
    rlca
    rrca
    rrca
    rrca
    rra
    ccf
    rra
    ld a, a
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

jr_0aa_42f3:
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
    add e
    ld a, a
    ld [de], a
    rrca
    add d
    ld bc, $6098
    ld b, c
    cp [hl]
    add b
    ld a, a
    and b
    ld e, a
    ret nz

    rst $38
    ld hl, sp-$01
    cp a
    ld a, a
    rst $20
    rra
    jr c, jr_0aa_431d

    add $01
    ld a, c
    add b
    db $eb
    db $f4
    cp h

jr_0aa_431d:
    ld a, a
    rlca
    rst $38
    ld bc, $04ff
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld b, c
    adc a
    adc d
    rrca
    ld [bc], a
    sbc a
    sub a
    ld e, $27
    ld e, $2b
    ld a, $6b
    ld a, $5b
    ld a, [hl]
    ld d, e
    ld a, [hl]
    or c
    cp $e1
    cp $e3
    cp $d1
    cp $51
    cp $91
    cp $d5
    ld a, [$fa05]
    ld [bc], a
    db $fc
    ld h, $d8
    nop
    db $fc
    inc h
    ret c

    ld [$28f0], sp
    ret nc

    nop
    ldh a, [$f0]
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ld bc, $0100
    ld bc, $0103
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    rrca
    rlca
    rra
    rrca
    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ccf
    ld a, a
    ld a, h
    ld a, b
    ldh a, [$f8]
    ldh a, [$d1]
    ldh [$e0], a
    ldh [$fe], a
    ld hl, sp-$05
    rst $30
    ldh a, [$e0]
    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    add b
    nop
    add b
    sub l
    nop
    ld l, d
    nop
    cp h
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0303
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
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
    rst $38
    rst $38
    ld e, a
    ccf
    dec bc
    rlca
    and c
    ret nz

    inc [hl]
    ld hl, sp+$5e
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    adc a
    ld a, a
    inc hl
    rra
    ld h, l
    add e
    add h
    ld hl, sp-$04
    rst $38
    ccf
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    and h
    cp $a4
    cp $84
    db $fc
    add b
    db $fc
    add b
    ld hl, sp-$80
    ld hl, sp-$80
    ldh a, [rP1]
    ld [hl], b
    add b
    ld h, b
    add b
    ld h, b
    add b
    nop
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
    ld bc, $0100
    ld bc, $0003
    ld bc, $0100
    ld bc, $0103
    inc bc
    inc bc
    rra
    rlca
    rra
    rra
    ccf
    dec de
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$46
    db $fd
    ld h, a
    ld hl, sp-$18
    rst $30
    rst $28
    ldh a, [$ea]
    push de
    rst $10
    add sp, -$14
    sub e
    add e
    db $fc

jr_0aa_4472:
    ld [hl], c
    adc [hl]
    add b
    ld a, a
    dec e
    inc bc
    inc bc
    ld bc, $0303
    ld e, $07
    dec c
    ld b, $88
    cp $39
    cp $d1
    inc a
    jp nz, $c13c

    inc a
    ld [c], a
    jr jr_0aa_4472

    db $10
    jp c, Jump_000_0024

    nop
    ld bc, $0301
    ld bc, $0307
    rrca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cpl
    rra
    add a
    inc bc
    ldh [$f0], a
    db $fd
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
    cp a
    ld a, a
    or a
    rrca
    sbc a
    pop hl
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
    nop
    nop
    nop
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
    rlca
    ld bc, $0707
    rrca
    ld c, $1f
    ld c, $1f
    dec e
    ccf
    rra
    ccf
    ccf
    ld a, a
    ld a, $7f
    ld a, a
    cp $ff
    db $ed
    cp $fe
    call c, $fc9b
    or l
    ld hl, sp+$7f
    ldh a, [$e5]
    ld a, [$e0fc]
    db $fd
    jp nz, $e0df

    ei
    add b
    ld h, $99
    ld a, a
    add b
    db $ec
    inc bc
    dec bc
    db $f4
    db $fc
    ld bc, $9d62
    cp $00
    adc b
    db $76
    sub h
    ld l, b
    ret nc

    ld [$f008], sp
    ldh a, [rP1]
    nop
    ldh [$c0], a
    nop
    ret nz

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
    ld b, b
    nop
    rst $38
    ld bc, $037f
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    sbc a
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
    rst $18
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$ffff]
    rst $38
    rst $30
    rst $38
    rst $28
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rla
    rrca
    and d
    pop bc
    db $f4
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [hl], a
    adc a
    xor $f1
    db $fd
    cp $ff
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
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    add hl, bc
    ld d, $17
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    jr jr_0aa_45db

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    add hl, bc
    add hl, bc
    jr nz, jr_0aa_45ed

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0aa_4601

    ld a, [hl+]
    dec hl
    add hl, bc

jr_0aa_45db:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0aa_4617

    ld [hl-], a
    inc sp
    inc [hl]
    add hl, bc
    dec [hl]
    ld [hl], $09

jr_0aa_45ed:
    add hl, bc
    add hl, bc
    add hl, bc
    scf
    jr c, jr_0aa_462c

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $09
    add hl, bc
    ccf
    ld b, b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, c

jr_0aa_4601:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    add hl, bc
    ld c, d
    ld c, e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    add hl, bc
    ld d, b
    ld d, c

jr_0aa_4617:
    ld d, d
    add hl, bc
    add hl, bc
    ld d, e
    ld d, h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    add hl, bc
    ld e, [hl]
    add hl, bc

jr_0aa_462c:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    add hl, bc
    ld a, e
    ld a, h
    jr nz, jr_0aa_46d7

    ld a, [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
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
    sub b
    sub c
    sub d
    add hl, bc
    add hl, bc
    add hl, bc
    sub e
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
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

jr_0aa_46d7:
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    nop
    nop
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
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    ld b, $02
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    ld b, $02
    nop
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
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    inc bc
    ld b, $06
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    inc bc
    inc bc
    ld b, $06
    nop
    ld b, $06
    ld b, $02
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    jp $cb0c


    inc sp
    cp e
    inc b
    ld b, d
    adc l
    cp c
    inc bc
    ld a, e
    add h
    ld c, d
    add l
    dec hl
    ld de, $846a
    db $fd
    nop
    ld l, $10
    add sp, $06
    cp $01
    rst $18
    nop
    ld a, [hl+]
    call nz, Call_000_01dc
    db $db
    inc b
    xor d
    ld b, h
    sub a
    ld [$46b1], sp
    db $fd
    ld [bc], a
    ld h, a
    sbc b
    sub c
    ld h, [hl]
    and e
    ld e, h
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    and b
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
    db $fc
    rst $38
    ld a, [$effd]
    ldh a, [$df]
    ldh [$7e], a
    add c
    ld a, [c]
    dec c
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr nc, jr_0aa_48bc

    ld hl, sp+$27
    ld hl, sp+$2b
    db $fc
    xor e
    db $fc
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $db
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0aa_48bc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    ret nz

    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    add b
    rst $38
    ret nz

    db $fc
    ei
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
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $20
    ld e, b
    ld [hl], l
    sbc d
    jp c, $a767

    ld e, b
    ld h, l
    sbc d
    jp c, Jump_0aa_6367

    sbc h
    ld h, h
    sbc e
    ld d, l
    ld [hl+], a
    rlca
    jr jr_0aa_4941

    inc bc
    inc e
    ld h, e
    ld [hl], e
    adc h
    db $fc
    inc bc
    ld a, l
    ld [bc], a
    ld e, e
    adc h
    adc h
    inc sp
    ld [hl], c
    ld c, $f2
    dec c
    call z, $f333
    inc c
    ld [hl], a
    adc b
    adc $31
    ld h, e
    adc h
    nop
    nop
    inc b
    inc bc
    inc bc
    rlca
    add [hl]
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    cp a
    jp $dfe3


    rst $18
    rst $18
    rst $38
    rst $18
    inc bc
    rst $38
    inc bc
    rst $38
    add a
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a

jr_0aa_4941:
    rst $38
    inc a
    rst $38
    or b
    rst $38
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    or b
    rst $38
    ld b, b
    cp a
    add b
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add c
    rst $38
    inc bc
    rst $38
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
    inc bc
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
    inc bc
    cp a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38

jr_0aa_49a1:
    adc $15
    ei
    ret nc

    ccf
    cp c
    add $57
    cp c
    swap h
    cp a
    add $d7
    add hl, sp
    xor b
    ld d, a
    add hl, sp
    add $c6
    add hl, sp
    xor b
    ld d, a
    jr jr_0aa_49a1

    and $19
    sbc b
    ld h, a
    add hl, bc
    or $66
    sbc c
    sbc b
    ld h, a
    ld bc, $64fe
    sbc e
    ret c

    ld h, a
    and e
    ld e, h
    db $ec
    dec de
    di
    nop
    nop
    nop
    rst $38
    rst $38
    or $ff
    nop
    nop
    and a
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
    ldh [$c0], a
    db $fd
    ret nz

    add e
    ret nz

    ldh [$c0], a
    rst $00
    add b
    add c
    add e
    jp $b786


    adc $bf
    adc $87
    adc $8f
    adc $9f
    adc $d7
    adc $f6
    rst $08
    ld l, [hl]
    rst $10
    ld l, [hl]
    rst $10
    ld a, [hl]
    rst $10
    ld l, [hl]
    rst $10
    ld c, a
    rst $30
    rst $10
    rst $28
    rst $28
    rst $30
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
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
    nop
    add b
    nop
    add b
    add b
    add b
    nop
    nop
    add b
    add b
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
    ret nz

    add b
    add b
    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    add b

jr_0aa_4a6b:
    ret nz

    nop
    ret nz

    add b
    nop
    nop
    nop
    ret nz

    ret nz

    nop

jr_0aa_4a75:
    ret nz

    nop
    nop

jr_0aa_4a78:
    ld b, b
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ldh [$c0], a
    ldh [$e0], a
    ret nz

    nop
    nop
    jr nz, jr_0aa_4a8e

jr_0aa_4a8e:
    and b
    ld b, b
    add b
    ld h, b
    jr nz, jr_0aa_4ad4

    nop

jr_0aa_4a95:
    ldh [$f0], a
    nop
    ret nc

    jr nz, jr_0aa_4a6b

    jr nz, jr_0aa_4a75

    jr nz, jr_0aa_4a95

    jr c, jr_0aa_4a78

    jr c, jr_0aa_4a78

    ld a, [hl-]
    pop de
    ld a, $d3
    inc a
    db $d3
    inc a
    ret nc

    ccf
    reti


    ld a, $d8
    ccf
    call c, $de3f
    ccf
    and b
    ld e, a
    rst $08
    jr nc, @+$47

    cp d
    inc c
    di
    ld b, $fb
    ld d, $fb
    daa
    ei
    rla
    ei
    inc de
    rst $38
    rlca
    ei
    add e
    rst $38
    add e
    rst $38
    adc e
    rst $38
    add e
    rst $38
    add e
    rst $38
    ld a, e
    rst $38

jr_0aa_4ad4:
    ld e, e
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
    inc hl
    rra
    jr z, jr_0aa_4b03

    jr @+$21

    inc hl
    rra
    nop
    rra
    ld [$1b1f], sp
    rlca
    ld [$1c1f], sp
    rra
    rlca
    dec de
    rla
    ld [$1807], sp
    dec c
    ld [de], a
    inc de
    inc c
    rla
    ld [$021d], sp
    inc de
    inc c
    rla

jr_0aa_4b03:
    ld [$001f], sp
    rla
    ld [$0b14], sp
    jr jr_0aa_4b13

    add hl, de
    ld c, $00
    nop
    nop
    rrca
    inc e

jr_0aa_4b13:
    rrca
    inc e
    nop
    rra
    nop
    rra
    rrca
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    rrca
    nop
    rrca
    nop
    rlca
    nop
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
    adc a
    ld a, a
    rst $38
    rra
    db $10
    rrca
    sub b
    rrca
    sub b
    rrca
    ret nc

    rrca
    ldh a, [rIF]
    ldh [$1f], a
    ld h, h
    sbc a
    ld sp, hl
    rrca
    dec c
    rst $38
    dec c
    rst $38
    rlca
    rst $38
    rlca
    rrca
    daa
    rra
    rlca
    sbc a
    rlca
    rst $18
    rlca
    rst $38
    cpl
    rst $18
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
    rst $38
    rst $38
    ld hl, sp-$01
    db $fd
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
    ld e, c
    cp [hl]
    ld a, e
    rst $20
    ld b, l
    ld a, [$9e79]
    ld e, e
    rst $20
    ld b, c
    cp $7b
    sbc h
    ld e, e
    rst $20
    ld b, l
    ld a, [$9c7b]
    ret c

    ld h, a
    ld h, c
    ld e, $83
    inc e
    adc $03
    pop af
    ld b, $c8
    rra
    cp $03
    or a
    ld c, b
    call nc, $ce2b
    inc bc
    adc e
    inc b
    db $fd
    ld [bc], a
    and b
    ld b, d
    nop
    nop
    ld b, b
    rst $38
    ccf
    ret nz

    nop
    nop
    ei
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    call c, Call_000_1884
    add h
    jr @-$32

    db $10
    call nc, $e018
    inc e
    ld a, [hl+]
    push de
    rst $38
    nop
    ld a, [hl]
    add c
    ccf
    ret nz

    ld e, $e1
    inc c
    di
    dec bc
    db $f4
    dec b
    ld a, [$fc03]
    ld bc, $01fe
    cp $00
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, b
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
    db $fd
    cp $f1
    db $fc
    db $e3
    pop af
    jp Jump_0aa_4fe7


    rlca
    adc a
    rrca
    adc a
    adc a
    adc a
    rst $18
    rst $28
    rst $18
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld [hl], d
    db $e4
    and [hl]
    ld [hl], h
    ld [hl], d
    db $e4
    ld [hl], d
    db $e4
    or d
    ld h, h
    ld [hl], b
    and $60
    or $e0
    ld [hl], $64
    ld a, [c]
    ld h, b
    or $b6
    ld [hl], d
    ld h, [hl]
    ld a, [c]
    ld [hl], $f2
    sub $32
    ld h, [hl]
    ld a, [c]
    db $76
    ld a, [c]
    db $76
    or d
    db $76
    ld a, [c]
    or [hl]
    ld [hl], d
    ld [hl], $f2
    ld [hl], d
    ld a, [c]
    ld [hl-], a
    ld a, [c]
    ldh a, [rP1]
    nop
    nop
    ld d, $f0
    add d
    stop
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
    rst $38
    rst $38
    or a
    rst $08
    and d
    pop bc
    and b
    ret nz

    sbc a
    ldh [rNR21], a
    ldh [rP1], a
    jp $c03a


    dec c
    add b
    dec d
    ret nz

    dec d
    ret nz

    inc d
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ld h, b
    ld b, b
    and b
    nop
    ldh [$80], a
    ld h, b
    ld b, b
    and b
    nop
    ldh [rP1], a
    ldh [rNR10], a
    ldh [rNR32], a
    ldh [$9f], a
    ldh [$5f], a
    ldh [$e7], a
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $20
    rst $38
    xor a
    rst $18
    ld e, a
    cp a
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
    rst $38
    cp $ff
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $18
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $08
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, a
    rrca
    rst $38
    ccf
    ld a, a
    ld h, a
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    rst $28
    ld a, a
    rrca
    ld a, a
    add hl, sp
    ld a, a
    ld c, e
    ld a, h
    adc d
    ld a, h
    rlca
    ld a, b
    inc de
    ld a, h
    ld b, e
    ccf
    inc bc
    ld [hl], a
    dec bc
    ld [hl], e
    ld b, c
    inc sp
    ld a, [hl-]
    ld b, c
    dec h
    ld a, b
    ld d, h
    jr c, jr_0aa_4d84

    sbc [hl]
    rst $10
    rst $28
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $10
    rst $28
    ld sp, hl
    ld h, a
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rrca
    rst $38
    ccf
    rst $38
    ld e, $ff
    ld a, $ff
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
    ccf
    rst $38
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
    ld [c], a
    db $fd
    db $fd
    di
    db $f4
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fe
    db $fd
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38

jr_0aa_4d84:
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $fd
    db $fd
    ld e, a
    ld e, h
    sbc a
    sbc h
    ld e, a
    cp [hl]
    ld e, l
    cp h
    rst $18
    db $dd
    rst $18
    cp $dd
    rst $18
    db $dd
    db $dd
    rst $38
    ld c, a
    db $fd
    rrca
    ld a, l
    ld c, e
    dec e
    adc h
    rra
    db $dd
    adc [hl]
    db $fc
    rst $08
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
    ccf
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
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
    ld a, $ff
    ld e, $ff
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $14ff
    rst $38
    ld b, b
    rst $38
    push hl
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    ret nz

    inc [hl]
    ret nz

    inc sp
    call z, $be51
    rst $00
    ld a, b
    adc h
    di
    inc de
    db $ec
    ld h, e
    sbc h
    xor a
    ld [hl], b
    ld a, l
    add d
    dec [hl]
    jp z, $bc53

    ld e, $e1
    or e
    call z, $d2ad
    push hl
    ld e, d
    ld [c], a
    ld c, a
    ld a, b
    ld h, a
    scf
    ld h, a
    sub a
    ld [hl], e
    dec sp
    ld d, e
    ld [hl], e
    add hl, bc
    and h
    ld b, c
    inc h
    nop
    ld h, h
    ld [bc], a
    ret nz

    ld [bc], a
    ld h, c
    nop
    pop hl
    nop
    jr c, jr_0aa_4e8a

    jr z, @+$42

    xor b
    ld b, b
    db $ec
    nop
    ld a, h
    add b
    cp h
    ld b, b
    ld a, h
    add b
    db $fc
    add b
    db $fc
    ret nz

    db $fc
    ldh [$d4], a
    ld hl, sp-$20
    db $fc
    ld a, [$fefc]
    db $fc
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
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38

jr_0aa_4e8a:
    cp a
    cp $3c
    cp $3f
    ld hl, sp+$76
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$0d
    db $fc
    or a
    ld hl, sp+$70
    rst $38
    rst $38
    ldh a, [$f7]
    ld hl, sp-$0f
    cp $ff
    ldh a, [rIE]
    ldh a, [$fc]
    pop af
    rst $38
    ld sp, hl
    ld a, [c]
    ei
    ld hl, sp-$09
    or $f9
    db $fd
    ld a, [c]
    db $fc
    di
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, [$ffff]
    rst $38
    ldh [rP1], a
    inc c
    nop
    xor e
    db $10
    cp b
    ld b, b
    ld [hl], e
    add b
    and a
    ld b, b
    or h
    ld [$2059], sp
    ld sp, $dcc2
    nop
    ld hl, sp+$00
    ld a, [$da00]
    nop
    ret c

    jr nz, jr_0aa_4f5b

    add b
    ret z

    jr nc, jr_0aa_4f0d

    jp c, $f00e

    di
    ldh [$f3], a
    ldh [$f8], a
    db $e3
    db $fc
    inc hl
    dec a
    inc bc
    ld hl, $9f1e
    ld e, $3f
    ld e, $3f
    ld e, $1e
    rra
    cp [hl]
    ccf
    rra
    rra
    add hl, bc
    rra
    dec a
    dec bc
    rla
    add hl, bc
    inc bc
    add hl, de
    dec bc
    add hl, de
    dec de
    add hl, bc
    rra
    rlca
    add hl, de
    rlca
    inc de

jr_0aa_4f0d:
    add hl, bc
    inc de
    add hl, bc
    dec de
    ld bc, $011b
    inc de
    add hl, bc
    sbc e
    add c
    jp $f9f9


    rst $38
    rst $18
    cp a
    sbc a
    cp a
    sbc a
    cp a
    rst $18
    or [hl]
    sub $e7
    and a
    rst $20
    rst $00
    rst $20
    rst $20
    rst $00
    rst $00
    rst $00
    add a
    rst $00
    add a
    add a
    add l
    add e
    add c
    rlca
    adc a
    rlca
    ld [hl], l
    rra
    dec l
    scf
    daa
    cpl
    add hl, bc
    ccf
    ld h, l
    dec sp
    ld h, e
    ccf
    ld [hl], a
    daa
    rst $20
    ccf
    rst $38
    ccf
    rst $00
    ccf
    rst $08
    scf
    ldh a, [$2f]
    db $10
    ld l, a
    add e
    ld a, h
    ld h, a
    cp b
    ld h, a
    cp b
    rst $38
    ldh [rIE], a

jr_0aa_4f5b:
    ldh [rIE], a
    ldh [$df], a
    ld h, b
    ld h, l
    sub b
    sbc $20
    rst $38
    nop
    rra
    ldh [$2b], a
    call nc, $ea15
    ld [bc], a
    db $fd
    xor b
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
    nop
    nop
    nop
    nop
    jr nz, jr_0aa_4f86

jr_0aa_4f86:
    ld h, b
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
    jr nz, jr_0aa_4f94

jr_0aa_4f94:
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld b, a
    nop
    nop
    rra
    ld c, a
    nop
    stop
    ldh a, [rP1]
    ldh [rP1], a
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld b, $f9
    dec c
    rst $38
    pop bc
    rst $38
    xor [hl]
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
    ld l, d
    rst $38
    sub l
    rst $38
    rst $38
    rst $38
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
    ld bc, $ff01
    ld bc, $f5f7
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    add c
    jp $df81


    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_0aa_4fe7:
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

    ccf
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
    dec d
    ld [$ff00], a
    ld b, b
    rst $38
    ld [$0000], sp
    nop
    ld [$0800], sp
    nop
    nop
    nop
    ld bc, $0100
    nop
    db $10
    ld bc, $0100
    nop
    inc bc
    ld [bc], a
    ld bc, $0003
    inc hl
    nop
    inc de
    nop
    inc bc
    inc h
    jr nz, jr_0aa_5034

    nop
    db $e4
    add b
    inc h

jr_0aa_5034:
    ld c, b
    inc h
    jr nz, jr_0aa_5044

    db $e4
    ld [$0834], sp
    db $f4
    ld [$d824], sp
    ld a, h
    ret nc

    ld [hl], a
    ret c

jr_0aa_5044:
    scf
    ret z

    ld d, [hl]
    jp hl


    call nc, $d4eb
    db $eb
    call nc, $d6eb
    db $eb
    rst $30
    set 4, a
    db $db
    ld l, a
    db $d3
    rst $18
    db $e3
    rst $20
    db $db
    xor $d3
    db $ed
    jp nc, $d0ee

    db $ec
    jp nc, $d3ec

    db $eb
    rst $10
    rst $28
    rst $10
    rst $28
    rst $18
    rst $28
    rst $18
    rst $18
    rst $38
    rst $38
    rst $30
    rst $18
    rst $30
    rst $38
    rst $10
    rst $30
    rst $10
    ld [hl], a
    rst $10
    rst $30
    rst $10
    rst $30
    rst $10
    rst $38
    rst $10
    rst $18
    rst $30
    ld a, a
    sub a
    rst $30
    rst $18
    rst $10
    rst $38
    rst $10
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
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    cp a
    rra
    ccf
    sbc a
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rst $28
    rra
    rst $28
    rra
    rst $38
    rrca
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
    ei
    rlca
    db $eb
    rla
    ld b, e
    cp a
    inc bc
    rst $38
    inc bc
    rst $38
    and $7f
    xor $7f
    ld a, e
    rst $38
    rst $38
    rst $38
    ld [hl], l
    rst $38
    ld a, l
    rst $38
    ld h, l
    rst $38
    ld a, d
    rst $38
    ld [hl], d
    rst $38
    inc hl
    rst $38
    push hl
    ld a, a
    push hl
    ld a, a
    pop hl
    ld a, a
    di
    ld l, a
    ld [hl-], a
    ld l, a
    ld a, e
    daa
    ld a, c
    ld h, a
    ld a, c
    ld h, a
    ld a, e
    ld h, a
    ld a, [hl-]
    ld h, a
    dec de
    ld h, a
    ld de, $5b6f
    ld h, a
    ld [hl], e
    ld l, a
    ld [hl], l
    ld l, a
    push hl
    ld a, a
    ld d, e
    rst $28
    ld b, a
    rst $38
    ld h, a
    rst $38
    rst $28
    rst $30
    ld h, e
    rst $38
    ld l, a
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
    ld a, a
    ld [hl], e
    ld a, a
    ld l, e
    rst $30
    ld b, a
    rst $38
    rst $20
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
    sbc a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
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
    db $eb
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
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $fe
    cp $fe
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $ff
    cp $ff
    cp $fd
    cp $fd
    cp $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    cp $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    cp $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    cp $fd
    db $fc
    db $fd
    rst $38
    db $fc
    cp $fd
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $f9
    cp $fd
    cp $f9
    cp $fb
    cp $fa
    cp $fa
    cp $fb
    cp $fb
    cp $fb
    cp $fb
    cp $fb
    cp $fb
    cp $fb
    cp $fb
    cp $fb
    cp $fa
    rst $38
    ld a, [$f9ff]
    cp $f9
    cp $fd
    cp $fd
    cp $fc
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    call nz, $c400
    nop
    call nz, $8400
    ld b, b
    add b
    ld b, h
    inc b
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    rst $20
    ld a, b
    rst $08
    ld hl, sp-$39
    ld hl, sp+$4f
    ret nz

    ld e, a
    ldh [$5f], a
    ldh [$7b], a
    db $fc
    set 7, h
    adc e
    db $fc
    dec hl
    db $fc
    dec bc
    db $fc
    ld l, e
    cp b
    ld a, [bc]
    cp b
    ld l, [hl]
    cp b
    ld c, $b8
    ld a, [bc]
    cp b
    ld c, [hl]
    cp c
    ld c, d
    cp c
    ld a, [hl]
    adc c
    ld a, [hl]
    adc c
    ld a, [hl]
    adc c
    ld a, [hl]
    adc c
    ld a, [hl]
    adc c
    ld l, a
    adc c
    ld h, a
    adc c
    ld h, a
    adc c
    ld h, l
    adc c
    ld h, a
    adc c
    ld h, l
    adc c
    ld b, l
    adc c
    ld b, l
    sbc c
    dec h
    add hl, de
    dec h
    ld de, $1325
    ld hl, $0513
    inc de
    dec h
    inc de
    dec b
    inc de
    ld de, $1013
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld d, $13
    ld d, $13
    ld [de], a
    inc de
    ld [bc], a
    inc de
    ld [bc], a
    inc de
    ld [bc], a
    inc sp
    ld [bc], a
    inc sp
    ld [bc], a
    inc sp
    ld a, [bc]
    scf
    ld [bc], a
    scf
    ld a, [bc]
    scf
    ld [bc], a
    scf
    ld [hl+], a
    scf
    ld [hl+], a
    scf
    ld [hl+], a
    daa
    ld h, $27
    ld h, $27
    dec h
    daa
    ld h, h
    daa
    ld h, [hl]
    daa
    ld l, l
    daa
    db $ed
    daa
    db $ed
    daa
    cp l
    ld h, a
    xor l
    ld h, a
    or a
    ld l, a
    or l

Jump_0aa_5299:
    ld l, a
    dec d
    rst $28
    push de
    ld l, a
    ld e, [hl]
    rst $28
    call c, $cc6f
    ld a, a
    sbc $6f
    ld e, h
    rst $28
    ld e, [hl]
    rst $28
    ld e, [hl]
    rst $28
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    adc $ff
    ld c, [hl]
    rst $38
    adc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    rst $18
    rst $38
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    rst $18
    rst $38
    rst $38
    rst $38
    call z, $ec43
    ld b, e
    ld l, h
    ld b, e
    inc c

jr_0aa_52d7:
    ld b, e
    inc c
    ld b, e
    xor a

jr_0aa_52db:
    nop
    rst $38
    nop
    db $fc
    ld bc, $e36f
    ld l, a
    db $e3
    jr c, @-$1b

    cp h
    nop
    rst $38
    nop
    sbc h
    inc hl
    ld hl, sp-$19
    jr c, jr_0aa_52d7

    cp b
    rst $20
    ld a, [$dae7]
    rst $20
    db $db
    rst $20
    db $db
    rst $20
    sbc a
    rst $20
    sbc d
    and a
    sub b
    and a
    sbc b
    and a
    sbc b
    and a
    sub b
    add a
    sub b
    add a
    db $10
    add a
    db $10
    adc a
    db $10
    rst $08
    inc d
    rst $08
    rst $08
    rst $30
    rst $28
    rst $18
    rst $28
    rst $18
    rst $18
    ld l, a
    rst $28
    ld e, a
    rst $18
    ld l, a
    rst $38
    ld c, a
    rst $18
    ld l, a
    jr jr_0aa_5371

    inc b
    ld c, a
    jr z, jr_0aa_5375

    ld a, [bc]
    ld c, a
    ld [$144f], sp
    ld c, a
    dec b
    adc a
    inc bc
    sbc a
    dec h
    adc a
    inc c
    sbc a
    ld [$009f], sp
    sbc a
    ld c, d
    sbc a
    jr jr_0aa_52db

    sbc h
    sbc a
    ld e, $9f
    dec e
    sbc [hl]
    inc e
    sbc a
    add hl, bc
    sbc a
    rrca
    sbc a
    rlca
    sbc a
    dec bc
    sbc a
    cp c
    rra
    sbc l
    ld a, $1f
    cp [hl]
    ld e, $bf
    ld e, $bf
    ld a, $be
    dec a
    cp [hl]
    inc a
    cp a
    dec sp
    cp a
    rra
    ld a, a
    cpl
    rst $38
    rra
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec a
    rst $38
    inc a
    cp $3f
    cp $3f
    cp $be

jr_0aa_5371:
    ld a, l
    rst $38
    ld a, l
    cp e

jr_0aa_5375:
    ld a, a
    or a
    ld a, a
    sbc a
    ld a, a
    ld a, a
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    ld a, e
    db $fd
    ld a, [hl]
    db $fd
    ld a, a
    db $fc
    ld a, e
    db $fd
    ld a, e
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
    ei
    rst $38
    rst $38
    ei
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei

jr_0aa_53a1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [c]
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    ldh [$08], a
    and $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    and d
    nop
    push af
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld d, d
    nop
    add $00
    rrca
    rst $38
    ccf
    rst $38
    inc sp
    rst $38
    ld sp, $e1ff
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add d
    ld a, l
    rst $38
    rst $38
    db $db
    rst $38
    rst $08
    rst $30
    rst $00
    rst $38
    db $db
    rst $30
    cp c
    rst $18
    db $fd
    ei
    db $fc
    rst $38
    cp $ff
    rst $38
    cp $fe
    rst $38
    db $fc
    rst $38
    db $fd
    ei
    ei
    rst $38
    or e
    rst $38
    sub a
    rst $38
    jr nz, jr_0aa_53a1

    ld l, h
    sub a
    ld c, b
    or a
    inc c
    di
    ld b, a
    ld sp, hl
    add d
    db $fd
    inc bc
    db $fc
    ld bc, $82fc
    db $fd
    add h
    ei
    ld c, l
    di
    cp b
    ld h, a
    db $f4
    cpl
    ld c, b
    sbc a
    ret z

    ccf
    sub h
    ld l, a
    ld d, d
    rst $20
    add [hl]
    di
    sub c
    ei
    add h
    ld sp, hl
    dec b
    ld hl, sp-$7e
    ld sp, hl
    add a
    di
    add $e7
    ld e, h
    rst $28
    call z, $be7f
    ld a, a
    sbc a
    ld a, a
    ld l, a
    rst $18
    rst $10
    rst $28
    xor $f7
    ld a, [$f5f6]
    ei
    ldh a, [$fb]
    db $eb
    or $d6
    rst $28
    rst $28
    rst $18
    sbc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    cp a
    rst $18
    adc $ff
    db $f4
    rst $28
    push hl
    rst $30
    di
    rst $30
    push hl
    rst $38
    call z, $beff
    sbc $be
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp [hl]
    cp a
    cp l
    sbc $ef
    db $dd
    rst $38
    rst $28
    rst $30
    rst $28
    set 7, a
    sbc c
    rst $38
    rst $38
    cp l
    ld a, a
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    db $fd
    cp a
    sbc e
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    cp e
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, e
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $38

jr_0aa_54bb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, l
    add b
    ld a, l
    ld b, b
    dec sp
    ld b, h
    inc sp
    ld d, h
    nop
    xor d
    nop
    ld d, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ldh a, [$95]
    nop
    nop
    rlca
    rst $38
    rst $38
    inc bc
    rst $38
    add [hl]
    rst $38
    adc h
    rst $38
    call z, $f9ff
    cp $70
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld de, $28ee
    rst $10
    ld l, h
    sub e
    ld a, b
    add c
    jp hl


    db $10
    ld a, c
    add b
    ldh [rNR13], a
    ld h, h
    add e
    add hl, hl
    add $00
    rst $08
    nop
    ld e, a
    ld b, b
    ccf
    ld h, b
    rra
    ld d, b
    adc a
    nop
    rst $08
    add hl, hl
    add $00
    and $01
    ld a, [c]
    ld [bc], a
    pop af
    inc d
    ld [c], a
    nop
    and $01
    adc $00
    sbc a
    jr nz, jr_0aa_54bb

    ret nz

    ccf
    and b
    ld a, a
    ld b, b
    cp a
    ld d, b
    cp a
    add hl, hl
    sbc $31
    call z, $ed13
    add hl, bc
    rst $30
    add hl, de
    rst $20
    ld a, [de]
    call $de29
    ld d, l
    cp [hl]
    and b
    ld a, a
    ld b, b
    rst $38
    ld d, l
    rst $38
    ldh [$7f], a
    or c
    ld a, [hl]
    ld d, d
    cp h
    add hl, sp
    db $dd
    dec hl
    rst $18
    rst $10
    rst $28
    and e
    rst $18
    or l
    db $db
    ld a, c
    cp l
    cp d
    ld a, l
    ld a, l
    cp $fe
    rst $38
    cp $ff
    db $fd
    cp $78
    ld a, l
    or c
    ld a, e
    ld [hl], e
    cp a
    sub a
    rst $38
    adc a
    rst $18
    ld d, a
    cp a
    inc sp
    ld a, a
    ld [hl], e
    ei
    ld sp, hl
    rst $38
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld [hl], a
    ei
    rst $28
    ld [hl], a
    xor a
    ld a, a
    rst $18
    cp a
    ccf
    rst $38
    rst $38
    ld l, a
    rst $28
    rst $30
    ei
    rst $30
    rst $38
    ei
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    or $ff
    ei
    rst $38
    di
    rst $38
    or $ff
    xor $ff
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
    rst $18
    rst $38
    xor $ff
    rst $28
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
    nop
    ld bc, $0302
    inc b
    dec b
    dec b
    dec b
    dec b
    ld b, $05
    dec b
    rlca
    dec b
    dec b
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec b
    dec b
    dec b
    dec b
    ld c, $05
    dec b
    rrca
    dec b
    dec b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    dec b
    jr jr_0aa_5603

    ld a, [de]
    dec b
    dec de
    inc e
    dec b
    dec e
    ld e, $1f
    jr nz, jr_0aa_5615

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0aa_5625

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld [hl+], a

jr_0aa_5603:
    ld [hl+], a
    ld [hl+], a
    jr nc, jr_0aa_5629

    ld [hl+], a
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0aa_564a

    ld a, [hl-]
    dec sp
    ld [hl+], a
    ld [hl+], a

jr_0aa_5615:
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
    ld [hl+], a

jr_0aa_5625:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_0aa_5629:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    dec b
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
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d

jr_0aa_564a:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl+], a
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
    dec b
    dec b
    sbc c
    sbc d
    sbc e
    ld [hl+], a
    ld [hl+], a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    dec b
    dec b
    dec b
    and l
    and [hl]
    ld [hl+], a
    ld [hl+], a
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
    dec b
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
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
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
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    ld b, $06
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    ld b, $03
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ei
    or e
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld [hl], e
    rst $38
    ld e, b
    rst $20
    xor e
    rst $30
    add h
    rst $38
    cpl
    rst $38
    ld [hl], a
    ld a, a
    rlca
    rst $38
    and d
    ld e, a
    nop
    ld a, a
    pop hl
    ccf
    rla
    rst $38
    ld c, a
    cp a
    sbc a
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $e1
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
    ld b, a
    cp a
    rst $20
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld hl, sp-$01
    and c
    push hl
    ld a, [hl]
    db $fc
    ld hl, sp-$02
    db $fc
    rst $30
    or $f1
    ld a, [$f0f0]
    pop af
    db $eb
    db $f4
    cp [hl]
    ld a, [$fffc]
    or a
    rst $38
    or e
    ld a, [$f0e8]
    add sp, -$10
    jp z, Jump_000_28fc

    rst $38
    ld b, b
    rst $28
    pop bc
    ldh [rHDMA1], a
    ldh [$e0], a
    add sp, -$30
    add sp, -$30
    db $fc
    ld [$f3f4], a
    ld [c], a
    di
    ld sp, hl
    ret z

    db $fc
    db $e4
    db $fc
    db $fd
    cp $fe
    rst $38
    db $ec
    rst $30
    rst $20
    ldh [$fc], a
    pop hl
    ei
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
    ccf
    rst $38
    ld a, a
    add b
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
    ccf
    rst $38
    ld a, l
    add e
    db $e4
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
    ld a, a
    rst $38
    db $dd
    db $dd
    ret z

    db $ec
    ld h, d
    pop hl
    ld b, a
    ld b, e
    dec bc
    dec de
    ld a, a
    add hl, de
    ret z

    db $dd
    adc $e8
    ld [hl], b
    pop hl
    ld b, e
    ld h, e
    adc e
    add hl, bc
    dec e
    add hl, de
    rst $18
    ld c, h
    ld c, h
    xor [hl]
    sub c
    ld h, h
    ld h, b
    ld [hl], e
    add d
    add hl, hl
    adc h
    add hl, de
    ld d, b
    inc c
    ld [bc], a
    inc b
    ld bc, $1304
    ld bc, $0326
    ld [bc], a
    rrca
    and l
    ld c, $3d
    ld c, [hl]
    adc l
    ld a, [hl]
    ld a, c
    ld e, $9a
    inc a
    ld a, [de]
    db $fc
    ld a, [$7a3c]
    inc a
    cp $78
    ld a, [$7bfc]
    db $fc
    ld a, [$fbfc]
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld a, [$fbfc]
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
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
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    xor a
    rst $18
    rst $28
    rst $18
    rst $38
    rst $08
    rst $18
    rst $28
    or a
    ld c, a
    ld a, e
    add b
    ld a, [$f1ff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0aa_59f0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ld h, d
    add c
    di
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
    db $fd
    rst $38
    rst $38
    rst $38
    rra
    dec de
    db $db
    ld l, l
    rst $28
    ld l, h
    ld l, b
    ld [hl], h
    ld hl, $a7b3
    adc e
    adc e
    dec e
    ld l, a
    ld l, l
    ld [hl], h
    ld l, [hl]
    db $f4
    ld sp, $b3a3
    jp Jump_000_3f8d


    adc l
    ld [hl], l
    ld l, $a6
    ld [hl], h
    jr c, jr_0aa_59f0

    ld h, b
    sub b
    ld [$50d0], sp
    and b
    and b
    ld b, b
    add b
    ret nz

    ld b, b
    add b
    add b
    nop
    add b
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$1f], a
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    sbc a
    ret nz

    rst $18
    ret nz

    rst $18
    ldh [$cf], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh a, [$e7]
    ldh a, [$ef]
    ldh a, [$f7]
    ldh a, [$f7]
    ld hl, sp-$0d
    ld hl, sp-$10
    db $fc
    ldh a, [$fe]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    nop
    db $fc
    nop
    ldh [$f1], a
    pop af
    pop af
    ld sp, hl
    pop af
    ld sp, hl
    ei
    ld sp, hl
    db $fd
    ei
    db $fc
    ei
    cp $f9
    cp $f9
    db $f4
    ld sp, hl
    db $ec
    ld sp, hl
    ldh a, [$fd]
    ldh a, [$fd]
    ldh a, [$fd]
    ld sp, hl
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fd
    cp $fd
    rst $38
    db $fc
    ld hl, sp-$04
    db $10
    inc c
    inc h
    call c, $fcff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    cp $de
    rst $38
    cp $ff
    ld a, [$e2ff]
    rst $38
    jp nz, $c0ff

    rst $38
    add b
    rst $38
    ret nz

jr_0aa_5b1d:
    rst $38
    db $e3
    rst $38
    ldh [rLCDC], a
    ldh [rP1], a
    ld h, b
    ld b, b
    ldh a, [$60]
    ldh a, [rSVBK]

jr_0aa_5b2a:
    ldh a, [rSVBK]
    ld hl, sp-$50
    cp b
    jr nc, @+$72

    ld h, b
    ldh [rLCDC], a
    ldh [$60], a
    rst $38
    and b
    jp hl


    add b
    ld h, c
    jr nz, jr_0aa_5b1d

jr_0aa_5b3d:
    ld h, b
    nop
    nop
    nop
    nop
    nop
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
    ld a, b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @-$2f

    db $10
    rst $28
    jr nc, @-$2f

    jr nc, jr_0aa_5b3d

    ldh a, [$3f]
    sub b
    ld h, b
    db $10
    ldh [rNR10], a
    ldh [rNR41], a
    ret nz

    jr nz, jr_0aa_5b2a

    jp nz, Jump_000_3800

    nop
    and b
    ld b, b
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    ldh [$80], a
    ldh a, [rP1]
    di
    ld bc, $03ff
    cp $06
    cp $0c
    ld a, [hl]
    sbc b
    ld a, $f0
    ld a, a
    ldh [$df], a
    ldh [$bf], a
    ret nz

    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ld hl, sp-$07
    pop af
    rst $20
    jp Jump_000_0fcf


    ccf
    rra
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
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    ld h, d
    db $fd
    ld b, l
    ld a, [$f807]
    rlca
    ld hl, sp+$3f
    scf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    ccf
    rrca
    ccf
    daa
    ccf
    dec b
    ld a, a
    ld d, $4a
    ld a, l
    dec h
    ld a, e
    dec c
    daa
    ld h, $1f
    sbc c
    cp $8f
    ld sp, hl
    jp hl


    rst $10
    push bc
    ld c, a
    cpl
    ld b, $21
    nop
    jr nz, jr_0aa_5bf6

jr_0aa_5bf6:
    nop
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
    inc b
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    inc b
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
    nop
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
    nop
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    ld b, b
    inc b
    dec b
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld a, [de]
    ld de, $0132
    ld h, d
    add b
    jp $8300


    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    inc bc
    add [hl]
    inc bc
    add e
    inc bc
    rst $30
    inc bc
    rst $28
    ld [bc], a
    db $fc
    nop
    db $e3
    pop af
    rst $00
    rst $20
    rra
    adc a
    ccf
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
    db $fd
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    inc b
    rst $38
    ld a, [bc]
    db $fd
    inc sp
    db $fc
    ld l, e
    db $f4
    rst $10
    add sp, -$71
    ldh a, [$2f]
    ret nc

    ld e, a
    and b
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
    rst $18
    rst $38
    sbc $ff
    cp a
    cp $fe
    cp a
    cp l
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $20
    rst $38
    rst $08
    rst $38
    inc e
    rst $38
    dec sp
    rst $38
    rst $38
    ld [hl], a
    rst $38
    xor $ff
    call c, $3b7f
    ccf
    inc sp
    ccf
    rlca
    rra
    inc c
    rrca
    add hl, bc
    rlca
    rlca
    rlca
    ld b, $03
    ld bc, $0103
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
    add c
    ld b, b
    ld bc, $6240
    nop
    ld h, b
    nop
    ld b, b
    jr nz, jr_0aa_5d49

    jr nz, jr_0aa_5d4b

    jr nz, jr_0aa_5d4d

    jr nz, jr_0aa_5d0f

jr_0aa_5d0f:
    ld h, b
    ld h, b
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [rNR41], a
    pop hl
    jr nz, jr_0aa_5d80

    inc bc
    rrca
    rra
    ccf
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
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    or b
    rst $38
    ld a, [c]
    db $fd
    jp $dffc


    and b
    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    rst $38

jr_0aa_5d49:
    nop
    rst $38

jr_0aa_5d4b:
    nop
    rst $38

jr_0aa_5d4d:
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
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    ld [$7b00], a
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
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

jr_0aa_5d80:
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
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
    rra
    rra
    rra
    rra
    ld l, a
    nop
    ldh a, [rNR41]
    ldh [$60], a
    ld a, a
    nop
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rra
    rra
    nop
    nop
    nop
    ld bc, $0300
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
    nop
    inc bc
    ld bc, $0f1f
    sbc a
    ld c, $0c
    rra
    ld c, $1f
    ld c, $1f
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rst $08
    rra
    rrca
    rra
    rrca
    rra
    cpl
    rra
    cpl
    rra
    cpl
    rra
    ccf
    rra
    ld a, $1e
    dec e
    jr jr_0aa_5e02

    inc de
    rlca
    rrca

jr_0aa_5e02:
    rra
    rra
    ccf
    ccf
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $08
    rst $38
    ret c

    rst $38
    or b
    rst $38
    ldh [rIE], a
    add c
    cp $09
    or $2f
    ret nc

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
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, [$f400]
    nop
    ld d, d
    nop
    ret nc

    nop
    ret z

    nop
    ld d, b
    nop
    add b
    nop
    ld b, h
    nop
    stop
    nop
    nop
    add b
    nop
    nop
    nop
    rst $38
    rst $28
    rst $18
    rst $28
    rst $38
    rst $18
    sbc a
    cp $bd
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    rst $08
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ld a, [hl]
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $db
    rst $38
    db $f4
    rst $38
    ei
    rst $38
    ret c

    rst $38
    db $f4
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    push af
    rst $38
    db $db
    rst $38
    db $f4
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    and h
    rst $38
    reti


    rst $38
    db $f4
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    db $f4
    rst $38
    ei
    rst $38
    cp $ff
    cp $ff
    rst $38
    ei
    rst $38
    or $ff
    rst $38
    rst $38
    db $fd
    rst $38
    add b
    rst $30
    add b
    ld a, [c]
    nop
    nop
    nop
    nop
    nop
    rst $30
    nop
    rst $30
    di
    rst $30
    di
    di
    di
    di
    di
    di
    ldh [$f0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$60], a
    ldh [$60], a
    ld h, b
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [$bf], a
    ld h, b
    cp a
    ld h, b
    xor [hl]
    ld h, b
    and [hl]
    ld [hl], b
    and d
    ld [hl], b
    add b
    push af
    add b
    ld a, [$f883]
    ld [hl], d
    add c
    rst $08
    add c
    adc a
    pop af
    db $ec
    di
    push hl
    ld a, [$fe81]
    add b
    rst $38
    add d
    rst $38
    pop bc
    rst $38
    jp nz, $b2ff

    rst $18
    or a
    rst $18
    sub a
    ccf
    ccf
    ld a, a
    rst $38
    cp $de
    db $fd
    pop af
    ei
    and a
    rst $10
    rst $18
    rst $08
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld e, h
    rst $38
    ld e, b
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    dec b
    ld a, [$50af]
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
    db $fc
    nop
    ld a, [$1f00]
    nop
    ld h, b
    nop
    xor d
    nop
    jr nz, jr_0aa_5f38

jr_0aa_5f38:
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $be
    cp a
    ld a, l
    rst $38
    ld a, e
    di
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $18
    cp $af
    pop af
    ei
    ld a, a
    ld hl, sp-$01
    inc a
    jp $fb94


    add a
    db $fc
    ld hl, $b4ff
    db $db
    or a
    db $ec
    dec b
    ei
    or c
    sbc $37
    db $ec
    dec d
    ei
    add e
    db $fc
    scf
    db $ec
    sub [hl]
    ei
    add a
    db $fc
    jr nz, @+$01

    or h
    db $db
    scf
    db $ec
    inc b
    ei
    sub c
    cp $3f
    db $e4
    ld b, $f9
    dec bc
    db $f4
    sbc e
    ld h, h
    and h
    db $db
    cpl
    db $f4
    jr nz, @+$01

    sub h
    ei
    daa
    db $fc
    sub l
    ei
    add b
    rst $38
    daa
    db $fc
    db $dd
    ei
    dec h
    cp $03
    db $fc
    ld a, a
    add b
    ld l, a
    sub b
    pop af
    rrca
    inc b
    inc bc
    rlca
    nop
    or a
    inc bc
    rst $38
    cp h
    cp a
    sbc a
    cp a
    sbc a
    rst $38
    sbc [hl]
    rst $38
    dec de
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    rst $20
    ld b, e
    db $e3
    ld b, c
    db $e3
    ld b, c
    db $e3
    ld b, c
    db $e3
    ld b, c
    db $e3
    ld b, b
    ld d, d
    pop hl
    db $e3
    pop hl
    ld b, d
    pop hl
    jp $66e0


    ld sp, hl
    rst $18
    rst $20
    sbc a
    ccf
    ld a, a
    rst $38
    ld d, a
    rst $38
    ld b, a
    rst $38
    add [hl]
    ld a, a
    rst $30
    ccf
    rlca
    rst $38
    sbc a
    ld a, a
    ccf
    rst $38
    cp $ff
    rst $38
    cp $ff
    db $fd
    di
    rst $38
    rst $30
    rst $28
    rst $28
    rst $18
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $f6
    ld sp, hl
    db $ed
    di
    rst $18
    db $e3
    add hl, sp
    rst $00
    ld e, a
    ldh [rNR34], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$3ff7], sp
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
    rst $30
    nop
    db $fc
    nop

jr_0aa_6018:
    ld [hl], a
    nop
    and d
    nop
    jr z, jr_0aa_601e

jr_0aa_601e:
    add b
    nop
    jr nz, jr_0aa_6022

jr_0aa_6022:
    jr nc, jr_0aa_6024

jr_0aa_6024:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0aa_602f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0aa_603d:
    nop
    ld bc, $f700
    ei
    rst $28
    rst $30
    rst $18
    rst $28
    cp $df
    db $fd
    cp a
    ld a, b
    rst $38
    xor l
    or $bf
    rst $28
    di
    db $fc
    cp $00
    or a
    ld h, h
    ld h, e
    sbc c
    ld [$e794], a
    inc h
    ld h, e
    sbc c
    ld a, [$6184]
    inc h
    jp nz, Jump_0aa_5299

    and h
    ld a, d
    dec h
    pop bc
    sbc b
    ld d, [hl]
    and h
    ld e, a
    jr nz, jr_0aa_602f

    sbc c
    add $24
    ld hl, sp+$01
    ld c, l
    sub b
    ret nz

    inc h
    ld a, b
    add c
    ld e, b
    add b
    ld b, h
    jr nz, jr_0aa_6018

    nop
    and b
    nop
    ld b, h
    jr nz, jr_0aa_60ce

    sub b
    ret nz

    inc h
    db $fd
    nop
    rst $28
    sub b
    ret nz

    inc h
    ld [c], a
    sbc c
    ld a, a
    add b
    cp [hl]
    ld h, h
    and d
    reti


    db $f4
    nop
    jr nz, jr_0aa_609a

jr_0aa_609a:
    ld sp, hl
    nop
    ld a, [de]
    db $e4
    add h
    ei
    add b
    rst $38
    dec h
    cp $dd
    ei
    inc h
    rst $38
    and c
    cp $95
    ei
    ld h, l
    cp $90
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    db $db
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    di
    rst $38
    ld [hl], a
    adc a
    ccf
    ld a, a

jr_0aa_60c0:
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38

jr_0aa_60ce:
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    cp a
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
    rst $18
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
    db $ed
    rla
    jr nc, jr_0aa_60c0

    ld e, $ff
    nop
    rst $38
    dec hl
    call nc, $8679
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
    xor $00
    ld d, l
    nop
    inc b
    nop
    ldh [rP1], a
    add hl, de
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [de], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    ld [$1000], sp
    nop
    nop
    nop
    jr nz, jr_0aa_6134

jr_0aa_6134:
    nop
    nop

jr_0aa_6136:
    ld b, b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    xor $df
    rst $38
    sbc [hl]
    cp d
    ld a, l
    ld [hl], d
    rst $38
    db $ed
    or $67
    sbc b
    sbc $3f
    xor [hl]
    ldh a, [$09]
    nop
    ld c, h
    ret z

    ld a, [c]
    ld [bc], a
    jr jr_0aa_6178

    call z, Call_0aa_7248
    ld [bc], a
    jr z, jr_0aa_615e

jr_0aa_615e:
    add b
    ld c, b
    nop
    ld [hl-], a
    jr z, jr_0aa_6164

jr_0aa_6164:
    ld [$32c0], sp
    ld [bc], a
    add hl, hl
    nop
    nop
    ret z

    ld [hl-], a
    ld [bc], a
    ld b, c
    ld [$00ca], sp
    ld [de], a
    jr nz, jr_0aa_6136

    ld [$00ca], sp

jr_0aa_6178:
    ld [bc], a
    jr nz, jr_0aa_617b

jr_0aa_617b:
    nop
    nop
    nop
    jr nz, jr_0aa_6180

jr_0aa_6180:
    ld b, b
    nop
    nop
    nop
    jr nz, jr_0aa_6186

jr_0aa_6186:
    ret


    nop
    ld h, $00
    nop
    nop
    ret nz

    nop
    ld h, $00
    nop
    nop
    ld l, c
    add b
    jr nz, jr_0aa_6196

jr_0aa_6196:
    nop
    nop
    nop
    nop
    db $d3
    nop
    reti


    nop
    ld hl, sp+$26
    ld d, h
    xor e
    xor a
    reti


    db $fc
    ld h, $36
    ret


    ld a, a
    add b
    jp nc, $a624

    reti


    rst $18
    jr nz, jr_0aa_61cc

    db $e4
    xor a
    reti


    dec h
    cp $80
    rst $38
    add c
    rst $38
    dec h
    cp $d9
    rst $38
    db $fd
    rst $38
    and $ff
    reti


    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0aa_61cc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $e3
    rra
    ldh [rP1], a
    ld de, $d0fe
    cpl
    swap h
    push af
    ld a, [bc]
    rst $30
    ld [$10ef], sp

jr_0aa_61ee:
    rst $38
    nop
    rst $38
    nop
    ld [$6a00], a
    nop
    call nz, $8000
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    rst $38
    dec a
    pop hl
    ei
    ldh a, [$ef]
    ld [hl-], a
    call z, Call_000_0035
    ld b, $79
    jr jr_0aa_61ee

    ld [$8101], sp
    sbc b
    add b
    ld h, $60
    ld bc, $9089
    add d
    inc h
    ld h, c
    nop
    add hl, de
    add b
    ld [hl+], a
    inc b
    ld h, b
    ld bc, $9009
    ld h, [hl]
    inc b
    ld b, c
    nop
    sbc c
    nop
    ld h, h
    inc b
    ld b, b
    ld bc, $9001
    ld b, h
    nop
    ld bc, $9100
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0000
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld de, $40ee
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sub d
    db $ed
    db $ec
    rst $38
    xor l
    ld d, d
    db $fc
    inc de
    and h
    ld c, h
    xor h
    inc de
    or e
    nop
    adc h
    ld b, b
    or e
    nop
    rst $38
    nop
    cp l
    ld b, b
    ld e, h
    or e
    ld [hl], e
    call z, $ff00
    ld c, [hl]
    or e
    inc sp
    call z, $ff00
    ld [hl-], a
    rst $38
    call Call_000_22ff
    rst $38
    jp nz, $edff

    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    cpl
    add c
    nop
    rlca
    ld hl, sp-$10
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
    cp e
    nop
    and a
    nop
    ld d, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    set 6, a
    ret z

    rst $38
    ld l, h
    sub c
    ld [$0d01], a
    ld a, [c]
    jr nc, @-$3e

    ld bc, $0901
    add b
    ld [bc], a
    ld b, h
    nop
    ld b, c
    adc c
    nop
    ld b, d
    inc b
    nop
    ld b, c
    add c
    nop
    ld b, b
    inc b
    inc b
    ld b, c
    nop
    ld bc, $0044
    ld b, l
    nop
    ld bc, $0000
    inc b
    dec b
    ld b, b
    inc bc
    nop
    inc b
    nop
    ld b, h
    nop
    ld [bc], a
    ld bc, $0004
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
    ld [bc], a
    nop
    ld [$0800], sp
    nop
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    inc de
    cp $08
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc de
    rst $38
    ld [de], a
    rst $38
    sbc l
    rst $38
    sbc l
    ld [bc], a
    sub a
    ld [bc], a
    sbc l
    adc b
    sbc l
    ld [bc], a
    sbc l
    ld [bc], a
    sub l
    ld [$001f], sp
    sbc a
    nop
    sub a
    ld [$0699], sp
    adc b
    sbc a
    adc c
    sbc a
    adc [hl]
    rla
    nop
    sbc a
    nop
    sbc a
    ld h, $9f
    cp c
    sbc a
    rrca
    cp a
    ld h, $9f
    cp c
    sbc a
    rra
    cp a
    rra
    cp a
    rst $18
    cp a
    rst $38
    cp a
    sbc a
    rst $38
    ccf
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
    cp $ff
    rst $38
    rst $38
    add a
    ld a, a
    inc bc
    nop
    rrca

Jump_0aa_6367:
    ldh a, [$c1]
    ccf
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    db $db
    nop
    rst $30
    nop
    rlca
    nop
    rla
    nop
    rlca
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
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
    inc b
    nop
    inc c
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    cp b
    rst $18
    jp c, $6c21

    sub e
    dec de
    db $e4
    ret nz

    nop
    jr @+$03

    ld [$2490], sp
    ld b, [hl]
    db $10
    ld b, c
    adc c
    db $10
    ld b, d
    inc b
    dec b
    ld b, b
    ld de, $4000
    inc b
    ld bc, HeaderNewLicenseeCode
    db $10
    inc b
    nop
    ld b, h
    ld b, b
    ld d, c
    ld bc, $001d
    call nz, $1100
    nop
    nop
    nop
    ld c, h
    nop
    ld [bc], a
    ld de, $0010
    call nz, RST_00
    nop
    nop
    nop
    nop
    nop

jr_0aa_63dc:
    nop
    nop
    nop
    nop
    call z, Call_000_0300
    nop
    nop
    nop
    call z, $0200
    nop
    ld [hl+], a
    nop
    call nz, Call_000_2208
    nop
    nop
    ld [hl+], a
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    nop
    ld d, a
    jr nz, jr_0aa_63dc

    adc b
    rst $28
    ld [hl+], a
    db $dd
    ld [hl+], a
    dec d
    adc b
    push bc
    ld [hl+], a
    db $dd
    ld [hl+], a
    ld b, b
    sbc c
    ld d, a
    jr nz, @+$01

    nop
    ld b, h
    sbc c
    sbc c
    ld h, [hl]
    nop
    rst $38
    sbc a
    ld sp, hl
    rst $38
    ld h, [hl]
    nop
    rst $38
    dec b
    ei
    db $76
    rst $28
    sbc c
    rst $38
    sbc b
    rst $38
    ld h, [hl]
    cp $90
    cp $fd
    cp $ef
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    cp $fe
    rst $38
    db $fd
    cp $fe
    db $fc
    db $fc
    cp $fc
    cp $fc
    cp $fe
    cp $fe
    cp $fe
    cp $e6
    cp $e4
    cp $ec
    or $fb
    and $db
    and $df
    ld [c], a
    rst $18
    ld [c], a
    rst $18
    ld [c], a
    sbc $e3
    and h
    jp $c3fc


    call c, $ace3
    ld b, e
    sub h
    inc bc
    ret nz

    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    and b
    ld e, a
    ret z

    scf
    ld a, [$7c05]
    inc bc
    ld a, a
    nop
    dec a
    ld [bc], a
    cp a
    nop
    ccf
    nop
    rra
    nop
    ld a, a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    inc de
    nop
    ld de, $1100
    nop
    jr nc, jr_0aa_6494

jr_0aa_6494:
    stop
    stop
    stop
    stop
    stop
    stop
    or b
    ld b, e
    ld a, c
    add [hl]
    inc a
    ret nz

    nop
    nop
    add hl, de
    ld [$8812], sp
    ld b, d
    ld h, $28
    ld b, b
    nop
    sbc b
    ld h, b
    ld b, $20
    ld b, b
    db $10
    ld [$0204], sp
    ld h, $40
    nop
    add hl, de
    ld d, $00
    ld h, [hl]
    ld b, b
    add hl, de
    nop
    stop
    inc b
    ld b, [hl]
    ld d, b
    ld bc, $0011
    ld b, [hl]
    nop
    ld d, b
    ld bc, $1120
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0400
    nop
    ret nz

    inc b
    ld [hl+], a
    db $10
    inc b
    nop
    ld c, h
    add b
    ld [hl-], a
    nop
    nop
    nop
    ld b, h
    adc b
    jr nc, jr_0aa_64f2

    ld a, [hl+]
    nop

jr_0aa_64f2:
    call z, RST_00
    nop
    nop
    nop
    ld [bc], a
    nop
    ld a, [hl]
    ld [bc], a
    cp $00
    call c, $dc88
    ld [hl+], a

jr_0aa_6502:
    call c, $0422
    sbc b
    sbc h
    ld h, d
    call c, $0422
    sbc b
    sbc $20
    sbc $20
    ld b, h
    sbc b
    cp d
    ld h, h
    ld [bc], a
    db $fc
    ld hl, sp-$64
    ld h, [hl]
    db $fc
    ld b, [hl]
    db $fc
    sbc b
    db $fc
    ld h, h
    db $fc
    ld h, h
    db $fc
    cp h
    nop
    call c, $5420
    ld a, h
    ld e, b
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    inc a
    inc a
    inc a
    cp h
    inc a
    cp h
    inc e
    cp h
    sbc h
    sbc h
    sbc h
    call c, $dc9c
    adc h
    call z, $ccc8
    ld c, b
    adc b
    nop
    db $ec
    ret nz

    db $e4
    ret nz

    db $e4
    ldh [$e4], a
    ldh [$f2], a
    ldh [$f3], a
    ld h, b
    di
    ld [hl], b
    add b
    ld [hl], c
    add c
    ld [hl], b
    nop
    ld [hl], b
    ld [$0070], sp
    ld a, c
    ld [bc], a
    ld a, c
    ld [bc], a
    ld a, c
    ld h, h
    add hl, de
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, $39
    ld [hl+], a
    add hl, de
    ld [bc], a
    add hl, de
    add a
    jr jr_0aa_6502

    ld [$0896], sp
    adc d
    nop
    adc h
    nop
    inc c
    add b
    add h
    ld [$0884], sp
    inc d
    adc b
    add h
    ld [$0884], sp
    add [hl]
    ld [$0ac4], sp
    call nz, $c00a
    ld c, $c1
    ld c, $c5
    ld a, [bc]
    call z, $dc03
    inc bc
    call c, $d003
    dec bc
    ld b, d
    ld bc, $0162
    jr nz, @+$03

    ld sp, $2000
    db $10
    add a
    nop
    add h
    nop
    inc b
    nop
    add h
    nop
    add l
    add b
    inc bc
    nop
    inc b
    nop
    add h
    add b
    add e
    nop
    nop
    nop
    add b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld b, $02
    inc b
    nop
    add b
    nop
    ld [bc], a
    ld [bc], a
    add hl, bc
    nop
    ld [$0a00], sp
    nop
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
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld [de], a
    inc b
    jr jr_0aa_65f2

    jr jr_0aa_65e4

jr_0aa_65e4:
    inc e
    db $10
    inc e
    db $10
    jr jr_0aa_65fa

    inc a
    db $10
    inc d
    nop
    dec de
    ld bc, $0115

jr_0aa_65f2:
    rla
    ld bc, $0010
    stop
    rra
    nop

jr_0aa_65fa:
    rra
    ld de, $011f
    ld a, $0c
    inc l
    inc de
    ld l, $11
    ld [hl+], a
    dec e
    ld c, $31
    ld c, $31
    ld [bc], a
    dec a
    inc c
    inc sp
    inc c
    inc sp
    rlca
    dec a
    inc hl
    ccf
    inc hl
    ccf
    add hl, hl
    ccf
    dec hl
    ccf
    inc hl
    ccf
    add hl, sp
    ccf
    dec hl
    ccf
    ld h, a
    ccf
    ld a, e
    ccf
    ld [hl], l
    inc hl
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
    rst $18
    ld a, a
    rst $18
    ld c, a
    rst $08
    ld e, a
    rst $18
    ld c, a
    rst $18
    ld b, c
    rst $08
    ld b, c
    pop hl
    ld b, c
    pop hl
    ld b, c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rra
    inc bc
    nop
    nop
    ld [hl], b
    nop
    rst $38
    rst $18
    rst $38
    jp $c3ff


    rst $38
    db $e3
    ei
    rst $20
    ei
    rst $30
    dec sp
    rst $20
    cpl
    rst $38
    ei
    rst $38
    scf
    ei
    push de
    dec sp
    rst $30
    add hl, de
    cp $19
    ld l, a
    jr jr_0aa_66f0

    inc c
    ccf
    inc c
    scf
    inc c
    dec e
    ld b, $1f
    ld b, $1f
    ld b, $0e
    inc bc
    rrca
    inc bc
    rlca
    inc bc
    ld bc, $0303
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b

jr_0aa_6699:
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    ld c, $06
    ld b, $02
    ld h, $02
    ld a, [hl+]
    nop
    jr jr_0aa_66c2

    ld d, $00
    ld h, [hl]
    nop
    ld e, b
    nop
    ld a, [de]
    nop
    ld b, d
    nop
    ld b, h
    nop
    ld e, $00
    ld c, h
    inc b
    ld e, [hl]
    ld b, h
    inc e
    ld [$103c], sp
    ld a, h

jr_0aa_66c1:
    db $10

jr_0aa_66c2:
    ld a, h
    jr nz, jr_0aa_66c1

    ldh [$d0], a
    add b
    call nz, $f480
    nop
    db $ec
    nop
    call c, $f000
    nop
    cp b
    nop
    ldh [rP1], a
    or b
    nop
    add sp, $00
    ld e, b
    add b
    ld a, b
    add b
    sbc b
    jr nz, jr_0aa_6699

    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ret z

    add b
    ret z

    nop
    ld hl, sp+$48
    ld hl, sp+$08

jr_0aa_66f0:
    add sp, $40
    ldh [$80], a
    ld [$0800], sp
    nop
    ldh [rP1], a
    ldh [rNR41], a
    cp $60
    cp $40
    jp z, $4a04

    add h
    ld l, d
    add h
    ld c, d
    and h
    ld h, d
    xor h
    ld e, d
    and h
    ld [hl], d
    adc h
    ld d, d
    adc h
    sbc $00
    sbc $08

jr_0aa_6714:
    rst $38
    ld c, $ee
    ld b, $fc
    inc h

jr_0aa_671a:
    or h
    inc h
    or b
    nop
    ret nc

    nop
    ret nc

    nop
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    add b
    add b
    ret nz

    add b
    adc b
    add b
    ret z

    add b
    adc b
    add b
    ret nz

    add b
    or b
    add b
    ret nc

    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    jr nc, jr_0aa_6714

    nop
    nop
    nop
    nop
    jr nc, jr_0aa_671a

    rrca
    ldh a, [$30]
    ret nz

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$d0], a
    jr nz, jr_0aa_67bd

    and b
    sub b
    ldh [$90], a
    ldh [rNR10], a
    ldh [$90], a
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    ld d, b
    ldh [$90], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$91], a
    ldh [$91], a
    ldh [rNR24], a
    ldh [$d9], a
    ldh [$db], a
    db $fc
    cp a
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
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc

jr_0aa_67bd:
    rst $38
    rlca
    ei
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    rrca
    rst $30
    rrca
    rst $30
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $0106
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $09
    ld b, $09
    ld b, $09
    ld b, $09
    ld b, $09
    ld b, $00
    rrca
    nop
    rrca
    ld [$0007], sp
    inc bc
    nop
    inc bc
    nop
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    inc d
    inc bc
    inc d
    inc bc
    rla
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    nop
    nop
    ld hl, sp+$00
    ccf
    rra
    ccf
    jr jr_0aa_6859

    rra
    jr c, jr_0aa_6843

    ld a, $1f
    ld a, $1f
    ccf
    rra
    rra
    ccf
    rra
    ccf
    rra
    ccf
    ld e, a
    ccf
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
    ccf
    ld a, a
    cp a
    ld a, a
    cp a

jr_0aa_6843:
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld e, a
    sbc a
    ld e, a
    sbc a
    ld e, a
    sbc a
    ld e, a
    ccf
    rst $18
    ld e, a
    sbc a
    ld e, a
    sbc a
    ccf

jr_0aa_6859:
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    stop
    ld [bc], a
    nop
    ld [de], a
    nop
    ld de, $0000
    nop
    jr jr_0aa_686c

jr_0aa_686c:
    rrca
    nop
    dec b
    ld [bc], a
    add hl, sp
    nop
    ccf
    nop
    inc a
    inc bc
    dec e
    nop
    ld b, e
    nop
    ld h, e
    nop

jr_0aa_687c:
    inc a
    nop
    ld a, [de]
    nop
    ld [hl+], a
    ld b, c
    ld b, b
    nop
    nop
    nop
    ld b, $00
    ld [bc], a
    nop
    stop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0607
    inc e
    inc c
    add hl, sp
    jr nc, jr_0aa_687c

    ld b, d
    adc h
    inc b
    jr c, jr_0aa_68ae

    ldh [rLCDC], a
    ret nz

    add b
    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop

jr_0aa_68ae:
    add b
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
    add b
    nop
    nop
    nop
    ld [$1000], sp
    nop
    db $fc
    nop
    rst $38
    nop
    add sp, $00
    ld [$df00], a
    nop
    sub $00
    db $fd
    nop
    rst $10
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$27], a
    ret c

    ld bc, $07fe
    ei
    rlca
    ld sp, hl
    dec b
    ei
    inc b
    ei
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$06
    ld sp, hl
    ld [bc], a
    db $fd
    add d
    ld a, l
    ldh a, [rIF]
    inc bc
    nop
    nop
    nop
    call z, $8030
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld sp, hl
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $10
    rst $28
    reti


    rst $20
    rst $18
    ldh [rIE], a
    ret nz

    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $18
    ldh [$c7], a
    ld hl, sp-$37
    or $c1
    cp $00
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0707], sp
    rlca
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
    jr jr_0aa_6998

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0aa_69a8

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0aa_69b8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0aa_69c8

    ld [hl-], a

jr_0aa_6998:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0aa_69d8

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0aa_69a8:
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

jr_0aa_69b8:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    nop
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    rlca

jr_0aa_69c8:
    rlca
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    rlca
    rlca

jr_0aa_69d8:
    rlca
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld d, l
    rlca
    rlca
    ld a, b
    ld a, c
    ld a, d
    nop
    nop
    nop
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    rlca
    rlca
    add e
    add h
    add l
    nop
    nop
    nop
    ld a, e
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
    nop
    nop
    nop
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
    nop
    nop
    and b
    and c
    and d
    and e
    and h
    nop
    nop
    nop
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
    nop
    nop
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
    nop
    nop
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

    rlca
    rlca
    rlca
    rlca
    rlca
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    rlca
    rlca
    rlca
    rlca
    ldh [$e1], a
    rlca
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$07eb], a
    rlca
    rlca
    rlca
    rlca
    rlca
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    rlca
    or $f7
    rlca
    rlca
    rlca
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld d, c
    nop
    ld hl, $a900
    nop
    db $eb
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $38
    ret nz

    db $fd
    jp nz, $ebd4

    ret nz

    rst $38
    ldh a, [$ef]
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    pop af
    cp $f0
    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $38

Call_0aa_6c67:
    rst $38
    rst $28
    rst $38
    rst $28
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    inc a
    jr jr_0aa_6ccf

    jr c, jr_0aa_6cd1

    jr c, jr_0aa_6cd3

    jr c, jr_0aa_6cd5

    jr c, jr_0aa_6d17

    jr c, jr_0aa_6d19

    jr c, jr_0aa_6d17

    jr c, jr_0aa_6d19

    jr c, jr_0aa_6cdb

    ld a, b
    ld a, b
    jr c, jr_0aa_6d1f

    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$70
    ldh a, [$78]
    ld [hl], b
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$fb]
    ldh a, [rIE]
    ldh a, [rIE]

jr_0aa_6ccf:
    ldh a, [rIE]

jr_0aa_6cd1:
    ldh a, [rIE]

jr_0aa_6cd3:
    ldh a, [rIE]

jr_0aa_6cd5:
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]

jr_0aa_6cdb:
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$e7]
    ld a, b
    ld l, l
    ld a, [c]
    xor l
    ld [hl], d
    ld a, [hl+]
    push af
    jr nz, @+$01

    ld h, b
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
    rst $38
    nop
    rst $38
    nop

jr_0aa_6d17:
    rst $38
    nop

jr_0aa_6d19:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b

jr_0aa_6d1f:
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
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    add h
    rst $38
    add c
    rst $38
    add h
    rst $38
    adc l
    rst $38
    set 7, a
    rst $30
    rst $38
    call $fbff
    rst $38
    rst $18
    rst $38
    push af
    rst $38
    xor $ff
    cp [hl]
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    xor a
    rst $38
    di
    rst $38
    or e
    rst $38
    rst $00
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    and a
    rst $38
    add a
    rst $38
    add e
    rst $38
    ld b, a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $04ff
    ei
    inc b
    ei
    ld b, $f9
    rlca
    ld hl, sp+$0f
    ldh a, [rNR22]
    add sp, $1f
    ldh [$2f], a
    ret nc

    cpl
    ret nc

    ld e, [hl]
    and b
    ld e, l
    and b
    add hl, de
    jr jr_0aa_6dac

    jr jr_0aa_6dae

    jr jr_0aa_6db0

    jr @+$1a

    jr jr_0aa_6db7

    jr jr_0aa_6db9

    jr jr_0aa_6dbb

    jr jr_0aa_6dbd

    jr jr_0aa_6ddf

    inc e
    inc a
    inc e
    inc a
    inc e
    inc a
    inc e
    inc a
    inc e

jr_0aa_6dac:
    inc e
    inc a

jr_0aa_6dae:
    inc a
    inc e

jr_0aa_6db0:
    ld a, $1c
    ld e, $3c
    ld a, $3c
    inc a

jr_0aa_6db7:
    ld a, $3c

jr_0aa_6db9:
    ld a, $7c

jr_0aa_6dbb:
    ld a, $7e

jr_0aa_6dbd:
    ld a, $7e
    ld a, $fe
    ld a, $7e
    ld a, $3f
    ld a, $bf
    ld a, $7f
    ld a, $bf
    ld a, $be
    ccf
    sbc $3f
    sbc $3f
    sbc $3f
    sbc $3f
    rst $18
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38

jr_0aa_6ddf:
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
    rra
    rst $38
    rra
    rst $28
    rra
    rst $28
    rra
    xor a
    ld e, a
    xor a
    ld e, a
    ld c, a
    cp a
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
    inc bc
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    and e
    rst $38
    ld b, e
    rst $38
    ld h, e
    rst $38
    and e
    rst $38
    jp Jump_0aa_41ff


    rst $38
    ld b, c
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld hl, $01ff
    rst $38
    ld b, c
    rst $38
    ld bc, $81ff
    rst $38
    add c
    rst $38
    add c
    rst $38
    sub c
    rst $38
    add b
    rst $38
    ret nz

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
    ldh a, [rIE]
    push af
    ld a, [$fdf2]
    push af
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$05
    db $fc
    ld a, e
    db $fc
    ld a, a
    db $fc
    rst $38
    ld a, h
    cp [hl]
    ld a, h
    cp $3c
    sbc $3e
    ld c, a
    ld a, $f7
    ld e, $27
    ld e, $ce
    ret nz

    add $c0
    jp z, $ecc0

    ret z

    db $ed
    call nz, $c8ef
    rst $28
    jp z, $cdef

    rst $28
    rst $28
    rst $20
    rst $28
    rst $20
    rst $28
    rst $28
    rst $20
    db $ec
    rst $20
    and $e3
    db $f4
    db $e3
    ldh a, [$67]
    ld [hl], c
    and $fa
    ld h, [hl]
    db $eb
    db $76
    db $e3
    db $76
    rst $20
    ld [hl], b
    pop hl
    ld [hl], d
    push af
    ld [hl], b
    ld a, [c]
    ld [hl], l
    cp $75
    cp $75
    ld a, d
    ld [hl], l
    cp $71
    ld a, [$fc71]
    ld [hl], e
    db $f4
    ld a, e
    or h
    ld a, e
    or c
    ld a, a
    or c
    ld a, a
    or d
    ld a, a
    or [hl]
    ld a, d
    cp a
    ld a, d
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    db $fd
    ld a, [hl-]
    db $fc
    dec sp
    ld a, b
    cp l
    ld a, d
    cp l
    ld a, b
    cp a
    ld a, b
    cp a
    ld a, d
    cp l
    jr c, @+$01

    cp l
    rst $38
    sbc c
    rst $38
    cp l
    rst $38
    sbc l
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc l
    cp $9c
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
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
    sbc $ff
    adc $ff
    adc $ff
    rst $18
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
    rst $28
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, [$fbff]
    cp $fa
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$faff]
    rst $38
    ei
    rst $38
    ld a, [$79ff]
    rst $38
    ld a, c
    cp $79
    rst $38
    ld a, c
    rst $38
    cp c
    ld a, a
    cp e
    ld a, l
    ei
    dec a
    ei
    dec a
    db $db
    dec a
    ei
    dec e
    cp $1d
    ld e, h
    dec e
    dec e
    inc c
    dec c
    inc c
    inc c
    inc c
    inc d
    inc c
    ld e, [hl]
    inc b
    inc h
    inc b
    rlca
    ld l, b
    ld b, a
    xor b
    or l
    ld c, d
    ld sp, $11ca
    jp z, $da05

    call $e112
    ld d, $c8
    or a
    and d
    push de
    ld [$fed5], a
    push hl
    ld a, [$f6f5]
    ld sp, hl
    db $fc
    ei
    cp [hl]
    db $fd
    ld a, l
    cp $fe
    ld a, a
    ccf
    rst $38
    ccf
    rst $18
    ld a, a
    rst $18
    ld [hl], a
    rst $18
    rra
    rst $30
    rla
    rst $38
    ld e, a
    or l
    db $e4
    cp a
    ldh [$bf], a
    cp b
    rst $28
    ld a, [hl+]
    rst $38
    xor e
    ld a, [hl]
    ld a, [bc]
    ld a, a
    sub d
    ld l, a
    add [hl]
    ld a, e
    add c
    ld a, a
    ld bc, $d1ff
    rst $38
    push af
    rst $18
    db $dd
    rst $30
    call nc, Call_000_17ff
    rst $38
    dec b
    rst $38
    ld h, b
    cp a
    ld a, [$aaaf]
    rst $38
    and d
    ld e, a
    ld d, b
    xor a
    ld [$c0ff], sp
    ld a, a
    reti


    ld a, a
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $10
    rst $38
    call nc, $97ff
    rst $38
    db $f4
    rst $38
    add c
    rst $38
    sbc a
    ld a, a
    ld a, [hl+]
    rst $38
    xor e
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld [hl], b
    rst $38
    ld c, l
    ei
    ld d, e
    rst $28
    sub $2f
    rst $08
    ccf
    sub l
    ld a, a
    rst $30
    rst $38
    rst $10
    rst $38
    sub a
    rst $38
    xor [hl]
    rst $38
    cp e
    rst $38
    xor e
    rst $38
    xor e
    rst $38
    and a

jr_0aa_7029:
    rst $38
    xor a
    rst $38
    rla
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    ld d, $ff
    rst $18

jr_0aa_7035:
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    rst $38

jr_0aa_703b:
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    xor e
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    or $ff
    rst $10
    rst $38
    rst $10
    rst $38
    ld d, a
    rst $38
    ld e, e
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    xor a
    ld a, a
    cpl
    rst $38
    ld [hl], a
    rst $38
    dec hl
    rst $38
    cp a
    ld a, a
    cp l
    ld a, a
    sbc l
    ld a, a
    sub a
    ld a, a
    sbc $3f
    rst $18
    ld a, $c7
    ld a, $de
    ld [hl], $d4

jr_0aa_7079:
    ld a, $de
    jr c, jr_0aa_7079

    inc e
    xor h
    jr jr_0aa_7029

    jr jr_0aa_703b

    jr jr_0aa_7035

    ld [$0098], sp
    sub b
    nop
    add c
    nop
    and b
    nop
    add b
    nop
    add $21
    and d
    dec b
    ld h, [hl]
    add c
    ld h, h
    add e
    ld h, a
    add b
    ld [hl], e
    add h
    and $00
    and $00
    and c
    ld b, b
    push hl
    nop
    or a
    ld b, b
    sub h
    ld h, e
    ld d, a
    and b
    rla
    ldh [$62], a
    sub c
    ld [hl], b
    add e
    dec d
    ld [c], a
    inc [hl]
    jp Jump_0aa_7182


    ld de, $80e2
    di
    ret nz

    di
    ldh [$f3], a
    ldh [$f3], a
    ei
    ldh a, [$f9]
    ld a, [$fef9]
    inc a
    ei
    sbc d
    rst $38
    dec bc
    ei
    dec bc
    di
    add hl, bc
    di
    adc c
    di
    ld [$00f3], sp
    ei
    nop
    ei
    ld [bc], a
    ld sp, hl
    ld [hl+], a
    ld sp, hl
    sub d
    ld sp, hl
    sbc b
    ei
    add c
    ei
    jp z, $89f9

    ld sp, hl
    ld [bc], a
    ld sp, hl
    rst $00
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    ld d, $f9
    dec [hl]
    ld sp, hl
    db $fd
    ld sp, hl
    ld sp, hl
    db $fd
    db $db
    db $fd
    ei
    db $fd
    ret c

    db $fd
    add hl, sp
    db $fd
    ld sp, hl
    db $fd
    ld a, e
    db $fd
    ei
    db $fd
    ei
    db $fd
    ld a, [$eefd]
    db $fd
    ld a, $fd
    ld a, a
    db $fd
    rst $38
    db $fd
    db $dd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    ld a, h
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
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
    cp $fe
    cp $ff
    db $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    ld sp, hl
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$06
    ld hl, sp-$10
    ld hl, sp-$10
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$f0]
    ldh [$e4], a
    ldh [$c0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
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
    ld de, $0000
    nop
    ld b, b

jr_0aa_7179:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld a, h
    rst $38

Jump_0aa_7182:
    ld a, a
    cp a
    cp a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    ld sp, hl
    ld h, [hl]
    jr nc, jr_0aa_7179

    ccf
    pop hl
    ld [hl], l
    and $37
    and $76
    and c
    rla
    pop hl
    scf
    and $17
    and $65
    or c
    ret nz

    rst $30
    ld b, [hl]
    rst $30
    and l
    ld [hl], d
    rlca
    pop af
    ld [hl], e
    or $12
    rst $30
    and [hl]
    ld [hl], c
    dec d
    ld a, [c]
    ld de, $07f4
    ldh a, [rNR21]
    pop af
    ld [hl], $f3
    jr @-$07

    cp l
    ld a, [c]
    cp h
    di
    ei
    rst $30
    db $fc
    di
    ld hl, sp-$09
    ld a, [hl]
    di
    inc a
    ei
    ld a, a
    ld hl, sp+$3e
    ei
    or e
    rst $38
    db $d3
    rst $38
    ld [hl], e
    rst $38
    ei
    rst $38
    di
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ldh [rIE], a
    rst $38
    rst $20
    rst $18
    rst $20
    rst $38
    rst $00
    push af
    rst $08
    rst $00
    adc a
    adc l
    adc a
    ld [$938f], sp
    rrca
    sub b
    rrca
    sbc b
    rra
    nop
    nop
    rlca
    nop
    add a
    ld hl, sp-$03
    nop
    ld hl, sp+$00
    ld d, [hl]
    nop
    and b
    nop
    inc de
    nop
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop

Call_0aa_7248:
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    jp $c8e7


    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ld h, b
    ld l, [hl]
    and e
    ret c

    sbc h
    ld e, e
    xor b
    db $76
    ld h, e
    rst $10
    xor d
    ret z

    sbc h
    pop af
    ld a, [hl+]
    and a
    ld [hl], e
    cp [hl]
    ret z

    ld hl, sp-$74
    ld h, $73
    ld a, [hl]
    and e
    sbc h
    call z, $aa75
    or a
    ld [hl], e
    ld [hl], a
    adc b
    ld hl, sp+$00
    ld b, b
    nop
    ld c, b
    add b
    sub h
    ld c, b
    ld b, a
    cp b
    adc b
    ld [hl], e
    cp e
    call z, $cc32
    add sp, $33
    dec c
    ld a, [c]
    ei
    call z, $ff80
    call $b032
    nop
    ret z

    rst $38
    or [hl]
    ei
    push af
    rst $38
    rst $28
    cp $ff
    rst $38
    ei
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
    nop
    rst $38
    inc hl
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    add $ff
    pop bc
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    sbc l
    ld [c], a
    nop
    nop
    jp nc, $ff2d

    nop
    xor b
    nop
    ld a, [$1000]
    nop
    ld c, b
    nop
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $ff
    add a
    rrca
    adc $bf
    rst $38
    rst $38
    jp Jump_000_033f


    jr nc, @-$0f

    add b
    adc h
    call z, $3122
    and e
    inc sp
    ret z

    call z, $8c60
    ld [hl-], a
    inc sp
    rst $38
    add b
    call z, $07cc
    jr nc, jr_0aa_7349

    inc sp
    add b
    call z, $c408
    ld sp, $f233
    ld bc, $0088
    nop
    nop
    nop
    nop
    ld [$dc80], sp
    nop
    ld [bc], a
    ld sp, $00e4
    ld h, h
    adc b
    or b
    nop
    ld a, [c]
    nop
    ld [hl+], a
    call z, $c43b
    add d

jr_0aa_7349:
    jr nz, jr_0aa_734b

jr_0aa_734b:
    nop
    daa
    ret c

    ld c, h
    or e
    ld [$ddf7], sp
    xor $55
    rst $38
    ld sp, $eeff
    rst $38
    cp $ff
    cp e
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
    ld [bc], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    and a
    rst $38
    call nz, $01ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    nop
    rlca
    nop
    ld a, a
    add b
    or c
    nop
    sub b
    nop
    ld bc, $4000
    nop
    sbc e
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
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ei
    sbc h
    rst $38
    rst $20
    rst $38
    ld a, e
    rst $38
    sbc $ff
    rst $30
    rst $38
    cp l
    rst $38
    cp $ff
    dec hl
    nop
    ld [hl], d
    ld de, $c4c8
    ld e, b
    inc b
    inc sp
    ld sp, $4194
    ld b, b
    call z, Call_000_1134
    inc sp
    db $10
    ret z

    call nz, Call_000_00dc
    ld [bc], a
    ld sp, $4194
    ret nz

    inc c
    dec h
    db $10
    ld [hl+], a
    ld de, $0088
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, Call_000_2300
    stop
    nop
    ld b, b
    adc h
    nop
    nop
    db $10
    ld [hl+], a
    adc h
    ld b, b
    xor d
    ld b, h
    ld [hl+], a
    nop
    nop
    nop
    db $fd
    nop
    xor $11
    adc $31
    ld b, h
    xor $51
    rst $38
    ld d, l
    cp e
    ld b, l
    cp $44
    rst $38
    rst $30
    cp e
    ld d, l
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
    db $fc
    rst $38
    ld hl, sp-$01
    rlca
    ld hl, sp-$80
    ld a, a
    cp $ff
    add hl, de
    rst $38
    ld [bc], a
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $10
    rst $28
    inc d
    db $eb
    ld e, $e0
    nop
    nop
    ret nc

    cpl
    ret nc

    nop
    ld b, h
    nop
    jr nz, jr_0aa_7438

jr_0aa_7438:
    jr nz, jr_0aa_743a

jr_0aa_743a:
    add h
    nop
    inc h
    nop
    stop
    rst $28
    rst $18
    ei
    rst $30
    ld a, e
    cp l
    adc $ff
    rst $30
    rst $38
    cp c
    rst $38
    adc $ff
    rst $30
    rst $38
    ld a, [c]
    rrca
    ld [hl-], a
    nop
    sub b
    ld b, c
    ret nz

    ld b, b
    jr nc, @+$13

    ld h, d
    ld de, $c000
    ld d, b
    nop
    ld [hl-], a
    ld sp, $00d1
    ret nc

    ld b, b
    inc sp
    nop
    ld [hl+], a
    ld de, $00c0
    ld b, b
    nop
    ld [bc], a
    inc sp
    nop
    nop
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
    ld [de], a
    nop
    nop
    ret nz

    stop
    nop
    ld [hl-], a
    ret nz

    nop
    add h
    ld b, b
    jr nz, jr_0aa_749d

    ld b, $01
    ld e, b
    rlca
    di
    rra
    ld d, e
    ccf
    ld h, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38

jr_0aa_749d:
    rst $38
    rst $38
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
    db $fd
    ld a, [c]
    ld sp, hl
    ei
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
    rst $08
    ei
    add sp, -$0d
    rst $38
    ld hl, sp-$01
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
    cp e
    rst $38
    and e
    rst $38
    ldh a, [$af]
    db $fc
    inc bc
    inc bc
    ldh a, [$29]
    ldh a, [rNR50]
    ld hl, sp+$00
    db $fc
    nop
    cp $22
    db $dd
    ld sp, $19ce
    and $1a
    push hl
    dec l
    jp nc, Jump_000_0080

    rrca
    nop
    ld sp, hl
    nop
    nop
    ld bc, $0100
    ld bc, $0000
    nop
    ld c, c
    nop
    nop

jr_0aa_74fd:
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    cp e
    ld a, l
    cp a
    sbc $f7
    rst $28
    ld [hl], a
    ei
    call c, $eebf
    rst $38
    ld [hl], e
    rst $38
    sbc l
    rst $38
    cp $ff
    inc hl
    nop
    ld h, b
    inc de
    nop
    call z, Call_000_005c
    ld [bc], a
    inc sp
    add a
    ld b, b
    add b
    ld c, h
    dec h
    ld [de], a
    scf
    ld a, [de]
    rst $28
    inc e
    rra
    ld a, $33
    ccf
    add b
    ld a, a
    cp d
    ld b, l
    ld [hl+], a
    ccf
    ld c, [hl]
    ccf
    ld bc, $143e
    ld a, [hl+]
    jr nc, jr_0aa_7556

    ld l, d
    inc e

jr_0aa_754a:
    jr c, @+$1e

    inc d
    jr c, @+$0a

    ld hl, sp-$30
    jr c, @+$3a

    jr nc, jr_0aa_74fd

    ld [hl], b

jr_0aa_7556:
    ldh a, [$f0]
    jr nc, jr_0aa_754a

    nop
    ldh a, [rNR41]
    ldh a, [$e0]
    ldh a, [rIE]
    cp $fc
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$c0], a
    ldh a, [$c0]
    ldh a, [$80]
    ldh a, [$90]
    ldh a, [$e0]
    sub b
    cp $00
    or [hl]
    ret c

    ld a, [c]
    call c, $fcfe
    cp $fc
    ld a, [$fffc]
    ld hl, sp-$0b
    ld a, [$fef0]
    rst $30
    db $fc
    inc c
    ldh a, [rNR44]
    call c, $fffe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, c
    nop
    dec a
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
    nop
    nop
    ld [hl-], a
    db $ec
    jr nz, jr_0aa_75c6

    nop
    inc h
    nop
    inc h

jr_0aa_75c6:
    inc b
    jr nz, @+$18

    jr nz, jr_0aa_7601

    nop
    ld [hl-], a
    nop
    jr nc, jr_0aa_75d2

    db $10
    ld [bc], a

jr_0aa_75d2:
    ld de, $0302
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
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
    rst $20
    rst $28
    ld a, a
    di
    ld a, e
    cp l
    cp a
    sbc $f7
    rst $28
    ld [hl], a
    ei
    cp h
    rst $38
    rst $28
    rst $38
    rst $38

jr_0aa_7601:
    rst $30
    rst $38
    inc b
    inc [hl]
    nop
    call z, $cc00
    ld [$2030], sp
    jr nc, jr_0aa_760e

jr_0aa_760e:
    ret z

    add b
    jr z, jr_0aa_7612

jr_0aa_7612:
    jr nc, jr_0aa_7614

jr_0aa_7614:
    ret z

    ld [$088c], sp
    jr nc, jr_0aa_763a

    xor [hl]
    nop
    dec c
    nop
    inc h
    nop
    jr nz, jr_0aa_7622

jr_0aa_7622:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    ld b, b
    nop
    ld b, b
    ld b, b
    add b
    and b
    nop
    and b
    nop

jr_0aa_763a:
    xor b
    nop
    and b
    ld [$0080], sp
    ret nc

    jr nz, jr_0aa_764b

    ldh a, [$5f]
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $18

jr_0aa_764b:
    ld a, a
    db $10
    ld a, a
    ld h, $00
    sbc a
    sbc a
    jp hl


    rst $00
    sub d
    pop hl
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    inc [hl]
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
    rlca
    add b
    inc a
    add b
    ld b, b
    add b
    nop
    ld bc, $8304
    add [hl]
    ld bc, $0090
    adc $00
    ld c, a
    nop
    ld c, [hl]
    nop
    inc l
    ld b, b
    ld h, b
    inc b
    ld b, h
    jr nz, @+$08

    jr nz, jr_0aa_76b7

    ld [bc], a
    jr nc, @+$04

    ld sp, $3202
    ld bc, $0011
    sbc b
    ld bc, $0019
    add hl, bc
    nop
    ld [$0800], sp
    nop
    inc c
    nop
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    nop
    nop
    nop

jr_0aa_76b7:
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
    add b
    add b
    add b
    add b
    nop
    add b
    nop
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
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    nop
    ld bc, $0600
    db $10
    ld [$0060], sp
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
    jr nz, jr_0aa_76fc

jr_0aa_76fc:
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    ldh [rP1], a
    ret nz

    nop
    ld a, h
    nop
    cpl
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0024
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
    ld b, a
    rlca
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    add a
    rst $00
    rlca
    rst $00
    rlca
    call nz, $ccc7
    rst $00
    db $ec
    ld b, a
    call z, Call_0aa_6c67
    daa
    inc a
    rlca
    rst $08
    rlca
    ld b, e
    inc de
    ld c, b
    add hl, de
    ld e, $4c
    ld c, h
    rrca
    ld c, h
    rrca
    inc c
    rrca
    add b
    rlca
    inc e
    rst $38
    inc a
    rst $38
    sbc $3f
    add d
    add a
    rst $00
    rst $38
    ld a, a
    rst $38
    daa
    ld b, a
    rlca
    inc bc
    dec bc
    ld bc, $0408
    ld h, $00
    inc bc
    nop
    ld a, c
    nop
    ld b, b
    nop
    halt
    ld de, $3420
    nop
    inc hl
    db $10
    add b
    db $10
    sbc c
    nop
    sbc b
    nop
    add h
    ld [$00cc], sp
    call nz, Call_0aa_4100
    nop
    add hl, de
    nop
    sbc b
    nop
    adc h
    nop
    adc h
    nop
    adc h
    nop
    call nz, $c600
    nop
    ld b, [hl]
    nop
    rlca
    nop
    pop bc
    ld [hl+], a
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
    rlca
    ld [bc], a
    inc c
    nop
    inc sp
    db $10
    rst $28
    inc bc
    sbc a
    rrca
    rra
    rra
    rrca
    rrca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rra
    rra

jr_0aa_77e4:
    rra
    rra
    rra
    rra
    rra
    rra
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
    ccf
    rlca
    jp $fb83


    di
    ei
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    di
    rst $38
    di
    di
    ld sp, hl
    ldh a, [$f8]
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    dec d
    rst $28
    rla
    db $ed
    ld c, $fd
    rrca
    db $fc
    adc a
    db $fc
    rst $28
    db $fc
    ld [hl], a
    ld a, h
    daa
    inc d
    ld c, l
    add [hl]
    ld b, a
    xor $1e
    rst $38
    rra
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    adc b
    rst $38
    ldh a, [$ef]
    ret nc

    rst $28
    ldh a, [$ef]
    ldh a, [$e3]
    jr c, jr_0aa_78bb

    jr jr_0aa_7880

    jr jr_0aa_77e4

    adc b
    ld e, a
    ld h, h
    dec de
    jr c, @+$12

    sbc b
    jr jr_0aa_78ab

    inc e
    sbc $12
    inc sp
    ld de, $10b9
    cp b
    db $10
    db $fc
    db $10
    ld h, c
    ld e, $87
    ld bc, $0089
    call z, $c200
    inc b
    ld h, [hl]
    nop
    ld h, c
    ld [bc], a
    ld h, d
    ld bc, $0031
    jr nc, jr_0aa_786f

    add hl, hl

jr_0aa_786f:
    db $10
    jr jr_0aa_7872

jr_0aa_7872:
    jr jr_0aa_7874

jr_0aa_7874:
    inc c
    nop
    adc h
    nop
    add [hl]
    nop
    add $00
    rst $00
    nop
    rst $00
    nop

jr_0aa_7880:
    ld bc, $0100
    nop
    ld bc, $0100

Call_0aa_7887:
    nop
    inc bc
    nop
    ld bc, $0300
    ld bc, $0001
    ld de, $0300
    ld bc, $0001
    nop
    nop
    inc bc
    inc bc
    dec de
    ld [$2070], sp
    rst $20
    add e
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0aa_78ab:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0aa_78bb:
    ccf
    rra
    rrca
    db $e3
    pop bc
    ld hl, sp-$10
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
    cp $ff
    cp $7f
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $7f
    rst $38
    ld a, [hl]
    ld a, l
    cp $7f
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fd
    cp $ff
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
    ccf
    ld a, a
    rra
    ccf
    rst $18
    adc a
    ld c, l
    rlca
    ld [bc], a
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    pop bc
    ld b, b
    ld h, c
    ld hl, $103b
    rst $38
    ret c

    rst $38
    ld a, [hl]
    ld [hl], $73
    ei
    ld de, $091c
    ld a, [hl]
    inc b
    ei
    ld b, $8d
    inc bc
    ld a, [hl]
    add c
    push bc
    nop
    rst $00
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld [hl], e
    nop
    ld sp, $3100
    nop
    jr jr_0aa_792e

jr_0aa_792e:
    inc e
    nop
    ld d, l
    xor $54
    cp e
    ld bc, $05ff
    cp $04
    ei
    ret nz

    rst $38
    jr nz, @+$01

    sub c
    rst $38
    ld c, l
    cp $32
    rst $38
    nop
    rst $38
    nop
    nop
    db $e3
    db $fc
    rst $38
    rst $38
    nop
    nop
    db $e3
    db $fc
    ccf
    rra
    rrca
    rlca
    db $e3
    add b
    ld hl, sp-$10
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    di
    db $fc
    rst $38
    ldh a, [rIE]
    cp [hl]
    pop bc
    add $39
    pop af
    cpl
    cp l
    ld h, e
    or a
    add sp, -$4b
    xor $b7
    xor $df
    ld h, $dd
    ld [hl+], a
    rrca
    ldh a, [$f3]
    db $fc
    ld a, [$eaff]
    db $fd
    db $fd
    ld c, $fb
    rrca
    dec bc
    rst $38
    ld a, [$f9ff]
    rst $38
    db $fd
    rst $38
    rst $20
    rst $38
    ld h, c
    ccf
    jr jr_0aa_79af

    adc h
    inc bc
    ld b, b
    ld bc, $1d02
    nop
    rrca
    nop
    add a
    ld [de], a
    pop bc
    ld de, $00e8
    db $fc
    ccf
    cp $7f
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ccf
    sbc a
    ccf
    rst $10
    adc a
    ld h, b

jr_0aa_79af:
    ret nz

    or b
    ld h, b
    ret c

    jr nc, jr_0aa_7a21

    jr jr_0aa_7a2d

    inc c
    rst $38
    ld b, $ef
    inc bc
    rst $18
    ld bc, $403f
    ld [bc], a
    db $fd
    add hl, bc
    or $06
    ld sp, hl
    db $10
    rst $28
    ld bc, $04fe
    ei
    ld de, $54ee
    cp e
    nop
    rst $38
    ld bc, $04fe
    ei
    rrca
    nop
    add b
    nop
    rst $38
    rst $38
    ld a, h
    inc bc
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
    rst $38
    rst $38
    rst $28
    rst $38
    pop bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rrca
    rlca
    pop hl
    add b
    ld hl, sp-$10
    rst $38
    cp $5f
    cp a
    rra
    rst $28
    inc de
    rst $38
    ld a, b
    rst $38
    cp $ff
    rst $38
    rst $38
    ld h, d
    db $fd
    sub $39
    push af

jr_0aa_7a21:
    ld c, $fd
    jp $d8f7


    rst $38
    ret c

    cp d
    ld e, a
    ei
    rra
    rst $30

jr_0aa_7a2d:
    adc e
    sbc l
    ld h, e
    ld d, a
    cp b
    rst $20
    db $fc
    ld a, [$beff]
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    ld hl, $f0ff
    adc a
    db $fc
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    sbc a
    rra
    rst $08
    add a
    rst $20
    jp $e1f3


    ld hl, sp-$08
    db $fc
    sbc b
    rra
    inc c
    rlca
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    ld b, b
    nop
    ldh [rSVBK], a
    ld a, [$ffbc]
    rst $18
    ld h, [hl]
    sbc c
    sbc e
    ld h, h
    ld c, c
    or [hl]
    ld h, $d9
    sbc c
    ld h, [hl]
    ld b, l
    cp d
    ld d, $e9
    dec de
    db $e4
    ld b, h
    cp e
    inc de
    db $ec
    ld c, l
    or d
    or h
    ld c, e
    nop
    nop
    sbc h
    ld h, b
    ld a, a
    rst $38
    nop
    nop
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7e
    inc e
    rrca
    inc bc
    pop hl
    ret nz

    ldh a, [$f8]
    rst $38
    cp $ff
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    dec de
    rst $20
    cp d
    ld b, l
    adc a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    or $0f
    dec a
    jp $e07f


    ld a, a
    add sp, -$01
    ld l, [hl]
    adc $3f
    db $fd
    rrca
    cp c
    rst $00
    ld a, [hl]
    pop hl
    rla
    ld hl, sp-$7b
    cp $e3
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    dec sp
    rst $38
    cp e
    rst $38
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
    nop
    ld bc, $0000
    nop
    add b
    nop
    ret nz

    nop
    ldh [$80], a
    ldh a, [rLCDC]
    ld a, b
    jr nz, jr_0aa_7b49

    db $10
    rra
    ld [$068f], sp
    sbc b
    ld h, [hl]
    ld l, d
    sub c
    cp d
    ld b, h
    cpl
    sub b
    ld a, $c1
    cp $00
    db $eb
    db $10
    dec hl
    call nz, Call_000_20db
    ld a, a
    add b
    cp e
    ld b, h
    call $0532
    nop
    nop
    nop
    nop
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0aa_7b49:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    sbc $ff
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
    cp $ff
    cp $ff
    inc a
    rst $38
    ld a, h
    ccf
    cp $ff
    ei
    ld a, [c]
    ccf
    ld a, [de]
    rlca
    ld bc, $80e1
    ld hl, sp-$10
    rst $38
    cp $ff
    rst $38
    rst $38
    pop af
    sub b
    ldh a, [$e8]
    ldh a, [$fb]
    db $fc
    ldh [rIE], a
    ld a, b
    add a
    ld a, [hl]
    add c
    ld e, [hl]
    pop hl
    db $d3
    ccf
    ld sp, hl
    rrca
    cp l
    rst $00
    rst $38
    rst $00
    ld e, l
    rst $20
    ld e, h
    rst $20
    ld e, h
    rst $20
    db $fc
    rlca
    db $f4
    rrca
    or l
    rst $08
    ld h, a
    rst $38
    db $db
    rst $38
    rst $30
    ei
    add l
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    add b
    ld a, a
    ret nz

    ccf
    ld a, a
    nop
    ccf
    rrca
    cpl
    rlca
    rla
    ld bc, $000b
    rlca
    nop
    ld bc, $8400
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $0f
    db $10
    ld de, $0000
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0aa_7c15

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0aa_7c25

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0aa_7c35

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0aa_7c45

    ld [hl-], a

jr_0aa_7c15:
    nop
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0aa_7c57

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_0aa_7c25:
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
    ld c, a
    ld d, b

jr_0aa_7c35:
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
    ld e, [hl]
    ld e, [hl]
    ld e, a

jr_0aa_7c45:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0aa_7c57:
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
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    and [hl]
    and a
    ld [bc], a
    ld a, [hl]
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
    nop
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
    ld [$0902], sp
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
    jr jr_0aa_7d11

jr_0aa_7d11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
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
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0aa_7ddd

jr_0aa_7ddd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    ret nz

    add b
    inc bc
    nop
    ccf
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    ld hl, sp-$01
    ldh [$bf], a
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
    ei
    inc b
    db $fd
    ld [bc], a
    ld a, [c]
    dec c
    ld hl, sp+$07
    di
    rrca
    rst $30
    rrca
    adc a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$10
    ldh a, [$e0]
    db $e3
    pop bc
    add a
    add b
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    dec e
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
    rst $38
    rst $38
    rst $38
    cp $f8
    ldh [$80], a
    inc bc
    ld bc, $1f3f
    rst $38
    rst $38
    rst $38
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
    cp $f7
    ld hl, sp-$22
    pop hl
    ld a, a
    add b
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $f4
    dec bc
    add sp, $17
    add sp, $17
    jp nz, Jump_0aa_603d

    sbc a
    ld b, c
    cp a
    rlca
    rst $38
    rrca
    rst $38
    ld a, [$fd1f]
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [c]
    db $fc
    db $e4
    ld hl, sp-$78
    ldh a, [rSB]
    pop hl
    inc b
    jp $0788


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    nop
    ei
    rlca
    rst $38
    rst $38
    ei
    db $fc
    db $fd
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$04
    ld hl, sp-$20
    add b
    rlca
    ld bc, $1c7f
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
    cp $fd
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $ff
    cp $ff
    cp $fc
    rst $38
    ld a, [c]
    db $fd
    add sp, -$09
    or h
    set 6, c
    rrca
    pop bc
    ccf
    ret nz

    ccf
    pop bc
    ld a, $81
    ld a, [hl]
    ld bc, $01fe
    cp $01
    rst $38
