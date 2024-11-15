SECTION "ROM Bank $0df", ROMX[$4000], BANK[$df]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    nop
    nop
    db $fc
    db $fc
    ld bc, $fa01
    cp $03
    inc bc
    db $fd
    rst $38
    inc bc
    inc bc
    cp $ff
    ld bc, $ff01
    rst $38
    nop
    nop
    ld hl, sp-$01
    ld bc, $b001
    rst $38
    ld bc, $9001
    rst $38
    ld bc, $c001
    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    inc e
    rra
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_40f2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0df_40f2

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    dec b
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    nop
    nop
    db $fc
    db $fc
    ld bc, $fa01
    cp $03
    inc bc
    db $fd
    rst $38
    rlca
    rlca
    cp $ff
    rlca
    rlca
    ld a, a
    rst $38
    rrca
    rrca
    jr c, @+$01

    rrca
    rrca
    jr nc, @+$01

    rlca
    rlca
    sub b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    nop
    nop
    ldh [rIE], a
    nop
    nop
    jr nc, jr_0df_4223

    nop
    nop
    inc e
    rra
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_4223:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_426e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0df_426e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    dec b
    rst $38
    nop
    nop
    rrca
    rst $38
    nop
    nop
    sbc a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    xor $ff
    ret nz

    ld b, b
    ld de, $e01e
    jr nz, jr_0df_42cc

    inc c
    ret nz

    ld b, b
    rlca
    ld b, $80
    add b
    ld bc, $0001
    nop

jr_0df_42cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    ld b, l
    ld a, a
    nop
    nop
    or a
    ld sp, hl
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    rst $38
    db $fd
    rlca
    rlca
    cp $ff
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    di
    rst $38
    ld [bc], a
    inc bc
    ldh [rIE], a
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld bc, $2001
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    db $10
    rra
    nop
    nop
    inc de
    rra
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop

jr_0df_4408:
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    and b
    ldh [$c0], a
    ret nz

    ld d, c
    pop af
    ldh [$e0], a
    cpl
    rst $38
    ldh a, [$f0]
    jr nz, @+$01

    ld hl, sp-$08
    db $10
    rst $38
    ld [hl], b
    ldh a, [rNR23]
    rst $38
    jr nz, jr_0df_4408

    inc e
    rst $38
    ld b, b
    ret nz

    ld a, $ff
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    ld a, a
    nop
    nop
    ld a, d
    cp [hl]
    nop
    nop
    and h
    call c, RST_00
    ld hl, sp-$08
    nop
    nop
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    add c
    rst $38
    ld bc, $7801
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    rlca
    rlca
    cp $ff
    rlca
    rlca
    cp $ff
    inc bc
    inc bc
    di
    rst $38
    ld [bc], a
    inc bc
    ldh [rIE], a
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld bc, $2001
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    db $10
    rra
    nop
    nop
    inc de
    rra
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_456a:
    nop
    nop
    nop
    nop

jr_0df_456e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0df_456a

    nop
    nop
    jr nz, jr_0df_456e

    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld e, b
    ld hl, sp+$00
    nop
    inc h
    db $fc
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    ld de, $00ff
    nop
    add hl, de
    rst $38
    nop
    nop
    inc e
    rst $38
    add b
    add b
    ld a, $ff
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    or d
    cp $00
    nop
    ld e, h
    db $ec
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    or b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ldh a, [rIE]
    ld bc, $f801
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    rlca
    rlca
    cp $ff
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    di
    rst $38
    ld [bc], a
    inc bc
    ldh [rIE], a
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld bc, $2001
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    db $10
    rra
    nop
    nop
    inc de
    rra
    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    jr jr_0df_46a3

    nop
    nop
    jr jr_0df_46a7

    nop
    nop
    inc e
    rra
    nop
    nop
    rrca
    rrca
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

jr_0df_46a3:
    nop
    nop
    nop
    nop

jr_0df_46a7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_46e6:
    nop
    nop
    nop
    nop

jr_0df_46ea:
    nop
    nop
    nop
    nop

jr_0df_46ee:
    nop
    nop
    ldh [$e0], a

jr_0df_46f2:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr nc, jr_0df_46f2

    nop
    nop
    jr nz, jr_0df_46e6

    nop
    nop
    jr nz, jr_0df_46ea

    nop
    nop
    jr nz, jr_0df_46ee

    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld e, b
    ld hl, sp+$00
    nop
    inc h
    db $fc
    nop
    nop
    ld [hl-], a
    cp $00
    nop
    add hl, de
    rst $38
    nop
    nop
    dec e
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    ccf
    rst $38
    add b
    add b
    rst $38
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    ld a, a
    rst $38
    add b
    add b
    ccf
    rst $38
    nop
    nop
    ld e, $fe

jr_0df_4742:
    nop
    nop
    inc b
    db $fc
    nop
    nop
    jr jr_0df_4742

    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld [hl], h
    ld [hl], a
    nop
    nop
    ld hl, sp-$01
    ld bc, $f801
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    dec b
    rlca
    cp $ff
    dec bc
    rrca
    rst $38
    rst $38
    rrca
    dec c
    di
    rst $38
    inc c
    rrca
    ldh [rIE], a
    rlca
    rlca
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld bc, $2001
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    db $10
    rra
    nop
    nop
    inc de
    rra
    nop
    nop
    ld [$000f], sp
    nop
    ld b, $07
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

jr_0df_486a:
    nop
    nop
    inc a
    inc a

jr_0df_486e:
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    inc a
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0df_486a

    nop
    nop
    jr nz, jr_0df_486e

    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld l, $fe
    nop
    nop
    ld sp, $00ff
    nop
    jr @+$01

    add b
    add b
    inc e
    rst $38
    ld b, b
    ret nz

    ld e, $ff
    ld b, b
    ret nz

    ccf
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    ld b, b
    ret nz

    ld a, a
    rst $38
    ld b, b
    ret nz

    ld a, $ff
    add b
    add b
    add hl, de
    rst $38

jr_0df_48c2:
    nop
    nop
    ld b, $fe
    nop
    nop
    jr jr_0df_48c2

    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    inc bc
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ldh a, [rIE]
    ld bc, $f801
    rst $38
    ld [bc], a
    inc bc
    db $fc
    rst $38
    dec b
    rlca
    cp $ff
    dec b
    rlca
    rst $38
    rst $38
    rrca
    dec c
    ld hl, sp-$01
    dec c
    ld c, $f0
    rst $38
    ld b, $07
    ldh a, [$7f]
    inc bc
    inc bc
    or b
    rst $38
    ld bc, $9001
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0df_49af

    nop
    nop
    inc e
    rra
    nop
    nop
    dec b
    rlca
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_49af:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

jr_0df_49f2:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld h, b
    ldh [rP1], a
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
    nop

jr_0df_4a10:
    jr nz, jr_0df_49f2

jr_0df_4a12:
    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr z, jr_0df_4a12

    nop
    nop
    rla
    rst $38
    add b
    add b
    dec de
    cp $c0
    ret nz

    rra
    db $fc
    and b
    ld h, b
    ld c, $ff
    ldh [$60], a
    rrca
    rst $38
    jr nz, jr_0df_4a10

    rra
    rst $38
    and b
    ldh [$bf], a
    rst $38
    and b
    ldh [$7f], a
    rst $38
    ld b, b
    ret nz

    ccf
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    di
    rst $38
    ld bc, $f801
    rst $38
    ld [bc], a
    inc bc
    db $fc
    rst $38
    ld b, $07
    cp $ff
    rrca
    dec c
    rst $38
    rst $38
    dec c
    rrca
    ld hl, sp-$01
    ld b, $07
    ldh a, [rIE]
    dec c
    rrca
    ldh a, [rIE]
    ld c, $0f
    jr nc, @+$01

    rlca
    rlca
    sub b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    nop
    nop
    jr nz, jr_0df_4b2f

    nop
    nop
    inc e
    rra
    nop
    nop
    dec b
    rlca
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_4b2f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_4b6e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_4b82:
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
    jr nz, jr_0df_4b6e

    nop
    nop
    jr nc, jr_0df_4b82

    nop
    nop
    call z, Call_000_00fc
    nop
    ld [hl+], a
    cp $00
    nop
    ld de, $00ff
    nop
    db $10
    rst $38
    add b
    add b
    inc e
    rst $38
    ld b, b
    ret nz

    ld c, $ff
    ld b, b
    ret nz

    rrca
    rst $38
    ld b, b
    ret nz

    rra
    rst $38
    ld b, b
    ret nz

    cp a
    rst $38
    ld b, b
    ret nz

    ld a, a
    rst $38
    ld b, b
    ret nz

    ld a, $ff
    add b
    add b
    rra
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0df_4c6c

    nop
    nop
    ld c, b
    ld a, b
    nop
    nop
    rst $38
    rst $38
    ld bc, $fc01
    rst $38
    inc bc
    inc bc
    cp $ff
    dec b
    rlca
    rst $38
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    ld [$f80f], sp
    rst $38
    ld [$700f], sp
    rst $38
    ld [$300f], sp
    rst $38
    jr jr_0df_4c81

    db $10
    rst $38
    jr jr_0df_4c85

    db $10
    rst $38
    inc e
    rra
    ld b, b
    rst $38

jr_0df_4c6c:
    rrca
    rrca
    and b
    cp a
    rlca
    rlca
    inc e
    rra
    nop
    nop
    dec b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop

jr_0df_4c81:
    nop
    ld bc, $0001

jr_0df_4c85:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_4cee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_4d04:
    add b
    add b
    nop
    nop

jr_0df_4d08:
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0df_4cee

    ret nz

    ret nz

    or c
    pop af
    ldh [$e0], a
    rst $08
    rst $38
    ldh a, [$f0]
    jr nz, @+$01

    ldh a, [$f0]
    db $10
    rst $38
    ld [hl], b
    ldh a, [rNR23]
    rst $38
    jr nz, jr_0df_4d04

    inc e
    rst $38
    jr nz, jr_0df_4d08

    ld c, $ff
    ld b, b
    ret nz

    rrca
    rst $38
    ld b, b
    ret nz

    rra
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld l, [hl]
    nop
    nop
    sub c
    rst $38
    ld bc, $7801
    rst $38
    ld [bc], a
    inc bc
    db $fc
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    dec b
    rlca
    rst $38
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    ld [$f80f], sp
    rst $38
    ld [$700f], sp
    rst $38
    ld [$300f], sp
    rst $38
    ld [$100f], sp
    rst $38
    inc b
    rlca
    ld d, b
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    nop
    nop
    jr nz, jr_0df_4e2f

    nop
    nop
    inc e
    rra
    nop
    nop
    dec b
    rlca
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_4e2f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0df_4e84:
    ld b, b
    ret nz

    ld [hl], b
    ld [hl], b

jr_0df_4e88:
    ld b, b
    ret nz

    ld hl, sp-$08
    ld h, c
    pop hl
    db $fc
    db $fc
    sub d
    di
    db $fc
    db $fc
    call z, $f8ff
    ld hl, sp+$20
    rst $38
    ld [hl], b
    ldh a, [rNR10]
    rst $38
    db $10
    ldh a, [rNR23]
    rst $38
    jr nz, jr_0df_4e84

    inc e
    rst $38
    jr nz, jr_0df_4e88

    ld c, $ff
    ld b, b
    ret nz

    rrca
    rst $38
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    add b
    add b
    ld e, a
    rst $38
    nop
    nop
    jp c, Jump_000_00ee

    nop
    ld [hl], h
    ld a, h
    nop
    nop
    jr c, jr_0df_4f06

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_4f06:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    di
    ld bc, $cf01
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    cp $ff
    inc b
    rlca
    rst $38
    rst $38
    ld b, $05
    ld a, l
    rst $38
    rrca
    ld [$7cfb], sp
    rra
    inc e
    cp c
    cp [hl]
    ccf
    daa
    ld a, h
    ld a, a
    ld a, $22
    add d
    rst $38
    dec a
    dec l
    ld bc, $11ff
    ld de, $ff00
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $8001
    ld a, a
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    jr c, jr_0df_4fdb

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_4fdb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0df_5014

    nop
    nop
    ld a, b
    ld a, b

jr_0df_4fe8:
    nop
    nop
    ld l, h
    ld a, h

jr_0df_4fec:
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    db $ec
    db $fc
    ld bc, $f401
    db $fc
    rlca
    rlca
    call c, $08fc
    rrca
    adc b
    ld hl, sp+$10
    rra
    ld d, b
    ldh a, [rNR41]
    ccf
    jr nz, jr_0df_4fe8

    ld b, b
    ld a, a
    jr nz, jr_0df_4fec

    ld b, b
    ld a, a
    ld b, b
    ret nz

    add b
    rst $38
    add b
    add b

jr_0df_5014:
    pop hl
    rst $38
    nop
    nop
    sub d
    cp $00
    nop
    add hl, bc
    rst $38
    nop
    nop
    inc c
    rst $38
    add b
    add b
    ld a, [de]
    rst $38
    ld b, b
    ret nz

    or c
    rst $38
    ld b, b
    ret nz

    pop hl
    rst $38
    add b
    add b

jr_0df_5030:
    ld sp, $80ff
    add b
    sbc e
    ld a, a
    nop
    nop
    rst $38
    ccf
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    and b
    ldh [$7f], a
    rst $38
    and b
    ldh [$5f], a
    cp a
    jr nz, jr_0df_5030

    ld [hl], $cf
    ld b, b
    ret nz

    ld h, b
    rst $38
    add b
    add b
    sbc a
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    ld [$0000], sp
    ld a, [de]
    dec e
    nop
    nop
    dec a
    ccf
    nop
    nop
    ld e, [hl]
    ld a, [hl]
    nop
    nop
    cp h
    call c, Call_000_0101
    ld a, [hl]
    sbc [hl]
    ld [bc], a
    inc bc
    rst $18
    scf
    dec b
    ld b, $b7
    ld a, h
    rlca
    rlca
    ld c, a
    call z, Call_000_0707
    add d
    add e
    inc bc
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
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    ld c, $fe
    nop
    nop

jr_0df_5180:
    rra
    rst $38
    nop
    nop

jr_0df_5184:
    ccf
    rst $38
    add b
    add b

jr_0df_5188:
    ccf
    rst $38
    add b
    add b
    cp a
    ld a, a
    ret nz

    ret nz

    sub c
    ld a, a
    ret nz

    ret nz

    and b
    ld a, a
    ldh [$e0], a
    ld h, b
    rst $38
    ld h, b
    ldh [$ec], a
    rst $10
    jr nz, jr_0df_5180

    cp h
    rst $18
    jr nz, jr_0df_5184

    or b
    rst $08
    jr nz, jr_0df_5188

    cp h
    rst $00
    ld b, b
    ret nz

    ld d, c
    ld l, a
    ldh [$e0], a
    rst $18
    rst $38
    ldh [$e0], a
    cpl
    rst $18
    ldh a, [$f0]
    rst $30
    rrca
    ldh a, [$f0]
    rst $38
    rlca
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    add a
    rst $38
    ret nz

    ret nz

    db $fd
    db $fd
    add b
    add b
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld c, $09
    nop
    nop
    rra
    stop
    nop
    cpl
    ld sp, $0000
    ld a, e
    ld b, a
    nop
    nop
    push af
    adc l
    ld bc, $b901
    ret


    inc bc
    inc bc
    ret nc

    ldh a, [rTAC]
    ld b, $70
    ldh a, [$0c]
    dec bc
    ld hl, sp+$78
    ld [$ff0f], sp
    rst $38
    ld de, $bb1f
    ld a, h
    ld a, [hl-]
    ld h, $fb
    db $fc
    ld a, h
    ld b, h
    ld e, $1f
    ld a, b
    ld c, b
    ld bc, $3001
    jr nc, jr_0df_528f

jr_0df_528f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop

jr_0df_52f8:
    sbc h
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    inc e
    db $fc
    nop
    nop
    ld a, $fe
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ld b, b
    ret nz

    ld a, a
    rst $38
    jr nz, jr_0df_52f8

    ld b, a
    rst $38
    and b
    ldh [rSB], a
    rst $38
    sub b
    ldh a, [rP1]
    rst $38
    sub b
    ldh a, [rP1]
    rst $38
    sub b
    ldh a, [rLCDC]
    cp a
    db $10
    ldh a, [$c0]
    rst $38
    ld d, b
    ldh a, [$c0]
    cp a
    ld d, b
    ldh a, [$b0]
    rst $18
    ret nc

    ldh a, [$cf]
    di
    ret nc

    ldh a, [$2f]
    rst $18
    ldh [$e0], a
    rst $38
    rrca
    ldh [$e0], a
    rst $20
    rra
    ldh [$e0], a
    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    ld a, a
    add b
    add b
    inc a
    inc a
    nop
    nop
    jr jr_0df_536e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_536e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld c, $09
    nop
    nop
    rra
    stop
    nop
    cpl
    ld sp, $0000
    ld a, e
    ld b, a
    nop
    nop
    push af
    adc l
    ld bc, $b901
    ret


    inc bc
    inc bc
    pop de
    pop af
    rlca
    ld b, $71
    pop af
    inc c
    dec bc
    ld hl, sp+$78
    ld [$ff0f], sp
    rst $38
    ld de, $bb1f
    ld a, h
    ld a, [hl-]
    ld h, $fb
    db $fc
    ld a, h
    ld b, h
    ld e, $1f
    jr c, jr_0df_5432

    ld bc, $1001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_5432:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop

jr_0df_5478:
    sbc h
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    inc e
    db $fc
    nop
    nop
    ld a, $fe
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ld b, b
    ret nz

    ld a, a
    rst $38
    jr nz, jr_0df_5478

    ld a, a
    rst $38
    and b
    ldh [$89], a
    rst $38
    sub b
    ldh a, [rTMA]
    db $fd
    sub b
    ldh a, [$03]
    cp $90
    ldh a, [rSB]
    rst $38
    sub b
    ldh a, [rP1]
    rst $38
    ret nc

    ldh a, [rP1]
    rst $38
    ret nc

    ldh a, [$80]
    rst $38
    ret nc

    ldh a, [$c1]
    rst $38
    ret nc

    ldh a, [$27]
    rst $18
    ldh [$e0], a
    rst $38
    rrca
    ldh [$e0], a
    rst $20
    rra
    ldh [$e0], a
    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    ld a, a
    add b
    add b
    inc a
    inc a
    nop
    nop
    jr jr_0df_54ee

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_54ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    dec hl
    cpl
    nop
    nop
    ld [hl], c
    ld e, a
    nop
    nop
    ldh a, [$ef]
    ld bc, $6001
    cp a
    inc bc
    inc bc
    ret nz

    ld a, a
    inc b
    rlca
    add b
    rst $38
    dec bc
    inc c
    add b
    rst $38
    rla
    add hl, de
    add b
    rst $38
    cpl
    inc sp
    add b
    rst $38
    cpl
    scf
    add c
    rst $38
    daa
    ccf
    jp $27ff


    ccf
    cp $fe
    rla
    rra
    db $fc
    db $fc
    rrca
    rrca
    ld hl, sp-$08
    rlca
    rlca
    ldh a, [$f0]
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0df_5606

    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, h
    add b
    add b
    cp $fb
    ret nz

    ld b, b
    rst $30
    rst $38
    ldh [$a0], a
    ld h, e
    ld a, a
    and b
    ldh [$c6], a
    ld sp, hl

jr_0df_5606:
    ret nz

    ret nz

    ld a, a
    db $fc
    and b
    ld h, b
    rst $38
    cp $a0
    ld h, b
    rst $38
    cp $40
    ret nz

    cp $ff
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, h
    db $fc
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
    nop
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ret nz

    rst $38
    ld bc, $8001
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    rlca
    rlca
    nop
    rst $38
    rrca
    rrca
    nop
    rst $38
    rrca
    rrca
    ld bc, $1fff
    rra
    add e
    cp $1f
    rra
    cp $fd
    rra
    rra
    ei
    rst $30
    rra
    rra
    ld a, [$0fe6]
    rrca
    db $f4
    call z, Call_000_0704
    ld l, b
    sbc b
    ld [bc], a
    inc bc
    db $10
    ldh a, [rSB]
    ld bc, $e0e0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld c, $0f
    ret nz

    ld b, b
    rra
    inc de
    ldh [$a0], a
    ld a, l
    ld h, e
    or b
    ret nc

    rst $38
    ld sp, hl
    ldh a, [$d0]
    rst $38
    db $fd
    ldh [$a0], a
    cp $fe
    ret nz

    ret nz

    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ei
    rst $38

jr_0df_57a2:
    add b
    add b
    ld [hl], e
    rst $38
    add b
    add b
    daa
    rst $38
    nop
    nop
    ld c, $fe
    nop
    nop
    jr nc, jr_0df_57a2

    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ldh [$a0], a
    nop
    nop
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    rra
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, [hl]
    nop
    nop
    ld a, a
    ld [hl], b
    nop
    nop
    ccf
    inc hl
    nop
    nop
    ld [hl], e
    ld c, a
    nop
    nop
    rst $28
    rst $30
    ld bc, $ff01
    rst $20
    ld [bc], a
    inc bc
    rst $38
    ld b, a
    dec b
    ld b, $77
    adc a
    inc b
    rlca
    ld a, $df
    inc bc
    inc bc
    cp a
    db $fd
    inc bc
    inc bc
    di
    db $fc
    ld bc, $f701
    ld hl, sp+$00
    nop
    ld e, $19
    nop
    nop
    dec bc
    inc c
    nop
    nop
    ld b, $05
    nop
    nop
    dec b
    ld b, $00
    nop
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ret nz

    ld b, b
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    ldh a, [$d0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    sub h
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    jp nz, Jump_000_007e

    nop
    jp nz, Jump_000_00fe

    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    pop bc
    ccf
    nop
    nop
    pop hl
    ccf
    nop
    nop
    db $fd
    rra
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    ld c, $00
    nop
    rlca
    inc b
    nop
    nop
    ld c, $09
    nop
    nop
    inc e
    inc de
    nop
    nop
    ld a, [hl-]
    dec [hl]
    nop
    nop
    ld [hl], a
    ld a, b
    nop
    nop
    cp $f1
    ld bc, $7d01
    and e
    ld [bc], a
    inc bc
    cp [hl]
    ld b, a
    ld [bc], a
    inc bc
    ld a, h
    adc a
    ld bc, $fc01
    rra
    inc bc
    ld [bc], a
    ld a, [$073d]
    inc b
    rst $38
    ld a, b
    dec b
    ld b, $8b
    adc h
    inc bc
    inc bc
    ld b, $07
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $ce
    nop
    nop
    db $fc
    inc b
    nop
    nop

jr_0df_5a84:
    cp $7a
    nop
    nop

jr_0df_5a88:
    ld a, a
    rst $38
    nop
    nop

jr_0df_5a8c:
    cp $ff
    add b
    add b

jr_0df_5a90:
    cp $ff
    add b
    add b
    cp $ff
    ld b, b
    ret nz

    cp $ff
    ld b, b
    ret nz

    db $76
    rst $38
    ld b, b
    ret nz

    dec bc
    rst $30
    jr nz, jr_0df_5a84

    dec b
    ei
    jr nz, jr_0df_5a88

    inc bc
    db $fd
    jr nz, jr_0df_5a8c

    inc bc
    rst $38
    jr nz, jr_0df_5a90

    inc bc
    rst $38
    and b
    ldh [$87], a
    ld a, a
    and b
    ldh [$df], a
    ccf
    ret nz

    ret nz

    rst $08
    rst $38
    ret nz

    ret nz

    ld a, a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    rlca
    inc b
    nop
    nop
    ld c, $09
    nop
    nop
    dec e
    ld [de], a
    nop
    nop
    dec sp
    inc h
    nop
    nop
    ld [hl], a
    ld a, b
    nop
    nop
    cp $f1
    ld bc, $7f01
    and e
    ld [bc], a
    inc bc
    cp [hl]
    ld b, a
    ld [bc], a
    inc bc
    ld a, h
    adc a
    ld bc, $fc01
    rra
    inc bc
    ld [bc], a
    ld a, [$073d]
    inc b
    rst $38
    ld a, b
    inc bc
    ld [bc], a
    adc e
    adc h
    ld bc, $0601
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0df_5c26

    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rst $38
    rst $38
    nop
    nop

jr_0df_5c00:
    rst $38
    rst $38
    add b
    add b

jr_0df_5c04:
    rst $38
    rst $20
    add b
    add b

jr_0df_5c08:
    rst $38
    inc bc
    nop
    nop
    rst $38
    dec a
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ld b, b
    ret nz

    ld a, a
    rst $38
    ld b, b
    ret nz

    rst $38
    ld a, a
    jr nz, jr_0df_5c00

    ld a, a
    rst $38
    jr nz, jr_0df_5c04

    di
    rst $38

jr_0df_5c26:
    jr nz, jr_0df_5c08

    dec a
    db $e3
    sub b
    ldh a, [$0e]
    pop af
    sub b
    ldh a, [rTAC]
    ld hl, sp-$70
    ldh a, [rSC]
    db $fd
    sub b
    ldh a, [rSB]
    rst $38
    ret nc

    ldh a, [$03]
    rst $38
    ret nc

    ldh a, [rTAC]
    rst $38
    ldh [$e0], a
    rst $20
    rra
    ldh [$e0], a
    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    ld a, a
    add b
    add b
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0df_5c8e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_5c8e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    rlca
    nop
    nop
    ld [$0f0f], sp
    rrca
    db $10
    rra
    rra
    rra
    ldh [rIE], a
    ccf
    ccf
    ret nz

    rst $38
    ccf
    ccf
    ldh [rIE], a
    ccf
    ccf
    ldh a, [rIE]
    ccf
    ccf
    ld hl, sp-$01
    rra
    rra
    add c
    rst $38
    rra
    rra
    ld bc, $17ff
    rra
    nop
    rst $38
    dec bc
    rrca
    nop
    rst $38
    add hl, bc
    rrca
    nop
    rst $38
    dec b
    rlca
    add b
    rst $38
    ld [bc], a
    inc bc
    add b
    rst $38
    ld bc, $4001
    rst $38
    nop
    nop
    and c
    rst $38
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    daa
    ccf
    nop
    nop
    inc de
    rra
    nop
    nop
    add hl, bc
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

    nop
    nop
    inc a
    inc a
    nop
    nop
    ld [hl], d
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld h, [hl]
    ld a, [hl]
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    call z, Call_000_00fc
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld [hl], b
    ldh a, [$38]
    jr c, @+$22

    ldh [$f4], a
    db $fc
    ld de, $d6f1
    cp $3e
    rst $38
    ld e, [hl]
    cp $62
    rst $38
    ld a, h
    db $fc
    jp $f8ff


    ld hl, sp-$80
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    add b
    add b
    nop
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld b, d
    cp $00
    nop
    ld h, h
    db $fc
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld hl, sp-$08
    dec b
    rlca
    db $f4
    adc h
    rrca
    dec bc
    ei
    add a
    dec c
    dec bc
    cp $c3
    ld a, [bc]
    rrca
    ret


    ld [hl], a
    rlca
    rlca
    call c, Call_000_00ff
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    cp $ff
    ld bc, $7f01
    rst $38
    ld bc, $7f01
    rst $38
    ld bc, $3f01
    rst $38
    ld bc, $db01
    rst $38
    inc bc
    ld [bc], a
    dec c
    di
    ld b, $05
    rlca
    ld sp, hl
    ld c, $0f
    inc bc
    db $fd
    ld c, $0d
    ld bc, $07ff
    rlca
    ld bc, $07ff
    rlca
    inc bc
    rst $38
    inc bc
    inc bc
    jp $013f


    ld bc, $1fe7
    nop
    nop
    rst $38
    adc a
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    inc hl
    ccf
    nop
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a

jr_0df_5ef6:
    nop
    nop
    adc a
    rst $38

jr_0df_5efa:
    nop
    nop
    add [hl]
    cp $00
    nop
    ld b, h
    db $fc

jr_0df_5f02:
    nop
    nop
    ld [$00f8], sp
    nop
    sub b
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0df_5ef6

    nop
    nop
    jr nz, jr_0df_5efa

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, jr_0df_5f02

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec b
    ld b, $00
    nop
    rlca
    ld b, $00
    nop
    ld c, $0f
    nop
    nop
    rra
    dec de
    nop
    nop
    rra
    add hl, de
    nop
    nop
    ld e, $11
    nop
    nop
    ld c, $09
    nop
    nop
    ld b, $07
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    inc b
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rrca
    dec bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    ld b, $00
    nop
    dec b
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop

jr_0df_607c:
    pop af
    ccf
    nop
    nop
    ld sp, hl
    ld a, a
    nop
    nop

jr_0df_6084:
    db $fd
    rst $38
    nop
    nop

jr_0df_6088:
    rst $38
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    cp $ff
    ld b, b
    ret nz

    adc a
    rst $38
    ld b, b
    ret nz

    inc bc
    rst $38
    jr nz, jr_0df_607c

    ld bc, $20ff
    ldh [rSB], a
    rst $38
    jr nz, jr_0df_6084

    add b
    ld a, a
    jr nz, jr_0df_6088

    add b
    rst $38
    and b
    ldh [$80], a
    ld a, a
    and b
    ldh [$61], a
    cp a
    and b
    ldh [$9f], a
    ld h, a
    and b
    ldh [$df], a
    ccf
    ret nz

    ret nz

    rst $38
    rra
    ret nz

    ret nz

    rst $08
    ccf
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_0df_6102

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_6102:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec b
    ld b, $00
    nop
    rlca
    ld b, $00
    nop
    ld c, $0f
    nop
    nop
    rra
    dec de
    nop
    nop
    rra
    dec de
    nop
    nop
    ld e, $11
    nop
    nop
    ld c, $09
    nop
    nop
    ld b, $07
    nop
    nop
    ld c, $09
    nop
    nop
    ld e, $17
    nop
    nop
    rra
    rla
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0d
    nop
    nop
    dec bc
    inc c
    nop
    nop
    rlca
    inc b
    nop
    nop
    dec b
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop

jr_0df_61fc:
    pop af
    ccf
    nop
    nop
    ld sp, hl
    ld a, a
    nop
    nop

jr_0df_6204:
    db $fd
    rst $38
    nop
    nop

jr_0df_6208:
    rst $38
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    cp $ff
    ld b, b
    ret nz

    adc a
    rst $38
    ld b, b
    ret nz

    inc bc
    rst $38
    jr nz, jr_0df_61fc

    ld bc, $20ff
    ldh [rSB], a
    rst $38
    jr nz, jr_0df_6204

    add b
    ld a, a
    jr nz, jr_0df_6208

    add b
    rst $38
    and b
    ldh [$80], a
    ld a, a
    and b
    ldh [$61], a
    cp a
    and b
    ldh [$9f], a
    rst $20
    and b
    ldh [$df], a
    ccf
    ret nz

    ret nz

    rst $38
    rra
    ret nz

    ret nz

    rst $08
    ccf
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_0df_6282

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_6282:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc d
    rra
    nop
    nop
    cpl
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp $ff
    ld bc, $7e01
    rst $38
    inc bc
    ld [bc], a
    ld a, $ff
    rlca
    inc b
    sbc [hl]
    ld a, a
    rrca
    ld [$7fbf], sp
    rra
    inc e
    pop bc
    pop bc
    cpl
    ccf
    ld bc, $7f01
    ld a, a
    nop
    nop
    ld e, [hl]
    halt
    nop
    ld c, [hl]
    ld a, [hl]
    nop
    nop
    call c, Call_000_00bc
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    rlca
    rlca
    add b
    add b
    dec c
    rrca
    ret nz

    ret nz

    db $10
    rra
    ret nz

    ret nz

    jr nc, jr_0df_63b5

    ret nz

    ret nz

    ld a, b
    ld a, a
    add b
    add b
    add [hl]
    rst $38
    add b
    add b
    ld bc, $80ff
    add b
    nop
    rst $38
    add b
    add b
    rst $28
    rst $38
    add b
    add b
    ld de, $c0ff
    ret nz

    jr @+$01

    ret nz

    ret nz

    ld [$feff], sp
    cp $18
    rst $38
    db $fd
    ei
    ccf
    rst $38
    ei
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    ld bc, $ffff
    db $fc
    nop
    rst $38
    ei
    db $fc
    nop
    rst $38
    cp $f9
    ret nz

    ld a, a
    rst $38
    rst $38
    pop bc

jr_0df_63b5:
    rst $38
    cp l
    cp a
    sub $ee
    dec a
    ccf
    cp $02
    cpl
    scf
    ld l, d
    sub [hl]
    ld hl, $fc3f
    db $fc
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc d
    rra
    nop
    nop
    cpl
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld bc, $7f01
    rst $38
    inc bc
    ld [bc], a
    ccf
    rst $38
    rlca
    inc b
    sbc a
    ld a, a
    rrca
    ld [$7fbf], sp
    rra
    inc e
    ret nz

    ret nz

    cpl
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, [hl]
    halt
    nop
    ld c, [hl]
    ld a, [hl]
    nop
    nop
    call c, Call_000_00bc
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_64dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    ld [$e00f], sp
    ldh [rNR10], a
    rra
    ld h, b
    ldh [$38], a
    ccf
    ld h, b
    ldh [$66], a
    ld a, a
    jr nz, jr_0df_64dc

    add c
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    add b
    add b
    rst $28
    rst $38
    add b
    add b
    ld de, $c0ff
    ret nz

    jr @+$01

    ret nz

    ret nz

    ld [$f8ff], sp
    ld hl, sp+$18
    rst $38
    db $e4
    db $fc
    ccf
    rst $38
    ld a, [c]
    cp $ff
    rst $38
    pop af
    rst $38
    add e
    rst $38
    di
    db $fd
    ld bc, $f2ff
    db $fd
    nop
    rst $38
    di
    db $fc
    nop
    rst $38
    rst $28
    add sp, $00
    rst $38
    cp a
    or b
    add b
    rst $38
    rst $38
    ld sp, hl
    ld b, b
    ld a, a
    cp $fe
    ld hl, $743f
    ld a, h
    ld e, $1e
    jr c, jr_0df_657c

    nop
    nop
    db $10
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_657c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc d
    rra
    nop
    nop
    cpl
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld bc, $7f01
    rst $38
    inc bc
    ld [bc], a
    ccf
    rst $38
    rlca
    inc b
    sbc a
    ld a, a
    rrca
    ld [$7fbf], sp
    rra
    inc e
    ret nz

    ret nz

    cpl
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, [hl]
    halt
    nop
    ld c, [hl]
    ld a, [hl]
    nop
    nop
    call c, Call_000_00bc
    nop
    ldh [rNR41], a
    nop
    nop
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_665c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    ld [$e00f], sp
    ldh [rNR10], a
    rra
    ld h, b
    ldh [$38], a
    ccf
    ld h, b
    ldh [$66], a
    ld a, a
    jr nz, jr_0df_665c

    add c
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    add b
    add b
    rst $28
    rst $38
    add b
    add b
    ld de, $d0ff
    ret nc

    jr @+$01

    db $fc
    db $fc
    ld [$eeff], sp
    ld a, [c]
    jr @+$01

    and $fa
    ccf
    rst $38
    or $fa
    rst $38
    rst $38
    or $fa
    add e
    rst $38
    db $f4
    db $fc
    ld bc, $f4ff
    db $fc
    nop
    rst $38
    ld hl, sp-$08
    nop
    rst $38
    ldh [$e0], a
    nop
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1f
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec b
    ld b, $00
    nop
    rlca
    ld b, $00
    nop
    ld c, $0f
    nop
    nop
    rra
    dec de
    nop
    nop
    rra
    add hl, de
    nop
    nop
    ld e, $11
    nop
    nop
    ld c, $09
    nop
    nop
    ld b, $07
    nop
    nop
    ld c, $09
    nop
    nop
    ld e, $17
    nop
    nop
    rra
    rla
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0d
    nop
    nop
    dec bc
    inc c
    nop
    nop
    rlca
    inc b
    nop
    nop
    dec b
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop

jr_0df_697c:
    pop af
    ccf
    nop
    nop
    ld sp, hl
    ld a, a
    nop
    nop

jr_0df_6984:
    db $fd
    rst $38
    nop
    nop

jr_0df_6988:
    rst $38
    rst $38
    nop
    nop
    cp $ff
    add b
    add b
    cp $ff
    ld b, b
    ret nz

    adc a
    rst $38
    ld b, b
    ret nz

    inc bc
    rst $38
    jr nz, jr_0df_697c

    ld bc, $20ff
    ldh [rSB], a
    rst $38
    jr nz, jr_0df_6984

    nop
    rst $38
    jr nz, jr_0df_6988

    nop
    rst $38
    and b
    ldh [rP1], a
    rst $38
    and b
    ldh [rSB], a
    rst $38
    and b
    ldh [$9f], a
    rst $20
    and b
    ldh [$df], a
    ccf
    ret nz

    ret nz

    rst $38
    rra
    ret nz

    ret nz

    rst $08
    ccf
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_0df_6a02

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_6a02:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $ef01
    sbc a
    inc bc
    inc bc
    rst $18
    rst $28
    rlca
    dec b
    sbc $ff
    rlca
    inc b
    rst $28
    db $dd
    dec b
    ld b, $c3
    ld a, h
    inc bc
    inc bc
    inc hl
    db $fc
    ld bc, $1201
    db $fd
    nop
    nop
    adc l
    cp $00
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld a, [hl-]
    ccf
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    call nz, Call_000_007c
    nop
    jp nz, Jump_000_00fe

    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    pop bc
    ccf
    nop
    nop
    db $e3
    ccf
    nop
    nop
    rst $38
    rra
    add b
    add b
    ccf
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ldh [$e0], a
    rra
    rst $30
    ldh [$e0], a
    sub a
    db $eb
    ldh [$e0], a
    ld [hl], a
    ei
    ret nz

    ret nz

    ld a, a
    cp a
    add b
    add b
    db $fc
    sbc h
    nop
    nop
    cp b
    ret z

    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    inc bc
    nop
    nop
    ld [hl], h
    ld [hl], a
    nop
    nop
    ei
    db $fc
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    db $fd
    cp $07
    rlca
    rst $38
    cp $07
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    di
    rst $38
    ld bc, $e001
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    jr nz, jr_0df_6da7

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    dec b
    ld b, $00
    nop
    dec b
    ld b, $00
    nop
    dec bc
    inc c
    nop
    nop
    dec de
    inc e
    nop
    nop
    jr c, jr_0df_6dd7

    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
    inc c
    inc c
    nop
    nop
    nop

jr_0df_6da7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_6dd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    ret c

    jr c, jr_0df_6dff

jr_0df_6dff:
    nop
    ldh a, [$30]
    inc e
    inc e
    and b
    ld h, b
    ld a, $3e

jr_0df_6e08:
    ld b, b
    ret nz

    ccf
    ccf
    ld b, b
    ret nz

    ld a, a
    ld a, a
    and b
    ldh [$fe], a
    cp $53
    di
    ld a, h
    db $fc
    inc l
    rst $38
    jr c, @-$06

    jr nz, @+$01

    ld [$10f8], sp
    rst $38
    db $10
    ldh a, [rNR23]
    rst $38
    jr nz, jr_0df_6e08

    inc e
    rst $38
    ld b, b
    ret nz

    ld a, $ff
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    call z, Call_000_003c
    nop
    ret nc

    jr nc, jr_0df_6e4b

jr_0df_6e4b:
    nop
    and b
    ld h, b
    nop
    nop
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld [hl], a
    ld [hl], a
    nop
    nop
    ld hl, sp-$01
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    db $fd
    cp $07
    rlca
    rst $38
    cp $07
    rlca
    cp $ff
    inc bc
    inc bc
    di
    rst $38
    ld bc, $e001
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    jr nz, jr_0df_6f27

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    dec b
    ld b, $00
    nop
    rrca
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
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

jr_0df_6f27:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    or b
    ld [hl], b
    nop
    nop
    ldh [$60], a
    nop
    nop

jr_0df_6f88:
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    and b
    ldh [$c0], a
    ret nz

    ld d, c
    pop af
    ldh [$e0], a
    dec hl
    ei
    ldh a, [$f0]
    inc h
    rst $38
    ld hl, sp-$08
    db $10
    rst $38
    ld [hl], b
    ldh a, [rNR23]
    rst $38
    jr nz, jr_0df_6f88

    inc e
    rst $38
    ld b, b
    ret nz

    ld a, $ff
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    call c, Call_000_003c
    nop
    ret nc

    jr nc, jr_0df_6fcb

jr_0df_6fcb:
    nop
    and b
    ld h, b
    nop
    nop
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld [hl], h
    ld [hl], a
    nop
    nop
    ld hl, sp-$01
    ld bc, $f801
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    rlca
    rlca
    cp $ff
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    di
    rst $38
    ld bc, $e001
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    jr nz, jr_0df_70a7

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rlca
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    jr jr_0df_70a3

    nop
    nop
    jr jr_0df_70a7

    nop
    nop
    inc e
    rra
    nop
    nop
    rrca
    rrca
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

jr_0df_70a3:
    nop
    nop
    nop
    nop

jr_0df_70a7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_70e6:
    nop
    nop
    nop
    nop

jr_0df_70ea:
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a

jr_0df_70f2:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    jr nc, jr_0df_70f2

    nop
    nop
    jr nz, jr_0df_70e6

    nop
    nop
    jr nz, jr_0df_70ea

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    and b
    ldh [rP1], a
    nop
    ld d, b
    ldh a, [rP1]
    nop
    jr z, @-$06

    nop
    nop
    inc [hl]
    db $fc
    nop
    nop
    ld a, [de]
    cp $00
    nop
    ld e, $fe
    nop
    nop
    rra
    rst $38
    nop
    nop
    ccf
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    add b
    add b
    ccf
    rst $38
    nop
    nop
    ld e, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_719b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    ld [hl], h
    ld [hl], a
    nop
    nop
    ld hl, sp-$01
    ld bc, $f801
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    rlca
    rlca
    cp $ff
    rlca
    rlca
    rst $38
    rst $38
    dec b
    rlca
    di
    rst $38
    dec bc
    inc c
    ldh [rIE], a
    rla
    jr jr_0df_719b

    ld a, a
    rra
    jr jr_0df_723f

    rst $38
    ld a, $39
    ldh [rIE], a
    ccf
    ccf
    jr nz, jr_0df_7227

    ld e, $1e
    db $10
    rra
    inc c
    inc c
    ld [$000f], sp
    nop
    rlca
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_7227:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_723f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1a

jr_0df_726a:
    nop
    nop
    inc a
    inc a
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    inc a
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0df_726a

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    and b
    ldh [rP1], a
    nop
    ld d, b
    ldh a, [rP1]
    nop
    add hl, hl
    ld sp, hl
    add b
    add b
    ld [hl], $ff
    ld b, b
    ret nz

    add hl, de
    cp $a0
    ld h, b
    inc e
    rst $38
    ret nc

    jr nc, jr_0df_72c8

    cp $d0
    jr nc, jr_0df_72ec

    rst $38
    and b
    ld h, b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38
    add b
    add b
    ccf
    rst $38
    nop
    nop
    ld e, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop

jr_0df_72c8:
    db $10
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_72ec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_7317:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    rst $38
    rst $38
    inc b
    rlca
    db $fc
    rst $38
    dec bc
    inc c
    ld a, b
    rst $38
    rla
    jr jr_0df_7317

    ld a, a
    cpl
    jr nc, jr_0df_73db

    rst $38
    ld l, h
    ld [hl], e
    sbc b
    sbc a
    db $e3
    rst $38
    ld [$fc0f], sp
    db $fc
    inc b
    rlca
    ld a, b
    ld a, b
    ld [bc], a
    inc bc
    jr nc, jr_0df_73a6

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_73a6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_73db:
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra

jr_0df_73ea:
    add b
    add b
    ld a, a
    ld a, a

jr_0df_73ee:
    add b
    add b
    cp a
    rst $38
    add b
    add b
    ccf
    rst $38
    nop
    nop
    inc e
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0df_73ea

    nop
    nop

jr_0df_740c:
    jr nz, jr_0df_73ee

    ld b, b
    ld b, b
    sub b
    ldh a, [$e0]
    ldh [rBCPD], a
    ld sp, hl
    or b
    ldh a, [rNR21]
    rst $38
    ret c

    jr c, jr_0df_7426

    cp $f8
    jr jr_0df_7430

    db $fc
    ret c

    jr c, @+$10

    rst $38

jr_0df_7426:
    ret nc

    jr nc, jr_0df_7430

    rst $38
    jr nz, jr_0df_740c

    rlca
    rst $38
    ret nz

    ret nz

jr_0df_7430:
    rrca
    rst $38
    ldh [$e0], a
    rst $18
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ldh [$e0], a
    ccf
    ccf
    ret nz

    ret nz

    rra
    rra
    add b
    add b
    rrca
    rrca
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    inc bc
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    ldh a, [rIE]
    ld bc, $f801
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    cp $ff
    rlca
    rlca
    rst $38
    rst $38
    add hl, bc
    rrca
    ld hl, sp-$01
    ld d, $19
    ldh a, [rIE]
    cpl
    jr nc, jr_0df_754f

    rst $38
    ld a, h
    ld [hl], e
    ldh a, [rIE]
    ld a, e
    ld a, a
    jr nc, jr_0df_7527

    ld a, h
    ld a, h
    db $10
    rra
    jr c, jr_0df_7526

    ld [$000f], sp
    nop
    inc b
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_7526:
    nop

jr_0df_7527:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_754f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

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
    ld hl, $00e1
    nop
    rst $10
    rst $30
    add b
    add b
    ld l, $ff
    ret nz

    ret nz

    inc de
    db $fc
    ld h, b
    ldh [rNR22], a
    ld hl, sp+$60
    ldh [rNR33], a
    cp $60
    ldh [$0e], a
    rst $38
    ld b, b
    ret nz

    rrca
    rst $38
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    ld a, a
    add b
    add b
    ccf
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0df_766c

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    cp $ff
    inc bc
    inc bc
    rst $38
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    ld [$f80f], sp
    rst $38
    ld [$700f], sp
    rst $38
    ld [$300f], sp
    rst $38
    jr jr_0df_7681

    db $10
    rst $38
    jr jr_0df_7685

    jr nc, @+$01

    inc e
    rra
    ld d, b
    rst $18

jr_0df_766c:
    rrca
    rrca
    adc b
    adc a
    rlca
    rlca
    inc b
    rlca
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

jr_0df_7681:
    nop
    nop
    nop
    nop

jr_0df_7685:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0df_7704:
    nop
    nop
    nop
    nop

jr_0df_7708:
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    ret nz

    ret nz

    and c
    pop hl
    ldh [$e0], a
    rst $10
    rst $30
    ldh a, [$f0]
    jr z, @+$01

    ldh a, [$f0]
    db $10
    rst $38
    ld [hl], b
    ldh a, [rNR23]
    rst $38
    jr nz, jr_0df_7704

    inc e
    rst $38
    jr nz, jr_0df_7708

    ld c, $ff
    ld b, b
    ret nz

    rrca
    rst $38
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    ld a, a
    add b
    add b
    ccf
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld [hl], $39
    nop
    nop
    ld a, a
    ld [hl], b
    nop
    nop
    db $fd
    ld a, [$0101]
    db $fc
    rst $38
    inc bc
    inc bc
    cp $ff
    inc bc
    inc bc
    rst $38
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    ld [$f80f], sp
    rst $38
    ld [$700f], sp
    rst $38
    ld [$300f], sp
    rst $38
    ld [$100f], sp
    rst $38
    inc b
    rlca
    ld [hl], b
    rst $38
    inc bc
    inc bc
    sub b
    sbc a
    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    ld b, $00
    nop
    rrca
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop

jr_0df_7884:
    add b
    add b
    ld [hl], b
    ld [hl], b

jr_0df_7888:
    add b
    add b
    ld hl, sp-$08
    ld b, c
    pop bc
    db $fc
    db $fc
    and d
    db $e3
    db $fc
    db $fc
    call nc, $f8f7
    ld hl, sp+$28
    rst $38
    ld [hl], b
    ldh a, [rNR10]
    rst $38
    db $10
    ldh a, [rNR23]
    rst $38
    jr nz, jr_0df_7884

    inc e
    rst $38
    jr nz, jr_0df_7888

    ld c, $ff
    ld b, b
    ret nz

    rrca
    rst $38
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld a, a
    cp a
    add b
    add b
    rst $38
    rra
    nop
    nop
    xor $1e
    nop
    nop
    call c, Call_000_003c
    nop
    and b
    ldh [rP1], a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
