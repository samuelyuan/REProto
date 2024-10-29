SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld hl, $213f
    ccf
    ld hl, $213f
    ccf
    ld hl, $213f
    ccf
    ld hl, $213f
    ccf
    ld hl, $213f
    ccf
    ld hl, $203f
    ccf
    jr nc, jr_016_4077

    jr nz, jr_016_4079

    jr nz, jr_016_407b

    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    add hl, de
    db $10
    inc de
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rra
    ld [$081f], sp
    ccf
    ld [$087f], sp
    ld a, a
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp

jr_016_4077:
    rst $38
    add hl, hl

jr_016_4079:
    rst $38
    dec h

jr_016_407b:
    rst $38

Jump_016_407c:
    rrca
    rst $30
    scf
    rst $28
    rla
    rst $28
    ld h, $df
    ld b, [hl]
    cp a
    ld b, h

jr_016_4087:
    cp a
    sbc h
    ld a, a
    jr @+$01

    ld [$00ff], sp
    rst $38
    ld h, b
    rst $38
    ret nz

jr_016_4093:
    rst $38
    jr nz, @+$01

    inc bc
    db $fd
    nop
    rst $38
    inc b
    ei
    ld [$0cf7], sp
    rst $30
    nop
    rst $38
    ld [$00ff], sp

jr_016_40a5:
    rst $38
    jr nc, jr_016_4087

    ld b, b
    cp a
    db $10
    rst $28
    ret nz

    ld a, a
    nop
    rst $38
    add c
    cp $00
    rst $38
    inc bc
    db $fd
    ld bc, $00ff
    rst $38
    ld c, $f3
    nop
    rst $38
    inc e
    rst $20
    db $10
    rst $28
    jr c, jr_016_4093

    jr nz, jr_016_40a5

    jr nc, @-$1f

    ld d, b
    cp a
    ret nz

    ccf
    and b
    ld a, a
    ret nz

    ld a, a
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
    ld bc, $01fe
    cp $00
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    nop
    ld hl, sp-$08
    ld [$08f8], sp
    ld hl, sp-$18
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$24
    db $fc
    sub h
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    inc d
    db $fc
    sub h
    db $fc
    sub h
    db $fc
    sub h
    db $fc
    sub h
    db $fc
    sub h
    db $fc
    sub h
    db $fc
    sub h
    db $fc
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h

jr_016_4141:
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h

jr_016_4147:
    rst $38
    cp h
    rst $38
    sbc h
    rst $38
    call c, $b8ff

jr_016_414f:
    rst $38
    jr c, @+$01

    ld [hl], c
    cp $f1

jr_016_4155:
    cp $e1
    cp $c2
    db $fd
    ret nz

    rst $38
    add h
    ei
    ld bc, $09fe

jr_016_4161:
    or $10
    rst $28
    jr jr_016_4155

    jr nz, jr_016_4147

    jr z, jr_016_4141

    ld b, b
    cp a
    ld de, $91ee
    ld l, [hl]
    nop
    rst $38
    ld [de], a
    db $ed
    ld b, h
    cp e
    inc c
    di
    ld [$5cf7], sp
    and a
    jr nc, @-$2f

    jr nc, jr_016_414f

    jr nz, jr_016_4161

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $00fe
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    add c
    cp $00
    rst $38
    inc bc

jr_016_4197:
    db $fd
    inc bc
    db $fd
    nop
    rst $38
    ld b, $fb
    ld [bc], a
    rst $38
    ld [$08f7], sp
    rst $30
    db $10
    rst $28
    jr jr_016_4197

    ld [$25ff], sp
    jp c, $db34

    ld de, $66fe
    cp c
    ld [hl], d
    xor l
    sub l
    ld l, d
    ret nz

    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38

Jump_016_41be:
    pop bc
    cp [hl]
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
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
    ld bc, $fe01
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

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    ld hl, $46de
    cp c
    ld d, d
    xor l
    add b
    ld a, a
    and l
    ld e, d
    ld b, h
    cp e

jr_016_4226:
    ld c, b
    or a
    ld c, b
    or a
    ld d, b
    xor a
    or b
    ld c, a
    ldh [$1f], a
    ldh [$1f], a
    ld b, b
    cp a
    ld b, a
    cp b
    dec bc
    db $f4
    sbc [hl]
    ld h, c
    adc d
    ld [hl], l
    dec b
    ei
    add b
    rst $38
    inc b
    ei
    inc b
    ei
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    ld d, $e9
    inc d

jr_016_424d:
    db $eb
    ld h, $d9
    xor [hl]
    ld d, c
    rrca
    ldh a, [$cf]
    jr nc, jr_016_4226

    jr nc, @-$67

    ld l, b
    sub a
    ld l, b
    jp Jump_016_407c


    rst $38
    add c
    cp $81

jr_016_4263:
    cp $80

jr_016_4265:
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    add h
    ld a, e
    inc b
    ei
    rlca
    ld a, [$fb06]
    ld [$0cf7], sp
    rst $30
    inc b
    rst $38
    nop
    rst $38
    jr nc, jr_016_424d

    db $10
    rst $28
    cp b
    ld c, a
    jr nz, jr_016_4263

    jr nz, jr_016_4265

    ldh a, [$1f]
    ret nc

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nc

    cpl
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
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
    nop
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
    nop
    rst $38
    ld d, [hl]
    xor c
    ld d, a
    xor b
    rst $20
    jr @+$67

jr_016_42c5:
    sbc d
    ld [$01f7], sp
    cp $51
    xor [hl]
    ld d, d
    xor l
    sub [hl]
    ld l, c
    or d
    ld c, l
    or [hl]
    ld c, c
    ld a, h
    add e
    ld a, h
    add e
    ld a, c
    add d
    cp a
    ld b, b
    dec bc
    db $f4
    dec bc
    db $f4
    rrca
    ldh a, [rTAC]
    ld hl, sp+$17
    add sp, $57
    xor b
    rla
    add sp, $26
    reti


    jr z, jr_016_42c5

    ld hl, $c3de
    inc a
    add e
    inc a
    rst $00
    jr c, jr_016_4344

    ld [hl-], a
    sbc e
    ld h, h
    and a
    ld e, b
    xor h
    ld d, e
    inc l
    db $d3
    ccf
    ret nz

    ld l, l
    sub d
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    sbc $21
    xor $11
    xor h
    ld d, c
    call c, Call_000_0021
    rst $38
    dec b
    ld a, [$fa05]
    dec b
    ld a, [$fa05]
    dec c
    ld a, [c]
    ld bc, $03fe
    db $fc
    dec bc
    db $f4
    dec bc
    db $f4
    ld bc, $00fe
    rst $38
    nop
    rst $38
    db $10
    rst $28
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

jr_016_4344:
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
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $07
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
    nop
    rst $38
    nop
    rst $38

jr_016_4374:
    nop
    rst $38

jr_016_4376:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add e
    ld a, h
    sub e
    ld l, h
    or l
    ld c, d
    push de
    ld a, [hl+]
    ld [hl], l
    adc d
    ld a, l
    add d
    ld a, a
    add b
    rst $38
    nop
    reti


    inc h
    dec bc
    db $f4
    dec a
    ret nz

    ld e, a
    and b
    xor b
    ld d, b
    or a
    ld c, b
    rst $10
    jr z, jr_016_4374

    jr z, jr_016_4376

    jr z, @+$01

    nop
    rst $38
    nop
    adc $10
    push hl
    db $10
    sub $00
    ld a, [c]
    nop
    ld d, l
    and b
    jp z, $e220

    nop
    push af
    nop
    ld h, b
    add b
    ldh a, [rP1]
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp [hl]
    ld b, b
    ld a, [hl]
    add b
    ld l, a
    sub b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    ld bc, $09f5
    rst $38
    ld bc, $01fb
    ei
    ld bc, $01fb
    ld hl, sp+$03
    ld hl, sp+$03
    ld a, b
    add e
    inc b
    ei
    inc b
    ei
    ld c, $f3
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
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$03]
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
    sbc b
    ld h, a
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
    nop
    rst $38
    ld hl, sp+$0f
    ld [hl], h
    dec bc
    ld h, h
    sbc e
    ld h, [hl]
    sbc c
    db $ed
    ld [de], a
    xor $11
    rst $28
    db $10
    rst $08
    db $10
    rst $28
    db $10
    ret z

    rla
    ldh [$1f], a
    add sp, $17
    xor h
    inc de
    inc l
    sub e
    sbc $21
    sbc [hl]
    ld hl, $21de
    sbc [hl]
    ld hl, $219e
    sbc [hl]
    ld hl, $01f6
    cp b
    ld bc, $215e
    ld c, d
    dec [hl]
    inc [hl]
    ld c, e
    inc e
    ld h, e
    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    ld b, l
    ld [hl], $49
    inc a
    ld b, e
    cp l
    ld b, e
    cp l
    ld b, e
    cp $01
    cp $01
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, a
    add c
    dec a
    jp $817e


    ld a, [hl]
    add c
    ld l, [hl]
    add c
    ld a, h
    add e
    ld a, l
    add e
    ld e, l
    and e
    dec b
    ei
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    jr nz, @-$1f

    ld b, c
    cp a
    and c
    ld e, a
    inc hl
    rst $18
    ld b, c
    cp a
    nop
    rst $38
    ld b, b
    cp a
    pop bc
    ccf
    pop bc
    ccf
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1000], sp
    nop
    ld [$0600], sp
    ld b, $02
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    ld b, $03
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $c300
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
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
    ld a, a
    cp a
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
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ccf

Jump_016_456d:
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    cp a
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
    ret nz

    ld a, [hl]
    ret nz

    ld a, [hl]
    ldh [$7e], a
    ldh [$de], a
    ldh [$fe], a
    ldh [$7e], a
    ldh [$7e], a
    ldh [$5e], a
    ldh [$fc], a
    ldh [$dc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$7c], a
    ldh [$7c], a
    ldh [rNR32], a
    ldh [$bc], a
    ldh [$9c], a
    ldh [$98], a
    ldh [rNR23], a
    ldh [$38], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$f1], a
    rrca
    ld hl, sp+$07
    jr c, jr_016_45cd

    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e

jr_016_45cd:
    inc bc
    ld a, h
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    di

Jump_016_45db:
    rrca
    di
    rrca
    db $e3
    rra
    rst $20
    rra
    rst $00
    ccf
    adc a
    ld a, a
    adc a
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
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
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $03
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
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
    ld a, a
    add b
    rra
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    ld c, $0e
    nop
    rrca
    stop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_016_46cc

    ld a, [de]
    dec de
    inc e
    nop
    dec e
    ld e, $00
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_016_46ee

    ld a, [hl+]
    dec hl
    nop
    inc l
    dec l
    ld l, $2f

jr_016_46cc:
    jr nc, jr_016_46ff

    ld [hl-], a
    inc sp
    dec h
    inc [hl]
    dec [hl]
    ld [hl], $36
    scf
    jr c, jr_016_46d8

jr_016_46d8:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    inc [hl]
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_016_46ee:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld b, l
    ld d, c
    ld b, l
    ld b, l
    ld d, d
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_016_46ff:
    ld e, d
    ld e, e
    ld e, h
    ld b, l
    ld e, l
    ld e, [hl]
    ld b, l
    ld e, a
    nop
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
    halt
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    nop
    nop
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    nop
    nop
    add h
    add l
    add l
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
    nop
    nop
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
    nop
    nop
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
    xor h
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    nop
    reti


    jp c, Jump_016_45db

    ld b, l
    ld b, l
    call c, $dedd
    nop
    nop
    nop
    rst $18
    ldh [$e1], a
    ld [c], a
    ld b, l
    db $e3
    db $e4
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    push hl
    inc c
    nop
    nop
    nop
    nop
    nop
    ld b, l
    and $e7
    add sp, -$17
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld [$00eb], a
    nop
    nop
    nop
    ld b, l
    db $ec
    ld [hl], $36
    db $ed
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    xor $00
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    ld b, b
    nop
    ld bc, $0101
    ld bc, $0404
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc b
    ld b, $06
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
    rlca
    ld [bc], a
    ld b, $06
    ld b, $02
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_016_4820:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
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
    inc bc
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
    inc bc
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
    inc bc
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
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld b, $01
    nop
    nop
    inc b
    inc b
    inc b
    ld b, $06
    inc b
    inc b
    ld b, $02
    ld b, $02
    ld [bc], a
    ld b, $01
    nop
    nop
    inc b
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld b, $02
    ld bc, $0001
    inc bc
    ld b, $02
    ld [bc], a
    ld b, $06
    inc b
    ld b, $06
    ld b, $06
    ld b, $02
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld b, $06
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    dec b
    ld hl, $0403
    inc bc
    inc bc
    inc bc
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
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

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    pop hl
    rra
    add a
    ld a, a
    rra
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
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
    ld bc, $03ff
    cp $0e
    db $fd
    inc e
    di
    ld [hl], b
    rst $28
    ldh [$9f], a
    add d
    ld a, l
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fc
    dec c
    ldh a, [rNR50]
    ret nz

    ld d, h
    add b
    ld a, e
    add b
    db $fd
    ld [bc], a
    ld [$db04], a
    nop
    halt
    rst $28
    nop
    ld e, a
    add b
    ld e, a
    nop
    ld a, [hl]
    ld bc, $027d
    db $eb
    inc b
    di
    ld [$ff00], sp
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
    nop
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
    cp $01
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    ld hl, sp+$07
    pop hl
    rra
    add a
    ld a, a
    rra
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_016_4a41:
    rst $38
    ld bc, $07ff
    cp $0e
    ld sp, hl
    jr c, jr_016_4a41

    ld [hl], b
    rst $08
    ret nz

    cp a
    add b
    ld a, a
    ld a, [de]
    rst $20
    ld hl, $03de
    db $fc
    inc bc
    db $fc
    rrca
    ldh a, [$dd]
    add d
    ld a, [hl+]
    ld bc, $000e
    ld b, l
    nop
    dec sp
    nop
    inc [hl]
    nop
    jp z, $9500

    nop
    ld l, a
    nop
    ei
    nop
    ld a, a
    nop
    di
    ld [$0037], sp
    ld l, a
    nop
    ei
    nop
    ld a, [$be00]
    ld b, b
    db $fd
    nop
    db $db
    nop
    rlca
    rst $38
    rrca
    rst $30
    ccf
    rst $00
    ld a, a
    add a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    inc bc
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
    cp $00
    cp $00
    cp $02
    db $fc
    ld b, $f8
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
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
    ldh [rTAC], a
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
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    pop hl
    rra
    add a
    ld a, a
    rra
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
    jp nz, Jump_000_00fd

    rst $38
    nop
    rst $38
    nop

jr_016_4b17:
    rst $38
    ld bc, $07ff
    cp $0e
    ld sp, hl
    jr c, jr_016_4b17

    ld [hl], b
    rst $08
    ret nz

    cp a
    add b
    ld a, a
    nop
    rst $38
    ld e, c
    cp [hl]
    adc a
    ld [hl], b
    rra
    ldh [$1f], a
    ldh [$3e], a
    pop bc
    ld a, [$f504]
    ld [$10e3], sp
    jp Jump_016_4820


    add b
    xor e
    nop
    ld [hl-], a
    nop
    ld d, l
    nop
    ld e, c
    nop
    and a
    db $10
    rst $28
    nop
    sub $00
    cp d
    nop
    db $dd
    nop
    di
    nop
    or a
    nop
    rst $38
    nop
    cp h
    inc bc
    call c, $ad23
    ld b, d
    ld h, e
    sbc h
    adc h
    inc bc
    jr c, jr_016_4b60

jr_016_4b60:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ret nz

    rrca
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rP1], a
    rst $38
    nop
    nop
    nop
    rrca
    ldh [rIF], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
    ld hl, sp-$01
    ldh [rIE], a
    rlca
    cp $1f
    cp $7f
    db $fc
    di
    db $fc
    jp $83fc


    ld a, h
    inc de
    db $fc
    ld [bc], a
    db $fd
    inc de
    db $fc
    rlca
    ld hl, sp+$39
    and $e1
    sbc $c0
    ccf
    ld [$09ff], sp
    cp $07
    ld hl, sp-$71
    ldh a, [$9f]
    ldh [$7f], a
    add b
    rst $38

jr_016_4c17:
    nop
    rst $38
    nop
    db $ed
    ld [de], a
    xor a
    ld b, b
    ld bc, $0380
    nop
    rla
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, l
    ld [bc], a
    pop af
    ld c, $ef
    db $10
    ld e, h
    inc bc
    db $fc
    ld [bc], a
    ld sp, hl
    inc b
    or a
    ld [$10e7], sp
    ret c

    daa
    and b
    ld e, a
    pop hl
    ld e, $02
    ld a, l
    inc b
    ei
    add hl, bc
    or $59
    and h
    rst $20
    jr jr_016_4c17

    ld sp, $20df
    cpl
    ret nz

    ld e, a
    add b
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
    ld a, a
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
    ld bc, $0700
    nop
    ccf
    nop

jr_016_4c86:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    ccf
    nop
    rst $38

jr_016_4ca0:
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    ldh [$1f], a
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
    pop af
    ld c, $c0
    ccf
    ld [$e0f7], sp
    rra
    rst $38

jr_016_4cbd:
    nop
    rst $38
    nop
    add sp, $17
    xor c
    ld d, [hl]
    ret nz

    ccf
    ld hl, sp+$07
    cp $01
    ld e, l
    and d
    adc e
    ld [hl], h
    ld de, $e2ee
    dec e
    db $fc
    inc bc
    jr jr_016_4cbd

    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $28
    nop
    db $eb
    db $10
    rst $18
    jr nz, jr_016_4ca0

    ld b, b
    cp a
    nop
    ld a, e
    inc b
    push af
    ld a, [bc]
    rst $28
    db $10
    sbc a
    ld h, b
    cp a
    ld b, b
    cp $01
    ldh a, [$0e]
    pop hl
    inc e
    rst $20
    jr jr_016_4c86

    ld [hl], b
    sbc l
    ld h, d
    cp a
    ld b, b
    ld a, a
    add b
    rst $30
    ld [$12ed], sp
    swap h
    or d
    ld c, l
    ld l, [hl]
    sub c
    ld c, c
    or [hl]
    sbc b
    ld h, a
    ld b, $d9
    ld hl, $529e
    dec l
    add [hl]
    ld a, c
    add h
    ld a, e
    ld l, b
    sub [hl]
    ld [hl], e
    adc h
    and $19
    db $eb
    db $10
    push bc
    ld [hl-], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
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
    rst $38
    nop
    cp $01
    add b
    ld a, a
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
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    ldh [$1f], a
    rst $38
    nop
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    call c, $ff03
    nop
    cpl
    ret nc

    rlca
    ld hl, sp+$3f
    ret nz

    cp [hl]
    ld b, c
    reti


    ld h, $94
    ld l, b
    dec h
    ret nc

    dec c
    ldh [$5f], a
    add b
    push af
    ld [bc], a
    db $eb
    nop
    cp a
    nop

jr_016_4dbc:
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, [hl]
    add c
    or $09
    db $e4
    dec de
    rst $30
    nop
    rst $18
    nop
    ld e, a
    add b

jr_016_4dce:
    ld a, $01
    db $f4
    ld [bc], a
    ld e, e
    inc b
    rst $30
    ld [$12ad], sp
    db $db
    inc h
    cp e
    ld b, h
    ld [hl], a
    adc b
    xor $11
    call c, $dc23
    ld [hl+], a
    ld e, d
    and h
    dec [hl]
    ret z

    inc hl
    ret c

    rst $00
    jr nc, jr_016_4dbc

    jr nz, jr_016_4dce

    ld b, b
    ld l, a
    sub b
    rst $30
    ld [$00ff], sp
    cp $01
    cp $01
    db $fd
    ld [bc], a
    ld hl, sp+$06
    ld sp, hl
    inc b
    rst $38
    rst $38
    rst $38
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

jr_016_4e21:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
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
    nop

jr_016_4e48:
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    jr nc, jr_016_4e21

    nop
    rst $38
    add b
    ld a, a
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld a, c
    add [hl]
    push af
    ld a, [bc]
    cpl
    ret nc

    sbc d
    dec h
    pop af
    ld c, $f1
    ld c, $83
    ld a, h
    ld c, a
    or b
    sbc l
    ld [hl+], a

jr_016_4e7a:
    cp a
    ld b, b
    ld l, d
    sub l
    push bc
    ld a, [hl-]
    dec bc
    db $f4
    inc d
    db $eb
    ld l, a
    sub b
    rst $18
    jr nz, jr_016_4e48

    ld b, b
    rst $18
    nop
    cp [hl]
    ld bc, $02fc
    ei
    inc b
    di
    inc c
    db $e3
    jr jr_016_4e7a

    db $10
    jp $a720


    ld b, b
    ld e, a
    add b
    ccf
    add b
    ld a, [hl]
    ld bc, $03fc
    db $fc
    ld [bc], a
    ei
    inc b
    pop hl
    inc c
    di
    ld [$10e7], sp
    db $db
    inc h
    jp c, $9725

    ld c, b
    ld [hl], a
    adc b
    ld [hl-], a
    adc l
    ld a, a
    nop
    or $09
    push af
    ld a, [bc]
    ld h, b
    sbc [hl]
    rst $38
    rst $38
    rst $38
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
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add c
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0001
    nop
    add c
    ld bc, $00c0
    ldh [rP1], a
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    or $00
    rst $38
    ret nz

    ccf
    ccf
    ret nz

jr_016_4f2a:
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld hl, sp+$07
    db $fd
    ld [bc], a
    ld a, [$fc05]
    inc bc
    jp hl


    ld d, $f6
    add hl, bc
    db $ed
    ld [bc], a
    cp e
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    cp $01
    ld a, h
    add d
    ei
    inc b
    ld a, l
    add b
    di
    ld [$9067], sp
    adc $20
    cp [hl]
    ld b, b
    ld a, l
    add b
    ld a, [hl]
    add c
    ld a, c
    ld [bc], a
    cp $00
    ld sp, hl
    inc b
    di
    ld [$10ef], sp
    rst $20
    db $10
    rst $08
    jr nz, jr_016_4f2a

    ld b, b
    sbc a
    ld b, b
    ld a, $81
    cp a
    nop
    ld a, h
    ld [bc], a
    cp $00
    ld sp, hl
    inc b
    or a
    ld c, b
    ld e, a
    and b
    ld a, [c]
    dec b
    xor $01
    call c, $af23
    ld b, b
    sbc a
    ld b, b
    rra
    add b
    add a
    nop
    scf
    nop
    dec sp
    nop
    rst $28
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
    ldh [$1f], a
    ld hl, sp+$07
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
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld bc, $0f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_016_4ff7:
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    ld h, b
    sbc a
    rrca
    ldh a, [rP1]
    rst $38
    ldh [$1f], a
    rra
    ldh [rP1], a
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38

jr_016_5014:
    db $10
    rst $28
    jr nz, jr_016_4ff7

    ld b, c
    cp [hl]
    ld a, [c]
    dec c
    rst $30
    ld [$14eb], sp
    db $dd
    ld [hl+], a
    or [hl]
    ld c, c
    adc $01
    cp l
    ld [bc], a
    ld l, e
    inc b
    rst $38
    nop
    rst $30
    ld [$126d], sp
    rst $38
    nop
    rst $08
    jr nz, jr_016_5014

    nop
    ld a, a
    add b
    cp h
    ld [bc], a
    add hl, sp
    inc b
    ld a, l
    nop
    ei
    nop
    ei
    nop
    rst $20
    db $10
    sla b
    rst $08
    jr nz, @+$01

    nop
    rst $18
    nop
    cp a
    nop
    rst $38
    nop
    ld a, [hl]
    ld bc, $23dc
    db $dd
    ld [hl+], a
    ret c

    ld h, $7a
    add h
    or b
    ld c, h
    ld [hl], l
    adc b
    and e
    ld e, b
    add hl, hl
    ret nc

    dec b
    ldh a, [$df]
    jr nz, @-$31

    jr nz, jr_016_50a8

    ld b, b
    sbc e
    ld b, b
    ld e, a
    add b
    daa
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
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
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
    ccf
    nop
    ld a, a
    nop
    cp $01

jr_016_50a8:
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf

jr_016_50b8:
    add b
    ld a, a
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
    ccf
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    cpl
    or c
    ld c, [hl]
    ld l, b
    sub a
    ret nc

    cpl
    ld sp, hl
    ld b, $b3
    ld c, h
    ld h, e
    sbc h
    jp $853c


    ld a, d

jr_016_50f6:
    call z, $c833
    scf
    ld d, c
    xor [hl]
    ld de, $20ee
    rst $18
    add b
    ccf
    or b
    rrca
    ld a, l
    ld [bc], a

jr_016_5106:
    ld e, l
    ld [bc], a
    db $db
    inc b
    ld sp, hl
    inc b
    db $e3
    jr jr_016_5106

    ld [$10e7], sp
    rst $38
    nop
    rst $18
    jr nz, jr_016_50f6

    jr nz, jr_016_50b8

    ld b, b
    add hl, de
    add $67
    sbc b
    ld a, [hl-]
    add l
    ld de, $2100
    nop
    ld d, b
    ld bc, $00ef
    and h
    ld [bc], a
    rst $00
    nop
    ld [c], a
    dec b
    ld l, e
    inc b
    cp $01
    ld [de], a
    dec c
    db $76
    add hl, bc
    jp $8710


    db $10
    ld [hl], a
    nop
    ld c, a
    jr nz, @-$2f

    jr nz, @+$01

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
    nop
    nop
    nop
    nop
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla

jr_016_515d:
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    rla
    rra
    ld d, $1e
    inc d
    ld e, $16
    rra
    ld d, $1f
    rla
    rra
    rla
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
    rra
    rra
    rra
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
    ld e, $ff
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
    rst $38
    inc bc
    ld l, a
    add b
    ei
    inc b
    rst $30
    ld [$9867], sp
    ld [$de15], a
    ld hl, $a659
    sub b
    ld l, a
    sbc [hl]
    ld b, c
    inc e
    pop bc
    cp [hl]
    add c
    ld a, l
    add d
    ld a, h
    inc bc
    ld a, b
    rlca
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    ld l, e
    sub h
    db $d3
    inc l
    rst $10
    jr z, jr_016_515d

    ld a, c
    and a
    ld e, b
    dec l
    jp nc, $847b

    db $76
    adc c
    and $19
    xor c
    ld d, [hl]
    xor b
    ld d, a
    or b
    ld c, a
    ld [hl], b
    adc a
    and b
    ld e, a
    ldh [$1f], a
    sub c
    ld l, [hl]
    ld [bc], a
    cp $08
    or $18
    and $f3
    inc c
    pop af
    inc c
    ldh [$0d], a
    rst $20
    ld [$08f3], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    cp $ff
    rst $38
    rst $38
    cp $ff
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
    cp $ff
    rst $38
    cp $7e
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $fe
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
    rst $38
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
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    sub e
    ld l, h
    cp [hl]
    ld b, c
    adc [hl]
    ld [hl], c
    inc b
    ei
    dec d
    ld [$fa05], a
    adc c
    db $76
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    inc c
    ei
    ld e, h
    xor e
    db $f4
    dec bc
    db $e4
    dec de
    ld l, b
    sub a
    add sp, $17
    add sp, $17
    ret nc

    cpl
    ret nc

    cpl
    sub c
    ld l, [hl]
    sub c
    ld l, [hl]
    cp b
    ld b, a
    sbc a
    ld b, b
    rra
    ret nz

    ld e, a
    add b
    ld e, [hl]
    add c
    ccf
    add b
    ccf
    add b
    rst $38
    nop
    ld a, a
    nop
    ld l, a
    db $10
    cp $01
    adc $31
    ld c, [hl]
    or c
    ld a, d
    add l
    xor $11
    ld l, [hl]
    sub c
    ld c, $f1
    add h
    ld a, e
    rst $00
    ld a, [hl-]
    adc l
    ld [hl], d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $fc
    inc bc
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
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rlca
    rst $38
    ld c, $7f
    inc b
    rst $38
    inc c
    ld a, a
    inc c
    rst $38
    inc c
    ld a, a
    inc b
    ld a, a
    adc h
    ld a, a
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld e, [hl]
    rst $38
    call $e0ff
    rst $38
    ldh [rIE], a
    ld a, d
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, b
    rst $38
    db $fc
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

jr_016_5359:
    rst $38
    rst $38
    rst $38
    db $e3
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
    ld bc, $00ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    ei
    sub $29
    or [hl]
    ld c, c
    or $09
    ld [c], a

jr_016_537d:
    dec e
    ld h, c

jr_016_537f:
    sbc [hl]
    jr z, jr_016_5359

    ld c, b
    or a
    ld l, b
    sub a
    ld [$40f7], sp
    cp a
    ld d, b
    xor a
    jr nc, jr_016_537d

    jr nc, jr_016_537f

    jr nc, @-$0f

    db $10
    rst $28
    sub b
    ld l, a
    nop
    rst $38
    inc a
    jp Jump_016_41be


    sbc [hl]
    ld b, c
    sbc a
    ld b, b
    cp a
    ld b, b
    ld a, $c1
    ld a, [hl]
    add c
    ld a, d
    add l
    ld a, $81
    sbc [hl]
    and c
    rrca
    or b
    ld b, b
    cp a
    rst $28
    db $10
    db $e4
    dec de
    jp nc, Jump_016_632d

    inc e
    and h
    ld e, e
    and $19
    jp $833c


    ld a, h
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
    ret nz

    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e0fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    add e
    db $fc
    jp $03fc


    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    jp $03fc


    db $fc
    inc bc
    db $fc
    ld bc, $40fe
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_016_5455:
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

jr_016_545f:
    rst $38
    nop

jr_016_5461:
    rst $38
    nop
    rst $38
    jr nc, jr_016_5455

    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    jr nz, @+$01

    jr nc, jr_016_545f

    add hl, de
    and $1c
    db $e3
    ld a, [bc]
    push hl
    inc sp
    db $ec
    jr jr_016_5461

    dec e
    ld [c], a
    dec d
    ld [$ed12], a
    ld [de], a
    db $ed
    ld de, $13ee
    db $ec
    dec h
    jp c, $4eb1

    ld sp, $a1ce
    ld e, [hl]
    di
    ld c, h
    and [hl]
    ld e, c
    ldh a, [rVBK]
    and c
    ld e, [hl]
    add hl, hl
    sub $62
    db $dd
    ld d, c
    adc $19
    add $1d
    jp nz, $c01f

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rst $38
    rst $38
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $18
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    cp a
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
    nop
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $03c0
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    add a
    ret nz

    rlca
    add b
    rrca
    add b
    rrca
    add b
    rra
    add b
    rra
    add b
    ccf
    add b
    ccf
    add b
    ld a, a
    add b
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
    add b
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
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
    ld [bc], a
    rst $38
    sub d
    rst $38
    ld [$00ff], sp
    rst $38
    ld hl, sp+$07
    add hl, bc
    rst $30
    ld c, h
    or e
    inc c
    di
    ld b, h
    cp e
    inc h
    db $db
    inc b
    ei
    inc b
    ei
    inc h
    db $db
    dec h
    db $db
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld h, d
    db $dd
    ld [hl+], a
    db $dd
    ld [c], a
    ld e, l
    and d
    ld e, l
    and e
    ld e, h
    and c

jr_016_5583:
    ld e, [hl]
    and c
    ld e, [hl]
    or c
    ld c, [hl]
    or c
    ld c, [hl]
    or c
    ld c, [hl]
    sbc c
    ld h, [hl]
    sbc l
    ld h, d
    adc b
    ld h, a
    add d
    ld l, l
    sub h
    ld l, e
    inc d
    db $eb
    inc [hl]
    db $eb
    jr c, jr_016_5583

    ldh [$2f], a
    db $fc
    inc hl
    db $e4
    dec hl
    inc e
    db $e3
    call c, $9823
    ld h, a
    pop de
    ld h, $d8
    daa
    swap h
    ret z

    scf
    rst $38
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

Call_016_55bb:
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $f1
    cp $f1
    cp $73
    db $fc
    ld [hl], e
    db $fc
    ld [hl], e
    db $fc
    ld [hl], e
    db $fc
    ld [hl], a
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$2f
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$6f]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rBGP]
    ld hl, sp+$47
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$3d
    db $fc
    jp $c3fc


    db $fc
    add e
    db $fc
    add c
    cp $81
    cp $81
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
    cp a
    ld a, a
    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rIF], a
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
    dec bc
    rst $30
    inc bc
    rst $38
    dec bc
    rst $30
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    ei
    dec c
    di
    dec b
    ei
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    inc b
    ld sp, hl
    nop
    rst $38
    inc bc
    db $fc
    add e

jr_016_567f:
    ld a, h
    add b
    ld a, a
    add d
    ld a, l
    add d
    ld a, l
    add c
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    ret nz

    ld a, $40
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    ld b, d
    cp a
    ld b, d
    cp a
    ld h, d
    sbc a
    ld h, d
    sbc a
    jr nz, jr_016_567f

    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    inc bc
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

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
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

jr_016_56ff:
    rst $38
    rst $38
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
    sbc a
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    cpl
    ld e, a
    rst $28
    rra
    rrca
    cp a

jr_016_572a:
    rrca
    cp a
    rla
    xor a
    ld h, a
    sbc a
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
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
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld e, $00
    ld l, $00
    ld l, [hl]
    jr nz, jr_016_56ff

    and b
    ld l, $20
    ld l, a
    ld h, b
    xor a
    and b
    xor a
    jr nz, jr_016_572a

    nop
    rst $38
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
    ldh a, [rIF]
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
    cp $00
    ld hl, sp+$00
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
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rTAC], a
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
    nop
    rst $38
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
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc b
    ld bc, $0501
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    ld [$0303], sp
    add hl, bc
    ld a, [bc]
    ld bc, $060b
    ld b, $06
    ld b, $06
    ld b, $06
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1201
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_016_5850

    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $1a
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_016_5867

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_016_5877

    ld a, [hl+]
    dec hl

jr_016_5850:
    inc l
    dec l
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $2e
    cpl
    jr nc, jr_016_588e

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $06
    scf
    jr c, jr_016_589f

    ld a, [hl-]

jr_016_5867:
    ld b, $06
    ld b, $3b
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, $43
    ld b, h
    ld b, l
    ld b, [hl]

jr_016_5877:
    ld b, $06
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, $50
    ld d, c
    ld d, d
    ld b, $06
    ld b, $53
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_016_588e:
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $5c
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_016_589f:
    ld h, d
    inc bc
    inc bc
    ld h, e
    ld h, h
    ld h, l
    ld bc, $6766
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    inc bc
    inc bc
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
    inc bc
    ld a, [hl]
    ld a, a
    add b
    add c
    ld bc, $8382
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    inc bc
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    ld b, $91
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
    sbc l
    ld b, $a1
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
    xor h
    xor l
    xor [hl]
    ld b, $06
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    ld b, $b7
    cp b
    cp c
    or a
    cp d
    cp e
    ld b, $bc
    or a
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    ld b, $06
    jp nz, $c4c3

    push bc
    ld b, $06
    add $06
    rst $00
    ret z

    ret


    jp z, $cccb

    ld b, $06
    call $ce03
    rst $08
    ld b, $06
    ret nc

    ld b, $d1
    jp nc, $d4d3

    push de
    ld b, $06
    ld b, $d6
    rst $10
    ret c

    reti


    ld b, $06
    jp c, $0606

    db $db
    call c, $dedd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0602
    ld b, $06
    ld b, $06
    ld bc, $0000
    rlca
    rlca
    rlca
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $01
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $01
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $02
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    inc b
    ld b, $02
    ld b, $06
    ld b, $06
    ld b, $02
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0602
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0602
    ld b, $02
    ld [bc], a
    ld b, $06
    ld b, $01
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0202
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0141
    ld [bc], a
    inc b
    ld b, $02
    ld [bc], a
    ld b, $02
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0402
    ld b, $02
    ld b, $06
    ld bc, $0001
    nop
    nop
    nop
    ld b, b
    ld bc, $0101
    ld [bc], a
    ld b, d
    ld b, $06
    ld b, $06
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld b, $06
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
    ld bc, $0201
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
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld b, $06
    nop
    rst $38
    nop
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
    rrca
    nop
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    nop
    rra
    nop
    rrca
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
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    nop
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
    rst $38
    nop
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
    ld c, $00
    ld c, $00
    rrca
    nop
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rra
    ld bc, $011f
    rra
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
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
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    adc h
    inc bc
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0102
    ld b, $01
    ld c, $81
    ld a, [hl]
    ld [hl], c
    ld a, $21
    cp [hl]
    and c
    ld a, [hl]
    ld h, c
    ld a, [hl]
    ld bc, $01fe
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
    nop
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $fd
    cp $fd
    cp $fd
    cp $fa
    db $fc
    ld a, [$fafc]
    db $fc
    push af
    ld hl, sp-$0b
    ld hl, sp-$0c
    ld sp, hl

jr_016_5c3a:
    db $f4
    ld sp, hl

jr_016_5c3c:
    ld [$eaf1], a
    pop af

jr_016_5c40:
    ld a, a
    rst $38

jr_016_5c42:
    ld a, a
    rst $38

jr_016_5c44:
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
    rra
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$79
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    rst $00
    jr c, jr_016_5c3a

    jr c, jr_016_5c3c

    jr c, @-$37

    jr c, jr_016_5c40

    jr c, jr_016_5c42

    jr c, jr_016_5c44

    jr c, jr_016_5c42

    inc a
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    pop hl
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e0
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
    ldh [$1f], a
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    cp $fd
    cp $fe
    db $fd
    cp $fd
    ld a, [$fafd]
    db $fd
    db $fc
    ei
    db $fc
    ei
    db $f4
    ei
    ld hl, sp-$09
    ld hl, sp-$09
    add sp, -$09
    add sp, -$09
    ldh a, [$ef]
    ret nc

    rst $28
    ret nc

    rst $28
    ret nc

    rst $28
    ldh [$cf], a
    and b
    rst $08
    and b
    rst $08
    ret nz

    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    add h
    ccf
    add h
    ccf
    add h
    ccf
    inc b
    ld a, a
    inc b
    ld a, a
    ld [$087f], sp
    ld a, a
    ld [$88ff], sp
    ld a, a
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld sp, $f8ee
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
    add b
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    add b
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    jp $c1fd


    rst $38
    add c
    rst $38
    add c
    rst $38
    jp nz, Jump_000_02ff

    rst $38
    ld b, $fb
    rlca
    ld a, [$fa03]
    ld [bc], a
    ei
    inc bc
    ld a, [$fa03]
    ld [bc], a
    ei
    inc bc
    cp $02
    rst $38
    inc c
    rst $30
    dec b
    or $04
    rst $30
    inc b
    rst $30
    inc b
    rst $30
    rla
    db $e4
    ld d, $e5
    inc h
    rst $08
    dec b
    xor $25
    adc $4a
    xor l
    ld l, b
    adc a
    ld c, e
    xor h
    xor e
    ld c, h
    xor a
    ld c, b
    xor $09
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
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$090e], sp
    inc c
    ld [de], a
    inc e
    ld de, $121c
    jr jr_016_5e2a

    jr c, jr_016_5e29

    jr c, jr_016_5e2e

    jr c, jr_016_5e2d

    jr c, jr_016_5e32

    jr c, jr_016_5e31

    jr c, jr_016_5e36

    add hl, sp
    inc de
    add hl, de
    ld de, $131d
    inc e
    add hl, bc
    inc c
    ld [$040e], sp
    rlca
    ld [bc], a
    inc bc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_016_5e29:
    rst $38

jr_016_5e2a:
    rst $38
    rst $38
    rst $38

jr_016_5e2d:
    rst $38

jr_016_5e2e:
    rst $38
    rst $38
    rst $38

jr_016_5e31:
    nop

jr_016_5e32:
    nop
    rst $38
    ld a, a
    add b

jr_016_5e36:
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
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $30
    inc c
    rst $30
    inc b
    rst $30
    inc c
    rst $30
    inc b
    rst $30
    add h
    ld [hl], a
    inc c
    rst $30
    inc b
    rst $30
    inc c
    rst $30
    xor h
    ld d, a
    or h
    ld b, a
    inc e
    rst $20
    db $f4
    rlca
    db $f4
    rlca
    push af
    ld b, $7d
    add [hl]
    inc [hl]
    rst $00
    inc b
    rst $30
    add h
    ld [hl], a
    rlca
    db $f4
    rlca
    db $f4
    rlca
    db $f4
    call nc, $c427
    scf
    and [hl]
    ld d, l
    inc b
    rst $30
    ld b, h
    or a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    ld h, b
    ld a, h
    sub h
    rst $00
    xor d
    inc bc
    ld d, l
    ld de, $38ba
    ld a, l
    ld a, b
    ld [$e268], a
    ld l, l
    ld h, l
    xor d
    jp nz, Jump_016_656d

    xor d
    jp c, Jump_016_456d

    xor $ea
    rst $00
    pop hl
    rst $00
    add h
    jp $81c2


    ld b, d
    add c
    ld [hl+], a
    pop bc
    add d
    ld h, c
    ld d, b
    and e
    and e
    ld d, c
    push de
    xor e
    sub h
    rst $00
    ld [hl], b
    ld a, h
    nop
    nop
    nop
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
    ldh a, [$f0]
    rrca
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38

jr_016_5f09:
    nop
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop
    ldh a, [rIF]
    db $10
    rst $38
    nop
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $10
    rst $38
    db $10
    rst $38
    inc d
    ei
    inc d

jr_016_5f23:
    ei
    dec d

jr_016_5f25:
    ld a, [$de31]
    jr z, jr_016_5f09

    ld [$08ff], sp
    rst $38
    ld [$18ff], sp
    rst $28
    jr jr_016_5f23

    jr jr_016_5f25

    inc e

jr_016_5f37:
    db $eb
    jr @-$0f

    jr @-$0f

    ld a, [de]
    db $ed
    dec b

jr_016_5f3f:
    cp $0f
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    ld a, a
    add h
    xor a
    ld d, h
    scf
    call nz, $06fd
    ld a, l
    add [hl]
    db $fd
    ld b, $fd
    ld b, $fe
    inc bc
    cp $03
    ld a, [c]
    dec bc
    db $76
    adc e
    ld b, $fb
    rlca
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_016_5f81:
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
    ldh [rLCDC], a
    ld h, b
    ret nz

    ld [hl], b
    ld b, b
    ld [hl], b
    and b
    jr nc, @+$62

    jr c, jr_016_5f37

    jr c, @+$62

    jr c, @-$5e

    jr c, @+$62

    jr c, jr_016_5f3f

    jr c, jr_016_5f81

    cp b
    and b
    or b
    ret nz

    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    ld h, b
    add b
    ldh [rP1], a
    ret nz

    nop
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
    nop

jr_016_5fcb:
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    rst $38

jr_016_5fd9:
    rst $38
    add c
    cp $81
    cp $41
    cp $40
    rst $38
    ret nz

jr_016_5fe3:
    ld a, a
    ret nz

    ld a, a
    xor b
    ld [hl], a
    jr nz, @+$01

    jr z, jr_016_5fe3

    ld a, [hl]

jr_016_5fed:
    and c
    dec d
    ld a, [$f619]
    dec a
    jp nc, $d13e

    ld a, [hl+]
    db $dd
    jr z, jr_016_5fd9

    jr c, jr_016_5fcb

    jr jr_016_5fed

    db $10
    rst $28
    or b
    ld c, a
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$f005]
    rlca
    db $fd
    ld [bc], a
    rst $38
    nop
    ld sp, hl
    ld [bc], a
    db $fd
    ld [bc], a
    call nz, $023b
    db $fd
    jp nz, $c23d

    dec a
    add d
    ld a, l
    inc bc
    db $fc
    add c
    ld a, [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_016_604b:
    rst $38
    rst $38
    add b
    add b
    ld a, a
    ld a, [hl]
    add c
    cp $01
    rst $38
    ld bc, $01fe
    add b
    ld a, a
    ld a, [hl]
    add c
    cp $01
    add c
    ld a, a
    ld bc, $00ff
    rst $38

jr_016_6064:
    nop
    rst $38
    ld a, a
    rst $38
    and b
    rst $38
    jr nc, jr_016_604b

    ldh a, [$1f]
    ld hl, sp+$0f
    ld [$0eff], sp
    push af
    dec c
    or $17
    ld [$ab56], a
    ld e, a
    and c
    cp a
    ld b, c
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_016_6064

    jr nz, jr_016_60a6

    ldh [$2f], a
    ret nc

    cpl
    ret nc

    ccf
    ret nz

    db $10
    add sp, $15
    add sp, -$56
    ld d, l
    sbc b
    ld h, a
    xor b
    ld d, a
    and l
    ld e, d
    ld h, h
    sbc e
    ld h, h
    sbc e
    ld a, [c]

Jump_016_609f:
    dec c
    cp $01
    ld a, [$fb05]
    inc b

jr_016_60a6:
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    cp $ff
    ldh a, [rIE]
    ret nz

    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop

jr_016_60da:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    inc c
    di
    nop
    rst $38
    nop
    rst $38
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
    ld h, b
    add b
    jr jr_016_60da

    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    ret z

    ccf
    ld h, $df
    add c
    ld a, a
    ld e, h
    and e
    ld b, $f9
    ret nc

    cpl
    dec c
    ld a, [c]
    dec b

jr_016_6117:
    ld a, [$f708]
    sbc h
    ld h, e
    cp [hl]
    ld b, c
    db $10
    rst $28
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ldh [$9f], a
    sub b
    rst $28
    ld b, b
    rst $38
    and b
    ld a, a
    ldh [$3f], a
    db $10
    rst $38
    xor b
    rst $18
    sbc b
    rst $28
    add h
    rst $38
    add e
    cp $82
    rst $38
    ld b, c
    rst $38
    ld b, d
    db $fd
    inc h
    ei
    ld hl, $73fe
    sbc h
    jr c, jr_016_6117

    jr c, @-$2f

    db $fc
    rlca
    db $fc
    rlca
    sub $ab
    add e
    db $fd
    ld b, c
    rst $38
    pop bc
    ld a, [hl]
    ld hl, $b87e
    daa
    xor b
    scf
    cp b
    rla
    rst $10

jr_016_615f:
    jr jr_016_615f

    add hl, bc
    rrca
    add sp, $3f
    call nz, $847f
    rst $38
    ld [bc], a
    cp e
    ld b, d
    rst $38
    ld bc, $01fd
    ret c

    dec h
    rst $28
    db $10
    ld a, h
    add b
    ld a, a
    add b
    ld a, a
    add b
    or a
    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ret nz

    rst $38
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    pop hl
    ld e, $fb
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
    nop
    rst $38
    nop
    ei
    inc b
    pop af
    ld c, $c0
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
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra

jr_016_61e1:
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
    jr nz, @+$01

    sub b
    ld a, a
    call z, Call_016_623f
    sbc a
    ld [hl], c
    adc a
    nop
    rst $38

jr_016_61fc:
    inc b
    ei
    ld b, d
    cp l
    dec bc
    db $f4
    ld bc, $00fe
    rst $38
    ld d, b
    xor a
    jr z, jr_016_61e1

    sub b
    ld l, a
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
    ret nz

    ccf
    ld h, c
    sbc [hl]
    dec b
    ld a, [$fc83]
    adc b
    rst $30
    ld h, h
    db $db
    and d
    ld a, l
    cp e
    ld h, h
    ld e, e
    or h
    cpl
    ret c

    rrca
    ld hl, sp+$17
    db $ec
    dec de
    and $1b
    and $95
    db $eb
    and [hl]
    reti


    ld b, a
    ld a, b
    rst $10
    ld l, b
    ld l, e
    or h
    ld [hl], c

Call_016_623f:
    sbc [hl]
    cp b
    ld d, a
    ld l, h
    adc e
    cp d
    ld c, l
    cp [hl]
    ld b, l
    rst $38
    ld [bc], a
    ei
    ld [bc], a
    db $fd
    ld bc, $01fd
    cp [hl]
    ret nz

    cp $80
    ld a, [hl]
    ret nz

    rst $30
    ld b, b
    jr c, jr_016_62ba

    ld a, a
    jr nz, jr_016_61fc

    jr nc, @-$3f

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
    ld bc, $0701
    rlca
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
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add e
    db $fc
    rrca
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
    nop
    rst $38
    nop
    rst $38
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
    ld a, [hl]
    add c
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    add b

jr_016_62ba:
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp-$01
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
    jr nz, @+$01

    nop

jr_016_62d5:
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add sp, -$01
    jr z, @+$01

    ld a, $df
    add a
    ld a, a
    ld b, e
    cp a
    ld l, c
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, a
    cp b
    dec hl
    call nc, $ea15
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    ld a, c
    add [hl]
    inc a
    jp Jump_016_609f


    push de
    ld a, [hl+]
    ld h, h
    sbc e
    ld d, b
    xor a
    ld [$04f7], sp
    ei
    ld [bc], a
    db $fd
    add e
    ld a, h
    pop bc
    ld a, $e9
    ld d, $d6
    add hl, bc
    db $e3
    inc c
    pop af
    ld b, $f9
    add d
    ld a, [$6c81]
    pop de
    xor e
    ld [hl], h
    cp [hl]
    ld h, c
    sbc d
    dec [hl]
    rst $28
    jr @+$01

    ld [$0ce7], sp
    ei
    ld b, $f7
    ld [bc], a
    cp c

Jump_016_632d:
    ld b, e
    ld e, $e1
    rst $18
    and b
    xor [hl]
    ret nc

    ld [hl], e
    ld c, h
    ld l, e
    inc [hl]
    cp a
    jr nz, jr_016_62d5

    dec d
    jp c, $ff15

    ld [$0000], sp
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
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
    db $fc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
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

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
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
    ret nz

    ccf
    rst $38
    rst $38

jr_016_63a2:
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    inc bc
    rst $38
    nop

jr_016_63b7:
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
    dec b
    rst $38
    ret


    rst $38
    ld b, b
    rst $38
    inc sp
    rst $38
    ld [$34ff], sp
    rst $08
    jp $e03f


    rra
    ldh a, [rIF]
    ld a, b
    add a
    ld a, h
    add e
    inc bc
    db $fc
    ld b, e
    cp h
    db $e3
    inc e
    ld a, c
    add [hl]
    cp a
    ld b, b
    ld a, a
    add b
    cpl
    ret nc

    rla
    add sp, -$45
    ld b, h

jr_016_63ea:
    ld e, l
    and d
    xor [hl]
    ld d, c
    rst $38
    nop
    rst $18
    jr nz, jr_016_63a2

    ld d, b
    or $08
    ld a, [c]
    inc b

jr_016_63f8:
    rst $38
    nop
    ld a, l
    add b
    ld a, l
    add b
    cp [hl]
    ld b, b
    sbc [hl]
    jr nz, @-$0f

    db $10
    rst $38
    nop
    rst $20
    ld [$04f3], sp
    db $fd
    ld [bc], a
    ld a, [$fc01]
    add c
    sbc $80
    ld a, a
    ret nz

    cp a
    ld h, b
    ld a, a
    jr nz, jr_016_63b7

    jr nc, jr_016_63ea

    jr jr_016_63f8

    ld [$0cf4], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
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
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a

jr_016_646c:
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
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
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
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [$02ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

jr_016_64b6:
    ret z

    ccf
    ld l, [hl]
    sub a
    cp a
    ld b, c
    rst $38
    nop
    rst $30
    ld [$00fe], sp
    di
    nop
    db $eb
    nop
    sbc d
    nop
    jp hl


    db $10
    sbc h
    ld h, b
    sbc [hl]
    ld h, b
    ccf
    ret nz

    rra
    ld h, b
    and a
    jr jr_016_646c

    ld [$006f], sp
    ld h, $00
    or e
    nop
    ret


    nop
    ld h, h
    nop
    ld a, a
    nop
    cp a
    db $10
    ld e, a
    ld [$04ff], sp
    rst $30
    ld [bc], a
    ei
    ld [bc], a
    db $fd
    ld bc, $00fc
    ld a, a
    add b
    ccf
    ld b, b
    rra
    jr nz, jr_016_64b6

    nop
    sbc e
    nop
    call Call_000_2200
    inc b
    add a
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
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
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    nop
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
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
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop

Jump_016_656d:
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rra
    rst $28
    rrca
    di
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
    jr @+$01

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
    or b
    rra
    db $ec
    rra
    ld d, [hl]
    xor e
    sub c
    ld l, a
    adc b
    scf
    adc a
    db $10
    ld c, a
    nop
    dec d
    ld [bc], a
    adc d
    ld bc, $00ff
    rst $28
    db $10
    rst $38
    nop
    cp $00
    db $fd
    ld [bc], a
    cp a
    nop
    db $d3
    nop
    ld [hl], l
    nop
    and l
    nop
    jp c, $ed00

    nop
    or $04
    ei
    ld [bc], a
    db $fd
    ld bc, $80fe
    ld e, a
    ld b, b
    ld l, a
    nop
    or [hl]
    nop
    db $db
    nop
    adc $00
    or $00
    and e
    nop
    add hl, sp
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
    pop hl
    cp $83
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0e
    ldh a, [rNR32]
    ldh [rNR32], a
    ldh [rNR34], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
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
    rst $38
    nop
    ld a, a
    add b
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
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rst $08
    rrca
    di
    rlca
    ld hl, sp+$00
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add sp, $3f
    ret c

    ccf
    call $fa3e
    rlca
    ld a, l
    add e

jr_016_6664:
    ld a, [hl]
    ld bc, $00bf
    rst $18
    nop
    push af
    nop
    xor e
    nop
    push af
    nop
    ld c, h
    nop
    jp hl


    nop
    sbc e
    nop
    ld c, h
    nop
    or a
    nop
    dec bc
    nop
    sub b
    nop
    adc $80
    ld b, c
    ld b, b
    and c
    jr nz, jr_016_6664

    db $10
    rst $08
    ld [$04b7], sp
    db $db
    ld [bc], a
    dec e
    ld bc, $00fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [$df]
    ldh [$7f], a
    add b
    rst $38
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
    add b
    rst $38
    nop
    cp $00
    db $fc
    nop
    jr jr_016_66b4

jr_016_66b4:
    ld [$0400], sp
    nop
    inc b
    nop
    ld [$1800], sp
    ld [$e8e8], sp
    ret z

    ld c, b
    ret c

    ld e, b
    add sp, $68
    add sp, $08
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    ccf
    ld a, a
    adc a
    rra

jr_016_66f5:
    db $e3
    rlca
    ld sp, hl
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld [$06f7], sp
    ld sp, hl
    ld bc, $00fe
    rst $38
    add hl, bc
    ld hl, sp+$08
    db $fc
    nop
    rst $38
    nop
    rst $38
    inc b
    di
    nop
    ld sp, hl
    add b
    cp $50
    rst $28
    add sp, $37
    ret c

    ccf
    and $1f
    rst $38
    inc bc
    ld a, [$ea01]
    ld bc, $0062
    sub b
    nop
    xor a
    ld [$064d], sp
    ld d, a
    inc bc
    or b
    nop
    ld d, l
    nop
    inc de
    jr nz, jr_016_66f5

    jr nc, @-$11

    nop
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_016_6749:
    rst $38
    nop
    rst $38
    nop
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
    jr nc, jr_016_6749

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
    ld a, a
    add b
    rrca
    ldh a, [rIE]
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
    ccf
    rst $00
    rrca
    pop af
    inc bc
    db $fc
    ld bc, $40fe
    cp a
    db $10
    rst $28
    ld b, b
    cp a
    nop
    ccf
    ld [$04c7], sp
    di
    ld bc, $80f8
    ld a, [hl]
    nop
    ccf
    db $10
    rst $08
    nop
    rst $20
    add b
    ld a, c
    add $3c
    add b
    rst $38
    ld d, b
    rst $38
    jr nc, @+$01

    ld l, d
    dec e
    ld h, l
    ld c, $fb
    rlca
    adc b
    ld [hl], a
    call nz, Call_016_55bb
    ld l, d
    ld a, [hl+]
    dec [hl]
    sbc $19
    rst $08
    inc b
    ld [de], a
    inc bc
    ld c, c
    ld bc, $0098
    pop hl
    nop
    pop hl
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    db $fc
    inc bc
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
    rlca
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
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ld a, a
    rst $38
    rra
    ld a, a
    add a
    rra
    pop hl
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ld b, b
    sbc a
    nop
    rst $20
    nop
    ei
    ld [bc], a
    db $fd
    nop
    rst $38
    ldh [rIE], a
    ld l, b
    rst $30
    db $f4
    dec sp
    xor b
    ld e, a
    ld h, [hl]
    sbc a
    and c
    ld e, a
    ldh [$1f], a
    ld [hl], a
    adc b
    rst $18
    ldh [$7d], a
    ld [hl+], a
    ccf
    stop
    nop
    nop
    ld bc, $0002
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
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    nop
    rrca
    db $10
    ld de, $0000
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    nop
    inc d
    dec d
    ld d, $17
    nop
    nop
    jr jr_016_68d5

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    jr nz, jr_016_68cc

jr_016_68cc:
    nop
    nop
    nop
    nop
    ld hl, $0022
    inc hl
    inc h

jr_016_68d5:
    dec h
    ld h, $27
    jr z, jr_016_6903

    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_016_6916

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_016_6926

    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec a
    ld a, $00
    nop
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
    dec a
    dec a
    ld c, b

jr_016_6903:
    ld c, c
    ld c, d
    ld c, e
    daa
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    dec a
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, b

jr_016_6916:
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
    dec a
    ld h, e
    ld h, h
    dec b
    ld h, l
    ld h, [hl]

jr_016_6926:
    ld h, a
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
    nop
    ld [hl], e
    ld [hl], h
    nop
    nop
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
    nop
    nop
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    nop
    nop
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    adc e
    ld c, e
    adc h
    nop
    nop
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ld b, $66
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sub d
    sub e
    nop
    nop
    add a
    sub h
    sub l
    sub [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sub a
    nop
    nop
    nop
    nop
    nop
    sbc b
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sbc c
    nop
    nop
    nop
    nop
    nop
    sbc d
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    sbc e
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    sbc h
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    dec de
    ld a, [de]
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
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, c
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
    ld bc, $0101
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
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0602
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld hl, $0602
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    dec b
    rlca
    inc bc
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    jr nz, jr_016_6a65

jr_016_6a65:
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    ld b, $02
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
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld bc, $0000
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
    inc bc
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
    nop
    nop
    inc hl
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
    ld b, b
    ld b, b
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
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
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    nop
    rst $38
    rrca
    ldh a, [$7f]
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
    rra
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
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
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
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
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
    ld a, a
    add b
    rra
    ldh [rP1], a
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
    cp $01
    ld hl, sp+$07
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
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    ret nz

    ccf
    db $fc
    inc bc
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
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    db $fc
    db $fc
    ld a, h
    db $fc
    ld a, [hl]
    cp $3e
    cp $3f
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $f1
    rra
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld b, $f8
    inc c
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$0c]
    ldh a, [$86]
    ld a, b
    jp $e13c


    ld e, $70
    rrca
    jr nc, jr_016_6d58

    jr c, jr_016_6d4e

jr_016_6d4e:
    jr jr_016_6d50

jr_016_6d50:
    jr jr_016_6d56

    dec sp
    rlca
    ld a, l
    rlca

jr_016_6d56:
    push af
    rrca

jr_016_6d58:
    rst $30
    rrca
    db $f4
    rrca
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
    add b
    ld a, a
    add b
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
    cp $fe
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$78]
    ld hl, sp+$3f
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    ld b, b
    cp a
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld c, a
    cp a
    cpl
    rst $18
    cpl
    rst $18
    xor a
    ld e, a
    ld l, a
    rra
    ld l, a
    rra
    daa
    rlca
    daa
    rlca
    ld a, a
    ccf
    cp a
    ld l, a
    cp a
    ld a, a
    ccf
    rst $28
    rra
    rst $28
    rra
    ld l, a
    rra
    cpl
    rra
    cpl
    rra
    ld l, a
    sbc a
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    nop
    rrca
    nop
    rrca
    nop
    inc c
    inc bc
    inc c
    rlca
    inc c
    rlca
    inc e
    rlca
    inc e
    rlca
    scf
    rrca
    ld [hl], a
    rrca
    rst $30
    rrca
    or $0f
    or $0f
    or $0f
    or $0f
    or $0f
    ld sp, hl
    and $f3
    db $ec
    di
    db $ec
    di
    db $ec
    di
    db $ec
    di
    db $ec
    di
    db $ec
    di
    db $ec
    di
    db $ec
    ld [c], a
    db $dd
    db $e3
    call c, $dce3
    db $e3
    call c, $d8e7
    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $00
    cp b
    rst $00
    cp b
    rst $00
    cp b
    rst $00
    cp b
    rst $00
    cp b
    rst $00
    cp b
    rst $00
    cp b
    rst $00
    cp b
    rst $08
    or b
    adc e
    ld [hl], h
    adc l
    ld [hl], d
    adc l
    ld [hl], d
    adc l
    ld [hl], d
    adc e
    ld [hl], h
    adc l
    ld [hl], d
    adc c
    db $76
    adc a
    ld [hl], b
    dec c
    ld a, [c]
    add hl, bc
    or $09
    or $5b
    and h
    dec de
    db $e4
    ld e, a
    and b
    ld e, a
    and b
    ld e, $e0
    dec de
    db $e4
    rra
    ldh [$1f], a
    ldh [rNR31], a
    db $e4
    dec de
    db $e4
    dec de
    db $e4
    dec d
    ld [$c43b], a
    dec a
    jp nz, $cc33

    dec sp
    call nz, $c03e
    ld a, $c0
    ld a, $c0
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_016_6ed1:
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    and b
    ld e, a
    ld b, b
    cp a
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
    daa
    ret c

    ccf
    ret nz

    ld a, a
    add b
    ld a, e
    add h
    ld [hl], d
    adc l
    jr nc, jr_016_6ed1

    db $10
    rst $28
    ld b, $f9
    and c

jr_016_6f07:
    ld e, [hl]
    ld d, c
    xor [hl]
    ret nc

    cpl
    ld [hl], l
    adc d
    or c
    ld c, [hl]
    cp a
    ld b, b
    xor e
    ld d, h
    rst $38
    nop
    ei
    inc b
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$f205]
    dec b
    ei
    inc b
    di
    inc b
    di
    inc b
    ei
    inc b
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
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld sp, hl
    ld [bc], a
    db $fd
    ld [bc], a
    add hl, sp
    jp nz, $8279

    cp c
    ld b, d
    cp c
    ld b, d
    jr c, jr_016_6f07

    ld a, h
    add e
    ld e, [hl]
    and c
    cp d
    ld b, l
    ld h, $d9
    ld a, $c1
    cp $01
    ld a, [hl]
    add c
    ld a, [$7e05]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    db $fd
    nop
    ld a, a
    add b
    ld a, l
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld [hl], h
    add b
    ld h, [hl]
    add b
    ld [$0000], a
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
    ld bc, $07fe
    ld hl, sp+$0f
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ret nz

    ccf
    ld a, a
    add b
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    rst $38
    rst $38
    add c
    cp $bf
    ld b, b
    rst $38
    nop
    rst $28
    db $10
    rst $30
    ld [$bd42], sp
    nop
    rst $38
    and b
    ld e, a
    ldh [$1f], a
    inc c
    di
    ld c, $f1
    ld bc, $50fe

jr_016_6fdd:
    xor a
    ld [hl], b
    adc a
    ld a, b
    add a
    ld hl, sp+$07
    adc c
    db $76
    and e
    ld e, h
    add e
    ld a, h
    ld bc, $25fe
    jp c, Jump_000_1be4

    ret nc

    cpl
    ld e, [hl]
    and c
    sbc $21
    sbc $21
    sbc $21
    ret z

    scf
    jp hl


    ld d, $20
    rst $18
    jr z, @-$27

    jr nz, @-$1f

    jr z, jr_016_6fdd

    nop
    rst $38
    jr nc, @-$2f

    or h
    ld c, e
    sub [hl]
    ld l, c
    sub $29
    ld [hl], a
    adc b
    rst $30
    ld [$00ff], sp
    ei
    inc b
    ei
    inc b
    di
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $a1
    ld e, [hl]
    adc l
    ld [hl], d
    add l
    ld a, d
    add h
    ld a, e
    add h
    ld a, e
    add l
    ld a, d
    ld b, h
    cp e
    ld b, [hl]
    cp c
    ld d, [hl]
    xor c
    ld h, [hl]
    sbc c
    db $76
    adc c
    ld [hl], h
    adc c
    ld a, d
    add l
    ld a, e
    add h
    ld a, a
    add b
    ld a, e
    add h
    nop
    nop
    nop
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
    rlca
    rlca
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
    cp $ff
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp-$39
    ld hl, sp-$10
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    ld hl, sp+$00
    ld hl, sp+$00

jr_016_709d:
    ld hl, sp+$00
    ld hl, sp+$03
    rst $38
    dec b
    ei
    push af
    dec bc
    and $19
    or $09
    rst $30

jr_016_70ab:
    ld [$0cf3], sp
    and c
    ld e, [hl]
    dec b
    cp $02
    rst $38
    jp nz, $c93f

    scf
    pop hl
    rra
    ldh [$1f], a
    pop af
    rrca
    ld [hl], b
    adc a
    nop
    rst $38
    jr jr_016_70ab

    jr z, jr_016_709d

    cp b
    ld b, a
    call c, $dc23
    inc hl
    inc e
    db $e3
    inc e
    db $e3
    ld l, $d1
    rrca
    ldh a, [rP1]
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld h, c
    sbc [hl]
    ld h, d
    sbc l
    ld a, e
    add h
    ld l, e
    sub h
    dec l
    jp nc, $ca35

    and c
    ld e, [hl]
    add b
    ld a, a
    add d
    ld a, l
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret


    ld [hl], $e8
    rla
    ld [$ea15], a
    dec d
    ld l, a
    sub b
    dec b
    ld a, [$e817]
    rla
    add sp, $17
    add sp, $07
    ld hl, sp+$0b
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    sbc e
    ld h, h
    add h
    ld a, e
    dec b
    ld a, [$33cc]
    call c, $e223
    dec e
    and $19
    ld a, [hl]
    add c
    db $76
    adc c
    ld a, [hl]
    add c
    ld bc, $0301
    inc bc
    rlca
    rlca
    rra
    rra
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
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
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
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    rst $08
    ccf
    rst $28
    rra
    rst $20
    rra
    ld [hl], e
    adc a
    ld [hl], e
    adc a
    add hl, sp
    rst $00
    inc e
    db $e3
    ld e, [hl]
    pop hl
    ld l, [hl]
    pop af
    cpl
    ldh a, [rNR22]
    ld hl, sp+$17
    ld hl, sp+$0b
    db $fc
    dec bc
    db $fc
    dec b
    cp $05
    cp $42
    cp a
    ld [bc], a
    rst $38
    add c
    ld a, a
    and c
    ld e, a
    nop
    rst $38
    ret z

    scf
    adc $31
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    cp b
    ld c, a
    ret nc

    cpl
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $40
    cp a
    inc b
    ei
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec d
    ld [$ba45], a
    dec de
    db $e4
    xor a
    ld d, b
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$09f6], sp
    or a
    ld c, b
    rst $30
    ld [$3cc3], sp
    dec bc
    db $f4
    inc bc
    db $fc
    dec b
    ld a, [$fa05]
    dec c
    ld a, [c]
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    db $10
    rst $28
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rra
    rra
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
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
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
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    rst $18
    ccf
    rst $08
    ccf
    rst $20
    rra
    rst $20
    rra
    di
    rrca
    ld sp, hl
    rlca
    ld a, c
    add a
    ld a, h
    add e
    inc a
    jp $c936


    dec de
    db $e4
    ld e, e
    db $e4
    dec l
    ld a, [c]
    dec l
    ld a, [c]
    ld d, $f9
    inc d
    ei
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    dec b
    cp $05
    cp $06
    rst $38
    add [hl]
    ld a, a
    ld bc, $41ff
    cp a
    nop
    rst $38
    ld bc, $90ff
    ld l, a
    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    ld c, h
    or e
    jp nz, $e03d

    rra
    ldh a, [$1f]
    ldh [$1f], a
    ldh a, [rIF]
    cp b
    ld c, a
    ldh a, [rIF]
    db $fc
    rlca
    ldh a, [rTAC]
    db $fc
    inc bc
    jp c, $f803

    inc bc
    di
    dec c
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
    ret nz

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
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
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
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    sbc a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $20
    rra
    ld h, a
    sbc a
    or e
    ld c, a
    add hl, sp
    rst $00
    ld e, c
    and a
    sbc h
    ld h, e
    xor h
    ld d, e
    ld c, [hl]
    or c
    ld d, a
    xor b
    dec hl
    call nc, $d42b
    dec d
    ld [$ea55], a
    ld a, [hl+]
    push af
    db $eb
    db $f4
    ld d, l
    ld a, [$fa15]
    ld a, [hl+]
    db $fd
    ld a, [de]
    db $fd
    dec d
    cp $15
    cp $06
    rst $38
    ld d, $ef
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld b, b
    cp a
    ret nz

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
    cp $ff
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
    ld hl, sp+$07
    ld hl, sp+$0f
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
    nop
    rst $38
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
    nop
    rst $38
    nop
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
    rra
    rst $38
    sbc a
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    rst $20
    rra
    ld h, e
    sbc a
    ld [hl], e
    adc a
    or c
    ld c, a
    cp b
    ld b, a
    call c, $5c23
    and e
    ld l, [hl]
    sub c
    or [hl]
    ld c, c
    or a
    ld c, b
    ld e, e
    and h
    ld e, e
    and h
    xor l
    jp nc, $d2ad

    sub $e9
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rrca
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
    ld a, a
    add b
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
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    adc a
    ld a, a
    rst $00
    ccf
    rst $00
    ccf
    db $e3
    rra
    ld hl, sp-$01
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
    inc bc
    db $fc
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
    ccf
    ret nz

    rlca
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
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
    dec b
    dec b
    nop
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
    rlca
    ld [$0a09], sp
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    dec c
    ld c, $00
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
    db $10
    ld de, $1312
    nop
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_016_7522

jr_016_7522:
    add hl, de
    ld a, [de]
    nop
    dec de
    inc e
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_016_7551

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    nop
    daa
    jr z, jr_016_7564

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $0d
    dec c
    cpl
    jr nc, jr_016_7576

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_016_7586

    ld a, [hl-]
    dec sp
    inc a
    dec c

jr_016_7551:
    dec c
    dec c
    dec c
    dec a
    nop
    nop
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    dec c
    dec c
    dec c
    ld b, a

jr_016_7564:
    ld c, b
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    dec c
    dec c
    ld d, d
    ld d, e
    nop
    nop

jr_016_7576:
    ld d, h
    ld d, l
    nop
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
    nop
    nop
    ld h, b

jr_016_7586:
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
    cpl
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    dec c
    add e
    add h
    dec d
    nop
    add l
    add [hl]
    add a
    adc b
    adc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    adc d
    nop
    adc e
    adc h
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add e
    adc l
    adc [hl]
    adc a
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    sub b
    nop
    sub c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    sub d
    nop
    sub e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    sub h
    nop
    sub l
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld b, b
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0201
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    dec b
    ld bc, $0105
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $02
    nop
    nop
    dec b
    dec b
    dec b
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld b, $06
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
    inc b
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
    nop
    nop
    inc b
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
    nop
    ld bc, $0204
    ld b, $02
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
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0500
    ld bc, $0101
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
    jr nz, jr_016_76ee

jr_016_76ee:
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
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    add b
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
    ld bc, $01fe
    cp $00
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rTAC], a
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
    ld bc, $01fe
    cp $03
    db $fc
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
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [$03]
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
    ld bc, $07fe
    ld hl, sp+$1f
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
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [$03]
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
    rst $38
    nop
    rra
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    pop af
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    pop af
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    rst $38
    db $fc
    cp $fd
    cp $f9
    cp $f9
    db $fc
    di
    db $fc
    di
    db $fc
    di
    ld hl, sp-$19
    ld hl, sp-$19
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld h, b
    ld e, $70
    ld c, $70
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop hl
    rra
    pop hl
    rra
    pop bc
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
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
    db $fc
    rst $38
    db $fc
    cp $fd
    cp $f9
    cp $f9
    db $fc
    di
    db $fc
    di
    ld hl, sp-$09
    ld hl, sp-$19
    ld hl, sp-$19
    ldh a, [$ef]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh [$df], a
    ldh [$9f], a
    ldh [$9f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    pop bc
    ld a, a
    add c
    ld a, a
    ld bc, $02ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, [hl]
    rst $38
    ld c, b
    rst $38
    adc c
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $80
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
    ldh [$1f], a
    ldh [$1f], a
    rra
    rst $38
    rra
    rst $38
    rrca
    adc a
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    adc a
    ldh a, [$7f]
    ldh [$3f], a
    ldh [$bf], a
    ldh [$5f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

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
    add b
    ld a, a
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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    cp $fd
    cp $fd
    cp $f9
    db $fd
    ld a, [$f2fd]
    cp $f1
    ld a, [$fcf5]
    db $e3
    db $fc
    db $e3
    db $f4
    db $eb
    ld hl, sp-$39
    ld hl, sp-$39
    ldh [$df], a
    ldh [$9f], a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ccf
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
    ld [hl+], a
    rst $38
    ld h, a
    cp $21
    cp $21
    cp $03
    db $fc
    inc bc
    db $fc
    dec de
    db $fc
    dec de
    db $fc
    rrca
    ldh a, [$0e]
    ldh a, [$0a]
    db $f4
    ld b, $f8
    ld l, a
    ldh a, [$6d]
    ldh a, [$4c]
    pop af
    inc a
    pop bc
    ccf
    ret nz

    ld a, c
    jp nz, $e219

    sbc l
    ld [c], a
    sbc e
    db $e4
    dec de
    db $e4
    xor e
    ld d, h
    rst $38
    nop
    scf
    ret z

    rla
    add sp, -$09
    ld [$c03f], sp
    ld l, a
    sub b
    xor l
    ld d, d
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
    add b
    rst $38
    add b
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

    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$01
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
    rst $28
    rra
    pop hl
    rra
    ret nz

    ccf
    ldh [$df], a
    ldh [$df], a
    ldh [$9f], a

jr_016_7a96:
    ret nz

    cp a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    ld b, $f9
    ld b, $f9
    ld c, $f1
    ld c, $f1
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    ld c, l
    or d
    dec e
    ld [c], a
    ld e, d
    push hl
    sbc e
    db $e4
    ld a, e
    add h
    ccf
    ret nz

    ld [hl], a
    adc b
    scf
    ret z

    ld e, a
    and b
    rst $38
    nop
    rst $28
    db $10
    or $00
    cp $00
    or $00
    adc a
    jr nz, jr_016_7a96

    nop
    xor l
    nop
    ld a, l
    nop
    ld e, l
    nop
    dec hl
    ld b, b
    ld a, [$7a00]
    add b
    ld a, d
    add b
    ld a, e
    add b
    cp $00
    ld a, [c]
    inc b
    ld h, [hl]
    nop
    rst $00
    nop
    adc a
    nop
    xor a
    nop
    rst $20
    ld [$08c7], sp
    rst $30
    ld [$00df], sp
    rst $08
    db $10
    rst $08
    db $10
    rst $08
    db $10
    rst $38
    nop
    db $db
    inc h
    sbc [hl]
    ld hl, $20df
    push de
    ld a, [hl+]
    call nc, $ff2a
    nop
    rst $38
    nop
    db $fc
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
    rst $38
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_016_7b27:
    nop
    rst $38
    nop
    rst $38
    ldh a, [rVBK]
    rst $38
    ld d, $ff
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld e, b
    and a
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    dec c
    ld a, [c]
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    jr nz, jr_016_7b27

    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld d, h
    xor e
    ret nc

    cpl
    ldh a, [rIF]
    sbc c
    ld h, [hl]
    rst $28
    db $10
    rst $28
    db $10
    ld l, a
    sub b

jr_016_7b5a:
    xor a
    ld d, b
    ld e, a
    and b
    sbc [hl]
    ld hl, $219e
    sbc $21
    cp $01
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    dec a
    ld b, d
    ld sp, hl
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, [$f305]
    inc b
    di
    inc b
    rst $38
    nop
    ld c, a
    nop
    rrca
    nop
    rrca
    nop
    ld [$4800], sp
    nop
    stop
    add hl, de
    nop
    sub b
    nop
    pop de
    nop
    ld [de], a
    nop
    db $d3
    nop
    ld [$b600], a
    nop
    add [hl]
    jr nz, jr_016_7b5a

    nop
    cp $00
    xor $00
    cp $00
    cp a
    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    sbc [hl]
    ld b, c
    db $ec
    ld de, $45b8
    ld b, [hl]
    cp c
    rst $38
    nop
    rst $38
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
    ret nc

    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
    or a
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
    and b
    ld e, a
    add e
    ld a, h
    add e
    ld a, h
    ld c, e
    or h
    ld c, e
    or h
    ld c, a
    or b
    ld c, e
    or h
    ld e, a
    and b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $20
    ld [$09f6], sp
    and e
    inc c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    di
    inc c
    push af
    ld a, [bc]
    add sp, $17
    db $ed
    ld [de], a
    rst $28
    db $10
    rst $00
    db $10
    cp $00
    rst $38
    nop
    cp $00
    ld [$ff00], a
    nop
    rst $38
    nop
    db $ed
    ld [bc], a
    rst $18
    jr nz, jr_016_7ca4

    nop
    ld a, [hl]
    ld bc, $00d7
    ld a, a
    nop
    ld a, [hl]
    ld bc, $412e
    ld a, [hl]
    ld bc, $007f
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, [hl]
    add b
    ld l, a
    sub b
    ld l, [hl]
    sub b
    ld e, h
    and d
    ld a, h
    add d
    cp l
    ld [bc], a
    ei
    nop
    ld sp, hl
    ld [bc], a
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
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
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
    ldh a, [rIF]
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
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_016_7ca4:
    nop
    rst $38
    ld b, c
    rst $38
    ld [bc], a
    rst $38
    ld d, b
    xor a
    cp $01
    sbc $21
    sbc $21
    rst $18
    jr nz, @-$02

    inc bc
    dec e
    ld [c], a
    ld a, l
    add d
    dec d
    ld [$e21d], a
    adc l
    ld [hl], d
    and l
    ld e, d
    dec [hl]
    jp z, Jump_000_02e9

    ret


    ld [bc], a
    reti


    ld [bc], a
    ld sp, hl
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, h
    add e
    call c, $bc03
    inc bc
    cp h
    inc bc
    dec l
    add d
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, e
    add h
    ei
    inc b
    ei
    inc b
    ld [hl], e
    add h
    ei
    inc b
    ei
    inc b
    db $db
    inc h
    ei
    inc b
    swap h
    dec sp
    inc b
    inc hl
    inc b
    ld a, [hl-]
    dec b
    ld e, d
    dec b
    db $eb
    inc b
    ld l, d
    dec b
    ld h, d
    dec c
    ld [c], a
    dec c
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh [rIF], a
    ldh a, [rIF]
    rst $30
    ld [$1fe0], sp
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
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    cp $01
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
    pop bc
    ccf
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [$07ff]
    ld a, [$fa07]
    rlca
    ld a, [$fc06]
    ld b, $fc
    ld b, $fc
    add [hl]
    db $fc
    ld b, $fc
    ld b, $fc
    ld b, $fc
    ld b, $fc
    ld b, $fc
    ld b, $fc
    ld b, $fc
    inc c
    ld hl, sp+$0c
    ld hl, sp+$0d
    ld sp, hl
    ld c, l
    ld sp, hl
    add hl, bc
    ld sp, hl
    add hl, hl
    ld sp, hl
    add hl, bc
    ld sp, hl
    adc e
    ld a, [$fa1b]
    dec bc
    ld a, [$fa0b]
    adc d
    ld a, [$fa0a]
    dec c
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    dec bc
    db $fc
    xor a
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    ld b, a
    db $fc
    rlca
    db $fc
    daa
    db $fc
    daa
    db $fc
    rlca
    db $fc
    inc bc
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    and e
    ld e, a
    and e
    ld e, a
    db $e3
    rra
    ld h, e
    sbc a
    inc bc
    rst $38
    daa
    db $fc
    ld h, $fc
    ld l, $fc
    ld l, $fc
    inc l
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr nc, @+$01

    ld sp, $30ff
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ld hl, $01ff
    cp $01
    cp $01
    cp $01
    cp $03
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
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    cp $0b

jr_016_7e0d:
    cp $0b

jr_016_7e0f:
    cp $fb

jr_016_7e11:
    ld c, $fb

jr_016_7e13:
    ld c, $f9

jr_016_7e15:
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl

jr_016_7e1b:
    rrca
    pop af
    dec de
    ldh a, [rNR24]
    ldh a, [rNR24]
    ldh a, [rNR24]
    ldh a, [rNR24]
    ldh a, [rNR24]
    ret nc

    jr c, jr_016_7e1b

    jr c, jr_016_7e0d

    jr nc, jr_016_7e0f

    jr nc, jr_016_7e11

    jr nc, jr_016_7e13

    jr nc, jr_016_7e15

    jr nc, @-$5e

    ld [hl], b
    and b
    ld [hl], b
    pop bc
    ld h, c
    pop bc
    ld h, c
    pop bc
    ld h, c
    pop bc
    ld h, c
    ld b, c
    pop hl
    ld b, c
    pop hl
    ld b, e
    ld [c], a
    add e
    jp nz, $c283

    add e
    jp nz, $c283

    add a
    call nz, $c487
    add a
    call nz, $c487
    rlca
    add h
    rrca
    adc b
    rrca
    adc b
    rrca
    adc b
    rrca
    adc b
    rrca
    adc b
    rrca
    adc b
    rra
    sub b
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, @+$41

    jr nz, jr_016_7eb4

    jr nz, jr_016_7eb6

    jr nz, jr_016_7eb8

    jr nz, jr_016_7efa

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    add c
    cp $83
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    dec c
    cp $0d
    cp $19
    cp $19
    cp $19
    cp $38
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    adc a
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

jr_016_7eb4:
    ccf
    ret nz

jr_016_7eb6:
    ccf
    ret nz

jr_016_7eb8:
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
    rra
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ld c, $f0
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
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07

jr_016_7efa:
    ld hl, sp+$07
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    cp $81
    cp $81
    cp $81
    cp $81
    ld a, [hl]
    pop bc
    ld a, l
    jp nz, $c27d

    ld a, l
    jp nz, $82fd

    db $fd
    add d
    ei
    add h
    ei
    add h
    ei
    add h
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld [hl], a
    adc b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
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
    rrca
    rst $38
    nop
    rst $38
    ld [hl], b
    rrca
    ld [$3cf0], sp
    jp $be41


    dec de
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    rst $38
    rst $38
    rst $38
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
