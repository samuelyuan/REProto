SECTION "ROM Bank $0a4", ROMX[$4000], BANK[$a4]

    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    ld a, [hl-]
    rst $38
    cp b
    rst $28
    db $38, $e7
    cp c
    push hl
    ld a, c
    di
    ld h, c
    rst $30
    ldh [$f6], a
    ldh [$f6], a
    db $e4
    db $f4
    ldh [$f4], a
    ldh [$d4], a
    ret nz

    daa
    ret c

    ld d, a
    cp b
    ld l, a
    or b
    xor a
    ld [hl], b
    xor a
    ld [hl], b
    cp $60
    dec sp
    ldh [$95], a
    ldh [rOCPS], a
    ret nz

    db $20, $c0
    ld b, b
    add b
    ld b, b
    add b
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
    sbc a
    sbc a
    rst $18
    sbc a
    rst $08
    sbc a
    sbc a
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $08
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $08
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $28
    rst $30
    rst $28
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
    sbc a
    ld a, a
    adc h
    adc l
    db $fc
    adc a
    ld hl, sp+$7f
    add b
    ld [hl], e
    add b
    ld a, d
    add c
    ld a, c
    add b
    ld a, b
    add b
    ld a, l
    add b
    ld [hl], l
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], e
    add b
    ld a, a
    add b
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

    ld a, a
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, [$bc85]
    jp $eb94


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
    ld [hl], b
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    add b
    rst $38
    rst $10
    xor b
    ld a, a
    add b
    rst $38
    nop
    rst $38
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
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor b
    nop
    jr z, jr_0a4_410e

jr_0a4_410e:
    ld c, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $f8
    db $fc
    db $fc
    ld hl, sp-$06
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add sp, -$10
    add sp, -$10
    rst $38
    rst $38
    cp a
    rst $38
    add c
    rst $38
    rst $38
    nop
    ld a, a
    nop
    ld l, a
    nop
    sbc a
    nop
    xor a
    db $10
    rst $18
    jr jr_0a4_4150

    ldh a, [$ea]
    db $10
    or [hl]
    nop
    adc [hl]
    nop
    adc a
    nop
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    nop

jr_0a4_4150:
    ld [bc], a
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
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
    ld a, a
    add b
    inc bc
    db $fc
    inc bc
    db $fc
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
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rra
    nop
    nop
    nop
    and b
    nop
    nop
    nop
    add e
    db $fc
    jp nz, $81fd

    cp $80
    rst $38
    add d
    db $fd
    add c
    cp $86
    ld sp, hl
    add [hl]
    ld sp, hl
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $01
    ld bc, $0000
    nop
    ld bc, $f800
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    ccf
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
    rst $08
    nop
    add a
    nop
    rlca
    nop
    cpl
    nop
    rra
    nop
    ld a, $00
    ld a, a
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
    ld a, $00
    rra
    nop
    rrca
    nop
    rrca
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
    cp $01
    rst $38
    nop

Jump_0a4_4220:
    rst $38
    nop
    ld a, [$f905]
    ld b, $e0
    rra
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    cp $01
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and $00
    and d
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    add a
    ld a, a
    adc a
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $30
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
    ld hl, sp+$07
    rst $38
    nop
    cp a
    nop
    rst $28
    nop
    rst $00
    nop
    rst $20
    nop
    rst $08
    nop
    rrca
    nop
    sbc a
    nop
    sbc a
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
    db $fc
    inc bc
    add sp, $17
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
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rra
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
    rrca
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ldh [$1f], a
    ldh a, [rIF]
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
    cp a
    nop
    dec b
    nop
    nop
    nop
    inc bc
    nop
    ld a, [bc]
    nop
    ld hl, $0000
    nop
    nop
    nop
    nop
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
    rlca
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    db $fd
    inc bc
    db $fd
    inc bc
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld sp, hl
    rlca
    db $fc
    inc bc
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop hl
    rra
    ret


    scf
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
    add c
    ld a, a
    ld bc, $01ff
    rst $38
    ld bc, $07ff
    rst $38
    ld bc, $07ff
    rst $38
    cpl
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
    or $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ld e, a
    nop
    rla
    nop
    dec bc
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
    ld bc, $8000
    nop
    jr nz, jr_0a4_43a4

jr_0a4_43a4:
    di
    nop
    nop
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
    cp a
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    add sp, -$01
    ld hl, sp-$01
    add sp, -$01
    add sp, -$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    db $f4
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    xor $ff

Jump_0a4_43fe:
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
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
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $eb
    rst $30
    jp hl


    rst $30
    db $fd
    db $e3
    pop bc
    rst $38
    pop bc
    rst $28
    ret nc

    rst $28
    pop bc
    rst $38
    pop hl
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ccf
    rst $00
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
    swap h
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rlca
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    inc bc
    nop
    rla
    nop
    nop
    nop
    sub d
    nop
    nop
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    pop bc
    cp $c0
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    adc a
    rst $38
    ld a, b
    rst $38
    ld b, b
    cp a
    ld c, d
    cp a
    ld c, d
    cp a
    jp z, Jump_0a4_4abf

    cp a
    jp z, Jump_0a4_4abf

    cp a
    ld c, d
    cp a
    ld b, b
    cp a
    ld h, b
    cp a
    ld b, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld [hl], b
    cp a
    ld a, h
    cp e
    rst $38
    add b
    rst $38
    ei
    db $fd
    ei
    rst $38
    ei
    rst $38
    ei
    ld a, a
    cp e
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, [hl]
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    cp a
    ld l, a
    cp a
    ei
    cp a
    ei
    cp a
    ld a, a
    cp a
    rst $38
    cp a
    ld a, a
    cp a
    cp a
    rst $38
    rst $00
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
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
    db $e3
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $08
    nop
    or a
    nop
    rra
    nop
    ld e, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
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
    stop
    ld bc, $0000
    nop
    db $fd
    cp $fb
    db $fc
    push af
    ld a, [$fce3]
    jp Jump_000_29fc


    sub $31
    adc $69
    sub [hl]
    push bc
    ld a, [hl-]
    jp $033c


    db $fc
    jp $cb3c


    inc [hl]
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    ld sp, hl
    ld b, $93
    ld l, h
    or c
    ld c, [hl]
    db $e3
    inc e
    and e
    ld e, h
    and a
    ld e, b
    xor e
    ld d, h
    adc a
    ld [hl], b
    inc bc
    ld a, h
    add e
    ld a, h
    inc bc
    ld a, h
    dec sp
    ld b, h
    inc de
    inc c
    ld [hl+], a
    dec e
    ld b, e
    inc a
    ld bc, $b07e
    ld b, a
    ret nz

    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    sbc b
    rrca
    ld hl, sp+$3f
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
    add b
    ld a, a
    add b
    ld a, a
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
    sub b
    ld a, a
    sub b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    sub [hl]
    ld a, a
    cp h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    adc b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, $ff
    ld c, $ff
    ld h, e
    sbc a
    db $fc
    inc bc
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
    rst $38
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
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld l, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$21
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    adc a
    ld [hl], b
    adc e
    ld [hl], h
    inc de
    db $ec
    inc de
    db $ec
    ld bc, $01fe
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$faf1]
    pop af
    ld a, [c]
    ei
    add $ff
    ldh a, [rIE]
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    inc c
    inc bc
    rrca
    nop
    ret nz

    nop
    jp hl


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
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
    cp $ff
    rst $38
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$df]
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
    nop
    rst $38
    nop
    rst $38
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
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    add hl, sp
    add $30
    rst $08
    nop
    rst $38
    nop

jr_0a4_46cd:
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    jr jr_0a4_46cd

    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    adc a
    ld a, a
    rst $28
    rra
    rst $38
    rlca
    db $fd
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
    ldh [$bf], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    sbc a
    ld h, b
    rst $18
    jr nz, @-$1f

    jr nz, @+$01

    nop
    ld a, l
    add d
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_0a4_4788

    and h
    ld e, a
    and b
    ld h, $d9
    rlca
    ld hl, sp+$05
    ld a, [$f807]
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
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    ld hl, sp-$01
    cp $ff
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
    rst $28
    rra
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
    ei
    rlca
    rst $38
    rlca
    ei
    rlca
    ei
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

jr_0a4_4788:
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    ld a, a
    adc a
    ld a, a
    adc a
    rst $38
    rrca
    rst $28
    rra
    rst $38
    rrca
    ld l, a
    sbc a
    cpl
    rst $18
    rst $18
    cpl
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
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
    ccf
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
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
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    rlca
    rlca
    dec c
    ld c, $00
    rrca
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0a4_4899

    nop
    nop
    nop
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a4_48b2

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop

jr_0a4_4899:
    nop
    dec h
    ld h, $27
    jr z, jr_0a4_48c8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a4_48a7

jr_0a4_48a7:
    nop
    ld sp, $0a00
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    add hl, de
    ld [hl], $37

jr_0a4_48b2:
    jr c, jr_0a4_48ed

    ld a, [hl-]
    dec sp

Call_0a4_48b6:
    inc a
    dec a
    nop
    ld a, $00
    nop
    nop
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

jr_0a4_48c8:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    add hl, de
    ld d, e
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
    ld e, h
    ld e, l
    ld e, [hl]
    add hl, de
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

jr_0a4_48ed:
    nop
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
    ld [hl], e
    ld [hl], h
    ld e, e
    nop
    nop
    ld [hl], l
    db $76
    ld [hl], a
    add hl, de
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    add hl, de
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    dec a
    nop
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    add hl, de
    add hl, de
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    nop
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    add hl, de
    add hl, de
    add hl, de
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
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
    dec de
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    sbc [hl]
    sbc [hl]
    sbc [hl]
    cp c
    cp d
    cp e
    add hl, de
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $9e9e

    sbc [hl]
    sbc [hl]
    jp $c5c4


    add $19
    rst $00
    ret z

    ret


    jp z, $cccb

    call $ce9e
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    add hl, de
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
    ld [$00c0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a4_49ec

jr_0a4_49ec:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop

Jump_0a4_4abf:
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
    ld bc, $0001
    nop
    ld b, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    and b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ret nc

    rst $38
    add sp, -$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    ld c, $ff
    dec d
    rst $38
    sub l
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rst $08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$70ff]
    rst $38
    add sp, -$01
    ret nz

    rst $38
    add b
    rst $38
    jr nz, @+$01

    nop
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
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    or b
    rst $38
    or h
    rst $38
    db $f4
    rst $38
    ld a, [$fcff]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    ld [c], a
    rst $38
    ldh [rIE], a
    add d
    rst $38
    ret nz

    rst $38
    add h
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
    nop

jr_0a4_4bc3:
    rst $38
    nop
    rst $38
    ld bc, $05fe
    ld a, [$fa05]
    ld b, $f9
    dec d
    ld [$e01f], a
    rla
    add sp, $0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    and b
    ld e, a
    jr nz, jr_0a4_4bc3

    nop
    rst $38
    nop
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
    ld b, b
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
    jr nz, @+$01

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
    ldh a, [rIE]
    db $f4
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $20
    rst $38
    ld sp, hl
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
    db $e3
    rst $38
    ld b, c
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
    nop
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
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fd
    rlca
    ld hl, sp+$07
    ld hl, sp+$47
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    sub c
    xor $cc
    ld a, [c]
    and $f8
    ld a, [c]
    db $fc
    ld a, c
    cp $38
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    ld b, $f9
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a4_4cb9:
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ld sp, hl
    nop
    db $e4
    nop
    ld [c], a
    nop
    call nz, $e400
    nop
    add sp, $00
    jp nc, $ff00

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
    jr z, jr_0a4_4cb9

    inc [hl]
    rr d
    push hl
    dec hl
    call nc, $af50
    ld b, h
    cp e
    ld b, d
    cp l
    rlca
    ld hl, sp+$16
    jp hl


    dec b
    ld a, [$fe01]
    nop
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    ld bc, $02fe
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
    ld bc, $04fe
    ei
    inc b
    ei
    nop
    rst $38
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
    ld [bc], a
    db $fd
    sbc a
    ld h, b
    cp a
    ld b, b
    nop
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
    ld l, b
    rla
    jr nz, jr_0a4_4d5f

    jr nz, jr_0a4_4d61

    and b
    rra
    ld b, b
    cp a
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    or $01
    rlc b
    add l
    nop
    ld b, c

jr_0a4_4d5f:
    nop
    adc c

jr_0a4_4d61:
    nop
    ld bc, $0500
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    cp a
    nop
    rst $38
    nop
    ld e, a
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
    sub $29
    ld a, [hl-]
    push bc
    ld l, [hl]
    sub c
    ld d, l
    xor d
    or a
    ld c, b
    ld d, l
    xor d
    ld e, e
    and h
    ld l, l
    sub d
    sub a

jr_0a4_4d91:
    ld l, b
    xor l
    ld d, d
    xor [hl]
    ld d, c
    dec [hl]
    jp z, $f906

    dec de
    db $e4
    dec c
    ld a, [c]
    adc [hl]
    ld [hl], c
    dec bc
    db $f4
    adc b
    ld [hl], a
    ld b, $f9
    dec b
    ld a, [$bd42]
    and l
    ld e, d
    and d
    ld e, l
    ld b, e
    cp h
    jr nz, jr_0a4_4d91

    ld bc, $01fe
    cp $10
    rst $28
    jr nz, @-$1f

    nop
    rst $38
    ret nz

    ccf
    ld [hl], b
    adc a
    and b
    ld e, a
    ld b, b
    cp a
    jr nz, @-$1f

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
    db $10
    rst $28
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    db $10

jr_0a4_4ddb:
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
    ld [$00ff], sp
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a

jr_0a4_4e0e:
    ldh [$1f], a
    ld [hl], b
    adc a
    jr c, jr_0a4_4ddb

    ld c, $f1
    ld b, $f9
    ld bc, $80fe
    ld a, a
    ld b, b
    ccf
    ldh [$1f], a
    ld [hl], b
    rrca
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
    sbc a
    ld h, b
    rra
    ld a, a
    ccf
    rrca
    add hl, sp
    rlca

jr_0a4_4e38:
    sbc a
    nop
    adc e
    inc b
    adc e
    inc b
    dec b
    add d
    ld b, $81

jr_0a4_4e42:
    inc bc
    add h

jr_0a4_4e44:
    add d
    dec b

jr_0a4_4e46:
    ld b, l
    add d
    add $01
    ld b, l
    add d
    ld b, $c1
    add l
    ld b, d
    ld b, d
    add c
    add d
    ld b, c
    pop bc
    ld [bc], a
    and c
    ld b, d
    pop hl
    ld [bc], a
    ld b, e
    and b
    jp Jump_0a4_4220


    and c
    add c
    ld h, b
    and b
    ld b, c
    ld d, b
    and c
    or b
    ld b, c
    or b
    ld b, c
    pop bc
    jr nc, jr_0a4_4e0e

    ld d, b
    ld h, c
    sub b
    ld d, c
    and b
    jr nz, jr_0a4_4e44

    jr z, jr_0a4_4e46

    jr c, jr_0a4_4e38

    jr nc, jr_0a4_4e42

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    nop
    cp $00
    cp $00
    cp $00

jr_0a4_4e9d:
    cp $01
    cp $01
    cp $01
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a4_4eb7:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a4_4ec6:
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    jr nc, jr_0a4_4e9d

    jr jr_0a4_4eb7

    ld c, $f1
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ret c

    daa
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
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    xor a
    ld d, b
    rst $10
    jr z, jr_0a4_4ec6

    ld b, b
    rst $28

jr_0a4_4f09:
    db $10
    ld e, a
    and b
    rst $30
    ld [$a45b], sp
    rst $28
    db $10
    or c
    ld c, e
    cp d
    ld b, c
    ld l, b
    sub c
    cp b
    ld b, c
    ld l, b
    sub c
    cp c
    ld b, b
    xor l
    ld d, b
    ld l, l
    sub b
    db $dd
    jr nz, jr_0a4_4f92

    sub b
    ret c

    inc h
    or h
    ld c, b
    ld l, b
    sub h
    ret c

    inc h
    or h
    ld c, b
    ld l, b
    sub h
    xor [hl]
    ld d, b
    ld e, d
    and h
    ld l, [hl]
    sub b
    ld a, [hl+]
    call nc, Call_0a4_48b6
    sbc $20
    add sp, $16
    ret c

    ld h, $ec
    ld [de], a
    inc d
    ld l, d
    dec hl
    ld d, h
    dec [hl]
    ld c, d

jr_0a4_4f4a:
    ld a, [hl+]

jr_0a4_4f4b:
    ld d, l
    ld c, e
    inc [hl]
    ld [hl], l
    ld a, [bc]
    ld l, [hl]
    ld de, $146b
    ld e, c
    ld h, $54
    dec hl
    dec b
    ld a, [hl-]
    inc b
    dec sp
    nop
    ccf
    inc b
    dec sp
    ld h, $19
    jr nz, @+$21

    jr nz, jr_0a4_4f85

    jr nz, @+$21

    jr nz, @+$21

    nop
    rra
    add b
    rra
    add b
    rra
    add b
    rra
    sub b
    rrca
    db $10
    adc a
    db $10
    adc a
    jr nc, jr_0a4_4f09

    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    jr nz, jr_0a4_4f4b

    inc h

jr_0a4_4f85:
    jp $c003


    jr nc, jr_0a4_4f4a

    inc c
    ldh a, [rSB]
    cp $00
    rst $38
    nop
    rst $38

jr_0a4_4f92:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @-$17

    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $01fe
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
    ret nz

    ccf
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$05ff], sp
    rst $38
    add $3f
    ld [c], a
    rra
    ld sp, hl
    rlca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $fffe
    rst $38
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
    sbc a
    ldh [rIE], a
    rst $38
    ccf
    di
    add hl, de
    di
    add hl, bc
    di
    dec bc
    pop af
    dec bc
    pop af
    dec bc
    pop af
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $09f9
    ld sp, hl
    adc c
    ld a, c
    adc l
    ld a, c
    add h
    ld a, c
    add h
    ld a, c
    or h
    ld c, c
    ld b, h
    add hl, sp
    ld [hl], d
    dec c
    rst $38
    nop
    cp [hl]
    ld b, b
    or a
    ld c, b
    db $db
    inc h
    ld l, d
    sub l
    push af
    ld a, [bc]
    ld e, [hl]
    and c
    ld l, d
    sub l
    cp e
    ld b, h
    ld l, [hl]
    sub c
    or l
    ld c, d
    push de
    ld a, [hl+]
    db $76
    adc c
    cp e
    ld b, h
    ld l, l
    sub d
    ld e, e
    and h
    dec h
    jp c, $a55a

    cpl
    ret nc

    ld a, [de]
    push hl
    dec d
    ld [$fc03], a
    ld b, $f9
    dec b
    ld a, [$fd02]
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
    ld b, b
    ccf
    db $10
    rrca
    inc b
    inc bc
    ld b, c
    add b
    db $10
    ldh [rDIV], a
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
    dec b
    ld hl, sp+$02
    db $fc
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
    ld b, b
    cp a
    sub b
    rrca
    ld c, b
    add a
    ld [c], a
    pop bc
    ld bc, $e4f0
    ld hl, sp+$74
    cp $ba
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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
    rra
    ldh [$fe], a
    rst $38
    cp $fd
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fc
    cp $fc
    cp $fc
    ld c, $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    db $e3
    inc e
    adc $01
    cp b
    ld b, b
    rst $38
    nop
    or a
    ld c, b
    rst $28
    db $10
    or a
    ld c, b
    ld [hl], a
    adc b
    rst $18
    jr nz, jr_0a4_5176

    sub h
    xor l
    ld d, d
    rst $10
    jr z, jr_0a4_5188

    adc b
    cp d
    ld b, l
    ld l, [hl]
    sub c
    and a
    ld e, b
    cp l
    ld b, d
    ld d, [hl]
    xor c
    db $ed
    ld [de], a
    ld e, [hl]
    and c
    ld [hl], l
    adc d
    xor [hl]
    ld d, c
    or l
    ld c, d
    jp c, $2e25

    pop de
    xor e
    ld d, h
    inc c
    di
    ld a, [bc]
    push af
    dec c
    ld a, [c]
    dec bc
    db $f4
    rlca
    ld hl, sp+$02
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rra
    ld [$0207], sp
    ld bc, $8040
    db $10
    ldh [rDIV], a
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    jr nz, jr_0a4_5177

    ld b, b
    adc a
    ld b, $e1
    dec c
    ldh a, [$03]
    ld hl, sp+$00
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    jr nz, jr_0a4_518d

    nop
    rrca
    rst $30
    nop
    ei
    nop
    ldh [rIE], a

jr_0a4_5176:
    rst $38

jr_0a4_5177:
    rst $38
    rst $38
    rst $38
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    push af
    nop
    ei
    nop

jr_0a4_5188:
    rst $38
    nop
    rst $38
    nop
    ei

jr_0a4_518d:
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

    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    adc a
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rra
    inc b
    inc bc
    ldh a, [rP1]
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
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    rst $28
    db $10
    ld a, a
    add b
    cp e
    ld b, h
    rst $28
    db $10
    or l
    ld c, d
    rst $28
    db $10
    or [hl]
    ld c, c
    db $db
    inc h
    ld l, c
    sub [hl]
    sbc $21
    xor e
    ld d, h
    ld e, e
    and h
    ld [$b515], a
    ld c, d
    or a
    ld c, b
    ld e, l
    and d
    ld l, [hl]
    sub c
    sbc e
    ld h, h
    or [hl]
    ld c, c
    or l
    ld c, d
    ld e, e
    and h
    ld a, [hl-]
    push bc
    dec b
    ld a, [$f40b]
    ld b, $f9
    add b
    ld a, a
    jr nz, jr_0a4_5239

    ld [$0207], sp
    ld bc, $8040
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    add b
    rra
    ld l, b
    rrca
    adc b
    rla
    ld a, [hl-]
    pop bc
    inc d

jr_0a4_5239:
    add sp, $00
    cp $00
    rst $38
    nop
    rst $38
    ld a, [$e900]
    nop
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    ld bc, $fdff
    nop
    rst $38
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

    db $fc
    rst $38
    ccf
    sbc a
    rrca
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    sbc a
    ccf
    cp a
    rra
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    rst $08
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    inc c
    inc bc
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
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_0a4_530a

    and b
    push af
    ld a, [bc]
    or a
    ld c, b
    ld l, l
    sub d
    or l
    ld c, d
    rst $10
    jr z, jr_0a4_532c

    adc d
    sub $29
    ld l, l
    sub d
    ld d, [hl]
    xor c
    db $db
    inc h
    ld l, [hl]
    sub c
    or [hl]
    ld c, c
    jp c, $aa25

    ld d, l
    ld e, l
    and d
    dec hl
    call nc, $e51a
    ld c, $71
    ld de, $070e
    nop
    ld bc, $4100
    add b
    inc de
    ldh [rSB], a
    cp $00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    add b
    rra
    ld [$81c7], sp
    nop
    ld b, h
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a4_530a:
    rst $38
    rst $38
    rst $38
    nop
    call nc, $ca00
    nop
    ld d, c
    nop
    xor b
    nop
    db $fd
    nop
    db $fc
    nop
    cp [hl]
    nop
    jp nc, $ca00

    nop
    or d
    nop
    ld hl, sp+$00
    db $f4
    nop
    ld a, [$f800]
    nop
    cp $00

jr_0a4_532c:
    ld hl, sp-$01

jr_0a4_532e:
    ld sp, hl
    rst $38

jr_0a4_5330:
    ld hl, sp-$07
    ldh a, [$f9]
    ldh a, [$f9]
    ldh a, [$f9]
    ld sp, hl
    pop af
    ei
    pop af
    ei
    pop af
    ei
    pop af
    ei
    pop af
    di
    pop af

jr_0a4_5344:
    pop af
    di
    pop hl
    di
    pop hl
    di
    db $e3
    di
    rst $20
    di
    rst $30
    db $e3
    rst $30
    db $e3
    rst $30
    db $e3
    di
    rst $20
    di
    rst $20
    di
    rst $20
    db $e3
    rst $20
    ld c, a
    rst $20
    dec c
    rst $20
    ld [$08e7], sp
    rst $20
    ret nc

    cpl
    jr jr_0a4_536f

    add c
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38

jr_0a4_536f:
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, jr_0a4_5330

    ld c, b
    rst $28
    db $10
    or a
    ld c, b
    cp d
    ld b, l
    rst $10
    jr z, jr_0a4_532e

    ld d, h
    cp l
    ld b, d
    rst $10
    jr z, jr_0a4_5344

    ld b, h
    ld l, l
    sub d
    sub $29
    cp e
    ld b, h
    sub $29
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, bc
    or $0f
    ldh a, [rSCY]
    cp l
    xor a
    rst $18
    ld sp, hl
    rlca
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, b
    ccf
    ret nz

    rlca
    ld hl, sp+$03
    db $fc
    or $08
    or a
    ld [$08f7], sp
    rst $30
    ld [$c03f], sp
    rrca
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    nop
    nop
    nop
    nop
    sub b
    nop
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    ld a, a
    ld b, b
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
    jr nz, jr_0a4_53ee

jr_0a4_53ee:
    jr nz, jr_0a4_53f0

jr_0a4_53f0:
    nop
    nop
    adc b
    nop
    nop
    nop
    jr nz, jr_0a4_53f8

jr_0a4_53f8:
    ld b, b
    nop
    and b
    nop
    ldh a, [rP1]
    ldh a, [$f8]

jr_0a4_5400:
    ldh [$f8], a
    db $f4
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$fa]
    ldh a, [$f4]
    ldh a, [$f5]
    ldh a, [$e4]
    ldh a, [$e6]
    ldh a, [$fe]
    ldh [$f5], a
    ldh [$fe], a
    ldh [$fe], a
    ldh [$ee], a
    ldh [rIE], a
    ldh [$cf], a
    ldh [$df], a
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
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp [hl]
    ld b, c
    db $76
    adc c
    ld l, a
    sub c
    cp e
    ld b, l
    ld d, a
    xor c
    db $fd
    inc bc
    ld l, c
    sub a
    ld sp, hl
    rlca
    db $fd
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld d, [hl]
    xor c
    cp e
    ld b, h
    ld l, l
    sub d
    ld l, $d1
    rst $18
    jr nz, jr_0a4_5400

    ld h, h
    inc hl
    inc e
    jr jr_0a4_5471

    inc b
    inc bc
    dec b
    inc bc
    ld bc, $0307

jr_0a4_5471:
    rlca
    db $eb
    rlca
    di
    rrca
    di
    rrca
    rst $20
    rra
    and $1f
    and $1f
    rst $20
    ld e, $67
    sbc [hl]
    ld c, $fe
    inc c
    cp $0e
    db $fc
    ld c, $fc
    ld e, $fc
    sbc b
    db $fc
    db $dd
    ld hl, sp-$63
    ld hl, sp-$43
    ld hl, sp-$6d
    ld hl, sp-$75
    ldh a, [$8a]
    pop af
    ld a, [bc]
    pop af
    ld c, $f1
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a4_54ce

jr_0a4_54ce:
    add b
    nop
    add b
    nop
    and b
    nop
    and h
    nop
    sub b
    nop
    ld c, b
    nop
    and h
    nop
    ld d, h
    nop

jr_0a4_54de:
    or d
    nop
    or l
    nop
    jp hl


    nop
    db $e4
    ld bc, $01f0
    jp hl


    ld bc, $01f7
    db $eb
    ld bc, $03f5
    ld sp, hl
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    rlca
    ld a, [$ff07]
    ld b, $ff
    ld b, $ff
    ld b, $f5
    ld c, $f5
    ld c, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc c
    db $eb
    inc e
    db $eb
    inc e

jr_0a4_5510:
    rst $38
    jr @+$01

    jr @+$01

    jr @-$27

    jr c, jr_0a4_5510

    jr c, @+$01

    jr nc, @+$01

    jr nc, jr_0a4_54de

    ld [hl], b
    xor a
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    ld a, a
    ldh [$5f], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
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
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    rst $28
    db $10
    db $db
    inc h
    xor $11
    ld e, l
    and d
    db $ed
    ld [de], a
    ld [hl], a
    adc b
    db $dd
    ld [hl+], a
    xor e
    ld d, h
    db $76
    adc c
    cp d
    ld b, l
    rst $18
    jr nz, jr_0a4_55ae

    xor d
    rst $00
    ldh [$c4], a
    db $e3
    add l
    jp nz, $8582

    add hl, bc
    add [hl]
    ld [$9187], sp
    ld c, $b0
    rrca
    jr nz, @+$21

    jr nz, @+$21

    jr nz, @+$21

    ld h, b
    rra
    ld b, b
    ccf
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh [$1f], a
    db $10
    rrca
    ld bc, $030f
    rlca
    rlca
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rlca
    ld b, $07
    rrca
    ld b, $0e
    ld b, $06
    ld c, $0c
    ld c, $0e
    inc c
    ld e, $0c
    inc e
    inc c

jr_0a4_55ae:
    inc c
    inc e
    jr @+$1e

    inc a
    jr jr_0a4_55f1

    jr jr_0a4_55cf

    jr c, @+$1a

    jr c, jr_0a4_55eb

    jr c, @+$3a

    jr nc, jr_0a4_5637

    jr nc, @+$72

    jr nc, jr_0a4_55f3

    ld [hl], b
    ld h, b
    ld [hl], b
    ldh a, [$60]
    ldh a, [$60]
    ld h, b
    ldh [rLCDC], a
    ldh [$e0], a

jr_0a4_55cf:
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    add h
    ret nz

    ret nz

    add b

jr_0a4_55da:
    ret nz

    add b
    call nz, $9080
    add b
    ld de, $ca80
    nop
    jp hl


    nop
    sbc $00
    dec a
    nop
    cp a

jr_0a4_55eb:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a4_55f1:
    nop
    rst $38

jr_0a4_55f3:
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    cp h
    ld b, e
    ret c

    daa
    ld l, b
    sub a
    cp b
    ld b, a
    pop de
    ld l, $71
    adc [hl]
    pop de
    ld l, $63
    sbc h
    jp $a33c


    ld e, h
    rst $00
    jr c, jr_0a4_55da

    jr c, jr_0a4_565c

    cp b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]

jr_0a4_561d:
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$2a], a
    push de
    dec bc
    db $f4
    add hl, bc
    or $16
    jp hl


    ld bc, $00fe
    rst $38
    ld bc, $01fe
    cp $01
    cp $01

jr_0a4_5637:
    cp $00
    rst $38
    nop
    rst $38
    jr nz, jr_0a4_561d

    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    ret nz

    nop
    ret nz

    ld b, b
    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    nop

jr_0a4_565c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    stop
    add d
    nop
    ld b, b
    nop
    and h
    nop
    ldh [rP1], a
    add sp, $00
    db $e4
    nop
    ld [$d900], a
    nop
    cp $00
    cp $00
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a4_5693:
    nop
    rst $38
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
    ld [$08f7], sp
    rst $18
    jr nz, jr_0a4_5693

jr_0a4_56a5:
    ld de, $01fe
    db $dd
    inc hl
    call c, $fc23
    inc bc
    cp c
    ld b, [hl]
    ld sp, hl
    ld b, $bd
    ld b, [hl]
    or e
    ld c, h
    ld [hl], a
    adc h
    ld a, e
    adc h
    ld l, d
    sbc l
    rst $28
    jr jr_0a4_56a5

    add hl, de
    db $d3
    inc a
    call nc, $803b
    ld a, a
    and b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
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

jr_0a4_56d9:
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    ld a, [$ff05]
    nop
    rst $38
    nop
    ld e, [hl]
    and c
    sbc $21
    sbc $21
    cp a
    ld b, b
    cp a
    ld b, b
    ld [hl], d
    adc l
    ld a, l
    add d
    ld l, l
    sub d
    dec sp
    call nz, Call_000_18e7
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
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

jr_0a4_570a:
    nop
    nop
    ld bc, $0100
    nop

jr_0a4_5710:
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
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

jr_0a4_573c:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $08
    jr nc, jr_0a4_570a

    jr nc, jr_0a4_56d9

    ld h, b
    sub h
    ld h, b
    sub h
    ld h, b
    jr c, jr_0a4_5710

    inc a
    ret nz

    ld a, $c0
    ld a, h
    add b
    ld a, [hl]
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    nop
    cp $02
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$71
    ldh a, [$2f]
    ldh a, [$61]
    add b
    nop
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    jr nz, jr_0a4_573c

    ld [$05f0], sp
    ld a, [$3cc3]
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    cp a
    ld b, b
    ei
    inc b
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    sbc c
    ld h, [hl]
    add hl, hl
    sub $bb
    ld b, h
    sbc e
    ld h, h
    ld b, [hl]
    cp c
    sub [hl]
    ld l, c
    ld c, h
    or e
    and d
    ld e, l
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ld e, $00
    ld e, $00
    ld a, $00
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld a, e
    nop
    ld a, e
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ei
    nop
    push af
    nop
    ld a, [c]
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
    cp a
    nop
    cp a
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
    cpl
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
    rlca
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
    add b
    nop
    cp $00
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
    nop
    nop
    jr nz, jr_0a4_5854

jr_0a4_5854:
    ld [$0000], sp
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
    add b
    ret nc

    jr nz, jr_0a4_58cf

    sub h
    sbc l
    ld h, d
    di
    inc c
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    db $dd
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
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
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    add b
    rra
    nop
    rra
    nop
    rra
    nop
    ld a, $00
    ld a, $00
    inc a
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    pop af
    nop
    pop af
    nop
    ldh [rP1], a
    ldh [rP1], a
    pop hl
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    rst $30
    nop
    db $e3
    nop
    and $00
    rst $20
    nop
    and a
    nop
    rlca
    nop
    ld c, $00
    inc c
    nop
    ld c, $00
    inc b
    nop
    nop
    nop
    ret nc

    nop
    ret nc

jr_0a4_58cf:
    nop
    ld c, h
    nop
    push bc
    nop
    xor e
    nop
    xor c
    nop
    rrca
    nop
    cpl
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    db $fd
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $18
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
    ld a, [hl]
    ld bc, $01bf
    db $fd
    inc bc
    cp $03
    cp $02
    cp $06
    cp $04
    db $f4
    inc c
    ld hl, sp+$0c
    ld hl, sp+$08
    rrca
    ld hl, sp+$17
    ld hl, sp+$1f
    ldh a, [rNR14]
    ld hl, sp+$14
    ld hl, sp+$05
    ld hl, sp+$03
    db $fc
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
    rrca
    nop
    ld bc, $ff00
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
    inc b
    nop
    rlca
    nop
    add e
    nop
    ret nc

    nop
    db $fc
    nop
    rst $30
    nop
    db $fc
    nop
    rst $28
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20

jr_0a4_595b:
    jr jr_0a4_595b

    ld bc, $00ff
    nop
    nop
    stop
    inc c
    nop
    add c
    nop
    ld h, b
    add b
    xor h
    ld d, b
    ld c, e
    or h
    db $76
    adc c
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
    rst $38
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0a0a
    ld a, [bc]
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $0a
    ld a, [bc]
    rla
    jr jr_0a4_59bd

    ld a, [bc]
    ld a, [de]
    dec de
    ld a, [bc]
    ld a, [bc]
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl+], a
    inc hl
    inc h
    dec h

jr_0a4_59bd:
    ld h, $27
    jr z, jr_0a4_59cb

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, hl

jr_0a4_59cb:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $0a
    cpl
    jr nc, jr_0a4_5a05

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a4_5a15

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
    ld b, l
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
    ld a, [bc]
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_0a4_5a05:
    ld e, [hl]
    ld e, a
    ld b, l
    ld h, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, c
    ld h, d
    ld h, e
    ld a, [bc]
    ld e, c
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_0a4_5a15:
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld a, [bc]
    ld l, h
    ld l, l
    ld l, [hl]
    ld e, c
    ld e, c
    ld l, a
    ld e, c
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, [bc]
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld e, c
    ld a, [hl]
    ld a, a
    ld e, c
    add b
    add c
    add d
    add e
    add h
    ld a, [bc]
    add l
    add [hl]
    add a
    adc b
    ld e, c
    ld e, c
    ld e, c
    adc c
    adc d
    ld e, c
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
    ld e, c
    ld e, c
    ld e, c
    and h
    and l
    and [hl]
    ld a, [bc]
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
    ld a, [bc]
    or l
    ld a, [bc]
    ld a, [bc]
    or [hl]
    ld a, [bc]
    ld a, [bc]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    cp [hl]
    ld a, [bc]
    cp a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ret nz

    pop bc
    jp nz, Jump_000_0ac3

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    call $cfce
    ld e, c
    ret nc

    pop de
    jp nc, RST_00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    ld bc, $0000
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
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$10f7], sp
    rst $28
    adc b
    ld [hl], a
    nop
    rst $38
    and h
    ld e, e
    ret z

    scf
    add l
    ld a, d
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    sub b
    ld l, a
    ld b, b
    cp a
    and b
    ld e, a
    add b
    ld a, a
    ld d, b
    xor a
    and b
    ld e, a
    ld c, b
    or a
    ret c

    daa
    ret c

    daa
    call z, $e833
    rla
    ld hl, sp+$07
    call nc, $bd2b
    ld b, d
    cp a
    ld b, b
    ld d, l
    xor d
    ld a, [bc]
    push af
    cpl
    ret nc

    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld [hl+], a
    db $dd
    dec d
    ld [$fe01], a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    xor c
    ld d, [hl]
    xor c
    ld d, [hl]
    db $f4
    dec bc
    add sp, $17
    adc b
    ld [hl], a
    ret z

    scf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    db $e4
    dec de
    ld sp, hl
    ld b, $55
    xor d
    or [hl]
    ld c, c
    cp d
    ld b, l
    ldh a, [rIF]
    xor h
    ld d, e
    ld [hl], h
    adc e
    ret


    ld [hl], $e1
    ld e, $30
    rst $08
    ld [bc], a
    db $fd
    ld bc, $80fe
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    sbc a
    ld [hl], b
    adc a
    or b
    ld c, a
    sub b
    ld l, a
    ld e, b
    and a
    ld e, h
    and e
    inc b
    ei
    nop
    rst $38
    inc b
    ei
    ld b, [hl]

jr_0a4_5c95:
    cp c
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

jr_0a4_5ca9:
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
    and b
    ld e, a
    ld b, b
    cp a
    ld b, b
    cp a
    jr z, jr_0a4_5c95

    ld [de], a
    db $ed
    jr jr_0a4_5ca9

    add hl, bc
    or $00
    rst $38
    ld b, d
    cp l
    ld h, b
    sbc a
    ld h, h
    sbc e
    ld h, h
    sbc e
    ld de, $07ee

jr_0a4_5cd1:
    ld hl, sp+$01
    cp $09
    or $01
    cp $05
    ld a, [$fe01]
    nop
    rst $38
    ret nz

    ccf
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
    ld b, b
    cp a
    ld h, b
    sbc a
    ldh [$1f], a
    jr nz, jr_0a4_5cd1

    jr @-$17

    ld [$00f7], sp
    rst $38
    ld [$04f7], sp
    ei
    inc b
    ei
    nop
    rst $38
    ld a, [bc]
    push af
    ret nz

    ccf
    inc bc
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
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
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld [bc], a
    db $fd
    ld bc, $0afe
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    inc d
    db $eb
    ld [bc], a
    db $fd
    ld bc, $04fe
    ei
    ld bc, $03fe
    db $fc
    dec b
    ld a, [$ff00]
    ld b, b
    cp a
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $00
    rst $38
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    add hl, bc
    or $00
    rst $38
    nop
    rst $38
    nop
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

jr_0a4_5d6d:
    rst $38
    nop

jr_0a4_5d6f:
    rst $38
    nop
    rst $38
    nop

jr_0a4_5d73:
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
    add b
    ld a, a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_0a4_5d6d

    jr nz, jr_0a4_5d6f

    ld b, b
    cp a
    jr nz, jr_0a4_5d73

    db $10
    rst $28
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
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    ld h, b
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
    rst $38
    dec b
    ld a, [$f20d]
    dec b
    ld a, [$fa05]
    sub c
    ld l, [hl]
    ld h, h
    sbc e
    jp z, $8535

    ld a, d
    ld b, d
    cp l
    dec b
    ld a, [$ff00]
    and d
    ld e, l
    ld [hl-], a
    call Call_0a4_738c
    ld a, [hl+]
    push de
    call c, Call_0a4_7723
    adc b
    sbc c
    ld h, [hl]
    ld a, l
    add d
    cp h
    ld b, d
    ld a, d
    add h
    ld a, [$7204]
    adc h
    pop af
    inc c
    db $ec
    db $10
    db $f4
    ld [$8874], sp
    ld h, b
    sbc b
    ld l, d
    sub b
    adc h
    ld [hl], b
    ld c, h
    or b
    push bc
    jr nc, jr_0a4_5e1f

    ldh [$9d], a
    ld h, b
    ld d, h
    and b
    dec c

jr_0a4_5e0b:
    ldh [$3f], a
    ret nz

    ld bc, $00fe
    rst $38
    ld [$02ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a4_5e1f:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0a4_5e0b

    ld b, b
    cp a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    ld b, d
    add c
    ld b, e
    add b
    inc bc
    add b
    add a
    nop
    add a
    nop
    add a
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    ld a, [hl]
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
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp-$7f
    cp $60
    rst $38
    db $10
    rst $38
    ld c, $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    db $db
    ld a, h
    ld bc, $00e2
    add c
    nop
    ret nz

    nop
    ld sp, hl
    db $fd
    cp $eb
    db $fc
    ld c, a
    ldh a, [$bf]
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
    ld hl, sp+$0f
    rst $30
    ld c, $fb
    inc b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, $c1
    ld e, $e1
    add [hl]
    ld sp, hl
    pop bc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld e, a
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
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rrca
    ldh a, [rIF]
    ldh a, [rVBK]
    ldh a, [rOBP1]
    or $04
    ei
    ld hl, $21fe
    cp $21
    cp $00
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld hl, $03ff
    rst $38
    ld a, [bc]
    rst $38
    rlca
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
    rrca
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rra
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
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
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
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
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

jr_0a4_5fde:
    db $fd
    rst $38
    inc sp
    call z, $ec13
    dec bc
    db $f4
    dec b
    ld a, [$f50a]
    nop
    rst $38

jr_0a4_5fec:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec d
    ld [$00fe], a
    rst $38
    nop
    rst $38

jr_0a4_5ff9:
    nop
    rst $38

jr_0a4_5ffb:
    nop
    rst $38

jr_0a4_5ffd:
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
    add c
    ld a, [hl]
    rst $18
    jr nz, jr_0a4_5fec

    jr nz, jr_0a4_5fde

    jr nc, jr_0a4_6056

    cp d
    ld b, d
    cp l
    ld h, c
    sbc [hl]
    ld h, b
    sbc a
    jr nz, jr_0a4_5ff9

    jr nz, jr_0a4_5ffb

    jr nz, jr_0a4_5ffd

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
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
    ldh [rIE], a
    db $e3
    db $fc
    ldh [rIE], a
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a4_6056:
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    cp $ff
    sbc $ff
    rst $18
    rst $38
    db $dd
    rst $38
    reti


    rst $38
    db $db
    rst $38
    ret c

    rst $38
    ret c

    rst $38
    cp $ff
    ld a, [$faff]
    rst $38
    cp b
    rst $38
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
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
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    scf
    ret z

    dec hl
    call nc, $ff00
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    inc de
    db $ec
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
    scf
    ret z

    rra
    ldh [$2b], a
    call nc, $fa05
    nop
    rst $38
    dec b
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
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
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    db $f4
    ei
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
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    add b
    rst $38
    jr nz, @+$01

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

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
    and h
    ld e, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    cp a
    ld b, b
    cpl
    ret nc

    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    set 7, a
    inc b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    add b
    rst $38
    inc b
    ei
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $03fe
    db $fc
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
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
    ld bc, $00fe
    rst $38
    db $fd
    ld [bc], a
    nop
    ld [bc], a
    ld b, $02
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
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add d
    ccf
    jp nz, $c23f

    ccf
    jp nz, $c23f

    ccf
    jp nz, $c23f

    cp a
    ld b, d
    cp a
    ld b, d
    cp a
    ld b, d
    cp l
    ld b, d
    ld a, a
    jp nz, Jump_0a4_43fe

    ld c, $f3
    inc b
    ei
    ld c, $f3
    ld b, [hl]
    ei
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    jp nz, $c23f

    ccf
    ld [hl+], a
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld h, e
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    and e
    rst $38
    ld [c], a
    rst $38
    db $e3
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
    rst $28
    rra
    rra
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
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $0efe
    pop af
    rlca
    ld hl, sp+$0f
    ldh a, [rNR33]
    ld [c], a
    ccf
    ret nz

    ld a, [hl]
    add c
    db $fc
    inc bc
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    db $fc
    nop
    nop
    nop
    cp c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$18e7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $08
    jr nc, @+$51

    or b
    adc e
    ld [hl], h
    rlca
    ld hl, sp+$05
    ld a, [$fa05]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    ldh [rP1], a
    ldh [rP1], a
    rst $38
    ret nz

    cp a
    and b
    rst $38
    and b
    rst $18
    rst $38
    rst $38
    ldh a, [rIE]
    ret nc

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

    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    or b
    rst $38
    rst $38
    rst $38
    rst $18
    ldh [rIE], a
    ret nz

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

Jump_0a4_637f:
    rst $38
    rst $10
    jr z, @+$01

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
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [rKEY1]
    or d
    ld c, l
    or d
    ld c, [hl]
    or c

jr_0a4_639e:
    ld c, [hl]
    or c

jr_0a4_63a0:
    rra
    ldh [$3f], a
    ret nz

jr_0a4_63a4:
    rst $38
    nop

jr_0a4_63a6:
    rst $38
    nop

jr_0a4_63a8:
    ccf
    ret nz

jr_0a4_63aa:
    ccf
    ret nz

jr_0a4_63ac:
    ccf
    ret nz

jr_0a4_63ae:
    ccf
    ret nz

    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_0a4_639e

    jr nc, jr_0a4_63a0

    jr nc, @-$2f

    jr nc, jr_0a4_63a4

    jr nc, jr_0a4_63a6

    jr nc, jr_0a4_63a8

    jr nc, jr_0a4_63aa

    jr nc, jr_0a4_63ac

    jr nc, jr_0a4_63ae

    jr nc, jr_0a4_63e1

jr_0a4_63e1:
    nop
    nop
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
    ei
    inc b
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
    rst $38
    nop
    cp a
    ld b, b
    ld a, e
    add h
    ld e, a
    and b
    ld d, d
    xor l
    rrca
    ldh a, [rP1]
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
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
    ret nz

    nop
    ld b, $ff
    rst $38
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add sp, $17
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    call c, $c423
    dec sp
    call nc, $ff2b
    nop
    rst $38
    nop
    cp $01
    ld l, [hl]
    sub c
    sbc a
    ld h, b
    db $dd
    ld [hl+], a
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
    cp $01
    cp $01
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
    cp $01
    cp $01
    cp $01
    cp $01
    ld hl, sp+$07
    ld [hl], h
    adc e
    and h
    ld e, e
    db $fc
    inc bc
    ld [bc], a
    ld bc, $0ff0
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10

jr_0a4_64d9:
    rst $38
    db $10
    rst $38
    ld de, $11ff
    rst $38
    jr nz, @+$01

    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc h
    rst $38
    ld b, l
    rst $38
    ld h, a
    rst $38
    ld h, b
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    ld bc, $01ff

jr_0a4_64fb:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp b
    ld b, a
    jr c, jr_0a4_64d9

    jr jr_0a4_64fb

    ld a, h
    add e
    cp [hl]
    ld b, c
    ld a, [hl]
    add c
    cp a
    ld b, b
    daa
    ret c

    daa
    ret c

    and a
    ld e, b
    and a
    ld e, b
    rst $38
    nop
    ei
    inc b
    swap h
    ld c, d
    or l
    xor $11
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a4_6536:
    rst $38
    nop

jr_0a4_6538:
    rst $38
    nop

jr_0a4_653a:
    rst $38
    nop

jr_0a4_653c:
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_0a4_6544:
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

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b

jr_0a4_655e:
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_0a4_6544

    jr nz, jr_0a4_6536

    jr nc, jr_0a4_6538

    jr nc, jr_0a4_653a

    jr nc, jr_0a4_653c

    jr nc, jr_0a4_655e

    db $10
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
    rst $38
    nop
    nop
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
    rrca
    ldh a, [$ef]
    db $10
    rst $28
    db $10
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    call c, $bc23
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    cp b
    ld b, a
    cp b
    ld b, a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    and b
    ld e, a
    ld b, b
    cp a
    add c
    ld a, a
    ld b, c
    cp a
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
    adc a
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
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
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    scf
    rst $38
    scf
    rst $38
    ccf
    rst $30
    inc sp
    rst $38
    dec de
    rst $38
    sbc a
    ld a, e
    db $dd
    dec sp
    ld e, c
    cp a
    rst $28
    dec e
    xor a
    ld e, l
    db $ec
    rra
    db $fc
    rrca
    rst $30

jr_0a4_6625:
    ld c, $17
    xor $1f
    and $4e
    or a
    swap a
    ei
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    cp $01
    cp $01
    ld a, [c]
    dec c
    ret nz

    ccf
    jr nz, jr_0a4_6625

    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nz, @+$21

    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    add d
    ld a, a
    ld [bc], a
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
    ld [$08ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
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
    ret nc

    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, [hl]
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    and h
    rst $38
    ret c

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    db $f4
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $f4
    rst $38
    or $ff
    ld hl, sp-$01
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    di
    rst $38
    pop af
    rst $38
    di
    rst $38
    ld a, [$fcff]
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fc
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    ld a, a
    cp a
    rst $38
    cp a
    rst $18
    cp a
    rst $18
    cp a
    cp a
    rst $18
    rst $38
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $18
    rst $28
    ld a, a
    rst $28
    ld [hl], a
    rst $28
    rst $38
    ld h, a
    rst $28
    ld [hl], a
    or a
    ld [hl], a
    cp e
    ld [hl], a
    cp $33
    db $f4
    dec sp
    ret c

    ccf
    pop de
    ld a, $e1
    ld e, $f1
    ld c, $f9
    ld c, $f1
    ld c, $f1
    ld c, $f9
    ld b, $fd
    ld b, $f9
    ld b, $f9
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $10
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld h, b
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
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
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add h
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    call nz, $d0ff
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
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
    ld [bc], a
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
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc c
    di
    ld [$20f7], sp
    rst $18
    ld b, b
    cp a
    ld bc, $01fe
    cp $05
    ld a, [$fa05]
    dec d
    ld [$eb14], a
    ld a, [bc]
    push af
    dec b
    ld a, [$f50a]
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
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
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rNR34]
    pop hl
    inc a
    jp $8778


    ldh [$1f], a
    pop bc
    ld a, $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rst $30
    ld [$00ff], sp
    rst $28
    db $10
    ei
    inc b
    ld a, a
    add b
    ld a, e
    add h
    cp a
    ld b, b
    cp l
    ld b, d
    ld l, a
    sub b
    cp [hl]
    ld b, c
    ld l, a
    sub b
    ld d, a
    xor b
    ld e, a
    and b
    and a
    ld e, b
    ld d, a
    xor b
    ld e, e
    and h
    daa
    ret c

    ld d, l
    xor d
    xor e
    ld d, h
    ld c, e
    or h
    ld d, l
    xor d
    ld e, e
    and h
    and l
    ld e, d
    ld d, l
    xor d
    ld d, d
    xor l
    xor e
    ld d, h
    dec h
    jp c, $d42b

    ld d, $e9
    inc de
    db $ec
    dec bc
    db $f4
    dec c
    ld a, [c]
    ld bc, $01fe
    cp $02
    db $fd
    ld bc, $01fe
    cp $05
    ld a, [$fa05]
    ld bc, $00fe
    rst $38
    inc bc
    db $fc
    ld bc, $07fe
    ld hl, sp+$07
    ld hl, sp+$0d
    ld a, [c]
    ld b, $f9
    dec b
    ld a, [$fc03]
    dec c
    ld a, [c]
    rlca
    ld hl, sp+$23
    call c, $ff00
    ld b, c
    cp [hl]
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rNR34]
    pop hl
    inc a
    jp $8778


    ldh a, [rIF]
    pop hl
    ld e, $c3
    inc a
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    ld a, a
    add b
    rst $28
    db $10
    cp a
    ld b, b
    rst $30
    ld [$41be], sp
    rst $18
    jr nz, jr_0a4_6996

    add d
    rst $28
    db $10
    ei
    inc b

jr_0a4_691e:
    rst $18
    jr nz, jr_0a4_691e

    ld [bc], a
    cp a
    ld b, b
    rst $30
    ld [$04fb], sp
    db $fd
    ld [bc], a
    ld a, [hl]
    add c
    rst $28
    db $10
    ei
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
    ld bc, $0302
    nop
    nop
    nop
    nop
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
    dec b
    inc bc
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
    rlca
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    nop
    ld c, $00
    nop
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
    db $10
    ld de, $1312
    inc d
    nop
    nop
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e

jr_0a4_6996:
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_0a4_69cc

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    ld l, $2f
    jr nc, jr_0a4_69dd

    ld [hl-], a
    rla
    inc sp
    rla
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a4_69ef

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
    rla

jr_0a4_69cc:
    rla
    rla
    rla
    rla
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

jr_0a4_69dd:
    ld e, h
    rla
    rla
    nop
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
    rla
    rla
    ld h, a
    ld l, b

jr_0a4_69ef:
    ld l, c
    nop
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
    rla
    rla
    rla
    rla
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    ld [hl], l
    db $76
    rla
    rla
    ld [hl], a
    rla
    nop
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
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    add e
    rla
    rla
    inc bc
    add h
    add l
    add [hl]
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    adc [hl]
    adc a
    rla
    rla
    nop
    nop
    nop
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
    sub c
    rla
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub e
    rla
    rla
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $ff
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    push hl
    rst $38
    rst $20
    rst $38
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    jp nz, $a1ff

    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    cp $ff
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
    db $fc
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$1f], a
    ldh [$2f], a
    ret nc

    ld a, a
    add b
    rra
    ldh [$4e], a
    or c
    ld hl, $08de
    rst $30
    dec d
    ld [$c53a], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, @+$01

    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIE], a
    nop
    cp a
    ld b, b
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
    cp $ff
    cp $ff
    cp $ff

jr_0a4_6cf8:
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $00
    jr c, jr_0a4_6cf8

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    nop
    rst $38
    add c
    rst $38
    add d
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
    add d
    rst $38
    add e
    rst $38
    add c
    rst $38
    add e
    rst $38
    add c
    rst $38
    add d
    rst $38
    add c
    rst $38
    jp $c1ff


    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    jp $c1ff


    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [c], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    ldh a, [rIE]
    di
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    di
    cp $f3
    cp $f1
    cp $f0
    rst $38
    ld a, [$fbfd]
    db $fd
    ei
    db $fd
    ei
    db $fd
    db $fd
    ei
    db $fd
    ei
    rst $38
    ei
    ld b, $fb
    ld b, $ff
    cp $ff
    rst $38
    cp $ff
    cp $fd
    cp $fd
    cp $fd
    cp $ff
    db $fc
    rst $38
    db $fc
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
    rst $38
    nop
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
    db $fd
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
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    di
    db $f4
    ei
    push af
    ei
    cp $f0
    push af
    ei
    db $f4
    ei
    db $f4
    ei
    db $f4
    ld sp, hl
    db $fc
    ld sp, hl
    db $fd
    ld sp, hl
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, [hl]
    rst $38
    db $ec
    rst $38
    add sp, -$01
    ret z

    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    add b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ld hl, $20fe
    rst $38
    ld bc, $c3fe
    ld a, h
    ld c, c
    or $5e
    pop hl
    ld a, a
    ret nz

    ccf
    ret nz

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
    rst $38
    rst $38
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
    rst $18
    ld e, a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    inc b
    ei
    inc b
    ei
    ld b, $f9
    nop
    rst $38
    rlca
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$07
    ld hl, sp+$00
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [rTIMA]
    ld a, [$fe01]
    nop
    rst $38
    rst $38
    rst $38
    rra
    ldh [rIE], a
    nop
    rrca
    ldh a, [rP1]
    rst $38
    rra
    ldh [rNR22], a
    add sp, $07
    ld hl, sp+$05
    ld a, [$fe01]
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
    ccf
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
    ldh [rIE], a
    ret nc

    rst $38

jr_0a4_6f68:
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a4_6f70:
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01

jr_0a4_6f76:
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret c

    rst $38
    jr @+$01

jr_0a4_6f86:
    jr @+$01

    db $10
    rst $38

jr_0a4_6f8a:
    db $10
    rst $38

jr_0a4_6f8c:
    db $10
    rst $38

jr_0a4_6f8e:
    nop
    rst $38
    db $10
    rst $38

jr_0a4_6f92:
    nop
    rst $38

jr_0a4_6f94:
    ld [bc], a
    db $fd
    ld bc, $27fe
    ret c

jr_0a4_6f9a:
    ld h, a
    sbc b

jr_0a4_6f9c:
    rst $20
    jr jr_0a4_6f86

    jr jr_0a4_6f68

    jr c, jr_0a4_6f8a

    jr jr_0a4_6f8c

    jr jr_0a4_6f8e

    jr jr_0a4_6f70

    jr c, jr_0a4_6f92

    jr jr_0a4_6f94

    jr jr_0a4_6f76

    jr c, @-$17

    jr jr_0a4_6f9a

    jr jr_0a4_6f9c

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$0f

    db $10
    rst $20
    jr @-$17

    jr @-$17

    jr jr_0a4_6f9a

    jr c, jr_0a4_6f9c

    jr c, @-$17

    jr @-$37

    jr c, @-$17

    jr @-$17

    jr @-$37

    jr c, @-$37

    jr c, @-$17

    jr @-$37

    jr c, @-$17

    jr @-$37

    jr c, @-$37

    jr c, @-$37

    jr c, @-$37

    jr c, @-$01

    ei
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
    db $10
    rst $28
    ld a, b
    add a

jr_0a4_7014:
    nop
    rst $38

jr_0a4_7016:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$31ce], sp
    rst $38
    rst $38
    rst $18
    jr nz, jr_0a4_7014

    jr nz, jr_0a4_7016

    jr nz, jr_0a4_708a

    xor $d7
    ld l, b
    rst $10
    ld l, b
    ld b, a
    ld hl, sp+$57
    add sp, $47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$4b
    or h
    rst $08
    rst $38
    ld b, b
    rst $38
    ld b, c
    cp $40
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
    ld b, c
    cp $20
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    jr @+$01

    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
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

jr_0a4_708a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $e1
    rst $38
    nop
    rst $38
    nop
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
    sub e
    rst $28
    inc bc
    ld bc, $0381
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    ld bc, $c1ff
    ccf
    pop bc
    ccf
    pop bc
    ccf
    add b
    ld a, a
    add c
    ld a, a
    ld sp, hl
    rst $38
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld e, c
    and a
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
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rst $30
    add hl, bc
    rst $30
    pop hl
    rra
    pop hl
    rra
    add hl, bc
    rst $30
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $f5ff
    rrca
    rlca
    rst $38
    rlca
    rst $38
    rst $30
    rst $38
    dec b
    rst $38
    nop
    rst $38

jr_0a4_7122:
    nop
    rst $38

jr_0a4_7124:
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
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
    ei

jr_0a4_7142:
    inc bc
    db $fc

jr_0a4_7144:
    ccf
    ret nz

jr_0a4_7146:
    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_0a4_7122

    jr nc, jr_0a4_7124

    jr nc, jr_0a4_7146

    db $10
    rst $20
    jr jr_0a4_7142

    jr jr_0a4_7144

    jr @-$07

    ld [$0cf3], sp
    di
    inc c
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $fc
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
    db $fd
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fd
    db $fc
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
    cp $ff
    ei
    rst $38
    or $ff
    ld hl, sp-$09
    ld hl, sp-$09
    ei
    rst $30
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    di
    cp $f1
    ld a, [$f2f5]
    db $fd
    ldh a, [rIE]
    ldh a, [rIE]
    add sp, -$09
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $e3
    db $fc
    pop hl
    cp $e3
    cp $e3
    cp $e1
    cp $e4
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    db $ec
    rst $38
    xor $ff
    db $ec
    rst $38
    add sp, -$01
    ldh [rIE], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ld l, b
    rst $30
    jr z, @-$07

    inc e
    rst $30
    ld [$04f7], sp
    ei
    ld b, $f9
    ld c, d
    or l
    ld bc, $6cfe
    sub e

jr_0a4_7204:
    nop
    rst $38

jr_0a4_7206:
    nop
    rst $38

jr_0a4_7208:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, h
    and e
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b

jr_0a4_7226:
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
    ldh [$1f], a
    ldh [$8f], a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rst $00
    jr c, jr_0a4_7204

    jr c, jr_0a4_7206

    jr c, jr_0a4_7208

    jr c, jr_0a4_7226

    inc e
    db $e3
    inc e
    db $e3
    inc e
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $ff
    rst $38
    adc a
    rst $38
    rst $18
    adc a
    ld e, a
    adc a
    rst $18
    rrca
    ld e, a
    rrca
    ld e, a
    rrca
    rst $18
    rrca
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

jr_0a4_726b:
    rst $38
    cp $ff
    ldh a, [rIE]
    add $ff
    jr @+$01

    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, h
    cp a
    ld c, h
    cp a
    ld e, h
    xor a
    ld e, h
    xor a
    ld a, h
    adc a
    ld l, h
    sbc a
    xor h
    ld e, a
    xor b
    ld e, a
    jr z, jr_0a4_726b

    jr z, @-$1f

    or b
    ld c, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $c1ff
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    cp a
    ld b, c
    cp a
    ld b, c
    cp a
    ld hl, $a1df
    ld e, a
    ld h, c
    rst $18
    ld b, c
    rst $38
    ld h, l
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    jp Jump_0a4_637f


    cp a
    ld a, e
    sbc a
    ld hl, $04df
    rst $38
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    ei
    rlca
    rst $38
    inc bc
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    ld sp, hl
    ld b, $f9
    ld b, $ff
    rst $38
    rst $38
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
    sbc a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, c
    rst $38
    db $fc
    ld a, a
    cp $3f
    rst $38
    rra
    rst $28
    rra
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    cp $01
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
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $28
    rst $18
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    ei
    ld sp, hl
    rst $38
    ld a, h
    rst $38
    cp $7f
    rst $38
    ccf
    rst $18
    ccf
    rst $28
    rra
    rst $38
    rrca
    rst $38
    rlca
    ei
    rlca
    db $fd
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
    rst $30
    ld [$10ef], sp
    rst $38
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
    ldh a, [$f7]
    ld [$6897], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_0a4_738c:
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ld d, b
    rst $38
    jp nz, $e0ff

    rst $38
    ld d, b
    rst $38
    and d
    rst $38
    sub d
    rst $38
    nop
    rst $38
    and d
    rst $38
    and [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld l, h
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    ei
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
    ccf
    rst $38
    sbc a
    rst $38
    ret nz

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
    ld a, a
    cp a
    ld a, a
    ret nz

    ccf
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
    dec b
    rst $38
    dec b
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rrca
    rst $38
    ccf
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    cp $ff
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
    ldh a, [rIE]
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
    ld a, a
    add b
    rst $38
    nop
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
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    nop
    ld bc, $0302
    inc b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0512
    dec b
    dec b
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0a4_7529

    ld a, [de]
    dec de
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc e
    dec e
    ld e, $1f
    ld de, $2120
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_0a4_7529:
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a4_755a

    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a4_7571

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [hl], $37
    jr c, jr_0a4_754d

jr_0a4_754d:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_0a4_755a:
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    ld c, c
    dec a
    ld c, d
    ld c, e
    ld c, h
    dec a
    dec a
    dec a
    dec a
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    dec a

jr_0a4_7571:
    dec a
    ld d, l
    ld d, [hl]
    dec a
    dec a
    dec a
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    dec a
    ld h, b
    dec a
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    dec b
    ld l, c
    ld l, d
    nop
    nop
    dec a
    dec a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    dec b
    dec b
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    dec b
    ld a, l
    ld a, [hl]
    ld a, a
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec b
    dec b
    dec b
    dec b
    dec b
    inc e
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
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $af
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    dec b
    dec b
    dec b
    dec b
    dec b
    cp c
    dec b
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_000_0505

    dec b
    dec b
    dec b
    dec b
    jp $c405


    push bc
    add $c7
    ret z

    ret


    jp z, Jump_000_05cb

    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    call z, $cecd
    rst $08
    ret nc

    pop de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a4_7660

jr_0a4_7660:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0000
    ld bc, $0001
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

Call_0a4_7723:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a4_779f:
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    ld a, [$fe05]
    ld bc, $01fe
    ld a, [$ff05]
    nop
    rst $30
    ld [$9768], sp
    ldh [$1f], a
    ld b, $f9
    ld h, h
    sbc e
    jr nz, jr_0a4_779f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$09ff], sp
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc hl
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    call $dfff
    rst $38
    ld a, h
    rst $38
    ld e, c
    rst $38
    sub e
    rst $38
    rst $00
    rst $38
    sbc a
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    db $f4
    ei
    db $ec
    di
    rst $18
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [c]
    dec c
    ld a, [$fe05]
    ld bc, $01fe
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
    ld a, a
    add b
    ld sp, hl
    ld b, $99
    ld h, [hl]
    ld a, [de]
    push hl
    sbc b
    ld h, a
    sub b
    ld l, a
    ld [$48f7], sp
    or a
    sub b
    ld l, a
    sub b
    ld l, a
    ld [$a0f7], sp
    ld e, a
    ret nz

    ccf
    ld b, b
    cp a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $10
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [hl+], a
    rst $38
    jr nz, @+$01

    ld de, $39ff
    rst $38
    jr c, @+$01

    ld a, [hl+]
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc bc
    rst $38
    add [hl]
    rst $38
    ld bc, $01ff
    rst $38
    inc b
    rst $38
    add b
    rst $38
    add hl, bc
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    adc e
    rst $38
    ld c, [hl]
    rst $38
    inc a
    rst $38
    add hl, de
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    ccf
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
    ld hl, sp-$01
    ldh a, [rIE]
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
    inc bc
    db $fc
    ld e, $e1
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
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
    add c
    rst $38
    add d
    rst $38
    ld a, [bc]
    db $fd
    add e
    rst $38
    rlca
    rst $38
    ld c, a
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
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$d5]
    ld [$dea1], a
    nop
    rst $38
    inc b
    ei
    db $fc
    inc bc
    or b
    ld c, a
    rst $30
    ld [$00ff], sp
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
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    db $10
    rst $38
    dec de
    db $f4
    dec e
    ld a, [c]
    dec b
    ld a, [$f916]
    rla
    ld hl, sp+$07
    ld hl, sp+$00
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc h
    rst $38
    inc e
    rst $38
    ccf
    db $fc
    ld a, a
    db $fc
    db $fc
    rst $38
    db $fd
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$c7]
    ld hl, sp-$29
    xor b
    rst $38
    nop
    rst $30
    ld [$07f8], sp
    ld sp, hl
    ld b, $f8
    rlca
    sub c
    ld l, [hl]
    add hl, bc
    or $08
    rst $30
    inc b
    ei
    ld b, $f9
    rrca
    ldh a, [$0b]
    db $f4
    ld bc, $07fe
    ld hl, sp+$05
    ld a, [$c43b]
    dec de
    db $e4
    or $09
    rst $00
    jr c, @+$01

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
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    ld a, d
    add l
    sub b
    ld l, a
    add b
    ld a, a
    ld [hl], b
    adc a
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
    ld h, e
    sbc h
    add b
    ld a, a
    rst $38
    nop
    ccf
    ret nz

    ld b, l
    cp d
    ld [c], a
    dec e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a4_7a5e:
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$30

    pop de
    rra
    ldh [$cf], a
    jr nc, jr_0a4_7ae2

    adc b
    or a
    ld c, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rrca
    ldh a, [$a7]
    ld e, b
    rst $38
    nop
    rst $18
    jr nz, jr_0a4_7a5e

    jr nz, jr_0a4_7adc

    and h
    cp l
    ld b, d
    sbc $21
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec e
    rst $38

jr_0a4_7adc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a4_7ae2:
    ld bc, $feff
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $20
    jr @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, [$f605]
    add hl, bc
    db $fc
    inc bc
    db $f4
    dec bc
    ld hl, sp+$07
    db $fc
    inc bc
    ldh a, [rIF]
    jp hl


    ld d, $ff
    nop
    db $db
    inc h
    sub e
    ld l, h
    add a
    ld a, b
    ld c, $f1
    ld c, [hl]
    or c
    ld e, $e1
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
    inc bc
    rlca
    ld bc, $0103
    inc bc
    db $db
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
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
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    ei
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld d, a
    rst $38
    ld e, a
    rst $38
    ld e, e
    rst $38
    ld e, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld e, a
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
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, [hl]
    rst $38
    ld e, c
    rst $38
    ld [hl], e
    rst $38
    ld l, a
    rst $38
    ld e, $ff
    dec a
    cp $fb
    db $fc
    rst $30
    ld hl, sp-$16
    push af
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
    ret nc

    cpl
    push af
    ld a, [bc]
    rst $38
    nop
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

    ld h, e
    sbc h
    ld c, [hl]
    or c
    and $19
    and [hl]
    ld e, c
    adc h
    ld [hl], e
    rst $38
    nop
    rst $38
    nop
    cp h
    ld b, e
    inc [hl]
    bit 5, l
    sub d
    ld l, e
    sub h
    db $db
    inc h
    jp nc, $ff2d

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
    ld hl, sp-$01
    ldh [$f0], a
    or h
    ld hl, sp-$41
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp h
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    db $db
    inc h
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
    ret nc

    cpl
    db $ec
    inc de
    cp $01
    rst $38
    nop
    nop
    rst $38
    and b
    ld e, a
    rst $38
    nop
    db $fc
    inc bc
    ret nc

    cpl
    ldh a, [rIF]
    rst $38
    nop
    rst $30
    ld [$2bd4], sp
    or $09
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, $f1
    ld c, l
    or d
    ld e, c
    and [hl]
    sbc e
    ld h, h
    cp d
    ld b, l
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    or l
    ld c, d
    ld [hl], l
    adc d
    ld l, l
    sub d
    ld l, e
    sub h
    swap h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ccf
    ld a, a
    ccf
    rst $38
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    xor $f1
    pop af
    ldh [rIE], a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ld [hl], b
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
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    ld bc, $06ff
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $47fe
    cp b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld h, l
    sbc d
    ld h, l
    sbc d
    ld h, c
    sbc [hl]
    ret


    ld [hl], $fb
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $20
    jr @-$4f

    ld d, b
    ld l, a
    sub b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    di
    rst $38
    rst $30
    ei
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
    rrca
    rra
    cp a
    rst $38
    nop
    rst $38
    inc bc
    db $fc
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
    ld b, b
    rst $38
    nop
    rst $38
    add b
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    add d
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    adc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld [$18ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    db $fd
    dec bc
    db $f4
    rst $10
    jr z, jr_0a4_7e8c

    adc b
    rst $38
    nop
    cp a
    ld b, b
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld b, b
    cp a
    cp a
    ld b, b
    inc a
    jp $c33c


    inc h
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    db $e3
    ld e, $e1
    ld d, $e9
    ld d, $e9
    ld d, $e9
    inc e
    db $e3
    ld d, $e9
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    inc b
    ei
    nop
    rst $38
    jr c, @+$01

    jr nc, @+$01

    dec a
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld a, [hl]
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

jr_0a4_7e8c:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc [hl]
    set 7, b
    rlca
    rst $38
    nop
    rrca
    ldh a, [$5f]
    and b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$af], a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    cp $fc
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
    cp $ff
    ldh a, [$f8]
    ldh a, [$f8]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$f0], a
    rst $30
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    ei
    di
    pop hl
    ei
    rst $38
    inc b
    ei
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
    ld c, $f1
    rra
    ldh [$3b], a
    call nz, $cc33
    inc bc
    db $fc
    inc bc
    db $fc
    ld c, $f1
    ld c, $f1
    rlca
    ld hl, sp+$03
    db $fc
    inc sp
    call z, $cc33
    ccf
    ret nz

    sbc [hl]
    ld h, c
    adc d
    ld [hl], l
    nop
    rst $38
    rlca
    ld hl, sp-$80
    ld hl, sp-$7c
    ld hl, sp-$80
    db $fc
    ret nz

    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
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
    ld [bc], a
    db $fd
    ld e, $e1
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, d
    or l
    rlca
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld bc, $0500
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    dec sp
    rra
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ei
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld a, a
    ccf
    dec a
    ld a, [hl]
    ld a, $7c
    ld a, a
    rst $38
    ld a, a
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
    ccf
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    rla
    rst $38
