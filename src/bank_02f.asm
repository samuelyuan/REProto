SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

    adc b
    ccf
    inc [hl]
    rrca
    dec c
    inc bc
    ld d, b
    adc c
    add sp, $00
    ldh [rNR10], a
    add h
    ret c

    add d
    ldh a, [$eb]
    call nz, $c46a
    ld c, b
    rst $00
    ld h, [hl]
    pop bc
    ld [$38ff], sp
    jp nc, $92c8

    and b
    sbc [hl]
    adc $e3
    db $e4
    ld sp, hl
    db $f4
    db $fd
    ld a, [$fffd]
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
    sub l
    ld a, [$ff00]
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    rlca
    nop
    ld [bc], a
    nop
    ld b, $00
    nop
    nop
    add hl, bc
    nop
    ld de, $0000
    nop
    ret nz

    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    ld b, c
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    cp $80
    db $fc
    add b
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    and e
    nop
    add d
    nop
    adc d
    nop
    nop

Jump_02f_40a1:
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
    ld hl, sp+$07
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
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    add a
    nop
    rst $28
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
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
    ld a, [hl-]
    rst $38
    sub l
    ld a, [$de21]
    inc b
    ei
    ld b, b
    cp a
    and e
    call c, $ff20
    ld h, h
    dec de
    ld d, e
    inc l
    ld l, b

Jump_02f_40ff:
    rlca
    rlca
    ld [$c020], sp
    ld b, b
    and b
    sub b
    ldh [$94], a
    ld hl, sp+$03
    sbc $b0
    rrca
    sbc a
    ld h, $04
    adc e
    jp nz, $b001

    ld c, c
    ld sp, $edcc
    ld a, [c]
    jr nc, @-$10

    jp nc, Jump_000_1f3f

    rst $38
    db $eb
    rst $30
    jp nc, $e5e1

    ld hl, sp-$07
    call z, $c7e4
    ei
    jp $ebf5


    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    db $e4
    db $db
    inc h
    rrca
    ldh a, [rSB]
    cp $40
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp z, RST_00

    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    inc b
    nop
    inc c
    nop
    stop
    and b
    nop
    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld hl, $0000
    nop
    nop
    nop
    ld [$1800], sp
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    jp nz, $8000

    nop
    ld bc, $8200
    nop
    add e
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    pop bc
    nop
    call nc, Call_000_1800
    nop
    jr jr_02f_4194

jr_02f_4194:
    ld [$6000], sp
    nop
    inc c
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    add h
    nop
    sbc h
    nop
    pop hl
    nop
    db $e4
    nop
    ld b, [hl]
    nop
    ld b, b
    add b
    ret nz

    rra
    ld hl, sp+$03
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    add c
    nop
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    sbc a
    ld a, d
    db $d3
    ld l, $d1
    cpl
    add hl, bc
    or $08
    rst $30
    ld a, [bc]
    push af
    rst $38
    nop
    ccf
    ret nz

    xor l
    ld d, d
    dec hl
    call nc, Call_02f_601f
    db $76
    add hl, bc
    ld c, $01
    ld de, $0322
    add b
    pop bc
    nop
    jp hl


    jr nc, jr_02f_4237

    ret c

    ld c, c
    and $ec
    di
    ld b, h
    ld a, [$6ef0]
    ld c, a
    or b
    sub l
    add hl, sp
    cp [hl]
    ei
    ld l, c
    inc sp
    db $fc
    inc de
    ld d, l
    ld a, $d8
    ccf
    inc l
    rra
    dec [hl]
    xor $b8
    rst $38
    nop
    ld bc, $0102
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d

jr_02f_4237:
    dec d
    rlca
    ld d, $17
    jr jr_02f_4256

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02f_4266

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_02f_4276

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02f_4286

    ld [hl-], a

jr_02f_4256:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02f_4296

    ld a, [hl-]
    rlca
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_02f_4266:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    rlca
    rlca
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_02f_4276:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    rlca
    rlca
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_02f_4286:
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rlca
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_02f_4296:
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
    rlca
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
    rlca
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
    rlca
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
    rlca
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
    rlca
    rlca
    rlca
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $07db

    rlca
    rlca
    rlca
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [rTAC]
    rlca
    rlca
    rlca
    rlca
    pop af
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
    jr jr_02f_4372

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $07
    rra
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0301
    nop

jr_02f_4372:
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    inc b
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld b, $06
    inc bc
    inc bc
    nop
    inc bc
    inc b
    inc b
    ld bc, $0101
    ld bc, $0103
    ld bc, $0601
    ld b, $00
    nop
    nop
    inc bc
    inc b
    inc b
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld b, $06
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    rlca
    ld bc, $0301
    inc bc
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    nop
    rlca
    ld bc, $0101
    ld bc, $0202
    ld b, $02
    nop
    ld [bc], a
    ld bc, $0005
    inc b
    nop
    rlca
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    nop
    ld b, $02
    nop
    ld [bc], a
    ld bc, $0002
    nop
    nop
    inc b
    ld bc, $0202
    nop
    nop
    nop
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0003
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    inc bc
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
    ld bc, $0101
    ld bc, $0301
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
    inc c
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    ld bc, $ff0c
    rst $38
    rla
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $00ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $8900
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ret nz

    nop
    ld [$0800], sp
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    inc de
    nop
    ld b, b
    nop
    ld b, $00
    ret nz

    nop
    ld [$0800], sp
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    inc de
    nop
    stop
    jr nz, jr_02f_44e2

jr_02f_44e2:
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ret nz

    nop
    ld [$0800], sp
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    inc de
    nop
    stop
    inc hl
    nop
    ccf
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    ld hl, sp+$1f
    ldh [$7f], a
    nop
    db $fc
    nop
    ldh a, [rP1]
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
    rst $38
    rst $38
    ld hl, $3100
    nop
    ld a, a
    ld bc, $077f
    ld a, a
    rra
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
    db $f4
    rst $38
    ldh a, [rIE]
    ld [$72ff], a
    rst $38
    ret nz

    rst $38
    ld b, a
    cp b
    add sp, $17
    inc e
    db $e3
    inc c
    di
    inc c
    di
    dec bc
    db $f4
    inc b
    ld hl, sp+$11
    ld [c], a
    inc h
    jp nz, Jump_02f_40a1

    inc d
    ld [bc], a
    inc b
    ld [$0990], sp
    ld c, $31
    sbc [hl]
    ld h, a
    rra
    rst $28
    call Call_000_0b3e
    ld [hl], b
    push bc
    and d
    ld hl, $5686
    add hl, bc
    dec bc
    inc [hl]
    di
    inc a
    or e
    dec a
    xor b
    ld [hl], a
    jp z, $eb74

    inc e
    xor d
    add hl, de
    db $f4
    sbc c
    ld [c], a
    push af
    pop hl
    rst $08
    ld d, [hl]
    adc a
    ld e, h
    cp a
    rst $38
    rst $38
    cpl
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
    or e
    nop
    dec c
    nop
    inc b
    nop
    dec h
    nop
    ld bc, $0500
    nop
    inc c
    nop
    pop bc
    nop
    ld de, $1200
    nop
    ld b, $00
    ld h, $00
    inc d
    nop
    ld hl, $2800
    nop
    ld bc, $b000
    nop
    ld c, $00
    ld b, $00
    ld h, $00
    nop
    nop
    dec b
    nop
    inc c
    nop
    pop bc
    nop
    stop
    stop
    dec b
    nop
    inc h
    nop
    inc d
    nop
    jr nz, jr_02f_45cc

jr_02f_45cc:
    ld a, [hl+]
    nop
    add $00
    ld [c], a
    nop
    ld h, $00
    nop
    nop
    dec b
    nop
    inc c
    nop
    pop bc
    nop
    stop
    stop
    inc b
    nop
    ld h, $00
    rla
    nop
    daa
    nop
    ccf
    nop
    rst $38
    nop
    db $fd
    inc bc
    rst $30
    rrca
    rra
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    jr nz, jr_02f_4608

jr_02f_4608:
    inc sp
    nop
    ccf
    ld bc, $077f
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
    db $eb
    rst $38
    inc hl
    rst $38
    dec c
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    ld l, $df
    ld c, $ff
    ld b, c
    cp [hl]
    ld c, $f8
    db $10
    ldh a, [rNR10]
    ldh [$80], a
    ret nz

    db $10
    inc bc
    ld [bc], a
    dec b
    dec c
    ld bc, $320d
    inc bc
    ld l, [hl]
    cp l
    adc [hl]
    call nz, Call_02f_571e
    xor h
    call nz, $3c19
    rst $18
    ld d, d
    call z, $ac57
    sbc $3c
    add hl, bc
    db $fc
    inc a
    db $db
    add hl, bc
    rst $30
    db $f4
    jp hl


    rst $10
    jp hl


    ld l, c
    sub a
    pop hl
    add a
    add a
    bit 7, a
    adc [hl]
    cp [hl]
    adc l
    sbc e
    inc e
    ld c, d
    rst $38
    sbc [hl]
    rst $38
    pop de
    ccf
    db $e3
    ccf
    ld e, d
    and a
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    nop
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    nop
    rst $28
    nop
    rst $18
    nop
    ld a, a
    nop
    rra
    nop
    rra
    nop
    sbc a
    nop
    ld h, l
    nop
    ld h, a
    nop
    ld h, l
    nop
    ld e, [hl]
    nop
    ld c, a
    nop
    inc bc
    nop
    jr jr_02f_469a

jr_02f_469a:
    adc h
    nop
    inc h
    nop
    dec hl
    nop
    add hl, hl
    nop
    ld e, [hl]
    nop
    ld c, a
    nop
    inc bc
    nop
    jr jr_02f_46aa

jr_02f_46aa:
    adc h
    nop
    inc h
    nop
    dec hl
    nop
    add hl, hl
    nop
    inc h
    nop
    dec hl
    nop
    add hl, hl
    nop
    ld c, c
    nop
    ld h, a
    nop
    rra
    nop
    ld e, [hl]
    nop
    ld c, a
    nop
    inc bc
    nop
    add hl, de
    nop
    adc l
    nop
    dec h
    nop
    dec hl
    nop
    cpl
    nop
    ld e, a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld sp, hl
    rra
    jp Jump_02f_40ff


    ld hl, sp+$00
    ret nz

    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld hl, $0000
    nop
    ld bc, $0800
    nop
    nop
    nop
    ld bc, $0b00
    nop
    ld [bc], a
    nop
    dec c
    nop
    rra
    nop
    cp a
    ld bc, $03bf
    ld a, a
    rrca
    ld a, a
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
    db $eb
    rst $38
    ei
    rst $38
    ld d, l
    rst $38
    db $eb
    rst $38
    pop af
    rst $38
    ld d, l
    rst $38
    scf
    rst $38
    dec e
    cp $b9
    db $fc
    dec bc
    ldh a, [$90]
    ldh [$c3], a
    add b
    and d
    nop
    ld [bc], a
    ld b, h
    jr jr_02f_4733

    inc d
    ld a, [hl+]
    ld l, [hl]

jr_02f_4733:
    jr jr_02f_4794

    ld [$806a], a
    inc h
    pop bc
    ld b, b
    add a
    ld c, $00
    ld a, a
    nop
    ld [hl], $4f
    ld [hl], e
    adc l
    ld de, $e7ff
    rst $38
    cpl
    rst $00
    or a
    rrca
    ld a, a
    rra
    or a
    ld l, a
    rrca
    ld l, a
    ccf
    rst $28
    cpl
    rst $38
    daa
    rst $18
    ld h, a
    sbc a
    sub e
    ld l, a
    dec [hl]
    set 1, l
    or e
    ld [hl], $ff
    ld h, h
    cp e
    ld h, c
    ld hl, sp-$3f
    ld a, [c]
    and b
    sub a
    adc e
    scf
    add h
    ld [hl], e
    ld c, b
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    nop
    ld bc, $0000
    ret nz

    nop
    ldh [rP1], a
    xor h
    ld d, b
    db $f4
    dec bc
    ld hl, sp+$07
    ldh a, [rIF]
    ld sp, hl
    ld b, $7c
    inc bc

jr_02f_4794:
    ld a, b
    rlca
    ld a, l
    ld [bc], a
    cp a
    nop
    cp d
    dec b
    cp $01
    di
    inc c
    cp $01
    dec l
    ld [bc], a
    ld a, a
    nop
    ccf
    nop
    cp a
    nop
    cp l
    ld [bc], a
    rst $38
    nop
    xor $01
    cp $01
    cp $00
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $00
    rst $38
    nop
    cpl
    nop

jr_02f_47c0:
    ld a, a

Jump_02f_47c1:
    nop
    dec sp
    inc b
    cp e
    inc b
    cp [hl]
    ld bc, $05fa
    rst $20
    ld [$02fd], sp
    rst $20
    jr jr_02f_47d2

    db $fc

jr_02f_47d2:
    rrca
    rst $30
    ccf
    rst $08
    rst $38
    ld a, b
    rst $38
    ret nz

    rst $08
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $20
    nop
    rla
    nop
    dec sp
    nop
    rst $08
    nop
    rlc b
    and a
    nop
    cpl
    nop
    ld e, a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    db $fd
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    cp $f2
    db $fd
    ld a, [$e0f0]
    ldh a, [$83]
    ret nz

    ld d, $a1
    ld c, $01
    inc bc
    dec e
    ld h, [hl]
    rra
    ld sp, hl
    rrca
    ldh a, [$1f]
    add c
    ld a, $c3
    inc a
    ld b, a
    jr c, jr_02f_47c0

    jr nc, jr_02f_4892

    and b
    rst $38
    ld h, b
    ccf
    ret nc

    ccf
    ret nc

    cp a
    ld e, h
    rst $18
    ld a, [hl]
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
    ld a, a
    ld e, a
    cp a
    sbc a
    ld a, a
    jr c, jr_02f_48d7

    adc e
    ld [hl], b
    dec hl
    add b
    db $f4
    nop
    ld d, h
    jr z, @+$01

    rst $38
    rst $38
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
    rst $08
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
    ret nz

    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add b

jr_02f_488d:
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a

jr_02f_4892:
    nop
    rst $38
    ret nz

    ccf
    and b
    ld e, a
    ld b, b
    cp a
    ret nc

    cpl
    ld b, b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    ret nz

    ccf
    ld d, b
    xor a
    ret nz

    ccf
    jr nz, jr_02f_488d

    ret nz

    ccf
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    inc bc
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
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

jr_02f_48d7:
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    rrca
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fa
    db $fc
    ldh a, [$f8]
    jp hl


    ldh a, [$c0]
    pop bc
    ld b, l
    add d
    nop
    rrca
    inc bc
    rrca
    ld d, a
    cpl
    xor $1f
    ld e, b
    ccf
    ld [hl], h
    ld a, a
    ret nz

    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

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
    inc bc
    db $fc
    inc bc
    db $fc
    add $f8
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    adc a
    sub h
    ld a, [bc]
    ld d, $00
    inc l
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
    rst $38
    rst $38
    ldh a, [$fe]
    ld b, b
    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02f_497e

    jr c, @+$01

    cp $7c
    cp $fe
    cp $fc
    db $fd
    ld a, b
    ld sp, hl
    jr c, @-$06

    jr @-$0c

    db $10
    ld hl, sp+$10
    cp h
    db $10
    cp h
    nop
    db $f4
    nop
    ld sp, hl
    nop
    ld a, [c]
    nop
    db $fc
    nop
    ldh a, [rP1]

jr_02f_497e:
    db $f4
    nop
    dec b
    ld a, [$f50a]
    ld b, $f9
    dec b
    ld a, [$fc03]
    dec bc
    db $f4
    ld b, $f9
    dec b
    ld a, [$00fd]
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    or c
    rst $38
    pop af
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    ld hl, sp-$1f
    ldh a, [$e0]
    jp $814e


    ld d, l
    dec bc
    dec sp
    rlca
    ld c, a
    rrca
    ld a, a
    sbc a
    db $fc
    ccf
    ld a, d
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    jr nz, @+$01

    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
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
    rst $38
    nop
    rst $38
    nop
    ld bc, $0ffe
    ldh a, [$7f]
    add b
    ld a, h
    add b
    ldh a, [rP1]
    ld h, d
    add b
    add b
    nop
    rlc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$60fd]
    db $10
    db $e3
    db $10
    or [hl]
    ld b, c
    rst $00
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
    ld [hl], b
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
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, [$fb00]
    nop
    pop af
    nop
    ld sp, hl
    nop
    push af
    nop
    pop af
    nop
    pop af
    nop
    di
    nop
    db $f4
    nop
    ld [hl], h
    add b
    db $fc
    nop
    ld a, [$fb00]
    nop
    pop af
    nop
    or h
    ld b, b
    db $fc
    nop
    or $00
    cp a
    ld b, b
    ld b, b
    nop
    add b
    nop
    ret nc

    nop
    nop
    nop
    xor b
    nop
    adc h
    nop
    db $fc
    ret nz

    rst $38
    cp $ff
    rra
    rst $28
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
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    cp $80
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    push af
    ld a, [$e1fe]
    ret nc

    xor a
    and b
    rra
    adc b
    ld [hl], a
    add b
    ld a, a
    add a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [$e4ff]
    rst $38
    and b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ei
    inc b
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
    ld bc, $1bfe
    db $e4
    db $fd
    nop
    cp $00
    ret nc

    nop
    inc bc
    nop
    inc bc
    ld bc, $0307
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fc
    ld a, [c]
    db $fc
    db $e4
    ldh [rP1], a
    adc b
    nop
    nop
    adc h
    inc bc
    jr nz, jr_02f_4b0c

jr_02f_4b0c:
    jr nz, jr_02f_4b0f

    add b

jr_02f_4b0f:
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
    adc a
    rst $38
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
    cp $00
    ldh a, [rP1]
    db $ed
    nop
    ret nz

    nop
    sub b
    nop
    stop
    nop
    nop
    jr z, jr_02f_4b40

jr_02f_4b40:
    nop
    nop
    add a
    nop
    add b
    nop
    add d
    nop
    nop
    nop
    ld c, c
    nop
    nop
    nop
    sub b
    nop
    ld d, $00
    ld b, $00
    ld a, [hl+]
    nop
    nop
    nop
    add l
    nop
    ld h, b
    nop
    ret nc

    nop
    ld d, c
    nop
    inc l
    nop
    inc h
    nop
    adc b
    nop
    jp c, $f100

    nop
    db $f4
    nop
    db $f4
    nop
    db $fc
    ret nz

    rst $38
    ld hl, sp-$01
    nop
    sub d
    nop
    add b
    nop
    jr nz, jr_02f_4b7a

jr_02f_4b7a:
    inc e
    nop
    sbc l
    nop
    ld [$2400], sp
    nop
    jp nz, Jump_02f_5000

    nop
    ret nz

    nop
    xor d
    nop
    ld hl, sp+$00
    rst $38
    nop
    cp $00
    ret nc

    rst $38
    rst $38
    rst $38
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
    ld a, h
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
    add b
    ld a, a
    nop
    rst $38
    sub $29
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld b, a
    cp a
    rst $28
    rra
    ld e, a
    cp a
    ld a, a
    ccf
    cp a
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
    rst $38
    rst $38
    cp $fe
    db $fc
    ld a, [$fdfc]
    ld a, [$f8f4]
    ldh a, [$e0]
    ret nz

    ldh [$c0], a
    jp $8986


    ld a, [bc]
    add b
    nop
    ld [$2043], sp
    rlca
    nop
    ld b, c
    ld b, $00
    rlca
    ld bc, $106e
    ld l, c
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
    ld [$f5ff], a
    rst $38
    ld a, [$ffff]
    rst $38
    cp $ff
    rst $38
    rst $38
    nop
    nop
    ldh a, [rP1]
    db $e4
    nop
    ret nz

    nop
    ret nz

    nop
    pop hl
    nop
    or d
    nop
    jr nc, jr_02f_4c2e

jr_02f_4c2e:
    jr jr_02f_4c30

jr_02f_4c30:
    inc b
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02f_4c40

jr_02f_4c40:
    ld [de], a
    nop
    add b
    nop
    ld [$0400], sp
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld hl, $1200
    nop
    add b
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    ld h, h
    nop
    nop
    nop
    sub b
    nop
    stop
    jr nz, jr_02f_4c68

jr_02f_4c68:
    ld l, h
    nop
    ret nz

    nop
    db $d3
    nop
    add e
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
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
    add b
    nop
    add b
    nop
    nop
    add $00
    cp $f0
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
    ld [bc], a
    db $fc
    and $1f
    add hl, de
    and $06
    ld sp, hl
    dec c
    rst $38
    inc b
    rst $38
    ld bc, $01fe
    cp $00

jr_02f_4cb1:
    cp $07
    cp $0e
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
    rst $38
    rst $38
    rst $38
    cp $fc
    cp $fd
    db $fc
    ld hl, sp-$01
    rst $30
    ld hl, sp-$0d
    db $f4
    ldh [$fe], a
    ld a, [c]
    rst $08
    sbc c
    rst $00
    ld a, [$a480]
    ret z

    dec bc
    ld [hl], b
    jr jr_02f_4d58

    db $e4
    jr jr_02f_4cb1

    ld [$8904], sp
    ld c, b
    sbc a
    sub h
    ld c, $82
    ld b, h
    sbc d
    inc b
    ld d, b
    jr nz, jr_02f_4d5f

    ld bc, $0072
    sub d
    nop
    add c
    ld [de], a
    nop
    ld b, c
    nop
    dec bc
    nop
    inc bc
    add hl, bc
    jp Jump_000_0701


    ld bc, $0347
    adc a
    rlca
    rrca
    rst $38
    rst $38
    ldh [rIE], a
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    add c
    nop
    add c
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    sbc $00
    or e
    nop
    ret nz

    rra
    and b
    rra
    ldh [$1f], a
    and b
    rra
    ret nz

    rra
    ret nz

    rra
    and b
    rra
    ld b, c
    rra
    ld b, c
    rra
    ld h, c
    rra
    ld h, b
    rra
    ld b, b
    rra
    ld b, b
    rra

jr_02f_4d58:
    ld h, b
    rra
    ld b, b
    rra
    ld e, [hl]
    nop
    ld l, e

jr_02f_4d5f:
    nop
    nop
    ld a, a
    nop
    nop
    jr nz, jr_02f_4d66

jr_02f_4d66:
    nop
    nop
    ret nc

    nop
    pop de
    nop
    ld [bc], a
    nop
    inc l
    nop
    nop
    rst $38
    nop
    nop
    cp $00
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
    inc b
    nop
    dec b
    nop
    inc a
    ret nz

    cp $fe
    rst $38
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    nop
    add a
    jr z, @+$3f

    ret nz

    ld b, b
    rst $38
    ld l, h
    rst $30
    sbc l
    ld a, [c]
    ld c, [hl]
    sub b
    ld e, $d1
    ld e, h
    ld [hl], e
    db $db
    scf
    db $10
    rst $38
    ld [hl], e
    adc h
    or b
    ld l, [hl]
    db $fd
    ld c, [hl]
    and e
    sbc [hl]
    reti


    and $e4
    ei
    and $f9
    ld [c], a
    db $ed
    adc $e1
    rst $08
    pop bc
    adc d
    adc h
    sub $8d
    db $10
    call Call_000_2154
    add a
    ld c, a
    add h
    ld a, e
    adc b
    rst $30
    ld [hl+], a
    add c
    cp l
    nop
    and a
    ld [$d80a], sp
    cp e
    call c, $ffbf
    ccf
    rst $38
    ld h, e
    rst $38
    rst $00
    rst $38
    rlca
    cp $4f
    cp $ce
    db $fc
    ld a, [hl]
    db $fc
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$3f
    ldh a, [$7f]
    ldh a, [rPCM34]
    ldh [rIE], a
    ldh [rIE], a
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
    cp $01
    add a
    nop
    add b
    nop
    ld [$fff0], sp
    rst $38
    nop
    rst $38
    push af
    rst $38
    db $fd
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    add l
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    inc bc
    ld d, h
    nop
    rlca
    ld hl, sp+$00
    rlca
    add b
    nop
    ret nz

    nop
    ld bc, $2200
    nop
    ld b, $00
    inc d
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    add sp, $00
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [c], a
    ldh a, [$fe]
    rst $38
    rst $38
    rst $38
    rrca
    sbc $21
    or [hl]
    ld c, c
    rst $38
    nop
    or a
    add sp, -$80
    ld a, a
    sub d
    ld a, a
    call c, $762f
    adc a
    rlca
    ei
    cp l
    ld c, e
    ld [hl], b
    rra
    ld hl, sp+$07
    ld l, c
    sbc [hl]
    sub l
    ld a, d
    ld h, h
    rst $38
    rst $18
    and e
    call $ddff
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    xor a
    rst $38
    rst $00
    cp $2f
    cp $7f
    db $fc
    ld e, $fc
    dec a
    ld hl, sp-$01
    ld hl, sp-$05
    ldh a, [$73]
    ldh a, [rPCM34]
    ldh [$62], a
    ldh [$e5], a
    ret nz

    reti


    ret nz

    rst $08
    add b
    sbc e
    nop
    adc e
    nop
    rlca
    nop
    inc de
    nop
    ccf
    nop
    ld a, a
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [$f405]
    dec bc
    db $f4
    dec bc
    ld sp, hl
    ld b, $e8
    rla
    ld e, d
    and l
    ret c

    daa
    jp nc, $902d

    ld l, a
    ld [c], a
    dec e
    xor h
    ld d, e
    ld h, h
    sbc e
    ret z

    scf
    jr c, jr_02f_4ef7

    cp $ff
    nop
    rst $38
    rst $28
    rst $38
    ld d, a

jr_02f_4ef7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

Call_02f_4f00:
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld b, h
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
    rst $38
    nop
    nop
    nop
    cp $00
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
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $ff
    nop
    rst $30
    ld [$ff00], sp
    nop
    nop
    add b
    nop
    ld de, $0500
    nop
    call nz, $0e00
    nop
    jr c, jr_02f_4f52

jr_02f_4f52:
    ld a, [$ff00]
    nop
    ld c, a
    ldh a, [rIE]
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
    add b
    nop
    cp [hl]
    nop
    cp $c0
    rst $38
    cp $7f
    rst $38
    or e
    ld c, a
    push af
    ld a, [bc]
    ld a, l
    ld [bc], a
    ld d, a
    add b
    ld [hl-], a
    db $fc
    ld h, $ff
    or c
    ld c, [hl]
    di
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    ldh a, [$9f]
    ldh [rIE], a
    ldh [$3f], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    cp a
    nop
    cp a
    nop
    ccf
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
    db $ec
    inc de
    jp z, $da35

    dec h
    db $fc
    inc bc
    rst $38
    ld bc, $03fd
    db $f4
    dec bc
    jp hl


    rla
    jp hl


    rla
    ldh a, [rIF]
    ldh a, [rIF]
    or c
    ld c, a
    pop af
    rrca
    ld h, c
    sbc a
    db $e3
    rra
    ld [c], a
    rra
    ld [hl+], a
    rst $18
    ld c, h
    cp a
    dec h
    cp $44
    rst $38
    and l
    cp $fe
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc bc
    nop
    rst $38
    nop
    rst $38
    ld l, b
    rst $38
    ld d, l
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
    add b
    nop
    nop
    nop
    ld b, b
    nop
    ld b, d
    nop
    and $00
    nop
    nop
    jr jr_02f_5000

Jump_02f_5000:
jr_02f_5000:
    jr z, jr_02f_5002

jr_02f_5002:
    jr jr_02f_5004

jr_02f_5004:
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld [$0800], sp
    nop
    ld c, d
    add b
    ld a, [hl+]
    add b
    db $10
    add b
    db $10
    add b
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld d, b
    nop
    ldh [rNR41], a
    ldh [rNR41], a
    ld h, d
    and b
    ld h, [hl]
    and b
    ld h, b
    and b
    ld [hl], d
    and b
    ret c

    ld b, b
    ld e, b
    ret nz

    ret nc

    ld b, b
    ld c, b
    ret nz

    inc c
    nop
    nop
    nop
    inc de
    nop
    inc hl
    nop
    inc bc
    nop
    call nz, Call_02f_4f00
    nop
    ld sp, $ff00
    nop
    rst $38
    nop
    rst $08
    ldh a, [rIE]
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
    ld de, $4300
    nop
    rst $38
    nop
    ld hl, sp-$01
    rst $38
    rst $38
    ld e, a
    cp a
    ld c, b
    or a
    ld a, [$aa05]
    dec d
    inc e
    ldh [$6c], a
    rst $38
    ret nz

    rst $38
    jr @+$01

    ld h, d
    rst $38
    adc h
    rst $38
    rlca
    rst $38
    ld a, b
    rlca
    ld e, a
    nop
    ld e, a
    nop
    ld [hl], b
    adc a
    ldh a, [rIF]
    and d
    ld e, a
    jp $c13e


    ld a, $41
    cp [hl]
    add a
    ld a, h
    daa
    db $fc
    ld hl, $0cfc
    ld hl, sp+$04
    ld hl, sp+$29
    ld hl, sp+$1d
    ldh a, [$59]
    ldh a, [$03]
    ldh a, [rNR44]
    ldh a, [$e1]
    nop
    pop hl
    nop
    jp $c300


    nop
    rst $00
    ld bc, $01c7
    rst $00
    ld bc, $0387
    adc a
    inc bc
    adc a
    inc bc
    rrca
    inc bc
    rra
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rrca
    cp a
    rrca
    ccf
    rrca
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    nop
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    adc $00
    ret nz

    nop
    add c
    nop
    ld hl, $6100
    nop
    ld [hl], e
    nop
    inc d
    nop
    sbc h
    nop
    inc e
    nop
    inc e
    nop
    stop
    ld h, h
    nop
    ld b, [hl]
    nop
    add c
    nop
    jr nz, jr_02f_50fe

jr_02f_50fe:
    ld h, b
    nop
    ld [hl], d
    nop
    dec d
    nop
    sbc l
    nop
    inc e
    nop
    inc e
    nop
    stop
    ld h, h
    nop
    ld b, [hl]
    nop
    add c
    nop
    jr nz, jr_02f_5114

jr_02f_5114:
    ld h, b
    nop
    ld [hl], d
    nop
    dec d
    nop
    sub h
    nop
    inc l
    nop
    cp c
    nop
    dec a
    nop
    jr nc, jr_02f_5124

jr_02f_5124:
    jr z, jr_02f_5126

jr_02f_5126:
    ld l, h
    nop
    ld [$3300], sp
    nop
    inc sp
    nop
    adc a
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
    ccf
    ld a, [hl-]
    nop
    cp a
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
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0500
    nop
    ld bc, $4200
    nop
    ld d, h
    nop
    sbc [hl]
    nop
    ld l, [hl]
    nop
    or a
    nop
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
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
    pop af
    ldh a, [rNR13]
    pop hl
    ld h, e
    pop bc
    jp Jump_02f_47c1


    add c
    ld b, a
    add e
    rlca
    add e
    add a
    inc bc
    rrca
    inc bc
    rrca
    rlca
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    sbc a
    nop
    ld [bc], a
    nop
    ld [hl], e
    nop
    ld h, e
    nop
    ld h, l
    nop
    dec [hl]
    nop
    stop
    cp b
    nop
    add hl, bc
    nop
    daa
    nop
    rst $08
    nop
    ld c, $00
    ld b, $00
    dec hl
    nop
    dec sp
    nop
    adc d
    nop
    ld c, $00
    ld c, [hl]
    nop
    ld h, l
    nop
    ld c, c
    nop
    add hl, bc
    nop
    rst $00
    nop
    rrca
    nop
    ld c, $00
    ld h, $00
    dec sp
    nop
    adc e
    nop
    ld a, [bc]
    nop
    ld c, [hl]
    nop
    ld l, [hl]
    nop
    ld b, l
    nop
    ld c, c
    nop
    ld h, a
    nop
    dec [hl]
    nop
    sbc l
    nop
    dec e
    nop
    dec de
    nop
    ld l, a
    nop
    ld l, a
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $01fe
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld e, e
    nop
    sbc a
    nop
    ld bc, $4600
    nop
    rst $08
    nop
    rst $08
    nop
    ld d, a
    nop
    rst $38
    nop
    db $eb
    nop
    cp a
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add b
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
    ld bc, $af51
    add c
    rst $38
    sbc e
    rst $20
    dec h
    db $db
    dec sp
    rst $00
    ld h, e
    sub a
    ld e, a
    and e
    db $d3
    rrca
    dec hl
    sub a
    db $d3
    daa
    xor a
    rlca
    sbc e
    rst $20
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
    rst $38
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
    nop
    sbc a
    nop
    or a
    ld [$009d], sp
    ld c, a
    db $10
    ld e, a
    nop
    ld l, e
    inc b
    push af
    ld a, [bc]
    adc a
    nop
    ld a, [hl]
    ld bc, $013e
    ld [hl-], a
    ld bc, $011a
    rst $18
    nop
    sub e
    inc c
    ld e, a
    nop
    or a
    ld b, b
    ld [hl], a
    nop
    ld a, a
    nop
    rst $38
    nop
    adc a
    nop
    ld a, [hl]
    ld bc, $013e
    ld [hl-], a
    ld bc, $011a
    rst $18
    nop
    sub e
    inc c
    ld e, a
    nop
    or a
    ld b, b
    ld [hl], a
    nop
    ld a, a
    nop
    rst $38
    nop
    ei
    nop
    ld a, $01
    push af
    ld a, [bc]
    db $db
    inc b
    db $d3
    inc c
    ld a, e
    inc b
    ld e, e
    inc h
    ld hl, sp+$07
    rst $38
    nop
    xor $11
    ld bc, $4300
    nop
    rst $00
    nop
    cpl
    nop
    dec sp
    nop
    dec a
    nop
    inc sp
    nop
    cp $c0
    rst $38
    ld [hl], $ff
    rrca
    ccf
    ld [bc], a
    xor $00
    cp $00
    rst $18
    nop
    ld a, a
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
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor c
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    sbc h
    nop
    ld bc, $f800
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rst $30
    ld [$3f80], sp
    rst $38
    nop
    cp h
    ld b, e
    inc sp
    call z, $847b
    rst $38
    nop
    ld a, l
    add d
    sbc h
    ld h, e
    db $fc
    inc bc
    di
    inc c
    db $e3
    inc e
    and $19
    and h
    ld e, e
    rst $38
    nop
    cp h
    ld b, e
    inc sp
    call z, $847b
    rst $38
    nop
    ld a, l
    add d
    sbc h

jr_02f_5341:
    ld h, e
    db $fc
    inc bc
    di
    inc c
    db $e3
    inc e
    and $19
    and h
    ld e, e
    ld h, [hl]
    sbc c
    rlca
    ld hl, sp-$0e
    dec c
    ret c

    daa
    or c
    ld c, a
    ldh a, [rIF]
    ldh a, [rIF]
    ret nz

    ccf
    ld d, b
    xor a
    and b
    rst $18
    jr nz, jr_02f_5341

    ld b, b
    cp a
    add c
    ld a, a
    add hl, hl
    rst $30
    adc d
    ld [hl], a
    inc d
    rst $38
    ld e, h
    cp a
    jr @+$01

    ldh a, [rP1]
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
    cp $06
    cp $06
    ld hl, sp+$18
    ldh a, [rP1]
    ldh a, [rTMA]
    ld hl, sp+$07
    db $fc
    ld bc, $03fe
    cp $01
    cp $01
    cp $61
    cp $39
    cp $fd
    cp $ff
    cp $fd
    cp $fd
    db $fc
    db $fd
    db $fc

jr_02f_53a1:
    di
    ldh [$de], a
    ret nz

    rst $18
    ldh [$fe], a
    ldh a, [rIE]
    rst $38

jr_02f_53ab:
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
    ld a, a
    nop
    sbc a
    nop
    ld h, b
    sbc a
    ret nz

    ccf
    and b
    ld e, a
    nop
    rst $38
    ld [hl], h
    adc e
    ld a, [de]
    rst $20
    db $10
    rst $28
    and b
    ld a, a
    ld [de], a
    db $fd
    add e
    ld a, l
    add h
    ld a, e
    sub h
    ld l, e
    jr c, jr_02f_53a1

    jr nc, jr_02f_53ab

    nop
    rst $38
    ld [$02ff], sp
    db $fd
    inc b
    ei
    nop
    rst $38
    and l
    ld a, [hl]
    ld [bc], a
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    adc d
    ld a, a
    dec l
    rst $18
    ld sp, $00df
    rst $38
    ld b, $ff
    ld b, $ff
    nop
    rst $38
    add d
    ld a, a
    inc h
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld bc, $43ff
    cp a
    add e
    ld a, a
    ld [bc], a
    rst $38
    xor [hl]
    rst $18
    ld b, [hl]
    rst $38
    ld h, e
    rst $38
    ld h, a
    rst $38
    ld c, l
    rst $38
    or d
    rst $38
    add hl, sp
    rst $38
    add hl, bc
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    nop
    nop
    ld hl, sp-$80
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $18
    nop
    ccf
    rst $10
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    inc sp
    ld bc, $0101
    add c
    rlca
    pop hl
    rrca
    add a
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    ld e, $7f
    ld e, $7f
    inc e
    ld a, a
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp+$7f
    ld a, $7f
    ld e, $3f
    inc e
    rst $38
    ld a, h
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    db $fc
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$04
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld bc, $fffe
    nop
    ld a, a
    nop
    ld [hl], e
    rst $38
    ld sp, $01ff
    rst $38
    ld d, a
    rst $28
    inc hl
    rst $38
    ld sp, $33ff
    rst $38
    and [hl]
    rst $38
    reti


    rst $38
    inc e
    rst $38
    inc b
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    rlca
    rst $38
    ld [hl+], a
    rst $38
    ld b, c
    rst $38
    ld h, e
    rst $38
    ld e, $ff
    add hl, de
    rst $38
    ld [hl], d
    rst $38
    ld a, $ff
    dec e
    rst $38
    scf
    rst $38
    ld h, [hl]
    rst $38
    sbc [hl]
    rst $38
    adc $ff
    ld c, h
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld l, $ff
    inc e
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ret z

    rst $38
    db $ec
    rst $38
    ret


    cp $90
    rst $38
    ldh a, [rIE]
    ld [$b9fd], a
    cp $31
    cp $f1
    cp $f1
    cp $e1
    cp $f3
    db $fc
    pop af
    cp $f1
    cp $00
    rlca
    nop
    rrca
    ret nz

    adc a
    ret nz

    rst $00
    ldh [$c7], a
    ldh [$e7], a
    ldh [$e7], a
    ldh a, [$e7]
    ldh a, [$f3]
    ldh a, [$b3]
    ld hl, sp-$4d
    ld hl, sp-$65
    ld hl, sp-$65
    ld hl, sp-$65
    db $fc
    ld c, a
    db $fc
    adc l
    db $fc
    dec c
    cp $07
    cp $07
    cp $06
    rst $38
    inc bc
    rst $28
    inc bc
    rst $30
    inc bc
    rst $28
    nop
    ld a, [$da00]
    ld bc, $01d8
    ld hl, sp+$01
    db $fc
    inc bc
    ret c

    inc bc
    add sp, $03
    or b
    inc bc
    cp b
    rlca
    add sp, $0f
    ld hl, sp+$0b
    call c, $dc03
    rlca
    call c, $dc05
    dec b
    adc $01
    adc $02
    adc $02
    add $02
    rst $00
    nop
    rst $00
    ld bc, $0187
    add a
    ld bc, $0083
    add e
    nop
    add e
    nop
    add e
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rrca
    rlca
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$01
    ld hl, sp-$01
    sub e
    db $fc
    jr nz, @+$01

    pop hl
    cp $d5
    ld a, [$fc73]
    ld h, e
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    jp $c7fc


    ld hl, sp-$3d
    db $fc
    jp $cffc


    ldh a, [$87]
    ld hl, sp-$79
    ld hl, sp+$1f
    ldh [$3e], a
    ret nz

    ld c, $f0
    jr @-$1e

    ld e, [hl]
    and b
    ld a, $c0
    ld a, [hl-]
    ret nz

    ld a, [hl-]
    ret nz

    dec a
    ret nz

    ld a, [hl-]
    ret nz

    db $76
    add b
    ld [hl-], a
    ret nz

    inc [hl]
    ret nz

    ld hl, sp+$00
    ld a, b
    add b
    ld a, h
    add b
    ld [hl], h
    add b
    ld a, [$f800]
    nop
    db $f4
    nop
    ld [hl], b
    add b
    ret nz

    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    ret nc

    nop
    ret nc

    nop
    add sp, $00
    call nc, $b000
    nop
    sub b
    nop
    and b
    nop
    ret nz

    nop
    call nz, $e000
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nc

    nop
    ldh [rP1], a
    and b
    nop
    ret nz

    nop
    ld b, b
    nop
    add b
    nop
    ldh [rP1], a
    ret nz

    nop
    ld b, b
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
    ld bc, $1f00
    nop
    rst $38
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
    ld bc, $0100
    nop
    ld bc, $0301
    ld bc, $0103
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    nop
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    adc a
    rrca
    sbc a
    dec bc
    rst $18
    adc a
    rst $18
    sbc a
    rst $38
    sbc a
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
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp+$00
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    dec b
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    ld de, $0012
    inc de
    inc d
    dec d
    ld d, $00
    nop
    nop
    nop
    nop
    rla
    jr jr_02f_56d4

jr_02f_56d4:
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02f_56ff

    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_02f_5714

    add hl, hl
    ld a, [hl+]
    dec hl
    ld hl, $2d2c
    ld l, $2f
    jr nc, jr_02f_5727

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02f_56fe

jr_02f_56fe:
    nop

jr_02f_56ff:
    ld a, [hl+]
    nop
    add hl, sp
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
    ld hl, $4600
    ld b, a
    ld c, b
    ld c, c

jr_02f_5714:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

Call_02f_571e:
    ld d, h
    ld d, l
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_02f_5727:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    nop
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
    nop
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
    nop
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

jr_02f_576f:
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    cp b
    cp c
    xor l
    cp d
    cp e
    cp h
    cp l

jr_02f_5798:
    cp [hl]
    cp a
    ret nz

    pop bc
    nop
    nop
    nop
    nop
    jp nz, $c339

    call nz, Call_000_00c5
    nop
    jr jr_02f_576f

    rst $00
    ret z

    ret


    nop
    nop
    nop
    nop
    nop
    jp z, $cccb

    call RST_00
    nop
    nop
    adc $18
    rst $08
    nop
    nop
    nop
    nop
    ret nc

    pop de
    nop
    nop
    jr jr_02f_5798

    cpl
    nop
    db $d3
    call nc, $d6d5
    nop
    nop
    nop
    nop
    rst $10
    nop
    nop
    nop
    nop
    nop
    ret c

    reti


    jp c, $dcdb

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    inc bc
    inc bc
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
    nop
    inc bc
    nop
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc b
    inc b
    nop
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    dec b
    dec b
    ld bc, $0505
    ld [bc], a
    ld b, d
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0505
    inc bc
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    inc bc
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    nop
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    dec b
    dec b
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0005
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    rlca
    dec b
    nop
    inc b
    inc b
    nop
    rlca
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld b, $03
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0701
    ld b, $00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0007
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc bc
    dec b
    dec b
    ld bc, $0501
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, d
    ld [bc], a
    inc b
    inc bc
    nop
    nop
    ld b, e
    dec b
    dec b
    dec b
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld b, e
    inc bc
    inc bc
    nop
    inc bc
    inc b
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc b
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
    inc bc
    nop
    ld c, $00
    jr jr_02f_5939

jr_02f_5939:
    inc c
    nop
    inc c
    nop
    inc e
    nop
    jr c, jr_02f_5941

jr_02f_5941:
    inc e
    add b
    rrca
    ld h, b

jr_02f_5945:
    inc bc
    db $10
    ld bc, $400c
    ld [bc], a
    ldh [rSB], a
    cp b
    nop
    adc $00
    ld b, a
    nop
    ld h, c
    nop
    jr nz, jr_02f_5957

jr_02f_5957:
    jr nc, jr_02f_5959

jr_02f_5959:
    stop
    jr jr_02f_595d

jr_02f_595d:
    ld [$0c00], sp
    nop

jr_02f_5961:
    inc b
    nop
    ld b, $00
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0100
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
    rra
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0700
    nop
    inc e
    nop
    jr nc, jr_02f_5961

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
    add b
    nop
    ret nz

    nop

jr_02f_59b9:
    ldh [rP1], a
    jr c, jr_02f_59bd

jr_02f_59bd:
    inc e
    ret nz

    ld c, $20
    inc bc
    jr jr_02f_5945

    inc b
    ldh [$03], a
    jr nc, jr_02f_59c9

jr_02f_59c9:
    inc e
    nop
    ld b, $00
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_02f_59e9

jr_02f_59e9:
    jr nc, jr_02f_59eb

jr_02f_59eb:
    jr jr_02f_59ed

jr_02f_59ed:
    jr jr_02f_59ef

jr_02f_59ef:
    inc c
    nop
    inc c
    nop
    ld b, $00
    ld b, $00
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $00ff
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
    add c
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
    nop
    nop
    rst $38
    nop
    nop
    inc bc
    nop
    rrca
    nop
    inc e
    nop
    ld [hl], b
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
    add b
    nop
    ldh [rP1], a
    jr nc, jr_02f_59b9

    jr jr_02f_5a9b

    ld b, $10
    add e
    ld [$06c1], sp
    jr nz, @+$03

    jr jr_02f_5a45

jr_02f_5a45:
    inc b
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

jr_02f_5a50:
    nop
    nop
    nop
    nop
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
    ld h, b
    nop
    jr nc, jr_02f_5a65

jr_02f_5a65:
    stop
    ld e, $00
    inc bc
    nop
    nop
    nop
    nop
    ld hl, sp+$00
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
    nop
    rst $38
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
    ld bc, $ff00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop

jr_02f_5a9b:
    ld e, $00
    jr c, jr_02f_5a9f

jr_02f_5a9f:
    ldh [rP1], a
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
    ld bc, $3700
    nop
    db $fc
    add b
    add b
    nop
    ld bc, $c601
    rlca
    jr c, jr_02f_5a50

    cp b
    add e
    sbc h
    ld b, e
    ld e, l
    inc hl
    dec l
    ld hl, $112e
    ld d, $10
    rla
    ld [$080b], sp
    dec bc
    inc b
    dec b
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rra
    nop
    nop
    nop
    nop
    ccf
    nop
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
    nop
    rst $38
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    inc bc
    nop
    inc bc
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
    jr jr_02f_5b45

jr_02f_5b45:
    ld a, l
    nop
    rst $28
    nop
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld c, $0e
    jr c, jr_02f_5b90

    ld h, b
    ld h, b
    ret nz

    jp Jump_000_0c03


    rrca
    jr nc, jr_02f_5ba0

    ld b, b
    ld a, a
    add b
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rrca
    ld bc, $071e
    adc b
    rra
    add h
    rrca
    ld b, h
    adc a
    ld b, d
    add a
    ld [hl+], a
    rst $00
    ld hl, $1cc3
    rst $28
    ld e, $6f
    ld c, $77
    adc a
    or a
    add a
    cp e
    ld b, a
    ld e, e
    ld b, e
    ld e, l
    inc hl
    dec l

jr_02f_5b90:
    ld hl, $112e
    ld d, $10
    rla
    ld [$080b], sp
    dec bc
    inc c
    dec c
    db $e4
    push hl
    inc e
    inc e

jr_02f_5ba0:
    rst $38
    nop
    rst $38
    nop
    inc bc
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
    rra
    nop
    cp $00
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
    ret nz

    nop
    ret nz

    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_02f_5bcf

jr_02f_5bcf:
    jr nc, jr_02f_5bd1

jr_02f_5bd1:
    jr jr_02f_5bd3

jr_02f_5bd3:
    jr jr_02f_5bd5

jr_02f_5bd5:
    inc c
    nop
    inc c
    nop
    ld b, $00
    ld b, $00
    inc bc
    nop
    inc bc
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    inc b
    nop
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    ret nz

    ld bc, $01c0
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_02f_5c01

jr_02f_5c01:
    jr nc, jr_02f_5c03

jr_02f_5c03:
    jr jr_02f_5c05

jr_02f_5c05:
    jr jr_02f_5c07

jr_02f_5c07:
    inc c
    nop
    inc c
    nop
    ld b, $00
    ld b, $00
    inc bc
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld c, $00
    jr jr_02f_5c2f

jr_02f_5c2f:
    ld [hl], b
    ret nz

    pop bc
    ld bc, $0706
    jr @+$21

    ld h, b
    ld a, a
    add b
    rst $38
    ld bc, $07ff
    rst $38
    rra
    add b
    nop
    nop
    nop
    inc bc
    nop
    rlca
    ld bc, $071e
    ld a, c
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    and b
    rst $38
    db $10
    rst $38
    ld de, $0eff
    rst $38
    ld [$34ff], sp
    rst $38
    call nz, Call_000_02ff
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld b, [hl]
    rst $38
    ld e, b
    rst $38
    jr nz, jr_02f_5ceb

    jr nz, jr_02f_5ced

    db $10
    ccf
    db $10
    ccf
    ld [$8b1f], sp
    rra
    add h
    rrca
    ld b, h
    adc a
    ld b, d
    add a
    ld [hl+], a
    rst $00
    ld hl, $1cc3
    ld l, a
    ld e, $6f
    rrca
    ld [hl], $0f
    ldh a, [rTAC]
    jr jr_02f_5c8e

    dec e
    inc bc
    dec c

jr_02f_5c8e:
    ld bc, $010e
    ld b, $00
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld e, $00
    pop af
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
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    rst $28
    nop
    ld [$0800], sp
    add b
    ld [$0480], sp
    ret nz

    inc b
    ret nz

    ld [bc], a
    ld h, b
    ld [bc], a
    ld h, b
    ld [bc], a
    jr nc, @+$72

    ld [hl], c
    ld h, b
    ld h, c
    ld b, b
    ld b, b
    ret nz

    pop bc
    add c
    add d
    inc bc

jr_02f_5ceb:
    inc c
    rrca

jr_02f_5ced:
    jr nc, jr_02f_5d2e

    ret nz

    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    ld bc, $0700
    ld bc, $031e
    inc a
    rrca
    ldh a, [$3f]
    ret z

    ld a, a
    add h
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    add d
    rst $38
    adc l
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    add hl, bc
    rst $38
    ld c, $ff
    inc c
    rst $38
    inc [hl]
    rst $38
    jp nz, Jump_000_02ff

    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    ld b, e
    rst $38
    inc h
    rst $38

jr_02f_5d2e:
    jr c, @+$01

    jr nc, @+$01

    ret nc

    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld a, [de]
    rst $38
    pop hl
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ld hl, $167f
    ccf
    jr jr_02f_5d8f

    ld [$881f], sp
    rra
    add h
    rrca
    ld [hl], h
    adc a
    ld a, d
    add a
    inc hl
    rst $00
    ld hl, $11c3
    db $e3
    ld e, $6f
    ld c, $77
    adc a
    or a
    add a
    cp e
    ld b, a
    ld e, e
    ld b, e
    ld e, l
    inc hl
    dec l
    ld hl, $1126
    ld d, $10
    inc de
    ld [$080b], sp
    add hl, bc
    inc b
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add b
    inc c
    add b
    inc c
    ld b, b
    inc c
    ld b, b
    inc b
    ld b, b
    inc b
    ld b, b
    ld b, $20
    ld b, $20

jr_02f_5d8f:
    ld [bc], a
    jr nz, jr_02f_5d94

    jr nz, jr_02f_5d97

jr_02f_5d94:
    db $10
    inc bc
    db $10

jr_02f_5d97:
    inc bc
    db $10
    ld bc, $0108
    ld [$0801], sp
    ld bc, $0108
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    db $fc
    nop
    inc bc
    inc b
    rlca
    jr jr_02f_5de4

    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    ld [hl], c
    nop
    ccf
    ld bc, $033e
    inc a
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    and b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    dec bc
    rst $38

jr_02f_5de4:
    inc c
    rst $38
    inc d
    rst $38
    ld h, d
    rst $38
    add d
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    add d
    rst $38
    ld c, h
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    db $10
    rst $38
    ld [$0bff], sp
    rst $38
    inc b
    rst $38
    inc e
    rst $38
    ld [hl+], a
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld b, c
    cp $41
    cp $23
    rst $38
    daa
    db $fc
    dec de
    db $fc
    ld l, c
    cp $89
    cp $05
    cp $04
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    adc b
    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    inc de
    rst $38
    inc c
    rst $38
    jr @+$01

    inc h
    rst $38
    jp nz, Jump_000_02ff

    rst $38
    ld bc, $01ff
    rst $38
    add b
    rst $38
    add e
    rst $38
    ld b, h
    rst $38
    jr c, @+$01

    jr nz, jr_02f_5ec9

    db $10
    ccf
    db $10
    ccf
    ld [$081f], sp
    rra
    add l
    rrca
    add [hl]
    rrca
    ld b, d
    add a
    ld b, d
    add a
    ld hl, $21c3
    jp Jump_02f_6190


    ld e, $6f
    rrca
    scf
    adc a
    or a
    add a
    sbc e
    ld b, a
    ld e, e
    ld b, e
    ld c, l
    inc hl
    dec l
    ld hl, $1126
    ld d, $10
    inc de
    ld [$0c0b], sp
    dec c
    inc b
    dec b
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

    nop
    ret nz

    nop
    ld b, e
    nop
    ld a, a
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    adc b
    rrca
    or b
    ccf
    ret nz

    rst $38
    inc bc
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    pop hl
    nop
    ld h, a
    ld bc, $036e
    ld a, h
    rrca
    ldh a, [$1f]
    db $e4
    ld a, a
    add d
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ld b, e

jr_02f_5ec9:
    rst $38
    ld c, h
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    sub b
    rst $38
    ld [$08ff], sp
    rst $38
    dec b
    rst $38
    ld b, $ff
    ld c, $ff
    ld [de], a
    rst $38
    ld h, c
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    inc hl
    rst $38
    daa
    db $fc
    rra
    ld hl, sp+$3f
    add sp, -$01
    ret z

    ld a, a
    add h
    ld a, a
    add h
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    jr @+$01

    ldh [rIE], a
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc de
    rst $38
    inc d
    rst $38
    jr @+$01

    inc h
    rst $38
    call nz, $827f
    ccf
    jp nz, $e19f

    sbc a
    db $e3
    ld c, a
    db $f4
    ld e, a
    ld hl, sp+$23
    db $fc
    ldh [rIE], a
    db $10
    rst $38
    db $10
    rst $38
    ld [$05ff], sp
    rst $38
    ld b, $ff
    ld c, $ff
    ld [de], a
    rst $38
    ld h, c
    rst $38

jr_02f_5f30:
    add c
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld hl, $26ff
    rst $38
    jr @+$01

    jr nc, @+$01

    ld c, b
    rst $38
    add h
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    add [hl]
    rst $38
    adc b
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    jr nz, jr_02f_5fd7

    jr nz, jr_02f_5fd9

    db $10
    ccf
    inc de
    ccf
    inc c
    rra
    inc e
    db $eb
    ld [$0077], sp
    ld a, h
    add c
    jr c, jr_02f_5f30

    nop
    xor $00
    db $fc
    inc bc
    ld [hl], b
    inc b
    ld bc, $0701
    rlca
    inc e
    inc e
    jr c, jr_02f_5fb0

    ldh [$e0], a
    add b
    add b
    nop
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    ld h, b
    ld a, a
    add c
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp $ff
    db $fc
    rrca
    inc bc
    dec a
    rrca
    ld [hl], b
    rra
    ldh [$7f], a
    add b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    inc de
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    ld h, h
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    ld b, e
    rst $38

jr_02f_5fb0:
    inc l
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    adc b
    rst $38
    ld [$04ff], sp
    rst $38
    rlca
    rst $38
    ld b, $ff
    sbc c
    rst $38
    cp a
    pop hl
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    inc de
    rst $38
    inc c
    rst $38
    jr @+$01

    ld h, h
    rst $38
    add d
    rst $38

jr_02f_5fd7:
    ld [bc], a
    rst $38

jr_02f_5fd9:
    ld bc, $81ff
    rst $38
    add e
    rst $38
    ld b, h
    rst $38
    jr c, @+$01

    jr nz, @+$01

    ret nc

    rst $38
    db $10
    rst $38
    ld [$09ff], sp
    rst $38
    ld b, $ff
    ld c, $ff
    ld [de], a
    rst $38
    ld h, c
    rst $38
    add c
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld h, $3f
    add sp, $30
    rst $38
    ld c, b
    rst $38
    adc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    sbc b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10

Call_02f_601f:
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    inc c
    rst $38
    ld [de], a
    rst $38
    ld h, d
    rst $38
    add c
    rst $38
    ld bc, $80ff
    rst $38
    add e
    rst $38
    ld b, a
    db $fc
    ld c, h
    ld hl, sp+$38
    ldh a, [$73]
    ret nz

    rst $00
    add b
    adc [hl]
    ld bc, $023d
    sub e
    adc a
    ld h, h
    inc d
    ret z

    jr z, jr_02f_6077

    ldh a, [rLCDC]
    ld b, b
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
    ld bc, $0100
    nop
    rlca
    nop
    ld e, $00
    jr c, jr_02f_605f

jr_02f_605f:
    ldh [$c0], a
    ret nz

    nop
    ld bc, $0601
    rlca
    jr jr_02f_6088

    jr nz, jr_02f_60aa

    ret nz

    rst $38
    inc bc
    rst $38
    rrca
    ret nz

    nop
    add b
    nop
    inc bc
    nop
    rrca

jr_02f_6077:
    inc bc
    inc e
    rrca
    ld [hl], b
    rra
    add sp, $7f
    add h
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    add a
    rst $38

jr_02f_6088:
    ld e, b
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    db $10
    rst $38
    db $10
    rst $38
    ld [$07ff], sp
    rst $38
    inc b
    rst $38
    ld a, [de]
    rst $38
    ld h, c
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    inc hl
    rst $38
    inc h
    rst $38
    jr @+$01

    jr nc, @+$01

jr_02f_60aa:
    ret z

    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    jp $ff3f


    add l
    rst $38
    sbc b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    dec bc
    rst $38
    inc c
    rst $38
    inc d
    rst $38
    ld h, d
    rst $38
    add d
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld [hl+], a
    rst $38
    inc l
    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    adc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    sbc b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38

jr_02f_60ed:
    jr nz, jr_02f_60ed

    ld hl, $13fc
    add hl, bc
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $38
    inc d
    rst $38
    ld h, d
    rst $38
    add c
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, e
    rst $38
    ld b, h
    rst $38
    jr z, @+$01

    jr nc, @+$01

    ld d, b
    rst $38
    rst $38
    adc b
    rst $38
    ld [$07fc], sp
    db $fc
    rlca
    ld hl, sp+$0b
    ldh a, [$37]
    ret nz

    ld c, a
    add b
    cp c
    rst $38
    ld [hl], c
    db $fc
    jp nz, $8cf0

    db $e3
    inc de
    rst $08
    cpl
    add hl, sp
    ld sp, hl
    ld h, c
    ld h, c
    add b
    add b
    inc b
    jr nc, @+$06

    jr nc, @+$07

    ld sp, $3105
    dec b
    ld sp, $2109
    dec bc
    inc hl
    dec bc
    inc hl
    dec bc
    inc hl
    dec bc
    db $e3
    dec bc
    add e
    dec bc
    add e
    dec bc
    inc bc
    rla
    rlca
    rla
    rlca
    rla
    rlca
    db $76
    rlca
    or $07
    or $07
    cp $0f
    db $fc
    rrca
    ld a, h
    adc a
    ld a, l
    adc a
    ld a, l
    adc a
    inc c
    adc a
    db $dd
    rra
    db $fd
    sbc a
    ld sp, hl
    ld e, a
    ld a, [$fa5f]
    ccf
    cp $1f
    ld a, [$3a1f]
    ccf
    push bc
    rst $00
    inc b
    rlca
    ld [bc], a
    inc bc
    add c
    add c
    ld b, c
    ld b, c
    ld b, [hl]
    ld b, [hl]
    jr c, jr_02f_61b8

    jr nc, @+$01

    ret nc

    rst $38
    ld [$04ff], sp
    rst $38
    rlca
    rst $38
    ld b, $ff
    add hl, de
    rst $38
    and c
    rst $38

Jump_02f_6190:
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc de
    rst $38
    inc c
    rst $38
    jr @+$01

    ld h, h
    rst $38
    add h
    rst $38
    ld [bc], a
    rst $38
    ld bc, $f1ff
    adc a
    ld a, [$fc87]
    ld c, a
    db $fc
    inc sp
    cp $61
    cp $91
    cp $09
    rst $38
    ld [$05ff], sp

jr_02f_61b8:
    rst $38
    ld b, $ff
    ld a, [bc]
    rst $38
    ld sp, $c1ff
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld hl, $12ff
    rst $38
    inc e
    cp $19
    cp $69
    db $fc
    add a
    cp $03
    ld a, [$f107]
    adc a
    pop hl
    sbc a
    add $7f
    ret z

    ld a, a
    jr nc, @+$01

    ld d, b
    rst $38
    sub b
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec c
    rst $38
    sub c
    sub c
    ldh [$e0], a
    ret nz

    ret nz

    jr nz, jr_02f_6218

    jr nz, jr_02f_621a

    db $10
    db $10
    db $10
    ld de, $0f08
    nop
    rrca
    jr jr_02f_6223

    inc a
    rst $38
    ld a, $ff
    ccf
    rst $38
    rra
    rst $38
    ld e, $ff
    ld [$13ff], sp
    inc de
    rlca
    rlca
    ld c, $0f
    inc a
    cp a

jr_02f_6218:
    ld a, b
    rst $38

jr_02f_621a:
    ldh [$7f], a
    add b
    ld a, a
    add b
    ld a, a
    nop
    add b
    nop

jr_02f_6223:
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
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

    and b
    ldh [$80], a
    ldh [$50], a
    ldh a, [rOBP0]
    ld hl, sp+$24
    db $fc
    inc d
    db $fc
    ld [de], a
    cp $49
    rst $38
    ld h, h
    rst $38
    ld d, h
    rst $38
    sub d
    rst $38
    adc c
    rst $38
    add h
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    jr nz, @+$01

    ld [$0cff], sp
    rst $38
    inc c
    rst $38
    ld [de], a
    rst $38
    ld a, [de]
    rst $30
    sub l
    ei
    and d
    db $fd
    ld h, c
    cp $41
    cp $a0
    rst $38
    ld d, c
    ld a, a
    pop de
    ld a, a
    ld [$f63f], a
    ccf
    push af
    rst $18
    db $fd
    rrca
    cp $06
    db $fc
    inc b
    cp $02
    add a
    rst $38
    ld e, c
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    inc c
    rst $38
    ld [hl-], a
    rst $38
    ld b, d
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld h, $ff
    jr @+$01

    jr nc, @+$01

    ret z

    rst $38
    ld [$84ff], sp
    ld a, a
    add d
    ld a, a
    add e
    ld a, a
    add a
    ld a, a
    adc b
    rst $38
    ldh a, [$7f]
    ret nz

    ld a, a
    and b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$0bff], sp
    rst $38
    inc b
    rst $38
    ld a, [de]
    rst $38
    ld [hl+], a
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    inc hl
    rst $38
    inc h
    rst $38
    jr @+$01

    jr c, @+$01

    ld c, b
    rst $38
    add h
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    nop
    ld bc, $8380
    add b
    add a
    ld b, b
    ld e, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    ld [$13ff], sp
    rst $38
    ld h, a
    rst $38
    adc [hl]
    cp $3c
    db $fc
    ld a, b
    ld hl, sp-$20
    ldh [$c0], a
    ret nz

    add b
    add b

jr_02f_6314:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    jr nz, jr_02f_6314

    and b
    ldh [$90], a
    ldh a, [rOBP0]
    ld hl, sp+$28
    ld hl, sp-$5c
    db $fc
    ld d, d
    cp $49
    rst $38
    add hl, hl
    rst $38
    inc d
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    ld a, [bc]
    cp $12
    cp $14
    db $fc
    daa
    db $fc
    cpl
    ld hl, sp+$4f
    ld hl, sp+$5f
    ldh a, [$5e]
    ldh a, [$be]
    ldh [$ad], a
    ldh [rLYC], a
    ret nz

    ldh a, [$cc]
    ld hl, sp-$7c
    db $fc
    add d
    db $fc
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nc, @-$37

    nop
    ld h, e
    add b
    pop hl
    add b
    ld [hl], e
    ret nz

    ld e, a
    ldh [$7f], a
    ldh [$9e], a
    ldh a, [rNR32]
    ldh a, [$0e]
    ld hl, sp+$06
    db $fc
    rlca
    db $fc
    dec de
    cp $a1
    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc de
    rst $38
    inc c
    rst $38
    jr @+$01

    inc h
    rst $38
    jp nz, Jump_000_02ff

    rst $38
    ld bc, $80ff
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    ld c, h
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    sub b
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    adc l
    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    rst $38
    jr nz, @+$01

    ld de, $16fe
    ld hl, sp+$09
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    ld [hl], b
    nop
    ld a, a
    ld bc, $067e
    jr c, jr_02f_63e0

    ld de, $6711
    ld h, a
    adc a
    adc a
    inc e
    rra

jr_02f_63e0:
    ld a, b
    ld hl, sp-$10
    ldh a, [$c0]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    nop
    ei
    add b
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
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
    ld bc, $0200
    nop
    inc b
    nop
    ld [$8800], sp
    ld bc, $8391
    ld h, e
    add c
    ld h, c
    pop bc
    ld hl, $11e1
    pop af
    add hl, bc
    ldh a, [$08]
    ld hl, sp-$7c
    db $fc
    jp nz, $c2fc

    ld e, $01
    rrca
    nop
    rrca
    nop

jr_02f_6446:
    add a
    nop
    add e
    nop
    jp $e100


    add b
    ld h, b
    ret nz

    ldh a, [$c0]
    jr c, @-$1e

    jr jr_02f_6446

    inc e
    ldh a, [$0c]
    ld hl, sp+$06
    db $fc
    rrca
    db $fc
    inc sp
    cp $c1
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc de
    rst $38
    inc c
    rst $38
    jr @+$01

    inc h
    rst $38
    ld b, d
    rst $38
    add d
    rst $38
    ld bc, $07ff
    cp $8e
    ld hl, sp-$64
    ldh a, [rSVBK]
    ldh [$80], a
    sbc [hl]
    nop
    inc a
    ld bc, $06f0
    ldh [$08], a
    jp $ff00


jr_02f_648c:
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    inc e
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_02f_64cd

    ld b, b

jr_02f_64cd:
    inc bc
    ld b, b
    rlca
    add b
    ld c, $00
    inc e
    nop
    jr c, jr_02f_64d7

jr_02f_64d7:
    jr nc, jr_02f_64d9

jr_02f_64d9:
    ld h, b
    nop
    ret nz

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
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, @+$12

    db $10
    jr jr_02f_648c

    ld [$8488], sp
    ld b, h
    add [hl]
    ld b, [hl]
    jp nz, $e122

    ld de, $11e1
    ldh a, [$08]
    ld hl, sp-$7c
    ld hl, sp-$7c
    db $fc
    jp nz, $e1fe

    cp $e1
    rst $38
    ldh a, [rIE]
    ld hl, sp-$79
    nop
    jp $c100


    add b
    ld h, c
    ret nz

    ldh a, [$c0]
    jr nc, @-$1e

    jr @-$0e

    inc e
    ldh a, [rNR32]
    ld hl, sp+$38
    ldh [$e1], a
    ret nz

    jp $8e00


    ld bc, $021d
    ld [hl-], a
    inc c
    db $ed
    db $10
    sbc h
    ld l, h
    ld a, b
    sbc b
    ldh [rNR41], a
    ret nz

    ret nz

    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop

jr_02f_654a:
    rst $18
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
    cp $00
    db $fd
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    stop
    jr nz, jr_02f_656a

jr_02f_656a:
    ld b, b
    nop
    add b
    ld b, $00
    rrca
    nop
    rra
    nop
    add hl, sp
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld h, b
    ld h, b
    jr nc, jr_02f_65b8

    db $10
    db $10
    jr jr_02f_65a4

    inc c
    adc h
    add [hl]
    ld b, [hl]
    add [hl]
    ld b, [hl]
    jp $e023


    db $10
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp-$7c
    ld hl, sp-$79
    db $fc
    jp nz, $c5f9

    ld [c], a
    ld a, [de]

jr_02f_65a4:
    call z, $982c
    ld e, b
    jr nz, jr_02f_654a

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
    nop
    nop
    nop

jr_02f_65b8:
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ei
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
    ld a, a
    nop
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
    nop
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
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    jr jr_02f_65f7

jr_02f_65f7:
    inc c
    nop
    ld b, $00
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    add a
    nop
    rst $18
    nop
    ld a, b
    rlca
    nop
    ld a, b
    rlca
    add b
    ld a, a
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld a, h
    nop
    ldh [rP1], a
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fd
    nop
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
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
    ret nz

    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_02f_6649

jr_02f_6649:
    jr jr_02f_664b

jr_02f_664b:
    inc c
    nop
    inc c
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
    rlca
    nop
    ld a, a
    nop
    ld hl, sp+$07
    add b
    ld a, b
    ld bc, $3f80
    nop
    cp $00
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
    ld bc, $0700
    nop
    inc c
    nop
    jr jr_02f_6681

jr_02f_6681:
    ld [hl], b
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
    nop
    nop
    nop
    cp a
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
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld h, b
    nop
    jr nc, jr_02f_66ad

jr_02f_66ad:
    jr nc, jr_02f_66af

jr_02f_66af:
    jr jr_02f_66b1

jr_02f_66b1:
    inc c
    nop
    ld b, $00
    ld b, $00
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
    rlca
    nop
    ld a, a
    nop
    ld hl, sp+$07
    add b
    ld a, b
    nop
    add b
    rlca
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    ld bc, $0700
    nop
    ld c, $00
    jr jr_02f_66e5

jr_02f_66e5:
    ld [hl], b
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0904], sp
    ld a, [bc]
    dec bc
    inc c
    inc b
    inc b
    inc b
    inc b
    dec c
    ld c, $0f
    db $10
    ld de, $0412
    inc b
    add hl, bc
    inc de
    inc d
    inc b
    dec d
    ld d, $17
    jr jr_02f_672f

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $04
    rra
    add hl, bc
    jr nz, jr_02f_6741

    inc b
    ld [hl+], a
    inc hl
    inc b
    inc b
    inc b
    inc b
    inc h
    dec h
    ld h, $27
    inc b
    jr z, jr_02f_6737

    add hl, hl

jr_02f_672f:
    ld a, [hl+]
    inc b
    inc b
    dec hl
    inc l
    inc b
    inc b
    inc b

jr_02f_6737:
    inc b
    dec l
    ld l, $2f
    jr nc, jr_02f_676e

    ld [hl-], a
    inc sp
    inc [hl]
    inc b

jr_02f_6741:
    inc b
    inc b
    dec [hl]
    ld [hl], $37
    jr c, jr_02f_6781

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
    dec sp
    ld b, l
    inc b
    inc b
    inc b
    ld b, [hl]
    inc b
    inc a
    dec a
    ld a, $3f
    ld b, a
    ld c, b
    inc b
    inc b
    inc b
    inc b
    ld c, c
    inc b
    inc b
    inc b
    ld c, d
    inc b
    inc a
    dec a
    ld a, $3f

jr_02f_676e:
    ld c, e
    ld c, h
    inc b
    inc b
    inc b
    inc b
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    inc b

jr_02f_6781:
    inc b
    inc b
    inc b
    inc b
    inc b
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, e
    ld e, e
    ld e, l
    ld e, [hl]
    ld e, a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld h, b
    ld h, c
    ld h, d
    ld e, e
    ld h, e
    ld e, e
    ld e, e
    ld h, h
    ld h, l
    ld h, [hl]
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld e, e
    ld l, l
    ld l, [hl]
    ld l, a
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    ld a, l
    inc b
    inc b
    inc b
    inc b
    ld a, [hl]
    ld a, a
    add b
    inc b
    inc b
    ccf
    add c
    add d
    add e
    add h
    add l
    add [hl]
    inc b
    inc b
    inc b
    inc b
    add a
    ld a, a
    adc b
    inc b
    inc b
    ccf
    adc c
    adc d
    inc b
    dec d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ld a, a
    sub d
    inc b
    inc b
    ccf
    sub e
    sub h
    sub l
    sub [hl]
    inc b
    inc b
    inc b
    sub a
    add hl, de
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ccf
    sbc [hl]
    sbc a
    and b
    rla
    and c
    rrca
    inc b
    inc b
    and d
    and e
    and h
    and l
    and [hl]
    inc b
    and a
    xor b
    xor c
    xor d
    inc b
    inc b
    dec d
    xor e
    xor h
    xor l
    xor [hl]
    inc b
    xor a
    or b
    or c
    inc b
    inc b
    add hl, bc
    or d
    or e
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    or h
    add hl, bc
    or l
    inc b
    inc b
    inc b
    add hl, bc
    or [hl]
    or a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0002
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    dec b
    inc bc
    dec b
    ld bc, $0101
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    nop
    inc bc
    ld bc, $0100
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    ld b, $02
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0100
    nop
    nop
    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0200
    nop
    nop
    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    nop
    ld b, $01
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $00
    nop
    ld b, $06
    ld b, $01
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0001
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0001
    ld bc, $0001
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    nop
    nop
    ld bc, $0001
    ld bc, $0301
    inc bc
    nop
    nop
    nop
    inc bc
    ld b, e
    inc b
    inc b
    dec b
    dec b
    inc bc
    inc bc
    nop
    ld bc, $0301
    ld b, e
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0103
    ld bc, $0001
    nop
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $ff01
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
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    rrca
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
    ret nz

    nop
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    nop
    inc e
    nop
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
    nop
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
    db $fc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $1eff
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    cp a
    nop
    cp a
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
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
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
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
    ret nz

    nop
    rlca
    nop
    nop
    nop
    nop
    ret nz

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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    nop
    nop
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
    ld bc, $0100
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
    nop
    ld b, $00
    ld b, $00
    ld c, $00
    ld c, $00
    inc c
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr jr_02f_6aef

jr_02f_6aef:
    jr c, jr_02f_6af1

jr_02f_6af1:
    jr c, jr_02f_6af3

jr_02f_6af3:
    jr nc, jr_02f_6af5

jr_02f_6af5:
    jr nc, jr_02f_6af7

jr_02f_6af7:
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
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
    ld hl, sp+$00
    ld a, $00
    rrca
    nop
    inc bc
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
    rlca
    nop
    nop
    nop
    nop
    ret nz

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
    nop
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
    ccf
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr @+$01

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
    db $fc
    nop
    db $fc
    nop
    or [hl]
    nop
    add a
    nop
    add e
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
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld a, h
    nop
    ld e, $00
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
    nop
    nop
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld c, $ff
    ld [hl], b
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld h, b
    nop
    jr nc, jr_02f_6c2f

jr_02f_6c2f:
    jr jr_02f_6c31

jr_02f_6c31:
    jr jr_02f_6c33

jr_02f_6c33:
    inc c
    nop
    ld b, $00
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    db $e3
    nop
    ld a, a
    nop
    inc e
    nop
    inc c
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
    cp $00
    cp $00
    ld e, $00
    ld b, $00
    ld bc, $01fe
    cp $01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    inc c
    nop
    nop
    nop
    ret nz

    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$e0], a
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    inc bc
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    add b
    ld bc, $01c0
    ld b, b
    ld bc, $0160
    jr nc, jr_02f_6cd7

    db $10

jr_02f_6cd6:
    ld [bc], a

jr_02f_6cd7:
    db $10
    ld [bc], a
    jr @+$04

    ld [$0902], sp
    ld [bc], a
    add hl, de
    inc b
    add hl, de
    inc b
    ld de, $1104
    inc b
    inc de
    inc b
    inc sp
    inc b
    inc sp
    ld [$0832], sp
    ld [hl-], a
    ld [$0822], sp
    ld h, $08
    ld h, $08
    ld h, $10
    ld h, $10
    ld h, h
    db $10
    ld h, h
    db $10
    ld h, h
    db $10
    ld l, h
    db $10
    ld c, h
    jr nz, jr_02f_6d52

    jr nz, jr_02f_6d54

    jr nz, jr_02f_6d56

    jr nz, jr_02f_6d54

    jr nz, jr_02f_6cd6

    jr nz, @-$76

    ld b, b
    sbc b
    ld b, b
    sbc b
    ld b, b
    sbc b
    ld b, b
    jr jr_02f_6d59

    inc e
    ld b, b
    ld b, $80
    rlca
    add b
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
    rst $38
    nop
    nop

jr_02f_6d52:
    nop
    nop

jr_02f_6d54:
    nop
    nop

jr_02f_6d56:
    nop
    nop
    nop

jr_02f_6d59:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr c, @+$01

    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    add b
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
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
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
    ld a, $00
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld bc, $1eff
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
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $02ff
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
    inc bc
    nop
    ld [bc], a
    nop
    ld e, $00
    cp $00
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    nop

jr_02f_6e43:
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    jr nc, jr_02f_6e4f

jr_02f_6e4f:
    jr nc, jr_02f_6e51

jr_02f_6e51:
    jr nz, jr_02f_6e53

jr_02f_6e53:
    jr nz, jr_02f_6e55

jr_02f_6e55:
    jr nz, jr_02f_6e57

jr_02f_6e57:
    jr nz, jr_02f_6e59

jr_02f_6e59:
    jr nz, jr_02f_6e5b

jr_02f_6e5b:
    jr nz, jr_02f_6e5d

jr_02f_6e5d:
    jr nz, jr_02f_6e5f

jr_02f_6e5f:
    jr nz, jr_02f_6e81

    rst $18
    jr nz, jr_02f_6e43

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    nop
    add b
    nop
    add b
    add b
    ld a, a
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, h
    add b
    ld a, h
    nop

jr_02f_6e81:
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add c
    ld a, l
    add c
    ld a, l
    add c
    ld a, l
    add c
    ld a, l
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    inc c
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    ret nz

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
    nop
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
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld a, [hl]
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld b, $ff
    rst $38
    rst $38
    ld h, b
    rst $38
    add b
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
    ret nz

    nop
    nop
    nop
    ccf
    ccf
    rst $38
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
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
    ld d, h
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$00ff], sp
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld b, b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rra
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
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
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
    ld bc, $0100
    nop
    db $fd
    db $fc
    db $fd
    nop
    add c
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
    nop
    ld hl, sp-$08
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
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp [hl]
    ld a, $fe
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
    ld a, a
    rst $38
    nop
    rlca
    nop
    db $e3
    nop
    nop
    nop
    inc b
    rst $38
    rst $38
    rst $38
    ld [$18ff], sp
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    rst $38
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
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
    nop
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
    nop
    inc e
    nop
    jr c, jr_02f_7083

jr_02f_7083:
    jr nc, jr_02f_7085

jr_02f_7085:
    jr nc, jr_02f_7087

jr_02f_7087:
    jr nc, jr_02f_7089

jr_02f_7089:
    jr nc, jr_02f_708b

jr_02f_708b:
    jr nc, jr_02f_708d

jr_02f_708d:
    jr nc, jr_02f_708f

jr_02f_708f:
    jr nc, jr_02f_7091

jr_02f_7091:
    stop
    jr jr_02f_7095

jr_02f_7095:
    jr jr_02f_7097

jr_02f_7097:
    jr jr_02f_7099

jr_02f_7099:
    jr jr_02f_709b

jr_02f_709b:
    jr jr_02f_709d

jr_02f_709d:
    jr jr_02f_709f

jr_02f_709f:
    jr jr_02f_70b9

    rst $20
    jr jr_02f_708b

    jr jr_02f_708d

    jr jr_02f_708f

    jr @+$09

    jr jr_02f_70b3

    jr jr_02f_70b5

    jr jr_02f_70b7

    ld [$0c17], sp

jr_02f_70b3:
    inc de
    inc c

jr_02f_70b5:
    inc de
    inc c

jr_02f_70b7:
    inc bc
    inc c

jr_02f_70b9:
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    rrca
    nop
    ld bc, $000e
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add b
    db $fc
    add b
    db $fc
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
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

    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    rst $38
    rst $38
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
    ldh a, [rIE]
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
    rst $38
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, b
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    ld b, $ff
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
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
    cp $00
    add a
    nop
    inc bc
    nop
    nop
    nop
    rrca
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
    rst $38
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
    nop
    nop
    nop
    nop
    ld b, $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_02f_720a:
    nop
    rst $38

jr_02f_720c:
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_02f_7212:
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$0880], sp
    add b
    ld [$1880], sp
    add b
    db $10
    add b
    db $10
    ld b, b
    db $10
    ld b, b
    db $10
    ld b, b
    db $10
    ld b, b
    adc b
    ld b, b
    adc b
    jr nz, jr_02f_720a

    jr nz, jr_02f_720c

    jr nz, jr_02f_7212

    jr nz, jr_02f_7294

    jr nz, jr_02f_728e

    db $10
    ld h, h
    db $10
    ld h, [hl]
    db $10
    ld h, [hl]
    db $10
    ld h, $08
    ld [hl+], a
    ld [$0832], sp
    inc sp
    ld [$0833], sp
    inc sp
    inc b
    ld sp, $1104
    inc b
    add hl, de
    inc b
    add hl, de
    inc b
    add hl, de
    ld [bc], a
    add hl, de
    ld [bc], a
    jr jr_02f_726d

    jr jr_02f_726f

jr_02f_726d:
    inc c
    ld [bc], a

jr_02f_726f:
    inc c
    ld bc, $010c
    inc c
    ld bc, $010c
    inc c
    ld bc, $0006
    ld b, $00
    ld c, $00
    ld a, $00
    jr c, jr_02f_7283

jr_02f_7283:
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02f_728e:
    nop
    nop
    rst $38
    nop
    rst $38
    nop

jr_02f_7294:
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
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    jr @+$01

    rst $38
    rst $38
    ld bc, $00ff
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld [$0800], sp
    nop
    stop
    stop
    stop
    jr nz, jr_02f_72cd

jr_02f_72cd:
    jr nz, jr_02f_72cf

jr_02f_72cf:
    jr nz, jr_02f_72d1

jr_02f_72d1:
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    nop
    ld h, c
    nop
    ld h, e
    nop
    scf
    add b
    ccf
    add b
    ld a, $80
    inc e
    add b
    ld [$0040], sp
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_02f_730e

jr_02f_730e:
    jr nz, jr_02f_7310

jr_02f_7310:
    nop
    jr nz, jr_02f_7313

jr_02f_7313:
    jr nz, jr_02f_7315

jr_02f_7315:
    jr nz, jr_02f_7317

jr_02f_7317:
    stop
    ld de, $1700
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    add a
    rst $38
    ld h, b
    rst $38
    jr @+$01

    rst $38
    rst $38
    ld bc, $00ff
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
    rst $38
    nop
    ret nz

    nop
    ldh [rP1], a
    ld h, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr nc, jr_02f_737f

jr_02f_737f:
    jr c, jr_02f_7381

jr_02f_7381:
    ld b, $00
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
    inc bc
    nop
    ld bc, $0000
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    ld c, $00
    inc e
    nop
    jr c, jr_02f_73a1

jr_02f_73a1:
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
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
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    inc bc
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
    add b
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
    ret nz

    ccf
    ret nz

    ccf
    jr c, @+$01

    rst $38
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    adc a
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, $ff
    ld bc, $ffff
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    ld h, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr nc, jr_02f_7435

jr_02f_7435:
    jr nc, jr_02f_7437

jr_02f_7437:
    jr c, jr_02f_7439

jr_02f_7439:
    jr c, jr_02f_743b

jr_02f_743b:
    jr jr_02f_743d

jr_02f_743d:
    jr jr_02f_743f

jr_02f_743f:
    inc e
    nop
    inc e
    nop
    jr c, jr_02f_7445

jr_02f_7445:
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr nc, jr_02f_744d

jr_02f_744d:
    jr c, jr_02f_744f

jr_02f_744f:
    ld a, b
    nop
    ldh a, [rP1]
    ldh [rP1], a
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
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    nop
    nop
    nop
    nop
    rlca
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
    add b
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    rlca
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
    add b
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    inc bc
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
    add b
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
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
    rst $38
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    rlca
    ld [$0009], sp
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    db $10
    ld de, $1200
    inc de
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_02f_7513

jr_02f_7513:
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02f_7540

    ld [hl+], a
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_02f_7551

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    ld l, $2f
    jr nc, jr_02f_7562

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    scf
    dec hl
    inc l
    dec l
    nop
    ld l, $38
    add hl, sp

jr_02f_7540:
    nop
    nop
    nop
    ld a, [hl-]
    nop
    nop
    nop
    nop
    dec sp
    inc a
    inc l
    dec a
    nop
    ld l, $3e
    ccf
    nop

jr_02f_7551:
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld b, c
    nop
    inc l
    ld b, d
    nop
    ld l, $43
    ld b, h
    nop
    nop

jr_02f_7562:
    nop
    ld b, l
    rrca
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    inc l
    ld b, d
    nop
    ld l, $49
    ld c, d
    ld c, e
    ld c, h
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
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    nop
    nop
    nop
    nop
    ld h, e
    ld h, h
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    ld e, l
    ld b, d
    nop
    inc l
    ld h, a
    ld l, b
    nop
    nop
    nop
    nop
    ld l, c
    nop
    nop
    nop
    ld l, d
    nop
    ld l, e
    ld l, h
    nop
    inc l
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    ld l, a
    nop
    nop
    nop
    ld [hl], b
    nop
    inc l
    ld a, [bc]
    nop
    inc l
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld d, e
    ld d, h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    nop
    inc l
    ld a, [bc]
    nop
    inc l
    ld a, d
    ld a, e
    nop
    nop
    nop
    nop
    nop
    ld c, e
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld [$9d9c], sp
    nop
    ld c, e
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
    nop
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
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    nop
    nop
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0303
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0301
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    inc b
    inc bc
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc hl
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
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
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    ld bc, $0141
    ld bc, $0000
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    ld bc, $0141
    ld bc, $0000
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    ld b, b
    inc bc
    ld bc, $0141
    ld bc, $0202
    ld [hl+], a
    ld [hl+], a
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    nop
    ld b, b
    inc bc
    ld bc, $0141
    ld bc, $0000
    nop
    nop
    nop
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    dec b
    ld bc, $0001
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
    ld bc, $0202
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
    nop
    ld [bc], a
    ld bc, $2200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0204
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc b
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
    nop
    nop
    ld bc, $0100
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
    nop
    ld b, $00
    ld c, $00
    ld c, $00
    ld c, $00
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    jr c, jr_02f_77ab

jr_02f_77ab:
    jr c, jr_02f_77ad

jr_02f_77ad:
    jr c, jr_02f_77af

jr_02f_77af:
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
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
    ldh [rP1], a
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    nop
    inc a
    nop
    rra
    nop
    rlca
    nop
    inc bc
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
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    inc bc
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
    ccf
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    ret nz

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
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    jr @+$01

    ld h, b
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
    jr jr_02f_7843

jr_02f_7843:
    jr jr_02f_7845

jr_02f_7845:
    jr nc, jr_02f_7847

jr_02f_7847:
    jr nc, jr_02f_7849

jr_02f_7849:
    jr nc, jr_02f_784b

jr_02f_784b:
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
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
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    nop
    inc e
    nop
    ld c, $00
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    rst $38
    nop
    ccf
    nop
    rrca
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
    ld bc, $0000
    add b
    nop
    ldh a, [rP1]
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $0e
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr @+$01

    rst $38
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
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    nop
    stop
    stop
    ld [$0800], sp
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    nop
    nop
    nop
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
    ld bc, $0100
    nop
    inc bc
    nop
    jp $e700


    nop
    halt
    inc a
    nop
    inc e
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0200
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
    inc b
    nop
    call nz, $f400
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    jr nc, jr_02f_794f

jr_02f_794f:
    nop
    nop
    nop
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
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
    rst $38
    nop
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rIE], a

jr_02f_798c:
    nop

jr_02f_798d:
    rst $38

jr_02f_798e:
    ccf

jr_02f_798f:
    rst $38
    ret nz

jr_02f_7991:
    rst $38
    ld bc, $06ff
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

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
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_02f_79b1

jr_02f_79b1:
    jr nz, jr_02f_79b3

jr_02f_79b3:
    stop
    stop
    ld [$0800], sp
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
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    inc b
    ld bc, $0204
    inc b
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    inc b
    jr jr_02f_79e1

    ld de, $1104
    inc b

jr_02f_79e1:
    ld de, $1104
    ld [$0831], sp
    ld hl, $2308
    ld [$0823], sp
    ld h, e
    db $10
    ld h, d
    db $10
    ld h, d
    db $10
    ld b, [hl]
    db $10
    add $10
    add $20
    add $20
    add $20
    add h
    jr nz, jr_02f_798c

    jr nz, jr_02f_798e

    ld b, b
    adc h
    ld b, b
    adc h
    ld b, b
    inc c
    ld b, b
    inc c
    add b
    jr jr_02f_798d

    jr jr_02f_798f

    jr jr_02f_7991

    ld e, $80
    ld b, $00
    inc bc
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
    nop
    nop
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
    rst $38
    nop
    rst $38
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
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    add b
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
    ei
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
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
    rra
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
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
    cp $00
    rst $38
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
    ld [$37ff], sp
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rra
    nop
    nop
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
    ld hl, sp+$00
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$ffff], sp
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, e
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
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
    nop
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
    nop
    ld bc, $0000
    nop
    nop
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
    inc bc
    nop
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
    ld c, $00
    jr jr_02f_7bf9

jr_02f_7bf9:
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$ffff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    rst $38
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
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
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    inc b
    add b
    inc b
    ret nz

    inc b
    ld b, b
    inc b
    ld b, b
    inc b
    ld b, b
    inc b
    ld b, b
    inc b
    ld b, b
    inc b
    ret nz

    ld [$08c0], sp
    ret nz

    ld [$0880], sp
    add b
    ld [$0880], sp
    add b
    ld [$0880], sp
    add b
    ld [$0880], sp
    add b
    ld [$1080], sp
    add b
    db $10
    add b
    db $10
    add b
    db $10
    add b
    db $10
    add b
    db $10
    add b
    db $10
    add b
    stop
    stop
    stop
    stop
    stop
    jr nz, jr_02f_7ca0

jr_02f_7ca0:
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
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
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    ccf
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
    pop af
    rrca
    nop
    rst $38
    rst $38
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
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    ld [$08ff], sp
    rst $38
    rrca
    rst $38
    ld a, [c]
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    nop
    nop
    rrca
    nop
    jr jr_02f_7da7

jr_02f_7da7:
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, h
    nop
    ld e, $00
    rrca
    nop
    rrca
    nop
    nop
    rst $38
    nop
    db $10
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    nop
    nop
    nop
    ldh [rP1], a
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    inc bc
    rst $38
    ld bc, $feff
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    ld [bc], a
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
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
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
    add b
    nop
    rst $38
    nop
    ld a, a
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    ld b, $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    rrca
    rst $38
    pop af
    rst $38
    nop
    rst $38
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ldh [rSB], a
    ld [hl], b
    ld bc, $0118
    inc c
    ld bc, $010c
    inc c
    ld bc, $010c
    inc c
    ld bc, $010c
    ld b, $01
    ld b, $00
    ld b, $00
    ld b, $00

jr_02f_7ee1:
    ld b, $00

jr_02f_7ee3:
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    inc bc
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
    nop
    inc bc
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
    rlca
    nop
    rlca
    nop
    cp $00
    cp $ff
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld c, $ff
    ld bc, $ffff
    rst $38
    ld [hl], b
    rst $38
    inc c
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $037e
    ld a, h
    rlca
    ld a, b
    rrca
    ld [hl], b
    rra
    ld [hl], b
    rra
    or b
    rra
    or b
    rra
    or b
    rra
    cp b
    rrca
    cp b
    rrca
    cp b
    rrca
    cp b
    rrca
    cp b
    rrca
    jr c, jr_02f_7ee1

    jr c, jr_02f_7ee3

    ld e, b
    adc a
    ld e, h
    add a
    ld e, h
    add a
    call c, $dc07
    rlca
    call c, $dc07
    rlca
    call c, $dc07
    rlca
    sbc $03
    xor $03
    xor $03
    xor $03
    xor $03
    ld d, $03
    cp $03
    cp $03
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    ld bc, $0101
    ld bc, $0101
    ld bc, $f901
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    db $fc
    nop
    db $fc
    db $fc
    db $fc
    cp $01
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
    ldh [rIE], a
    rst $38
    rst $38
    ld bc, $e0ff
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    inc e
    rst $38
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    cp $04
    cp $08
    cp $30
    rst $38
    ld b, b
    rst $38
    add b
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
    cp a
