SECTION "ROM Bank $0a0", ROMX[$4000], BANK[$a0]

    nop
    nop
    nop
    nop
    ld bc, $0600
    nop
    ld [$1000], sp
    nop
    jr nz, jr_0a0_400e

jr_0a0_400e:
    ld b, b
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
    ldh [$e0], a
    ldh [$1f], a
    db $fc
    nop
    rst $38
    cp $00
    rst $38
    cp $01
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
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
    rra
    ldh [$3f], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [$e7], a
    ld hl, sp-$07
    add [hl]
    call c, $9d83
    jp Jump_0a0_7f83


    rrca
    rlca
    rrca
    rlca
    adc [hl]
    rlca
    db $fc
    rlca
    db $f4
    rrca
    adc [hl]
    rst $38
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    jr nc, jr_0a0_4094

jr_0a0_4094:
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
    db $fc
    nop
    nop
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc c
    nop
    ld [$0800], sp
    add b
    dec bc
    ldh [$0a], a
    ldh a, [$0a]
    ldh a, [$0a]
    ldh a, [$0a]
    db $fc
    ld a, [bc]
    db $fc
    ld a, [bc]
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    cp $05
    or $0d
    add $3d
    rlca
    db $fc
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $f3
    cp $0f
    ld c, $01
    ld bc, $0000
    nop
    nop
    ld bc, $03fe
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
    ld hl, sp+$03
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rNR32], a
    db $fc
    inc bc
    db $e3
    nop
    ldh [rP1], a
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    inc bc
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
    rst $38
    nop
    nop
    nop
    nop
    add b
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    inc bc
    nop
    nop
    ret nz

    call nz, $ff3b
    nop
    rst $38
    nop
    rst $38
    nop
    db $10
    ld e, $0f
    rra
    rrca
    rra

jr_0a0_41b6:
    rrca
    rra
    adc a
    rrca
    rst $00
    rlca
    pop hl
    inc bc
    ldh a, [rSB]
    ld hl, sp+$00
    cp $00
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
    ld hl, sp+$01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$3c
    ld [hl], a
    adc c
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_0a0_41b6

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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rrca
    rrca
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add c
    ld a, a
    ld a, b
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
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    rst $38
    nop
    cp a
    nop
    nop
    nop
    inc e
    rra
    add hl, bc
    rlca
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rrca
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rP1], a
    ld bc, $0100
    ret nz

    ld bc, $01f8
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [c]
    ld bc, $05fe
    cp $09
    ld a, [hl]
    sub c
    ld h, $f9
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    jp $e303


    inc bc
    pop bc
    ld hl, $25c4
    add h
    ld h, l
    adc h
    ld l, l
    adc h
    ld l, l
    sbc h
    ld a, l
    cp h
    ld a, l
    cp h
    ld a, l
    ld a, h
    ld a, l
    ld a, h
    ld a, l
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    cp $fc
    cp $ec
    cp $e4
    cp $ec
    cp $cc
    db $fc
    ret z

    ld hl, sp-$28
    ld hl, sp-$70
    ldh a, [$b0]
    ldh a, [$a0]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ld b, b
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
    ldh [rP1], a
    rra
    nop
    nop
    nop
    ldh [rP1], a
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
    cp $67
    rra
    ld bc, $fb01
    ld bc, $01fb
    ld hl, sp+$03
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ccf
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, a
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add [hl]
    rlca
    add a
    rlca
    add a
    rlca
    add a
    rlca
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    cp $00
    nop
    nop
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    rst $38
    nop
    sbc a
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    db $fc
    inc hl
    jr nz, @+$01

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
    nop
    rst $38
    nop
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
    ccf
    rst $38
    db $e3
    rra
    inc e
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
    ld hl, sp+$00
    rlca
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rIF]
    inc c
    inc bc
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
    ld bc, $0700
    nop
    rst $38
    nop
    inc bc
    nop
    ret nz

    nop
    db $e4
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    rst $30
    ld hl, sp-$21
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
    cp $01
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    rlca
    ld b, $05
    db $fd
    ld b, $fe
    rlca
    rst $38
    rlca
    cp $07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$27
    ccf
    jr nz, jr_0a0_444b

    jr nz, jr_0a0_4446

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ccf
    ccf
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    ld hl, sp+$07

jr_0a0_4446:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a0_444b:
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
    ld a, a
    nop
    nop
    nop
    nop
    ldh a, [rSB]
    add hl, bc
    rlca
    ld a, [bc]
    rlca
    ld a, [bc]
    cpl
    ld [de], a
    ld l, a
    ld [de], a
    rst $28
    ld [de], a
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $28
    inc d
    rst $18
    inc h
    rst $18
    inc h
    sbc a
    ld l, b
    rra
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $3f
    ret z

    ccf
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret nc

    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld e, a
    and b
    ld h, a
    cp b
    ld h, c
    cp [hl]
    ld h, b
    cp a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    inc sp
    di
    rrca
    db $ec
    rra
    ret c

    ld a, a
    ldh a, [$7f]
    ldh a, [$7e]
    pop hl
    ld a, [hl]
    pop hl
    cp $e1
    cp $e1
    cp $c1
    cp $c1
    db $fc
    jp $8ff0


    ldh [$9f], a
    ret nz

    cp a
    nop
    ld a, a
    rst $38
    ldh [$1f], a
    inc e
    add e
    add e
    ldh a, [rSVBK]
    db $fc
    inc c
    rst $38
    inc bc
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
    rst $38
    nop
    rst $38
    pop bc
    ccf
    add hl, sp
    rlca
    rst $00
    ld [bc], a
    ei
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld a, a
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rra
    nop
    nop
    rst $38
    rst $38
    nop
    ld bc, $0700
    db $fc
    inc bc
    rst $38
    nop
    inc bc
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    db $fc
    nop
    db $fc
    nop
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
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
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
    ldh a, [rP1]
    cp $00
    cp $00
    cp $00
    rst $38
    ld bc, $01ff
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
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
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$71
    ld a, b
    ld l, a
    db $10
    rra
    sub b
    sbc a
    ldh a, [$7f]
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    add b
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
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ret nz

    ld a, a
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld e, $1f
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
    ld hl, sp-$08
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $01
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
    nop
    rst $38
    ret nz

    rst $38
    inc a
    ccf
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
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
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    jr nz, jr_0a0_46c7

    jr nz, jr_0a0_46c9

    jr nz, jr_0a0_46cb

    jr nz, jr_0a0_46cd

    jr nz, jr_0a0_46cf

    jr nz, jr_0a0_46d1

    jr nz, jr_0a0_46d3

    jr nz, jr_0a0_46d5

    jr nz, jr_0a0_46d7

    jr nz, jr_0a0_46d9

    jr nz, jr_0a0_46db

    jr nz, jr_0a0_46dd

    jr nz, jr_0a0_46df

    jr nz, @+$41

    jr nz, jr_0a0_46e3

    jr nz, jr_0a0_46e5

    ld hl, $213e
    ld a, $21
    ld a, $21
    ld a, $21
    ld a, $21
    ld a, $21
    ld a, $23
    inc a
    inc hl
    inc a
    inc hl
    inc a
    inc hl
    inc a
    inc hl
    inc a
    inc hl
    inc a
    inc hl
    inc a
    inc hl
    inc a
    inc hl
    inc a
    inc hl

jr_0a0_46c7:
    inc a
    inc hl

jr_0a0_46c9:
    inc a
    inc hl

jr_0a0_46cb:
    inc a
    inc hl

jr_0a0_46cd:
    inc a
    inc hl

jr_0a0_46cf:
    inc a
    rst $38

jr_0a0_46d1:
    nop
    rst $38

jr_0a0_46d3:
    rst $38
    rst $38

jr_0a0_46d5:
    nop
    rst $38

jr_0a0_46d7:
    nop
    rst $38

jr_0a0_46d9:
    ret nz

    ccf

jr_0a0_46db:
    rst $38
    ret nz

jr_0a0_46dd:
    ccf
    db $fc

jr_0a0_46df:
    inc bc
    cp $04
    db $fd

jr_0a0_46e3:
    inc b
    rst $38

jr_0a0_46e5:
    rlca
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
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
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    ret nz

    ccf
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    nop
    nop
    nop
    ld bc, $0302
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
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    rrca
    db $10
    ld de, $0012
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
    inc de
    nop
    inc d
    dec d
    ld d, $17
    jr jr_0a0_4800

    ld a, [de]
    dec de
    inc e
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a0_4811

    nop
    dec b
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a0_4823

    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop

jr_0a0_4800:
    nop
    nop
    inc l
    dec l
    nop
    nop
    ld l, $29
    cpl
    jr nc, jr_0a0_483c

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00

jr_0a0_4811:
    nop
    scf
    jr c, jr_0a0_4815

jr_0a0_4815:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    dec a

jr_0a0_4823:
    ld a, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
    nop
    ld b, e
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a0_483c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    nop
    nop
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    nop
    nop
    nop
    ld c, a
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
    nop
    nop
    ld d, [hl]
    nop
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    nop
    nop
    ld e, [hl]
    nop
    nop
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, h
    ld h, l
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
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
    add b
    add c
    nop
    add d
    add e
    add h
    add l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld hl, $0101
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
    ld hl, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    nop
    nop
    ld bc, $0202
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
    ld [bc], a
    nop
    nop
    ld bc, $0202
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
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
    inc b
    inc b
    ld bc, $0002
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
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0103
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0502
    dec b
    inc bc
    ld bc, $0701
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
    ld bc, $0101
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
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
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
    rst $38
    nop
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    pop af
    rrca
    pop af
    rrca
    di
    rrca
    di
    rrca
    db $e3
    rra
    db $e3
    rra
    pop hl
    rra
    ldh a, [rIF]
    ld hl, sp+$07
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
    nop
    rst $38
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
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld h, c
    cp $71
    cp $78
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, $ff
    ld e, $ff
    ld c, $ff
    add d
    ld a, a
    pop bc
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
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
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$87]
    ld hl, sp-$39
    ld hl, sp-$59
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$4f
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    rst $18
    jr nz, @+$01

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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    cp $81
    ld a, a
    add c
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    adc a
    ldh a, [rBGP]
    ld hl, sp+$43
    db $fc
    ld h, c
    cp $60
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    inc a
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld e, $ff
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
    add a
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    jp $c33f


    ccf
    jp $c13f


    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop hl
    rra
    pop hl
    rra
    ldh [$1f], a
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
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
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    ld a, [$fa06]
    ld b, $fa
    ld b, $fa
    ld b, $fa
    ld b, $f2
    ld c, $f2
    ld c, $f2
    ld c, $f2
    ld c, $f2
    ld c, $e2
    ld e, $e2
    ld e, $e2
    ld e, $c2
    ld a, $c2
    ld a, $c2
    ld a, $84
    ld a, h
    add h
    ld a, h
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
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
    rst $38
    rst $38
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
    adc a
    add b
    adc d
    add a
    adc l
    add a
    adc d
    add a
    adc l
    add a
    adc d
    add a
    adc a
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
    rrca
    nop
    ld a, [bc]
    rlca
    dec c
    rlca
    ld a, [bc]
    rlca
    dec c
    rlca
    ld a, [bc]
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    rlca
    ld a, [de]
    rrca
    dec d
    rrca
    ld a, [de]
    rrca
    dec d
    rrca
    ld a, [de]
    rrca
    dec c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

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
    ldh a, [rP1]
    or b
    ldh [$50], a
    ldh [$b0], a
    ldh [$50], a
    ldh [$b0], a
    ldh [rP1], a
    nop
    nop
    nop
    ldh [rP1], a
    and b
    ret nz

    ld h, b
    ret nz

    and b
    ret nz

    ld h, b
    ret nz

    and b
    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, b
    ret nz

    or b
    ldh [$50], a
    ldh [$b0], a
    ldh [$50], a
    ldh [$b0], a
    ldh [$60], a
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
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    nop
    rlca
    nop
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ei
    inc bc
    rlca
    inc bc
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
    rst $38
    nop
    rst $38
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
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fc
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
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    inc e
    db $e3
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
    ldh [rIE], a
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    ret nz

    jr nz, @+$22

    db $10
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$40
    ld hl, sp+$20
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
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
    ldh [rIF], a
    rst $38
    ldh a, [$f0]
    nop
    nop
    ld bc, $0300
    ld bc, $030e
    dec d
    rrca
    ld l, d
    rra
    push de
    ld a, a
    xor d
    ld a, a
    ld d, l
    ccf
    ld a, [hl+]
    rra
    dec d
    ld c, $0a
    inc b
    inc b
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    add b
    and b
    ret nz

    ld d, b
    ldh [$a8], a
    ldh a, [rHDMA4]
    ld hl, sp-$48
    ldh [$60], a
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
    inc bc
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    cp $07
    cp $03
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
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    rst $38
    ccf
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
    rlca
    inc bc
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    dec c
    ld a, [c]
    nop
    ld e, $00
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

jr_0a0_4f42:
    ld [bc], a
    nop
    inc b
    nop
    ld [$0800], sp
    nop

jr_0a0_4f4a:
    stop
    jr nz, jr_0a0_4f4e

jr_0a0_4f4e:
    nop
    ldh [$c0], a
    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rrca
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    nop
    rlca

jr_0a0_4f68:
    nop
    rlca

jr_0a0_4f6a:
    nop
    rlca
    nop
    rlca
    nop
    rlca
    jr z, jr_0a0_4f42

    ld d, h
    xor b
    jr z, jr_0a0_4f4a

    inc d
    add sp, $28
    call nc, $e814
    db $fc
    db $fc
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
    cp $01
    ret nz

    ccf
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
    rlca
    ccf
    ld a, a
    ld [hl], e
    ld a, h
    ccf
    ret nz

    ld a, $c0
    inc a
    ret nz

    jr c, jr_0a0_4f68

    jr c, jr_0a0_4f6a

    ld e, b
    and b
    ld e, b
    and b
    ld e, b
    and b
    ld e, h
    and b
    ld l, h
    sub b
    ld l, h
    ret nc

    ld l, h
    ret nc

    ld l, $d0
    ld l, $d0
    ld [hl], $c8
    ld [hl], $c8
    rla
    jr z, jr_0a0_4fda

    jr z, jr_0a0_4fd8

    inc l
    dec bc
    inc [hl]
    dec bc
    inc d
    dec bc
    inc d
    add hl, bc
    ld d, $05
    ld a, [de]
    dec b
    ld [bc], a
    dec b
    inc bc
    rlca
    ld bc, $0101

jr_0a0_4fd8:
    jr nc, jr_0a0_4fda

jr_0a0_4fda:
    ret z

    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    dec b
    ld bc, $0004
    dec b
    nop
    ld [bc], a
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
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    inc bc
    rst $38
    db $fc
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
    inc bc
    rra
    rst $38
    ld sp, hl
    cp $ff
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
    di
    nop
    sbc a
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
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    rst $38
    scf
    rst $30
    ld bc, $07fa
    ld hl, sp+$0f
    pop af
    ld a, $c6
    jr c, @+$01

    nop
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
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
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
    db $fc
    rst $38
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
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
    inc bc
    nop
    rra
    jr @+$01

    ld hl, sp-$01
    ld hl, sp+$07
    db $fc
    inc bc
    inc b
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0002
    nop
    nop
    nop
    nop

jr_0a0_509c:
    nop
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    sbc a
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
    cp $fe
    cp $fe
    db $fc
    cp $fe
    ld hl, sp-$02
    ld hl, sp-$03
    ldh a, [$fd]
    push hl
    db $fd
    call $9d79
    di
    ld a, e
    jp $07fb


    di
    rrca
    jp $013f


    ccf
    pop bc
    ld a, a
    add c
    ccf
    pop bc
    ld a, $c3
    ld a, $e3
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
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    di
    inc c
    di
    inc c
    rst $20
    jr @-$37

    jr c, jr_0a0_509c

    ld a, b
    add a
    ld a, b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
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
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$5f], a
    ld h, b
    ld e, a
    ld h, b
    cpl
    ld [hl], b
    cpl
    ld [hl], b
    cpl
    ld [hl], b
    rra
    ld [hl], b
    rla
    ld a, b
    rra
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    inc b
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    nop
    add b
    nop
    add c
    ld bc, $0181
    add e
    inc bc
    add e
    ld [bc], a
    add e
    ld [bc], a
    ld a, h
    rlca
    ld a, h
    rlca
    cp $06
    ld a, [$7a06]
    ld b, $39
    dec b
    add hl, bc
    dec b
    add hl, bc
    dec c
    dec e
    ld bc, $011d
    add hl, de
    ld bc, $0109
    dec bc
    nop
    inc bc
    add hl, bc
    add a
    ld a, c
    rst $38
    pop hl
    push bc
    ei
    reti


    rst $20
    cp a
    rst $18
    rst $18
    cp a
    sbc a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $38
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    rst $00
    cp $c6
    ld hl, sp-$40
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    rst $38
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
    nop
    nop
    nop
    nop
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
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$06
    ld hl, sp+$07
    ldh a, [$cf]
    ld [hl], b
    ld a, a
    jr nc, jr_0a0_5219

    jr c, jr_0a0_521b

    jr c, jr_0a0_521d

    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    jr nc, jr_0a0_5223

    ret nc

    rst $18
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ee], a
    ret nz

    call c, $d0d0
    rst $08
    cp b
    rst $08
    cp b
    adc a
    ld a, b
    add a
    ld a, h
    rlca
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $03
    cp $01
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

jr_0a0_5219:
    rst $38
    nop

jr_0a0_521b:
    rst $38
    nop

jr_0a0_521d:
    rst $38
    nop
    rst $38
    nop
    nop
    nop

jr_0a0_5223:
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
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    ld [$080f], sp
    dec bc
    inc c
    dec b
    ld b, $04
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
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
    ldh [$03], a
    db $fc
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
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_0a0_52e3

    jr nz, jr_0a0_52e5

    jr nz, jr_0a0_52e7

    db $10
    rra
    db $10
    rra
    ld [$080f], sp
    rrca
    ld [$040f], sp
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
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
    ld bc, $0302
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    inc c

jr_0a0_52e3:
    nop
    dec c

jr_0a0_52e5:
    nop
    nop

jr_0a0_52e7:
    nop
    nop
    ld c, $00
    rrca
    db $10
    ld de, $1312
    inc d
    nop
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    jr jr_0a0_5314

    ld a, [de]
    dec de
    inc e
    dec e
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, jr_0a0_532d

    ld [hl+], a
    inc hl
    dec e
    dec e
    inc h
    dec h
    nop
    nop

jr_0a0_5314:
    nop
    nop
    nop
    nop
    nop
    ld h, $27
    jr z, jr_0a0_5346

    ld a, [hl+]
    dec e
    dec e
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    dec l
    ld l, $2f
    nop
    nop
    nop

jr_0a0_532d:
    jr nc, jr_0a0_5360

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    nop
    dec [hl]
    ld [hl], $1d
    scf
    daa
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0a0_537a

    ld a, [hl-]
    nop
    nop
    nop
    nop

jr_0a0_5346:
    nop
    dec sp
    inc a
    dec a
    nop
    nop
    nop
    nop
    nop
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    ld b, l
    ld b, [hl]

jr_0a0_5360:
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld d, e

jr_0a0_537a:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld l, d
    nop
    ld l, e
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    nop
    ld [hl], l
    nop
    db $76
    ld a, [bc]
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    nop
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    nop
    ld a, a
    nop
    add b
    ld a, [bc]
    add c
    add d
    add e
    add h
    add l
    nop
    nop
    nop
    add [hl]
    add a
    nop
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    nop
    nop
    adc [hl]
    adc a
    nop
    nop
    nop
    nop
    nop
    sub b
    sub c
    dec e
    sub d
    nop
    nop
    nop
    nop
    nop
    sub e
    sub h
    nop
    nop
    nop
    nop
    sub l
    sub [hl]
    sub a
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    nop
    sbc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0707
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0707
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
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
    ld b, $06
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, $00
    ld bc, $0101
    ld bc, $0606
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld b, $02
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld b, $00
    nop
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld sp, hl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $00
    cp $00
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
    nop
    nop
    nop
    ld bc, $0301
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add b
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
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
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
    rra
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    ldh a, [rP1]
    nop
    nop
    nop
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
    db $fc
    inc e
    cp $7e
    rst $38
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
    rrca
    rst $38
    ld e, $ff
    ld a, b
    rst $38
    pop af
    rst $38
    ld b, [hl]
    rst $38
    ld [$30ff], sp
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
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca

jr_0a0_5698:
    inc bc
    inc bc

jr_0a0_569a:
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$19
    jr jr_0a0_569a

    jr jr_0a0_5698

    inc e
    di
    inc c
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
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $01
    cp $01
    cp $ff
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh [$7f], a
    add e
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ccf
    rst $18
    cpl
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    rra
    db $e4
    rra
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    ld e, $e6
    ld hl, sp-$08
    ldh [$e0], a
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
    nop
    rst $38
    ld bc, $02ff
    rst $38
    adc h
    rst $38
    db $10
    rst $38
    ld h, b
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
    rst $38
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
    rrca
    rrca
    ld bc, $0301
    db $fc
    rra
    ldh [$7f], a
    add b
    rst $38
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
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    ld bc, $06fe
    ld hl, sp+$18
    ldh [$60], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $f9
    ld c, $f9
    ld e, h
    rst $38
    ld d, e
    rst $38
    ld [hl], h
    rst $38
    ld [$30ff], sp
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
    rst $38
    rst $38
    rst $38
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
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a0_57b0:
    cp $01
    db $fc
    inc bc

jr_0a0_57b4:
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    jp $8c3f


    ld a, h
    jr nc, jr_0a0_57b0

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

jr_0a0_57ce:
    nop
    nop
    ld b, b
    ret nz

    jr nz, jr_0a0_57b4

    jr jr_0a0_57ce

    inc b
    db $fc
    ld [bc], a
    cp $00
    cp $02
    cp $0c
    cp $10
    cp $60
    cp $80
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    and a
    ld c, b
    or a
    ld hl, sp+$07
    ld a, b
    add a
    jr nz, @-$1f

    nop
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
    nop
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
    ccf
    rst $38
    rlca
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf

jr_0a0_5838:
    ret nz

    ccf

jr_0a0_583a:
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    db $fc
    jr nc, jr_0a0_5838

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

jr_0a0_5876:
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$1f], a
    ldh [rP1], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a0_5886:
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add c
    cp $ff
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_0a0_5886

    jr nz, @-$2f

    jr nc, @-$2f

    jr nc, @-$2f

    jr nc, jr_0a0_5876

    jr c, @-$37

    jr c, jr_0a0_583a

    ld a, b
    add a
    ld a, b
    add e
    ld a, h
    add e
    ld a, h
    ld bc, $01fe
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
    nop
    nop
    add b
    nop
    ld a, a
    nop
    add b
    nop
    ldh [$80], a
    ld hl, sp-$20
    cp $f8
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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
    ld a, a
    add b
    ccf
    ret nz

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
    ld bc, $0e00
    nop
    jr nc, jr_0a0_593e

jr_0a0_593e:
    ret nz

    nop
    rra
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld sp, $0fc0
    ldh a, [rTAC]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
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
    ld hl, sp+$00
    rst $38
    nop
    rst $38
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ld hl, sp+$1f
    db $fd
    ld c, $fe
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    inc c
    nop
    jr nc, jr_0a0_59b6

jr_0a0_59b6:
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
    rst $38
    rst $38
    ld hl, sp-$01
    rst $18
    ldh [$df], a
    jr nz, jr_0a0_5a08

    nop
    inc de
    inc c
    rra
    inc c
    db $ec
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
    ldh a, [rP1]
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    nop
    nop
    ld bc, $ff01
    rst $38
    rlca
    rst $38
    ld a, a
    add e
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    db $fd
    dec b
    ld [$d50a], a
    dec d
    xor d
    ld a, [hl+]

jr_0a0_5a08:
    call nc, $aa55
    xor e
    ld d, h
    ld d, a
    xor b
    xor a
    ld d, b
    ldh a, [$a0]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    nop
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
    ld bc, $0001
    nop
    ld bc, $0600
    nop
    ld [$1000], sp
    nop
    jr nz, jr_0a0_5a3a

jr_0a0_5a3a:
    ld b, b
    nop
    add b
    nop
    nop
    nop
    ret nz

    rst $38
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
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    nop
    db $fc
    inc bc
    nop
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
    nop
    rrca
    rlca
    ccf
    ld a, $3f
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    adc a
    rst $38
    rla
    rst $30
    scf
    rst $20
    rst $10
    rst $00
    rst $08
    rst $00
    add a
    add a
    add a
    add a
    add a
    add a
    rlca
    rlca
    rlca
    rlca
    rrca
    rlca
    rra
    rlca
    rra
    rrca
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    scf
    rst $38
    ld [hl], e
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    add a
    ld a, a
    add a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    cp a
    rst $38
    cp a
    ld a, a
    ccf
    rlca
    cp a
    rlca
    rst $18
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $30
    rla
    rst $20
    rla
    rst $20
    dec bc
    ld [bc], a
    dec bc
    ldh a, [$0b]
    ei
    dec bc
    ei
    dec c
    db $fd
    dec c
    db $fd
    dec c
    db $ed
    dec c
    db $ed
    cpl
    ld c, $27
    ld b, $1f
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
    rst $08
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

    rst $38
    nop
    nop
    rst $38
    rra
    ldh [rIE], a
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
    ld bc, $0300
    rlca
    nop
    rrca
    ld bc, $031f
    ld a, $07
    ld a, h
    rrca
    ld hl, sp+$7f
    ld hl, sp-$1a
    db $fc
    inc c
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$01
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

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
    ldh a, [$80]
    di
    db $fc
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $18
    rst $38
    rst $38
    sbc a
    jp $819f


    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    adc a
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    adc a
    ld a, a
    add b
    ld a, a
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
    add b
    add b
    nop
    nop
    ld hl, sp+$00
    add h
    nop
    add d
    nop
    add d
    nop
    jp nz, $c480

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
    di
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    jp $fffc


    nop
    db $fc
    inc bc
    inc bc
    db $fc
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
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld c, $08
    add hl, de
    ld bc, $0707
    ccf
    rlca
    ld a, e
    rrca
    pop af
    rra
    pop hl
    ccf
    ret nz

    ld a, b
    adc a
    add b
    sbc a
    add b
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
    rrca
    ldh a, [$30]
    rrca
    nop
    nop
    nop
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
    rst $08
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
    ccf
    rst $38
    rra
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    di
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
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
    ld c, $0e
    rra
    dec de
    dec e
    rla
    dec sp
    cpl
    ld a, a
    ld c, a
    rst $38
    sbc a
    db $fc
    inc a
    di
    ld [hl], e
    adc a
    adc a
    ld h, b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    nop
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
    nop
    rrca
    ldh a, [$30]
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a0_5cb4:
    inc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    ld hl, sp-$08
    ld a, a
    ld a, a
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    jr jr_0a0_5d0a

    add hl, de
    jr jr_0a0_5cb4

    add hl, de
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $fffe
    nop
    ret nz

    ccf
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop

jr_0a0_5d0a:
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
    add b
    add b
    ld b, b
    ld b, b
    ret nz

    ret nz

    add b
    add b
    add b
    cp a
    or b
    cp a
    ld [hl], b
    ld a, a
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    add b
    add b
    rst $38
    nop
    db $fc
    inc bc
    nop
    rst $38
    jr jr_0a0_5d4f

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a0_5d4f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
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
    cp $fe
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
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

    ret nz

    ret nz

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
    add b
    add b
    add b
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    nop
    add b
    ld a, a
    inc bc
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
    nop
    nop
    nop
    nop
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR23]
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$80], a
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
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    ld a, a
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
    add b
    nop
    add b
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld a, a
    add b
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
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
    cp $ff
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh [$1f], a
    nop
    rst $38
    ccf
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
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rra
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp+$47
    ld a, b
    ld b, a
    ld a, b
    ld b, a
    ld a, b
    ld b, a
    ld a, b
    daa
    jr c, jr_0a0_5f14

    jr c, @+$29

    jr c, jr_0a0_5f08

    jr jr_0a0_5f0a

    jr jr_0a0_5f08

    inc e
    inc de
    inc e
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a

jr_0a0_5f08:
    inc bc
    ld [bc], a

jr_0a0_5f0a:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101

jr_0a0_5f14:
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
    pop bc
    ld a, $83
    db $fc
    add a
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
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
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$41

    jr nz, jr_0a0_5f88

    jr nz, jr_0a0_5f8a

    jr nz, jr_0a0_5f6c

    db $10
    rra
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
    ld bc, $0302
    inc b
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a0_5f6c:
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    stop
    nop

jr_0a0_5f88:
    nop
    nop

jr_0a0_5f8a:
    nop
    nop
    nop
    ld de, $1312
    nop
    nop
    nop
    inc c
    inc b
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    nop
    jr jr_0a0_5fa1

jr_0a0_5fa1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    nop
    dec e
    ld e, $1f
    inc b
    jr nz, jr_0a0_5fd4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a0_5ff5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    nop
    nop
    jr c, jr_0a0_6008

    ld a, [hl-]
    nop
    nop
    dec sp
    inc a

jr_0a0_5fd4:
    nop
    nop
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3f
    nop
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
    ld b, c
    nop
    nop
    ld b, d
    ld b, e

jr_0a0_5ff5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    ld b, a
    ld c, b
    nop
    nop

jr_0a0_6008:
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop
    nop
    ld c, l
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    ld d, d
    dec a
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, e
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    nop
    nop
    nop
    dec bc
    nop
    nop
    ld d, [hl]
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    nop
    nop
    nop
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    ld h, c
    ld h, d
    nop
    nop
    ld h, e
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld l, d
    ld l, e
    nop
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    nop
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
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    nop
    nop
    nop
    ld a, h
    jr nc, jr_0a0_6103

    ld a, [hl]
    jr nz, jr_0a0_6089

jr_0a0_6089:
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
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0021
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld b, $00
    ld b, c
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld bc, $0101

jr_0a0_6103:
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
    ld [bc], a
    nop
    nop
    ld bc, $0202
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
    nop
    nop
    ld bc, $0202
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
    ld bc, $0000
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0001
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
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, d
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0602
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0600
    ld b, $00
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    inc bc
    ld bc, $0706
    rlca
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0021
    nop
    inc bc
    nop
    nop
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
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, [hl]
    add e
    ld a, h
    rlca
    ld hl, sp+$03
    db $fc
    add c
    ld a, [hl]
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
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
    ld sp, hl
    ld b, $f0
    rrca
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
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
    nop
    nop
    nop
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    pop af
    ld c, $e1
    ld e, $e3
    inc e
    jp $873c


    ld a, b
    add a
    ld a, b
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
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
    ld bc, $01ff
    cp $02
    cp $02
    cp $02
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    cp $02
    cp $02
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
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
    ld bc, $01fe
    cp $ff
    ld bc, $01ff
    rst $38
    ld bc, $02fe
    cp $02
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    add e
    add b
    dec b
    inc bc
    ld b, $03
    dec c
    rlca
    ld a, [bc]
    rlca
    dec d
    rrca
    ld a, [de]
    rrca
    dec d
    rrca
    ld c, $03
    inc bc
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
    inc bc
    rst $38
    inc b
    rst $38
    inc b
    db $f4
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    ld a, [c]
    ld c, $f2
    ld c, $e2
    ld e, $e4
    inc e
    db $e4
    inc e
    add sp, $18
    add sp, $18
    add sp, $18
    ldh a, [rNR10]
    pop af
    db $10
    pop af
    db $10
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld c, $00
    dec d
    ld c, $1a
    rrca
    dec [hl]
    rra
    ld a, [hl+]
    rra
    ld d, l
    ccf
    ld a, d
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    add b
    xor b
    ldh a, [$58]
    ldh a, [$a8]
    ldh a, [$50]
    ldh [$b0], a
    ldh [$60], a
    ret nz

    and b

jr_0a0_6479:
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
    ret nz

    ret nz

    ld a, $3e
    ld bc, $0081
    db $fc
    jr jr_0a0_6479

    ld a, $c1
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
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
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0a0_6516

jr_0a0_6516:
    ld d, a
    jr c, jr_0a0_6583

    ccf
    push de
    ld a, a
    xor d
    ld a, a
    ld d, l
    cp $eb
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
    ldh [rP1], a
    and b
    ret nz

    ld b, b
    add b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    jr nc, jr_0a0_6590

    ld [$083f], sp
    dec bc
    adc b
    dec bc
    add b
    inc bc
    add b
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rIE], a
    nop
    rst $38

jr_0a0_6583:
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

jr_0a0_6590:
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    ccf
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
    ret nz

    add b
    add b
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
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
    ld bc, $0303
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    rlca
    ld a, [$f807]
    rlca
    ld hl, sp+$07
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
    ld a, a
    add b
    rrca
    ldh a, [$f0]
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a0_665a

    jr nz, jr_0a0_665d

    ld h, b
    ld a, a
    ld h, b
    ldh [$e3], a
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
    ret nz

    rst $28
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$de], a
    ldh [$de], a
    pop hl
    ld a, [hl]
    pop bc
    ld a, $c1
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ccf
    nop
    nop
    nop
    nop
    rlca
    nop
    dec a
    rlca
    ld a, [hl+]
    rra
    dec d
    rrca

jr_0a0_6652:
    ld a, [de]
    rrca

jr_0a0_6654:
    dec d
    rrca

jr_0a0_6656:
    ld a, [bc]
    rlca

jr_0a0_6658:
    dec c
    rlca

jr_0a0_665a:
    ld a, [bc]
    rlca

jr_0a0_665c:
    dec b

jr_0a0_665d:
    ld [bc], a

jr_0a0_665e:
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
    inc bc
    nop
    inc b
    ldh a, [rP1]
    rst $38
    rra
    jr nz, jr_0a0_6652

    jr nz, jr_0a0_6654

    jr nz, jr_0a0_6656

    jr nz, jr_0a0_6658

    jr nz, jr_0a0_665a

    jr nz, jr_0a0_665c

    jr nz, jr_0a0_665e

    jr nz, @+$01

    ld a, h
    ei
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp+$7f
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$9f]
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, [hl]
    dec e
    ld bc, $1cea
    ld d, [hl]
    db $fc
    xor e
    cp $55
    cp $aa
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    cp $be
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc e
    nop
    ldh [rP1], a
    nop
    nop
    nop
    add b
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
    add b
    ccf
    add b
    rra
    add b
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
    ld hl, sp+$07
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
    ld bc, $0200
    nop
    inc b
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    jr nc, jr_0a0_671a

jr_0a0_671a:
    ld b, b
    nop
    add b
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
    ldh [$1f], a
    rra
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a0_6734:
    nop
    nop

jr_0a0_6736:
    ldh a, [rP1]

jr_0a0_6738:
    ld [$0400], sp
    nop

jr_0a0_673c:
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [$0b00], sp
    inc bc
    rrca
    rlca
    add hl, bc
    nop
    ld b, $00
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
    ret nz

    ccf
    ccf
    nop
    nop
    inc a
    ld a, h
    ccf
    ld a, a
    add hl, sp
    ld b, a
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ld a, $c0
    jr c, jr_0a0_6734

    jr nc, jr_0a0_6736

    jr nz, jr_0a0_6738

    jr nz, @-$3e

    jr nz, jr_0a0_673c

    and b
    ret nz

    add b
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
    ret nz

    add b
    ret nz

    add b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    or b
    ret nz

    or b
    ret nz

    or b
    ret nz

    cp b
    ret nz

    cp b
    ret nz

    cp h
    ret nz

    cp a
    ret nz

    rst $08
    ldh a, [$fc]
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
    ccf
    rst $38
    ld bc, $00f7
    rst $30
    nop
    ld sp, hl
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    rst $00
    ccf
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp $00
    rst $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $1f
    ldh [rIE], a
    nop
    rst $38
    rst $38
    nop
    rst $28
    nop
    rst $18
    nop
    cp a
    ld bc, $03be
    ld a, h
    rra
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
    ld hl, sp+$07
    ret nz

    ccf
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
    nop
    nop
    nop
    nop
    nop
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
    ccf
    rst $38
    pop af
    rrca
    rst $38
    nop
    ld a, a
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
    inc bc
    nop
    rst $38
    nop
    ccf
    ret nz

    pop af
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
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e1], a
    ret nz

    rst $00
    sbc b
    and a
    dec de
    ld h, a
    ccf
    rst $00
    ld [hl], a
    adc a
    ccf
    rst $08
    rst $38
    adc $3f
    inc a
    ld a, a
    inc a
    rst $38
    inc e
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    cp $01
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, $3f
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    pop bc
    pop bc
    pop hl
    pop hl
    sub c
    ld [hl], c
    pop af
    rra
    pop af
    rra
    pop af
    rra
    pop af
    rra
    pop af
    rra
    pop af
    rra
    ldh a, [rNR32]
    ldh a, [rNR23]
    ld e, $11
    inc e
    inc bc
    inc d
    inc bc
    jr nz, @+$09

    jr nz, @+$09

    jr z, @+$09

    jr z, jr_0a0_6945

    jr c, jr_0a0_6947

    jr c, jr_0a0_6949

    jr c, jr_0a0_694b

    inc e

jr_0a0_6945:
    inc bc
    inc e

jr_0a0_6947:
    inc bc
    inc d

jr_0a0_6949:
    dec bc
    ld [bc], a

jr_0a0_694b:
    dec c
    nop
    rlca
    inc b
    rlca
    rra
    rlca
    ccf
    rlca
    ld a, a
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    nop
    sbc [hl]
    pop hl
    di
    ldh a, [$e3]
    ldh [$c7], a
    pop bc
    adc $c0
    sbc b
    add c
    ld b, $01
    ld c, $01
    inc a
    inc bc
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    cp $1e
    cp $fe
    cp $9e
    cp $9e
    cp $1e
    db $fc
    inc e
    ldh [rP1], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$e0], a
    ld h, b
    ld h, b
    jr nc, jr_0a0_69be

    jr @+$1a

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca

jr_0a0_69a7:
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]

jr_0a0_69b1:
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

jr_0a0_69be:
    ccf
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    inc bc
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ld sp, hl
    ld [$10f3], sp
    db $e3
    db $10
    rst $20
    jr nz, jr_0a0_69a7

    jr nz, jr_0a0_69b1

    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    pop af
    nop
    db $e3
    nop
    rst $20
    nop
    rst $08
    add b
    adc [hl]
    nop
    jr jr_0a0_69f7

jr_0a0_69f7:
    jr nc, jr_0a0_69f9

jr_0a0_69f9:
    ld h, b
    nop
    ld h, b
    nop
    ret nz

    nop
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld b, b
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
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0a0_6a82

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a0_6a92

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    nop
    inc h
    dec h
    rlca
    rlca
    ld h, $27
    jr z, jr_0a0_6aa9

    ld a, [hl+]
    rlca

jr_0a0_6a82:
    rlca
    dec hl
    inc l
    dec l
    inc l
    dec hl
    rlca
    rlca
    ld l, $2f
    jr nc, jr_0a0_6abf

    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]

jr_0a0_6a92:
    dec [hl]
    ld [hl], $37
    jr c, jr_0a0_6acf

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_0a0_6aa9:
    ld b, a
    ld c, b
    ld c, c
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    nop
    ld d, e
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a

jr_0a0_6abf:
    ld [hl-], a
    ld [hl-], a
    ld c, d
    ld c, e
    ld [hl-], a
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    ld c, $5a
    ld [hl-], a
    ld [hl-], a

jr_0a0_6acf:
    ld [hl-], a
    ld [hl-], a
    ld c, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    nop
    nop
    ld h, e
    ld h, h
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
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
    nop
    nop
    ld l, a
    ld [hl], b
    ld [hl-], a
    ld [hl-], a
    ld [hl], c
    ld c, d
    ld [hl], d
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    nop
    nop
    nop
    ld a, c
    ld a, d
    ld [hl], c
    ld a, e
    ld a, h
    nop
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    nop
    nop
    nop
    nop
    nop
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
    rlca
    and h
    and l
    and [hl]
    rlca
    and a
    xor b
    xor c
    xor d
    ld hl, $0707
    rlca
    rlca
    rlca
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    ld a, c
    nop
    nop
    nop
    nop
    nop
    or c
    or d
    or e
    or h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0301
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
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0003
    nop
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
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
    ld bc, $0101
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
    nop
    nop
    ld bc, $2100
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
    ld bc, $0001
    ld bc, $0001
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0041
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop bc
    nop
    add d
    nop
    inc b
    nop
    jr jr_0a0_6cd6

jr_0a0_6cd6:
    jr nz, jr_0a0_6cd8

jr_0a0_6cd8:
    ld b, b
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ld hl, sp+$38
    ld hl, sp+$38
    db $fc
    inc e
    db $fc
    inc e
    cp $0e
    cp $0e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    nop
    rst $38
    nop
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
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38

jr_0a0_6d1b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    pop bc
    nop
    add d
    nop
    inc b
    nop
    jr jr_0a0_6d4a

jr_0a0_6d4a:
    jr nz, jr_0a0_6d4c

jr_0a0_6d4c:
    ld b, b
    nop
    add b
    nop
    db $fc
    inc bc
    ei
    inc b
    rst $30
    add hl, bc
    rst $28
    inc de
    call c, $d824
    jr z, jr_0a0_6d1b

    ld c, [hl]
    cp a
    ld c, a
    ld c, a
    rrca
    ld c, a
    rrca
    ld b, a
    rlca
    inc hl
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0302
    inc b
    rlca
    ld [$918e], sp
    sbc h
    and e
    ld hl, sp-$39
    rrca
    rst $38
    rra
    rst $38
    rra
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
    nop
    rst $38
    nop
    rst $38
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
    pop bc
    nop
    inc bc
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    add b
    ld a, [hl]
    ld b, b
    cp h
    ret nz

    inc a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh a, [$08]
    ldh a, [$08]
    ld hl, sp+$00
    inc a
    ret nz

    call c, $ee20
    ret nc

    or $e9
    dec sp
    inc [hl]
    dec de
    inc d
    rrca
    ld [$8087], sp
    ldh a, [$f1]
    pop bc
    jp nz, Jump_000_0502

    inc b
    dec bc
    inc c
    inc de
    jr jr_0a0_6e03

    jr nc, jr_0a0_6e2d

    ld [hl], b
    adc a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    ld bc, $03f9
    di
    rlca
    rst $20
    rlca
    rst $20
    rrca
    rst $08
    rra
    sbc a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_0a0_6e03:
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
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop

jr_0a0_6e2d:
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
    rra
    nop
    rrca
    nop
    ldh a, [$1f]
    ret nc

    ccf
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rrca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$f207]
    rrca
    ld a, [c]
    rrca
    ld [c], a
    rra
    push hl
    rra
    adc e
    ld a, a
    rla
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
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
    ei
    nop
    di
    inc b
    rst $20
    ld c, $cf
    ld e, $9f
    ld e, $9f
    ccf
    ccf
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
    rst $00
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0200
    ld bc, $0304
    add hl, sp
    ld b, $83
    sbc h
    add [hl]
    sbc c
    call z, $c9c3
    add $e3
    db $ec
    and $e1
    pop af
    rst $30
    di
    di
    rst $38
    rst $38
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
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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

jr_0a0_6f01:
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
    ld a, a
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
    cp $81
    db $fd
    add c
    db $fd
    add e
    ei
    jp $c7fb


    rst $30
    rst $00
    rst $30
    rst $28
    rst $28
    xor $ee
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, b
    ld a, b
    ldh a, [rSVBK]
    or b
    jr nc, jr_0a0_6f5d

    jr nz, jr_0a0_6f9f

    jr nz, jr_0a0_6f01

    ld b, b
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
    nop
    nop
    nop
    nop
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop

jr_0a0_6f5d:
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
    ccf
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
    ld bc, $01ff

jr_0a0_6f9f:
    rst $38
    ld bc, $02ff
    cp $02
    cp $01
    db $fd
    ld bc, $03fd
    ei
    rlca
    rst $30
    rlca
    rst $30
    rrca
    rst $28
    ld c, $ee
    ld e, $de
    inc a
    cp h
    inc a
    cp h
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $3f
    cp $3f
    cp $3f
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
    rra
    rst $38
    rra
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
    rlca
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
    ccf
    rst $38
    ld a, $fe
    ld a, $fe
    dec a
    db $fd
    dec sp
    ei
    ld a, e
    ei
    ld [hl], a
    rst $30
    ld [hl], a
    rst $30
    rst $28
    xor $df
    sbc $df
    call c, $bcbf
    cp a
    cp b
    ld a, a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$f0], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld hl, sp+$00
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
    rst $38
    ccf
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR10]
    ld [hl], c
    sub c
    ld [hl], c
    sub c
    ld [hl], c
    sub c
    ld [hl], c
    sub c
    ld a, c
    sub c
    cp c
    pop de
    cp l
    pop de
    cp l
    pop de
    cp l
    pop de
    cp a
    ret nc

    cp a
    ret nc

    cp a
    ret z

    cp a
    ret z

    cp a
    ret z

    rst $18
    add sp, -$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$39
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    rst $30
    db $fc
    di
    cp $f3
    cp $f3
    cp $f3
    cp $f3
    cp $f3
    cp $f2
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$f9ff]
    rst $38
    pop af
    rst $30
    rst $28
    rst $28
    rst $28
    rst $28
    rst $18
    rst $18
    rst $18
    rst $18
    cp a
    cp b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
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
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    ld hl, sp-$80
    ld hl, sp-$80
    cp $80
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
    add b
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
    ld a, a
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    cpl
    ldh a, [rNR41]
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ccf
    ldh [rP1], a
    rst $38
    nop
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
    ret nz

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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ei
    rlca
    ld hl, sp+$07
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
    rlca
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
    ldh a, [$f0]
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1117
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $010f
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0df3
    di
    dec b
    di
    push af
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $13fe
    ld d, $fb
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld a, [c]
    rra
    ld b, $ff
    ld b, $ff
    ccf
    rst $38
    rst $38
    rst $38
    ld bc, $80ff
    ld a, a
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
    ld a, a
    nop
    ccf
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    cp a
    cp a
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
    add a
    add a
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    inc b
    inc b
    inc c
    ld [$080c], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$081f], sp
    ccf
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    rst $38
    rra
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
    ld hl, sp+$17
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld a, a
    ldh [rIE], a
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
    ld a, a
    ldh a, [rIF]
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
    ccf
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rrca
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
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rlca
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
    nop
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
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
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rst $38
    rst $38
    rlca
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
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    pop af
    rrca
    add c
    ld a, a
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    call $ffff
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
    rst $38
    rst $38
    rst $38
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
    ld bc, $00ff
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
    ld hl, sp-$01
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $11ff
    rst $38
    ld de, $21ff
    rst $38
    ld hl, $23fe
    cp $23
    cp $23
    cp $23
    cp $23
    db $fc
    ld b, a
    db $fc
    ld b, a
    db $fc
    ld b, a
    db $fc
    ld b, a
    db $fc
    ld b, a
    ld hl, sp+$4f
    ld sp, hl
    adc a
    db $eb
    sbc a
    rst $28
    sbc a
    ld l, a
    rra
    rst $08
    ccf
    sbc a
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    cp $ff
    cp $ff
    cp $fd
    cp $fd
    cp $7f
    db $fd
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, e
    db $fd
    dec sp
    db $fd
    ccf
    ei
    ccf
    ei
    ccf
    ei
    scf
    ei
    scf
    ei
    ccf
    ei
    rra
    ei
    rra
    ei
    dec de
    db $fd
    dec de
    db $fd
    dec de
    db $fd
    sbc e
    ld a, l
    sbc a
    ld a, l
    adc $3d
    rst $28
    dec e
    xor $1d
    xor $1d
    rst $30
    ld c, $f7
    ld c, $f7
    ld c, $f7
    ld c, $f7
    ld c, $f7
    rrca
    rst $30
    rrca
    rst $30
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
    jp $e23f


    rst $38
    ld [c], a
    ccf
    ld [c], a
    ccf
    call nz, $c67f
    ld a, a
    call nz, $c47f
    ld a, a
    call nz, $887f
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld hl, $21fe

jr_0a0_7627:
    cp $21
    cp $41
    cp $41
    cp $63
    db $fc
    jp $83fc


    db $fc
    jp $c6fc


jr_0a0_7637:
    ld sp, hl
    add [hl]
    ld sp, hl
    add $f9
    add [hl]
    ld sp, hl
    adc h
    di
    adc h
    di
    adc h

jr_0a0_7643:
    di
    adc h
    di
    call z, $98f3
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    jr jr_0a0_7637

    or b
    rst $08
    jr nc, @-$2f

    jr nc, @-$2f

    jr nc, jr_0a0_7627

    db $10
    rst $28
    jr jr_0a0_7643

    ld [$08f7], sp
    rst $30
    inc c
    di
    ld b, h
    cp e
    ld b, [hl]
    cp c
    ld h, [hl]
    cp c
    add d
    ld a, l
    db $e3
    ld a, h
    pop bc
    ld a, [hl]
    pop hl
    ld a, [hl]
    ret nz

    ld a, a
    ldh [rIE], a
    rst $38
    rst $38
    rst $08
    rst $38
    xor $d3
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    add a
    cp $81
    cp $81
    cp $83
    db $fc
    add e
    db $fc
    ld [bc], a
    db $fd
    add d
    db $fd
    ld b, $f9
    add [hl]
    ld sp, hl
    inc b
    ei
    add h
    ei
    inc c
    di
    adc b
    rst $30
    adc b
    rst $30
    sbc b
    rst $20
    sub b
    rst $28
    sub b
    rst $28
    sub b
    rst $28
    or b
    rst $08
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
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
    nop
    rst $38
    db $10
    rst $38
    inc c
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
    nop
    rst $38
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    sbc a
    ret z

    ccf
    call nz, $c33f
    ccf
    ret nz

    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    ld b, $f9
    ld b, $f9
    ld b, $f9
    inc c
    di
    inc c
    di
    inc c
    di
    di
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
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
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    cp a
    ret nz

    ld a, a
    ldh [$1f], a
    ld hl, sp+$0f
    cp $03
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$01
    ld hl, sp+$01
    ldh a, [rSB]
    ldh a, [$81]
    ldh a, [rSCX]
    ldh a, [rNR44]
    ldh [$03], a
    ldh [rTAC], a
    ldh [rTAC], a
    ldh [rTAC], a
    ret nz

    rlca
    ret nz

    rrca
    ret nz

    rrca
    add b
    rrca
    add b
    rra
    add b
    rra
    add b
    rra
    nop
    ccf
    nop
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [bc], a
    ld [bc], a
    ld [$0902], sp
    ld a, [bc]
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
    dec bc
    inc c
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld [bc], a
    ld c, $0f
    db $10
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1202
    inc de
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_0a0_7878

    ld a, [bc]
    ld a, [bc]
    add hl, de
    ld a, [de]
    dec de
    nop
    nop
    nop
    inc e
    dec e

jr_0a0_7878:
    ld e, $1f
    jr nz, jr_0a0_789d

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_0a0_78b4

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a0_78cb

    ld [hl-], a
    ld a, [bc]
    ld a, [bc]

jr_0a0_789d:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a0_78e2

    ld a, [hl-]
    dec sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    inc a
    ld [bc], a
    ld [bc], a

jr_0a0_78b4:
    ld a, [bc]
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, h
    ld b, l
    ld [bc], a
    ld b, [hl]
    ld a, [bc]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_0a0_78cb:
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    nop
    ld e, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, d
    ld e, e

jr_0a0_78e2:
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
    nop
    ld h, [hl]
    ld h, a
    ld a, [bc]
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    ld [hl], l
    db $76
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    ld a, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, h
    ld a, l
    ld a, [hl]
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
    add b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add c
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
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
    nop
    nop
    add h
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
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    inc bc
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [$03]
    jp Jump_000_0f0f


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
    cp $fe
    ld hl, sp-$08
    ldh [$e0], a
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$01
    pop hl
    rlca
    add a
    rra
    rra
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$03]
    jp Jump_000_0f0f


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
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3fff
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
    db $fc
    ld bc, $07e1
    add a
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
    cp $fe
    ld hl, sp-$08
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1fff
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
    cp $00
    ld hl, sp+$03
    db $e3
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
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    add b
    add b
    nop
    nop
    rst $08
    ccf
    rst $20
    rra
    di
    rrca
    pop af
    rrca
    ld sp, hl
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    inc bc
    rst $38
    rrca
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
    nop
    rst $38
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
    ld bc, $0ff1
    rst $08
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
    cp $fe
    ld hl, sp-$08
    ldh [$e0], a
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
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    rst $08
    ccf
    rst $20
    rra
    di
    rrca
    pop af
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
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
    nop
    rst $38
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    cp $06
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ldh a, [rIF]
    pop bc
    ccf
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $07f9
    rst $20
    rra
    sbc a
    ld a, a
    ld a, a
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

    add b
    add b
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    rst $28
    rra
    rst $28
    rra
    rst $30
    rrca
    ei
    rlca
    ei
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    cp $01
    cp $01
    cp $01
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc
    db $e4
    inc hl
    ret nc

    ld d, e
    add sp, $6b
    ld a, e
    ld a, b
    inc bc
    nop
    ld e, $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh a, [$ef]
    ld hl, sp-$09
    ld sp, hl
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    ld [hl], a
    ld a, a
    scf
    ccf
    scf
    ccf
    scf
    ccf
    scf
    ccf
    rst $30
    inc a
    ccf
    di
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    ld a, $3f
    jr c, @+$41

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
    cp $fe
    db $fd
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
    ld a, a
    cp $7f
    cp $bf
    ld a, [hl]
    cp a
    ld a, [hl]
    cp a
    ld a, [hl]
    cp a
    ld a, [hl]
    cp a
    ld a, [hl]
    cp a
    ld a, [hl]
    rst $18
    ld a, $df
    ld a, $df
    ld a, $df
    ld a, $df
    ld a, $df
    ld a, $df
    ld a, $df
    ld a, $cf
    ld a, $cf
    ld a, $cf
    ld a, $cf
    ld a, $cf
    ld a, $cf
    ld a, $8e
    ld a, a
    adc [hl]
    ld a, a
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [c]
    di
    adc [hl]
    adc a
    ld a, [hl]
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $30
    ldh a, [$f8]
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
    inc sp
    rst $08
    db $fd
    inc bc
    cp $01
    db $fd
    inc bc
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
    ldh a, [rP1]
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
    add b
    nop
    add b
    nop
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    sbc a
    sbc a
    ret nc

    sub b
    ret nc

    sub b
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp-$70
    db $fc
    sub b
    cp $90
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    cp a
    ret nc

    sbc a
    ldh a, [$91]
    cp $90
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sbc a
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    adc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add h
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $fc
    db $fd
    nop
    db $fd
    nop
    rst $38
    db $fc
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    ld c, $f5
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    ld bc, $00ff
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    sbc a
    sbc a
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub c
    sub b
    sub e
    sub b
    sbc a
    sub b
    sbc a
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sbc a
    rst $18
    add b
    rst $18
    add b
    rst $38
    sbc a
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    cp $91
    ret nc

    cp a
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ldh [$1f], a
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
    ccf
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    rst $38
    and a
    rst $38
    and a
    rst $38
    and a
    rst $38
    and a
    rst $38
    and a
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38

Jump_0a0_7f83:
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    xor $ff
    xor $ff
    xor $ff
    xor $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $01
    rra
    nop
    rrca
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
    rlca
    nop
    rlca
    nop
    rst $38
    rst $38
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    cp $3f
    ld [bc], a
    ccf
    ld [bc], a
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    cp $fe
    ld bc, $03fc
    cp $ff
    ld a, [c]
    rrca
    ld [c], a
    rra
    jp nz, Jump_000_023f

    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
