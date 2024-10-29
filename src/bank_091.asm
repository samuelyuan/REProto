SECTION "ROM Bank $091", ROMX[$4000], BANK[$91]

    ld e, $1e
    ld e, $d2
    db $d3
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $1e
    ld e, $df
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
    ld bc, $1001
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_091_4068

    ld a, [de]
    dec de
    inc e
    dec e
    ld bc, $1e01
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_091_4063

    nop
    ld [bc], a

jr_091_4063:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop

jr_091_4068:
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc bc
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0701
    inc bc
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
    ld bc, $0101
    ld bc, $0507
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
    ld bc, $0101
    ld bc, $0503
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
    ld bc, $0300
    dec b
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
    inc bc
    dec b
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
    inc bc
    dec b
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
    inc bc
    dec b
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
    inc bc
    dec b
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
    ld bc, $0101
    ld bc, $0303
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
    ld bc, $0101
    ld bc, $0302
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
    ld bc, $0101
    ld bc, $0307
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$807f], sp
    ccf
    ret nz

    jp $dffc


    ldh a, [$e3]
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    and a
    ld e, a
    and c
    rrca
    ldh a, [$0a]
    push af
    ld [bc], a
    db $fd
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
    adc a
    rst $38
    pop de
    rst $38
    ld hl, sp-$01
    ld a, [$ffff]
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
    ld a, a
    ld a, a
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
    rst $30
    rst $38
    inc bc
    rst $38
    ld [hl+], a
    db $fd
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    rst $08
    rst $38
    ret c

    daa
    ld [hl], l
    ret z

    rst $20
    ret c

    ei
    call nz, $d0cf
    jp hl


    ret nc

    xor h
    ret nc

    inc a
    rst $18
    ld d, $01
    nop
    add b
    inc b
    add b
    db $10
    add b
    nop
    add b
    ld bc, $2180
    add b
    rst $18
    cp a
    reti


    cpl
    xor h
    nop
    ld a, $01
    add hl, hl
    ld bc, $0161
    ld b, a
    ld bc, $03e1
    jp $f703


    ld a, a
    ld e, b
    nop
    dec [hl]
    jr nz, jr_091_428a

    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add [hl]
    ld [bc], a
    ld b, $02
    xor d
    ld h, $5e
    ldh [rP1], a
    nop
    sbc $00
    add h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc c

jr_091_4261:
    inc b
    inc c
    inc b
    call nc, $f01c
    nop
    nop
    nop
    db $fc
    nop
    ld [$0808], sp
    ld [$0808], sp
    jr @+$0a

    ld [$4918], sp
    jr jr_091_4261

    nop
    ld bc, $0800
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, $80ff

    rst $38

jr_091_428a:
    and b
    ld e, a
    adc h
    ld a, a
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
    ld a, a
    add b
    rra
    ldh [$cb], a
    db $f4
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    ccf
    cp a
    ld c, a
    dec bc
    rst $30
    ld d, a
    rst $38
    ld a, [$fbff]
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
    add c
    rst $38
    ldh a, [rIE]
    ld a, [$fbff]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    sbc e
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    inc bc
    rst $38
    add e
    ld a, b
    dec h
    ld a, [$fe61]
    and c
    ld a, [hl]
    ld [hl], e
    db $ec
    ldh [rIE], a
    rra
    rst $28
    ld h, $01
    db $10
    ld h, b
    ld a, h
    ret nz

    ld d, b
    ret nz

    ld d, b
    ret nz

    ld e, b
    ret nz

    ei
    call c, $df7f
    rst $18
    nop
    cp [hl]
    ret nz

    db $f4
    add c
    cp c
    add c
    ld sp, hl
    add c
    and c
    add c
    add a
    cp c
    dec l
    cp a
    nop
    nop
    sub c
    nop
    add d
    ld bc, $0103
    ld b, c
    inc bc
    ld b, b
    inc bc
    ld b, d
    inc bc
    ld h, [hl]
    ld a, c
    ld b, b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld hl, sp-$7a
    ret nc

    ld d, b
    nop
    nop
    inc b
    nop
    nop
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    ld [$f404], sp
    nop
    nop
    nop
    inc b
    nop
    nop
    ld [$0804], sp
    nop
    ld [$0800], sp
    nop
    ld [$0811], sp

jr_091_4366:
    add c
    nop
    inc bc
    nop
    rst $20
    jr jr_091_4366

    rlca
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    or b
    rst $38
    ld [$60ff], sp
    cp $10
    rst $38
    nop
    rst $38
    add c
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $20
    rst $38
    jp $fbff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rra
    rst $38
    inc b
    ei
    add b
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    ld h, b
    rst $38
    ld a, [hl+]
    rst $38
    ret nc

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
    di
    rst $38
    push af
    ld a, [$fff0]
    ld [c], a
    rst $38
    add sp, -$01
    add sp, -$01
    xor $ff
    ld b, c
    cp a
    sub e
    jr nz, @-$0c

    ld l, b
    ld h, l
    ld a, [$f44b]
    rst $00
    ld a, b
    ret nz

    rst $38
    add b
    ld e, a
    nop
    nop
    nop
    ret nz

    sbc c
    ret nz

    db $10
    pop bc
    add b
    pop bc
    xor a
    pop de
    db $db
    rst $38
    ld a, h
    rlca
    dec l
    add c
    or d
    add c
    and c
    add c
    inc hl
    add c
    ld h, e
    add c
    ld [hl], c
    add e
    cp [hl]
    add hl, sp
    nop
    nop
    ld a, [hl+]
    ld bc, $0003
    ld b, e
    nop
    ld b, c
    ld [bc], a
    ld bc, $7d02
    ld [bc], a
    ld e, $60
    nop
    nop
    ld [hl-], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    ld b, $fe
    jr nz, jr_091_4445

jr_091_4445:
    nop
    jr nz, jr_091_4448

jr_091_4448:
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
    ld e, c
    inc b
    add b
    nop
    ld bc, $4c00
    nop
    ld [hl], b
    ld [$0874], sp
    db $76
    ld [$0008], sp
    ld [$0000], sp
    nop
    nop
    nop
    stop
    ld l, b
    rlca
    ccf
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld h, c
    add b
    and b
    ld [bc], a
    ld [$0dd4], sp
    ld [c], a
    inc h
    db $db
    ld b, $f9
    inc bc
    db $fc
    ld [$01f7], sp
    cp $06
    ld sp, hl
    ld b, $f9
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $02
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    ld hl, sp-$41
    ret nz

    xor a
    ld d, b
    ld d, a
    xor b
    inc bc

Call_091_44bb:
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    add d
    rst $38
    add sp, -$01
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
    cpl
    rst $38
    sub b
    ld l, a
    push bc
    ld a, [$ff51]
    ld b, c
    rst $38
    pop bc
    rst $38
    reti


    rst $38
    dec b
    rst $38
    xor e
    ld b, b
    cp b
    pop bc
    adc l
    di
    inc d
    db $eb
    sbc h
    db $e3
    add [hl]
    ei
    and b
    rra
    nop
    ld bc, $8020
    ld [bc], a
    add d
    db $10
    add d
    ld a, a
    add d
    res 6, [hl]
    cp a
    ld a, [hl]
    ld b, h
    nop
    and a
    nop
    ld d, l
    ld [bc], a
    ld b, h
    ld [bc], a
    ld b, [hl]
    inc b
    ld h, a
    inc b
    ld l, b
    ld [hl], a
    ld a, a
    nop
    ld a, l
    db $10
    dec b
    inc b
    add l
    add h
    add l
    inc b
    add a
    inc b
    cp l
    ld c, l
    sbc l
    ld h, b
    ld bc, $6d01
    nop
    dec b
    add hl, bc
    dec c
    nop
    add l
    adc l
    ld a, [bc]
    ld [$09f7], sp
    pop af
    ld bc, $0001
    sbc c
    nop
    nop
    ld [$0800], sp
    ld [bc], a
    ld [$0808], sp
    inc de
    dec bc
    db $e3
    ld bc, $0003
    ld d, d
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc b
    inc d
    db $10
    ld bc, $8000
    inc bc
    nop
    jr nz, jr_091_4558

jr_091_4558:
    or d
    rrca
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    and b
    rra
    add b
    ld a, a
    inc b
    ei
    ld [$41f7], sp
    cp [hl]
    ld a, [$9c04]
    nop
    cp $01
    rst $38
    nop
    ei

jr_091_4575:
    inc b
    rst $38
    nop
    push de
    ld a, [hl+]
    ld d, a
    xor b
    db $76
    adc c
    cp a
    ld b, b
    db $fd
    ld [bc], a
    xor e
    ld d, h
    rst $18
    jr nz, jr_091_4575

    ld de, $926d
    add hl, sp
    add $2d
    jp nc, $d12e

    rrca
    ldh a, [$66]
    sbc c
    ld b, a
    cp b
    dec hl
    call nc, $e21d
    ld a, [bc]
    push af
    ld bc, $04fe
    ei
    ld e, d
    and b
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
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
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
    ld a, a
    add b
    rrca
    ldh a, [$81]
    ld a, [hl]
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    nop
    rst $38
    and b
    rst $38
    pop hl
    rst $38
    rst $20
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
    ld a, a
    cp a
    ld bc, $f788

jr_091_45e2:
    add l
    rst $38
    dec b
    rst $38
    ld b, h
    rst $38
    ld a, l
    rst $38
    adc l
    ld a, a
    add [hl]
    ld bc, $648a
    ld d, b
    xor a
    or b
    ld c, a
    ld sp, $08ce
    rst $38
    ld b, b
    ccf
    nop
    nop
    adc b
    nop
    nop
    adc d
    ld a, c
    adc [hl]
    db $ed
    ld a, [bc]
    cp $fb
    and l
    ld e, e
    ld e, e
    ld [$009f], sp
    sub e
    ld [$08d5], sp
    rla
    ld [$e25d], sp
    adc a
    ld [hl], e
    ldh a, [$0b]
    ld l, a
    jr jr_091_45e2

    jr jr_091_4634

    jr @+$21

    db $10
    rst $30
    ld hl, sp-$04
    inc bc
    rst $20
    ld h, b
    rst $18
    db $10
    ld a, [de]
    ld [de], a
    inc de
    db $10
    dec d
    db $10
    ld d, $10
    cp e
    rst $38
    dec b
    nop

jr_091_4634:
    rst $10
    add b
    ld e, $28
    inc [hl]
    inc b
    inc d
    jr nz, jr_091_4652

    jr nz, jr_091_4673

    inc hl
    ld d, a
    and b
    rlca
    nop
    ld [$2000], a
    jr nz, jr_091_466d

    jr nz, jr_091_466c

    jr nz, jr_091_4678

    jr nz, jr_091_46b6

    jr z, @+$01

    nop

jr_091_4652:
    rst $38
    nop
    rst $38
    nop
    db $fd
    rrca
    rst $30
    rst $38
    add a
    cp a
    sbc $de
    ld [hl], b
    ldh a, [rP1]
    ld a, [$fe89]
    ld [bc], a
    db $fd
    ld b, c
    cp [hl]
    ld e, a
    and b
    and $00

jr_091_466c:
    push af

jr_091_466d:
    nop
    ld d, b
    nop
    ld a, a
    add b
    rst $38

jr_091_4673:
    nop
    rst $38
    nop
    rst $38
    nop

jr_091_4678:
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld l, a

jr_091_4685:
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$c936], sp
    ld l, a
    sub b
    rst $18
    jr nz, jr_091_4685

    dec c
    push hl
    ld a, [de]
    di
    inc c
    rst $38
    nop
    cp e
    ld b, h
    ld [hl], a
    adc b
    or [hl]
    ld c, c
    and e
    nop
    cp a
    ld b, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    inc bc

jr_091_46b6:
    rst $38
    nop
    rst $38
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
    dec bc
    db $f4
    and d
    ld e, l
    db $10
    rst $28
    ld [bc], a
    db $fd
    ld [$80f7], sp
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
    rst $38
    rst $38
    ccf
    rst $38
    inc hl
    rst $18
    daa
    rst $38
    rla
    rst $38
    dec hl
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld b, c
    rra
    ld d, $e9
    ld b, b
    cp a
    ret nz

    ccf
    add h
    ld a, e
    ld b, b
    rst $38
    db $d3
    cpl
    ld [de], a
    nop
    ld e, l
    jr nz, @+$4f

    ld hl, $2116
    dec de
    ld h, b
    db $10
    rst $28
    dec bc
    inc b
    ld bc, $0108
    nop
    nop
    nop
    cp [hl]
    ld b, c
    cp h
    ld b, e
    xor $df
    db $fd
    ld [bc], a
    ld e, a
    and b
    rst $28
    db $10
    or a
    ld d, b
    rst $18
    ld bc, $00de
    pop af
    ld e, $7f
    add b
    adc [hl]
    db $10
    sub [hl]
    nop
    adc [hl]
    nop
    add hl, hl
    nop
    ld h, e
    ld [bc], a
    ld l, a
    sbc h
    sub [hl]
    nop
    sbc l
    nop
    add hl, hl
    ld [$0021], sp
    add hl, hl
    nop
    dec h
    nop
    or a
    ld [$00bc], sp
    dec a
    nop
    add hl, hl
    nop
    ld hl, $2500
    ld bc, $004f
    db $fd
    ld bc, $0039
    rst $38
    ld [$01ff], sp
    rst $18
    ccf
    db $fd
    rst $38
    add d
    rst $38
    ld bc, $00ff
    xor a
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    pop de
    rst $38
    jp $84ff


    pop hl
    nop
    ld e, a
    add e
    rst $30
    nop
    push af
    nop
    db $fd
    nop
    ld hl, sp+$00
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
    rst $38
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

jr_091_4790:
    rst $18
    jr nz, jr_091_4790

    ld [bc], a
    ld a, a
    add b
    dec sp
    call nz, Call_091_44bb
    or $09
    ld a, [c]
    dec c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    ld hl, sp+$1f
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
    rst $10
    jr z, @-$6e

    ld l, a
    ld [$00f7], sp
    rst $38
    ld bc, $b4ff
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
    rst $08
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $38
    ld b, d
    rst $38
    ld [hl], e
    rst $38
    add e
    ld a, a
    db $ec
    inc de
    ldh a, [rIF]
    inc h
    db $db
    and h
    ld e, e
    add b
    ld a, a
    add a
    ld a, e
    ld a, $01
    ld h, d
    dec b
    ld d, d
    dec b
    ldh a, [rIF]
    ld l, b
    sbc a
    ld [hl], e
    rst $38
    pop af
    rrca
    db $fc
    rlca

jr_091_481a:
    ld a, h
    add a
    ld a, e
    add h
    or $01
    db $fd
    rlca
    rst $18
    rst $30
    ld a, [$fa05]
    dec b
    or a
    nop
    ld b, a
    nop
    xor a
    jr nz, jr_091_481a

    rlca
    ld e, b
    and a
    ld [hl], h
    inc bc
    rst $20
    nop
    rrca
    nop
    rrca
    nop
    daa
    ld [$0fe2], sp
    ld a, a
    add b
    jp hl


    ld b, $c7
    nop
    rrca
    nop
    rrca
    ld [$082f], sp
    jp hl


    ld c, $ee
    ld bc, $3fdf
    rst $18
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, b
    cp $80
    rst $38
    add c
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld c, h
    db $f4
    ld h, d
    ld [hl], a
    ld b, b
    rst $38
    ld e, l
    rst $38
    ld e, a
    sub a
    rlca
    ld [hl], a
    inc bc
    inc hl
    ld bc, $01c0
    ld b, e
    nop
    ld e, d
    ld bc, $03ed
    rst $28
    inc bc
    rlca
    rlca
    rlca
    rrca
    cpl
    rra
    ccf
    rra
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
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
    ccf
    ccf
    rra
    rst $30
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
    rst $30
    ld hl, sp-$56
    nop
    or $00
    cp $00
    ld hl, sp+$07
    db $fd
    nop
    db $fd
    nop
    db $fd
    ld bc, $00fd
    rst $38
    nop
    cp $00
    rst $38
    nop
    db $fd
    inc bc
    rst $38
    inc bc
    sbc a
    ld l, a
    rra
    rst $38
    ccf
    rst $18
    rra
    rst $38
    ld e, $ff
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
    ccf
    rst $38
    dec d
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $11ff
    rst $38
    add hl, bc
    rst $38
    ld h, c
    cp a
    cp e
    rst $38
    ld bc, $c3ff
    dec a
    push bc
    dec sp
    ld b, c
    cp a
    ld b, h
    cp e
    ld b, c
    cp a
    ld b, c
    cp a
    inc d
    dec hl
    nop
    dec sp
    sub b
    dec hl
    sub b
    dec hl
    nop
    dec sp
    ld bc, $a2bf
    dec e
    jr jr_091_493b

    jr jr_091_497d

    ld [de], a
    ld h, e
    ld d, d

jr_091_491d:
    inc hl
    inc bc
    cp e
    add hl, sp
    rst $38
    rst $38
    dec sp
    ld b, a
    dec sp
    add a
    ei
    ld c, e
    ld [hl], e
    ld e, e
    ld [hl], e
    rst $38
    ld a, e
    adc a
    ld a, e
    ld [hl+], a
    inc de
    jr nz, jr_091_493b

    jr nc, jr_091_4979

    jr nc, jr_091_497b

    jr jr_091_491d

    inc l

jr_091_493b:
    ld d, e
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, d
    rst $38
    ld bc, $44ff
    ccf
    ret nz

    cpl
    sbc a
    jr nz, @+$01

    nop
    rst $38
    db $ed
    rst $38
    db $e3
    ld hl, sp-$50
    add b
    jr nz, jr_091_4998

    ld a, [bc]
    rst $28
    ld l, $ff
    cp $db
    ret nc

    ld hl, sp-$10
    pop af
    ldh a, [$f3]
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e2]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$c0], a
    ldh [$ea], a
    ret nz

    adc c

jr_091_4979:
    ret nz

    jp hl


jr_091_497b:
    add b
    and [hl]

jr_091_497d:
    add b
    ld [hl], a
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    ldh [$f2], a
    ldh [rIE], a
    pop af
    cp $ff
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$04

jr_091_4998:
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    cp $3f
    ld c, a
    dec bc
    inc bc
    nop
    adc b
    nop
    rst $28
    nop
    sbc c
    ld h, d
    cp [hl]
    nop
    sbc $c0
    ei
    call nz, $c41b
    db $db
    ld h, b
    ld l, a
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$03
    ld a, [c]
    rst $38
    ldh [$d0], a
    rst $28
    nop
    rst $38
    ld d, b
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    sbc l
    rst $38
    dec e
    rst $38
    sbc c
    rst $38
    sbc l
    rst $38
    db $dd
    rst $38
    dec e
    rst $38
    ld a, c
    sbc a
    ld e, e
    cp l
    ld a, c
    sbc a
    ld e, c
    cp a
    sbc l
    rst $38
    dec e
    rst $38
    ld a, c
    sbc a
    ld [hl], c
    sbc a
    add hl, de
    cp a
    add hl, de
    cp a
    ld e, l
    cp a
    dec c
    rst $38
    add hl, de
    cp e
    inc sp
    sbc c
    sbc e
    add hl, sp
    dec d
    cp e
    add hl, de
    cp a
    dec d
    rst $38
    rra
    cp c
    ld de, $19bb
    cp e
    ld hl, $39bb
    cp a

jr_091_4a18:
    inc de
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
    db $10
    rst $20
    add b
    rst $38
    nop
    rst $38
    rra
    pop af
    rst $38
    add b
    ei
    nop
    rst $38
    cp b
    add sp, -$70
    jr nc, jr_091_4a3f

    ld c, $00
    ld c, a
    ld a, [bc]
    ei
    xor c
    rst $38
    rst $38
    ld a, a

jr_091_4a3f:
    rst $10
    ld a, [hl+]
    nop
    ld [$a800], sp
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    ld [bc], a
    nop
    ld [$0200], sp
    nop
    dec h
    nop
    rla
    nop
    rla
    nop
    xor a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    add b
    ret nz

    ld b, b
    ld b, b
    jr nz, jr_091_4a18

    db $10
    ld d, h
    nop
    ld [hl], h
    nop
    xor e
    ld b, b
    xor c
    add b
    ld h, l
    nop
    db $db
    nop
    xor a
    nop
    rst $38
    nop
    ld h, a
    nop
    ld de, $2120
    jr nc, @+$7a

    ld a, h
    cp $3f
    rst $38
    rla
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $18
    jr nz, jr_091_4acb

    pop de
    ld [hl], d
    adc l
    and h
    ld e, e
    ld [bc], a
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
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a

jr_091_4acb:
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    cp e
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    cp a
    db $db
    cp a
    sbc e
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
    dec h
    rst $38
    ld [$177f], sp
    rst $38
    rst $38
    ld [$04fe], sp
    db $d3
    nop
    ccf
    add hl, sp
    sub l
    ld [$01f5], sp
    jr nz, jr_091_4b10

    db $db
    nop
    rst $28
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38

jr_091_4b10:
    ld e, a
    nop
    scf
    nop
    ld e, e
    nop
    cp a
    nop
    ld e, a
    nop
    and a
    nop
    rst $38
    nop

jr_091_4b1e:
    cp a
    nop
    sbc a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp h
    ld b, e
    ei
    inc b
    rst $30
    ld [$02fd], sp
    nop
    nop
    add b
    nop
    ld bc, $6000
    nop
    ld b, c
    nop
    adc e
    nop
    db $db
    jr nz, @-$08

    jr nz, jr_091_4ba6

    jr jr_091_4baf

    ccf
    cp a
    rra
    rst $30
    rrca
    or $00
    rst $38
    jr nz, jr_091_4ba4

    jr jr_091_4b1e

    nop
    rst $38
    cp a
    cp $f1
    rst $38
    db $fd
    rst $38
    rst $38
    adc d
    ld a, a
    rst $38
    nop
    ret


    ld [hl], $00
    rst $38
    nop
    rst $38
    ld e, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    or $ff
    cp $ff
    or $ff
    rst $38
    rst $38
    cp $ff
    or $fe
    or $fe
    or $fe
    or $ff
    cp $ff

jr_091_4ba4:
    cp $ff

jr_091_4ba6:
    or $fe
    rst $30
    cp $ff
    or $f7
    cp $fe

jr_091_4baf:
    rst $38
    cp $ff
    rst $20
    or $f6
    or $b7
    or $ff
    or $fe
    rst $38
    rst $30
    rst $38
    and [hl]
    or $be
    or $b6
    cp $f6
    cp $ff
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
    rst $38
    ld h, h
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rra
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    rst $38
    cp a
    rlca
    pop hl
    inc b
    ld c, $40
    add sp, -$4f
    rst $38
    call z, Call_091_5fff
    rst $38
    rst $38
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    cp $01
    db $eb
    inc d
    ei
    inc b
    ld sp, hl
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
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    ei
    inc b
    ld sp, hl
    ld b, $fa
    dec b
    ld l, d
    sub l
    db $76
    adc c
    rlca
    ld hl, sp+$4a
    nop
    ld d, d
    nop
    inc sp
    nop
    sub e
    nop
    ld d, a
    nop
    db $fc
    nop
    db $fd
    nop
    db $f4
    inc c
    ld l, a
    rrca
    ld a, a
    adc a
    pop af
    adc [hl]
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
    ld a, a
    add b
    ld l, a
    ldh a, [rIE]
    db $fc
    rst $38
    cp $b3
    ld c, a
    jp Jump_000_113d


    xor $21
    sbc $01
    cp $b8
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $fd
    rst $18
    db $fd
    call z, $ecff
    rst $38
    db $dd
    rst $38
    ld hl, sp-$01
    jp c, $cffd

    db $fc
    adc $fd
    sbc $ed
    db $dd
    rst $28
    ret c

    rst $38
    jp nz, $f9fd

    call z, $ec48
    ld [hl], b
    call z, $ec5e
    jp z, $82fd

    db $fd
    ld b, b
    db $ec
    ld b, b
    db $ec
    ld b, b
    db $ec
    nop
    db $ec
    jp c, $c0ec

    rst $38
    ld b, b
    db $ec
    ld [bc], a
    db $ec
    nop
    xor $02
    db $ec
    ret nz

    xor $81
    cp $c3
    db $fc
    add b
    ld a, [hl]
    ld b, d
    db $fc
    and b
    ld a, [hl]
    ld b, b
    cp $40
    cp $e0
    cp $fc
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
    add b
    rst $38
    nop
    rst $38
    db $e4
    rra
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    dec de
    ccf
    ld bc, $70fd
    rst $38
    daa
    rst $38
    db $fc
    db $76
    adc c
    db $eb
    inc d
    add $39
    ld [$9215], a
    ld l, l
    rst $30
    ld [$25da], sp
    ld l, a
    sub b
    ld [hl], l
    adc d
    and l
    ld e, d
    ld c, l
    or d
    call c, $e823
    rla
    cp $01
    ld a, [$fd05]
    ld [bc], a
    db $fd
    ld [bc], a
    or [hl]
    ld c, c
    or $09
    cp h
    ld b, e
    db $fc
    inc bc
    db $e4
    dec de
    call nc, Call_091_682b
    sub a
    rst $10
    nop
    ld a, e
    nop
    ld l, e
    nop
    db $fd
    nop
    cp a
    ld b, a
    rst $28
    rra
    cp $3f
    ld a, a
    ld a, h
    ldh a, [rIE]
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
    cp $01
    add sp, $17
    ld [$0715], a
    ld hl, sp+$2c
    db $d3
    ld [hl+], a
    db $dd
    pop de
    ccf
    push bc
    ccf
    rst $08
    ccf
    rst $28
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
    ldh a, [rIE]
    ret nz

    rst $38
    sbc $fd
    ret z

    rst $38
    reti


    rst $38
    db $dd
    rst $38
    ldh [rIE], a
    nop
    rst $38
    add d
    db $fd
    add e
    db $fc
    ld b, c
    cp $48
    rst $38
    ret c

    rst $38
    dec hl
    call nc, $dc02
    ld b, $c8
    db $db
    rst $28
    db $ed
    cp $dd
    rst $38
    ld hl, sp-$01
    jp $f8fc


    adc $f0
    adc $f3
    adc $ed
    adc $df
    cp $3f
    ret z

    and d
    call z, $e48a
    xor h

jr_091_4d8b:
    ld [c], a
    sbc l
    ld [c], a
    set 5, [hl]
    call $f7fe
    ret c

    ld l, $c0
    xor [hl]
    ldh [$0d], a
    db $e3
    xor l
    ld [c], a
    ld sp, hl
    and $99
    rst $28
    rst $00
    add sp, -$5e
    call nz, Call_091_60a6
    adc a
    ld h, b
    ld l, a
    ldh [$f3], a
    db $ec
    push af
    adc $fb
    db $fc
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    rst $38
    ld e, c
    and a
    jr nc, jr_091_4d8b

    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    adc a
    ldh a, [$fe]
    ld b, c
    rst $38
    rlca
    rst $28
    ld hl, $013d
    rla

jr_091_4dcd:
    nop
    ret nz

    nop
    ret nc

    cpl
    ldh [$1f], a
    call nz, $c83b
    scf
    db $ec
    inc de
    ld h, [hl]
    sbc c
    ld d, l
    xor d
    call nc, $a02b
    ld e, a
    db $e4
    dec de
    xor b
    ld d, a
    ld d, b
    xor a
    and b
    ld e, a
    add b
    ld a, a
    jr nz, jr_091_4dcd

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

jr_091_4dfb:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld a, a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    sbc a
    ld a, a
    db $fd
    rst $38
    db $fd
    cp $ff
    rst $38
    ld l, a
    sbc a
    rst $38
    rrca
    rst $38
    rlca
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    pop af
    ld c, $06
    ld sp, hl
    jr z, jr_091_4dfb

    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ldh [rIE], a
    jp z, $deff

    rst $38
    add $ff
    rst $20
    rst $38
    cp $ff
    ld hl, sp-$01
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    call c, $96ff
    jp hl


    ld l, a
    add b
    ld a, [bc]
    push hl
    ld d, a
    xor b
    rla
    add sp, $01
    cp $f1
    xor $64
    add b
    ret nz

    nop
    ld a, [c]
    nop
    add sp, $00
    cpl
    ret c

    add hl, sp
    rst $20
    cp $ef
    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    ld a, e
    nop
    rst $30
    nop
    cp a
    ld b, b
    rst $18
    rst $20
    xor $00
    rst $30
    nop
    ld [hl], d
    nop
    db $76
    inc b
    db $fc
    ld [$00fc], sp
    db $dd
    and $eb
    nop
    ld [hl], e
    nop
    ld h, d
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    ld [hl], h
    nop
    jp c, $f760

    ld [bc], a
    ld [hl], b
    nop
    inc sp
    nop
    ld h, c
    ld b, b
    scf
    nop
    ld a, e
    nop
    cp a
    ld c, b
    ei
    nop
    and b
    nop
    ldh a, [rP1]
    ld hl, sp-$20
    db $fd
    cp $ff
    rst $38
    dec bc
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    ld [$fd02], a
    nop
    rst $38
    ld [$e1f3], sp
    cp $fe
    sbc a
    rst $38
    ld b, $ff
    inc h
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $20
    ld hl, sp-$01
    cp $5f
    cp a
    rst $28
    rra
    rst $18
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $18

jr_091_4eda:
    sbc a
    ld a, a
    ld h, a
    sbc a
    dec d
    db $eb
    and d
    ld e, a
    inc bc
    db $fd
    ld bc, $afff
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
    db $fc
    rst $38
    ret nz

    rst $38
    inc c
    rst $38
    sub h
    rst $38
    ld c, h
    rst $38
    sub a
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    sub a
    add sp, -$30
    cpl
    nop
    rst $38
    ld de, $20ee
    rst $18
    ld [bc], a
    rst $38
    ld d, b
    rst $38
    jr nc, jr_091_4eda

    and d
    nop
    ld l, l
    add d
    db $ec
    ld [bc], a
    sub h
    ld b, d
    ld a, [hl+]
    pop bc
    ld d, b
    ei
    ldh [rP1], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, b
    ld b, d
    nop
    db $fd
    ld [bc], a
    and a
    ld a, c
    adc a
    ld [hl], h
    ld l, b
    nop
    rst $30
    nop
    and l
    inc b
    ld a, [c]
    inc bc
    push hl
    nop
    rst $30
    nop
    or l
    ld a, b
    nop
    nop
    sub h
    db $10
    and c
    add b
    jr nz, jr_091_4f4c

jr_091_4f4c:
    nop
    nop
    and c
    and b
    or c
    ld bc, $00bd
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_091_4f5c

jr_091_4f5c:
    jr nz, jr_091_4f5e

jr_091_4f5e:
    and b
    add b
    add h
    db $10
    db $10
    stop
    nop
    jr nc, jr_091_4f68

jr_091_4f68:
    ld a, $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$7f], a
    cp $1f
    rst $38
    inc c
    ld a, a
    ret nz

    ccf
    nop
    rst $28
    ld [hl+], a
    db $fd
    db $10
    rst $28
    nop
    rst $38
    db $10
    pop bc
    ld [$fef1], a
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor $11
    rst $38
    nop
    rst $30
    ld [$0bf4], sp
    jp hl


    ld d, $3a
    push bc
    db $d3
    inc l
    or b
    ld c, a
    ld [c], a
    dec e
    ld hl, sp+$07
    cp h
    ld b, e
    add sp, -$69
    xor d
    push de
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_091_4fd5:
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    ld a, a
    add hl, sp
    rst $38
    sub b
    rst $38
    dec [hl]
    rst $38
    ld a, a
    rst $38
    cp h
    rst $38
    add [hl]
    ld hl, sp-$1a
    ld de, $5728
    or d
    ld e, l
    sbc l
    ld [hl], d
    ld [hl+], a
    db $dd
    rrca
    rst $38
    and d
    call c, Call_000_0080
    jr c, jr_091_4ffa

jr_091_4ffa:
    sub d
    ld [$1820], sp
    jr nc, @+$0a

    cp $19
    rst $08
    rst $38
    ld a, [hl]
    ret nz

    rst $28
    ld [$08f7], sp
    or [hl]
    ld [$08f6], sp
    ld h, h
    ld [$0cab], sp
    ld [hl], a
    rst $28
    ret nz

    nop
    adc b
    nop
    ld c, b
    inc b
    inc c
    nop
    inc d
    nop
    inc b
    inc b
    ld [$9604], sp
    db $e3
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    add h
    nop
    push af
    ld [bc], a
    nop
    nop
    nop
    nop
    add d
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    add b
    nop
    nop
    add d
    ld h, d
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
    ld [hl], c
    add b
    nop
    nop
    add b
    jr nz, jr_091_4fd5

    nop
    add b
    nop
    nop
    nop
    ld b, b
    add b
    db $f4
    ld hl, sp-$01
    rst $38
    ld c, d
    rst $38
    ld [$12ff], sp
    add sp, $1d
    ldh [rP1], a
    cp $40
    rst $38
    nop
    rst $38
    ld a, b
    db $fd
    ld a, [$fa05]
    dec b
    db $f4
    dec bc
    ld d, b
    xor a
    ld h, $d9
    add b

jr_091_507b:
    ld a, a
    xor b
    ld d, a
    ld [$c515], a
    ld a, [hl-]
    ret z

    scf
    db $fc
    inc bc
    db $ed
    ld [de], a
    cp $01
    rst $38
    nop

Call_091_508c:
    ei
    inc b

jr_091_508e:
    ld a, [$fe05]
    ld bc, $21de
    or b
    ld c, a
    ld [c], a
    dec e
    ret nz

    ccf
    jr nz, jr_091_507b

jr_091_509c:
    dec b
    ld a, [$eb14]
    ld d, d
    xor l
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    ld bc, $05ff
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    ld a, e
    rst $38
    daa
    rst $38
    ld e, a
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$c2ff]
    rst $38
    ld c, l
    or a
    push bc
    rst $38
    ld h, l
    rst $38
    pop bc
    rst $38
    ld l, l
    rst $38
    db $fd
    rst $38
    ld a, [c]
    db $fd
    jr c, @-$3b

    xor h
    ld b, e
    ld c, b
    rst $30
    inc c
    di
    adc h
    ld [hl], e
    inc c
    di
    db $eb
    ld a, [hl]
    add h
    ld a, b
    nop
    nop
    ldh [rP1], a
    ld [hl], b
    jr nz, jr_091_513c

    jr nz, jr_091_508e

    jr nz, jr_091_511f

    jr nz, jr_091_5180

    cp a
    ld c, [hl]
    ldh a, [$3d]
    nop
    dec e
    jr nz, jr_091_509c

    ld [hl-], a
    push de
    jr nc, jr_091_517d

    ld d, b
    sub b
    or b
    di
    ld e, $4b
    sbc h
    nop
    nop
    jr jr_091_5118

jr_091_5118:
    ld [$1010], sp
    nop
    jr jr_091_512e

    db $10

jr_091_511f:
    ld [$1800], sp
    ld c, $dd
    nop
    nop
    nop
    nop
    ld [$0000], sp
    ld [$0008], sp

jr_091_512e:
    ld [$0008], sp
    ld [$00cc], sp
    rrca
    nop
    nop
    nop
    nop
    nop
    inc b
    nop

jr_091_513c:
    inc b
    nop
    inc b
    nop
    nop
    inc b
    nop
    inc b
    add h
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    inc b
    ld [bc], a
    add a
    nop
    rst $20
    nop
    cp $00
    cp $00
    rst $18

jr_091_515f:
    ldh [rIE], a
    rst $38
    ccf
    rst $38
    scf
    rst $38
    ld c, h
    cp a
    add b
    ld a, a
    inc c
    di
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, d
    and l
    ld b, c

jr_091_517d:
    cp [hl]
    jr nz, jr_091_515f

jr_091_5180:
    nop
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
    ld c, d
    cp a
    add b
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, d
    xor a
    add c
    ld a, a
    inc bc
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    db $eb
    rst $38
    ld e, a
    rst $38
    rra
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
    rst $38
    rst $38
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
    add $ff
    and a
    ld e, a
    rra
    rst $38
    set 7, a
    set 7, a
    adc a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld e, l
    ld [c], a
    ld e, c
    rlca
    ld h, a
    sbc l
    add c
    rst $38
    adc c
    rst $30
    xor c
    rst $10
    add c
    rst $38
    db $fc
    rst $38
    add hl, de
    ldh [rSB], a
    nop
    ld [de], a
    ret nz

    dec b
    jp nz, $c002

    ld [hl+], a
    ret nz

    and d
    ld c, b
    db $10
    xor $d9
    ld a, [hl]
    ld [hl], a
    inc b
    scf
    ld b, b
    rst $10
    ld h, b
    ld l, e
    ld h, b
    ld l, c
    ld h, b
    and e
    ld h, b
    ld h, e
    ld h, b
    ei
    ccf
    jr c, jr_091_5214

jr_091_5214:
    jr nz, jr_091_5216

jr_091_5216:
    jr nc, jr_091_5218

jr_091_5218:
    db $10
    jr nc, jr_091_521b

jr_091_521b:
    jr nc, jr_091_524d

    db $10
    jr nc, jr_091_5250

    db $10
    jr nc, jr_091_5235

    xor l
    nop
    nop
    inc b
    nop
    jr jr_091_522a

jr_091_522a:
    stop
    ld [$1010], sp
    ld [$0810], sp
    ld [$4b18], sp

jr_091_5235:
    inc d
    nop
    nop
    nop
    nop
    jr jr_091_523c

jr_091_523c:
    ld [$0000], sp
    ld [$0008], sp
    inc b
    ld [$000c], sp
    ld c, $0a
    ld bc, $0001
    nop
    add hl, bc

jr_091_524d:
    ld bc, $0400

jr_091_5250:
    nop
    inc b
    ld bc, HeaderLogo
    dec b
    ld b, $01
    ld bc, $0707
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rst $38
    inc bc
    rst $38
    rst $20
    rst $38
    rst $38
    ccf
    rst $38
    ld h, a
    rst $38
    ld b, $ff
    nop
    db $fd
    nop
    ldh a, [rSC]
    rst $38
    ld bc, $14fe
    db $eb
    db $10
    rst $28
    ld c, b
    or a
    nop

jr_091_527b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [de], a
    rst $38
    inc bc
    rst $38
    dec [hl]
    rst $38
    ld a, [hl-]
    rst $38
    ld b, c
    rst $38
    dec hl
    rst $38
    and e
    rst $38
    dec h
    rst $38
    inc de
    rst $38
    xor a
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

jr_091_52a9:
    rst $38
    cp $ff
    rst $20

jr_091_52ad:
    rst $38
    rrca

jr_091_52af:
    rst $38
    rra
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
    ldh [rIE], a
    add hl, bc
    rst $30
    ld l, c
    sub a
    add l
    rst $38
    add c
    rst $38
    and c
    rst $18
    add c
    rst $38
    inc c
    rst $38
    ld hl, sp-$01
    dec de
    ldh [$2b], a
    nop
    ld d, l
    add d
    inc [hl]
    jp nz, $c295

    ld b, a
    ret nz

    rst $20
    ret nz

    pop hl
    sbc $55
    ld a, [$10ef]
    cp $01
    cp $61
    cp $61
    rst $28
    ld h, b
    xor $61
    rst $20
    ld h, b
    ld a, c

jr_091_52ef:
    ld l, [hl]
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, e
    ld b, b
    ld c, b
    jr nc, jr_091_52a9

    jr nz, jr_091_527b

    jr nc, jr_091_52ad

    jr nc, jr_091_52af

    or b
    jr nc, jr_091_5332

    xor d
    ccf
    inc b
    nop
    nop
    nop
    dec sp
    ld [hl+], a
    nop
    jr jr_091_530d

jr_091_530d:
    jr jr_091_531f

    jr jr_091_5319

    jr jr_091_532b

    jr jr_091_52ef

    ld e, b
    rra
    nop
    nop

jr_091_5319:
    nop
    inc bc
    ld bc, $000c
    inc b

jr_091_531f:
    ld [$0c00], sp
    inc b
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, e
    inc c
    inc bc

jr_091_532b:
    nop
    nop
    nop
    dec bc
    nop
    ld [bc], a
    inc b

jr_091_5332:
    nop
    ld b, $80
    ld b, $02
    add [hl]
    add $86
    and $c6
    rst $30
    db $f4
    db $d3
    ld [c], a
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rra
    rst $38
    rrca
    ld a, a
    add hl, bc
    ccf
    ld e, d
    rst $38
    dec b
    rst $38
    adc b
    ld a, a
    rrca

jr_091_5357:
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    sub e
    rst $38
    ld l, c
    rst $38
    ld d, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld [hl], a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld a, a
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
    rst $30
    rst $38
    cp a
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_091_5394:
    rst $38
    rst $38

jr_091_5396:
    rst $38

jr_091_5397:
    rst $38
    db $fd
    rst $38
    nop

jr_091_539b:
    rst $38
    nop
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    and d
    rst $38
    add d
    rst $38
    push bc
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld [de], a
    db $ed
    jr jr_091_5357

    ld [c], a
    db $dd
    db $fc
    jp $d1ee


    sbc h
    db $e3
    ld e, h
    db $e3
    ld b, d
    rst $38
    ld a, d
    rst $38
    jr z, jr_091_5410

    ld c, a
    nop
    cpl
    ld h, b
    ld h, c
    ld h, b
    nop
    ld h, b
    jr nz, @+$62

    db $10
    ld h, b
    ld h, b
    jr nc, jr_091_53cf

jr_091_53cf:
    ccf
    db $fc
    ccf
    cpl
    nop
    cp a
    jr nz, jr_091_5396

    jr nc, jr_091_5397

    jr nc, jr_091_5394

jr_091_53db:
    jr nc, jr_091_5396

    jr jr_091_539b

    jr jr_091_53db

    jr jr_091_5434

    sbc [hl]
    sbc b
    rlca
    ld [de], a
    nop
    sbc a
    db $10
    ld [$001c], sp
    inc e
    ld [$140c], sp
    inc c
    inc c
    inc c
    ld l, h
    ld c, h
    xor [hl]
    ld c, a
    dec b
    nop
    nop
    nop
    dec b
    ld a, [bc]
    ld [$0a06], sp
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $e4
    rlca
    inc bc
    nop
    ret nz

    add b

jr_091_5410:
    ld [de], a
    ld de, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    db $d3
    ld b, e
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ret nz

    ldh a, [$fe]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302

jr_091_5434:
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
    jr jr_091_5463

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_091_5473

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_091_5483

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l

jr_091_5463:
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld l, $2f
    jr nc, jr_091_549a

    dec l
    dec l
    dec l
    dec l
    dec l
    dec l

jr_091_5473:
    dec l
    dec l
    dec l
    dec l
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $2d
    dec l
    scf
    dec l
    dec l
    dec l

jr_091_5483:
    dec l
    dec l
    jr c, jr_091_54c0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    dec l
    ld b, b
    ld b, c
    dec l
    dec l
    dec l
    dec l
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_091_549a:
    ld c, b
    ld c, c
    ld c, d
    dec l
    ld c, e
    ld c, h
    dec l
    dec l
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
    dec l
    dec l
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

jr_091_54c0:
    dec l
    dec l
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
    db $76
    ld [hl], a
    dec l
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
    dec l
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
    dec l
    dec l
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
    dec l
    dec l
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
    dec l
    dec l
    dec l
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
    dec l
    cp [hl]
    dec l
    dec l
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    dec l
    dec l
    dec l
    ld sp, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    dec l
    dec l
    dec l
    dec l
    dec l
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    dec l
    dec l
    dec l
    dec l
    dec l
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $2d
    dec l
    dec l
    dec l
    dec l
    rst $28
    ldh a, [$f1]
    ld a, [c]
    dec l
    di
    db $f4
    push af
    or $00
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
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
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
    ld bc, $0101
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
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
    ld [bc], a
    inc bc
    dec b
    dec b
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
    ld [bc], a
    inc bc
    dec b
    dec b
    ld [bc], a
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
    nop
    ld [bc], a
    dec b
    dec b
    dec b
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
    inc bc
    dec b
    dec b
    dec b
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
    inc bc
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
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
    inc bc
    dec b
    dec b
    dec b
    ldh a, [$f0]
    ldh a, [$f1]
    ldh [$f5], a
    pop hl
    ld a, [$f2e0]
    ldh [$f0], a
    and $f7
    ld [c], a
    rst $30
    xor $f7
    xor $f7
    xor $f7
    ld a, [c]
    rst $28
    ld a, [c]
    rst $28
    push hl
    rst $28
    and $ef
    db $e4
    rst $38
    push hl
    rst $28
    push hl
    rst $28
    pop hl
    rst $28
    ret


    rst $28
    push hl
    rst $28
    db $dd
    rst $28
    db $dd
    rst $28
    call $d5ef
    rst $28
    push bc
    rst $38
    push hl
    rst $18
    push de
    rst $28
    push de
    rst $28
    push bc
    rst $18
    pop bc
    rst $18
    jp $c1df


    rst $18
    jp $c1ff


    rst $18
    rst $20
    db $db
    rst $00
    db $db
    add e
    rst $18
    and e
    rst $18
    xor e
    rst $18
    add e
    rst $38
    and e
    rst $18
    and a
    db $db
    rst $00
    cp e
    and e
    rst $18
    jp $83bf


    cp a
    add e
    cp a
    add e
    cp a
    add e
    cp a
    and e
    sbc a
    add e
    cp a
    rrca
    rst $30
    adc a
    or a
    rrca
    or a
    ld b, a
    or a
    cpl
    sub a
    ld d, a
    and a
    xor a
    rla
    ld [hl], a
    rlca
    ccf
    rlca
    scf
    rlca
    rla
    rlca
    rlca
    ccf
    rrca
    rla
    rlca
    rra
    rlca
    rrca
    rlca
    rrca
    rlca
    cpl
    rrca
    cpl
    rrca
    rra
    rrca
    rra
    rrca
    ld c, a
    rrca
    rrca
    cpl
    rra
    ld e, a
    rrca
    ccf
    rrca
    ld a, a
    rrca
    ccf
    rrca
    ld a, a
    rrca
    rrca
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld e, $0f
    ld e, $0f
    ld a, $0f
    ld a, $0f
    ld e, $1f
    rra
    rra
    ld e, $1f
    ld e, $1f
    sbc $1f
    sbc $1f
    ld e, [hl]
    rra
    ld e, $1f
    ld e, [hl]
    rra
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    inc a
    rra
    ld a, $1f
    ld a, $1f
    ld a, $1f
    ld a, $1f
    inc a
    ccf
    ld a, $3f
    ld a, $3f
    inc a
    ccf
    cp h
    ccf
    cp h
    ccf
    ld a, $3f
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    cp h
    ccf
    inc a
    ccf
    inc a
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    inc a
    ld a, a
    db $fc
    ld a, a
    ld a, h
    ld a, a
    db $fc
    ld a, a
    ld a, h
    ld a, a
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    di
    db $fc
    di
    db $fc
    pop af
    cp $f1
    cp $f3
    db $fc
    ld sp, hl
    cp $e9
    cp $e8
    rst $38
    add sp, -$01
    ld hl, sp-$01
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    adc $ff
    xor $ff
    and $ff
    rst $28
    rst $38
    add $ff
    call z, $ecff
    rst $38
    add sp, -$01
    add sp, -$01
    ret z

    rst $38
    add sp, -$01
    ret z

    rst $38
    call z, $c8ff
    rst $38
    ret z

    rst $38
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    or b
    rst $08
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    or b
    rst $08
    and b
    rst $18
    and b
    rst $18
    and b
    rst $18
    and b
    rst $18
    ldh [$9f], a
    and b
    rst $18
    pop de
    sbc [hl]
    pop bc
    sbc [hl]
    ret nz

    sbc [hl]
    pop de
    sbc [hl]
    ret nz

    sbc [hl]
    ldh a, [$9e]
    ldh a, [$9e]
    ld [hl], b
    sbc [hl]
    ld d, b
    sbc [hl]
    ld a, [c]
    sbc h
    or b
    sbc h
    or b
    sbc h
    db $dd
    cp [hl]
    rst $38
    sbc h
    rst $38
    sbc h
    db $fd
    ld e, $ff
    inc e
    rst $38
    inc e
    sbc a
    cp h
    cp a
    sbc h
    sbc e
    ld a, h
    ld e, e
    ld a, h
    ld e, e
    ld a, h
    ld e, e
    ld a, h
    ld a, a
    ld a, h
    ld a, e
    ld a, h
    ld a, e
    ld a, h
    ld h, e
    ld a, h
    inc hl
    db $e4
    push hl
    db $e4
    pop hl
    db $e4
    and b
    ld a, l
    and c
    ld a, h
    sub c
    ld a, [hl]
    dec [hl]
    ld a, a
    or b
    ld a, a
    ld de, $937f
    ld a, l
    sub d
    ld a, l
    sub e
    ld a, l
    or e
    ld a, l
    sub a
    ld a, c
    jp nc, $977d

    ld a, c
    ld a, [c]
    ld a, l
    or d
    ld a, l
    or e
    ld a, l
    ldh a, [$7f]
    ldh a, [$7f]
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    call $ac32
    ld [hl], e
    nop
    rst $38
    add c
    ld a, a
    ld hl, $42ff
    cp a
    ld bc, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    and e
    ld a, a
    inc hl
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rra
    ld a, a
    adc a
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    adc a
    ld a, a
    sbc l
    ld a, a
    sbc l
    ld a, a
    adc a
    ld a, a
    sbc a
    ccf
    adc a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    ld e, a
    ccf
    ld c, a
    ld a, a
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld c, a
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
    ld e, a
    ccf
    rst $18
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    sbc a
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ld a, a
    rra
    ccf
    rra
    ld a, a
    rra
    ccf
    rra
    ccf
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    rst $38
    ccf
    rst $38
    ccf
    db $fd
    rra
    rst $38
    ccf
    db $fd
    rra
    rst $38
    rra
    db $fd
    rra
    rst $38
    rra
    db $fd
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    db $fd
    rra
    ei
    rra
    ei
    rra
    ei
    rra
    ld sp, hl
    rra
    db $fd
    rra
    rst $38
    rra
    ei
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rra
    ei
    ld e, a
    ei
    ld e, a
    ei
    rra
    ei
    ld e, a
    ei
    ccf
    ei
    cp a
    ld a, a
    sbc a
    ld a, a
    ld e, a
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
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
    cp $ff
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
    ld e, b
    rst $38
    cp $ff
    ld a, a
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    sub a
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    cp [hl]
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    inc hl
    rst $38
    rla
    rst $38
    add a
    rst $38
    daa
    rst $38
    daa
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    daa
    rst $38
    add a
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $28
    rst $38
    call c, $fcff
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    nop
    rst $38
    sub b
    rst $38
    call $80ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    sbc a
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add d
    db $fd
    add d
    db $fd
    sub b
    rst $28
    add [hl]
    ld sp, hl
    sub d
    db $ed
    add b
    rst $38
    cp a
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ret c

    cp a
    ld c, d
    sub l
    sbc $81
    db $76
    adc c
    adc $b1
    ld c, $f1
    sub [hl]
    jp hl


    add c
    rst $38
    cp d
    rst $38
    ld [de], a
    db $ec
    add b
    ld a, a
    dec bc
    cp a
    inc b
    sbc a
    add hl, bc
    or a
    inc de
    rst $28
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld bc, $05ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add h
    rst $38
    adc c
    rst $38
    push af
    rst $38
    call $e0ff
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and a
    rst $38
    inc b
    rst $38
    add l
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
    db $ec
    rst $38
    rst $28
    rst $38
    rst $28

jr_091_5adf:
    rst $38
    cp $ff
    xor $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$01
    rst $28
    rst $38
    jr nz, jr_091_5adf

    db $10
    rst $28
    pop de
    xor $d9
    and $cf
    ldh a, [$d6]
    add sp, -$2b
    ld [$f8c5], a
    call nz, $c4f8
    rst $38
    jr nz, @-$1f

    sbc e
    ld b, b
    ldh [$cf], a
    db $e4
    set 4, h
    ret z

    db $f4
    ret nz

    ld e, b
    ret nz

    add sp, -$40
    call c, $f5c1
    jp z, $cf50

    add e
    nop
    ld a, [de]
    push bc
    ld b, b
    rst $08
    ret nz

    ret nz

    cp $c0
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    ret nz

    rst $28
    rst $18
    rst $38
    rst $18
    rst $38
    nop
    nop
    rst $18
    add [hl]
    ret


    add b
    ret nz

    add b
    ret nz

    add b
    call nz, $c0c0
    sub b
    ret nz

    sub b
    ret nz

    add c
    sbc $a2
    db $dd
    add d
    ldh [$b9], a
    cp $f7
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld c, [hl]
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [hl], h
    rst $38
    ld a, [bc]
    push af
    inc b
    ei
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
    ei
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
    ld [bc], a
    rst $38
    jr nz, @+$01

    ldh a, [rIE]
    ld [hl], d
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    daa
    rst $38
    db $10
    rst $28
    add hl, hl
    or $60
    rst $38
    ld l, e
    db $f4
    ld h, [hl]
    ld sp, hl
    inc hl
    db $fc
    ld h, e
    db $fc
    ld h, e
    db $fc
    ldh [rIE], a
    inc bc
    rst $38
    ld bc, $2680
    ldh [$63], a
    db $e4
    and b
    ld h, b
    ld [c], a
    ld h, b
    ldh [$60], a
    ret nz

    ld h, b
    add sp, $64
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    nop
    db $ec
    db $e3
    ld l, d
    rst $20
    xor $60
    xor $68
    db $ec
    ld h, b
    db $fc
    ld [hl], b
    db $ec
    ld h, b
    ld a, a
    ldh [$f7], a
    rst $28
    rst $08
    ld [bc], a
    ld c, a
    and b
    push hl
    and $e0
    ld h, b
    add sp, $60
    ld l, b
    ldh [$e8], a
    ld h, b
    ld l, b
    ldh [rOCPS], a
    ld [c], a
    rst $28
    ldh [$2b], a
    call nz, Call_000_0101
    rst $28
    and $e6
    ldh [rLCDC], a
    ldh [$60], a
    ldh [rBCPS], a
    ldh [$e8], a
    ldh [$f8], a
    ldh a, [$f9]
    and $08
    or $00
    ld bc, $000a
    ld c, b
    and b
    ei
    nop
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
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    nop
    rst $38
    add c
    rst $38
    call nz, $f8ff
    rst $38
    ld l, h
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    rlca
    rst $38
    ei
    rst $38
    ldh [rIE], a
    inc b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
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
    inc de
    rst $38
    jr nc, @+$01

    ldh a, [rIE]
    or $ff
    or $ff
    db $f4
    rst $38
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    nop

jr_091_5c8b:
    rst $38
    inc d
    ei
    ld hl, $30fe
    rst $38
    jr c, jr_091_5c8b

    inc sp
    db $fc
    jr nc, @+$01

    jr nc, @+$01

    ld a, [c]
    rst $38

jr_091_5c9c:
    inc bc
    rst $38
    rl b
    ld bc, $bef0
    ld [hl], b
    and [hl]
    ld [hl], b
    jr nz, jr_091_5c9c

    and h
    ld [hl], b
    jr nz, jr_091_5d20

    inc h
    ldh a, [rSC]
    rst $30
    ld a, [$7707]
    add b
    ld l, l
    ld a, [c]
    and a
    ld [hl], b
    xor $70
    db $ec
    ld [hl], b
    db $ec
    ld a, b
    add sp, $70
    ld a, [hl]
    ldh a, [$ef]
    rst $30
    add a
    nop
    or $02
    dec [hl]
    ld [c], a
    jr nc, jr_091_5d2c

    jr nc, jr_091_5d2e

    or b
    ld h, b
    inc [hl]
    ld h, h
    jr nc, jr_091_5d34

    db $f4
    ld h, b
    push af
    and $00
    nop
    and a
    ld bc, $62e7
    jr nz, jr_091_5d40

    jr nc, jr_091_5d42

    jr nc, jr_091_5d44

    jr nc, jr_091_5d46

    ld h, b
    ld h, b
    ld [hl], b
    ld h, b
    jr nz, @-$17

    ldh [rP1], a
    nop
    nop
    and a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    rst $20
    ld h, d
    nop
    jr nz, jr_091_5d03

jr_091_5d03:
    nop
    nop
    nop
    nop
    nop
    inc a
    inc bc
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
    sbc a
    rst $38
    ld l, a
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, [hl+]
    rst $38

jr_091_5d20:
    ld [bc], a
    db $fd
    adc b
    rst $30
    and b
    rst $38
    pop af
    rst $38
    inc a
    rst $38
    rra
    rst $38

jr_091_5d2c:
    rst $28
    rst $38

jr_091_5d2e:
    rst $08
    rst $38
    jp $e0ff


    rst $38

jr_091_5d34:
    ldh a, [rIE]
    jr nz, @+$01

    inc b
    ld a, [$f802]
    inc b
    ld sp, hl
    jr @+$01

jr_091_5d40:
    rst $38
    rst $38

jr_091_5d42:
    rst $38
    rst $38

jr_091_5d44:
    rst $38
    rst $38

jr_091_5d46:
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_091_5d5a:
    inc bc
    rst $38
    ld [de], a
    ld sp, hl
    ld [hl-], a
    db $fd
    ld h, d
    rst $38
    ldh a, [rIE]
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    ld a, [c]
    rst $38
    rst $30
    rst $38
    and c
    ld e, a
    adc e
    db $10
    inc a
    ld a, [c]
    xor c
    db $76
    add hl, hl
    or $a6
    ld a, c
    cp d
    ld [hl], l

jr_091_5d7a:
    jr nz, jr_091_5d7a

    add sp, -$09
    xor b
    rlca
    sub b
    ld [$3040], sp
    ld h, b
    ld sp, $3060
    ld h, b
    jr nc, @+$22

    jr nc, jr_091_5d8d

jr_091_5d8d:
    ld a, b
    ld b, $f0
    cp a
    rst $30
    jp $f780


    nop
    or a
    ld h, b
    pop af
    ld hl, $2070
    ldh a, [rNR41]
    ld [hl], b
    jr nz, jr_091_5e11

    jr nz, jr_091_5d5a

    ld h, b
    rst $20
    nop
    add b
    nop
    rst $20
    ld bc, $2070
    ld [hl], b
    jr nz, @+$72

    jr nz, jr_091_5e21

    jr nz, @+$62

    jr nz, @+$32

    ld h, b
    sub a
    ld h, b
    nop
    nop
    jr nz, jr_091_5ddc

    di
    jr nz, @+$62

    jr nz, jr_091_5e31

    jr nz, jr_091_5e23

    jr nc, @+$32

    ld h, b
    jr nc, jr_091_5e28

    ld [hl], b
    ld h, b
    rst $30
    and b
    jr nc, jr_091_5dee

    jr nc, jr_091_5e00

    db $10
    ld [hl], h
    ld h, b
    jr nc, jr_091_5e4d

    jr nc, jr_091_5e07

    ld [hl], b
    jr c, jr_091_5e4a

    ld [hl], b
    ld a, b

jr_091_5ddc:
    ld [hl], b
    ld a, b
    ld a, b
    ld a, b
    jr jr_091_5e1a

    jr c, jr_091_5e1c

    ld [$6c78], sp
    ld a, b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_091_5dee:
    rst $38
    rst $38
    ret c

    rst $38
    rst $10
    rst $38
    ld a, [$feff]
    rst $38
    rst $20
    rst $38
    rst $38
    rst $28
    db $eb
    rst $30
    dec l

jr_091_5dff:
    rst $18

jr_091_5e00:
    ld [c], a
    rra
    ld h, c
    rlca
    ld d, h
    xor e
    ld [c], a

jr_091_5e07:
    db $fd
    ldh a, [rIE]
    dec a
    rst $38
    rst $38
    rst $38
    ld bc, $08ff

jr_091_5e11:
    rst $30
    jp c, $5ae5

    push hl
    dec de
    db $f4
    inc bc
    db $fc

jr_091_5e1a:
    sub b
    ld c, a

jr_091_5e1c:
    ld [bc], a
    ld a, a
    jr nz, jr_091_5dff

    rst $38

jr_091_5e21:
    rst $38
    rst $38

jr_091_5e23:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_091_5e28:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_091_5e31:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
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

jr_091_5e4a:
    rst $38
    rst $38
    rrca

jr_091_5e4d:
    rst $38
    ret z

    scf
    ld h, [hl]
    ld hl, sp+$61
    cp $60
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ld l, [hl]
    rst $38
    ld d, b

jr_091_5e5f:
    xor a
    rla
    jr nz, jr_091_5ed3

    ld l, b
    push af
    ld l, d
    or e
    ld l, h
    rst $20
    ld a, b
    or a
    ld l, b
    ld l, e
    db $f4
    jr jr_091_5e5f

    nop
    rlca
    nop
    nop
    nop

jr_091_5e75:
    ld h, b
    ld [$0070], sp
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    ld [$fb60], sp
    rst $28
    ld [$2285], a
    jr nz, jr_091_5e75

    and b
    ld l, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld a, a
    ldh a, [$8d]
    ld h, a
    nop
    nop
    add a
    ld hl, $6020
    jr nz, jr_091_5efe

    jr nz, jr_091_5f00

    ld h, c
    jr nz, @+$29

    ld h, e
    cpl
    ld h, a
    rst $28
    daa
    ld bc, $0000
    nop
    ret nz

    and b
    ld b, b
    jr nz, jr_091_5eb1

jr_091_5eb1:
    ld h, b
    ld b, b
    jr nz, jr_091_5f15

    jr nz, jr_091_5ef7

    jr nz, jr_091_5eb9

jr_091_5eb9:
    ld h, b
    and $04
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld b, b
    jr nz, @+$45

    jr nz, jr_091_5f2a

    jr nz, jr_091_5f2c

    jr nz, @+$05

    ld h, b
    ld c, a
    jr nz, jr_091_5efe

    nop
    nop
    nop
    nop

jr_091_5ed3:
    nop
    nop
    nop
    dec bc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    rst $38
    ld [$b8f7], sp
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
    add e
    rst $38
    ld h, b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ccf

jr_091_5ef7:
    rst $38
    rrca
    rst $38
    xor a
    rst $38
    set 7, a

jr_091_5efe:
    db $10
    rst $38

jr_091_5f00:
    ld [hl+], a
    db $dd
    ld e, a
    and b
    rst $18
    jr nz, jr_091_5efe

    ld [$a15e], sp
    ld a, $c1
    ld d, [hl]
    xor c
    add b
    rst $38
    ld b, b
    rst $38
    ld h, e
    rst $38
    ld [c], a

jr_091_5f15:
    rst $38
    or d
    rst $38
    push hl
    rst $38
    or l
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

jr_091_5f2a:
    rst $38
    rst $38

jr_091_5f2c:
    rst $38
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
    rra
    rst $38
    rrca
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
    rst $18
    rst $38
    ld a, a
    rra
    cpl
    ld e, a
    ld e, a
    rst $18
    sbc a
    rst $18
    cp a
    rst $18
    sbc a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    rra
    rst $18
    rrca
    rra
    ld c, a
    rra
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    sbc a
    ld e, a
    rra
    rrca
    rrca
    ld c, a
    rst $18
    rrca
    rrca
    rst $18
    sbc a
    ld c, a
    adc a
    ld e, a
    rrca
    rst $18
    rra
    rst $38
    sbc a
    ld e, a
    rrca
    rra
    rrca
    ccf
    rra
    ld a, a
    rst $18
    ld a, a
    rst $18
    rst $38
    rst $18
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
    ld a, a
    ld a, a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    rst $18
    ld a, a
    rst $38
    rra
    cp a
    ld e, a
    ld a, a
    rst $18
    cp a
    ld e, a
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld e, a
    rst $38
    rra
    rst $38
    rst $18
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    db $10
    rst $38
    ld l, a
    rst $38
    dec bc
    rst $38
    adc a
    cp $ff
    rst $38
    rst $38
    add sp, -$01
    nop
    rst $38
    ld c, $ff
    jr @+$01

    or e
    rst $38
    adc c
    rst $38
    call c, $fbff
    rst $38
    cp [hl]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp l
    jr nc, @+$01

    inc c
    rst $38
    ld b, $ff
    ld b, l
    cp e
    and a
    ld e, b
    cpl
    ret nc

    call nc, $f0eb

Call_091_5fff:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    inc [hl]
    rst $38
    ld d, b
    rst $38
    ld [hl], d
    rst $38
    ld a, [c]
    rst $38
    adc b
    rst $38
    ret nc

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
    rst $38
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    push de
    rst $38
    db $fd
    rst $38
    sbc $ff
    rst $38
    rst $38
    rst $10
    ei
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    rst $20
    rst $38
    rst $18
    rst $38
    rst $28
    rst $10
    ei
    rst $38
    ldh [$df], a
    ld [c], a
    db $dd
    ldh a, [$df]
    ret


    cp $df
    ret c

    sub $fc
    db $f4
    ei
    rst $28
    db $db
    db $e3
    rst $38
    ei
    rst $38
    call $fffb
    rst $38
    rst $28
    rst $30
    rst $38
    rst $38
    jp $cebc


    rst $38
    call z, $ffff
    xor l
    add $80
    and b
    add b
    rst $38
    add b
    db $d3
    ret nz

    db $d3
    ret nz

    call nz, $c0db
    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ldh [$df], a
    call nz, $f8cb
    rst $00
    call c, $c4e3
    ei
    call nz, $c4eb
    di
    call z, $d4e3
    db $e3
    call nz, $c0e3
    rst $28
    rst $38
    ldh [$c3], a
    ret nz

    pop bc
    ret nz

Call_091_60a6:
    db $e3
    pop bc
    ret nz

    ret nz

    push af
    jp z, $ff00

    jr nz, @+$01

    ld c, $ff
    or $ff
    rst $38
    ld e, a
    rst $38
    ld a, [hl]
    rst $38
    add b
    rst $38
    add d
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    ld b, c
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    ld [hl-], a
    rst $38
    sbc c
    rst $38
    ld b, c
    rst $38
    sub b
    rst $38
    ld h, b
    rst $38
    reti


    rst $38
    ld a, [$71ff]
    ld a, a
    db $fc
    rst $18
    daa
    rst $38
    ld [bc], a
    rst $38
    nop
    ld [bc], a
    db $fd
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
    rlca
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    db $ed
    rst $38
    add $ff
    di
    rst $38
    cp e
    rst $38
    add e
    rst $38
    db $eb
    rst $38
    or l
    rst $28
    cp b
    rst $38
    db $d3
    cp l
    sub a
    rst $38
    and $f9
    ld h, [hl]
    cp a
    ld b, h
    cp e
    ld a, b
    add a
    ld e, h
    rst $30
    ld c, h
    di
    ld l, d
    rst $10
    ld hl, sp-$71
    rst $10
    rst $38
    jp $effc


    rst $38
    xor $ff
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    cp l
    rst $38
    ld l, c
    rst $38
    rst $38
    ld e, [hl]
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    dec sp
    rst $38
    jr jr_091_6161

jr_091_6161:
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rra
    nop
    ld b, e
    rst $38
    rrca
    rst $38
    nop
    rst $38

jr_091_6190:
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld c, l
    rst $38
    ld d, b
    rst $38
    add b
    ld a, a
    nop
    rst $38
    dec b
    rst $38
    ld [hl+], a
    rst $38
    call nz, Call_000_00f8
    cp $60
    ld l, a
    ld [$41fd], sp
    and a
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    ld a, [hl-]
    rst $38
    add $ff
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    sub c
    rst $38
    add l
    rst $38
    add e
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
    and a
    rst $38
    and b
    rst $38
    xor e
    rst $38
    sbc a
    rst $38
    rst $38
    sbc [hl]
    rst $38
    db $fd
    rst $38
    sbc $ff
    sbc a
    cp a
    add b
    rst $38
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    sub h
    ld a, a
    adc [hl]
    rrca
    add b
    cp [hl]
    nop
    db $dd
    add b
    adc $80
    db $ed
    add b
    db $dd
    add b
    ld l, $80
    ld e, a
    adc [hl]
    ld b, l
    add b
    ret z

    add b
    ld c, b
    add b
    jr nz, jr_091_6190

    add b
    add b
    ret nz

    add b
    ld [$ce80], a
    ret nz

    push hl
    ret nz

    ldh [$e0], a
    ld hl, sp-$20
    ld [hl], b
    ldh a, [$f8]
    ld sp, hl
    ld hl, sp-$04
    cp h
    cp $fd
    ld [bc], a
    rst $38
    nop
    nop
    rst $38
    ld h, d
    ld hl, sp+$68
    ldh a, [$5e]
    ldh a, [$0e]
    pop af
    sbc [hl]
    ldh a, [$9a]
    ldh a, [$d7]
    ld hl, sp-$2a
    ld hl, sp-$39
    ld hl, sp-$3e
    ld hl, sp-$3a
    ld hl, sp-$3c
    ld a, [$f8c6]
    call nz, $c4fa
    ld a, [$f8c7]
    ret z

    rst $38
    add sp, -$01
    reti


    ldh a, [$fa]
    ldh a, [$fb]
    ret nc

    xor a
    nop
    ld c, b
    cp a
    nop
    rst $38
    ld [hl+], a
    rst $38
    and b
    rst $38
    add l
    rst $38
    rst $38
    cp $ff

jr_091_6265:
    db $10
    rst $38
    jr jr_091_6265

    add b
    add b
    nop
    inc de
    nop
    add c
    nop
    di
    pop bc
    push bc
    call nz, Call_091_508c
    ld a, e
    ld b, b
    cp a
    add a
    rst $38
    db $e3
    db $fd
    db $fc
    rst $18
    adc a
    rst $38
    and e
    rst $38
    di
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
    ei
    ei
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $08
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    and e
    rst $38
    ld h, a
    rst $38
    rst $30
    rst $38
    dec sp
    rst $38
    ld bc, $00ff
    rst $38
    dec bc
    rst $30
    ld [$02f7], sp
    rst $38
    ld b, $f3
    ld a, e
    rst $30
    add e
    ld a, a
    ret nz

    ccf
    add h
    ld a, e
    nop
    ld [hl], e
    rst $20
    ld a, e
    rst $38
    ld [hl], e
    rst $18
    di
    ld [hl], a
    ei
    ld a, e
    rst $38
    cp e
    ld a, a
    or a
    ei
    xor e
    ld [hl], e
    rst $18
    scf
    ld l, e
    ld [hl], e
    db $db
    ld [hl], e
    ld [hl], a
    ei
    dec sp
    rst $38
    adc c
    ld a, a
    ld sp, $cb7b
    add hl, sp
    ld c, e
    inc sp
    ld c, c
    inc sp
    ld e, a
    ld hl, $7f35
    ei
    rst $38
    rst $10
    dec a
    rst $38
    cp c
    ld a, e

jr_091_630f:
    ld de, $0130
    jr c, jr_091_6355

    jr z, jr_091_6357

    db $10
    add hl, hl
    inc b
    add hl, sp
    ld [de], a
    ld c, l
    srl a
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    cp $3f
    sub b
    rst $38
    rla
    rst $38
    ld [hl], b
    rst $38
    dec b
    rst $38
    rst $38
    cp $ff
    call nz, Call_000_00ff
    or $00
    ld b, $00
    inc e
    nop
    ret nz

    nop
    add b
    nop
    jp $f7c0


jr_091_6343:
    ld [$1007], a
    or e
    nop
    adc a
    add e
    sbc l
    jr z, jr_091_630f

    nop
    or b
    nop
    cp $c0
    db $fc
    ld hl, sp-$01

jr_091_6355:
    ld a, $ff

jr_091_6357:
    ld [hl], a
    db $db
    rrca
    rst $38
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    rst $38
    jp c, Jump_091_7fff

    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

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
    inc h
    rst $38
    adc b
    rst $38
    ld l, d
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    dec a
    rst $38
    dec sp
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    db $fd
    dec de
    db $fd
    ld e, b
    cp a
    sbc c
    cp a
    sbc l
    rst $38
    db $dd
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    ld e, [hl]
    sbc l
    inc d
    sbc a
    jr jr_091_6343

    ld sp, $3fde
    call c, $dffe
    dec b
    rst $38
    dec c
    sbc $03
    cp h
    nop
    sbc [hl]
    nop
    sbc h
    inc b
    sbc h
    ld c, [hl]
    sbc h
    ld l, $df
    nop
    rst $38
    inc c
    sbc $40
    sbc h
    ld [bc], a
    sbc h
    ld [de], a
    xor h
    ld e, d
    adc h
    ld e, l
    adc [hl]
    ld d, $ef
    ld [de], a
    rst $28
    ld b, $ce
    ld b, b
    adc [hl]
    ld b, b
    xor [hl]
    nop
    sbc $00
    xor $0e
    rst $08
    inc b
    rst $28
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
    ld b, c
    rst $38
    jr nz, @+$01

    add a
    rst $38
    xor d
    rst $38
    ld l, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret


    rst $38
    add a
    rst $38
    rra
    rst $38
    dec e
    rrca
    rrca
    rst $38
    ld [de], a
    ld a, a
    jr jr_091_6486

    ld e, $bf
    rlca
    add a
    nop
    add hl, bc
    add d
    dec de
    inc e
    ld h, a
    inc de
    ld c, l
    ld bc, $00d1
    db $ed
    ret nz

    ld sp, hl
    ldh a, [rIE]
    sbc [hl]
    rst $38
    rst $38
    db $ed
    adc a
    ld l, a
    rst $38
    ld a, [$41ff]
    cp $02
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
    db $10
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
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
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    xor $ff
    or $ef
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $28
    rst $30
    and $ef
    rst $38
    rst $20
    rst $20
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $30
    ld [hl], a
    rst $20
    ld l, a
    rst $30
    ld l, a
    rst $30
    ld h, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld h, e
    ld a, a
    db $eb
    ld [hl], a
    db $e3
    ld [hl], a
    ld h, e
    ld [hl], a
    ld [hl], e
    ld [hl], a

jr_091_6486:
    ld [hl], e
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
    db $eb
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    or a
    rst $38
    ld a, a
    rst $38
    rst $38
    add [hl]
    rst $38
    rst $38
    rst $38
    cp $ff
    adc b
    rst $38
    cp $ff
    db $eb
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ei
    rst $38
    dec sp
    cp a
    inc sp
    rst $30
    rla
    rst $38
    rra
    ei
    add hl, sp
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ret z

    rst $30
    ld h, a
    rst $38
    db $e3
    xor a
    inc bc
    sbc a
    rlca
    adc a
    ld [bc], a
    inc a
    ld [bc], a
    sbc l
    add b
    di
    db $eb
    sbc e
    db $e4
    ret c

    daa
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec c
    rst $38
    ld [$3cff], sp
    rst $38
    ld [c], a
    rst $38
    add d
    rst $38
    rra
    rst $38
    ld e, e
    rst $38
    cp a
    rst $38
    rst $30
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
    ld a, a
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    dec sp
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, e
    cp a
    dec sp
    rst $38
    dec sp
    rst $38
    dec sp
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
    rla
    rst $38
    cp d
    rst $38
    ld e, [hl]
    rst $38
    rst $18
    rst $38
    ccf
    db $fc
    rst $38
    ld c, $fe
    ld a, [c]
    rst $38
    add e
    ei
    add c
    rst $38
    ei
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
    ccf
    rst $38
    xor [hl]
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    cp a
    rra
    rst $38
    rst $38
    rst $30
    inc de
    rst $38
    rra
    rst $38
    inc a
    cp a
    add hl, de
    cp a
    add hl, bc
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
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
    add hl, bc
    rst $38
    call Call_000_3fff
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
    rst $38
    rst $38
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
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
    sbc $ff
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    inc de
    rst $38
    add b
    rst $38
    inc l
    ccf
    rra
    db $fd
    nop
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec [hl]
    nop
    pop de
    add c
    rst $38
    ld h, h
    ld a, l
    ld h, a
    ei
    pop bc
    cp a
    add b
    sbc $ca
    di
    rst $00
    db $fc
    add $f7
    ld sp, $e1e7
    cp $d4
    rst $38
    add $ff
    rst $38
    rst $28
    rst $20
    rst $38
    rst $08
    rst $38
    rst $28
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    dec c
    dec c
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_091_6667

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_091_6677

    ld a, [hl+]
    inc c
    dec hl
    inc l
    dec l
    dec c
    dec c
    dec c
    ld l, $2f
    jr nc, jr_091_668b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    dec bc
    inc c
    ld [hl], $37
    jr c, jr_091_669d

    dec c
    ld a, [hl-]
    dec sp

jr_091_6667:
    inc a
    dec a
    ld a, $3f
    ccf
    ld b, b
    ld b, c
    inc c
    inc c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec c
    ld b, [hl]
    ld b, a

jr_091_6677:
    ld c, b
    ld c, c
    ld c, d
    ccf
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    dec c
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ccf

jr_091_668b:
    ld e, b
    ld e, c
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld e, d
    ld e, e
    ld e, h
    dec c
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ccf
    ld h, d
    ld h, e

jr_091_669d:
    ld c, a
    ld c, a
    ld c, a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    dec c
    ld l, b
    ld l, c
    ld l, c
    ld l, d
    ld l, e
    ld l, e
    ld l, h
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld l, l
    ld l, [hl]
    ld l, a
    ld h, a
    dec c
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    dec c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld c, a
    ld c, a
    ld c, a
    ld c, a
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
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    adc a
    sub b
    sub c
    ccf
    ccf
    ccf
    ccf
    sub d
    inc c
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld c, a
    ld c, a
    sbc b
    sbc c
    sbc d
    sbc e
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
    ld c, a
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
    ld c, a
    or l
    or [hl]
    ccf
    ccf
    ccf
    ccf
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
    ccf
    ccf
    ccf
    ccf
    ccf
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    ccf
    ccf
    ccf
    ccf
    ccf
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ccf
    ccf
    ccf
    ccf
    ccf
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ccf
    ccf
    ld [c], a
    db $e3
    sbc h
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    nop
    nop
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
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    nop
    nop
    jr nz, jr_091_67a0

jr_091_67a0:
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0701
    rlca
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
    ld [bc], a
    ld bc, $0101
    rlca
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
    ld [bc], a
    ld bc, $0101
    rlca
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
    rlca
    rlca
    rlca
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0401
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
    ld [bc], a
    nop
    nop
    ld bc, $0401
    nop
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
    ld bc, $0401
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000

Call_091_682b:
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    inc bc
    nop
    nop
    nop
    inc bc
    ld b, $00
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
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
    nop
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
    rst $38
    nop
    rst $38
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    ld bc, $ffff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc bc
    ld a, a
    nop
    ccf
    nop
    rra
    add b
    adc a
    add b
    add a
    ret nz

    pop bc
    ldh a, [$bf]
    ld hl, sp-$71
    cp $87
    rst $38
    add c
    rst $38
    add b
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

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    add d
    add d
    add d
    add d
    add h
    add h
    add h
    add h
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ret nc

    ret nc

    pop de
    pop de
    pop hl
    pop hl
    pop hl
    pop hl
    jp $03c3


    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
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
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc b
    rlca
    inc b
    db $fc
    add h
    ld a, h
    add h
    ld a, h
    add h
    ld a, h
    add d
    ld a, [hl]
    add d
    ld a, [hl]
    add d
    ld a, [hl]
    add d
    ld a, [hl]
    add d
    ld a, [hl]
    add d
    ld a, [hl]
    jp nz, $c23e

    ld a, $c2
    ld a, $c2
    ld a, $c1
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    nop
    nop
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add c
    add c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    add a
    add a
    adc a
    adc a
    rrca
    rrca
    rra
    rra
    jr jr_091_6b40

    jr jr_091_6b42

    jr nc, jr_091_6b5c

    jr nc, jr_091_6b5e

    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
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
    add b

jr_091_6b40:
    nop
    nop

jr_091_6b42:
    rra
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
    nop
    rst $38
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

jr_091_6b5c:
    nop
    nop

jr_091_6b5e:
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

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
    inc bc
    rst $38
    inc bc
    inc bc
    rlca
    ld b, $07
    ld b, $0c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc e
    rra
    inc e
    rra
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
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
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld a, a
    rst $38
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
    nop
    nop
    nop
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
    ccf
    jr nz, jr_091_6c6a

    ld h, $26
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    ld h, $26
    db $10
    db $10
    rra
    rra
    ld de, $131f
    rra
    rla
    rra
    ld e, $1f
    inc e
    rra
    jr jr_091_6c83

    ld de, $131f
    rra
    rla
    rra

jr_091_6c6a:
    ld e, $1f
    inc e
    rra
    jr jr_091_6c8f

    add hl, bc
    rrca
    adc e
    adc a
    adc a
    adc a
    adc [hl]
    adc a
    adc h
    adc a
    adc b
    adc a
    rrca
    rrca
    nop
    nop
    rst $38
    nop
    rst $38

jr_091_6c83:
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_091_6c8f:
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
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
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
    rst $38

jr_091_6cca:
    nop
    rst $38

jr_091_6ccc:
    nop
    rst $38

jr_091_6cce:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_091_6cd6:
    nop
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
    nop
    nop
    nop
    nop
    nop
    rst $38
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
    rst $38
    nop
    nop
    inc h
    inc h
    ld d, [hl]
    ld d, [hl]
    ld [hl], l
    ld [hl], l
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $0601
    ld b, $08
    ld [$1013], sp
    rla
    db $10
    cpl
    jr nz, jr_091_6cd6

    and b
    jr nz, jr_091_6cca

    jr nz, jr_091_6ccc

    jr nz, jr_091_6cce

    sub b
    sub b
    sub c
    sub b
    adc c
    adc b
    ld b, $86
    ld bc, $0081
    add b
    add b
    add b
    rst $38
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add a
    add a
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc a
    ccf
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    add b
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
    ld bc, $0000
    nop
    nop
    rst $38
    rst $38
    xor l
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    cp e
    cp e
    and d
    and d
    xor e
    xor e
    xor d
    xor d
    cp e
    cp e
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ldh a, [$f0]
    inc c
    inc c
    ld [bc], a
    ld [bc], a
    add hl, de
    ld bc, $011d
    ld e, $00
    ld e, $00
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    pop hl
    ld bc, $01f1
    ld a, [c]
    ld [bc], a
    inc c
    inc c
    ldh a, [$f0]
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    nop
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
    ccf
    rst $38
    rst $38
    rst $38
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
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    nop
    nop
    nop
    add b
    add b
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld h, d
    ld h, d
    ld d, d
    ld d, d
    ld h, d
    ld h, d
    ld d, d
    ld d, d
    ld d, d
    ld d, d
    ld [bc], a
    ld [bc], a
    cp $fe
    ld c, $3e
    ld e, $3e
    ld a, [hl-]
    ld a, $32
    ld a, $22
    ld a, $06
    ld a, $8e
    cp [hl]
    sbc [hl]
    cp [hl]
    cp d
    cp [hl]
    or d
    cp [hl]
    and d
    cp [hl]
    ld b, $3e
    ld c, $3e
    ld e, $3e
    ld a, [hl-]
    ld a, $32
    ld a, $22
    ld a, $fe
    cp $00
    nop
    nop
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
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

jr_091_6ee0:
    ld b, $fe

jr_091_6ee2:
    inc c
    cp $1c
    db $fc
    jr c, jr_091_6ee0

    jr nc, jr_091_6ee2

    ld [hl], b
    ldh a, [$e0]
    ldh [$f0], a
    ldh a, [rIF]
    rst $38
    nop
    rrca
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
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
    ldh a, [$1f]
    rst $30
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    db $f4
    rra
    ld a, [$fa0f]
    rrca
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, e
    rst $38
    ld hl, sp-$01
    rst $38
    nop
    rst $38
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_091_6f9a

    jr nz, jr_091_6f9c

    ld b, b
    ld b, c
    add b
    add e
    ldh a, [rIE]
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
    add b
    add b
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

jr_091_6f9a:
    nop
    rst $38

jr_091_6f9c:
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
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ccf
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rlca
    nop
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
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
    nop
    nop
    nop
    add b
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
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
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    rst $38
    add l
    rst $38
    inc sp
    rst $38
    inc bc
    rst $38
    cp $ff
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld [$08ff], sp
    rst $38
    add hl, bc
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $20ff
    rst $38
    ld hl, $40ff
    rst $38
    ld b, c
    rst $38
    ld b, a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add d
    rst $38
    add c
    rst $38
    add l
    rst $38
    ld b, d
    rst $38
    ld b, l
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld hl, $11ff
    rst $38
    ld de, $08ff
    rst $38
    ld [$04ff], sp
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    cp $ff
    dec bc
    rst $38
    ld e, a
    rst $38
    ldh a, [rIE]
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
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $00ff
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    ld bc, $ffff
    cp $ff
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rst $30
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ret nc

    rst $30
    ldh a, [$f7]
    ret nc

    rst $30
    ret nc

    rst $30
    ret nc

    rst $30
    ldh a, [$f7]
    ret nc

    rst $30
    ldh a, [$f7]
    ret nc

    rst $30
    ldh a, [$f7]
    ret nc

    rst $30
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ret nc

    rst $30
    ldh a, [$f7]
    ldh a, [$f7]
    ret nc

    rst $30
    pop af
    rst $30
    pop af
    rst $30
    rst $30
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
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    rst $38
    cp $fe
    db $fd
    xor l
    cp $fe
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
    ld a, a
    rst $38
    rra
    rst $38
    rlca
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
    inc bc
    inc bc
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
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    rra
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    jp $f0ff


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
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, @+$22

    ret c

    ret c

    db $e4
    db $e4
    ld a, [c]
    ld a, [c]
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    rst $38
    ldh a, [$f7]
    ld hl, sp-$0d
    db $fc
    pop af
    cp $70
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [rSC]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [rSB]
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
    rlca
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
    rst $38
    ldh a, [rIE]
    rst $08
    rst $38
    nop
    rst $38
    ld b, $ff
    ld a, [hl]
    ld sp, hl
    cp $81
    cp $01
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rrca
    inc bc
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$3f]
    ldh a, [$0c]
    inc c
    jp $f0c3


    ldh a, [$fc]
    db $fc
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
    inc a
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    ld h, b
    ld a, a
    db $10
    rra
    ld [$060f], sp
    rlca
    add c
    add c
    ld b, b
    ld b, b
    jr nz, @+$01

    ret c

    rst $38
    and h
    ld a, a
    jp nc, $ed3f

    rra
    ld a, [c]
    rrca
    db $fd
    inc bc
    cp $01
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp-$80
    db $fc
    ret nz

    cp $c0
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld a, h
    inc b
    inc a
    inc b
    inc e
    inc b
    inc e
    add h
    inc c
    add h
    inc b
    call nz, $e000
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    rlca
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
    rst $38
    ccf
    rst $38
    rst $38
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, a
    rst $38
    ld a, b
    rst $38
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, a
    ld a, [hl]
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, a
    ld a, [hl]
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld hl, sp-$08
    ld a, $3e
    add hl, de
    add hl, de
    ret z

    ret z

    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    jr nz, @+$01

    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_091_73df

    ld e, b
    ld e, b
    inc h
    rst $38
    sub d
    ld a, a
    call $e23f
    rra
    pop af
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    add b
    ccf
    pop bc
    rra
    rst $20
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca

jr_091_73df:
    rst $38
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    ld bc, $0f01
    rrca
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
    rrca
    rst $38
    rst $38
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
    ldh a, [rIE]
    rrca
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
    rlca
    nop
    pop bc
    ret nz

    jr c, jr_091_7474

    ld b, $06
    ld bc, $8001
    add b
    ldh [$e0], a
    ld hl, sp-$08
    ld a, [hl]
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
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
    di
    di
    nop
    nop
    nop
    nop
    nop
    jr jr_091_7483

    rst $38
    ld a, a
    ld a, a
    ld bc, $0001
    nop
    nop
    nop

jr_091_7474:
    add b
    add b
    ld b, b
    ld b, b
    jr nc, jr_091_74aa

    adc b
    adc b
    ld h, h
    ld h, h
    inc de
    inc de
    jr @+$1a

    ld a, [hl]

jr_091_7483:
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
    ldh a, [rIE]
    ret nz

    cp a
    rst $00
    sbc a
    rst $20
    adc a
    di
    add a
    ld hl, sp-$7d
    db $fc
    ld b, c
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

jr_091_74aa:
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ccf
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $fc
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
    add b
    add b
    ld a, b
    ld a, b
    rst $00
    ld b, a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh a, [rSVBK]
    rst $08
    ld c, a
    ret nz

    ld b, b
    ret nz

    ld b, b
    pop bc
    ld b, c
    pop af
    ld [hl], c
    rst $08
    ld c, a
    ld bc, $0101
    ld bc, $c1c1
    add hl, sp
    add hl, sp
    rlca
    rlca
    ld bc, $0101
    ld bc, $c1c1
    or c
    or c
    rst $28
    ld l, a
    ei
    dec de
    cp $06
    rst $38
    ld bc, $00ff
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
    ldh a, [$3f]
    jr c, jr_091_7528

    rra
    jr nz, @+$41

    jr nc, @-$3f

    or a
    rst $38
    db $db
    rst $38
    ld c, l
    ld a, a
    ld d, $3f
    daa
    ccf

jr_091_7528:
    inc de
    rra
    inc c
    rrca
    ld b, $07
    ld bc, $8001
    add b
    ld b, b
    ld b, b
    jr nc, jr_091_7566

    adc b
    adc b
    db $e4
    db $e4
    di
    di
    ld hl, sp-$78
    cp $06
    rst $38
    ld bc, $80ff
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
    nop
    rst $38
    nop
    rst $38

jr_091_7554:
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, jr_091_7554

    ret nz

    ret nz

    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38

jr_091_7566:
    ld a, a
    ld hl, sp-$01
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
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    adc a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    add a
    adc a
    adc a
    adc a
    adc a
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
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    sbc a
    rst $00
    ld b, a
    pop af
    ld sp, $0cfc
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
    ldh [rIF], a
    ld hl, sp+$07
    db $fc
    pop bc
    cp $f0
    rst $38
    ld sp, hl
    rst $38
    dec a
    rst $38
    rst $08
    rst $38
    ld bc, $7fff
    rst $38
    inc a
    rst $38
    jp Jump_000_39ff


    ccf
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nc, jr_091_7622

    adc b
    adc b
    db $e4
    ld h, h
    di
    inc de
    ld hl, sp+$08
    cp $06
    rst $38
    rlca

jr_091_75fe:
    rst $38
    rrca
    nop
    rst $38
    rlca
    rst $38
    jr c, jr_091_75fe

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    cp $ff
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

jr_091_7622:
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

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
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    pop hl
    jp $c3c3


    jp $c3c3


    jp $c3c3


    jp $c3c3


    rst $00
    rst $00
    rst $00
    rst $00
    add a
    add a
    add [hl]
    add [hl]
    add a
    add a
    add a
    add a
    rst $20
    rst $20
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    add $c6
    pop af
    ld sp, $08f8
    cp $06
    rst $38
    ld bc, $00fe
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    ret nz

    ld a, h
    ret nz

    ld a, h
    ret nz

    db $fc
    ldh [$e8], a
    ldh [$c0], a
    ret nz

    add b
    add b
    inc b
    add h
    add d
    ld a, [c]
    ld sp, $0839
    inc c
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
    add b
    add b
    ld b, b
    ld b, b
    jr nc, jr_091_76de

    adc b
    adc b
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
    inc bc
    rst $38
    ccf
    db $fc
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

jr_091_76de:
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e0], a
    pop hl
    pop hl
    jp $c4c3


    call nz, $c8c8
    ret z

    ret z

    ret z

    ret z

    adc $ce
    reti


    reti


    ldh a, [$f0]
    ret nc

    ret nc

    sub b
    sub b
    or b
    or b
    sbc b
    sbc b
    cp [hl]
    cp [hl]
    sub c
    sub c
    ldh a, [$f0]
    and b
    and b
    ldh [$e0], a
    and b
    and b
    cp b
    cp b
    or $f6
    ld h, c
    ld h, c
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    ld l, h
    ld l, h
    ld b, e
    ld b, e
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ld h, b
    jr jr_091_775c

    add [hl]
    add [hl]
    ld h, c
    ld h, c
    jr jr_091_7762

    ld e, $1e
    rra
    rra
    rra
    ld e, $3f
    ld a, $3f
    ld a, $3f
    inc a
    ccf
    inc a
    ccf
    inc a
    ccf
    inc a

jr_091_775c:
    ccf
    inc a
    ccf
    inc a
    ld a, a
    ld a, h

jr_091_7762:
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp+$03
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [bc], a
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_091_77bb

    ld a, [de]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec de
    inc e
    inc e
    dec e
    ld e, $1f
    jr nz, jr_091_77cf

    ld [hl+], a
    inc hl
    inc de
    inc h
    dec h
    ld h, $27
    jr z, jr_091_77e0

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_091_77bb:
    ld l, $2f
    jr nc, jr_091_77e2

    ld sp, $3213
    inc sp
    ld [bc], a
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_091_7804

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_091_77cf:
    ld a, $13
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
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_091_77e0:
    inc de
    ld c, [hl]

jr_091_77e2:
    inc de
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
    inc de
    inc de
    ld e, d
    ld e, e
    inc de
    ld e, h
    ld e, l
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    inc e
    ld h, d
    ld h, e
    inc de
    inc de
    inc de
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_091_7804:
    ld e, l
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    inc e
    ld l, b
    inc de
    inc de
    inc de
    inc de
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld e, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc de
    inc de
    inc de
    inc de
    ld e, h
    ld l, e
    ld [hl], l
    db $76
    ld e, l
    ld e, l
    ld [hl], a
    ld a, b
    ld [hl], c
    ld a, c
    ld a, d
    ld a, e
    inc de
    inc de
    inc de
    inc de
    ld a, h
    ld l, e
    ld a, l
    ld e, l
    ld e, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    inc e
    add e
    inc de
    inc de
    inc de
    ld l, e
    ld a, h
    add h
    add l
    ld e, l
    ld e, l
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
    ld l, e
    ld a, h
    add h
    sub b
    ld e, l
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld e, l
    add d
    inc e
    inc e
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
    add d
    ld e, l
    and e
    inc e
    inc e
    add h
    and h
    and l
    and [hl]
    ld h, $a7
    xor b
    xor c
    inc e
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    inc e
    inc e
    xor a
    or b
    or c
    or d
    or e
    ld [bc], a
    ld [bc], a
    or h
    or l
    or [hl]
    ld e, l
    or a
    cp b
    cp c
    inc e
    inc e
    cp d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cp e
    cp h
    cp l
    ld e, l
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

    call $ce5d
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    inc e
    inc e
    inc e
    inc e
    ret c

    ld e, l
    ld e, l
    reti


    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $00
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld b, $00
    nop
    nop
    ld bc, $0101
    ld bc, $0001
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
    nop
    nop
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $0101
    ld bc, $0001
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
    nop
    nop
    ld bc, $0101
    ld bc, $0001
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
    nop
    nop
    ld bc, $0101
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
    ld bc, $2101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    nop
    nop
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
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ldh a, [$3f]
    db $fc
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    rrca
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
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    inc sp
    rst $38
    rst $08
    rst $38
    inc a
    ccf
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    ld bc, $f9ff
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
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
    rst $38
    rst $38
    cp $fe
    ldh [$e0], a
    inc bc
    inc bc
    inc b
    inc b
    add hl, bc
    add hl, bc
    inc sp
    inc sp
    ld b, a
    ld b, a
    adc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    ld a, a
    jr jr_091_7aeb

    rlca
    rlca
    ld bc, $8001
    rst $38
    ldh [$7f], a
    ld hl, sp+$1f
    cp $07
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
    nop
    rst $38
    inc bc
    rst $38

jr_091_7aeb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    jp $03ff


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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01fe
    cp $01
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    ld bc, $0601
    ld b, $3b
    dec sp
    rst $08
    call z, $303f
    ld hl, sp-$01
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
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld b, d
    cp $44
    db $fc
    ld c, c
    ld sp, hl
    ld d, d
    ld a, [c]
    ld h, h
    db $e4
    sbc e
    sbc e
    daa
    rst $38
    ld c, a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [$3f]
    db $fc
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    rlca
    rlca
    ld bc, $0601
    ld b, $1b
    dec de
    ld l, a
    ld l, h
    cp a
    or b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ld hl, sp-$71
    ld hl, sp+$4f
    ld hl, sp+$4e
    ld sp, hl
    ld c, [hl]
    ld sp, hl
    ld c, a
    ld sp, hl
    ld c, a
    ld sp, hl
    ld c, l
    ld sp, hl
    ld b, h
    db $fc
    ld b, h
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    inc h
    db $fc

jr_091_7c04:
    inc h
    db $fc
    inc h
    db $fc
    inc h
    db $fc
    jr z, jr_091_7c04

    ld sp, $62f1
    ld [c], a
    adc l
    rst $38
    inc de
    rst $38
    cpl
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ld a, a
    cp $ff
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    ld bc, $03ff
    nop
    rst $38
    db $fc
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
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    db $e3
    rst $38
    db $e3
    db $fc
    db $e3
    db $fc
    pop hl
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f0
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$3f
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fd
    ccf
    rst $38
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    add c
    rst $38
    sbc [hl]
    sbc [hl]
    ldh [$e0], a
    add e
    add b
    add e
    add b
    add e
    add b
    sbc a
    sbc h
    db $e3
    ldh [$83], a
    add b
    add e
    add b
    rst $08
    call z, $f0f3
    ret nz

    ret nz

    ret nz

    ret nz

    jp $ccc3


    call z, $f0f0
    pop bc
    pop bc
    rst $00
    rst $00
    db $dd
    db $dd
    or $f6
    sbc $de
    cp $ee
    cp $0e
    cp $0e
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
    jp Jump_000_1c3f


    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld [hl], b
    rst $38
    add c
    rst $38
    rst $18
    rst $38
    and b
    ldh [$a0], a
    ldh [rLCDC], a
    ld h, b
    inc hl
    ccf
    dec e
    dec e
    dec bc
    dec bc
    rla
    inc d
    ld l, a
    ld l, b
    cp a
    or b
    ld a, a
    ld h, b
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    nop
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
    cp $00
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    pop bc
    rst $38
    ldh a, [$3f]
    db $fc
    rrca
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
    adc a
    rst $38
    rst $38
    jp Jump_000_02ff


    rst $38
    ld e, $ff
    ld [c], a
    rst $38
    ld a, [de]
    ld [bc], a
    ld a, [$fe02]
    ld b, $fa
    ld [bc], a
    ld a, [$fa02]
    ld [bc], a
    cp $06
    ld a, [$fa02]
    ld [bc], a
    ld [c], a
    ld [bc], a
    ld c, $0e
    ld [hl-], a
    ld [hl-], a
    jp Jump_000_07c3


    rlca
    rra
    rra
    ld a, a
    ld a, [hl]
    rst $18
    ret c

    ld a, a
    ld h, b
    cp a
    add b
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
    ld e, $00
    inc e
    nop
    stop
    jr nz, @+$22

    ld b, b
    ld b, h
    add h
    adc h
    add b
    adc b
    adc b
    ret c

    ld d, c
    pop af
    ld h, d
    ld [c], a
    add l
    add l
    rrca
    ld c, $3f
    jr c, jr_091_7e0c

    ld d, b
    cp a
    or b
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld a, e
    rst $38
    ld hl, sp-$01
    nop
    cp $01
    call c, Call_000_02f3
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rrca
    inc d
    rrca
    ld [hl-], a
    rrca
    ld [hl], d
    rrca
    ld a, [c]
    rrca
    ld [bc], a
    dec c
    inc b
    dec bc
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld bc, $0307
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    inc b
    rlca
    nop
    rlca
    ld [$100f], sp
    rra
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
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra

jr_091_7e0c:
    nop
    rlca
    ret nz

    pop bc
    ldh a, [$3f]
    db $fc
    rrca
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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    db $eb
    rst $38
    db $ed
    cp $eb
    db $fc
    db $eb
    db $fc
    rst $28
    db $fc
    db $eb
    db $fc
    db $eb
    db $fc
    rst $28
    db $fc
    db $eb
    db $fc
    db $eb
    db $fd
    db $ec
    rst $38
    add sp, -$18
    db $eb
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld sp, hl
    ld bc, $00f0
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rrca
    rrca
    rla
    rla
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    dec sp
    rst $38
    ld a, b
    cp $01
    db $fc
    inc bc
    call z, $f2f3
    db $fd
    ld a, [c]
    ld a, l
    db $fc
    dec sp
    sbc d
    ld a, l
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    inc e
    ei
    ld a, [hl-]
    db $fd
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    dec de
    db $fd
    ccf
    rst $38
    rra
    rst $38
    ld e, $ff
    inc e
    rst $38
    jr @+$01

    db $10
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, h
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
    db $fc
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

jr_091_7eee:
    rst $38
    rst $38

jr_091_7ef0:
    nop
    rst $38

jr_091_7ef2:
    nop
    rst $38

jr_091_7ef4:
    ld a, a
    rst $38

jr_091_7ef6:
    ld b, b
    ret nz

jr_091_7ef8:
    ld b, b
    ret nz

jr_091_7efa:
    ld b, b
    ret nz

jr_091_7efc:
    ld b, b
    ret nz

jr_091_7efe:
    ld b, b
    ret nz

jr_091_7f00:
    ld b, b
    ret nz

jr_091_7f02:
    ld b, b
    ret nz

jr_091_7f04:
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_091_7eee

    jr nz, jr_091_7ef0

jr_091_7f10:
    jr nz, jr_091_7ef2

    jr nz, jr_091_7ef4

    jr nz, jr_091_7ef6

    jr nz, jr_091_7ef8

    jr nz, jr_091_7efa

    jr nz, jr_091_7efc

    jr nz, jr_091_7efe

    jr nz, jr_091_7f00

    jr nz, jr_091_7f02

    jr nz, jr_091_7f04

    ldh a, [$f0]
    db $10
    ldh a, [rSVBK]
    ldh a, [$df]
    or b
    rst $18
    ccf
    rst $38
    jr nc, jr_091_7f10

    ccf
    rst $18
    jr nc, @+$01

    ccf
    rst $18
    jr nc, @+$01

    ccf
    rst $18
    ld [hl], b
    rra
    rst $38
    ccf
    ldh a, [$cf]
    rst $08
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    nop
    nop
    rra
    rra
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
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    inc a
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    jr c, @+$01

    ccf
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    inc b
    db $fc
    ld [bc], a
    cp $01
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
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

Jump_091_7fff:
    nop
