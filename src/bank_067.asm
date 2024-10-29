SECTION "ROM Bank $067", ROMX[$4000], BANK[$67]

    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp l
    ld a, a
    srl a
    rst $20
    rra
    ld l, a
    rra
    ld b, e
    ccf
    ldh [$1f], a
    ld l, c
    rra
    and a
    dec de
    ld hl, $401f
    rra
    dec sp
    rrca
    ld de, $000f
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
    jr jr_067_4053

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_067_4063

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_067_4073

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_067_4083

    ld [hl-], a

jr_067_4053:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_067_4093

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_067_4063:
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

jr_067_4073:
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

jr_067_4083:
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

jr_067_4093:
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
    jr jr_067_4153

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_067_4163

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
    jr nc, jr_067_4183

    ld [hl-], a

jr_067_4153:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_067_4193

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    dec b
    dec b
    dec b

jr_067_4163:
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0606
    dec b
    ld b, $05
    ld b, $05
    dec b
    dec b
    ld bc, $0505
    dec b
    ld bc, $0000

jr_067_4183:
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0501
    nop
    nop
    nop

jr_067_4193:
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld b, $05
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    dec b
    ld b, $06
    ld bc, $0605
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    ld bc, $0100
    nop
    ld bc, $0101
    ld bc, $0105
    ld bc, $0501
    dec b
    dec b
    dec b
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0105
    ld b, $05
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    ld b, $01
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0105
    dec b
    dec b
    ld bc, $0101
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0601
    ld b, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0809], sp
    add hl, bc
    ld [$0909], sp
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0909], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $18
    ld h, a
    rst $18
    ld d, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, a
    rst $38
    di
    ld a, a
    ld h, e
    ld a, a
    ld b, a
    ld a, a
    inc sp
    ld a, a
    add hl, sp
    ld a, e
    ld a, e
    ccf
    pop af
    ccf
    ld d, b
    cp l
    or d
    db $fd
    db $f4
    rst $38
    set 7, a
    cp $ef
    rra
    rst $28
    rst $38
    db $ec
    db $fc
    ld a, [hl-]
    ld a, [hl]

jr_067_42d5:
    cp l
    cp $1d
    cp $0d
    db $ec
    rlca
    cp $05
    cp $03
    cp a
    nop
    ei
    scf
    ei
    rla
    ld e, l
    and a
    cpl
    ld d, l
    dec b
    ld a, a
    scf
    ld c, c
    rst $38
    rra
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    ld hl, $01ff
    rst $38
    ld h, h

jr_067_42ff:
    sbc e
    ldh [$1f], a
    ld [hl], b
    adc a
    ldh [$9f], a
    ld [c], a
    sbc l
    ret nc

    adc a
    cp b
    rst $00
    jr c, jr_067_42d5

    jr @-$37

    jr @-$37

    ld d, b
    rst $28
    ld c, b
    rst $30
    jr c, jr_067_42ff

    jr z, @-$07

    and h
    dec sp
    add b
    ccf
    ld d, $39
    ld d, a
    cp b
    scf
    ld hl, sp+$06
    ld sp, hl
    ld b, $f9
    ld c, $f9
    ld b, [hl]
    cp c
    adc [hl]
    add hl, sp
    and $19
    add $39
    add $39
    ld c, d
    cp l
    ld a, [hl+]
    sbc l
    db $ec
    sbc a
    ld c, h

jr_067_433b:
    cp a

Jump_067_433c:
    sbc $3f
    sbc a

jr_067_433f:
    ld a, a
    sbc a
    ld a, a
    add a
    ld a, a
    add e
    ld a, a
    rlca
    rst $38
    and e
    ld e, a
    and a
    ld e, a
    rlca
    rst $38
    inc bc
    rst $38
    db $e3
    rst $38
    rst $20
    ei
    add a
    ei
    push hl
    ei
    daa
    ld sp, hl
    inc sp
    db $dd
    ld h, b
    sbc a
    jr nz, jr_067_433f

    ld [hl], b
    adc a
    scf
    rst $08
    inc de

jr_067_4365:
    rst $28
    ld de, $10ef
    rst $28
    jr nc, jr_067_433b

    inc c
    rst $38
    ld b, b
    cp a
    inc l
    di
    ld b, h
    ei
    ld e, [hl]
    pop hl
    adc $f1
    or a
    ld hl, sp-$35
    db $fc
    adc e
    db $fc
    inc bc
    db $fc
    add a
    ld hl, sp-$79
    ld hl, sp-$11
    sub b
    ld bc, $03fe
    db $fc
    inc b
    ei
    nop
    rst $38
    ld hl, $33ff
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    dec c
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $08
    ccf
    add d
    ld a, a
    pop af
    cp $e9
    sbc $d1
    cp $90
    cp $d0
    cp $f0
    cp $f0
    cp $e6
    ld hl, sp-$0d
    db $fc
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ld [hl], b
    rst $38
    ld hl, sp-$02
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $fd
    cp $79
    cp $3c
    cp $7d
    cp $3c
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rlca
    inc e
    rlca
    add b
    inc bc
    call nz, $8003
    inc bc
    add h
    add c
    ld b, c
    ld bc, $41e3
    and b
    add b
    jr nc, jr_067_4365

    ret z

    ldh [$8c], a
    or $ec
    cp $e3
    or $e9
    di
    db $ec
    add [hl]
    pop af
    set 6, b
    rst $28
    ldh a, [$c7]
    ld hl, sp-$28
    pop hl
    call nc, $f1e3
    rst $38
    xor $f1
    rst $38
    ldh a, [$bb]
    db $f4
    sbc b
    ld [hl], l
    inc e
    ei
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp $02
    rst $38
    ld [de], a
    rst $30
    add b
    rst $38
    add d
    db $fd
    add b
    ld hl, sp-$3d
    ld hl, sp-$79
    ld hl, sp-$71
    ldh a, [$f8]

jr_067_4421:
    rst $30
    ld hl, sp-$09
    db $fc
    pop af
    db $fd
    ld a, [c]
    rst $38
    ldh [$e5], a
    ld a, [$ecf3]
    ei
    push hl
    inc e
    db $e3
    dec c
    di
    nop
    rst $38
    ld a, [de]
    rst $20
    jr jr_067_4421

    inc d
    rst $28
    inc b
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
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $f9
    cp $f9
    cp $f9
    cp $f1
    cp $f9
    cp $f0
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, b
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    cp l
    ld a, a
    cp a
    ld a, a
    cp $7f
    ld a, [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    jr @+$01

    inc [hl]
    ei
    ld d, e
    inc a
    db $10
    ccf
    jr c, jr_067_44c5

    add hl, hl
    ld e, $1e
    rra
    rrca
    rra
    sbc a
    rrca
    adc l
    ld c, $fa
    rrca
    rst $38

jr_067_44b3:
    rst $08
    ccf
    rst $00
    ccf
    rst $00
    cp a
    jp $c3bf


    ld [hl], a
    add b
    cp a
    ret nz

    cp a
    ret nz

    sbc a
    ld h, b
    adc a

jr_067_44c5:
    ld [hl], b
    rst $08
    jr nc, @-$17

jr_067_44c9:
    jr jr_067_44c9

    ld bc, $01fe
    ld hl, sp+$07
    cp a
    nop
    and $19
    rlca
    ld hl, sp+$2f
    ret nc

    ld a, a
    add b
    rlca
    ld hl, sp+$07
    ld hl, sp+$08
    rst $38
    ld c, b
    sbc a
    jr nc, jr_067_44b3

    ld l, b
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld l, a
    ld a, a
    ccf
    ld a, a
    add a
    ld a, a
    rrca
    rst $38
    sbc e
    rrca
    ld sp, $2f8f
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $38
    ld l, d
    inc e
    ld e, [hl]
    cpl
    ld h, [hl]
    rrca
    ld b, [hl]
    xor a
    inc bc
    rst $28
    add [hl]
    ld l, a
    add c
    ld l, [hl]
    add c
    ld l, [hl]
    ld [$4004], a
    cp b
    nop
    add sp, -$7e
    db $fc
    ld [c], a
    db $fc
    jp nz, $e1fc

    cp $79
    cp $70
    rst $38
    ld h, b
    rst $38
    ld b, l
    ld a, [$f24d]
    ld a, a
    ldh a, [rVBK]
    ldh a, [$4c]
    pop af
    dec bc
    ldh a, [rNR10]
    pop hl
    ld d, [hl]
    and c
    db $76
    add c
    ld a, [hl]
    add c
    ld a, h
    add e
    inc a
    jp $ff00


    pop bc

jr_067_453f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    rst $18
    ccf
    rst $08
    ccf
    ld b, e
    ccf
    jp $e33f


    rra
    db $e3
    rra
    db $e3
    rra
    and c
    rra
    pop hl
    rra
    pop hl
    rra
    ld b, b
    cp a
    jr nz, jr_067_453f

    ld h, d
    sbc a
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret z

    rst $38
    adc h
    rst $38
    ld [$98ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    db $fc
    rst $38
    cp [hl]
    rst $38
    rra
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    add sp, -$09
    ld hl, sp-$39
    and c
    sbc $63
    sbc h
    ld [hl-], a
    call $8d72
    pop hl
    rra
    ld a, h
    add b
    db $76
    add b
    ccf
    ret nz

    ld bc, $02ff
    rst $38
    add sp, -$09
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rst $00
    ccf
    rst $08
    scf
    and e
    ld e, a
    cp e
    ld b, l
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, l
    add d
    ld e, l
    and d
    ld bc, $8dfe
    ld a, [c]
    call nz, $803b
    ld a, a
    nop
    rst $38
    ld [hl], c
    cp $13
    db $ed
    inc de
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add a
    rst $38
    pop hl
    rst $38
    add b
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $28
    sub b
    rst $38
    add b
    adc [hl]
    pop af
    jp nz, $83fd

    ld a, h
    sbc b
    ld a, a
    rst $00
    ld hl, sp+$64
    sbc b
    ld a, h
    add b
    ld c, a
    add b
    ld b, a
    add b
    daa
    nop
    or a
    nop
    cp [hl]
    nop
    ld a, $03
    dec de
    rlca
    dec de
    rlca
    sbc e
    rlca
    sbc e
    rlca
    rst $38
    inc bc
    cp $03
    pop hl
    ld e, $f9
    ld c, $d9
    ld c, $f1
    ld c, $d1
    ld c, $e4
    dec bc
    ld hl, sp+$07
    pop de
    ld l, $24
    rst $18
    cpl
    rst $38
    dec a
    rst $38
    ldh a, [rIE]
    ld a, a
    rst $38
    ld a, a

Jump_067_463d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    ei
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
    db $e4
    rst $38
    adc l
    ld a, [c]
    adc [hl]
    pop af
    adc $f1
    adc $f1
    db $ec
    di
    db $ec
    di
    ld hl, sp-$19
    jp hl


    or $e0
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    nop
    rst $38
    jr nc, @+$01

    add b
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    dec a
    cp $00
    rst $38
    db $fd
    cp $fc
    rst $38
    inc c
    inc bc
    inc bc
    ld bc, $00c1
    cpl
    ret nc

    ldh [rIE], a
    inc c

jr_067_46ab:
    rst $38
    ld d, $eb
    push af
    ld a, [$fffe]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    or $f9
    rst $38
    ld hl, sp-$1d
    db $fc
    adc a
    ldh a, [$3f]
    ret nz

    rst $20
    jr jr_067_4741

    rra
    or e
    ld a, h
    db $d3
    ld a, h
    or e
    ld a, h
    adc a
    ld [hl], b
    reti


    jr nz, jr_067_46ab

    ld hl, $3fe4
    sbc $3f
    inc h
    rst $38
    ldh [rIE], a
    rst $38
    ldh a, [$fe]
    ldh a, [$f7]
    cp $77
    rst $38
    ld [hl], a
    rst $38
    or $ff
    ld hl, sp-$01
    sbc b
    ld a, a
    rst $38
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc $01
    ld h, e
    sbc l
    and c
    ld e, a
    ld e, $01
    rrca
    nop
    rra
    nop
    or a
    ld [$0896], sp
    adc h
    nop
    ret z

    nop
    ld [bc], a
    ld bc, $0386
    ld b, $87
    ld a, [hl]
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, [de]
    rst $20
    ret nz

    nop
    ldh [rP1], a
    db $e3
    nop
    adc l
    nop
    db $ed
    nop
    db $ed
    nop
    ld a, l
    nop
    rst $38
    nop
    db $fd
    add b
    call c, $fde0
    ld b, b
    dec e
    ldh [$32], a
    db $fd
    dec a
    rst $38
    rra

jr_067_4741:
    rst $38
    inc a
    rst $38
    cp b
    ld a, a
    sbc b
    ld a, a
    pop bc
    ld a, $43
    cp h
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    ld [hl], d
    adc a
    ld [hl], b
    adc a
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    xor [hl]
    pop de
    add c
    rst $38
    rst $18
    rst $38
    db $fc
    rst $38
    cp $ff
    ret nc

    rst $38
    ld [hl], c
    rst $38
    ld h, b
    rst $38
    ld h, b

jr_067_476b:
    rst $38
    add hl, hl
    or $28
    rst $30
    rla
    add sp, -$5f
    ld a, [hl]
    ld hl, $61fe
    cp $73
    db $fc
    ld sp, $70fe
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
    sbc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld h, b
    rst $38
    db $f4
    ei
    ld a, a
    ldh a, [$97]
    ld hl, sp+$6a
    sbc l
    ld l, h
    sbc a
    jr nc, jr_067_476b

    ld [hl-], a
    call $df20
    add b
    nop
    ret nz

    nop
    ld b, b
    add b
    ld hl, $f5c0
    nop
    ldh a, [rP1]
    rrca
    ldh a, [$1f]
    db $e3
    inc a
    jp $fbc4


    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08

Jump_067_47bb:
    rst $38
    jp $80ff


    rst $38
    rrca
    ldh a, [$fe]
    nop
    sbc h
    nop
    ld a, h
    add b
    ld h, $d8
    rrca
    ldh a, [$ef]
    db $10
    db $f4
    dec bc
    db $fc
    inc bc
    nop
    rst $38
    ld c, $f1
    or a
    ld hl, sp-$5d
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    db $ec
    inc de
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld a, h
    add e
    ret z

    rst $30
    ld a, e
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    rst $28
    rra
    db $fc
    inc bc
    rla
    add sp, -$80
    rst $38
    nop
    rst $38
    pop de
    ld l, $b9
    ld b, [hl]
    ld a, e
    add h
    scf
    ret nz

    rrca
    ldh a, [$67]
    sbc b
    db $e4
    ei
    ccf
    cp $e7
    ld e, $f7
    ld c, $17
    ld c, $17
    ld c, $17
    ld c, $1a
    rst $38
    ld a, a
    ld hl, sp-$5b
    ld hl, sp-$43
    ld hl, sp-$27
    db $fc
    ld hl, sp-$01
    add b
    db $fd
    dec a
    call nz, Call_000_0402
    ld hl, sp+$04
    ld a, [c]
    inc c
    ld a, [c]
    inc c
    pop af
    ld c, $e0
    ld e, $06
    ld a, h
    ld [bc], a
    db $fc
    nop
    rst $38
    ld b, $fe
    ld c, [hl]
    cp $fe
    cp $fe
    cp $fe
    cp $9c
    cp $64
    cp $24
    ld a, [hl]
    inc b
    ld a, $1c
    ld a, $35
    ld a, [hl]
    rlca
    ld h, h
    dec b
    db $e4
    cp a
    call nz, $847b
    ld l, e
    add h
    db $eb
    inc b
    di
    inc c
    ld [hl], e
    adc h
    adc e
    db $fc
    and [hl]
    db $dd
    inc a
    rst $00
    ld a, [$fe07]
    inc bc
    ld a, [hl]
    add e
    ld a, h
    add e
    ld a, l
    add d
    ld a, h
    add e
    ld [hl], h
    add e
    db $f4
    inc bc
    db $fd
    ld [bc], a
    ld hl, sp+$03
    db $f4
    inc bc
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cpl
    rst $38
    daa
    rst $38
    dec bc
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    ccf
    add b
    ld a, a
    nop
    rst $38
    call z, $bcff
    ld b, e
    adc $31
    adc h
    ld [hl], e
    ld l, a
    inc de
    ld l, a
    ld de, $10ff
    rst $38
    db $10
    cp $11
    ld a, e
    dec e
    rst $18
    ccf
    cp a
    rst $38
    ld a, [hl-]
    rst $38
    cp b
    ld a, a
    ld a, h
    rst $30
    db $fd
    rst $30
    rst $30
    db $fd
    ld sp, hl
    rst $30
    jp hl


    rst $30
    ld a, d
    rst $30
    or [hl]
    ld l, e
    ld [hl], $4b
    ld a, d
    ld b, a
    ld a, [hl]
    ld b, a
    ld a, a
    ld b, a
    rst $30
    ld c, a
    rst $18
    ld a, a
    ld l, a
    rst $38
    nop
    ld e, a
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    ld a, a
    ld l, $65
    rlca
    db $ed
    ld b, e
    dec l
    cpl
    db $dd
    cpl
    rrc a
    db $eb
    ld c, e
    sbc a
    ld e, a
    sbc e
    db $db
    cp a
    ld a, a
    sub e
    ld a, a
    di
    ei
    or $db
    or h
    ld d, e
    xor b
    ld e, a
    add c
    ld e, a
    add h
    ld e, a
    adc [hl]
    ld a, a
    adc a
    ccf
    sbc a
    pop af
    ccf
    and e
    ld a, a
    and e
    ld a, a
    call nz, Call_067_583f
    ccf
    ld e, b
    ccf
    ld e, c
    ld a, $58
    ccf
    jr nc, jr_067_4931

    db $10
    ccf
    nop
    ccf
    jr jr_067_493f

    ld e, b
    daa
    ld c, $f7
    ld c, h

jr_067_491d:
    rst $30
    call nz, $ffff
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    push de
    ld c, a
    di
    ld c, a
    inc sp
    ld d, c

jr_067_4931:
    rrca
    dec sp
    rlca
    ld [hl], e
    rrca
    dec sp
    rlca
    dec sp
    rlca
    inc sp
    rrca
    ld [hl], e
    rrca
    db $e3

jr_067_493f:
    rra
    dec l
    rra
    rra
    ccf
    inc sp
    rra
    ld de, $011f
    rra
    add c
    rra
    xor l
    rra
    ld sp, hl
    rrca
    ldh a, [rIF]
    ld e, b
    add a
    ld sp, hl
    inc bc
    ld a, l
    add e
    jr c, jr_067_491d

    dec d
    db $eb
    db $f4
    dec bc
    nop
    rst $38
    inc b
    ei
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    sbc h
    db $e3
    inc e
    ld [hl], a
    adc b
    rst $30
    ld [$01fe], sp
    push af
    dec bc
    sub l
    dec bc
    dec [hl]

jr_067_4977:
    dec bc
    pop de
    rrca
    pop hl
    rra
    db $e3
    rra
    inc bc
    rst $38
    and d
    rst $18
    or c
    adc $bf
    ret nz

    rst $20
    ld hl, sp-$0f
    cp $cf
    rst $38
    xor a
    rst $18
    and a
    rst $18
    add c
    rst $38
    rlca
    rst $38
    nop
    rst $38
    jr nz, jr_067_4977

    inc bc
    db $fc
    ld b, $f8
    pop de
    nop
    db $dd
    nop
    rst $10
    nop
    sub b
    rrca
    sub b
    rrca
    ld b, c
    sbc a
    add hl, de
    cp a
    ld b, c
    cp a
    nop
    rst $38
    dec e
    rst $28
    ld [bc], a
    rst $38
    inc de
    rst $28
    sub c
    ld c, a
    ld a, [de]
    ld b, c
    ld c, d
    ld bc, $011e
    inc a
    inc bc
    cp h
    inc bc
    inc c
    inc sp
    ld [$0837], sp
    scf
    ld [$8077], sp
    ld a, a
    ld a, [$fbff]
    rst $38
    ld h, a
    ei
    ld a, a
    di
    ld l, e
    rst $30
    ld a, h
    db $e3
    db $dd
    db $e3
    db $fd
    jp $c3fd


    xor l
    db $d3
    adc e
    rst $30
    xor e
    rst $10
    add a
    rst $38
    ld b, a
    rst $38
    ld [bc], a
    rst $38
    ld h, $df
    ld h, d
    sbc a
    ld h, d
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    call z, $ec3f
    rra
    xor $3f
    cp b
    ld a, a
    ld [hl], h
    rst $38
    db $f4
    rst $38
    xor [hl]
    rst $38
    adc [hl]
    rst $38
    ld b, $ff
    rlca
    rst $38
    add a
    ld a, a
    rla
    rst $38
    dec d
    rst $38
    sub h
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld h, d
    rst $38
    ld h, [hl]
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    rrca
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld c, $ff
    ld a, [hl]
    rst $38
    ld l, a
    rst $38
    ret


    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    ld l, $ff
    ld a, $ff
    cp h
    rst $38
    or [hl]
    rst $38
    add a
    rst $38
    jp $d1ff


    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    rst $28
    rst $38
    ld c, a
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    ld e, $ff
    rrca
    rst $38
    daa
    rst $38
    daa
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld b, c
    rst $38
    pop bc
    rst $38
    sbc $e1
    cp $c1
    inc l
    db $d3
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $0fff
    rst $38
    rst $38
    rst $38
    ld h, a
    rst $38

jr_067_4a84:
    jr nz, @+$01

    add b
    ccf
    and a
    jr jr_067_4abc

    adc $fc
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld b, b
    cp a
    sub d
    ld l, l
    add e
    ld a, h
    adc h
    ld b, e
    call c, Call_000_1000
    rst $28
    ld [$07ff], sp
    rst $38
    ld a, $c1
    cp a
    ld b, b
    sbc b
    ld h, a
    and e
    ld a, a
    ld [hl], h
    rst $38
    ld b, b
    rst $38
    ld d, c
    rst $38
    call nz, $f0fb
    rst $38
    ld h, c
    cp $a0
    ld a, a

jr_067_4abc:
    and a
    ld [hl], b
    sub d
    ld h, c
    ld h, e
    rst $38
    ld a, a
    rst $38
    cp $ff
    and $ff
    db $db
    rst $20
    call $dfe3
    db $e3
    add $ff
    pop hl
    sbc $de
    rst $38
    ld [hl], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld d, $e1
    inc b
    db $e3
    ld c, h
    and e
    and c
    rst $38
    ld e, c
    and a
    ld c, e
    or a
    ld b, e
    rst $38
    and h
    ld a, e
    or c
    ld a, [hl]
    ld bc, $43fe
    db $fc
    db $fc
    nop
    ld h, l
    sbc b
    add l
    jr jr_067_4a84

    db $10
    and l
    db $10
    sub $21
    cp d
    ld b, a
    ld b, e
    rst $38
    sbc a
    rst $38
    ld l, a
    sbc a
    ld l, a
    sbc a
    ld l, $9f
    rst $20
    rra
    ld h, a
    sbc a
    ld h, d
    sbc l
    ld c, e
    cp h
    dec bc
    db $fc
    nop
    rst $38
    add d
    ld a, l
    ld c, $f1
    rst $28
    db $10
    xor a
    db $10
    db $e3
    inc e
    rra
    rst $38
    ld e, $ff
    ld a, $df
    ld a, [hl]
    sbc a
    ld c, $ff
    ldh [rIE], a
    sub h
    db $e3
    dec [hl]
    jp nz, $f30e

    inc b
    cp $00
    db $e4
    nop
    xor $00
    adc a
    inc b
    adc a
    ld l, h
    sbc a
    or b
    rst $08
    add c
    rst $38
    add a
    rst $38
    rra
    rst $38
    cp a
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld sp, $62ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or c
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $38
    ldh a, [rIE]
    add sp, -$01
    rst $00
    rst $38
    db $f4
    rst $38
    and c
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cpl
    rst $18
    rra
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ret c

    rst $20
    rst $20
    ld hl, sp-$10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld a, h
    add e
    adc e
    ld [hl], h
    rst $38
    nop
    rrca
    ldh a, [$e4]
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$02
    db $fd
    ld b, [hl]
    cp c
    db $dd
    nop
    ldh a, [rP1]
    cp h
    ld bc, $e0d2
    sub c
    xor $ff
    cp $ff
    rst $38
    inc bc
    rst $38
    dec sp
    rst $38
    sbc e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld e, $ff
    adc e
    rst $38
    inc bc
    rst $38
    ld [$80f7], sp
    rst $38
    ld de, $74e0
    nop
    add b
    rst $38
    rst $38
    ld bc, $ff01
    adc h
    ld a, a
    ld h, b
    sbc a
    ld a, c
    add a
    sbc d
    ld h, a
    db $fc
    ccf
    rla
    ld [$009f], sp
    inc bc
    add b
    pop bc
    add b
    inc l
    ret nc

    ld [hl], b
    adc a
    sbc b
    rrca
    ld c, c
    ld c, $0f
    rrca
    cp e
    rrca
    ld a, a
    adc a
    ld e, h
    xor a
    rst $30
    ld [$28d7], sp
    rra
    db $fc
    ld e, $fc
    rra
    db $fc
    ld e, $fd
    ld e, h

jr_067_4bf5:
    rst $38
    call $9902
    ld b, $f9
    ld b, $31
    adc $4d
    cp $01
    cp $10
    rst $28
    rst $08
    jr nc, @+$7d

    add h
    ld [$c8f7], sp
    rst $30
    jr jr_067_4bf5

    ld a, l
    add d
    dec sp
    call nz, $c43b
    call nz, Call_000_3cff
    rst $38
    ld l, b
    sub a
    dec a
    jp nz, $7aa5

    ld d, c
    cp [hl]
    ld e, h
    cp a
    ld e, a
    cp h
    cpl
    sbc h
    ccf
    adc h
    db $fc
    rrca
    db $f4
    rrca
    ld a, l
    adc [hl]
    cp d
    ld b, l
    ld a, [$f605]
    ld bc, $39c6
    ld h, d
    sbc l
    call $fefa
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ldh [rIE], a
    rst $38
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
    rst $28
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    ld l, h
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    daa
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    pop de
    rst $38
    sub c
    rst $38
    add a
    rst $38
    rrca
    rst $38
    ret


    rst $38
    rst $38
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
    pop bc
    ccf
    ld hl, sp+$07
    inc bc

Call_067_4c7f:
    db $fc
    ld h, c
    cp $f8
    rst $38
    cp $ff
    ccf
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    add l
    ld a, [$e01a]
    ld a, b
    add b
    ld l, e
    add b
    dec sp
    ret nz

    ld a, [de]
    ldh [$bf], a
    ld h, b
    db $10
    rst $38
    xor h
    inc bc
    ld b, $01
    ld hl, sp+$03
    ld a, [hl+]
    rst $00
    rst $28
    rst $38
    cp $ff
    cp $ff
    jp z, Jump_000_00ff

    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    db $10
    rst $28
    ld c, c
    cp [hl]
    db $fc
    rst $38
    cp b
    rlca
    xor b
    rla
    add sp, $17
    ld l, h
    sub e
    dec c
    ld a, [c]
    rst $28
    db $10
    dec hl
    inc d
    xor a
    db $10
    or [hl]
    add hl, de
    adc a
    ld a, a
    ld l, a
    sbc a
    xor [hl]
    rra
    cp h
    rrca
    cp b
    rrca
    db $e4
    dec de
    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    db $ed
    sbc a
    ld l, d
    sbc l
    ld h, a
    sbc b
    and $18
    sub e
    ld a, h
    ld a, [$f93d]
    ld a, $69
    ld a, $a0
    ld a, a
    or h
    ld a, a
    add h
    ld a, a
    add b
    ld a, a
    sub d
    ld l, a
    cp b

Call_067_4cfb:
    ld b, [hl]
    pop de
    ld a, [hl]
    sub h
    ld a, e
    adc h
    ld [hl], e
    add $39
    ld [hl], b
    adc a
    ld d, a
    xor b
    nop
    rst $38
    inc d
    rst $28
    db $10
    rst $28
    sbc h
    ld h, e
    sbc b
    ld h, a
    add hl, de
    rst $20
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    pop bc
    ld a, $10
    ld a, a
    ld e, a
    cp a
    sbc [hl]
    ld a, a
    db $fc
    rra
    db $fd
    ld e, $f9
    ld e, $1a
    db $fd
    ld hl, sp+$1f
    ldh [$1f], a
    ldh a, [rIF]
    nop
    rst $38
    inc h
    rst $18
    ld a, [de]
    rst $38
    ld [hl], c
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
    ld [hl], a
    rst $38
    cp [hl]
    rst $38
    ld c, $ff
    inc b
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    add d
    rst $38
    pop bc
    rst $38
    ei
    rst $38
    ld a, [c]
    rst $38
    nop
    rst $38
    inc c
    rst $38
    rst $38

jr_067_4d5d:
    rst $38
    jp $f1ff


    rst $38
    ld hl, sp-$01
    ld bc, $00ff
    rst $38
    adc b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ret nz

    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    push af

jr_067_4d77:
    ld a, [$ffe0]
    rlca
    rst $38
    nop
    rst $38
    pop af
    ld c, $f1
    ld c, $88
    ld [hl], a
    jr z, jr_067_4d5d

    add b
    rst $38
    cp $ff
    cp [hl]
    ld a, a
    daa
    rst $38
    jr jr_067_4d77

    ld a, $c1
    ld [de], a
    pop hl
    nop
    ld a, e
    jr nz, jr_067_4d77

    ld h, [hl]
    adc a
    ld b, $1e
    rst $28
    ld e, $fe
    rst $38
    ld b, $f9
    nop
    rst $38
    add b
    rst $38
    and b
    rst $38
    jr @+$01

    rlca
    rst $38
    rst $18
    rst $38
    inc bc
    rst $38
    inc bc

jr_067_4db1:
    rst $38
    ld h, d
    sbc a
    nop
    rst $38
    ld bc, $0bef
    cp a
    adc b
    rst $38
    ld b, b
    db $fc
    nop
    db $fc
    db $d3
    inc l
    jp z, $d325

    inc l
    inc bc
    ld a, h
    adc e
    ld a, h
    add hl, bc
    cp $04
    rst $38
    and h
    rst $38
    jr z, jr_067_4db1

    ld sp, hl
    ld b, $fb
    inc b
    and c
    ld e, h
    inc hl
    call c, $ce31
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    pop bc
    cp $86
    ld a, c
    adc c
    db $76
    sbc l
    ld h, d
    inc e
    db $e3
    inc e
    db $e3
    inc c
    di
    ld c, c
    or [hl]
    ld h, e
    sbc h
    ld b, c
    cp [hl]
    nop
    rst $38
    add sp, $17
    ret c

    daa
    ldh [$1f], a
    cp $1f
    rra
    rst $38
    add a
    rst $38
    ld h, a
    rst $38
    ld h, $ff
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    add h
    rst $38
    ld bc, $01fe
    cp $61
    cp $00
    rst $38
    add b
    ld a, a
    rrca
    rst $38
    ld a, a
    rst $38
    cp [hl]
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    ret nc

    ccf
    inc a
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ld h, b
    rst $38
    ld b, [hl]
    rst $38
    jp $efff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add hl, bc
    rst $38
    ld a, [bc]
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    adc [hl]
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    db $ec
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld h, e
    rst $38
    ld bc, $46ff
    cp a
    inc bc
    rst $38
    ld [c], a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    inc c
    rst $38
    ld sp, hl
    rst $38
    ld b, $f9
    rst $38
    nop
    rst $38
    nop
    ld b, b
    cp a
    nop
    rst $38
    rlca
    ld hl, sp+$01
    rst $38
    ld e, b
    rst $20
    cp [hl]
    ret nz

    ld l, b
    add b
    inc hl
    call c, $0ff1
    ld [$00f7], sp
    rst $38
    xor $1f
    dec c
    inc bc
    ld c, d
    ld bc, $408f
    inc c
    cp $12
    rst $38
    dec e
    rst $38
    cp $ff
    ld a, b
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    ld a, a
    cp $80
    rst $38
    jr nz, @-$1f

    jr nz, @-$1f

    add b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    dec a
    nop
    db $10
    ld h, e
    sbc h
    dec h
    sbc $c8
    rst $38
    rst $30
    rst $38
    dec hl
    rst $30
    jr @-$17

    ccf
    ret nz

    db $10
    rst $28
    ld l, c
    sub [hl]
    db $dd

jr_067_4ed3:
    inc hl
    or h

jr_067_4ed5:
    ld b, e
    ld hl, sp+$03
    sbc c
    inc hl
    push hl
    dec sp
    call c, $ef23
    nop
    ccf
    ret nz

    ret nz

    rst $38
    ld l, [hl]
    rst $38
    inc c
    rst $38
    ld [$40ff], sp
    rst $38
    add [hl]
    rst $38
    ld [bc], a
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, sp
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ret z

    rst $38
    ld sp, hl
    rst $38
    add b
    rst $38
    jr nc, jr_067_4ed3

    jr nc, jr_067_4ed5

    add hl, de
    xor $00
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    cp $00
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    jr c, @+$01

    inc e
    rst $38
    rrca
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $28
    sbc b
    rst $20
    add d
    rst $38
    pop bc
    rst $38
    rst $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec sp
    rst $38
    ld h, e
    rst $38
    di
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    adc e
    rst $38
    dec b
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    add b
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    jp $e1ff


jr_067_4f5d:
    rst $38
    ld b, $ff
    ld c, $ff
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    ccf
    rst $38
    ld e, $ff
    dec de
    rst $38
    rra
    rst $38
    dec sp
    db $fc
    sbc e
    db $fc
    dec d
    jp nz, Jump_000_0083

    ld [bc], a
    nop
    add a

jr_067_4f91:
    nop
    and b
    ret nz

    dec c
    ldh a, [$81]
    cp $fe
    rst $38
    or c
    rst $08
    ld a, a
    add b
    rst $08
    jr nc, jr_067_4fa1

jr_067_4fa1:
    ret nc

    and a
    adc c
    rst $38
    rst $38
    rst $38

jr_067_4fa7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    jr nz, jr_067_4f91

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    ld l, b
    rst $38
    adc b
    rst $38
    jr nz, jr_067_4f5d

    ld [hl+], a
    dec e
    ld a, [hl+]
    dec d
    inc c
    ld [hl], e
    inc h
    ld e, e
    jr c, jr_067_4fa7

    ld [$183f], sp
    ccf
    rrca

jr_067_4fcd:
    ccf
    rrca
    ccf
    ld d, $2f
    push hl
    cp $01
    cp $01
    cp $e3
    or $c3
    ld a, [c]
    ld b, b
    db $e3
    ld [bc], a
    rrca
    inc sp
    rrca
    rst $20
    dec bc
    ld [hl], a
    adc e
    inc a
    res 7, b
    ld c, a
    adc d
    ld a, l
    adc d
    ld b, l
    jp nz, Jump_067_5a05

    add l
    ld [hl], c
    adc a
    jp $ffbf


    rst $38
    rst $28
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, @-$37

    ld [$38c7], sp
    rst $00
    jr c, jr_067_4fcd

    ret


    rlca
    ld l, c
    add a
    ld [hl], l
    adc a
    ld sp, $81cf
    ld a, a
    ld h, c
    sbc a
    ld hl, $40df
    rst $38
    ld [hl-], a
    rst $38
    ld a, d
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    inc de
    rst $38
    inc sp
    rst $38
    ld d, $ff
    ld d, [hl]
    rst $38
    sub $ff
    sub $ff
    rst $18
    rst $38
    rlca
    rst $38
    adc e
    rst $38
    jp z, $e8ff

    rst $38
    or d
    rst $38
    ld a, [$fcff]
    rst $38
    db $fc
    rst $38
    call nz, $dcff
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, $ff
    ld a, $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    ld bc, $f8ff
    rlca
    ld b, b
    cp a
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    sbc h
    db $e3
    ld a, b
    add a
    ld h, b
    sbc a
    ld h, c
    sbc [hl]
    push af
    ld c, $b8
    rlca
    sub [hl]
    ld bc, $0fd0
    ld [$1b5c], sp
    db $fc
    add hl, sp
    ld d, e
    cp a
    ld a, c
    rst $38
    ld a, a
    rst $38
    cp $fb
    db $f4
    jp $ebfc


    inc d
    ld b, c
    ccf
    add l
    ld a, d
    add b
    ld a, a
    dec c
    cp $84
    ld a, a
    inc [hl]
    rst $38
    ld d, $ff
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $30
    add d
    rst $30
    ret nz

    rst $30
    ld [$0ef7], sp
    di
    add hl, bc
    or $09
    or [hl]
    ld b, l
    cp d
    pop hl
    ld e, $e1
    ld e, $e1
    ld e, $01
    cp $00
    rst $38
    xor [hl]
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    db $fc
    rst $38
    ld e, l
    cp $7d
    cp $6c
    cp $ed
    ld a, [hl]
    db $ed
    ld a, [hl]
    push bc
    ld a, [hl]
    call Call_000_0176
    cp $03
    cp $02
    rst $38
    ld a, [de]
    rst $38
    and [hl]
    rst $38
    ld [hl+], a
    rst $38
    add hl, hl
    rst $30
    add hl, hl
    rst $30
    dec l
    di
    xor d
    push af
    adc $f5
    ret z

    rst $30
    add hl, de
    and $e9
    or $71
    cp $60

Jump_067_50ff:
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    add hl, de
    cp $18
    rst $38
    cp c
    rst $38
    ld sp, hl
    rst $38
    cp c
    rst $38
    ld sp, hl
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld c, e
    rst $38
    ld c, a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    pop bc
    rst $38
    jp nz, $c1fd

    cp $e3
    db $fc
    pop bc
    cp $c0
    rst $38
    ld c, d
    db $fd
    ld c, b
    rst $38
    ret


    rst $38
    add hl, bc
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $41ff
    rst $38
    ld h, l
    ei
    ld d, a
    ei
    ld e, e
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld c, $ff
    ld c, $ff
    ld [bc], a
    rst $38
    ld bc, $81ff
    ld a, a
    add b
    rst $38
    ret z

    rst $30
    db $e4
    ei
    db $f4
    ei
    ldh a, [rIE]
    jr nc, @+$01

    jr nc, @+$01

    ld [hl-], a
    rst $38
    ld a, [c]
    rst $38
    db $10
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], c
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    dec b
    rst $38
    ld bc, $7dff
    rst $38
    ld [$c6ff], sp
    ccf
    db $ec
    inc de
    ld l, [hl]
    add b
    rst $38
    nop
    pop af
    adc [hl]
    add d
    ld bc, $0180
    pop bc
    add b
    ret nz

    ret nz

    add b
    ldh [$c1], a
    and b
    ldh [rTMA], a
    ld bc, $91f2
    ld a, a
    call nz, $2ffe
    sbc $9a
    ld a, a
    ccf
    rst $38
    cp [hl]
    ld a, a
    jr c, @+$01

    cpl
    ldh a, [$1f]
    ldh [$5d], a
    ld [c], a
    pop af
    ld c, [hl]
    inc e
    ld h, e
    ret c

    daa
    ret nz

    ccf
    ret z

    scf
    jp nz, Jump_067_463d

    cp c
    ld [hl-], a
    db $fd
    ld [hl], c
    rst $38
    ld [hl], b
    rst $38
    ld a, e
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    pop af
    rst $28
    ret nc

    rst $28
    ld h, c
    rst $38
    ld d, c
    rst $38
    ld [hl], d
    db $fd
    ld [hl+], a
    db $fd
    or d
    ld a, l
    cp c
    db $76
    cp c
    db $76
    cp l
    ld [hl], d
    or l
    ld a, d
    or [hl]
    ld a, b
    rst $38
    ld a, b
    ld h, h
    ei
    ld l, e
    rst $38
    ld a, [hl]

jr_067_51eb:
    rst $38
    ld a, $ff
    ld c, $ff
    ld c, $f7
    jr jr_067_51eb

    ld [de], a
    db $fd
    ld e, e
    db $fc
    dec c
    cp $0d
    cp $8c
    ld a, a
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    ld a, [c]
    db $fd
    ld d, e
    db $fc
    ld e, a
    ld hl, sp-$65
    db $fc
    sbc h
    rst $38
    jp nc, $fbff

    sbc $ec
    sbc $b5
    adc $9a
    rst $00
    cp h
    jp $d6a9


    or c
    adc $a3
    call c, $dfa0
    adc b
    rst $38
    jr @+$01

    ld d, h
    cp e
    ld d, h
    cp e
    ld c, d
    or a
    ld c, c
    or [hl]
    add hl, bc
    or $19
    and $98
    and $89
    and $80
    rst $28
    add b
    xor $91
    xor $81
    db $fc
    add d
    db $fc
    ld [c], a
    db $fc
    ldh a, [$fe]
    cp b
    cp $bc
    db $fc
    inc e
    db $fc
    call c, Call_067_58bc
    cp h

jr_067_524e:
    ld [hl], b
    cp h
    ld [hl], b
    cp h

jr_067_5252:
    ld [hl], b
    cp b
    jr nc, jr_067_524e

    ld a, b
    or b
    jr nc, jr_067_5252

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR44]
    db $fc
    ld hl, $78fe
    rst $38
    db $76
    rst $38
    ld b, b
    rst $38
    ret nc

    rst $28
    ret nc

    rst $28
    sub l
    ld [$c9b6], a
    and [hl]
    reti


    and b
    rst $18
    add e
    db $fc
    and d
    db $dd
    and d
    db $dd
    and b
    rst $18
    add b
    rst $38
    cp $bf
    db $fc
    rst $38
    ld hl, sp-$01
    rst $30
    ld a, a
    ld a, a
    cp a
    ccf
    ld c, [hl]
    rrca
    inc a
    rst $38
    sbc b
    rst $38
    dec de
    inc c
    add e
    nop
    inc de
    nop
    pop bc
    ldh [rNR23], a
    rst $38
    nop
    rst $18
    ld hl, $40bf
    ld [hl], a
    add b
    ld e, b
    and a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    or b
    ld a, a
    ld hl, $0ffe
    ldh a, [$0d]
    ldh a, [$bd]
    ld b, b
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, $c0
    rra
    ldh [rIF], a
    ldh a, [$80]
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    jr @+$01

    ld a, [bc]
    db $fd
    dec bc
    db $fc
    dec de
    rst $38
    rra
    rst $38
    ld e, a
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
    db $fd
    rst $38
    ld a, [c]
    db $fd
    db $f4
    ei
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    sbc a
    ld b, a
    cp a
    dec bc
    rst $30
    xor a
    rst $10
    and a
    rst $18
    adc a
    rst $38
    rst $38
    adc a
    rst $28
    sbc a
    ei
    adc a
    rst $38
    adc a
    ld a, [hl]
    adc a
    cp $0f
    ld sp, hl
    ld c, $f9
    ld b, $73
    adc h
    ld h, e
    sbc h
    inc bc
    db $fc
    di
    db $fc
    ld [hl], d
    db $fc
    add hl, hl
    cp $94
    ld l, e
    rst $38
    nop
    cp $01
    rst $30
    nop
    db $d3
    nop
    pop hl
    nop
    cp $01
    db $fc
    inc bc
    db $fc

jr_067_5335:
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    dec e
    inc bc
    nop
    ccf
    ld b, e
    inc a
    rst $00
    ld a, b
    dec e
    ld [c], a
    rst $30
    nop
    db $e3
    nop
    db $e3
    nop
    inc e
    db $e3
    ld [$08f7], sp
    rst $30
    adc b
    ld [hl], a
    ld bc, $0afe
    push af
    jr z, jr_067_5335

    ld [hl], c
    adc a
    cp $01
    ldh [$1f], a
    rlca
    rst $38
    add e
    ld a, a
    pop bc
    ccf
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld l, c
    add a
    dec hl
    rst $00
    ld h, e
    adc a
    ld [hl], e
    adc a
    ld [hl], e
    adc a
    di
    rrca
    cp e
    rlca
    ei
    rrca
    inc bc
    ld c, a
    dec bc
    rra
    inc bc
    rra
    rrca
    rst $38
    ld a, a
    rst $38
    sbc l
    ld a, a
    reti


    ccf
    ret nz

    ccf
    ld b, a
    cp b
    ret nc

    ld l, a
    call c, Call_000_2f23
    db $10
    add hl, de
    ld b, $08
    inc bc
    ld d, c
    rst $20
    ld bc, $efff
    rra
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    call c, $ccff
    rst $38
    pop af
    cp $ff
    ret nz

    ld a, a
    add b
    rst $18
    nop
    xor a
    ld b, b
    ld [hl], a
    add b
    rst $38
    nop
    ld l, e
    db $10
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rra
    nop
    ld hl, $c31e
    inc a
    rlca
    ld hl, sp+$0f
    ldh a, [rP1]
    rst $38
    ld bc, $0bfe
    db $f4
    jr nc, @-$2f

    rst $08
    rst $38
    db $fc
    rst $38
    ld b, e
    db $fc
    ld e, b
    rst $38
    cp $ff
    ld a, [$fafc]
    db $fc
    ei
    db $fc
    ei
    db $fc
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$f4]
    ei
    rst $38
    rst $38
    or a
    rst $08
    ld h, $df
    ld hl, sp-$01
    rst $38
    ldh a, [$e7]
    ld hl, sp-$11
    ldh a, [$a3]
    db $fc
    adc b
    rst $30
    ei
    rst $38
    ccf
    rst $38
    rrca
    ldh a, [$fe]
    nop

jr_067_5414:
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, [$df00]
    jr nz, jr_067_5414

    ld a, $a3
    ld a, h
    ld h, [hl]
    ld sp, hl
    and $f9
    ld l, [hl]
    pop af
    ld l, [hl]
    pop af
    ld l, a
    ldh a, [$6c]
    di
    inc l
    di
    xor h
    di
    xor l
    di
    db $ed
    di
    dec l
    di
    ld l, b
    rst $30
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    ld a, $7f
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    db $fc
    ld a, a
    db $fc
    rst $38
    db $fd
    cp $fb
    db $fc
    ei
    db $fc
    ld a, [$f2fd]
    db $fd
    rst $30
    ld hl, sp-$19
    ld hl, sp-$10
    rst $38
    push de
    ld a, [$fea1]
    db $db
    db $fc
    di
    db $fc
    add h
    ei
    xor b
    rst $10
    ret c

    rst $20
    ret


    or $99
    and $b8
    rst $00
    cp h
    jp $c7b8


    sbc b
    rst $38
    ldh [rIE], a
    cp b
    rst $00
    cp h
    jp $c738


    ld l, h
    add e
    rlca
    db $db
    rst $38
    inc bc
    rst $38
    pop af
    ld a, a
    adc a
    sbc a
    ld h, c
    dec hl
    call nc, $0fff
    xor a
    ld e, h
    rst $38
    rst $38
    pop af
    rst $38
    db $eb
    rst $30
    ld sp, hl
    rst $38
    cp l
    rst $28
    rst $20
    rst $38
    jp c, Jump_067_7bff

    db $fd
    adc c
    rst $38
    inc b
    ei
    sbc $21
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fd
    nop
    db $fd
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    cp a
    ld b, b
    ei
    inc b
    di
    inc c
    db $e3
    inc e
    rst $38
    nop
    ld c, $f0
    ld a, [hl]
    add c
    ret


    ccf
    ld a, c
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rrca
    ldh a, [$eb]
    nop
    cp $00

jr_067_54e6:
    ld hl, sp+$00
    ldh [rP1], a
    sub b
    nop
    db $e3
    nop
    rst $28
    nop
    cp $00
    rst $38
    nop
    ld a, [c]
    dec c
    ldh [$1f], a

jr_067_54f8:
    add b
    rst $38
    add $f9
    ccf
    ret nz

    cp $01
    db $fc
    inc bc
    call c, $df23
    jr nz, jr_067_54e6

    jr nz, jr_067_54f8

    db $10
    cp l
    nop
    rst $38
    add b
    ld a, a
    add b
    rst $30
    nop
    jr c, jr_067_551b

    pop af
    rrca
    jp c, $733d

    inc a
    pop af

jr_067_551b:
    ld a, [hl]
    ld a, c
    cp $43
    db $fc
    pop bc
    cp $43
    db $fc
    db $e3
    db $fc
    daa
    ld hl, sp+$07
    ld hl, sp+$2f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    dec c
    di
    inc bc
    rst $38
    rlca
    rst $38
    ld e, [hl]
    xor a
    ld l, h
    sbc a
    jr @+$01

    ld a, a
    rst $38
    rst $38
    rst $38

jr_067_5542:
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld [c], a
    db $fd
    or $f9
    cp $f1
    adc $f1
    sub $e1
    ld d, h
    db $e3
    ld d, h
    db $e3
    inc h
    jp $836c


    ld h, h
    add e
    db $ec
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rlca
    rst $38
    ld c, $ff
    adc a
    rst $38
    dec bc
    rst $38
    ld e, c
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    cpl
    rst $38
    jp nz, $013d

    rst $38
    dec b
    ei
    ld b, l
    cp e
    push bc
    dec sp
    dec b
    ei
    ld b, $f9
    ld b, $f9
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    ld hl, $e0ff
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    ld a, $c1
    db $10
    rst $28
    ccf
    rst $38
    rra
    rst $38
    add hl, sp
    rst $38
    ld b, e
    cp a
    ei
    rlca
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $e3
    db $fc
    adc a
    ld hl, sp-$45
    db $fc
    ld b, [hl]
    ld hl, sp-$31
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    rst $20
    jr jr_067_5600

    jr c, jr_067_5542

    ld a, b
    ld b, $f8
    dec e

jr_067_55bf:
    ldh [$33], a
    ret nz

    rst $20
    ld bc, $0bd5
    adc b
    ld a, a
    jr @+$01

    inc bc
    db $fc
    rst $00
    jr c, jr_067_55bf

    nop
    ld a, a
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    ldh [$03], a
    nop
    adc h
    inc bc
    jr jr_067_55ed

    ld [hl], c
    ld c, $7f
    nop
    rst $38
    nop
    rst $38

jr_067_55ed:
    nop
    db $f4
    dec bc
    rst $28
    rra
    ld sp, hl
    rra
    rra
    rst $38
    rst $18
    rst $38
    dec c
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    sbc [hl]
    ld h, c

jr_067_5600:
    rra
    pop hl
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    ldh [rSB], a
    ret nz

    ld bc, $00c1
    cp $01
    cp b
    rst $38
    add hl, de
    rst $38
    rlca

jr_067_5617:
    rst $38
    add a
    ld a, a
    sub a
    ld l, a
    add a
    ld a, a
    sub a
    ld l, a
    rst $38
    rrca
    xor $1f
    db $fc
    rra
    db $fc
    rra
    ret c

    ccf
    cp b
    ld a, a
    cp [hl]
    ld a, l
    ld a, l
    cp $e3
    db $fc
    add a
    ld hl, sp-$7a
    ld sp, hl
    jr nz, jr_067_5617

    nop
    rst $38
    ld bc, $83ff
    rst $38
    add a
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
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
    ccf
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
    rrca
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    ld d, b
    rst $38
    ld c, a
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$2f]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$f8]
    rst $20
    ldh a, [$ef]
    ldh a, [$ef]
    ret nc

    rst $28
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    ld b, b
    rst $38
    ld a, [hl]
    rst $38
    jr c, @+$01

    jr c, @+$01

    sub b
    ld a, a
    ld [bc], a
    rst $38
    nop
    rst $38
    adc e
    rst $38
    ret z

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, c
    cp $00
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
    jr jr_067_56d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_067_56e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_067_56f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_067_5703

    ld [hl-], a

jr_067_56d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_067_5713

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_067_56e3:
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

jr_067_56f3:
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

jr_067_5703:
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

jr_067_5713:
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
    jr jr_067_57d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_067_57e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_067_57f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_067_5803

    ld [hl-], a

jr_067_57d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_067_5813

    ld a, [hl-]
    dec sp
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop

jr_067_57e3:
    nop
    nop
    nop
    ld b, $00
    ld bc, $0100
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101

jr_067_57f3:
    dec b
    dec b
    dec b
    ld bc, $0105
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0101

jr_067_5803:
    dec b
    dec b
    ld bc, $0105
    dec b
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0505

jr_067_5813:
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0501
    dec b
    dec b
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    dec b
    dec b
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101

Call_067_583f:
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0500
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0601
    dec b
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    dec b

Call_067_58bc:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    ld [$0909], sp
    add hl, bc
    dec c
    add hl, bc
    add hl, bc
    dec c
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

Call_067_5900:
jr_067_5900:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

Call_067_5907:
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
    rst $38
    nop
    rst $30
    jr jr_067_5900

    inc a
    sub a
    ld a, h
    ld h, e
    sbc a
    ld [$0217], a
    rst $38
    and l
    ei
    ei
    push hl
    ld a, e
    push hl
    dec a
    db $e3
    dec e
    db $e3
    add a
    ei
    sbc a
    rst $28
    ld a, [hl]
    adc a
    ld b, [hl]
    cp a
    ret


    scf
    cp $01
    sbc $21
    call c, $f623
    dec hl
    ld [hl], a
    ld a, [hl+]
    ld [hl], c
    ld a, $f0
    ccf
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $38
    rst $20
    ld a, a
    rst $30
    ld a, a
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    di
    rst $28
    di
    rst $28
    di
    dec l
    di
    ld c, l
    inc sp
    rst $38
    ld bc, $05fb
    jp hl


    rlca
    ld hl, sp+$07
    db $dd
    ld [hl+], a
    sbc a
    ld h, b
    cp d
    push hl
    cp e
    db $e4
    dec sp
    db $e4
    ld [hl], a
    db $fc
    ld [hl], h
    cp $e7
    or $e6
    or $e7
    and $e5
    rst $20
    add l
    push hl
    adc c
    db $ed
    adc c
    reti


    rst $10
    ld sp, hl
    pop de
    ld a, a
    dec sp
    rst $10
    dec hl
    rst $10
    jp c, Jump_067_7eb5

    sub c
    ld a, [c]
    dec e
    ret nc

    ccf
    sbc $20
    ld c, h
    and d
    ld c, a
    and e
    ld [hl], e
    adc a
    inc a
    rst $00
    cpl
    ret nz

    cpl
    ret nz

    ld a, [bc]
    db $e4
    ldh a, [$ef]
    jp $80ff


    rst $38
    add b
    rst $38
    add d
    db $fd
    jp $83fc


    db $fc
    jp nz, $0bfd

    ldh a, [$83]
    ld hl, sp-$0f
    ld hl, sp-$19
    ld sp, hl
    db $e3
    rst $38
    jp hl


    rst $30
    xor $f1
    xor $f1
    db $e4
    ld sp, hl
    pop hl
    ld hl, sp-$20
    ld sp, hl
    db $f4
    ld sp, hl
    ldh a, [$fd]
    or c

jr_067_59db:
    db $fc
    jr nc, jr_067_59db

    scf
    ld hl, sp+$36
    ld sp, hl
    inc [hl]
    ld a, e
    or [hl]
    ld a, c
    or a
    ld a, b
    pop hl
    ld a, $9f
    ld a, a
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
    cp a
    rst $38
    sub a
    rst $38
    ld bc, $00ff
    rst $38
    ret nc

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38

Jump_067_5a05:
    rst $38
    xor a
    rst $38
    inc bc
    rst $38
    rst $18
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
    cp a
    rst $38
    jr z, @+$01

    ld e, a
    rst $38
    cp [hl]
    rst $38
    db $fd
    rst $38
    rrca
    rrca
    ld e, $0f
    sbc [hl]
    rrca
    adc $1f
    sbc $1f
    ld e, [hl]
    sbc a
    cpl
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add e
    rst $38
    add a
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    add a
    ld a, a
    adc c
    ld a, a
    ld hl, $31ff
    rst $38
    cp c
    ld a, a
    ld a, [$bf7d]
    ld a, a
    ld a, l
    rst $38
    ld [hl], c
    rst $38
    ccf
    rst $38
    rst $18
    cp a
    di
    sbc a
    di
    rra
    ei
    rra
    sub a
    ld a, a
    rst $10
    ccf
    sbc a
    ld a, a
    sbc a
    ld a, a
    cp b
    ld a, a
    and [hl]
    ld a, c
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $69
    cp $6d
    rst $38
    and $7f
    ldh a, [$6f]
    ld h, b
    rst $38
    and e
    rst $38
    cp a
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld a, $ff
    jr c, @+$01

    xor h
    ld a, a
    cp b
    ld a, a
    jr c, jr_067_5b11

    jr nc, jr_067_5b13

    ld sp, $3f7e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $7f
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    cp a
    ld a, a
    rst $38
    ccf
    ld h, e
    ccf
    ld b, e
    ccf
    ld [c], a
    ccf
    jp $c33f


    ccf
    rst $08
    ccf
    rst $18
    ccf
    rst $10
    ccf
    rst $18
    ccf
    inc bc
    ccf
    inc bc
    ccf
    ld l, $31
    ld b, b
    cp a
    add hl, hl
    ret nc

    ld b, e
    sbc b
    ld h, e
    sbc h
    ld l, a
    sub b
    ldh a, [rP1]
    call z, $9833
    rst $38
    nop
    rst $38
    jr @+$01

    nop
    rst $38
    dec de
    db $e4
    dec c
    ld a, [c]
    ld d, $e1
    rlca
    ld hl, sp-$40
    rst $38
    nop
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    add a
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_067_5b11:
    rst $38
    rst $38

jr_067_5b13:
    rst $38
    rst $38
    rst $38
    call nz, Call_000_10ff
    rst $38
    ret nz

    rst $38
    ld h, c
    rst $38
    db $e3
    rst $38
    ld a, a
    rst $38
    dec de
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld c, $ff
    jr @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    add l
    ei
    ld bc, $25ff
    db $db
    cp c
    rst $18
    xor l
    rst $18
    adc [hl]
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $30
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    adc a
    rst $30
    rst $00
    cp a
    sub e
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    inc b
    rst $38
    ld b, h
    cp a
    ret nz

    ccf
    cp h
    ld b, e
    cp b
    ld b, a
    ldh a, [rIF]
    ld sp, $67cf
    sbc c
    inc b
    ld sp, hl
    pop bc
    rst $38
    add $ff
    rst $00
    rst $38
    db $e3
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $40ff
    rst $38
    ld c, h
    rst $38
    ld a, [hl]
    rst $38
    ccf
    cp $3a
    rst $38
    ld a, [hl-]
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld [hl+], a
    rst $38
    ld h, $ff
    ld h, $ff
    ld l, a
    rst $38
    rst $28
    rst $38
    db $ed
    rst $38
    call z, $ccff
    rst $38
    ret nc

    rst $38
    jr nz, @+$01

    ld [bc], a
    db $fd
    add b
    rst $38
    add b
    rst $38
    pop bc
    ccf
    nop
    rst $38
    nop
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    cpl
    rst $38
    ld a, e
    rst $38
    rst $20
    rst $38
    ld [hl], a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    add h
    ld a, e
    db $fc
    inc bc
    ld a, h
    inc bc
    rst $38
    nop
    jr c, @-$37

    ld bc, $88fe
    rlca
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    dec c
    cp $03
    db $fc
    and c
    ld e, [hl]
    add b
    ld a, a
    ld a, b
    rst $38
    and b
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    adc b
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
    ld a, a
    rst $38
    ld a, [hl+]
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    or e
    rst $38
    ld l, e
    rst $38
    ccf
    rst $38
    jp $c3ff


    rst $38
    add $ff
    ld b, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld [hl], b
    rst $38
    ld [hl], h
    ei
    db $10
    ei
    ld b, $f9
    ld c, b
    cp a
    ld b, h
    cp a
    add c
    cp $f6
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    push af
    ei
    push hl
    ei
    db $f4
    ei
    cp $f9
    or $f9
    rst $30
    ld hl, sp-$40
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ret nc

    ccf
    ret nc

    ccf
    ret nc

    ccf
    ld e, b

jr_067_5c63:
    cp a
    ld a, [$1a1f]
    rst $38
    add hl, de
    rst $38
    dec bc
    rst $38
    inc bc

jr_067_5c6d:
    rst $38
    dec de
    rst $38
    rst $38
    rst $38
    and e
    rst $38
    ld de, $0fff
    ld sp, hl
    rlca

jr_067_5c79:
    ld sp, hl
    rrca
    pop af
    dec c
    di
    db $dd
    db $e3
    call $cdf3
    di
    rst $08
    di
    ld e, d
    rst $20
    sbc d
    rst $20
    jr z, jr_067_5c63

    jr nz, jr_067_5c6d

    ld b, [hl]
    cp a
    ld e, a
    cp a
    ccf
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38

jr_067_5ca9:
    rst $38
    ld a, a
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    ld l, e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    dec hl
    ldh a, [$c4]
    dec sp
    ldh a, [rIF]
    ld h, [hl]
    sbc b
    ld c, l
    or b
    ld b, b
    ccf
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_067_5ca9

    ccf
    rst $38
    inc c
    di
    rst $08
    jr nc, jr_067_5c79

    ld h, a
    rst $00
    ccf
    ld a, c
    rst $38
    nop
    rst $38
    inc [hl]
    set 0, c
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $3fff
    rst $38
    cp $ff
    add b
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    inc bc
    rst $38
    adc a
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
    ld [$00ff], a
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    nop
    rst $38
    add e
    rst $38
    sub c
    rst $28
    ld l, a
    rst $38
    ccf
    rst $38
    ld b, $ff
    rlca
    rst $38
    rrca
    rst $38
    add hl, bc
    rst $38
    ld de, $20ff
    rst $38
    jr nz, @+$01

    ld sp, $25ff
    ei
    ld hl, $31ff
    rst $38
    ei
    db $fd
    db $fc
    rst $38
    xor $ff
    db $e3
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], d
    db $fd
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    jr c, @+$01

    add hl, sp
    cp $3a
    db $fd
    ld a, [hl-]
    db $fd
    cp d
    db $fd
    ld e, $fd
    dec de
    db $fc
    sbc e
    db $fc
    adc [hl]
    db $fd
    call z, $fcff
    rst $38
    sbc e
    rst $38
    add h
    ei
    cp b
    rst $38
    cp c
    cp $bd
    ld a, [$fef9]
    cp c
    cp $b8
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $10
    rst $28
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    nop
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $38
    db $fc
    rst $38
    cp $ff
    xor $ff
    adc $ff
    jp nz, Jump_067_50ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    cp $ff
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    and e
    rst $38
    ld b, d
    rst $38
    jp nz, $c2ff

    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    rst $00
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ld sp, hl
    and $72
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    ld bc, $40fe
    rst $38
    cp h
    ld a, a
    sbc $3f
    ld e, a
    and b
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    ld bc, $00ff
    rst $38
    ld [$ffff], sp
    rst $38
    push bc
    rst $38
    nop
    rst $38
    ld l, a
    rst $38
    cp $ff
    rst $20
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    nop
    rst $38
    ld hl, sp-$01
    jp z, $a0ff

    rst $38
    ld d, $ff
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
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    db $dd
    rst $38
    db $eb
    db $fc
    set 7, h
    and c
    db $fc
    ld bc, $04fc
    ld sp, hl
    nop
    db $fd
    di
    db $fd
    push af
    rst $38
    push hl
    ei
    push af
    ei
    and $f9
    ld [$ebf4], a
    db $f4
    rst $28
    ldh a, [rNR10]
    ldh [$0c], a
    ldh [rDIV], a
    add sp, $10
    db $ec
    inc e
    db $e3
    dec l
    jp nc, $c299

    adc e
    ret nz

    nop
    pop bc

jr_067_5e52:
    inc b
    pop bc
    nop
    pop bc
    ld [bc], a
    pop bc
    cp b
    jp $cbe4


    add hl, hl
    add $39
    add $74

jr_067_5e61:
    add e
    ld b, c

jr_067_5e63:
    add b
    ld hl, $21c0
    ret nz

    dec hl
    ret nz

    ld [$4ae2], sp
    ldh a, [$37]
    ldh a, [$c7]
    ldh a, [$2f]
    ldh a, [rIF]
    ldh a, [rNR31]
    ldh [$5c], a
    and c
    cp c
    ld b, b
    ld e, b
    and c
    jr jr_067_5e61

    jr jr_067_5e63

    add h
    pop hl
    ld d, l
    ldh [rNR22], a
    ldh [$74], a
    add b
    dec [hl]
    ret nz

    add hl, sp
    ret nz

    add hl, sp
    ret nz

    jr c, jr_067_5e52

    ld d, l
    ld [$ff78], a
    inc e
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    inc de
    rst $28
    ld sp, $21cf
    db $db
    and b
    db $d3
    db $10
    ld sp, hl
    sub b
    ld sp, hl
    ret nc

    ld hl, sp-$10
    ld hl, sp-$80
    ld a, [$fb40]
    ld b, b
    ei
    nop
    ld sp, hl
    ld d, b
    ld sp, hl
    db $10
    ld sp, hl
    add b

jr_067_5eb9:
    ld a, [$fe00]
    ld [$2cff], sp
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    rst $00
    jr c, jr_067_5ecf

    db $fd
    nop

jr_067_5ecf:
    rst $38
    jr jr_067_5eb9

    ccf
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    add b
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    inc bc
    rst $38
    ld e, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub c
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp h
    rst $38
    jr @+$01

    dec c
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    ld e, a
    rst $38
    ld hl, sp-$01
    and d
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_067_5f19:
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $bfff
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld h, a
    rst $38
    nop
    rst $38
    rra
    ldh [rNR34], a
    pop hl
    db $d3
    rst $38
    rst $38
    rst $00
    ccf
    jp $c3bd


    sbc $c1
    cp $01
    db $fc
    inc bc
    call c, $f303
    inc c
    di
    inc c
    ei
    inc b
    ccf
    ret nz

    dec [hl]
    jp z, $c8b7

    rst $30
    ret z

    rst $00
    ld hl, sp-$14
    ld sp, hl
    adc $fd
    db $fd
    rst $08
    cp e
    rst $08
    cp a
    sla [hl]
    db $db
    ld a, [hl]
    sub e
    adc $33
    ccf
    ld [c], a
    inc sp
    xor $d7
    cpl
    sub $2f

jr_067_5f68:
    sbc h
    ld h, e
    cp [hl]
    ld h, c
    xor a
    ld [hl], b
    db $eb
    ld [hl], h
    sbc h
    ld b, b
    call c, Call_067_5900
    add [hl]
    ldh a, [rIF]
    jr z, jr_067_5f19

    ccf
    add b
    cp $00
    sbc $00
    ld e, a
    add b
    dec de
    call nz, $c45b
    rlca
    db $10
    ld a, [hl-]
    ld bc, $002b
    rrca
    nop
    daa
    nop
    rlca
    jr nz, jr_067_5f68

    ld [hl+], a
    ld [de], a
    rst $28
    ld l, d
    sbc a
    ld a, [c]
    rrca
    push af
    ld a, [bc]
    ld d, l
    adc d
    ld c, [hl]
    sbc b
    inc l
    sbc e
    ld h, h
    sbc e
    ld l, $d1
    ld a, [hl]
    add c
    cp $01
    xor h
    inc bc
    adc a
    nop
    inc e
    inc bc
    ld l, e
    sbc a
    rra
    rst $38
    ld e, h
    rst $38
    ld a, c
    cp $80
    rst $38
    rst $30
    rst $38
    ld [c], a
    rst $38
    nop

Jump_067_5fbf:
    rst $38
    nop
    nop
    nop
    ld bc, $0200
    xor $01
    or [hl]
    ld bc, $0196
    nop
    rst $38
    add a
    ld a, b
    nop
    rst $38
    ld a, $ff
    inc hl
    db $fc
    di
    db $fc
    ldh [rIE], a
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
    adc a
    rst $38
    ld [$f8ff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld b, b
    rst $38
    adc b
    rst $38
    ld [hl], c
    rst $38
    cpl
    rst $38
    dec e
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    and b
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
    sbc a
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    adc [hl]
    pop af
    ld c, $f1
    inc e
    db $e3
    ld b, d
    rst $38
    jp hl


    cp $e0
    cp $f1
    cp $79
    cp $11
    xor $37
    ret z

    ld [hl+], a
    call c, Call_000_1ce3
    ld de, $8b0f
    rlca
    add e
    inc c
    add e
    inc e
    inc a
    inc bc
    ld [$0237], sp
    scf
    ld [$7b37], sp
    inc b
    inc de
    inc c
    inc de
    inc c
    rla
    nop
    sub d
    ld bc, $0102
    ld h, a
    add b
    inc bc
    db $e4
    ld [c], a
    dec e
    ld h, d
    dec e
    or [hl]
    rrca
    ld a, $0f
    inc c
    rra
    adc d
    dec e
    db $e3
    inc e
    jp Jump_067_433c


    inc a
    ld [hl], b
    rrca
    jr c, jr_067_6077

    ld h, b
    rra
    ld h, b
    rra
    ret nc

    cpl
    add d

jr_067_6077:
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    push hl
    rra
    and b
    ld e, a
    jr nc, @-$1f

    inc sp
    rst $18
    ld [$621f], a
    sbc a
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ld l, c
    sub a
    dec bc
    rst $38
    ld h, e
    rst $38
    or c
    ld a, a
    pop af
    ccf
    push de
    dec sp
    pop de
    ccf
    add c
    ld a, a
    add e
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add a
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld hl, sp-$01
    ld [hl], a
    rst $38
    nop
    rst $38
    rst $00
    ccf
    nop
    rst $38
    ld bc, $1eff
    rst $38
    sub b
    rst $28
    rrca
    ldh a, [rPCM12]
    ld hl, sp-$01
    nop
    inc de
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    nop
    rst $38
    ld sp, hl
    ld b, $6f

jr_067_60d1:
    add b
    ld a, $c0
    sbc a
    ld h, b
    adc a
    ld [hl], b
    rra
    ldh [$7e], a
    add c
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld c, $ff
    ld a, $ff
    ldh [rIE], a
    db $fd
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
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
    ld h, b
    sbc a
    ld [hl+], a
    db $fd
    db $ec
    pop af
    ld a, $c1
    ld b, b
    rst $38
    add c
    ld a, [hl]
    ld d, [hl]
    jr nz, jr_067_60d1

    ld a, h
    and c
    ld e, $a3
    inc e
    db $ec
    db $10
    inc d
    dec bc
    pop bc
    ld a, $c5
    ld hl, sp+$60
    rst $38
    add c
    ld a, [hl]
    db $76
    ld bc, $01d2
    ld a, $c1
    jr c, @-$37

    inc c
    rst $38
    ld e, h
    rst $38
    inc a
    rst $38
    jr nc, @+$01

    ld b, e
    cp a
    ld b, a
    cp a
    rlca
    rst $38
    inc b
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    add c
    ld a, a
    ld [bc], a
    rst $38
    ld h, c
    cp $65
    ld a, [$77f8]
    ld c, b
    rst $30
    ld d, h
    db $e3
    rla
    ldh [rHDMA3], a
    ldh [rBGP], a
    ldh [rSB], a
    ld [c], a
    inc b
    db $e3
    ld h, [hl]
    sbc a
    ld e, [hl]
    xor a
    sbc d
    rst $20
    sub h
    db $e3
    inc d
    db $e3
    ld bc, $07fe
    cp $8e
    rst $38
    xor a
    rst $18
    ld a, [hl+]
    rst $18
    inc [hl]
    db $e3
    add hl, de
    and $1d
    ld [c], a
    call c, $e8e3
    rst $30
    jp hl


    rst $30
    db $e3
    db $fc
    add b
    rst $38
    jp nz, $c2fd

    rst $38

Jump_067_619e:
    jp $ffff


    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    rst $28
    rst $38
    ldh [rIE], a
    jp Jump_000_1bff


    rst $38
    add hl, bc
    rst $38
    pop af
    rrca
    di
    rrca
    ldh [$1f], a
    inc bc
    db $fc
    ret


    ld a, $6f
    sbc a
    sbc b
    rlca
    db $fc
    inc bc
    ldh a, [rP1]
    rst $30
    nop
    rst $20
    jr jr_067_61ed

    rst $38
    dec bc
    ldh a, [$8f]
    ldh a, [rTAC]
    rst $38
    pop af
    rrca
    sbc [hl]
    ld bc, $3f40
    sbc a
    nop
    ld h, h
    sbc e
    di
    nop
    ld c, $f0
    ldh a, [rIE]
    rst $00
    ld hl, sp-$1d
    db $fc
    ldh [rIE], a
    rst $30
    ld hl, sp-$0f
    cp $fc
    rst $38
    rlca
    rst $38
    nop

jr_067_61ed:
    rst $38
    nop
    rst $38
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
    db $fc

Call_067_61f7:
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rra
    rst $38
    ld e, $ff
    rst $38
    rst $38
    rst $08
    rst $38
    inc bc
    rst $38
    ld c, $ff
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a

jr_067_620d:
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    db $e3
    sbc a
    xor l
    sbc $83
    db $fc
    rra
    ldh [$df], a
    ldh [$db], a
    ldh [$9f], a
    ld h, b
    db $db
    ld h, b
    ld c, $f0
    dec sp
    call nz, Call_000_02fd
    rra
    db $e4
    db $e3
    inc e
    rst $28
    rst $38
    sub e
    rst $28
    rra
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    jr c, jr_067_620d

    ld a, d
    add a
    ld d, a
    xor a
    rrca
    rst $38
    nop
    rst $38
    add l
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld [hl], c
    rst $38
    rlca
    rst $38
    ld b, e
    cp a
    ld bc, $3fff
    rst $38
    xor a
    ld a, a
    ld a, a
    cp a
    xor l
    ld a, a
    ld sp, $18ee
    rst $20
    ld [bc], a
    db $fd
    adc l
    ld [hl], b
    db $eb
    db $10
    rla
    ld hl, sp+$7b
    db $fc
    rst $20
    db $fc
    db $e4
    ei
    db $ec
    ei
    ldh [rIE], a
    db $e4
    ei
    push hl
    ei
    rrca
    ldh a, [$9b]
    ld h, h
    ld e, $e1
    dec d
    ld [$e11e], a
    sub d
    ld h, c
    sub a
    ld h, b
    and c
    ld l, [hl]
    cp b
    ld h, a
    inc e
    db $e3
    ld [de], a
    db $ed
    cpl
    pop af
    inc c
    di
    inc c
    di
    ld hl, $60fe
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    sbc $ff
    ld h, e
    rst $38
    inc b
    rst $38
    ei
    rst $38
    nop
    rst $38
    db $fd
    inc bc
    ld e, [hl]
    add c
    ld bc, $1dfe
    cp $79
    add [hl]
    ld a, a
    nop
    ld a, e
    inc b
    swap h
    ccf
    cp $67
    sbc a
    call c, Call_000_1f03
    ldh [$83], a
    db $fc
    pop af
    or $ff
    di
    rst $38
    ld b, b
    rst $28
    rst $10
    rst $38
    inc bc
    rrca
    ret nz

    call $ffb2
    rlca
    ret z

    ccf
    inc bc
    db $fc
    ldh [$1f], a
    ldh [$1f], a
    nop
    rst $38
    ld c, a
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
    inc bc
    rst $38
    ld bc, $b0ff
    rst $38
    add sp, -$01
    nop
    rst $38
    ld a, [$ffff]
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld c, $ff
    inc e
    rst $38
    add sp, -$01
    ld [bc], a
    db $fd
    ld l, e
    sub h
    cp e
    ld b, h
    cp e
    ld b, h
    di
    inc c
    ld a, c
    add [hl]
    rst $20
    nop
    push af
    inc bc
    db $fd
    inc bc
    rst $18
    ld hl, $b54b
    daa
    rst $18
    jp $c5bf


    cp e
    ret


    cp a
    ld d, $89
    cp $01
    ret nz

    ccf
    rst $00
    jr c, @+$0a

    rst $30
    sub b
    rst $28
    add b
    rst $38
    add b
    rst $38
    jp nz, $e2ff

    rst $38
    and a
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rst $08
    rst $38
    db $fc
    rst $38
    adc l
    rst $38
    adc h
    rst $38
    add b
    rst $38
    or l
    ld c, [hl]
    ld bc, $d7fe
    xor $e3
    inc e
    or b
    ld c, a
    rst $18
    ld h, b
    dec de
    db $e4
    db $fd
    nop
    rst $28
    db $10
    ld [$e8ff], sp
    dec e
    jp hl


    inc e
    add e
    ld a, h
    ei
    inc b
    add l
    ld a, d
    ld bc, $3ffe
    ret nz

    nop
    rst $38
    ld [$07ff], sp
    ld hl, sp+$00
    rst $38
    ld e, $ff
    rra
    cp $92
    rst $38
    sub b
    rst $38
    db $10

jr_067_6399:
    rst $38
    ldh a, [rIF]
    di
    inc c
    ld b, $f9
    ldh a, [rIE]
    rst $38
    rst $38
    ccf
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    jr c, @+$01

    db $f4
    rst $38
    jr @+$01

    add b
    rst $38
    jr nz, jr_067_6399

    cp l
    ld [bc], a
    rst $08
    nop
    cp h
    inc bc
    sbc d
    rlca
    ld [hl], e
    add b
    reti


    ld h, b
    call c, Call_000_2323
    ret nz

    ld e, h
    add e
    db $e3
    rra
    ldh a, [rIF]
    inc c
    ldh [$b7], a
    ld [$ff1e], sp
    cp l
    cp $ff
    nop
    rst $38
    nop
    cp a
    rst $38
    ldh a, [rIE]
    ccf
    ret nz

    rst $18
    jr nz, jr_067_63e5

jr_067_63e5:
    rst $38
    ld a, [de]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $28
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, b
    rst $38
    ld e, $ff
    rst $38
    rst $38
    rra
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    cpl
    rst $18
    rlca
    rst $38
    di
    rrca
    sbc a
    rst $38
    ret nc

    rst $28
    ret z

    rst $30
    or $f9
    ei
    rst $38
    daa
    rst $38
    ld sp, $3dff
    rst $38
    rra
    ldh [rIF], a
    ldh [$03], a
    db $fc
    ld l, b
    rst $30
    or $f9
    ld b, b
    cp a
    add b
    rst $38
    adc c
    rst $38
    add b
    rst $38
    db $dd
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    db $fc
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    ld bc, $f3ff
    inc c
    ldh a, [rIF]
    add hl, bc
    rlca
    pop hl
    rra
    db $e4
    dec de
    ld h, b
    sbc a
    ld b, e
    cp a
    inc bc
    rst $38
    ld a, c
    add [hl]
    add e
    rst $38
    adc a
    rst $30
    rst $20
    sbc a
    db $e4
    rst $38
    ld [hl], a
    add b
    add hl, sp
    add [hl]
    ld a, a
    add b
    xor $11
    add h
    ld a, e
    db $76
    adc c
    or [hl]
    ld c, c
    inc b
    rst $38
    ld b, $ff
    sub [hl]
    ld l, a
    ld l, [hl]
    rst $38
    ret nz

    ld a, a
    add d
    ld a, a
    ld d, b
    rst $38
    rrca
    ldh a, [$e0]
    rra
    inc bc
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    db $d3
    rst $38
    adc a
    rst $38
    ret c

    rst $38
    ld b, b
    rst $38
    ld bc, $40ff
    rst $38
    db $76
    adc c
    cp h
    jp $07f8


    or l
    rrca
    ld [hl], a
    add b
    cp h
    nop
    add h
    ld a, b
    ld e, c
    add [hl]
    rra
    nop
    db $e4
    inc bc
    ld h, d
    rst $38
    add b
    rst $38
    cp $01
    daa
    rra
    jr nz, @+$01

    di
    nop
    ccf
    nop
    db $fc
    inc bc
    daa
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    add c
    ld a, a
    rra
    rst $38
    rra
    rst $38
    ld a, a
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
    ld e, a
    rst $38
    ldh a, [rIE]
    ld bc, $07ff
    rst $38
    ld a, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    call c, $efff
    rst $38
    ld c, a
    rst $38
    ld h, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    ld a, a
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
    rra
    rst $38
    rst $18
    ccf
    call nc, $ab3b
    ld [hl], b
    inc b
    ld hl, sp+$3d
    cp $5f
    rst $38
    ld a, a
    rst $38
    rrca
    pop af
    ld a, [c]
    ld bc, $00ff
    jp $943c


    ld l, e
    ld b, b
    rst $38
    ld a, [hl]
    rst $38
    add b
    rst $38
    ret


    rst $30
    di
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    ld a, [hl-]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    or b
    rst $38
    jr nz, @+$01

    adc b
    ld [hl], a
    dec de
    rst $20
    add hl, de
    rst $20
    dec a
    jp $c71b


    or c
    ld c, a
    ld hl, $fbcf
    rlca
    ld a, e
    rlca
    sla a
    ld a, b
    add a
    ld [hl], b
    add a
    db $76
    add e
    ld a, e
    add a
    db $e3
    rra
    ld [hl], l
    adc e
    dec a
    jp $f70b


    add e
    ld a, a
    add e
    ld a, a
    inc bc
    rst $38
    ld l, b
    rst $30
    ret nz

    ld a, a
    ld h, e
    rst $38
    ld h, c
    rst $38
    inc bc
    rst $38
    db $e3
    rra
    ld hl, sp+$07
    add hl, de
    rst $20
    rst $38
    rst $38
    ld a, a
    rst $38
    xor a
    rst $38
    jr z, @+$01

    pop hl
    rst $38
    ld b, e
    rst $38
    cp $ff
    ld b, c
    cp $04
    ei
    db $ed
    ld a, [c]
    ld a, a
    add b
    sbc a
    ld h, b
    cp a
    nop
    nop
    rst $38
    ld a, [c]
    db $fd
    adc b
    ld [hl], b
    ld a, b
    nop
    inc a
    nop
    xor $11
    jr c, @+$01

    cp c
    cp $fc
    rst $38
    jr nz, @+$01

    nop
    rst $38
    sub b
    ldh [rNR12], a
    call z, $df20
    ld hl, sp+$07
    db $10
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    inc c
    di
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
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    jr c, @+$01

    dec e
    rst $38
    add a
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld b, $ff
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
    or b
    rst $38
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld h, e
    sbc [hl]
    dec a

jr_067_6623:
    add $d8
    db $fd

jr_067_6626:
    pop af
    ld hl, sp-$07
    ldh a, [$f0]
    ldh a, [$f0]
    di
    jr nc, jr_067_6623

    db $e3
    di
    ld l, b
    di
    add h
    ld a, e
    jp $883c


    ld [hl], h
    inc b
    ld hl, sp-$70
    ret z

    ld b, b
    add b
    cp a
    ret nz

    cp a
    ret nz

    cp h
    jp $c0bf


    cp $81
    ld a, $c1
    ld de, $1def
    and $4a
    add h
    ld b, e
    adc h
    ld l, b
    adc h
    pop hl
    inc c
    jr nc, jr_067_6626

    sub h
    ld l, b
    cp b
    ld h, d
    dec bc
    ldh a, [$8e]
    pop af
    cp [hl]
    pop bc
    xor a
    ret nc

    xor d
    call nc, $f48a
    inc bc
    db $fc
    ld e, e
    db $e4
    ld e, a
    ldh [$3f], a
    ret nz

    inc sp
    call z, $fc03
    pop bc
    cp $e0
    rst $38
    ld sp, $30fe
    cp $20
    cp $f1
    cp $e3
    db $fc
    db $e3
    db $fd
    pop hl
    rst $38
    rst $00
    ld hl, sp+$23
    db $fc
    and e
    db $fc
    ld h, $f8
    dec h
    ld a, [$fc2b]
    jr z, @+$01

    ld [$05ff], sp
    ei
    push bc
    ei
    ld e, l
    ei
    jr nc, @+$01

    add hl, hl
    rst $38
    ldh [rIE], a
    ld [c], a
    db $fd
    ld [$eaf5], a
    push af
    jp hl


    or $ea
    push af
    add $39
    ld a, a
    rst $38
    rst $08
    rst $38
    inc bc
    rst $38
    inc hl
    rst $18
    and e
    ld e, a
    ccf
    rst $38
    ld h, a
    rst $38
    inc bc
    rst $38
    ld h, b
    rst $38
    dec [hl]
    ld a, [$e59a]
    jr @+$01

    ld [$09ff], sp
    rst $38
    db $e3
    rst $38
    ld bc, $06ff
    ld bc, $036c
    ld [bc], a
    db $fd
    add b
    rst $38
    inc a
    jp $ff40


    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38

jr_067_670e:
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    jr nz, @+$01

    nop
    or $01
    ld h, $01
    rlca
    ld h, c
    ld h, l
    inc bc
    ld [hl], c
    inc bc
    cp c
    inc bc
    add hl, de
    add e
    ld e, e
    add c
    ld e, $c1
    inc a
    jp Jump_067_619e


    rrca
    jr nc, @+$11

    jr nc, @+$61

    jr nz, @-$30

    jr nz, jr_067_670e

    jr nz, @-$34

    jr nz, @-$2c

    jr nz, jr_067_6789

    or b
    add hl, sp
    ldh a, [rIE]
    ld [hl], b
    ld h, d
    ld a, l
    ld d, e
    ccf
    ld de, $0d3f
    ld [hl-], a
    inc l
    inc bc
    adc $21
    xor [hl]
    ld b, c
    add hl, de
    push bc
    jr jr_067_67a5

    dec e
    ld b, b
    ld l, d
    nop
    ld c, l
    ld [hl+], a
    dec h
    ld [hl+], a
    ld bc, $2032
    inc de
    db $eb
    dec d
    adc l
    ld d, b
    adc $50
    sbc a
    ld h, b
    db $db
    inc h
    ld a, a
    add b
    xor a
    nop
    xor [hl]
    nop
    ld b, $00
    ld c, a
    nop
    sub b
    ld l, a
    inc bc
    db $fd
    add e
    db $fd
    add l
    rst $38
    ret nz

jr_067_6789:
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld bc, $fdff
    nop
    ld e, e
    add h
    ld d, e
    adc h
    pop bc
    ld e, $fa
    rra
    ret nz

    ccf
    call nz, $f33f
    dec c
    ld hl, sp+$0f
    ld a, [bc]
    cp l
    ld c, e

jr_067_67a5:
    cp h
    ld l, e
    cp h
    dec hl
    db $fc
    dec bc
    db $fc
    ld [$d4ff], sp
    xor a
    ld [hl], b
    adc a
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld b, [hl]
    cp c
    ld b, $f9
    rla
    add sp, $14
    db $eb
    add a
    ld hl, sp-$41
    ld b, b
    rst $38
    nop
    call $ec3a
    rra
    rst $30
    ld c, $19
    and $18
    rst $20
    ld a, [hl]
    add c
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
    ret nz

    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    pop hl
    rst $38
    rst $10
    rst $38
    rrca
    rst $38
    ld l, $ff
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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
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
    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    ldh [rIE], a
    ld sp, hl
    rst $38
    cp a
    rst $38
    add c
    ld a, [hl]
    ld bc, $01fe
    cp $01
    cp $21
    cp $21
    cp $51
    cp [hl]
    ld d, b
    cp a
    ld c, d
    cp a
    db $eb
    sbc a
    rst $20
    sbc a
    and c
    rst $18
    sub e
    rst $08
    sub c
    rst $08
    or e
    rst $08
    inc sp
    rst $08
    inc sp
    rst $08
    ld a, [$f947]
    ld b, [hl]
    push af
    ld c, d
    sub l
    ld l, d
    sbc c
    ld h, [hl]
    ld a, b
    rst $20
    ld a, [hl+]
    push af
    rst $28
    ld sp, $bf41
    ld d, h
    cp e
    ld h, h
    sbc e
    db $e4
    sbc e
    and h
    db $db
    and h
    db $db
    or b
    rst $08
    ld [hl], b
    rst $08
    or h
    bit 6, b
    rst $08
    ld [hl], l
    rst $08
    ld a, [c]
    ld c, l
    ld [$45df], sp
    sbc a
    db $ed
    rra
    ld l, [hl]
    rra
    cpl
    sbc $0f
    sbc $05
    sbc $1d
    sbc $bb
    sbc $b9
    sbc $f9
    sbc [hl]
    db $dd
    cp [hl]
    ld e, l
    cp [hl]
    sbc l
    ld [c], a
    ld l, c
    sub [hl]
    ld l, c
    sub [hl]
    ld l, c
    sub [hl]
    ld l, c
    sub [hl]
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], a
    adc a
    ld e, e
    and a
    jp Jump_067_5fbf


    cp a
    rra
    rst $38
    sub a
    ld a, a
    rla
    rst $38
    ld b, a
    cp a
    rst $00
    ccf
    add l
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    ld e, a
    and a
    ld a, a
    add a
    rlca
    rst $38
    rrca
    rst $38
    ld e, a
    cp a
    ld e, l
    cp a
    inc e
    rst $38
    ld e, l
    cp a
    ld c, [hl]
    cp a
    rst $00
    ccf
    ld h, b
    sbc a
    ldh [$1f], a
    ld h, d
    sbc a
    ld b, b
    cp a
    add b
    rst $38
    ld [$90f7], sp
    rst $38
    sub $ff
    ld [hl], l
    rst $38
    dec [hl]
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld bc, $03ff
    rst $38
    ld e, $ff
    ld [bc], a
    rst $38
    ld d, e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
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
    jp nz, Jump_000_07ff

    rst $38
    ccf
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    db $db
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    di
    ld [$19f7], sp
    and $19
    and $b6
    ld c, a
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    nop
    rst $38
    ld b, b
    rst $38
    ld [c], a
    db $fd
    ldh [rIE], a
    add c
    cp $83
    db $fc
    add e
    db $fc
    ld hl, sp-$01
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    add hl, hl
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    add hl, sp
    rst $38
    and $39
    ld de, $17ff
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    rla
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$8cff], sp
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    pop bc
    ccf
    add c
    ld a, a
    add c
    ld a, a
    add hl, bc
    ld [hl], a
    ld bc, $00ff
    ld l, a
    ld [$2877], sp
    ld [hl], a
    jr z, @-$07

    nop
    rst $38
    ld bc, $11ff
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    adc d
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld e, h
    cp a
    ld a, [de]
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc e
    rst $38
    ld a, [de]
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    cp c
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    or l
    rst $38
    or b
    rst $38
    or b
    rst $38
    and e
    rst $38
    di
    rst $38
    pop af
    rst $38
    or $ff
    ld a, [c]
    rst $38
    rst $30
    rst $38
    or $ff
    or $ff
    db $fc
    rst $38
    call c, $fcff
    rst $38
    ld hl, sp-$01
    push af
    rst $38
    db $ec
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    adc b
    rst $38
    db $f4
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$01ff], sp
    rst $38
    add b
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    rst $38
    ld l, h
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld de, $91ff
    rst $38
    sbc c
    rst $38
    add hl, de
    rst $38
    jr @+$01

    jr @+$01

    jr z, @-$1f

    inc l
    rst $18
    inc c
    rst $38
    ld c, h
    rst $38
    ld c, l
    rst $38
    add $ff
    add $ff
    add $ff
    add $ff
    call nz, $e0ff
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    or c
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
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
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    ld bc, $04ff
    rst $38
    inc e
    rst $38
    cp h
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    add c
    rst $38
    add c
    rst $38
    add a
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    ld d, a
    rst $38
    rst $00
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    cpl
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    add e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rst $08
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
    cp a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    db $f4
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, $ff
    rlca
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc h
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld c, $ff
    add hl, bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    di
    rst $38
    ld [hl], a
    rst $38
    ccf
    rst $38
    ccf
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    ccf
    rst $38
    rla
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    scf
    rst $38
    scf
    rst $38
    daa
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc $ff
    adc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    cp h
    rst $38
    or b
    rst $38
    cp h
    rst $38
    or h
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    pop hl
    rst $38
    di
    rst $38
    di
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    and e
    rst $38
    add e
    rst $38
    and e
    rst $38
    add a
    rst $38
    sub a
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    add a
    rst $38
    adc $ff
    ld l, $ff
    rrca
    rst $38
    rla
    rst $38
    cpl
    rst $38
    rst $28
    rst $38
    or $ff
    db $fc
    rst $38
    ret c

    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    cp c
    rst $38
    cp l
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    add [hl]
    rst $38
    nop
    rst $38
    di
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    ld a, h
    rst $38
    cp $ff
    cp a
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
    rst $28
    rst $38
    cp $ff
    call c, $ddff
    rst $38
    db $dd
    rst $38
    sbc [hl]
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ei
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $10
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $f4
    rst $38
    db $ec
    rst $38
    db $e4
    rst $38
    ret nz

    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    pop af
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    or $ff
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
    ld a, h
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    cp h
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    dec a
    rst $38
    dec a
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
    jr jr_067_6d43

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_067_6d53

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_067_6d63

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_067_6d73

    ld [hl-], a

jr_067_6d43:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_067_6d83

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_067_6d53:
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

jr_067_6d63:
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

jr_067_6d73:
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

jr_067_6d83:
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
    ld b, $06
    rlca
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0712
    rlca
    inc de
    rlca
    rlca
    inc d
    dec d
    ld d, $17
    jr jr_067_6e49

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_067_6e59

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
    jr nc, jr_067_6e79

    ld [hl-], a

jr_067_6e49:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_067_6e89

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_067_6e59:
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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

jr_067_6e79:
    ld bc, $0101
    nop
    dec b
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0100
    nop
    nop

jr_067_6e89:
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld bc, $0101
    nop
    ld bc, $0101
    dec b
    ld bc, $0105
    ld bc, $0101
    ld bc, $0605
    ld b, $01
    dec b
    ld b, $01
    dec b
    ld b, $05
    dec b
    ld bc, $0101
    ld bc, $0505
    dec b
    ld b, $01
    dec b
    ld b, $06
    ld b, $05
    dec b
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    ld b, $05
    ld bc, $0000
    nop
    ld b, $01
    dec b
    dec b
    ld bc, $0105
    dec b
    ld bc, $0105
    dec b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    ld bc, $0501
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0506
    ld b, $05
    dec b
    dec b
    ld b, $01
    dec b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0505
    dec b
    dec b
    dec b
    ld bc, $0601
    dec b
    ld bc, $0001
    nop
    ld b, $06
    dec b
    ld bc, $0105
    dec b
    dec b
    ld b, $01
    ld b, $01
    ld b, $06
    ld bc, $0606
    dec b
    dec b
    dec b
    dec b
    ld bc, $0501
    ld b, $01
    ld b, $01
    ld bc, $0101
    ld bc, $0506
    dec b
    dec b
    ld bc, $0501
    ld bc, $0505
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0605
    dec b
    ld bc, $0d0d
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    ld c, $0d
    dec c
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
    dec c
    dec c
    dec c
    dec c
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
    dec c
    ld [$0909], sp
    ld [$0809], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0d
    xor d
    rst $38
    cp b
    cp $50
    cp $ea
    or $f2
    cp $bd
    cp $1d
    cp $fd
    ld a, [hl]
    dec sp
    db $fc
    ld a, c
    cp $37
    ld hl, sp+$2e
    ldh a, [$32]
    db $fc
    ld a, b
    cp [hl]
    ld e, $fc
    ld a, $fc
    ld h, [hl]
    db $fc
    ld a, d
    db $e4
    ld [$f2f4], a
    db $fc
    xor d
    db $f4
    jp c, $d4e4

    db $ec
    db $f4
    call z, $fce8
    adc b
    db $fc
    sub h
    ld c, b
    ld b, l
    adc b
    ld hl, $a19c
    rra
    rst $20
    rra
    ld [bc], a
    rst $38
    ld l, $fb
    or a
    ld a, e
    ld hl, sp-$0d
    dec h
    ld a, [c]
    ld a, [hl-]
    inc d
    jr nz, jr_067_6ff8

jr_067_6fdc:
    db $10
    jr c, jr_067_7053

    jr c, jr_067_7051

    jr nz, jr_067_7033

    jr nz, jr_067_7025

    jr nz, jr_067_7027

    jr nz, @-$1e

    nop
    ld h, b
    nop
    ld b, b
    nop
    ld h, [hl]
    nop
    ld l, $40
    ld e, $60
    ld a, b
    nop
    ld a, b
    nop

jr_067_6ff8:
    sbc b
    ld h, b
    jr c, jr_067_6fdc

    ld [hl], b
    and b
    ld [hl], b
    and b
    dec hl
    db $f4
    ld h, c
    cp a
    ld a, a
    cp a
    rst $38
    ccf
    ccf
    rst $38
    ld a, [hl]
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    ld a, [c]
    db $fd
    ld a, [$fffd]
    ld hl, sp+$77
    ld hl, sp+$03
    db $fc
    rst $38
    nop
    rrca
    nop
    adc a
    nop
    ld sp, $f1cf
    rrca
    pop af

jr_067_7025:
    rrca
    pop hl

jr_067_7027:
    rra
    db $e3
    rra
    ld [c], a
    rra
    ld [c], a
    rra
    xor $1f
    db $10
    rrca
    ld a, [hl]

jr_067_7033:
    ld bc, $017f
    ld e, c
    daa
    ld b, [hl]
    ccf
    jp $073c


    ld hl, sp+$68
    ldh a, [rLCDC]
    ldh a, [$30]
    ldh [$b1], a
    ldh [$e7], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$d7], a
    add sp, -$2d
    db $ec
    rst $18

jr_067_7051:
    ldh [$df], a

jr_067_7053:
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$c6], a
    ldh [$c6], a
    ldh [$c6], a
    ldh [$fe], a
    ldh [$e7], a
    ld hl, sp-$1f
    cp $e0
    rst $38
    pop hl
    rst $38
    ld sp, hl
    rst $20
    ld a, a
    ldh [$5d], a
    ldh [$5e], a
    ldh [rNR32], a
    ldh [$9e], a
    ld h, b
    rst $38
    ld b, b
    add hl, sp
    ld b, b
    ld a, [$f840]
    ld b, b
    ld a, [hl]
    ret nz

    ld b, [hl]
    ld hl, sp-$1a
    ld hl, sp-$09
    ld hl, sp-$10
    rst $38
    sbc b
    rst $38
    ld e, h
    rst $38
    db $fc
    rst $38
    cp $ff
    ei
    inc a
    cp l
    ld a, [hl]
    sbc [hl]
    ld a, a
    ld e, $ff
    ccf
    rst $38
    ld e, a
    rst $38
    ldh a, [rIE]
    ld d, b
    rst $38
    ldh [rIE], a
    ld [c], a
    db $fd
    inc bc
    db $fc
    ld b, a
    cp b
    cp $81
    ccf
    pop bc
    sbc l
    ld h, e
    jr @-$17

    sbc e
    ld h, h
    add a
    ld a, b
    add l
    ld a, b
    call nz, $9439
    ld l, c
    call z, $fe31
    ld bc, $00ff
    push af
    nop
    rst $38
    nop
    rst $08
    nop
    di
    inc c
    cpl
    cp $dc
    rst $38

jr_067_70cc:
    ei
    db $fc

jr_067_70ce:
    and e
    db $fc
    add a
    ld hl, sp-$71
    ldh a, [rIF]
    ldh a, [$4e]
    pop af
    ld l, $f1
    ld a, [hl]
    and c
    dec bc
    ldh a, [$cb]
    jr nc, jr_067_70cc

    jr nc, jr_067_70ce

    db $10
    ei
    nop
    ld a, e
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    inc bc
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
    or a
    rst $38
    ld e, [hl]
    rst $38
    jp $f63c


    ld [$c036], sp
    or h
    ld b, b
    or a
    ld h, b
    ld e, a
    ldh [$5e], a
    ldh [$38], a
    ret nz

    ld [hl], b
    add b
    ret nz

    add b
    nop
    add b
    add b
    nop
    db $fd
    nop
    db $10
    rrca
    ld a, [bc]
    rlca
    add hl, bc
    ld b, $f4
    ld c, $1b
    db $fc
    rst $20
    ld hl, sp+$1f
    ldh [rIE], a
    nop
    cp $01
    ld a, $01
    ld a, [hl+]
    ld bc, $00e3
    adc b
    inc bc
    rst $38
    inc bc
    ld a, d
    rlca
    ldh a, [rIF]
    push af
    ld a, [bc]
    db $ec
    inc de
    rst $28
    db $10

jr_067_7150:
    ld l, $ff
    add b
    rst $38
    nop
    rst $38
    rst $20
    jr jr_067_7150

    ld [$01fe], sp
    xor $11
    rst $38
    nop
    nop
    nop
    adc $01
    db $fc
    inc bc
    ld h, e
    sbc a
    add hl, de
    rst $38
    jr @+$01

    add b
    ld a, a
    ldh a, [rIF]
    inc c
    rst $38
    jr @+$01

    ld [bc], a
    db $fd
    sub h
    ld l, e
    ld a, l
    add e
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ccf
    nop
    rst $08
    nop
    ld a, e
    add b
    rra
    ldh [$0e], a
    ldh a, [rTMA]
    ld hl, sp+$07
    ld hl, sp+$26
    ld sp, hl
    ld b, a
    jr c, @-$1e

    ccf
    ld [hl], b
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    ld d, $ff
    ld a, a
    cp $df
    xor $ef
    sbc $8f
    db $fc
    cp a
    ld a, b
    ccf
    ld hl, sp-$0a
    ld sp, hl
    db $fc
    di
    ld l, b
    rst $30
    ld e, d
    push hl
    cp $c1
    cp a
    ret nz

    ld l, a
    add b
    rst $38
    nop
    cp e
    inc b
    rst $38
    nop
    ld a, l
    nop
    ccf
    nop
    daa
    jr jr_067_71ec

    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ldh a, [rIF]
    nop
    rst $38
    add hl, sp
    rst $38
    dec b
    ei
    rra
    db $e3
    ld e, a
    and a
    ei
    rlca
    di
    rrca
    di
    rrca
    di
    rrca
    pop af
    rrca
    pop af
    rrca
    ld sp, hl
    rlca
    rst $30
    rrca

jr_067_71ec:
    rst $38
    rrca
    jp nc, $ab0f

    ld e, $bf
    ld e, $ed
    ld e, $cb
    inc a
    db $eb
    inc a
    db $ed
    ld a, $af
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fc
    ld a, a
    ld hl, sp+$6f
    ldh a, [$e7]
    ld hl, sp-$09
    add sp, -$1f
    cp $60
    rst $38
    ld a, d
    db $fd
    ld [hl], d
    db $fd
    ld c, b
    rst $30
    ld l, [hl]
    sub c
    ld [$eb15], a
    inc d
    ld l, e
    sub h
    xor l
    ld d, d
    db $fd
    ld [bc], a
    ld [bc], a
    nop
    ld de, $0102
    ld [bc], a
    ld e, e
    nop
    add hl, bc
    ret nz

    adc c
    ret nz

    ret


    nop
    ret z

    nop
    dec a
    nop
    ldh [$1f], a
    ld hl, sp+$1f
    add c
    ld a, [hl]
    rst $30
    ld [$c03f], sp
    ccf
    ret nz

    db $fd
    nop
    ld a, d
    add b
    ld a, b
    add b
    ld a, h
    add b
    ld l, h
    sub b
    ld a, h
    add b
    ld [hl], h
    adc b
    call z, $bc38
    ld l, b
    add hl, bc
    cp $0b
    db $fc
    sbc b
    ld a, a
    sbc b
    ld a, a
    jr @+$01

    jr @+$01

    db $10
    rst $38
    or d
    ld a, a
    jr nz, jr_067_72d2

    ld h, b
    ldh a, [$e0]
    pop af
    add b
    ld a, [c]
    ret nc

    db $ed
    add b
    ld sp, hl
    nop
    pop af
    nop
    pop hl
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    cp $c7
    ld hl, sp-$77
    or $11
    xor $00
    rst $38
    ld bc, $fbff
    dec b
    push af
    dec bc
    ld l, e
    rla
    swap a
    ld d, $6f
    call z, Call_067_4c7f
    rst $38
    jr @+$01

    cp a
    ld a, b
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    pop hl
    ld a, $e5
    ld a, [hl-]
    ld [hl], a
    jr c, jr_067_72d5

    ld a, c
    ld [hl-], a
    ld a, l
    ld [hl+], a
    ld a, l
    ld [hl+], a
    ld a, l
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    db $db
    inc h
    ld e, a
    and b
    cp $00
    pop af
    ld c, $81
    ld a, a
    pop de
    cpl
    sub c
    ld a, a
    ld de, $21ff
    rst $38
    ld l, a
    ldh a, [$67]
    ld hl, sp+$65
    ld a, [$62dd]
    ld l, a
    ldh a, [$c7]
    ld a, b
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    adc a
    ld [hl], b
    cp h
    ld b, b

jr_067_72d2:
    scf
    ret z

    inc b

jr_067_72d5:
    ei
    inc e
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    dec [hl]
    jp $c133


    pop de
    rst $28
    db $e3
    rst $18
    or d
    rst $08
    cp $8f
    db $ec
    sbc a
    ld h, b
    sbc a
    db $fd
    ld [bc], a
    rst $38
    nop
    inc b
    nop
    inc b
    nop
    ld [$0404], sp
    rrca
    rrca
    ld de, $2051
    jr c, @-$3e

    xor a
    db $10
    ret c

    ccf
    ret z

    ccf
    ldh [$1f], a
    ld hl, sp+$0f
    jp hl


    rra
    ret nz

    ccf
    ld de, $11fe
    cp $09
    cp $09
    cp $08
    rst $38
    inc b

jr_067_7317:
    rst $38
    inc b

jr_067_7319:
    rst $38
    add d
    rst $38
    ld h, d
    rst $38
    ld l, e
    rst $30
    ld l, a
    di
    dec l
    di
    dec l
    di
    dec l
    di
    ld b, a
    cp c
    ld h, a
    cp c
    ld d, a
    cp c
    ld b, a
    cp c
    ld b, [hl]
    cp c
    add $b9
    ld h, d
    sbc l
    jr nz, jr_067_7317

    jr nz, jr_067_7319

    nop
    rst $38
    ld [$89ff], sp
    ld a, a
    ld l, l
    inc bc
    rrca
    ld h, e
    ld a, [de]
    ld h, a
    ld d, $6f
    ld a, $7f
    ld e, $7f
    sbc $7f
    sbc $7f
    ld c, $ff
    ld l, $df
    ld a, [hl]
    adc a
    ld l, $df
    ld l, a
    sbc [hl]
    cp $0f
    or [hl]
    rrca
    sub a
    ld c, $9f
    ld b, $9f
    ld b, $93
    ld b, $d3
    ld b, $d7
    ld [bc], a
    or $03
    xor $03
    ld a, [hl]
    inc bc
    cp $03
    ld [hl], b
    rrca
    ld [hl], d
    rrca
    di
    rrca
    add b
    ld a, a
    ld [hl], l
    ei
    push hl
    ei
    db $ec
    di
    call $a8f2
    db $d3
    adc d
    pop af
    ld d, d
    cp c
    or b
    ld e, c
    dec d
    ld hl, sp+$15
    ld hl, sp+$35
    ld hl, sp-$21
    ccf
    rst $00
    ccf
    db $e3
    rra
    ld [hl], l
    adc e
    db $fd
    inc bc
    db $fd
    inc bc
    db $dd
    inc hl
    ld e, l
    and e
    db $fd
    inc bc
    ld a, a
    add c
    ld a, a
    add c
    ld a, [hl]
    add c
    ld a, d
    add c
    ld a, [hl+]
    pop de
    xor $11
    adc $31
    ld b, b
    cp a
    add b
    rst $38
    pop bc
    cp $fb
    db $fc
    rst $38
    db $fc
    sbc l
    cp $bd
    ld a, [hl]
    db $fd
    ld a, $ff
    ld a, $fe
    ccf
    cp [hl]
    ld a, a
    cp $7f
    cp $7f
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $30
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and a
    rst $18
    ld hl, sp+$07
    ld a, d
    sbc l
    db $fd
    cp e
    dec a
    ei
    ret c

    ld sp, $31c8
    jp hl


    ld de, $01f3
    and e
    ld bc, $837f
    rra
    and e
    rst $18
    inc hl
    sbc d
    ld h, a
    xor [hl]
    ld [hl], a
    ld e, $e7
    ld b, [hl]
    db $fd
    jp nz, Jump_000_1ff9

    ldh [$f5], a
    ld [$08f7], sp
    db $e3
    inc e
    adc [hl]
    ld a, h
    adc [hl]
    ld a, h
    ld e, [hl]
    inc l
    ld e, l
    ld l, $5d
    ld h, $17
    ld l, $3e
    cpl
    scf
    cpl
    rla
    cpl
    ld b, a
    ccf
    ld c, $3f
    dec de
    inc a
    add hl, sp
    db $10
    xor e
    db $10
    or c
    nop
    adc c
    db $10
    adc c
    db $10
    sbc c
    nop
    adc e
    nop
    rrca
    nop
    ld c, a
    ld bc, $0d93
    jr nc, jr_067_743f

    ld [bc], a
    ccf
    add hl, de
    ld a, $5c
    ccf
    ld e, h
    ccf
    ld e, h
    ccf
    ld hl, sp+$3f
    cp b
    ld a, a
    ld a, d

jr_067_743f:
    db $fd
    cp $fd
    rst $38
    db $fc
    rra
    db $fc
    ld e, a
    db $fc
    inc a
    rst $38
    inc e
    rst $38
    adc [hl]
    ld a, a
    ret


    ccf
    add d
    ld a, a
    pop bc
    ld a, $67
    ld e, $25
    ld e, $2b
    inc e
    rlca
    jr jr_067_748c

    db $10
    ld l, $11
    db $10
    ccf
    db $10
    rst $38
    dec de
    ldh a, [rNR31]
    ldh a, [$3f]
    ldh [rNR22], a
    ld hl, sp+$1f
    ld a, [c]
    rra
    cp $61
    sbc [hl]
    ld d, a
    xor b
    rla
    add sp, $12
    add sp, $1e
    ldh [$df], a
    ldh [$c0], a
    rst $38
    rst $08
    rst $38
    ret nz

    rst $38
    ld e, e
    rst $20
    cpl
    rst $38
    ld a, [hl-]
    db $fc
    jr @-$1e

jr_067_748a:
    sub c
    ld h, b

jr_067_748c:
    db $db
    jr nc, jr_067_748a

    jr c, jr_067_74c1

    adc a
    add hl, de
    ldh [rNR24], a
    ldh [rNR24], a
    ldh [rIF], a
    ld hl, sp+$1b
    db $e4
    daa
    ret nz

    ld hl, $dcc2
    db $e3
    push bc
    ei
    add e
    rst $38
    adc a
    rst $38
    adc l
    rst $38
    ld c, h
    cp a
    ld l, b
    sbc a
    ld h, b
    sbc a
    adc a
    nop
    dec c
    add b
    adc a
    nop
    rst $08
    nop
    and l
    ld c, d
    sub a
    ld l, b
    sbc c
    db $76
    ld c, c
    ld [hl], $4b

jr_067_74c1:
    scf
    ld e, e
    daa
    db $db
    daa
    ld a, d
    rlca
    ld a, [hl]
    rlca
    dec a
    ld b, $3d
    ld b, $be
    dec b
    ld l, $05
    rlc l
    db $db
    dec c
    rst $38
    add hl, bc
    adc l
    ei
    push af
    ei
    push bc
    ei
    push hl
    ld a, [de]
    ld bc, $019e
    sub $01
    or $83
    db $fc
    add e
    db $e4
    ld [hl+], a
    xor l
    nop
    daa
    ld bc, $312f
    ld c, a
    jp $c47f


    ld a, a
    ld h, b
    rst $18
    add b
    rst $38
    ld b, b
    rst $38
    ld e, b
    rst $20
    ret z

    ld [hl], a
    ret z

    ld [hl], a
    ld b, d
    ld a, a
    ld h, b
    ld a, a
    ld [hl], d
    ld a, a
    ld e, d
    ld a, a
    ld hl, sp+$7f
    ld [hl], b
    ld a, a
    nop
    jp $837c


    ld a, b
    add a
    ld a, b
    add a
    ccf
    rst $00
    cp e
    ld b, a
    sbc e
    ld h, a
    xor e
    ld d, a
    add a
    ld a, a
    cp a
    ld a, a
    rst $30
    ccf
    db $e3
    ccf
    db $d3
    ccf
    ld a, c
    sbc a
    jp hl


    sbc a
    pop af
    adc a
    add hl, sp
    rst $00
    db $fd
    jp Jump_067_47bb


    xor d
    ld d, a
    db $e3
    rra
    ldh [$1f], a
    ret nz

    ccf
    ld h, b
    sbc a
    ld [hl], b
    adc a
    call nz, $843b
    ld a, e
    ld c, $f1
    ld c, [hl]
    or c
    rst $18
    ld hl, $23de
    ld e, d
    and a
    ld a, [hl]
    add a
    ld d, $cf
    or [hl]
    ld c, a
    pop af
    ld c, $d0
    rrca
    rst $18
    nop
    ldh a, [rIF]
    ld l, b
    sub a
    ld [hl], b
    sbc a
    ld [hl-], a
    sbc h
    rrca
    or b
    xor a
    ldh a, [$e0]
    rst $38
    ld h, l
    ld a, [$e04a]
    ld [$0ef7], sp
    rst $38
    rst $38
    rst $38
    rst $38
    cp b
    ld a, [hl+]
    call nz, Call_067_5907
    rrca
    inc sp
    and $39
    rst $38
    ld c, a
    rst $38
    rst $38
    ld [c], a
    sub b
    push bc
    cp d
    and a
    ld b, b
    nop
    jr z, jr_067_7599

    ld c, [hl]
    nop
    rst $38
    nop
    db $fd
    nop
    ret nz

    ld a, a
    rst $38
    cp $7f
    ld a, a
    rst $38
    dec sp
    rst $38
    rst $18

jr_067_7599:
    ccf
    dec e
    ccf
    ld a, b
    rra
    ldh [$1f], a
    nop
    rra
    inc b
    rra
    dec b
    ld d, $15
    ld h, $04
    ccf
    jr nz, jr_067_760b

    ld [$1057], sp
    cp $1e
    cp $1e
    xor $1e
    rst $08
    dec bc
    or d
    inc bc
    pop hl
    inc de
    pop bc
    inc hl
    ld d, h
    ld [hl], $e8
    dec e
    ld [c], a
    sbc $e0
    rst $20
    ld hl, sp+$6d
    ld a, [$fb64]
    ld c, h
    di
    call z, $ddf3
    db $e3
    call c, $92e3
    pop bc
    sbc d
    pop bc
    ret c

    add e
    ld e, $e3
    add b
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    rst $38
    rra
    rst $18
    ld h, $9f
    ld h, $9f
    rrca
    ccf
    adc [hl]
    rst $38
    ld e, $ff
    cp $ff
    cp $d0
    rst $38
    ld b, h
    rst $38
    ld [$caf7], sp
    scf
    add d
    ld a, a
    jp nz, Jump_000_003f

    rst $38
    nop
    rst $38
    ld bc, $40fe
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a

jr_067_760b:
    rst $38
    ld c, $ff
    ld e, $ff
    ld e, $ff
    ld l, [hl]
    rst $38
    sbc $ff
    jp z, $ebff

    rst $38
    ld b, e
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    inc h
    rst $38
    cp h
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    and [hl]
    rst $38
    or e
    rst $38
    or e
    rst $38
    ld hl, sp-$01
    db $d3

jr_067_7633:
    rst $38
    ld d, e
    rst $38
    ld e, h

jr_067_7637:
    rst $38
    ld e, e
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld l, [hl]
    rst $38
    ld e, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    ld e, $ff
    inc c
    rst $38
    jr @+$01

    ld [$20ff], sp
    rst $18
    jr nz, jr_067_7633

    db $10
    rst $28
    nop
    rst $38
    inc de
    db $fc
    ld l, a
    ldh a, [$2b]
    call nc, $419e
    ld d, b
    adc a
    adc a
    nop
    sbc c
    ld h, [hl]
    dec d
    ld [c], a
    cp d
    nop
    pop af
    rrca
    ld bc, $05ff
    ei
    ld h, $f9
    db $dd
    nop
    pop af
    nop
    ld d, $e1
    ld [de], a
    pop hl
    ld h, $c1
    sbc h

jr_067_767d:
    db $e3
    add hl, de
    rst $20
    ld d, a
    xor c
    db $fc
    ld bc, $8070
    nop
    ld bc, $f700
    nop
    and $00
    db $fc
    nop
    jr jr_067_7637

    rst $38
    rlca
    rst $38
    add a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    dec bc
    rst $38
    rlca
    rst $38
    rst $00
    rst $38
    and $ff
    ret nz

    ccf
    jr nz, @-$1f

    call c, Call_067_7dff
    rst $38
    ld a, [hl]
    rst $38
    cp $7f
    rst $38
    ld a, e
    rst $38
    pop af
    ldh a, [$8d]
    cp [hl]
    db $fd
    ld hl, sp-$0f
    ldh [$d1], a
    ld h, l
    ld b, e
    ld h, d
    ld b, l
    ld a, a
    rra
    ld a, [hl]
    cp a
    sbc [hl]
    ld h, l
    xor [hl]
    pop de
    sbc b
    push hl
    ret nc

    adc h
    ret nz

    call z, $c3fc
    rst $18
    xor a
    rst $08
    add a
    rst $08
    add c
    adc $81
    add $81
    jp nz, $c185

    add e
    inc a
    jp Jump_067_7fff


    ld h, c
    rst $38
    ld bc, $baff
    inc b
    ld a, [hl+]
    sub h
    jr nc, jr_067_767d

    ld b, b
    cp a
    ld c, c
    or [hl]
    ld l, b
    sub a
    add hl, bc
    or $08
    or $48
    or [hl]
    ret


    ld [hl], $ca
    dec [hl]
    jp nc, $9f3d

    ld a, a
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    inc c
    rst $38
    dec c
    cp $4d
    cp [hl]
    inc c
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld [$0cff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    inc c
    rst $38
    rra
    db $fc
    ld a, [de]
    db $fd
    add b
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    nop
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
    dec c
    rst $38
    call nz, $c0ff
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ld e, a
    cp a
    ld l, a
    sbc a
    ld h, c
    sbc a
    ld [bc], a
    db $fd
    ccf
    ret nz

    ld c, [hl]
    pop af
    ld bc, $00fe
    rst $38
    ld bc, $0fff
    rst $38
    ld e, l
    cp a
    ld [c], a
    dec e
    add $00

jr_067_775e:
    rst $08
    jr nc, jr_067_7761

jr_067_7761:
    rst $38
    db $fd
    inc bc
    ld l, [hl]
    add c
    ld h, [hl]
    sbc a
    cp a
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    dec bc
    ldh [$61], a
    add b
    cp [hl]
    ld b, c
    add b
    ld a, a
    nop
    rst $38
    cpl
    rst $38
    rst $38

jr_067_777b:
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    ld a, a
    ld e, [hl]
    cp a
    inc e
    sbc b
    db $10
    jr nz, jr_067_778d

jr_067_778d:
    nop
    jr nc, jr_067_775e

    ld c, $f1
    add hl, bc
    rst $30
    rst $28
    ldh a, [$cf]
    ldh a, [$30]
    rst $08
    jr nz, jr_067_777b

    ld h, b
    sbc a
    ld b, b
    cp a
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld b, d
    db $fd
    ld bc, $0aff
    pop af
    rlca
    ld hl, sp+$13
    db $ec
    ret z

    rst $38
    dec d
    rst $28
    add e
    db $fd
    add hl, bc
    rst $30
    inc bc
    db $fc
    ld sp, hl
    ld b, $7e
    add c
    sbc [hl]
    pop hl
    rst $28
    ldh a, [$f6]
    ld sp, hl
    rst $38
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $f8
    cp $f9
    cp $b9
    cp $f8
    rst $38
    ld [hl], c
    adc [hl]
    ld [hl], a
    adc h
    ld a, e
    adc h
    ld a, [hl]
    adc l
    sbc d
    db $ed
    adc b
    db $fd
    adc b
    rst $38
    adc c
    rst $38
    sub e
    rst $38
    inc b
    cp [hl]
    add b
    db $fc
    ret nz

    ld hl, sp-$20
    ld a, b
    ret


    jr nc, @-$35

    jr nc, jr_067_783d

    ld sp, $2158
    sbc e
    ld h, b
    ccf

jr_067_77fb:
    ret nz

    ld a, b
    add a
    ld [hl-], a

jr_067_77ff:
    rst $08
    rst $00
    rst $38
    dec e
    rst $38
    sbc a
    ld a, a
    call z, $8e3f
    ld a, a
    rst $08
    ccf
    adc h
    ld a, a
    add [hl]
    ld a, a
    nop
    rst $38
    rla
    ld hl, sp+$17
    ld hl, sp+$16
    ld sp, hl
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, [hl]
    rst $38
    ld b, [hl]
    rst $38
    rlca
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    inc hl
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr c, jr_067_77ff

    ld bc, $01ff
    rst $38
    ret nz

jr_067_783d:
    rst $38
    adc [hl]
    pop af
    add c
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ldh [$7f], a
    ld [hl], e
    db $fc
    cp $ff

jr_067_7856:
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $2fff
    db $10
    dec h
    ld a, [de]
    rla
    ld hl, sp-$1f
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add h
    ei
    db $fc
    nop
    ld c, a
    jr nc, jr_067_77fb

    ld a, a
    dec de
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
    cp a
    rst $38
    add b
    rst $38
    add sp, $1f
    jr jr_067_7897

    inc c
    rlca
    nop
    rlca
    rlca
    nop
    scf
    nop
    rst $38
    rst $38
    cp a
    rst $38
    rra
    rst $38
    sbc a

jr_067_7897:
    ld a, a
    ld c, $ff
    ld l, $df
    scf
    rst $08
    ld c, $ff
    inc b
    ei
    call nz, Call_067_4cfb
    di
    ld b, c
    cp $e3
    db $fc
    ld de, $eeee
    jr jr_067_7856

    jr jr_067_7902

    xor [hl]
    inc c
    rst $38
    inc de
    db $ec
    ld a, [de]
    push hl
    ret c

    daa
    ld e, e
    inc h
    ld c, d
    inc [hl]
    jp c, Jump_067_7e24

    add h
    inc l
    sbc $f8
    rst $38
    ld a, e
    db $fc
    ld a, e
    db $fc
    cp [hl]
    ld a, b
    ccf
    ld a, b
    ld e, [hl]
    jr c, jr_067_792f

    jr c, @-$23

    inc a
    db $fc
    rra
    ei
    inc e
    reti


    inc a
    reti


    inc a
    xor e
    ld e, h
    rst $28
    jr jr_067_7910

    ret c

    dec hl
    call c, $fcdf
    xor a
    sbc $df
    db $fc
    db $dd
    cp $dd
    cp $be
    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    ld de, $7def
    add e
    ld a, h
    add e
    ld a, [hl]
    add c
    cp d
    push bc
    sub $ef
    nop
    rst $38

jr_067_7902:
    adc h
    ld [hl], e
    db $dd
    ld [hl+], a
    cp $00
    cp d
    nop
    ld a, d
    add b
    dec b
    ld a, [$f34c]

jr_067_7910:
    ld [bc], a
    pop af
    ld b, $f1
    ld a, [hl]
    add c
    rra
    ldh [$3e], a
    pop bc
    adc h
    di
    ld a, [hl]
    rst $38
    ld [hl], a
    rst $38
    ld h, c
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    dec bc
    ldh a, [$f1]

jr_067_792f:
    cp $fb
    db $fc
    inc e
    ld hl, sp+$6e
    sbc a
    nop
    rst $38
    ld [bc], a
    db $fc
    db $e3
    db $fc
    nop
    rst $38
    ccf
    ret nz

    ld a, $c0
    rlca
    ld hl, sp+$0c
    rst $38
    inc bc
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [$1f], a
    inc bc
    db $fc
    pop af
    cp $fc
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $08
    nop
    xor $01
    ld e, h

jr_067_7965:
    add e
    cp $ff
    rst $38
    rst $38
    ld l, b
    rst $38
    nop
    ldh a, [$86]
    ld bc, $00ef
    inc bc
    db $fc
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [hl]

jr_067_797b:
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    inc bc
    rst $38
    dec de
    rst $38
    ld a, e
    add a
    ld a, $c1
    ld a, e
    add h

jr_067_798c:
    ld a, [hl]
    add b
    db $ec
    nop
    ld b, b
    cp a
    nop
    rst $38
    jr nc, jr_067_7965

    jr nc, @-$2f

    ld [hl], b
    adc a
    jr nz, jr_067_797b

    and d
    pop bc
    xor [hl]
    ld de, $973f
    ld a, a
    cp a
    rst $38
    inc hl
    ld a, a
    rst $08
    ld a, a
    add h
    ret nz

    rst $38
    nop
    ld h, b
    nop
    pop af
    inc e
    db $e3
    sbc e
    rst $20
    rlca
    rst $38
    scf
    rst $08
    ldh [$1f], a
    db $fc
    inc bc
    ld [hl], e
    nop
    ld h, h
    inc bc
    ld b, b
    inc hl
    ld a, a
    inc bc
    jp hl


    rra
    pop bc
    ccf
    pop bc
    ccf
    pop hl
    rra
    rst $28
    ld sp, $639d
    sbc h
    ld h, e
    cp c
    ld b, a
    ld e, e
    rst $20
    sbc l
    ld h, e
    db $dd
    inc hl
    rst $28
    inc de
    sbc a
    ld h, e
    sbc e
    ld h, a
    sub a
    ld h, e
    rra
    db $e3
    sbc e
    ld h, a
    ld d, $ef
    ld a, [c]
    rrca
    cp $1f
    ld a, [hl]
    sbc a
    cp $1f
    ld a, [hl]
    sbc a
    ld a, c
    sbc a
    sbc h
    rst $38
    db $fc
    add e
    adc [hl]
    pop af
    adc a
    ldh a, [$97]
    add sp, -$5b
    ld hl, sp+$43
    cp h
    ld b, $f9
    pop hl
    jr jr_067_798c

    db $10
    sub e
    nop
    sub b
    nop

jr_067_7a0c:
    ei
    nop
    dec [hl]
    set 6, c
    cp e
    di
    ld de, $54b3
    rra
    ldh a, [rIE]
    db $10
    rst $38
    sub b
    rst $38
    ei
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    inc h
    jp $8f50


    rra
    rst $38
    rst $38

jr_067_7a31:
    rst $18
    dec [hl]
    adc d
    db $fd
    or d
    ld sp, hl
    ld b, $e7
    pop de
    rst $38
    rst $38
    rst $38
    ld l, l
    rst $38
    rst $08
    ld b, b
    rrca
    rst $28
    db $10
    ld h, d
    pop af
    add d
    ld sp, hl
    ld bc, $e3fe
    db $fc
    call c, $d1e1
    xor $21
    rst $38
    inc b
    rst $38
    rst $20
    jr jr_067_7a0c

    ld c, d
    jr z, jr_067_7a31

    add b
    rst $38
    db $f4
    rst $38
    cp l
    ld a, [hl]
    db $d3

jr_067_7a61:
    inc l
    ld [bc], a
    db $fc
    ld [hl+], a
    db $fc
    dec e
    cp $ff
    rst $38
    ld bc, $4aff
    ld bc, $00cf
    xor l
    ld d, d
    add [hl]
    ld a, c
    db $eb
    sub h
    rst $38
    ld hl, sp-$01
    rst $28
    rst $38
    rst $38
    db $fd
    ld a, [c]
    ret nz

    ldh [rNR10], a
    ldh [$d8], a
    ldh a, [$cb]
    db $fc
    or h
    rst $08
    rst $38
    rst $38
    xor [hl]
    ld a, a
    and b
    ld a, a
    jp $0e7c


    pop af
    inc e
    db $e3
    adc b
    rst $30
    xor b
    rst $10
    jr c, jr_067_7a61

    inc a
    jp $f30c


    add l
    ld a, a
    ld a, a
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    db $fd
    ld [bc], a
    cp b
    ld b, a
    ld hl, sp+$07
    sub d
    rrca
    ld h, a
    sbc a
    add e
    rst $38
    rst $00
    rst $38
    inc a
    rst $38
    sub [hl]
    ld l, a
    add d
    ld h, a
    sbc c
    ld h, [hl]
    or e
    ld c, h
    rst $20
    jr @+$54

    cp l
    rst $38
    rst $38
    ld [hl], a
    rst $38
    inc sp
    rst $38
    or e
    rst $38
    jp hl


    rst $30
    ei
    rst $00
    cp c
    rst $00
    ld sp, hl
    add a
    pop af
    adc a
    ld a, [$f287]
    adc a
    ld a, [c]
    adc a
    ld d, d
    xor a
    ld h, $db
    add $3b
    jp nz, Jump_000_103f

    rst $38
    reti


    ccf
    call z, Call_000_203f
    rst $08
    inc a
    jp $e718


    dec e
    db $e3
    cp l
    db $e3
    dec de
    rst $20
    ld e, h
    db $e3
    ld a, [hl]
    pop hl
    ld l, $f1
    sub e
    ld a, h
    sbc l
    ld a, [hl]
    and c
    ld e, $a3
    rra
    rlca
    sbc a
    xor $1f
    add [hl]
    ld a, a
    call z, $2c3f
    rst $38
    add h
    rst $38
    ld c, h
    cp a
    sbc h
    ld h, e
    call c, $9a23
    ld h, a
    ld [de], a
    rst $28
    ld [bc], a
    rst $38
    jp nz, $c3ff

jr_067_7b1f:
    rst $38
    sbc $ff
    ret z

    rst $38
    ret nc

    rst $28
    ld hl, $e0df
    rra
    add e
    ld a, a
    adc [hl]
    ld a, a
    rst $38
    rst $38
    ldh a, [rIE]
    jp nz, $f03d

    rrca
    di
    rrca
    cp e
    rst $00
    nop
    rst $38
    sub b
    ld l, a
    jr nz, jr_067_7b1f

    dec c
    di
    ccf
    rst $38
    ld a, b
    rst $38
    ld b, e
    db $fc
    ld a, e
    add b
    ld h, c
    sbc a
    ld hl, $07df
    rst $38
    ld a, a
    rst $38
    dec a
    rst $38
    rst $00
    ccf
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld b, $ff
    nop
    rst $38
    ld [hl-], a
    ret nz

    rst $38
    nop
    ld [hl], a
    ld [$3fd0], sp
    ld h, b
    sbc a
    rst $20
    sbc b
    db $db
    ldh [rNR44], a
    ret nz

    xor h
    ld b, e
    ld hl, sp+$07
    di
    rrca
    ld bc, $77ff
    adc a
    ld b, d
    cp a
    inc c
    di
    pop bc
    jr nc, jr_067_7b7f

jr_067_7b7f:
    nop
    rlca
    add hl, bc
    rra
    dec bc
    ld e, $ef
    call nz, $e03b
    sbc a
    ret z

    sub a
    and $19
    cp $01
    rst $38
    rra
    ld a, a
    cp a
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    ld b, $ff
    ld b, $ff
    rlca
    cp $a2
    ld a, a
    rlca
    rst $38
    rst $18
    ccf
    inc de
    rst $08
    dec e
    jp $dd22


    dec b
    ld hl, sp-$6b
    ld l, b
    cp c
    ld b, b
    ld [hl], b
    nop
    add hl, de
    nop
    ld l, c
    db $10
    ld a, d
    db $fd
    db $f4
    rst $38
    rst $30
    rst $38
    or $ff
    ldh a, [rIE]
    ld hl, sp-$09
    ld hl, sp-$09
    db $fc
    di
    ldh a, [rIE]
    rst $38
    rst $38
    cp $ff
    ld a, [de]
    rst $38
    push af
    ld a, [de]
    jp $d33c


    inc a
    scf
    ld hl, sp+$10
    db $fc
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    dec c
    rst $38
    ld b, l
    rst $38
    ld [hl], a
    ld sp, hl
    rst $28
    db $fd
    rra
    db $fd
    rra
    ld hl, sp+$1b
    cp a
    sbc a
    cp e
    adc a
    sbc c
    rrca
    reti


    ld c, a
    ei
    daa

Jump_067_7bff:
    rst $38
    ld [bc], a
    ld a, a
    cp [hl]
    rst $38
    ld e, [hl]
    cp a
    inc l
    sbc a
    ld l, l
    sbc [hl]
    ld h, l
    sbc [hl]
    inc [hl]
    adc a
    ld h, [hl]
    sbc a
    ld b, $ff
    inc b
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld b, $ff
    cp $ff
    rst $20
    rst $38
    ld bc, $43ff
    rst $38
    rlca
    rst $38
    ld b, c
    cp a
    jr @+$01

    nop
    rst $38
    add b
    rst $38
    ld a, $ff
    ccf
    rst $38
    ld a, b
    rst $38
    ret nz

    rst $38
    sbc [hl]
    rst $38
    rrca
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    ld bc, $f8ff
    rlca
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    and $f9
    call c, $c0e3
    rst $38
    sbc b
    rst $20
    ld a, a
    add b
    dec sp
    ret nz

    ret nz

    ccf
    ld a, a
    sbc b
    ld sp, hl
    add $ff
    sub [hl]
    cp $80
    db $fd
    ld hl, sp+$6f
    sbc h
    inc e
    ei
    db $fc
    ldh a, [$30]
    ret nz

    ld b, c
    cp a
    ei
    rst $38
    add d
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    rst $28
    rra
    ld b, b
    ccf
    rst $38
    rst $20
    pop hl
    sbc $03
    db $fc
    rst $38
    rst $20
    nop
    rst $38
    nop
    cp $a8
    ld d, a
    ldh [rNR31], a
    ld a, [$82fc]
    db $fc
    inc bc
    db $fc
    rra
    ldh [rP1], a
    rst $38
    db $10
    rst $38
    dec bc
    db $fc
    inc hl
    call c, $fdff
    db $fd
    db $e3
    rst $38
    di
    rst $38
    rlca
    cp a
    ld c, a
    rst $38
    rst $38
    rst $30
    rst $28
    db $f4
    and e
    and h
    ld b, c
    ldh [$90], a
    ret nz

    and b
    add b
    call nz, Call_000_0f81
    rrca
    ccf
    rlca
    scf
    rlca
    inc bc
    ld a, d
    inc bc
    ld sp, hl
    ld [bc], a
    ldh a, [rSC]
    ld [hl-], a
    nop
    ld d, $00
    sub [hl]
    ld bc, $09d4
    dec d
    ret z

    jp hl


    ld d, c
    ld [hl], e
    push hl
    ld hl, $2171
    ld hl, $2321
    inc hl
    dec d
    ld a, $1d
    ld a, $57
    db $76
    ld b, a
    rst $38
    sub $f7
    rst $18
    rst $30
    rst $00
    rst $20
    rla
    ld a, a
    or e
    ld a, l

jr_067_7ced:
    ld a, [hl-]
    ld a, l
    ld a, [hl-]
    rst $38
    nop
    ld l, b
    inc de
    and c
    ld d, e
    inc c
    di
    inc d
    ei
    ldh [$3f], a
    jp c, $fe27

    ld bc, $8876
    inc hl
    call c, $fc03
    adc d
    ld [hl], l
    ld a, [bc]
    push af
    ld c, b
    rst $30
    jr nz, jr_067_7ced

    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    sub b
    ld a, a
    ld de, $c3ff
    ccf
    ld b, e
    cp a
    nop
    rst $38
    ret nc

    rst $28
    ret z

    rst $30
    pop hl
    cp $dc
    rst $38
    cp $ff
    ld hl, sp-$01
    ld de, $43ff
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    rst $28
    rst $38
    and [hl]
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
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
    ld a, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, [hl]
    cp a
    ld b, a
    rst $38
    cp c
    ld a, [hl]
    ld l, h
    sub b
    rst $38
    ld bc, $67ff
    rst $28
    nop
    rra
    ldh [rIE], a
    jr nc, jr_067_7dea

    cp a
    rst $28
    sub b
    ld b, b
    inc de
    jr c, jr_067_7d79

    ld a, a
    rst $38
    jp $0fff


    rst $38
    ld a, a

jr_067_7d79:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr @+$01

    db $fd
    cp $f8
    db $f4
    nop
    ldh [rP1], a

jr_067_7d87:
    ret nz

    nop
    add h
    nop
    ld bc, $c000
    nop
    cp a
    ld h, c
    rra
    ld a, b
    rlca
    ld hl, sp+$07
    ld b, a
    cp a
    ld e, a

jr_067_7d99:
    rst $38
    rlca
    rst $38
    ret nz

    ccf
    ld b, b
    cp a
    ld bc, $41ff
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $71ff
    adc a
    ld b, c
    adc a
    rla
    rrca
    inc d
    rrca
    and b
    rra
    pop hl
    rra
    inc b
    rst $38
    call Call_067_61f7
    add a
    ld b, l
    add e
    sub e
    rlca
    dec de
    rlca
    rra
    rlca
    rla
    rrca
    ccf
    rlca
    ld l, e
    rlca
    rst $38
    inc bc
    dec c
    di
    daa
    reti


    push bc
    db $e3
    ld c, l
    db $e3
    push bc
    db $e3
    add e
    pop hl
    rra
    pop hl
    add hl, bc
    rst $30
    xor e
    rla
    inc l
    db $d3
    db $d3
    ld a, e
    ld e, e
    di
    ld a, e
    ld bc, $9163
    ld [hl], e
    pop bc

jr_067_7dea:
    ld sp, hl
    ld hl, $e5ff
    ld a, a
    add c
    push de
    add hl, bc
    ld d, c
    xor a
    ld d, b
    xor a
    jr nc, jr_067_7d87

    jr nz, jr_067_7d99

    inc b
    cp e
    nop
    cp a
    ld b, b

Call_067_7dff:
    cp a
    ld d, b
    xor a
    ld d, e
    xor a
    ret nc

    cpl
    ld [hl], b
    adc a
    ld b, b
    cp a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    sbc c
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    ld de, $97ff
    ei
    sub e
    rst $38
    inc bc
    rst $38
    inc de
    rst $38

Jump_067_7e24:
    rra
    rst $38
    rla
    rst $38
    inc sp
    rst $38
    inc hl
    rst $38
    and e
    rst $38
    and e
    rst $38
    and e
    rst $38
    db $e3
    rst $38
    sub e
    rst $38
    ld sp, $c3ff
    rst $38
    rrca
    rst $38
    ld a, c
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    ld e, $ff
    ld c, $ff
    rst $18
    rst $38
    ld a, [$faff]
    rst $38
    sbc l
    cp $6c
    di
    ld e, $e1
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    ret nz

    cp e
    inc b
    adc a
    ld a, a
    inc sp
    rst $38
    nop
    rst $38
    db $e3
    inc c
    adc a
    jr c, jr_067_7e82

    cp $01
    cp $e4
    ld e, $9c
    ld a, [hl]
    db $fc
    rst $38
    jr c, @+$01

    ldh a, [rIE]
    db $f4
    rst $38
    ei
    ldh a, [$f1]
    ldh [$e0], a
    rst $38
    rra
    rst $38
    rst $30
    nop

jr_067_7e82:
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
    ld [c], a
    rra
    ld a, a
    rst $38
    db $e4
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
    inc [hl]
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    jp $e2fc


    db $fd
    rst $30
    rst $38
    di
    rst $38
    cp a
    di
    rst $20
    ei
    db $e3
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    rst $38

Jump_067_7eb5:
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    add sp, -$01
    db $ec
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    sbc $ff
    rst $18
    rst $38
    sbc a
    rst $38
    sbc l
    rst $38
    sbc h
    rst $38
    sub h
    rst $38
    sub e
    rst $38
    add b
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    rst $18
    rst $38
    di
    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    ld h, a
    rst $38
    inc bc
    rst $38
    ld bc, $41ff
    rst $38
    pop bc
    rst $38
    rst $00
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
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ei
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
    cp $ff
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
    rst $38
    rst $38
    rst $30
    rst $38
    db $d3
    rst $38
    and a
    rst $38
    cp a
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld e, $ff
    ld hl, $00df
    rst $38
    inc l
    jp Jump_000_1fe0


    add a
    ld a, b
    rst $08
    jr nc, @+$19

    add sp, -$01
    add b
    rst $18
    ld hl, $807f
    rst $38
    ccf
    rst $38
    rst $38
    rlca
    ld [$7906], sp
    ccf
    ld c, l
    nop
    rst $38
    nop
    rst $38
    ld bc, $57fe
    xor b
    cp $00
    dec de
    nop
    nop
    rst $38
    add d
    rst $38
    add a
    inc bc
    dec bc
    rlca
    dec bc
    rlca
    rla
    rrca
    rst $20
    rra
    rrca
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ret z

    rlca
    nop
    rst $38
    ld sp, hl
    cp $fc
    rst $38
    sbc a
    rst $38
    dec l
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    ld h, b
    rst $38
    cp l
    ld b, e
    add c
    ld a, a
    db $fc
    rst $38
    call c, Call_000_1eff
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld e, $ff
    db $e4
    rra
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    rrca
    rst $38
    sbc a
    ld a, a
    ccf
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
    sbc a
    rst $38
    rra
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
    rst $08
    rst $38
    rst $00
    rst $38
    ld c, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_067_7fff:
    rst $38
