SECTION "ROM Bank $0fd", ROMX[$4000], BANK[$fd]

    add [hl]
    rst $38
    ld a, d
    nop
    add [hl]
    rst $38
    ld h, d
    nop
    adc [hl]
    rst $38
    ld [hl], d
    nop
    sub $ff
    ld a, [hl+]
    nop
    and $ff
    ld a, [de]
    nop
    and $ff
    ld a, [hl+]
    nop
    sub d
    rst $38
    ld l, [hl]
    nop
    adc b
    rst $38
    ld a, b
    nop
    sub $ff
    ld e, d
    nop
    cp [hl]
    rst $38
    and d
    nop
    add [hl]
    rst $38
    adc d
    nop
    ld a, [$36ff]
    nop
    and [hl]
    rst $38
    ld a, [de]
    nop
    db $e4
    rst $38
    ld a, [hl+]
    nop
    add b
    rst $38
    ld a, [hl-]
    nop
    sbc [hl]
    rst $38
    ld a, [hl-]
    nop
    ret c

    rst $38
    ld a, d
    nop
    and [hl]
    rst $38
    ld [hl], d
    nop
    and $ff
    inc d
    nop
    and $ff
    ld a, [de]
    nop
    or d
    rst $38
    ld a, $00
    xor d
    rst $38
    sbc [hl]
    nop
    cp [hl]
    rst $38
    ld b, d
    nop
    push af
    rst $38
    ld a, [hl-]
    nop
    or [hl]
    rst $38
    ld c, d
    nop
    and d
    rst $38
    ld c, d
    nop
    and $ff
    ld a, d
    nop
    sub $ff
    ld a, [hl+]
    nop
    add $ff
    ld a, [hl-]
    nop
    and $ff
    ld a, [de]
    nop
    add $ff
    ld a, [hl-]
    nop
    and $ff
    ld b, b
    nop
    add $ff
    ld a, [de]
    nop
    and [hl]
    rst $38
    ld h, d
    nop
    sub $ff
    ld a, [hl+]
    nop
    ld a, [c]
    rst $38
    ld a, [hl+]
    nop
    sub $ff
    ld e, d
    nop
    add $ff
    ld c, d
    nop
    sbc $ff
    ld [de], a
    nop
    add [hl]
    rst $38
    ld e, d
    nop
    ld a, [c]
    rst $38
    ld c, $00
    or $ff
    ld a, [bc]
    nop
    and $ff
    ld a, [de]
    nop
    rst $38
    rst $38
    ld a, [bc]
    nop
    and $ff
    ld a, [de]
    nop
    and $ff
    ld a, [de]
    nop
    sub $ff
    ld a, [hl+]
    nop
    sub $ff
    ld a, [hl+]
    nop
    sbc $ff
    ld [hl+], a
    nop
    sbc $ff
    ld [hl+], a
    nop
    and $ff
    ld a, [de]
    nop
    and $ff
    ld a, [de]
    nop
    adc [hl]
    rst $38
    ld a, [hl-]
    nop
    jp z, Jump_000_2eff

    nop
    db $76
    rst $38
    ld a, d
    nop
    jp z, Jump_000_2eff

    nop
    add [hl]
    rst $38
    ld a, d
    nop
    sub $ff
    ld a, [hl+]
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    add [hl]
    rst $38
    ld h, d
    nop
    add $ff
    ld a, [hl-]
    nop
    add $ff
    ld a, [hl-]
    nop
    and $ff
    ld a, [de]
    nop
    and $ff
    ld a, [de]

Jump_0fd_40ff:
    nop
    and [hl]
    rst $38
    ld b, d
    nop
    ld e, [hl]
    rst $38
    ld e, $00
    sub $ff
    ld a, [hl-]
    nop
    ld a, [$06ff]
    nop
    sub $ff
    ld a, [hl+]
    nop
    sbc $ff
    ld b, d
    nop
    add $ff
    ld a, [hl-]
    nop
    xor $ff
    ld [de], a
    nop
    ld l, h
    rst $38
    ld [de], a
    nop
    add [hl]
    rst $38
    ld l, d
    nop
    add [hl]
    rst $38
    ld b, d
    nop
    add $ff
    ld a, d
    nop
    sbc $ff
    ld [hl+], a
    nop
    sbc $ff
    ld [hl+], a
    nop
    and [hl]
    rst $38
    ld e, d
    nop
    and [hl]
    rst $38
    ld e, d
    nop
    sub $ff
    ld [hl-], a
    nop
    add $ff
    ld a, [hl-]
    nop
    ld [c], a
    rst $38
    ld e, $00
    ld [c], a
    rst $38
    ld e, $00
    or $ff
    ld a, [bc]
    nop
    sub $ff
    ld a, [hl+]
    nop
    sbc $ff
    ld [hl+], a
    nop
    xor [hl]
    rst $38
    ld e, d
    nop
    adc $ff
    ld a, [de]
    nop
    sub [hl]
    rst $38
    ld a, [hl-]
    nop
    and [hl]
    rst $38
    ld [de], a
    nop
    sub $ff
    ld a, [hl+]
    nop
    xor $ff
    ld [de], a
    nop
    adc $ff
    ld [hl+], a
    nop
    add $ff
    ld [hl], $00
    and $ff
    ld a, [de]
    nop
    ld [c], a
    rst $38
    ld e, $00
    sbc $ff
    ld [hl+], a
    nop
    and $ff
    ld e, [hl]
    nop
    xor [hl]
    rst $38
    ld a, [hl+]
    nop
    or $ff
    ld a, [hl-]
    nop
    or [hl]
    rst $38
    ld a, [de]
    nop
    or $ff
    ld a, [bc]
    nop
    and $ff
    ld a, [de]
    nop
    sbc $ff
    ld [hl+], a
    nop
    sbc $ff
    ld [hl+], a
    nop
    add $ff
    ld h, d
    nop
    add [hl]
    rst $38
    ld e, d
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    db $76
    rst $38
    sbc d
    nop
    sbc [hl]
    rst $38
    add d
    nop
    ld a, [hl]
    rst $38
    ld a, d
    nop
    and [hl]
    rst $38
    ld e, d
    nop
    and [hl]
    rst $38
    ld e, d
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    sub b
    rst $38
    add b
    nop
    add [hl]
    rst $38
    sub d
    nop
    and $ff
    ld a, [de]
    nop
    and $ff
    ld a, [de]
    nop
    add $ff
    ld c, d
    nop
    and [hl]
    rst $38
    ld e, d
    nop
    add [hl]
    rst $38
    ld e, b
    nop
    add $ff
    ld a, [hl-]
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    and [hl]
    rst $38
    ld a, d
    nop
    cp [hl]
    rst $38
    ld b, d
    nop
    and [hl]
    rst $38
    ld l, d
    nop
    and $ff
    ld a, [de]
    nop
    and $ff
    ld a, [de]
    nop
    xor [hl]
    rst $38
    sbc d
    nop
    xor [hl]
    rst $38
    ld a, d
    nop
    add $ff
    ld h, d
    nop
    add [hl]
    rst $38
    ld e, d
    nop
    sbc $ff
    ld a, [hl+]
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    adc [hl]
    rst $38
    ld a, d
    nop
    add [hl]
    rst $38
    ld d, d
    nop
    sub $ff
    ld a, [hl+]
    nop
    add $ff
    ld a, [hl-]
    nop
    db $76
    rst $38
    ld a, d
    nop
    ld a, [c]
    rst $38
    ld c, $00
    add [hl]
    rst $38
    ld c, d
    nop
    add [hl]
    rst $38
    ld [de], a
    nop
    adc $ff
    ld [hl-], a
    nop
    adc $ff
    ld c, d
    nop
    and $ff
    ld a, [de]
    nop
    db $ec
    rst $38
    ld a, [de]
    nop
    sub $ff
    ld a, [hl+]
    nop
    sub $ff
    ld a, [hl+]
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    ld a, [hl]
    rst $38
    sbc d
    nop
    and $ff
    ld a, [de]
    nop
    sub $ff
    ld a, [hl+]
    nop
    add [hl]
    rst $38
    ld [hl+], a
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    and [hl]
    rst $38
    ld l, [hl]
    nop
    ld h, [hl]
    rst $38
    ld a, d
    nop
    sub $ff
    ld [hl-], a
    nop
    adc $ff
    ld c, d
    nop
    and $ff
    ld a, [de]
    nop
    db $ec
    rst $38
    ld a, [de]
    nop
    add [hl]
    rst $38
    ld [hl], h
    nop
    ret nz

    rst $38
    ld a, d
    nop
    sbc $ff
    ld [hl+], a
    nop
    xor $ff
    ld [de], a
    nop
    sub $ff
    ld [hl-], a
    nop
    adc $ff
    ld c, d
    nop
    and $ff
    ld a, [de]
    nop
    db $ec
    rst $38
    ld a, [de]
    nop
    and [hl]
    rst $38
    ld e, d
    nop
    and [hl]
    rst $38
    ld e, d
    nop
    db $e4
    rst $38
    ld [hl+], a
    nop
    xor $ff
    ld [de], a
    nop
    add $ff
    ld a, [hl-]
    nop
    sbc $ff
    ld [hl+], a
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    add $ff
    ld a, [hl+]
    nop
    sub $ff
    ld d, d
    nop
    and $ff
    ld a, [de]
    nop
    sub $ff
    ld a, [hl+]
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    cp [hl]
    rst $38
    ld a, [hl-]
    nop
    sub $ff
    ld a, [hl+]
    nop
    add $ff
    ld a, [hl-]
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    or [hl]
    rst $38
    ld a, [hl-]
    nop
    sbc $ff
    ld a, [de]
    nop

Jump_0fd_4300:
    add [hl]
    rst $38
    ld e, d
    nop
    xor [hl]
    rst $38
    ld a, [de]
    nop
    and [hl]
    rst $38
    ld e, d
    nop
    db $f4
    rst $38
    inc c
    nop
    adc $ff
    ld [hl-], a
    nop
    adc $ff
    ld a, [de]
    nop
    jp c, Jump_000_26ff

    nop
    adc $ff
    ld [hl-], a
    nop
    add $ff
    ld a, [hl-]
    nop
    add $ff
    ld [hl], d
    nop
    ld h, [hl]
    rst $38
    add d
    nop
    add [hl]
    rst $38
    ld a, [de]
    nop
    ld a, [c]
    rst $38
    ld c, $00
    ld a, [c]
    rst $38
    ld c, $00
    ldh [rIE], a
    jr nz, jr_0fd_433c

jr_0fd_433c:
    ret c

    rst $38
    jr z, jr_0fd_4340

jr_0fd_4340:
    sub [hl]
    rst $38
    ld l, d
    nop
    and [hl]
    rst $38
    ld [hl], d
    nop
    or b
    rst $38
    halt
    or [hl]
    rst $38
    ld e, d
    nop
    adc [hl]
    rst $38
    ld [hl], d
    nop
    add $ff
    inc [hl]
    nop
    ld a, [c]
    rst $38
    ld c, $00
    ld a, [c]
    rst $38
    ld c, $00
    and [hl]
    rst $38
    ld e, d
    nop
    add $ff
    ld a, [hl-]
    nop
    ldh [rIE], a
    jr nz, jr_0fd_436c

jr_0fd_436c:
    ldh [rIE], a
    jr nz, jr_0fd_4370

jr_0fd_4370:
    and [hl]
    rst $38
    ld e, d
    nop
    db $76
    rst $38
    ld l, d
    nop
    add [hl]
    rst $38
    ld e, d
    nop
    sub $ff
    ld a, [hl+]
    nop
    ld [c], a
    rst $38
    ld e, $00
    ld [c], a
    rst $38
    ld e, $00
    ldh a, [rIE]
    stop
    xor $ff
    ld a, [de]
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    add [hl]
    rst $38
    ld a, d
    nop
    xor h
    rst $38
    ld a, d
    nop
    adc $ff
    ld [hl+], a
    nop
    ld a, [ROOM_NUMBER]
    ld l, a
    ld a, [ROOM_NUMBER + 1]
    ld h, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $4000
    add hl, de
    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_0fd_524a
    push hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, d
    cp b
    jr nz, jr_0fd_43d5

    ld a, e
    cp c
    jr nc, jr_0fd_43ed

    ld e, c
    call Call_0fd_526f
    ld a, e
    ld [$c311], a
    ld a, d
    ld [$c312], a
    jr jr_0fd_43ed

jr_0fd_43d5:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, d
    cp b
    jr nz, jr_0fd_43ed

    ld a, e
    cp c
    jr c, jr_0fd_43ed

    ld e, c
    call Call_0fd_526f
    ld a, e
    ld [$c311], a
    ld a, d
    ld [$c312], a

jr_0fd_43ed:
    pop hl
    ld bc, $0004
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_0fd_524a
    ld a, d
    cp b
    jr nz, jr_0fd_4417

    ld a, e
    cp c
    jr nc, jr_0fd_442f

    ld e, c
    call Call_0fd_526f
    ld a, e
    ld [$c313], a
    ld a, d
    ld [$c314], a
    jr jr_0fd_442f

jr_0fd_4417:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld a, d
    cp b
    jr nz, jr_0fd_442f

    ld a, e
    cp c
    jr c, jr_0fd_442f

    ld e, c
    call Call_0fd_526f
    ld a, e
    ld [$c313], a
    ld a, d
    ld [$c314], a

jr_0fd_442f:
    ret


    jr jr_0fd_4477

    xor c
    ld b, l
    ld a, [c]
    ld b, l
    inc de
    ld b, [hl]
    inc a
    ld b, [hl]
    ld a, l
    ld b, [hl]
    sub [hl]
    ld b, [hl]
    xor a
    ld b, [hl]
    nop
    ld b, a
    ld hl, $3247
    ld b, a
    ld e, e
    ld b, a
    ld h, h
    ld b, a
    ld a, l
    ld b, a
    adc [hl]
    ld b, a
    xor a
    ld b, a
    ret nz

    ld b, a
    pop af
    ld b, a
    ld a, [de]
    ld c, b
    dec hl
    ld c, b
    inc [hl]
    ld c, b
    dec [hl]
    ld c, b
    ld a, $48
    ld d, a
    ld c, b
    ld l, b
    ld c, b
    sub c
    ld c, b
    sub d
    ld c, b
    and e
    ld c, b
    cp h
    ld c, b
    push bc
    ld c, b
    sub $48
    rst $28
    ld c, b
    ld hl, sp+$48
    add hl, de
    ld c, c
    ld a, [de]
    ld c, c
    ld c, e

jr_0fd_4477:
    ld c, c
    ld d, h
    ld c, c
    ld l, l
    ld c, c
    add [hl]
    ld c, c
    sub a
    ld c, c
    and b
    ld c, c
    ret


    ld c, c
    jp nc, $db49

    ld c, c
    db $fc
    ld c, c
    ld c, l
    ld c, d
    ld e, [hl]
    ld c, d
    ld e, a
    ld c, d
    add b
    ld c, d
    and c
    ld c, d
    ld [c], a
    ld c, d
    inc bc
    ld c, e
    inc c
    ld c, e
    dec e
    ld c, e
    ld b, [hl]
    ld c, e
    ld l, a
    ld c, e
    xor b
    ld c, e
    ret


    ld c, e
    jp nc, $eb4b

    ld c, e
    db $ec
    ld c, e
    dec b
    ld c, h
    ld h, $4c
    ld h, a
    ld c, h
    ld [hl], b
    ld c, h
    add c
    ld c, h
    sbc d
    ld c, h
    sbc e
    ld c, h
    or h
    ld c, h
    push af
    ld c, h
    or $4c
    rst $30
    ld c, h
    jr nz, jr_0fd_450f

    ld c, c
    ld c, l
    ld l, d
    ld c, l
    adc e
    ld c, l
    sub h
    ld c, l
    or l
    ld c, l
    adc $4d
    rst $30
    ld c, l
    jr @+$50

    add hl, sp
    ld c, [hl]
    ld d, d
    ld c, [hl]
    ld l, e
    ld c, [hl]
    add h
    ld c, [hl]
    and l
    ld c, [hl]
    cp [hl]
    ld c, [hl]
    rst $00
    ld c, [hl]
    ret c

    ld c, [hl]
    jp hl


    ld c, [hl]
    ld a, [bc]
    ld c, a
    dec de
    ld c, a
    inc h
    ld c, a
    dec a
    ld c, a
    ld e, [hl]
    ld c, a
    ld [hl], a
    ld c, a
    sub b
    ld c, a
    pop bc
    ld c, a
    jp nz, $db4f

    ld c, a
    db $f4
    ld c, a
    db $fd
    ld c, a
    ld d, $50
    rla
    ld d, b
    ld b, b
    ld d, b
    ld l, c
    ld d, b
    and d
    ld d, b
    xor e
    ld d, b
    xor h
    ld d, b
    or l
    ld d, b
    adc $50
    rst $18

jr_0fd_450f:
    ld d, b
    add sp, $50
    jp hl


    ld d, b
    ld a, [c]
    ld d, b
    di
    ld d, b
    ld [de], a
    add b
    rst $38
    ld b, b
    nop
    stop
    jr jr_0fd_4521

jr_0fd_4521:
    and h
    rst $38
    ld b, b
    nop
    jr jr_0fd_4527

jr_0fd_4527:
    jr jr_0fd_4529

jr_0fd_4529:
    sub $ff
    ld b, b
    nop
    ld a, [de]
    nop
    jr jr_0fd_4531

jr_0fd_4531:
    rst $18
    rst $38
    ld hl, sp-$01
    ld b, c
    nop
    ld h, b
    nop
    inc d
    nop
    ld b, b
    nop
    jr jr_0fd_453f

jr_0fd_453f:
    jr jr_0fd_4541

jr_0fd_4541:
    ld b, h
    nop
    ld b, b
    nop
    jr jr_0fd_4547

jr_0fd_4547:
    jr jr_0fd_4549

jr_0fd_4549:
    ld [hl], b
    nop
    ld b, b
    nop
    stop
    jr jr_0fd_4551

jr_0fd_4551:
    rrca
    nop
    ld hl, sp-$01
    jr jr_0fd_4557

jr_0fd_4557:
    jr jr_0fd_4559

jr_0fd_4559:
    adc b
    rst $38
    sbc b
    rst $38
    ld d, $00
    inc d
    nop
    adc b
    rst $38
    ret nz

    rst $38
    ld d, $00
    inc d
    nop
    adc b
    rst $38
    add sp, -$01
    ld d, $00
    inc d
    nop
    adc b
    rst $38
    inc d
    nop
    ld d, $00
    inc d
    nop
    or h
    rst $38
    ldh a, [rIE]
    ld d, $00
    inc d
    nop
    ld h, d
    nop
    sbc b
    rst $38
    ld d, $00
    inc d
    nop
    ld h, d
    nop
    ret nz

    rst $38
    ld d, $00
    inc d
    nop
    ld h, d
    nop
    add sp, -$01
    ld d, $00
    inc d
    nop
    ld h, d
    nop
    inc d
    nop
    ld d, $00
    inc d
    nop
    ld [hl], $00
    ldh a, [rIE]
    ld d, $00
    inc d
    nop
    add hl, bc
    adc b
    rst $38
    ret nc

    rst $38
    inc c
    nop
    inc c
    nop
    adc b
    rst $38
    inc h
    nop
    inc c
    nop
    inc c
    nop
    sbc d
    rst $38
    sbc $ff
    inc c
    nop
    ld c, $00
    sbc d
    rst $38
    ld d, $00
    inc c
    nop
    ld c, $00
    ld h, h
    nop
    ldh [rIE], a
    inc c
    nop
    ld c, $00
    ld h, h
    nop
    inc d
    nop
    inc c
    nop
    ld c, $00
    ld l, h
    nop
    ret nc

    rst $38
    inc c
    nop
    inc c
    nop
    ld l, h
    nop
    inc h
    nop
    inc c
    nop
    inc c
    nop
    jr jr_0fd_45ec

jr_0fd_45ec:
    ret nc

    rst $38
    inc d
    nop
    inc c
    nop
    inc b
    ldh [rIE], a
    ldh [rIE], a
    jr jr_0fd_45f9

jr_0fd_45f9:
    stop
    or $ff
    ldh [rIE], a
    ld a, [hl+]
    nop
    inc d
    nop
    inc d
    nop
    or $ff
    inc c
    nop
    ld h, $00
    ld [$2000], sp
    nop
    jr jr_0fd_4611

jr_0fd_4611:
    stop
    dec b
    jp c, $80ff

    rst $38
    sbc [hl]
    nop
    ld e, $00
    sbc [hl]
    rst $38
    xor d
    rst $38
    call nz, Call_0fd_5c00
    nop
    sbc [hl]
    rst $38
    ld [de], a
    nop
    call nz, Call_0fd_7400
    nop
    ld e, h
    nop
    jp c, Jump_000_1eff

    nop
    xor h
    nop
    adc $ff
    ld a, [$acff]
    nop
    inc h
    nop
    ld [$002a], sp
    cp b
    rst $38
    ld [hl], $00
    sub b
    nop
    ret nc

    rst $38
    ld b, [hl]
    nop
    ld [hl], $00
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    stop
    inc c
    nop
    jr jr_0fd_4657

jr_0fd_4657:
    ld b, [hl]
    nop
    jr jr_0fd_465b

jr_0fd_465b:
    inc c
    nop
    inc l
    nop
    ld b, [hl]
    nop
    ld [$5000], sp
    nop
    jr nc, jr_0fd_4667

jr_0fd_4667:
    ld b, [hl]
    nop
    stop
    jr z, jr_0fd_466d

jr_0fd_466d:
    ld d, b
    nop
    ld b, [hl]
    nop
    stop
    jr z, jr_0fd_4675

jr_0fd_4675:
    ld a, [c]
    rst $38
    db $f4
    rst $38
    inc e
    nop
    ld [de], a
    nop
    inc bc
    ld h, b
    nop
    inc d
    nop
    stop
    jr z, jr_0fd_4686

jr_0fd_4686:
    ld h, b
    nop
    inc l
    nop
    ld a, [hl+]
    nop
    stop
    add b
    rst $38
    ld [$e800], sp
    nop
    inc [hl]
    nop
    inc bc
    ld a, [$f0ff]
    rst $38
    ld a, [de]
    nop
    inc l
    nop
    ld [$dcff], a
    rst $38
    ld [hl], $00
    stop
    and b
    rst $38
    inc b
    nop
    ld e, $00
    inc l
    nop
    ld a, [bc]
    cp d
    rst $38
    add sp, -$01
    inc c
    nop
    jr jr_0fd_46b8

jr_0fd_46b8:
    cp d
    rst $38
    ld [$0c00], sp
    nop
    jr jr_0fd_46c0

jr_0fd_46c0:
    ret nz

    rst $38
    sbc b
    rst $38
    inc c
    nop
    ld h, $00
    ret nc

    rst $38
    cp b
    rst $38
    inc c
    nop
    ld c, $00
    jp z, $c4ff

    rst $38
    ld b, b
    nop
    inc a
    nop
    jp c, $98ff

    rst $38
    ld b, h
    nop
    ld l, $00
    inc d
    nop
    sbc b
    rst $38
    ld [hl-], a
    nop
    ld e, $00
    jp z, Jump_000_2aff

    nop
    halt
    ld d, $00
    ld [hl], b
    rst $38
    sbc b
    rst $38
    ld d, [hl]
    nop
    ld e, [hl]
    nop
    ld [hl], b
    rst $38
    ld [de], a
    nop
    ld d, [hl]
    nop
    ld l, $00

Jump_0fd_4700:
    inc b
    ld a, [$c2ff]
    rst $38
    adc h
    nop
    ld a, h
    nop
    ld c, d
    nop
    ld [hl-], a
    nop
    inc a
    nop
    ld c, h
    nop
    ldh [rIE], a
    ld e, b
    nop
    ld c, b
    nop
    jr nz, jr_0fd_4719

jr_0fd_4719:
    jp c, $eeff

    rst $38
    inc e
    nop
    inc e
    nop
    ld [bc], a
    ldh [rIE], a
    inc d
    nop
    inc h
    nop
    inc c
    nop
    db $fc
    rst $38
    ldh [rIE], a
    inc h
    nop
    ld [$0500], sp
    xor h
    rst $38
    and h
    rst $38
    ld a, $00
    ld b, [hl]
    nop
    ld c, $00
    and h
    rst $38
    inc a
    nop
    ld l, $00
    cp $ff
    ld b, [hl]
    nop
    ld c, h
    nop
    ld h, h
    nop
    and $ff
    sbc $ff
    ld c, h
    nop
    ld e, h
    nop
    xor h
    rst $38
    sbc $ff
    ld b, [hl]
    nop
    sbc h
    nop
    ld bc, $ffb8
    inc c
    nop
    add [hl]
    nop
    ld b, b
    nop
    inc bc
    or [hl]
    rst $38
    jr nz, jr_0fd_4769

jr_0fd_4769:
    ld b, h
    nop
    jr jr_0fd_476d

jr_0fd_476d:
    jr jr_0fd_476f

jr_0fd_476f:
    jr nz, jr_0fd_4771

jr_0fd_4771:
    jr nz, jr_0fd_4773

jr_0fd_4773:
    jr jr_0fd_4775

jr_0fd_4775:
    or b
    rst $38
    sbc h
    rst $38
    ld a, [hl]
    nop
    sub d
    nop
    ld [bc], a
    ld a, [de]
    nop
    ret nc

    rst $38
    ld [hl], b
    nop
    ld b, [hl]
    nop
    sbc $ff
    ret nc

    rst $38
    ld [hl+], a
    nop
    ld d, h
    nop
    inc b
    jr z, jr_0fd_4791

jr_0fd_4791:
    ldh [rIE], a
    ld a, [de]
    nop
    ld c, $00
    or $ff
    ld [$14ff], a
    nop
    ld [hl], $00
    ret nz

    rst $38
    ld [$10ff], a
    nop
    inc l
    nop
    ret nz

    rst $38
    inc d
    nop
    ld b, b
    nop
    inc c
    nop
    ld [bc], a
    jp nc, $f2ff

    rst $38
    ld e, h
    nop
    ld b, [hl]
    nop
    jp nc, Jump_000_1aff

    nop
    ld [hl], h
    nop
    ld b, [hl]
    nop
    ld b, $ca
    rst $38
    and b
    rst $38
    ld d, [hl]
    nop
    halt
    jp z, Jump_000_22ff

    nop
    inc e
    nop
    ld b, [hl]
    nop
    ldh a, [rIE]
    stop
    jr nz, jr_0fd_47d7

jr_0fd_47d7:
    stop
    db $f4
    rst $38
    jr nc, jr_0fd_47dd

jr_0fd_47dd:
    jr jr_0fd_47df

jr_0fd_47df:
    inc d
    nop
    ret nz

    rst $38
    ld d, b
    nop
    stop
    jr nz, jr_0fd_47e9

jr_0fd_47e9:
    ld c, $00
    ld e, $00
    ld [de], a
    nop
    ld h, $00
    dec b
    ld c, $00
    dec bc
    nop
    ld [de], a
    nop
    jr jr_0fd_47fa

jr_0fd_47fa:
    ld b, $00
    jr jr_0fd_47fe

jr_0fd_47fe:
    ld a, [hl+]
    nop
    inc c
    nop
    ld [$20ff], a
    nop
    ld b, [hl]
    nop
    stop
    ret nc

    rst $38
    db $ec
    rst $38
    jr jr_0fd_4810

jr_0fd_4810:
    inc c
    nop
    and $ff
    db $ec
    rst $38
    ld c, d
    nop
    inc d
    nop
    ld [bc], a
    ld a, [c]
    rst $38
    ret nz

    rst $38
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    inc d
    nop
    jr z, jr_0fd_4827

jr_0fd_4827:
    ld c, h
    nop
    inc d
    nop
    ld bc, $fff2
    sbc d
    rst $38
    jr z, jr_0fd_4832

jr_0fd_4832:
    ret z

    nop
    nop
    ld bc, $ffe0
    ld [bc], a
    nop
    jr z, jr_0fd_483c

jr_0fd_483c:
    ld c, $00
    inc bc
    ldh [rIE], a
    ldh [rIE], a
    ld c, $00
    ld a, [bc]
    nop
    ld [de], a
    nop
    ldh [rIE], a
    ld c, $00
    stop
    ldh [rIE], a
    inc c
    nop
    ld a, [bc]
    nop
    inc d
    nop
    ld [bc], a
    ret nc

    rst $38
    jp c, $0aff

    nop
    inc [hl]
    nop
    ld a, [de]
    nop
    ld [c], a
    rst $38
    ld d, $00
    ld h, $00
    dec b
    ldh a, [rIE]
    ret c

    rst $38
    jr nz, jr_0fd_486f

jr_0fd_486f:
    inc c
    nop
    inc e
    nop
    ret c

    rst $38
    inc c
    nop
    inc c
    nop
    ret c

    rst $38
    inc e
    nop
    inc c
    nop
    inc c
    nop
    db $fd
    rst $38
    ldh a, [rIE]
    inc d
    nop
    jr nz, jr_0fd_4889

jr_0fd_4889:
    db $e4
    rst $38
    ldh a, [rIE]
    dec d
    nop
    jr nz, jr_0fd_4891

jr_0fd_4891:
    nop
    ld [bc], a
    adc b
    rst $38
    call nz, Call_0fd_6aff
    nop
    ld d, [hl]
    nop
    ld b, $00
    sbc $ff
    ld l, d
    nop
    inc a
    nop
    inc bc
    ld [hl], b
    rst $38
    call nz, $b2ff
    nop
    ld d, [hl]
    nop
    ld [hl], $00
    sbc $ff
    add b
    nop
    inc a
    nop
    ld h, [hl]
    nop
    call nz, Call_000_20ff
    nop
    inc h
    nop
    ld bc, $ff88
    jp c, $f0ff

    nop
    ld c, h
    nop
    ld [bc], a
    sub b
    rst $38
    add b
    rst $38
    add sp, $00
    add d
    nop
    or b
    rst $38
    inc d
    nop
    and b
    nop
    ld c, b
    nop
    inc bc
    ret nz

    rst $38
    ret nz

    rst $38
    ld l, [hl]
    nop
    ld b, [hl]
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, [hl]
    nop
    ld l, [hl]
    nop
    stop
    inc d
    nop
    jr jr_0fd_48ed

jr_0fd_48ed:
    jr jr_0fd_48ef

jr_0fd_48ef:
    ld bc, $fff4
    ldh [rIE], a
    jr nz, jr_0fd_48f6

jr_0fd_48f6:
    stop
    inc b
    and b
    rst $38
    cp $ff
    ld c, [hl]
    nop
    jr nz, jr_0fd_4901

jr_0fd_4901:
    ld a, [$caff]
    rst $38
    ld a, $00
    ld c, b
    nop
    and b
    rst $38
    ld e, b
    rst $38
    ld a, [hl]
    nop
    sbc d
    nop
    jr jr_0fd_4913

jr_0fd_4913:
    ld e, b
    rst $38
    ld e, $00
    ld h, h
    nop
    nop
    ld b, $e8
    rst $38
    db $ec
    rst $38
    jr z, jr_0fd_4921

jr_0fd_4921:
    ld e, $00
    ld e, $00
    ret c

    rst $38
    ld [de], a
    nop
    ld c, $00
    ret nc

    rst $38
    ld [hl+], a
    nop
    stop
    jr z, jr_0fd_4933

jr_0fd_4933:
    ret nc

    rst $38
    ld [hl+], a
    nop
    ld l, $00
    inc c
    nop
    inc b
    nop
    ld [hl+], a
    nop
    inc c
    nop
    inc c
    nop
    ld a, [bc]
    nop
    ld [hl+], a
    nop
    jr z, jr_0fd_4949

jr_0fd_4949:
    jr z, jr_0fd_494b

jr_0fd_494b:
    ld bc, $ffc0
    add sp, -$01
    ld c, $00
    jr nc, jr_0fd_4954

jr_0fd_4954:
    inc bc
    jp nc, $92ff

    rst $38
    ld b, [hl]
    nop
    call z, Call_0fd_6600
    rst $38
    ld [hl+], a
    nop
    ld h, b
    nop
    ld e, [hl]
    nop
    ld h, [hl]
    rst $38
    add b
    rst $38
    ld h, b
    nop
    sub [hl]
    nop
    inc bc
    add b
    rst $38
    jp nc, Jump_0fd_6eff

    nop
    nop
    ld bc, $ff80
    ld d, d
    nop
    adc [hl]
    nop
    add b
    nop
    ld a, [$c0ff]
    rst $38
    add b
    nop
    adc b
    nop
    ld [bc], a
    ld [c], a
    rst $38
    ret c

    rst $38
    ld c, d
    nop
    ld l, $00
    ld [$1a00], sp
    nop
    jr nz, jr_0fd_4995

jr_0fd_4995:
    ld c, $00
    ld bc, $ffa0
    cp d
    rst $38
    and [hl]
    nop
    adc h
    nop
    dec b
    add sp, -$01
    call z, Call_000_18ff
    nop
    jr nz, jr_0fd_49a9

jr_0fd_49a9:
    ret nc

    rst $38
    ret nz

    rst $38
    ld b, d
    nop
    stop
    ret nc

    rst $38
    ret nz

    rst $38
    stop
    ld c, h
    nop
    inc c
    nop
    ld l, $00
    ld b, b
    nop
    inc d
    nop
    inc c
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    jr jr_0fd_49c9

jr_0fd_49c9:
    ld bc, $0012
    call c, Call_000_1aff
    nop
    inc e
    nop
    ld bc, $fff7
    and $ff
    ld [de], a
    nop
    ld a, [de]
    nop
    inc b
    ret c

    rst $38
    xor b
    rst $38
    inc d
    nop
    inc e
    nop
    ld [$a800], sp
    rst $38
    jr z, jr_0fd_49ea

jr_0fd_49ea:
    stop
    ret c

    rst $38
    db $ec
    rst $38
    stop
    inc l
    nop
    stop
    or d
    rst $38
    jr nz, jr_0fd_49fa

jr_0fd_49fa:
    jr nz, jr_0fd_49fc

jr_0fd_49fc:
    ld a, [bc]
    ret z

    rst $38
    sub b
    rst $38
    ld e, $00
    ld e, [hl]
    nop
    ret z

    rst $38
    ld [hl+], a
    nop
    ld e, $00
    ld e, $00
    stop
    or h
    rst $38
    jr jr_0fd_4a13

jr_0fd_4a13:
    inc l
    nop
    ld c, $00
    ld l, $00
    jr jr_0fd_4a1b

jr_0fd_4a1b:
    jr jr_0fd_4a1d

jr_0fd_4a1d:
    ld a, [$f4ff]
    rst $38
    jr jr_0fd_4a23

jr_0fd_4a23:
    jr jr_0fd_4a25

jr_0fd_4a25:
    ld [de], a
    nop
    sub b
    rst $38
    stop
    inc d
    nop
    db $f4
    rst $38
    inc b
    nop
    stop
    stop
    sub $ff
    inc b
    nop
    stop
    stop
    ld a, [c]
    rst $38
    sbc h
    rst $38
    inc d
    nop
    inc [hl]
    nop
    ldh [rIE], a
    cp b
    rst $38
    ld h, $00
    jr jr_0fd_4a4d

jr_0fd_4a4d:
    ld [bc], a
    and b
    rst $38
    ret nc

    rst $38
    ld h, [hl]
    nop
    inc h
    nop
    and b
    rst $38
    ei
    rst $38
    ld h, [hl]
    nop
    ld [hl], $00
    nop
    inc b
    ret nz

    rst $38
    ldh [rIE], a
    inc e
    nop
    ld d, $00
    call nc, $e0ff
    rst $38
    jr jr_0fd_4a6e

jr_0fd_4a6e:
    stop
    sbc $ff
    stop
    inc h
    nop
    stop
    ld a, [$f2ff]
    rst $38
    ld b, [hl]
    nop
    ld [hl], $00
    inc b
    ld a, [c]
    rst $38
    ret c

    rst $38
    inc e
    nop
    ld [$dc00], sp
    rst $38
    ret c

    rst $38
    inc c
    nop
    jr z, jr_0fd_4a91

jr_0fd_4a91:
    pop af
    rst $38
    db $ec
    rst $38
    inc d
    nop
    inc d
    nop
    cp $ff
    ld a, [$14ff]
    nop
    inc d
    nop
    ld [$ffe0], sp
    xor b
    rst $38
    ld e, $00
    ld l, $00
    ldh [rIE], a
    jr nz, jr_0fd_4aae

jr_0fd_4aae:
    inc d
    nop
    stop
    ld [$a800], sp
    rst $38
    ld l, h
    nop
    inc c
    nop
    ld a, [de]
    nop
    jp nz, Jump_000_1cff

    nop
    ld e, h
    nop
    ld b, d
    nop
    jp nz, Jump_000_28ff

    nop
    inc e
    nop
    ld b, d
    nop
    ld [bc], a
    nop
    jr z, jr_0fd_4ad0

jr_0fd_4ad0:
    inc e
    nop
    ld d, h
    nop
    jp nz, Jump_000_28ff

    nop
    ld e, h
    nop
    ld c, d
    nop
    db $ec
    rst $38
    stop
    ld [de], a
    nop
    inc b
    ld a, [bc]
    nop
    call c, Call_000_1cff
    nop
    jr nc, jr_0fd_4aeb

jr_0fd_4aeb:
    ld a, [bc]
    nop
    ld [de], a
    nop
    inc e
    nop
    stop
    ld a, [de]
    nop
    call nz, Call_000_28ff
    nop
    ld [de], a
    nop
    ld l, $00
    or b
    rst $38
    jr nz, jr_0fd_4b01

jr_0fd_4b01:
    jr nz, jr_0fd_4b03

jr_0fd_4b03:
    ld bc, $fff0
    ldh [rIE], a
    jr nz, jr_0fd_4b0a

jr_0fd_4b0a:
    stop
    ld [bc], a
    db $f4
    rst $38
    db $f4
    rst $38
    jr jr_0fd_4b13

jr_0fd_4b13:
    jr jr_0fd_4b15

jr_0fd_4b15:
    ld b, $00
    jr jr_0fd_4b19

jr_0fd_4b19:
    ld [hl+], a
    nop
    stop
    dec b
    ret nz

    rst $38
    sub d
    rst $38
    ld l, $00
    sub $00
    ld a, [$80ff]
    rst $38
    add b
    nop
    ld [hl], $00
    add sp, -$01
    call nz, Call_0fd_66ff
    nop
    ld [$fa00], sp
    rst $38
    call nz, Call_0fd_54ff
    nop
    jr nz, jr_0fd_4b3e

jr_0fd_4b3e:
    ld a, [$f2ff]
    rst $38
    add b
    nop
    add b
    nop
    dec b
    add b
    rst $38
    ld [hl], b
    rst $38
    add [hl]
    nop
    ld d, [hl]
    nop
    add b
    rst $38
    cp d
    rst $38
    or h
    nop
    ld [hl], h
    nop
    ld h, h
    nop
    cp d
    rst $38
    inc e
    nop
    ld [hl], h
    nop
    inc de
    nop
    add h
    rst $38
    ld e, [hl]
    nop
    ld [hl+], a
    nop
    add b
    rst $38
    ld c, d
    nop
    sub $00
    ld d, [hl]
    nop
    rlca
    sbc b
    rst $38
    ld a, b
    rst $38
    ld l, [hl]
    nop
    ld l, $00
    sbc b
    rst $38
    ld a, [hl-]
    nop
    adc $00
    ld b, [hl]
    nop
    cp d
    rst $38
    jp nz, $4cff

    nop
    add b
    nop
    sbc b
    rst $38
    ld [de], a
    nop
    ld l, $00
    ld b, b
    nop
    ld [hl+], a
    nop
    sbc d
    rst $38
    ld b, h
    nop
    inc a
    nop
    ld a, [de]
    nop
    sub $ff
    ld c, h
    nop
    ld d, b
    nop
    ld a, [$c2ff]
    rst $38
    inc [hl]
    nop
    inc h
    nop
    inc b
    cp [hl]
    rst $38
    and b
    rst $38
    inc a
    nop
    ld [hl], $00
    ld b, $00
    and b
    rst $38
    inc a
    nop
    ld [hl], $00
    and b
    rst $38
    ld a, [$36ff]
    nop
    ld h, [hl]
    nop
    ld a, [hl+]
    nop
    ld a, [$36ff]
    nop
    ld h, [hl]
    nop
    ld bc, $ff80
    ld b, b
    nop
    jr c, jr_0fd_4bd0

jr_0fd_4bd0:
    ld b, b
    nop
    inc bc
    adc b
    rst $38
    ld a, [de]
    nop
    adc $00
    and b
    nop
    xor d
    rst $38
    add b
    rst $38
    or $00
    ld a, [hl]
    nop
    ld [hl], d
    nop
    add b
    rst $38
    jr z, jr_0fd_4be9

jr_0fd_4be9:
    or $00
    nop
    inc bc
    ld [$a0ff], a
    rst $38
    inc h
    nop
    sub [hl]
    nop
    ld [$a0ff], a
    rst $38
    add b
    nop
    ld b, [hl]
    nop
    ld [$28ff], a
    nop
    ld d, d
    nop
    ld c, $00
    inc b
    add b
    rst $38
    ret nz

    rst $38
    adc [hl]
    nop
    jr jr_0fd_4c0e

jr_0fd_4c0e:
    ld a, [hl+]
    nop
    ret nz

    rst $38
    ld b, b
    nop
    ld a, [de]
    nop
    sub d
    rst $38
    ld a, [$acff]
    nop
    ld b, [hl]
    nop
    add b
    rst $38
    ld [bc], a
    nop
    jr nz, jr_0fd_4c24

jr_0fd_4c24:
    ld a, $00
    ld [$ff80], sp
    call nz, Call_0fd_66ff
    nop
    cp h
    nop
    jp c, Jump_000_02ff

    nop
    inc [hl]
    nop
    ld a, h
    nop
    ld [bc], a
    nop
    call nz, Call_000_3cff
    nop
    ld a, h
    nop
    ld [bc], a
    nop
    call nz, $4cff
    nop
    inc [hl]
    nop
    ld e, d
    nop
    call nz, $30ff
    nop
    inc [hl]
    nop
    ld h, [hl]
    nop
    ld [$20ff], a
    nop
    ld b, b
    nop
    ld c, h
    nop
    ld e, $00
    ld c, b
    nop
    ret z

    nop
    jr z, jr_0fd_4c61

jr_0fd_4c61:
    ld [$16ff], a
    nop
    ret z

    nop
    ld bc, $ffda
    jp nz, $4cff

    nop
    ret z

    nop
    ld [bc], a
    ldh [rIE], a
    ldh [rIE], a
    jr jr_0fd_4c77

jr_0fd_4c77:
    ld a, [bc]
    nop
    ld a, [c]
    rst $38
    db $ec
    rst $38
    inc e
    nop
    jr z, jr_0fd_4c81

jr_0fd_4c81:
    inc bc
    xor b
    rst $38
    ld [c], a
    rst $38
    ld a, $00
    ret nz

    nop
    ld [bc], a
    nop
    xor b
    rst $38
    ret nz

    nop
    ld e, $00
    ld [bc], a
    nop
    ld [c], a
    rst $38
    ld a, h
    nop
    ld a, h
    nop
    nop
    inc bc
    ret c

    rst $38
    add b
    rst $38
    ld l, $00
    ld [hl], d
    nop
    ret c

    rst $38
    ld c, $00
    ld l, $00
    ld [hl], d
    nop
    ld [hl+], a
    nop
    and d
    rst $38
    stop
    rst $38
    nop
    ld [$ff88], sp
    add b
    rst $38
    ld e, $00
    or [hl]
    nop
    cp [hl]
    rst $38
    sbc [hl]
    rst $38
    inc [hl]
    nop
    inc [hl]
    nop
    and b
    rst $38
    ld [$4eff], a
    nop
    ld c, h
    nop
    ld a, [bc]
    nop
    add b
    rst $38
    inc h
    nop
    jr c, jr_0fd_4cd5

jr_0fd_4cd5:
    ld a, [bc]
    nop
    call z, Call_000_24ff
    nop
    and b
    nop
    ld [hl+], a
    nop
    add b
    rst $38
    ld c, h
    nop
    jr z, jr_0fd_4ce5

jr_0fd_4ce5:
    ld [hl+], a
    nop
    ret c

    rst $38
    ld c, h
    nop
    jr z, jr_0fd_4ced

jr_0fd_4ced:
    ld e, d
    nop
    sbc h
    rst $38
    jr nz, jr_0fd_4cf3

jr_0fd_4cf3:
    ld d, b
    nop
    nop
    nop
    dec b
    sbc d
    rst $38
    add b
    rst $38
    ldh a, [rP1]
    ld l, $00
    ld a, [de]
    nop
    jp nz, Jump_0fd_40ff

    nop
    ld e, h
    nop
    sbc d
    rst $38
    jp nz, Jump_0fd_6cff

    nop
    ld e, h
    nop
    add b
    rst $38
    jp nc, Jump_000_26ff

    nop
    ld e, h
    nop
    add b
    rst $38
    add b
    rst $38
    ld c, $00
    inc e
    nop
    dec b
    adc $ff
    ld a, [$58ff]
    nop
    ld d, [hl]
    nop
    adc $ff
    ret z

    rst $38
    jr jr_0fd_4d2f

jr_0fd_4d2f:
    stop
    adc $ff
    ret z

    rst $38
    inc d
    nop
    jr c, jr_0fd_4d39

jr_0fd_4d39:
    jr z, jr_0fd_4d3b

jr_0fd_4d3b:
    db $ec
    rst $38
    jr nz, jr_0fd_4d3f

jr_0fd_4d3f:
    stop
    ld [$c800], sp
    rst $38
    ld b, b
    nop
    inc e
    nop
    inc b
    ldh [rIE], a
    ldh [rIE], a
    jr nz, jr_0fd_4d50

jr_0fd_4d50:
    jr jr_0fd_4d52

jr_0fd_4d52:
    ld a, [bc]
    nop
    ldh [rIE], a
    ld d, $00
    ld [de], a
    nop
    ld d, $00
    db $f4
    rst $38
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld c, $00
    inc d
    nop
    ld [de], a
    nop
    inc c
    nop
    inc b
    db $e4
    rst $38
    ret nc

    rst $38
    inc h
    nop
    ld d, $00
    ld a, [bc]
    nop
    ret nc

    rst $38
    jr nc, jr_0fd_4d79

jr_0fd_4d79:
    inc l
    nop
    inc e
    nop
    ld hl, sp-$01
    inc d
    nop
    jr c, jr_0fd_4d83

jr_0fd_4d83:
    call c, Call_000_20ff
    nop
    ld [hl-], a
    nop
    jr jr_0fd_4d8b

jr_0fd_4d8b:
    ld bc, $ffa2
    cp d
    rst $38
    add h
    nop
    adc h
    nop
    inc b
    sbc [hl]
    rst $38
    ld a, b
    rst $38
    nop
    ld bc, $004a
    add b
    rst $38
    jp c, $e2ff

    nop
    xor b
    nop
    add b
    rst $38
    halt
    adc b
    nop
    ld b, b
    nop
    ld e, [hl]
    nop
    inc c
    nop
    ld d, $00
    ld c, h
    nop
    inc bc
    ldh [rIE], a
    ret nc

    rst $38
    ld [$4000], sp
    nop
    ld a, [bc]
    nop
    ret nc

    rst $38
    ld d, $00
    ld [hl], $00
    inc d
    nop
    jr jr_0fd_4dca

jr_0fd_4dca:
    inc c
    nop
    jr jr_0fd_4dce

jr_0fd_4dce:
    dec b
    add b
    rst $38
    add b
    rst $38
    ld c, [hl]
    nop
    ld d, $00
    add b
    rst $38
    ld a, [hl+]
    nop
    ld d, $00
    ld e, h
    nop
    ld a, [de]
    nop
    jp z, $30ff

    nop
    ld e, h
    nop
    add b
    rst $38
    cp $ff
    ld c, [hl]
    nop
    jr c, jr_0fd_4def

jr_0fd_4def:
    cp d
    rst $38
    jp z, Jump_000_14ff

    nop
    ld b, b
    nop
    inc b
    and b
    rst $38
    ld h, b
    rst $38
    and [hl]
    nop
    adc h
    nop
    and b
    rst $38
    ld [c], a
    rst $38
    and [hl]
    nop
    add d
    nop
    ld b, [hl]
    nop
    ld h, b
    rst $38
    ld e, $00
    ld b, h
    nop
    ld e, d
    nop
    cp b
    rst $38
    jr z, jr_0fd_4e16

jr_0fd_4e16:
    ret z

    nop
    inc b
    ret nc

    rst $38
    ret z

    rst $38
    inc e
    nop
    ld a, [hl+]
    nop
    jr z, jr_0fd_4e23

jr_0fd_4e23:
    ld [$20ff], a
    nop
    stop
    ld [$c800], sp
    rst $38
    ld b, b
    nop
    inc e
    nop
    adc $ff
    ld a, [$58ff]
    nop
    ld d, [hl]
    nop
    inc bc
    ldh [rIE], a
    ldh [rIE], a
    jr nz, jr_0fd_4e40

jr_0fd_4e40:
    jr jr_0fd_4e42

jr_0fd_4e42:
    ld a, [bc]
    nop
    ldh [rIE], a
    ld d, $00
    ld [de], a
    nop
    stop
    inc c
    nop
    stop
    inc d
    nop
    inc bc
    add b
    rst $38
    or b
    rst $38
    ld [hl], $00
    sbc [hl]
    nop
    or b
    rst $38
    or b
    rst $38
    ld c, [hl]
    nop
    ld l, [hl]
    nop
    ld [de], a
    nop
    or b
    rst $38
    add b
    nop
    xor [hl]
    nop
    inc bc
    inc d
    nop
    add sp, -$01
    inc d
    nop
    jr nc, jr_0fd_4e74

jr_0fd_4e74:
    ret c

    rst $38
    inc c
    nop
    inc l
    nop
    inc c
    nop
    add sp, -$01
    add sp, -$01
    dec e
    nop
    stop
    inc b
    ret nc

    rst $38
    ret z

    rst $38
    jr jr_0fd_4e8b

jr_0fd_4e8b:
    ld a, [hl+]
    nop
    adc $ff
    ld a, [$58ff]
    nop
    ld d, [hl]
    nop
    inc l
    nop
    ld [$20ff], a
    nop
    stop
    ldh [rIE], a
    db $e4
    rst $38
    ld b, b
    nop
    inc e
    nop
    inc bc
    ldh [rIE], a
    ldh [rIE], a
    jr nz, jr_0fd_4eac

jr_0fd_4eac:
    jr nz, jr_0fd_4eae

jr_0fd_4eae:
    ld a, [bc]
    nop
    ldh [rIE], a
    ld d, $00
    ld [de], a
    nop
    stop
    inc c
    nop
    stop
    inc d
    nop
    ld bc, $ffe4
    ld c, d
    nop
    jr c, jr_0fd_4ec5

jr_0fd_4ec5:
    ld d, $00
    ld [bc], a
    ret c

    rst $38
    add sp, -$01
    ld d, b
    nop
    stop
    ret c

    rst $38
    ld b, $00
    jr nc, jr_0fd_4ed6

jr_0fd_4ed6:
    inc d
    nop
    ld [bc], a
    ld [hl-], a
    nop
    ret c

    rst $38
    ld c, $00
    stop
    ret nc

    rst $38
    db $e4
    rst $38
    ld d, h
    nop
    ld e, $00
    inc b
    add b
    rst $38
    and d
    rst $38
    ld l, $00
    nop
    ld bc, $ffa2
    ld a, [c]
    rst $38
    ld e, h
    nop
    nop
    ld bc, $ffca
    add b
    rst $38
    nop
    ld bc, $0056
    ld a, [de]
    nop
    add b
    rst $38
    nop
    ld bc, $00de
    ld [bc], a
    ret nz

    rst $38
    ld a, [hl+]
    nop
    ld e, [hl]
    nop
    ld l, $00
    ret nz

    rst $38
    ld [hl+], a
    nop
    inc h
    nop
    ld c, $00
    ld bc, $000e
    db $f4
    rst $38
    jr jr_0fd_4f22

jr_0fd_4f22:
    inc h
    nop
    inc bc
    add b
    rst $38
    jp z, Jump_0fd_66ff

    nop
    nop
    ld bc, $0016
    cp b
    rst $38
    ld l, d
    nop
    ld h, b
    nop
    ld hl, sp-$01
    adc $ff
    ld l, b
    nop
    ld c, d
    nop
    inc b
    xor $ff
    sub $ff
    inc h
    nop
    ld d, h
    nop
    ret nc

    rst $38
    db $f4
    rst $38
    inc c
    nop
    jr jr_0fd_4f4e

jr_0fd_4f4e:
    inc h
    nop
    ret nz

    rst $38
    inc c
    nop
    ld h, $00
    inc h
    nop
    jr jr_0fd_4f5a

jr_0fd_4f5a:
    inc c
    nop
    jr jr_0fd_4f5e

jr_0fd_4f5e:
    inc bc
    xor b
    rst $38
    add b
    rst $38
    or [hl]
    nop
    ld e, $00
    or d
    rst $38
    cp d
    rst $38
    ld d, h
    nop
    ld [hl], h
    nop
    ld a, [$baff]
    rst $38
    ld h, h
    nop
    and h
    nop
    inc bc
    jp nz, $e0ff

    rst $38
    jr jr_0fd_4f7e

jr_0fd_4f7e:
    jr jr_0fd_4f80

jr_0fd_4f80:
    ld hl, sp-$01
    ret c

    rst $38
    ld c, b
    nop
    ld c, $00
    db $e4
    rst $38
    ldh a, [rIE]
    inc a
    nop
    jr nz, jr_0fd_4f90

jr_0fd_4f90:
    ld b, $80
    rst $38
    xor b
    rst $38
    adc [hl]
    nop
    ld d, $00
    add b
    rst $38
    ld hl, sp-$01
    ld d, [hl]
    nop
    jr z, jr_0fd_4fa1

jr_0fd_4fa1:
    add b
    rst $38
    cp b
    rst $38
    ld l, b
    nop
    jr z, jr_0fd_4fa9

jr_0fd_4fa9:
    add b
    rst $38
    db $ec
    rst $38
    jr jr_0fd_4faf

jr_0fd_4faf:
    jr jr_0fd_4fb1

jr_0fd_4fb1:
    db $f4
    rst $38
    sub $ff
    inc c
    nop
    jr jr_0fd_4fb9

jr_0fd_4fb9:
    ld a, [$a8ff]
    rst $38
    inc d
    nop
    ld a, b
    nop
    nop
    inc bc
    xor $ff
    ld a, [$18ff]
    nop
    ld h, $00
    nop
    nop
    ret z

    rst $38
    jr c, jr_0fd_4fd1

jr_0fd_4fd1:
    stop
    ld d, $00
    stop
    jr z, jr_0fd_4fd9

jr_0fd_4fd9:
    jr jr_0fd_4fdb

jr_0fd_4fdb:
    inc bc
    call nc, Call_000_26ff
    nop
    jr z, jr_0fd_4fe2

jr_0fd_4fe2:
    ld [de], a
    nop
    ld e, $00
    ld [c], a
    rst $38
    rrca
    nop
    ld [de], a
    nop
    inc e
    nop
    ld a, [$11ff]
    nop
    inc d
    nop
    ld bc, $ffe2
    ld [c], a
    rst $38
    nop
    ld bc, $0100
    inc bc
    ld h, b
    rst $38
    add b
    rst $38
    sub [hl]
    nop
    ld l, b
    nop
    ld a, [bc]
    nop
    add b
    rst $38
    sub [hl]
    nop
    ld l, b
    nop
    ld h, b
    rst $38
    ld [bc], a
    nop
    nop
    ld bc, $0020
    nop
    dec b
    ret c

    rst $38
    ret nc

    rst $38
    ld a, [de]
    nop
    ld a, [de]
    nop
    ret c

    rst $38
    add sp, -$01
    inc d
    nop
    jr z, jr_0fd_5028

jr_0fd_5028:
    ret c

    rst $38
    ld c, $00
    stop
    jr nz, jr_0fd_5030

jr_0fd_5030:
    ret c

    rst $38
    ld e, $00
    inc [hl]
    nop
    jr jr_0fd_5038

jr_0fd_5038:
    nop
    nop
    ld [hl+], a
    nop
    inc [hl]
    nop
    jr jr_0fd_5040

jr_0fd_5040:
    dec b
    sub b
    rst $38
    cp [hl]
    rst $38
    ld [hl+], a
    nop
    sbc h
    nop
    sub b
    rst $38
    nop
    nop
    stop
    add b
    nop
    jp nz, $beff

    rst $38
    ld h, b
    nop
    ldh a, [rP1]
    ld [hl-], a
    nop
    ld a, $00
    ld h, b
    nop
    ld h, b
    nop
    ld [hl-], a
    nop
    cp [hl]
    rst $38
    jr z, jr_0fd_5067

jr_0fd_5067:
    ld l, b
    nop
    rlca
    add b
    rst $38
    or b
    rst $38
    and $00
    ld c, d
    nop
    add b
    rst $38
    or b
    rst $38
    ld b, [hl]
    nop
    add [hl]
    nop
    jp c, Jump_000_06ff

    nop
    adc h
    nop
    jr nc, jr_0fd_5082

jr_0fd_5082:
    add b
    rst $38
    ld c, d
    nop
    ret nz

    nop
    jr nc, jr_0fd_508a

jr_0fd_508a:
    jr c, jr_0fd_508c

jr_0fd_508c:
    jr nc, jr_0fd_508e

jr_0fd_508e:
    stop
    ld b, b
    nop
    ld b, [hl]
    nop
    ld l, $00
    jr nz, jr_0fd_5098

jr_0fd_5098:
    ld a, [de]
    nop
    ld b, b
    nop
    ld d, d
    nop
    ld e, $00
    jr jr_0fd_50a2

jr_0fd_50a2:
    ld bc, $ffa8
    ret c

    rst $38
    xor h
    nop
    ld d, b
    nop
    nop
    ld bc, $ffc2
    ld a, [$00ff]
    ld bc, $0100
    inc bc
    ret c

    rst $38
    ret c

    rst $38
    ld e, $00
    ld l, $00
    ld [de], a
    nop
    ret c

    rst $38
    ld d, $00
    stop
    jr jr_0fd_50c8

jr_0fd_50c8:
    add sp, -$01
    stop
    inc c
    nop
    ld [bc], a
    jp z, $baff

    rst $38
    ld l, h
    nop
    add h
    nop
    and b
    rst $38
    ld [hl], b
    rst $38
    ld l, $00
    ld [hl], $00
    ld bc, $ff80
    ld a, [$c6ff]
    nop
    inc c
    nop
    nop
    ld bc, $0000
    add sp, -$01
    jr nz, jr_0fd_50f0

jr_0fd_50f0:
    inc d
    nop
    nop
    dec b
    ret z

    rst $38
    call nz, $e2ff
    nop
    inc h
    nop
    cp d
    rst $38
    call nz, Call_000_14ff
    nop
    ld e, $00
    ld a, [hl-]
    nop
    call nz, $38ff
    nop
    ld c, d
    nop
    ld h, [hl]
    nop
    call nz, Call_000_20ff
    nop
    ld h, $00
    call nz, $ecff
    rst $38
    ld h, d
    nop
    jr nc, jr_0fd_511c

jr_0fd_511c:
    ld a, [ROOM_NUMBER]
    ld l, a
    ld a, [ROOM_NUMBER + 1]
    ld h, a
    add hl, hl
    ld de, $4430
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    or a
    ret z

    ld b, a

Jump_0fd_5130:
    push bc
    ld a, [hl+]
    ld [$c170], a
    ld c, a
    ld a, [hl+]
    ld [$c171], a
    ld b, a
    inc hl
    inc hl
    ld a, [hl+]
    add c
    ld [$c172], a
    ld a, [hl-]
    adc b
    ld [$c173], a
    dec hl
    dec hl
    ld a, [hl+]
    ld [$c174], a
    ld c, a
    ld a, [hl+]
    ld [$c175], a
    ld b, a
    inc hl
    inc hl
    ld a, [hl+]
    add c
    ld [$c176], a
    ld a, [hl+]
    adc b
    ld [$c177], a
    push hl
    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_0fd_524a
    push de
    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_0fd_524a
    ld l, e
    ld h, d
    pop de
    call Call_0fd_5184
    pop hl
    pop bc
    dec b
    jp nz, Jump_0fd_5130

    ret


Call_0fd_5184:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    cp $ff
    ret nz

    ld a, [$c172]
    sub e
    ld a, [$c173]
    sbc d
    or a
    ret nz

    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    cp $ff
    ret nz

    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    or a
    ret nz

    push de
    push hl
    ld a, [$c315]
    ld e, a
    ld a, [$c316]
    ld d, a
    ld a, [$c317]
    ld l, a
    ld a, [$c318]
    ld h, a
    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    or a
    jr nz, jr_0fd_51e5

    ld a, [$c174]
    ld e, a
    ld a, [$c175]
    ld d, a
    call Call_0fd_526f
    ld a, e
    sub $01
    ld [$c313], a
    ld a, d
    sbc $00
    ld [$c314], a
    pop hl
    pop de
    ret


jr_0fd_51e5:
    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    cp $ff
    jr nz, jr_0fd_520b

    ld a, [$c176]
    ld e, a
    ld a, [$c177]
    ld d, a
    call Call_0fd_526f
    ld a, e
    add $08
    ld [$c313], a
    ld a, d
    adc $00
    ld [$c314], a
    pop hl
    pop de
    ret


jr_0fd_520b:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    or a
    jr nz, jr_0fd_5230

    ld a, [$c170]
    ld e, a
    ld a, [$c171]
    ld d, a
    call Call_0fd_526f
    ld a, e
    sub $01
    ld [$c311], a
    ld a, d
    sbc $00
    ld [$c312], a
    pop hl
    pop de
    ret


jr_0fd_5230:
    ld a, [$c172]
    ld e, a
    ld a, [$c173]
    ld d, a
    call Call_0fd_526f
    ld a, e
    add $08
    ld [$c311], a
    ld a, d
    adc $00
    ld [$c312], a
    pop hl
    pop de
    ret


Call_0fd_524a:
    ld a, d
    cp $80
    jr c, jr_0fd_5262

    call Call_0fd_528e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_0fd_528e
    ret


jr_0fd_5262:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_0fd_526f:
    ld a, d
    cp $80
    jr c, jr_0fd_5284

    call Call_0fd_528e
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    call Call_0fd_528e
    ret


jr_0fd_5284:
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    ret


Call_0fd_528e:
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


    ld a, [ROOM_NUMBER]
    cp $6c
    jp z, Jump_0fd_52a0

    ret


Jump_0fd_52a0:
    ld a, [CAMERA_NUMBER]
    cp $05
    jr z, jr_0fd_52a8

    ret


jr_0fd_52a8:
    ld hl, $9931
    ld b, $02
    call Call_0fd_52d9
    ld hl, $9951
    ld b, $02
    call Call_0fd_52d9
    ld hl, $9971
    ld b, $02
    call Call_0fd_52d9
    ld hl, $9991
    ld b, $02
    call Call_0fd_52d9
    ld hl, $99b1
    ld b, $02
    call Call_0fd_52d9
    ld hl, $99d1
    ld b, $02
    call Call_0fd_52d9
    ret


Call_0fd_52d9:
    ld a, $01
    ldh [rVBK], a

jr_0fd_52dd:
    call func_rstat
    ld a, [hl]
    or $80
    ld [hl+], a
    dec b
    jr nz, jr_0fd_52dd

    xor a
    ldh [rVBK], a
    ret


    ldh [rP1], a
    db $eb
    ld d, h
    add sp, $00
    dec hl
    ld d, l
    pop hl
    nop
    di
    ld d, h
    jp hl


    nop
    inc sp
    ld d, l
    ld [c], a
    nop
    ei
    ld d, h
    ld [$3b00], a
    ld d, l
    db $e3
    nop
    inc bc
    ld d, l
    db $eb
    nop
    ld b, e
    ld d, l
    db $e4
    nop
    dec bc
    ld d, l
    db $ec
    nop
    ld c, e
    ld d, l
    push hl
    nop
    inc de
    ld d, l
    db $ed
    nop
    ld d, e
    ld d, l
    and $00
    dec de
    ld d, l
    xor $00
    ld e, e
    ld d, l
    rst $20
    nop
    inc hl
    ld d, l
    rst $28
    nop
    ld h, e
    ld d, l
    ldh [rP1], a
    ld l, e
    ld d, l
    add sp, $00
    db $eb
    ld d, l
    pop hl
    nop
    ld a, e
    ld d, l
    jp hl


    nop
    ei
    ld d, l
    ld [c], a
    nop
    adc e
    ld d, l
    ld [$0b00], a
    ld d, [hl]
    db $e3
    nop
    sbc e
    ld d, l
    db $eb
    nop
    dec de
    ld d, [hl]
    db $e4
    nop
    xor e
    ld d, l
    db $ec
    nop
    dec hl
    ld d, [hl]
    push hl
    nop
    cp e
    ld d, l
    db $ed
    nop
    dec sp
    ld d, [hl]
    and $00
    bit 2, l
    xor $00
    ld c, e
    ld d, [hl]
    rst $20
    nop
    db $db
    ld d, l
    rst $28
    nop
    ld e, e
    ld d, [hl]
    ldh [rP1], a
    ld l, e
    ld d, [hl]
    add sp, $00
    db $eb
    ld d, [hl]
    pop hl
    nop
    ld a, e
    ld d, [hl]
    jp hl


    nop
    ei
    ld d, [hl]
    ld [c], a
    nop
    adc e
    ld d, [hl]
    ld [$0b00], a
    ld d, a
    db $e3
    nop
    sbc e
    ld d, [hl]
    db $eb
    nop
    dec de
    ld d, a
    db $e4
    nop
    xor e
    ld d, [hl]
    db $ec
    nop
    dec hl
    ld d, a
    push hl
    nop
    cp e
    ld d, [hl]
    db $ed
    nop
    dec sp
    ld d, a
    and $00
    bit 2, [hl]
    xor $00
    ld c, e
    ld d, a
    rst $20
    nop
    db $db
    ld d, [hl]
    rst $28
    nop
    ld e, e
    ld d, a
    ldh [rP1], a
    ld l, e
    ld d, a
    add sp, $00
    sbc e
    ld d, a
    pop hl
    nop
    ld [hl], c
    ld d, a
    jp hl


    nop
    and c
    ld d, a
    ld [c], a
    nop
    ld [hl], a
    ld d, a
    ld [$a700], a
    ld d, a
    db $e3
    nop
    ld a, l
    ld d, a
    db $eb
    nop
    xor l
    ld d, a
    db $e4
    nop
    add e
    ld d, a
    db $ec
    nop
    or e
    ld d, a
    push hl
    nop
    adc c
    ld d, a
    db $ed
    nop
    cp c
    ld d, a
    and $00
    adc a
    ld d, a
    xor $00
    cp a
    ld d, a
    rst $20
    nop
    sub l
    ld d, a
    rst $28
    nop
    push bc
    ld d, a
    ldh [rP1], a
    bit 2, a
    add sp, $00
    ei
    ld d, a
    pop hl
    nop
    pop de
    ld d, a
    jp hl


    nop
    ld bc, $e258
    nop
    rst $10
    ld d, a
    ld [$0700], a
    ld e, b
    db $e3
    nop
    db $dd
    ld d, a
    db $eb
    nop
    dec c
    ld e, b
    db $e4
    nop
    db $e3
    ld d, a
    db $ec
    nop
    inc de
    ld e, b
    push hl
    nop
    jp hl


    ld d, a
    db $ed
    nop
    add hl, de
    ld e, b
    and $00
    rst $28
    ld d, a
    xor $00
    rra
    ld e, b
    rst $20
    nop
    push af
    ld d, a
    rst $28
    nop
    dec h
    ld e, b
    ldh [rP1], a
    dec hl
    ld e, b
    add sp, $00
    adc e
    ld e, b
    pop hl
    nop
    scf
    ld e, b
    jp hl


    nop
    sub a
    ld e, b
    ld [c], a
    nop
    ld b, e
    ld e, b
    ld [$a300], a
    ld e, b
    db $e3
    nop
    ld c, a
    ld e, b
    db $eb
    nop
    xor a
    ld e, b
    db $e4
    nop
    ld e, e
    ld e, b
    db $ec
    nop
    cp e
    ld e, b
    push hl
    nop
    ld h, a
    ld e, b
    db $ed
    nop
    rst $00
    ld e, b
    and $00
    ld [hl], e
    ld e, b
    xor $00
    db $d3
    ld e, b
    rst $20
    nop
    ld a, a
    ld e, b
    rst $28
    nop
    rst $18
    ld e, b
    ldh [rP1], a
    db $eb
    ld e, b
    add sp, $00
    ei
    ld e, b
    pop hl
    nop
    db $ed
    ld e, b
    jp hl


    nop
    db $fd
    ld e, b
    ld [c], a
    nop
    rst $28
    ld e, b
    ld [$ff00], a
    ld e, b
    db $e3
    nop
    pop af
    ld e, b
    db $eb
    nop
    ld bc, $e459
    nop
    di
    ld e, b
    db $ec
    nop
    inc bc
    ld e, c
    push hl
    nop
    push af
    ld e, b
    db $ed
    nop
    dec b
    ld e, c
    and $00
    rst $30
    ld e, b
    xor $00
    rlca
    ld e, c
    rst $20
    nop
    ld sp, hl
    ld e, b
    rst $28
    nop
    add hl, bc
    ld e, c
    ldh [rP1], a
    dec bc
    ld e, c
    add sp, $00
    ld c, e
    ld e, c
    pop hl
    nop
    inc de
    ld e, c
    jp hl


    nop
    ld d, e
    ld e, c
    ld [c], a
    nop
    dec de
    ld e, c
    ld [$5b00], a
    ld e, c
    db $e3
    nop
    inc hl
    ld e, c
    db $eb
    nop
    ld h, e
    ld e, c
    db $e4
    nop
    dec hl
    ld e, c
    db $ec
    nop
    ld l, e
    ld e, c
    push hl
    nop
    inc sp
    ld e, c
    db $ed
    nop
    ld [hl], e
    ld e, c
    and $00
    dec sp
    ld e, c
    xor $00
    ld a, e
    ld e, c
    rst $20
    nop
    ld b, e
    ld e, c
    rst $28
    nop
    add e
    ld e, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b

Call_0fd_54ff:
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld h, c
    add b
    ld e, a
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    ldh a, [rP1]
    adc e
    ld e, e
    ret c

    nop
    bit 3, e
    pop af
    nop
    sub e
    ld e, e
    reti


    nop
    db $d3
    ld e, e
    ld a, [c]
    nop
    sbc e
    ld e, e
    jp c, $db00

    ld e, e
    di
    nop
    and e
    ld e, e
    db $db
    nop
    db $e3
    ld e, e
    db $f4
    nop
    xor e
    ld e, e
    call c, $eb00
    ld e, e
    push af
    nop
    or e
    ld e, e
    db $dd
    nop
    di
    ld e, e
    or $00
    cp e
    ld e, e
    sbc $00
    ei
    ld e, e
    rst $30
    nop
    jp $df5b


    nop
    inc bc
    ld e, h
    ldh a, [rP1]
    dec bc
    ld e, h
    ret c

    nop
    adc e
    ld e, h
    pop af
    nop
    dec de
    ld e, h
    reti


    nop
    sbc e
    ld e, h
    ld a, [c]
    nop
    dec hl
    ld e, h
    jp c, $ab00

    ld e, h
    di
    nop
    dec sp
    ld e, h
    db $db
    nop
    cp e
    ld e, h
    db $f4
    nop
    ld c, e
    ld e, h
    call c, $cb00
    ld e, h
    push af
    nop
    ld e, e
    ld e, h
    db $dd
    nop
    db $db
    ld e, h
    or $00
    ld l, e
    ld e, h
    sbc $00
    db $eb
    ld e, h
    rst $30
    nop
    ld a, e
    ld e, h
    rst $18
    nop
    ei
    ld e, h
    ldh a, [rP1]
    dec bc
    ld e, l
    ret c

    nop
    adc e
    ld e, l
    pop af
    nop
    dec de
    ld e, l
    reti


    nop
    sbc e
    ld e, l
    ld a, [c]
    nop
    dec hl
    ld e, l
    jp c, $ab00

    ld e, l
    di
    nop
    dec sp
    ld e, l
    db $db
    nop
    cp e
    ld e, l
    db $f4
    nop
    ld c, e
    ld e, l
    call c, $cb00
    ld e, l
    push af
    nop
    ld e, e
    ld e, l
    db $dd
    nop
    db $db
    ld e, l
    or $00
    ld l, e
    ld e, l
    sbc $00
    db $eb
    ld e, l
    rst $30
    nop
    ld a, e
    ld e, l
    rst $18
    nop
    ei
    ld e, l
    ldh a, [rP1]
    dec bc
    ld e, [hl]
    ret c

    nop
    dec sp
    ld e, [hl]
    pop af
    nop
    ld de, $d95e
    nop
    ld b, c
    ld e, [hl]
    ld a, [c]
    nop
    rla
    ld e, [hl]
    jp c, Jump_0fd_4700

    ld e, [hl]
    di
    nop
    dec e
    ld e, [hl]
    db $db
    nop
    ld c, l
    ld e, [hl]
    db $f4
    nop
    inc hl
    ld e, [hl]
    call c, $5300
    ld e, [hl]
    push af
    nop
    add hl, hl
    ld e, [hl]
    db $dd
    nop
    ld e, c
    ld e, [hl]
    or $00
    cpl
    ld e, [hl]
    sbc $00
    ld e, a
    ld e, [hl]
    rst $30
    nop
    dec [hl]
    ld e, [hl]
    rst $18
    nop
    ld h, l
    ld e, [hl]
    ldh a, [rP1]
    ld l, e
    ld e, [hl]
    ret c

    nop
    sbc e
    ld e, [hl]
    pop af
    nop
    ld [hl], c
    ld e, [hl]
    reti


    nop
    and c
    ld e, [hl]
    ld a, [c]
    nop
    ld [hl], a
    ld e, [hl]
    jp c, $a700

    ld e, [hl]
    di
    nop
    ld a, l
    ld e, [hl]
    db $db
    nop
    xor l
    ld e, [hl]
    db $f4
    nop
    add e
    ld e, [hl]
    call c, $b300
    ld e, [hl]
    push af
    nop
    adc c
    ld e, [hl]
    db $dd
    nop
    cp c
    ld e, [hl]
    or $00
    adc a
    ld e, [hl]
    sbc $00
    cp a
    ld e, [hl]
    rst $30
    nop
    sub l
    ld e, [hl]
    rst $18
    nop
    push bc
    ld e, [hl]
    ldh a, [rP1]
    bit 3, [hl]
    ret c

    nop
    dec hl
    ld e, a
    pop af
    nop
    rst $10
    ld e, [hl]
    reti


    nop
    scf
    ld e, a
    ld a, [c]
    nop
    db $e3
    ld e, [hl]
    jp c, Jump_0fd_4300

    ld e, a
    di
    nop
    rst $28
    ld e, [hl]
    db $db
    nop
    ld c, a
    ld e, a
    db $f4
    nop
    ei
    ld e, [hl]
    call c, $5b00
    ld e, a
    push af
    nop
    rlca
    ld e, a
    db $dd
    nop
    ld h, a
    ld e, a
    or $00
    inc de
    ld e, a
    sbc $00
    ld [hl], e
    ld e, a
    rst $30
    nop
    rra
    ld e, a
    rst $18
    nop
    ld a, a
    ld e, a
    ldh a, [rP1]
    adc e
    ld e, a
    ret c

    nop
    sbc e
    ld e, a
    pop af
    nop
    adc l
    ld e, a
    reti


    nop
    sbc l
    ld e, a
    ld a, [c]
    nop
    adc a
    ld e, a
    jp c, $9f00

    ld e, a
    di
    nop
    sub c
    ld e, a
    db $db
    nop
    and c
    ld e, a
    db $f4
    nop
    sub e
    ld e, a
    call c, $a300
    ld e, a
    push af
    nop
    sub l
    ld e, a
    db $dd
    nop
    and l
    ld e, a
    or $00
    sub a
    ld e, a
    sbc $00
    and a
    ld e, a
    rst $30
    nop
    sbc c
    ld e, a
    rst $18
    nop
    xor c
    ld e, a
    ldh a, [rP1]
    xor e
    ld e, a
    ret c

    nop
    db $eb
    ld e, a
    pop af
    nop
    or e
    ld e, a
    reti


    nop
    di
    ld e, a
    ld a, [c]
    nop
    cp e
    ld e, a
    jp c, $fb00

    ld e, a
    di
    nop
    jp $db5f


    nop
    inc bc
    ld h, b
    db $f4
    nop
    bit 3, a
    call c, Call_000_0b00
    ld h, b
    push af
    nop
    db $d3
    ld e, a
    db $dd
    nop
    inc de
    ld h, b
    or $00
    db $db
    ld e, a
    sbc $00
    dec de
    ld h, b
    rst $30
    nop
    db $e3
    ld e, a
    rst $18
    nop
    inc hl
    ld h, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop

Call_0fd_5c00:
    ld b, b
    add b
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld b, e
    add b
    ld b, h
    nop

Jump_0fd_5d00:
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b

Jump_0fd_5f00:
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld e, a
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    call $ab00
    ld h, c
    call $ab00
    ld h, c
    call $b300
    ld h, c
    call $b300
    ld h, c
    call $bb00
    ld h, c
    call $bb00
    ld h, c
    adc $00
    jp $ce61


    nop
    jp $ce61


    nop
    bit 4, c
    adc $00
    bit 4, c
    adc $00
    db $d3
    ld h, c
    adc $00
    db $d3
    ld h, c
    rst $08
    nop
    db $db
    ld h, c
    rst $08
    nop
    db $db
    ld h, c
    rst $08
    nop
    db $e3
    ld h, c
    rst $08
    nop
    db $e3
    ld h, c
    call $eb00
    ld h, c
    call $eb00
    ld h, c
    call $fb00
    ld h, c
    call $fb00
    ld h, c
    call Call_000_0b00
    ld h, d
    call Call_000_0b00
    ld h, d
    adc $00
    dec de
    ld h, d
    adc $00
    dec de
    ld h, d
    adc $00
    dec hl
    ld h, d
    adc $00
    dec hl
    ld h, d
    adc $00
    dec sp
    ld h, d
    adc $00
    dec sp
    ld h, d
    rst $08
    nop
    ld c, e
    ld h, d
    rst $08
    nop
    ld c, e
    ld h, d
    rst $08
    nop
    ld e, e
    ld h, d
    rst $08
    nop
    ld e, e
    ld h, d
    call $eb00
    ld h, c
    call $eb00
    ld h, c
    call $fb00
    ld h, c
    call $fb00
    ld h, c
    call Call_000_0b00
    ld h, d
    call Call_000_0b00
    ld h, d
    adc $00
    dec de
    ld h, d
    adc $00
    dec de
    ld h, d
    adc $00
    dec hl
    ld h, d
    adc $00
    dec hl
    ld h, d
    adc $00
    dec sp
    ld h, d
    adc $00
    dec sp
    ld h, d
    rst $08
    nop
    ld c, e
    ld h, d
    rst $08
    nop
    ld c, e
    ld h, d
    rst $08
    nop
    ld e, e
    ld h, d
    rst $08
    nop
    ld e, e
    ld h, d
    call $6b00
    ld h, d
    call $6b00
    ld h, d
    call $7100
    ld h, d
    call $7100
    ld h, d
    call Call_0fd_7700
    ld h, d
    call Call_0fd_7700
    ld h, d
    adc $00
    ld a, l
    ld h, d
    adc $00
    ld a, l
    ld h, d
    adc $00
    add e
    ld h, d
    adc $00
    add e
    ld h, d
    adc $00
    adc c
    ld h, d
    adc $00
    adc c
    ld h, d
    rst $08
    nop
    adc a
    ld h, d
    rst $08
    nop
    adc a
    ld h, d
    rst $08
    nop
    sub l
    ld h, d
    rst $08
    nop
    sub l
    ld h, d
    call $9b00
    ld h, d
    call $9b00
    ld h, d
    call $a100
    ld h, d
    call $a100
    ld h, d
    call $a700
    ld h, d
    call $a700
    ld h, d
    adc $00
    xor l
    ld h, d
    adc $00
    xor l
    ld h, d
    adc $00
    or e
    ld h, d
    adc $00
    or e
    ld h, d
    adc $00
    cp c
    ld h, d
    adc $00
    cp c
    ld h, d
    rst $08
    nop
    cp a
    ld h, d
    rst $08
    nop
    cp a
    ld h, d
    rst $08
    nop
    push bc
    ld h, d
    rst $08
    nop
    push bc
    ld h, d
    call $cb00
    ld h, d
    call $cb00
    ld h, d
    call $d100
    ld h, d
    call $d100
    ld h, d
    call $d700
    ld h, d
    call $d700
    ld h, d
    adc $00
    db $dd
    ld h, d
    adc $00
    db $dd
    ld h, d
    adc $00
    db $e3
    ld h, d
    adc $00
    db $e3
    ld h, d
    adc $00
    jp hl


    ld h, d
    adc $00
    jp hl


    ld h, d
    rst $08
    nop
    rst $28
    ld h, d
    rst $08
    nop
    rst $28
    ld h, d
    rst $08
    nop
    push af
    ld h, d
    rst $08
    nop
    push af
    ld h, d
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    add b
    ld d, e
    add b
    ld d, e
    add b
    ld d, e
    nop
    ld d, l
    nop
    ld h, a
    nop
    ld h, a
    nop
    ld h, a
    add b
    ld l, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    add b
    ld d, e
    add b
    ld d, e
    add b
    ld d, e
    nop
    ld d, l
    nop
    ld h, a
    nop
    ld h, a
    nop
    ld h, a
    add b
    ld l, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    add b
    ld d, e
    add b
    ld d, e
    add b
    ld d, e
    nop
    ld d, l
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    add b
    ld d, [hl]
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    add b
    ld e, a
    nop
    ld h, c
    nop
    ld l, d
    add b
    ld l, e
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    add b
    ld d, [hl]
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    add b
    ld e, a
    nop
    ld h, c
    nop
    ld l, d
    add b
    ld l, e
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    add b
    ld d, [hl]
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    add b
    ld e, a
    nop
    ld h, c
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    add b
    ld h, d
    add b
    ld h, d
    add b
    ld h, d
    nop
    halt
    halt
    halt
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    add b
    ld h, d
    add b
    ld h, d
    add b
    ld h, d
    nop
    halt
    halt
    halt
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    add b
    ld h, d
    add b
    ld h, d
    add b
    ld h, d
    add b
    ld d, b
    add b
    ld d, b
    add b
    ld d, b
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    add b
    ld [hl], a
    add b
    ld [hl], a
    add b
    ld [hl], a
    add b
    ld d, b
    add b
    ld d, b
    add b
    ld d, b
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    add b
    ld [hl], a
    add b
    ld [hl], a
    add b
    ld [hl], a
    add b
    ld d, b
    add b
    ld d, b
    add b
    ld d, b
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    add b
    ld h, l
    add b
    ld h, l
    add b
    ld h, l
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    add b
    ld h, l
    add b
    ld h, l
    add b
    ld h, l
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld d, d
    nop
    ld d, d
    nop
    ld d, d
    add b
    ld h, l
    add b
    ld h, l
    add b
    ld h, l
    jp z, $fb00

    ld h, e
    jp z, $fb00

    ld h, e
    jp z, Jump_000_0300

    ld h, h
    jp z, Jump_000_0300

    ld h, h
    jp z, Jump_000_0b00

    ld h, h
    jp z, Jump_000_0b00

    ld h, h
    rlc b
    inc de
    ld h, h
    rlc b
    inc de
    ld h, h
    rlc b
    dec de
    ld h, h
    rlc b
    dec de
    ld h, h
    rlc b
    inc hl
    ld h, h
    rlc b
    inc hl
    ld h, h
    call z, $2b00
    ld h, h
    call z, $2b00
    ld h, h
    call z, $3300
    ld h, h
    call z, $3300
    ld h, h
    jp z, Jump_000_3b00

    ld h, h
    jp z, Jump_000_3b00

    ld h, h
    jp z, $4b00

    ld h, h
    jp z, $4b00

    ld h, h
    jp z, $5b00

    ld h, h
    jp z, $5b00

    ld h, h
    rlc b
    ld l, e
    ld h, h
    rlc b
    ld l, e
    ld h, h
    rlc b
    ld a, e
    ld h, h
    rlc b
    ld a, e
    ld h, h
    rlc b
    adc e
    ld h, h
    rlc b
    adc e
    ld h, h
    call z, $9b00
    ld h, h
    call z, $9b00
    ld h, h
    call z, $ab00
    ld h, h
    call z, $ab00
    ld h, h
    jp z, Jump_000_3b00

    ld h, h
    jp z, Jump_000_3b00

    ld h, h
    jp z, $4b00

    ld h, h
    jp z, $4b00

    ld h, h
    jp z, $5b00

    ld h, h
    jp z, $5b00

    ld h, h
    rlc b
    ld l, e
    ld h, h
    rlc b
    ld l, e
    ld h, h
    rlc b
    ld a, e
    ld h, h
    rlc b
    ld a, e
    ld h, h
    rlc b
    adc e
    ld h, h
    rlc b
    adc e
    ld h, h
    call z, $9b00
    ld h, h
    call z, $9b00
    ld h, h
    call z, $ab00
    ld h, h
    call z, $ab00
    ld h, h
    jp z, $bb00

    ld h, h
    jp z, $bb00

    ld h, h
    jp z, $c100

    ld h, h
    jp z, $c100

    ld h, h
    jp z, $c700

    ld h, h
    jp z, $c700

    ld h, h
    rlc b
    call $cb64
    nop
    call $cb64
    nop
    db $d3
    ld h, h
    rlc b
    db $d3
    ld h, h
    rlc b
    reti


    ld h, h
    rlc b
    reti


    ld h, h
    call z, $df00
    ld h, h
    call z, $df00
    ld h, h
    call z, $e500
    ld h, h
    call z, $e500
    ld h, h
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    add b
    ld d, b
    add b
    ld d, b
    add b
    ld d, b
    nop
    ld d, d
    nop
    ld h, c
    nop
    ld h, c
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    add b
    ld d, b
    add b
    ld d, b
    add b
    ld d, b
    nop
    ld d, d
    nop
    ld h, c
    nop
    ld h, c
    nop
    ld h, c
    add b
    ld h, d
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    add b
    ld d, b
    add b
    ld d, b
    add b
    ld d, b
    nop
    ld d, d
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    add b
    ld d, e
    nop
    ld d, l
    add b
    ld d, [hl]
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld l, b
    nop
    ld l, d
    add b
    ld l, e
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    add b
    ld d, e
    nop
    ld d, l
    add b
    ld d, [hl]
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld l, b
    nop
    ld l, d
    add b
    ld l, e
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    add b
    ld d, e
    nop
    ld d, l
    add b
    ld d, [hl]
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    ret nc

    nop
    db $eb
    ld h, l
    jp nc, $2b00

    ld h, [hl]
    ret nc

    nop
    di
    ld h, l
    jp nc, $3300

    ld h, [hl]
    ret nc

    nop
    ei
    ld h, l
    jp nc, Jump_000_3b00

    ld h, [hl]
    ret nc

    nop
    inc bc
    ld h, [hl]
    jp nc, Jump_0fd_4300

    ld h, [hl]
    ret nc

    nop
    dec bc
    ld h, [hl]
    jp nc, $4b00

    ld h, [hl]
    pop de
    nop
    inc de
    ld h, [hl]
    db $d3
    nop
    ld d, e
    ld h, [hl]
    pop de
    nop
    dec de
    ld h, [hl]
    db $d3
    nop
    ld e, e
    ld h, [hl]
    pop de
    nop
    inc hl
    ld h, [hl]
    db $d3
    nop
    ld h, e
    ld h, [hl]
    ret nc

    nop
    ld l, e
    ld h, [hl]
    jp nc, $eb00

    ld h, [hl]
    ret nc

    nop
    ld a, e
    ld h, [hl]
    jp nc, $f300

    ld h, [hl]
    ret nc

    nop
    adc e
    ld h, [hl]
    jp nc, $fb00

    ld h, [hl]
    ret nc

    nop
    sbc e
    ld h, [hl]
    jp nc, Jump_000_0300

    ld h, a
    ret nc

    nop
    xor e
    ld h, [hl]
    jp nc, Jump_000_0b00

    ld h, a
    pop de
    nop
    cp e
    ld h, [hl]
    db $d3
    nop
    inc de
    ld h, a
    pop de
    nop
    bit 4, [hl]
    db $d3
    nop
    dec de
    ld h, a
    pop de
    nop
    db $db
    ld h, [hl]
    db $d3
    nop
    inc hl
    ld h, a
    ret nc

    nop
    dec hl
    ld h, a
    jp nc, Jump_000_3b00

    ld h, a
    ret nc

    nop
    dec l
    ld h, a
    jp nc, Jump_000_3d00

    ld h, a
    ret nc

    nop
    cpl
    ld h, a
    jp nc, Jump_000_3f00

    ld h, a
    ret nc

    nop
    ld sp, $d267
    nop
    ld b, c
    ld h, a
    ret nc

    nop
    inc sp
    ld h, a
    jp nc, Jump_0fd_4300

    ld h, a
    pop de
    nop
    dec [hl]
    ld h, a
    db $d3
    nop
    ld b, l
    ld h, a
    pop de
    nop
    scf
    ld h, a
    db $d3
    nop
    ld b, a
    ld h, a
    pop de
    nop
    add hl, sp
    ld h, a
    db $d3
    nop
    ld c, c
    ld h, a
    ret nc

    nop
    ld c, e
    ld h, a
    jp nc, $5b00

    ld h, a
    ret nc

    nop
    ld c, l
    ld h, a
    jp nc, Jump_0fd_5d00

    ld h, a
    ret nc

    nop
    ld c, a
    ld h, a
    jp nc, Jump_0fd_5f00

    ld h, a
    ret nc

    nop
    ld d, c
    ld h, a
    jp nc, $6100

    ld h, a
    ret nc

    nop
    ld d, e
    ld h, a
    jp nc, $6300

    ld h, a
    pop de
    nop
    ld d, l
    ld h, a
    db $d3
    nop
    ld h, l
    ld h, a
    pop de
    nop
    ld d, a
    ld h, a
    db $d3
    nop
    ld h, a
    ld h, a
    pop de
    nop
    ld e, c
    ld h, a
    db $d3
    nop
    ld l, c
    ld h, a
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld e, b
    nop
    ld e, b
    nop

Call_0fd_6600:
    ld e, b
    add b
    ld e, c
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld h, h
    nop
    ld h, h
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, a
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld c, a
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    add b
    ld e, a
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    add b
    ld e, a
    nop
    ld h, a
    add b
    ld l, b
    nop
    ld l, d
    add b
    ld l, e
    nop
    ld h, a
    add b
    ld l, b
    nop
    ld l, d
    add b
    ld l, e
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, a
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld c, a
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    add b
    ld e, a
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    add b
    ld e, a
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, a
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld e, e
    add b
    ld e, h

Call_0fd_66ff:
Jump_0fd_66ff:
    nop
    ld e, [hl]
    add b
    ld e, a
    nop
    ld h, a
    add b
    ld l, b
    nop
    ld l, d
    add b
    ld l, e
    nop
    ld [hl], e
    add b
    ld [hl], h
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    nop
    ld c, a
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    add b
    ld e, a
    add b
    ld c, d
    add b
    ld d, [hl]
    add b
    ld h, d
    add b
    ld l, [hl]
    add b
    ld a, d
    add b
    ld c, d
    add b
    ld d, [hl]
    add b
    ld h, d
    add b
    ld c, d
    add b
    ld d, [hl]
    add b
    ld h, d
    add b
    ld l, [hl]
    add b
    ld a, d
    add b
    ld c, d
    add b
    ld d, [hl]
    add b
    ld h, d
    nop
    ld c, c
    nop
    ld d, l
    nop
    ld h, c
    nop
    ld l, l
    nop
    ld a, c
    nop
    ld c, c
    nop
    ld d, l
    nop
    ld h, c
    nop
    ld c, c
    nop
    ld d, l
    nop
    ld h, c
    nop
    ld l, l
    nop
    ld a, c
    nop
    ld c, c
    nop
    ld d, l
    nop
    ld h, c
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    ret z

    nop
    dec bc
    ld l, b
    nop
    ld b, b
    nop
    nop
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, [hl]
    add b
    ld b, a
    add b
    ld c, d
    nop
    ld c, h
    nop
    ld c, a
    add b
    ld d, b
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld d, l
    add b
    ld d, [hl]
    nop
    ld e, b
    add b
    ld e, c
    nop
    ld e, e
    add b
    ld e, h
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld b, c
    nop
    nop
    add b
    ld e, h
    nop
    nop
    nop
    ld c, h
    nop
    nop
    add b
    ld c, l
    nop
    nop
    nop
    ld e, [hl]
    nop
    nop
    add b
    ld e, a
    nop
    nop
    cp $00
    ld l, e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    ld e, e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    ld c, e
    ld l, c
    cp $00
    bit 5, c
    db $fd
    nop
    cp e
    ld l, c
    db $fd
    nop
    bit 5, c
    cp $00
    xor e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    sbc e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    adc e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    ld a, e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    ld l, e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    ld e, e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    ld c, e
    ld l, c
    cp $00
    bit 5, c
    db $fd
    nop
    cp e
    ld l, c
    db $fd
    nop
    bit 5, c
    cp $00
    xor e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    sbc e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    adc e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    ld a, e
    ld l, c
    cp $00
    bit 5, c
    cp $00
    rst $08
    ld l, c
    cp $00
    db $db
    ld l, c
    cp $00
    call $fe69
    nop
    db $db
    ld l, c
    cp $00
    bit 5, c
    cp $00
    db $db
    ld l, c
    db $fd
    nop
    reti


    ld l, c
    db $fd
    nop
    db $db
    ld l, c
    cp $00
    rst $10
    ld l, c
    cp $00
    db $db
    ld l, c
    cp $00
    push de
    ld l, c
    cp $00
    db $db
    ld l, c
    cp $00
    db $d3
    ld l, c
    cp $00
    db $db
    ld l, c
    cp $00
    pop de
    ld l, c
    cp $00
    db $db
    ld l, c
    cp $00
    rst $18
    ld l, c
    cp $00
    db $eb
    ld l, c
    cp $00
    db $dd
    ld l, c
    cp $00
    db $eb
    ld l, c
    cp $00
    db $db
    ld l, c
    cp $00
    db $eb
    ld l, c
    db $fd
    nop
    jp hl


    ld l, c
    db $fd
    nop
    db $eb
    ld l, c
    cp $00
    rst $20
    ld l, c
    cp $00
    db $eb
    ld l, c
    cp $00
    push hl
    ld l, c
    cp $00
    db $eb
    ld l, c
    cp $00
    db $e3
    ld l, c
    cp $00
    db $eb
    ld l, c
    cp $00
    pop hl
    ld l, c
    cp $00
    db $eb
    ld l, c
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld b, b
    add b
    ld b, c
    nop
    ld b, e
    add b
    ld b, h
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld c, c
    add b
    ld c, d
    nop
    ld c, h
    add b
    ld c, l
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld d, l
    add b
    ld d, [hl]
    nop
    ld d, d
    add b
    ld d, e
    nop
    ld d, l
    add b
    ld d, [hl]
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    add b
    ld e, a
    nop
    ld e, e
    add b
    ld e, h
    nop
    ld e, [hl]
    add b
    ld e, a
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld l, b
    nop
    ld h, h
    add b
    ld h, l
    nop
    ld h, a
    add b
    ld l, b
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    ld l, l
    add b
    ld l, [hl]
    nop
    ld [hl], b
    add b
    ld [hl], c
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld a, c
    add b
    ld a, d
    nop
    db $76
    add b
    ld [hl], a
    nop
    ld a, c
    add b
    ld a, d
    db $eb
    ld l, c
    ld l, e
    ld l, e
    db $eb
    ld l, h
    ld l, e
    ld l, [hl]
    db $eb
    ld l, c
    ld l, e
    ld l, e
    db $eb
    ld l, h
    ld l, e
    ld l, [hl]
    nop
    ld b, [hl]
    nop
    ld c, a
    nop
    ld e, b
    nop
    ld h, c
    nop
    ld l, d
    nop
    ld [hl], e
    nop
    ld a, h
    db $eb
    ld l, a
    add b
    ld b, a
    add b
    ld d, b
    add b
    ld e, c
    add b
    ld h, d
    add b
    ld l, e
    add b
    ld [hl], h
    add b
    ld a, l
    ld l, e
    ld [hl], c
    inc bc
    inc bc
    db $fc
    db $fc
    dec b
    ld b, $f2
    ld c, $0b
    inc c
    pop bc
    ccf
    inc de
    inc e
    add c
    ld a, a
    rla
    jr jr_0fd_69fe

jr_0fd_69fe:
    rst $38
    daa
    add hl, sp
    ld b, b
    rst $38
    ld l, $39
    add d
    rst $38
    scf
    add hl, sp
    ld b, l
    rst $38
    ld a, [hl+]
    ccf
    adc l
    rst $38
    dec [hl]
    ccf
    ld d, $fa
    ld a, [hl+]
    ccf
    sbc d
    ld hl, sp+$15
    rra
    ld [de], a
    ldh a, [rNR30]
    rra
    sub h
    ldh a, [$0d]
    rrca
    db $10
    ldh a, [$0a]
    rrca
    adc b
    ld hl, sp+$05
    rlca
    ld b, h
    db $fc
    ld [bc], a
    inc bc
    and d
    cp $01
    ld bc, $fe52
    nop
    nop
    xor c
    rst $38
    nop
    nop
    ld d, h
    ld a, a
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec d
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
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
    nop
    ld bc, $8001
    add b
    rlca
    rlca
    nop
    nop
    ld c, $0a
    nop
    nop
    inc e
    inc d
    rlca
    rlca
    inc a
    inc h
    ld a, [de]
    rra
    ld a, b
    ld c, b
    dec [hl]
    ccf
    ld a, b
    ld c, b
    ld l, b
    ld a, a
    ld d, h
    ld l, h
    pop de
    rst $38
    inc hl
    ccf
    and e
    rst $38
    ld hl, $0f3f
    rst $38
    db $10
    rra
    ld a, [de]
    rst $38
    ld [$150f], sp
    rst $38
    rlca
    rlca
    ld [$00ff], a
    nop
    dec [hl]
    ccf
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    jr nz, jr_0fd_6ae2

    nop
    nop
    jr jr_0fd_6ac6

    nop
    nop
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

jr_0fd_6ac6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0fd_6ae1:
    nop

jr_0fd_6ae2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld b, b
    ret nz

    nop
    nop

Call_0fd_6aff:
    jr nz, jr_0fd_6ae1

    nop
    nop

jr_0fd_6b03:
    sub b
    ldh a, [rP1]
    nop
    ld c, b
    ld hl, sp+$00
    nop
    and h
    db $fc
    nop
    nop
    ld d, d
    cp $00
    nop
    xor c
    rst $38
    nop
    nop
    ld d, h
    ld a, a
    add b
    add b
    ld a, [hl+]
    ccf
    ld b, b
    ret nz

    dec d
    rra
    jr nz, jr_0fd_6b03

    ld a, [bc]
    rrca
    db $10
    ldh a, [$0d]
    rrca
    ld [$06f8], sp
    rlca
    adc b
    ld hl, sp-$0b
    rst $30
    ld b, h
    db $fc
    xor d
    ei
    add h
    db $fc
    rlca
    rst $38
    ld b, h
    db $fc
    ld h, a
    rst $38
    and h
    db $fc
    db $d3
    rst $38
    ld b, h
    db $fc

jr_0fd_6b43:
    and [hl]
    rst $38
    and h
    db $fc
    ld c, a
    rst $38
    ld b, h
    db $fc
    sbc [hl]
    rst $38
    add h
    db $fc
    dec [hl]
    rst $38
    ld b, h
    db $fc
    ld l, d
    rst $38
    adc b
    ld hl, sp+$15
    rst $38
    ld [$aaf8], sp
    rst $38
    db $10
    ldh a, [rLCDC]
    rst $38
    jr nz, jr_0fd_6b43

    nop
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    nop
    ld bc, $fe01
    cp $02
    inc bc
    ld sp, hl
    rlca
    dec b
    ld b, $e0
    rra
    add hl, bc
    ld c, $c0
    ccf
    dec bc
    inc c
    add b
    ld a, a
    dec de
    inc e
    and b
    rst $38
    rla
    inc e
    ld b, c
    rst $38
    dec de
    inc e
    and d
    rst $38
    dec d
    rra
    ld b, [hl]
    rst $38
    ld a, [de]
    rra
    adc e
    db $fd
    dec d
    rra
    ld c, l
    db $fc
    ld a, [bc]
    rrca
    adc c
    ld hl, sp+$0d
    rrca
    ld c, d
    ld hl, sp+$06
    rlca
    xor b
    ld hl, sp+$07
    rlca
    ld b, h
    db $fc
    inc bc
    inc bc
    and d
    cp $01
    ld bc, $ffd1
    nop
    nop
    jp hl


    rst $38
    nop
    nop
    ld [hl], h
    ld a, a
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec d
    rra
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    inc bc
    inc bc
    nop
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
    ld h, b
    ld h, b
    ld bc, $c001
    ret nz

    inc bc
    ld [bc], a
    add b
    add b
    rlca
    dec b
    ld bc, $0f01
    add hl, bc
    ld b, $07
    ld e, $12
    dec c
    rrca
    ld e, $12
    ld a, [de]
    rra
    dec d
    dec de
    dec [hl]
    ccf
    db $10
    rra
    db $eb
    rst $38
    ld [$570f], sp
    rst $38
    ld [$2e0f], sp
    rst $38
    inc b
    rlca
    dec e
    rst $38
    ld [bc], a
    inc bc
    ld a, [de]
    rst $38
    ld bc, $e401
    rst $38
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec h
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    jr jr_0fd_6c46

    nop
    nop
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
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop

jr_0fd_6c46:
    nop
    add b
    add b
    nop
    nop
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

jr_0fd_6c5d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0fd_6c5d

    nop
    nop
    db $10
    ldh a, [rP1]
    nop

jr_0fd_6c83:
    ld [$00f8], sp
    nop
    add h
    db $fc
    nop
    nop
    ld b, d
    cp $00
    nop
    and c
    rst $38
    nop
    nop
    ret nc

    rst $38
    add b
    add b
    ld l, b
    ld a, a
    add b
    add b
    inc [hl]
    ccf
    ld b, b
    ret nz

    ld a, [de]
    rra
    jr nz, jr_0fd_6c83

    dec c
    rrca
    db $10
    ldh a, [$0a]
    rrca
    adc b
    ld hl, sp-$0b
    rst $30
    ld c, b
    ld hl, sp-$52
    rst $38
    add h
    db $fc
    ld e, a
    rst $38
    ld b, h
    db $fc
    rst $20
    rst $38
    and h
    db $fc
    rst $10
    rst $38
    ld b, h
    db $fc
    and e
    rst $38
    and h
    db $fc

jr_0fd_6cc3:
    ld d, a
    rst $38
    ld b, h
    db $fc
    adc [hl]
    rst $38
    add h
    db $fc
    dec e
    rst $38
    ld b, h
    db $fc
    ld a, [hl-]
    rst $38
    add h
    db $fc
    ld [hl], l
    rst $38
    ld [$eaf8], sp
    rst $38
    ld [$54f8], sp
    rst $38
    db $10
    ldh a, [$c0]
    rst $38
    jr nz, jr_0fd_6cc3

    nop
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    nop
    inc bc
    inc bc
    db $fc
    db $fc
    dec b
    ld b, $f2
    ld c, $0b
    inc c
    pop bc
    ccf
    inc de
    inc e
    add c
    ld a, a
    rla
    jr jr_0fd_6cfe

jr_0fd_6cfe:
    rst $38

Jump_0fd_6cff:
    daa
    add hl, sp
    ld b, b
    rst $38
    ld l, $39
    add d
    rst $38
    scf
    add hl, sp
    ld b, l
    rst $38
    ld a, [hl+]
    ccf
    adc l
    rst $38
    dec [hl]
    ccf
    ld d, $fa
    ld a, [hl+]
    ccf
    sbc d
    ld hl, sp+$15
    rra
    ld [de], a
    ldh a, [rNR30]
    rra
    sub h
    ldh a, [$0d]
    rrca
    db $10
    ldh a, [$0a]
    rrca
    adc b
    ld hl, sp+$05
    rlca
    ld b, h
    db $fc
    ld [bc], a
    inc bc
    and d
    cp $01
    ld bc, $fe52
    nop
    nop
    xor c
    rst $38
    nop
    nop
    ld d, h
    ld a, a
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec d
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jr jr_0fd_6d73

    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh [$a0], a
    ld bc, $c001
    ld b, b
    inc bc
    ld [bc], a
    pop bc
    ld b, c
    rlca
    inc b
    add d
    add e
    rlca
    inc b
    add l
    add a

jr_0fd_6d73:
    dec b
    ld b, $4a
    rst $08
    ld b, $07
    dec [hl]
    rst $38
    ld [bc], a
    inc bc
    dec hl
    rst $38
    ld [bc], a
    inc bc
    ld d, a
    rst $38
    ld bc, $2e01
    rst $38
    nop
    nop
    call Call_000_00ff
    nop
    ld a, d
    ld a, a
    nop
    nop
    inc d
    rra
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec h
    ccf
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec h
    ccf
    nop
    nop
    jr jr_0fd_6dc6

    nop
    nop
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

jr_0fd_6dc6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0fd_6de1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0fd_6de1

    nop
    nop

jr_0fd_6e03:
    sub b
    ldh a, [rP1]
    nop
    ld c, b
    ld hl, sp+$00
    nop
    and h
    db $fc
    nop
    nop
    ld d, d
    cp $00
    nop
    xor c
    rst $38
    nop
    nop
    ld d, h
    ld a, a
    add b
    add b
    ld a, [hl+]
    ccf
    ld b, b
    ret nz

    dec [hl]
    ccf
    jr nz, jr_0fd_6e03

    ld a, d
    ld a, a
    db $10
    ldh a, [$dd]
    rst $38
    ld [$aef8], sp
    rst $38
    adc b
    ld hl, sp+$5d
    rst $38
    ld b, h
    db $fc
    xor $ff
    and h
    db $fc
    rst $10
    rst $38
    ld b, h
    db $fc
    and d
    rst $38
    and h
    db $fc
    ld b, a
    rst $38
    ld b, h
    db $fc

jr_0fd_6e43:
    adc a
    rst $38
    and h
    db $fc
    rra
    rst $38
    ld b, h
    db $fc
    ld a, $ff
    add h
    db $fc
    ld [hl], l
    rst $38
    ld b, h
    db $fc
    ld l, d
    rst $38
    adc b
    ld hl, sp+$55
    rst $38
    ld [$aaf8], sp
    rst $38
    db $10
    ldh a, [rLCDC]
    rst $38
    jr nz, jr_0fd_6e43

    nop
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    nop
    ld bc, $fe01
    cp $02
    inc bc
    ld sp, hl
    rlca
    dec b
    ld b, $e0
    rra
    add hl, bc
    ld c, $c0
    ccf
    dec bc
    inc c
    add b
    ld a, a
    dec de
    inc e
    and b
    rst $38
    rla
    inc e
    ld b, c
    rst $38
    dec de
    inc e
    and d
    rst $38
    dec d
    rra
    ld b, [hl]
    rst $38
    ld a, [de]
    rra
    adc e
    db $fd
    dec d
    rra
    ld c, l
    db $fc
    ld a, [bc]
    rrca
    adc c
    ld hl, sp+$0d
    rrca
    ld c, d
    ld hl, sp+$06
    rlca
    xor b
    ld hl, sp+$07
    rlca
    ld b, h
    db $fc
    inc bc
    inc bc
    and d
    cp $01
    ld bc, $ffd1
    nop
    nop
    jp hl


    rst $38
    nop
    nop
    ld [hl], h
    ld a, a
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec d
    rra
    nop
    nop
    ld a, [de]
    rra
    nop
    nop
    dec c
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    inc bc
    inc bc
    nop
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
    ld h, b
    ld h, b
    ld bc, $c001
    ret nz

    inc bc
    ld [bc], a
    add b
    add b
    rlca
    dec b
    ld bc, $0f01
    add hl, bc
    ld b, $07
    ld e, $12
    dec c
    rrca
    ld e, $12
    ld a, [de]
    rra
    dec d
    dec de
    dec [hl]
    ccf

Jump_0fd_6eff:
    db $10
    rra
    db $eb
    rst $38
    ld [$570f], sp
    rst $38
    ld [$2e0f], sp
    rst $38
    inc b
    rlca
    dec e
    rst $38
    ld [bc], a
    inc bc
    ld a, [de]
    rst $38
    ld bc, $e401
    rst $38
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec h
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    jr jr_0fd_6f46

    nop
    nop
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
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop

jr_0fd_6f46:
    nop
    add b
    add b
    nop
    nop
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

jr_0fd_6f5d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0fd_6f5d

    nop
    nop
    db $10
    ldh a, [rP1]
    nop

jr_0fd_6f83:
    ld [$00f8], sp
    nop
    add h
    db $fc
    nop
    nop
    ld b, d
    cp $00
    nop
    and c
    rst $38
    nop
    nop
    ret nc

    rst $38
    add b
    add b
    ld l, b
    ld a, a
    add b
    add b
    inc [hl]
    ccf
    ld b, b
    ret nz

    ld a, [de]
    rra
    jr nz, jr_0fd_6f83

    dec c
    rrca
    db $10
    ldh a, [$0a]
    rrca
    adc b
    ld hl, sp-$0b
    rst $30
    ld c, b
    ld hl, sp-$52
    rst $38
    add h
    db $fc
    ld e, a
    rst $38
    ld b, h
    db $fc
    rst $20
    rst $38
    and h
    db $fc
    rst $10
    rst $38
    ld b, h
    db $fc
    and e
    rst $38
    and h
    db $fc

jr_0fd_6fc3:
    ld d, a
    rst $38
    ld b, h
    db $fc
    adc [hl]
    rst $38
    add h
    db $fc
    dec e
    rst $38
    ld b, h
    db $fc
    ld a, [hl-]
    rst $38
    add h
    db $fc
    ld [hl], l
    rst $38
    ld [$eaf8], sp
    rst $38
    ld [$54f8], sp
    rst $38
    db $10
    ldh a, [$c0]
    rst $38
    jr nz, jr_0fd_6fc3

    nop
    rst $38
    ret nz

    ret nz

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
    rra
    rra
    nop
    nop
    ld [hl], l
    ld a, a
    nop
    nop
    xor d
    rst $38
    ld bc, $5501
    rst $38
    ld [bc], a
    inc bc
    xor d
    rst $38
    inc bc
    inc bc
    ld d, b
    rst $38
    ld b, $07
    and e
    rst $38
    dec b
    rlca
    ld d, h
    db $fc
    ld b, $07
    and h
    db $fc
    dec b
    rlca
    ld d, h
    db $fc
    ld [bc], a
    inc bc
    and d
    cp $01
    ld bc, $ff51
    nop
    nop
    xor b
    rst $38
    nop
    nop
    ld d, h
    ld a, a
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec d
    rra
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
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
    ld h, b
    ld h, b
    ld bc, $c001
    ret nz

    inc bc
    ld [bc], a
    add b
    add b
    rlca
    dec b
    ld bc, $0f01
    add hl, bc
    ld b, $07
    ld e, $12
    dec c
    rrca
    ld e, $12
    ld a, [de]
    rra
    dec d
    dec de
    dec [hl]
    ccf
    db $10
    rra
    db $eb
    rst $38
    ld [$570f], sp
    rst $38
    ld [$2e0f], sp
    rst $38
    inc b
    rlca
    dec e
    rst $38
    ld [bc], a
    inc bc
    ld a, [de]
    rst $38
    ld bc, $e401
    rst $38
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec h
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    jr jr_0fd_70c6

    nop
    nop
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
    nop
    nop
    nop
    nop
    nop

jr_0fd_70c6:
    nop
    ldh a, [$f0]
    nop
    nop
    ld e, a
    rst $38
    nop
    nop
    xor e
    db $fc
    ldh [$e0], a
    ld d, l
    rst $38
    ldh a, [rNR10]
    xor d
    rst $38
    cp b
    ret z

    ld bc, $58ff
    add sp, $00
    rst $38
    xor h
    db $f4
    ret nz

    rst $38
    inc b
    db $fc
    jr nz, jr_0fd_7128

    inc b
    db $fc
    db $10
    rra
    ld c, b
    ld hl, sp+$08
    rrca
    xor b
    ld hl, sp+$08
    rrca
    or b
    ret nc

    add h
    add a
    ld d, b
    ret nz

    ld b, e
    jp $e0f0


    ld hl, $20e0
    nop

jr_0fd_7103:
    db $10
    ldh a, [$90]
    nop
    adc b
    ld hl, sp+$00
    nop
    ld b, h
    db $fc
    nop
    nop
    and d
    cp $00
    nop
    ld d, c
    rst $38
    nop
    nop
    xor b
    rst $38
    add b
    add b
    ld d, h
    ld a, a
    ld b, b
    ret nz

    ld a, [hl+]
    ccf
    jr nz, jr_0fd_7103

    inc d
    rra
    db $10
    ldh a, [$0a]

jr_0fd_7128:
    rrca
    db $10
    ldh a, [$fd]
    rst $38
    ld c, b
    ld hl, sp-$52
    rst $38
    add h
    db $fc
    ld e, a
    rst $38
    ld b, h
    db $fc
    rst $20
    rst $38
    and h
    db $fc
    rst $10
    rst $38
    ld b, h
    db $fc
    and e
    rst $38
    and h
    db $fc

jr_0fd_7143:
    ld d, a
    rst $38
    ld b, h
    db $fc
    adc [hl]
    rst $38
    add h
    db $fc
    dec e
    rst $38
    ld b, h
    db $fc
    ld a, [hl-]
    rst $38
    add h
    db $fc
    ld [hl], l
    rst $38
    ld [$eaf8], sp
    rst $38
    ld [$54f8], sp
    rst $38
    db $10
    ldh a, [$c0]
    rst $38
    jr nz, jr_0fd_7143

    nop
    rst $38
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    nop
    nop
    ld [hl], l
    ld a, a
    nop
    nop
    xor d
    rst $38
    ld bc, $5501
    rst $38
    ld [bc], a
    inc bc
    xor d
    rst $38
    inc bc
    inc bc
    ld d, b
    rst $38
    ld b, $07
    and e
    rst $38
    dec b
    rlca
    ld d, a
    rst $38
    ld b, $07
    and e
    rst $38
    dec b
    rlca
    ld d, c
    rst $38
    ld [bc], a
    inc bc
    and b
    rst $38
    ld bc, $5001
    rst $38
    inc bc
    inc bc
    xor b
    rst $38
    rlca
    dec b
    ld [hl], h
    ld a, a
    rrca
    add hl, bc
    ld e, $1f
    ld e, $12
    dec c
    rrca
    ld e, $12
    ld a, [de]
    rra
    dec d
    dec de
    dec [hl]
    ccf
    db $10
    rra
    db $eb
    rst $38
    ld [$570f], sp
    rst $38
    ld [$2e0f], sp
    rst $38
    inc b
    rlca
    dec e
    rst $38
    ld [bc], a
    inc bc
    ld a, [de]
    rst $38
    ld bc, $e401
    rst $38
    nop
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    dec h
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    jr jr_0fd_7246

    nop
    nop
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
    nop
    nop
    nop
    nop
    nop

jr_0fd_7246:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld e, a
    rst $38
    nop
    nop
    xor e
    db $fc
    ldh [$e0], a
    ld d, l
    rst $38
    ldh a, [rNR10]
    xor d
    rst $38
    cp b
    ret z

    ld bc, $58ff
    add sp, $00
    rst $38
    xor h
    db $f4
    ret nz

    rst $38
    inc b
    db $fc
    ldh [rIE], a
    inc b
    db $fc
    ld [hl], b
    rst $38
    ld c, b
    ld hl, sp-$48
    rst $38
    xor b
    ld hl, sp+$58
    rst $38
    or b
    ret nc

    inc l
    rst $38
    ld d, b
    ldh [rNR13], a
    rst $38
    ld hl, sp-$18
    add c
    cp $a4
    call c, $fff4
    call nc, $fe6c
    rst $38
    inc h
    db $fc
    rst $18
    rst $38
    ld b, h
    db $fc
    xor a
    rst $38
    and h
    db $fc

jr_0fd_72c3:
    ld d, a
    rst $38
    ld b, h
    db $fc
    adc [hl]
    rst $38
    add h
    db $fc
    dec e
    rst $38
    ld b, h
    db $fc
    ld a, [hl-]
    rst $38
    add h
    db $fc
    ld [hl], l
    rst $38
    ld [$eaf8], sp
    rst $38
    ld [$54f8], sp
    rst $38
    db $10
    ldh a, [$c0]
    rst $38
    jr nz, jr_0fd_72c3

    nop
    rst $38
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0fd_7400:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0fd_7700:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
