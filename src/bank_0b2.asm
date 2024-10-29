SECTION "ROM Bank $0b2", ROMX[$4000], BANK[$b2]

    ld bc, $0000
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
    ret nz

    ret nz

    jr c, jr_0b2_4052

    ld b, $06
    ld bc, $0001
    nop
    nop
    rst $38
    inc bc
    rra
    add a
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    and b
    ld e, a
    ld b, l
    cp d
    xor d
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    nop

jr_0b2_4052:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rra
    rst $38
    rst $38
    rst $38
    nop
    ld sp, $0100
    nop
    ld bc, $0000
    rst $38
    nop
    sbc $20
    db $dd
    ld [hl+], a
    dec b
    ld a, [$0055]
    dec de
    nop
    nop
    nop
    db $fc
    nop
    adc d
    inc [hl]
    sbc d
    nop
    or $00
    jr jr_0b2_408e

jr_0b2_408e:
    ld hl, sp+$00
    ld d, d
    nop
    ld [hl], d
    ld e, $f2
    ld e, $76
    ld [de], a
    ld d, d
    cp [hl]
    ld e, [hl]
    or e
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $ff
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
    sbc b
    ld h, a
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    add e
    nop
    ld bc, $1200
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    ld c, [hl]
    ld b, b
    jr nc, jr_0b2_40f4

    ld [$0408], sp
    inc b
    ld a, a
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $007f
    rst $38
    nop
    or a
    nop
    ccf
    nop
    dec e
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
    rst $38
    nop
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
    ld b, b
    rst $38
    ld bc, $ffff
    rst $38

jr_0b2_40f4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld c, $ff
    xor h
    ld e, a
    xor h
    ld e, a
    ld e, [hl]
    xor a
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
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
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
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl-]
    ld b, l
    rra
    ld h, b
    nop
    ld b, b
    nop
    nop
    jr c, jr_0b2_415f

    jr c, jr_0b2_4161

    jr nc, jr_0b2_41ab

    nop
    ld a, a
    rra

jr_0b2_415f:
    nop
    ld b, c

jr_0b2_4161:
    nop
    ld b, b
    nop
    dec d
    nop
    ld [$1615], sp
    nop
    dec e
    nop
    inc b
    nop
    dec hl
    nop
    ld h, $00
    ld h, $01
    ld a, $01
    inc bc
    nop
    nop
    ccf
    or l
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    rlca
    rst $38
    ld [hl], b
    adc a
    ret z

    scf
    ld a, h
    add e
    ld e, [hl]
    and c
    rst $30
    ld [$00ff], sp
    ei
    inc b
    cp $01
    rst $38
    rst $38
    rst $38
    nop
    ld a, l
    ld [bc], a
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, l
    nop
    db $fd

jr_0b2_41ab:
    nop
    cp $00
    cp $80
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, $bf
    ld bc, $00ff
    rst $18
    nop
    rst $38
    nop
    dec e
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ei
    db $fc
    rst $30
    ld hl, sp-$0a
    ld hl, sp+$14
    ld hl, sp+$16
    ld hl, sp+$16
    ld hl, sp+$16
    ld hl, sp+$13
    db $fd
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
    rst $38
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
    rrca
    rrca
    rrca
    rst $38
    rrca
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    and [hl]
    ld e, [hl]
    ld l, [hl]
    ld d, $56
    ld c, $06
    ld c, $66
    adc [hl]
    and $0e
    ld d, $ee
    ld e, $e6
    and $0e
    or [hl]
    ld c, $06
    ld c, $ce
    ld b, $ee
    ld b, $ee
    rlca
    ld l, a
    rlca
    rlca
    rrca
    and a
    rrca
    ld b, $0f
    rlca
    rst $28
    add $ef
    ld b, $ef
    ld d, $ef
    add [hl]
    ld a, a
    cp $ff
    cp $ff
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ret nz

    ccf
    xor b
    ld d, a
    rst $38
    inc bc
    cp $fd
    db $fc
    inc bc
    rst $30
    ld [$27d8], sp
    ld hl, sp+$07
    db $ec
    inc de
    db $f4
    inc bc
    ei
    inc b
    db $fc
    inc bc
    or [hl]
    nop
    xor h
    ld [de], a
    rst $18
    nop
    db $dd
    nop
    rst $18
    add b
    rst $38
    ld h, b
    rst $38
    inc e
    rst $38
    inc bc
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
    ld b, c
    ld e, a
    dec e
    jp Jump_000_03fd


    cp l
    inc bc
    dec [hl]
    inc bc
    dec e
    inc bc
    inc [hl]
    inc bc
    rra
    rlca
    ccf
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
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ld a, [hl]
    rst $38
    ld [hl], b
    db $fd
    ld b, b
    jp hl


    nop
    sub e
    nop
    inc de
    nop
    inc de
    nop
    inc de
    sub d
    inc de
    db $76
    sub a
    db $db
    nop
    ld d, b
    ld bc, $005f
    ld c, e
    db $10
    rst $08
    db $10
    rl b
    rst $18
    nop
    ld c, a
    sub b
    ei
    sub h
    ei
    or h
    rst $38
    or h
    rst $38
    or h
    cp $3d
    cp l
    cp $ad
    cp $41
    cp a
    ld d, l
    cp e
    ld c, a
    cp a
    ld c, a
    cp a
    ld e, a
    cp a
    sbc e
    rst $38
    dec de
    rst $38
    sub e
    rst $38
    or e
    rst $38
    inc de
    rst $38
    sub e
    rst $38
    db $76
    rst $38
    ld [hl], $ff
    ld de, $65ff
    rst $38
    push bc
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    db $e3
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
    ld b, b

jr_0b2_435d:
    cp a
    ld b, b
    ccf
    nop
    ccf
    nop
    rra
    add b
    rra
    add b
    rrca
    nop
    ld a, a
    ret nz

    ccf
    and b
    add e
    ldh a, [$71]
    xor $0e
    ld [hl], c
    ld bc, $04f8
    db $ec
    inc bc
    ld a, h
    nop
    ld a, [bc]
    ld bc, $001e
    inc a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    jr nc, jr_0b2_435d

    db $fc
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
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38

jr_0b2_43a4:
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
    pop bc
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b2_43e0:
    ld [c], a
    db $fc
    ld b, [hl]
    ld hl, sp+$0a
    ret nz

    ld a, [bc]
    add c
    nop
    ld bc, $010a
    ld a, [bc]
    ld bc, $0100
    ld c, $01
    ld c, b
    inc bc
    inc c
    inc bc
    ld [hl], a
    nop
    dec c
    ldh a, [$80]
    ld d, b
    adc b
    jr nc, jr_0b2_43a4

Jump_0b2_43ff:
    db $10
    xor h
    ld de, $318e
    add d
    dec [hl]
    adc b
    scf
    add b
    scf
    jr z, jr_0b2_43e0

    ld hl, $00d6
    or $03
    di
    and [hl]
    ld e, e
    ld b, b
    cp a
    ld b, $ff
    ret


    rst $30
    ld d, [hl]
    rst $38
    adc $ff
    rlca
    rst $38
    sbc a
    ld h, e
    ld e, $e1
    sbc a
    ld h, b
    rlca
    ld hl, sp+$02
    db $fd
    adc c
    rst $30
    ld a, [bc]
    rst $30
    jp z, Jump_0b2_4877

    or a
    add b
    rst $38
    ret z

    rst $38
    call z, $fcfb
    ei
    push af
    ld a, [$fbf4]
    db $f4
    ei
    ld [hl], l
    ei
    ld [hl], h
    rst $38
    ld [hl-], a
    rst $38
    inc sp
    db $fd
    ld [hl], $fd
    ld bc, $02fe
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ccf
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld e, a
    nop
    ccf
    nop
    adc a
    pop bc
    cp $83
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
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    and $f8
    call z, $99f0
    ldh [$a3], a
    ld d, b
    ld h, a
    sub b
    rlca
    ldh a, [$27]
    ret nc

    ld [hl], a
    add b
    ld h, a
    sub b
    and a
    ld d, b
    rlca
    ldh a, [$87]
    ld [hl], b
    rlca
    ldh a, [$f7]
    nop
    and a
    ld d, b
    and [hl]
    ld [hl], b
    ld h, h
    jr nc, jr_0b2_44d1

    db $10
    ld b, h
    or b
    ld h, [hl]
    sub b
    ld b, $f0
    rlca
    ldh a, [$27]
    ldh a, [$27]
    ldh a, [rNR51]
    ld [hl], d
    rlca
    ld [bc], a
    rlca
    ld b, e

Call_0b2_44c0:
    inc b
    ldh a, [$e7]
    ldh a, [$84]
    ldh a, [rNR41]
    rst $30
    ld b, $f1
    ld c, h
    di
    add d
    db $fd
    ld bc, $f1fe

jr_0b2_44d1:
    sbc $73
    cp h
    rst $30
    ld a, b
    inc sp
    rst $38
    rrca
    rst $30
    ld h, a
    rst $20
    add e
    jp $c000


    ret nz

    ld b, b
    jr nz, @-$1e

    ldh [$30], a
    ret nz

    jr c, jr_0b2_44ed

    db $fc
    add b
    cp $45

jr_0b2_44ed:
    rst $38
    pop hl
    rst $38
    ld d, l
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
    rst $38
    rst $30
    db $fd
    ld a, a
    push af
    ld [hl], h
    rst $38
    ld [hl], $ff
    cp [hl]
    rst $30
    cp [hl]
    rst $30
    ld a, h
    rst $38
    inc a
    db $fd
    inc e
    cp $1f
    cp $0d
    rst $38
    ld a, [bc]
    db $fd
    ld e, $fc
    ld [hl+], a
    cp $c1
    rst $38
    nop
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
    ld bc, $07ff
    rst $38
    ccf

jr_0b2_454d:
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $f3
    call c, $90ff
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    ld hl, sp+$07
    add b
    ld a, a
    rrca
    ldh a, [$7f]
    add b
    rrca
    ldh a, [rIF]
    ldh a, [$7f]
    add b
    jr nz, jr_0b2_454d

    inc bc
    db $fc
    nop
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    scf
    rrca
    rrca
    rlca
    ld [bc], a
    rlca
    ld h, a
    ld [bc], a
    rst $30
    ld [bc], a
    xor a
    ld d, d
    add $bb
    add [hl]
    ei
    rla
    rst $38
    ld [hl], c
    rst $18
    rst $30
    rst $08
    ccf
    rra
    rra
    inc bc
    db $e3
    nop
    inc e
    nop
    rlca
    ret nz

    pop bc
    jr c, jr_0b2_460d

    adc [hl]
    sbc h
    ld h, e
    rst $20
    jr @-$05

    ld b, $fe
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    cp $7f
    ld a, h
    ccf
    add hl, sp
    rrca
    inc bc
    rra
    rlca
    rra
    rrca
    ccf

jr_0b2_45bb:
    rrca
    ld l, a

jr_0b2_45bd:
    rra
    rst $18

jr_0b2_45bf:
    daa
    rst $18

jr_0b2_45c1:
    inc hl
    rst $38

jr_0b2_45c3:
    ld bc, $48af
    xor l
    ld c, d
    xor a
    ld h, d
    xor l
    ld h, d
    and a
    ld h, d
    sub l
    ld h, d
    and c
    ld d, d
    add l
    ld a, b
    xor d
    ld e, h
    dec l
    sbc $ae
    rst $18
    xor a
    ld e, a
    adc a
    ld a, a
    cpl
    cp a
    adc a
    ld a, a
    adc a
    ccf
    adc a
    ccf
    and a
    sbc a
    daa
    sbc a
    ld [hl], e
    rst $08
    ld sp, $10ef
    rst $28
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

jr_0b2_460d:
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    jr @+$01

    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add a
    ld hl, sp-$21
    ldh [$7c], a
    add b
    ld hl, sp+$01
    ldh [$03], a
    call nz, $8c03
    inc bc
    sbc h
    inc bc
    sbc h
    inc bc
    inc e
    add e
    inc e
    add e
    jr jr_0b2_45bb

    jr jr_0b2_45bd

    jr jr_0b2_45bf

    jr jr_0b2_45c1

    jr jr_0b2_45c3

    jr @-$77

    sbc d
    inc b
    ld a, [de]
    inc b
    ld a, [de]
    inc b
    ld a, [de]
    inc b
    inc e
    nop
    sbc [hl]
    nop
    sbc d
    add h
    sbc b
    inc b
    inc e
    nop
    jr jr_0b2_4652

jr_0b2_4652:
    inc e
    nop
    inc e
    nop
    sbc [hl]
    nop
    rra
    add b
    rra
    add b
    dec de
    add h
    dec de
    add h
    ld c, $85
    adc h
    add a
    adc h
    add a
    inc b
    rrca
    ld b, $0f
    add b
    rrca
    nop
    ld [$8807], sp
    add a
    ld c, b
    rst $00
    ld [$8e41], sp
    add b
    ld c, a
    ld [c], a
    inc c
    pop hl
    ld c, $e2
    add hl, bc
    and b
    inc c
    xor l
    adc h
    and d
    adc h
    and c
    adc b
    ldh [$8c], a
    and b
    adc c
    and b
    add e
    and b
    add a
    ret nz

    adc a
    ret nc

    adc a
    sub b
    add a
    sub h
    ld bc, $001a
    dec d
    nop
    sbc e
    nop
    rlc b
    xor $00
    rst $00
    db $10
    call Call_0b2_4f08
    sbc b
    ld c, a
    cp b
    rst $28
    add hl, de
    ld l, [hl]
    adc c
    db $ed
    adc b
    db $ed
    adc b
    db $ed
    adc c
    xor h
    ret


    xor l
    ret z

    adc a
    add sp, -$73
    ld hl, sp-$73
    jp hl


    sbc a
    add sp, -$44
    ret


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rrca
    pop af
    ld b, $ff
    jr @+$01

    ld h, b
    rst $38
    add b

jr_0b2_46d1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0b2_46d7:
    rst $38
    db $76
    adc h
    call z, $dc18
    jr c, jr_0b2_46d7

    jr nc, jr_0b2_46d1

    nop
    ldh [rP1], a
    ret nz

    nop
    add a
    nop
    rst $38
    nop
    ld e, e
    and h
    sub b
    ld h, b
    cp a
    ld b, b
    ld e, a
    and b
    sbc a
    ld h, b
    ld hl, $30de

Jump_0b2_46f7:
    ret nz

    add hl, de
    and $00
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
    add b
    nop
    add b
    nop
    rst $18
    cpl

jr_0b2_470c:
    ld [de], a
    dec c
    ld de, $0000
    nop
    nop
    nop
    nop
    db $10
    cp [hl]
    nop
    ei
    inc b
    ld [hl], a
    ret z

    rlca
    ld hl, sp+$50
    rst $28
    ld [$40f7], sp
    rst $38
    ld l, e
    rst $30
    ld [hl], e
    rst $38
    ld h, h
    ei
    ld d, b
    rst $38
    jr @+$09

    ld b, $01
    pop bc
    nop
    ld a, b
    nop
    add $00
    ld sp, $84c0
    ld a, b
    db $10
    rrca
    ld b, d
    add c
    sub b
    ld h, b
    and h
    jr jr_0b2_470c

    ld b, $62
    ld bc, $0068
    and b
    nop
    jr z, jr_0b2_470c

    ld [de], a
    ldh [rSC], a
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    rra
    ldh a, [rIF]
    and b
    rlca
    ld a, [$5801]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    or b
    ld b, b
    ld hl, sp+$60
    call c, Call_0b2_7620
    ld c, b
    ld a, a
    ld [hl], b
    ld a, l
    ld d, b
    ld e, h
    ld d, b
    db $fd
    ld e, b
    call c, $df58
    ld hl, sp+$00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    dec c
    ld e, $1f
    jr nz, jr_0b2_47c5

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $17
    daa
    jr z, jr_0b2_47d6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b2_47e6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $17
    scf
    jr c, jr_0b2_47f7

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_0b2_47c5:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    rla
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
    ld d, b

jr_0b2_47d6:
    ld d, c
    ld d, d
    ld d, e
    rla
    rla
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

jr_0b2_47e6:
    ld e, a
    ld h, b
    ld h, c
    rla
    rla
    rla
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

jr_0b2_47f7:
    ld l, l
    rla
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
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, a
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
    rla
    adc e
    adc h
    ld a, a
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
    ld a, a
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
    ld a, a
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
    ld a, a
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

    call $ce7f
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    ld a, a
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3

Jump_0b2_4877:
    db $e4
    push hl
    and $e7
    add sp, $17
    rla
    jp hl


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
    db $10
    ld de, $1312
    inc d
    rla
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld bc, $0101
    ld [bc], a
    ld bc, $0301

Call_0b2_48c7:
    inc bc
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0103
    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0201
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld b, $07
    inc bc
    ld bc, $0300
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    rlca
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    ld b, $07
    ld bc, $0303
    dec b
    dec b
    ld bc, $0303
    nop
    nop
    inc bc
    ld bc, $0606
    nop
    rlca
    ld bc, $0403
    inc b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0206
    rlca
    ld bc, $0c04
    inc c
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    dec bc
    dec bc
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    dec c
    ld [$080b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    rra
    rst $38
    ld hl, sp-$20
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
    ld b, c
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    add b
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    ld b, b
    ldh [rLCDC], a
    ld h, e
    inc hl
    inc sp
    inc hl
    ld de, $9111
    sub c
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$3c
    db $fc
    inc a
    db $fc
    ld [hl-], a
    ld a, [c]
    ld h, d
    ld [c], a
    add e
    jp nz, $0301

    add hl, de
    inc bc
    pop bc
    ld b, $00
    add hl, sp
    ld [bc], a
    ret nz

    add hl, bc
    ld b, $5c
    ccf
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add c
    cp $06
    ld hl, sp+$19
    pop hl
    ld c, a
    add a
    ccf
    rra
    rst $38
    xor $3f
    jr z, jr_0b2_4aa4

    inc sp
    rra
    rla
    rra
    dec de
    rrca
    dec bc
    rrca
    dec c
    rlca
    inc b
    rrca
    ld bc, $073f
    rst $38
    inc e
    cp $71
    ei
    rst $00
    db $ec
    rra
    inc sp
    rst $38
    call z, $f0bf
    rst $18
    ldh [$df], a
    ldh a, [$ef]
    ldh a, [$ef]
    ld hl, sp-$09
    db $fc
    ei
    db $fc
    ei
    cp $fd
    cp $fd
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
    rst $18

jr_0b2_4aa4:
    rst $38
    rrca
    rst $38
    ld l, a
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
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
    rst $38
    nop
    ldh a, [rIF]
    rrca
    rst $38
    db $fc
    ldh a, [$c0]
    nop
    nop
    nop
    nop
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
    nop
    ld hl, sp+$00
    rst $30
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
    inc bc
    inc bc
    rra
    rra
    rst $00
    rst $38
    sub e
    rst $38
    ld bc, $45ff
    ld b, l
    ld bc, $9301
    sub e
    rst $00
    rst $00
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, $01
    sub b
    rrca
    sub c
    adc a
    ret z

    add a
    ld b, h
    ld b, e
    ld h, h
    ld b, e
    ld [hl+], a
    ld hl, $a132
    cp c
    db $10
    ld e, l
    sub b
    call c, Call_0b2_6e10
    ld l, b
    rst $28
    add sp, -$09
    db $f4
    rst $00
    add h
    ld a, e
    ld [hl-], a
    ei
    ld a, [$f9ff]
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    and $ff
    sbc h
    cp $71
    ei
    rst $00
    db $ec
    rra
    or e
    ld a, a
    call z, $30ff
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
    rst $38
    nop
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

    cp a
    ret nz

    cp a
    ldh [$df], a
    ldh a, [$ef]
    cp $f7
    rst $38
    di
    rst $38
    pop hl
    rst $38
    sbc l
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
    db $d3
    rst $28
    cp $e1
    rst $38

jr_0b2_4ba9:
    ldh a, [rIE]
    ld hl, sp-$07
    db $fc
    db $fc
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
    cp $ff
    db $fc
    rst $38
    ei
    db $fc
    rst $00
    ld hl, sp-$6d
    db $ec
    ld de, $10ee
    rst $28
    jr nz, jr_0b2_4ba9

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
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    sbc b
    ld a, a
    ld a, l
    cp $fc
    sbc [hl]
    rra
    ld c, $1f
    ld c, $0e
    ld b, $0e
    ld b, $07
    ld [bc], a
    rrca
    inc bc
    rrca
    rlca
    rlca
    inc bc
    add a
    inc bc
    add a
    inc bc
    add a
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld [hl], c
    ld a, a
    db $e4
    rst $38
    ret nz

    rst $38
    pop de
    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    pop af
    pop af
    rst $38
    cp $ff
    ldh a, [$f8]
    add a
    rst $00
    jr c, jr_0b2_4c5a

    ret nz

    cp $01
    ldh a, [rIF]
    add e
    ld a, a
    rra
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ld bc, $0ffe
    ldh a, [$3c]
    ret nz

    ldh a, [rP1]
    ret nz

    nop
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
    pop hl
    nop
    rst $20
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    ld bc, $87fe
    ld hl, sp-$71
    ld [hl], e
    rst $08
    ret nz

    rst $38
    db $10
    rst $28
    adc h
    di
    ld a, [bc]
    push af
    inc b
    ei
    nop
    rst $38

jr_0b2_4c5a:
    dec b
    ld a, [$fd02]
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
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld a, b
    rst $38
    call c, $f73f
    ld c, $fb
    rlca
    ld a, a
    ld bc, $001f
    rlca
    add b
    pop bc
    add b
    sub b
    ldh [$63], a
    db $fc
    inc e
    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
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

jr_0b2_4cb2:
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
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $ec
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    jr jr_0b2_4cb2

    nop
    nop
    nop
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
    nop
    rra
    nop
    sbc c
    nop
    adc [hl]
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    add c
    call nz, Call_0b2_48c7
    ld c, a
    ld c, d
    ld c, a
    ld h, b
    ld h, a
    db $e4

Call_0b2_4cf7:
    rst $20
    ld h, d
    db $e3
    ld [hl], e
    di
    ld [hl], b
    ldh a, [$f0]
    ldh a, [$f9]
    sbc b
    ld hl, sp+$08
    inc a
    ret z

    db $fc
    inc c
    db $fc
    inc b
    sbc [hl]
    ld h, h
    ld c, $f6
    ld h, [hl]
    ld a, [$faf7]
    rst $00
    ld a, [$fd01]
    ld bc, $07e1
    add a
    ccf
    rra
    ld sp, hl
    ld a, b
    db $e3
    ld h, d
    ld a, a
    rrca
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    inc e
    rra
    inc bc
    ld a, a
    inc c
    rst $38
    ld sp, $c7fe
    ld hl, sp+$1f
    db $e3
    ld a, a
    adc l
    cp $36
    ld sp, hl
    call nc, Call_000_03eb
    db $fc
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
    add b
    ld a, a
    nop
    rst $38
    ld b, c
    cp [hl]
    add $39
    ld c, b
    or a
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    ld [$04f7], sp
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
    inc bc
    db $fc
    ld b, $f8
    dec c
    ldh a, [$fe]
    inc b
    add a
    ld [bc], a
    add e
    ld bc, $80c1
    ldh [rLCDC], a
    ldh a, [rNR41]
    jr @+$32

    rrca
    jr jr_0b2_4dba

    rst $18
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
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
    cp $ff
    db $fc
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
    rrca
    rst $38
    dec de
    rst $38
    ld sp, $60ff
    rst $38

jr_0b2_4dba:
    ret nz

    rst $38
    add c
    rst $38
    inc bc
    rst $38
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
    adc b
    nop
    adc h
    nop
    adc b
    nop
    add b
    nop
    nop
    nop
    nop
    inc bc
    add hl, sp
    ccf
    jr nc, @+$01

    sub h
    rst $38
    nop
    rst $38

jr_0b2_4de2:
    add hl, hl
    rst $38
    inc c
    rst $38
    sbc a
    rst $38
    jr c, jr_0b2_4de2

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    add b
    rra
    ld b, b
    inc e
    ret nz

    ld b, b
    ldh [$60], a
    pop af
    ld [hl], d
    cp $00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [$80]
    ldh a, [$80]
    ld hl, sp-$80
    rst $38
    ret nz

    ld a, h
    ld b, e
    rst $38
    ld b, b
    ei
    ld h, l
    cp $e7
    ldh a, [$2f]
    jp hl


    ld [hl], a
    adc [hl]
    pop af
    ld a, $f1
    or $c9
    ld a, a
    add b
    sbc a
    ld h, b
    rra
    ldh [$5f], a
    and b
    ld a, a
    add b
    rst $28
    db $10
    cp l
    ld b, d
    rla
    add sp, $4f
    or b
    ld b, $f9
    inc hl
    call c, $f906
    ld c, $f1
    ld a, [hl-]
    push bc
    ld l, h

jr_0b2_4e41:
    sub e
    adc c
    db $76
    inc b
    ei
    nop
    rst $38
    ld bc, $02fe
    db $fd
    ld [$00f7], sp
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
    jr nz, jr_0b2_4e41

    ret nc

    rrca
    ld [$8407], sp
    inc bc
    ld d, d
    ld bc, $00a1
    ld d, b
    nop
    xor d
    nop
    call nc, $e880
    ld b, b
    ld [hl], b
    jr nz, jr_0b2_4eaf

    db $10
    dec e
    ld [$80cf], sp
    ld a, a
    ret nz

    scf
    ldh [rNR13], a
    ld hl, sp+$0d
    ld hl, sp-$3a
    db $fc
    jp $c7ff


    cp $ff
    cp $ff
    rst $38
    add a
    rst $38
    inc b
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, a

jr_0b2_4eaf:
    rst $38
    db $fd
    jp nz, $c9d6

    jp c, $eac5

    ld b, l
    push hl
    ld l, d
    ld l, b
    ld h, a
    ld l, b
    ld h, a
    ld h, b
    ld l, a
    scf
    scf
    scf
    scf
    scf
    scf
    db $10
    db $10
    ld e, h
    call c, $fc3c
    inc e
    db $fc
    ld e, [hl]
    cp $1e
    cp $3e
    cp $7e
    cp $86
    add [hl]
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc sp
    inc bc
    ei
    inc bc
    db $e3
    inc bc
    inc bc
    inc bc
    ld bc, $011f
    rst $10
    add hl, hl
    rst $10
    add hl, hl
    ld e, a
    jr nz, jr_0b2_4f28

    ld c, [hl]
    dec [hl]
    ld e, [hl]
    dec [hl]
    ld e, $3f
    inc d
    inc a
    rlca
    ld a, a
    inc b
    rst $28
    inc bc
    ld a, [hl]
    rst $00
    ld sp, hl
    ccf
    or $7f
    sbc a
    rst $38

Call_0b2_4f08:
    jr nc, @+$01

    ret nz

    rst $38
    inc b
    ei
    rlca
    ld hl, sp+$24
    db $db
    inc b
    ei
    rrca
    ldh a, [$ae]
    ld d, c
    ld [$80f7], sp
    ld a, a
    add b
    ld a, a
    add e
    ld a, h
    adc $30
    db $fd
    ld [bc], a
    cp $01
    add sp, $17

jr_0b2_4f28:
    ld a, [$e305]
    inc e
    ret nz

    ccf
    pop hl
    ld e, $e0
    rra
    ld l, e
    sub h
    ld a, b
    add a
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
    add b
    ld a, a
    ld h, b
    rra
    jr nc, @+$11

    jr jr_0b2_4f5b

    ld b, h
    dec sp
    or d
    ld c, l
    ld sp, hl
    ld b, $fd

jr_0b2_4f5b:
    nop
    ldh a, [rP1]
    add e
    ld bc, $068f
    rst $18
    jr @+$01

    ld h, b
    rst $38
    add b
    ei
    nop
    ld l, a
    inc bc
    cp a
    rrca
    cp $3f
    db $fc
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fb
    db $fd
    or $fb
    db $ed
    rst $30
    jp c, $10ef

    rst $28
    xor b
    ld d, a
    or b
    ld c, a
    adc b
    ld [hl], a
    ld d, c
    xor [hl]
    add b
    ld a, a
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    add c
    add a
    rlca
    rla
    daa
    ld e, a
    daa
    rst $10
    rlca
    ld a, a
    and a
    rst $38
    cp [hl]
    cp $e0
    ldh [rSB], a
    nop
    ld c, $00
    ld [hl], b
    nop
    add b
    nop
    rlca
    add b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    di
    adc h
    cp a
    ret nz

    cp a
    ret nz

    cp $c1
    pop af
    adc $cf
    ldh a, [$dc]
    db $e3
    ret nc

    rst $28
    db $e3
    ld a, a
    ld l, h
    rst $38
    ld [hl], b
    rst $38
    add e
    db $fc
    call z, $b1f3
    cp $df
    ccf
    rst $38
    rst $38
    nop
    rst $38
    rst $20
    jr @-$07

    ld [$08f7], sp
    di

jr_0b2_4ff1:
    inc c
    di
    inc c
    inc de
    db $ec
    rlca
    ld hl, sp+$19
    ldh [rPCM34], a
    add b
    rst $08
    nop
    inc a
    inc bc
    ld a, [$fc05]
    inc bc
    cp h
    ld b, e
    ld a, b
    add a
    cp b
    ld b, a
    ldh a, [rIF]
    ret nc

    cpl
    jr nz, @-$1f

    jr nz, jr_0b2_4ff1

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
    add b
    ld a, a
    ret nz

    ccf
    jr nz, @-$1f

    sub b
    ld l, a
    ret c

    cpl
    ld hl, sp+$1f
    db $e4
    ld a, a
    call z, $9cff
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    cp $ff
    rst $38

jr_0b2_5043:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    ei
    db $ed
    rst $30
    jp c, $b4ef

    rst $18
    ld l, b
    cp a
    ret nc

    ld a, a
    and b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    cp $fc
    cp $fc
    cp $fc
    ld a, h
    cp $7e
    db $fc
    db $fc
    cp $fc
    cp $0f
    ld h, [hl]
    add a
    ld c, $86
    adc a
    add [hl]
    adc a
    add a
    rst $08
    adc a
    rst $00
    sbc c
    rst $18
    db $e3
    pop af
    pop bc
    pop bc
    ret


    ld b, a
    ld b, c
    ld e, c

jr_0b2_5084:
    pop bc
    ld h, b
    ld h, a

jr_0b2_5087:
    ld b, b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_0b2_5087

    ld hl, $26f9
    rst $20

jr_0b2_5093:
    jr c, jr_0b2_5084

    jr nc, jr_0b2_5093

    inc de
    pop af
    ld e, $f6
    add hl, de
    sbc b
    ld [hl], a
    ld [hl], b
    sbc a
    db $d3
    ccf
    inc e
    rst $38
    jr nc, @+$01

    jp nz, Jump_000_04fd

    ei
    ld h, c
    sbc [hl]
    rst $20
    jr jr_0b2_5043

    ld l, e
    ld [hl], c
    adc [hl]
    rst $30
    ld [$f807], sp
    ei
    db $fc
    ld c, $ff
    ei
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    ld sp, hl
    rlca
    pop bc
    ccf
    add d
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
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

jr_0b2_5121:
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
    ldh [rNR34], a
    pop hl
    dec e
    ld [c], a
    dec bc
    db $f4
    rlca
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
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
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    ld [$3b10], sp
    inc sp
    ccf
    ld de, $39ff
    rst $38
    inc e
    ld a, [hl]
    ld h, b
    ldh a, [rP1]

jr_0b2_5165:
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    nop
    adc b
    rlca
    add [hl]
    jr c, jr_0b2_5121

    ld b, b
    ld b, c
    ret nz

    db $e3
    ret nz

    db $fd
    add b
    xor l
    adc b
    ld a, [$bc89]
    add e
    or c
    add a
    cp h
    add [hl]
    db $e4
    sub a
    and $8e
    and a
    rst $18
    ld a, d
    rst $00
    ld h, c
    rst $18
    ld d, c
    xor $ee
    pop de
    ld sp, $6fc6
    sub b
    adc c
    ld [hl], d
    dec hl
    call nc, Call_000_10ed
    adc $11
    jr z, jr_0b2_5165

    ld h, c
    sbc [hl]
    db $e3
    inc e
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, e
    ret nz

    cp [hl]
    ld h, c
    call c, $8833
    ld a, a
    inc b
    rst $38
    ld [bc], a
    rst $38

jr_0b2_51b8:
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
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$07ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$18e7], sp
    rst $08
    jr nc, jr_0b2_51b8

    ld h, b
    rra
    ldh [$5a], a
    and l
    cp l
    ld b, d
    xor b
    ld d, a
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop

jr_0b2_522a:
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    nop
    add b
    inc b
    ld c, $04
    adc a
    inc b
    sbc a
    ld c, $9f
    call c, $d09f
    sbc b
    ret nz

    add b
    ld b, b
    nop
    ld b, b
    nop
    ld b, d
    ld bc, $0748
    ld [de], a
    inc c
    nop
    add b
    nop
    nop
    ld [bc], a
    nop
    nop
    ld b, $0f
    nop
    add e
    nop
    nop
    ld bc, $008d
    sbc e
    nop
    inc bc
    add h
    inc d
    adc e
    ld b, e
    sbc h
    ld c, a
    sub b
    ccf
    rst $00
    ld hl, sp-$01
    rlca
    ld hl, sp+$7f
    add b
    rst $38
    ret nz

    ld a, a
    or b
    sbc a
    ld c, $ff
    ld bc, $00ff
    rst $38
    nop
    cp a
    nop
    ld a, a
    add b
    ccf
    add b
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp h
    inc bc
    ldh a, [$0e]
    rst $20

jr_0b2_529b:
    jr jr_0b2_522a

    ld [hl], b
    ld e, $e0
    ld a, a
    add b
    ld [hl], c
    adc [hl]
    inc bc
    db $fc
    rlca
    ld hl, sp-$23
    ld [c], a
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp-$7f
    ld a, [hl]
    ret nz

    ccf
    ldh a, [rIF]
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
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ei
    inc b
    or $09
    db $ec
    inc de
    rst $18
    jr nz, jr_0b2_529b

    ld c, e
    ld d, d
    xor l
    ld a, l
    add d
    rst $38
    nop
    cp [hl]
    ld b, c
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
    ld a, a
    add b
    sbc e
    ld h, h
    ld e, a
    and b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    ld d, $11
    db $10
    cp a
    sub $f1
    ld e, b
    rst $30
    ld e, c
    or $13
    inc a
    dec e
    ld [hl-], a
    inc d
    jr nc, jr_0b2_5342

    jr nc, jr_0b2_5347

    inc sp
    rra
    or b
    sbc e
    jr nc, jr_0b2_534a

    ld a, [hl-]
    ld e, $31
    inc e
    inc sp

jr_0b2_533e:
    sub h
    add hl, sp

jr_0b2_5340:
    inc d
    inc sp

jr_0b2_5342:
    ret c

    or a
    pop de
    cp a
    db $d3

jr_0b2_5347:
    cp a
    rst $18
    inc a

jr_0b2_534a:
    rst $18
    jr nc, jr_0b2_538c

    ret nz

    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    ld e, a
    and b
    rla
    jr nz, @-$2f

    jr nz, @+$61

    jr nz, jr_0b2_533e

    jr nz, jr_0b2_5340

    jr nz, @+$01

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop

jr_0b2_536e:
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    and b
    nop
    add b
    nop
    ld b, [hl]
    nop
    sbc h
    nop
    cp d
    nop
    ld [$e800], a
    nop
    add sp, $00
    jp hl


    ld bc, $7e9e
    ldh [$f0], a

jr_0b2_538c:
    nop
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $0e
    ldh a, [$7e]
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    cp $00
    ld a, [hl-]
    ret nz

    dec e
    ldh [rTMA], a
    ld hl, sp+$01

jr_0b2_53bb:
    cp $80
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    cp $01
    db $fc
    inc bc
    ld sp, hl
    ld b, $f8
    rlca
    di
    inc c
    db $eb
    inc d
    rst $00
    jr c, jr_0b2_536e

    ld h, [hl]
    inc h
    db $db
    ld a, a
    add b
    push de
    ld a, [hl+]
    db $fd
    ld [bc], a
    push hl
    ld a, [de]
    ld l, d
    sub l
    jr z, jr_0b2_53bb

    add [hl]
    ld a, c
    or a
    ld c, b
    push hl
    ld a, [de]
    ld d, d
    xor l
    cp d
    ld b, l
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
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh a, [rTAC]
    db $fc
    ld a, c
    add a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, [c]
    rst $28
    and d
    rst $18
    ld [c], a
    rst $18
    cp [hl]
    jp Jump_0b2_43ff


    or $43
    ld a, d
    rst $00
    xor $63
    db $76
    db $e3
    adc $73
    ld c, d
    rst $30
    ld [c], a
    ld e, a
    ld c, d

jr_0b2_5429:
    rst $30
    ld h, h
    rst $18
    ld d, l
    rst $38
    ld e, a
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    db $fc
    rst $08
    rst $38
    inc bc

jr_0b2_5438:
    rst $38

jr_0b2_5439:
    ld bc, $01ff
    cp $03
    db $fc
    ld a, a
    rst $38
    add b
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld c, $ef
    ld de, $609f
    ld a, $c0
    ld a, l
    add b
    di
    nop
    rst $08
    ldh [$c1], a
    ccf
    sbc $21
    rst $18
    jr nz, @-$1f

    jr nz, jr_0b2_5439

    jr nz, jr_0b2_5438

    jr nz, jr_0b2_5429

    jr nz, @+$52

    jr nz, jr_0b2_54a5

    jr nz, jr_0b2_5467

jr_0b2_5467:
    ld [hl], b
    nop
    ld e, h
    nop
    ld b, a
    nop
    ld b, b
    ld bc, $0141

jr_0b2_5471:
    ld b, c
    inc bc
    ld b, e
    rrca

jr_0b2_5475:
    ld c, a
    cp a
    rst $38
    rra
    rra
    inc de
    inc de
    jr nz, jr_0b2_549e

    jr nz, jr_0b2_54a0

    ld b, b
    ld b, b
    add b
    ret nz

    add b
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $00
    ld hl, sp+$00
    db $fc
    nop

jr_0b2_5495:
    sbc a
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop

jr_0b2_549e:
    ret nz

    nop

jr_0b2_54a0:
    ldh a, [rP1]
    jr c, jr_0b2_54a4

jr_0b2_54a4:
    rrca

jr_0b2_54a5:
    nop
    ld b, e
    nop
    inc b
    nop
    inc c
    nop
    ret c

    nop
    jr c, jr_0b2_5471

    jr jr_0b2_5495

    ld bc, $03fe
    db $fc
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld [hl], a
    adc b
    rst $28
    db $10
    ld d, c
    xor [hl]
    ld c, h
    or e
    rst $18
    jr nz, jr_0b2_5475

    ld d, l
    ld e, l
    and d
    rst $30
    ld [$c03f], sp
    jp hl


    ld d, $2b
    call nc, $906f
    scf
    ret z

    ld l, e
    sub h
    or l
    ld c, d
    and l
    ld e, d
    ld e, h
    and e
    push af
    ld a, [bc]
    db $eb
    inc d
    db $fd
    ld [bc], a
    xor d
    ld d, l
    rst $38
    nop
    ld a, [$ff05]
    nop

jr_0b2_54f0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ldh [$cf], a
    jr c, jr_0b2_54f0

    ld c, $fc
    inc bc
    ld [hl+], a
    rst $38
    ld l, $ff
    ld a, [hl-]
    rst $38
    ld [c], a
    rst $38
    daa
    cp $24
    cp $7d
    and $6d
    and $d4
    ld l, a
    call z, Call_0b2_6c7f
    rst $38
    ld h, h
    rst $38
    db $ec
    rst $38
    ld [hl], b
    rst $30
    jp Jump_000_03c4


    inc b
    jp Jump_000_3bc4


    inc a
    nop
    rlca
    inc bc
    inc b
    di
    db $f4
    add hl, bc
    ld c, $01
    ld b, $00
    rlca
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$d0]
    ldh [$60], a
    add b
    add b
    ld h, b
    nop
    ldh [rP1], a
    ldh [$80], a
    ld h, b
    ldh [$e0], a
    db $10
    ldh a, [rLCDC]
    cp b
    or b
    scf
    dec [hl]
    dec [hl]
    ld l, d
    ld l, d
    ld a, l
    ld a, l
    ld a, h
    ld a, h
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
    db $e3
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
    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    inc a
    db $10
    rrca
    jr nz, jr_0b2_5593

    ld b, b
    nop
    add b

jr_0b2_5593:
    ld bc, $0700
    add b
    ld c, $c4
    jr jr_0b2_55a3

    jr nc, jr_0b2_55b9

    ldh [rNR52], a
    ret c

    ld sp, hl
    ld b, $e6

jr_0b2_55a3:
    ld bc, $00e3
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
    ld e, a
    and b
    rst $18
    jr nz, jr_0b2_5638

jr_0b2_55b9:
    add b
    rst $38
    nop
    ld e, a
    and b
    and e
    ld e, h
    rst $38
    nop
    ld a, l
    add d
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, e
    add h
    ld a, a
    add b
    sbc a
    ld h, b
    ld e, a
    and b
    rst $28
    db $10
    ld l, a
    sub b
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
    rst $38
    nop
    rst $38
    nop
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
    db $10
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    inc d
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    jp z, Jump_000_0037

    db $fc
    nop
    add c
    nop
    cp a
    nop
    ld bc, $000f
    ld a, $00
    inc bc
    db $fc
    rrca
    ldh a, [$59]
    and b
    inc sp
    ret nz

    ld [hl+], a
    pop bc
    ld [hl], $c1
    db $ec
    add e
    db $e4
    ei
    ld e, $e1
    ld e, $e1
    ld c, $f1
    nop
    rst $38

jr_0b2_5638:
    ld d, b
    rst $38
    xor d
    rst $38
    dec d
    rra
    and d
    db $e3
    ld d, h
    ld d, a
    xor d
    xor d
    ld d, l
    ld d, l
    db $eb
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
    rra
    rst $38
    rst $00
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
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $00
    inc c
    nop
    jr jr_0b2_567f

jr_0b2_567f:
    ldh a, [rP1]
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
    add b
    nop
    ld b, b
    add b
    sbc b
    ld h, b
    ld h, [hl]
    jr jr_0b2_56b2

    ld b, $1e
    ld bc, $0007
    add e
    nop
    ld h, [hl]
    nop
    nop
    nop
    ld b, b
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
    ldh [rP1], a

jr_0b2_56b2:
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $28
    nop
    cp $00
    db $dd
    nop
    ld a, [$dd00]
    nop
    ld a, [$fd00]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
    inc b
    ld a, [$fd00]
    nop
    ld hl, sp+$00
    ld a, [c]
    inc bc
    ld hl, sp+$03
    add b
    ld c, $60
    ld e, $e0
    ld e, h
    ldh [$c0], a
    ld [hl+], a
    add b
    ld b, c
    nop
    dec b
    nop
    ld bc, $2701
    jr z, jr_0b2_5775

    add c
    ld a, a
    sub d
    ld a, a
    adc l
    ld a, a
    jp $c13f


    ccf
    rlca
    rst $38
    ld b, [hl]
    cp [hl]
    add [hl]
    ld a, [hl]
    add $3e
    ld h, [hl]
    sbc [hl]
    inc c
    db $fc
    ld d, h
    db $fc
    xor l
    db $fd
    ld e, l
    rst $38
    add c
    rst $38
    ld d, b
    cp $f8
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$07
    ld sp, hl
    ei
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
    ld sp, $c3f1
    ei
    ld [c], a
    and $c2
    jp $c2c2


    add $c6
    call nz, $85c4
    add h
    add a
    add h
    adc [hl]
    adc l
    inc e
    dec bc
    jr jr_0b2_576f

    ld bc, $0013
    ld h, b
    nop
    ret nz

    inc bc
    add e
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10

jr_0b2_576f:
    rra

jr_0b2_5770:
    dec d
    ld a, [hl+]
    ld a, [hl+]
    dec d
    ld d, l

jr_0b2_5775:
    ld a, [hl+]
    ld a, [hl+]
    ld d, l
    dec d
    ld a, [hl+]
    ld a, [bc]
    dec b
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
    add b
    nop
    ret nz

    nop
    jr nc, @-$3e

    ret z

    jr nc, jr_0b2_57a3

    inc c
    inc b
    inc bc
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

jr_0b2_57a3:
    nop
    nop
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
    add b
    nop
    ld b, b
    nop
    ret nz

    nop
    and b
    nop
    or b
    nop
    ld l, b
    nop
    call c, $ef00
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $08
    nop
    rst $08
    nop
    rst $18
    nop
    sbc a
    nop
    sbc [hl]
    nop
    sbc [hl]
    ld b, b
    cp h
    ld b, b
    inc a
    ret nz

    inc h
    add c
    jr nz, jr_0b2_5770

    ld b, b
    add b
    ld b, b
    rst $38
    ld b, b
    rst $08
    ld b, b
    sbc a
    add b
    cp a
    add c
    cp a
    add b
    xor a
    sub b
    inc sp
    inc c
    cp b
    rlca
    rst $38
    nop
    ld c, a
    ldh a, [$ab]
    cp $55
    rst $38
    and d
    rst $30
    add a
    rst $00
    sub a
    sub a
    cpl
    cpl
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f1]
    ldh a, [$e2]
    pop hl
    add h
    add e
    inc b
    inc bc
    add hl, bc
    rlca
    inc de
    rrca
    inc hl
    rst $18
    rlca
    ld a, a
    ld bc, $1e7f
    rst $38

jr_0b2_5846:
    inc e
    rst $38
    inc a
    rst $38
    ld a, c
    rst $38
    pop af
    rst $38
    db $e3
    cp $e7
    db $fc
    add $fd
    inc c
    dec sp
    inc c
    inc bc
    pop bc
    jp $f030


    inc c
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    ccf
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
    add b
    nop
    jr nz, jr_0b2_5846

    ret nc

    jr nz, @+$26

    jr jr_0b2_5894

    ld b, $02
    ld bc, $0001
    nop
    nop
    ldh [rP1], a

jr_0b2_5894:
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
    rst $38
    nop
    or $09
    ld a, [$fa05]
    dec b
    db $fc
    inc bc
    ld hl, sp+$07
    db $ec
    inc de
    cp $01
    db $ec
    inc de
    db $fd
    jp nc, $d2fd

    ld sp, hl
    rst $10
    ld sp, hl
    and a
    pop af
    adc a
    pop af
    xor a
    ld a, [c]
    ld c, [hl]
    ld [$ca16], a
    ld [hl-], a
    add h
    ld h, h
    and h
    ld b, h
    ld c, [hl]
    add h
    rra
    adc b
    inc e
    adc c
    ld [$081b], sp
    ccf
    rst $28
    db $10
    ldh [$1f], a
    ld l, b
    sbc a
    adc c
    ld a, a
    ld a, a
    cp a
    rst $20
    ccf
    di
    cpl
    cpl
    ld a, a
    rst $10
    ld a, a
    rst $08
    ld a, a
    rst $38
    rst $18
    rra
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    adc a
    rrca
    rra
    jr jr_0b2_5933

    jr c, @+$7e

    ld a, h
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    inc bc
    ld bc, $0305
    add hl, bc
    rlca
    inc de
    rrca
    inc sp
    rrca
    daa
    rra
    ld c, a
    ccf
    sbc [hl]
    ld a, a
    dec e
    rst $38
    add hl, sp
    rst $38
    ld a, e
    cp $f3
    cp $e6
    db $fd
    xor $f9
    call $99fb
    rst $30
    ld a, [hl-]

jr_0b2_5921:
    rst $20
    ld [hl-], a
    rst $28
    inc [hl]
    adc $c8
    cp [hl]
    ret nz

    cp [hl]
    sub b
    ld a, l
    sub b
    ld a, c
    jr nz, jr_0b2_5921

    ld b, c
    di
    ld b, c

jr_0b2_5933:
    db $e3
    add e
    rst $20
    add d
    rst $00
    ld b, $cf
    ld b, $9f
    inc c
    sbc $0c
    cp $c0
    jp $f030


    inc c
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
    ccf
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
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    sub b
    ld h, b
    ld h, b
    jr jr_0b2_598b

    ld b, $0e
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
    nop
    nop
    nop
    nop

jr_0b2_598b:
    nop
    nop
    nop
    inc bc
    nop
    rla
    nop
    scf
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$c6]
    add c
    call nz, $8483
    inc bc
    add h
    inc bc
    inc b
    inc bc
    inc c
    inc bc
    ld [$0807], sp
    rlca
    ld c, $01
    jr jr_0b2_59cb

    db $10
    rrca
    ld h, b
    rra
    jp $873f


jr_0b2_59cb:
    ld a, a
    rst $18
    cpl
    sbc a
    rrca
    sbc a
    ld a, a
    ld c, $fe
    ld e, [hl]
    cp $fe
    cp $fe
    cp $fc
    db $fc
    db $fc
    db $fc
    sbc b
    sbc b
    cp c
    cp $fb
    db $fc
    inc sp
    db $fc
    adc l
    ld a, [c]
    ldh a, [rIE]
    db $e4
    ei
    add sp, -$09
    ret


    rst $30
    ld bc, $03ff
    rst $38
    rlca
    rra
    rrca
    rra
    rrca
    cp $7f
    cp $7f
    db $fc
    rst $38
    db $fc
    cp $f9
    db $fd
    db $d3
    cp $83
    cp $e3
    cp h
    and $74
    adc $68
    call c, $bcc8
    ret nc

    add hl, sp
    and c
    ld a, c
    and c
    ld [hl], e
    ld b, e
    rst $20
    ld b, d
    rst $20
    add [hl]
    rst $08
    add h
    adc $0c
    sbc [hl]
    jr @-$62

    jr jr_0b2_5a60

    ld sp, $3038
    ld a, c
    ld h, d
    pop af
    ld b, d
    pop af
    add l

jr_0b2_5a2d:
    ld a, [c]
    add c

jr_0b2_5a2f:
    xor $8a
    push bc
    ld a, [bc]
    call nz, $8815
    dec d
    adc b
    dec h
    jr jr_0b2_5a65

    ld de, $215b
    ld d, a
    ld hl, $42bf
    cp a
    ld b, d
    ld a, $05
    ld c, $05
    ret nz

    pop bc
    jr nz, jr_0b2_5a2d

    jr nz, jr_0b2_5a2f

    ld b, b
    jp $8300


    nop
    add e
    nop
    add e
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_0b2_5a60:
    nop
    ld b, $00
    ld b, $00

jr_0b2_5a65:
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $c0
    ld c, $30
    adc $c0
    ld a, $f0
    ld c, $30
    rrca
    db $10
    ld c, $00
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    ld b, b
    inc c
    ld [hl], b
    inc c
    sub b
    ld c, $b0
    rrca
    ld hl, sp+$07
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
    cp $01
    cp $01
    rlca
    ld [$1807], sp
    rlca
    jr jr_0b2_5abe

    jr jr_0b2_5ad8

    jr jr_0b2_5ac2

    ccf
    nop
    ccf

jr_0b2_5abe:
    nop
    ccf
    nop
    ccf

jr_0b2_5ac2:
    nop
    ld a, a
    nop

jr_0b2_5ac5:
    ld a, a
    nop
    ld a, a
    dec c
    ld [hl], d
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

jr_0b2_5ad8:
    rst $38
    nop
    rst $38
    nop
    di
    rrca
    rst $20
    rra
    rlca
    cp $0f
    cp $1f
    db $fd
    ccf
    db $fd
    dec a
    ei
    ld a, [hl]
    rst $30
    cp $e7
    db $fc
    xor $f8
    db $ec
    ld hl, sp-$63
    pop af
    cp c
    pop de
    dec sp
    db $e3
    ld [hl], e
    jp nz, Jump_0b2_46f7

    rst $20
    add [hl]
    rst $08
    adc h
    rst $08
    inc c
    sbc a
    jr jr_0b2_5ac5

    jr c, jr_0b2_5b3f

    scf
    ld l, b
    ld h, b
    ld a, e
    ld [hl], b
    rst $00
    ld hl, sp-$39
    rst $38
    ld hl, sp-$0f
    rst $38
    ld bc, $019b
    sbc e
    ld bc, $0137
    scf
    ld [bc], a
    ld l, a
    ld [bc], a
    ld l, [hl]
    inc b
    xor $55
    adc l
    ld e, c
    adc l
    xor c
    dec de
    cp e
    dec de
    ld [hl], e
    rla
    ld d, e
    scf
    ld h, a
    daa
    scf
    rst $28
    ld b, $fe
    ld l, d
    sbc $ac
    rst $18
    call c, $dcbc
    cp h
    cp b
    ld a, b
    cp b

jr_0b2_5b3f:
    ld a, b
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$e0], a
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
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    nop
    ld a, $00
    rrca
    nop
    inc bc
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
    call nz, Call_000_2400
    nop
    inc e
    nop
    ld c, $00
    add hl, bc
    nop
    ld [$0800], sp
    nop
    stop
    stop
    sub b
    nop
    ret nc

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $80
    ld a, a
    and b
    ld e, a
    or b
    ld c, a
    cp h
    ld b, e
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $18
    nop
    db $db
    nop
    cp e
    nop
    cp a
    nop
    ldh [rP1], a
    rst $38
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
    add b
    ld a, a
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
    ld a, a
    add b
    ccf
    ret nz

    rlca
    ld hl, sp-$7d
    db $fc
    add hl, de
    cp $38
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    ld e, h
    rst $38
    ret z

    rst $38
    call z, $84f3
    di
    sub h
    db $e3
    ld c, $e3
    ld l, $c7
    ld c, $c7
    inc c
    rst $18
    inc c
    sbc a
    ld a, [bc]
    sbc a
    ld a, [de]
    ccf
    ld d, $3f
    inc [hl]
    ld a, a
    db $e4
    rra
    inc e
    inc hl

jr_0b2_5bfe:
    ld [bc], a
    add l
    inc b
    ei

jr_0b2_5c02:
    ld [c], a
    dec e

jr_0b2_5c04:
    db $fc
    db $e3
    ld a, b
    rst $38
    jr c, jr_0b2_5c02

    jr c, jr_0b2_5c04

    jr nc, jr_0b2_5bfe

    ldh a, [$f0]
    pop af
    rst $38
    db $ed
    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    add a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    add e
    inc bc
    di
    inc bc
    rra
    nop
    rlca
    rrca
    rrca
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rra
    inc bc
    inc de
    nop
    stop
    jr nz, jr_0b2_5c49

jr_0b2_5c49:
    jr nz, jr_0b2_5c4b

jr_0b2_5c4b:
    jr nz, jr_0b2_5c4d

jr_0b2_5c4d:
    jr nz, jr_0b2_5c4f

jr_0b2_5c4f:
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
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
    ldh [rP1], a
    ld hl, sp+$00
    ld a, [hl]
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
    add b
    nop
    ld h, b
    nop
    jr jr_0b2_5c7d

jr_0b2_5c7d:
    ld b, $00
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
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $80
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rlca
    ld [bc], a
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
    jr jr_0b2_5cfe

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b2_5d0e

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b2_5d1e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b2_5d2e

    ld [hl-], a

jr_0b2_5cfe:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b2_5d3e

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc [hl]
    inc [hl]
    inc [hl]

jr_0b2_5d0e:
    inc [hl]
    inc [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_0b2_5d1e:
    inc [hl]
    inc [hl]
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_0b2_5d2e:
    inc [hl]
    inc [hl]
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_0b2_5d3e:
    inc [hl]
    inc [hl]
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, c
    ld d, d
    ld d, e
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
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
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
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
    inc [hl]
    db $76
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
    add e
    add h
    add l
    nop
    rlca
    ld [bc], a
    ld [bc], a
    add [hl]
    add a
    adc b
    ld a, [bc]
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld de, $008f
    sub b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    sub c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $9202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0607
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0707
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
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld bc, $2101
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
    ld bc, $ffff
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
    rst $10
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    and l
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
    ld c, b
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
    xor d
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
    ld bc, $03fe
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    db $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fa
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$0a0d]
    db $fd
    push af
    ei
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    ld [$ea36], a
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $d4
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $a86c
    ret c

    xor b
    ret c

    xor b
    ret c

    xor b
    ret c

    xor b
    ret c

    xor b
    ret c

    xor b
    ret c

    cp a
    cp a
    cp b
    cp b
    sbc e
    sbc b
    adc e
    adc b
    adc e
    adc b
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    rst $00
    push bc
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc [hl]
    adc e
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    jr c, jr_0b2_60f7

    jr c, jr_0b2_60f9

    jr c, jr_0b2_60fb

    jr c, jr_0b2_60fd

    jr c, jr_0b2_60ff

    jr c, jr_0b2_6101

    ld a, b
    ld b, a
    ld a, b
    ld b, a
    ld a, b
    ld b, a
    ld a, b
    ld b, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], c
    ld c, [hl]
    ld [hl], c
    ld c, [hl]
    ld [hl], b
    ld c, a
    ld [hl], c
    ld c, [hl]
    ld [hl], c
    ld c, [hl]
    ld [hl], e
    ld c, h
    ld [hl], e
    ld c, h
    di

jr_0b2_60f7:
    adc h
    di

jr_0b2_60f9:
    adc h
    db $e3

jr_0b2_60fb:
    sbc h
    db $e3

jr_0b2_60fd:
    sbc h
    rst $20

jr_0b2_60ff:
    sbc b
    rst $20

jr_0b2_6101:
    sbc b
    rst $20
    sbc b
    rst $00
    sbc b
    rst $20
    sbc b
    rst $08
    sub b
    rst $28
    sub b
    rst $08
    sub b
    rst $08
    sub b
    nop
    sbc a
    nop
    sbc a
    nop
    rra
    ld bc, $009e
    rra
    ld bc, $013e
    ld a, $02
    dec a
    inc bc
    inc a
    ld [bc], a
    dec a
    inc bc
    inc a
    inc bc
    inc a
    ld [bc], a
    dec a
    inc bc
    inc a
    dec b
    ld a, [hl-]
    inc bc
    inc a
    dec bc
    inc [hl]
    rrca
    jr nc, @+$09

    jr c, jr_0b2_6146

    jr nc, jr_0b2_6150

    jr z, jr_0b2_615a

    jr nz, jr_0b2_614c

    jr nc, jr_0b2_615e

    ld h, b
    rra
    ld h, b
    cpl
    ld d, b
    ccf
    ld b, b

jr_0b2_6146:
    rra
    ld h, b
    ld a, e
    nop
    ccf
    ld b, b

jr_0b2_614c:
    ld e, a
    jr nz, jr_0b2_61ce

    nop

jr_0b2_6150:
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop

jr_0b2_615a:
    cp $00
    db $fc
    nop

jr_0b2_615e:
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    cp a
    ccf
    rst $38
    cp a
    ld a, a
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
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
    add b
    rst $38
    add b
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $02fe
    db $fd
    nop
    rst $38
    dec b
    ld a, [$fe01]
    dec b
    ld a, [$fb04]
    ld bc, $05fe
    ld a, [$e817]
    rra
    ldh [rIF], a
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$2e], a
    ret nc

    ld a, $c0
    ld e, $e0
    ld c, $f0

jr_0b2_61ce:
    ld a, $c0
    ld e, [hl]
    and b
    inc e
    ldh [$5e], a
    and b
    inc e
    ldh [$5c], a
    and b
    cp h
    ld b, b
    inc a
    ret nz

    cp h
    ld b, b
    cp b
    ld b, b
    cp b
    ld b, b
    ld a, b
    add b
    cp b
    ld b, b
    ld a, b
    add b
    ld a, b
    add b
    or b
    ld b, b
    ld h, b
    add b
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rNR34], a
    ldh [$3e], a
    ret nz

    rra
    ldh [$3e], a
    ret nz

    ccf
    ret nz

    ld a, $c0
    ld e, [hl]
    and b
    dec a
    ret nz

    ld a, a
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, $c0
    db $fd
    nop
    rst $38
    nop
    db $fc
    nop
    ei
    nop
    ld a, a
    add b
    ei
    nop
    db $fd
    nop
    ld a, a
    add b
    pop af
    nop
    rst $30
    nop
    rst $38
    nop
    xor $00
    rst $30
    nop
    db $fd
    nop
    sbc $00
    and $00
    db $fc
    nop
    db $fc
    nop
    cp b
    nop
    adc h
    nop
    cp b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    pop bc
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld a, [$ab54]
    dec h
    jp c, $ea15

    dec h
    jp c, $bd42

    inc e
    db $e3
    ld a, c
    rst $38
    ldh a, [rIE]
    or a
    db $fc
    jp hl


    db $fc
    db $e3
    db $fc
    db $d3
    ld hl, sp-$11
    ld hl, sp+$67
    ld hl, sp-$49
    ld hl, sp+$27
    ld hl, sp-$73
    ldh a, [$9f]
    ldh [rVBK], a
    ldh a, [$9f]
    ldh [$9f], a
    ldh [$9f], a
    ldh [$af], a
    ret nc

    ccf
    ret nz

    dec [hl]
    ret nz

    ld a, [hl-]
    ret nz

    db $fd
    nop
    rst $28
    nop
    push de
    nop
    xor l
    nop
    rst $28
    nop
    cp l
    nop
    or [hl]
    nop
    rst $28
    nop
    cp a
    nop
    rst $10
    nop
    ret c

    nop
    cp $00
    xor d
    nop
    call c, $ae00
    nop
    ld a, [hl]
    nop
    db $ec
    nop
    add hl, sp
    nop
    call nc, $e600
    nop
    cp h
    nop
    ld a, [de]
    nop
    db $f4
    nop
    cp d
    nop
    db $ec
    nop
    xor b
    nop
    ld [hl], h
    nop
    sbc b
    nop
    ld [hl], h
    nop
    cp b
    nop
    db $f4
    nop
    ret nc

    nop
    xor b
    nop
    ldh [rP1], a
    and b
    nop
    sbc b
    nop
    ld a, b
    nop
    ld h, b
    nop
    ret c

    nop
    ldh a, [rP1]
    ld h, b
    nop
    ldh a, [rP1]
    and b
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    sub d
    dec l
    ld d, d
    xor l
    add hl, hl
    sub $92
    ld l, l
    xor c
    ld d, [hl]
    ld b, h
    cp e
    xor d
    ld d, l
    ret


    ld [hl], $aa
    rst $38
    jp c, Jump_0b2_6dff

    rst $38
    push de
    rst $38
    sub h
    rst $38
    ld a, [$4def]
    rst $20
    or e
    ldh [$59], a
    pop af
    xor $f8
    xor $3c
    ld [hl], l
    ld e, $cd
    dec bc
    db $e3
    ld bc, $00ff
    db $fc
    nop
    db $fc
    nop
    cp $00
    ld e, h
    nop
    sbc $00
    ld l, h
    nop
    or [hl]
    nop

jr_0b2_635c:
    db $ec
    nop
    ld h, h
    nop
    ret c

    nop
    jr nc, jr_0b2_6364

jr_0b2_6364:
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    and e
    db $fc
    cpl
    ld hl, sp-$71
    ldh a, [$5e]
    ldh a, [$9e]
    ldh [$5c], a
    ldh a, [$3e]
    ldh [$fc], a
    add b
    cp $80
    rst $38
    db $10
    cp $40
    rst $38
    nop
    db $fd
    add b
    cp $80
    db $fd
    nop
    cp $80
    ei
    nop
    db $fd
    nop
    ld a, $00
    add l
    nop
    ret nz

    nop
    jr nc, jr_0b2_635c

    adc d
    ld [hl], b
    dec b
    jr jr_0b2_63a4

    nop
    nop
    nop

jr_0b2_63a4:
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    dec hl
    nop
    halt
    xor e
    nop
    db $dd
    nop
    ld l, d
    nop
    or l
    nop
    sub $00
    ld l, e
    nop
    or l
    nop
    sub $00
    cp e
    nop
    ld e, l
    nop
    or [hl]
    nop
    xor e
    nop
    db $ed
    nop
    xor d
    nop
    ld [bc], a
    nop
    nop
    nop
    ld h, b
    nop
    ld e, b
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
    rlca
    nop
    inc bc

jr_0b2_63f3:
    nop
    ld bc, $0000
    nop
    ld h, b
    nop
    xor b
    nop
    call c, $aa00
    nop
    halt
    xor l
    nop
    ld e, d
    nop
    rst $10
    nop
    xor l
    nop
    ld e, d
    nop
    rst $10
    nop
    cp d
    nop
    ld [hl], l
    nop
    db $db
    nop
    xor d
    nop
    ld l, a
    nop
    xor d
    nop
    add b
    nop
    nop
    nop
    dec c
    nop
    dec [hl]
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
    adc e
    ld a, a
    jp hl


    ccf
    ld [c], a
    rra
    push af
    rra
    ld a, [c]
    rrca
    ld [hl], l
    rra
    ld sp, hl

jr_0b2_643d:
    rrca
    ld a, [hl]
    inc bc
    cp $03
    cp $11
    rst $38
    dec b
    rst $38
    ld bc, $037e
    cp $03
    ld a, a
    ld bc, $02ff
    cp a
    ld bc, $007e
    ld hl, sp+$00
    ld b, e
    nop
    rlca
    ld bc, $0719
    and e
    inc e
    ld b, b
    jr nc, jr_0b2_63f3

    ld l, c
    sub l
    ld l, d
    jr z, jr_0b2_643d

    sub d
    ld l, l
    ld a, [hl+]
    push de
    ld b, l
    cp d
    xor d
    ld d, l
    ld h, $d9
    xor e
    rst $38
    or [hl]
    rst $38
    ld l, l
    rst $38
    ld d, [hl]
    rst $38
    ld d, d
    rst $38
    cp [hl]
    rst $28
    ld h, l
    rst $08
    sbc e
    rrca
    dec [hl]
    rra
    xor $3f
    rst $28
    ld a, b
    ld e, l
    ldh a, [$67]
    and b
    adc a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld [hl], l
    nop
    rst $30
    nop
    ld l, l
    nop
    db $db
    nop
    ld l, a
    nop
    ld c, l
    nop
    scf
    nop
    add hl, de
    nop
    rlca
    nop
    ld b, $00
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0300
    nop
    ld bc, $0000
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
    ld bc, $0000
    nop
    nop
    nop
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
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    ld d, h
    xor e
    ld c, b
    or a
    ld d, b
    xor a
    ld c, b
    or a
    add h
    ld a, e
    ld [hl], c
    adc [hl]
    dec a
    rst $38
    ld e, $ff
    db $db
    ld a, a
    ld l, $7f
    adc a
    ld a, a
    sub a
    ccf
    rst $28
    ccf
    call $db3f
    ccf
    ret


    ccf
    ld h, e
    rra
    ld a, [c]
    rrca
    push hl
    rra
    di
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ld [$f917], a
    rlca
    ld e, b
    rlca
    cp b
    rlca
    ld a, [hl]
    ld bc, $01ee
    ld d, [hl]
    ld bc, $016a
    xor $01
    ld a, d
    ld bc, $01da
    rst $28
    nop
    ei
    nop
    rst $10
    nop
    scf
    nop
    rst $38
    nop
    xor e
    nop
    ld [hl], a
    nop
    db $eb
    nop
    db $fd
    nop
    ld l, a
    nop
    add hl, sp
    nop
    ld d, a
    nop
    rst $08
    nop
    ld a, e
    nop
    or c
    nop
    ld e, a
    nop
    cp e
    nop
    ld l, a
    nop
    dec hl
    nop
    ld e, l
    nop
    inc sp
    nop
    ld e, l
    nop
    dec sp
    nop
    ld e, a
    nop
    ld d, $00
    ld a, [hl+]
    nop
    rrca
    nop
    ld a, [bc]
    nop
    inc sp
    nop
    inc a
    nop
    inc c
    nop
    scf
    nop
    rra
    nop
    inc c
    nop
    ld e, $00
    ld a, [bc]
    nop
    dec b
    nop
    rlca
    nop
    ld [bc], a
    nop
    rlca
    nop
    ld bc, $0700
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
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
    ei
    ei
    ld hl, sp-$08
    ld sp, hl
    ld hl, sp+$7f
    cp $3f
    cp $1f
    cp $0f
    cp $0f
    cp $07
    cp $07
    cp $07
    cp $03
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
    ld bc, $81ff
    ld a, a
    ld bc, $81ff
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ret nc

    cpl
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    add sp, $17
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ld hl, sp+$07
    db $f4
    dec bc
    ld [hl], b
    rrca
    db $f4
    dec bc
    ld [hl], b
    rrca
    ld [hl], h
    dec bc
    ld a, d
    dec b
    ld a, b
    rlca
    ld a, d
    dec b
    ld a, [hl-]
    dec b
    ld a, [hl-]
    dec b
    inc a
    inc bc
    ld a, [hl-]
    dec b
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    ld a, [de]
    dec b
    dec c
    ld [bc], a
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    ld hl, sp+$07
    db $f4
    dec bc
    ld a, b
    rlca
    db $fc
    inc bc
    ld a, h
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, [hl]
    ld bc, $01fe
    ld a, [hl]
    ld bc, $01be
    db $fd
    ld [bc], a
    cp [hl]
    ld bc, $007f
    db $fd
    ld [bc], a
    ld e, $01
    rst $18
    nop
    cp $01
    rst $28
    nop
    rst $18
    nop
    ld a, [hl]
    ld bc, $00f7
    rst $08
    nop
    ld a, a
    nop
    ld a, a
    nop
    dec sp
    nop
    ld h, e
    nop
    dec sp
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    ei
    ei
    dec sp
    dec sp
    or e
    inc sp
    and e
    inc hl
    and e
    inc hl
    call nz, $c444
    ld b, h
    call nz, $c444
    ld b, h
    call nz, $c444
    ld b, h
    rst $00
    ld b, a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a

jr_0b2_66a8:
    ld [c], a
    ld [hl+], a

jr_0b2_66aa:
    ld [c], a
    ld [hl+], a

jr_0b2_66ac:
    ld [c], a
    ld [hl+], a

jr_0b2_66ae:
    ld [c], a
    ld [hl+], a

jr_0b2_66b0:
    ld [c], a
    ld [hl+], a

jr_0b2_66b2:
    ld [c], a
    and d
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    jr c, jr_0b2_66a8

    jr c, jr_0b2_66aa

    jr c, jr_0b2_66ac

    jr c, jr_0b2_66ae

    jr c, jr_0b2_66b0

    jr c, jr_0b2_66b2

    inc a
    call nz, $c43c
    inc a
    call nz, $c43c
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    sbc h
    ld h, h
    sbc h
    ld h, h
    sbc [hl]
    ld h, d
    sbc [hl]
    ld h, d
    adc [hl]
    ld [hl], d
    adc [hl]
    ld [hl], d
    adc $32
    adc $32
    adc $32
    adc $32
    adc $32
    xor $12
    xor $12
    xor $12
    xor $12
    rst $30
    ld bc, $01f7
    di
    ld bc, $01f3
    di
    ld bc, $01fb
    ei
    ld bc, $01f9
    ei
    ld bc, $01f9
    ld sp, hl
    ld bc, $01fb
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    nop
    ld sp, hl
    nop
    and b
    ld e, b
    ldh [rNR24], a
    ret nz

    jr c, @-$1e

    jr @-$2e

    add hl, hl
    ldh a, [$08]
    ldh [rNR23], a
    ldh a, [$0c]
    ldh a, [$0c]
    add sp, $14
    ld hl, sp+$04
    ldh a, [$0c]
    cp h
    nop
    ld hl, sp+$04
    db $f4
    ld [$00fc], sp
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, $00
    ld a, $00
    ld e, $00
    ld e, $00
    inc e
    nop
    ld c, $00
    ld e, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    add b
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

    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    and b
    ld a, a
    ld e, a
    cp a
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    ld d, a
    ld l, h
    ld d, a
    ld l, h
    ld d, a
    ld l, h
    ld d, a
    ld l, h
    ld d, a
    ld l, h
    ld d, a
    ld l, h
    dec hl
    ld [hl], $2b
    ld [hl], $2b
    ld [hl], $2b
    ld [hl], $2b
    ld [hl], $2b
    ld [hl], $2b
    ld [hl], $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    dec h
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
    ld c, e
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
    rst $38
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0908], sp
    ld a, [bc]
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld [$0908], sp
    ld d, $00
    rla
    jr jr_0b2_688a

    ld a, [de]
    dec de
    inc e
    dec e
    dec e
    ld e, $1f
    jr nz, jr_0b2_6882

    ld hl, $2209
    nop
    inc hl
    inc h
    dec h
    dec e

jr_0b2_6882:
    dec e
    dec e
    dec e
    dec e
    ld h, $27
    jr z, jr_0b2_68b3

jr_0b2_688a:
    ld a, [hl+]
    dec hl
    nop
    nop
    inc l
    dec l
    ld l, $1d
    dec e
    dec e
    dec e
    dec e
    dec e
    cpl
    jr nc, @+$33

    ld [hl-], a
    inc sp
    nop
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    dec e
    dec e
    dec e
    dec e
    dec e
    jr c, jr_0b2_68e2

    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_0b2_68b3:
    ld b, d
    ld b, e
    dec e
    dec e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
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
    ld d, d
    ld d, e
    ld [$5408], sp
    nop
    rla
    ld d, l
    ld d, [hl]
    ld d, a
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
    ld h, c
    ld h, d
    nop
    ld h, e
    ld h, h

jr_0b2_68e2:
    nop
    nop
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc l
    ld l, l
    ld l, [hl]
    ld [$706f], sp
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    inc [hl]
    ld a, b
    ld a, c
    ld [$0808], sp
    ld [$0808], sp
    ld [$7b7a], sp
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    ld a, a
    nop
    add b
    ld [$0808], sp
    ld [$0808], sp
    ld [$8281], sp
    add e
    add h
    add l
    add [hl]
    add a
    nop
    adc b
    adc c
    adc d
    adc e
    adc e
    adc h
    adc l
    adc [hl]
    ld [$908f], sp
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    sub a
    ld d, [hl]
    ld d, [hl]
    sbc b
    sbc c
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
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
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
    nop
    or c
    or d
    or e
    or h
    or h
    or h
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
    or h
    or h
    or h
    or h
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    nop
    jp z, $b4b4

    or h
    or h
    set 1, h
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0601
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0600
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld b, $06
    ld b, $01
    ld bc, $0001
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
    ld bc, $0100
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
    ld bc, $0103
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
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
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
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
    inc a
    ret nz

    ret nz

    inc a
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    db $e3
    nop
    or $00
    inc a
    nop
    dec a
    nop
    cp l
    nop
    dec hl
    db $10
    ld a, [hl+]
    db $10
    rst $28
    db $10
    ld c, a
    ld de, $1967
    inc hl
    dec e
    add hl, hl
    rra
    ld l, a
    rra
    rra
    rra
    cp a
    ccf
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
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

    inc b
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    inc b
    add b
    inc b
    add b
    ld [$0880], sp
    add b
    add hl, bc
    add b
    add hl, bc
    add b
    add hl, bc
    add b
    add hl, bc
    add b
    add hl, bc
    nop
    add hl, bc
    ld bc, $0108
    db $10
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    db $10
    inc bc
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld [bc], a
    jr nz, jr_0b2_6bd5

    jr nz, jr_0b2_6bd7

    jr nz, jr_0b2_6bd9

jr_0b2_6bd5:
    jr nz, jr_0b2_6bdb

jr_0b2_6bd7:
    jr nz, jr_0b2_6bd9

jr_0b2_6bd9:
    jr nz, jr_0b2_6bdb

jr_0b2_6bdb:
    jr nz, jr_0b2_6bdd

jr_0b2_6bdd:
    jr nz, jr_0b2_6bdf

jr_0b2_6bdf:
    jr nz, jr_0b2_6be1

jr_0b2_6be1:
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    add hl, bc
    pop bc
    ld [$0c81], sp
    and b
    inc c
    ld [hl], h
    inc c
    ld a, [hl]
    ld a, h
    jp z, $f3f8

    sbc $f7
    sbc a
    db $fd
    sbc b
    cp l
    sbc b
    sbc [hl]
    or b
    ld a, a
    cp d
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
    ld bc, $07fe
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0b2_6c42:
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b2_6c5a:
    nop
    rst $38
    rlca
    ld hl, sp-$01
    nop
    ld [c], a
    db $fd
    di
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    rst $00
    ld hl, sp-$39
    ld hl, sp-$31
    ldh a, [$c6]
    ld hl, sp-$62
    ldh [$8e], a
    ldh a, [rNR32]
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [$3c], a
    ret nz

    ld e, b
    and b
    ld a, b

Call_0b2_6c7f:
    add b
    jr nc, jr_0b2_6c42

    ldh a, [rP1]
    ld h, b
    add b
    ldh [rP1], a
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    ld de, $0188
    adc b
    ld b, b
    adc h
    add b
    ld b, h
    and b
    ld b, [hl]
    ld b, c
    ld [hl+], a
    ld h, d
    ld de, $1128
    jr nc, jr_0b2_6c5a

    ld e, b
    add h
    sbc b
    ld b, [hl]
    jp nz, $ff7f

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rlca
    ld hl, sp+$3f
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
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    add hl, de
    ldh [$8c], a
    ld [hl], b
    ld b, h
    jr c, jr_0b2_6d39

    inc c
    ld [bc], a
    inc b

jr_0b2_6d2a:
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

jr_0b2_6d39:
    nop
    nop
    nop
    nop
    nop
    adc h
    ld [hl], b
    adc [hl]
    ld [hl], b
    rst $00
    jr c, @-$17

    jr jr_0b2_6d2a

    inc e
    ld [hl], b
    rrca
    jr c, jr_0b2_6d53

    inc a
    inc bc

jr_0b2_6d4e:
    rra
    add b
    rrca
    ret nz

    rla

jr_0b2_6d53:
    ld h, b
    inc hl
    jr jr_0b2_6d4e

    ld [$fff0], sp
    rst $00
    ld hl, sp-$7d
    db $fc
    rrca
    ldh a, [$1f]
    ldh [rNR31], a
    db $e4
    dec bc
    db $f4
    adc a
    ldh a, [$c7]
    ld hl, sp-$1d
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ld hl, sp-$30
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
    ld hl, sp-$7d
    db $fc
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$7f
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    ld a, a
    jr c, jr_0b2_6df4

    inc c
    rrca
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
    ret nz

    nop
    pop af
    nop
    rst $38
    nop
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    push af
    nop
    ld [$ff00], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    ret nz

    nop
    ld b, b
    rst $38
    rst $38
    rst $38
    ld b, b
    nop
    nop
    rst $38

jr_0b2_6df4:
    db $e3
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

Jump_0b2_6dff:
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    db $d3
    nop
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop

Call_0b2_6e10:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3ffe
    ret nz

    rst $38
    nop
    rst $38
    nop
    jr c, jr_0b2_6e2c

jr_0b2_6e2c:
    inc a
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    nop
    rst $38
    pop bc
    rst $38
    ld a, a
    ld [$0000], sp
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld c, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $01
    ld a, $01
    db $fc
    inc bc
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$5f]
    and b
    rst $38
    nop
    db $fc
    inc bc
    ld bc, $f9fe
    rlca
    ld [hl], d
    dec c
    db $fd
    ld [bc], a
    or $09
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, h
    inc bc
    jr c, jr_0b2_6e83

    rra
    rst $38
    rst $38
    rst $38
    ld e, b
    rlca
    nop

jr_0b2_6e83:
    rst $38
    ld hl, sp+$07
    ld a, h
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    add hl, sp
    rlca
    ldh a, [rIF]
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
    rrca
    ldh a, [rIE]
    nop
    db $fd
    nop
    db $fc
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    adc $ff
    inc e
    rst $38
    ld a, h
    cp $f1
    and $c1
    ld b, $01
    inc c
    inc bc
    inc e
    inc bc
    rst $00
    ccf
    adc [hl]
    ld a, a
    ld e, $f1
    inc b
    inc bc
    ld c, $01
    inc b
    inc bc
    ld c, $01
    inc c
    inc bc
    ld c, $01
    inc c
    inc bc
    inc c
    inc bc
    ld c, $01
    inc c
    inc bc
    ld b, $01
    ld b, $01
    rlca
    nop
    ld [bc], a
    ld bc, $0007
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
    ret nz

    nop
    ld [$1ef0], sp
    ldh [$3c], a
    ret nz

    ld a, l
    add b
    ld hl, sp+$01
    ldh a, [$03]
    push af
    ld [bc], a
    db $e3
    inc b
    inc bc
    call Call_000_1b84
    ret


    ld [hl], $fc
    rst $38
    ld a, a
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
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $3ffe
    ret nz

    db $fc
    nop
    ldh a, [rP1]
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
    nop
    nop
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    add b
    ld [hl], c
    add b
    ld [hl], c
    nop
    pop af
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld [hl], c
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld h, c
    ld hl, $61e1
    pop hl
    ld hl, $21e1
    pop hl
    and c
    ld h, c
    and c
    ld h, c
    add c
    ld h, c
    add c
    ld h, c
    add c
    ld h, c
    pop bc
    ld hl, $01e1
    pop hl
    ld bc, $01e1
    ld h, c
    ld bc, $03c3
    ld b, e
    inc bc
    ld b, e
    inc bc
    ld b, e
    inc bc
    ld c, e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld [bc], a
    add hl, bc
    ld [bc], a
    add hl, bc
    ld [bc], a
    dec c
    ld [bc], a
    add hl, bc
    ld [bc], a
    dec c
    ld [bc], a
    add hl, bc
    ld [bc], a
    dec c
    ld [bc], a
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld l, a
    add b
    ld a, e
    add h
    db $db
    ld b, h
    db $db
    ld b, h
    ei
    db $e4
    db $d3
    ld a, h
    di
    call c, $dff0
    rst $18
    rst $18
    rst $18
    rst $18
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
    rrca
    ldh a, [rIE]
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
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
    rst $08
    ccf
    pop af
    rrca
    cp $c1
    rst $38
    jr nc, @+$01

    ld c, $ff
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
    add c
    ld a, [hl]

jr_0b2_706a:
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
    db $fc
    inc bc
    ld hl, sp+$07
    di
    inc c
    rst $30
    ld [$10ee], sp
    xor $10
    rst $18
    jr nz, jr_0b2_706a

    jr nz, jr_0b2_709b

    pop af
    rrca
    sub b
    rrca
    sub b
    rrca
    sub b
    rrca
    ldh a, [$1f]
    ldh [$cf], a
    ldh a, [$c6]

jr_0b2_709b:
    ld sp, hl
    add b
    rst $38
    and b
    cp a
    add b
    cp a
    add b
    cp a
    ret nc

    cp a
    ret nc

    cp a
    db $ed
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    ret nz

    cp a
    cp a
    add b
    cp a
    cp a
    add b
    cp a
    ret nz

    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    add a
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
    nop
    rst $38
    nop
    ld a, a
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
    inc bc
    db $fc
    ld a, a
    add b
    cp $00
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
    ld a, a
    rst $38
    sbc a
    ld a, a
    db $e3
    rra
    db $fc
    jp $30ff


    rst $38
    ld c, $ff
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
    rlca
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
    ldh a, [rIF]
    rlca
    ld hl, sp-$0b
    ld [$08f4], sp
    inc b
    ld [$0400], sp
    nop
    inc b
    nop
    inc b
    add e
    inc b
    ld hl, sp-$3a
    ld [hl], c
    and $98
    ld [hl], e
    pop bc
    ccf
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

    ld [hl], a
    jp $d764


    ld b, h
    rst $30
    ld b, h
    rst $30
    ld b, h
    rst $30
    ld b, h
    rst $30
    call nz, $c4f7
    rst $30
    call nz, Call_0b2_4cf7
    rst $30
    call nz, $cc77
    rst $30
    ld b, h
    rst $30
    ld c, h
    rst $30
    call z, $ccf7
    rst $30
    rst $08
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    db $fc
    nop
    dec d
    nop
    jr jr_0b2_71ae

jr_0b2_71ae:
    cp l
    nop
    ld a, [$f900]
    nop
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $20
    rra
    ld sp, hl
    rst $00
    rst $38
    ld sp, $0fff
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rra
    db $e3
    db $e3
    rra
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
    ccf
    jp $ff01


    db $fd
    inc bc
    ld a, l
    inc bc
    dec e
    inc bc
    ld e, $01
    ld c, $01
    ld c, $01
    ld b, $01
    ld b, $01
    rst $38
    nop
    inc c
    rst $38
    add a
    ret nz

    ret nz

    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh a, [rIF]
    add b
    ld a, a
    db $fc
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
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    db $fc
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    adc a
    nop
    rra
    nop
    cp a
    nop
    ccf
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
    cp $00
    pop hl
    nop
    rra
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    jp Jump_000_033f


    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld bc, $feff
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
    cp $01
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $e3
    nop
    rra
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
    cp a
    rst $38
    rst $28
    cp a
    rst $20
    cp a
    rst $08
    cp a
    adc $b1
    rst $38
    ldh a, [rIE]
    ldh a, [$fb]
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$01
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    rst $30
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
    nop
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
    ld bc, $00fe
    rst $38
    dec bc
    ldh a, [$f8]
    nop
    ld hl, sp+$00
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
    ldh [$1f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    jp Jump_000_3f00


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
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$03
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
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
    rrca
    nop
    rra
    nop
    ld c, $01
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
    nop
    rst $38
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
    rst $00
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
    rst $38
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
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rra
    ret nz

    rst $38
    nop
    add b
    ld a, a
    ret nc

    rrca
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    ret c

    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    add sp, $00
    add a
    nop
    ld l, a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    inc b
    ei
    rrca
    ldh a, [rP1]
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rrca
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
    rra
    rst $38
    rrca
    rst $38
    rrca
    cp $0f
    db $fc
    rrca
    ld hl, sp+$0f
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
    ld hl, sp+$07
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
    rst $38
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec b
    cp $04
    cp $04
    cp $02
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
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
    rst $38
    nop
    add b
    ld a, a
    dec bc
    db $f4
    rst $18
    jr nz, @+$01

    nop
    ld a, a
    add b
    inc bc
    db $fc
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$02
    nop
    pop af
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
    nop
    rst $38
    nop
    ld e, $e1
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    jp nz, $f13f

    rrca
    db $fc
    inc bc
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_0b2_7620:
    nop
    rst $38
    rlca
    rst $38
    ld a, h
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    cp $93
    db $fc
    rra
    db $fc
    ret nz

    rst $38
    adc a
    ldh a, [$7f]
    add c
    rst $00
    rlca
    ld bc, $1101
    ld de, $0000
    ld b, h
    ld b, h
    nop
    nop
    ld de, $0111
    nop
    rst $00
    ret nz

    rst $38
    rra
    rst $18
    ldh [$1f], a
    ldh [$80], a
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp $3f
    rst $38
    nop
    rst $38
    ccf
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
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ccf
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

jr_0b2_7688:
    ret nz

    ccf
    dec bc
    db $f4
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
    ccf
    ret nz

    ld bc, $00fe
    rst $38
    ld a, $c1
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    pop hl
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
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$91]
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    jr nz, jr_0b2_7688

    sub b
    ldh [$88], a
    ldh a, [$90]
    ldh [rDIV], a
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
    rlca
    rst $38
    rra
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
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    pop bc
    ld a, $cf
    jr nc, @+$01

    nop
    pop af
    rrca
    ret nz

    jp $c4c4


    add b
    add b
    sub b
    sub c
    add b
    add b
    call nz, $c0c5
    pop bc
    pop af
    or $fd
    inc bc
    cp e
    ld a, h
    ld a, a
    add b
    rst $38
    nop
    add l
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    sub e
    rst $38
    inc bc
    db $fc
    cp $01
    db $eb
    sub $6e
    ld d, e
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    cpl
    dec sp
    cpl
    dec sp
    cpl
    ccf
    cpl
    ld a, $2f
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b2_7767:
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    jr c, jr_0b2_7767

    rlca
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
    ccf
    nop
    rra
    nop
    ld a, a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    db $fc
    rst $38
    inc b
    rst $38
    cp h
    rst $08
    db $ec
    adc a
    call nz, $8c8f
    rst $00
    adc h
    rst $00
    adc h
    ret nz

    ret nz

    nop
    pop bc
    nop
    push bc
    nop
    call nz, Call_0b2_44c0
    ret nz

    ld b, h
    jp $e325


    and l
    db $e3
    ld hl, $60e3
    db $e3
    ld [hl], b
    add b
    ldh a, [$03]
    ld a, [c]
    ldh [$f3], a
    nop

jr_0b2_77bc:
    di
    nop
    ld a, [c]
    nop
    ld [de], a
    ret nz

    ld e, c
    ret nz

    add hl, bc
    ret nz

    ld c, b
    pop bc
    ld l, b
    pop bc
    xor b
    pop bc
    ld [$ed01], a
    nop
    ld l, a
    and b
    db $e4
    jr nz, jr_0b2_77bc

    nop
    rst $30
    nop
    rst $30
    ldh [$b7], a
    ldh [$e7], a
    ldh a, [$a7]
    ldh a, [$27]
    ldh a, [rIE]
    nop
    db $fd
    ld a, [$fef9]
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$00
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
    ld a, a
    add b
    add e
    ld a, h
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
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    stop
    nop
    nop
    ld de, $0012
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    ld e, $1f
    jr nz, jr_0b2_78b4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b2_78c4

    ld a, [hl+]
    dec hl
    nop
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b2_78a5

jr_0b2_78a5:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b2_78ae

jr_0b2_78ae:
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_0b2_78b4:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    ld b, l
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    inc a
    ld c, d

jr_0b2_78c4:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
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
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    ld h, a
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld l, c
    ld l, e
    ld l, h
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    nop
    ld [hl], b
    ld [hl], c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [hl], h
    ld a, b
    ld a, c
    ld a, d
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld l, c
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
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld l, c
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
    sbc e
    sbc e
    sbc h
    sbc l
    sbc [hl]
    adc [hl]
    sbc a
    and b
    and c
    and d
    and e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    and h
    ld l, c
    and l
    and [hl]
    ld l, c
    and a
    xor b
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    xor c
    xor d
    ld l, c
    xor e
    xor h
    ld l, c
    ld l, c
    xor l
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    sbc e
    xor [hl]
    sbc l
    xor a
    ld l, c
    or b
    or c
    ld l, c
    ld l, c
    ld l, c
    or d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
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
    rlca
    rlca
    nop
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    nop
    nop
    nop
    nop
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
    ld b, $00
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
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
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
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
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
    dec b
    dec b
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
    ld b, $06
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld b, b
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
    dec b
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
    ld [bc], a
    dec b
    dec b
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
    dec b
    dec h
    dec b
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
    ccf
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
    ccf
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
    ccf
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
    ldh [rIE], a
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
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    ld d, $ff
    rla
    rst $38
    rla
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc hl
    rst $38
    jr nz, @+$01

    inc e
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
    ccf
    rst $38
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
    add b
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
    ld hl, sp-$01
    rlca
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
    nop
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
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    ld e, b
    rst $38
    call z, $aeff
    rst $38
    sub a
    rst $38
    adc e
    rst $38
    adc c
    rst $38
    add h
    rst $38
    add d
    rst $38
    add c
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
    add e
    db $fc
    jp nz, $c2fc

    db $fc
    ld a, [c]
    db $fc
    di
    db $fc
    ld a, c
    cp $39
    cp $19
    cp $98
    rst $38
    adc e
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$ec]
    ldh a, [$ac]
    ldh a, [$e8]
    ldh a, [$f8]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$3f]
    ld hl, sp+$3f
    db $fc
    rra
    cp $07
    ld hl, sp+$07
    ld hl, sp-$7d
    db $fc
    ld h, c
    cp $18
    rst $38
    call nz, $e3ff
    rst $38
    jr c, @+$01

    ld c, $ff

jr_0b2_7c4c:
    rrca
    di
    rrca
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
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
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
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
    rst $00
    jr c, jr_0b2_7c4c

    ldh [rIE], a
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$f0], a
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    cp $fe
    cp $fe
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
    nop
    rst $38
    nop
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
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    or b
    rst $38
    ld e, b
    rst $38
    inc l
    rst $38
    and [hl]
    ld a, a
    di
    rra
    cp e
    rrca
    dec c
    rlca
    ld c, $03
    inc bc
    ld bc, $0007
    rra
    nop
    dec e
    ld [bc], a
    sub a
    ld [$1ce3], sp
    db $e3
    inc e
    db $eb
    inc d
    ei
    inc b
    ld a, [$7f00]
    nop
    ld a, c
    nop
    inc a
    nop
    rrca
    nop
    ld c, $00
    rlca
    nop
    ld bc, $8000
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld [hl], b
    add b
    ld a, [hl]
    add b
    cp $80
    ld a, [hl]
    ldh [rNR34], a
    ld hl, sp-$39
    db $fc
    di
    ld a, a
    ld hl, sp+$1f
    cp $0f
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$f0], a
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    ld a, a
    add b
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
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
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp-$10
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp+$1f
    ldh [$f0], a
    rrca
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
    add $f9
    ld [c], a
    db $fd
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    sub b
    rst $38
    ret c

    ld a, a
    db $ec
    ccf
    or $1f
    ld a, [hl-]
    adc a
    ld a, l
    add a
    inc a
    ld b, a
    ld l, $43
    ld l, a
    ld bc, $00e3
    jr nz, jr_0b2_7dde

jr_0b2_7dde:
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
    ld h, b
    nop
    jr z, jr_0b2_7dec

jr_0b2_7dec:
    ld [$0800], sp
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    ld d, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    ld a, [$e500]
    nop
    rst $38
    nop
    ei
    add b
    ld a, c
    ldh [$9c], a
    ld hl, sp-$3a
    db $fc
    di
    ld a, a
    db $fc
    rra
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
    ld a, a
    add b
    rlca
    ld hl, sp+$00
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
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ret nz

    inc bc
    inc bc
    inc c
    inc c
    nop
    rst $38
    nop
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
    cp $01
    db $fc
    inc bc
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    rst $38
    nop
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
    rst $38
    db $10
    rst $28
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ccf
    ret nz

    cp [hl]
    ld b, c
    ret nz

    ccf
    inc bc
    db $fc
    nop
    rst $38
    add b
    rst $38
    rst $00
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    rst $28
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
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    ret nc

    ld a, a
    add sp, $3f
    db $f4
    rra
    ld h, $1f
    ld a, [hl-]
    rrca
    dec [hl]
    rrca
    ld l, $1f
    rrca
    ccf
    rrca
    ccf
    ld c, a
    ccf
    ld c, a
    ccf
    rst $20
    rra
    or e
    rrca
    dec sp
    rlca
    dec sp
    rlca
    ei
    rlca
    ei
    rlca
    di
    rrca
    rst $10
    cpl
    rst $10
    cpl
    rst $00
    ccf
    rst $08
    ccf
    rst $38
    rra
    rra
    rst $38
    adc $ff
    ld a, [hl]
    rst $38
    sbc [hl]
    rst $38
    and $ff
    cp $3f
    xor $1f
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
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

jr_0b2_7f19:
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    db $e3
    inc c
    inc c
    jr nc, jr_0b2_7f5a

    ret nz

    ret nz

    inc bc
    inc bc
    inc b
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    inc b
    ei
    inc a
    jp $df20


    rst $00
    jr c, jr_0b2_7f19

    ccf

jr_0b2_7f5a:
    nop
    rst $38
    inc bc
    db $fc
    ret nz

    ccf
    rlca
    rst $38
    ld a, a
    ld hl, sp-$01
    add c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    ld a, l
    add e
    inc a
    jp $c33c


    inc e
    db $e3
    inc e
    db $e3
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
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    adc h
    di
    adc h
    di
    adc h
    di
    adc h
    di
    adc h
    di
    adc h
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
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
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
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld h, e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    ld [c], a
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    sbc h
    db $e3
    inc e
    db $e3
    inc e
    db $e3
