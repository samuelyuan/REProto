SECTION "ROM Bank $0fa", ROMX[$4000], BANK[$fa]

    ld e, e
    ld c, a
    ld a, [$67b6]
    ret


    ld [hl], $41
    ret


    and c
    ld b, c
    ret


    pop de
    ld b, c
    ret


    ld c, b
    ld b, d
    ret


    ld e, c
    ld b, d
    ret


    ld [hl], a
    ld b, d
    ret


    adc l
    ld b, d
    ret


    xor l
    ld b, d
    ret


    call $c942
    db $f4
    ld b, d
    ret


    ld e, $43
    ret


    ld c, d
    ld b, e
    ret


    ld h, c
    ld b, e
    ret


    call nz, $c943
    ld [hl], $44
    ret


    ld d, [hl]
    ld b, h
    ret


    ld [hl], d
    ld b, h
    ret


    adc h
    ld b, h
    ret


    or b
    ld b, h
    ret


    pop de
    ld b, h
    ret


    cp $44
    ret


    ld sp, $c945
    ld d, e
    ld b, [hl]
    ret


    add h
    ld b, [hl]
    ret


    sbc e
    ld c, b
    ret


    and a
    ld c, b
    ret


    rst $08
    ld c, b
    ret


    inc c
    ld c, c
    ret


    inc sp
    ld c, c
    ret


    ld e, c
    ld c, c
    ret


    db $76
    ld c, c
    ret


    sub b
    ld c, c
    ret


    xor b
    ld c, c
    ret


    jp $c949


    add sp, $49
    ret


    ei
    ld c, c
    ret


    ld a, $4a
    ret


    sub d
    ld c, d
    ret


    call c, $c94a
    ld [de], a
    ld c, e
    ret


    ld b, e
    ld c, e
    ret


    ld l, c
    ld c, e
    ret


    db $ed
    ld c, e
    ret


    ld [hl], h
    ld c, h
    ret


    ld sp, $c951
    ld [hl], l
    ld c, l
    ret


    ld sp, $c94e
    dec sp
    ld c, [hl]
    ret


    db $e3
    ld c, a
    ret


    db $ed
    ld c, a
    ret


    ld h, a
    ld d, b
    ret


    dec hl
    ld d, h
    ret


    ld e, e
    ld d, h
    ret


    ld [hl], d
    ld d, h
    ret


    sbc d
    ld d, h
    ret


    rst $00
    ld d, h
    ret


    ld a, [$c954]
    add hl, de
    ld d, l
    ret


    inc [hl]
    ld d, l
    ret


    jp c, $c957

    db $f4
    ld d, a
    ret


    ld e, b
    ld e, b
    ret


    adc d
    ld e, b
    ret


    xor h
    ld e, b
    ret


    db $eb
    ld e, b
    ret


    inc e
    ld e, c
    ret


    ld c, h
    ld e, c
    ret


    add l
    ld e, c
    ret


    or d
    ld e, c
    ret


    call nc, $c959
    dec d
    ld e, d
    ret


    jp nc, $c95a

    and $5a
    ret


    add hl, de
    ld e, e
    ret


    jr nc, jr_0fa_4141

    ret


    cp [hl]
    ld e, h
    ret


    call c, $c95c
    ld [$c95d], sp
    dec [hl]
    ld e, l
    ret


    ld e, [hl]
    ld e, [hl]
    ret


    adc d
    ld e, [hl]
    ret


    or a
    ld e, [hl]
    ret


    call nz, $c95e
    cp a
    ld e, a
    ret


    di
    ld e, a
    ret


    ld h, e
    ld h, b
    ret


    ld sp, $c961
    ld b, h
    ld h, c
    ret


    ld h, d
    ld h, c
    ret


    adc c
    ld h, d
    ret


    cp h
    ld h, d
    ret


    db $dd
    ld h, d
    ret


    add hl, bc
    ld h, e
    ret


    ld h, $63
    ret


    ld b, e
    ld h, e
    ret


    ld h, b
    ld h, e
    ret


    adc h
    ld h, e
    ret


    cp l
    ld h, e
    ret


    rst $28
    ld h, e
    ret


    inc de
    ld h, h
    ret


    xor c
    ld h, h
    ret


    rst $18
    ld h, h
    ret


    ld c, [hl]
    ld h, l
    ret


    rrca
    ld h, [hl]
    ret


    inc l
    ld h, [hl]
    ret


jr_0fa_4141:
    ld e, h
    ld h, [hl]
    ret


    ld a, a
    ld h, [hl]
    ret


    rst $20
    ld h, [hl]
    ret


    ld sp, hl
    ld h, [hl]
    ret


    ld bc, $c967
    inc c
    ld h, a
    ret


    jr nz, @+$69

    ret


    inc [hl]
    ld h, a
    ret


    ld c, b
    ld h, a
    ret


    ld e, h
    ld h, a
    ret


    ld l, d
    ld h, a
    ret


    db $76
    ld h, a
    ret


    add d
    ld h, a
    ret


    adc [hl]
    ld h, a
    ret


    and d
    ld h, a
    ret


    inc b
    ld l, l
    ld sp, hl
    cp c
    ld l, l
    ld sp, hl
    ld b, h
    ld l, [hl]
    ld sp, hl
    adc [hl]
    ld l, [hl]
    ld sp, hl
    or [hl]
    ld l, [hl]
    ld sp, hl
    ld l, e
    ld l, a
    ld sp, hl
    sub e
    ld l, a
    ld sp, hl
    sub l
    ld [hl], b
    ld sp, hl
    xor l
    ld [hl], b
    ld sp, hl
    pop hl
    ld [hl], b
    ld sp, hl
    rlca
    ld [hl], c
    ld sp, hl
    ld d, h
    ld b, b
    ld hl, sp+$70
    ld b, b
    ld hl, sp-$77
    ld b, b
    ld hl, sp-$53
    ld b, b
    ld hl, sp-$4d
    ld b, b
    ld hl, sp-$3e
    ld b, b
    ld hl, sp-$2b
    ld b, b
    ld hl, sp+$16
    ld b, c
    ld hl, sp+$1d
    ld b, c
    ld hl, sp+$28
    ld b, c
    ld hl, sp+$4e
    ld b, c
    ld hl, sp+$5f
    ld b, c
    ld hl, sp-$7f
    ld b, c
    ld hl, sp-$6c
    ld b, c
    ld hl, sp-$37
    ld b, c
    ld hl, sp-$15
    ld b, c
    ld hl, sp+$10
    ld b, d
    ld hl, sp+$7b
    ld b, d
    ld hl, sp-$58
    ld b, d
    ld hl, sp-$26
    ld b, d
    ld hl, sp+$40
    ld b, e
    ld hl, sp-$66
    ld b, e
    ld hl, sp-$5a
    ld b, e
    ld hl, sp-$45
    ld b, e
    ld hl, sp+$2a
    ld b, h
    ld hl, sp+$46
    ld b, h
    ld hl, sp+$62
    ld b, h
    ld hl, sp-$4c
    ld b, h
    ld hl, sp-$14
    ld b, h
    ld hl, sp+$61
    ld b, l
    ld hl, sp-$7b
    ld b, l
    ld hl, sp-$6b
    ld b, l
    ld hl, sp-$55
    ld b, l
    ld hl, sp-$33
    ld b, l
    ld hl, sp-$24
    ld b, l
    ld hl, sp-$10
    ld b, l
    ld hl, sp+$14
    ld b, [hl]
    ld hl, sp+$37
    ld b, [hl]
    ld hl, sp+$51
    ld b, [hl]
    ld hl, sp+$5d
    ld b, [hl]
    ld hl, sp+$6c
    ld b, [hl]
    ld hl, sp+$7a
    ld b, [hl]
    ld hl, sp-$71
    ld b, [hl]
    ld hl, sp-$61
    ld b, [hl]
    ld hl, sp-$4b
    ld b, [hl]
    ld hl, sp-$33
    ld b, [hl]
    ld hl, sp-$1e
    ld b, [hl]
    ld hl, sp+$14
    ld b, a
    ld hl, sp+$31
    ld b, a
    ld hl, sp-$79
    ld b, a
    ld hl, sp-$57
    ld b, a
    ld hl, sp-$46
    ld b, a
    ld hl, sp-$32
    ld b, a
    ld hl, sp-$12
    ld b, a
    ld hl, sp+$0d
    ld c, b
    ld hl, sp+$20
    ld c, b
    ld hl, sp+$2d
    ld c, b
    ld hl, sp+$40
    ld c, b
    ld hl, sp+$56
    ld c, b
    ld hl, sp-$73
    ld c, b
    ld hl, sp-$5b
    ld c, b
    ld hl, sp-$4e
    ld c, b
    ld hl, sp-$3b
    ld c, b
    ld hl, sp-$24
    ld c, b
    ld hl, sp-$17
    ld c, b
    ld hl, sp+$36
    ld c, c
    ld hl, sp+$56
    ld c, c
    ld hl, sp+$62
    ld c, c
    ld hl, sp+$70
    ld c, c
    ld hl, sp-$75
    ld c, c
    ld hl, sp-$5b
    ld c, c
    ld hl, sp-$4e
    ld c, c
    ld hl, sp-$1e
    ld c, c
    ld hl, sp+$06
    ld c, d
    ld hl, sp+$0e
    ld c, d
    ld hl, sp+$58
    ld c, d
    ld hl, sp+$6d
    ld c, d
    ld hl, sp+$76
    ld c, d
    ld hl, sp-$54
    ld c, d
    ld hl, sp-$44
    ld c, d
    ld hl, sp+$02
    ld c, e
    ld hl, sp+$61
    ld c, e
    ld hl, sp-$73
    ld c, e
    ld hl, sp+$04
    ld c, h
    ld hl, sp+$65
    ld c, h
    ld hl, sp-$7f
    ld c, h
    ld hl, sp-$28
    ld c, h
    ld hl, sp+$12
    ld c, l
    ld hl, sp+$2b
    ld c, l
    ld hl, sp+$41
    ld c, l
    ld hl, sp+$69
    ld c, l
    ld hl, sp-$62
    ld c, l
    ld hl, sp-$22
    ld c, l
    ld hl, sp-$10
    ld c, l
    ld hl, sp-$04
    ld c, l
    ld hl, sp+$2d
    ld c, [hl]
    ld hl, sp+$5d
    ld c, [hl]
    ld hl, sp-$2f
    ld c, [hl]
    ld hl, sp-$03
    ld c, [hl]
    ld hl, sp+$49
    ld c, a
    ld hl, sp+$5c
    ld c, a
    ld hl, sp+$66
    ld c, a
    ld hl, sp+$6d
    ld c, a
    ld hl, sp-$71
    ld c, a
    ld hl, sp-$42
    ld c, a
    ld hl, sp+$12
    ld d, b
    ld hl, sp+$60
    ld d, b
    ld hl, sp+$7a
    ld d, b
    ld hl, sp-$61
    ld d, b
    ld hl, sp-$53
    ld d, b
    ld hl, sp+$0e
    ld d, c
    ld hl, sp+$28
    ld d, c
    ld hl, sp+$35
    ld d, c
    ld hl, sp+$55
    ld d, c
    ld hl, sp+$5b
    ld d, c
    ld hl, sp+$6b
    ld d, c
    ld hl, sp-$37
    ld d, c
    ld hl, sp-$06
    ld d, c
    ld hl, sp+$15
    ld d, d
    ld hl, sp+$25
    ld d, d
    ld hl, sp-$4c
    ld d, d
    ld hl, sp-$48
    ld d, d
    ld hl, sp+$0f
    ld d, e
    ld hl, sp+$24
    ld d, e
    ld hl, sp+$52
    ld d, e
    ld hl, sp+$61
    ld d, e
    ld hl, sp+$7d
    ld d, e
    ld hl, sp-$4a
    ld d, e
    ld hl, sp-$43
    ld d, e
    ld hl, sp-$18
    ld d, e
    ld hl, sp+$35
    ld d, h
    ld hl, sp+$4d
    ld d, h
    ld hl, sp-$6c
    ld d, h
    ld hl, sp-$3b
    ld d, h
    ld hl, sp-$12
    ld d, h
    ld hl, sp+$12
    ld d, l
    ld hl, sp+$4f
    ld d, l
    ld hl, sp+$70
    ld d, l
    ld hl, sp+$79
    ld d, l
    ld hl, sp-$49
    ld d, l
    ld hl, sp-$17
    ld d, l
    ld hl, sp-$09
    ld d, l
    ld hl, sp+$17
    ld d, [hl]
    ld hl, sp+$41
    ld d, [hl]
    ld hl, sp-$68
    ld d, [hl]
    ld hl, sp-$06
    ld d, [hl]
    ld hl, sp+$42
    ld d, a
    ld hl, sp+$60
    ld d, a
    ld hl, sp+$75
    ld d, a
    ld hl, sp-$7a
    ld d, a
    ld hl, sp-$73
    ld d, a
    ld hl, sp-$50
    ld d, a
    ld hl, sp-$3c
    ld d, a
    ld hl, sp-$10
    ld d, a
    ld hl, sp-$75
    ld e, b
    ld hl, sp-$67
    ld e, b
    ld hl, sp-$39
    ld e, b
    ld hl, sp+$01
    ld e, c
    ld hl, sp+$10
    ld e, c
    ld hl, sp+$2b
    ld e, c
    ld hl, sp+$31
    ld e, c
    ld hl, sp+$40
    ld e, c
    ld hl, sp+$69
    ld e, c
    ld hl, sp+$79
    ld e, c
    ld hl, sp-$7d
    ld e, c
    ld hl, sp-$5e
    ld e, c
    ld hl, sp-$46
    ld e, c
    ld hl, sp-$17
    ld e, c
    ld hl, sp+$1d
    ld e, d
    ld hl, sp+$24
    ld e, d
    ld hl, sp+$2e
    ld e, d
    ld hl, sp+$59
    ld e, d
    ld hl, sp+$6e
    ld e, d
    ld hl, sp+$7d
    ld e, d
    ld hl, sp-$5d
    ld e, d
    ld hl, sp-$55
    ld e, d
    ld hl, sp-$21
    ld e, d
    ld hl, sp+$1b
    ld e, e
    ld hl, sp+$4c
    ld e, e
    ld hl, sp-$7c
    ld e, e
    ld hl, sp-$66
    ld e, e
    ld hl, sp-$47
    ld e, e
    ld hl, sp-$24
    ld e, e
    ld hl, sp-$1a
    ld e, e
    ld hl, sp+$09
    ld e, h
    ld hl, sp+$6a
    ld e, h
    ld hl, sp-$34
    ld e, h
    ld hl, sp-$68
    ld e, l
    ld hl, sp-$10
    ld e, l
    ld hl, sp+$06
    ld e, [hl]
    ld hl, sp+$77
    ld e, [hl]
    ld hl, sp+$09
    ld e, a
    ld hl, sp+$3f
    ld e, a
    ld hl, sp+$7f
    ld e, a
    ld hl, sp-$79
    ld e, a
    ld hl, sp-$64
    ld e, a
    ld hl, sp-$51
    ld e, a
    ld hl, sp-$2c
    ld e, a
    ld hl, sp+$4e
    ld h, b
    ld hl, sp-$2e
    ld h, b
    ld hl, sp+$33
    ld h, d
    ld hl, sp+$45
    ld h, d
    ld hl, sp+$5c
    ld h, d
    ld hl, sp-$1d
    ld h, d
    ld hl, sp-$16
    ld h, d
    ld hl, sp-$10
    ld h, d
    ld hl, sp+$07
    ld h, e
    ld hl, sp+$4e
    ld h, e
    ld hl, sp+$5d
    ld h, e
    ld hl, sp-$70
    ld h, e
    ld hl, sp-$39
    ld h, e
    ld hl, sp+$27
    ld h, h
    ld hl, sp+$39
    ld h, h
    ld hl, sp-$7f
    ld h, h
    ld hl, sp+$07
    ld h, l
    ld hl, sp-$66
    ld h, l
    ld hl, sp-$05
    ld h, l
    ld hl, sp+$35
    ld h, [hl]
    ld hl, sp+$3d
    ld h, [hl]
    ld hl, sp+$4f
    ld h, [hl]
    ld hl, sp+$58
    ld h, [hl]
    ld hl, sp-$7f
    ld h, [hl]
    ld hl, sp-$5a
    ld h, [hl]
    ld hl, sp-$4e
    ld h, [hl]
    ld hl, sp-$41
    ld h, [hl]
    ld hl, sp-$0a
    ld h, [hl]
    ld hl, sp-$02
    ld h, [hl]
    ld hl, sp+$07
    ld h, a
    ld hl, sp+$1f
    ld h, a
    ld hl, sp+$5c
    ld h, a
    ld hl, sp-$5f
    ld h, a
    ld hl, sp-$3a
    ld h, a
    ld hl, sp-$33
    ld h, a
    ld hl, sp-$13
    ld h, a
    ld hl, sp+$00
    ld l, b
    ld hl, sp+$05
    ld l, b
    ld hl, sp+$42
    ld l, b
    ld hl, sp+$49
    ld l, b
    ld hl, sp+$63
    ld l, b
    ld hl, sp-$4b
    ld l, b
    ld hl, sp-$39
    ld l, b
    ld hl, sp-$29
    ld l, b
    ld hl, sp+$6a
    ld l, c
    ld hl, sp-$56
    ld l, c
    ld hl, sp-$1f
    ld l, c
    ld hl, sp+$21
    ld l, d
    ld hl, sp-$26
    ld l, d
    ld hl, sp-$04
    ld l, d
    ld hl, sp+$04
    ld l, e
    ld hl, sp+$1e
    ld l, e
    ld hl, sp+$41
    ld l, e
    ld hl, sp-$40
    ld l, e
    ld hl, sp-$08
    ld l, e
    ld hl, sp+$24
    ld l, h
    ld hl, sp+$41
    ld l, h
    ld hl, sp+$5b
    ld l, h
    ld hl, sp-$79
    ld l, h
    ld hl, sp-$75
    ld l, h
    ld hl, sp-$6f
    ld l, h
    ld hl, sp-$42
    ld l, h
    ld hl, sp-$2b
    ld l, h
    ld hl, sp-$15
    ld l, h
    ld hl, sp+$00
    ld l, l
    ld hl, sp+$12
    ld l, l
    ld hl, sp+$4b
    ld l, l
    ld hl, sp+$7a
    ld l, l
    ld hl, sp-$1d
    ld l, l
    ld hl, sp+$12
    ld l, [hl]
    ld hl, sp+$2d
    ld l, [hl]
    ld hl, sp+$41
    ld l, [hl]
    ld hl, sp-$27
    ld l, [hl]
    ld hl, sp-$14
    ld l, [hl]
    ld hl, sp+$52
    ld l, a
    ld hl, sp+$74
    ld l, a
    ld hl, sp+$23
    ld [hl], b
    ld hl, sp-$58
    ld [hl], b
    ld hl, sp+$79
    ld [hl], c
    ld hl, sp-$5c
    ld [hl], c
    ld hl, sp-$16
    ld [hl], c
    ld hl, sp+$15
    ld [hl], e
    ld hl, sp+$3c
    ld [hl], e
    ld hl, sp-$45
    ld [hl], e
    ld hl, sp-$2d
    ld [hl], e
    ld hl, sp+$00
    ld [hl], h
    ld hl, sp+$07
    ld [hl], h
    ld hl, sp+$16
    ld [hl], h
    ld hl, sp-$48
    ld [hl], h
    ld hl, sp-$22
    ld [hl], h
    ld hl, sp+$2f
    ld [hl], l
    ld hl, sp-$7e
    ld [hl], l
    ld hl, sp-$0d
    ld [hl], l
    ld hl, sp+$19
    db $76
    ld hl, sp+$36
    db $76
    ld hl, sp-$7e
    db $76
    ld hl, sp-$59
    db $76
    ld hl, sp-$3a
    db $76
    ld hl, sp+$0a
    ld [hl], a
    ld hl, sp+$29
    ld [hl], a
    ld hl, sp+$51
    ld [hl], a
    ld hl, sp+$6b
    ld [hl], a
    ld hl, sp-$5d
    ld [hl], a
    ld hl, sp-$52
    ld [hl], a
    ld hl, sp-$38
    ld [hl], a
    ld hl, sp+$09
    ld a, b
    ld hl, sp+$12
    ld a, b
    ld hl, sp+$32
    ld a, b
    ld hl, sp+$4a
    ld a, b
    ld hl, sp+$6c
    ld a, b
    ld hl, sp-$7b
    ld a, b
    ld hl, sp-$47
    ld a, b
    ld hl, sp-$3e
    ld a, b
    ld hl, sp+$35
    ld a, c
    ld hl, sp-$3d
    ld a, c
    ld hl, sp+$2d
    ld a, d
    ld hl, sp+$51
    ld a, d
    ld hl, sp+$5a
    ld a, d
    ld hl, sp+$61
    ld a, d
    ld hl, sp+$78
    ld a, d
    ld hl, sp-$5e
    ld a, d
    ld hl, sp-$46
    ld a, d
    ld hl, sp+$02
    ld a, e
    ld hl, sp+$0c
    ld a, e
    ld hl, sp+$19
    ld a, e
    ld hl, sp+$69
    ld a, e
    ld hl, sp+$75
    ld a, e
    ld hl, sp-$7f
    ld a, e
    ld hl, sp-$6e
    ld a, e
    ld hl, sp-$43
    ld a, e
    ld hl, sp-$20
    ld a, e
    ld hl, sp+$1f
    ld a, h
    ld hl, sp+$60
    ld a, h
    ld hl, sp+$66
    ld a, h
    ld hl, sp+$7c
    ld a, h
    ld hl, sp-$42
    ld a, h
    ld hl, sp-$33
    ld a, h
    ld hl, sp-$0a
    ld a, h
    ld hl, sp+$07
    ld a, l
    ld hl, sp+$2f
    ld a, l
    ld hl, sp+$4d
    ld a, l
    ld hl, sp+$7d
    ld a, l
    ld hl, sp-$06
    ld e, c
    ld e, $5a
    ccf
    ld e, d
    ld b, a
    ld e, d
    ld h, h
    ld e, d
    add e
    ld e, d
    db $ec
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    ld e, d
    ld c, l
    sbc a
    ld e, l
    rst $00
    ld d, [hl]
    sbc a
    ld h, h
    or d
    ld c, h
    ret nz

    ld e, l
    and [hl]
    ld d, l
    sbc a
    ld h, h
    inc de
    ld c, a
    rla
    ld e, h
    or [hl]
    ld e, c
    sbc a
    ld h, h
    db $e4
    ld c, d
    dec h
    ld e, a
    adc [hl]
    ld d, d
    sbc a
    ld h, h
    db $ed
    ld c, l
    ld d, b
    ld h, c
    ret


    ld d, a
    sbc a
    ld h, h
    db $ec
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    ld b, $4d
    ld e, a
    ld e, l
    jr c, jr_0fa_462b

    sbc a
    ld h, h
    ld a, [bc]
    ld c, h
    sub a
    ld h, b
    add b
    ld d, h
    sbc a
    ld h, h
    ldh [rWX], a
    ld d, b
    ld h, b
    ld a, $54
    sbc a
    ld h, h
    ld sp, hl
    ld c, d
    ld b, a
    ld e, a
    or h
    ld d, d
    sbc a
    ld h, h
    db $fd
    ld c, c
    inc l
    ld h, d
    or $50
    sbc a
    ld h, h
    rst $08
    ld c, d
    ld b, $5f
    ld l, b
    ld d, d
    sbc a
    ld h, h
    adc b
    ld c, h
    ld d, c
    ld h, e
    ld e, h
    ld d, l
    sbc a
    ld h, h
    xor c
    ld c, c
    or h
    ld h, b
    ld h, e
    ld d, b
    sbc a
    ld h, h
    ld c, c
    ld c, h
    ld b, $63
    rst $28
    ld d, h
    sbc a
    ld h, h
    ld [bc], a
    ld c, [hl]
    ld l, l
    ld h, c
    jp hl


    ld d, a
    sbc a
    ld h, h
    db $ec
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    cp d
    ld c, d
    ld b, $5f

jr_0fa_462b:
    ld b, d
    ld d, d
    sbc a
    ld h, h
    pop af
    ld c, h
    ld e, a
    ld e, l
    inc d
    ld d, [hl]
    sbc a
    ld h, h
    ld c, l
    ld c, e
    sbc e
    ld e, a
    ld b, l
    ld d, e
    sbc a
    ld h, h
    ld c, c
    ld c, h
    ld b, $63
    rst $28
    ld d, h
    sbc a
    ld h, h
    rla
    ld c, [hl]
    ld l, l
    ld h, c
    inc c
    ld e, b
    sbc a
    ld h, h
    db $fd
    ld c, c
    inc b
    ld h, d
    or $50
    sbc a
    ld h, h
    ld [hl], a
    ld c, e
    ld d, c
    ld h, e
    adc b
    ld d, e
    sbc a
    ld h, h
    sub l
    ld c, [hl]
    adc a
    ld e, d
    db $db
    ld e, b
    sbc a
    ld h, h
    rra
    ld c, h
    sub a
    ld h, b
    and l
    ld d, h
    sbc a
    ld h, h
    ld c, c
    ld c, h
    ld b, $63
    rst $28
    ld d, h
    sbc a
    ld h, h
    add sp, $49
    db $dd
    ld h, b
    db $d3
    ld d, b
    sbc a
    ld h, h
    sub b
    ld c, d
    xor c
    ld e, [hl]
    or $51
    sbc a
    ld h, h
    daa
    ld c, d
    ld d, b
    ld e, [hl]
    ld b, b
    ld d, c
    sbc a
    ld h, h
    xor d
    ld c, [hl]
    ret nz

    ld e, d
    ld [bc], a
    ld e, c
    sbc a
    ld h, h
    ld c, l
    ld c, e
    sbc e
    ld e, a
    ld b, l
    ld d, e
    sbc a
    ld h, h
    inc l
    ld c, [hl]
    ld l, l
    ld h, c
    dec l
    ld e, b
    sbc a
    ld h, h
    db $d3
    ld c, c
    db $dd
    ld h, b
    xor a
    ld d, b
    sbc a
    ld h, h
    and l
    ld c, d
    sub $5e
    inc e
    ld d, d
    sbc a
    ld h, h
    pop af
    ld c, h
    ld e, a
    ld e, l
    inc d
    ld d, [hl]
    sbc a
    ld h, h
    jp hl


    ld c, [hl]
    cp l
    ld e, e
    ld l, c
    ld e, c
    sbc a
    ld h, h
    ld c, $4b
    ld d, c
    ld h, e
    reti


    ld d, d
    sbc a
    ld h, h
    ld d, l
    ld c, c
    ld l, d
    ld e, h
    call $9f4f
    ld h, h
    cp [hl]
    ld c, c
    db $dd
    ld h, b
    adc d
    ld d, b
    sbc a
    ld h, h
    ld h, [hl]
    ld c, d
    ld l, [hl]
    ld e, [hl]
    xor h
    ld d, c
    sbc a
    ld h, h
    adc b
    ld c, h
    ld d, c
    ld h, e
    ld e, h
    ld d, l
    sbc a
    ld h, h
    call nc, Call_000_174e
    ld e, h
    ld b, a
    ld e, c
    sbc a
    ld h, h
    ld l, d
    ld c, c
    adc e
    ld e, h
    db $f4
    ld c, a
    sbc a
    ld h, h
    dec hl
    ld c, c
    ld l, d
    ld e, h
    ld a, h
    ld c, a
    sbc a
    ld h, h
    ret c

    ld c, l
    inc l
    ld h, c
    and d
    ld d, a
    sbc a
    ld h, h
    call c, Call_0fa_484c
    ld e, l
    rst $28
    ld d, l
    sbc a
    ld h, h
    adc b
    ld c, h
    ld d, c
    ld h, e
    ld e, h
    ld d, l
    sbc a
    ld h, h
    inc [hl]
    ld c, h
    ret nc

    ld h, d
    push bc
    ld d, h
    sbc a
    ld h, h
    ld h, d
    ld c, e
    cp b
    ld e, a
    ld h, a
    ld d, e
    sbc a
    ld h, h
    ld b, b
    ld c, c
    ld l, d
    ld e, h
    and a
    ld c, a
    sbc a
    ld h, h
    push af
    ld c, e
    ld h, h
    ld h, b
    ld h, b
    ld d, h
    sbc a
    ld h, h
    ld a, e
    ld c, d
    adc b
    ld e, [hl]
    ret nc

    ld d, c
    sbc a
    ld h, h
    ld l, a
    ld c, l
    ld d, c
    ld h, e
    db $ed
    ld d, [hl]
    sbc a
    ld h, h
    cp a
    ld c, [hl]
    di
    ld e, d
    dec h
    ld e, c
    sbc a
    ld h, h
    ld [de], a
    ld c, d
    rrca
    ld h, c
    dec de
    ld d, c
    sbc a
    ld h, h
    or [hl]
    ld c, e
    ld [hl+], a
    ld h, b
    db $f4
    ld d, e
    sbc a
    ld h, h
    db $ec
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    ld d, c
    ld c, d
    ld l, [hl]
    ld e, [hl]
    add a
    ld d, c
    sbc a
    ld h, h
    dec de
    ld c, l
    ld d, c
    ld h, e
    ld e, e
    ld d, [hl]
    sbc a
    ld h, h
    pop af
    ld c, h
    ld e, a
    ld e, l
    inc d
    ld d, [hl]
    sbc a
    ld h, h
    ld d, $49
    ld d, d
    ld e, h
    ld e, e
    ld c, a
    sbc a
    ld h, h
    and c
    ld c, e
    inc c
    ld h, b
    ret nc

    ld d, e
    sbc a
    ld h, h
    db $ec
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    cp $4e
    jp hl


    ld e, e
    adc a
    ld e, c
    sbc a
    ld h, h
    sbc l
    ld c, h
    inc b
    ld e, l
    add d
    ld d, l
    sbc a
    ld h, h
    ld bc, $3f49
    ld e, h
    inc a
    ld c, a
    sbc a
    ld h, h
    rst $00
    ld c, h
    ld sp, $ca5d
    ld d, l
    sbc a
    ld h, h
    bit 1, e
    add hl, sp
    ld h, b
    add hl, de
    ld d, h
    sbc a
    ld h, h
    jr z, @+$51

    db $ec
    ld c, b
    call c, $9f59
    ld h, h
    ld e, [hl]
    ld c, h
    ld h, $63
    ld de, $9f55
    ld h, h
    jr z, jr_0fa_4828

    db $ec
    ld c, b
    call c, $9f59
    ld h, h
    db $ec
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    ld [hl], e
    ld c, h
    db $ec
    ld c, b
    ld [hl], $55
    sbc a
    ld h, h
    db $ec
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    db $ec
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    pop af
    ld c, h
    ld e, a
    ld e, l
    inc d
    ld d, [hl]
    sbc a
    ld h, h
    pop af
    ld c, h
    ld e, a
    ld e, l
    inc d
    ld d, [hl]
    sbc a
    ld h, h
    jr z, jr_0fa_4860

    db $ec
    ld c, b
    call c, $9f59
    ld h, h
    jr z, jr_0fa_4868

    db $ec
    ld c, b
    call c, $9f59
    ld h, h
    db $ec
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    db $ec

jr_0fa_4828:
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    db $ec
    ld c, b
    db $ec
    ld c, b
    db $ec
    ld c, b
    sbc a
    ld h, h
    ld h, d
    ld c, e
    cp b
    ld e, a
    ld h, a
    ld d, e
    sbc a
    ld h, h
    pop af
    ld c, h
    ld e, a
    ld e, l
    inc d
    ld d, [hl]
    sbc a
    ld h, h
    ld c, $4b
    ld d, c
    ld h, e
    reti


Call_0fa_484c:
    ld d, d
    sbc a
    ld h, h
    ld b, c
    ld c, [hl]
    ld l, l
    ld h, c
    ld d, b
    ld e, b
    sbc a
    ld h, h
    ld d, [hl]
    ld c, [hl]
    ld l, l
    ld h, c
    ld [hl], e
    ld e, b
    sbc a
    ld h, h
    ld l, e

jr_0fa_4860:
    ld c, [hl]
    ld l, l
    ld h, c
    sub [hl]
    ld e, b
    sbc a
    ld h, h
    add b

jr_0fa_4868:
    ld c, [hl]
    add b
    ld c, [hl]
    cp d
    ld e, b
    sbc a
    ld h, h
    dec de
    ld c, l
    ld d, c
    ld h, e
    ld e, e
    ld d, [hl]
    sbc a
    ld h, h
    nop
    ld b, b
    ld sp, hl
    sbc b
    ld b, h
    ld sp, hl
    dec sp
    ld b, l
    ld sp, hl
    ld l, b
    ld b, [hl]
    ld sp, hl
    sub e
    ld b, a
    ld sp, hl
    ld c, [hl]
    ld c, b
    ld sp, hl
    inc sp
    ld c, c
    ld sp, hl
    ld h, a
    ld c, d
    ld sp, hl
    add h
    ld c, e
    ld sp, hl
    adc b
    ld c, h
    ld sp, hl
    rst $38
    ld c, h
    ld sp, hl
    ld c, $4d
    ld sp, hl
    ld de, $f952
    ld b, [hl]
    ld d, h
    ld sp, hl
    ld l, e
    ld d, [hl]
    ld sp, hl
    add c
    ld e, b
    ld sp, hl
    rlca
    ld e, c
    ld sp, hl
    xor b
    ld e, c
    ld sp, hl
    jp c, $f959

    add h
    ld e, d
    ld sp, hl
    dec de
    ld e, e
    ld sp, hl
    ld [c], a
    ld e, e
    ld sp, hl
    ld [hl], a
    ld e, h
    ld sp, hl
    db $e3
    ld e, h
    ld sp, hl
    cpl
    ld e, l
    ld sp, hl
    rst $30
    ld h, b
    ld sp, hl
    db $eb
    ld h, d
    ld sp, hl
    ld c, b
    ld h, l
    ld sp, hl
    rst $38
    ld h, [hl]
    ld sp, hl
    or e
    ld l, d
    ld sp, hl
    rst $18
    ld l, d
    ld sp, hl
    ld h, b
    ld l, e
    ld sp, hl
    sub a
    ld l, e
    ld sp, hl
    ret


    ld l, e
    ld sp, hl
    db $10
    ld l, h
    ld sp, hl
    jr z, @+$6e

    ld sp, hl
    ld c, e
    ld l, h
    ld sp, hl
    add a
    ld l, h
    ld sp, hl
    pop hl
    ld l, h
    ld sp, hl
    ld c, [hl]
    ld c, a
    ld d, h
    ld c, b
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_0fa_4915

    jr nz, @+$22

    jr nz, jr_0fa_4919

    jr nz, jr_0fa_491b

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0fa_4902

    ld b, e

jr_0fa_4902:
    ld c, h
    ld c, c
    ld d, b
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0fa_492d

    jr nz, jr_0fa_492f

    jr nz, jr_0fa_4931

    jr nz, jr_0fa_4933

    jr nz, @+$22

jr_0fa_4915:
    ld bc, $4853
    ld b, l

jr_0fa_4919:
    ld c, h
    ld c, h

jr_0fa_491b:
    ld d, e
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0fa_4942

    jr nz, jr_0fa_4944

    jr nz, jr_0fa_4946

    jr nz, jr_0fa_4948

    jr nz, jr_0fa_494a

    ld bc, $5845

jr_0fa_492d:
    ld d, b
    ld c, h

jr_0fa_492f:
    ld c, a
    ld d, e

jr_0fa_4931:
    ld c, c
    ld d, [hl]

jr_0fa_4933:
    ld b, l
    jr nz, jr_0fa_4988

    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    ld d, e
    jr nz, jr_0fa_495d

    jr nz, jr_0fa_495f

    ld bc, $4341

jr_0fa_4942:
    ld c, c
    ld b, h

jr_0fa_4944:
    jr nz, jr_0fa_4998

jr_0fa_4946:
    ld c, a
    ld d, l

jr_0fa_4948:
    ld c, [hl]
    ld b, h

jr_0fa_494a:
    ld d, e
    jr nz, jr_0fa_496d

    jr nz, jr_0fa_496f

    jr nz, @+$22

    jr nz, jr_0fa_4973

    jr nz, jr_0fa_4956

    ld b, [hl]

jr_0fa_4956:
    ld c, h
    ld b, c
    ld c, l
    ld b, l
    jr nz, jr_0fa_49ae

    ld c, a

jr_0fa_495d:
    ld d, l
    ld c, [hl]

jr_0fa_495f:
    ld b, h
    ld d, e
    jr nz, jr_0fa_4983

    jr nz, jr_0fa_4985

    jr nz, jr_0fa_4987

    jr nz, jr_0fa_4989

    ld bc, $414d
    ld b, a

jr_0fa_496d:
    ld c, [hl]
    ld d, l

jr_0fa_496f:
    ld c, l
    jr nz, @+$54

    ld c, a

jr_0fa_4973:
    ld d, l
    ld c, [hl]
    ld b, h
    ld d, e
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0fa_4980

    ld b, h

jr_0fa_4980:
    ld d, l
    ld c, l
    ld b, h

jr_0fa_4983:
    ld d, l
    ld c, l

jr_0fa_4985:
    jr nz, jr_0fa_49d9

jr_0fa_4987:
    ld c, a

jr_0fa_4988:
    ld d, l

jr_0fa_4989:
    ld c, [hl]
    ld b, h
    ld d, e
    jr nz, jr_0fa_49ae

    jr nz, @+$22

    jr nz, jr_0fa_49b2

    jr nz, jr_0fa_4995

    ld b, [hl]

jr_0fa_4995:
    ld d, l
    ld b, l
    ld c, h

jr_0fa_4998:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0fa_49c0

    jr nz, jr_0fa_49c2

    jr nz, @+$22

    jr nz, jr_0fa_49c6

    jr nz, jr_0fa_49c8

    ld bc, $2e46
    dec l
    ld b, c
    ld c, c

jr_0fa_49ae:
    ld b, h
    jr nz, jr_0fa_4a04

    ld d, b

jr_0fa_49b2:
    ld d, d
    ld b, c
    ld e, c
    jr nz, jr_0fa_49d7

    jr nz, jr_0fa_49d9

    jr nz, jr_0fa_49db

    jr nz, @+$22

    ld bc, $5247

jr_0fa_49c0:
    ld b, l
    ld b, l

jr_0fa_49c2:
    ld c, [hl]
    jr nz, jr_0fa_4a0d

    ld b, l

jr_0fa_49c6:
    ld d, d
    ld b, d

jr_0fa_49c8:
    jr nz, jr_0fa_49ea

    jr nz, @+$22

    jr nz, jr_0fa_49ee

    jr nz, jr_0fa_49f0

    jr nz, jr_0fa_49f2

    ld bc, $4c42
    ld d, l
    ld b, l

jr_0fa_49d7:
    jr nz, @+$4a

jr_0fa_49d9:
    ld b, l
    ld d, d

jr_0fa_49db:
    ld b, d
    jr nz, @+$22

    jr nz, jr_0fa_4a00

    jr nz, jr_0fa_4a02

    jr nz, jr_0fa_4a04

    jr nz, jr_0fa_4a06

    jr nz, jr_0fa_49e9

    ld d, d

jr_0fa_49e9:
    ld b, l

jr_0fa_49ea:
    ld b, h
    jr nz, jr_0fa_4a35

    ld b, l

jr_0fa_49ee:
    ld d, d
    ld b, d

jr_0fa_49f0:
    jr nz, @+$22

jr_0fa_49f2:
    jr nz, jr_0fa_4a14

    jr nz, @+$22

    jr nz, jr_0fa_4a18

    jr nz, jr_0fa_4a1a

    jr nz, jr_0fa_4a1c

    ld bc, $494d
    ld e, b

jr_0fa_4a00:
    ld b, l
    ld b, h

jr_0fa_4a02:
    jr nz, @+$4a

jr_0fa_4a04:
    ld b, l
    ld d, d

jr_0fa_4a06:
    ld b, d
    jr nz, jr_0fa_4a29

    jr nz, jr_0fa_4a2b

    jr nz, jr_0fa_4a2d

jr_0fa_4a0d:
    jr nz, jr_0fa_4a2f

    jr nz, jr_0fa_4a31

    ld bc, $4e49

jr_0fa_4a14:
    ld c, e
    jr nz, jr_0fa_4a69

    ld c, c

jr_0fa_4a18:
    ld b, d
    ld b, d

jr_0fa_4a1a:
    ld c, a
    ld c, [hl]

jr_0fa_4a1c:
    jr nz, jr_0fa_4a3e

    jr nz, jr_0fa_4a40

    jr nz, jr_0fa_4a42

    jr nz, jr_0fa_4a44

    jr nz, @+$22

    ld bc, $4843

jr_0fa_4a29:
    ld b, l
    ld c, l

jr_0fa_4a2b:
    ld c, c
    ld b, e

jr_0fa_4a2d:
    ld b, c
    ld c, h

jr_0fa_4a2f:
    jr nz, jr_0fa_4a51

jr_0fa_4a31:
    jr nz, jr_0fa_4a53

    jr nz, jr_0fa_4a55

jr_0fa_4a35:
    jr nz, jr_0fa_4a57

    jr nz, jr_0fa_4a59

    jr nz, jr_0fa_4a5b

    ld bc, $4548

jr_0fa_4a3e:
    ld d, d
    ld b, d

jr_0fa_4a40:
    ld c, c
    ld b, e

jr_0fa_4a42:
    ld c, c
    ld b, h

jr_0fa_4a44:
    ld b, l
    jr nz, @+$22

    jr nz, jr_0fa_4a69

    jr nz, jr_0fa_4a6b

    jr nz, jr_0fa_4a6d

    jr nz, jr_0fa_4a6f

    jr nz, jr_0fa_4a52

jr_0fa_4a51:
    ld b, d

jr_0fa_4a52:
    ld c, h

jr_0fa_4a53:
    ld d, l
    ld b, l

jr_0fa_4a55:
    jr nz, jr_0fa_4aa1

jr_0fa_4a57:
    ld b, l
    ld d, a

jr_0fa_4a59:
    ld b, l
    ld c, h

jr_0fa_4a5b:
    jr nz, jr_0fa_4a7d

    jr nz, jr_0fa_4a7f

    jr nz, @+$22

    jr nz, jr_0fa_4a83

    jr nz, jr_0fa_4a85

    ld bc, $4552
    ld b, h

jr_0fa_4a69:
    jr nz, @+$4c

jr_0fa_4a6b:
    ld b, l
    ld d, a

jr_0fa_4a6d:
    ld b, l
    ld c, h

jr_0fa_4a6f:
    jr nz, jr_0fa_4a91

    jr nz, jr_0fa_4a93

    jr nz, @+$22

    jr nz, jr_0fa_4a97

    jr nz, jr_0fa_4a99

    jr nz, jr_0fa_4a7c

    ld d, e

jr_0fa_4a7c:
    ld c, b

jr_0fa_4a7d:
    ld b, l
    ld b, l

jr_0fa_4a7f:
    ld d, h
    jr nz, jr_0fa_4acf

    ld d, l

jr_0fa_4a83:
    ld d, e
    ld c, c

jr_0fa_4a85:
    ld b, e
    jr nz, jr_0fa_4aa8

    jr nz, @+$22

    jr nz, jr_0fa_4aac

    jr nz, jr_0fa_4aae

    jr nz, jr_0fa_4a91

    ld d, a

jr_0fa_4a91:
    ld c, a
    ld c, a

jr_0fa_4a93:
    ld b, h
    jr nz, @+$47

    ld c, l

jr_0fa_4a97:
    ld b, d
    ld c, h

jr_0fa_4a99:
    ld b, l
    ld c, l
    jr nz, jr_0fa_4abd

    jr nz, @+$22

    jr nz, jr_0fa_4ac1

jr_0fa_4aa1:
    jr nz, jr_0fa_4ac3

    jr nz, jr_0fa_4aa6

    ld b, a

jr_0fa_4aa6:
    ld c, a
    ld c, h

jr_0fa_4aa8:
    ld b, h
    jr nz, @+$47

    ld c, l

jr_0fa_4aac:
    ld b, d
    ld c, h

jr_0fa_4aae:
    ld b, l
    ld c, l
    jr nz, jr_0fa_4ad2

    jr nz, @+$22

    jr nz, jr_0fa_4ad6

    jr nz, jr_0fa_4ad8

    jr nz, jr_0fa_4abb

    ld b, h

jr_0fa_4abb:
    ld c, a
    ld c, a

jr_0fa_4abd:
    ld c, l
    jr nz, jr_0fa_4b02

    ld c, a

jr_0fa_4ac1:
    ld c, a
    ld c, e

jr_0fa_4ac3:
    jr nz, @+$33

    jr nz, jr_0fa_4ae7

    jr nz, jr_0fa_4ae9

    jr nz, jr_0fa_4aeb

    jr nz, jr_0fa_4aed

    jr nz, jr_0fa_4ad0

jr_0fa_4acf:
    ld b, h

jr_0fa_4ad0:
    ld c, a
    ld c, a

jr_0fa_4ad2:
    ld c, l
    jr nz, jr_0fa_4b17

    ld c, a

jr_0fa_4ad6:
    ld c, a
    ld c, e

jr_0fa_4ad8:
    jr nz, @+$34

    jr nz, jr_0fa_4afc

    jr nz, @+$22

    jr nz, jr_0fa_4b00

    jr nz, jr_0fa_4b02

    jr nz, jr_0fa_4ae5

    ld b, l

jr_0fa_4ae5:
    ld b, c
    ld b, a

jr_0fa_4ae7:
    ld c, h
    ld b, l

jr_0fa_4ae9:
    jr nz, @+$4f

jr_0fa_4aeb:
    ld b, l
    ld b, h

jr_0fa_4aed:
    ld b, c
    ld c, h
    jr nz, jr_0fa_4b11

    jr nz, jr_0fa_4b13

    jr nz, jr_0fa_4b15

    jr nz, jr_0fa_4b17

    jr nz, jr_0fa_4afa

    ld d, a

jr_0fa_4afa:
    ld c, a
    ld c, h

jr_0fa_4afc:
    ld b, [hl]
    jr nz, jr_0fa_4b4c

    ld b, l

jr_0fa_4b00:
    ld b, h
    ld b, c

jr_0fa_4b02:
    ld c, h
    jr nz, jr_0fa_4b25

    jr nz, jr_0fa_4b27

    jr nz, jr_0fa_4b29

    jr nz, jr_0fa_4b2b

    jr nz, jr_0fa_4b2d

    ld bc, $5243
    ld b, c

jr_0fa_4b11:
    ld c, [hl]
    ld c, e

jr_0fa_4b13:
    jr nz, jr_0fa_4b35

jr_0fa_4b15:
    jr nz, jr_0fa_4b37

jr_0fa_4b17:
    jr nz, @+$22

    jr nz, jr_0fa_4b3b

    jr nz, jr_0fa_4b3d

    jr nz, jr_0fa_4b3f

    jr nz, jr_0fa_4b41

    jr nz, jr_0fa_4b24

    ld d, e

jr_0fa_4b24:
    ld d, c

jr_0fa_4b25:
    ld d, l
    ld b, c

jr_0fa_4b27:
    ld d, d
    ld b, l

jr_0fa_4b29:
    jr nz, jr_0fa_4b6e

jr_0fa_4b2b:
    ld d, d
    ld b, c

jr_0fa_4b2d:
    ld c, [hl]
    ld c, e
    jr nz, jr_0fa_4b51

    jr nz, jr_0fa_4b53

    jr nz, @+$22

jr_0fa_4b35:
    jr nz, @+$22

jr_0fa_4b37:
    ld bc, $4548
    ld e, b

jr_0fa_4b3b:
    ld l, $20

jr_0fa_4b3d:
    ld b, e
    ld d, d

jr_0fa_4b3f:
    ld b, c
    ld c, [hl]

jr_0fa_4b41:
    ld c, e
    jr nz, jr_0fa_4b64

    jr nz, jr_0fa_4b66

    jr nz, jr_0fa_4b68

    jr nz, jr_0fa_4b6a

    jr nz, jr_0fa_4b6c

jr_0fa_4b4c:
    ld bc, $4142
    ld d, h
    ld d, h

jr_0fa_4b51:
    ld b, l
    ld d, d

jr_0fa_4b53:
    ld e, c
    jr nz, jr_0fa_4b76

    jr nz, @+$22

    jr nz, jr_0fa_4b7a

    jr nz, jr_0fa_4b7c

    jr nz, jr_0fa_4b7e

    jr nz, @+$22

    jr nz, jr_0fa_4b63

    ld d, e

jr_0fa_4b63:
    ld c, h

jr_0fa_4b64:
    ld c, c
    ld b, h

jr_0fa_4b66:
    ld b, l
    ld d, e

jr_0fa_4b68:
    jr nz, @+$22

jr_0fa_4b6a:
    jr nz, @+$22

jr_0fa_4b6c:
    jr nz, jr_0fa_4b8e

jr_0fa_4b6e:
    jr nz, jr_0fa_4b90

    jr nz, @+$22

    jr nz, jr_0fa_4b94

    jr nz, jr_0fa_4b96

jr_0fa_4b76:
    ld bc, $4552
    ld b, h

jr_0fa_4b7a:
    jr nz, jr_0fa_4bbe

jr_0fa_4b7c:
    ld c, a
    ld c, a

jr_0fa_4b7e:
    ld c, e
    jr nz, @+$22

    jr nz, jr_0fa_4ba3

    jr nz, @+$22

    jr nz, jr_0fa_4ba7

    jr nz, jr_0fa_4ba9

    jr nz, @+$22

    ld bc, $4c42

jr_0fa_4b8e:
    ld b, c
    ld c, [hl]

jr_0fa_4b90:
    ld c, e
    jr nz, jr_0fa_4bd5

    ld c, a

jr_0fa_4b94:
    ld c, a
    ld c, e

jr_0fa_4b96:
    jr nz, jr_0fa_4bb8

    jr nz, jr_0fa_4bba

    jr nz, jr_0fa_4bbc

    jr nz, jr_0fa_4bbe

    jr nz, jr_0fa_4bc0

    ld bc, $5553

jr_0fa_4ba3:
    ld c, [hl]
    jr nz, jr_0fa_4be9

    ld d, d

jr_0fa_4ba7:
    ld b, l
    ld d, e

jr_0fa_4ba9:
    ld d, h
    jr nz, @+$22

    jr nz, jr_0fa_4bce

    jr nz, @+$22

    jr nz, jr_0fa_4bd2

    jr nz, jr_0fa_4bd4

    jr nz, jr_0fa_4bb7

    ld c, l

jr_0fa_4bb7:
    ld c, a

jr_0fa_4bb8:
    ld c, a
    ld c, [hl]

jr_0fa_4bba:
    jr nz, @+$45

jr_0fa_4bbc:
    ld d, d
    ld b, l

jr_0fa_4bbe:
    ld d, e
    ld d, h

jr_0fa_4bc0:
    jr nz, jr_0fa_4be2

    jr nz, jr_0fa_4be4

    jr nz, jr_0fa_4be6

    jr nz, @+$22

    jr nz, @+$22

    ld bc, $5453
    ld b, c

jr_0fa_4bce:
    ld d, d
    jr nz, jr_0fa_4c14

    ld d, d

jr_0fa_4bd2:
    ld b, l
    ld d, e

jr_0fa_4bd4:
    ld d, h

jr_0fa_4bd5:
    jr nz, jr_0fa_4bf7

    jr nz, jr_0fa_4bf9

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld bc, $494c

jr_0fa_4be2:
    ld b, a
    ld c, b

jr_0fa_4be4:
    ld d, h
    ld b, l

jr_0fa_4be6:
    ld d, d
    jr nz, @+$22

jr_0fa_4be9:
    jr nz, jr_0fa_4c0b

    jr nz, jr_0fa_4c0d

    jr nz, jr_0fa_4c0f

    jr nz, jr_0fa_4c11

    jr nz, jr_0fa_4c13

    jr nz, jr_0fa_4bf6

    ld d, e

jr_0fa_4bf6:
    ld b, l

jr_0fa_4bf7:
    ld d, d
    ld d, l

jr_0fa_4bf9:
    ld c, l
    jr nz, jr_0fa_4c1c

    jr nz, jr_0fa_4c1e

    jr nz, @+$22

    jr nz, jr_0fa_4c22

    jr nz, jr_0fa_4c24

    jr nz, jr_0fa_4c26

    jr nz, jr_0fa_4c28

    jr nz, jr_0fa_4c0b

    ld b, e

jr_0fa_4c0b:
    ld c, a
    ld c, l

jr_0fa_4c0d:
    ld l, $20

jr_0fa_4c0f:
    ld d, d
    ld b, c

jr_0fa_4c11:
    ld b, h
    ld c, c

jr_0fa_4c13:
    ld c, a

jr_0fa_4c14:
    jr nz, jr_0fa_4c36

    jr nz, jr_0fa_4c38

    jr nz, jr_0fa_4c3a

    jr nz, jr_0fa_4c3c

jr_0fa_4c1c:
    jr nz, jr_0fa_4c3e

jr_0fa_4c1e:
    ld bc, $4c46
    ld b, c

jr_0fa_4c22:
    ld d, d
    ld b, l

jr_0fa_4c24:
    jr nz, jr_0fa_4c46

jr_0fa_4c26:
    jr nz, jr_0fa_4c48

jr_0fa_4c28:
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0fa_4c4e

    jr nz, jr_0fa_4c50

    jr nz, jr_0fa_4c52

    jr nz, jr_0fa_4c35

    ld b, d

jr_0fa_4c35:
    ld d, d

jr_0fa_4c36:
    ld c, a
    ld c, e

jr_0fa_4c38:
    ld b, l
    ld c, [hl]

jr_0fa_4c3a:
    jr nz, jr_0fa_4c8f

jr_0fa_4c3c:
    ld c, b
    ld c, a

jr_0fa_4c3e:
    ld d, h
    ld b, a
    ld d, l
    ld c, [hl]
    jr nz, jr_0fa_4c64

    jr nz, jr_0fa_4c66

jr_0fa_4c46:
    jr nz, jr_0fa_4c68

jr_0fa_4c48:
    ld bc, $4f4d
    jr nz, jr_0fa_4c91

    ld c, c

jr_0fa_4c4e:
    ld d, e
    ld c, e

jr_0fa_4c50:
    jr nz, jr_0fa_4c72

jr_0fa_4c52:
    jr nz, @+$22

    jr nz, jr_0fa_4c76

    jr nz, jr_0fa_4c78

    jr nz, @+$22

    jr nz, jr_0fa_4c7c

    jr nz, jr_0fa_4c5f

    ld d, a

jr_0fa_4c5f:
    ld c, c
    ld c, [hl]
    ld b, h
    jr nz, @+$45

jr_0fa_4c64:
    ld d, d
    ld b, l

jr_0fa_4c66:
    ld d, e
    ld d, h

jr_0fa_4c68:
    jr nz, jr_0fa_4c8a

    jr nz, jr_0fa_4c8c

    jr nz, jr_0fa_4c8e

    jr nz, @+$22

    jr nz, jr_0fa_4c92

jr_0fa_4c72:
    ld bc, $4f42
    ld d, h

jr_0fa_4c76:
    ld b, c
    ld c, [hl]

jr_0fa_4c78:
    ld e, c
    jr nz, jr_0fa_4cbd

    ld c, a

jr_0fa_4c7c:
    ld c, a
    ld c, e
    jr nz, jr_0fa_4ca0

    jr nz, jr_0fa_4ca2

    jr nz, jr_0fa_4ca4

    jr nz, jr_0fa_4ca6

    jr nz, jr_0fa_4c89

    ld c, l

jr_0fa_4c89:
    ld b, c

jr_0fa_4c8a:
    ld c, [hl]
    ld d, e

jr_0fa_4c8c:
    ld c, c
    ld c, a

jr_0fa_4c8e:
    ld c, [hl]

jr_0fa_4c8f:
    jr nz, @+$4d

jr_0fa_4c91:
    ld b, l

jr_0fa_4c92:
    ld e, c
    jr nz, jr_0fa_4cb5

    jr nz, jr_0fa_4cb7

    jr nz, jr_0fa_4cb9

    jr nz, jr_0fa_4cbb

    jr nz, jr_0fa_4c9e

    ld d, e

jr_0fa_4c9e:
    ld d, a
    ld c, a

jr_0fa_4ca0:
    ld d, d
    ld b, h

jr_0fa_4ca2:
    jr nz, @+$4d

jr_0fa_4ca4:
    ld b, l
    ld e, c

jr_0fa_4ca6:
    jr nz, jr_0fa_4cc8

    jr nz, jr_0fa_4cca

    jr nz, jr_0fa_4ccc

    jr nz, @+$22

    jr nz, jr_0fa_4cd0

    jr nz, jr_0fa_4cb3

    ld b, c

jr_0fa_4cb3:
    ld d, d
    ld c, l

jr_0fa_4cb5:
    ld c, a
    ld d, d

jr_0fa_4cb7:
    jr nz, jr_0fa_4d04

jr_0fa_4cb9:
    ld b, l
    ld e, c

jr_0fa_4cbb:
    jr nz, @+$22

jr_0fa_4cbd:
    jr nz, jr_0fa_4cdf

    jr nz, jr_0fa_4ce1

    jr nz, @+$22

    jr nz, jr_0fa_4ce5

    jr nz, jr_0fa_4cc8

    ld d, e

jr_0fa_4cc8:
    ld c, b
    ld c, c

jr_0fa_4cca:
    ld b, l
    ld c, h

jr_0fa_4ccc:
    ld b, h
    jr nz, jr_0fa_4d1a

    ld b, l

jr_0fa_4cd0:
    ld e, c
    jr nz, jr_0fa_4cf3

    jr nz, jr_0fa_4cf5

    jr nz, @+$22

    jr nz, jr_0fa_4cf9

    jr nz, @+$22

    ld bc, $4548
    ld c, h

jr_0fa_4cdf:
    ld c, l
    ld b, l

jr_0fa_4ce1:
    ld d, h
    jr nz, @+$4d

    ld b, l

jr_0fa_4ce5:
    ld e, c
    jr nz, jr_0fa_4d08

    jr nz, jr_0fa_4d0a

    jr nz, jr_0fa_4d0c

    jr nz, jr_0fa_4d0e

    jr nz, jr_0fa_4d10

    ld bc, $4d53

jr_0fa_4cf3:
    ld b, c
    ld c, h

jr_0fa_4cf5:
    ld c, h
    jr nz, jr_0fa_4d43

    ld b, l

jr_0fa_4cf9:
    ld e, c
    jr nz, @+$22

    jr nz, jr_0fa_4d1e

    jr nz, jr_0fa_4d20

    jr nz, jr_0fa_4d22

    jr nz, jr_0fa_4d24

jr_0fa_4d04:
    jr nz, jr_0fa_4d07

    ld b, h

jr_0fa_4d07:
    ld b, l

jr_0fa_4d08:
    ld d, e
    ld c, e

jr_0fa_4d0a:
    jr nz, @+$4d

jr_0fa_4d0c:
    ld b, l
    ld e, c

jr_0fa_4d0e:
    jr nz, jr_0fa_4d30

jr_0fa_4d10:
    jr nz, jr_0fa_4d32

    jr nz, @+$22

    jr nz, jr_0fa_4d36

    jr nz, @+$22

    jr nz, @+$22

jr_0fa_4d1a:
    ld bc, $4f44
    ld d, d

jr_0fa_4d1e:
    ld c, l
    ld c, c

jr_0fa_4d20:
    ld d, h
    ld c, a

jr_0fa_4d22:
    ld d, d
    ld e, c

jr_0fa_4d24:
    jr nz, jr_0fa_4d71

    ld b, l
    ld e, c
    jr nz, jr_0fa_4d4a

    jr nz, jr_0fa_4d4c

    jr nz, jr_0fa_4d4e

    jr nz, @+$03

jr_0fa_4d30:
    jr nc, @+$32

jr_0fa_4d32:
    ld [hl-], a
    jr nz, jr_0fa_4d80

    ld b, l

jr_0fa_4d36:
    ld e, c
    jr nz, @+$22

    jr nz, jr_0fa_4d5b

    jr nz, jr_0fa_4d5d

    jr nz, jr_0fa_4d5f

    jr nz, jr_0fa_4d61

    jr nz, jr_0fa_4d63

jr_0fa_4d43:
    jr nz, @+$03

    jr nc, @+$32

    inc sp
    jr nz, jr_0fa_4d95

jr_0fa_4d4a:
    ld b, l
    ld e, c

jr_0fa_4d4c:
    jr nz, @+$22

jr_0fa_4d4e:
    jr nz, jr_0fa_4d70

    jr nz, jr_0fa_4d72

    jr nz, jr_0fa_4d74

    jr nz, jr_0fa_4d76

    jr nz, jr_0fa_4d78

    jr nz, jr_0fa_4d5b

    ld b, e

jr_0fa_4d5b:
    ld l, $20

jr_0fa_4d5d:
    ld d, d
    ld c, a

jr_0fa_4d5f:
    ld c, a
    ld c, l

jr_0fa_4d61:
    jr nz, @+$4d

jr_0fa_4d63:
    ld b, l
    ld e, c
    jr nz, jr_0fa_4d87

    jr nz, jr_0fa_4d89

    jr nz, jr_0fa_4d8b

    jr nz, jr_0fa_4d8d

    jr nz, jr_0fa_4d70

    ld c, h

jr_0fa_4d70:
    ld b, c

jr_0fa_4d71:
    ld b, d

jr_0fa_4d72:
    jr nz, @+$4d

jr_0fa_4d74:
    ld b, l
    ld e, c

jr_0fa_4d76:
    jr nz, @+$22

jr_0fa_4d78:
    jr nz, jr_0fa_4d9a

    jr nz, jr_0fa_4d9c

    jr nz, jr_0fa_4d9e

    jr nz, @+$22

jr_0fa_4d80:
    jr nz, jr_0fa_4da2

    jr nz, jr_0fa_4d85

    ld d, b

jr_0fa_4d85:
    ld l, $20

jr_0fa_4d87:
    ld d, d
    ld c, a

jr_0fa_4d89:
    ld c, a
    ld c, l

jr_0fa_4d8b:
    jr nz, @+$4d

jr_0fa_4d8d:
    ld b, l
    ld e, c
    jr nz, jr_0fa_4db1

    jr nz, jr_0fa_4db3

    jr nz, jr_0fa_4db5

jr_0fa_4d95:
    jr nz, @+$22

    jr nz, jr_0fa_4d9a

    ld c, l

jr_0fa_4d9a:
    ld b, c
    ld d, e

jr_0fa_4d9c:
    ld d, h
    ld b, l

jr_0fa_4d9e:
    ld d, d
    jr nz, jr_0fa_4dec

    ld b, l

jr_0fa_4da2:
    ld e, c
    jr nz, jr_0fa_4dc5

    jr nz, jr_0fa_4dc7

    jr nz, jr_0fa_4dc9

    jr nz, jr_0fa_4dcb

    jr nz, jr_0fa_4dcd

    ld bc, $4f4c
    ld b, e

jr_0fa_4db1:
    ld c, e
    ld d, b

jr_0fa_4db3:
    ld c, c
    ld b, e

jr_0fa_4db5:
    ld c, e
    jr nz, @+$22

    jr nz, jr_0fa_4dda

    jr nz, jr_0fa_4ddc

    jr nz, @+$22

    jr nz, jr_0fa_4de0

    jr nz, jr_0fa_4de2

    ld bc, $4c43

jr_0fa_4dc5:
    ld c, a
    ld d, e

jr_0fa_4dc7:
    ld b, l
    ld d, h

jr_0fa_4dc9:
    jr nz, jr_0fa_4e16

jr_0fa_4dcb:
    ld b, l
    ld e, c

jr_0fa_4dcd:
    jr nz, jr_0fa_4def

    jr nz, jr_0fa_4df1

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld bc, $4d45

jr_0fa_4dda:
    ld d, b
    ld d, h

jr_0fa_4ddc:
    ld e, c
    jr nz, jr_0fa_4e21

    ld c, a

jr_0fa_4de0:
    ld d, h
    ld d, h

jr_0fa_4de2:
    ld c, h
    ld b, l
    jr nz, @+$22

    jr nz, jr_0fa_4e08

    jr nz, jr_0fa_4e0a

    jr nz, jr_0fa_4e0c

jr_0fa_4dec:
    ld bc, $4157

jr_0fa_4def:
    ld d, h
    ld b, l

jr_0fa_4df1:
    ld d, d
    jr nz, jr_0fa_4e14

    jr nz, jr_0fa_4e16

    jr nz, @+$22

    jr nz, jr_0fa_4e1a

    jr nz, jr_0fa_4e1c

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0fa_4e03

    ld d, l

jr_0fa_4e03:
    ld c, l
    ld b, d
    jr nz, @+$50

    ld l, a

jr_0fa_4e08:
    ld l, $32

jr_0fa_4e0a:
    jr nz, @+$22

jr_0fa_4e0c:
    jr nz, jr_0fa_4e2e

    jr nz, @+$22

    jr nz, jr_0fa_4e32

    jr nz, jr_0fa_4e34

jr_0fa_4e14:
    jr nz, jr_0fa_4e36

jr_0fa_4e16:
    ld bc, $504e
    dec l

jr_0fa_4e1a:
    jr nc, jr_0fa_4e4c

jr_0fa_4e1c:
    inc sp
    jr nz, @+$22

    jr nz, @+$22

jr_0fa_4e21:
    jr nz, jr_0fa_4e43

    jr nz, jr_0fa_4e45

    jr nz, jr_0fa_4e47

    jr nz, @+$22

    jr nz, @+$22

    ld bc, $4d55

jr_0fa_4e2e:
    ld b, d
    jr nz, @+$50

    ld l, a

jr_0fa_4e32:
    ld l, $34

jr_0fa_4e34:
    jr nz, jr_0fa_4e56

jr_0fa_4e36:
    jr nz, jr_0fa_4e58

    jr nz, @+$22

    jr nz, jr_0fa_4e5c

    jr nz, jr_0fa_4e5e

    jr nz, jr_0fa_4e60

    ld bc, $6559

jr_0fa_4e43:
    ld l, h
    ld l, h

jr_0fa_4e45:
    ld l, a
    ld [hl], a

jr_0fa_4e47:
    dec l
    ld [hl], $20
    jr nz, @+$22

jr_0fa_4e4c:
    jr nz, jr_0fa_4e6e

    jr nz, jr_0fa_4e70

    jr nz, @+$22

    jr nz, jr_0fa_4e74

    jr nz, jr_0fa_4e57

jr_0fa_4e56:
    ld d, l

jr_0fa_4e57:
    ld c, l

jr_0fa_4e58:
    ld b, d
    jr nz, jr_0fa_4ea9

    ld l, a

jr_0fa_4e5c:
    ld l, $37

jr_0fa_4e5e:
    jr nz, jr_0fa_4e80

jr_0fa_4e60:
    jr nz, jr_0fa_4e82

    jr nz, jr_0fa_4e84

    jr nz, jr_0fa_4e86

    jr nz, jr_0fa_4e88

    jr nz, jr_0fa_4e8a

    ld bc, $4d55
    ld b, d

jr_0fa_4e6e:
    jr nz, jr_0fa_4ebe

jr_0fa_4e70:
    ld l, a
    ld l, $31
    inc sp

jr_0fa_4e74:
    jr nz, @+$22

    jr nz, jr_0fa_4e98

    jr nz, jr_0fa_4e9a

    jr nz, @+$22

    jr nz, jr_0fa_4e9e

    jr nz, jr_0fa_4e81

jr_0fa_4e80:
    ld d, [hl]

jr_0fa_4e81:
    dec l

jr_0fa_4e82:
    ld c, d
    ld c, a

jr_0fa_4e84:
    ld c, h
    ld d, h

jr_0fa_4e86:
    jr nz, @+$22

jr_0fa_4e88:
    jr nz, @+$22

jr_0fa_4e8a:
    jr nz, jr_0fa_4eac

    jr nz, jr_0fa_4eae

    jr nz, jr_0fa_4eb0

    jr nz, jr_0fa_4eb2

    jr nz, jr_0fa_4eb4

    ld bc, $4f43
    ld c, l

jr_0fa_4e98:
    ld b, d
    ld b, c

jr_0fa_4e9a:
    ld d, h
    jr nz, @+$4d

    ld c, [hl]

jr_0fa_4e9e:
    ld c, c
    ld b, [hl]
    ld b, l
    jr nz, jr_0fa_4ec3

    jr nz, jr_0fa_4ec5

    jr nz, @+$22

    jr nz, @+$22

jr_0fa_4ea9:
    ld bc, $4542

jr_0fa_4eac:
    ld d, d
    ld d, d

jr_0fa_4eae:
    ld b, l
    ld d, h

jr_0fa_4eb0:
    ld d, h
    ld b, c

jr_0fa_4eb2:
    jr nz, jr_0fa_4ed4

jr_0fa_4eb4:
    jr nz, jr_0fa_4ed6

    jr nz, jr_0fa_4ed8

    jr nz, jr_0fa_4eda

    jr nz, @+$22

    jr nz, @+$22

jr_0fa_4ebe:
    ld bc, $4853
    ld c, a
    ld d, h

jr_0fa_4ec3:
    ld b, a
    ld d, l

jr_0fa_4ec5:
    ld c, [hl]
    jr nz, @+$22

    jr nz, jr_0fa_4eea

    jr nz, jr_0fa_4eec

    jr nz, @+$22

    jr nz, jr_0fa_4ef0

    jr nz, jr_0fa_4ef2

    jr nz, jr_0fa_4ed5

jr_0fa_4ed4:
    ld b, d

jr_0fa_4ed5:
    ld b, c

jr_0fa_4ed6:
    ld e, d
    ld c, a

jr_0fa_4ed8:
    ld c, a
    ld c, e

jr_0fa_4eda:
    ld b, c
    jr nz, @+$22

    jr nz, jr_0fa_4eff

    jr nz, jr_0fa_4f01

    jr nz, jr_0fa_4f03

    jr nz, jr_0fa_4f05

    jr nz, jr_0fa_4f07

    jr nz, jr_0fa_4eea

    ld b, e

jr_0fa_4eea:
    ld c, a
    ld c, h

jr_0fa_4eec:
    ld d, h
    jr nz, jr_0fa_4f3f

    ld e, c

jr_0fa_4ef0:
    ld d, h
    ld c, b

jr_0fa_4ef2:
    ld c, a
    ld c, [hl]
    jr nz, @+$22

    jr nz, jr_0fa_4f18

    jr nz, jr_0fa_4f1a

    jr nz, jr_0fa_4f1c

    jr nz, jr_0fa_4eff

    ld b, [hl]

jr_0fa_4eff:
    ld c, h
    ld b, c

jr_0fa_4f01:
    ld c, l
    ld b, l

jr_0fa_4f03:
    ld d, h
    ld c, b

jr_0fa_4f05:
    ld d, d
    ld c, a

jr_0fa_4f07:
    ld d, a
    ld b, l
    ld d, d
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld bc, $2e52
    jr nz, jr_0fa_4f63

    ld b, c

jr_0fa_4f18:
    ld d, l
    ld c, [hl]

jr_0fa_4f1a:
    ld b, e
    ld c, b

jr_0fa_4f1c:
    ld b, l
    ld d, d
    jr nz, jr_0fa_4f40

    jr nz, jr_0fa_4f42

    jr nz, jr_0fa_4f44

    jr nz, jr_0fa_4f46

    jr nz, jr_0fa_4f29

    ld c, l

jr_0fa_4f29:
    ld b, c
    ld d, b
    jr nz, jr_0fa_4f4d

    jr nz, jr_0fa_4f4f

    jr nz, jr_0fa_4f51

    jr nz, @+$22

    jr nz, jr_0fa_4f55

    jr nz, @+$22

    jr nz, jr_0fa_4f59

    jr nz, jr_0fa_4f5b

    ld bc, $4957
    ld c, h

jr_0fa_4f3f:
    ld c, h

jr_0fa_4f40:
    jr nz, jr_0fa_4f9b

jr_0fa_4f42:
    ld c, a
    ld d, l

jr_0fa_4f44:
    jr nz, jr_0fa_4f9a

jr_0fa_4f46:
    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l

jr_0fa_4f4d:
    nop
    ld b, e

jr_0fa_4f4f:
    ld c, h
    ld c, c

jr_0fa_4f51:
    ld d, b
    jr nz, jr_0fa_4fad

    ld b, l

jr_0fa_4f55:
    ld d, e
    jr nz, @+$50

    ld c, a

jr_0fa_4f59:
    jr nz, jr_0fa_4f5c

jr_0fa_4f5b:
    ld d, a

jr_0fa_4f5c:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_4fba

    ld c, a
    ld d, l

jr_0fa_4f63:
    jr nz, jr_0fa_4fb9

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop
    ld d, e
    ld c, b
    ld b, l
    ld c, h
    ld c, h
    ld d, e
    jr nz, jr_0fa_4fce

    ld b, l
    ld d, e
    jr nz, jr_0fa_4fc7

    ld c, a
    jr nz, jr_0fa_4f7d

    ld d, a

jr_0fa_4f7d:
    ld c, c
    ld c, h
    ld c, h
    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_0fa_4fda

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_4fdf

    ld c, b
    ld b, l
    nop
    ld b, l
    ld e, b
    ld d, b
    ld c, h
    ld c, a
    ld d, e
    ld c, c
    ld d, [hl]
    ld b, l
    jr nz, jr_0fa_4feb

    ld c, a

jr_0fa_4f9a:
    ld d, l

jr_0fa_4f9b:
    ld c, [hl]
    ld b, h
    ld d, e
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_4ff2

    ld c, a
    jr nz, jr_0fa_4fa8

    ld d, a

jr_0fa_4fa8:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5006

jr_0fa_4fad:
    ld c, a
    ld d, l
    jr nz, jr_0fa_5005

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_500a

    ld c, b
    ld b, l
    nop

jr_0fa_4fb9:
    ld b, c

jr_0fa_4fba:
    ld b, e
    ld c, c
    ld b, h
    jr nz, jr_0fa_5011

    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    ld d, e
    jr nz, jr_0fa_501f

    ld b, l

jr_0fa_4fc7:
    ld d, e
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_4fce

    ld d, a

jr_0fa_4fce:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_502c

    ld c, a
    ld d, l
    jr nz, jr_0fa_502b

    ld b, c
    ld c, e
    ld b, l

jr_0fa_4fda:
    jr nz, jr_0fa_5030

    ld c, b
    ld b, l
    nop

jr_0fa_4fdf:
    ld b, [hl]
    ld c, h
    ld b, c
    ld c, l
    ld b, l
    jr nz, jr_0fa_5038

    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    ld d, e

jr_0fa_4feb:
    jr nz, jr_0fa_5046

    ld b, l
    ld d, e
    jr nz, jr_0fa_503f

    ld c, a

jr_0fa_4ff2:
    jr nz, jr_0fa_4ff5

    ld d, a

jr_0fa_4ff5:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5053

    ld c, a
    ld d, l
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5057

    ld c, b
    ld b, l

jr_0fa_5005:
    nop

jr_0fa_5006:
    ld c, l
    ld b, c
    ld b, a
    ld c, [hl]

jr_0fa_500a:
    ld d, l
    ld c, l
    jr nz, jr_0fa_5060

    ld c, a
    ld d, l
    ld c, [hl]

jr_0fa_5011:
    ld b, h
    ld d, e
    jr nz, jr_0fa_506e

    ld b, l
    ld d, e
    jr nz, jr_0fa_5067

    ld c, a
    jr nz, jr_0fa_501d

    ld d, a

jr_0fa_501d:
    ld c, c
    ld c, h

jr_0fa_501f:
    ld c, h
    jr nz, jr_0fa_507b

    ld c, a
    ld d, l
    jr nz, jr_0fa_507a

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_507f

jr_0fa_502b:
    ld c, b

jr_0fa_502c:
    ld b, l
    nop
    ld b, h
    ld d, l

jr_0fa_5030:
    ld c, l
    ld b, h
    ld d, l
    ld c, l
    jr nz, jr_0fa_5088

    ld c, a
    ld d, l

jr_0fa_5038:
    ld c, [hl]
    ld b, h
    ld d, e
    jr nz, jr_0fa_5096

    ld b, l
    ld d, e

jr_0fa_503f:
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_5045

    ld d, a

jr_0fa_5045:
    ld c, c

jr_0fa_5046:
    ld c, h
    ld c, h
    jr nz, jr_0fa_50a3

    ld c, a
    ld d, l
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

jr_0fa_5053:
    ld c, b
    ld b, l
    nop
    ld b, [hl]

jr_0fa_5057:
    ld d, l
    ld b, l
    ld c, h
    jr nz, jr_0fa_50b5

    ld b, l
    ld d, e
    jr nz, @+$50

jr_0fa_5060:
    ld c, a
    jr nz, jr_0fa_5064

    ld d, a

jr_0fa_5064:
    ld c, c
    ld c, h
    ld c, h

jr_0fa_5067:
    jr nz, jr_0fa_50c2

    ld c, a
    ld d, l
    jr nz, jr_0fa_50c1

    ld b, c

jr_0fa_506e:
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop
    ld b, [hl]
    ld l, $2d
    ld b, c
    ld c, c

jr_0fa_507a:
    ld b, h

jr_0fa_507b:
    jr nz, jr_0fa_50d0

    ld d, b
    ld d, d

jr_0fa_507f:
    ld b, c
    ld e, c
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_50d5

    ld c, a

jr_0fa_5088:
    jr nz, jr_0fa_508b

    ld d, a

jr_0fa_508b:
    ld c, c
    ld c, h
    ld c, h
    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_0fa_50e8

    ld b, c
    ld c, e

jr_0fa_5096:
    ld b, l
    jr nz, jr_0fa_50ed

    ld c, b
    ld b, l
    nop
    ld b, a
    ld d, d
    ld b, l
    ld b, l
    ld c, [hl]
    jr nz, jr_0fa_50eb

jr_0fa_50a3:
    ld b, l
    ld d, d
    ld b, d
    jr nz, jr_0fa_5101

    ld b, l
    ld d, e
    jr nz, jr_0fa_50fa

    ld c, a
    jr nz, jr_0fa_50b0

    ld d, a

jr_0fa_50b0:
    ld c, c
    ld c, h
    ld c, h
    jr nz, @+$5b

jr_0fa_50b5:
    ld c, a
    ld d, l
    jr nz, jr_0fa_510d

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5112

    ld c, b
    ld b, l
    nop

jr_0fa_50c1:
    ld b, d

jr_0fa_50c2:
    ld c, h
    ld d, l
    ld b, l
    jr nz, jr_0fa_510f

    ld b, l
    ld d, d
    ld b, d
    jr nz, jr_0fa_5125

    ld b, l
    ld d, e
    jr nz, jr_0fa_511e

jr_0fa_50d0:
    ld c, a
    jr nz, jr_0fa_50d4

    ld d, a

jr_0fa_50d4:
    ld c, c

jr_0fa_50d5:
    ld c, h
    ld c, h
    jr nz, jr_0fa_5132

    ld c, a
    ld d, l
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5136

    ld c, b
    ld b, l
    nop
    ld d, d
    ld b, l
    ld b, h

jr_0fa_50e8:
    jr nz, jr_0fa_5132

    ld b, l

jr_0fa_50eb:
    ld d, d
    ld b, d

jr_0fa_50ed:
    jr nz, jr_0fa_5148

    ld b, l
    ld d, e
    jr nz, jr_0fa_5141

    ld c, a
    jr nz, jr_0fa_50f7

    ld d, a

jr_0fa_50f7:
    ld c, c
    ld c, h
    ld c, h

jr_0fa_50fa:
    jr nz, jr_0fa_5155

    ld c, a
    ld d, l
    jr nz, jr_0fa_5154

    ld b, c

jr_0fa_5101:
    ld c, e
    ld b, l
    jr nz, jr_0fa_5159

    ld c, b
    ld b, l
    nop
    ld c, l
    ld c, c
    ld e, b
    ld b, l
    ld b, h

jr_0fa_510d:
    jr nz, jr_0fa_5157

jr_0fa_510f:
    ld b, l
    ld d, d
    ld b, d

jr_0fa_5112:
    jr nz, jr_0fa_516d

    ld b, l
    ld d, e
    jr nz, jr_0fa_5166

    ld c, a
    jr nz, jr_0fa_511c

    ld d, a

jr_0fa_511c:
    ld c, c
    ld c, h

jr_0fa_511e:
    ld c, h
    jr nz, jr_0fa_517a

    ld c, a
    ld d, l
    jr nz, jr_0fa_5179

jr_0fa_5125:
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_517e

    ld c, b
    ld b, l
    nop
    ld c, c
    ld c, [hl]
    ld c, e
    jr nz, jr_0fa_5184

jr_0fa_5132:
    ld c, c
    ld b, d
    ld b, d
    ld c, a

jr_0fa_5136:
    ld c, [hl]
    jr nz, jr_0fa_5192

    ld b, l
    ld d, e
    jr nz, jr_0fa_518b

    ld c, a
    jr nz, jr_0fa_5141

    ld d, a

jr_0fa_5141:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_519f

    ld c, a
    ld d, l

jr_0fa_5148:
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_51a3

    ld c, b
    ld b, l
    nop
    ld b, e
    ld c, b

jr_0fa_5154:
    ld b, l

jr_0fa_5155:
    ld c, l
    ld c, c

jr_0fa_5157:
    ld b, e
    ld b, c

jr_0fa_5159:
    ld c, h
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_51ae

    ld c, a
    jr nz, jr_0fa_5164

    ld d, a

jr_0fa_5164:
    ld c, c
    ld c, h

jr_0fa_5166:
    ld c, h
    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_0fa_51c1

jr_0fa_516d:
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_51c6

    ld c, b
    ld b, l
    nop
    ld c, b
    ld b, l
    ld d, d
    ld b, d

jr_0fa_5179:
    ld c, c

jr_0fa_517a:
    ld b, e
    ld c, c
    ld b, h
    ld b, l

jr_0fa_517e:
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_51d2

jr_0fa_5184:
    ld c, a
    jr nz, jr_0fa_5188

    ld d, a

jr_0fa_5188:
    ld c, c
    ld c, h
    ld c, h

jr_0fa_518b:
    jr nz, jr_0fa_51e6

    ld c, a
    ld d, l
    jr nz, jr_0fa_51e5

    ld b, c

jr_0fa_5192:
    ld c, e
    ld b, l
    jr nz, jr_0fa_51ea

    ld c, b
    ld b, l
    nop
    ld b, d
    ld c, h
    ld d, l
    ld b, l
    jr nz, jr_0fa_51e9

jr_0fa_519f:
    ld b, l
    ld d, a
    ld b, l
    ld c, h

jr_0fa_51a3:
    jr nz, jr_0fa_51fe

    ld b, l
    ld d, e
    jr nz, jr_0fa_51f7

    ld c, a
    jr nz, jr_0fa_51ad

    ld d, a

jr_0fa_51ad:
    ld c, c

jr_0fa_51ae:
    ld c, h
    ld c, h
    jr nz, jr_0fa_520b

    ld c, a
    ld d, l
    jr nz, jr_0fa_520a

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_520f

    ld c, b
    ld b, l
    nop
    ld d, d
    ld b, l
    ld b, h

jr_0fa_51c1:
    jr nz, @+$4c

    ld b, l
    ld d, a
    ld b, l

jr_0fa_51c6:
    ld c, h
    jr nz, jr_0fa_5222

    ld b, l
    ld d, e
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_51d1

    ld d, a

jr_0fa_51d1:
    ld c, c

jr_0fa_51d2:
    ld c, h
    ld c, h
    jr nz, jr_0fa_522f

    ld c, a
    ld d, l
    jr nz, jr_0fa_522e

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop
    ld d, e
    ld c, b
    ld b, l

jr_0fa_51e5:
    ld b, l

jr_0fa_51e6:
    ld d, h
    jr nz, jr_0fa_5236

jr_0fa_51e9:
    ld d, l

jr_0fa_51ea:
    ld d, e
    ld c, c
    ld b, e
    jr nz, jr_0fa_5248

    ld b, l
    ld d, e
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_51f7

    ld d, a

jr_0fa_51f7:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5255

    ld c, a
    ld d, l

jr_0fa_51fe:
    jr nz, jr_0fa_5254

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop
    ld d, a
    ld c, a

jr_0fa_520a:
    ld c, a

jr_0fa_520b:
    ld b, h
    jr nz, jr_0fa_5253

    ld c, l

jr_0fa_520f:
    ld b, d
    ld c, h
    ld b, l
    ld c, l
    jr nz, jr_0fa_526e

    ld b, l
    ld d, e
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_521d

    ld d, a

jr_0fa_521d:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_527b

jr_0fa_5222:
    ld c, a
    ld d, l
    jr nz, jr_0fa_527a

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop

jr_0fa_522e:
    ld b, a

jr_0fa_522f:
    ld c, a
    ld c, h
    ld b, h
    jr nz, jr_0fa_5279

    ld c, l
    ld b, d

jr_0fa_5236:
    ld c, h
    ld b, l
    ld c, l
    jr nz, jr_0fa_5294

    ld b, l
    ld d, e
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_5243

    ld d, a

jr_0fa_5243:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_52a1

jr_0fa_5248:
    ld c, a
    ld d, l
    jr nz, jr_0fa_52a0

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_52a5

    ld c, b
    ld b, l

jr_0fa_5253:
    nop

jr_0fa_5254:
    ld b, h

jr_0fa_5255:
    ld c, a
    ld c, a
    ld c, l
    jr nz, @+$44

    ld c, a
    ld c, a
    ld c, e
    jr nz, jr_0fa_5290

    jr nz, jr_0fa_52ba

    ld b, l
    ld d, e
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_5269

    ld d, a

jr_0fa_5269:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_52c7

jr_0fa_526e:
    ld c, a
    ld d, l
    jr nz, jr_0fa_52c6

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l

jr_0fa_5279:
    nop

jr_0fa_527a:
    ld b, h

jr_0fa_527b:
    ld c, a
    ld c, a
    ld c, l
    jr nz, @+$44

    ld c, a
    ld c, a
    ld c, e
    jr nz, jr_0fa_52b7

    jr nz, jr_0fa_52e0

    ld b, l
    ld d, e
    jr nz, jr_0fa_52d9

    ld c, a
    jr nz, jr_0fa_528f

    ld d, a

jr_0fa_528f:
    ld c, c

jr_0fa_5290:
    ld c, h
    ld c, h
    jr nz, jr_0fa_52ed

jr_0fa_5294:
    ld c, a
    ld d, l
    jr nz, jr_0fa_52ec

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop

jr_0fa_52a0:
    ld b, l

jr_0fa_52a1:
    ld b, c
    ld b, a
    ld c, h
    ld b, l

jr_0fa_52a5:
    jr nz, jr_0fa_52f4

    ld b, l
    ld b, h
    ld b, c
    ld c, h
    jr nz, jr_0fa_5306

    ld b, l
    ld d, e
    jr nz, jr_0fa_52ff

    ld c, a
    jr nz, jr_0fa_52b5

    ld d, a

jr_0fa_52b5:
    ld c, c
    ld c, h

jr_0fa_52b7:
    ld c, h
    jr nz, jr_0fa_5313

jr_0fa_52ba:
    ld c, a
    ld d, l
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5317

    ld c, b
    ld b, l
    nop

jr_0fa_52c6:
    ld d, a

jr_0fa_52c7:
    ld c, a
    ld c, h
    ld b, [hl]
    jr nz, jr_0fa_5319

    ld b, l
    ld b, h
    ld b, c
    ld c, h
    jr nz, jr_0fa_532b

    ld b, l
    ld d, e
    jr nz, jr_0fa_5324

    ld c, a
    jr nz, jr_0fa_52da

jr_0fa_52d9:
    ld d, a

jr_0fa_52da:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5338

    ld c, a

jr_0fa_52e0:
    ld d, l
    jr nz, jr_0fa_5337

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_533c

    ld c, b
    ld b, l
    nop
    ld b, e

jr_0fa_52ec:
    ld d, d

jr_0fa_52ed:
    ld b, c
    ld c, [hl]
    ld c, e
    jr nz, jr_0fa_534b

    ld b, l
    ld d, e

jr_0fa_52f4:
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_52fa

    ld d, a

jr_0fa_52fa:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5358

jr_0fa_52ff:
    ld c, a
    ld d, l
    jr nz, jr_0fa_5357

    ld b, c
    ld c, e
    ld b, l

jr_0fa_5306:
    jr nz, jr_0fa_535c

    ld c, b
    ld b, l
    nop
    ld d, e
    ld d, c
    ld d, l
    ld b, c
    ld d, d
    ld b, l
    jr nz, jr_0fa_5356

jr_0fa_5313:
    ld d, d
    ld b, c
    ld c, [hl]
    ld c, e

jr_0fa_5317:
    jr nz, jr_0fa_5372

jr_0fa_5319:
    ld b, l
    ld d, e
    jr nz, jr_0fa_536b

    ld c, a
    jr nz, jr_0fa_5321

    ld d, a

jr_0fa_5321:
    ld c, c
    ld c, h
    ld c, h

jr_0fa_5324:
    jr nz, jr_0fa_537f

    ld c, a
    ld d, l
    jr nz, jr_0fa_537e

    ld b, c

jr_0fa_532b:
    ld c, e
    ld b, l
    jr nz, jr_0fa_5383

    ld c, b
    ld b, l
    nop
    ld c, b
    ld b, l
    ld e, b
    ld l, $20

jr_0fa_5337:
    ld b, e

jr_0fa_5338:
    ld d, d
    ld b, c
    ld c, [hl]
    ld c, e

jr_0fa_533c:
    jr nz, jr_0fa_5397

    ld b, l
    ld d, e
    jr nz, jr_0fa_5390

    ld c, a
    jr nz, jr_0fa_5346

    ld d, a

jr_0fa_5346:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_53a4

jr_0fa_534b:
    ld c, a
    ld d, l
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_53a8

    ld c, b
    ld b, l

jr_0fa_5356:
    nop

jr_0fa_5357:
    ld b, d

jr_0fa_5358:
    ld b, c
    ld d, h
    ld d, h
    ld b, l

jr_0fa_535c:
    ld d, d
    ld e, c
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_53b2

    ld c, a
    jr nz, jr_0fa_5368

    ld d, a

jr_0fa_5368:
    ld c, c
    ld c, h
    ld c, h

jr_0fa_536b:
    jr nz, jr_0fa_53c6

    ld c, a
    ld d, l
    jr nz, jr_0fa_53c5

    ld b, c

jr_0fa_5372:
    ld c, e
    ld b, l
    jr nz, jr_0fa_53ca

    ld c, b
    ld b, l
    nop
    ld d, e
    ld c, h
    ld c, c
    ld b, h
    ld b, l

jr_0fa_537e:
    ld d, e

jr_0fa_537f:
    jr nz, jr_0fa_53da

    ld b, l
    ld d, e

jr_0fa_5383:
    jr nz, jr_0fa_53d3

    ld c, a
    jr nz, jr_0fa_5389

    ld d, a

jr_0fa_5389:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_53e7

    ld c, a
    ld d, l

jr_0fa_5390:
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_53eb

jr_0fa_5397:
    ld c, b
    ld b, l
    nop
    ld d, d
    ld b, l
    ld b, h
    jr nz, jr_0fa_53e1

    ld c, a
    ld c, a
    ld c, e
    jr nz, @+$5b

jr_0fa_53a4:
    ld b, l
    ld d, e
    jr nz, jr_0fa_53f6

jr_0fa_53a8:
    ld c, a
    jr nz, jr_0fa_53ac

    ld d, a

jr_0fa_53ac:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_540a

    ld c, a

jr_0fa_53b2:
    ld d, l
    jr nz, jr_0fa_5409

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_540e

    ld c, b
    ld b, l
    nop
    ld b, d
    ld c, h
    ld b, c
    ld c, [hl]
    ld c, e
    jr nz, jr_0fa_5406

    ld c, a

jr_0fa_53c5:
    ld c, a

jr_0fa_53c6:
    ld c, e
    jr nz, @+$5b

    ld b, l

jr_0fa_53ca:
    ld d, e
    jr nz, jr_0fa_541b

    ld c, a
    jr nz, jr_0fa_53d1

    ld d, a

jr_0fa_53d1:
    ld c, c
    ld c, h

jr_0fa_53d3:
    ld c, h
    jr nz, jr_0fa_542f

    ld c, a
    ld d, l
    jr nz, jr_0fa_542e

jr_0fa_53da:
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5433

    ld c, b
    ld b, l

jr_0fa_53e1:
    nop
    ld d, e
    ld d, l
    ld c, [hl]
    jr nz, jr_0fa_542a

jr_0fa_53e7:
    ld d, d
    ld b, l
    ld d, e
    ld d, h

jr_0fa_53eb:
    jr nz, jr_0fa_5446

    ld b, l
    ld d, e
    jr nz, jr_0fa_543f

    ld c, a
    jr nz, jr_0fa_53f5

    ld d, a

jr_0fa_53f5:
    ld c, c

jr_0fa_53f6:
    ld c, h
    ld c, h
    jr nz, jr_0fa_5453

    ld c, a
    ld d, l
    jr nz, jr_0fa_5452

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5457

    ld c, b
    ld b, l
    nop

jr_0fa_5406:
    ld c, l
    ld c, a
    ld c, a

jr_0fa_5409:
    ld c, [hl]

jr_0fa_540a:
    jr nz, jr_0fa_544f

    ld d, d
    ld b, l

jr_0fa_540e:
    ld d, e
    ld d, h
    jr nz, jr_0fa_546b

    ld b, l
    ld d, e
    jr nz, jr_0fa_5464

    ld c, a
    jr nz, jr_0fa_541a

    ld d, a

jr_0fa_541a:
    ld c, c

jr_0fa_541b:
    ld c, h
    ld c, h
    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_0fa_5477

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l

jr_0fa_542a:
    nop
    ld d, e
    ld d, h
    ld b, c

jr_0fa_542e:
    ld d, d

jr_0fa_542f:
    jr nz, jr_0fa_5474

    ld d, d
    ld b, l

jr_0fa_5433:
    ld d, e
    ld d, h
    jr nz, jr_0fa_5490

    ld b, l
    ld d, e
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_543f

    ld d, a

jr_0fa_543f:
    ld c, c
    ld c, h
    ld c, h
    jr nz, @+$5b

    ld c, a
    ld d, l

jr_0fa_5446:
    jr nz, jr_0fa_549c

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l

jr_0fa_544f:
    nop
    ld c, h
    ld c, c

jr_0fa_5452:
    ld b, a

jr_0fa_5453:
    ld c, b
    ld d, h
    ld b, l
    ld d, d

jr_0fa_5457:
    jr nz, jr_0fa_54b2

    ld b, l
    ld d, e
    jr nz, jr_0fa_54ab

    ld c, a
    jr nz, jr_0fa_5461

    ld d, a

jr_0fa_5461:
    ld c, c
    ld c, h
    ld c, h

jr_0fa_5464:
    jr nz, jr_0fa_54bf

    ld c, a
    ld d, l
    jr nz, jr_0fa_54be

    ld b, c

jr_0fa_546b:
    ld c, e
    ld b, l
    jr nz, jr_0fa_54c3

    ld c, b
    ld b, l
    nop
    ld d, e
    ld b, l

jr_0fa_5474:
    ld d, d
    ld d, l
    ld c, l

jr_0fa_5477:
    jr nz, jr_0fa_54d2

    ld b, l
    ld d, e
    jr nz, jr_0fa_54cb

    ld c, a
    jr nz, jr_0fa_5481

    ld d, a

jr_0fa_5481:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_54df

    ld c, a
    ld d, l
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_54e3

    ld c, b

jr_0fa_5490:
    ld b, l
    nop
    ld b, e
    ld c, a
    ld c, l
    ld l, $20
    ld d, d
    ld b, c
    ld b, h
    ld c, c
    ld c, a

jr_0fa_549c:
    jr nz, jr_0fa_54f7

    ld b, l
    ld d, e
    jr nz, jr_0fa_54f0

    ld c, a
    jr nz, jr_0fa_54a6

    ld d, a

jr_0fa_54a6:
    ld c, c
    ld c, h
    ld c, h
    jr nz, @+$5b

jr_0fa_54ab:
    ld c, a
    ld d, l
    jr nz, jr_0fa_5503

    ld b, c
    ld c, e
    ld b, l

jr_0fa_54b2:
    jr nz, jr_0fa_5508

    ld c, b
    ld b, l
    nop
    ld b, [hl]
    ld c, h
    ld b, c
    ld d, d
    ld b, l
    jr nz, jr_0fa_5517

jr_0fa_54be:
    ld b, l

jr_0fa_54bf:
    ld d, e
    jr nz, @+$50

    ld c, a

jr_0fa_54c3:
    jr nz, jr_0fa_54c6

    ld d, a

jr_0fa_54c6:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5524

jr_0fa_54cb:
    ld c, a
    ld d, l
    jr nz, jr_0fa_5523

    ld b, c
    ld c, e
    ld b, l

jr_0fa_54d2:
    jr nz, @+$56

    ld c, b
    ld b, l
    nop
    ld b, d
    ld d, d
    ld c, a
    ld c, e
    ld b, l
    ld c, [hl]
    jr nz, @+$55

jr_0fa_54df:
    ld c, b
    ld c, a
    ld d, h
    ld b, a

jr_0fa_54e3:
    ld d, l
    ld c, [hl]
    nop
    jr nz, jr_0fa_5541

    ld b, l
    ld d, e
    jr nz, jr_0fa_553a

    ld c, a
    jr nz, jr_0fa_54f0

    ld d, a

jr_0fa_54f0:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_554e

    ld c, a
    ld d, l

jr_0fa_54f7:
    jr nz, jr_0fa_554d

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5552

    ld c, b
    ld b, l
    nop
    ld c, l
    ld c, a

jr_0fa_5503:
    jr nz, jr_0fa_5549

    ld c, c
    ld d, e
    ld c, e

jr_0fa_5508:
    jr nz, jr_0fa_5563

    ld b, l
    ld d, e
    jr nz, jr_0fa_555c

    ld c, a
    jr nz, jr_0fa_5512

    ld d, a

jr_0fa_5512:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5570

jr_0fa_5517:
    ld c, a
    ld d, l
    jr nz, jr_0fa_556f

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5574

    ld c, b
    ld b, l
    nop

jr_0fa_5523:
    ld d, a

jr_0fa_5524:
    ld c, c
    ld c, [hl]
    ld b, h
    jr nz, jr_0fa_556c

    ld d, d
    ld b, l
    ld d, e
    ld d, h
    jr nz, jr_0fa_5588

    ld b, l
    ld d, e
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_5537

    ld d, a

jr_0fa_5537:
    ld c, c
    ld c, h
    ld c, h

jr_0fa_553a:
    jr nz, jr_0fa_5595

    ld c, a
    ld d, l
    jr nz, jr_0fa_5594

    ld b, c

jr_0fa_5541:
    ld c, e
    ld b, l
    jr nz, jr_0fa_5599

    ld c, b
    ld b, l
    nop
    ld b, d

jr_0fa_5549:
    ld c, a
    ld d, h
    ld b, c
    ld c, [hl]

jr_0fa_554d:
    ld e, c

jr_0fa_554e:
    jr nz, jr_0fa_5592

    ld c, a
    ld c, a

jr_0fa_5552:
    ld c, e
    jr nz, jr_0fa_55ae

    ld b, l
    ld d, e
    jr nz, jr_0fa_55a7

    ld c, a
    jr nz, jr_0fa_555d

jr_0fa_555c:
    ld d, a

jr_0fa_555d:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_55bb

    ld c, a

jr_0fa_5563:
    ld d, l
    jr nz, jr_0fa_55ba

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_55bf

    ld c, b

jr_0fa_556c:
    ld b, l
    nop
    ld c, l

jr_0fa_556f:
    ld b, c

jr_0fa_5570:
    ld c, [hl]
    ld d, e
    ld c, c
    ld c, a

jr_0fa_5574:
    ld c, [hl]
    jr nz, @+$4d

    ld b, l
    ld e, c
    jr nz, jr_0fa_55d4

    ld b, l
    ld d, e
    jr nz, jr_0fa_55cd

    ld c, a
    jr nz, jr_0fa_5583

    ld d, a

jr_0fa_5583:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_55e1

jr_0fa_5588:
    ld c, a
    ld d, l
    jr nz, jr_0fa_55e0

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_55e5

    ld c, b

jr_0fa_5592:
    ld b, l
    nop

jr_0fa_5594:
    ld d, e

jr_0fa_5595:
    ld d, a
    ld c, a
    ld d, d
    ld b, h

jr_0fa_5599:
    jr nz, jr_0fa_55e6

    ld b, l
    ld e, c
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_55f1

    ld c, a
    jr nz, jr_0fa_55a7

    ld d, a

jr_0fa_55a7:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5605

    ld c, a
    ld d, l

jr_0fa_55ae:
    jr nz, jr_0fa_5604

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5609

    ld c, b
    ld b, l
    nop
    ld b, c
    ld d, d

jr_0fa_55ba:
    ld c, l

jr_0fa_55bb:
    ld c, a
    ld d, d
    jr nz, jr_0fa_560a

jr_0fa_55bf:
    ld b, l
    ld e, c
    jr nz, jr_0fa_561c

    ld b, l
    ld d, e
    jr nz, jr_0fa_5615

    ld c, a
    jr nz, jr_0fa_55cb

    ld d, a

jr_0fa_55cb:
    ld c, c
    ld c, h

jr_0fa_55cd:
    ld c, h
    jr nz, jr_0fa_5629

    ld c, a
    ld d, l
    jr nz, jr_0fa_5628

jr_0fa_55d4:
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_562d

    ld c, b
    ld b, l
    nop
    ld d, e
    ld c, b
    ld c, c
    ld b, l

jr_0fa_55e0:
    ld c, h

jr_0fa_55e1:
    ld b, h
    jr nz, jr_0fa_562f

    ld b, l

jr_0fa_55e5:
    ld e, c

jr_0fa_55e6:
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_563a

    ld c, a
    jr nz, jr_0fa_55f0

    ld d, a

jr_0fa_55f0:
    ld c, c

jr_0fa_55f1:
    ld c, h
    ld c, h
    jr nz, jr_0fa_564e

    ld c, a
    ld d, l
    jr nz, jr_0fa_564d

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5652

    ld c, b
    ld b, l
    nop
    ld c, b
    ld b, l
    ld c, h

jr_0fa_5604:
    ld c, l

jr_0fa_5605:
    ld b, l
    ld d, h
    jr nz, jr_0fa_5654

jr_0fa_5609:
    ld b, l

jr_0fa_560a:
    ld e, c
    jr nz, jr_0fa_5666

    ld b, l
    ld d, e
    jr nz, jr_0fa_565f

    ld c, a
    jr nz, jr_0fa_5615

    ld d, a

jr_0fa_5615:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5673

    ld c, a
    ld d, l

jr_0fa_561c:
    jr nz, jr_0fa_5672

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop
    ld d, e
    ld c, l

jr_0fa_5628:
    ld b, c

jr_0fa_5629:
    ld c, h
    ld c, h
    jr nz, jr_0fa_5678

jr_0fa_562d:
    ld b, l
    ld e, c

jr_0fa_562f:
    jr nz, jr_0fa_568a

    ld b, l
    ld d, e
    jr nz, jr_0fa_5683

    ld c, a
    jr nz, jr_0fa_5639

    ld d, a

jr_0fa_5639:
    ld c, c

jr_0fa_563a:
    ld c, h
    ld c, h
    jr nz, jr_0fa_5697

    ld c, a
    ld d, l
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_569b

    ld c, b
    ld b, l
    nop
    ld b, h
    ld b, l
    ld d, e

jr_0fa_564d:
    ld c, e

jr_0fa_564e:
    jr nz, jr_0fa_569b

    ld b, l
    ld e, c

jr_0fa_5652:
    jr nz, jr_0fa_56ad

jr_0fa_5654:
    ld b, l
    ld d, e
    jr nz, jr_0fa_56a6

    ld c, a
    jr nz, jr_0fa_565c

    ld d, a

jr_0fa_565c:
    ld c, c
    ld c, h
    ld c, h

jr_0fa_565f:
    jr nz, jr_0fa_56ba

    ld c, a
    ld d, l
    jr nz, jr_0fa_56b9

    ld b, c

jr_0fa_5666:
    ld c, e
    ld b, l
    jr nz, jr_0fa_56be

    ld c, b
    ld b, l
    nop
    ld b, h
    ld c, a
    ld d, d
    ld c, l
    ld c, c

jr_0fa_5672:
    ld d, h

jr_0fa_5673:
    ld c, a
    ld d, d
    ld e, c
    jr nz, @+$4d

jr_0fa_5678:
    ld b, l
    ld e, c
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_56ce

    ld c, a
    jr nz, jr_0fa_5684

jr_0fa_5683:
    ld d, a

jr_0fa_5684:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_56e2

    ld c, a

jr_0fa_568a:
    ld d, l
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_56e6

    ld c, b
    ld b, l
    nop
    jr nc, jr_0fa_56c7

jr_0fa_5697:
    ld [hl-], a
    jr nz, @+$4d

    ld b, l

jr_0fa_569b:
    ld e, c
    jr nz, jr_0fa_56f7

    ld b, l
    ld d, e
    jr nz, jr_0fa_56f0

    ld c, a
    jr nz, jr_0fa_56a6

    ld d, a

jr_0fa_56a6:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5704

    ld c, a
    ld d, l

jr_0fa_56ad:
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5708

    ld c, b
    ld b, l
    nop
    jr nc, @+$32

jr_0fa_56b9:
    inc sp

jr_0fa_56ba:
    jr nz, @+$4d

    ld b, l
    ld e, c

jr_0fa_56be:
    jr nz, jr_0fa_5719

    ld b, l
    ld d, e
    jr nz, jr_0fa_5712

    ld c, a
    jr nz, jr_0fa_56c8

jr_0fa_56c7:
    ld d, a

jr_0fa_56c8:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5726

    ld c, a

jr_0fa_56ce:
    ld d, l
    jr nz, jr_0fa_5725

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_572a

    ld c, b
    ld b, l
    nop
    ld b, e
    ld l, $20
    ld d, d
    ld c, a
    ld c, a
    ld c, l
    jr nz, @+$4d

jr_0fa_56e2:
    ld b, l
    ld e, c
    jr nz, jr_0fa_573f

jr_0fa_56e6:
    ld b, l
    ld d, e
    jr nz, jr_0fa_5738

    ld c, a
    jr nz, jr_0fa_56ee

    ld d, a

jr_0fa_56ee:
    ld c, c
    ld c, h

jr_0fa_56f0:
    ld c, h
    jr nz, jr_0fa_574c

    ld c, a
    ld d, l
    jr nz, jr_0fa_574b

jr_0fa_56f7:
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5750

    ld c, b
    ld b, l
    nop
    ld c, h
    ld b, c
    ld b, d
    jr nz, jr_0fa_574f

jr_0fa_5704:
    ld b, l
    ld e, c
    jr nz, jr_0fa_5761

jr_0fa_5708:
    ld b, l
    ld d, e
    jr nz, jr_0fa_575a

    ld c, a
    jr nz, jr_0fa_5710

    ld d, a

jr_0fa_5710:
    ld c, c
    ld c, h

jr_0fa_5712:
    ld c, h
    jr nz, jr_0fa_576e

    ld c, a
    ld d, l
    jr nz, jr_0fa_576d

jr_0fa_5719:
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5772

    ld c, b
    ld b, l
    nop
    ld d, b
    ld l, $20
    ld d, d

jr_0fa_5725:
    ld c, a

jr_0fa_5726:
    ld c, a
    ld c, l
    jr nz, @+$4d

jr_0fa_572a:
    ld b, l
    ld e, c
    jr nz, jr_0fa_5787

    ld b, l
    ld d, e
    jr nz, jr_0fa_5780

    ld c, a
    jr nz, jr_0fa_5736

    ld d, a

jr_0fa_5736:
    ld c, c
    ld c, h

jr_0fa_5738:
    ld c, h
    jr nz, jr_0fa_5794

    ld c, a
    ld d, l
    jr nz, jr_0fa_5793

jr_0fa_573f:
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5798

    ld c, b
    ld b, l
    nop
    ld c, l
    ld b, c
    ld d, e
    ld d, h

jr_0fa_574b:
    ld b, l

jr_0fa_574c:
    ld d, d
    jr nz, @+$4d

jr_0fa_574f:
    ld b, l

jr_0fa_5750:
    ld e, c
    jr nz, jr_0fa_57ac

    ld b, l
    ld d, e
    jr nz, jr_0fa_57a5

    ld c, a
    jr nz, jr_0fa_575b

jr_0fa_575a:
    ld d, a

jr_0fa_575b:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_57b9

    ld c, a

jr_0fa_5761:
    ld d, l
    jr nz, jr_0fa_57b8

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_57bd

    ld c, b
    ld b, l
    nop
    ld c, h

jr_0fa_576d:
    ld c, a

jr_0fa_576e:
    ld b, e
    ld c, e
    ld d, b
    ld c, c

jr_0fa_5772:
    ld b, e
    ld c, e
    jr nz, jr_0fa_57cf

    ld b, l
    ld d, e
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_577e

    ld d, a

jr_0fa_577e:
    ld c, c
    ld c, h

jr_0fa_5780:
    ld c, h
    jr nz, jr_0fa_57dc

    ld c, a
    ld d, l
    jr nz, jr_0fa_57db

jr_0fa_5787:
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_57e0

    ld c, b
    ld b, l
    nop
    ld b, e
    ld c, h
    ld c, a
    ld d, e

jr_0fa_5793:
    ld b, l

jr_0fa_5794:
    ld d, h
    jr nz, jr_0fa_57e2

    ld b, l

jr_0fa_5798:
    ld e, c
    jr nz, jr_0fa_57f4

    ld b, l
    ld d, e
    jr nz, jr_0fa_57ed

    ld c, a
    jr nz, jr_0fa_57a3

    ld d, a

jr_0fa_57a3:
    ld c, c
    ld c, h

jr_0fa_57a5:
    ld c, h
    jr nz, jr_0fa_5801

    ld c, a
    ld d, l
    jr nz, jr_0fa_5800

jr_0fa_57ac:
    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5805

    ld c, b
    ld b, l
    nop
    ld b, l
    ld c, l
    ld d, b
    ld d, h

jr_0fa_57b8:
    ld e, c

jr_0fa_57b9:
    jr nz, jr_0fa_57fd

    ld c, a
    ld d, h

jr_0fa_57bd:
    ld d, h
    ld c, h
    ld b, l
    jr nz, jr_0fa_581b

    ld b, l
    ld d, e
    jr nz, jr_0fa_5814

    ld c, a
    jr nz, jr_0fa_57ca

    ld d, a

jr_0fa_57ca:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5828

jr_0fa_57cf:
    ld c, a
    ld d, l
    jr nz, jr_0fa_5827

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop

jr_0fa_57db:
    ld d, a

jr_0fa_57dc:
    ld b, c
    ld d, h
    ld b, l
    ld d, d

jr_0fa_57e0:
    jr nz, @+$5b

jr_0fa_57e2:
    ld b, l
    ld d, e
    jr nz, jr_0fa_5834

    ld c, a
    jr nz, jr_0fa_57ea

    ld d, a

jr_0fa_57ea:
    ld c, c
    ld c, h
    ld c, h

jr_0fa_57ed:
    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_0fa_5847

    ld b, c

jr_0fa_57f4:
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop
    ld d, l
    ld c, [hl]

jr_0fa_57fd:
    ld b, d
    jr nz, jr_0fa_584e

jr_0fa_5800:
    ld l, a

jr_0fa_5801:
    ld l, $32
    jr nz, @+$5b

jr_0fa_5805:
    ld b, l
    ld d, e
    jr nz, jr_0fa_5857

    ld c, a
    jr nz, jr_0fa_580d

    ld d, a

jr_0fa_580d:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_586b

    ld c, a
    ld d, l

jr_0fa_5814:
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

jr_0fa_581b:
    ld c, b
    ld b, l
    nop
    ld c, [hl]
    ld d, b
    dec l
    jr nc, jr_0fa_5853

    inc sp
    jr nz, jr_0fa_587f

    ld b, l

jr_0fa_5827:
    ld d, e

jr_0fa_5828:
    jr nz, @+$50

    ld c, a
    jr nz, jr_0fa_582e

    ld d, a

jr_0fa_582e:
    ld c, c
    ld c, h
    ld c, h
    jr nz, @+$5b

    ld c, a

jr_0fa_5834:
    ld d, l
    jr nz, jr_0fa_588b

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5890

    ld c, b
    ld b, l
    nop
    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, @+$50

    ld l, a
    ld l, $34

jr_0fa_5847:
    jr nz, jr_0fa_58a2

    ld b, l
    ld d, e
    jr nz, @+$50

    ld c, a

jr_0fa_584e:
    jr nz, jr_0fa_5851

    ld d, a

jr_0fa_5851:
    ld c, c
    ld c, h

jr_0fa_5853:
    ld c, h
    jr nz, @+$5b

    ld c, a

jr_0fa_5857:
    ld d, l
    jr nz, jr_0fa_58ae

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_58b3

    ld c, b
    ld b, l
    nop
    ld e, c
    ld h, l
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    dec l
    ld [hl], $20

jr_0fa_586b:
    ld e, c
    ld b, l
    ld d, e
    jr nz, jr_0fa_58be

    ld c, a
    jr nz, jr_0fa_5874

    ld d, a

jr_0fa_5874:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_58d2

    ld c, a
    ld d, l
    jr nz, jr_0fa_58d1

    ld b, c
    ld c, e

jr_0fa_587f:
    ld b, l
    jr nz, jr_0fa_58d6

    ld c, b
    ld b, l
    nop
    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, jr_0fa_58d8

    ld l, a

jr_0fa_588b:
    ld l, $37
    jr nz, jr_0fa_58e8

    ld b, l

jr_0fa_5890:
    ld d, e
    jr nz, jr_0fa_58e1

    ld c, a
    jr nz, jr_0fa_5897

    ld d, a

jr_0fa_5897:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_58f5

    ld c, a
    ld d, l
    jr nz, @+$56

    ld b, c
    ld c, e

jr_0fa_58a2:
    ld b, l
    jr nz, jr_0fa_58f9

    ld c, b
    ld b, l
    nop
    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, jr_0fa_58fb

    ld l, a

jr_0fa_58ae:
    ld l, $31
    inc sp
    jr nz, jr_0fa_590c

jr_0fa_58b3:
    ld b, l
    ld d, e
    jr nz, jr_0fa_5905

    ld c, a
    jr nz, jr_0fa_58bb

    ld d, a

jr_0fa_58bb:
    ld c, c
    ld c, h
    ld c, h

jr_0fa_58be:
    jr nz, jr_0fa_5919

    ld c, a
    ld d, l
    jr nz, jr_0fa_5918

    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop
    ld d, [hl]
    dec l
    ld c, d
    ld c, a
    ld c, h

jr_0fa_58d1:
    ld d, h

jr_0fa_58d2:
    jr nz, jr_0fa_592d

    ld b, l
    ld d, e

jr_0fa_58d6:
    jr nz, jr_0fa_5926

jr_0fa_58d8:
    ld c, a
    jr nz, jr_0fa_58dc

    ld d, a

jr_0fa_58dc:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_593a

jr_0fa_58e1:
    ld c, a
    ld d, l
    jr nz, jr_0fa_5939

    ld b, c
    ld c, e
    ld b, l

jr_0fa_58e8:
    jr nz, jr_0fa_593e

    ld c, b
    ld b, l
    nop
    ld b, e
    ld c, a
    ld c, l
    ld b, d
    ld b, c
    ld d, h
    jr nz, jr_0fa_5940

jr_0fa_58f5:
    ld c, [hl]
    ld c, c
    ld b, [hl]
    ld b, l

jr_0fa_58f9:
    jr nz, jr_0fa_5954

jr_0fa_58fb:
    ld b, l
    ld d, e
    jr nz, jr_0fa_594d

    ld c, a
    jr nz, jr_0fa_5903

    ld d, a

jr_0fa_5903:
    ld c, c
    ld c, h

jr_0fa_5905:
    ld c, h
    jr nz, @+$5b

    ld c, a
    ld d, l
    jr nz, jr_0fa_5960

jr_0fa_590c:
    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop
    ld b, d
    ld b, l
    ld d, d
    ld d, d

jr_0fa_5918:
    ld b, l

jr_0fa_5919:
    ld d, h
    ld d, h
    ld b, c
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_5970

    ld c, a
    jr nz, jr_0fa_5926

    ld d, a

jr_0fa_5926:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5984

    ld c, a
    ld d, l

jr_0fa_592d:
    jr nz, jr_0fa_5983

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5988

    ld c, b
    ld b, l
    nop
    ld d, e
    ld c, b

jr_0fa_5939:
    ld c, a

jr_0fa_593a:
    ld d, h
    ld b, a
    ld d, l
    ld c, [hl]

jr_0fa_593e:
    jr nz, jr_0fa_5999

jr_0fa_5940:
    ld b, l
    ld d, e
    jr nz, jr_0fa_5992

    ld c, a
    jr nz, jr_0fa_5948

    ld d, a

jr_0fa_5948:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_59a6

jr_0fa_594d:
    ld c, a
    ld d, l
    jr nz, jr_0fa_59a5

    ld b, c
    ld c, e
    ld b, l

jr_0fa_5954:
    jr nz, jr_0fa_59aa

    ld c, b
    ld b, l
    nop
    ld b, d
    ld b, c
    ld e, d
    ld c, a
    ld c, a
    ld c, e
    ld b, c

jr_0fa_5960:
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_59b4

    ld c, a
    jr nz, jr_0fa_596a

    ld d, a

jr_0fa_596a:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_59c8

    ld c, a

jr_0fa_5970:
    ld d, l
    jr nz, jr_0fa_59c7

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_59cc

    ld c, b
    ld b, l
    nop
    ld b, e
    ld c, a
    ld c, h
    ld d, h
    jr nz, jr_0fa_59d1

    ld e, c
    ld d, h

jr_0fa_5983:
    ld c, b

jr_0fa_5984:
    ld c, a
    ld c, [hl]
    jr nz, @+$5b

jr_0fa_5988:
    ld b, l
    ld d, e
    jr nz, jr_0fa_59da

    ld c, a
    jr nz, jr_0fa_5990

    ld d, a

jr_0fa_5990:
    ld c, c
    ld c, h

jr_0fa_5992:
    ld c, h
    jr nz, jr_0fa_59ee

    ld c, a
    ld d, l
    jr nz, jr_0fa_59ed

jr_0fa_5999:
    ld b, c
    ld c, e
    ld b, l
    jr nz, @+$56

    ld c, b
    ld b, l
    nop
    ld b, [hl]
    ld c, h
    ld b, c
    ld c, l

jr_0fa_59a5:
    ld b, l

jr_0fa_59a6:
    ld d, h
    ld c, b
    ld d, d
    ld c, a

jr_0fa_59aa:
    ld d, a
    ld b, l
    ld d, d
    jr nz, jr_0fa_5a08

    ld b, l
    ld d, e
    jr nz, jr_0fa_5a01

    ld c, a

jr_0fa_59b4:
    jr nz, jr_0fa_59b7

    ld d, a

jr_0fa_59b7:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5a15

    ld c, a
    ld d, l
    jr nz, jr_0fa_5a14

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5a19

    ld c, b
    ld b, l

jr_0fa_59c7:
    nop

jr_0fa_59c8:
    ld d, d
    ld l, $20
    ld c, h

jr_0fa_59cc:
    ld b, c
    ld d, l
    ld c, [hl]
    ld b, e
    ld c, b

jr_0fa_59d1:
    ld b, l
    ld d, d
    jr nz, jr_0fa_5a2e

    ld b, l
    ld d, e
    jr nz, jr_0fa_5a27

    ld c, a

jr_0fa_59da:
    jr nz, jr_0fa_59dd

    ld d, a

jr_0fa_59dd:
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_0fa_5a3b

    ld c, a
    ld d, l
    jr nz, jr_0fa_5a3a

    ld b, c
    ld c, e
    ld b, l
    jr nz, jr_0fa_5a3f

    ld c, b
    ld b, l

jr_0fa_59ed:
    nop

jr_0fa_59ee:
    ld c, l
    ld b, c
    ld d, b
    jr nz, @+$5b

    ld b, l
    ld d, e
    jr nz, jr_0fa_5a45

    ld c, a
    jr nz, jr_0fa_59fb

    inc bc

jr_0fa_59fb:
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, @+$6a

jr_0fa_5a01:
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0fa_5a6b

    ld [hl], e
    ld h, e

jr_0fa_5a08:
    ld h, c
    ld [hl], b
    ld h, l
    ld h, h
    nop
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_0fa_5a87

    ld l, b

jr_0fa_5a14:
    ld h, l

jr_0fa_5a15:
    jr nz, jr_0fa_5a84

    ld h, c
    ld l, [hl]

jr_0fa_5a19:
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $7703
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0fa_5a9a

    ld l, b

jr_0fa_5a27:
    ld h, l
    ld a, c
    jr nz, jr_0fa_5a9f

    ld l, b
    ld l, a
    ld [hl], l

jr_0fa_5a2e:
    ld h, a
    ld l, b
    ld [hl], h
    nop
    ld l, c
    ld [hl], h
    jr nz, jr_0fa_5aad

    ld h, c
    ld [hl], e
    jr nz, jr_0fa_5aad

jr_0fa_5a3a:
    ld h, c

jr_0fa_5a3b:
    ld h, [hl]
    ld h, l
    ld l, $01

jr_0fa_5a3f:
    inc bc
    ld e, c
    ld h, l
    ld [hl], h
    ld l, $2e

jr_0fa_5a45:
    ld l, $01
    inc bc
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0fa_5ab5

    ld h, c
    db $76
    ld h, l
    jr nz, jr_0fa_5ac1

    ld l, [hl]
    ld h, e
    ld h, l
    nop
    ld h, c
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_0fa_5ac2

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    ld bc, $7403
    ld l, b
    ld h, l
    jr nz, jr_0fa_5ae1

    ld l, a

jr_0fa_5a6b:
    ld [hl], d
    ld l, h
    ld h, h
    jr nz, jr_0fa_5adf

    ld h, [hl]
    nop
    ld [hl], e
    ld [hl], l
    ld [hl], d
    db $76
    ld l, c
    db $76
    ld h, c
    ld l, h
    jr nz, jr_0fa_5ae4

    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], d
    ld l, $01
    inc bc

jr_0fa_5a84:
    ld b, a
    ld l, a
    ld l, a

jr_0fa_5a87:
    ld h, h
    jr nz, jr_0fa_5ad6

    ld [hl], l
    ld h, e
    ld l, e
    ld hl, $5401
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0fa_5af9

    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa

jr_0fa_5a9a:
    ld [hl], h
    jr nz, jr_0fa_5b10

    ld h, l
    ld h, l

jr_0fa_5a9f:
    ld l, l
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0fa_5b07

    ld h, l
    jr nz, jr_0fa_5b0d

    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b

jr_0fa_5aad:
    jr nz, jr_0fa_5b15

    ld l, a
    ld [hl], d
    nop
    ld [hl], h
    ld l, b
    ld l, c

jr_0fa_5ab5:
    ld [hl], e
    jr nz, @+$6f

    ld l, c
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $01
    ld b, d

jr_0fa_5ac1:
    ld h, l

jr_0fa_5ac2:
    ld [hl], d
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, c
    jr nz, jr_0fa_5b17

    add hl, sp
    ld [hl-], a
    ld b, [hl]
    ld d, e
    ld l, $00
    ld b, c
    ld [hl], l
    ld [hl], h
    ld l, a
    ld l, l
    ld h, c

jr_0fa_5ad6:
    ld [hl], h
    ld l, c
    ld h, e
    jr nz, @+$6e

    ld l, a
    ld h, c
    ld h, h
    ld h, l

jr_0fa_5adf:
    ld h, h
    nop

jr_0fa_5ae1:
    ld [hl], a
    ld l, c
    ld [hl], h

jr_0fa_5ae4:
    ld l, b
    jr nz, jr_0fa_5b20

    ld l, l
    ld l, l
    jr nz, jr_0fa_5b4d

    ld [hl], l
    ld l, h
    ld l, h
    ld h, l
    ld [hl], h
    ld [hl], e
    ld l, $01
    ld d, d
    ld h, l
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a

jr_0fa_5af9:
    ld [hl], h
    ld l, a
    ld l, [hl]
    jr nz, jr_0fa_5b4b

    jr c, jr_0fa_5b37

    jr nc, jr_0fa_5b30

    nop
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l

jr_0fa_5b07:
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0fa_5b80

jr_0fa_5b0d:
    ld l, c
    ld l, [hl]
    ld h, a

jr_0fa_5b10:
    ld l, h
    ld h, l
    nop
    ld l, h
    ld l, a

jr_0fa_5b15:
    ld h, c
    ld h, h

jr_0fa_5b17:
    ld h, l
    ld [hl], d
    ld l, $01
    ld b, c
    jr nz, jr_0fa_5b86

    ld h, c
    ld l, [hl]

jr_0fa_5b20:
    ld h, h
    ld h, a
    ld [hl], l
    ld l, [hl]
    jr nz, jr_0fa_5b89

    ld h, c
    ld l, [hl]
    jr nz, jr_0fa_5b8c

    ld h, l
    nop
    ld l, h
    ld l, a
    ld h, c
    ld h, h

jr_0fa_5b30:
    ld h, l
    ld h, h
    jr nz, jr_0fa_5bab

    ld l, c
    ld [hl], h
    ld l, b

jr_0fa_5b37:
    nop
    db $76
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_0fa_5bb3

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $01
    ld b, l
    ld a, b
    ld [hl], b

jr_0fa_5b4b:
    ld l, h
    ld l, a

jr_0fa_5b4d:
    ld [hl], e
    ld l, c
    db $76
    ld h, l
    jr nz, jr_0fa_5bc5

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    ld l, $01
    ld b, c
    ld h, e
    ld l, c
    ld h, h
    jr nz, jr_0fa_5bd8

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    nop
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    ld l, $01
    ld b, [hl]
    ld l, h
    ld h, c
    ld l, l
    ld h, l
    jr nz, @+$74

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e

jr_0fa_5b80:
    nop
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ld h, l

jr_0fa_5b86:
    ld h, h
    ld l, $01

jr_0fa_5b89:
    ld d, b
    ld l, a
    ld [hl], a

jr_0fa_5b8c:
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0fa_5bfa

    ld [hl], l
    ld l, [hl]
    jr nz, jr_0fa_5bfa

    ld h, c
    ld l, [hl]
    jr nz, jr_0fa_5bfd

    ld h, l
    nop
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_0fa_5c1c

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0fa_5bd8

    inc sp

jr_0fa_5bab:
    dec [hl]
    scf
    nop
    ld l, l
    ld h, c
    ld h, a
    ld l, [hl]
    ld [hl], l

jr_0fa_5bb3:
    ld l, l
    jr nz, jr_0fa_5c28

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $01
    ld c, l
    ld h, c
    ld h, a
    ld l, [hl]
    ld [hl], l
    ld l, l
    jr nz, @+$74

jr_0fa_5bc5:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    nop
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    ld l, $01
    ld b, h
    ld [hl], l
    ld l, l
    ld h, h
    ld [hl], l

jr_0fa_5bd8:
    ld l, l
    jr nz, jr_0fa_5c4d

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    nop
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    ld l, $01
    ld b, e
    ld h, c
    ld l, [hl]
    jr nz, jr_0fa_5c62

    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], a
    jr nz, jr_0fa_5c5a

    ld l, h
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_0fa_5c60

jr_0fa_5bfa:
    ld l, a
    ld [hl], d
    nop

jr_0fa_5bfd:
    jr c, jr_0fa_5c1f

    ld [hl], e
    ld h, l
    ld h, e
    ld l, $20
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    nop
    ld l, l
    ld h, c
    ld a, b
    ld l, c
    ld l, l
    ld [hl], l
    ld l, l
    jr nz, jr_0fa_5c78

    ld [hl], l
    ld h, l
    ld l, h
    ld l, $01
    ld c, a
    ld l, [hl]
    ld h, l
    jr nz, jr_0fa_5c8f

jr_0fa_5c1c:
    ld l, b
    ld l, a
    ld [hl], h

jr_0fa_5c1f:
    jr nz, jr_0fa_5c84

    ld h, c
    ld l, [hl]
    jr nz, jr_0fa_5c89

    ld h, l
    ld [hl], e
    ld [hl], h

jr_0fa_5c28:
    ld [hl], d
    ld l, a
    ld a, c
    nop
    ld h, c
    ld l, h
    ld l, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_0fa_5c95

    ld l, [hl]
    ld a, c
    jr nz, @+$76

    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    ld l, $01
    ld b, e
    ld l, h
    ld l, c
    ld [hl], b
    jr nz, jr_0fa_5cab

    ld l, a
    ld [hl], d
    jr nz, jr_0fa_5c8b

    ld h, l
    ld [hl], d
    ld [hl], d
    ld h, l

jr_0fa_5c4d:
    ld [hl], h
    ld [hl], h
    ld h, c
    ld l, $01
    ld d, e
    ld l, b
    ld h, l
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_0fa_5cc0

jr_0fa_5c5a:
    ld l, a
    ld [hl], d
    jr nz, jr_0fa_5cd2

    ld l, b
    ld h, l

jr_0fa_5c60:
    nop
    ld [hl], e

jr_0fa_5c62:
    ld l, b
    ld l, a
    ld [hl], h
    ld h, a
    ld [hl], l
    ld l, [hl]
    ld l, $01
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0fa_5ce6

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_0fa_5c78:
    ld [hl], e
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_0fa_5cf3

    ld l, b
    ld h, l
    jr nz, jr_0fa_5cc5

    ld h, c

jr_0fa_5c84:
    ld a, d
    ld l, a
    ld l, a
    ld l, e
    ld h, c

jr_0fa_5c89:
    ld l, $01

jr_0fa_5c8b:
    ld l, $33
    dec [hl]
    scf

jr_0fa_5c8f:
    jr nz, jr_0fa_5cfe

    ld h, c
    ld h, a
    ld l, [hl]
    ld [hl], l

jr_0fa_5c95:
    ld l, l
    jr nz, jr_0fa_5d0a

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $00
    ld b, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_0fa_5d18

    ld l, b
    ld h, l
    jr nz, jr_0fa_5ceb

    ld l, a
    ld l, h
    ld [hl], h

jr_0fa_5cab:
    jr nz, jr_0fa_5cfd

    ld a, c
    ld [hl], h
    ld l, b
    ld l, a
    ld l, [hl]
    ld l, $01
    ld c, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$72

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l

jr_0fa_5cc0:
    ld l, h
    jr nz, jr_0fa_5d37

    ld l, b
    ld h, c

jr_0fa_5cc5:
    ld l, [hl]
    nop
    ld l, l
    ld h, c
    ld h, a
    ld l, [hl]
    ld [hl], l
    ld l, l
    jr nz, jr_0fa_5d41

    ld l, a
    ld [hl], l
    ld l, [hl]

jr_0fa_5cd2:
    ld h, h
    ld [hl], e
    ld l, $00
    ld b, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_0fa_5d4f

    ld l, b
    ld h, l
    jr nz, jr_0fa_5d22

    ld l, $20
    ld d, b
    ld a, c
    ld [hl], h
    ld l, b
    ld l, a

jr_0fa_5ce6:
    ld l, [hl]
    ld l, $01
    ld b, [hl]
    ld [hl], l

jr_0fa_5ceb:
    ld h, l
    ld l, h
    jr nz, jr_0fa_5d55

    ld l, a
    ld [hl], d
    jr nz, jr_0fa_5d67

jr_0fa_5cf3:
    ld l, b
    ld h, l
    nop
    ld h, [hl]
    ld l, h
    ld h, c
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b

jr_0fa_5cfd:
    ld [hl], d

jr_0fa_5cfe:
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $01
    ld b, c
    jr nz, @+$65

    ld h, c
    ld [hl], d
    db $76

jr_0fa_5d0a:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0fa_5d7e

    ld h, [hl]
    nop
    ld h, c
    jr nz, jr_0fa_5d87

    ld [hl], a
    ld l, a
    ld [hl], d
    ld h, h

jr_0fa_5d18:
    ld l, $01
    ld b, c
    jr nz, jr_0fa_5d80

    ld h, c
    ld [hl], d
    db $76
    ld l, c
    ld l, [hl]

jr_0fa_5d22:
    ld h, a
    jr nz, jr_0fa_5d94

    ld h, [hl]
    nop
    ld h, c
    ld l, [hl]
    jr nz, jr_0fa_5d8c

    ld [hl], d
    ld l, l
    ld l, a
    ld [hl], d
    ld l, $01
    ld b, c
    jr nz, @+$65

    ld h, c
    ld [hl], d
    db $76

jr_0fa_5d37:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0fa_5dab

    ld h, [hl]
    nop
    ld h, c
    jr nz, jr_0fa_5db4

jr_0fa_5d41:
    ld l, b
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    ld l, $01
    ld b, c
    jr nz, jr_0fa_5dae

    ld h, c
    ld [hl], d
    db $76
    ld l, c

jr_0fa_5d4f:
    ld l, [hl]
    ld h, a
    jr nz, @+$71

    ld h, [hl]
    nop

jr_0fa_5d55:
    ld h, c
    jr nz, jr_0fa_5dc0

    ld h, l
    ld l, h
    ld l, l
    ld h, l
    ld [hl], h
    ld l, $01
    ld b, c
    jr nz, jr_0fa_5dc6

    ld h, l
    ld [hl], e
    ld l, e
    jr nz, @+$6d

jr_0fa_5d67:
    ld h, l
    ld a, c
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0fa_5dde

    ld [hl], l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_0fa_5da7

    jr nc, jr_0fa_5dab

    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0fa_5de1

jr_0fa_5d7e:
    ld h, c
    ld [hl], d

jr_0fa_5d80:
    db $76
    ld h, l
    ld h, h
    ld l, $01
    ld d, h
    ld l, b

jr_0fa_5d87:
    ld h, l
    jr nz, jr_0fa_5df8

    ld [hl], l
    ld l, l

jr_0fa_5d8c:
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_0fa_5dc1

    jr nc, jr_0fa_5dc6

    nop

jr_0fa_5d94:
    ld l, c
    ld [hl], e
    jr nz, jr_0fa_5dfb

    ld h, c
    ld [hl], d
    db $76
    ld h, l
    ld h, h
    ld l, $01
    ld b, c
    jr nz, jr_0fa_5e0d

    ld h, l
    ld a, c
    jr nz, jr_0fa_5e1a

    ld l, a

jr_0fa_5da7:
    jr nz, jr_0fa_5e0e

    ld l, [hl]
    ld [hl], h

jr_0fa_5dab:
    ld h, l
    ld [hl], d
    nop

jr_0fa_5dae:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0fa_5df6

    ld l, a

jr_0fa_5db4:
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_0fa_5e0d

    ld l, a
    ld l, a
    ld l, l
    ld l, $01

jr_0fa_5dc0:
    ld b, c

jr_0fa_5dc1:
    jr nz, jr_0fa_5e36

    ld [hl], h
    ld [hl], d
    ld h, c

jr_0fa_5dc6:
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_0fa_5e38

    ld h, c
    ld [hl], d
    ld l, e
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0fa_5e36

    ld h, c
    ld [hl], d
    db $76
    ld h, l
    ld h, h
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e

jr_0fa_5dde:
    jr nz, jr_0fa_5e53

    ld [hl], b

jr_0fa_5de1:
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop
    ld h, e
    ld l, a
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_0fa_5e61

    ld l, a

jr_0fa_5df6:
    ld l, a
    ld l, e

jr_0fa_5df8:
    ld [hl], e
    nop
    ld l, c

jr_0fa_5dfb:
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld l, $2e
    ld l, $01
    ld b, c
    jr nz, jr_0fa_5e7d

    ld l, c
    ld l, l
    ld [hl], b

jr_0fa_5e0d:
    ld l, h

jr_0fa_5e0e:
    ld h, l
    jr nz, jr_0fa_5e7d

    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_0fa_5e79

    ld h, c
    ld l, [hl]
    nop
    ld h, d

jr_0fa_5e1a:
    ld h, l
    jr nz, @+$71

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_0fa_5e9b

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0fa_5e9d

    ld l, b
    ld l, c
    ld [hl], e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0fa_5ea2

    ld [hl], l

jr_0fa_5e36:
    ld [hl], e
    ld [hl], h

jr_0fa_5e38:
    jr nz, jr_0fa_5e9c

    ld h, l
    jr nz, jr_0fa_5e9e

    nop
    ld h, e
    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], h
    jr nz, jr_0fa_5eb9

    ld l, a
    ld l, l
    ld h, l
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01
    ld b, c
    jr nz, jr_0fa_5eb6

jr_0fa_5e53:
    ld l, b
    ld h, l
    ld l, l
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    jr nz, jr_0fa_5ed0

    ld l, a
    jr nz, jr_0fa_5eca

    ld l, c
    ld l, h

jr_0fa_5e61:
    ld l, h
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0fa_5edf

    ld h, l
    ld h, l
    ld h, h
    ld [hl], e
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0fa_5ee7

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]

jr_0fa_5e79:
    ld h, a
    nop
    ld h, d
    ld h, l

jr_0fa_5e7d:
    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, c
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, h
    ld a, c
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0fa_5f01

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_0fa_5efc

    ld [hl], e
    nop
    daa
    ld c, l
    ld l, a
    ld l, a
    ld l, [hl]
    ld l, h

jr_0fa_5e9b:
    ld l, c

jr_0fa_5e9c:
    ld h, a

jr_0fa_5e9d:
    ld l, b

jr_0fa_5e9e:
    ld [hl], h
    jr nz, jr_0fa_5ef4

    ld l, a

jr_0fa_5ea2:
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, c
    daa
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0fa_5f13

    jr nz, @+$75

    ld h, e
    ld [hl], d

jr_0fa_5eb6:
    ld h, c
    ld [hl], h
    ld h, e

jr_0fa_5eb9:
    ld l, b
    ld l, $00
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, @+$6f

    ld h, c
    ld a, c
    jr nz, jr_0fa_5f31

    ld h, c

jr_0fa_5eca:
    db $76
    ld h, l
    nop
    ld [hl], l
    ld [hl], e
    ld h, l

jr_0fa_5ed0:
    ld h, h
    jr nz, @+$6b

    ld [hl], h
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$67

    ld a, b
    ld h, c
    ld h, e

jr_0fa_5edf:
    ld [hl], h
    ld l, h
    ld a, c
    jr nz, jr_0fa_5f58

    ld l, b
    ld h, l
    nop

jr_0fa_5ee7:
    ld [hl], e
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_0fa_5f60

    ld l, b
    ld h, c
    ld [hl], b
    ld h, l
    jr nz, @+$63

    ld [hl], e

jr_0fa_5ef4:
    jr nz, jr_0fa_5f6a

    ld l, b
    ld h, l
    nop
    ld [hl], a
    ld l, a
    ld l, a

jr_0fa_5efc:
    ld h, h
    jr nz, @+$67

    ld l, l
    ld h, d

jr_0fa_5f01:
    ld l, h
    ld h, l
    ld l, l
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0fa_5f84

    ld h, c
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_0fa_5f80

jr_0fa_5f13:
    ld h, l
    ld h, h
    ld h, c
    ld l, h
    nop
    ld l, c
    ld l, [hl]
    jr nz, jr_0fa_5f90

    ld l, b
    ld h, l
    jr nz, jr_0fa_5f82

    ld l, a
    ld l, a
    ld l, e
    ld l, $01
    ld b, c
    jr nz, jr_0fa_5f95

    ld h, l
    ld h, h
    ld h, c
    ld l, h
    jr nz, jr_0fa_5f94

    ld [hl], d
    ld l, a
    ld l, l

jr_0fa_5f31:
    jr nz, jr_0fa_5fa7

    ld l, b
    ld h, l
    nop
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_0fa_5f81

    ld l, a
    ld l, a
    ld l, l
    jr nz, jr_0fa_5f84

    ld l, a
    ld l, a
    ld l, e
    ld l, $01
    ld b, c
    jr nz, @+$6f

    ld h, l
    ld h, h
    ld h, c
    ld l, h
    jr nz, jr_0fa_5fb6

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0fa_5fc9

    ld l, b
    ld h, l
    nop

jr_0fa_5f58:
    ld [hl], e
    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    jr nz, jr_0fa_5fa4

jr_0fa_5f60:
    ld l, a
    ld l, a
    ld l, l
    jr nz, jr_0fa_5fa7

    ld l, a
    ld l, a
    ld l, e
    ld l, $01

jr_0fa_5f6a:
    ld c, c
    ld [hl], h
    ld [hl], e
    jr nz, @+$67

    ld l, [hl]
    ld h, h
    jr nz, jr_0fa_5fdc

    ld [hl], e
    nop
    ld [hl], e
    ld [hl], c
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, l
    dec l
    ld [hl], e
    ld l, b
    ld h, c
    ld [hl], b

jr_0fa_5f80:
    ld h, l

jr_0fa_5f81:
    ld h, h

jr_0fa_5f82:
    ld l, $01

jr_0fa_5f84:
    ld c, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_0fa_5fee

    ld l, [hl]
    ld h, h
    jr nz, jr_0fa_5ff6

    ld [hl], e
    nop
    ld l, b

jr_0fa_5f90:
    ld h, l
    ld a, b
    dec l
    ld [hl], e

jr_0fa_5f94:
    ld l, b

jr_0fa_5f95:
    ld h, c
    ld [hl], b
    ld h, l
    ld h, h
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$4b

    jr nz, jr_0fa_6005

    ld h, c
    ld l, [hl]

jr_0fa_5fa4:
    jr nz, jr_0fa_6013

    ld l, a

jr_0fa_5fa7:
    db $76
    ld h, l
    jr nz, jr_0fa_601f

    ld l, b
    ld h, l
    nop
    ld h, l
    ld l, h
    ld h, l
    db $76
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d

jr_0fa_5fb6:
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, @+$75

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, jr_0fa_6036

    ld l, a
    jr nz, jr_0fa_6027

    ld h, l
    jr nz, @+$75

    ld l, a

jr_0fa_5fc9:
    ld l, l
    ld h, l
    nop
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0fa_6041

    ld h, [hl]
    jr nz, jr_0fa_6047

    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b

jr_0fa_5fdc:
    nop
    ld [hl], d
    ld h, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, $01
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_0fa_605a

    ld h, c
    ld h, a
    ld h, l
    ld [hl], e

jr_0fa_5fee:
    jr nz, jr_0fa_6051

    ld [hl], d
    ld h, l
    jr nz, jr_0fa_6056

    ld l, h
    ld h, c

jr_0fa_5ff6:
    ld l, [hl]
    ld l, e
    ld l, $00
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0fa_606b

    ld [hl], h
    jr nz, jr_0fa_606b

jr_0fa_6005:
    ld l, a
    ld [hl], d
    ld l, $2e
    ld l, $3f
    ld bc, $2041
    ld h, e
    ld h, c
    ld [hl], d
    db $76
    ld l, c

jr_0fa_6013:
    ld l, [hl]
    ld h, a
    jr nz, jr_0fa_6086

    ld h, [hl]
    jr nz, jr_0fa_608e

    ld l, b
    ld h, l
    nop
    ld [hl], e
    ld [hl], l

jr_0fa_601f:
    ld l, [hl]
    ld l, $01
    ld b, c
    jr nz, jr_0fa_6088

    ld h, c
    ld [hl], d

jr_0fa_6027:
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0fa_609c

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    nop
    ld l, l
    ld l, a
    ld l, a

jr_0fa_6036:
    ld l, [hl]
    ld l, $01
    ld b, c
    jr nz, jr_0fa_609f

    ld h, c
    ld [hl], d
    db $76
    ld l, c
    ld l, [hl]

jr_0fa_6041:
    ld h, a
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_0fa_60bb

jr_0fa_6047:
    ld l, b
    ld h, l
    nop
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld l, $01
    ld d, e

jr_0fa_6051:
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_0fa_60bc

jr_0fa_6056:
    ld l, h
    ld [hl], l
    ld l, c
    ld h, h

jr_0fa_605a:
    jr nz, jr_0fa_60c5

    ld [hl], e
    nop
    ld l, h
    ld h, l
    ld h, [hl]
    ld [hl], h
    ld l, $01
    ld c, a
    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_0fa_60d9

    ld l, [hl]

jr_0fa_606b:
    ld h, l
    jr nz, jr_0fa_60d2

    ld l, a
    ld [hl], e
    ld h, l
    nop
    ld l, c
    ld [hl], e
    jr nz, @+$6e

    ld h, l
    ld h, [hl]
    ld [hl], h
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld a, c

jr_0fa_6086:
    jr nz, jr_0fa_60f1

jr_0fa_6088:
    ld [hl], e
    nop
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, h

jr_0fa_608e:
    ld l, h
    jr nz, @+$63

    ld l, h
    ld l, c
    db $76
    ld h, l
    ld l, $01
    ld c, c
    jr nz, jr_0fa_60fd

    ld h, c
    ld l, [hl]

jr_0fa_609c:
    jr nz, jr_0fa_6111

    ld l, c

jr_0fa_609f:
    ld h, a
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_0fa_60e7

    ld [hl], d
    ld h, c
    ld h, h
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0fa_6123

    ld l, b
    ld l, c
    ld [hl], e
    ld l, $01
    ld c, c
    jr nz, jr_0fa_611a

    ld h, c
    ld l, [hl]
    jr nz, jr_0fa_6123

jr_0fa_60bb:
    ld h, l

jr_0fa_60bc:
    ld h, c
    ld l, h
    jr nz, jr_0fa_6121

    ld l, [hl]
    ld a, c
    jr nz, @+$79

    ld l, a

jr_0fa_60c5:
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0fa_6143

    ld l, b
    ld l, c
    ld [hl], e

jr_0fa_60d2:
    ld l, $01
    ld h, c
    jr nz, jr_0fa_614e

    ld l, b
    ld l, c

jr_0fa_60d9:
    ld l, h
    ld h, l
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0fa_6144

    jr nz, jr_0fa_6151

    ld l, a
    ld h, e

jr_0fa_60e7:
    ld h, c
    ld l, h
    jr nz, jr_0fa_6153

    ld h, l
    ld [hl], d
    ld h, d
    ld l, $01
    ld c, c

jr_0fa_60f1:
    jr nz, jr_0fa_616a

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_0fa_6171

    ld l, b
    ld h, c
    ld [hl], h

jr_0fa_60fd:
    nop
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_0fa_616f

    ld [hl], h
    jr nz, jr_0fa_6171

    ld h, c
    ld [hl], e
    ld l, $2e
    ld l, $01
    ld c, c
    ld [hl], h

jr_0fa_6111:
    daa
    ld [hl], e
    jr nz, jr_0fa_618a

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_0fa_6191

jr_0fa_611a:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0fa_6180

    nop
    ld [hl], h

jr_0fa_6121:
    ld a, c
    ld [hl], b

jr_0fa_6123:
    ld h, l
    ld [hl], a
    ld [hl], d
    ld l, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $01
    ld b, c
    jr nz, jr_0fa_6196

    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0fa_6197

    ld l, a
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, @+$76

    ld l, a
    nop
    ld [hl], b
    ld [hl], l
    ld [hl], h
    jr nz, jr_0fa_61a6

jr_0fa_6143:
    ld l, b

jr_0fa_6144:
    ld h, l
    ld l, l
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld [hl], e
    jr nz, jr_0fa_61b6

    ld l, [hl]

jr_0fa_614e:
    ld l, $01
    ld d, h

jr_0fa_6151:
    ld l, b
    ld h, l

jr_0fa_6153:
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0fa_61d0

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0fa_61c8

    ld l, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0fa_61c8

    ld l, a
    ld [hl], h
    ld [hl], h
    ld l, h

jr_0fa_616a:
    ld h, l
    ld l, $01
    ld d, h
    ld l, b

jr_0fa_616f:
    ld l, c
    ld [hl], e

jr_0fa_6171:
    jr nz, jr_0fa_61dc

    ld [hl], e
    jr nz, jr_0fa_61e4

    ld h, l
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_0fa_61f1

    ld l, a
    nop
    ld h, a

jr_0fa_6180:
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_0fa_61df

    dec l

jr_0fa_618a:
    ld c, d
    ld c, a
    ld c, h
    ld d, h
    ld l, $01
    ld d, h

jr_0fa_6191:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0fa_61ff

jr_0fa_6196:
    ld [hl], e

jr_0fa_6197:
    jr nz, jr_0fa_6207

    ld l, a
    ld [hl], h
    jr nz, jr_0fa_6211

    ld l, b
    ld h, l
    nop
    ld h, e
    ld l, b
    ld h, l
    ld l, l
    ld l, c
    ld h, e

jr_0fa_61a6:
    ld h, c
    ld l, h
    jr nz, jr_0fa_61f3

    jr nz, jr_0fa_621a

    ld h, l
    ld h, l
    ld h, h
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_0fa_61ff

jr_0fa_61b6:
    jr nz, jr_0fa_621b

    ld h, c
    ld l, [hl]
    nop
    ld h, h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld a, c
    jr nz, jr_0fa_622d

    ld [hl], h
    ld l, $01
    ld c, c

jr_0fa_61c8:
    jr nz, jr_0fa_622e

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0fa_623e

jr_0fa_61d0:
    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_0fa_6249

    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld h, c
    ld l, [hl]
    ld a, c

jr_0fa_61dc:
    jr nz, jr_0fa_624b

    ld l, a

jr_0fa_61df:
    ld [hl], d
    ld h, l
    ld l, $01
    ld c, c

jr_0fa_61e4:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0fa_624a

    jr nz, @+$6f

    ld l, c
    ld a, b
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l

jr_0fa_61f1:
    jr nz, @+$71

jr_0fa_61f3:
    ld h, [hl]
    nop
    ld [hl-], a
    jr nz, jr_0fa_625f

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0fa_6266

    ld h, l

jr_0fa_61ff:
    ld [hl], d
    ld h, d
    ld [hl], e
    ld l, $01
    ld c, c
    ld [hl], h
    daa

jr_0fa_6207:
    ld [hl], e
    jr nz, jr_0fa_626b

    jr nz, @+$6f

    ld l, c
    ld a, b
    ld [hl], h
    ld [hl], l
    ld [hl], d

jr_0fa_6211:
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    nop
    ld h, a
    ld [hl], d
    ld h, l
    ld h, l

jr_0fa_621a:
    ld l, [hl]

jr_0fa_621b:
    jr nz, jr_0fa_627e

    ld l, [hl]
    ld h, h
    jr nz, @+$64

    ld l, h
    ld [hl], l
    ld h, l
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, d
    ld [hl], e
    ld l, $01
    ld c, c

jr_0fa_622d:
    ld [hl], h

jr_0fa_622e:
    daa
    ld [hl], e
    jr nz, jr_0fa_6293

    jr nz, jr_0fa_62a1

    ld l, c
    ld a, b
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0fa_62ab

    ld h, [hl]
    nop

jr_0fa_623e:
    ld h, a
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0fa_62a6

    ld l, [hl]
    ld h, h
    jr nz, jr_0fa_62bb

jr_0fa_6249:
    ld h, l

jr_0fa_624a:
    ld h, h

jr_0fa_624b:
    jr nz, jr_0fa_62b5

    ld h, l
    ld [hl], d
    ld h, d
    ld [hl], e
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0fa_62ba

    jr nz, jr_0fa_62c8

    ld l, c
    ld a, b
    ld [hl], h
    ld [hl], l

jr_0fa_625f:
    ld [hl], d
    ld h, l
    jr nz, jr_0fa_62d2

    ld h, [hl]
    nop
    inc sp

jr_0fa_6266:
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l

jr_0fa_626b:
    ld l, [hl]
    jr nz, jr_0fa_62d6

    ld h, l
    ld [hl], d
    ld h, d
    ld [hl], e
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0fa_62db

    jr nz, jr_0fa_62e9

    ld l, c
    ld a, b

jr_0fa_627e:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0fa_62f3

    ld h, [hl]
    nop
    ld [hl-], a
    jr nz, jr_0fa_62f0

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0fa_62f7

    ld h, l
    ld [hl], d
    ld h, d
    ld [hl], e

jr_0fa_6293:
    jr nz, jr_0fa_62f6

    ld l, [hl]
    ld h, h
    nop
    ld h, d
    ld l, h
    ld [hl], l
    ld h, l
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, d

jr_0fa_62a1:
    ld l, $01
    ld c, c
    ld [hl], h
    daa

jr_0fa_62a6:
    ld [hl], e
    jr nz, jr_0fa_630a

    jr nz, jr_0fa_6318

jr_0fa_62ab:
    ld l, c
    ld a, b
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0fa_6322

    ld h, [hl]
    nop

jr_0fa_62b5:
    ld h, a
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]

jr_0fa_62ba:
    inc l

jr_0fa_62bb:
    jr nz, jr_0fa_631f

    ld l, h
    ld [hl], l
    ld h, l
    jr nz, jr_0fa_6323

    ld l, [hl]
    ld h, h
    jr nz, jr_0fa_6338

    ld h, l
    ld h, h

jr_0fa_62c8:
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, d
    ld [hl], e
    ld l, $01
    ld c, c
    ld [hl], h

jr_0fa_62d2:
    daa
    ld [hl], e
    jr nz, jr_0fa_634a

jr_0fa_62d6:
    ld l, a
    ld l, a
    jr nz, @+$66

    ld h, c

jr_0fa_62db:
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0fa_634d

    ld l, c
    ld [hl], d

jr_0fa_62e9:
    ld h, l
    ld hl, $4420
    ld l, a
    ld h, l
    ld [hl], e

jr_0fa_62f0:
    jr nz, jr_0fa_635b

    ld [hl], h

jr_0fa_62f3:
    nop
    ld l, b
    ld h, c

jr_0fa_62f6:
    db $76

jr_0fa_62f7:
    ld h, l
    jr nz, jr_0fa_635b

    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_0fa_6377

    ld [hl], e
    ld h, l
    ccf
    ld bc, $7449
    jr nz, jr_0fa_637d

jr_0fa_630a:
    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, @+$76

    ld l, a
    jr nz, jr_0fa_6375

    ld h, l
    jr nz, jr_0fa_6377

    nop
    ld [hl], e

jr_0fa_6318:
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    dec l
    ld [hl], l
    ld [hl], b

jr_0fa_631f:
    jr nz, jr_0fa_6385

    ld l, c

jr_0fa_6322:
    ld [hl], e

jr_0fa_6323:
    ld l, e
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_0fa_639c

    ld h, l
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_0fa_63ac

    ld l, c
    ld l, [hl]
    ld h, h

jr_0fa_6338:
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0fa_63a2

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0fa_63ba

    ld [hl], e
    ld h, l
    nop
    ld l, c
    ld [hl], h

jr_0fa_634a:
    jr nz, jr_0fa_63b4

    ld h, l

jr_0fa_634d:
    ld [hl], d
    ld h, l
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0fa_63c3

    ld l, l

jr_0fa_635b:
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld l, $01
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0fa_63e3

    ld l, a
    ld [hl], l
    jr nz, jr_0fa_63db

    ld l, c
    ld a, b
    jr nz, jr_0fa_63e6

    ld l, b
    ld h, l
    nop

jr_0fa_6375:
    ld l, b
    ld h, l

jr_0fa_6377:
    ld [hl], d
    ld h, d
    ld [hl], e
    ccf
    jr nz, jr_0fa_63d6

jr_0fa_637d:
    ld h, l
    ld [hl], e
    jr nz, @+$50

    ld l, a
    ld bc, $694d

jr_0fa_6385:
    ld a, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, @+$66

    ld l, a
    ld h, l
    ld [hl], e
    nop
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_0fa_640d

    ld h, l
    ld h, l

jr_0fa_639c:
    ld l, l
    jr nz, jr_0fa_6413

    ld l, a
    jr nz, @+$79

jr_0fa_63a2:
    ld l, a
    ld [hl], d
    ld l, e
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0fa_640f

jr_0fa_63ac:
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6f

    ld l, c
    ld a, b

jr_0fa_63b4:
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l

jr_0fa_63ba:
    jr nz, @+$76

    ld [hl], a
    ld l, a
    ld l, $01
    ld c, c
    ld d, h
    ld b, l

jr_0fa_63c3:
    ld c, l
    jr nz, jr_0fa_640f

    ld c, [hl]
    ld b, e
    ld c, h
    ld d, l
    ld b, h
    ld b, l
    ld b, h
    ld bc, $4f59
    ld d, l
    jr nz, @+$45

    ld b, c
    ld c, [hl]
    daa

jr_0fa_63d6:
    ld d, h
    jr nz, jr_0fa_641c

    ld b, c
    ld d, d

jr_0fa_63db:
    ld d, d
    ld e, c
    nop
    ld b, c
    ld c, [hl]
    ld e, c
    jr nz, @+$4f

jr_0fa_63e3:
    ld c, a
    ld d, d
    ld b, l

jr_0fa_63e6:
    jr nz, jr_0fa_6431

    ld d, h
    ld b, l
    ld c, l
    ld d, e
    ld l, $01
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0fa_6418

    jr nz, jr_0fa_641a

    jr nz, jr_0fa_641c

    jr nz, jr_0fa_641e

    jr nz, jr_0fa_6420

    jr nz, jr_0fa_6422

    nop
    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

jr_0fa_640d:
    jr nz, jr_0fa_642f

jr_0fa_640f:
    jr nz, jr_0fa_6431

    jr nz, jr_0fa_6433

jr_0fa_6413:
    jr nz, jr_0fa_6435

    jr nz, jr_0fa_6437

    nop

jr_0fa_6418:
    jr nz, @+$22

jr_0fa_641a:
    jr nz, @+$22

jr_0fa_641c:
    jr nz, @+$22

jr_0fa_641e:
    jr nz, @+$22

jr_0fa_6420:
    jr nz, @+$22

jr_0fa_6422:
    jr nz, @+$22

    jr nz, jr_0fa_6446

    jr nz, jr_0fa_6448

    jr nz, jr_0fa_644a

    jr nz, jr_0fa_644c

    ld bc, $012f

jr_0fa_642f:
    jr nz, @+$03

jr_0fa_6431:
    jr nz, @+$22

jr_0fa_6433:
    jr nz, @+$22

jr_0fa_6435:
    jr nz, @+$22

jr_0fa_6437:
    jr nz, @+$22

    jr nz, jr_0fa_645b

    jr nz, jr_0fa_645d

    jr nz, jr_0fa_645f

    jr nz, jr_0fa_6461

    jr nz, jr_0fa_6463

    jr nz, jr_0fa_6465

    nop

jr_0fa_6446:
    jr nz, @+$22

jr_0fa_6448:
    jr nz, @+$22

jr_0fa_644a:
    jr nz, @+$22

jr_0fa_644c:
    jr nz, @+$22

    jr nz, jr_0fa_6470

    jr nz, jr_0fa_6472

    jr nz, jr_0fa_6474

    jr nz, jr_0fa_6476

    jr nz, jr_0fa_6478

    jr nz, jr_0fa_647a

    nop

jr_0fa_645b:
    jr nz, @+$22

jr_0fa_645d:
    jr nz, @+$22

jr_0fa_645f:
    jr nz, @+$22

jr_0fa_6461:
    jr nz, @+$22

jr_0fa_6463:
    jr nz, @+$22

jr_0fa_6465:
    jr nz, jr_0fa_6487

    jr nz, jr_0fa_6489

    jr nz, jr_0fa_648b

    jr nz, jr_0fa_648d

    jr nz, jr_0fa_648f

    nop

jr_0fa_6470:
    jr nz, @+$22

jr_0fa_6472:
    jr nz, @+$22

jr_0fa_6474:
    jr nz, @+$22

jr_0fa_6476:
    jr nz, @+$22

jr_0fa_6478:
    jr nz, jr_0fa_649a

jr_0fa_647a:
    jr nz, @+$22

    jr nz, jr_0fa_649e

    jr nz, @+$22

    jr nz, jr_0fa_64a2

    jr nz, jr_0fa_64a4

    ld bc, $2001

jr_0fa_6487:
    jr nz, jr_0fa_64a9

jr_0fa_6489:
    jr nz, jr_0fa_64ab

jr_0fa_648b:
    jr nz, jr_0fa_64ad

jr_0fa_648d:
    jr nz, jr_0fa_64af

jr_0fa_648f:
    jr nz, jr_0fa_64b1

    jr nz, jr_0fa_64b3

    jr nz, jr_0fa_64b5

    jr nz, jr_0fa_64b7

    jr nz, jr_0fa_649a

    ld b, d

jr_0fa_649a:
    ld [hl-], a
    ld bc, $3342

jr_0fa_649e:
    ld bc, $00c9
    nop

jr_0fa_64a2:
    nop
    nop

jr_0fa_64a4:
    nop
    nop
    nop
    nop
    nop

jr_0fa_64a9:
    nop
    nop

jr_0fa_64ab:
    nop
    nop

jr_0fa_64ad:
    nop
    nop

jr_0fa_64af:
    nop
    nop

jr_0fa_64b1:
    nop
    nop

jr_0fa_64b3:
    nop
    nop

jr_0fa_64b5:
    nop
    nop

jr_0fa_64b7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
