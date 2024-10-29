SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

    ld e, a
    rst $38
    ld e, [hl]
    rst $38
    ld e, l
    cp $cb
    db $fc
    ld [hl], a
    ld hl, sp-$11
    pop af
    ld e, a
    db $e3
    rst $38
    add $bf
    call z, $f8bf
    cp a
    ldh a, [rIE]
    ldh [$df], a
    pop hl
    cp a
    jp $877b


    rst $30
    rrca
    rst $28
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

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
    nop
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
    rst $38
    nop
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
    ld hl, sp+$1f
    pop hl
    rst $38
    rlca
    rst $38
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
    inc bc
    cp $0d
    cp $3f
    db $fc
    sbc $fd
    rst $18
    db $fc
    rst $08
    ld hl, sp-$21
    ld hl, sp-$31
    ldh a, [$ef]
    pop af
    db $eb
    db $fd
    push hl
    rst $38
    xor c
    rst $38
    add hl, bc
    rst $38
    xor c
    rst $38
    xor c
    rst $38
    adc c
    rst $38
    jp z, $faff

    rst $18
    call $d6ff
    rst $38
    db $db
    rst $38

jr_037_4094:
    rst $18
    cp $cd
    cp $cc
    rst $38
    rst $08
    rst $38
    sub $ff
    db $ed
    sbc $eb
    sbc h
    rst $30
    jr jr_037_4094

    jr nc, @+$01

    ld h, c
    rst $38
    jp $87fb


    rst $30
    rrca
    rst $28
    rra
    rst $18
    ccf
    cp $3e
    cp $7e
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    rst $38
    rst $38
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
    cp $00
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    ld bc, $0307
    rlca
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
    db $fc
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    pop hl
    rst $38
    rrca
    rst $38
    ccf
    rst $38

Call_037_40fb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rlca
    cp $1d
    cp $37
    db $fc
    rst $38
    db $f4
    rst $30
    ld a, h
    rst $30
    ld hl, sp-$09
    ld hl, sp+$76
    db $fd
    push hl
    ld a, a
    ld h, c
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    push hl
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    push af
    cp $f1
    cp $f5
    rst $38
    rst $20
    rst $38
    rst $38
    and $f7
    call z, $98ef
    sbc $31
    rst $38
    ld hl, $e35f
    cp a
    rst $00
    ld a, a
    adc a
    rst $28
    rra
    rst $18
    ccf
    cp h
    ld a, h
    ld a, h
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add c
    ld bc, $0100
    ld [bc], a
    ld bc, $0306
    inc b
    inc bc
    inc c
    ld a, [bc]
    dec b
    ld b, $19
    ld d, $29
    dec c
    ld [hl-], a
    inc a
    ld b, e
    ld a, [de]
    ld h, l
    add hl, sp
    rst $00
    dec [hl]
    bit 6, c
    adc a
    dec sp
    rst $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
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
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rra
    pop hl
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    ei
    ld e, $fb
    db $76
    ei
    ld c, l
    di
    xor $f3
    cp $e3
    ld l, [hl]
    di
    ld a, [c]
    ld l, a
    add $ff
    jp nz, $c3ff

    rst $38
    rst $00
    rst $38
    add $ff
    rst $20
    cp $e7
    db $fc
    rst $20
    ld sp, hl
    rst $20
    ld a, [$fcef]
    db $eb
    call c, $99f7
    db $ed
    inc sp
    db $db
    ld h, a
    ccf
    rst $00
    ld a, a
    adc a
    cp $1e
    call c, $b83c
    ld a, b
    ld a, b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0a06
    dec b
    rla
    ld [$201f], sp
    inc a
    ld b, e
    ld [hl], b
    adc a
    di
    dec c
    swap l
    sub a
    ld l, c
    sbc a
    ld h, e
    inc sp
    rst $08
    ld [hl], a
    adc a
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    nop
    rst $38
    ld hl, sp-$79
    sbc [hl]
    ld h, c
    rst $30
    ld hl, sp+$5b
    cp $81
    rst $38
    db $fc
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR34], a
    pop hl
    ld c, $f1
    ld c, $f1
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
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    pop af
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
    inc bc
    db $fc
    rra
    db $e3
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    inc bc
    cp $0d
    ld a, [$f22d]
    ret z

    or a
    ld l, l
    or e
    ld e, b
    or a
    db $e4
    rra
    db $e4
    ccf
    ld h, [hl]
    cp a
    inc h
    rst $38
    inc h
    rst $38
    ld h, a
    db $fd
    jr nz, @+$01

    daa
    ld a, [$fd26]
    rra
    jp hl


    ld a, l
    sub e
    ld a, a
    rst $20
    db $76
    adc $ac
    call c, Call_000_3cdc
    ld hl, sp+$38
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_037_430d:
    nop
    nop
    nop
    db $f4
    db $fc
    jr jr_037_430d

    ld h, e
    db $eb
    add a
    rst $08
    ld l, h
    ld a, [hl]
    sub b
    cp b
    rst $30
    rst $30
    rst $38
    db $fc
    daa
    rst $18
    ld e, a
    xor a
    xor a
    ld e, a
    rst $38
    rra
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$e0ff]
    rst $38
    ret nz

    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    ld [$18ff], sp
    rst $38
    jr nc, @+$01

    ld [hl], l
    rst $38
    ld a, [$fcff]
    rst $38
    ld a, c
    cp $38
    rst $38
    db $ed
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    jr nc, @+$01

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0103
    inc bc
    ld bc, $0103
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $011f
    rra
    ld bc, $011f
    rra
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    add c
    ld a, a
    add c
    ld a, a
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld sp, hl
    rlca
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rra
    pop hl
    rst $38
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
    rst $38
    ld b, c
    cp a
    pop hl
    cp a
    ld h, c
    cp a
    pop hl
    cp a
    pop hl
    cp a
    pop hl
    cp a
    pop hl
    cp a
    and c
    rst $18
    add c
    rst $38
    add hl, de
    rst $28
    add hl, sp
    rst $18
    ld e, e
    cp e
    or b
    ld [hl], b
    ld h, b
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    sbc h
    rst $38
    add sp, -$01
    ld b, [hl]
    rst $38
    add b
    rst $38
    inc c
    rst $30
    inc b
    cp $90
    db $ec
    add h
    ld sp, hl
    push hl
    rst $18
    ld a, [bc]
    adc e
    xor $ef
    sbc b
    sbc c
    adc l
    rst $38
    ld l, b
    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    jp nz, $fff2

    db $e4
    rst $38
    call c, $88ff
    rst $38
    cp $ff
    ld sp, $a0ff
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    rra
    ldh [$7e], a
    add c
    ldh [$1f], a
    add hl, bc
    cp $7f
    ldh a, [$bf]
    jp Jump_000_0ffc


    db $fc
    rst $38
    pop af
    cp $0f
    rst $38
    ld a, h
    add e
    inc bc
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
    rst $38
    nop
    rst $38
    jr nz, @+$01

    and b

Jump_037_447f:
    rst $38
    and b
    rst $38
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

jr_037_448f:
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
    db $fc
    rst $38
    inc b
    ei
    ld a, [de]
    db $ed
    ld [$1aff], sp
    db $ed
    ld d, d
    cp l
    ld d, h
    cp d
    jr nz, jr_037_448f

    ld [hl+], a
    db $fd
    or h
    db $eb
    ld b, d
    db $fd
    ld b, h
    ei
    db $fd
    cp [hl]
    add b
    ld a, [hl]
    add b
    db $ed
    add b
    or c
    sub [hl]
    rst $38
    ld b, b
    rst $38
    ld bc, $00ff
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld bc, $ff00
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld c, $f1
    db $e3
    db $fc
    dec e
    cp $03
    cp $e0
    rra
    ld a, a
    add b
    rrca
    ldh a, [$03]
    db $fc
    ld bc, $e5fe
    ld a, [$fcfb]
    db $fd
    cp $3f
    cp $1f
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    jp Jump_000_033f


    rst $38
    ld bc, $f9ff
    rlca
    db $fc
    inc bc
    sbc $e1
    rlca
    ld hl, sp+$01
    cp $c0
    ccf
    ld [hl], b
    adc a
    pop de
    rst $28
    ld bc, $ffff
    rst $38
    ret nz

    ret nz

    ret nc

    ret nc

    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    add b
    rst $38
    ld a, a
    ld a, a
    dec a
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc hl
    ld a, a
    inc hl
    ld bc, $0123
    dec hl
    ld bc, $017b
    ld [hl], a
    ld bc, $017f
    ld a, e
    ld bc, $017f
    ld a, a
    inc bc
    ld a, a
    ld bc, $03ff
    rst $38
    ld bc, $03ff
    rst $38
    ld b, c
    rst $38
    db $e3
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38

jr_037_4558:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_037_4558

    inc b
    sbc d
    ld [$40e3], sp
    and l
    ld [hl+], a
    ret c

    dec [hl]
    ret z

    nop
    cp e
    nop
    sbc h
    and d
    ld e, h
    nop
    xor l
    adc d
    ld [hl], l
    ld de, $82ee
    ld a, l
    ld c, b
    or a
    ld h, $f9
    ld [bc], a
    db $fd
    nop
    cp $42
    ld e, [hl]
    pop af
    ld a, a
    inc c
    rrca
    db $f4
    push af
    pop hl
    ld l, c
    push hl
    dec a
    cp $1e
    rra
    rra
    rlca
    ld h, a
    rlca
    rla
    rlca
    add a
    rrca
    rst $28
    rrca
    xor $0f
    ld l, a
    rrca
    ld c, $0f
    adc l
    rrca
    ld c, [hl]
    rrca
    dec l
    rra
    ld a, [de]
    rra
    inc e
    rra
    ld a, [de]
    ccf
    dec [hl]
    ccf
    ld a, [hl-]
    ld [$1577], sp
    ld l, d
    ld a, [bc]
    ld [hl], l
    sub l
    ld [$ff80], a
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $28
    ld a, a
    push af
    ld a, a
    jp hl


    ld a, a
    jp nc, $e8ff

    rst $38
    ret nc

    rst $38
    and d
    rst $38
    ret nc

    rst $38
    and b
    ld hl, sp-$01
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    rst $38
    rrca
    ld hl, sp+$0f
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0818], sp
    sbc b
    ld [$08d8], sp
    ld a, b
    ld [$08fe], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$18ff], sp
    rst $38
    adc b
    rst $38
    jp c, $eeff

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
    ld h, d
    sbc c
    ld a, [bc]
    ldh [rNR41], a
    ld [bc], a
    ld [bc], a
    add b
    ld [bc], a
    ld d, b
    pop bc
    ld [$0021], sp
    sub l
    ld b, b
    ld bc, $9178
    inc h
    xor c
    ld b, d
    ld a, [bc]
    ldh a, [rP1]
    ld a, [$956a]
    add c
    ld a, [hl]

jr_037_465e:
    db $10
    rst $28
    ret nz

    rst $38
    ld l, b
    or l
    sub h
    ei
    push bc
    ld a, [$ff60]
    dec e
    cp $bc
    ld a, a
    cp e
    rst $38
    nop
    nop
    nop
    ld c, b
    nop
    ldh [rP1], a
    ldh a, [$b8]
    ld b, b
    ld e, h
    and b
    ld l, $d0
    ld a, [hl]
    add b
    sbc $20
    cp $00
    ld [$d114], a
    ld l, $a1
    ld e, [hl]
    ld b, c
    cp [hl]
    add e
    ld a, h
    rlca
    ld hl, sp+$0f
    ldh a, [rNR34]
    ldh [$be], a

jr_037_4695:
    ld b, b
    ld a, h
    add b
    cp h
    ld b, b

jr_037_469a:
    ld a, b
    add b
    jr c, jr_037_465e

    db $10
    ldh [rP1], a
    ldh [$e0], a
    nop
    ld h, b
    add b
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    rst $38
    rst $38
    nop
    rst $38
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
    pop af
    ldh [$f1], a
    ld h, b
    ld sp, $7320
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

jr_037_46d1:
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_037_469a

    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    jr nz, jr_037_4744

    jr nz, jr_037_4749

    jr nz, jr_037_46d1

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, e
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld b, c
    adc [hl]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4102
    nop
    nop
    nop
    nop
    nop
    jr jr_037_4695

    nop
    add b
    nop
    add l
    and d

jr_037_471a:
    and b
    ld e, h
    sub l
    ld l, d
    add b
    ld l, b
    ld b, b
    push de
    ld b, b
    ld [$fb58], a
    ld h, d
    rst $30
    ld b, b
    ld [$fa00], a
    and b
    jp hl


jr_037_472e:
    jr nz, jr_037_471a

    jr nz, @-$0c

    jr nz, jr_037_472e

    ld a, d
    rst $38
    db $10
    rst $38
    db $10
    db $f4
    sub b
    cp e
    db $10
    db $dd
    jr @+$01

    ld [$08f7], sp
    rst $38

jr_037_4744:
    ld [$08ff], sp
    rst $38
    inc c

jr_037_4749:
    rst $38
    inc c
    rst $38
    adc h
    rst $38
    and h
    rst $38
    cp $ff
    cp $ff
    sub [hl]
    rst $38
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    cp e
    rst $38
    pop af
    rst $38
    ld [hl], c
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$71
    ld a, b
    adc a
    ld a, b
    adc a
    ld a, b
    adc a
    ld a, b
    adc a
    ld a, b
    adc a
    ld a, b
    adc a
    ld a, b
    adc a
    ld a, b
    sbc a
    ldh a, [$9f]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [rIE]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$c0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$20
    rst $38
    rst $20
    ld hl, sp-$39
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [$cf]
    cp $f1
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
    add c
    cp $82
    rst $38
    add a
    ld a, [$ff80]
    adc b
    rst $30
    add b
    rst $38
    add b
    rst $38
    add e
    cp $80
    rst $38

jr_037_47f2:
    add b
    rst $38
    adc b
    rst $30
    add h
    ei
    add d
    db $fd
    ld [bc], a
    dec b
    ld bc, $0006
    inc bc
    ccf
    cp $87
    ld a, a
    inc bc
    ld a, a
    dec b
    ld a, e
    ld bc, $003f
    rra
    ld [bc], a
    db $dd
    nop
    ld d, a
    nop
    cpl
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $a902
    add h
    jr nc, jr_037_4885

    sub a
    ld [$1ba3], sp
    inc h
    ld [bc], a
    ld d, l
    ld [bc], a
    ld d, l
    nop
    xor $02
    push af
    nop
    xor c
    nop
    dec d
    jr nz, jr_037_47f2

    ld [bc], a
    cp l
    add hl, bc
    ld d, $00
    db $db
    inc bc
    ld a, [hl]
    nop
    sub a
    nop
    ld e, e
    nop
    xor a
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    ld bc, $88ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    nop

jr_037_4885:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rra
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_037_48b5:
    rst $38
    add b
    ld a, a
    ldh a, [$8f]
    cp $e1
    rst $38
    db $fc
    rst $38
    rst $38
    ld b, c
    cp $01

jr_037_48c3:
    cp $44
    cp a
    sub b
    rst $38
    ld e, b
    or a
    ld de, $09ff
    rst $30
    add a
    ei
    inc b
    ei
    add h
    ei
    nop
    rst $38
    nop
    rst $38
    ret nz

    cp a
    ld [bc], a
    rst $38
    add b
    ld a, a
    ret nc

    ccf
    ld b, b
    cp a
    jr nz, jr_037_48c3

    jr nc, jr_037_48b5

    jr jr_037_494f

    inc c
    inc sp
    ld b, $39
    inc bc
    inc e
    ld bc, $7f0e
    ld hl, sp+$3f
    ld hl, sp+$5f
    cp h
    rra
    cp $9f
    ld l, [hl]
    rrca
    rst $38
    ld b, a
    ccf
    ld d, a
    xor a
    rlca
    db $fd
    daa
    db $dd
    rrca
    db $76
    inc bc
    rst $38
    dec bc
    ld [hl], a
    dec h
    db $db
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    db $10
    rst $28
    nop
    rst $38
    or b
    rst $18
    nop
    rst $38
    ld bc, $aabf
    ld e, a
    ld bc, $04ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
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
    ret nc

    rst $38
    ld sp, hl
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    cpl
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_037_494f:
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
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
    ld bc, $03ff
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
    rrca
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    add b
    ld a, a
    ldh a, [rIF]
    db $fc
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
    rst $38
    add b
    ld a, a
    rst $30
    ld a, [hl-]
    or l
    ld a, d
    sbc b
    ld [hl], a
    add b
    ld a, a
    ld b, $f9
    dec d
    ei
    nop
    rst $38
    nop
    rst $38
    nop

jr_037_49e3:
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
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    sbc a
    ld [hl+], a
    db $dd
    db $10
    rst $28
    jr jr_037_49e3

    inc c
    ld [hl], e
    ld b, $79
    inc bc
    inc a
    ld bc, $011e
    ld c, $00
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    rst $38
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    sub a
    ld a, a
    sub a
    rst $38
    ld b, c
    rst $38
    ld [$0fff], sp
    rst $38
    inc bc
    rst $38
    ld d, h
    rst $38
    inc d
    rst $38
    ld hl, $1fff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rla
    rst $38
    ld [hl], a
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    ld [$ffff], sp
    rst $30
    rst $38
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld l, e
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
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
    ccf
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    db $fc
    jp $d0ff


    rst $38
    ret z

    rst $38
    db $e4
    rst $38
    or c
    sub l
    ld [$fa05], a
    pop de
    cp $8a
    rst $38
    ld b, h
    rst $38
    ld a, b
    rst $28
    db $d3
    db $ec
    ld [bc], a
    db $fd
    ld [hl], b
    rst $08
    ld [$4df7], sp
    di
    ld d, b
    rst $28
    add hl, bc
    rst $30
    nop

jr_037_4a9b:
    rst $38
    ld b, b
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
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    ret nc

    ccf
    ret nz

    ccf
    ld h, b
    sbc a
    jr nz, jr_037_4a9b

    db $10
    rst $28
    ld [$0cf7], sp
    di
    ld b, $79
    ld [bc], a
    ld a, l
    ld bc, $003e
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    ei
    db $fc
    db $db
    ld a, h
    pop de
    cp $38
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    db $fd
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
    ld sp, hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$ffff], sp
    ei
    ld l, a
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop

jr_037_4b03:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    db $fc
    jp $f0ff


    add e
    ld a, h
    jr nz, jr_037_4b03

    ld b, b
    cp a
    ld c, b
    or a
    add d
    db $fd
    xor b
    rst $30
    adc d
    db $fd
    inc b
    rst $38
    sbc c
    rst $38
    ld [bc], a
    rst $38
    ld h, c
    rst $38
    ld l, h
    di
    sbc $f3
    dec b
    ei
    ld e, b
    rst $20
    ld a, [de]

jr_037_4b3f:
    push hl
    ld [bc], a
    db $fd
    inc hl
    db $fc
    ld b, a
    ld hl, sp+$04
    ei
    nop
    rst $38
    ld b, b
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
    ld [$00ff], sp
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
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    sbc a
    jr nc, jr_037_4b3f

    db $10
    rst $28
    ld [$0cf7], sp
    di
    ld b, $f9
    inc bc
    db $fc
    ld bc, $007e
    ccf
    nop
    rra
    ccf
    ldh [$7f], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $f6
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    jr nz, @+$01

    xor l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    ldh a, [rIF]
    db $fc
    add e
    rst $38
    ldh [rIE], a
    cp b
    rst $38
    xor [hl]
    rst $38
    sbc $ff
    xor $ff
    ld c, b
    ld sp, $57ce
    add sp, $17
    ld hl, sp+$11
    cp $32
    rst $18
    ldh a, [$9f]
    ld [hl], d
    cp a
    db $10
    rst $38
    ld de, $10ff
    rst $38
    dec hl
    rst $38
    ld [bc], a
    rst $38
    ld e, $ff
    inc a
    rst $38
    dec h
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10

jr_037_4bed:
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    ld a, a
    add d
    ld a, a
    ld b, d
    cp a
    ld h, d
    sbc a
    ld [hl-], a
    rst $08
    jr jr_037_4bed

    inc c
    di
    inc c
    di
    ld b, $f9
    inc bc
    db $fc
    ld bc, $51fe
    xor [hl]
    dec sp
    call nz, $c23d
    ld e, $e1
    rrca
    ldh a, [$f6]
    ld sp, hl
    rlca
    ld hl, sp+$03
    db $fc
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
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld [$0a09], sp
    ld a, [bc]
    jr jr_037_4c41

jr_037_4c41:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    ld [$0a09], sp
    dec h
    ld h, $27
    jr z, jr_037_4c7e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_037_4c8e

    ld [hl-], a
    inc sp
    ld [$3534], sp
    ld [hl], $37
    jr c, jr_037_4c9f

    ld a, [hl-]
    dec sp
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
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    ld d, b

jr_037_4c7e:
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
    nop
    nop
    ld e, [hl]

jr_037_4c8e:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld e, b
    ld e, b
    ld e, b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_037_4c9f:
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld e, b
    ld e, b
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
    ld e, b
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


    jp c, $db00

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [bc]
    db $e4
    push hl
    and $e7
    add sp, $00
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp+$00
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld e, b
    dec d
    nop
    nop
    ld d, $17
    jr jr_037_4d70

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_037_4d80

    ld [hl+], a
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    inc b
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop

jr_037_4d70:
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc b
    inc b
    inc b
    ld bc, $0001
    nop
    nop

jr_037_4d80:
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc b
    inc b
    inc b
    ld bc, $0001
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    ld bc, $0207
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
    inc b
    inc b
    inc b
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
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    ld [bc], a
    inc b
    rlca
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
    ld bc, $0704
    rlca
    inc b
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0701
    rlca
    inc b
    inc b
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0404
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    ld bc, $0101
    inc b
    inc b
    inc b
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    ld bc, $0301
    inc b
    inc b
    inc b
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    ld bc, $0403
    inc b
    inc b
    inc b
    rlca
    rlca
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
    inc bc
    inc b
    inc b
    inc b
    inc b
    rlca
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
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    nop
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    dec bc
    nop
    nop
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [$f0]
    ret nz

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
    db $eb
    rst $38
    cp [hl]
    rst $38
    ret z

    rst $38
    ret


    rst $38
    push bc
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    ld h, e
    rst $38
    sbc b
    rst $38
    ei
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    jp $e0ff


    rst $38
    db $fc
    rst $38
    cp $ff
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$30]
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    adc h
    db $fc
    call nz, $c3ff
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    ld [hl], c
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc e

Jump_037_4f00:
    rst $38
    ld e, $ff
    ld c, $ff
    rlca
    rst $38
    add a
    rst $38
    add e
    rst $38
    jp $c1ff


    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
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
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
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
    db $fc
    ldh a, [$f0]
    add b
    add b
    pop af
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    add sp, -$01
    add h
    rst $38
    ld a, [c]
    rst $38
    daa
    rst $38
    jp hl


    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    ld [hl], b
    rst $28
    ret nc

    cp a
    ld b, h
    ei
    pop bc
    rst $38
    and $fb
    inc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $28
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
    inc b
    rst $38
    and b
    rst $38
    ret z

    rst $38
    or c
    rst $38
    rst $20
    cp $00
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rP1]
    ld hl, sp-$78
    db $fc
    add h
    cp $c2
    cp $c2
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc e
    rst $38
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $7f
    ld a, a
    nop
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
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    di
    db $fc
    rst $38
    rst $38
    ret nz

    rst $38
    ld [bc], a
    db $fd
    ld [$04f7], sp
    rst $38
    ld [de], a
    db $ed
    ld b, l
    cp d
    add [hl]
    ld a, a
    reti


    and [hl]
    ld h, l
    ld a, [$fa25]
    ld [hl-], a
    db $fd
    ld a, [de]
    db $fd
    call z, $8473
    ld a, a
    ld d, d
    xor $05
    ei
    ld b, c
    cp [hl]
    inc b
    ei
    ld bc, $80fe
    rst $38
    add b
    rst $38
    ld [bc], a
    db $fd
    ld b, b
    cp a
    nop
    rst $38
    add e
    db $fd
    ld b, $fb
    inc e
    rst $28
    ld l, c
    cp $10
    rst $38
    jr nc, @+$01

    ld a, c
    rst $38
    db $e4
    ei
    sub b
    rst $38
    ldh a, [rIE]
    ld h, c
    rst $38
    inc bc
    rst $38
    adc b
    rst $38
    reti


    rst $38
    ret c

    rst $38
    and [hl]
    rst $38
    rst $30
    rst $38
    db $d3
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rP1]
    db $fc
    inc b
    db $fc
    add h
    cp $82
    cp $c2
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc e
    rst $38
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
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

jr_037_50f8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
    add b
    add c
    nop
    ld [$0000], sp
    nop
    ld de, $0200
    nop
    ld [$0200], sp
    ld [hl], h
    xor e
    ld [c], a
    db $dd
    sub h
    ld l, d
    ld e, b
    and l
    ld b, c
    or [hl]
    inc l
    jp nc, Jump_037_5ab5

    ld d, h
    xor d
    ld c, b
    sub a
    nop
    push de
    ld b, b
    xor d
    nop
    and l
    ld bc, $90fa
    ld l, a
    jr nc, jr_037_50f8

    ld b, b
    xor c
    ld bc, $54de
    xor e
    and c
    jp c, Jump_000_37c0

    pop hl
    ld e, [hl]
    ld [hl+], a
    db $fd
    sub c
    ld a, a
    xor h
    ld d, a
    sbc l
    db $76
    add $fb
    ld a, [bc]
    rst $30
    dec b
    ei
    dec c
    cp $40
    rst $38
    ld de, $a5ee
    cp $20
    rst $38
    add b
    rst $38
    inc c
    rst $38
    inc b
    ei
    inc b
    ei
    inc c
    rst $38
    jr @+$01

    ld [$01f7], sp
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    adc b
    rst $38
    jr @+$01

    ld h, b
    rst $38
    jr nz, @+$01

    ld b, e
    rst $38
    add [hl]
    rst $38
    jr @+$01

    ld a, l
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ccf
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
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    cp $82
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    inc a
    rst $38
    ld e, $ff
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38

jr_037_51de:
    rst $38
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

    pop bc
    nop
    ld [$2000], sp
    ld a, [hl]
    cp a
    ld a, a
    rst $38
    rst $30
    rst $38
    db $ec
    db $fc
    ld [hl], b
    cp [hl]
    jr c, jr_037_51de

    inc a
    call nz, Call_037_6982
    ld hl, $4a82
    sub l
    jr nc, jr_037_5250

    add c
    ld h, h
    dec b
    ld hl, sp-$7e
    ld e, c
    call nc, Call_000_0022
    xor b
    ret nz

    inc c
    db $10
    ldh [rLCDC], a
    sub [hl]
    ld hl, $00c8
    adc l
    nop
    ld [de], a
    dec b
    and b
    add hl, bc
    inc h
    ld h, b
    sbc d
    sub h
    ld h, c
    ld de, $14ea
    ld c, e
    ld l, b
    sub l
    add b
    ld l, d
    nop
    sub d
    add b
    ld d, h
    ld b, b
    xor d
    and b
    ld d, l
    ld d, b
    xor d
    ld a, [bc]
    push af
    add c
    cp $d0
    ld l, l
    ld l, b
    or $20
    rst $38
    db $10
    rst $38
    ld a, [bc]
    db $fd
    inc b
    rst $38
    ld c, $f5
    dec bc
    or $91
    rst $28
    add b
    rst $38
    inc b
    ei

jr_037_5250:
    ld bc, $00fe
    rst $38
    inc bc
    rst $38
    ld b, $fd
    jr @+$01

    jr nc, @+$01

    ldh [$bf], a
    and h
    rst $38
    ld h, d
    rst $38
    ret nz

    rst $38
    ld [c], a
    rst $38
    db $f4
    rst $38
    rst $30
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    and $ff
    ld e, b
    rst $38
    jr nc, @-$1f

    ld a, d
    rst $38
    ld a, c
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    db $fc

jr_037_52a7:
    inc b
    cp $02
    rst $38
    add c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld e, $ff
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $81ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$02
    rst $38
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    ld b, d
    nop
    add hl, bc
    nop
    ld b, b
    nop
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ld c, a
    inc b
    pop af
    ldh [$1f], a
    nop
    add a
    ld [$6057], sp
    sub b
    add b
    ld b, b
    add b
    ld b, b
    ld b, b
    jr nz, jr_037_52a7

    nop
    jr jr_037_530c

    inc c
    add b

jr_037_530c:
    ld b, $80
    inc bc
    ret nz

    add b
    ld bc, $d300
    add b
    inc b
    stop
    ld b, b
    nop
    and b
    ld bc, $0003
    ld c, $00
    jr nc, @+$24

    ret z

    nop
    adc h
    ld [hl], b
    ld b, b
    inc a
    ld b, b
    cp b
    or b
    ld c, h
    nop
    jr z, jr_037_532f

jr_037_532f:
    add d
    ld [bc], a
    and c
    inc b
    ld d, b
    nop
    ld a, b
    add b
    ld h, b
    nop
    ld b, b
    nop
    ld d, b
    nop
    sub b
    dec d
    ld l, d
    ld [$00f6], sp
    call nc, $a800
    nop
    xor d
    db $10
    add sp, -$7f
    rst $38

jr_037_534c:
    add $ac
    ld c, h
    ldh a, [rSVBK]
    cp d
    ldh a, [$ad]
    jr jr_037_534c

    inc c
    or $04
    ei
    ld [bc], a
    db $fd
    ld de, $21fe
    sub $40
    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    adc b
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $30
    inc e
    rst $38
    ld a, b
    rst $38
    cp b
    rst $38
    ldh [rIE], a
    ld a, [$bfff]
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    db $e3
    rst $38
    rst $20
    rst $38
    rst $18
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
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$30]
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    cp $02
    rst $38
    ld bc, $81ff
    rst $38

jr_037_53b9:
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld a, b
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld e, $ff
    ld e, $ff
    rrca
    jr jr_037_53b9

    ld c, $71
    rlca
    cp b
    ld bc, $005e
    rrca
    nop
    dec b
    nop
    ld b, a
    nop
    db $10
    rst $38
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ld bc, $41ff
    daa
    nop
    rst $38
    nop
    rst $08
    nop
    rst $38
    nop
    rrca
    nop
    ret nz

    nop
    inc bc
    nop
    nop
    inc b
    dec bc
    nop
    nop
    add b
    nop
    ld b, b
    ld bc, $1522
    inc e
    nop
    jr c, jr_037_540a

jr_037_540a:
    add h
    ld b, b
    inc bc
    nop
    inc b
    ld [$2000], sp
    stop
    db $10
    add h
    ld b, b
    nop
    nop
    ld [bc], a
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

jr_037_542e:
    nop
    nop
    ld bc, $0000
    nop
    ld [$2000], sp
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop

jr_037_5440:
    nop
    nop

jr_037_5442:
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
    or b
    add b
    ld [hl], b
    ret nz

    jr nc, jr_037_54b3

    and b
    jr nz, jr_037_542e

    jr nc, jr_037_5442

    jr jr_037_5440

    inc c
    rst $30
    ld b, $fb
    inc bc
    db $fd
    ld bc, $88ff
    rst $38
    db $10
    rst $38
    add b
    rst $38
    db $10
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $03ff
    rst $38
    ld c, $ff
    inc e
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld e, a
    cp $5f
    cp $3f
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
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

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    rst $38
    inc bc
    rst $38
    ld bc, $ff00
    nop

jr_037_54b3:
    rst $38
    jr nz, @+$01

    ret nz

    ccf
    add sp, $1f
    ld a, [hl-]
    rst $00
    inc e
    db $e3
    rlca
    ld a, b
    inc bc
    inc a
    nop
    sbc a
    nop
    inc hl
    nop
    jr nz, jr_037_54c9

jr_037_54c9:
    jr nz, jr_037_54cb

jr_037_54cb:
    nop
    nop
    nop
    nop
    nop
    ccf
    rst $38
    rrca
    rst $18
    rlca
    rst $38
    rlca
    ld a, a
    nop
    rst $38
    nop
    ld h, a
    nop
    cp $08
    rla
    ld h, b
    ld [$0380], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    add b
    nop
    nop
    ld b, b
    jr nz, jr_037_54f4

jr_037_54f4:
    stop
    nop
    ld [$0004], sp
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
    add b
    nop
    add b
    nop
    nop
    nop
    and b
    nop
    ld d, l
    nop
    sub $80
    ld a, a
    ret nz

    rst $38
    ld h, c
    cp a
    inc sp
    cp $1e
    db $fd
    inc e
    rst $38
    inc a
    rst $38
    nop
    nop
    nop
    ld bc, $0700
    ld bc, $030e

jr_037_5529:
    inc c
    rlca
    jr jr_037_552f

    dec e
    nop

jr_037_552f:
    rra
    nop
    rrca
    inc bc
    inc b
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $00
    rst $38
    sub e
    rst $28
    jr z, jr_037_5529

    ld e, b
    and a
    db $10
    rst $28
    inc l
    db $d3
    ld a, [hl+]
    push de
    ld d, $69
    dec d
    ld a, [hl+]
    dec bc
    inc d
    ld a, [bc]
    dec d
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    ld [bc], a
    dec b
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
    nop
    ld bc, $feff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    rst $38
    nop
    rst $38
    sub b
    ld a, a
    ret z

    ccf
    ld [hl], b
    adc a
    add hl, sp
    rst $00
    ld e, $e1
    rlca
    ld a, b
    ld bc, $003e
    rrca
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    ei
    ld c, $ef
    ld b, $ff
    nop
    cp $20
    dec bc
    nop
    ld a, [hl]
    nop
    rst $08
    nop
    sbc a
    nop
    pop hl
    nop
    ld bc, $0700
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_037_55c7:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8002
    nop
    ld [$3000], sp
    nop
    ld b, b
    nop
    inc b
    nop
    ld [bc], a
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

jr_037_55e9:
    nop
    nop
    dec b
    ld bc, $0506
    ld c, d
    jr jr_037_55e9

    ld [hl], b
    rst $08
    and $7f
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    dec a
    rst $38
    nop
    nop
    nop
    ret nz

    ldh a, [rP1]
    ld hl, sp+$00
    ret z

    jr nc, jr_037_55c7

    ld b, b

jr_037_560c:
    ld c, [hl]
    or b
    rst $20
    jr jr_037_560c

    inc b
    ld [hl], h
    adc e
    sbc b
    ld h, a
    nop
    ld a, a
    nop
    ccf

jr_037_561a:
    pop af
    cp $ff
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    daa
    rst $38
    ret nz

    rst $38
    sub b
    rst $38
    sub a
    rst $38
    ld l, a
    rst $38
    call c, $f9ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, e
    cp a
    inc bc
    rst $38
    inc de
    rst $28
    add e
    ld a, a
    sub b
    ld l, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    jr nc, jr_037_561a

    db $fc
    inc bc
    sbc $21
    xor [hl]
    ld d, c
    ld c, a
    or b
    ld d, a
    xor b
    daa
    ld e, b
    dec hl
    ld d, h
    inc de
    inc l
    dec d
    ld a, [hl+]
    ld a, [bc]
    dec d
    inc hl
    db $fc
    rrca
    ld hl, sp+$03
    db $fd
    nop
    rst $38
    add hl, bc
    cp $84
    rst $38
    inc h
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
    ld b, h
    rst $38
    sub b
    ld a, a
    jp nc, $e03f

    rra
    ld [hl-], a
    rst $08
    inc e
    db $e3
    rrca
    ld [hl], b
    inc bc
    inc a
    ld bc, $001e
    rrca
    nop
    inc bc
    nop
    nop
    ccf
    ccf
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld b, $f6
    nop
    push de
    nop
    rst $38
    nop
    rra
    ld bc, $0210
    dec b
    inc c
    nop
    ld [de], a
    jr z, jr_037_56eb

    ld hl, $0182
    nop
    nop
    nop
    db $10
    ld [$0400], sp
    nop
    nop
    ld [bc], a
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
    ld bc, $0103
    inc b
    dec bc
    ld [$2015], sp
    dec d
    ld b, b
    dec a
    add b
    ld e, a
    ld bc, $01ff
    cp $12
    rst $28
    inc l
    rst $10
    sub e
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    rst $38

jr_037_56eb:
    rst $38
    db $dd
    rst $38
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08

jr_037_5700:
    ret nz

    ret nz

    ld h, b
    ldh [$b0], a
    ld [hl], b
    jr c, jr_037_5700

    ld a, b
    cp b
    ld hl, sp+$78
    ldh a, [$f0]
    ldh [$e0], a
    sub $f9
    dec bc
    db $fc
    inc b
    rst $38
    call nz, $83ff
    cp $01
    rst $38
    ld h, [hl]
    rst $38
    call z, $9cff
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ldh a, [rIE]
    rst $20
    rst $38
    adc $ff
    sbc [hl]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
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
    inc bc
    add e
    ld bc, $0181

jr_037_5745:
    pop bc
    ld bc, $81c1
    ld b, c
    add b
    ld h, b
    add b
    ld h, b
    ret nz

    jr nz, jr_037_576a

    rst $28
    ld [$89ff], sp
    ld a, a
    ret nc

    ccf
    ld c, c
    cp a
    ld bc, $12ff
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38

jr_037_576a:
    nop
    rst $38
    db $10
    rst $38
    nop

jr_037_576f:
    rst $38
    db $10
    rst $38
    sub h
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld [hl], b
    adc a
    jr c, jr_037_5745

    ld c, $f1
    rlca
    ld a, b
    ld bc, $003e
    rlca
    nop
    dec c
    nop
    ld bc, $0400
    nop
    add hl, bc
    nop
    ld hl, $d767
    add e
    rst $28
    ld e, a
    ccf
    ld a, a
    sbc a
    ld a, [bc]
    push af
    rlca
    rst $28
    db $10
    xor l
    ld c, b
    scf
    inc c
    inc de
    ld bc, $040e
    inc de
    ld bc, $000e
    dec c
    nop
    ld a, e
    nop
    sub e
    nop
    ld a, [bc]
    nop
    dec bc
    ld bc, $0302
    dec e
    ld [bc], a
    dec l
    nop
    add a
    add b
    ld d, a
    ld b, d
    and l
    jr nc, jr_037_576f

    jr jr_037_57d1

    dec c
    ld c, $07
    add hl, hl
    rlca
    ld a, [bc]
    add hl, bc
    rra
    jr nc, jr_037_582b

    ld b, d
    xor l
    add b
    ld a, a
    nop

jr_037_57d1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld bc, $4bff
    rst $30
    inc hl
    rst $38
    ld bc, $61ff
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    dec e
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
    ccf
    rlca
    ld a, a
    inc bc
    ccf
    nop
    rra
    call c, Call_000_0e0f
    rrca
    rrca
    rlca
    rst $00
    rlca
    rst $30
    inc bc
    jp Jump_000_2101


    ld bc, $1f99
    pop hl
    db $e3
    ld e, $7f
    adc h
    ccf
    ldh a, [$de]
    pop hl
    db $10
    rst $28
    add c
    cp $43
    db $fc
    ld h, $f9
    inc d
    ei
    db $10
    rst $38
    ld [$07ff], sp
    rst $38
    rrca

jr_037_582b:
    rst $38
    sbc $ff
    cp b
    rst $38
    ld [hl], b

jr_037_5831:
    rst $38
    ldh [rIE], a
    jp nz, $8cff

    rst $38
    jr nc, @+$01

    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    db $e3
    rst $38
    rst $28
    rst $38
    call c, $c2ff
    rst $38
    db $ec
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    jr nz, jr_037_5831

    ld c, c
    or $22
    db $fd
    dec h
    cp $12
    rst $38
    ld a, [hl-]
    rst $08
    sbc b
    rst $28
    inc d
    rst $28
    ld l, d
    sub a
    add sp, -$29
    ld h, $db
    sub h
    db $eb
    db $10
    rst $28
    add b
    rst $38
    add b
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
    ld b, c
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    ret


    ccf
    db $e4
    rra
    ld a, b
    add a
    inc e

jr_037_5889:
    db $e3
    ld c, $f1
    inc bc
    ld a, h
    ld bc, $ff3e
    ldh [rIE], a
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ld l, a
    ld e, a
    cp a
    add hl, bc
    rst $30
    ld c, e
    or a
    ld b, a
    cp a
    ld b, c

jr_037_58a7:
    cp a
    jr nz, jr_037_5889

    jr nz, @-$1f

    ld bc, $22ff
    rst $18
    db $10
    ld l, a
    inc b
    rst $38
    nop
    rst $38
    ld de, $03ee
    db $fd
    adc l
    ld a, e
    jr @-$0f

    jr nc, @+$01

    ret nz

    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    jr @+$01

    db $ec
    cp a
    add $ff
    add e
    rst $38
    sub c
    rst $38
    or b
    rst $38
    or b
    rst $38
    cp d
    rst $38
    sbc a
    rst $38

jr_037_58e0:
    ccf
    rst $38
    ld e, $ff
    cp a
    rst $38
    rst $18
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
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_037_58a7

    ld d, b
    ld d, b
    xor b
    jr z, jr_037_58e0

    ld a, b
    add h
    or h
    ld c, d
    rst $38
    daa
    rst $38
    pop bc
    ld a, a
    ld a, h
    ccf
    ld a, $1f
    rra
    rra
    rst $18
    rrca
    rrca
    rlca
    inc b
    rra
    rst $20
    ccf
    jp $ff1d


    rst $38
    rst $38
    rst $28
    ldh a, [$bf]
    ret nz

    ld a, h
    add e
    ldh [$1f], a
    rrca
    db $fc
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ld hl, sp+$7f
    add a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rra
    db $e3
    ld h, a
    sbc a
    ld e, a
    cp a
    ld h, [hl]
    rst $38
    adc [hl]
    rst $38
    call z, $83ff
    ld a, h
    nop
    rst $38
    adc c
    db $76
    db $10
    rst $28
    inc d
    db $eb
    ld d, h
    db $eb
    ld h, h
    ei
    db $eb
    ld a, h
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld b, l
    rst $38
    inc h
    rst $38
    ld a, [hl+]
    rst $38
    ld c, b
    rst $38
    ld d, b
    rst $38
    add h
    rst $38
    add b
    rst $38
    dec b
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc h
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$40ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    dec sp
    ld [hl], b
    adc a
    ld a, h
    add e
    ld e, $e1
    rlca
    ld hl, sp+$01
    ld a, $00
    rrca
    nop
    dec bc
    nop
    dec bc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    ld de, $1fff
    rst $38
    ld c, $ff
    ld a, [de]
    rst $38
    ld h, $ff
    add $ff
    xor a
    ld a, a
    ld l, a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    rrca
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    ei
    rst $38

jr_037_59de:
    rst $38
    rst $38
    rra
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
    cp $ff
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
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    rst $38
    jp $87ff


    rst $38
    adc l
    rst $38
    rra
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    jr c, jr_037_59de

    call c, Call_037_6e20
    sub c
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    ld a, a
    rlca
    rra
    rlca
    rlca
    ld bc, $0001
    nop
    adc a
    ld [hl], h
    sbc e
    rst $28
    ld a, [$7eef]
    rst $28
    ld a, l
    cp $3f
    db $fc
    cp a
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $30
    rst $38
    cp a
    rst $38
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp-$39
    cp $b1
    rst $38
    db $ec
    rst $38
    dec sp
    rst $38
    and [hl]
    rst $38
    and l
    sbc d
    ld h, l
    ld a, [de]
    push hl
    ld c, d
    push af
    inc de
    db $fc
    add hl, hl
    cp $da
    cp a
    db $e4
    sbc a
    ld h, b
    sbc a
    db $ec
    rra
    ld hl, sp+$0f
    ld hl, sp+$07
    ld e, b
    and a
    ld l, b
    sub a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld bc, $22ff
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    ld c, h
    rst $38
    and b
    ld a, a
    call nz, $e03f
    rra
    ld a, b
    add a
    ld e, [hl]
    and c
    rrca
    ldh a, [rIF]
    ldh a, [rSB]
    ld a, $00
    ccf
    nop
    add a
    nop
    inc bc
    nop
    ld bc, $0000
    rra
    rst $38
    ld a, l
    rst $38
    cpl

Jump_037_5ab5:
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld c, $ff
    adc h
    rst $38
    add $ff
    rst $28
    rst $38
    inc a
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    dec a
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    add e
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    db $eb
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld c, $ff
    rlca
    rst $38
    inc bc
    rst $38
    ld h, $ff
    cp l
    rst $38
    ei
    rst $38
    ld sp, $65ff
    rst $38
    rst $00
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    pop hl
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    db $fc
    ld a, a
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc

jr_037_5b1b:
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    ccf
    dec a
    rra
    db $10
    rlca
    nop
    inc bc
    nop
    add hl, de
    jr jr_037_5b1b

    ldh [$80], a
    add b
    nop
    nop
    ld a, b
    add a
    ret nz

    rst $38
    add b
    rst $38
    cp a
    ret nz

    nop
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
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp-$39
    cp $b1
    add e
    ld a, h
    and h
    ld e, e
    jp hl


    ld d, $ce
    ld sp, $21de
    ld e, b
    and a
    ld e, h
    db $e3
    ld [hl], h
    ei
    and l

jr_037_5b71:
    ld a, [hl]
    jp nz, Jump_037_447f

    rst $38
    and b
    rst $38
    add h
    rst $38
    call nc, $80ff
    rst $38
    sub b
    rst $38
    inc de
    rst $38
    inc h
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    ld b, $ff
    ld b, d
    rst $38
    add h
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    sub b
    ld a, a
    ret z

    ccf
    ldh a, [rIF]
    jr c, jr_037_5b71

    ld c, $f1
    rlca
    ld hl, sp+$07
    ld a, b
    ld [bc], a
    dec a
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, e
    rst $38
    dec bc
    rst $38
    ld d, [hl]
    rst $38
    cp h
    rst $38
    ret c

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    jr nc, @+$01

    jr @+$01

    adc h
    rst $38
    and $ff
    ei
    rst $38
    ld sp, hl
    rst $28
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld d, d
    rst $38
    cp d
    rst $38
    cp e
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$38ff], sp
    rst $38
    jr nz, @+$01

    ld bc, $80b8
    add b
    add c
    add sp, $60
    ldh [$f4], a
    ld hl, sp-$3c
    ret nz

    ld [hl+], a
    rst $38
    inc b
    rst $38
    ld c, d
    rst $38
    jr nz, @+$01

    add c
    rst $38
    ld [$40ff], sp
    ld a, a
    ld a, [bc]
    rra
    nop
    rrca
    ret nz

    rlca
    ldh a, [$03]
    jr nc, jr_037_5c4b

    ld [$8401], sp

jr_037_5c4b:
    nop
    ldh [rP1], a
    ld hl, sp+$00
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp-$39
    cp $f1
    rst $38
    db $ec
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    ld l, a
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    ld e, h
    di
    ld d, b
    rst $38
    ld [bc], a
    rst $38
    ld a, [hl-]
    rst $18
    ld d, h
    rst $28
    ld a, b
    xor a
    cp d
    ld c, a
    rst $38
    rlca
    ld a, b
    add a
    ld d, h
    xor e
    ld a, $c1
    ld [hl], d
    call $ff00
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr z, @+$01

    jr z, @+$01

    jr nz, @+$01

    ld b, d
    rst $38
    ld b, b
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    inc h
    rst $38
    nop
    rst $38
    adc b
    ld a, a
    ldh [$1f], a
    ld [hl], h
    adc e
    inc e
    db $e3
    cpl
    ret nc

    inc bc
    db $fc
    ld bc, $007e
    ld a, a
    nop
    ccf
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $18
    rst $38
    db $dd
    rst $38
    push bc
    rst $38
    add c
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rra
    rst $38
    dec de
    rst $38
    rst $38
    rst $38
    ld l, e
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_037_5cdf:
    rst $38
    nop
    rst $38
    add e
    db $fd
    ld h, [hl]
    rst $38
    inc sp
    rst $38
    inc e
    ei
    inc c
    rst $38
    ld b, $ff
    inc bc
    cp $01
    rst $38
    add c
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $18
    nop
    rst $38
    jr nz, jr_037_5cdf

    nop
    rst $38
    db $10
    rst $38
    jr @+$01

    jr nc, jr_037_5d86

    ld [$007f], sp
    ld e, $00
    daa
    nop
    rst $38
    inc b
    ret c

    nop
    ld c, $02
    and l
    nop
    add l
    ld [bc], a
    dec l
    db $10
    ld [bc], a
    ld b, c
    ld [bc], a
    ld a, [bc]
    ld bc, $ffa9
    ld bc, $00ff
    rst $38
    ld bc, $00ff

jr_037_5d29:
    rst $38
    ld [bc], a
    rst $38
    ld de, $007f
    ccf
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
    ld hl, sp-$39
    cp $e1
    rlca
    ld hl, sp+$21
    sbc $10
    rst $28
    ld b, b

jr_037_5d47:
    cp a
    jr nz, jr_037_5d29

    ld b, b
    cp a
    add c
    cp $a9
    or $83
    db $fc
    inc d
    rst $38
    ld d, $ef
    jr jr_037_5d47

    inc b
    rst $38
    jr @+$01

    ld d, b
    rst $38
    jr z, @+$01

    ld a, [bc]
    rst $38
    jr z, @+$01

    inc h
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    nop
    rst $38
    ld [$80ff], sp
    rst $38
    ld de, $20ff
    rst $38
    ld d, d
    rst $38
    ld d, c
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld d, c
    cp a
    add b
    ld a, a
    ld [bc], a
    rst $38
    add b
    rst $38

jr_037_5d86:
    ld bc, $88fe
    ld a, a
    push hl
    ld e, $f8
    rlca
    jr c, @-$37

    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    nop
    ld a, a
    nop
    ccf
    nop
    ld e, a
    nop
    xor e
    nop
    ld c, e
    adc b
    ld [hl], a
    ld a, $ff
    add a
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    adc c
    rst $38
    add e
    cp $ec
    rst $38
    db $fd
    rst $38
    di
    rst $38
    pop bc
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld [$00ff], sp
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    jr z, @+$01

    ldh a, [rIE]
    ldh [rIE], a
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
    add b
    cp a
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $30
    inc c
    rst $38
    ld b, $fd
    ld [bc], a
    rst $38
    add hl, bc
    cp $8c
    ld a, [$ff00]
    ld a, [bc]
    push af
    nop
    rst $38
    ld [$10f7], sp
    rst $28
    nop
    db $fd
    ld a, [bc]
    db $f4
    inc b
    ei
    nop
    rst $38
    ld b, c
    or d
    nop
    push af
    nop
    ld l, b
    ld b, b
    sub b
    nop
    ret nz

    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $8001
    inc bc
    nop
    inc bc
    nop
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
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp-$79
    cp $e1
    rst $38
    ld a, b
    rst $38
    cp $ff
    ld d, a
    rst $38
    ccf
    db $eb
    inc d
    jp z, Jump_000_2435

    db $db
    ld c, l
    ld a, [c]
    ld b, l
    ld a, [$fe01]
    nop
    rst $38
    ld [hl+], a
    rst $38
    jp nz, $03ff

    db $fc
    dec b
    cp $54
    ei
    adc a
    pop af
    sbc [hl]
    pop af
    ld c, a
    ld hl, sp+$55
    ld a, [$f847]
    ld b, e
    db $fc
    add e
    db $fc
    jr nz, @+$01

    nop
    rst $38
    add c
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld b, $ff
    ld a, [bc]
    rst $38
    ld d, d
    rst $38
    sub b
    ld a, a
    ld hl, $60df
    cp a
    jr nz, @+$01

    inc h
    rst $38
    xor c
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], b
    adc a
    inc e
    db $e3
    ld c, $f1
    rlca
    ld hl, sp+$01
    cp $00
    ccf
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    rst $30
    call nz, $84ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    add b
    rst $38
    ld bc, $00ff
    rst $38
    jp nz, $c0ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    inc [hl]
    rst $38
    inc d
    rst $28
    inc b
    ei
    ld [bc], a
    db $fd
    add hl, hl
    sub $54
    xor e
    ld b, d
    cp l
    dec h
    jp c, $bf80

    ld c, d
    push de
    ld [hl], l
    jp z, $f710

    ld [$06bb], sp
    xor b
    ld [bc], a
    ld d, l
    ld bc, $004a
    and b
    nop
    inc hl
    ld bc, $0321
    db $10
    ld [bc], a
    ld c, l
    ld b, $00
    inc b
    ld a, [bc]
    inc c
    nop
    jr jr_037_5f00

jr_037_5f00:
    db $10
    jr nz, jr_037_5f33

    ld b, b
    ld h, b
    nop
    ld b, b
    and b
    ret nz

    nop
    add b
    nop
    nop
    add b
    nop
    nop
    rst $38
    add c
    ld a, a
    di
    rra
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
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp-$79
    cp $e1
    rst $38
    ld a, b
    rst $38

jr_037_5f33:
    ld a, $ff
    daa
    rst $38
    ld b, l
    rst $38
    adc b
    rst $38
    ret c

    rst $38
    sub c
    rst $38
    jp hl


    adc h
    di
    jr @+$01

    jp z, $a47f

    ld a, a
    sub d
    ld a, a
    sub d
    ld a, a
    jp hl


    ccf
    ld [c], a
    sbc a
    add sp, $5f
    ld hl, sp+$4f
    ld d, c
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    inc b
    rst $38
    ld b, d
    rst $38
    add [hl]
    rst $38
    add l
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    sub h
    rst $38
    jr z, @+$01

    db $10
    rst $38
    call nz, $0aff
    rst $38
    ld b, h
    rst $38
    and b
    rst $18
    ld d, b
    xor a
    inc c
    di
    ld d, d
    db $ed
    dec d
    ld a, [$7d96]
    db $d3
    ld l, $f1
    rrca
    add hl, sp
    rst $00
    ld e, $e1
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $007e
    ccf
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [$c8ff], sp
    rst $30
    call nz, Call_037_40fb
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [hl+], a
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
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    db $fd
    pop bc
    ld a, [hl]
    nop
    rst $38

jr_037_5fc2:
    ld a, [de]
    push hl
    inc b
    ei
    ld [hl+], a
    db $dd
    adc b
    ld [hl], a
    dec d
    db $eb
    ld c, e
    or [hl]
    and d
    ld e, l
    add [hl]
    ld a, l
    ld c, h
    sub a
    xor b
    ld e, l
    sbc b
    ld [hl], d
    jr nc, jr_037_5fc2

    ld [hl], b
    add h
    ldh [rNR41], a
    ldh [$80], a
    and b
    ld b, b
    sub b
    jr z, @+$0a

    add h
    inc b
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp-$79
    cp $e1
    rst $38
    ld a, b
    rst $38
    cp [hl]
    rst $38
    add a
    rst $38
    sub a
    ld d, b
    xor a
    add sp, $17
    add b
    ld a, a
    dec h
    jp c, $f54a

    db $10
    rst $38
    inc d
    rst $38
    and [hl]
    rst $18
    db $e4
    sbc a
    inc c
    rst $38
    ld a, [hl+]
    rst $38
    ld c, h
    rst $38
    ld d, b
    rst $38
    sub h
    rst $38
    ld h, l
    rst $38
    ld d, b
    rst $38
    sub h
    rst $38
    dec l
    rst $38
    ld de, $21ff
    rst $38
    ld b, b
    rst $38
    ld de, $85ff
    rst $38
    add d
    rst $38
    nop
    rst $38
    add d
    rst $38
    ld [$01ff], sp
    rst $38
    ld a, [bc]
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    ld d, b
    cp a
    ldh a, [rVBK]
    ld c, [hl]
    or e
    ld d, $e9
    ld c, l

jr_037_6057:
    ld a, [c]
    ld b, $f9
    pop hl
    ld e, $e1
    rra
    ld a, l
    add e
    ld a, $c1
    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    ccf
    nop
    rra
    nop
    daa
    inc bc
    cp $08
    rst $30
    ld b, l
    ld a, [$fb04]
    ld [bc], a
    db $fd
    inc b
    ei
    ld [bc], a
    db $fd
    jr z, jr_037_6057

    dec h
    jp c, $d729

    ld d, a
    xor c
    dec hl
    rst $10
    and [hl]
    ld e, e
    adc l
    db $76
    ld c, b
    cp a
    ld a, [de]
    db $fd
    sub d
    ld a, l
    ld [hl], l
    cp d
    ld [hl], d
    db $ed
    ret z

    db $76
    ld [$91d5], a
    xor $0d
    ld a, [c]
    dec b
    ld a, d
    nop
    ld c, a
    nop
    ld c, c
    nop
    ld a, [hl+]
    nop
    ld b, h
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
    add b
    nop
    ld b, b
    add b
    ld h, b
    nop
    stop
    ld [$0400], sp
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $03
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    ld b, $06
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    inc bc
    inc bc
    inc bc
    inc bc
    jr jr_037_6113

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_037_6123

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_037_6133

    ld a, [hl+]
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $20
    jr nz, jr_037_6142

jr_037_6113:
    jr nc, jr_037_6146

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $2a
    ld a, [hl+]
    scf
    jr c, jr_037_6158

    ld a, [hl-]
    jr nz, jr_037_6142

    dec sp

jr_037_6123:
    inc a
    dec a

jr_037_6125:
    ld a, $2a
    ccf
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    jr nz, jr_037_6152

    ld b, a

jr_037_6133:
    jr nz, jr_037_617d

    ld c, c
    ld b, $06
    ld b, $06
    ld b, $4a
    ld c, e

Jump_037_613d:
    ld c, h
    ld c, l
    ld c, [hl]
    jr nz, jr_037_6162

jr_037_6142:
    ld c, a
    jr nz, jr_037_6195

    ld d, c

jr_037_6146:
    ld b, $06
    ld b, $06
    ld b, $52
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    jr nz, jr_037_6172

jr_037_6152:
    jr nz, jr_037_61ab

    ld e, b
    ld e, c
    ld e, d

jr_037_6157:
    ld e, e

jr_037_6158:
    ld e, h
    ld b, $06
    ld b, $5d
    ld e, [hl]
    ld e, a
    ld h, b
    jr nz, jr_037_6182

jr_037_6162:
    ld h, c
    ld h, d

jr_037_6164:
    ld h, e
    inc bc
    inc bc
    inc bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld b, $67
    ld l, b
    ld l, c
    ld l, d
    jr nz, jr_037_6192

jr_037_6172:
    ld l, e
    ld l, h
    ld l, l
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld l, [hl]
    ld h, [hl]
    ld l, a

jr_037_617d:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    jr nz, jr_037_61a2

jr_037_6182:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    jr nz, jr_037_61b2

jr_037_6192:
    ld a, e
    ld a, h
    ld a, l

jr_037_6195:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    jr nz, jr_037_6125

jr_037_61a2:
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc e

jr_037_61ab:
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d

jr_037_61b2:
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    jr nz, jr_037_6157

    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    jr nz, jr_037_6164

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
    ld a, l
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

jr_037_61f2:
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
    ldh [rTMA], a
    pop hl
    ld [c], a
    db $e3
    db $e4
    cp e
    jr nz, @+$22

    jr nz, jr_037_61f2

    and $e7
    add sp, $02
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0402
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0402
    inc b
    inc b
    ld bc, $0202
    ld [bc], a
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0402
    inc b
    inc b
    ld bc, $0101
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0402
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc b
    inc b
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0402
    inc b
    ld [bc], a
    ld bc, $0201
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0402
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ret nz

    rst $38
    jr c, @+$01

    ld [$42ff], sp
    rst $38
    ld sp, $04ff
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
    ret nz

    rst $38
    ld [hl], b
    ld a, a
    inc e
    rra
    rlca
    rlca
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
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    cp $28
    pop de
    scf
    nop
    ei
    nop
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $81fe
    ld a, [hl]
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    db $fd
    nop
    cp a
    nop
    cp [hl]
    nop
    ldh a, [rP1]
    db $fd
    ld [bc], a
    ccf
    nop
    ret nz

    nop
    ld sp, hl
    nop
    ld a, a
    add b
    rrca
    ldh a, [rSB]
    cp $01
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
    ld b, b
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld h, l
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    inc e
    rra
    rlca
    rlca
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
    add b
    nop
    pop af
    nop
    rst $38

jr_037_644f:
    nop
    nop
    nop
    nop
    rst $38
    ld l, [hl]
    rst $38
    rla
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    rst $38
    or d
    ld b, b
    ld e, [hl]
    ld bc, $1be4
    add sp, $17
    ret nz

    ccf
    ret nc

    cpl
    jr nz, jr_037_644f

    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, a
    nop
    ld a, $00
    dec a
    ld [bc], a
    rra
    nop
    add a
    nop
    and c
    nop
    ld l, $00
    ld a, a
    nop
    adc [hl]
    nop
    rst $38
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
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    add b
    rst $38
    ld h, b
    rst $38
    ld [$c4ff], sp
    rst $38
    ld [hl-], a
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld h, b
    ld a, a
    jr jr_037_64e9

    ld b, $07
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
    ld bc, $0100
    ld bc, $0101
    inc bc
    ld bc, $0103
    rlca
    ld bc, $010f
    rra

jr_037_64e9:
    ld bc, HeaderManufacturerCode
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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rlca
    rlca
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
    ret nz

    rst $38
    nop
    inc l
    sub b
    sbc b
    rlca
    push af
    ld a, [bc]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, h
    inc bc
    db $e3
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, a
    add b
    cp l
    ld b, b
    ei
    nop
    ld a, [hl-]
    nop
    ld c, b
    nop
    ldh a, [rP1]
    ei
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
    rst $38
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
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $00
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
    ld d, b
    rst $38
    ld e, h
    rst $38
    and $ff
    dec sp
    rst $38
    dec e
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ld [hl], b
    ld a, a
    rra
    rra
    rra
    rlca
    rra
    ld bc, $001f
    rra
    nop
    rra
    nop
    rra
    ld e, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    dec sp
    ccf
    dec a
    ccf
    add hl, sp
    ccf
    jr c, @+$41

    jr c, jr_037_65ef

    jr c, jr_037_65f1

    jr z, jr_037_65f3

    jr z, jr_037_65f5

    inc l
    ccf
    ld l, h
    ld a, a
    ld l, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, d
    ld a, a
    ld b, a
    ld a, a
    ld b, b
    ld a, l
    ld b, b
    ld a, l
    ld b, b
    ld a, l
    ret nz

    db $fd
    jp nz, $c0ff

    ld sp, hl
    ret nz

    ei
    ret nz

    ei
    add b
    ei
    add b
    ei
    adc h
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    add b
    rst $30
    sbc b
    rst $38
    or b
    rst $30
    sub b
    rst $30
    ret nc

    rst $30
    pop af
    rst $30
    db $fd
    rst $38
    ld [$f6ff], a

jr_037_65ef:
    rst $38
    rst $38

jr_037_65f1:
    rst $38
    rst $38

jr_037_65f3:
    rst $38
    rst $38

jr_037_65f5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    db $fc
    ld d, c
    xor [hl]
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add hl, bc
    or $ff
    nop
    ld a, a
    nop
    pop hl
    nop
    jp z, Jump_037_4f00

    nop
    dec sp
    inc b
    rst $00
    jr c, jr_037_66b2

    ld [$021d], sp
    rst $28
    db $10
    ld a, a
    add b
    rrca
    ldh a, [rSB]
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
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    ld bc, $8001
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rra
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
    dec bc
    rst $38
    add hl, bc
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    dec de
    rst $38

jr_037_66b2:
    dec de
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    ccf
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
    ret nz

    rst $38
    ld [bc], a
    db $fd
    add sp, $17
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], h
    add b
    add $00
    ldh [rP1], a
    ld [hl], b
    add b
    inc e
    db $e3
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld e, b
    and a
    nop
    rst $38
    ld h, b
    sbc a
    rlca
    nop
    rst $30
    nop
    db $fd
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, a
    add b
    sbc h
    nop
    jp nz, $e701

    nop
    ld a, a
    add b
    ld [hl], a
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, $fcff
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
    ld a, a
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $80ff
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01

jr_037_677b:
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld bc, $90fe
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_037_677b

    ld e, $00
    ld d, a
    nop
    rra
    nop
    rra
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
    ld bc, $98fe
    ld h, b
    pop af
    nop
    ld a, a
    nop
    rlca
    nop
    nop
    nop
    ret nz

    nop
    inc l
    db $10
    and [hl]
    jr jr_037_67f8

    nop
    add $00
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
    ccf
    ret nz

    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld e, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_037_67f8:
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
    rrca
    rst $38
    ld b, b
    cp a
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    nop
    add l
    nop
    ret nz

    nop
    inc bc
    nop
    ret nc

    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $e1
    ccf
    ret nz

    ld h, b
    add b
    add e
    nop
    inc e
    nop
    xor $00
    cp $00
    cp $00
    ld a, b
    nop
    jr c, jr_037_6836

jr_037_6836:
    ld b, b
    nop
    add h
    nop
    nop
    nop
    rlca
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
    ld bc, $00fe
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    db $dd
    nop
    cp $00
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    db $fc
    inc bc
    ld b, [hl]
    cp c
    dec d
    ld [c], a
    ld l, a
    add b
    inc a
    ret nz

    ret nz

    nop
    ld l, a
    nop
    nop
    nop
    nop
    nop
    ret c

    nop
    ld c, $00
    nop
    nop
    rlca
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    ld a, a
    nop
    sbc a
    ld h, b
    ld a, h
    add e
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [$f0]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]

jr_037_68fc:
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    rst $38
    nop
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
    ld bc, $7fff
    nop
    cp l
    nop
    rst $30
    nop
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    ccf
    ret nz

    jr c, jr_037_68fc

    db $10
    add b
    ld b, h
    add b
    inc h
    nop
    stop
    add b
    nop
    jr c, jr_037_6948

jr_037_6948:
    cp l
    nop
    ld c, $00
    rra
    nop
    rst $38
    nop
    rst $00
    nop
    inc bc
    nop
    ld c, $01
    ld a, h
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
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
    nop
    rst $38
    nop
    rst $38
    ld e, a
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]

Call_037_6982:
    ret nz

    rst $38
    ldh [rIE], a
    jp nz, Jump_000_3fff

    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
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
    nop
    rst $38
    nop
    rst $38
    xor b
    ld d, a
    ld bc, $30fe
    rst $08
    ld a, [de]
    ldh [$c1], a
    nop
    jp nz, Jump_037_7000

    nop
    inc e
    nop
    ld [bc], a
    nop
    dec de
    nop
    ld [bc], a
    nop
    ld e, $00
    ld hl, sp+$00
    nop
    nop
    ld bc, $0700
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
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
    db $fc
    inc bc
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
    nop
    rst $38
    ld d, $ff
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
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
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
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
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld a, [hl]
    nop
    inc b
    nop
    add e
    nop
    ld bc, $8100
    nop
    inc [hl]
    nop
    ld [$0000], sp
    nop
    add e
    nop
    ld c, $01
    jr jr_037_6a6f

    jr nz, jr_037_6a89

    ret nz

    ccf
    nop
    rst $38
    nop

jr_037_6a6f:
    rst $38
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    ld [bc], a
    db $fd
    inc bc
    db $fc
    dec de
    db $e4
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

jr_037_6a89:
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
    inc c
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
    rrca
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ret nz

    add sp, -$01
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    pop hl
    nop
    daa
    nop
    ret nz

    nop
    pop bc
    nop
    ld b, $01
    jr @+$09

    jr nz, jr_037_6aff

    add b
    ld a, a
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
    rst $38
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    inc de
    db $ec
    daa
    ret c

    ld c, a
    or b
    cp a
    ld b, b
    ld a, a

jr_037_6aff:
    add b
    db $fc
    inc bc
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $08ff
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
    rlca
    rst $38
    ld a, b
    ld hl, sp-$80
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
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    and $ff
    sbc a
    rst $38
    dec c
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc c
    inc bc
    or b
    rrca
    ldh [$1f], a
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    ret nz

    ccf
    sub b
    ld l, a
    inc hl
    db $dd
    ld c, h
    or e
    reti


    ld h, $70
    adc a
    pop hl
    ld e, $c3
    inc a
    rra
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
    nop
    db $fc
    inc bc
    ldh a, [rIF]
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
    ld bc, $08ff
    rst $38
    nop
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
    rst $38
    ld a, b
    ld hl, sp-$80
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
    rlca
    rlca
    ccf
    ccf
    ccf
    jr c, jr_037_6c04

    jr nc, jr_037_6c06

    jr nc, jr_037_6c08

    jr nc, jr_037_6c0a

    jr nc, jr_037_6c0c

    jr nc, jr_037_6c0e

    jr nc, jr_037_6c10

    jr nc, jr_037_6c12

    jr nc, jr_037_6c14

    jr nc, jr_037_6bf6

    db $10
    rra
    jr jr_037_6bfa

    jr jr_037_6bfc

    jr jr_037_6bfe

    jr @+$21

    jr jr_037_6c02

    jr jr_037_6c04

    jr jr_037_6c06

    jr jr_037_6c08

    jr jr_037_6c0a

    jr jr_037_6c0c

    jr jr_037_6c0e

    jr jr_037_6c10

    jr jr_037_6c12

    jr jr_037_6c10

    inc e

jr_037_6bf6:
    jr @+$21

    jr @+$21

jr_037_6bfa:
    jr @+$21

jr_037_6bfc:
    jr @+$21

jr_037_6bfe:
    ld [$0c0f], sp
    rrca

jr_037_6c02:
    inc c
    rrca

jr_037_6c04:
    inc c
    rrca

jr_037_6c06:
    inc c
    rrca

jr_037_6c08:
    inc c
    rrca

jr_037_6c0a:
    inc c
    rrca

jr_037_6c0c:
    inc c
    rrca

jr_037_6c0e:
    inc c
    rrca

jr_037_6c10:
    inc c
    rrca

jr_037_6c12:
    inc c
    rrca

jr_037_6c14:
    inc c
    rrca
    ld c, $0f
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
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
    rra
    rst $38
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    pop bc
    ccf
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    ld b, b
    rst $38
    add d
    db $fd
    ld l, e
    sub h
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    sbc $21
    rst $38
    nop
    db $fd
    ld [bc], a
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
    rst $38
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
    ld hl, sp+$07
    ldh a, [rIF]
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
    rlca
    rst $38
    ld a, b
    ld hl, sp-$80
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

jr_037_6ca9:
    nop
    rlca
    rlca
    ld a, a
    ld a, a
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    inc c
    di
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, $c1
    jr nz, jr_037_6ca9

    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    add b
    ld a, a
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$3f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    ld bc, $02ff
    rst $38
    inc bc

jr_037_6d2b:
    cp $04
    rst $38
    ld [$18ff], sp
    rst $28
    jr jr_037_6d2b

    cp l
    ld h, d
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    rst $08
    jr nc, jr_037_6d51

jr_037_6d51:
    rst $38
    add b
    ld a, a
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
    rlca
    rst $38
    ld hl, sp-$08
    add b
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

jr_037_6d80:
    nop
    nop

jr_037_6d82:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, a
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc

jr_037_6d94:
    pop hl
    ld e, $e7
    jr jr_037_6d80

    jr jr_037_6d82

    jr jr_037_6d94

    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$0ff0], sp
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld a, b
    add a
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    add hl, sp
    add $39
    add $39
    add $39
    add $39
    add $39
    add $39
    add $3d
    jp nz, $c23d

    inc a
    jp $c33c


    inc e
    db $e3

jr_037_6dd6:
    inc e
    db $e3
    inc e
    db $e3
    sbc h
    ld h, e
    inc e
    db $e3
    inc d
    db $eb
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
    jr nz, @+$01

    ld hl, $20ff
    rst $38
    nop
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

    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38

jr_037_6e04:
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
    ld b, b
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    ld bc, $82ff
    ld a, a
    add d
    ld a, a
    sub [hl]
    ld l, e
    inc b
    rst $38

Call_037_6e20:
    inc b
    rst $38
    add [hl]
    ld a, l
    dec b
    cp $c9
    ld a, $ed
    ld a, [de]
    rst $28
    jr jr_037_6e04

    jr c, @+$01

    db $10
    sbc $31
    rst $28
    jr nc, @+$01

    jr nz, jr_037_6dd6

    ld h, b
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld [$04f0], sp
    ld hl, sp+$03
    db $fc
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38

jr_037_6e5c:
    ld bc, $00ff
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
    ld bc, $07ff
    rst $38
    ld hl, sp-$08
    nop
    nop
    inc bc
    inc bc
    ccf
    ccf

jr_037_6e76:
    rst $38
    db $fd

jr_037_6e78:
    rst $38
    pop bc

jr_037_6e7a:
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$ef]
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $20
    jr jr_037_6e76

    jr jr_037_6e78

    jr jr_037_6e7a

    jr jr_037_6e5c

    jr c, jr_037_6ed6

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f8
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $e4
    dec de
    inc d
    rst $38
    ld bc, $fffe
    nop
    ld a, [bc]
    push af
    nop
    rst $38

jr_037_6ed6:
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

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
    rst $38
    rst $38
    rst $38
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
    ret z

    scf
    db $e4
    dec de
    push bc
    ld a, [hl-]
    call $cd32
    ld [hl-], a
    rst $28
    db $10
    rst $28
    db $10
    rrca
    ldh a, [$fb]
    inc b
    ei
    inc b
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
    ld c, a
    ccf
    adc a
    ld a, a
    rra
    rst $38
    rra
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
    rst $38
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    sbc b
    sbc a
    jr jr_037_6f7f

    rra
    rra
    rra
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
    rrca
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    add a
    add a
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00

jr_037_6f7f:
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    db $e3
    ld h, e
    db $e3
    ld h, e
    db $e3
    ld h, e
    db $e3
    ld h, e
    db $e3
    ld h, e
    db $e3
    ld h, e
    db $e3
    ld h, e
    db $e3
    ld h, e
    di
    inc sp
    pop af
    ld sp, $31f1
    pop af
    ld sp, $31f1
    pop af
    ld sp, $31f1
    ld sp, hl
    add hl, de
    ld sp, hl
    add hl, de
    ld sp, hl
    add hl, de
    ld sp, hl
    add hl, de
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $ec
    inc e
    db $ec
    inc e
    db $fc
    inc c
    db $fc
    inc c
    or $0e
    or $0e
    and $1e
    and $1e
    and [hl]
    ld e, [hl]
    add [hl]
    ld a, [hl]
    ld b, $fe
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
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38

Jump_037_7000:
    and d
    rst $38
    add c
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $28
    ld h, b
    rst $18
    ld l, b
    rst $10
    ld hl, sp+$47
    db $fc
    ld b, e
    ld a, h
    jp $807f


    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$20
    ld a, b
    ldh [$78], a
    ldh [$7c], a
    ldh a, [$3c]
    ldh a, [$3c]
    ldh a, [$3e]
    ldh a, [$3e]
    ldh a, [$3e]
    ldh a, [$3f]
    ldh a, [$3f]
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$78
    sbc b
    ld hl, sp+$18
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    cp $0e
    cp $06
    or $0e
    or $0e
    or $0e
    or $0e
    or $0e
    rst $30
    rrca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ld sp, hl
    rlca
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
    cp $01
    cp $81
    cp $81
    cp $81
    cp $81
    cp $81
    rst $38
    add b
    rst $38
    add b
    cp $81
    db $fc
    add e
    ld sp, hl
    add a
    di
    rst $08
    rst $20
    rst $18
    rst $08
    cp $df
    db $fc
    rst $38
    ld hl, sp+$7f
    jr nc, jr_037_713c

    nop
    ld a, a
    nop
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
    nop
    ccf
    nop
    ccf
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
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    adc a
    add b
    adc a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$48ff], sp
    cp a
    inc l
    rst $10
    sbc h
    ld h, a
    add $3b
    ld a, [hl]
    add e
    cp $01
    cp $01
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
    nop
    inc bc
    nop

jr_037_713c:
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
    rra
    nop
    ccf
    nop
    ccf
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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    rst $08
    ret nz

    rst $28
    ret nz

    rst $38
    ret nz

    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
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
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
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
    rrca
    rst $38
    rlca
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
    ret nz

    ccf
    ei
    inc b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld b, $06
    ld b, $06
    ld b, $0d
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $0c
    ld b, $17
    jr jr_037_7225

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_037_7235

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    daa
    jr z, jr_037_7246

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_037_724c

jr_037_7225:
    daa
    daa
    daa
    daa
    daa
    daa
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $06
    scf
    jr c, jr_037_725c

jr_037_7235:
    daa
    daa
    daa
    daa
    daa
    daa
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, $40
    ld b, c
    daa

jr_037_7246:
    daa
    daa
    daa
    daa
    daa
    ld b, d

jr_037_724c:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, $47
    ld b, $48
    ld c, c
    daa
    daa
    daa
    daa
    daa
    daa
    ld c, d

jr_037_725c:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld b, $06
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
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld b, $06
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
    ld b, $06
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
    db $76
    ld [hl], a
    ld a, b
    ld b, $06
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
    ld b, $06
    add a
    ld b, $88
    adc c
    ld b, $8a
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    ld b, $06
    sub e
    ld b, $94
    sub l
    ld b, $06
    ld b, $06
    ld b, $06
    sub [hl]
    sub a
    sbc b
    sbc c
    ld b, $06
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    ld b, $06
    and d
    and e
    and h
    and l
    ld b, $a6
    and a
    xor b
    add hl, bc
    xor c
    xor d
    xor d
    xor d
    xor e
    xor h
    ld b, $ad
    xor [hl]
    xor a
    or b
    or c
    ccf
    or d
    or e
    or h
    xor d
    xor d
    xor d
    xor d
    xor d
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
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    ret nz

    pop bc
    jp nz, $c306

    ld b, $c4
    push bc
    add $aa
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    rst $00
    ret z

    ret


    ld b, $ca
    set 1, h
    call $aace
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    rst $08
    ret nc

    pop de
    jp nc, $01d3

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld [bc], a
    inc bc
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
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0200
    ld bc, $0206
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
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
    inc b
    inc b
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0204
    ld bc, $0402
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    ld bc, $0202
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    di
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
    ld a, a
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
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
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
    rra
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
    rlca
    rst $38
    rlca
    rst $38
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    cp $3f
    db $fc
    ccf
    cp $7d
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld [c], a
    db $fd
    sub $e9
    call $dff2
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
    rst $38
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$02
    ld sp, hl
    cp $f9
    cp $f9
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    di
    ld hl, sp-$09
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
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
    ld bc, $01fc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$00
    rst $38
    inc b
    rst $38
    ld c, $ff
    rst $38
    rrca
    cp $1f
    db $fc
    ccf
    ld hl, sp+$3f
    db $fc

jr_037_7619:
    ld a, a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    and d
    ld e, l
    ld [$f015], a
    rrca
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    jr nz, jr_037_7619

    ld de, $71ee
    adc [hl]
    and e
    ld e, h
    or $8e
    db $f4
    adc h
    db $f4
    adc h
    db $f4
    adc h
    ld a, [c]
    ld c, $e2
    ld e, $e2
    ld e, $e3
    rra
    db $e3
    rra
    db $e3
    rra
    ld [c], a
    ld e, $e0
    inc e
    ldh [rNR32], a
    ld [c], a
    ld e, $e2
    ld e, $e3
    rra
    db $e3
    rra
    db $e3
    rra
    jp $c33f


    ccf
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
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
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    ld [hl+], a
    rst $38
    ld h, d
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
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $08ee
    rst $30
    pop bc
    ld a, $e0
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    ld l, h
    sub e
    ccf
    ret nz

    rst $38
    nop
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
    jr nz, @-$1b

    ld h, b
    ld h, e
    ld b, b
    ld b, e
    nop
    ld b, e
    nop
    ld b, a
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    add a
    nop
    rst $28
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    cp h
    rst $38
    add a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    rra
    rra
    ld bc, $0001
    nop
    ld hl, sp+$00
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
    nop
    nop

jr_037_7782:
    nop
    nop

jr_037_7784:
    nop
    nop

jr_037_7786:
    nop
    nop
    ld a, a
    nop
    add b
    ld a, a
    nop
    rst $38
    ccf
    rst $38
    ld a, [$43ff]
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld h, c
    cp [hl]

jr_037_77a8:
    inc hl
    db $fc
    ld [hl+], a
    db $fd
    nop
    rst $38
    adc $31
    rst $08
    jr nc, jr_037_7782

    jr nc, jr_037_7784

    jr nc, jr_037_7786

    jr nc, jr_037_77a8

    db $10
    ld l, a
    sub b
    ld h, a
    sbc b
    ld l, a
    sub b
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, h
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
    ldh a, [rIE]
    rrca
    rrca
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
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
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld a, [bc]
    db $fd
    ld [$04ff], sp
    rst $38
    add d
    ld a, a
    inc bc
    cp $1d
    db $e3
    ld a, h
    add e
    ld a, [hl]
    add c
    cp [hl]
    ld b, c
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
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    ret nz

    rst $38
    inc a
    rst $38
    rlca
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $fe00
    ld bc, $ff00
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, d
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
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
    ld b, $f9
    ld c, e
    or h
    rst $30
    ld [$807f], sp
    ld e, a
    and b
    rra
    ldh [$5f], a
    and b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
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
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, h
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, h
    ld a, a
    inc bc
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
    ld bc, $1f00
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
    rst $38
    nop
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $00
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add [hl]
    ld a, c
    swap h
    ld [c], a
    dec e
    push af
    ld a, [bc]
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
    rst $38
    nop
    ccf
    ret nz

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
    ld bc, $02fe
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    ret nz

    rst $38
    ld a, b
    db $fc

jr_037_796e:
    jr jr_037_796e

    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp $3e
    ld a, $04
    nop
    ld b, $00
    ld b, $00
    rlca
    ld [bc], a
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
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    ld a, [bc]
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    ld b, $0b
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    ld [$0807], sp
    rlca
    ld [$0906], sp
    nop
    rrca
    ld b, $09
    rlca
    ld [$1f00], sp
    ld b, $1f
    rlca
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    ld bc, $011f
    rra
    ld bc, $011f
    rra
    ld hl, $611f
    rra
    pop hl
    rra
    pop hl
    rra
    push hl
    rra
    rst $28
    rra
    rst $28
    rra
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rst $38
    rrca
    rra
    rst $28
    ccf
    pop af
    rst $38
    ld sp, hl
    rst $18
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [rTIMA]
    ld hl, sp+$01
    cp $80
    rst $38
    rrca
    ldh a, [$03]
    db $fc
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
    ret nz

    ccf
    jp nz, Jump_037_613d

    sbc [hl]
    ld a, [$3805]
    rst $00
    ei
    inc b
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
    cp $00
    rst $38
    ld h, b
    sbc a
    jr @-$17

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
    rra
    nop
    ld bc, $00ff
    rst $38
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_037_7a88

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld [hl], b
    ldh a, [$7f]
    rst $38
    ccf
    rst $38
    dec a
    cp $9f
    ld a, h
    cp e
    ld e, h
    ld c, l
    cp [hl]
    xor a
    ld e, [hl]
    sbc [hl]
    rst $28
    sub $2f
    cp $87
    cp [hl]
    rst $00

jr_037_7a88:
    rst $08
    or a
    rst $08
    scf
    rst $18
    db $e3
    rst $18
    db $e3
    or a
    rl e
    rst $28
    ld bc, $03ff
    rst $38
    rla
    rst $38
    sub a
    rst $38
    and d
    rst $38
    nop
    rst $38
    rra
    ldh [$3d], a
    jp nz, $c33c

    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    nop
    cp $03
    add h
    rlca
    add h
    rlca
    add h
    rlca
    add h
    rlca
    add h
    rlca
    add b
    rlca
    add h
    rlca
    add b
    rlca
    add b
    rlca
    add h
    rlca
    add h
    rlca
    add h
    rlca
    add h
    rlca
    add h
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    ld a, a
    ldh [rIE], a
    add b
    rst $38
    ldh a, [rIF]
    pop af
    ld c, $f1
    rrca
    cp $ff
    nop
    rst $38
    cp c
    ld b, [hl]
    jp c, $fd00

    nop
    ei
    nop
    sbc a
    nop
    daa
    ret nz

    dec d
    add sp, $07
    ld hl, sp+$00
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
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
    add b
    ld a, a
    cp c
    ld b, a
    cp b
    ld b, a
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [hl], b
    adc a
    rrca
    ldh a, [rP1]
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rrca
    rrca
    rst $38
    rst $38
    add sp, -$01
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    jp $ffbf


    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add c
    cp $10
    rst $28
    add b
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    add sp, $17
    ret nz

    ccf
    ret nz

    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ccf
    rst $38
    nop
    rst $38
    inc d
    rst $38
    ld a, e
    rst $38
    inc bc
    rst $38
    cp $01
    cp $01
    rst $38
    ld bc, $ffff
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nc

    rst $38
    ld hl, sp+$07
    nop
    rst $38
    cp $01
    rst $38
    rst $38
    nop
    rst $38
    ld h, a
    sub b
    daa
    sbc b
    ret c

    rlca
    ld a, a
    nop
    db $fd
    ld [bc], a
    ld a, e
    nop
    cp $00
    ret nz

    jr nz, jr_037_7c4a

    ld [$827d], sp
    ld [hl], e
    add b
    ld e, $e0
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rrca
    ldh a, [rNR22]
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    ld bc, $00ff
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
    ldh a, [rIF]
    ld c, $f1
    ld bc, $00fe
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, $3f
    dec c
    ccf
    rrca
    rra
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rra
    jr @+$01

    ld hl, sp-$01
    db $fc
    rrca
    db $fc
    adc a
    ld a, h
    adc a
    ld a, h
    add a
    ld a, [hl]
    add a
    ld a, [hl]
    add a
    ld a, [hl]
    add a
    ld a, [hl]
    add e
    ld a, a
    add e
    ld a, a
    adc e
    ld [hl], a
    or e
    ld c, a

jr_037_7c4a:
    pop bc
    ccf
    add c
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$1f]
    ldh [$5f], a

jr_037_7c57:
    and b
    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ld e, a
    and b
    ldh a, [$cf]
    ld hl, sp-$31
    db $fc
    rst $20
    cp $61
    ccf
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    add b
    db $fc
    ld d, b
    add sp, $70
    adc b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rSC]
    ld d, b
    and [hl]
    ld [hl], b
    add h
    db $10
    db $e4
    ld d, b
    and [hl]
    ld [hl], b
    add [hl]
    ld [hl], b
    add a
    db $10
    rst $20
    jr nc, jr_037_7c57

jr_037_7c90:
    db $10
    rst $20
    db $10
    rst $20
    inc de
    rst $28
    add hl, de
    rst $20
    nop
    rst $38
    db $10
    rst $28
    rra
    rst $38
    rst $38
    ldh [$03], a
    db $fc
    pop af
    nop
    ld b, b
    ccf
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ei
    inc b
    ld h, b
    sbc a
    rst $10
    ld [$01be], sp
    dec b
    nop
    rst $18
    jr nz, jr_037_7d30

    ld [$0097], sp
    ldh [rP1], a
    jr z, jr_037_7c90

    dec bc
    db $f4
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    db $10
    rst $38
    db $e3
    rst $38
    dec l
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a

jr_037_7d30:
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld sp, hl
    nop
    ret nz

    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$48f7], sp
    or a
    nop
    rst $38
    ld a, a
    add b
    ei
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    dec a
    nop
    db $fc
    nop
    ld d, $80
    dec de
    ldh [$0e], a
    ldh a, [rTIMA]
    ld a, [$fd02]
    ld bc, $00fe
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
    nop
    rst $38
    nop
    rst $38
    inc sp
    rst $38
    rst $18
    rst $38
    ld h, a
    rst $38
    or h
    rst $38
    reti


    rst $38
    di
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
    rst $38
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
    and b
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $09fe
    or $04
    ei
    nop
    rst $38
    ld d, b
    xor a
    ld l, h
    sub e
    call nc, $dd2b
    ld [hl+], a
    ld a, a
    nop
    sbc $01
    ld c, a
    nop
    di
    nop
    sbc a
    ld b, b
    rst $28
    nop
    ld sp, hl
    nop
    ld a, a
    nop
    ld a, [hl]
    add b
    ccf
    ret nz

    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
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
    nop
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
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ret


    rst $38
    rst $28
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
    db $fc
    rst $38
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$03]
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
    ld [c], a
    dec e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$03]
    ld [de], a
    dec c
    ld a, [hl]
    ld bc, $8112
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
    ldh a, [rIF]
    swap h
    ld a, [c]
    dec c
    pop hl
    ld e, $ff
    nop
    db $fc
    inc bc
    or b
    ld [$0265], sp
    ld a, [hl-]
    nop
    pop af
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ldh a, [rIF]
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
    ld bc, $03ff
    rst $38
    ld b, $ff
    rra
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
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

jr_037_7f3f:
    rst $38
    add b
    ld a, l
    rla
    add sp, $00
    rst $38
    nop
    rst $38
    ld [bc], a
    adc l
    ld l, c
    sub h
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$00
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
    jr nz, jr_037_7f3f

    and c
    ld e, [hl]
    pop hl
    ld e, $1d
    ld [c], a
    rst $38
    nop
    db $fd
    nop
    sbc h
    ld [bc], a
    ld [hl], d
    adc c
    pop af
    ld c, $ff
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
    ld hl, sp+$07
    ld hl, sp+$07
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
    ld a, [bc]
    rst $38
    dec c
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
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
    jp Jump_000_0418


    ei
    nop
    rst $38
    nop
    rst $38
    add b
    rrca
    nop
    rlca
    ldh a, [rTAC]
    db $10
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
    db $01
    db $fe
