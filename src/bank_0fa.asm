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

bank0fa_48ec:
    db "NOTHING             ", $01
    db "CLIP                ", $01
    db "SHELLS              ", $01
    db "EXPLOSIVE ROUNDS    ", $01
    db "ACID ROUNDS         ", $01
    db "FLAME ROUNDS        ", $01
    db "MAGNUM ROUNDS       ", $01
    db "DUMDUM ROUNDS       ", $01
    db "FUEL                ", $01
    db "F.-AID SPRAY        ", $01
    db "GREEN HERB          ", $01
    db "BLUE HERB           ", $01
    db "RED HERB            ", $01
    db "MIXED HERB          ", $01
    db "INK RIBBON          ", $01
    db "CHEMICAL            ", $01
    db "HERBICIDE           ", $01
    db "BLUE JEWEL          ", $01
    db "RED JEWEL           ", $01
    db "SHEET MUSIC         ", $01
    db "WOOD EMBLEM         ", $01
    db "GOLD EMBLEM         ", $01
    db "DOOM BOOK 1         ", $01
    db "DOOM BOOK 2         ", $01
    db "EAGLE MEDAL         ", $01
    db "WOLF MEDAL          ", $01
    db "CRANK               ", $01
    db "SQUARE CRANK        ", $01
    db "HEX. CRANK          ", $01
    db "BATTERY             ", $01
    db "SLIDES              ", $01
    db "RED BOOK            ", $01
    db "BLANK BOOK          ", $01
    db "SUN CREST           ", $01
    db "MOON CREST          ", $01
    db "STAR CREST          ", $01
    db "LIGHTER             ", $01
    db "SERUM               ", $01
    db "COM. RADIO          ", $01
    db "FLARE               ", $01
    db "BROKEN SHOTGUN      ", $01
    db "MO DISK             ", $01
    db "WIND CREST          ", $01
    db "BOTANY BOOK         ", $01
    db "MANSION KEY         ", $01
    db "SWORD KEY           ", $01
    db "ARMOR KEY           ", $01
    db "SHIELD KEY          ", $01
    db "HELMET KEY          ", $01
    db "SMALL KEY           ", $01
    db "DESK KEY            ", $01
    db "DORMITORY KEY       ", $01
    db "002 KEY             ", $01
    db "003 KEY             ", $01
    db "C. ROOM KEY         ", $01
    db "LAB KEY             ", $01
    db "P. ROOM KEY         ", $01
    db "MASTER KEY          ", $01
    db "LOCKPICK            ", $01
    db "CLOSET KEY          ", $01
    db "EMPTY BOTTLE        ", $01
    db "WATER               ", $01
    db "UMB No.2            ", $01
    db "NP-003              ", $01
    db "UMB No.4            ", $01
    db "Yellow-6            ", $01
    db "UMB No.7            ", $01
    db "UMB No.13           ", $01
    db "V-JOLT              ", $01
    db "COMBAT KNIFE        ", $01
    db "BERRETTA            ", $01
    db "SHOTGUN             ", $01
    db "BAZOOKA             ", $01
    db "COLT PYTHON         ", $01
    db "FLAMETHROWER        ", $01
    db "R. LAUNCHER         ", $01
    db "MAP                ", $01
    db "WILL YOU TAKE THE", $00, "CLIP YES NO ", $01
    db "WILL YOU TAKE THE", $00, "SHELLS YES NO ", $01
    db "WILL YOU TAKE THE", $00, "EXPLOSIVE ROUNDS YES NO ", $01
    db "WILL YOU TAKE THE", $00, "ACID ROUNDS YES NO ", $01
    db "WILL YOU TAKE THE", $00, "FLAME ROUNDS YES NO ", $01
    db "WILL YOU TAKE THE", $00, "MAGNUM ROUNDS YES NO ", $01
    db "WILL YOU TAKE THE", $00, "DUMDUM ROUNDS YES NO ", $01
    db "WILL YOU TAKE THE", $00, "FUEL YES NO ", $01
    db "WILL YOU TAKE THE", $00, "F.-AID SPRAY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "GREEN HERB YES NO ", $01
    db "WILL YOU TAKE THE", $00, "BLUE HERB YES NO ", $01
    db "WILL YOU TAKE THE", $00, "RED HERB YES NO ", $01
    db "WILL YOU TAKE THE", $00, "MIXED HERB YES NO ", $01
    db "WILL YOU TAKE THE", $00, "INK RIBBON YES NO ", $01
    db "WILL YOU TAKE THE", $00, "CHEMICAL YES NO ", $01
    db "WILL YOU TAKE THE", $00, "HERBICIDE YES NO ", $01
    db "WILL YOU TAKE THE", $00, "BLUE JEWEL YES NO ", $01
    db "WILL YOU TAKE THE", $00, "RED JEWEL YES NO ", $01
    db "WILL YOU TAKE THE", $00, "SHEET MUSIC YES NO ", $01
    db "WILL YOU TAKE THE", $00, "WOOD EMBLEM YES NO ", $01
    db "WILL YOU TAKE THE", $00, "GOLD EMBLEM YES NO ", $01
    db "WILL YOU TAKE THE", $00, "DOOM BOOK 1 YES NO ", $01
    db "WILL YOU TAKE THE", $00, "DOOM BOOK 2 YES NO ", $01
    db "WILL YOU TAKE THE", $00, "EAGLE MEDAL YES NO ", $01
    db "WILL YOU TAKE THE", $00, "WOLF MEDAL YES NO ", $01
    db "WILL YOU TAKE THE", $00, "CRANK YES NO ", $01
    db "WILL YOU TAKE THE", $00, "SQUARE CRANK YES NO ", $01
    db "WILL YOU TAKE THE", $00, "HEX. CRANK YES NO ", $01
    db "WILL YOU TAKE THE", $00, "BATTERY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "SLIDES YES NO ", $01
    db "WILL YOU TAKE THE", $00, "RED BOOK YES NO ", $01
    db "WILL YOU TAKE THE", $00, "BLANK BOOK YES NO ", $01
    db "WILL YOU TAKE THE", $00, "SUN CREST YES NO ", $01
    db "WILL YOU TAKE THE", $00, "MOON CREST YES NO ", $01
    db "WILL YOU TAKE THE", $00, "STAR CREST YES NO ", $01
    db "WILL YOU TAKE THE", $00, "LIGHTER YES NO ", $01
    db "WILL YOU TAKE THE", $00, "SERUM YES NO ", $01
    db "WILL YOU TAKE THE", $00, "COM. RADIO YES NO ", $01
    db "WILL YOU TAKE THE", $00, "FLARE YES NO ", $01
    db "WILL YOU TAKE THE", $00, "BROKEN SHOTGUN", $00, " YES NO ", $01
    db "WILL YOU TAKE THE", $00, "MO DISK YES NO ", $01
    db "WILL YOU TAKE THE", $00, "WIND CREST YES NO ", $01
    db "WILL YOU TAKE THE", $00, "BOTANY BOOK YES NO ", $01
    db "WILL YOU TAKE THE", $00, "MANSION KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "SWORD KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "ARMOR KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "SHIELD KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "HELMET KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "SMALL KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "DESK KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "DORMITORY KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "002 KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "003 KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "C. ROOM KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "LAB KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "P. ROOM KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "MASTER KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "LOCKPICK YES NO ", $01
    db "WILL YOU TAKE THE", $00, "CLOSET KEY YES NO ", $01
    db "WILL YOU TAKE THE", $00, "EMPTY BOTTLE YES NO ", $01
    db "WILL YOU TAKE THE", $00, "WATER YES NO ", $01
    db "WILL YOU TAKE THE", $00, "UNB No.2 YES NO ", $01
    db "WILL YOU TAKE THE", $00, "NP-003 YES NO ", $01
    db "WILL YOU TAKE THE", $00, "UNB No.4 YES NO ", $01
    db "WILL YOU TAKE THE", $00, "Yellow-6 YES NO ", $01
    db "WILL YOU TAKE THE", $00, "UNB No.7 YES NO ", $01
    db "WILL YOU TAKE THE", $00, "UNB No.13 YES NO ", $01
    db "WILL YOU TAKE THE", $00, "V-JOLT YES NO ", $01
    db "WILL YOU TAKE THE", $00, "COMBAT KNIFE YES NO ", $01
    db "WILL YOU TAKE THE", $00, "BERRETTA YES NO ", $01
    db "WILL YOU TAKE THE", $00, "SHOTGUN YES NO ", $01
    db "WILL YOU TAKE THE", $00, "BAZOOKA YES NO ", $01
    db "WILL YOU TAKE THE", $00, "COLT PYTHON YES NO ", $01
    db "WILL YOU TAKE THE", $00, "FLAMETHROWER YES NO ", $01
    db "WILL YOU TAKE THE", $00, "R. LAUNCHER YES NO ", $01
    db "WILL YOU TAKE THE", $00, "MAP YES NO ", $01, $03
    db "They have escaped", $00, "into the mansion", $01, $03
    db "where they thought", $00, "it was safe.", $01, $03
    db "Yet...", $01, $03
    db "You have once", $00, "again entered", $01, $03
    db "the world of", $00, "survival horror.", $01, $03
    db "Good Luck!", $01
    db "This doesn't seem", $00, "to be enough for", $00, "this mission.", $01
    db "Berretta M92FS.", $00, "Automatic loaded", $00, "with 9mm bullets.", $01
    db "Remington M870.", $00, "Powerful single", $00, "loader.", $01
    db "A handgun can be", $00, "loaded with", $00, "various rounds.", $01
    db "Explosive roundsloaded.", $01
    db "Acid rounds", $00, "loaded.", $01
    db "Flame rounds", $00, "loaded.", $01
    db "Powerful gun can be", $00, "loaded with .357", $00, "magnum rounds.", $01
    db "Magnum rounds", $00, "loaded.", $01
    db "Dumdum rounds", $00, "loaded.", $01
    db "Can throw flame for", $00, "8 sec. with", $00, "maximum fuel.", $01
    db "One shot can destroy", $00, "almost any target.", $01
    db "Clip for Berretta.", $01
    db "Shells for the", $00, "shotgun.", $01
    db "Powerful rounds", $00, "for the Bazooka.", $01
    db ".357 magnum rounds.", $00, "For the Colt Python.", $01
    db "More powerful than", $00, "magnum rounds.", $00, "For the C. Python.", $01
    db "Fuel for the", $00, "flamethrower.", $01
    db "A carving of", $00, "a sword.", $01
    db "A carving of", $00, "an armor.", $01
    db "A carving of", $00, "a shield.", $01
    db "A carving of", $00, "a helmet.", $01
    db "A desk key.", $01
    db "The number 002", $00, "is carved.", $01
    db "The number 003", $00, "is carved.", $01
    db "A key to enter", $00, "the Control Room.", $01
    db "A strange mark", $00, "is carved.", $01
    db "It's specially", $00, "coated and looks", $00, "important...", $01
    db "A simple lock can", $00, "be opened with this.", $01
    db "There must be a", $00, "closet somewhere.", $01
    db "A chemical to kill", $00, "the weeds.", $01
    db "It's shining", $00, "beautifully.", $01
    db "The title is", $00, "'Moonlight Sonata'.", $01
    db "There's a scratch.", $00, "Someone may have", $00, "used it.", $01
    db "It's exactly the", $00, "same shape as the", $00, "wood emblem.", $01
    db "There was a medal", $00, "in the book.", $01
    db "A medal from the", $00, "first Doom Book.", $01
    db "A medal from the", $00, "second Doom Book.", $01
    db "Its end is", $00, "square-shaped.", $01
    db "Its end is", $00, "hex-shaped.", $01
    db "Now I can move the", $00, "elevator.", $01
    db "It seems to be some", $00, "kind of research", $00, "report.", $01
    db "All pages are blank.", $00, "What's it for...?", $01
    db "A carving of the", $00, "sun.", $01
    db "A carving of the", $00, "moon.", $01
    db "A carving of the", $00, "star.", $01
    db "Some fluid is", $00, "left.", $01
    db "Only one dose", $00, "is left.", $01
    db "The battery is", $00, "still alive.", $01
    db "I can signal Brad", $00, "with this.", $01
    db "I can heal any wound", $00, "with this.", $01
    db "a while.", $01
    db "It's a local herb.", $01
    db "I wonder what", $00, "effect it has...", $01
    db "It's used with a", $00, "typewriter.", $01
    db "A glass bottle to", $00, "put chemicals in.", $01
    db "There's water in", $00, "the bottle.", $01
    db "This is needed to", $00, "generate V-JOLT.", $01
    db "This is not the", $00, "chemical I need.", $01
    db "Now I can", $00, "destroy it.", $01
    db "I don't need this", $00, "any more.", $01
    db "It's a mixture of", $00, "2 green herbs.", $01
    db "It's a mixture of", $00, "green and blue", $00, "herbs.", $01
    db "It's a mixture of", $00, "green and red herbs.", $01
    db "It's a mixture of", $00, "3 green herbs.", $01
    db "It's a mixture of", $00, "2 green herbs and", $00, "blue herb.", $01
    db "It's a mixture of", $00, "green, blue and red", $00, "herbs.", $01
    db "It's too dangerous", $00, "to fire! Does it", $00, "have another use?", $01
    db "It seems to be a", $00, "start-up disk.", $01
    db "It represents wind.", $01
    db "You can't use", $00, "it here.", $01
    db "Nothing important.", $01
    db "Will you mix the", $00, "herbs? Yes No", $01
    db "Mixing these does", $00, "not seem to work.", $01
    db "You can't mix", $00, "these two.", $01
    db "ITEM INCLUDED", $01
    db "YOU CAN'T CARRY", $00, "ANY MORE ITEMS.", $01
    db "                    ", $00, "                    ", $00, "                    ", $01
    db "/", $01
    db " ", $01
    db "                    ", $00, "                    ", $00, "                    ", $00, "                    ", $01, $01
    db "                  ", $01
    db "B2", $01
    db "B3", $01
    db $c9
    
    ds $1b60, $00
