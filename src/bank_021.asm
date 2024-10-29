SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

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
    ret nz

    nop
    ldh [$80], a
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rrca
    rlca

jr_021_405f:
    rra
    rrca
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
    rst $38
    rst $38
    rst $38
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
    db $10
    rst $28
    jr nz, jr_021_405f

    nop
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
    ld [bc], a
    db $fd
    ld b, $f9
    inc b
    ei
    rrca
    ldh a, [$03]
    db $fc
    rra
    ldh [$3e], a
    pop bc
    ld e, $e1
    ld e, $e1
    ld a, [hl-]
    push bc
    ld a, h
    add e
    di
    inc c
    pop hl
    ld e, $f3
    inc c
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, [$f900]
    nop
    ei
    nop
    rst $10
    nop
    ld a, [c]
    nop
    db $e4
    nop
    and b
    nop
    add c
    nop
    ld bc, $8b00
    nop
    ld b, d
    nop
    sub d
    nop
    db $db
    nop
    cp e
    nop
    rst $28
    nop
    db $eb
    nop
    cp e
    nop
    ei
    nop
    cp e
    nop
    ld a, a
    nop
    rst $28
    nop
    rst $18
    nop
    ld l, a
    nop
    xor a
    nop
    rst $38
    nop
    xor $01
    ld sp, hl
    ld b, $17
    ld [$0817], sp
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
    nop
    rst $38
    ld b, [hl]
    rst $38
    ld e, d
    rst $38
    inc d
    rst $38
    nop
    rst $38
    dec b
    rst $38
    jr nz, @+$01

    ld hl, $08ff
    rst $38
    inc d
    rst $38
    ld c, e
    rst $38
    jr nz, @+$01

    dec b
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$7f
    add b
    nop
    rst $38
    dec d
    ld [$fc03], a
    ld e, $e0
    ccf
    ret nz

    ld a, [hl]
    add b
    ld a, [hl]
    add b
    cp $00
    xor $10
    rst $38
    nop
    rst $30
    nop
    rst $18
    jr nz, jr_021_4158

    ldh [$3d], a
    ret nz

    ld [hl], l
    add b
    ld h, d
    add b
    db $ec
    nop
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    ld a, a
    add b
    ld [hl], a
    add b
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    ld e, a
    nop

jr_021_4158:
    ld d, a
    nop
    rst $28
    nop
    cp a
    nop
    sbc a
    nop
    ld l, a
    nop
    scf
    nop
    rra
    nop
    dec e
    nop
    sbc h
    nop
    dec a
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    cp $00
    cp $00
    cp $00
    db $ed
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld sp, hl
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $20
    jr jr_021_41ae

    ldh [rSCY], a
    cp l
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
    ei
    nop
    db $f4
    nop
    nop
    rst $38
    nop
    rst $38
    ld d, d
    rst $38
    ld b, h
    rst $38
    ld bc, $84ff
    rst $38
    sub d
    rst $38

jr_021_41ae:
    dec b
    rst $38
    db $10
    rst $38
    ld c, b
    rst $38
    ld l, e
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    or h
    ld c, e
    ldh a, [rIF]
    inc bc
    db $fc
    cp [hl]
    ld b, b
    db $fc
    nop
    call c, $8800
    nop
    jr jr_021_41cc

jr_021_41cc:
    adc b
    nop
    stop
    jr c, jr_021_41d2

jr_021_41d2:
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    pop af
    nop
    ld sp, hl
    nop
    cp $00
    db $ec
    nop
    db $fd
    nop
    db $fd
    nop
    sbc $20
    rst $18
    jr nz, jr_021_4258

    sub b
    ld a, [hl]
    add c
    ld a, a
    add b
    ld [hl], e
    adc h
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, e
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ld h, l
    nop
    di
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
    rst $18
    nop
    ld a, a
    nop
    cp [hl]
    ld bc, $033c
    ld e, b
    rlca
    ld [hl], b
    rrca
    cp a
    nop
    rst $38
    nop
    rst $38
    nop

jr_021_4228:
    ldh a, [rIF]
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    xor $00
    jr nz, jr_021_4240

jr_021_4240:
    nop
    rst $38
    ld b, b
    rst $38
    ld b, l
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc h
    rst $38
    nop
    rst $38
    and d
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    rra
    rst $38
    nop
    rst $38

jr_021_4258:
    ld de, $00ff

jr_021_425b:
    rst $38
    dec b
    ld a, [$e011]
    pop af
    nop
    pop af

jr_021_4263:
    nop
    ld [hl], e
    nop
    ld sp, $2000

jr_021_4269:
    nop
    jr nz, jr_021_426c

jr_021_426c:
    and b
    nop
    jr nz, jr_021_4270

jr_021_4270:
    ld bc, $b000
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    or b
    nop
    ldh a, [rP1]
    jr nz, jr_021_427e

jr_021_427e:
    ldh a, [rP1]
    ldh [rP1], a
    pop af
    nop
    pop af
    nop
    pop de
    jr nz, jr_021_425b

    jr nz, jr_021_4228

    ld h, b
    sbc b

jr_021_428d:
    ld h, b
    ld a, [de]
    ldh [$88], a
    ld h, b
    ld d, e
    and b
    ret z

    jr nz, @-$2e

    jr nz, jr_021_4269

    jr nz, jr_021_4263

    jr nz, jr_021_428d

    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    rst $38
    nop
    ld [c], a
    nop
    sub e
    ld h, b
    or a
    ld b, b
    cp $01
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $db
    inc h
    sbc a
    ld h, b
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
    cp $00
    rst $18
    nop
    or $00
    sbc $00
    add a
    nop
    rra
    nop
    ld hl, sp-$01
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
    inc bc
    inc bc
    ld bc, $0081
    ret nc

    nop
    ld [$4000], sp
    nop
    ld d, b
    nop
    ret z

    nop
    stop
    rst $38
    ret nc

    rst $38
    inc a
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $28
    sub b
    rlca
    inc b
    inc bc
    add h
    inc bc
    add $01
    jp nz, $ce01

    ld bc, $016a
    ld [hl], a
    nop
    ld l, e
    nop
    ld l, l
    nop
    db $e3
    nop
    pop hl
    nop
    ld h, d
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    pop af
    nop
    ld a, c
    nop
    ld l, d
    nop
    db $ed
    nop
    ld a, [$fd00]
    nop
    push af
    ld a, [bc]
    db $f4
    dec bc
    rst $18
    jr nz, @-$08

    add hl, bc
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], l
    nop
    dec sp
    nop
    cp e
    nop
    dec a
    nop
    rra
    nop
    rra
    nop
    inc a
    inc bc
    ld a, a
    nop
    ld a, a
    nop
    db $fd
    nop
    cp b
    ld b, b
    rst $38
    nop
    ld e, h
    and e
    ld a, [de]
    push hl
    rra
    ldh [$2b], a
    call nc, $827d
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
    cp $00
    ld a, [hl]
    nop
    sbc d
    nop
    sub h
    nop
    and h
    nop
    pop de
    nop
    xor h
    nop
    scf
    nop
    push af
    ld a, [bc]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    stop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [$04ff], sp
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
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
    jp nz, $c03f

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ldh a, [rIF]
    call z, $fc33
    inc bc
    db $fc
    inc bc
    ld a, [hl]
    add c
    ld a, [hl]
    ld bc, $000f
    inc de
    nop
    dec h
    nop
    rlca
    nop
    rla
    nop
    adc a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    inc e
    rst $38
    nop
    rst $38
    nop
    ld [$1800], a
    nop
    rst $38
    nop
    ld [$7ff7], sp
    add b
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld [$a500], a
    nop
    push hl
    nop
    ld a, [bc]
    nop
    inc b
    nop
    ld bc, $0f00
    nop
    inc de
    nop
    rst $38
    nop
    ld a, a
    add b
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
    ret nz

    rst $38
    ret nz

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

    ld b, b
    ret nz

    ld b, b
    ret nz

    ccf
    ret nz

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
    ld [bc], a
    rst $38
    inc d
    rst $38
    ld hl, $80ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $40ff
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    ld [de], a
    rst $38
    rra
    rst $38
    ld b, b
    rst $38
    cpl
    rst $38
    inc d
    rst $38
    nop
    rst $38
    ld c, h
    rst $38
    ld h, b
    rst $38
    ld de, $00ff
    rst $38
    sub b
    ld l, a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and d
    ld e, l
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    push af
    nop
    ld bc, $bf00
    nop
    cp d
    ld b, l
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
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    nop
    ld a, [bc]
    nop
    ld d, h
    nop
    rst $38
    nop
    ld e, h
    nop
    ld [bc], a
    nop
    scf
    nop
    db $dd
    nop
    rst $38
    nop
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    add a
    rst $38
    or h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld e, c
    rst $38
    add h
    rst $38
    cp d
    rst $38
    nop
    rst $38
    jr @+$01

    xor d
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld e, $ff
    ld b, b
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $85ff
    rst $38
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    or a
    ld c, b
    call $fb32
    inc b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, [c]
    nop
    ld b, b
    nop
    db $dd
    nop
    ld sp, hl
    ld b, $3f
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
    db $fd
    ld [bc], a
    xor a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor b
    nop
    pop bc
    nop
    dec l
    nop
    sbc d
    nop
    inc b
    nop
    or d
    nop
    ld sp, hl
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ei
    rrca
    ei
    rrca
    ei
    rrca
    ei
    rrca
    ei
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
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
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    jr c, @+$01

    ccf
    ld hl, sp+$32
    db $fd
    nop
    rst $38
    rst $18
    jr nz, jr_021_46be

    add b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ret nz

    nop
    ld h, $00
    rst $38
    nop
    dec hl
    call nc, Call_000_00ff
    rst $38
    nop
    rst $38
    nop
    sbc $00
    ld a, [$fc00]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop

jr_021_4666:
    jp nc, RST_00

    nop
    add b
    nop
    stop

jr_021_466e:
    ld b, b
    nop
    stop
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    cp $00
    rst $30
    nop
    ldh a, [rP1]
    nop
    nop
    dec de
    rst $38
    ld b, d
    rst $38
    jr nz, jr_021_4666

    nop
    ldh [rLCDC], a
    ldh [rP1], a
    ldh [rLCDC], a
    ldh [rP1], a
    ldh [rSTAT], a
    ldh [rDIV], a
    db $eb
    add b
    ldh [$08], a
    ldh [rP1], a
    add sp, $40
    add sp, -$80
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rP1], a
    add sp, $48
    ldh [$60], a
    ret z

    ld b, b

jr_021_46a9:
    ret nz

    ld d, b
    ret nz

    jr nz, jr_021_466e

    ret nc

jr_021_46af:
    ret z

    rst $28
    ret c

    rst $20
    ret c

    push af
    rst $18
    pop af
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$de], a
    pop hl

jr_021_46be:
    cp $c1
    add e
    ret nz

    ld b, $c1
    adc [hl]
    pop bc
    nop
    rst $18
    jr nz, jr_021_46a9

    rrca
    ldh a, [rNR41]
    rst $18
    jr nz, jr_021_46af

    nop
    rst $38
    and b
    rst $18
    and b
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$ef]
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $08
    ldh a, [$b1]
    ldh [$bf], a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc e
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    add c
    cp $c0
    add b
    ldh a, [$8f]
    rst $38
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    add hl, de
    and $ff
    nop
    nop
    rst $38
    adc a
    ld [hl], b
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
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    pop de
    nop
    or a
    ld c, b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    sbc $00
    cp $00
    jr nz, jr_021_475e

jr_021_475e:
    jr nz, jr_021_4760

jr_021_4760:
    rst $38
    nop
    rst $38
    nop
    and b
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
    ld h, d
    nop
    or $00
    ldh a, [rP1]
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
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    ld e, $03
    rst $38
    ld bc, $0000
    ld bc, $0001
    inc b
    ld bc, HeaderLogo
    inc d
    ld bc, $0005
    rrca
    nop
    add hl, bc
    ld b, $1c
    inc bc
    inc e
    inc bc
    ld a, [de]
    dec b
    db $10
    rrca
    ld [hl], b
    rrca
    adc a
    ld a, a
    xor a
    ld a, a
    ld a, a
    rst $38
    ld b, b
    nop
    inc bc
    cp $7f
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
    cp $fd
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, l
    and b
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    nop
    add sp, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    inc bc
    nop
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    jr nz, @+$01

    db $f4
    nop
    rst $38
    nop
    rra
    ldh [$f5], a
    nop
    and h
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    db $fd
    nop
    ld a, [c]
    nop
    ldh [rP1], a
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    ld b, b
    ccf
    nop
    ld a, a
    add b
    ld a, a
    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    ld l, l
    rst $38
    add hl, bc
    ldh a, [rP1]
    cp $00
    cp $00
    rst $38
    nop
    cp $01
    cp $00
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
    cp $01
    cp $fe
    rst $38
    rst $38
    cp $fe
    rst $38
    nop
    ld bc, $11ef
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
    inc b
    rst $38
    nop
    rst $00
    ld hl, sp+$05
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld de, $15ff
    rst $38
    inc de
    rst $38
    dec de
    rst $38
    scf
    rst $38
    rla
    rst $38
    rra
    rst $38
    rra
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
    rlca
    rrca
    cp a
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
    rst $38
    rst $38
    ld e, a
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
    rrca
    rrca
    ld l, a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp h
    ld b, b
    nop
    nop
    or l
    ld c, d
    ldh a, [rP1]
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
    jr nz, jr_021_4926

jr_021_4926:
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
    sub b
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
    add b
    nop
    stop
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
    nop
    rst $38
    nop
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
    ccf
    nop
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $817f
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    inc bc
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    rlca
    rst $38
    ld b, $ff
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
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    cp a
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
    adc a
    adc a
    rlca
    adc a
    rrca
    adc a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    cp $be
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
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
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    add hl, sp
    ld a, a
    ld de, $f83e
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
    rst $18

jr_021_4a2b:
    jr nz, jr_021_4a2b

    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $f4
    nop
    ld a, [$eb00]
    nop
    ld hl, sp+$00
    push af
    nop
    push af
    nop
    rst $10
    nop
    db $fd
    nop
    or $00
    ld sp, hl
    nop
    ret z

    nop
    ld a, [c]
    nop
    and b
    nop
    ld d, c
    nop
    cpl
    rst $38
    cpl
    cp a
    cpl
    ccf
    cpl
    ccf
    rrca
    rra
    ld c, a
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    ld a, a
    ld c, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    rra
    ccf
    ld e, a
    ld a, a
    rra
    ccf
    rra
    ccf
    sbc a
    cp a
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
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    add b
    rst $38
    inc c
    rst $38
    ret z

    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld sp, $50ff
    rst $38
    inc sp
    rst $38
    dec d
    rst $38
    inc b
    rst $38
    ld c, b
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld b, l
    rst $38
    ld a, [c]
    rst $38
    ld b, $ff
    dec c
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $11ff
    cp $1a
    nop
    nop
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
    db $fd
    nop
    rst $38
    nop
    xor $00
    ei
    nop
    di
    nop
    ret z

    nop
    jp nc, $f000

    nop
    push de
    nop
    and b
    nop
    xor b
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld [$4000], sp
    nop
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr @+$04

    rst $38
    ld [$04ff], sp
    rst $38
    ld d, [hl]
    rst $38
    adc d
    rst $38
    db $dd
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $75ff
    rst $38
    ld b, b
    rst $38
    add [hl]
    rst $38
    db $76
    rst $38
    nop
    rst $38
    inc b
    ei
    ld e, a
    rst $38
    sub b
    rst $38
    ld c, l
    rst $38
    ld bc, $80ff
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    nop
    cp $00
    ret nc

    nop
    and b
    nop
    cp e
    nop
    cp $00
    ei
    nop
    ld [$ab00], a
    nop
    and b
    nop
    add b
    nop
    jp c, $f200

    nop
    sub b
    nop
    and b
    nop
    add b
    nop
    ld b, h
    nop
    sub b
    nop
    ld b, b
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
    nop
    ld [$ffa5], sp
    jr nz, @+$01

    ld [de], a
    rst $38
    ld h, d
    rst $38
    sub e
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$acff], sp
    rst $38
    add h
    rst $38
    adc b
    rst $38
    ld bc, $0dff
    rst $38
    inc h
    rst $38
    nop
    rst $38
    ld bc, $20ff
    rst $38
    add l
    rst $38
    db $d3
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc d
    rst $38
    add c
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    nop
    ld [$a400], a
    nop
    sbc c
    nop
    jr nz, jr_021_4bfc

jr_021_4bfc:
    ldh a, [rP1]
    and b
    nop
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    add b
    nop
    jr nz, jr_021_4c0e

jr_021_4c0e:
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
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    ld bc, $0e0d
    rrca
    db $10
    ld de, $1207
    inc de
    inc d
    dec d
    ld d, $00
    nop
    nop
    nop
    rla
    dec c
    jr jr_021_4c51

    ld a, [de]
    dec de
    rlca
    inc e
    dec e
    ld e, $1f
    jr nz, jr_021_4c41

jr_021_4c41:
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_021_4c76

    ld a, [hl+]
    dec hl
    inc l
    nop

jr_021_4c51:
    nop
    nop
    nop
    dec l
    ld l, $2e
    ld l, $2e
    cpl
    jr nc, jr_021_4c8d

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_021_4ca2

    scf
    jr c, jr_021_4ca8

    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_4c76:
    nop
    nop
    nop
    nop
    jr nc, jr_021_4cb7

    inc a
    dec a
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
    jr nc, jr_021_4ccc

    ld b, c

jr_021_4c8d:
    ld b, d
    ld b, e
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
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop

jr_021_4ca2:
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_4ca8:
    nop
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, d
    ld d, e
    ld d, h

jr_021_4cb7:
    ld d, h
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

jr_021_4ccc:
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld e, h
    ld e, h
    ld e, h
    ld l, h
    ld l, l
    dec c
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
    ld e, h
    ld e, h
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    ld a, e
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
    adc e
    adc h
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    and b
    and c
    sbc h
    and d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    and h
    and c
    and l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    inc bc
    dec b
    dec b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    inc bc
    dec b
    dec b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    inc bc
    dec b
    dec b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    inc bc
    dec b
    dec b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    ld [bc], a
    inc b
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
    ld [bc], a
    inc b
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
    ld [bc], a
    inc b
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
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld b, $00
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld b, $00
    ld bc, $0100
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
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
    ld [bc], a
    ld b, $00
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
    ld b, $06
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
    ld b, $00
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
    ld b, $06
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
    ld b, $00
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
    nop
    cp $00
    db $fc
    nop
    ldh [rP1], a
    ldh [rP1], a
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
    jr c, jr_021_4ec5

jr_021_4ec5:
    dec a
    ld bc, $e3ff
    rst $38
    ld h, [hl]
    rst $38
    jp z, $eaff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    cp e
    ld de, $5b5f
    db $db
    db $db
    db $db
    pop de
    ei
    ld a, [c]
    ld a, [c]
    ei
    dec sp
    di
    inc sp
    rst $38
    ld bc, $06ff
    add sp, $03
    nop
    nop
    db $e3
    db $e3
    db $fc
    db $fc
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
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $10ff
    rst $38
    ld a, [de]
    rst $38
    inc bc
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    nop
    rst $38
    inc [hl]
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld bc, $00ff
    rst $38
    add d

jr_021_4f2f:
    rst $38
    nop

jr_021_4f31:
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    adc [hl]
    nop
    sbc [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c301
    jp nz, $90cf

    rst $38
    db $e3
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    add hl, sp
    add hl, sp
    sbc a
    rst $38
    and e
    rst $38
    add b
    rst $38
    jr nz, jr_021_4f2f

    jr nz, jr_021_4f31

    dec de
    nop
    rst $38
    ldh a, [rIE]
    ei
    rst $18
    db $dd
    rst $38
    rst $38
    daa
    rst $38
    ld b, c
    ld a, [hl]
    cp [hl]
    cp a
    ld b, a
    ld b, a
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    ld bc, $00ff
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
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ldh [rIE], a
    rst $38
    rra
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    daa
    nop
    and d
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    inc a
    nop
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
    nop
    nop
    nop
    pop bc
    nop
    ld [$fd00], a
    sub b
    rst $38
    ld bc, $80ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], c
    ld a, a
    cp a
    rst $38
    nop
    add e
    sbc a
    rst $18
    sbc [hl]
    sbc $8c
    call z, $e222
    jp nz, $ffe2

    adc d
    rst $38
    ld e, d
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ret c

    rst $38
    rra
    add c
    ld a, a
    ld bc, $20ff
    rst $38
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    db $10
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
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    jr jr_021_50cc

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
    ld e, a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1200], sp
    nop
    xor l
    nop
    ld d, a
    inc bc
    xor a
    dec b
    rst $38
    ld e, a
    rst $38
    scf
    rst $38
    ccf
    rst $38

jr_021_50cc:
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ccf
    ccf
    ccf
    rst $38
    rra
    rst $38
    rra
    sbc a
    rra
    sbc a
    rlca
    xor a
    pop hl
    ld bc, $0fcf
    db $dd
    sbc l
    db $fd
    cp c
    db $fd
    ld bc, $03ff
    rst $38
    ld a, a
    dec b
    rst $38
    ld bc, $57ff
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
    rst $38
    nop
    rst $38
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
    ldh a, [$f0]
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    call Call_000_20ff
    rst $38
    ld [bc], a
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
    ld bc, $00ff
    rst $38
    sbc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc l
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    scf
    nop
    ld e, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [de]
    rst $38
    nop
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    or h
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
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, h
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    rst $38
    nop
    rst $38
    add d
    rst $38
    rst $38
    rst $38
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
    rrca
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, d
    rst $38
    db $10
    rst $38
    ld l, d
    rst $38
    nop
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
    nop
    rst $38
    ld h, b
    rst $38
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    inc b
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$00ff], sp
    rst $38
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld bc, $f1ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    xor $00
    adc b
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
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
    jr z, jr_021_5291

jr_021_5291:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    sbc h
    rst $38
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
    rst $38
    ld [hl-], a
    rst $38
    nop
    rst $38
    and d
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc l
    rst $38
    nop
    rst $38
    ret nc

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
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and a
    nop
    jp nz, RST_00

    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    jp hl


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
    add h
    rst $38
    and $ff
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
    inc h
    rst $38
    nop
    rst $38
    ld l, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld de, $88ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld hl, $0000
    nop
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, h
    nop
    ldh [rP1], a
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
    ret nc

    rst $38
    and b
    rst $38
    dec d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld [bc], a
    rst $38
    add h
    rst $38
    ld bc, $00ff
    rst $38
    xor h
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, @+$01

    inc b
    rst $38
    nop
    rst $38
    xor l
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $20
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rla
    nop
    ld bc, $eb00
    nop
    rst $38
    nop
    cp a
    nop
    ld e, d
    nop
    ei
    nop
    rst $38
    nop
    rlca
    sbc $07
    sbc $07
    sbc $07
    sbc $07
    sbc $07
    rst $18
    rlca
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    ld bc, $01df
    rst $18
    ld bc, $01df
    rst $18
    ld bc, $01df
    rst $18
    ld bc, $01df
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
    cp a
    nop
    cp [hl]
    ld bc, $01be
    cp l
    inc bc
    cp e
    rlca
    cp e
    rlca
    or a
    rrca
    xor a
    rra
    xor a
    rra
    sbc a
    ccf
    nop
    ccf
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld d, c
    rst $38
    pop de
    rst $38
    ld b, c
    rst $38
    ld b, e
    cp $43
    cp $57
    cp $47
    db $fc
    ld b, a
    db $fc
    ld h, $fc
    ld h, $fc
    ld l, $f8
    ld a, $f8
    inc a
    ld hl, sp+$3c

Call_021_5423:
    ldh a, [$7c]
    ldh a, [$3c]
    ldh a, [$38]
    ldh a, [$38]
    ldh [$f9], a
    ldh [$f9], a
    nop
    inc b
    ld sp, hl
    inc b
    pop af
    inc b
    pop af
    inc d
    pop hl
    add h
    ld a, c
    ld bc, $00fe
    rst $38
    add hl, sp
    jp nz, $fe01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    inc b
    inc sp
    call nz, $ff00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    add b
    add b
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, b
    add b
    jr nc, @-$7e

    nop
    add b
    nop
    add b
    nop
    add b
    ld bc, $0280
    add b
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
    add b
    ld a, a
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
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
    cp $80
    rst $38
    add b
    cp $80
    rst $38
    add b
    cp $80
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    dec b
    ld a, [$fc03]
    nop
    rst $38
    ld [$09f7], sp
    or $0b
    db $e4
    sbc e
    ld b, h
    cp e
    ld b, h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, d
    add h
    ld [hl], e
    add h
    di
    inc b
    di
    inc b
    ei
    inc b
    ei
    inc b
    di
    inc b
    di
    inc b
    di
    inc b
    rst $20
    ld [$8867], sp
    rst $20
    ld [$18e7], sp
    inc bc
    db $fc
    ld h, e
    sbc h
    ld bc, $00fe
    rst $38
    nop
    rst $38
    rst $20
    ld [$fd03], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    db $fc
    inc c
    db $ec
    inc c
    call z, Call_000_0c0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc l
    inc c
    ld a, h
    inc c

jr_021_5585:
    inc a
    inc c
    sbc h
    inc c
    call c, $fc0c
    inc c
    db $fc

jr_021_558e:
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
    db $fc
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $22ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $fd
    nop
    inc bc
    db $fc
    inc hl
    call c, $f608
    jr c, jr_021_558e

    add hl, sp
    add $19
    add $18
    and $98
    ld h, [hl]
    ld h, a
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
    ccf
    nop
    cpl
    nop
    ret c

    daa
    ret nc

    cpl
    sub b
    daa
    sub b
    daa
    sbc [hl]
    ld hl, $219e
    sbc [hl]
    ld hl, $208f
    sbc a
    jr nz, jr_021_5585

    ld hl, $2598
    sbc b
    daa
    ret c

    daa
    call z, $cc13
    inc de
    rst $00
    db $10
    adc $11
    add $19
    ret nz

    dec sp
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    adc $11
    rst $08
    db $10
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
    cp $0f
    cp $0f
    db $fc
    rrca
    db $fc
    rra
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    ld hl, sp-$07
    cp $fe
    rst $38
    rst $38
    rst $38
    ld [$48ff], sp
    rst $38
    add b
    rst $38
    ld c, $ff
    ld b, $ff
    cp $ff
    call c, $ef07
    inc bc
    rst $10
    ld bc, $009f
    ld c, a
    nop
    ld b, h
    nop
    ld h, d
    nop
    ld [hl-], a
    nop
    ld sp, $1c00
    nop
    sbc a
    nop
    rst $08
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
    nop
    di
    nop
    di
    nop
    di
    nop
    ld sp, hl
    nop
    db $fc
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    inc b
    rst $38
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
    rst $38
    nop
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
    rra
    rst $38
    rra
    cp $1f
    cp $3f
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$7f
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ldh [$e7], a
    ld hl, sp-$07
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
    ldh [rIE], a
    pop hl
    rst $38
    db $f4
    ld a, a
    ld hl, sp+$3f
    db $fd
    rra
    cp $0f
    ld a, a
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    cp a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00bf
    cp a
    nop
    cp a
    nop
    sbc a
    nop
    rst $08
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
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
    sbc a
    ldh [$e7], a
    ld hl, sp-$05
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    ld [hl-], a
    rst $38
    and d
    rst $38
    ldh [rIE], a
    jp nz, $f8ff

    rst $38
    db $d3
    rst $38
    xor $ff
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
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
    nop
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $80ff
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
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
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
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $08
    ldh a, [$f3]
    db $fc
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    ld a, a
    cp $7f
    cp $3f
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $80ff
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
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
    ccf
    ret nz

    rst $08
    ldh a, [$f3]
    db $fc
    db $fd
    cp $fe
    rst $38
    rlca
    rst $38
    adc b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $f4
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
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    ld a, a
    db $fc
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ldh [$e7], a
    ld hl, sp-$07
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
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ldh [$e7], a
    ld hl, sp-$07
    cp $fe
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
    ld a, a
    rst $38
    cp a
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
    ld de, $1201
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    inc c
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_021_5935

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_021_5945

    inc c
    ld a, [hl+]
    ld [bc], a
    ld bc, $2c2b
    dec l
    ld l, $2f
    jr nc, jr_021_5958

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $0c
    scf
    ld bc, $3801
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a

jr_021_5935:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc c
    ld b, h
    ld bc, $4501
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_021_5945:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld bc, $5301
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_021_5958:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld bc, $6160
    dec e
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ccf
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld bc, $7170
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
    ld bc, $807f
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
    ld bc, $8f8e
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
    ld bc, $9d53
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
    ld bc, $acab
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
    ld bc, $ba01
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
    ld bc, $c801
    ret


    jp z, Jump_000_0101

    set 1, h
    call $cfce
    inc c
    inc c
    inc c
    inc c
    ld bc, $d001
    pop de
    ld bc, $d201
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld bc, $0101
    ld bc, $d301
    call nc, Call_000_0c0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld bc, $0101
    ld bc, $d4d5
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld bc, $0101
    sub $d7
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld bc, $d801
    reti


    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc b
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0001
    nop
    inc b
    ld [bc], a
    inc b
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0404
    ld b, $00
    nop
    ld bc, $0001
    nop
    ld b, $02
    ld [bc], a
    ld b, d
    ld [bc], a
    inc b
    ld bc, $0401
    inc b
    nop
    nop
    ld bc, $0101
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0103
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0303
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0303
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    inc b
    inc b
    ld b, h
    inc b
    ld bc, $0103
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0103
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc b
    ld bc, $0103
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0402
    ld bc, $0103
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0103
    ld bc, $0006
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0402
    inc b
    inc bc
    inc bc
    ld bc, $0006
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0401
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    ld b, $06
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
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
    ld [bc], a
    ld [bc], a

jr_021_5b5a:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_021_5b63:
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
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
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

jr_021_5b88:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_5b96:
    nop
    nop

jr_021_5b98:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_5b9f:
    add b
    nop

jr_021_5ba1:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38

jr_021_5bae:
    nop
    rst $38
    ld sp, hl
    ld b, $f9
    inc b
    cp $01
    di
    ld [$08f3], sp
    rst $30
    ld [$00ff], sp

jr_021_5bbe:
    rst $28
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $00
    jr nc, jr_021_5b96

    jr nc, jr_021_5b98

    jr nz, jr_021_5b5a

    ld h, b
    adc a
    ld h, b
    adc a
    ld h, b

jr_021_5bd0:
    sbc h
    ld b, e
    ld a, [de]
    push bc
    ld a, [de]
    push bc

jr_021_5bd6:
    jr jr_021_5b9f

    jr c, jr_021_5ba1

    jr c, jr_021_5b63

    and b
    rra
    pop af
    ld c, $f1
    inc c
    pop af
    inc c
    pop de
    inc l
    di
    inc c
    db $e3
    jr jr_021_5bae

    jr c, jr_021_5bd0

    jr jr_021_5bd6

    jr jr_021_5b98

    ld e, b
    rst $00
    jr nc, @-$37

    jr nc, jr_021_5bbe

    jr nc, jr_021_5b88

    ld [hl], b
    add a
    ld a, b
    rst $08
    jr nc, jr_021_5c4e

    or b
    ret nc

    nop
    add b
    nop
    add c
    nop
    add d
    nop
    inc bc
    nop
    ld bc, $0700
    nop
    rlca
    nop
    dec bc
    nop
    inc bc
    nop
    rlca
    nop
    add $00
    cp $00
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
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

jr_021_5c4e:
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    add c
    rst $38
    adc [hl]
    rst $38
    ld b, h
    ld a, a
    ld h, d
    ld a, a
    inc sp
    ccf
    inc de
    rra
    add hl, bc
    rrca
    inc c
    rrca
    inc b
    rlca
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    stop
    nop
    nop
    jr nz, jr_021_5cb6

jr_021_5cb6:
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ldh [rP1], a
    push bc
    nop
    pop hl
    nop
    ret nz

    nop
    ldh [rP1], a
    pop bc
    nop
    ld [c], a
    nop
    add c
    nop
    ld [bc], a
    nop
    ld b, $00
    ld c, [hl]
    nop
    xor [hl]
    nop
    ld c, $00
    ld e, $00
    adc h
    nop
    adc $00
    db $fc
    nop
    sbc h
    nop
    inc e
    nop
    jr c, jr_021_5ce6

jr_021_5ce6:
    ld a, b
    nop
    cp b
    nop
    jr c, jr_021_5cec

jr_021_5cec:
    ld d, b
    nop
    ld d, b
    nop
    stop
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
    inc b
    nop
    inc b
    nop
    add b
    nop
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    pop hl
    rra
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
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$f8], a
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    nop
    ld hl, sp-$80
    ld hl, sp-$40
    ldh a, [rLCDC]
    ldh a, [$60]
    db $fc
    jr c, @-$06

    sbc b
    adc h
    rst $38
    ld b, [hl]
    ld a, a
    ld [hl+], a
    ccf
    inc hl
    ccf
    inc de
    rra
    add hl, bc
    rrca
    inc b
    rlca
    ld b, $07
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
    nop
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
    db $fc
    db $fc
    adc a
    rst $38
    nop
    rst $38
    rrca
    nop
    inc b
    inc bc
    inc bc
    nop
    nop
    ld bc, $0100
    ld bc, $4000
    nop
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    db $fd
    ld [bc], a
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    db $eb
    inc d
    push hl
    ld a, [de]
    and c
    ld e, [hl]
    ldh [$1f], a
    ldh [$03], a
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
    nop
    nop
    ld b, b
    nop
    or $00
    inc a
    ret nz

    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    pop hl
    rra
    cp $01
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
    nop
    ldh a, [rP1]
    nop
    ret nz

    ret nz

    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld bc, $8fff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_5e3f:
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

    add b
    ldh [$80], a
    ld hl, sp-$40
    rst $38
    ld h, b
    ld h, b
    rst $38
    jr nc, @+$01

    sub b
    rst $38
    sbc h
    rst $38
    ld c, a
    ld a, a
    ld h, $3f
    inc de
    rra
    ld [de], a
    rra
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ret nz

    ret nz

    cp $fe
    cp $01
    ccf
    ret nz

    ld c, c
    or [hl]
    dec c
    ld a, [c]
    ld [$18f7], sp
    rst $20
    db $fc
    inc bc
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ld l, a
    db $10
    ccf
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    ldh [$1f], a
    add sp, $17
    db $e4
    dec de
    add sp, $17
    add b
    ld a, a
    add b
    ld a, a
    nop
    ccf
    ldh [$1f], a
    ld a, [c]
    dec c
    ld hl, sp+$07
    ld e, b
    and a
    add h
    ld a, e
    call nz, Call_000_003b
    rst $38
    nop
    rst $38
    nop
    ccf
    jp nz, $c425

    jr c, jr_021_5e3f

    ld [hl], l
    add e
    ld a, h
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    nop
    rra
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    adc h
    nop
    nop
    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    pop hl
    rra
    cp $01
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
    cp $00
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
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
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
    ld [c], a
    nop
    ld hl, sp+$00
    cp $00
    cp $00
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    ldh [$80], a
    ret nz

    add b
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ld e, b
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    ldh a, [$f0]
    rrca
    rst $38
    nop
    rst $38
    or b
    rst $38
    ei
    rst $38
    ld a, [$5fff]
    rst $38
    ld b, a
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop

jr_021_5f56:
    rst $18
    jr nz, jr_021_5f56

    ld [bc], a
    ei
    inc b
    ld hl, sp+$07
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
    rra
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    or e
    ld c, h
    ld e, e
    and h
    xor l
    ld d, d
    db $fc
    inc bc
    cp a
    nop
    xor $00
    ld d, a
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
    ccf
    nop
    rra
    nop
    ld bc, $0d00
    nop
    ld sp, hl
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
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
    add b
    add b
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    nop
    db $fd
    nop
    ld l, $00
    ld a, [bc]
    nop
    and b
    nop
    stop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $f4
    nop
    ld a, [$ff00]
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
    ldh a, [rP1]
    cp a
    nop
    db $fd
    rlca
    rlca
    nop
    nop
    ld hl, sp-$08
    rlca
    rst $38
    nop
    rst $38
    ld e, b
    rst $38
    cp d
    rst $38
    rst $38
    rst $38
    ld h, b
    sbc a
    ldh a, [rIF]
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    ld b, b
    ld c, a
    or b
    ld c, a
    or b
    db $eb
    inc d
    cp l
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $fd
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
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $d3
    nop
    add sp, $00
    db $dd
    nop
    db $eb
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
    db $fd
    nop
    ld d, a
    nop
    or a
    nop
    rst $28
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
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
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
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    inc bc
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
    add c
    nop
    add b
    nop
    jr nz, jr_021_60d0

jr_021_60d0:
    adc b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    cp $00
    rst $38
    nop
    ld hl, sp+$00
    ld a, a
    nop
    add e
    nop
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, [hl]
    rst $10
    rst $38
    ld a, $3f
    ld bc, $c001
    ret nz

    ld a, $fe
    ld bc, $c0ff
    rst $38
    sub $ff
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    db $e3
    inc e
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
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
    pop af
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$3f05]
    nop
    xor a
    nop
    ret nc

    nop
    ld [hl], a
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
    rst $18
    jr nz, @+$01

    nop
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
    cp $01
    rrca
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    add b
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0301
    ld bc, $0103
    inc bc
    ld bc, $0303
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    db $fc
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    inc a
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
    ld a, $00
    ld c, $00
    ld hl, $0000
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    add b
    nop
    ld a, [$ff00]
    nop
    ldh a, [rIE]
    cp a
    rst $38
    rst $30
    rst $38
    rrca
    rrca
    nop
    nop
    ldh [$e0], a
    ld e, $fe
    ld bc, $0fff
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
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
    ld c, c
    or [hl]
    db $fc
    inc bc
    ld a, a
    nop
    ld h, h
    nop
    jp nc, Jump_021_6400

    nop
    db $fc
    nop
    ei
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
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
    rra
    ccf
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$17
    add sp, $0f
    ldh a, [rNR33]
    ldh [$38], a
    ret nz

    add hl, sp
    ret nz

    rra
    ldh [$09], a
    ldh a, [rNR31]
    ldh [$9b], a
    ld h, b
    dec e
    ldh [$39], a
    ret nz

    ld a, c
    add b
    pop af
    nop
    db $e3
    nop
    nop
    nop
    ldh [$e0], a
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
    rst $38
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ld l, b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    nop
    add e
    nop
    jr z, jr_021_6296

jr_021_6296:
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld c, a
    nop
    nop
    nop
    and b
    nop
    push de
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld bc, $a000
    nop
    nop
    rst $38
    ret nz

    rst $38
    cp $ff
    sbc l
    rst $38
    ld a, h
    ld a, a
    inc bc
    inc bc
    nop
    nop
    ld hl, sp-$08
    ld hl, sp+$07
    ld a, a
    add b
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    ccf
    adc h
    ld [hl], e
    sbc $21
    cp $01
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $08
    nop
    rst $38
    nop
    rst $30
    nop
    ld a, [c]
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, a
    add b
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
    add b
    nop
    add b
    nop
    or b
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    pop hl
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ld a, [c]
    nop
    or $00
    add $00
    rst $08
    nop
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, $80
    inc a
    add b
    ld e, [hl]
    add b
    cp h
    nop
    db $fc
    nop
    ld a, h
    nop
    ld a, h
    nop
    db $fc
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld hl, sp+$00
    rlca
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rNR34]
    ldh [rNR34], a
    ldh [$9e], a
    ld h, b
    ld e, $e0
    inc e
    ldh [$bc], a
    ld b, b
    inc a
    ret nz

    inc a
    ret nz

    ld a, b
    add b
    ld a, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop hl
    nop
    ret nc

    nop
    and b
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
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [rIE], a
    rra
    rra
    nop
    nop
    ret nz

    ret nz

    ld a, $fe
    ld bc, $e0ff
    rst $38

jr_021_63b8:
    rst $38

jr_021_63b9:
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp h
    ld b, e
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
    adc a
    nop
    ret nz

    nop
    sub b
    nop
    add b
    nop
    jr nz, jr_021_63da

jr_021_63da:
    ldh [rP1], a
    ld hl, sp+$00
    cp h
    nop
    ei
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld [hl], h
    nop
    add b
    nop
    ldh [rP1], a
    di
    nop
    ld hl, sp+$00
    ld [hl], a
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

Jump_021_6400:
    add b
    nop
    ldh [rP1], a
    add sp, $00
    add c
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    db $f4
    dec bc
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f1
    ld b, $f0
    rlca
    pop af
    ld b, $e8
    rlca
    db $e4
    dec bc
    db $e4
    dec bc
    ldh [rIF], a
    ret nz

    rrca
    ret nz

    rrca
    ret nz

    rra
    jp $871c


    jr jr_021_63b8

    jr jr_021_63b9

    add hl, de
    and a
    jr jr_021_6446

    jr nc, jr_021_6447

    ld sp, $310e
    ld c, $31
    ld c, [hl]
    ld sp, $601f
    rra
    ld h, b
    rra
    ld h, b

jr_021_6446:
    ld a, [de]

jr_021_6447:
    ld h, l
    dec bc
    ld [hl], h
    sub a
    ld l, b
    add a
    ld a, b
    ld b, e
    cp h
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

    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
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
    ld [$0400], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld e, l
    nop
    rst $30
    nop
    ld a, l
    nop
    rst $28
    nop
    rst $38
    nop
    cp a
    nop
    add $00
    ldh [rP1], a
    ld hl, sp+$00
    cp $c0
    cp $3e
    rst $38
    ld bc, $f8ff
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    ld e, $fe
    ld bc, $a8ff
    rst $38
    ld e, l
    rst $38
    ld sp, hl
    rst $38
    ld [hl-], a
    call $04fb
    db $fc
    inc bc
    ld a, a
    nop
    ccf
    nop
    cp a
    nop
    rst $38
    nop
    rst $28
    nop
    xor a
    nop
    ccf
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nz, $f800
    nop
    rst $38
    nop
    add a
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ld b, a
    nop
    inc hl
    nop
    ld a, [c]
    nop
    cp $00
    rst $38
    nop
    rrca
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0100
    nop
    add c
    nop
    inc bc
    nop
    ld de, $1900
    nop
    rra
    nop
    inc de
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld d, a
    nop
    ld b, [hl]
    nop
    adc d
    nop
    adc d
    nop
    jp nz, $8000

    nop
    ret nz

    nop
    add b
    nop
    call nz, RST_00
    nop
    inc b
    nop
    inc c
    nop
    sbc h
    nop
    ld e, b
    nop
    jr jr_021_6526

jr_021_6526:
    jr c, jr_021_6528

jr_021_6528:
    jr jr_021_652a

jr_021_652a:
    sbc b
    nop
    ld hl, sp+$00
    jr nc, jr_021_6530

jr_021_6530:
    jr nc, jr_021_6532

jr_021_6532:
    ld [hl], b
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    ld [hl], b
    nop
    and b
    nop
    and b
    nop
    jr nz, jr_021_6540

jr_021_6540:
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
    ld bc, $1f00
    nop
    rst $38
    nop
    rlca
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    sbc $00
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    nop
    ld [hl], h
    nop
    cp $00
    ld l, l
    nop
    rst $38
    nop
    ld a, [$ff00]
    nop
    cpl
    nop
    ld bc, $0000
    nop
    nop
    nop
    ldh a, [$f0]
    rst $38
    rrca
    ret nz

    rst $38
    ld a, $3f
    ld bc, $0001
    nop
    ldh a, [$f0]
    rrca
    rst $38
    ret nz

    rst $38
    ld a, h
    rst $38
    rst $38
    nop
    ld bc, $d0fe
    cpl
    pop af
    ld c, $fd
    ld [bc], a
    ld [c], a
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    db $fc
    nop

jr_021_65a4:
    ei
    nop
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    ret nz

    nop
    cp $00
    ld a, $00
    inc bc
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    stop
    ld b, b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ld b, b
    nop
    jr nz, jr_021_65cc

jr_021_65cc:
    and b
    nop
    ret nz

    nop
    ld b, c
    nop
    jp nc, $9000

    nop
    pop bc
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ld a, a
    add b
    ld a, [hl]
    add b
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    ld bc, $01fc
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
    di
    nop
    di
    nop
    pop af
    ld [bc], a
    push af
    ld [bc], a
    rst $30
    nop
    rst $20
    nop
    db $e3
    inc b
    db $e3
    inc b
    db $ed
    ld [bc], a
    pop bc
    ld c, $c3
    inc c
    rst $08
    nop
    rst $00
    ld [$0cc3], sp
    adc a
    db $10
    add a
    jr jr_021_65a4

    ld a, [de]
    nop
    nop
    nop
    nop
    nop
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

    cp $fe
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
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    add c
    nop
    add e
    nop
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    ld bc, $010f
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rst $00
    add $3d
    rst $38
    rlca
    rst $38
    pop af
    rst $38
    ld c, $0f
    nop
    nop
    add b
    add b
    ld a, h
    db $fc
    inc bc
    rst $38
    ccf
    ret nz

    ld h, b
    sbc a
    inc h
    db $db
    pop bc
    ld a, $68
    rla
    daa
    jr @+$28

    nop
    add b
    nop
    sbc b
    nop
    ld a, [de]
    nop
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nc

    nop
    ld [hl], b
    nop
    jr nz, jr_021_66ac

jr_021_66ac:
    nop
    nop
    ld [hl], b
    nop
    jr nc, jr_021_66b2

jr_021_66b2:
    jr nc, jr_021_66b4

jr_021_66b4:
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh [rP1], a
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ld e, a
    jr nz, jr_021_66ea

    add sp, $37
    ret z

    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    add b
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_66ea:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f400
    ld bc, $010e
    ld h, $01
    ld a, [de]
    ld bc, $001f
    rra
    nop
    rra
    nop
    cp a
    nop
    add h
    inc bc
    inc c
    inc bc
    inc l
    inc bc
    dec l
    ld [bc], a
    ld a, $01
    ld a, [hl]
    ld bc, $017e
    nop
    nop
    ldh a, [$f0]
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
    rst $38
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    ld bc, $0301
    ld bc, $0203
    rlca
    ld b, $07
    inc b
    rrca
    inc b
    rrca
    ld [$090f], sp
    rra
    ld de, $121f
    ccf
    ld [hl+], a
    ccf
    inc h
    ld a, a
    ld c, h
    ld c, b
    rst $38

jr_021_6742:
    sbc b
    cp $90
    cp $30
    db $fc
    jr nz, jr_021_6742

    ld b, b
    ld hl, sp+$40
    ldh a, [$80]
    ldh [$80], a
    ldh [rP1], a
    ret nz

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
    ldh [$e0], a
    ld e, $fe
    nop
    rst $38
    ldh a, [rIE]
    add a
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    nop
    rst $38
    ld bc, $fe00
    ld bc, $0176
    ld b, d
    ld bc, $0300
    inc b
    inc bc
    inc bc
    nop
    ld bc, $0100
    nop
    ld b, $01
    nop
    rlca
    ld [bc], a
    dec b
    ld b, $01
    ld [bc], a
    ld bc, $0102
    nop
    inc bc
    nop
    inc bc
    inc c
    inc bc
    ld [$0007], sp
    rrca
    nop
    rrca
    inc b
    inc bc
    inc b
    inc bc
    nop
    rlca
    nop
    rlca
    ld [$0817], sp
    rla
    ld [$1917], sp
    ld b, $01
    ld c, $01
    ld c, $01
    ld c, $31
    ld c, $03
    inc a
    ld bc, $433e
    inc a
    inc hl
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    dec e
    cp $5d
    cp $f9
    cp $99
    cp $19
    cp $39
    cp $3b
    db $fc
    ld a, e
    db $fc
    ld a, e
    db $fc
    di
    db $fc
    rst $30
    db $fc
    ei
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rP1]
    nop
    nop
    nop
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld b, a
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    db $10
    rst $38
    db $10
    cp $20
    cp $20
    db $fc
    ld b, b
    ld hl, sp+$40
    ld hl, sp-$80
    ldh a, [$80]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    ld bc, $03f0
    db $fc
    add e
    db $fc
    di
    db $fc
    di
    db $fc
    rst $38
    ld hl, sp+$77
    ld hl, sp+$77
    ld hl, sp+$77
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$df]
    ldh [$df], a
    ldh [$df], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    cp a
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
    ld bc, $0300
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jr jr_021_6943

    ld a, [de]
    dec de
    inc e
    dec e
    ld c, $0f
    ld e, $1f
    jr nz, jr_021_6955

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_021_694b

    add hl, hl
    ld a, [hl+]
    ld c, $0f
    dec hl
    inc l
    dec l

jr_021_6943:
    ld l, $2f
    jr nc, jr_021_6978

    ld [hl-], a
    inc sp
    inc [hl]
    rrca

jr_021_694b:
    rrca
    dec [hl]
    ld [hl], $0e
    rrca
    scf
    scf
    jr c, jr_021_698d

    ld a, [hl-]

jr_021_6955:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    rrca
    rrca
    ld b, c
    ld b, d
    rrca
    scf
    scf
    scf
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    rrca
    rrca
    ld c, e
    ld c, h
    rrca
    scf
    scf
    scf
    scf
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_021_6978:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    rrca
    ld d, [hl]
    ld d, a
    scf
    scf
    scf
    scf
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_021_698d:
    ld h, c
    ld h, d
    ld h, e
    scf
    scf
    scf
    scf
    ld b, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    rrca
    ld l, l
    scf
    scf
    scf
    scf
    scf
    ld c, l
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
    scf
    scf
    scf
    scf
    scf
    ld e, b
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
    add d
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    rrca
    rrca
    rrca
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
    rrca
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    rrca
    rrca
    rrca
    scf
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, Jump_000_0fd3

    rrca
    rrca
    rrca
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    rrca
    rrca
    rrca
    rrca
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$0f0f], a
    rrca
    rrca
    rrca
    db $eb
    db $ec
    rrca
    db $ed
    xor $ef
    ldh a, [rIF]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld b, $06
    ld b, $00
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc b
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
    ld bc, $0000
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
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
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0001
    ld b, $04
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    inc b

jr_021_6b56:
    inc b
    ld bc, $0001
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    inc b
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    ld [bc], a
    ld b, $06
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_021_6b7e:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $04
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rra
    nop
    ld e, a
    nop
    ld a, a
    nop
    db $fd
    ld [bc], a
    ld a, [$ff05]
    nop
    ld a, a
    add b
    ld l, a
    sub b
    rst $38
    nop
    cp e
    ld b, h
    db $ed
    ld [de], a
    and $19
    ld h, a
    sbc b
    db $76
    adc c
    ld [hl], c
    adc [hl]
    xor h
    ld d, e
    sbc [hl]
    ld h, c
    rst $08
    jr nc, jr_021_6b7e

    ld [hl], $23
    call c, $2dd2
    ld [$d415], a
    dec hl
    ld hl, sp+$07
    ld hl, sp+$07
    cp e
    ld b, h
    cp a
    ld b, b
    ld a, a
    add b
    rst $38

jr_021_6bc9:
    nop
    rst $08
    jr nc, jr_021_6b56

    db $76
    call nz, $e63b
    add hl, de
    add e
    ld a, h
    jp $c43c


    dec sp
    or $09
    or b
    ld c, a
    or b
    ld c, a
    sbc b
    ld h, a
    adc $31
    ld b, [hl]
    cp c
    dec hl
    call nc, $e21d
    ld [$05f7], sp
    ld a, [$fc03]
    nop
    rst $38
    add a
    ld a, b
    ld l, $d1
    sbc l
    ld h, d
    rst $38
    nop
    rst $38
    nop
    or $09
    ld [hl], h
    adc e
    ld d, b
    xor a
    nop
    rst $38
    jp z, $c735

    jr c, jr_021_6bc9

    dec a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $62fe
    sbc l
    cp h
    ld b, e
    ld c, $f1
    rrca
    ldh a, [$c1]
    ld a, $e0
    rra
    or b
    ld c, a
    dec sp
    rst $38
    cp $ff
    ld a, d
    rst $38
    jr jr_021_6c67

    ld [bc], a
    rrca
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    rlca
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rrca
    rra
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ccf
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
    ccf
    rst $38
    rrca
    ccf
    inc bc
    rrca
    ret nz

    jp $f0f0


    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rra
    rlca
    add e
    nop
    ld l, a
    nop
    rrca
    nop
    rrca

jr_021_6c67:
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_6c7e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_6c8c:
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    add b

jr_021_6c9b:
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    cp a
    ld b, b
    call z, $cf33
    jr nc, jr_021_6c7e

    jr z, jr_021_6c8c

    inc e
    pop hl
    ld e, $f1
    ld c, $d9
    ld h, $38
    rst $00
    inc [hl]
    res 2, [hl]
    ld l, c
    adc [hl]
    ld [hl], c
    db $e4
    dec de
    jp $f13c


    ld c, $f1
    ld c, $38
    rst $00
    jr z, jr_021_6c9b

    inc c
    di
    ld h, d
    sbc l
    xor d
    ld d, l
    pop de
    ld l, $d0
    cpl
    ret z

    scf
    ret nc

    cpl
    sub c
    ld l, [hl]
    jp $ff3c


    nop
    ld a, a
    add b
    rra
    ldh [$1f], a
    ldh [rNR32], a
    db $e3
    db $db
    rst $20
    jp $e3e1


    pop af
    ld [hl], l
    ei
    sbc e
    ld a, a
    dec bc
    rra
    sub e
    rrca
    ld [hl], e
    adc a
    call c, $0203
    db $fd
    ld bc, $10fe
    rst $28
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ld [hl], b
    adc a
    inc a
    jp $e817


    rlca
    ld hl, sp+$01
    cp $01
    cp $80
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    sbc a
    jr @-$17

    inc e
    db $e3
    add e
    ld a, h
    ld b, c
    cp [hl]
    ret nz

    ccf
    ld [hl+], a
    db $dd
    inc bc
    db $fc
    add c
    ld a, [hl]
    pop bc
    ld a, $60
    sbc a
    xor b
    ld d, a
    sbc [hl]
    ld h, c
    ld a, l
    add d
    ld bc, $43fe
    cp h
    inc bc
    db $fc
    daa
    ret c

    rlca
    ld hl, sp+$0e
    ldh a, [rNR23]
    ldh [rNR23], a
    ldh [$38], a
    ret nz

    jr c, @-$3e

    ld [hl], b
    add b
    jr @-$1e

    cp $ff
    cp $ff
    ld a, $ff
    rrca
    ccf
    ld bc, $c00f
    jp $f0f0


    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rra
    rst $18
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
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
    ldh [rP1], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp+$18
    ld hl, sp-$70
    db $fc
    ld [hl], h
    db $fc
    inc [hl]
    cp $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    xor $ff
    ei
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    jp nz, $423d

    cp l
    ld e, h
    and e
    dec a
    jp nz, $c32c

    ld a, h
    add e
    ldh a, [rIF]
    cp b

jr_021_6daf:
    ld b, a
    ld d, b
    xor a
    ret nc

    cpl
    add b
    ld a, a
    or b
    ld c, a
    ld b, d
    cp l
    ld [hl+], a
    db $dd
    nop
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
    cp a
    jr nc, @-$2f

    inc d
    db $eb
    ld a, [bc]
    push af
    nop
    rst $38
    inc b
    ei
    ld bc, $00fe
    rst $38
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    db $10
    rst $28
    jr nc, jr_021_6daf

    inc b
    ei
    dec c
    ld a, [c]
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
    add c
    ld a, [hl]
    add [hl]
    ld a, c
    ld h, a
    sbc b
    ld l, [hl]
    sub c
    inc c
    di
    nop
    rst $38
    ld bc, $30fe
    adc $32
    call z, Call_000_1ce0
    call nz, $c038
    jr c, jr_021_6e11

    ldh a, [rNR10]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR10], a

jr_021_6e11:
    ldh [rNR10], a
    ldh [rNR41], a
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
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, a
    rst $38
    rra
    ld a, a
    rlca
    rra
    ld bc, $c007
    pop bc
    ld hl, sp-$08
    cp $fe
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
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
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    add b
    add b
    add b
    add b
    ret nz

    ret nz

jr_021_6e6d:
    ret nz

    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh a, [rLCDC]

jr_021_6e75:
    ld hl, sp-$60
    ld hl, sp-$60
    db $fc
    sub h
    db $fc
    or [hl]
    cp $de
    cp $20
    rst $18
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld b, h
    cp e
    ld [bc], a
    db $fd
    jr nz, jr_021_6e6d

    db $10
    rst $28
    ld b, b
    cp a
    nop
    rst $38
    jr nz, jr_021_6e75

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld b, $f9
    inc b
    ei
    sbc h
    ld h, e
    ld c, b
    or a
    add hl, bc
    or $00
    cp $82
    ld a, h
    nop
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rP1], a
    ldh [$2f], a
    ret nz

    ld bc, $40c0
    add b
    nop
    add b
    add b
    nop
    nop
    nop
    ld bc, $0800
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    nop
    inc b
    nop
    ld a, [de]
    nop
    ld bc, $0000
    nop
    nop
    nop

jr_021_6ee4:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    ld b, b
    add b
    ld b, b
    db $fc
    rst $38
    ld a, a
    rst $38
    rra
    ld a, a
    inc bc
    rra
    add b
    add e
    ldh [$e0], a
    ld hl, sp-$08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_021_6f1a:
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    inc bc
    inc e
    inc e
    ccf
    rra
    ccf
    ccf
    ld a, a
    ld a, h
    inc bc
    ld a, h
    inc bc
    db $fc
    inc bc
    cp $01
    cp a
    ld b, b
    rla
    add sp, $0f
    ldh a, [rIF]
    ldh a, [$87]
    ld a, b
    rrca
    ldh a, [$03]
    db $fc
    inc hl
    call c, $fe01
    ld bc, $42fe
    cp h
    call nz, $ce38
    jr nc, jr_021_6ee4

    ld h, b
    nop
    ldh [rNR41], a
    ret nz

    jr nc, jr_021_6f1a

    ld h, b
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
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    nop
    nop
    ld h, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    stop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld b, b
    nop
    rlca
    nop
    ld a, $00
    dec e
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
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ccf
    rst $38
    rrca
    ccf
    inc bc
    rrca
    nop
    add e
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    add b
    adc a
    ldh a, [$f1]
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    inc [hl]
    srl h
    jp Jump_000_20df


    ld sp, hl
    ld b, $fc
    inc bc
    cp a
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, a
    nop
    ld b, $00
    ld bc, $0000
    nop
    nop
    nop
    ld a, a
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
    dec bc
    nop
    ld b, d
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    stop
    jr nz, jr_021_700c

jr_021_700c:
    jp nc, $0800

    nop
    ld bc, $0000
    nop
    nop
    nop
    ldh [rP1], a
    ret z

    nop
    or $00
    rst $38
    nop
    rra
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
    nop
    ld a, b
    nop
    ld c, $00
    ld bc, $c000
    nop
    and b
    nop
    ret c

    nop
    ret z

    nop
    dec d
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
    and b
    nop
    ld b, b
    and b
    ld b, $e0
    rst $30
    rst $38
    ccf
    rst $38
    rlca
    ccf
    ld bc, $0007
    ld bc, $0000
    nop
    nop
    nop
    nop
    ccf
    ret nz

    rst $00
    ld hl, sp-$08
    rst $38
    rst $38
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
    ld b, b
    rst $08
    jr nc, @+$50

    or c
    adc $01
    adc a
    nop
    ld [$fc00], a
    nop
    ld e, $00
    ld b, $00
    add b
    nop
    ret nz

    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rlca
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
    ld [$0300], sp
    nop
    nop
    nop
    jr c, jr_021_70a0

jr_021_70a0:
    or $00
    db $ed
    nop
    ld c, $00
    ld b, $00
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld bc, $00fe
    rst $38
    ldh [rTAC], a
    ld sp, hl
    nop
    rra
    ldh [$5f], a
    and b
    rrca
    ldh a, [$2f]
    ret nc

    ld b, b
    nop
    ld [$0200], sp
    nop
    add b
    nop
    stop
    and b
    nop
    db $fc
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
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    rra
    ld a, a
    rlca
    rra
    ld bc, $0007
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e3], a
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ld a, $c1
    di
    inc c
    ld [hl], d
    dec c
    ld a, a
    nop
    dec e
    ld [bc], a
    rlca
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
    nop
    db $fc
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
    nop
    rlca
    nop
    push bc
    nop
    ld [hl], a
    nop
    ld c, $00
    ld [bc], a
    nop
    nop
    nop
    ret nz

    nop
    ld b, h
    nop
    rst $38
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$03]
    db $fc
    nop
    ccf
    call z, $f903
    nop
    rst $38
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [$0100], sp
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
    cp $00
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld d, $00
    add h
    nop
    ld b, $00
    ld bc, $0000
    nop
    jr nz, jr_021_719a

jr_021_719a:
    ld b, b
    nop
    and h
    nop
    stop
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
    ld b, b
    nop
    ld h, b
    sub b
    nop
    ldh a, [$08]

jr_021_71bf:
    ldh a, [$3f]
    rst $38
    rrca
    ccf
    inc bc
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
    inc h
    jp c, $ff00

    nop
    rst $38
    jr jr_021_71bf

    dec c
    ld a, [c]
    and c
    ld e, [hl]
    sbc h
    ld h, e
    sbc e
    ld h, h
    cp b
    rlca
    add hl, bc
    ld d, $0f
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
    ldh a, [rP1]
    db $fc
    nop
    ccf
    nop
    rlca
    nop
    ld bc, $0000
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    stop
    nop
    nop
    add b
    nop
    ret nz

    nop
    rst $38
    nop
    cp $00
    add b
    ld a, a
    ldh a, [$03]
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    add a
    ld a, b
    ld hl, $f81e
    rlca
    ld a, [$c700]
    jr c, jr_021_7230

    or $12
    db $ed
    pop af
    ld c, $f9
    ld b, $ff
    nop

jr_021_7230:
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    db $fc
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
    jr nz, jr_021_7248

jr_021_7248:
    stop
    rlca
    nop
    nop
    nop
    ld [hl], b
    nop
    db $ec
    nop
    jp c, Jump_000_1d00

    nop
    inc c
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    ccf
    inc bc
    rrca
    nop
    inc bc
    ldh a, [rIF]
    ret z

    scf
    ret nz

    ccf
    or [hl]
    ld c, c
    ld l, e
    inc b
    rra
    nop
    rra
    nop
    inc bc
    nop
    rra
    nop
    inc bc
    nop
    add b
    nop
    nop
    nop
    ld hl, sp+$00
    ld a, h
    nop
    rra
    nop
    ld bc, $0500
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0200
    nop
    dec b
    nop
    ld b, b
    nop
    ld c, a
    or b
    inc bc
    db $fc
    nop
    rst $38
    ld b, b
    rra
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    dec sp
    call nz, Call_021_7788
    ld bc, $f53e
    ld a, [bc]
    rst $38
    nop
    ccf
    ret nz

    cp e
    ld b, h
    ld d, a
    xor b
    dec a
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_72ca:
    ld b, b
    nop
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    adc d
    nop
    rst $28
    nop
    dec e
    nop
    inc b
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    add hl, sp
    nop
    jr jr_021_72ec

jr_021_72ec:
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
    dec h
    nop
    ld bc, $0100
    nop
    nop
    nop
    stop
    jr nz, jr_021_7304

jr_021_7304:
    sub b
    nop
    dec b
    ret nz

    jr c, jr_021_72ca

    ld e, h
    and b
    ld c, $f0
    ld [bc], a
    db $fc
    ld bc, $00fe
    rst $38
    inc b
    ei
    jr nc, @-$2f

    rrca
    ldh a, [$b1]
    ld c, [hl]
    ret nc

    cpl
    dec a
    ld [bc], a
    jp nz, $f801

    nop
    db $fc
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    nop
    nop
    or b
    nop
    ldh [rP1], a
    jr nc, jr_021_7334

jr_021_7334:
    add hl, bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    jr nz, jr_021_733e

jr_021_733e:
    add e
    nop
    ldh [$1f], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rrca
    ldh a, [$03]
    db $fc
    ret nz

    ccf
    jr c, jr_021_7355

    adc $01
    ld sp, hl
    nop
    cp $00
    ld a, a

jr_021_7355:
    add b
    rst $38
    nop
    cp a
    ld b, b
    rst $28
    db $10
    rst $38
    nop
    ld a, a
    add b
    nop
    nop
    nop
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
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld a, a
    nop
    ld c, $00
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
    add b
    nop
    jr nz, jr_021_7386

jr_021_7386:
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    stop
    nop
    nop
    dec bc
    nop
    nop
    nop
    jr jr_021_73aa

jr_021_73aa:
    rst $38
    nop
    ld [hl], d
    nop
    ld b, $00
    nop
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
    ldh [$e0], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rSB], a
    ldh [rSB], a
    pop hl
    inc bc
    pop hl
    inc bc
    pop hl
    inc bc
    db $e3
    rlca
    db $e3
    rlca
    db $e3
    rlca
    rst $20
    rrca
    and $0f
    ld l, [hl]
    sbc a
    adc a
    rst $38
    rst $38
    rst $38
    ld hl, $01dc
    db $fc
    ld bc, $03fc
    db $fc
    inc de
    db $ec
    inc hl
    call c, $fc03
    adc a
    ld [hl], b
    db $db
    jr nz, jr_021_7478

    add b
    ld bc, $f000
    nop
    db $e4
    nop
    ei
    nop
    ld a, a
    nop
    rrca
    nop
    rlca
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    add b
    nop
    inc a
    nop
    rlca
    nop
    add b
    nop
    ld h, b
    nop
    ret nc

    nop
    db $ec
    nop
    inc b
    nop
    ld [bc], a
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    di
    nop
    db $fd
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
    ret nc

    nop
    ldh a, [rP1]
    ld a, h
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    rst $00
    nop
    ld a, [hl-]
    nop
    inc bc
    nop
    rlca
    nop
    add c
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc

jr_021_7474:
    inc bc
    inc bc

jr_021_7476:
    rlca
    rlca

jr_021_7478:
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $07
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
    ld c, $1f
    ld c, $1f
    inc e
    ccf
    inc e
    ccf
    jr c, jr_021_751b

    jr c, jr_021_751d

    jr c, @+$81

    nop
    ld [hl], b
    nop
    ld [hl], b
    db $10
    ld h, b
    nop
    ldh [$80], a
    ld h, b
    nop
    ldh [rP1], a
    ldh a, [rNR10]
    ldh [$30], a
    ret nz

    jr c, jr_021_7474

    jr c, jr_021_7476

    ld [hl], b
    add b
    ld [hl], c
    add b
    pop af
    nop
    ld hl, sp+$00
    push hl
    nop
    db $e3
    nop
    db $ed
    nop
    rst $08
    nop
    rst $38
    nop
    rst $28
    nop
    db $e3
    nop
    jp $e700


    nop
    add a
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    ld c, $00
    ld [bc], a
    nop
    ret nz

    nop
    ldh a, [rP1]
    rst $38
    nop
    ld a, a
    nop
    inc bc
    nop
    nop
    nop
    ld [hl], b
    nop
    ld d, b
    nop
    ld a, b
    nop
    add sp, $00
    jr nz, jr_021_74f2

jr_021_74f2:
    inc b
    nop
    ld bc, $4000
    nop
    adc b
    nop
    ret nc

    nop
    ldh a, [rP1]
    ld b, $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    sbc a
    nop
    jp hl


    nop
    ld a, [$f800]
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    ld hl, sp+$00
    cp $00
    rst $38

jr_021_751b:
    nop
    di

jr_021_751d:
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, [$f000]
    nop
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    rst $38

jr_021_7535:
    nop
    rst $38
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

jr_021_7548:
    nop

jr_021_7549:
    nop
    add b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    jr c, jr_021_7552

jr_021_7552:
    ld [$0000], sp
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    inc bc
    nop
    inc bc
    inc b
    inc bc
    nop
    rlca
    ld [$0c07], sp
    inc bc
    ld b, $09
    rra
    nop
    cp a
    nop
    rra
    nop

jr_021_7574:
    cpl
    db $10
    scf
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    cp h
    ld b, b
    db $fc
    nop
    db $fc
    nop
    ld l, b
    add b
    ld h, b
    add b
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_021_7590:
    cp $00

jr_021_7592:
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $e3
    inc d
    db $e3
    inc c
    jp $c72c


    jr z, jr_021_7590

    jr jr_021_7592

    jr jr_021_7574

    jr jr_021_7535

    jr c, jr_021_7548

    jr z, jr_021_7549

    ld l, b
    inc l
    pop de
    inc e
    pop hl
    cp h
    ld b, c
    cp d
    ld b, c
    ld hl, sp+$03
    cp a
    ld b, b
    ld b, c
    nop
    push bc
    nop
    adc [hl]
    nop
    add l
    nop
    sbc a
    nop
    adc [hl]
    nop
    add d
    nop
    add [hl]
    nop
    sub h
    nop
    dec d
    nop
    inc l
    nop
    ld e, b
    nop
    ld a, b
    nop
    ld sp, hl
    nop
    ld a, b
    nop
    jr nc, jr_021_75e0

jr_021_75e0:
    nop
    nop
    ret nz

    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    stop
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
    rst $28
    nop
    rst $38
    nop
    adc $00
    add h
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    nop
    ldh [rP1], a
    jr c, jr_021_760a

jr_021_760a:
    nop
    nop
    ret nz

    nop
    jr c, jr_021_7610

jr_021_7610:
    rlca
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    inc e
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
    ret nz

    nop
    ldh a, [rP1]
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rSB], a
    ldh a, [$03]
    db $fc
    inc bc

jr_021_763c:
    nop
    ld bc, $0180
    pop bc
    ld bc, $03c0
    ldh [rTAC], a
    ldh a, [rTAC]
    ldh a, [rIF]
    ld hl, sp+$07
    cp $03
    ld hl, sp+$07
    inc b
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    jr jr_021_765f

    jr jr_021_7661

    nop
    rrca
    nop
    rrca
    db $10

jr_021_765f:
    rrca
    ld b, b

jr_021_7661:
    rst $38
    nop
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
    ld [c], a
    dec e
    cp [hl]
    ld bc, $0021
    add b
    nop
    ldh [rP1], a
    cp $00
    ccf
    nop
    jr c, jr_021_767e

jr_021_767e:
    jr nz, jr_021_7680

jr_021_7680:
    rst $38
    nop
    cp a
    nop
    cp h
    inc bc
    cp $01
    ld a, a
    nop
    ld a, l
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [bc], a
    pop hl
    ld c, $e3
    inc c
    db $e3
    inc e
    jp $a31c


    inc e
    db $e3
    inc e
    jp $c23c


    inc a
    ld c, [hl]
    jr nc, @+$50

    jr nc, jr_021_763c

    ld [hl], b
    adc h
    ld [hl], c
    adc d
    ld [hl], l
    inc e
    pop hl
    ld a, [hl-]
    pop bc
    ld a, e
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld c, $00
    inc e
    nop
    inc e
    nop
    jr c, jr_021_76cc

jr_021_76cc:
    jr nc, jr_021_76ce

jr_021_76ce:
    jr nz, jr_021_76d0

jr_021_76d0:
    jr z, jr_021_76d2

jr_021_76d2:
    jr nz, jr_021_76d4

jr_021_76d4:
    ld h, b
    nop
    ld h, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    ld [$00e0], sp
    ret nz

    nop
    stop
    add b
    nop
    ld hl, sp+$00
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld [hl], b
    ld bc, $0010
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0109
    ld bc, $0101
    ld bc, $0201
    inc bc
    ld [c], a
    inc bc
    ld a, [de]
    inc bc
    ld [bc], a
    inc bc

jr_021_7718:
    inc b
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $fe

jr_021_7726:
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld a, b
    db $fc
    ld a, b
    db $fc
    ld [hl], b
    db $fc
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ret nz

    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$c0], a
    ldh [$c0], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
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
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    db $fd
    ldh a, [rIF]
    ccf
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld [bc], a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop

Call_021_7788:
    rst $10
    ld [$28d7], sp
    adc a
    jr nc, jr_021_7726

    jr z, jr_021_7718

    ld a, b
    rrca
    ld [hl], b
    ld l, a
    db $10
    ld c, a
    jr nc, jr_021_77f8

    and b
    ld d, a
    xor b
    sbc [hl]
    ld h, c
    ld a, $c1
    pop bc
    nop
    pop bc
    nop
    ret nz

    ld bc, $0081
    ld bc, $0300
    nop
    inc bc
    nop
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld [$0807], sp
    ld b, $00
    ld b, $08
    ld b, $18
    ld b, $10
    ld c, $00
    rra
    nop
    rrca
    jr jr_021_77cf

    jr nc, @+$11

    jr nc, jr_021_77db

    nop
    ccf
    ld b, b

jr_021_77cf:
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    ld a, h
    ld a, a
    jr @+$21

    db $10

jr_021_77db:
    rra
    ld de, $131f
    ld e, $23
    ld a, $23
    ld a, $27
    inc a
    ld h, $3d
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    ld b, a
    ld a, [hl]
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld h, b
    sub b
    ld h, b
    sub b

jr_021_77f8:
    ldh [rNR10], a
    pop hl
    db $10
    rst $00
    jr nz, @-$1f

    jr nz, jr_021_7821

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
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
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

jr_021_7821:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    cpl
    ld a, b
    rlca
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    rra
    nop
    ld bc, $0b00
    rst $38
    dec e
    cp $0d
    cp $05
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    dec bc
    db $fc
    rla
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$37
    ld hl, sp+$2f
    ldh a, [$6f]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$de]
    ldh [$de], a
    ldh [$dc], a
    ldh [$dc], a
    ldh [$b8], a
    ret nz

    cp b
    ret nz

    or b
    ret nz

    or c
    pop bc
    ld h, c
    add c
    ld h, e
    add e

jr_021_7874:
    ld b, a
    add a
    ld c, a
    adc a
    sbc a
    rra
    sbc a
    rra
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    jp $83f2


    ld a, [c]
    inc bc
    cp $13
    cp $37
    db $ec
    db $76
    call $9fe4
    ldh [$1f], a
    ldh [$1f], a
    rra
    nop
    inc a
    inc bc
    ld hl, sp+$04
    ldh a, [$08]
    ldh a, [$08]
    jr nc, jr_021_7874

    jr nc, jr_021_78b6

    jr nc, jr_021_78b8

    jr nz, jr_021_78c2

    ld h, c
    db $10
    ld h, a
    db $10

jr_021_78b6:
    ld a, a
    nop

jr_021_78b8:
    ld a, a
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    rst $38
    rst $38

jr_021_78c2:
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
    add b
    nop
    nop
    rlca
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7f
    db $fc
    ld a, a
    db $fc
    ccf
    ld hl, sp+$7f
    ldh a, [rIE]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

jr_021_78fc:
    ld a, a
    add b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp-$10
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    ld bc, $0301
    ld [bc], a
    rlca
    ld b, $0f
    ld [$000f], sp
    rra
    ld [de], a
    rra
    jr nz, @+$41

    ld h, b
    ld a, a
    sub b
    rst $38
    add b
    rst $38
    ccf
    ret nz

    ld a, [hl]
    add c
    ld a, l
    add d
    dec de
    db $e4
    rlca
    ld hl, sp+$0f
    ldh a, [$df]
    jr nz, jr_021_78fc

    ld b, d
    ld a, e
    add h
    di
    ld [$10e3], sp
    jp $8320


    ld b, b
    ld [bc], a
    add b
    ld b, $00
    ld b, $00
    ld c, $00
    ld e, $00
    ld a, $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $ec
    db $10
    adc h
    ld h, b
    inc e
    add c
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$05

    jr nc, jr_021_7971

    jr nc, @+$05

    ld h, b

jr_021_7971:
    inc bc
    ldh [$03], a
    ret nz

    rrca
    nop
    ccf
    nop
    rst $38
    nop

jr_021_797b:
    rst $38
    nop

jr_021_797d:
    rst $38
    nop

jr_021_797f:
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
    nop
    nop
    rst $38
    rst $38
    cp $fe
    ld e, $fe
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    add b
    nop
    add b
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld bc, $0307
    rrca
    rlca
    rrca
    ld bc, $121f
    ccf
    jr nz, jr_021_7a55

    inc h
    ld a, a
    inc b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    di
    inc c
    db $e3
    inc e
    jp $832c


    ld c, h
    ld b, e
    adc h
    jp $c71c


    jr @-$39

    jr jr_021_797b

    jr jr_021_797b

    jr jr_021_797d

    jr c, jr_021_797f

    jr c, jr_021_7a39

    rst $38
    jr c, @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    cp $70
    cp $70
    cp $70
    cp $60
    cp $e0
    cp $e0
    db $fc
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]

jr_021_7a39:
    ldh [rP1], a
    ldh [$c0], a
    ldh [$c0], a
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
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]

jr_021_7a55:
    ldh [rP1], a
    ret nz

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
    ld [hl], b
    ld b, b
    ld hl, sp+$00
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    nop
    nop
    nop
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
    ld c, $0e
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    ld c, $0e
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_021_7af6

    ld c, $0e
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_021_7b08

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $0e
    ld c, $37
    jr c, jr_021_7b1a

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

jr_021_7af6:
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
    ld e, l
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]

jr_021_7b08:
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
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_021_7b1a:
    ld c, $71
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    ld c, $7a
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld c, $0e
    ld c, $0e
    add b
    add c
    add d
    add d
    add e
    ld c, $84
    add l
    add [hl]
    add a
    adc b
    adc c
    ld c, $0e
    ld c, $8a
    adc e
    ld h, d
    adc h
    ld c, $0e
    ld c, $8d
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    ld c, $0e
    ld c, $93
    sub h
    sub l
    sub [hl]
    sub a
    ld c, $0e
    ld c, $98
    sbc c
    sbc d
    sbc e
    sbc h
    ld c, $0e
    ld c, $9d
    sbc [hl]
    sbc a
    and b
    ld c, $0e
    ld c, $a1
    and d
    and e
    and h
    and l
    and [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
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


    ld a, b
    ld a, b
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
    ld a, b
    ld a, b
    db $ed
    xor $ee
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    db $f4
    xor $f5
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0404
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
    ld b, $06
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
    inc b
    inc b
    inc b
    inc b
    dec b
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    nop
    nop
    nop
    inc b
    inc b
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
    inc b
    inc b
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
    inc b
    inc b
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
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $00
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
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc h
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
    inc bc
    inc bc
    inc b
    ld bc, $0004
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0303
    inc bc
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc c
    inc c
    or b
    ld c, a
    and b
    ld e, a
    add h
    ld a, e
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [de], a
    db $ed
    ld a, [de]
    push hl
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, d
    add l
    ld a, [$fa05]
    dec b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10

jr_021_7d4e:
    sbc a
    ld h, b
    rst $18
    jr nz, jr_021_7d4e

    inc b
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    and c
    ld e, [hl]
    add e
    ld a, h
    add d
    ld a, l
    ld [bc], a
    db $fd
    nop
    rst $38
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
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    db $10
    rst $28
    add b
    ld a, a
    sub b
    ld l, a
    ld a, [hl+]
    push de
    ld h, h
    sbc e
    ld [c], a
    dec e
    ldh [$1f], a
    db $fc
    inc bc
    or d
    ld c, l
    cp b
    ld b, a
    db $fc
    inc bc
    cp $01
    sbc $21
    push de
    ld a, [hl+]
    ld sp, hl
    ld b, $b0
    ld c, a
    and [hl]
    ld e, c
    cp [hl]
    ld b, c
    ld a, a
    add b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    add d
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $30
    ld [$48b7], sp
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$55aa], sp
    xor [hl]
    ld d, c
    adc [hl]
    ld [hl], c
    call nz, $803b
    ld a, a
    db $10
    rst $28
    db $10
    rst $28
    inc d
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld sp, hl
    rrca
    push af
    ccf
    di
    rst $38
    rst $28
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
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    ei
    ld d, $e9
    ld d, $e9
    rla
    add sp, $07
    ld hl, sp-$59
    ld e, b
    add a
    ld a, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld a, a
    add b
    ld a, a

jr_021_7e2b:
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    cp e
    ld b, h
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    xor l
    ld d, d
    add hl, sp
    add $38
    rst $00
    jr nc, jr_021_7e2b

    ld de, $03ee
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    ld [de], a
    db $ed
    ld bc, $02fe
    db $fd
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$03
    db $fc
    add l
    ld a, d
    ld [bc], a
    db $fd
    dec b
    ld a, [$6d92]
    ld de, $20ee
    rst $18
    add hl, hl

jr_021_7e95:
    sub $0a
    push af
    nop
    rst $38
    ld a, [bc]
    push af

jr_021_7e9c:
    inc bc
    db $fc
    ld a, [bc]
    push af
    rlca
    ld hl, sp-$19
    jr jr_021_7e9c

    ld [$00ff], sp
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_021_7e95

    ld hl, $01fe
    call c, Call_021_5423
    xor e
    ld e, c
    and [hl]
    ld a, d
    add l
    ld h, h
    sbc e
    inc h
    db $db
    ld h, $d9
    ld [bc], a
    db $fd
    ld c, b
    or a
    sbc l
    ld h, d
    dec sp
    call nz, $ff00
    ld bc, $03fe
    db $fd
    rrca
    di
    ccf
    rst $08
    ld a, a
    xor a
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
    cp $ff
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    add h
    ld a, e
    and b
    ld e, a
    sub h
    ld l, e
    sub h
    ld l, e
    or h
    ld c, e
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$fe05]
    ld bc, $01fe
    cp $01
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
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $28
    db $10
    rst $28
    db $10
    xor [hl]
    ld d, c
    rst $18
    jr nz, jr_021_7fda

    add b
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp $01
    ld l, [hl]
    sub c
    cp $01
    db $fc
    inc bc
    rst $38
    nop
    ld e, l
    and d
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    scf
    ret z

    rrca
    ldh a, [$3f]
    ret nz

    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fd
    rrca
    di
    ccf
    rst $08
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $20
    rst $38
    set 7, a
    cp a
    rst $38
    cp [hl]
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    inc b
    ei

jr_021_7fda:
    ld b, $f9
    ld c, $f1
    inc l
    db $d3
    ld c, h
    or e
    ld c, [hl]
    or c
    ld l, [hl]
    sub c
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    ret nz

    and b
    rst $18
    cp a
    rst $18
    and b
    rst $18
    or b
    rst $08
