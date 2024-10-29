SECTION "ROM Bank $0c1", ROMX[$4000], BANK[$c1]

    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    rlca
    ld b, $00
    nop
    nop
    nop
    dec b
    dec b
    nop
    dec b
    dec b
    rlca
    inc bc
    dec b
    dec b
    dec b
    dec b
    inc b
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    dec b
    inc bc
    inc bc
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
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc b
    rlca
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
    ld [bc], a
    inc b
    inc b
    rlca
    rlca
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
    inc b
    inc b
    rlca
    rlca
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
    ld [bc], a
    inc b
    rlca
    rlca
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, $00
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld b, $06
    nop
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    dec b
    nop
    nop
    nop
    dec b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$40
    db $fc
    ld h, b
    ld hl, sp+$20
    ld hl, sp+$20
    db $fc

jr_0c1_40f9:
    jr nz, jr_0c1_40f9

    db $10
    cp $10
    cp $10
    ld a, h
    db $10
    ld a, a
    ld [$087e], sp
    ld a, a
    ld [$0c3f], sp
    ccf
    inc b
    ccf
    inc b
    ccf
    inc b
    rra
    ld b, $1f
    ld [bc], a
    ld e, a
    ld [bc], a
    ld a, a
    inc bc
    ld a, a
    ld bc, $012f
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rlc b
    rst $38
    nop
    ei
    add b
    ld a, [$fa80]
    ret nz

    ldh [rP1], a
    ldh a, [$80]
    ld [hl], b
    ret nz

    ld a, b
    ldh [$78], a
    ldh [rNR32], a
    ldh a, [$0e]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    add a
    db $fc
    rst $08
    ld a, [hl]
    jp hl


    ld a, $61
    ccf
    ld sp, $181f
    rrca
    dec c
    rlca
    rlca
    inc bc
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
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    ld e, $ff
    adc a
    rst $38
    rst $00
    rst $38
    add sp, -$08
    rst $38
    ld hl, sp+$3f
    ld hl, sp+$1f
    cp $07
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
    ld a, a
    nop
    ccf
    nop
    dec de
    nop
    rrca
    nop
    rrca
    nop
    dec b
    nop
    add a
    nop
    db $d3
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    pop af
    nop
    inc a
    ret nz

    rlca
    ld hl, sp+$28
    rst $38
    add b
    nop
    xor c
    nop
    ld d, d
    nop
    dec h
    nop
    ld c, e
    nop
    ld sp, $3a80
    ret nz

    inc de
    ldh [$fe], a
    nop
    rst $38
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
    nop
    nop
    nop
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
    rst $38
    ld b, b
    rst $38
    ld h, b
    db $fd
    jr nz, jr_0c1_4265

    db $10
    cp $10
    cp [hl]
    ld [$04fe], sp
    rst $38
    nop
    rst $38
    ld [bc], a
    ld a, a
    ld bc, $007f
    ccf
    nop
    ccf
    nop
    rra
    inc b
    adc a
    ld [bc], a
    jp $8000


    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [$80]
    db $fc
    ret nz

    cp $80
    rst $00
    rst $38
    add e
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    ldh a, [$af]
    ldh a, [$ef]
    nop
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
    ldh a, [$7f]
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$3f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    add b

jr_0c1_4265:
    rlca
    jr nz, jr_0c1_4269

    ld d, b

jr_0c1_4269:
    nop
    ld d, b
    nop
    xor l
    nop
    ld l, b
    nop
    add hl, de
    ld c, $1d
    ld c, $9d
    ld c, $9d
    ld c, $99
    ld b, $9d
    ld c, $dc
    rlca
    call c, $cc07
    rlca
    call z, $8c07
    inc bc
    xor $03
    and $01
    rst $20
    ld bc, $00e3
    db $e3
    nop
    pop bc
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    jr nc, jr_0c1_429a

jr_0c1_429a:
    ld e, $00
    sbc a
    nop
    adc a
    nop
    rst $00
    nop
    rst $20
    nop
    rst $20
    nop
    rst $30
    nop
    scf
    nop
    rra
    nop
    rrca
    nop
    rrca
    ld bc, $0307
    add a
    inc bc
    add a
    nop
    add $80
    ld [c], a
    ld b, b
    rst $20
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    cp $f1
    cp $7f
    call z, $c07f
    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [rNR13]
    ldh a, [rNR10]

jr_0c1_42d0:
    ldh a, [$30]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
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
    db $fc
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld sp, hl
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    inc bc
    ld b, b
    ld bc, $01bc
    jr jr_0c1_4332

jr_0c1_4332:
    jr jr_0c1_4334

jr_0c1_4334:
    jr jr_0c1_4336

jr_0c1_4336:
    ld [$1c00], sp
    nop
    add hl, bc
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    add b
    nop
    and b
    nop
    ldh [rP1], a
    ld [hl], c
    add b
    ld [hl], d
    add b
    ld [hl], c
    add b
    jr jr_0c1_42d0

    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rSB]
    ldh a, [rSB]
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $80
    cp $82
    db $fc
    call nz, $f8f8
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_0c1_4382:
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]

Jump_0c1_43a3:
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
    ld hl, sp+$00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld d, h
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
    dec b
    cp $04
    nop
    ld d, h
    nop
    ld b, b
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    ld bc, $0300
    nop
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
    rrca
    rst $38
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
    inc bc
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$03
    rst $38
    rla
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp $7f
    cp $fa
    db $fc
    rst $38
    ld hl, sp-$08
    ld hl, sp-$17
    ldh a, [$e2]
    ret nz

    ld b, b
    add b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    rla
    inc bc
    rlca
    inc bc
    ld [$0007], sp
    rrca
    nop
    rra
    ld b, b
    rra
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
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
    nop
    ccf
    nop
    ccf
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
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fd
    db $fc
    db $fc
    ld hl, sp-$06
    ldh a, [$f1]
    ldh a, [$f8]
    ldh [$e2], a
    ret nz

    ret z

    ret nz

    ret nz

    add b
    nop
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
    cp $20
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    nop
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
    ld [hl], a
    nop
    daa
    nop
    ld bc, $0000
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
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rIF]
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    cp $7e
    cp $ff
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    db $fc
    ldh a, [$e0]
    ldh a, [$f8]
    ldh [$f0], a
    ret nz

    sub b
    ret nz

    ret nz

    add b
    ret nz

    nop
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [c]
    nop
    jp hl


    nop
    ld [c], a
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    and b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    rst $38
    cp $fc
    cp $fe
    db $fc
    cp $f8
    ld a, [c]
    ld hl, sp-$04
    ldh a, [$f1]
    ldh [$c8], a
    ldh [$e0], a
    ret nz

    and b
    ret nz

    and b
    add b
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
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    ldh [$1f], a
    nop
    nop
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
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld a, [c]
    rst $38
    ld a, [c]
    rst $30
    ld hl, sp-$1d
    set 4, b
    call nz, $c0c0
    add b
    ld b, b
    add b
    nop
    nop
    add b
    rst $38
    ld b, b
    rst $38
    add b
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$08]
    ldh [rP1], a
    ldh [rTIMA], a
    ret nz

    nop
    add b
    inc b
    add b
    nop
    nop
    nop
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
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ld a, $c1
    ld a, $83
    ld a, h
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, a
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
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    jr c, jr_0c1_46e3

jr_0c1_46e3:
    nop
    nop
    nop
    nop
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
    cp $ff
    rst $30
    cp $e5
    cp $ea
    db $fc
    db $db
    db $fc
    call nc, $bdf8
    ldh a, [$a8]
    ldh a, [$f0]
    ldh [$d1], a
    ldh [$a1], a
    ret nz

    xor b
    pop bc
    ld b, d
    add c
    call nz, $8803
    rlca
    ret z

    rlca
    add b
    rrca
    db $10
    rrca
    nop
    rra
    nop
    ccf
    ld b, b
    ccf
    ld a, a
    nop
    cp $00
    ld a, [hl]
    nop
    cp h
    nop
    inc a
    nop
    ld c, b
    nop
    jr nc, jr_0c1_472e

jr_0c1_472e:
    stop
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
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    pop hl
    ld e, $c1
    ld a, $c3
    inc a
    add e
    ld a, h
    add a
    ld a, b
    rrca
    ldh a, [rIF]
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
    nop
    nop
    nop
    inc b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fd
    cp $fc
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$0c
    ld hl, sp-$18
    ldh a, [$e8]
    pop af
    pop de
    ldh [$f1], a
    ret nz

    and d
    pop bc
    ld b, h
    add c
    add $01
    ret z

    inc bc
    call nz, Call_000_1003
    rlca
    add b
    rrca
    jr nc, jr_0c1_47ad

    jr nc, jr_0c1_47af

    jr nz, jr_0c1_47c1

    nop
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop

jr_0c1_47ad:
    rst $38
    nop

jr_0c1_47af:
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

jr_0c1_47c1:
    rst $38
    ld hl, sp+$1f
    ld hl, sp+$0f
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
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
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
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    db $fc
    rst $38
    ei
    db $fc
    ld a, [$f5fd]
    ld a, [$fcf3]
    ld h, e
    db $fc
    ld h, d
    db $fd
    add $f9
    call $8af3
    rst $30
    sbc d
    rst $20
    inc [hl]
    rst $08
    ldh a, [rIF]
    ld c, b
    rra
    or b
    rra
    db $10
    ccf
    ld bc, $033f
    ld a, a
    rlca
    ld a, a
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
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    pop bc
    ccf
    ldh [$1f], a
    ldh a, [rIF]
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    rlca
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
    nop
    nop
    nop
    add hl, bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld b, $04
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $20
    add c
    rst $30
    pop bc
    rst $30
    add b
    di
    add b
    di
    ret nz

    ei
    ret nz

    rst $38
    ret nz

    rst $18
    pop bc
    add b
    rst $08
    add b
    rst $08
    nop
    rst $20
    nop
    rst $30
    ld bc, $813f
    rra
    pop bc
    adc a
    ldh a, [$e0]
    ei
    add b
    cp e
    add b
    ld sp, hl
    add b
    db $db
    ret


    rst $18
    adc c
    rst $38
    ld b, [hl]
    rst $38
    push hl
    rst $38
    db $f4
    rla
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
    cp $f8
    ldh [$e0], a
    nop
    ldh a, [rSB]
    or c
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fc
    ld [$61f0], sp
    add b
    add h
    inc bc
    inc de
    rrca
    ld c, h
    ccf
    ld b, c
    ld a, $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
    ldh a, [rDMA]
    add c
    dec de
    rlca
    ld c, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    ld sp, hl
    ld b, $f7
    ld [$00ef], sp
    cp b
    inc bc
    db $e3
    rrca
    adc a
    ccf
    ld a, a
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    dec bc
    ld [$0808], sp
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
    dec c
    ld [$0e08], sp
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
    db $10
    ld [$1211], sp
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    rlca
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
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
    inc bc
    ld bc, $0000
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
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
    inc bc
    ld bc, $0100
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
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$02
    ld hl, sp-$0c
    ld hl, sp-$18
    ldh a, [$d0]
    ldh [rNR41], a
    ret nz

    ld b, b
    add c
    add b
    inc bc
    nop
    rlca
    inc bc
    rrca
    rla
    rrca
    cpl
    rra
    rra
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    rra
    ccf
    ccf
    rra
    cpl
    rra
    sbc a
    rrca
    add a
    rrca
    ccf
    rst $00
    dec de
    ld h, a
    rrca
    ld [hl], c
    daa
    jr c, jr_0c1_4e8c

    inc a
    ld a, c
    ld a, [hl]
    ld a, h
    ld a, a
    ld a, [hl]
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
    push bc
    nop
    db $e3
    nop
    ld c, $01
    add h
    inc bc
    add sp, $07
    dec sp
    rlca
    dec bc
    scf
    rlca
    ld a, a
    daa
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

jr_0c1_4e8c:
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
    ccf
    ccf
    rra
    rra
    adc a
    rrca
    jp $e103


    add c
    ldh a, [$c0]
    db $fc
    ldh [$fe], a
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    ld [hl], a
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
    ld a, a
    ld a, a
    ld e, a
    rra
    rra
    rlca
    push bc
    nop
    ld [$fd00], a
    ret nz

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
    cp $fe
    db $fd

Jump_0c1_4eff:
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f0]
    ldh [$d0], a
    ret nz

    pop bc
    nop
    ld bc, $4b00
    nop
    rst $38
    nop
    cp $81
    db $fc
    db $e3
    ld sp, hl
    cp $ff
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
    cp $fe
    cp $fe
    cp $fc
    ld sp, hl
    ld hl, sp-$0b
    ldh a, [$f9]
    ldh a, [$e3]
    ldh [$e3], a
    ret nz

    rst $00
    add c
    adc e
    ld bc, $0397
    rrca
    rlca
    rra
    rlca
    rra
    rlca
    ccf
    rrca
    ccf
    rra
    cp a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    dec sp
    call nz, $827d
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$09
    ldh a, [rIE]
    pop hl
    rst $28
    pop hl
    rst $18
    jp $83df


    ld a, a
    rlca
    cp a
    rrca
    cp a
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
    rlca
    ld [$0009], sp
    nop
    nop
    nop
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
    dec bc
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
    dec c
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    inc de
    inc d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0606
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0006
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    cp $3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    rra
    ldh a, [rNR34]
    ldh a, [rIE]
    nop
    db $fd
    nop
    or $00
    jr c, jr_0c1_5234

jr_0c1_5234:
    xor b
    nop
    inc b
    nop
    ld [$0900], sp
    ld bc, $0787
    ld c, a
    adc a
    cp a
    ld e, a
    cp a
    ld b, a
    rst $18
    jr nz, @+$01

    nop
    cp $00
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc d
    db $eb
    sub e
    ld l, h
    ld a, e
    add h
    xor a
    ld d, b
    db $ed
    stop
    nop
    nop
    nop
    jr nz, jr_0c1_5266

jr_0c1_5266:
    rlca
    rlca
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$07
    ret nz

    rst $10
    nop
    ld e, b
    inc bc
    rst $00
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], l
    adc d
    ccf
    ret nz

    rst $38
    nop
    ld e, a
    and b
    ld sp, hl
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    ld bc, $0f01
    rrca
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh a, [$f0]
    ret nz

    cp b
    ret nz

    sub b
    ld h, b
    ld e, l
    jr nz, jr_0c1_52b2

    jr nc, jr_0c1_52ac

    ld hl, sp-$1d
    db $fc
    ldh a, [rIE]
    ldh a, [rIE]

jr_0c1_52ac:
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    nop

jr_0c1_52b2:
    nop
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
    rra
    rra
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    rrca
    nop
    ccf
    nop
    ld hl, sp+$07
    ldh a, [rIF]
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
    rst $38
    rst $38
    rst $38
    cp $fe
    call nz, Call_000_00cc
    inc b
    nop
    ld b, $00
    dec c
    ld [bc], a
    inc e
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    jp nz, Jump_000_023f

    rst $38
    ld [bc], a
    rst $38
    rla
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    inc a
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    ld bc, $01ff
    rst $38
    sub e
    rst $38
    dec d
    rst $38
    nop
    nop
    ld a, [$fff8]
    cp $fe
    ldh a, [$f1]
    add b
    adc a
    nop
    ld a, b
    rlca
    rrca
    ccf
    rst $38
    rra
    rst $18
    ccf
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
    rst $18
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    rra
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
    nop
    ld [$0a09], sp
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
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
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
    ld d, $17
    jr jr_0c1_53ef

    ld a, [de]
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c1_53ef:
    nop
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_0c1_5421

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c1_543a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c1_5421:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c1_543a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld [hl], a
    rst $38
    nop
    adc d
    nop
    nop
    ld c, a
    ldh a, [rP1]
    rst $38
    dec b
    ld a, [$f906]
    ld a, [bc]
    push af
    rlca
    ld hl, sp+$26
    reti


    rrca
    ldh a, [$2f]
    ret nc

    ccf
    ret nz

    dec de
    db $e4
    ld e, a
    and b
    ld a, e
    add h
    ld d, a
    xor b
    ccf
    ret nz

    rra
    add sp, $6f
    sub h
    cp a
    ld b, e
    ld a, a
    add b
    ld a, [hl]
    add b
    rst $28
    db $10
    ld e, l
    and b
    add hl, de
    ldh [$3a], a
    ret nz

    ld a, h
    add b
    ld a, l
    add c
    ld a, [hl]
    add e
    ccf
    call z, Call_0c1_609f
    ld [hl], $c9
    cp a
    ld b, b
    rrca
    ldh a, [$1f]
    ldh [rTAC], a
    ld hl, sp+$25
    jp c, $dd23

    inc bc
    db $fc
    ld de, $f4ee
    rst $38
    db $fc
    rst $38
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    ld c, a
    nop
    nop
    ei
    nop
    rrca
    ldh a, [$6f]
    sub b
    cp a
    ld b, b
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    or $00
    ld [$e800], a
    nop
    reti


    ld bc, $03e6
    db $ed
    ld b, $ab
    inc c
    ld d, [hl]
    add hl, de
    db $ed
    inc sp
    ld l, a
    inc sp
    reti


    rst $20
    pop de
    ld l, c
    ld d, c
    ld h, c
    and b
    ret nc

    and c
    pop de
    and c
    pop bc
    and c
    pop bc
    jp nz, Jump_0c1_43a3

    add d
    xor e
    ld a, [bc]
    rst $28
    ld b, $e7
    ld [bc], a
    ld b, e
    ld b, d
    ld h, e
    ld [hl+], a
    cp a
    ld e, $ff
    ld [bc], a
    ld [c], a
    inc bc
    jp hl


    ld bc, $83c3
    db $fd
    ld a, [hl]
    rst $38
    nop
    inc b
    ei
    pop bc
    rst $38
    inc b
    pop bc
    ld l, b
    add [hl]
    ld [hl-], a
    call z, $f806
    ld bc, $02fc
    db $fd
    ld [$1cff], sp
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
    cp $ff
    or l
    dec de
    sub $19
    jp c, $f71d

    dec e
    sbc l
    rla
    sbc e
    rla
    ld e, $17
    dec d
    ld e, $9b
    inc e
    ld d, $19
    ld l, l
    ld [hl], e
    sub d
    rst $28
    ld [hl], h
    sbc a
    cp d
    ld l, l
    ld d, l
    ei
    or a
    db $db
    ld l, d
    or a
    ld l, d
    or a
    jp nc, $d66b

    ld h, a
    and a
    sub $87
    or $87
    db $76
    add a
    db $76
    or l
    ld c, h
    push af
    ld c, h
    dec [hl]
    xor h
    add hl, de
    sub h
    add hl, de
    sub h
    add hl, sp
    or h
    ld e, c
    call nc, $9419
    jr nc, @-$55

    ld sp, $e3a9
    ld d, c
    add e
    ld h, c
    add a
    ld b, d
    adc a
    call nz, $99be
    rst $38
    add b
    sub l
    ld l, e
    nop
    nop
    ld h, b
    nop
    db $76
    ld bc, $1e40
    add c
    ld a, h
    rlca
    ld hl, sp+$03
    db $fc
    ld b, $f9
    nop
    xor b
    nop
    ret nc

    nop
    ld [c], a
    nop
    db $fd
    nop
    rst $30
    cp $ff
    ld bc, $0009
    adc b
    rst $18
    xor $a9
    rst $38
    cp h
    ei
    db $76
    cp c
    db $76
    cp c
    or [hl]
    ld a, c
    ld [hl], e
    db $fd
    ld a, c
    rst $38
    xor l
    rst $38
    dec sp
    rst $30
    sbc [hl]
    pop af
    sub a
    db $f4
    sub a
    or $ab
    db $db
    or l
    call $e79b
    call z, $dbf3
    add sp, -$2f
    jp hl


    and c
    ld sp, hl
    sbc e
    rst $30
    cp e
    rst $30
    cp l
    db $eb
    rst $38
    or l
    db $d3
    sub [hl]
    push de
    sub e
    push de
    sub e
    rst $10
    sub l
    jp c, $9a99

    reti


    sbc d
    reti


    xor e
    add sp, $2b
    xor b
    rst $20
    ld h, c
    push bc
    ld b, e
    rst $18
    jp nz, $86fb

    ld [hl], l
    adc a
    cp a
    ld c, c
    cp d
    ld d, l
    ld hl, $c0fe
    rst $38
    ld [$7dff], sp
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [bc], a
    nop
    jr nz, jr_0c1_57c5

jr_0c1_57c5:
    nop
    nop
    ld b, b
    nop
    cp $01
    sbc a
    ret nz

    pop bc
    nop
    ccf
    cp h
    ld h, e
    or c
    ld h, b
    ld a, [$ffa0]
    and b
    rst $38
    and b
    rst $38
    and b
    rst $28
    and b
    ld e, e
    cp b
    and a
    call c, $e7db
    db $ec
    di
    or d
    cp l
    ld e, l
    sbc $ae
    ld l, a
    or [hl]
    db $76
    or a
    ld [hl], a
    db $db
    dec sp
    ld e, l
    or l
    rst $18
    or e
    rst $18
    or c
    rst $18
    or c
    rla
    ld [hl], b
    cpl
    ld e, b
    dec hl
    jr jr_0c1_582c

    jr jr_0c1_5832

    inc e
    cpl
    inc e
    cpl
    inc e
    xor a
    sbc l
    xor a
    sbc d
    xor a
    sbc d
    jp c, $dfb6

    or [hl]
    ld a, $16
    ld a, a
    rla
    rst $30
    dec de
    ld [hl], $df
    or b
    ld e, a
    or b
    ld e, a
    rst $18
    rst $28
    nop
    rst $38
    nop
    ccf
    ld a, h
    inc bc
    reti


    jr nz, jr_0c1_5830

    ld hl, sp-$63
    ld h, b

jr_0c1_582c:
    cp $01
    dec e
    ld [c], a

jr_0c1_5830:
    inc bc
    ld a, a

jr_0c1_5832:
    nop
    nop
    nop
    nop

jr_0c1_5836:
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld [$a8ff], sp
    rst $38
    rrca
    rst $38
    ld a, a
    nop
    cp a
    nop
    add h
    ld a, e
    and $19
    rst $18
    jr nz, jr_0c1_5836

    ld d, $f7
    ld [$02fd], sp
    ld a, [$fe05]
    add c
    db $fd
    add d
    ld a, a
    ret nz

    cp [hl]
    ld h, c
    cp a
    ld h, b
    ld e, a
    jr nc, jr_0c1_58c0

    jr nc, jr_0c1_58e2

    db $10
    rst $28
    sbc b
    xor a
    sbc b
    xor a
    sbc c
    rst $28
    sbc $ff
    adc b
    rst $28
    sbc b
    cp a
    adc b
    xor h
    sbc b
    add sp, -$68
    xor b
    sbc b

jr_0c1_5878:
    push af
    inc e
    db $db
    scf
    ld e, a
    jr nc, jr_0c1_5878

    jr nz, jr_0c1_58fd

    inc hl
    ret nc

    ccf
    ldh a, [$9f]
    db $ec
    rst $18
    ld a, h
    rst $28
    db $76
    adc a
    db $dd
    db $e3
    rst $08
    cp $f5
    ld [$28d7], sp
    ccf
    ret nz

    rst $18
    nop
    and a
    ld [$00df], sp
    db $fd
    ld [bc], a
    db $e3
    inc e
    rst $38
    rst $38
    nop
    inc bc
    nop
    inc bc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    and b
    ld e, a

jr_0c1_58c0:
    ret nz

    ccf
    ret nz

    ccf
    or b
    ld c, a
    ret nz

    ccf
    and b
    ld e, a
    adc b
    ld [hl], a
    ld b, h
    cp e
    xor d
    ld d, l
    db $ec
    inc de
    and h
    ld e, e
    ret c

    daa
    call nc, $ffab
    nop
    add sp, $17
    push af
    ld a, [bc]
    call z, $f033
    rrca

jr_0c1_58e2:
    scf
    ld [$017e], sp
    db $e4
    dec de
    di
    inc c
    ldh a, [rIF]
    db $f4
    dec bc
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38

jr_0c1_58fd:
    ei
    rst $38
    rlca
    add b
    ld a, a
    adc [hl]
    ld [hl], d
    or e
    ld c, a
    rst $30
    rrca
    add $3f
    ld c, h
    or l
    and h
    ld e, h
    ld b, [hl]
    cp [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0c1_596e

jr_0c1_596e:
    nop
    nop
    nop
    dec c
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c1_599c

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    dec c
    inc h
    dec h
    ld h, $27
    jr z, jr_0c1_59b1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    cpl
    jr nc, jr_0c1_59c5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0c1_59d5

jr_0c1_599c:
    ld a, [hl-]
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop

jr_0c1_59b1:
    ld b, a
    ld c, b
    ld c, c
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
    nop
    nop
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_0c1_59c5:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    nop
    nop
    nop
    nop
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_0c1_59d5:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    nop
    nop
    nop
    nop
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
    halt
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    add e
    add h
    rrca
    add l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0701
    rlca
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
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
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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

Call_0c1_5afb:
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
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
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    rlca
    rlca
    inc b
    ld [bc], a
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rst $38
    nop
    rst $38
    nop
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
    ei
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    adc a
    nop
    ld e, e
    nop
    dec c
    nop
    ldh [rP1], a
    db $f4
    ld a, [$fcff]
    rst $38
    db $f4
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    ret z

    rst $38
    xor b
    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    sub h
    rst $38
    adc b
    rst $38
    ldh [rIE], a
    add h
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    cp b
    rst $18
    or b
    rst $18
    xor d
    rst $18
    inc d
    rst $28
    dec de
    rst $30
    rla
    ld hl, sp-$7f
    cp $c0
    rst $38
    nop
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ret z

    rst $38
    ldh a, [rIE]
    push hl
    rst $38
    ret nc

    rst $38
    add sp, -$01
    ldh [rIE], a
    di
    rst $38
    pop af
    rst $38
    ld a, [$fdff]
    cp $fe
    pop bc
    ldh a, [rIE]
    ldh a, [rIE]
    inc bc
    db $fc
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
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    ld a, a
    add b
    rst $38
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
    add c
    nop
    rst $28
    db $10
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
    ld b, b
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    nop
    ld [hl], h
    nop
    xor b
    nop
    ld [hl], b
    nop
    ld e, e
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
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
    nop

Call_0c1_5c9f:
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    dec b
    cp $f9
    cp $8b
    ld a, h
    ei
    inc c
    dec bc
    db $fc
    dec de
    db $ec
    rla
    ld hl, sp+$16
    ld sp, hl
    ld d, $f9
    ld d, [hl]

jr_0c1_5cc3:
    ld sp, hl
    inc l

jr_0c1_5cc5:
    di
    inc l
    di
    dec l
    ld a, [c]
    jr z, jr_0c1_5cc3

    jr z, jr_0c1_5cc5

    ld e, d
    push hl
    or b
    rst $08
    ld h, b
    sbc a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc l
    rst $30
    rst $28
    rst $30
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ld [bc], a
    ei
    inc b
    db $e4
    rra
    ret z

    ccf
    jr z, @+$01

    ld [hl], d
    db $fd
    ld d, $e9
    cp $01
    cp $01
    ld a, $01
    ld a, [hl-]
    dec b
    jr c, jr_0c1_5d14

jr_0c1_5d14:
    ccf
    nop
    ld a, [de]
    dec h
    ld a, [de]
    dec h
    ld a, [$fa05]
    dec b
    ld hl, sp+$07
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl+]
    push de
    rra
    ldh [$7f], a
    add b

jr_0c1_5d2c:
    sub a
    add sp, $00
    rst $38
    rrca
    ldh a, [rNR12]
    db $ed
    daa
    ret c

    add hl, de
    and $3f
    ret nz

    ld d, a
    xor b
    dec e
    ld [c], a
    ld e, a
    and b
    rst $00
    jr c, jr_0c1_5dc2

    add b
    cp a
    ld b, b
    ld e, a
    and b
    ld [hl], a
    adc b
    rst $28
    ld de, $47ba
    db $fc
    rlca
    ret c

    cpl
    pop af
    ld e, $63
    cp h
    rst $00
    ld hl, sp+$1e
    pop hl
    inc a
    jp $8f71


    db $e3
    dec e
    rst $00
    ccf
    ret


    scf
    sbc a
    ld h, c
    sbc c
    ld h, c
    ld l, $d0
    jr c, jr_0c1_5d2c

    ld a, [hl]
    add b
    ld a, e
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    rst $28
    db $10
    rst $38
    ld bc, $936d
    rra
    pop hl
    ld e, $e3
    ld e, $e3
    ld e, $e3
    inc a
    rst $10
    or h
    ld e, a
    inc a
    rst $08
    inc a
    rst $08
    inc e
    rst $20
    inc e
    rst $20
    ld c, h
    or a
    ld h, h
    rst $38
    db $fc
    rlca
    db $fc
    rst $38
    db $fc
    rlca
    db $fc
    rst $20
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    add b
    inc bc
    inc bc
    rst $00
    rst $38
    rst $00
    rst $38
    ld l, [hl]
    cp $7e
    cp $74
    db $fc
    ld l, h
    db $fd
    ld a, b
    ld sp, hl
    ld a, b
    ld a, [$f470]
    ld b, c
    ret


    rlca
    scf

jr_0c1_5dc2:
    rlca
    rst $00
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ret nc

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01f9
    rst $30
    ld bc, $01ff
    rst $00
    add hl, sp
    ld a, a
    add c
    cp a
    ld b, c
    ld a, a
    add c
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    rst $38
    ld bc, $01fd
    db $fd
    ld bc, $01f9
    or $07
    ld hl, sp+$1f
    pop hl
    ld a, [hl]
    add a
    ld hl, sp+$1c
    db $e3
    ld [hl], c
    adc a
    or $0f
    jp hl


    ld e, $93
    ld a, h
    daa
    ld sp, hl
    ld c, l
    di
    sbc d
    rst $20
    ld [hl-], a
    rst $08
    inc [hl]
    rst $08
    ld h, h
    sbc a
    ld l, c
    sbc [hl]
    ld [hl], e
    sbc h
    ld [hl-], a
    db $dd
    and h
    ld a, [$faa4]
    ld c, h
    ld [hl], e
    ld c, d
    ld [hl], l
    adc d
    push af
    sbc e
    db $e4
    sub a
    add sp, $33
    call z, $dc23
    ld hl, $39de
    sbc $7c
    add a
    ld [hl], d
    add e
    ld h, l
    add c
    ld a, a
    add c
    db $fd
    ld bc, $01fb
    ei
    inc bc
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    add hl, de
    ld sp, hl
    rlca
    ld a, [c]
    ccf
    adc $3b
    db $fc
    scf
    db $fd
    ld h, $7b
    adc h
    ld [hl], a
    sbc b
    ld h, d
    db $fd
    add l
    ei
    dec bc
    rst $30
    daa
    rst $18
    ld e, a
    cp $2f
    db $fd
    cpl
    cp $5f
    rst $38
    ld bc, $0b5f
    cp a
    rrca
    cp a
    inc a
    ld a, a
    ld a, a
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
    db $fc
    rst $38
    ldh [$fc], a
    ret nz

    ldh [rP1], a
    rst $38
    nop

jr_0c1_5e7d:
    rst $38
    nop
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
    inc b
    rst $38
    inc c
    rst $38

jr_0c1_5e8e:
    jr nc, jr_0c1_5e8e

    add c
    rst $38
    or b
    rst $08
    sbc h
    db $e3
    ld l, a
    ldh a, [$2e]
    pop af
    dec d
    ei
    ld d, l
    cp e
    ld d, l
    cp e
    ld d, l
    cp e
    ld l, a
    or e
    ld l, h
    or a
    ld a, c
    xor [hl]
    ld d, c
    cp $53
    db $fc
    inc hl

jr_0c1_5ead:
    db $fc
    ld h, $f9
    ld c, [hl]
    pop af
    sbc h
    db $e3
    jr c, jr_0c1_5e7d

    ld [hl], c
    adc a
    jp nz, $0c3f

    rst $30
    jr jr_0c1_5ead

    or b
    rst $18
    pop hl
    ld a, $c6
    ld a, c
    add l
    ei
    rrca
    di
    dec de
    rst $20
    ld [hl], $cf
    ld h, [hl]
    sub a
    ld b, [hl]
    and a
    add [hl]
    ld b, a
    ld b, $87
    ld b, $07
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $1f
    ld e, $1f
    sbc [hl]
    rra
    sbc h
    rra
    call c, Call_0c1_5c9f
    sbc l
    ld a, b
    db $dd
    jr c, @-$31

    jr c, @-$11

    jr jr_0c1_5f5e

    sbc b
    ld h, c
    sbc b
    ld [hl], c
    adc b
    ld sp, $31c8
    ret z

    ld sp, $33c8
    ret z

    inc sp
    call z, $8e71
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    pop hl
    ld e, $c3
    ld a, $ce
    dec a
    sbc [hl]
    ld a, l
    ccf
    db $fd
    ld a, l
    ei
    db $fd
    ei
    ei
    or $f5
    adc $db
    dec a
    rst $28
    di
    rst $38
    rlca
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add d
    rst $38
    adc d
    rst $38
    ld a, [$feff]
    rst $38
    cp $fe
    ld hl, sp-$07
    ldh a, [$fe]
    add b
    ldh a, [rP1]
    add c
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
    add b
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
    ld bc, $0100
    and e
    sbc $db
    and $7e
    di
    ld c, [hl]
    rst $38
    ld c, h
    rst $38
    ld b, a
    rst $38
    rst $00
    rst $38

jr_0c1_5f5e:
    rrca
    rst $38
    ld e, a
    or a
    ld e, a
    or a
    sbc a
    ld [hl], a
    cp a
    ld [hl], a
    cp a
    ld l, a
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $38
    ld c, h
    rst $38
    ld c, [hl]
    db $fd
    add a
    cp $07
    rst $38
    ld d, e
    rst $28
    ld d, e
    rst $28
    ld e, e
    rst $20
    reti


    ld h, a
    ld e, l
    db $e3
    call c, $dce3
    db $e3
    adc $f1
    ld c, a
    ldh a, [rVBK]
    ldh a, [rDMA]
    ld sp, hl
    ld h, [hl]
    ld sp, hl
    ld [hl], d
    db $fd
    ld [hl], d
    db $fd
    ld d, e
    db $fc
    ld d, c
    cp $49
    cp $44
    rst $38
    ld b, d
    rst $38
    ld d, d
    rst $28
    ld d, a
    rst $28
    ld e, a
    rst $28
    ld e, h
    rst $28
    ld e, [hl]
    db $ed
    ld e, a
    xor $5f
    rst $20
    ld d, a
    db $e3
    ld d, a
    db $e3
    ld d, a
    db $e3
    ld d, a
    db $e3
    ld d, e
    pop hl
    ld d, e
    pop hl
    ld d, e
    pop hl
    ld e, a
    pop hl
    ld e, a
    db $e3
    ld d, a
    db $eb
    ld e, a
    and $5d
    and $5f
    db $ec
    ld e, a
    db $ec
    cp a
    jp z, $cabd

jr_0c1_5fcc:
    cp b
    rst $10
    ld a, [hl]
    sub a
    ld a, a
    xor a
    ld a, a
    xor a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $00
    db $fc
    nop
    ld sp, hl
    nop
    ld a, [c]
    jr nz, jr_0c1_5fcc

    add b
    ret z

    ld bc, $0393
    ld h, e
    rrca
    adc a
    rra
    rra
    ld [hl], l
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
    ld b, b
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    cp $ff
    ld bc, $00ff
    ld b, e
    nop
    ld b, b
    ld c, a
    ldh a, [rBGP]
    ld hl, sp+$7d
    cp $42
    rst $38
    reti


    rst $20
    call z, $f6f3
    ld a, c
    set 7, h
    adc e
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    inc de
    db $fc
    ld [de], a
    db $fd
    ld d, $f9
    rst $20
    ld sp, hl
    push af
    ei
    rst $30
    ei
    ld [hl], e
    rst $38
    rrca
    rst $38
    rst $00
    ccf
    or b
    ld c, a
    ret c

    daa
    ld l, [hl]
    ld sp, $3877
    dec a
    ld e, $9e
    adc a
    ld c, a
    rst $00
    daa
    db $e3
    rla
    di
    adc a
    ld a, a
    ldh [$1f], a
    ld a, b
    add a
    ld a, $c1
    adc a
    ldh a, [rSCX]
    call z, Call_0c1_4382
    jp $c723


    daa
    rst $28
    rra
    ld l, a
    sbc a
    ld [hl], a
    adc a
    scf
    rst $08
    sbc e
    rst $20
    ld e, l
    db $e3
    xor a
    ld [hl], e
    push de
    dec sp
    ld l, [hl]
    sbc l
    ld [hl-], a
    rst $08
    dec sp
    ld b, [hl]
    db $db
    ld h, [hl]
    bit 6, [hl]
    db $fd
    ld [hl], e
    push hl
    db $eb
    db $e4
    res 2, [hl]
    jp hl


    or d
    db $fd
    ld a, [c]
    db $fd
    set 7, h
    ei
    call c, $bcdf
    db $db
    cp h
    jp c, $8fbd

    ld a, c
    ld [hl], l
    ei
    cp $f3
    db $eb
    or $fd
    rst $20
    rst $10
    db $ed
    db $ed
    rst $18
    db $d3
    cp [hl]
    xor d
    ld [hl], a
    ld e, l

Call_0c1_609f:
    db $e3
    nop
    adc c
    nop
    jr jr_0c1_60ad

    inc a
    jr z, jr_0c1_6126

    ld a, [hl]
    cp $ff
    rst $38
    rst $38

jr_0c1_60ad:
    rst $38
    push hl
    rst $38
    nop
    add b
    nop
    ld [bc], a
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
    rra
    nop
    nop
    nop
    nop
    ld c, b
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    cp $ff
    ldh [rIE], a
    ld bc, $0bff
    rst $38
    ret


    ccf
    rst $08
    ccf
    xor $1f
    ld l, [hl]
    sbc h
    xor l
    call c, $dcae
    xor a
    call c, $ec5f
    ld e, a
    db $ec
    rst $18
    ld l, h
    ld e, a
    db $ec
    ld d, a
    db $ec
    or l
    call z, $ce32
    ld a, l
    add e
    ld a, $c1
    rst $08
    ldh a, [$e7]
    ld hl, sp-$0d
    db $fc
    ld sp, hl
    cp [hl]
    ld a, h
    rst $18
    ld e, a
    rst $08
    ld c, a
    rst $00
    daa
    db $e3
    sub e
    ld [hl], c
    ret


    jr c, jr_0c1_614f

    cp b
    ld h, h
    sbc h
    ld h, h
    sbc h
    ld h, h
    sbc h
    ld h, d
    sbc [hl]
    inc sp
    rst $08
    or d
    ld c, a
    or d
    ld c, a
    db $d3
    ld l, $53
    xor [hl]
    sbc e
    and $da
    rst $20
    sbc d
    and [hl]
    ld a, [de]
    ld h, $1b
    ld h, $09
    rla

jr_0c1_6126:
    dec c
    inc de
    dec c
    inc de
    dec l
    inc de
    dec c
    inc de
    dec c
    inc de
    dec c
    inc de
    dec c
    inc bc
    dec c
    inc bc
    dec c
    inc bc
    db $dd
    inc bc
    db $fd
    add e
    adc l
    di
    db $fd
    or e
    ld e, c
    rst $30
    ld l, c
    rst $10
    ld a, d
    rst $00
    ld a, d
    rst $00
    ld [hl], e
    adc $f3
    xor [hl]
    ld [hl], e
    xor $f3

jr_0c1_614f:
    ld l, [hl]
    di
    xor $f3
    xor $e2
    rst $38
    db $eb
    or $ea
    rst $30
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    ld a, a
    nop
    ld a, d
    nop
    cp c
    db $10
    cp c
    db $10
    ld e, h
    inc e
    ld e, h
    inc e
    inc a
    sbc [hl]
    cp [hl]
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
    nop
    nop
    nop
    nop
    rlca
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp-$01
    ret nz

    ld a, [$f600]
    nop
    rst $38
    ld b, b
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
    nop
    sub a
    nop
    ld a, e
    nop
    rst $18
    nop
    ret c

    daa
    db $ed
    ld [de], a
    ei
    inc b
    cp $01
    ei
    inc b
    cp $01
    cp l
    ld [bc], a
    cp a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$9f], a
    ld a, b
    rst $00
    inc a
    di
    ld c, $79
    add a
    inc e
    db $e3
    add a
    ld hl, sp-$1d
    db $fc
    ld sp, hl
    or $f4
    di
    cp $79
    rst $38
    ld a, b
    ld a, a
    inc a
    ld a, l
    inc a
    ld a, a
    inc e
    sbc a
    adc h
    ld a, a
    adc $3f
    xor $1e
    cp $87
    ld a, [hl]
    jp $e23f


    rra
    ld h, d
    sbc a
    or c
    ld c, a
    cp c
    ld b, a
    sbc c
    daa
    reti


    and a
    jp hl


    sub a
    jp hl


    sub a
    jp hl


    sub a
    jp hl


    rst $10
    jp hl


    rst $30
    db $ed
    di
    db $ed
    di
    reti


    rst $20
    reti


    rst $20
    db $d3
    xor $f4
    rst $08
    xor a
    rst $18
    cp $9f
    ld e, d
    cp a
    rst $30
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld e, a
    cp a
    xor a
    rst $18
    db $d3
    rst $28
    xor $f1
    ld sp, hl
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    inc de
    cp a
    ccf
    cp a
    rrca
    ld c, a
    nop
    jr nz, jr_0c1_622f

jr_0c1_622f:
    rra
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
    ldh a, [rIE]
    ld hl, sp-$01
    nop
    rra
    nop
    rra
    add b
    rst $30
    nop
    add hl, de
    nop
    rlca
    nop
    xor a
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
    ld l, [hl]
    sub a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    cp b
    ld b, a
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    add sp, $17
    cp d
    ld b, l
    sub $29
    ld e, l
    and d
    and e
    ld e, h
    jp c, Jump_0c1_7325

    adc h
    db $ed
    ld [de], a
    ld l, c
    sub [hl]
    rst $30
    ld [$84fb], sp
    ld l, [hl]
    pop de
    cp d
    ld h, l
    jp c, $d535

    ld a, [hl-]
    ld l, [hl]
    sbc c
    jr z, @-$1f

    or a
    ld c, h
    ld d, $6d
    sub l
    ld l, [hl]
    sbc e
    ld h, [hl]
    jp z, $ca37

    scf
    db $ed
    inc de
    db $ed
    inc de
    db $e4
    dec de
    db $e4
    sbc e
    ld h, h
    ei
    ld b, $f9
    ld [hl], $c9
    ld d, $69
    db $76
    add hl, bc
    ld d, h
    dec bc
    ld [hl], h
    dec bc
    ld [hl], h
    dec bc
    db $f4
    dec bc
    inc l
    inc de
    ld l, h
    inc de
    db $ec
    inc de
    jp hl


    rla
    jp hl


    rla
    ld e, d
    and a
    sub e
    xor $17
    db $ed
    ld d, h
    rst $28
    dec d
    rst $28
    ld e, e
    rst $28
    ei
    rst $08
    db $eb
    rst $18
    db $eb
    rst $18
    push af
    rst $28
    push af
    rst $28
    ld a, [$faf7]
    rst $30
    db $fd
    ei
    db $fd
    ei
    cp [hl]
    ld a, c
    ld a, a
    adc h
    rst $38
    cp $ff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld d, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rlca
    rla
    rlca
    rla
    ld [bc], a
    rst $20
    db $10
    rra
    ld bc, $007f
    rst $38
    nop
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
    ld [hl], h
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    or l
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
    db $f4
    rst $38
    ret nc

    cpl
    ldh [$1f], a
    ld d, b
    xor a
    inc b
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    sbc b
    ld h, a
    inc h
    db $db
    db $10
    rst $28
    xor d
    ld d, l
    adc b
    ld [hl], a
    ret c

    daa
    jp Jump_0c1_683c


    sub a
    ld [$dc15], a
    inc hl
    and c
    ld e, [hl]
    ld c, [hl]
    or c
    ld l, c
    sub a
    and e
    sbc $c4
    cp a
    cp d
    db $dd
    db $e4
    ei
    sbc h
    db $e3
    ld hl, sp-$79
    cp c
    add $aa
    push de
    sub h
    db $eb
    add b
    rst $38
    ret nz

    cp a
    add b
    rst $38
    and h
    db $db
    add h
    ei
    add b
    rst $38
    and b
    rst $18
    ld d, b
    rst $38
    cp a
    ld a, a
    rst $18
    cp a
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
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
    ld a, a
    nop
    ccf
    ld [bc], a
    sbc a
    inc bc
    ld h, a
    nop
    jr jr_0c1_639f

jr_0c1_639f:
    rlca
    ret nz

    ret nz

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
    rst $38
    nop
    ld [$0000], sp
    nop
    nop
    ld c, $10
    rra
    jr c, jr_0c1_63fa

    ld a, b
    ccf
    ld a, h
    ld a, e
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    ld d, d
    rst $38
    adc [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    dec d
    rst $38
    nop
    rst $38
    nop
    dec [hl]
    nop
    dec l
    nop
    ld d, $00
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

jr_0c1_63fa:
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ret nz

    ccf
    add h
    ld a, a
    ld [$00f7], sp
    rst $38
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0c1_6413:
    rst $38
    ld bc, $00ff

jr_0c1_6417:
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld hl, $00ff
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    dec b
    nop
    inc de
    nop
    rst $38
    nop
    ld a, a
    jr jr_0c1_6417

    nop
    rst $38
    jr nz, jr_0c1_6413

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cpl
    rst $38
    ccf
    rst $38
    jr c, jr_0c1_64cd

    nop
    ld hl, sp+$03
    inc bc
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
    cp e
    rst $38
    nop
    inc bc
    nop
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc b
    rst $38
    xor c
    rst $38
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    set 7, a
    rla
    rst $38
    nop
    jp nz, $8000

    nop
    ret nz

    cp l
    rst $38
    ccf
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    xor a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    scf
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    jr z, jr_0c1_64c3

jr_0c1_64c3:
    nop
    nop
    ld hl, $0701
    ld bc, $0047
    rrca
    nop

jr_0c1_64cd:
    rla
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    nop
    rlca
    nop
    inc de
    nop
    rst $10
    nop
    ld d, a
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rlca
    nop
    inc hl
    nop
    ld h, e
    nop
    ld h, e
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc b
    rst $38
    ld a, [bc]
    rst $38
    add [hl]
    rst $38
    ld b, $3f
    dec bc
    ccf
    dec bc
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    sub d
    rst $38
    nop
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
    ld [de], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [$0a09], sp
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
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
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
    ld d, $17
    jr jr_0c1_65e4

    ld a, [de]
    dec de
    nop
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
    dec e
    ld e, $1f
    jr nz, jr_0c1_65fe

    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c1_65e4:
    nop
    nop
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0c1_6617

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c1_65fe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c1_6617:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c1_6689

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0c1_6699

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca

jr_0c1_6689:
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
    rlca
    rlca
    rlca
    rlca
    rlca

jr_0c1_6699:
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0701
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
    ld bc, $0107
    ld bc, $0101
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
    ld bc, $0107
    ld bc, $0101
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
    ld bc, $0107
    ld bc, $0101
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
    ld b, $06
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    ld b, $06
    ld bc, $0101
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
    ld b, $00
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
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
    rlca
    rlca
    rlca
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
    sbc a
    ld h, b
    adc a
    ld [hl], b
    sub a
    ld l, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$02
    rst $38
    add d
    ld a, a
    inc b
    ei
    ld [$a8f7], sp
    ld [hl], a
    ld [hl], b
    rst $38
    ld a, c
    rst $38
    add hl, sp
    rst $08
    ld a, [hl]
    rst $00
    xor a
    di
    ld a, [hl]
    rst $20
    ei
    rst $38
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    rst $30
    ei
    rst $28
    rst $38
    rst $00
    rst $38
    jp $b4ff


    rst $38
    sbc h
    rst $38
    cp [hl]
    rst $38
    jp c, $fbff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $30
    sbc [hl]
    add a
    ld e, a
    rlca
    and e
    inc bc
    rra
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld e, [hl]
    and c
    dec de
    db $e4

Jump_0c1_683c:
    and a
    ld hl, sp-$7b
    ld a, [$ff00]
    add e
    rst $38
    adc [hl]
    cp $57
    db $f4
    xor d
    db $eb
    push de
    ld a, [c]
    ld b, b
    rst $38
    pop de
    rst $38
    adc d
    rst $38
    add b
    rst $38
    add d
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
    pop bc
    rst $38
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    sub b
    rst $38
    adc h
    rst $38
    ld b, d
    rst $38
    and c
    ld a, a
    sub b
    ld a, a
    cp h
    rrca
    ld [bc], a
    sbc a
    add hl, sp
    add a
    ld [hl], b
    add e
    add d
    sub e
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    jp c, $ff25

    ccf
    rst $38
    ld [$547d], a
    xor [hl]
    ld bc, $0b71
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld e, a
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    rst $30
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
    rst $38
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
    dec h
    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp h
    ld b, e
    or h
    ld c, e
    ret c

    daa
    db $d3
    inc l
    pop hl
    ld e, $50
    xor a
    ldh [rIE], a
    ld e, c
    ccf
    ld a, $87
    daa
    or c
    ld sp, $0ae8
    ldh [rLYC], a
    ld a, [c]
    ld [de], a
    db $fd
    ld e, l
    rst $38
    xor d
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub h
    rst $38
    xor d
    rst $38
    ld d, l
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
    rst $38
    nop
    rst $38
    db $fc
    db $fc
    inc hl
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    add sp, $00
    db $fc
    inc b
    db $f4
    db $10
    add sp, $40
    cp b
    ld [de], a
    rst $28
    ld [bc], a
    ld a, [$fa00]
    ld [bc], a
    rst $38
    nop
    cp $80
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$09ff], sp
    rst $38
    add hl, bc
    rst $38
    add hl, bc
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
    cpl
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rlca
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
    ld bc, $b7ff
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0c1_69de:
    nop
    rst $38
    nop
    add b
    ld b, b
    ret nz

    ret z

    ret z

    adc b
    adc b
    and b
    and b
    ld hl, sp-$08
    push de
    push de
    db $fc
    db $fc
    add hl, bc
    or $00
    ld sp, hl
    nop
    db $fc
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    jr nz, jr_0c1_69de

    nop
    ret nz

    adc b
    ret z

    ret nz

    ret z

    and b
    ldh [$4c], a
    db $ec
    adc b
    call c, $fede
    rst $38
    rst $38
    db $f4
    rst $38
    cp $ff
    sbc $ff

jr_0c1_6a14:
    rst $38
    rst $38
    pop af
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    xor $ff
    sbc $ff
    ei
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    rst $38
    and a
    ld e, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0c1_6a3f:
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld [hl], e

jr_0c1_6a51:
    add b
    ld [hl], a
    add h
    ld h, $c5
    cpl
    ret z

    ld c, a
    adc b
    rst $18
    inc e
    sub a
    inc d
    and e
    jr nz, jr_0c1_6a14

    rst $18
    ei
    cp a
    di
    cp a
    rst $30
    ei
    rst $20
    ei
    rst $28
    rst $30
    rst $08
    rst $30
    rst $18
    db $e3
    sub a
    db $eb
    db $e3
    rst $18
    di
    rst $18
    ei
    cp a
    di
    cp a
    rst $30
    ei
    rst $20
    ei
    rst $28
    rst $30
    rst $08
    ld [$9c5f], sp
    rla
    sub h
    inc hl
    jr nz, jr_0c1_6abc

    and b
    ld a, c
    jp nz, $c170

    ld [hl], h
    add h
    ld h, h

jr_0c1_6a91:
    add a
    ld l, b
    adc [hl]
    ld c, b
    adc a
    inc e
    rst $18
    inc d
    rst $10
    jr nz, jr_0c1_6a3f

    jr nc, @-$5b

    ld a, b
    jp $c370


    ld [hl], h

jr_0c1_6aa3:
    add a
    ld h, h

jr_0c1_6aa5:
    add a
    ld l, b
    rrca
    ld c, b
    rrca
    ld e, h
    rra
    inc d
    sub l
    jr nz, jr_0c1_6a51

    jr nc, jr_0c1_6a91

    ld a, b
    cp a
    ld [hl], b
    cp a
    ld [hl], h

jr_0c1_6ab7:
    ei
    ld h, h

jr_0c1_6ab9:
    ei
    ld l, b
    rst $30

jr_0c1_6abc:
    ld c, b
    rst $30
    ld e, h
    db $e3
    inc d
    db $eb
    jr nz, jr_0c1_6aa3

    jr nc, jr_0c1_6aa5

    ld a, b
    cp a
    ld [hl], b
    cp a
    ld [hl], h
    ei

jr_0c1_6acc:
    ld h, h
    ei

jr_0c1_6ace:
    ld l, b
    rst $30
    ld c, b
    rst $30
    ld e, h
    db $e3
    inc d
    db $eb
    jr nz, jr_0c1_6ab7

    jr nc, jr_0c1_6ab9

    ld a, b
    cp a
    ld [hl], b
    cp a
    ld [hl], h
    ei
    ld h, h
    inc b
    ld l, b

jr_0c1_6ae3:
    ld [$0848], sp
    ld e, h
    inc e
    inc d
    sub h
    jr nz, jr_0c1_6acc

    jr nc, jr_0c1_6ace

    ld a, b
    pop bc
    ldh a, [rSCX]
    ld [hl], h

jr_0c1_6af3:
    add a
    ld h, h
    add a
    ld l, b

jr_0c1_6af7:
    adc a
    ld c, b

jr_0c1_6af9:
    adc a
    ld e, h
    sbc a
    ld d, $95
    jr nz, jr_0c1_6ae3

    jr nc, @-$1b

    ld a, b
    jp $c370


    ld [hl], h
    add a
    ld h, h
    add a
    ld l, b

jr_0c1_6b0b:
    adc a
    ld c, b

jr_0c1_6b0d:
    adc a
    ld e, h
    sbc a
    inc d
    sub a
    jr nz, jr_0c1_6af7

    jr nc, jr_0c1_6af9

    ld a, b
    jp $c370


    ld [hl], h
    add a
    ld h, h
    add a
    ld l, b
    adc a
    ld c, b
    adc a
    ld e, h
    sbc a
    inc d
    sub a
    jr nz, jr_0c1_6b0b

    jr nc, jr_0c1_6b0d

    ld a, b
    jp $c370


    ld [hl], h
    add a
    ld h, h
    add a
    ld l, b
    adc a
    ld c, b
    rrca
    ld e, h
    rra
    inc d
    rla
    ld h, b
    ld h, b
    ld [hl], b
    ld h, d
    ld a, b
    ld b, c
    ld [hl], b
    ret nz

    ld [hl], b
    add b
    ld h, b
    add c
    ld l, b
    adc h
    ld c, b
    rrca
    ld e, h
    rra
    inc d
    sub a
    jr nz, jr_0c1_6af3

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rlca
    ld [$0a09], sp
    dec bc
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
    dec c
    ld c, $0f
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
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0c1_6bee

jr_0c1_6bee:
    nop
    nop
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
    dec e
    ld e, $00
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
    jr nz, jr_0c1_6c2b

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c1_6c2b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    ld bc, $0101
    ld bc, $0701
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
    ld bc, $0106
    ld bc, $0101
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
    ld bc, $0107
    ld bc, $0101
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
    ld bc, $0707
    ld bc, $0101
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
    ld b, $06
    ld bc, $0100
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    ld b, $06
    ld bc, $0101
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc a
    ld h, b
    adc a
    ld [hl], b
    sub a
    ld l, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$02
    rst $38
    add d
    ld a, a
    inc b
    ei
    ld [$a8f7], sp
    ld [hl], a
    ld [hl], b
    rst $38
    ld a, c
    rst $38
    add hl, sp
    rst $08
    ld a, [hl]
    rst $00
    xor a
    di
    ld a, [hl]
    rst $20
    ei
    rst $38
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    rst $30
    ei
    rst $28
    rst $38
    rst $00
    rst $38
    jp $b4ff


    rst $38
    sbc h
    rst $38
    cp [hl]
    rst $38
    jp c, $fbff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $30
    sbc [hl]
    add a
    ld e, a
    rlca
    and e
    inc bc
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld e, [hl]
    and c
    dec de
    db $e4
    and a
    ld hl, sp-$7b
    ld a, [$fc03]
    add b
    rst $38
    add b
    rst $38
    ld b, c
    cp $80
    rst $38
    add b
    rst $38
    ld [de], a
    cp $94
    db $fd
    adc b
    rst $38
    sbc b
    rst $38
    sbc $ff
    db $fc
    rst $38
    cp $ff
    ei
    rst $38
    ld a, [$f8ff]
    rst $38
    db $fc
    rst $38
    ld a, [hl]
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
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $10
    rst $38
    ld d, e
    ldh a, [$8f]
    ld a, a
    sbc a
    ld l, a
    or [hl]
    rrca
    dec c
    sub h
    dec sp
    add h
    ld [hl], e
    add d
    add d
    sub e
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    jp c, $ca25

    dec [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    db $fd
    sub l
    rst $10
    ld [bc], a
    ld e, $34
    call z, $f1ff
    rst $38
    ld a, [hl-]
    rst $38
    db $76
    rst $38
    dec a
    rst $38
    cp a
    rst $38
    db $eb
    rst $38
    jr z, @+$01

    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$f5ff], a
    rst $38
    rst $38
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
    ld [$94ff], a
    dec hl
    rst $30
    rst $38
    rst $30
    rst $38
    sub l
    ei
    ei
    cp c
    ld a, d
    call $0c30
    dec a
    rst $38
    rst $38
    rst $38
    cp $01
    cp h
    ld b, e
    or h
    ld c, e
    ret c

    daa
    db $d3
    inc l
    pop hl
    ld e, $50
    xor a
    add b
    ld a, a
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ret nz

    ld a, a
    ld [hl], b
    ccf
    ret c

    cpl
    ld h, $5f
    set 7, a
    db $d3
    rst $38
    db $d3
    rst $38
    or e
    rst $38
    db $e3
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $51ff
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    db $fd
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld bc, $7fff
    rst $38
    ei
    rst $38
    and $d8
    rst $38
    ret c

    rst $20
    jr jr_0c1_6f7e

    rla
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    add sp, $00
    db $fc
    inc b
    db $f4
    db $10
    add sp, $40
    cp b
    ld [de], a
    rst $28
    ld [bc], a
    ld a, [$fa00]
    ld [bc], a
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
    rst $38

jr_0c1_6f7e:
    nop
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, e
    rst $38
    ldh [rIE], a
    ei
    db $fc
    db $fc
    rst $38
    ld a, a
    rst $38
    or a
    ld a, a
    ld e, e
    ld d, e
    rst $38
    rst $38
    rst $38
    rst $38

jr_0c1_6fbe:
    rst $38
    rst $38
    nop
    add b
    ld b, b
    ret nz

    ret z

    ret z

    adc b
    adc b
    and b
    and b
    ld hl, sp-$08
    push de
    push de
    db $fc
    db $fc
    add hl, bc
    or $00
    ld sp, hl
    nop
    db $fc
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    jr nz, jr_0c1_6fbe

    nop
    ret nz

    adc b
    ret z

    ret nz

    ret z

    and b
    ldh [$4c], a
    db $ec
    adc b
    call c, $fede
    rst $38
    rst $38
    db $f4
    rst $38
    cp $ff
    sbc $ff
    rst $38
    rst $38
    pop af
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    xor $ff
    sbc $ff
    ei
    rst $38
    cp $ff
    cp $ff
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
    ld e, a
    rst $38
    cpl
    rst $18
    ld sp, $16cf
    ret


    and a
    ld e, e
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    add hl, bc
    jr jr_0c1_7088

    ld a, [de]
    nop
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
    jr nz, jr_0c1_709f

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h

jr_0c1_7088:
    dec h
    ld h, $27
    jr z, jr_0c1_70b6

    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld l, $2f
    jr nc, jr_0c1_70cd

    ld [hl-], a
    inc sp
    inc [hl]

jr_0c1_709f:
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    jr c, jr_0c1_70e4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    nop

jr_0c1_70b6:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0c1_70cd:
    ld c, [hl]
    ld c, a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop

jr_0c1_70e4:
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $07
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    nop
    rlca
    ld b, $00
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    nop
    ld b, $07
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
    ld bc, $0107
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0601
    ld b, $06
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    rlca
    nop
    rlca
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0701
    ld b, $07
    nop
    rlca
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0701
    rlca
    rlca
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld hl, $0707
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cpl
    rra
    ccf
    dec e
    dec e
    rrca
    rra
    ld c, $1e
    ld c, $3f
    inc b
    or [hl]
    inc b
    xor $04
    cp a
    dec bc
    ld e, a
    ccf
    rst $38
    ld l, [hl]
    rst $38
    db $fc
    rst $38
    ld a, [$f7ff]
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld a, [$3bff]
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    ld a, [$74ff]
    rst $38
    rst $38
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
    ei
    rst $38
    rst $30
    rst $38
    ld e, a
    rst $38
    ld a, [$79ff]
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_0c1_7325:
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, $fe
    ld a, $7e
    ld a, c
    ld a, c
    ld a, c
    db $fd
    db $fc
    db $fc
    ld [hl], e
    ld [hl], e
    ld l, c
    jp hl


    di
    di
    db $fd
    rst $38
    sbc $ff
    ld e, $ff
    cp e
    rst $38
    rst $28
    db $fc
    sbc a
    ld hl, sp-$51
    ldh a, [rIE]
    ldh [$f5], a
    cp $5a
    cp $bd
    cp $bb
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    pop hl
    rst $38
    and $ff
    cp $ff
    sbc l
    rst $38
    sbc b
    rst $38
    ld a, [$98ff]
    rst $38
    or $ff
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    or l
    rst $38
    ld h, b
    rst $38
    dec [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $fe
    ld a, [hl]
    cp $7d
    ld a, a
    dec c
    dec c
    ld bc, $0703
    ld b, a
    call z, Call_0c1_7dee
    ld a, a
    ei
    ei
    rst $20
    rst $28
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    add b
    cp $ff
    db $fc
    db $fc
    pop af
    ldh a, [$f4]
    pop af
    ret nc

    add [hl]
    add b
    sub d
    ld h, l
    ld bc, $011d
    jp nz, $a183

    and c
    ldh a, [rSB]
    db $fc
    ld h, e
    or $85
    sbc a
    add b
    ld c, [hl]
    add $27
    ldh [$90], a
    cp $90
    rst $38
    ld [$0cff], sp
    rst $38
    ld a, [hl+]
    rst $38
    di
    db $fd
    ld a, e
    db $fd
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, a
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
    rst $38
    ei
    rst $38
    cp $ff
    xor e
    rst $28
    rlca
    scf
    dec bc
    rrca
    ld d, a
    rst $18
    rlca
    ld e, a
    ld c, a
    rst $38
    ld a, [hl]
    rst $38
    ld e, a
    rst $38
    rst $18
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
    sbc a
    rrca
    ld d, b
    inc l
    nop
    add d
    inc b
    ld a, [bc]
    db $10
    ld b, b
    sbc b
    jr jr_0c1_74fa

    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$5d85]
    ld [c], a
    xor a
    ld hl, sp+$15
    rst $38
    ld [bc], a
    rst $38
    ld bc, $501f
    ld e, a
    jr z, jr_0c1_74bf

    db $fc
    inc bc
    ld a, [hl+]
    ret


    inc c
    ldh a, [rTAC]
    db $fc
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    call nc, $eaff
    rst $38
    push bc
    rst $38
    ld a, [c]
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0c1_74bf:
    rst $38
    rst $18
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
    ei
    rst $38
    inc d
    rst $38
    cp l
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
    ld a, a
    rst $38
    ei
    rst $38
    rst $08
    rst $38
    rst $38
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
    cp $ff
    db $fd
    cp $ff
    db $fc

jr_0c1_74fa:
    ei
    db $fc
    adc c
    cp $8e
    pop af
    rst $38
    rra
    rra
    rra
    rlca
    ld h, [hl]
    ld [$3920], sp
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$5515], a
    xor d
    xor d
    ld d, l
    rst $38
    nop
    cp e
    call nz, $f857
    dec hl
    cp $05
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
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
    ld b, h
    rst $38
    add d
    rst $38
    ld d, h
    rst $38
    ld a, [hl+]
    rst $38
    sub l
    rst $38
    ld [$79ff], a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    and e
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $dd
    rst $38
    rst $18
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
    cp $ff
    cp $ff
    cp $ff
    cp [hl]
    rst $38
    cp a
    db $e4
    adc a
    ldh a, [$9f]
    ldh [$97], a
    ld hl, sp-$55
    call c, $e3fc
    rst $28
    pop de
    cp a
    jp $c3be


    dec l
    rst $30
    rst $28
    rra
    ld sp, hl
    rrca
    push af
    rra
    db $eb
    ccf
    pop hl
    ccf
    ld d, c
    rst $38
    and e
    cp $93
    cp $46
    db $fd
    add [hl]
    db $fd
    adc l
    dec sp
    call z, $f60b
    rlca
    ld sp, hl
    ld de, $42a2
    ld h, b
    add b
    or h
    ld b, b
    ld a, [hl]
    add b
    cp l
    ld b, c
    ld d, l
    xor c
    xor $10
    db $fd
    ld [bc], a
    cp d
    add l
    dec l
    and d
    inc bc
    ret nz

    ld de, $00d0
    ld hl, sp+$02
    cp $00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$b5ff], a
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    rst $38
    db $ec
    ccf
    pop hl

jr_0c1_7605:
    ccf
    db $d3
    ld a, a
    and a
    db $fc
    add [hl]
    db $fd
    ld c, l
    ei
    inc c
    ei
    sbc d
    rst $30
    inc [hl]
    rst $28
    jr nc, jr_0c1_7605

    ld l, b
    rst $18
    ld h, b
    rst $18
    ret nc

    cp a
    ret nz

    rst $38
    or b
    ld a, a
    ld c, b
    rst $38
    ld [$8cff], sp
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    push bc
    rst $38
    di
    ccf
    rst $38
    rra
    ld a, a
    ld b, a
    rst $38
    add hl, de
    rst $18
    adc d
    ld [hl], a
    ld d, c
    and a
    inc b
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, h
    dec e
    jr @+$0a

    add sp, $07
    ld [hl], a
    add [hl]
    dec e
    pop hl
    ld [bc], a
    ldh a, [rSB]
    ld hl, sp-$80
    db $fc
    ld bc, $80fe
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    push af
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [c]
    rst $38
    cp d
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call c, $feff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38

jr_0c1_768e:
    ld sp, hl
    rst $38
    ld l, a
    db $10
    cp $e0
    jr jr_0c1_768e

    daa
    rst $38
    ret z

    rst $38
    pop af
    ccf
    ld a, $cf
    ld c, a
    pop af
    ld de, $02fe
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, d
    db $fd
    call nz, Call_000_00ff
    rst $38
    nop
    rst $38
    add b
    db $fd
    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    pop de
    rst $38
    dec h
    ccf
    or e
    cp [hl]
    ei
    ld c, a
    cp $23
    rst $38
    dec e
    ld a, a
    ld [hl+], a
    rst $18
    ld d, e
    ld e, a
    inc c
    ld [hl], e
    db $10
    ld [$9188], a
    ld bc, $2707
    cp a
    ccf
    ld a, a
    ccf
    ccf
    ld e, [hl]
    rra
    xor [hl]
    rrca
    call nz, Call_000_2007
    rla
    add a
    rrca
    rst $10
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    ld c, [hl]
    rst $38
    adc h
    cp $4e
    db $fc
    ld l, $fc
    ret z

    db $fc
    ld l, a
    ld hl, sp-$05
    db $fc
    db $fc
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    push hl
    ld a, a
    cp a
    ld c, a
    reti


    rlca
    ld d, h
    add e
    push hl
    ld [c], a
    dec e
    ld a, [$ff27]
    adc b
    rst $38
    pop af
    ld a, a
    ld a, h
    adc a
    adc a
    di
    inc de
    db $fc
    inc b
    rst $38
    ld bc, $05ff
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    ld b, $f7
    adc d
    ld h, e
    inc e
    rst $20
    sbc h
    rst $10
    cp b
    ld b, l
    dec a
    push bc
    ld a, $b0
    sbc a
    jp nc, $f967

    ld h, [hl]
    db $fd
    jp $c0fd


    rst $38
    ld [c], a
    rst $38
    sbc l
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    sub a
    rst $38
    rlca
    rst $38
    sub a
    rst $38
    adc $3f
    xor $3f
    sbc $7c
    call c, $bc7c
    db $fc
    cp b
    ld hl, sp-$48
    ld hl, sp+$74
    ld hl, sp+$7b
    db $f4
    ld l, l
    db $e3
    pop hl
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    pop de
    ret nz

    reti


    add b
    cp a
    ret nz

    xor [hl]
    ld [hl], c
    rst $28
    dec e
    adc e
    rlca
    ld h, l
    inc bc
    ld bc, $bf03
    inc bc
    cp e
    rlca
    rst $38
    rlca
    or a
    ld c, a
    sbc a
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    rst $38
    xor e
    rst $38
    rst $18
    rst $38
    sbc h
    ld a, a
    ld c, l
    ccf

jr_0c1_77ba:
    ld a, d
    rlca
    add $09
    pop de
    ret z

    jr c, jr_0c1_77ba

    ld b, [hl]
    cp $09
    rst $38
    jp nz, $c1ff

    rst $38
    add l
    rst $38
    add e
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ld c, $ff
    ld l, $fe
    ld e, [hl]
    db $fc
    ld e, h
    db $fc
    inc a
    ld hl, sp-$44
    ld hl, sp+$3e
    db $fc
    ld [hl], d
    pop af
    ld [hl], c
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$d8], a
    ldh [$ea], a
    call c, $878a
    add e
    add c
    ld bc, $0301
    ld bc, $0301
    ld e, a
    add e
    ret c

    ld h, a
    ccf
    rra
    rla
    rrca
    rla
    rrca
    dec e
    ld c, $1a
    rrca
    ld b, e
    rra
    dec a
    rra
    ld a, a
    sbc a
    ld a, a
    rst $38
    ld a, a
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $28
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
    db $ed
    rst $38
    ret c

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38

jr_0c1_7838:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    add hl, de
    add hl, de
    sbc l
    db $dd
    ld a, $be
    push af
    push af
    ld a, [c]
    cp $f5
    db $fd
    db $ec
    inc a
    inc a
    rlca
    rlca
    jr nz, jr_0c1_7838

    add b
    add sp, -$40
    jp nz, $e1c0

    ret nz

    and h
    sbc c
    sbc e
    add a
    ld bc, $0003
    inc bc
    inc b
    inc bc
    ld b, l
    add e
    sbc a
    ld h, a
    dec sp
    rrca
    inc [hl]
    dec bc
    dec a
    dec bc
    add hl, de
    ld b, $08
    rra
    ld h, b
    sbc a
    or d
    ld l, a
    dec bc
    scf
    ld c, a
    inc sp
    dec bc
    ld a, a
    or $7f
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    reti


    rst $38
    ld e, c
    rst $38
    ld e, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    rst $30
    rst $38
    xor $ff
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
    rst $28
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0c1_7927

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c1_793e

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c1_7927:
    dec h
    ld h, $27
    jr z, jr_0c1_7955

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0c1_796c

    ld sp, $3332

jr_0c1_793e:
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    jr c, jr_0c1_7984

    ld sp, $3b3a
    inc a
    dec a
    nop
    nop
    nop
    nop
    nop

jr_0c1_7955:
    nop
    nop
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld sp, $4443
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_0c1_796c:
    ld c, e
    ld c, h
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
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    nop
    nop
    nop

jr_0c1_7984:
    nop
    nop
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld hl, $0707
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cpl
    rra
    ccf
    dec e
    dec e
    rrca
    rra
    ld c, $1e
    ld c, $3f
    inc b
    or [hl]
    inc b
    xor $04
    cp a
    dec bc
    ld e, a
    ccf
    rst $38
    ld l, [hl]
    rst $38
    db $fc
    rst $38
    ld a, [$f7ff]
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld a, [$3bff]
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    ld a, [$74ff]
    rst $38
    rst $38
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
    ei
    rst $38
    rst $30
    rst $38
    ld e, a
    rst $38
    ld a, [$79ff]
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    ld a, [$f4ff]
    rst $38
    ldh a, [rIE]
    add sp, -$01
    rst $10
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, $fe
    ld a, $7e
    ld a, c
    ld a, c
    ld a, c
    db $fd
    db $fc
    db $fc
    ld [hl], e
    ld [hl], e
    ld l, c
    jp hl


    di
    di
    db $fd
    rst $38
    sbc $ff
    ld e, $ff
    cp e
    rst $38
    rst $28
    rst $38
    sbc [hl]
    rst $38
    and a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld e, a
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
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    pop hl
    rst $38
    and $ff
    cp $ff
    sbc l
    rst $38
    sbc b
    rst $38
    ld a, [$98ff]
    rst $38
    or $ff
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    or l
    rst $38
    ld h, b
    rst $38
    dec [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    and $ff
    rst $20
    rst $38
    db $fd
    rst $38
    ld a, [$feff]
    rst $38
    pop af
    rst $38
    add sp, -$01
    ret nc

    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    ld bc, $03ff
    cp $06
    db $fd
    dec c
    ei
    inc c
    ei
    ld a, [de]
    rst $30
    rst $38
    rst $38
    sbc $fe
    ld a, [hl]
    cp $7d
    ld a, a
    dec c
    dec c
    ld bc, $0703
    ld b, a
    call z, Call_0c1_7dee
    ld a, a
    ei
    ei
    rst $20
    rst $28
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
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
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
    rst $38
    rlca
    rst $38
    rst $08
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    add a
    rst $38
    add [hl]
    rst $38
    dec b
    cp $0b
    db $fc
    add hl, hl
    cp $f2
    db $fd
    ld a, d
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    ld a, [$f4ff]
    rst $38
    ldh a, [rIE]
    add sp, -$01
    ld d, b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    ld bc, $c3ff
    cp $46
    db $fd
    ld c, l
    ei
    call z, Call_0c1_5afb
    rst $30
    inc [hl]
    rst $38
    inc a
    rst $28
    ld l, e
    rst $18
    ret nc

    cp a
    and b
    ld a, a
    add b
    ld a, a
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
    xor e
    rst $28
    rlca
    scf
    dec bc
    rrca
    ld d, a
    rst $18
    rlca
    ld e, a
    ld c, a
    rst $38
    ld a, [hl]
    rst $38
    ld e, a
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, h
    rst $38
    ld [hl], b
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fd
    cp $fe
    rst $38
    push af
    ei
    rst $28
    ldh a, [rIE]
    ldh [$e7], a
    ret c

    cp a
    ret nz

    cp $c1
    inc h
    ei
    db $ed
    rra
    rst $30
    rrca
    push af
    rrca
    and $19
    ld [hl], a
    sbc b
    rrca
    ldh a, [$1f]
    ldh [$d7], a
    add sp, -$41
    ldh a, [$4c]
    rst $38
    sub e
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc a
    rst $28
    ccf
    db $e3
    ld h, e
    call c, $bfd4
    and c
    ld a, a
    add b
    ld a, a
    ld b, b
    rst $38
    add b
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
    rst $38
    add d
    rst $38
    jp nz, Jump_0c1_4eff

    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    jr @+$01

    jr @+$01

    ld a, a
    rst $38
    ei
    rst $38
    rst $08
    rst $38
    rst $38
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
    cp $ff
    db $fd
    cp $ff
    db $fc
    ei
    db $fc
    adc c
    cp $8e
    pop af
    rst $38
    ldh [$5f], a
    ldh [$7f], a
    ret nz

    rra
    ldh [$c2], a
    dec a
    db $fd
    rlca
    ei
    rlca
    rst $30
    rrca
    rst $30
    rrca
    ld l, a
    sbc a
    rst $38
    sbc a
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
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
    ld a, a
    rst $38
    rst $18
    ccf
    rst $38

jr_0c1_7ddd:
    rra
    swap a
    sbc [hl]
    ld h, c
    sbc a
    ld h, b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    ret nz

    ld a, $f1
    ld c, l
    rst $38

Call_0c1_7dee:
    ld [de], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [$3f], a
    jr c, jr_0c1_7ddd

    ld e, [hl]
    rst $20
    daa
    ld sp, hl
    adc c
    cp $42
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
    ld [de], a
    db $ed
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    cp a
    db $e4
    adc a
    ldh a, [$9f]
    ldh [$97], a
    ld hl, sp-$55
    call c, $e3fc
    rst $28
    ret nc

    cp a
    ret nz

    cp [hl]
    pop bc
    cpl
    pop af
    db $eb
    rra
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    cp a
    rst $18
    rst $38
    ld a, a
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp a
    ld a, a
    rst $08
    ld a, a
    cp e
    ld b, a
    cp $81
    ld a, a
    add b
    rst $38
    nop
    cp $01
    rst $38
    add c
    ld a, h
    db $e3
    sbc a
    ld a, [$fe27]
    add hl, bc

jr_0c1_7e79:
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld [hl], b
    cp a
    cp h
    rst $08
    ld c, a
    di
    inc de
    db $fc
    inc b
    rst $38
    ld bc, $03ff
    rst $38
    dec bc
    rst $38
    ld b, $ff
    inc l
    rst $38
    jr jr_0c1_7e79

    jr z, @-$6f

    ld [hl], b
    sbc a
    ld [hl], b
    ld e, a
    ld l, $f8
    db $fd
    ld e, $fb
    rra
    rst $10
    dec sp
    rst $38
    scf
    ccf
    rst $20
    rst $38
    db $e3
    rst $38
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $ff
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
    rst $38
    rst $38
    rst $38
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
    rst $18
    ld [hl], a
    adc a
    cp l
    inc bc
    ld h, d
    ld bc, $017f
    db $fc
    inc bc
    cp $03
    ei
    add $35
    cp $4f
    db $fc
    inc de
    rst $38
    inc b
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add d
    rst $38
    pop bc
    rst $38
    add d
    rst $38
    ld bc, $05ff
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld l, a
    db $10
    sbc $20
    nop
    ldh [$ed], a
    ldh a, [$f8]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    cp a
    rst $00
    ld [$fff1], a
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $30
    adc a
    db $ed
    di
    rst $38
    db $fc
    rst $38
    ld a, a
    ld a, a
    sbc a
    db $db
    rst $20
    or $f9
    ld a, l
    cp $7f
    sbc a
    rst $18
    rst $20
    rst $38
    ld sp, hl
    ccf
    cp $ff
    rst $08
    db $e3
    rst $38
    cp c
    ld a, [hl]
    adc a
    rst $38
    di
    rst $38
    cp [hl]
    db $fd
    rst $08
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp c
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    cp a
    or a
    rrca
    add a
    inc bc
    db $e3
    ld bc, $03f9
    rst $38
    ld [bc], a
    cp h
    ld [bc], a
    ld a, [$3ec4]
    db $f4
    ld d, b
    db $fc
    cp a
    ld hl, sp+$7b
    db $fc
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    push hl
    ld a, a
    cp a
    ld c, a
    reti


    rlca
    ld d, h
    add e
    add l
    ld [bc], a
    ld b, l
    add d
    db $d3
    db $e4
    cp $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    ld c, a
    sbc a
    push de
    db $e3
    db $fd
    ld hl, sp-$01
    cp $7f
    rst $38
    rst $38
    rra
    ei
    rst $00
    cp $f1
    db $fd
    cp $bf
    ld a, a
    rst $28
    sbc a
    rst $38
    db $e3
    ei
    db $fc
    cp [hl]
    ld a, a
    xor a
    rst $18
    set 6, a
    ld a, d
    db $fd
    rst $38
    ld a, $d7
    rst $28
    db $fd
    di
    cp a
    ld a, h
    rst $08
    rst $38
    ei
    rst $30
    jr c, @+$01

    adc $ff
    ld a, [c]
    rst $38
    sbc h
    rst $38
    db $fc
    cp $fa
    db $fc
    db $ec
    ld hl, sp-$04
    ld hl, sp-$10
    ld hl, sp-$08
    ldh a, [$f4]
    ld hl, sp-$05
    db $e4
    db $cd
    db $e3
