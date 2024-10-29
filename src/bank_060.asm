SECTION "ROM Bank $060", ROMX[$4000], BANK[$60]

    ld b, e
    add hl, de
    inc bc
    jr z, jr_060_406a

    add c
    db $e3
    ld b, $a1
    inc b
    jr c, jr_060_4014

    ld a, l
    ld b, l
    ccf
    inc b
    ld a, e
    call z, $fe3f

jr_060_4014:
    rra
    rst $38
    ld b, b
    cp a
    add d
    ld a, a
    add sp, $1f
    rst $10
    ccf
    push hl
    ccf
    adc l
    ld a, [hl]
    sbc h
    ld a, a
    cp h
    rst $38
    ld a, l
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $f3
    db $fc
    ld a, [$2ffd]
    call c, Call_060_43a5
    rst $00
    nop
    dec a
    ret nz

    push hl
    nop
    push bc
    inc b
    rst $30
    nop
    sbc d
    inc e
    ld l, b
    sbc [hl]
    adc $34
    ld a, $00
    ld a, $04
    ld e, a
    nop
    ld a, a
    inc e
    dec b
    db $fc
    ld b, h
    ld hl, sp-$08
    nop
    ld hl, sp+$00
    rst $38
    rlca
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    add hl, sp
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_060_406a:
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    or $ff
    cp $ff
    cp $ff
    ld a, [$feff]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $eb
    rst $38

jr_060_4084:
    db $ec
    rst $38
    db $ec
    rst $38
    db $ed
    rst $38
    ret z

    rst $38
    pop hl
    rst $38
    adc $fd
    dec bc
    cp $0b
    cp $41
    cp $0b
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
    ld hl, sp+$57
    ld hl, sp+$17
    add sp, -$69
    ld hl, sp+$5f
    ld hl, sp-$31
    ldh a, [$8f]
    ldh a, [$5f]
    ldh [$af], a
    ldh a, [$8f]
    ld [hl], b
    ld e, a
    ldh a, [$9f]
    ld [hl], b
    rst $18
    ld h, b
    cp a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_060_4084

    ld b, b
    cp a
    ld b, b
    ld a, a
    add b

jr_060_40ca:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, [$ff07]
    ld b, $fe
    ld b, $fe
    ld b, $fe
    ld b, $fe
    inc b
    db $fc
    rlca
    cp $07
    db $f4
    inc bc
    ld hl, sp+$0b
    ld hl, sp-$01
    adc h
    xor e
    xor b
    cp c
    jr c, jr_060_40ca

    ld a, a
    ld c, e
    cp $7b
    db $fd
    ld d, c
    rst $38
    ld l, l
    sbc a
    ldh a, [$cf]
    xor $1f
    db $ed
    rra
    pop hl
    rra
    call c, $b12f
    rst $08
    ldh [rIE], a
    rra
    rst $38
    adc [hl]
    ld a, a
    ld c, a
    cp a
    nop
    rst $38
    add d
    ld a, a
    add a
    ld a, a
    nop
    rst $38
    ld c, b
    rst $38
    ld h, c
    cp [hl]
    ld h, c
    sbc [hl]
    ret nz

    ccf
    pop hl
    rra
    pop hl
    rra
    ld sp, hl
    rst $00
    ld hl, sp+$07
    pop hl
    rra
    add sp, $1f
    db $e4
    rra
    di
    inc e
    ld a, a
    nop
    rra
    ld [$0837], sp
    rst $38
    jr c, @+$01

    ld [$01fe], sp
    ld e, a
    add b
    ld a, [hl]
    nop
    ld l, a
    stop
    nop
    nop
    ld b, $02
    cp $04
    cp $f4
    ld c, $a4
    ld e, [hl]
    ld h, h
    call c, Call_060_5cac
    ld l, h
    call c, $dc2c
    inc l
    call c, $dcac
    cp h
    call c, $dc7c
    cp b
    call c, $bc58
    cp b
    db $fc
    ld e, b
    cp h
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld a, b
    cp b
    ld hl, sp-$48
    ld [hl], b
    cp b
    ld [hl], b
    cp b
    ldh a, [$38]
    or b
    ld a, b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    ld hl, $20f0
    ldh a, [rNR41]
    ldh a, [$30]
    ldh [$90], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR11], a
    ldh [$1f], a
    rra
    ld de, $2f1f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, l
    db $dd
    ld a, $80
    ld a, $80
    inc a
    add b
    cp [hl]
    add d
    cp e
    add b
    or b
    sub b
    ld sp, hl
    add c
    ld a, [$cec7]
    add a
    jp z, $e287

    rst $08
    ld [c], a
    rst $08
    and $8f
    ld a, c
    add a
    ld b, $ff
    ld b, [hl]
    rst $38
    cp $8f
    cp $8f
    cp $0f
    or $8f
    rst $30
    rrca
    ld l, a
    sbc a
    adc a
    rst $38
    rst $08
    ccf
    db $dd
    ccf
    db $dd
    ld [hl], $cd
    ld [hl], $48
    or a
    ld [$08f7], sp
    rst $30
    call z, Call_060_5a33
    rst $30
    jp nz, $2c3f

    inc de
    inc e
    inc bc
    db $fc
    inc bc
    ret c

    daa
    ldh a, [rIF]
    rst $30
    inc c
    db $e3
    ld e, $89
    cp $61
    cp [hl]
    db $eb
    ld e, [hl]
    xor e
    db $fc
    ld e, [hl]
    rst $38
    rst $18
    cp a
    rst $38
    ccf
    cp a
    rst $38
    rst $30
    rst $38
    cpl
    rst $38
    add hl, de
    rst $20
    dec l
    db $d3
    inc d
    ei
    rlca
    ei
    ld b, c
    rst $38
    ld a, b
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $61ff
    rst $38
    add sp, -$09
    xor $f7
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    inc bc
    inc bc
    ld de, $1312
    inc d
    dec d
    ld d, $0a
    ld a, [bc]
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    inc bc
    dec e
    ld e, $13
    rra
    jr nz, jr_060_427b

    ld [hl+], a
    ld a, [bc]
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_060_428c

    ld a, [hl+]
    dec hl
    inc de
    inc l
    dec l
    ld l, $2f
    jr nc, jr_060_4276

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_060_42ae

    ld a, [hl-]

jr_060_4276:
    dec sp
    inc a
    dec a
    ld a, $0a

jr_060_427b:
    ld a, [bc]
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
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_060_428c:
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

jr_060_42ae:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    inc de
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
    dec d
    ld d, $17
    jr jr_060_4371

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_060_4381

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_060_4391

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_060_43a1

    dec b

jr_060_4371:
    nop
    nop
    nop
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
    ld bc, $0501

jr_060_4381:
    nop
    nop
    nop
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
    ld bc, $0401

jr_060_4391:
    nop
    nop
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
    ld bc, $0201

jr_060_43a1:
    nop
    nop
    nop
    nop

Call_060_43a5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    ld bc, $0101

Jump_060_43c0:
    ld bc, $0202
    dec b
    ld b, $06
    ld [bc], a
    ld [bc], a
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
    ld bc, $0401
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, HeaderLogo
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    inc b

Jump_060_4407:
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
    ld bc, $0901
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ret nz

    nop
    ld bc, $0200
    nop
    inc b
    nop
    inc b
    nop
    and h
    cp $56
    rst $38
    ld bc, $ffff
    nop
    rrca
    ldh a, [rP1]
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, $ff
    ld e, [hl]
    rst $38
    ld h, $ff
    inc de
    rst $38
    inc a
    rst $38
    dec e
    rst $38
    sbc h
    rst $38
    cp h
    rst $38
    cp l
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    adc d
    rst $38
    dec hl
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    ld b, h
    rst $38
    add d
    ld a, a
    add e
    ld a, a
    sbc $7f
    ret


    ld a, a
    ld [hl], l
    cp [hl]
    ld l, b
    or a
    ld e, [hl]
    and e
    db $db
    ccf
    call $fd37
    inc de
    db $db
    inc h
    rst $30
    ld [$04fb], sp
    ld a, [$fd05]
    ld [bc], a
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
    rst $38
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
    cp $ec
    db $ec
    add e
    add d
    inc bc
    ld [bc], a
    ld b, c
    ld b, b
    add a
    rst $38
    sub d
    rst $38
    ret c

    cp a
    nop
    rst $38
    jr @+$01

    ret z

    rst $38
    add d
    rst $38
    nop
    rst $38
    ld a, [de]
    push hl
    call Call_060_61f2
    sbc $25
    ld a, [$ff60]
    ldh [rIE], a
    add d
    rst $38
    inc b
    rst $38
    ldh [rP1], a
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
    db $fc
    ldh [rIE], a
    add b
    ld a, a
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $e4
    rst $38
    rst $28
    rst $38
    or d
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
    ld b, b
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
    rst $38
    add b
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    inc b
    rst $38
    inc l
    rst $38
    ld b, l
    rst $38
    ld d, d
    rst $38
    rst $28
    dec [hl]
    push de
    ld a, [hl+]
    sub l
    ld a, e
    ld l, b
    rst $18
    ld e, d
    and l
    db $db
    dec [hl]

jr_060_460e:
    ld d, d
    cp l
    ld c, l
    or d
    cp $11
    rst $18
    jr nz, jr_060_460e

    ld [$a05f], sp
    ld a, l
    add d
    rst $38
    nop

jr_060_461e:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    jr c, jr_060_461e

    ld a, [$99f8]
    sbc c
    call c, $9e5c
    ld e, $de
    ld e, $de
    ccf
    ccf
    rst $38
    rrca
    rst $38
    cp a
    ld c, a
    rst $08
    ld a, a
    adc a
    ld a, a
    ld b, $ff
    jr @+$01

    add hl, bc
    rst $38
    jp $c33d


    inc a
    ld [$00ff], sp
    rst $38
    db $10
    rst $28
    ld b, c
    cp a
    inc hl
    db $dd
    ld a, b
    rst $38
    rra
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    jr @+$01

    dec e
    rst $38
    ld bc, $0001
    rst $38
    ret z

    ccf
    rst $38
    nop
    dec bc
    cp $56
    rst $38
    ldh a, [rIE]
    sub h
    rst $38
    db $fc
    rst $38
    dec bc
    rst $38
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
    rst $38
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
    db $f4
    rst $38
    ld a, [c]
    rst $38
    pop af
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
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
    ld b, h
    cp a
    ld [hl-], a
    rst $38
    ld b, b
    rst $38
    ld bc, $10ff
    rst $38
    ld b, $ff
    ld b, $ff
    adc c
    rst $38
    adc l
    cp $26
    db $fd
    adc c
    cp $a6
    ld sp, hl
    dec l
    jp nc, $eedb

    ld l, h
    sub e
    ld h, a
    sbc b
    cp h
    ld b, e
    cpl
    ret nc

    cp a
    ld b, b
    ld l, a
    sub b
    rst $38
    nop
    ld d, a
    xor b
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $30
    ld [$10ef], sp
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

jr_060_46ea:
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    jr c, jr_060_46ea

    ld de, $0511
    ld bc, $4343
    db $10
    db $10
    ldh [$e0], a
    ldh a, [$e0]
    db $fc

Jump_060_46ff:
    ld b, b
    ld a, l
    add e
    dec c
    di
    add c
    rst $38
    cp $ff
    ld hl, sp-$01
    add d
    rst $38
    inc c
    di
    rrca
    ldh a, [$03]
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    jr nz, @+$01

    ld de, $40ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld sp, hl
    nop
    cp a
    nop
    ld bc, $0382
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ldh [rTMA], a
    ld sp, hl
    ld [bc], a
    rst $38
    db $ed
    rla
    rst $38
    nop
    ld c, e
    db $fc
    ccf
    ldh a, [rP1]
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    inc bc
    rst $38
    or b
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
    add sp, -$01
    ld hl, sp-$01
    db $fc
    rst $38
    call z, $bcff
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    ld sp, hl
    rst $38
    ld a, [c]
    rst $38
    call nc, $d1ff
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    and b
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
    ld [de], a
    rst $38
    ld de, $14ff
    rst $38
    inc de
    rst $38
    ld hl, $17ff
    rst $38
    pop bc
    rst $38
    sub l
    rst $38
    dec h
    rst $38
    cp d
    rst $38
    ld d, [hl]
    rst $38
    ld c, e
    cp $fd
    rst $28
    xor h
    di
    rst $10
    ld l, a
    ld l, l
    sub d
    ld h, l
    ld a, [$ac57]
    rst $28
    sbc b
    sub a
    ld a, b
    rst $28
    db $10
    rst $18
    jr nz, @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_060_47b8:
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, a

Jump_060_47bf:
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $28
    ld h, a
    rst $20
    ld h, $26
    inc d
    rst $38
    db $fd
    add a
    db $fd
    rst $00
    ld c, l
    rst $38
    ei
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
    and h
    rst $38
    ld de, $5bee
    db $e4
    ld [hl-], a
    rst $38
    jr z, @+$01

    ld [hl], b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $28
    or e
    call z, $38c7
    rst $20
    jr jr_060_4844

    ret z

    ld a, $c1
    cp $01
    ccf
    nop
    daa
    jr jr_060_4872

    inc e
    ldh [$e0], a
    inc d
    ld [$b44b], a
    rst $38
    nop
    rst $38
    ld bc, $1ae5
    and a
    ret c

    ld h, [hl]
    sbc l
    rst $08
    jr c, jr_060_482d

    db $fd
    rrca
    ld sp, hl
    ld a, [bc]
    rst $38
    dec bc
    db $fc
    dec bc
    db $fc
    ld a, [de]

jr_060_482d:
    db $ed
    add hl, de
    cp $0a
    db $fd
    ld a, [bc]
    db $fd
    rlca
    db $fc
    rlca
    db $fd
    add [hl]
    db $fd
    and [hl]
    db $fd
    ld b, $fd
    add [hl]
    db $fd
    dec b
    cp $0d
    rst $38

jr_060_4844:
    dec c
    cp $0c
    rst $38
    dec c
    rst $30
    ld b, l
    cp $09
    cp $49
    cp $49
    or [hl]
    ld c, c
    cp $41
    cp $08
    rst $38
    ld c, b
    rst $38
    dec [hl]
    xor $19
    xor $4c
    ei
    adc l
    ld a, [$fb44]
    sbc l
    ld [c], a
    ld b, [hl]
    ei
    ld e, h
    di
    adc h
    di
    ld [hl], e
    db $dd
    ld e, l
    db $e3
    ld l, $d1

jr_060_4872:
    and $19
    rst $38
    ld d, l
    rst $30
    inc e
    ld [$ef1d], a
    ld d, c
    or e
    ld c, h
    and $19
    or a
    ld c, b
    rst $38
    ld [$08f7], sp
    rst $30
    ld [$00ff], sp
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    cp $1f
    rst $38
    ld a, [hl]
    ld a, [hl]
    sbc $d0
    ld a, a
    ld bc, $607f
    and $5b
    inc de
    cp $7f
    db $fc
    db $76
    sbc a
    ld h, h
    sbc a
    sbc $bf
    sbc e
    cp $d7
    ld hl, sp-$31
    ld hl, sp-$31
    ldh a, [$8a]
    rst $30
    dec b
    rst $38
    xor h
    ld a, a
    adc $3f
    adc $37
    rst $28
    rla
    db $db
    daa
    db $10
    rst $28
    ld bc, $01ff
    rst $38
    add b
    ld a, a
    ld [bc], a
    rst $38
    nop
    rst $38
    dec c
    cp $a4
    inc bc
    ret nz

    inc bc
    inc b
    inc bc
    db $fd
    add e
    dec l
    rst $30
    add b
    ld a, a
    ld [hl-], a
    rrca

jr_060_48ee:
    rst $38
    nop

jr_060_48f0:
    rst $18
    nop
    ccf
    add b
    ld a, a
    nop
    ld a, a
    db $10
    ld a, a
    add b

jr_060_48fa:
    ld a, a
    ld [$8021], sp

jr_060_48fe:
    ld [hl+], a
    ld [hl+], a

jr_060_4900:
    inc de
    inc de
    pop bc
    add c
    ld h, [hl]
    add b
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, h
    add b
    ld bc, $42c0
    ret nz

    jp nz, Jump_060_43c0

    ret nz

    ld b, c
    ret nz

    add c
    ret nz

    add hl, bc
    ret nz

    daa
    ret nz

    add b
    ret nz

    and b
    ret nz

    ret c

    add b
    rrca
    ret nz

    cp [hl]
    ret nz

    db $10
    ret nz

    jr nc, jr_060_48ee

    jr c, jr_060_48f0

    xor h
    ret nz

    rlca
    ret nz

    inc hl
    ret nz

    inc hl
    ret nz

    jr nz, jr_060_48fa

    jr nz, @-$3e

    jr nz, jr_060_48fe

jr_060_493e:
    jr nz, jr_060_4900

    ccf
    ldh [$0b], a
    db $d3
    jr jr_060_493e

    ld c, $e0
    dec b
    push bc
    ld de, $1ff1
    rst $18
    add hl, de
    ld sp, hl
    ld de, $16f1
    or $12
    ld a, [c]
    rrca
    ldh a, [$0e]
    ldh [rIF], a
    pop hl
    rra
    pop af
    ld c, $e2
    inc d
    ldh a, [$0e]
    ldh a, [$1f]
    pop af
    rlca
    ld hl, sp+$06
    ldh a, [rTMA]
    ldh a, [rTMA]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ld hl, sp+$04
    ldh a, [$09]
    ld sp, hl
    rrca
    ld hl, sp+$07
    ld hl, sp+$0f
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$02
    ld hl, sp+$04
    db $f4
    ld b, $f8
    rlca
    ld hl, sp+$07
    db $fc
    rlca
    db $f4
    ld [bc], a
    ld hl, sp+$00
    ld hl, sp+$05
    db $fc
    dec b
    db $fc
    inc b
    db $fc
    rlca
    cp $07
    db $fc
    rlca
    db $fc
    ld bc, $04fc
    db $fc
    rlca
    rst $38
    ld a, [bc]
    ld a, [c]
    rra
    dec bc
    sub c
    sub c
    push hl
    dec h
    ld a, [c]
    db $10
    scf
    ld [hl-], a
    sub l
    sub h
    ld [$fa97], a
    rst $10
    ret


    ld [hl], a
    or a
    ld hl, sp+$5b
    db $fd
    set 7, [hl]
    pop hl
    ld e, $fd
    ccf
    ld a, [c]
    rra
    rst $38
    ld a, a
    rst $28
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    inc a
    rst $38
    or h
    rst $38
    ld [bc], a
    db $fd
    ld bc, $07fe
    db $fc
    inc b
    rst $38
    nop
    rst $38
    ld [$21ff], sp
    cp $c0
    ccf
    ld h, b
    sbc a
    dec d
    rst $38
    rlca
    rst $38
    ld a, d
    rst $38
    rst $00
    rst $38
    db $fc
    rst $38
    sbc [hl]
    rst $38
    ld [bc], a
    rst $38
    add [hl]
    ld a, a
    xor d
    ld e, a
    db $fc
    rlca
    ld b, $03
    dec b
    inc bc
    or d
    rrca
    jp $073f


    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ret c

    rlca
    sbc $01
    ld e, [hl]
    add c
    sbc [hl]
    ld bc, $02fd
    cp $00
    db $fc
    nop
    ei
    nop
    db $d3
    nop
    rst $00
    nop
    add e
    inc b
    xor e
    inc b
    rst $10
    jr z, jr_060_4a22

    db $fc
    rst $30

jr_060_4a21:
    rrca

jr_060_4a22:
    rst $38
    rrca
    rst $18
    daa
    ld a, l
    add a
    or $0f
    or l
    ld c, $2e
    inc d
    rst $38
    ld h, $39
    rst $00
    ld a, [hl-]
    rst $00
    ld a, [$f307]
    rrca
    rst $30
    rra
    push bc
    rra
    ccf
    rra
    push hl
    rra
    jr nz, jr_060_4a21

    di
    adc h
    ld hl, sp+$0f
    db $fc
    add a
    or l
    ld [bc], a
    or l
    ld [bc], a
    cp c
    add [hl]
    ld sp, hl
    add a
    ld hl, sp-$79
    ld a, l
    xor a
    rst $18
    ldh a, [$ef]
    nop
    ld a, a
    add b
    ld a, c
    add [hl]
    pop af
    ld c, $11
    adc $03
    db $fc
    xor $99
    ld a, e
    adc h
    cp d
    push bc
    cp [hl]
    pop bc
    sbc a
    jp hl


    inc a
    db $e3
    sbc $e1
    inc e
    db $e3
    call c, Call_060_5ee3
    pop hl
    ld a, d
    pop hl
    jp z, $e4f3

    ei
    rst $20
    ld sp, hl
    ld a, l
    rst $38
    ld a, a
    cp $63
    cp $fb
    add $4c
    di
    ld l, a
    or c
    ld l, a
    sub c
    ld h, [hl]
    reti


    ld h, $dd
    ld b, b
    rst $38
    nop
    rst $38
    dec de
    db $e4
    add hl, sp
    ld b, $39
    ld b, $e1
    ld e, $b4
    ld e, a
    ld a, [$fe07]
    rlca
    jr nc, @+$01

    ld e, a
    ei
    ld a, e
    push af
    dec c
    ei
    jr nc, @+$01

    ld h, a
    rst $38
    ld a, $f3
    ld a, a

jr_060_4ab1:
    pop de
    ei
    xor $47
    db $fc
    add e
    db $fc
    ccf
    ld [c], a
    cp a
    jp Jump_060_718e


    ld b, a
    db $fd
    or d
    ld e, l
    jp hl


    rra
    ld [hl], b
    adc a
    ld h, b
    sbc a
    add b
    rst $38
    ld a, [c]
    adc l
    ldh [$1f], a
    ld d, c
    adc [hl]
    jr nz, jr_060_4ab1

    add hl, bc
    rst $30
    ld a, b
    rst $00
    nop
    rst $38
    and e
    ld a, h
    push bc
    ld a, [hl-]
    ld h, e
    sbc h
    ld h, e
    sbc h
    dec de
    rst $38
    ld [bc], a
    rst $38
    ccf
    call $c0bf
    ccf
    ret nz

    ld a, a
    ret nz

    db $fd
    add [hl]
    ld hl, sp+$07
    ldh [$1f], a
    ld a, [c]
    rra
    adc $b1
    sbc a
    ldh [$2f], a
    ret nz

    jp hl


    add a
    ldh [$1f], a
    ret nz

    cp a
    cp $81
    ld a, a
    add b
    dec de
    db $f4
    nop
    rst $38
    ei
    inc b
    sbc e
    inc b
    add hl, de
    ld b, $59
    ld b, $79
    ld b, $f5
    ld c, $e7
    jr @+$01

    ld [bc], a
    rst $38
    ld [bc], a
    jp hl


    db $10
    cp a
    db $10
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push bc
    rst $38
    add b
    db $fc
    ld h, b
    sbc h
    ldh [rNR32], a
    nop
    db $fc
    ldh [$fc], a
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    cp h
    db $fc
    ld e, h
    cp h
    sbc b
    db $fc
    ld e, h
    db $fc
    inc e
    db $fc
    inc b
    ld hl, sp+$24
    ret c

    ld d, b
    cp a
    ei
    adc $ff
    ld [$2cff], sp
    rst $30
    inc e
    pop af
    ld c, [hl]
    cp h
    ld l, a
    inc [hl]
    rst $38
    daa
    rst $38
    ld a, l
    adc a
    ld h, e
    cp h
    di
    adc h
    ld [hl], a
    adc b
    rst $30
    adc c
    ld [hl], a
    adc l
    ld hl, sp-$71
    ld l, [hl]
    rst $38
    ld h, a
    ei
    ld l, a
    ld hl, sp+$66
    ld sp, hl
    db $f4
    ei
    db $e4
    ei
    ld a, [$faff]
    rst $38
    di
    cp $7b
    cp $ef
    ld a, h

jr_060_4b84:
    rst $20
    inc a
    rst $30
    inc c
    pop af
    adc a
    ld [hl], l
    rst $28
    cp [hl]
    pop bc
    ld c, $f1
    ld c, a
    pop af
    sbc a
    ld h, b
    rst $08
    jr nc, jr_060_4b84

    rra
    rst $30
    dec c
    rst $38
    inc bc
    ei
    rlca
    ld [hl], h
    cp a
    rst $30
    rst $18
    ld l, $ff
    ld a, a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    cpl
    rst $18
    ld a, l
    adc a
    db $ec
    ld a, a
    ld h, l
    rst $38
    sbc h
    ld a, e
    ld hl, sp+$2f
    db $fd
    inc bc
    ei
    rlca
    db $fd
    rra
    ldh a, [rIE]
    jp $d6fc


    rst $28
    add hl, bc
    rst $38
    adc a
    ld a, a
    adc b
    rst $30
    dec a
    jp $e11e


    rlca
    ld hl, sp+$0b
    db $fc
    add a
    db $fc
    inc h
    rst $18
    nop
    rst $38
    and b
    ld e, a
    ld a, [c]
    dec c
    ld hl, sp+$07
    rst $38
    nop
    call c, $f403
    ei
    and b
    rst $38
    ld a, [c]
    rrca
    ret c

    rlca
    ldh a, [rIF]
    ret nz

    ccf
    ldh [$3f], a
    inc [hl]
    rl d
    db $ed
    dec de
    db $e4
    rrca
    ldh a, [$09]
    ldh a, [$2f]
    ldh a, [$2d]
    rst $18
    inc de
    rst $28
    nop
    rst $38
    inc b
    rst $38
    ld d, [hl]
    xor a
    ei
    rrca
    ld d, a
    rst $38
    push af
    adc a
    rra
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_060_4c12:
    db $e3
    inc a
    rst $20
    jr jr_060_4c12

    inc b
    ld sp, hl
    ld b, $7f
    nop
    rst $28
    db $10
    jp nz, $f0fc

    rst $38
    ldh a, [rIE]
    or d
    rst $38
    ldh a, [$f0]
    nop
    nop
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
    ld hl, sp-$08
    nop
    nop
    rrca
    rrca
    rst $38
    rst $38
    ld a, b
    rst $38
    rst $18
    ld a, d
    db $eb
    inc e
    pop hl
    ld e, $93
    ld a, h
    ld d, c
    cp [hl]
    ld sp, $71ff
    cp $fb
    xor $f9
    ld l, $3f
    inc bc
    ccf
    inc bc
    ccf
    ld b, $f8
    rla
    ret nz

    ccf
    rst $20
    ld a, $bf
    cp $ff
    inc l
    rst $30
    dec c
    db $fd
    and a
    rst $00
    ld a, e
    rst $28
    ld [hl], b
    cpl
    ldh a, [$6f]
    ldh a, [$8f]
    ld [hl], b
    jp z, $c037

    ld a, a
    ld [$f47f], a
    ld a, a
    and $ff
    inc e
    di
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    sbc c
    ld [hl], b
    rst $38
    sub b
    ld l, a
    adc c
    rst $38
    add b
    rst $38
    add hl, de
    rst $38
    add d
    rst $38
    add a
    rst $38
    sbc a
    rst $38
    ld b, a
    rst $38
    call c, $dfe7
    ldh a, [$e3]
    db $fd
    ret nc

    rst $38
    sbc h
    rst $38
    xor $1f
    pop af
    ld c, $68
    sbc a
    or b
    rst $18
    adc d
    rst $38
    db $db
    cp $d8
    rst $38
    dec b
    rst $38
    ret z

    ccf
    jp nz, $803f

    rst $38
    ld [hl], e
    adc h
    pop bc
    rst $38
    and $fd
    ld h, l
    cp $39
    cp $9c
    ld a, a
    cp [hl]
    ld a, a
    rrca
    rst $38
    ccf
    rst $08
    cp a
    ld b, a
    rst $28
    inc de
    ld [hl], c
    adc a
    ld a, b
    add a
    ld a, b
    add a
    inc bc
    rst $38
    set 6, l
    ld a, c
    add a
    ld a, c
    add a
    ld [hl], e
    adc a
    ld l, a
    ei
    ld b, [hl]
    ld sp, hl
    ld e, $f1
    rst $18
    inc sp
    ld sp, hl
    rlca
    ei
    rlca
    ei
    rlca
    ret


    ld a, a
    add l
    rst $38
    ld e, b
    rst $28
    inc e

jr_060_4cef:
    db $e3
    ccf
    pop hl
    cp a
    pop hl
    rst $38
    pop hl
    ld a, $e3
    call c, $d4eb
    ei
    ld d, a
    rst $38
    ret c

    cpl
    sbc a
    ld h, b
    xor a
    ld [hl], b
    cp b
    ld b, a
    jr jr_060_4cef

    ld l, b
    rst $30
    and b
    rst $38
    sbc d
    ld h, a
    cp l
    ld h, d
    ld l, d
    rst $38
    ld a, a
    rst $38
    db $76
    rst $38
    inc de
    rra
    inc de
    rra
    pop de
    rst $18
    pop de
    rst $18
    pop de
    rst $18
    reti


    rst $18
    reti


    rst $18
    reti


    rst $18
    db $dd
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $10
    rst $18
    sub $df
    db $db
    rst $18
    reti


    rst $18
    add hl, de
    rra
    dec e
    rra
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    and b
    ld a, a
    and b
    ld a, a
    or d
    ld c, a
    reti


    ld h, a
    ld h, d
    rst $38
    xor b
    ld a, a
    cp c
    ld h, [hl]
    db $ed
    ld a, [hl]
    xor d
    ld a, a
    or l
    ld a, [hl]
    xor h
    ld a, a
    xor h
    ld a, a
    ld l, [hl]
    ei
    ld [hl], $f9
    or $79
    cp $3d
    ei
    ld a, l
    cp e
    ld a, a
    cp a
    rst $38
    inc a
    rst $38
    ld l, c
    rst $30
    jp nz, Jump_000_277f

    ei
    and [hl]
    ld a, c
    ld b, d
    rst $38
    add hl, bc
    rst $38
    ret c

    rst $38
    ld [$f9f7], sp
    adc a
    ldh a, [rIF]
    ldh [$3f], a
    or b
    ld e, a
    sbc d
    ld a, a
    ld a, [de]
    rst $38
    dec b
    rst $38
    jr nz, @+$01

    ld c, $ff
    ldh a, [$3f]
    ld [hl], b
    rst $38
    inc d
    rst $38
    sbc a
    rst $28
    ldh a, [rIE]
    ei
    rst $38
    ld a, a
    db $fc
    sbc l
    cp $c7

jr_060_4d9b:
    rst $38
    cp e
    rst $30
    add hl, bc
    rst $38
    rlca
    db $fd
    jr nz, @+$01

    rrca
    rst $38
    sbc a
    rst $38
    or c
    rst $38
    ld [$06ff], sp
    db $fd
    xor a
    ldh a, [$f7]
    jr c, jr_060_4e32

    cp h
    ld l, d
    rst $18
    dec b
    rst $38
    add b
    ld a, a
    jr nz, jr_060_4d9b

    ld a, b
    add a
    cp $03
    inc a
    jp $f09f


    and d
    db $fd
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    di
    db $fc
    pop af
    cp $ff
    rst $38
    rst $20
    rst $38
    set 6, a
    ccf
    rst $20
    rst $38
    add a
    ld a, c
    rst $00
    add b
    rst $38
    and c
    rst $38
    ld a, [c]
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    db $fc
    di
    db $fc
    rst $38
    db $fc
    inc l
    rst $38
    ld [hl], a
    rst $08
    ccf
    rst $08
    inc de
    rst $38
    ld e, e
    rst $28
    pop de
    ld l, [hl]
    ccf
    ret z

    ld [hl], a
    ret z

    or e
    cp $79
    adc a
    ei
    ld a, $ff
    inc a
    pop de
    cp $dc
    rst $28
    ld [hl], $ff
    ld b, $ff
    rla
    rst $38
    ld b, c
    cp $7b
    call z, $cef3
    ld [hl], a
    jp z, $cfff

    inc [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld l, a
    rst $38
    ld a, a
    ei
    ld a, l
    ld a, [$fbf4]
    jp hl


    cp $f0
    rst $38
    rst $30
    rst $38
    ld a, b
    rst $38
    cp e
    ld a, [hl]
    rst $00
    ld a, h
    rst $30
    dec c

jr_060_4e32:
    rst $38
    call z, $df7e
    or a
    rst $38
    add hl, sp
    rst $18
    dec [hl]
    rst $08
    dec a
    rst $00
    dec e
    rst $28
    dec e
    rst $28
    inc e
    rst $38
    or h
    rst $38
    ld h, a
    rst $38
    ld b, $ff
    dec de
    cp $0b
    db $fc
    di
    adc $f7
    rst $08
    db $fc
    rst $08
    adc [hl]
    rst $38
    cp $ff
    ld [hl], a
    rst $38
    ld a, h
    ei
    pop af
    rst $38
    pop af
    rst $38
    cp $ff
    cp $ff
    ld a, [$b9ff]
    rst $38
    sub h
    ld a, a
    db $e3
    rst $38
    dec a
    rst $38
    xor l
    rst $38
    cp h
    rst $28
    sbc c
    rst $28
    adc l
    rst $38
    inc d
    rst $28
    reti


    ccf
    db $ec
    rra
    or $8f
    daa
    rst $38
    ld e, $ff
    dec c
    rst $38
    ld [hl], e
    rst $18
    ld c, a
    ei
    ld l, l
    rst $38
    rla
    rst $38
    ld [hl], h
    sbc a
    rst $28
    cp a
    di
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    adc l
    rst $38
    jp $e03e


    sbc a
    add h
    rst $38
    db $10
    rst $38
    ld c, a
    cp $0e
    rst $38
    ccf
    ld sp, hl
    rst $18
    ldh [$be], a
    pop bc
    sbc a
    ldh a, [$bc]
    db $fc
    add $3e
    rst $10
    ld a, $1a
    rst $38
    call $f5fe
    cp $fe
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    db $ed
    rst $38
    db $dd
    ld [c], a
    ld l, e
    db $f4
    nop
    rst $38
    nop
    rst $38
    ld h, d
    sbc a
    db $fd
    rst $38
    db $fd
    cp $41
    cp $af
    or $4e
    rst $30
    sbc h
    di
    ld bc, $03ff
    cp $41
    cp $c5
    rst $38
    ld a, l
    rst $38
    sbc $7d
    adc h
    rst $38
    jp nz, Jump_000_0e7d

jr_060_4eed:
    db $fd
    ld h, a
    rst $38
    ld a, [hl+]
    rst $38
    dec sp
    rst $38
    ldh a, [$7f]
    ldh [$3f], a
    rst $28
    ld [hl-], a
    rst $38
    dec sp
    push hl
    ld a, a
    inc sp
    db $fc
    di
    inc a
    di
    ld a, h
    rla
    cp $5b
    rst $38
    ld [hl], d
    rst $28
    ld hl, sp-$11
    rst $10
    add sp, -$2e
    dec l
    call c, $fe3f
    ccf
    ret nc

    ccf
    push de
    ccf
    call nc, $dc2f
    ld h, a
    jr nc, jr_060_4eed

    ldh [$5f], a
    pop bc
    ccf
    add sp, -$41
    cp b
    rst $38
    ld a, a
    db $fd
    rst $28
    ld hl, sp-$01
    db $fd
    inc c
    rst $38
    dec hl
    rst $38
    inc c
    rst $38
    ld a, [c]
    rst $38
    ld b, e
    rst $38
    rst $38
    db $d3
    rst $08
    rst $30
    di
    rst $38
    cp $fd
    adc $f9
    ld b, e
    rst $38
    ld [$e7ff], sp
    cp $f5
    cp $a3
    rst $38
    rst $08
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    add l
    ld a, a
    xor h
    ld e, a
    or $cf
    ld [hl+], a
    rst $38
    sub c
    ld a, a
    cp c
    ld a, a
    ld a, c
    cp $73
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    ld [de], a
    rst $38
    db $fc
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    jp hl


    rst $38
    ld [$20bf], a
    rst $38
    adc c
    rst $38
    ld e, e
    cp $b3
    cp $f3
    rst $38
    ld bc, $c3fe
    ld a, a
    ld a, l
    rst $38
    cp $ff
    db $fd
    rst $38
    or $ff
    ld hl, sp-$01
    db $e4
    rst $38
    sub $7f
    db $d3
    rst $38
    pop hl
    cp $e5
    rst $38
    jp nc, $e7ff

    ld a, a
    rra
    rst $38
    ld [hl], a
    adc a
    ld a, a
    pop bc
    cp a
    ldh a, [$f7]
    ld e, b
    rst $38
    ld bc, $00e1
    ld [hl], b
    add b
    rst $38
    nop
    cp a
    ld [$040f], sp
    inc b
    inc bc
    add [hl]
    ld bc, $80c7
    and e
    ld b, b
    db $10
    ldh [$c8], a
    ldh a, [$cc]
    ld hl, sp-$1e
    rst $38
    and b
    rst $38
    or l
    cp $41
    cp $78
    add a
    ld hl, sp+$07
    cp [hl]
    ld b, c
    ld b, a
    ld hl, sp+$0b
    db $f4
    ld a, b
    rst $38
    ld a, b
    rst $38
    add hl, de
    rst $38
    ld e, c
    rst $38
    ret


    rst $30
    reti


    rst $20
    ld e, e
    rst $20
    ld sp, hl
    rst $20
    db $eb
    rst $30
    ld l, e
    rst $30
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    adc [hl]
    ld sp, hl
    and a
    db $fc
    inc de
    db $ec
    dec de
    xor $1b
    rst $20
    dec c
    rst $30
    ld c, c
    rst $30
    ld hl, $21fe
    rst $38
    add c
    cp $80
    rst $38
    nop
    rst $38
    add b
    rst $38
    rrca
    ld hl, sp+$3f
    pop bc
    cp a
    add $3b
    call nz, $4db2
    add c
    cp $0f
    rst $38
    rst $38
    adc a
    rrca
    rst $38
    ld d, $ff
    ld a, h
    rst $18
    db $eb
    inc e
    rst $08
    inc a
    inc d
    rst $38
    or h
    rst $28
    ld a, l
    rst $08
    ld l, a
    rst $18
    rst $38
    cp a
    rst $38
    rra
    ld e, [hl]
    rst $38
    sbc [hl]
    rst $38
    ld b, a
    rst $38
    ld a, e
    db $fc
    ld sp, hl
    sbc [hl]
    pop af
    cp [hl]
    push af
    jp c, $fcd7

    sbc a
    db $fc
    dec de
    rst $38
    and a
    db $fc
    scf
    swap a
    db $fd
    rst $10
    ld a, a
    db $dd
    cp $3f
    ldh [$dc], a
    ld a, a
    rst $18
    scf
    reti


    ld h, a
    sbc l
    rst $38
    or h
    rst $38
    di
    rst $38
    ld a, a
    rst $28
    ld a, [hl-]
    rst $30
    cp b
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    dec b
    cp $bb
    rst $08
    db $db
    rst $28
    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld [bc], a
    rst $38
    adc a
    di
    push af
    rst $28
    cp l
    rst $30
    reti


    or $93
    rst $38
    db $d3
    rst $38
    xor d
    ld a, a
    ld b, d
    rst $38
    sbc $fb
    ld c, a
    ld sp, hl
    ld l, l
    rst $38
    ld d, d
    cp a
    or b
    rst $38
    db $10
    rst $38
    ret z

    rst $38
    ld [hl], h
    rst $18
    ld e, [hl]
    db $ed
    inc de
    rst $38
    call z, $eaff
    rst $38
    sbc a
    db $e3
    cp a
    nop
    sbc $00
    ccf
    ret nz

    sbc l
    ld a, [c]
    ld d, b
    ccf
    jr nz, jr_060_50cb

    cp c
    ld b, $dc
    inc bc
    db $fc
    inc bc
    sbc h
    db $e3
    inc a
    jp $8976


    cp h
    ld b, b
    ld d, $20
    ccf
    nop
    rrca
    nop
    add $81
    ld d, b
    rst $08
    ld a, d
    rst $18
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld d, h

jr_060_50cb:
    rst $38
    sbc b
    ld a, a
    and a
    ld e, a
    pop af
    ld e, $a9
    cp $b9
    cp $9f
    ld hl, sp-$01
    ldh [$b9], a
    and $d3
    db $ed
    rst $10
    db $fd
    ret nc

    rst $38
    ret


    rst $38
    jp z, $deff

    ld sp, hl
    adc $f1
    rst $38
    ldh [$3f], a
    ldh [$df], a
    jr nz, @+$01

    ld h, b
    sub $7f
    rst $18
    ld a, a
    add d
    ld a, a
    rst $20
    ccf
    rst $00
    ccf
    rst $20
    ccf
    sub $3f
    jp hl


    cp a
    ldh [$3f], a
    adc $75
    adc $71
    rst $18
    inc l
    db $dd
    jr nz, @-$1f

    ld h, b
    db $e3
    ld a, a
    cp $ff
    db $fc
    rst $38
    set 7, h
    ld [hl], a
    sbc b
    ld a, [$fe07]
    dec bc
    db $fd
    inc sp
    ld [hl+], a
    rst $18
    ld e, $e1
    dec bc
    rst $38
    sbc b
    rst $38
    call c, $fee7
    jp $c13f


    cp $c5
    ld h, b
    rst $38
    ld a, [c]
    rst $28
    or e
    rst $28
    ccf
    db $e3
    ld a, $e3
    ld a, [hl]
    add e
    or $83
    ld h, [hl]
    add e
    ld a, $e7
    rst $38
    rst $28
    ld a, a
    jp $c53e


    ret nc

    ccf
    add $3b
    ld [hl], a
    sbc b
    rrca
    ldh a, [$ab]
    db $fc
    rst $38
    rst $38
    rst $28
    ld a, a
    db $fd
    rra
    rst $28
    rra
    di
    sbc a
    ld [hl], b
    cp a
    sub d
    rst $38
    inc hl
    rst $38
    ld a, [hl]
    cp c
    rst $38
    and b
    rst $38
    ld a, [c]
    call z, Call_000_2077
    rst $38
    ld [hl], b
    rst $38
    ldh [$df], a
    ld h, b
    sbc a
    inc d
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld a, [c]
    ccf
    db $f4
    adc a
    or $9f
    rst $28
    sbc b
    rla
    add sp, $05
    ld a, [$fb04]
    rst $00
    ld a, l
    rlca
    ld hl, sp+$06
    ei
    ld c, b
    rst $38
    ld b, h
    rst $38
    ld [$67ff], sp
    db $fd
    db $10
    rst $38
    rst $28
    scf
    ld a, [hl+]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $08
    ld a, a
    db $e3
    rra
    rst $38
    ld bc, $807f
    cp a
    ld b, b
    rst $38
    nop
    cp $01
    cp $01
    cp [hl]
    ld b, c
    ld d, a
    add b
    ld [hl], e
    adc b
    dec a
    jp $04fb


    ld b, b
    ccf
    add d
    ld a, a
    rst $18
    push hl
    xor $f1
    rst $38
    ld hl, sp-$01
    db $fc
    cp $ff
    ld a, e
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    or b
    ld a, a
    ld [hl], c
    adc [hl]
    ld [hl], b
    sbc a
    pop af
    ld c, $fc
    inc bc
    di
    inc c
    di
    ld c, h
    cp e
    call nz, $c03f
    cp c
    ret nz

    cp a
    ret nz

    ccf
    rst $08
    ldh a, [$cf]
    db $76
    bit 4, c
    rst $18
    db $ed

jr_060_51ef:
    sbc a
    rst $28
    cp a
    sbc $ff
    pop bc
    cp a
    ld a, a
    sbc a
    ld l, e
    sbc a
    ld l, e
    sub b
    rst $38
    nop
    rst $28
    sub b
    ld c, a
    or b
    inc b
    ei
    or a
    ld c, b
    or a
    ld c, b
    ei
    ld c, $ae
    ld e, a
    or [hl]
    ld l, [hl]
    or [hl]
    db $ec
    and [hl]
    cp $a6
    call c, $8c76
    and l
    ld e, $cd
    ld a, $1c
    rst $38
    ld [de], a
    rst $38
    jr nc, jr_060_51ef

    scf
    ret c

    adc a
    ld a, b
    ld b, a
    cp b
    ld h, e
    sbc h
    ld [hl+], a
    rst $18
    add hl, sp
    rst $08
    rst $08
    or b
    add $39
    ld b, h
    rst $38
    add a
    ld hl, sp+$26
    reti


    rrca
    jp nc, $916e

    ld e, d
    or a
    ld e, a
    cp a
    pop af
    rst $38
    ld e, h
    cp e
    ld e, e
    and b
    ei
    nop
    ld e, a
    and c
    rla
    add sp, $3b
    xor $3d
    jp nz, Jump_000_23dc

    ld [hl], c
    adc [hl]
    ld l, h
    add e
    ld a, $e9
    db $f4
    ei
    cp h
    rst $00
    rlca
    ld hl, sp+$03
    db $fc
    ld c, h
    cp a
    nop
    rst $38
    adc c
    cp $47
    cp b
    rla
    ld hl, sp+$0c
    rst $38
    ld b, $ff
    inc bc
    rst $38
    dec a
    add $ff
    nop
    rst $38
    nop
    xor a
    ret c

    ld [hl], h
    rst $38
    ld c, d
    rst $38
    adc e
    db $fc
    rst $28
    db $fc
    rst $38
    ld hl, sp+$7f
    ld hl, sp-$43
    ld a, d
    ld sp, hl
    ld l, $e0
    rra
    ld h, h
    cp e
    daa
    ld hl, sp+$0f
    ldh a, [$5f]
    ldh [$0d], a
    ldh a, [$bf]
    ret nc

    cpl
    ldh a, [rTAC]
    db $fc
    dec e
    cp $7f
    rst $38
    rst $00
    rst $38
    xor $f3
    rst $28
    db $fc
    db $fc
    rst $38
    ld hl, sp-$01
    cp $ff
    ld a, c
    rst $38
    rst $28
    jr c, @+$29

    jr @-$63

    ld c, $79
    add a
    add hl, hl
    rst $18
    dec c
    di
    ld a, e
    rst $00
    rrca
    rst $38
    ld a, h
    rst $38
    inc e
    rst $38
    ld e, b
    cp a
    inc d
    rst $38
    ld bc, $80fe
    ld a, a
    nop
    rst $38
    ld bc, $0dfe
    ld a, [c]
    rlca
    ld hl, sp+$20
    rst $18
    inc de
    db $fc
    dec c
    ld hl, sp+$1f
    ldh a, [rNR34]
    pop af
    cp $21
    rst $38
    ld bc, $03ff
    db $fc
    inc bc
    call nz, $c63f
    ld a, e
    sbc $e1
    sbc a
    ldh [$1f], a
    ldh [$2f], a
    ret nz

    ld l, a
    ret nz

    rst $38
    ret nz

    ld a, [hl]
    pop bc
    ld a, h
    jp $d977


    or l
    db $db
    ld [c], a
    rst $38
    cp $40
    cp a
    ld b, b
    ld a, a
    ret nz

    ld a, e
    call nz, $04fb
    ld e, a
    dec b
    scf
    inc c
    or $08
    db $fd
    ld d, $07
    ld [bc], a
    ld b, $00
    ld b, $00
    ld a, e
    inc b
    db $e3
    inc e
    rst $30
    inc e
    ei
    adc h
    cp $1c
    ld [hl], a
    db $fc
    push hl
    sbc a
    ldh [$1f], a
    add c
    rra
    scf
    rra

jr_060_5326:
    rst $28
    rra

jr_060_5328:
    ld l, a
    rst $38
    ld b, c
    rst $38
    add b
    ld a, a
    pop hl
    rra
    ld a, a
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    nop
    ld a, h
    add e
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    dec hl
    rst $38
    ld a, [$df21]
    jr nz, jr_060_5326

    jr nz, jr_060_5328

    jr nz, @-$5f

    ld h, b
    sbc a
    ld l, c
    rst $38
    nop
    ei
    nop
    push hl
    ld [bc], a
    db $eb
    inc b
    di
    inc c
    rlca
    ld hl, sp-$4f
    cp $fd
    ld e, $2f
    rst $18
    cpl
    rst $18
    rst $28
    rra
    sbc $3f
    sbc b
    rst $38

jr_060_5368:
    scf
    ld hl, sp-$02
    jr c, jr_060_5368

    sbc [hl]
    ld a, [$de1f]
    ccf
    sbc a
    rst $38
    ld a, a
    rst $38

jr_060_5376:
    ld a, a
    rst $38
    rst $38
    rst $38
    dec sp
    rst $38
    adc [hl]
    rst $38
    db $ed
    ld [hl], a
    rst $30
    jr c, jr_060_5376

    inc a
    pop bc
    ld a, $49
    or $1b
    and $8f
    ld hl, sp+$0f
    ldh a, [$2f]
    ret c

    ld a, a
    add b
    ld a, [hl]
    add c
    cp [hl]
    jp $e3be


    db $fd
    ld [de], a
    ld a, l
    or a
    ld a, [c]
    rst $38
    db $76
    rst $38
    sbc l
    ld a, a
    and $3f
    ld e, $ff
    add hl, bc
    rst $38
    and l
    rst $38
    add sp, -$09
    ret nc

    ccf
    xor c
    ld a, a
    ld b, b
    rst $38
    add d
    rst $38
    jp z, $faff

    rst $38
    ld a, l
    cp $24
    rst $38
    ld bc, $01fe
    cp $30
    rst $38
    add h
    ld a, a
    inc b
    ei
    ld a, [de]
    push hl
    ld a, b
    add a
    ret nc

    cpl
    ld a, [$5c1d]
    ei
    cp a
    ld a, a
    cp e
    rst $38
    inc sp
    rst $38
    ld a, a
    rst $38
    call nc, Call_060_54ff
    rst $38
    inc sp
    rst $38
    rst $20
    db $fd
    ld a, c
    ret nz

    cp l
    ret nz

    rrca
    ldh a, [rBGP]
    ld hl, sp+$1f
    add sp, $3f
    ret nz

    ld a, l
    adc b
    ld a, c
    sub b
    inc sp
    pop hl
    ld e, $e3
    sbc l
    ldh a, [$93]
    ldh [rIE], a
    inc b
    ld a, a
    nop
    rst $38
    ld bc, $00ff
    ld a, [$f800]
    nop
    ei
    nop
    ld hl, sp+$07
    call $ed3f
    ld e, $25
    ld a, $71
    ld c, $f2
    inc c
    ld [hl], h
    adc b
    ld h, l
    sbc b
    add a
    ld a, b
    adc a
    ld a, b
    jp $fd3e


    ld [bc], a
    add hl, de
    rst $38
    or c
    rst $38
    add hl, hl
    cp $f7
    cp $91
    cp $f3
    db $fc
    xor $f8
    xor h
    ldh a, [$ef]
    ldh a, [$2e]
    pop af
    rst $08
    ld sp, $3649
    and d
    ld a, h
    ld l, [hl]
    ldh a, [$ef]
    ldh a, [$fe]
    pop hl
    ld sp, hl
    or $ff
    ldh a, [$3f]
    ld hl, sp+$51
    cp a
    adc b
    ld [hl], a
    cp [hl]
    ld b, c
    rlca
    ret nz

    rst $00
    nop
    ccf
    nop
    cp $01
    rst $38
    ld [$0ef9], sp
    rst $30
    ld a, [bc]
    rst $30
    ld [$18e7], sp
    or [hl]
    jr @+$79

    ld hl, sp-$08
    rst $38
    db $ec
    rst $38
    and e
    rst $38
    add hl, sp
    rst $08
    cp $03
    ld a, a
    inc b
    ld a, [hl]
    ld bc, $03ff
    rra
    ldh [rSC], a
    db $fd
    rlca
    ld hl, sp-$5f
    rst $38
    db $eb
    rst $38
    xor $f3
    cp a
    ldh [$bf], a
    ldh [$7f], a
    ldh [$cf], a
    ld a, b
    ld h, b
    rst $38
    db $dd
    di
    call c, $9ff3
    ld hl, sp+$7f
    sub b
    ld a, a
    add b
    ld e, $e0
    ld l, [hl]
    sub b
    ld [hl], e
    adc [hl]
    rst $20
    ld bc, $20fb
    ld sp, hl
    nop
    ei
    or b
    rst $38
    nop
    ei
    xor h
    ld [de], a
    db $fd
    add b
    rst $38
    and b
    rst $38
    ld l, b
    sbc a
    ld [de], a
    rst $38
    rrca
    pop af
    ld h, c
    rst $38
    ld [hl-], a
    rst $38
    ld d, b
    rst $38
    ld l, c
    rst $38
    add hl, bc
    cp $40
    cp a
    ret nz

    ccf
    ret nz

    ccf
    add sp, $1f
    ld c, a
    cp a
    adc l
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    db $10
    rst $28
    and b
    ld a, a
    inc b
    rst $38
    jr @+$01

    db $ec
    ldh a, [$e8]
    ldh a, [$b1]
    ldh [$be], a
    ldh [$9f], a
    ldh [$be], a
    pop hl
    xor a
    db $fc
    rst $28
    ld [hl], b
    rst $18
    ldh [$7f], a
    ldh [$bc], a
    ldh [$08], a
    ldh a, [$78]
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    add b
    nop
    ld l, a
    ld sp, hl
    cp c
    ld b, b
    ldh a, [$c0]
    ldh [$c0], a
    ld l, e
    add b
    rst $30
    add b
    ei

Call_060_54ff:
    ld b, $f9
    ld b, $2e
    inc b
    cp $00
    sbc b
    rst $38
    cp l
    ld b, a
    ld sp, hl
    ld c, a
    db $fc
    rrca
    db $fc
    rrca
    and $0f
    rrc a
    ret


    rrca
    sbc b
    rrca
    ei
    inc e
    add sp, $1f
    rst $38
    rra
    dec bc
    db $fc
    sbc a
    ld [hl], b
    ld a, a
    nop
    jr nz, jr_060_5526

jr_060_5526:
    sub b
    nop
    rst $38
    nop
    xor $31
    db $e3
    inc a
    inc bc
    db $fc
    dec bc
    db $fc
    xor c
    sub $38
    rlca
    sbc $01

jr_060_5538:
    ld a, b
    rlca
    sbc [hl]
    ld h, c
    ld [bc], a
    db $fd
    ld bc, $e1fe
    ld e, $fe

jr_060_5543:
    rlca
    rst $38
    inc b

jr_060_5546:
    rrca
    ld hl, sp+$71
    sbc a
    ld a, c
    add b
    ld [hl], b
    ret nz

    ld c, $f0
    dec a
    jp nz, $e01f

    rst $18
    jr nz, jr_060_5546

    ld de, $03fc
    db $fd
    ld [bc], a
    db $ed
    ld [bc], a
    rra
    nop
    ld a, l
    add d
    dec l
    sbc $d0
    rst $38
    ld l, l
    rst $38
    or l
    ld c, [hl]
    pop af
    ld c, $f5
    ret z

    push hl
    jr c, jr_060_5538

    ld a, b
    jr nc, jr_060_5543

    ldh [$bf], a
    db $e4
    rra
    ld [hl], c
    adc [hl]
    push de
    xor $87
    ld hl, sp-$1a
    add hl, sp
    inc hl
    call c, Call_000_1eed
    ld l, l
    sbc [hl]
    ld c, $fb
    adc $fb
    ld [hl], h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    pop bc
    cp $e3
    db $fc
    rst $00
    ld hl, sp+$06
    ld sp, hl
    or a
    db $fd
    and c
    ld a, a
    cp b
    ld l, a
    ld a, [hl]
    add c
    ld a, h
    add b
    db $fc
    nop
    rst $38
    nop
    db $db
    inc h
    ccf
    ret nz

    rrca
    ldh a, [$1f]
    ldh a, [$bf]
    ldh a, [$df]
    ldh a, [rOBP0]
    rst $30
    ld hl, $17ff
    rst $38
    rrca
    rst $38
    ld a, a
    cp a
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, h
    rst $38
    inc e
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld c, b
    cp a
    ld h, [hl]
    sbc a
    ld a, l
    ld b, d
    rst $38
    ld [bc], a
    ld a, a
    nop
    cp l
    ld b, d
    inc bc
    rst $38
    ld a, a
    rst $38
    sub $3f
    ret nc

    ccf
    ld d, e
    inc a
    ld d, e
    inc a
    ld b, e
    inc a
    ld de, $413e
    ld a, $03
    inc a
    cpl
    inc [hl]
    ld [hl], a
    inc a
    push af
    ld a, [hl]
    adc e
    db $fc
    ld [hl], l
    jr jr_060_564e

    ld [$08f7], sp

jr_060_55fa:
    or e
    ld c, h
    rst $38
    nop
    rst $28
    nop
    add [hl]
    ld bc, $0003
    rlca
    nop
    ld de, $f9fe
    cp $23
    db $fc
    inc bc
    db $fc
    inc de
    db $fc
    jp $97fc


    ld hl, sp+$4f
    cp b
    inc sp
    call z, $82fd

jr_060_561a:
    ld b, c
    cp $f8
    rst $38
    rst $38
    db $10
    rrca
    nop
    rlca
    nop
    ld a, a
    nop
    ld e, a
    jr nz, @-$2f

    jr nc, jr_060_55fa

    jr nc, @+$01

    nop
    ld [hl], l
    add d
    ld a, [c]
    inc bc
    ldh a, [rSB]
    ld hl, sp+$00
    jr @-$1e

    jr jr_060_561a

    ld hl, sp+$00
    ld hl, sp+$00
    ld a, $c0
    cp a
    ld b, b
    ccf
    ret nz

    ldh [$1f], a
    pop hl
    ld e, $ff
    add b

jr_060_564a:
    cp a
    ld b, b
    ld a, e
    inc b

jr_060_564e:
    inc a
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, a
    ret nz

    rra
    ldh [$cf], a
    jr nc, jr_060_564a

    ld [de], a
    rst $28
    db $10
    sub a
    ld a, b
    db $db
    ld a, $fe
    cp a
    rst $08
    cp [hl]
    adc [hl]
    ld a, h
    sub [hl]
    ld l, h
    add $3c
    adc $3c
    ld a, [bc]
    db $fc
    cpl
    db $fc
    rst $38
    db $fc
    cp e
    db $fc
    call z, $c03f
    ld a, a
    ld hl, sp-$19
    ld a, a
    ldh [rNR22], a

jr_060_5681:
    add sp, $1d
    ld [c], a
    add [hl]
    ld a, b
    add c
    cp $65
    sbc a
    xor l
    di
    adc [hl]
    pop af
    dec de
    db $f4
    jr nc, jr_060_5681

    add a
    ld a, h
    sbc a
    ld h, c
    ld a, d
    rst $08
    cp a
    pop bc
    add $f9
    ret c

    rst $38
    rra
    rst $38
    and a
    ld a, a
    ld d, e
    cpl
    ld [hl], b
    rlca
    ld hl, sp+$07
    ldh a, [$8f]
    inc hl
    call c, Call_060_7e81
    and a
    ld a, b
    ld l, a
    ldh a, [$c7]
    ld hl, sp-$79
    ld hl, sp-$75
    db $f4
    ret


    cp $01
    cp $1a
    rst $38
    ld [hl-], a
    rst $38
    ld [$60ff], sp
    sbc a
    ldh a, [rIF]
    call nz, $013f
    rst $38

jr_060_56ca:
    or l
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ldh [rP1], a
    nop
    nop
    pop bc
    nop
    pop bc
    nop
    ld h, l
    add b
    ld [hl], l
    add b
    ld a, a
    add b
    cp $01
    ld a, [$c305]
    inc a
    add h
    ld a, b
    adc d
    ldh a, [$7b]
    add b
    ld a, [$fa01]
    ld bc, $0170
    jr nc, jr_060_56f3

    pop af

jr_060_56f3:
    ld bc, $01f0
    jp nc, $e701

    nop
    rst $20
    ld bc, $03ce
    adc h
    inc bc
    jr nc, @-$2f

    db $fc
    inc bc
    and $01
    call nc, $c607
    ld bc, $01c6
    adc $01
    add $07
    db $e4
    rlca
    db $ec
    inc bc
    db $ec
    rlca
    adc $03
    xor [hl]
    inc bc
    ldh a, [rIF]
    add b
    ld a, a
    ei
    rlca
    ld a, [hl]
    rlca
    cpl
    rlca
    add h
    rlca
    and e
    rlca
    ld a, [hl+]
    rlca
    cpl
    rlca
    ld [hl], a
    rrca
    cp $0f
    db $fd
    rrca
    scf
    rst $08
    adc a
    ld a, a
    ld c, h
    ccf
    ld c, a
    jr c, @-$2f

    jr nc, jr_060_56ca

    ld [hl], d
    ld h, l
    ld [de], a
    rst $10
    jr nz, jr_060_579a

    and b
    rra
    ldh [$9c], a
    ld h, e
    ld e, h
    inc hl
    db $dd
    ld [hl+], a
    inc a
    jp Jump_060_47b8


    ld hl, sp+$0f
    or c
    ld c, [hl]
    ld a, [c]
    ld c, l
    rst $30
    ld [$8877], sp
    ld a, c
    add [hl]
    db $fd
    ld [bc], a
    rst $28
    nop
    inc bc
    nop
    sub e
    nop
    rst $00
    nop
    cp $c1
    inc e
    rlca
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [$06f9], sp
    ld a, [hl]
    add a
    cp $03
    ld a, l
    adc e
    dec d
    rst $38
    di
    rra
    rst $38
    rlca
    ret c

    rlca
    inc a
    rlca
    cp $07
    ld a, [hl]
    add a
    scf
    rst $38
    dec c
    rst $38
    ret z

    ccf
    ret nc

    xor a
    ld hl, sp+$27
    ld hl, sp+$07
    rst $30
    ld [$00ff], sp

jr_060_579a:
    rst $38
    ret z

    cp a
    ret nz

    rra
    ldh [rNR42], a
    rst $38
    or $ff
    ld a, a
    rst $38
    adc a
    rst $38
    jp $d03f


    cpl
    push af
    ld c, $f9
    ld b, $b8
    rlca
    xor b
    rlca
    call z, $e907
    ld b, $e1
    ld b, $f4
    inc bc
    db $f4
    inc bc
    cp $c1
    ccf
    ldh a, [$39]
    cp $75
    cp $c1
    cp $71
    cp $f9
    cp $fe
    rst $38
    rst $38
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
    jr jr_060_5803

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_060_5813

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_060_5823

    ld a, [hl+]
    dec hl

Jump_060_57fc:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_060_5833

    ld [hl-], a

jr_060_5803:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_060_5843

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_060_5813:
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
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_060_5823:
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
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_060_5833:
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

jr_060_5843:
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
    dec d
    ld d, $17
    jr jr_060_5903

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_060_5913

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_060_5903:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_060_5943

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0101

jr_060_5913:
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

jr_060_5943:
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_060_5a22:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

Call_060_5a33:
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

Jump_060_5a3d:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sub e
    inc c
    sbc b
    rlca
    ret nc

    rlca
    ld e, l
    add d
    rst $18
    add b
    dec e
    jp $4fb4


    ld sp, hl
    rla
    ld e, l
    inc bc
    ld l, [hl]
    ld bc, $00ef
    cp a
    ld b, b
    cp h
    ld b, e
    or [hl]
    ret


    sub a
    jp hl


    and a
    ld e, b
    ld d, a
    adc b
    db $f4
    adc c
    db $ec
    ld bc, $01dc
    db $eb
    inc b
    rst $28
    inc b
    sbc a
    ld h, b
    scf
    ld a, h
    ld b, l
    ld a, $4b
    inc a
    ld e, e
    inc a
    add d
    ld a, $32
    xor h
    ld h, $be
    ldh [rNR34], a
    db $ed
    ld [de], a
    ld a, a
    sub b
    dec d
    ei
    pop hl
    rra
    db $f4
    rra
    db $e3
    rra
    jp hl


    sub b
    ld l, c
    sub b
    sbc b
    add b
    jr jr_060_5a22

    inc e
    add b
    ld e, [hl]
    add b
    cp [hl]
    ld c, b
    ld [hl-], a
    db $fc
    and c
    ld a, [hl]
    xor a
    ld a, b
    ld a, [hl+]
    ld hl, sp+$2b
    ld hl, sp+$33
    ld hl, sp-$7b
    ld a, d
    sub l
    ld a, d
    cp h
    ld a, e
    sbc h
    rst $38
    add d
    cp $63
    sbc h
    db $e3
    inc e
    rst $18
    add b
    rst $30
    nop
    ld a, $40
    ld e, [hl]
    inc hl
    call c, $cc33
    inc sp
    rst $08
    ld sp, $31ce
    reti


    ld hl, $a15c
    adc l
    ld [hl], c
    dec de
    db $e4
    db $db
    inc h
    sbc $20
    db $fd
    nop
    cp $21
    db $fc
    inc hl
    call c, $dc23
    inc hl
    adc $31
    or $81
    ld e, $01
    dec de
    rlca
    jr z, jr_060_5b09

    ld c, [hl]
    inc sp
    ld l, e
    ld sp, $13fc
    db $ed
    rra
    db $e3
    ccf
    sub e
    ld a, a
    scf
    rst $08
    ld a, a
    adc a
    rst $38
    rrca
    ret c

    rrca
    ld [hl], b
    sbc a
    pop bc

jr_060_5b09:
    ld a, $c3
    ld a, h
    rrca
    ldh a, [rPCM12]
    ret


    sbc $a1
    db $fd
    ld h, e
    ccf
    db $d3
    dec sp
    rst $18
    ld h, [hl]
    rst $18
    inc a
    rst $38
    add sp, -$61
    ld e, c
    cp [hl]
    or c
    ld a, [hl]
    ld [hl], h
    ei
    and $f9
    ld e, a
    ldh [$66], a
    pop bc
    ld h, $c1
    ld a, l
    add d
    ld a, a
    add b
    ld a, a
    add b
    sbc h
    ld h, e
    xor h
    ld d, e
    ldh a, [rIF]
    ldh [$1f], a
    pop bc
    ccf
    ld b, c
    cp a
    inc bc
    rst $38
    add $ff
    rrca
    rst $38
    inc c
    rst $38
    ld sp, hl
    rst $38
    ld a, d
    rst $38
    ld [hl], b
    rst $38
    pop af
    cp $f1
    cp $fd
    rlca
    cp a
    nop
    rst $18
    nop
    rst $30
    ld c, b
    ld l, a
    db $10
    ld [hl], $01
    db $fd
    ld [bc], a
    ret c

    daa
    jp c, Jump_060_7b27

    or h
    ld a, e
    db $f4
    rst $38
    inc [hl]
    rst $28
    ld a, [de]
    jp hl


    ld e, $a0
    rra
    ld l, [hl]
    rst $18
    adc e
    ld a, [hl]
    rst $00
    ld a, $e5
    sbc [hl]
    ld [hl], c
    adc [hl]
    ld a, l
    add d
    ei
    nop
    ei
    ld bc, $03fc
    ld e, b
    or a
    ld h, [hl]
    rst $38
    adc [hl]
    rst $38
    push hl
    ld e, a
    adc $01
    adc $01
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    ld a, l
    add b
    ld sp, hl
    nop
    rst $18
    nop
    rst $38
    nop
    ld h, c
    ld e, $3e
    inc bc
    ld a, [hl]
    ld bc, $1da2
    and $19
    cp $81
    adc a
    pop af
    rst $08
    ld sp, $0ef3
    di
    inc c
    ld [hl], e
    inc c
    cp $01
    cp $81
    db $eb
    ld d, c
    ld c, [hl]
    jp $c324


    cp e
    ld e, [hl]
    di
    ld c, $fb
    inc b
    di
    ld c, $e7
    ld e, $69
    ld a, $d1
    rst $28
    or [hl]
    rst $28
    rla
    add sp, $0b
    ldh [$7f], a
    ldh [$1f], a
    ldh [$de], a
    pop hl
    inc a
    jp Jump_060_61be


    rst $28
    ld bc, $3de3

jr_060_5bde:
    ld d, e
    db $fd
    db $db
    cp h
    rst $18
    inc a
    ei
    inc a
    ldh [$3f], a
    ld [$eb1f], a
    inc e
    rst $28
    jr c, jr_060_5bde

    db $10
    ld e, l
    or d
    cp l
    jp nz, $c1bf

    cp a
    ret nz

    or c
    sbc $b1
    sbc $e1
    sbc [hl]
    ld l, c
    sub [hl]
    ld hl, sp-$79
    ret c

    rst $28
    or b
    rst $28
    add e
    db $fd
    ld h, h
    db $db
    dec hl
    rst $10
    ld d, e
    xor $e2
    db $fc
    push bc
    ld hl, sp-$05
    call nz, $c7fb
    ccf
    pop bc
    ccf
    ret nz

    rra
    ldh [$c7], a
    inc a
    rst $38
    nop
    di
    nop
    rst $38
    nop
    ld a, $c1
    inc a
    jp $fb44


    or e
    ld a, a
    rst $28
    rra
    push af
    ld e, $fe
    dec bc
    jr @+$01

    ld hl, $91ff
    rst $28
    ld b, e
    rst $38
    add b
    rst $38
    pop hl
    cp a
    add c
    rst $38
    sbc b
    rst $38
    ld hl, $c1ff
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_060_5c4c:
    rra
    rst $38
    sbc a
    ld a, a
    daa
    ld sp, hl
    db $dd
    ld a, a
    ld hl, sp+$0f
    cp b
    rlca
    and b
    rra
    xor [hl]
    dec e
    call z, $bc33
    ld b, e
    ld a, l
    add e
    ccf
    ret nz

    ld e, a
    pop af
    ld c, a
    ld sp, hl
    ld de, $0bee
    rst $30
    ld b, h
    rst $38
    jp $ebff


    rra
    xor $13
    ret


    ld a, $c1
    ld a, $84
    rst $38
    rrca
    di
    db $dd
    inc hl
    db $dd
    inc hl
    ret


    scf
    adc c
    ld a, a
    ld [bc], a
    rst $38
    jp nz, $f23d

    sbc l
    inc de
    db $fc
    or $0f
    db $76
    rrca
    ld e, a
    inc hl
    rst $18
    jr nz, jr_060_5c4c

jr_060_5c95:
    ld c, d
    db $fd
    inc bc
    ld hl, sp+$07
    call c, $f703
    ld a, [bc]
    rst $10
    ld hl, sp-$1a
    ei
    cp a
    db $e3
    ld a, d
    add a
    ldh a, [rIF]
    ld [hl-], a
    rrca
    ld a, [c]
    dec c

Call_060_5cac:
    rra
    pop hl
    add d
    db $fd
    jp c, $9ee5

    push hl
    ld e, [hl]
    pop hl
    ld e, [hl]
    pop hl
    and a
    cp $f9
    sub a
    jr c, jr_060_5c95

    xor l
    db $d3
    push af
    inc bc
    push af
    ld [bc], a
    cp l
    ld b, [hl]
    ccf
    ld a, [c]
    cp l
    jp nz, Jump_000_16fd

    ldh a, [rIF]
    ldh a, [rIF]
    dec l
    cp $97
    ld l, h
    rst $10
    ld l, b
    or a
    ret z

    rst $38
    ld bc, $25fe
    ei
    add l
    ld h, c
    cp a
    res 7, h
    ld c, a
    cp b
    ld a, [hl]
    sbc e
    ld [$299d], a
    rst $18
    xor b
    rst $18
    ld [$6bdd], a
    rst $38
    ld a, e
    db $fd
    ld e, a
    push hl
    inc l
    db $d3
    sbc [hl]
    rst $38
    sub $69
    sub a
    ld l, c
    jp Jump_000_017c


    cp $07
    ld hl, sp+$57
    add sp, $3b
    call z, $8758
    ld [hl], h
    adc e
    rst $38
    ld bc, $05fe
    ldh [$1f], a
    rst $00
    inc a
    rst $20
    sbc l
    rst $28
    jr nc, jr_060_5d35

    rst $30
    adc h
    rst $38
    jp $ffff


    daa
    db $ed
    ccf
    ld h, h
    rst $38
    add e
    db $fc
    rrca
    ld hl, sp-$0c
    rst $38
    sbc a
    rst $38
    db $fd
    rst $38
    sbc $f3
    ccf
    push af
    ld a, b
    rst $38
    ld d, h
    rst $38
    inc de

jr_060_5d35:
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    inc hl
    rst $38
    jr nz, @+$01

    ret c

    rst $20
    cp $e3
    adc e
    rst $30
    ld h, $ff
    rst $38
    rst $38
    db $ec

jr_060_5d49:
    rst $38
    ld a, [$fefd]
    db $fd
    ldh a, [rIE]
    ccf
    rst $38
    ld a, $ff
    rla
    rst $38
    ret


    or a
    dec hl
    cp $01
    cp $02
    rst $38
    ld d, c
    rst $38
    inc l
    rst $38
    cp e
    rst $38
    jr nz, @-$1f

    ldh a, [$5f]
    and e
    ld e, a
    ld b, e
    cp a
    dec c
    di
    cp a
    ld hl, sp-$2a
    rst $38
    ccf
    rst $38
    add c
    rst $38
    xor d
    ld e, a
    jr nc, jr_060_5d49

    ld bc, $82ff
    rst $38
    and c
    rst $38
    ld [hl], b
    rst $38
    pop de
    cp $05
    cp $9a
    rst $38
    ld b, h
    rst $38
    and c
    rst $38
    pop af
    ld e, $ff
    ld [de], a
    rst $20
    cp $f3
    ld a, a
    xor a
    ld e, d
    ld d, b
    rst $38
    db $10
    rst $38
    dec sp
    rst $38
    xor c
    rst $38
    or c
    xor $7f
    xor [hl]
    ld [hl], e
    xor [hl]
    cp l
    or $6d
    di
    jp z, $b37f

    ld l, a
    add l
    rst $38
    inc c
    rst $38
    ld a, h
    rst $38
    call z, $dbff
    rst $38
    ld [hl], d
    xor a
    jr c, @-$0f

    ld l, a
    db $fc
    ld c, [hl]
    rst $38
    inc a
    rst $38
    ld [$98ff], sp
    rst $38
    ld de, $8aff
    rst $38
    call z, $05bf
    rst $38
    rrca
    rst $38
    sbc e
    ld a, a
    sbc h
    ld a, a
    xor d
    rst $38
    adc c
    rst $38
    sub a
    rst $38
    ld [hl], e
    rst $18
    dec hl
    rst $38
    sbc a
    ld a, a
    sbc c
    ld a, a
    cp c
    rst $38
    ld sp, $8aff
    ld a, a
    call c, $d13f
    ccf
    add b
    ld a, a
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld d, e
    db $fc
    ld a, b
    rst $08
    ld h, h
    rst $38
    ld hl, sp+$1f
    ldh a, [$1f]
    ld [hl], a
    rst $38
    ret nc

    ld a, a
    srl a

Call_060_5e00:
    pop hl
    cp a
    pop af
    ccf
    push hl
    ccf
    push bc
    ld a, a
    db $eb
    cp h
    ret z

    ld a, a
    ld a, [c]
    rst $38
    dec a
    rst $38
    adc [hl]
    ld a, a
    sbc a
    rst $30
    jp c, $b36f

    rst $38
    or c
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, d
    rst $38
    ret z

    cp a
    sbc d
    rst $38

jr_060_5e26:
    ldh a, [rIE]
    db $f4
    rst $38
    ld [hl], b
    rst $38
    rrca
    push af
    ld a, [hl]
    pop bc
    ld hl, sp+$0f
    ld [$fcff], sp
    rst $38
    ccf
    rst $38
    cpl
    db $fc
    ld e, [hl]
    pop hl
    dec d
    ld [c], a
    daa
    ret nz

    sbc a
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$3d], a
    jp nz, $d4ab

    ld c, a
    or c
    ld e, d
    and a
    rst $18
    and b
    dec e
    db $e3
    rst $38
    ld [bc], a
    add [hl]
    rst $38
    inc a
    di
    sbc a
    ld [hl], e
    rst $30
    ccf
    ld l, c
    rst $18
    ld c, b
    rst $38
    and l

jr_060_5e61:
    sbc $72
    rst $38
    ld a, l
    rst $38
    add hl, bc
    rst $38
    ld d, [hl]
    ei
    scf
    ld hl, sp-$45
    call z, $c6bd
    jr nc, jr_060_5e61

    push de
    rst $38
    rst $38
    rst $38
    add [hl]
    rst $38
    ei
    rst $08
    cp l
    jp $ff05


    ld [de], a
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    rst $28
    ccf
    dec a
    rst $38
    adc h
    di
    db $dd
    rst $30
    jp z, $ee77

    rla
    cp $1b
    sbc l
    di
    rst $38
    jr c, jr_060_5e26

    ld a, [hl]
    add hl, de
    rst $30
    inc [hl]
    rst $38
    db $f4
    rst $38
    di
    rra
    rst $20
    add hl, sp
    cp $39
    sub a
    ld a, c
    cp e
    ld a, a
    db $db
    rst $38
    rst $18
    cpl
    rst $08
    rst $38
    rlca
    rst $38
    or a
    rst $38
    or [hl]
    rst $18
    ld a, c
    cp [hl]
    ld [hl], e
    call z, $fdb7
    rst $28
    db $fc
    xor $fd
    rst $20
    ld sp, hl
    xor $ff
    ld c, $ff
    xor c
    rst $38
    db $fc
    rst $38
    ld [hl], l
    sbc a
    ld [hl], a
    adc h
    ld a, e
    sbc [hl]
    ld l, h
    sbc a
    ld c, a
    rst $38
    cpl
    rst $38
    rst $28
    rst $18
    inc hl
    rst $38
    ld c, e
    rst $38
    ld l, a
    rst $38
    sub d
    rst $38
    call $d3ff
    rst $38
    ld a, a

Call_060_5ee3:
    rst $38
    add hl, hl
    rst $38
    call nz, $97ff
    db $fc
    inc de
    cp $30
    rst $38
    dec hl
    rst $38
    rst $38
    rst $38
    ld b, d
    rst $38
    dec d
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    ld a, e
    rst $38
    inc c
    rst $38
    ld a, [$f7ff]
    db $fd
    db $e3
    rst $38
    and [hl]
    ld a, a
    push bc
    ld a, a
    nop
    rst $38
    inc bc
    db $fd
    ld a, b
    adc a
    ld b, a
    rst $38
    rst $10
    db $eb
    ld a, l
    add e
    cp d
    rst $28
    rst $18
    db $fc
    cp a
    db $e4
    ldh a, [$9f]
    call nz, Call_060_787f
    rst $20
    ldh [$bf], a
    nop
    rst $38
    ld b, c
    cp a
    add c
    cp $1f
    add sp, $42
    rst $38
    ld e, [hl]
    ld sp, hl
    ld [de], a
    db $fd
    inc c
    rst $38
    ld a, [hl]
    db $fd
    or h
    rst $38
    ld a, $e0
    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, c
    cp a
    ld b, b
    xor b
    ld d, h
    db $f4
    ld [$f815], sp
    or h

jr_060_5f49:
    ld hl, sp-$24
    jr c, jr_060_5f49

    ld [$b844], sp
    adc [hl]
    ld [hl], c
    rst $38
    ld h, c
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, $c1
    add hl, hl
    sub $7d
    jp nz, $fc53

    ei
    ld h, $71
    sbc a
    ld c, a
    cp e
    add [hl]
    ei
    sbc b
    ld a, a
    adc [hl]
    ld [hl], c
    rst $00
    jr c, @-$1f

    jr nz, @+$1d

    ldh [rSC], a
    rst $38
    rst $30
    adc [hl]
    add b
    ld a, a
    ldh [$9f], a
    ld a, b
    adc a
    sbc b
    rst $20
    ret z

    ccf
    ldh [$9f], a
    ld a, [hl]
    pop bc
    cp a
    ret nz

    ld c, a
    ld hl, sp+$78
    rst $18
    ld a, [$f9cf]
    adc a
    ld a, a
    adc a
    or l
    rst $08
    sub l
    rst $38
    rst $38
    ld [$0cf7], sp
    ccf
    call nz, $ed1e
    ld d, e
    db $ec
    or a
    ld c, h
    or a
    call c, $fc7b
    scf
    call c, $8f7c
    ld a, a
    adc h
    ld l, e
    call c, $deed
    cp l
    rst $38
    dec a
    cp $d5
    ld a, $95
    ld l, d
    or h
    sla h
    rst $18
    ld h, c
    sbc $03
    cp $03
    cp $07
    cp $8d
    di
    ld [hl+], a
    rst $38
    dec bc
    cp $0f
    cp $9b
    cp $0b
    cp $ca
    rst $30
    sbc e
    rst $20
    rst $18
    xor $d6
    rst $28
    or $ff
    rst $38
    rst $38
    ldh a, [rIE]
    ld c, b
    cp a
    ld hl, sp-$09
    jr nc, @+$01

    nop
    rst $38
    scf
    db $fc
    ld [hl], a
    sbc $c6
    rst $38
    ld l, d
    rst $38
    ld d, a
    cp $f2
    rst $38
    db $e3
    rst $38
    adc b
    rst $38
    rst $28
    rst $38
    push de
    ld a, [hl]
    ld a, [bc]
    db $fd
    inc b
    rst $38
    add e
    ld a, h
    scf
    db $fc
    db $ed
    ld a, [$ef77]
    ld l, h
    rst $38
    jp c, Jump_060_79ef

    and $90
    rst $38
    ld a, b
    rst $20
    ld e, c
    rst $28
    ld hl, sp-$01
    ret c

    rst $38
    ld [de], a
    rst $38
    inc a
    rst $08
    ld a, [$8817]
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    add hl, bc
    or $16
    rst $28
    ld [hl], l
    rst $38
    rst $28
    ret c

    push de
    ld a, [hl+]
    and b
    ld e, a
    dec bc
    rst $30
    dec sp
    rst $20
    rra
    rst $20
    dec d
    xor $d7
    and b
    ld a, [c]
    jr nz, @-$62

    ld h, b
    ld a, [c]
    nop
    and [hl]
    nop
    db $ec
    nop
    and [hl]
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    pop bc
    cp [hl]
    pop bc
    jp c, $e6e1

    ei
    ld e, e
    xor [hl]
    ld l, a
    sub c
    ld [c], a
    dec e
    and b
    rst $38
    ld hl, sp+$77
    and [hl]
    ld a, c
    db $d3
    db $fc
    ret z

    ccf
    ld [bc], a
    db $fd
    ld e, c
    and [hl]
    rst $38
    ld b, $ff
    nop
    rst $28
    add b
    cp l
    ld a, [$f86f]

jr_060_6076:
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    db $fc
    rlca
    cp $01
    cp [hl]
    pop bc
    ld b, a
    cp b
    jp $8f3c


    ld [hl], d
    rrca
    ldh a, [rVBK]
    cp b

jr_060_608c:
    dec b
    ld a, [$807f]

jr_060_6090:
    ld [hl], d
    rst $18
    ld e, a
    add b
    ld a, [$bb04]
    ld b, h
    cp a
    ld b, b
    ld a, a
    add b
    ld [hl], e
    add b
    sbc [hl]
    ld [hl], l

jr_060_60a0:
    push de
    ccf
    db $fd
    inc bc
    ld a, a
    add b
    sbc a
    ldh [$8f], a
    ld [hl], b
    ld hl, sp+$07
    rst $00
    dec a
    db $dd
    jr nz, jr_060_60a0

    jr nc, jr_060_6076

    ccf
    rst $30
    jr c, jr_060_60c6

    ld sp, hl
    add hl, bc
    ldh a, [$58]
    ldh a, [$e7]
    jr c, jr_060_608c

    jr nc, jr_060_6090

    ld a, b
    sub b
    ld a, a
    inc e
    rst $38

jr_060_60c6:
    sub [hl]
    ld l, a
    cp c
    ld h, b
    ei
    ld b, b
    rst $18
    ld l, c
    ld c, $f9
    rst $38
    ld l, a
    rst $38

jr_060_60d3:
    jr nz, jr_060_60d3

    ld l, e
    or b
    rst $08
    ld [hl], h
    adc a
    di
    inc l
    or a
    ld e, h
    rlca

Jump_060_60df:
    db $fc
    scf
    rst $38
    xor d
    rst $38
    cp h
    ld h, e
    or b
    ld c, a
    inc c
    ei
    rrca
    rst $38
    ld e, c
    rst $38
    sub b
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    rst $18
    ld [hl], e
    ld a, [bc]
    rst $38
    sub l
    rst $28
    ld [hl], e
    rst $28
    or l
    cp $f6

Call_060_60ff:
    rst $08
    xor b
    ld a, a
    jp hl


    ld e, $88
    rst $30
    ld l, b
    rst $10
    ld l, b
    sbc a
    cp $13
    ld a, [hl]
    and e
    rst $38
    ret nz

    call c, $bec3
    rst $00
    call Call_000_3ff3
    db $e3
    ld a, l
    rst $00
    jr nz, @+$01

    sbc c
    or $2f
    ldh a, [$5e]
    db $fd
    or a
    ld a, a
    ld [c], a
    rst $38
    db $fc
    ld b, e
    db $fd
    rlca
    or c
    ld e, a
    inc hl
    cp $67
    cp $cf
    cp $fa
    rst $20
    jp nz, Jump_060_4407

    rlca
    ld [bc], a
    rlca
    inc b
    inc bc
    add hl, bc
    rlca
    ld [bc], a
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    inc bc
    rrca
    ld de, $170f
    dec bc
    ld e, $03
    dec bc
    rla
    ld e, $0f
    ld l, e
    add h
    ld a, a
    add b
    ld h, a
    db $fc
    ld c, a
    ld hl, sp-$78
    ld a, a
    rst $30
    inc c
    add hl, sp
    add $f8
    daa
    sub b
    rst $38
    inc sp
    adc $b3
    rst $38
    db $fc
    rst $38
    ld d, e
    cp $fe
    add c
    xor $01
    ld a, [c]
    ld bc, $11fe
    rst $30

jr_060_6173:
    jr jr_060_6173

    and b
    ld a, [hl]
    ret nz

    dec de
    db $e4
    dec hl
    call nz, $fe93
    ld [hl+], a
    db $fc
    ld e, d
    db $fc
    inc hl
    db $fc
    add d
    ld a, a
    cp a
    ld b, b
    daa
    ret nz

    db $db
    ld h, b
    rst $00
    ld a, b
    cp c
    rst $38
    ld e, $e7
    or [hl]
    ld b, b
    ld a, a
    nop
    cp a
    nop
    rst $30
    nop
    pop af
    nop
    ld sp, hl
    nop
    ld a, [c]
    dec c
    and a
    ld hl, sp+$27
    ld hl, sp-$39
    jr c, jr_060_61bd

    inc c
    rst $38
    ld [$f817], sp
    scf
    db $fc
    ld d, e
    db $fc
    xor e
    cp $75
    adc $56
    adc h
    db $76
    adc b
    rst $38
    inc b
    db $db
    inc c
    ld a, [c]

jr_060_61bd:
    adc l

Jump_060_61be:
    ld a, a
    add b
    ld a, a
    add b
    jp hl


    or $a0
    rst $38
    dec [hl]
    jp z, $c837

    rst $30
    ld [$48b7], sp
    db $d3
    db $fc
    or c
    db $fc
    rst $30
    ld a, h
    cp d
    ld a, l
    ld a, $ff
    ld a, h
    rst $38
    adc l
    ld a, [c]
    ei
    ld b, h
    cp e
    call $ed76
    adc [hl]
    ld [hl], c
    xor $11
    cp $11
    cp $03
    ld [hl], $ff
    ld a, h
    rst $38
    add l
    rst $38
    ld b, h
    rst $38

Call_060_61f2:
    ld [hl+], a
    rst $38
    db $76
    db $fd
    ld b, l
    rst $38
    ld l, $d9
    add b
    rst $38
    adc $3f
    rst $18
    rst $38
    inc [hl]
    rst $38
    sbc $79
    rst $00
    jr c, jr_060_620e

    ld hl, sp-$7d
    db $fc
    ld a, a
    pop bc
    ei
    rst $08

jr_060_620e:
    ld a, c
    adc [hl]
    ld h, b
    sbc a
    ld hl, sp-$71
    dec de
    rst $38
    cp $ff
    ld a, a
    cp $02
    rst $38
    ei
    rlca
    and $1f
    ld a, $ff
    pop de
    rst $38
    ld hl, sp-$79
    db $fd
    ld b, $ff
    nop
    ldh [$9f], a
    ret nz

    ccf
    ld [hl], b
    rrca
    ldh a, [rIF]
    pop af
    rrca
    ld b, e
    cp a
    cp b
    rst $08
    or h
    ld c, e
    ld l, [hl]
    sub c
    ld c, $f9
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, h
    rst $38
    cp $ff
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, d
    rst $38
    dec c
    ld [$0008], sp
    rst $08
    nop
    rst $10
    nop
    rst $38
    db $10
    ld [$ff18], a
    ld [hl], b
    ld [hl], a
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    rst $38
    dec b
    rst $38
    and b
    sbc [hl]
    ld h, c
    ld h, d
    db $dd
    ld e, e
    add h
    ld a, a
    add b
    adc $00
    call c, Call_060_5e00
    jr nc, jr_060_62cf

    jr nz, jr_060_62c3

    jr nc, @-$30

    ld [hl], b
    sbc [hl]
    ldh a, [$fd]
    nop
    ld a, h
    db $10
    ld a, [$ff00]
    add c
    ld [$eb13], a
    db $10
    ei
    nop
    and a
    nop
    ccf
    ret nz

    ld a, a
    pop af
    dec de
    ld bc, $0193
    ei
    ld bc, $00df
    ld a, a
    add d

jr_060_629c:
    add e
    ld bc, $00fa
    ld hl, sp+$00
    ret c

jr_060_62a3:
    jr nz, jr_060_62a3

    ld b, b
    ld a, a
    nop
    db $fd
    nop
    inc a
    ret nz

    ei
    nop
    sbc e
    ld bc, $01a3
    cp e
    ret nz

    xor a
    ld [hl], b
    sub a
    ld a, b
    and [hl]
    ld a, l
    add [hl]
    ld a, c
    cp [hl]
    pop hl
    xor $01
    rst $38
    ld b, b
    cp l

jr_060_62c3:
    ld h, b
    cp $41
    add sp, $47
    cp d
    rst $00
    ld hl, sp-$39
    ld [hl], b
    rst $08
    ld a, a

jr_060_62cf:
    db $f4
    ccf
    ret nz

    rst $38
    call nz, $e3dc
    call c, $58e3
    rst $20
    ld e, b
    and a
    ld c, b
    or a
    ld b, a
    cp l
    scf
    ret z

    call c, $ff00
    nop
    rst $30
    ld [$ff41], sp
    add h
    rst $38
    xor b
    rst $38
    nop
    rst $38
    add d
    ld a, a
    inc e
    di
    inc b
    rst $38
    ld a, a
    pop bc
    cp $a5
    sbc a
    db $e3
    cp a
    ld b, h
    ld bc, $fdfe
    add [hl]
    ei
    sbc $9d
    cp $1b
    cp $d7

jr_060_6309:
    jr c, jr_060_629c

    rst $28
    cp a
    rst $08
    ld hl, sp+$0f
    ld sp, hl
    rrca
    cpl
    ld hl, sp-$01
    ret nz

    ld [hl], b
    adc a
    ldh [$1f], a
    cp a
    ld h, c
    ld [hl], b
    adc a
    adc h
    ld [hl], e
    cp $81
    inc de
    db $ec
    di
    ld c, $f8
    rlca
    db $e3
    dec e
    inc bc
    cp $03
    cp $01
    cp $29
    cp $e3
    inc e
    db $e3
    inc e
    pop af
    adc [hl]
    jr nc, jr_060_6309

    adc b
    ld [hl], a
    ld b, b
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    ld h, a
    sbc a
    ld [hl], e
    adc a
    add hl, sp
    rst $00
    ld a, c
    add a
    ld a, l
    add e
    inc [hl]
    rr b
    rst $28
    call $cd06
    ld b, $eb
    ld b, $c8
    ld c, $d1
    ld c, $6c
    rra
    cp $00
    ei
    inc b
    db $fc
    inc bc
    sbc h
    ld h, e
    cp a
    ld [hl], b
    db $fc
    ld [hl], e
    ld c, l
    ei
    jp c, $de2d

    inc h
    cp $00
    push af
    nop
    scf
    nop
    or $01
    ld sp, $7102
    ld [bc], a
    ld [hl], a
    ld [bc], a
    sub e
    ld a, [hl]
    di
    ld e, $51
    ld c, $fb
    ld c, $f5
    rrca
    ld a, [$396f]
    inc c
    dec e
    nop
    inc de
    nop
    rst $38
    nop
    di
    ret nz

    di
    add b
    db $e3
    add b
    rst $30
    add b
    rst $30
    nop
    rst $38
    jr nz, @+$01

    ldh [$36], a
    nop
    ld sp, $1302
    nop
    ld [hl], a
    nop
    ld a, e
    ld [hl], $ff
    ld e, $5d
    ld c, $fd
    rrca
    jp nc, $f32f

    cp h
    dec a
    ld [$0019], sp
    cp [hl]
    ld bc, $f315
    ld [hl], $e1
    or a
    ret nz

    inc de
    db $e4
    ccf
    ret nz

    rst $38
    nop
    ld d, e
    db $fc
    or $88
    ld [hl], a
    adc b
    ld a, e
    adc h
    ld [hl], a
    adc b
    inc h
    rst $18
    xor $1f
    rst $20
    rra
    inc [hl]
    rst $08
    scf
    xor $ea
    inc e
    or l
    adc $0f
    rst $38
    ld [hl], l
    sbc $d7
    ld l, b
    or e
    ld b, h
    and a
    ld b, b
    cp a
    ld b, b
    push hl
    cp e
    ccf
    rst $18
    ld b, c
    rst $38
    ld h, h
    rst $38
    ld l, c
    cp a
    dec a
    rst $00
    ld a, $e1
    inc a
    db $e3
    ld c, $f3
    sbc [hl]
    pop af
    ld b, d
    cp a
    rrca
    ld hl, sp-$28
    or a
    ld l, a
    ld hl, sp-$01
    nop
    ret nc

    cpl
    db $fd
    rlca
    ccf
    rst $20
    db $db
    db $f4
    dec de
    db $e4
    db $fc
    add e
    rst $38
    inc bc
    sbc a
    ld h, b
    cpl
    ret c

    rrca
    db $fc
    rla
    jp hl


    rrca
    ldh a, [$7e]
    add b
    ld a, e
    add h
    ei
    inc b
    ld hl, sp+$07
    push af
    ld a, [bc]
    ld a, [$5e87]
    add c
    or $89
    ld [hl], $cb
    ld [hl], b
    adc a
    nop
    rst $38
    rlca
    ld hl, sp-$61
    ld h, b
    rra
    ldh [rKEY1], a
    ldh a, [$c1]
    cp $c2
    rst $38
    adc $f1
    push hl
    jp c, $e0ff

    sbc [hl]
    pop hl
    db $eb
    db $f4
    ldh a, [rIE]
    ld [hl], c
    cp $ef
    ldh a, [$3c]
    nop
    ld [hl], $00
    jr c, jr_060_645a

    ld a, $04
    jr c, jr_060_6469

jr_060_645a:
    ldh [$3f], a
    push de
    adc [hl]
    ccf
    jp nz, $8275

    ret c

    rst $20
    ld a, e
    adc h
    ld e, d
    db $f4
    rst $10

jr_060_6469:
    db $ed

jr_060_646a:
    db $fc
    rst $30
    rst $20
    add hl, de
    ld a, a
    nop
    cpl
    db $10
    ld [hl], c
    nop
    rst $38
    nop
    db $fd
    ld [de], a
    rst $28
    jr nc, jr_060_646a

    db $10
    push hl
    ld a, [de]
    dec de
    ld sp, $3043
    ld e, e
    jr nc, jr_060_6494

    ld [hl], b
    adc l
    ldh a, [$f9]
    nop
    ld sp, hl
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ei
    nop

jr_060_6494:
    pop af
    nop
    ei
    nop
    db $db
    nop
    cp a
    db $10
    db $eb
    db $10
    jp nc, $f211

    ld de, $1176
    ld l, [hl]
    ld de, $102f
    ld [de], a
    jr nc, jr_060_64f2

    jr nc, jr_060_64b8

    ld [hl], b
    xor l
    ld [hl], b
    ld sp, hl
    db $10
    ei
    nop
    ccf
    nop
    ld [hl], e
    inc c

jr_060_64b8:
    ld a, a
    nop
    sbc a
    ld h, b
    ld [hl], a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $08
    inc b
    rst $30
    inc c
    adc d
    dec b
    rlc h
    ld [hl], l
    adc $24
    rst $18
    or $89
    ld e, e
    add h
    ld a, [c]
    call $fb16
    pop af
    rrca
    push af
    rrca
    cp $01
    ld h, [hl]
    db $fd

jr_060_64de:
    ld a, [bc]
    rst $38
    rst $30
    nop
    rst $38
    nop
    cp $11
    or b
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld h, h
    rst $38
    ld b, b
    rst $38
    cp h
    ld h, a

jr_060_64f2:
    call c, $e723
    jr c, jr_060_64de

    sbc h
    ld l, a
    cp $ff
    cp $3d
    rst $00
    or $0f
    jr z, @+$01

    cp a
    ld b, c
    sbc l
    ld [c], a
    or a
    ldh [$1f], a
    ldh a, [$c7]
    ld hl, sp-$09
    inc c
    ldh a, [rIF]
    scf
    rst $38
    ld h, h
    sbc e
    ld a, d
    inc bc
    db $fc
    rrca
    and $1f
    sbc a
    add hl, bc
    adc [hl]
    ld bc, $83c6
    cp c
    ld a, a
    ld h, b
    rst $38
    or a
    ld c, b
    db $eb
    inc e
    sub $3f
    di
    ld c, $da
    rlca
    ld a, e
    add a
    ld a, [$9107]
    ld l, a
    nop
    rst $38
    ld bc, $bfff
    ld b, c
    sbc a
    ld h, b
    db $dd
    ld [hl+], a
    db $ec
    inc de
    ld [hl], b
    sbc a
    ld d, b
    adc a
    sub [hl]
    ld h, c
    cp a
    ld b, b
    rra
    ldh [$1f], a
    ldh [rNR34], a
    pop hl
    add b
    rst $38
    rst $08
    ld [$1c33], sp
    ld [hl], b
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ld l, d
    nop
    ld a, [c]
    inc c
    rst $38
    ld [$f05f], sp
    rra
    ldh [$f7], a
    ld c, b
    cp $01
    rst $38
    inc hl
    ldh a, [rIF]
    add hl, hl
    sub $bd
    ld b, [hl]
    rst $38
    nop
    rst $08
    nop
    jp $0384


    cp $43
    cp a
    db $fc
    inc bc
    db $fd
    nop
    ld a, h
    add b
    rst $38
    nop
    add b
    ld a, a
    ld a, [$e387]
    rlca
    ld hl, sp+$07
    dec sp
    db $ec
    dec sp
    call nz, $844b
    push bc
    add b
    add $80
    rst $38
    add b
    rst $08
    nop
    rst $38
    nop
    ld sp, $fb00
    ld a, $1f
    ld [c], a
    ld d, l
    ld [c], a
    add hl, hl
    ld [c], a
    call c, $db23
    ld h, $3a
    rlca
    adc e
    rlca
    or $03
    sbc l
    ld [hl], e
    cp l
    ld b, d
    ld l, c
    add [hl]
    sbc [hl]
    ld h, e
    cp e

jr_060_65b7:
    ld b, a
    ret c

    daa
    ld a, l
    ld [bc], a
    di

jr_060_65bd:
    nop
    rst $18
    jr nz, @+$01

    ld [$00bf], sp
    rst $30
    ld [$ff48], sp
    ret


    rst $38
    cp $01
    ld a, l
    ret nz

    jp hl


    sub a
    inc hl
    rst $38
    rst $38
    ld c, a

jr_060_65d4:
    rst $30
    rrca
    jr z, jr_060_65b7

    cp [hl]
    db $fd
    cp $9b
    cp l
    add d
    di
    sbc $7f
    ld [bc], a
    rst $08
    jr nc, jr_060_65d4

    jr nc, jr_060_65bd

    cp a
    ld e, d
    rst $38
    ld l, h
    rst $18
    jr nz, @+$01

    sub $3b
    and $1b
    ld c, a
    ei
    jp nc, Jump_000_1ffd

    ldh a, [$f9]
    ld b, $c0
    ld a, a
    ld [hl], b
    adc a
    sub d
    ld l, a
    and a
    ret c

    di
    ld c, $d3
    inc l
    add e
    ld a, h
    ld sp, $ddce
    ld h, d
    rst $38
    nop
    ld [hl], c
    rst $28
    xor $f9
    and l
    ld hl, sp+$63
    db $fc
    ld h, e
    db $fc
    di
    inc c
    db $eb
    inc c
    ld a, c
    add [hl]
    cp c
    add $83
    cp $b3
    call z, $f906
    call nz, $ac7b
    ld a, e
    rst $20
    add hl, de
    ld a, [$7e45]
    pop de
    ld a, $c1
    inc a
    jp $c17e


    db $dd
    ldh [$c5], a
    ld hl, sp-$1d
    db $fc
    ld h, c
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld h, b
    rst $38
    ld d, a
    add sp, $11
    xor $18
    rst $20
    adc b
    ld [hl], a
    inc c
    di
    ld b, $f9
    ldh a, [rNR41]
    ld a, h
    add b
    ret z

    nop
    inc c
    nop
    rst $38
    nop
    rst $20
    inc bc
    ccf
    rlca
    adc a
    db $10
    ei
    inc b
    ei
    inc b
    ld [hl], c
    adc $63
    sbc l
    ld h, l
    sbc a
    call c, Call_060_73ff
    sbc $f9
    rlca
    call $eb02
    ld b, $fe
    inc b
    dec b
    cp $ff
    jp nz, $df60

    ld a, b
    rst $00
    cp [hl]
    ld h, c
    inc l
    db $db
    cp b
    rst $08
    cp a
    db $e4
    sbc a
    ldh [$9f], a
    ldh [$bb], a
    ld h, a
    add hl, sp
    rst $00
    ld hl, sp+$47
    cp c
    ld b, a
    ccf
    rst $00
    dec [hl]
    cp $ff
    nop
    rst $38
    nop
    rst $30

jr_060_669b:
    jr nz, jr_060_669b

    inc sp
    ld h, d
    inc bc
    ldh [$03], a
    call c, $de23
    inc hl
    jp c, Jump_000_3f37

    ldh [$c6], a
    pop hl
    sbc e
    cp $0f
    ldh a, [$fc]
    dec bc
    inc a
    inc bc
    ld a, a
    add b
    pop hl
    cp $85
    ld a, a
    rst $38
    nop
    rst $38
    db $10
    sbc $23
    ld h, [hl]
    add hl, de
    rst $28
    db $10
    dec bc
    db $fd
    ld a, e
    push bc
    ret nz

    cp a
    ldh a, [$9f]
    add hl, sp
    rst $00
    ld b, b
    cp a
    ld [hl], b
    sbc a
    cp h
    jp $c1be


    ld c, d
    rst $38
    ld [hl], b
    rst $18
    ld a, [hl]
    sbc a
    sbc $bf
    db $fd
    ld h, e
    db $dd
    ld [hl+], a
    ret c

    ccf
    adc $fd
    ld b, $ff
    ld a, c
    rst $38
    inc hl
    rst $38
    adc l
    ei
    inc bc
    db $fd
    inc e
    rst $20
    xor h
    ei
    db $fc
    adc a
    inc bc
    rst $38
    rst $38
    ld bc, $a778
    rst $30
    nop
    rst $38
    add c
    call nc, $cb2f
    inc a
    ld [hl], c
    rrca
    ld sp, hl
    rlca
    ld b, h
    cp e
    cp l
    ld b, e
    sbc a
    ld h, b
    rst $08
    ldh a, [$7f]
    ldh [$af], a
    ld [hl], b
    rst $10
    inc a
    db $eb
    inc a
    push hl
    ld e, $f9
    ld b, $3e
    db $e3
    sbc h
    ld [hl], e
    rrca
    ldh a, [$f8]
    sbc a
    ld [hl], h
    rst $38
    ld d, [hl]
    xor a
    or c
    adc $79
    add [hl]
    ld e, l
    add d
    ld a, [hl]
    pop bc
    db $10
    rst $38
    add hl, de
    rst $38
    inc e
    rst $38
    rra
    rst $38
    add hl, de
    rst $38
    xor a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    add b
    rst $38
    dec de
    push hl
    ld l, $f1
    pop bc
    ld a, $e1
    ld e, $f8
    rlca
    dec sp
    rst $00
    add hl, de
    rst $20
    rra
    nop
    ld [hl], $00
    ld [hl], a
    ld h, b
    rst $20
    ret nz

    ld l, [hl]
    add c
    ld e, h
    add e
    ld h, l
    sbc a
    ld a, [c]
    sbc a
    ld a, e
    add h
    ld a, c
    rst $08
    ld [hl], d
    sbc a
    sbc h
    ld [hl], a
    ld a, a
    ldh [$3d], a
    ld [c], a
    adc [hl]
    pop af
    pop bc
    ld a, a
    xor $13
    rst $38
    nop
    ld e, [hl]
    ld hl, $61fe
    db $fd
    add e
    ld [hl], a
    add c
    rst $38
    rlca
    ld a, [hl-]
    rst $20
    ld a, e
    sub a
    rst $38
    ld bc, $25fb
    ld c, c
    or a
    pop bc
    ccf
    db $ed
    inc de
    ld a, a
    and b
    ld a, a
    add b
    dec l
    cp $f9
    cp [hl]
    di
    cp h
    db $db
    ld a, $43
    cp [hl]
    rst $38
    ld b, $ff
    nop
    cp e
    add $9e
    ld a, a
    and c
    ld e, a
    rst $38
    nop
    ccf
    ret nz

    ld a, [hl+]
    push de
    reti


    ld a, a
    cp a
    rst $20
    ei
    rst $00
    sbc b
    ld h, a
    db $db
    or $3a
    rst $00
    ld l, e
    push bc
    cpl
    ret nz

    ld a, a
    call $867f
    ld l, e
    push af
    rst $38
    db $10
    jp nz, $d9ff

    rst $38
    db $fd
    rst $20
    ld e, $e7
    ld c, c
    rst $30
    rst $20
    ld a, a
    rst $38
    rrca
    ld e, e
    xor a
    cpl
    rst $38
    ld hl, $3efe
    rst $08
    rlca
    rst $38
    rla
    rst $38
    add a
    rst $38
    db $ed
    dec de
    sub [hl]
    ld a, c
    ld h, a
    cp $18
    rst $38
    sub d
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    ld l, h
    rst $38
    inc c
    ei
    inc b
    rst $38
    ld b, l
    cp a
    jp nz, $efbf

    rst $30
    xor $f1
    ld hl, $f6de
    adc l
    ld d, c

Jump_060_67ff:
    xor $3f
    db $f4
    rst $28
    jr @+$01

    nop
    sbc a
    ld [bc], a
    ld a, l
    add a
    ld e, $f1
    ccf
    ret nz

    sbc b
    rst $38
    rst $18
    ld h, d
    add e
    ld a, [hl]
    sbc a
    ldh [$f2], a
    ld c, l
    db $e3
    rra
    rst $30
    ld a, [bc]
    or $89
    ld a, [hl-]
    push bc
    ld l, b
    sub a
    ld d, $fd
    ld a, $f9
    ld a, a
    add h
    add [hl]
    nop
    db $e3
    nop
    rst $30
    ld bc, $b0ef
    and a
    ld sp, hl
    dec h
    ld a, [$c23d]
    ret nc

    rst $08
    and c
    sbc $40
    rst $38
    and $ff
    rst $30
    cp $e2
    db $fd
    ld a, [bc]
    db $fd
    pop af
    ld c, $79
    add [hl]
    ld a, c
    add a
    jp c, $0ce7

    di
    ld e, $e1
    db $fc
    nop
    db $fc
    nop
    rst $38
    ld bc, $877a
    sbc [hl]
    nop
    cp $b0
    ld a, a
    add b
    sub a
    ld l, h
    rst $28
    jr jr_060_688c

    rst $18
    ld a, [hl]
    add c
    sbc e
    rst $20
    ld [$ecdf], a
    rst $30
    dec hl
    rst $38
    adc $b7
    ld e, h
    db $e3
    xor $31
    db $ec
    inc de
    ret


    ccf
    jp $d33f


    ccf
    jp z, $cb7f

    rst $38
    ld e, e
    rst $20
    rst $10
    xor $54
    rst $28
    db $fd
    rst $38
    cp [hl]
    rst $38
    ld l, b
    rst $18

jr_060_688c:
    ld [c], a
    ccf
    reti


    ld h, a
    or l
    ld l, [hl]
    sub c
    ld a, a
    add c
    ld a, [hl]
    dec b
    cp $45
    cp [hl]
    di
    rrca
    or e
    ld c, h
    add l
    rst $38
    reti


    rst $38
    ret nz

    rst $38
    ld c, c
    cp $df
    ld h, h
    ld l, b
    rst $38
    or b
    rst $08
    jp c, $dce7

    db $e3
    ld h, a
    rst $38
    ld a, $ef
    ld [hl-], a
    rst $08
    ld a, e
    sbc $5d
    cp $04
    rst $38
    rst $30
    rra
    xor d
    ld a, a
    db $dd
    rst $20
    db $fd
    cp $fe
    ld b, a
    sbc a
    rst $20
    ld d, b
    rst $38
    rst $20
    rst $38
    ret nc

    rst $38
    call nc, $d6ef
    rst $38
    dec b
    cp $86
    rst $38
    and a
    rst $38
    dec h
    rst $38
    di
    rst $38
    sbc [hl]
    db $fd
    cp h
    ld a, a
    ret nz

    rst $38
    ld b, d
    rst $38
    jp z, $faff

    rst $38
    inc l
    rst $38
    ld d, e
    rst $38
    sub $ff
    ld c, b
    rst $38
    dec h
    rst $18
    ld h, d
    cp a
    db $fd
    inc bc
    ld a, [hl]
    add l
    cp a
    db $e4
    call c, $9ef7
    ld sp, hl
    inc de
    xor $79
    add [hl]
    rlca
    rst $38
    rst $08
    ldh a, [$57]
    cp b
    pop hl
    ccf
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld bc, $dfff
    jr nz, @-$02

    inc bc
    ld d, e
    rst $38
    ld d, h
    rst $38
    reti


    rst $20
    cp [hl]
    ld bc, $03fc
    rst $28
    db $10
    ld [c], a
    rra
    ld a, d
    add a
    dec [hl]
    db $e3
    cp $41
    db $fc
    ld bc, $18ff
    ldh [$bf], a
    cpl
    db $fc
    ld a, a
    sbc h
    ld l, b
    sub a
    ld d, h
    dec hl
    ld c, l
    or d
    sub e
    ld a, h
    dec bc
    db $fc
    dec a
    cp $c2
    ccf
    ld hl, sp+$07
    ld [c], a
    rra
    ld a, [hl]
    add e
    ld [hl], a
    adc c
    daa
    rst $38
    rst $38
    rst $38
    jp nz, Jump_060_67ff

    rst $38
    ld b, e
    ccf
    and c
    ld e, a
    ld c, a
    or [hl]
    adc $f9
    ccf
    nop
    rst $38
    nop
    db $fd
    add e
    ld a, [$c007]
    ccf
    dec c
    di
    ld bc, $0bfe
    rst $38
    ld sp, $a7ff
    db $fd
    adc a
    ldh a, [$1f]
    ldh a, [$2f]
    db $f4
    ld a, $f9
    or [hl]
    ret


    rst $20
    ld e, a
    rst $38
    rst $38
    sub c
    rst $38
    rst $38
    ld a, c
    ld [$213d], a
    rst $38
    dec bc
    rst $38
    rst $10
    rst $38
    rst $38
    add a
    ld [hl], h
    sbc a
    adc [hl]
    db $fd
    ld [hl], h
    rst $38
    db $76
    db $ed
    db $fc
    inc bc
    cp $07
    rst $30
    cp b
    rst $30
    adc h
    ld c, h
    cp a
    ld b, h
    rst $38
    ldh a, [$bf]
    inc l
    rst $18
    or l
    db $db
    ld a, l
    jp nz, Jump_000_1ee5

    call Call_060_7f7e
    sbc h
    ld a, a
    xor h
    adc $7f
    call z, $ac7f
    ld a, a
    push af
    jp c, $94ff

    jp c, $c275

    ld a, a
    ret c

    rst $30
    ld [hl], b
    rst $28
    db $10
    rst $38
    jr nc, @+$01

    rst $20
    db $fc
    pop hl
    cp a
    sub $bd
    ld a, [c]
    cpl
    ld d, [hl]
    rst $28
    rst $20
    rst $38
    call nc, $b5ff
    ei
    ld d, a
    ei
    rst $38
    ei
    ld a, $ff
    xor d
    rst $38
    ld e, b
    rst $38
    ldh [rIE], a
    inc b
    rst $38
    sub b
    ld a, a
    or b
    rst $18
    xor $fb
    sbc a
    ld hl, sp+$03
    db $fc
    ld bc, $43fe
    cp $03
    rst $38
    ld d, e
    rst $28
    cp $bf
    rst $28
    rst $38
    add e
    rst $38
    ld [hl+], a
    db $fd
    jr nz, @+$01

    db $f4
    ld c, a
    sub a
    ld a, h
    jp $f13e


    rst $38
    ld h, c
    rst $38
    add l
    rst $38
    ld a, a
    pop hl
    ld a, h
    add e
    ld hl, sp-$61
    rst $28
    sbc b
    ld e, h
    di
    ld a, [c]
    db $fd
    di
    cp $c1
    ld a, $f3
    inc c
    db $fd
    inc b
    ld e, l
    db $e3
    sbc h
    ld a, a
    add h
    ld a, e
    ld a, [c]

jr_060_6a23:
    dec l
    ld a, l
    and [hl]
    adc a
    ld a, [c]
    ld l, a
    ldh a, [$7f]
    ld hl, sp+$3b
    db $fc
    ld hl, sp+$1f
    ld a, [$ef0f]
    rla
    inc sp
    rst $08
    add c
    ld a, a
    pop hl
    rra
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld c, b
    or a
    jr nz, jr_060_6a23

    and b
    rst $18
    ld c, a
    rst $38
    ld h, b
    rst $38
    add sp, -$09
    or $f9
    rst $18
    ld hl, sp-$09
    adc b
    cp a
    nop
    rst $30
    nop
    cp $09
    srl l
    sbc $e3
    ld a, b
    rst $00
    and $1f
    cp h
    rst $38
    push bc
    ccf
    sub $7d
    daa
    db $fc
    add a
    ld hl, sp-$01
    add b
    ld a, $c0
    cp a
    jp Jump_060_47bf


    inc l
    ei
    ldh a, [$9f]
    nop
    rst $38
    inc de
    db $fc
    ld h, l
    sbc b
    ld h, e
    call c, Call_060_7c83
    jp nz, Jump_060_743d

    adc e
    ld a, c
    add [hl]
    add hl, sp
    and $c4
    ei
    call nc, $e73b
    ld a, $f6
    ccf
    rst $38
    ld a, b
    ld e, [hl]
    pop hl
    cp $01
    cp a
    ld b, b
    or a
    ld c, b
    rst $38
    ld h, b
    cp h
    ld b, b
    or $cf
    ld a, [hl-]
    rst $08
    cp a
    pop bc
    xor a
    ret nc

    rlca
    ld hl, sp-$1d
    sbc h
    rst $30
    adc b
    ld hl, sp-$71
    or a
    ret c

    cp l
    ret nz

    rst $38
    add b
    db $e3
    dec e
    and [hl]
    reti


    add a
    ld sp, hl
    ld c, d
    or c
    jp hl


    sub b
    rst $38
    jr @+$01

    and c
    rst $08
    or c
    rla
    ei
    pop bc
    cp [hl]
    ld [$fc3f], a
    rlca
    or $43
    or a
    ld b, d
    ld e, a
    db $e4
    ei
    db $76
    ldh a, [$5f]
    cp $c3
    rst $38
    add e
    call $e13b
    ccf
    jp hl


    ccf
    adc e
    ld [hl], a
    ld e, h
    db $e3
    ccf
    db $f4
    sbc e
    ld a, h
    db $e3
    inc e
    ld e, d

jr_060_6aeb:
    or l
    cp e
    call nz, $c03f
    ld a, a
    add b
    cp a
    ldh [$2c], a
    rst $38
    dec e
    rst $30
    ld h, b
    rst $18
    dec d
    rst $38
    inc bc
    db $fd
    xor l
    ld [hl], a
    cp $09
    ei
    ld c, $da
    rst $38
    rlca
    ld sp, hl
    sub a
    ld sp, hl
    jr nz, jr_060_6aeb

    ld [$00ff], sp
    rst $38
    ld [bc], a
    db $fd
    adc e
    ld a, l
    sub a
    ld l, b
    sbc a
    ld l, b
    jp $c13c


    ccf
    ldh a, [$7f]
    rrca
    rst $38
    pop bc
    cp [hl]
    ld a, c
    and a
    cp l
    jp $e11e


    add c
    ld a, a
    adc a
    ld a, a

jr_060_6b2c:
    rst $20
    rra
    db $e3
    rra
    ld [hl], c
    rst $08
    sbc e
    rst $20
    rst $30
    rst $38
    cp $ff
    add c

jr_060_6b39:
    rst $38
    add h
    ei
    ld sp, $90de

jr_060_6b3f:
    ld l, a
    jr jr_060_6b39

    nop
    rst $38
    sub b
    rst $28
    jr nz, @-$1f

    sub b
    ld l, a
    adc h
    ld [hl], e

jr_060_6b4c:
    ld b, [hl]
    cp c
    ld b, e
    db $fc
    ld a, a
    ret nz

    ld l, [hl]
    sbc c
    nop
    rst $38
    add hl, bc
    or $03
    rst $38
    or c
    rst $08
    rst $38
    inc a
    sbc a
    ldh a, [$7f]
    ret nz

    ld [hl], c
    add b
    ld [hl], c
    adc b
    ei
    inc b
    cp h
    ld b, e
    rst $18
    jr nz, jr_060_6b4c

    jr nz, @+$79

    adc b
    di
    adc h
    ld [hl], l
    adc b
    ld a, [hl]
    sbc e
    ld e, h
    rst $38
    jp c, $ffff

    rra
    add sp, $1f
    ld sp, hl
    sbc [hl]
    ld [hl], a
    ret c

    ld l, b
    ret nc

    ld l, c
    db $10
    di
    inc e
    ld a, h
    sbc a
    rst $38
    rra
    add $3f
    dec de
    ldh [$fb], a
    add b
    sbc a
    nop
    sbc a
    nop
    di
    nop
    ld a, c
    add b
    reti


    nop
    cp $01
    ld [hl], e
    call z, $f8ff
    rla
    ld hl, sp-$39
    jr c, jr_060_6b2c

    jr jr_060_6b3f

    inc c
    adc l
    ld [hl], d
    sbc $f1
    rst $28
    ld sp, hl
    rst $30
    ld hl, sp+$16
    ld hl, sp-$69
    ld hl, sp-$42
    add hl, de
    jp z, $fa31

    ld bc, $017a
    rst $08
    inc sp
    call z, $db33
    ccf
    rst $28
    nop
    db $fd
    add d
    ld c, a
    or b
    adc l
    ld [hl], d
    pop hl
    ld e, [hl]
    rst $28
    ld d, d
    cp d
    ld h, h
    cp d
    ld b, [hl]
    scf
    call z, $ccbb
    or l
    adc $b6
    call $ccbf
    xor a
    call c, $fc9b
    db $db
    db $fc
    pop de
    ld a, $ca
    ld a, h
    ld l, e
    sub h
    ld l, e
    sbc h
    ret


    ld a, $80
    ld a, a
    ld a, h
    adc e
    db $ed
    rlca
    rst $38
    add b
    cp $00
    cpl
    ret nc

    ld c, [hl]
    pop af
    rlca
    ld hl, sp+$0e
    rst $38
    sbc h
    rst $28
    adc a
    ld sp, hl
    adc l
    rst $38
    rst $38
    rst $38
    ld a, a

jr_060_6c09:
    rst $38
    inc bc
    rst $38
    ld e, a
    add sp, -$08
    ccf
    ld l, a
    rst $38
    ld [$bfff], a
    ld h, c
    push bc
    dec sp
    ret nz

    ccf
    daa
    db $fc
    ld a, e
    db $f4
    rst $28
    ei
    cp a
    nop
    rst $30
    nop
    rst $38
    ld bc, $f857
    ld a, c
    cp $7f
    ldh [$be], a
    pop af
    cp $f9
    ld [$fcff], a
    rst $38
    rst $38
    rst $38
    daa
    rst $38
    jr nc, jr_060_6c09

    ld e, l
    ld [c], a
    ret z

    ld a, a
    pop hl
    rra
    ld [hl-], a
    rst $08
    ld de, $40ef
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
    add hl, sp
    rst $00
    ld a, e
    add $e2
    rra
    ret nz

    ccf
    inc bc
    db $fc
    rst $20
    ret c

    rst $38
    nop
    ld a, e
    add b
    ld [hl], e
    add b
    db $e3
    ld b, c
    cp h
    ld b, e
    cp c
    ld b, [hl]
    rst $00
    add h
    ret


    ld b, $7d
    adc [hl]
    ld [hl], d
    adc a
    ld h, e
    sbc h
    ld l, a
    ret nc

    rst $18
    add [hl]
    sbc a
    inc b
    sbc a
    add b
    adc $b0
    ld a, $c0
    ld a, [c]
    inc c
    jp c, $ff2c

    nop
    ei
    nop
    db $eb
    nop
    dec b
    ld a, [$fc17]
    ld a, l
    adc b
    add hl, bc
    nop
    push af
    nop
    rst $38
    ld bc, $00ff
    ld a, e
    add l
    cp $83
    add a
    ld bc, $00ff
    ld a, d
    add b
    ld hl, sp+$00
    ld a, [de]
    ldh [$3e], a
    ret nz

    cp $04
    adc a
    ld [hl], b
    ccf
    ret nz

    ld a, d
    add b
    db $fc
    nop
    nop
    rst $38
    add $3f
    ld a, a
    add a
    ld d, $ef
    pop hl
    cp $81
    cp $e0
    rst $38
    ldh a, [$f8]
    db $ec
    db $fc
    ret nz

    ld hl, sp+$18
    add sp, -$70
    ld l, b
    ld [$08f8], sp
    ld hl, sp+$44
    db $fc
    db $10
    rst $28
    adc a
    ld a, b
    jp z, $f33d

    inc a
    sub e
    ld a, h
    inc b
    db $fc
    dec e
    db $ec
    call nc, $977c
    inc c
    db $fd
    ld b, [hl]
    cp a
    pop bc
    db $fd
    nop
    adc a
    ld a, c
    push hl
    jr @+$05

    db $fc
    rra
    ldh [rNR31], a
    ld [c], a
    rrca
    pop af
    add $39
    ld a, c
    add [hl]
    ld c, a
    ld [hl], c
    ld [c], a
    dec e
    call c, $3c23
    jp $8265


    ld [hl], a
    add d
    ld [hl], a

jr_060_6d03:
    add b
    ld a, a
    ret nz

    ld [hl], a
    sbc h
    ei
    rst $38
    rlca
    ld sp, hl
    or h
    ld a, e
    db $fc
    rst $38
    push de
    rst $38
    ld a, $ed
    rst $18
    rst $38
    add a
    cp $75
    cp $7a
    rst $38
    cp h
    ld a, a
    ld e, [hl]
    cp a
    cpl
    rst $38
    reti


    cpl
    xor l
    di
    ld b, $f9
    ei
    call z, Call_000_07ff
    rst $38
    adc b
    or b
    rst $28
    ld [de], a
    rst $28
    ld h, l
    rst $38
    ld a, h
    db $e3
    ld h, e
    db $fc
    ld [hl], $e9
    rst $00
    jr c, jr_060_6d03

    ccf
    ld b, e
    cp a
    ld d, c
    rst $28
    inc e
    db $e3
    adc [hl]
    pop af
    inc bc
    db $fc
    ld [bc], a
    db $fd
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    db $ec
    rst $30
    ld [$9867], sp
    cp $00
    rst $38
    nop
    cp $01
    inc bc
    ld bc, $008f
    rst $38
    nop
    ld h, e
    add b
    and e
    nop
    daa
    ld bc, $05ef
    jp hl


    rlca
    ld a, e

jr_060_6d6d:
    call Call_000_20f9
    call $9d00
    nop
    jp c, $ba05

    ld b, l
    di
    ld l, l
    adc d
    ld [hl], l
    add h
    ld h, e
    rst $28
    nop
    db $d3
    nop
    ld h, c
    add d
    rst $08
    ld b, $e2
    ld a, h
    xor d
    db $f4
    adc d
    db $f4
    sbc b
    db $ec
    dec d
    add sp, $15
    add sp, $15
    add sp, -$5a
    ld e, c
    xor [hl]
    ld e, c
    rlca
    ld hl, sp-$39
    ld hl, sp+$37
    ld [$001c], sp
    jr c, jr_060_6da2

jr_060_6da2:
    add hl, hl
    nop
    ld a, c
    db $10
    dec a
    ld a, e
    add b
    ld a, a
    ei
    rlca
    ld [de], a
    rrca
    ret nc

    rrca
    rrca
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    cp h
    ld a, a
    ld d, a
    cp h

jr_060_6dbc:
    rlca
    ld hl, sp+$02
    dec e
    ld bc, $030f
    rrca
    inc bc
    rrca
    inc bc
    rrca
    ld bc, $000f
    rra
    ld [$001f], sp
    rst $38
    rra
    nop
    rst $30
    nop
    sbc c
    ld [hl], b
    adc l
    ld [hl], b
    inc de
    ld h, c
    ld e, c
    jr nz, jr_060_6dbc

    jr nz, jr_060_6d6d

    ld [hl], c
    ld a, [hl-]
    pop hl
    inc sp
    pop hl
    db $ec
    rst $38
    pop de
    rst $38
    jr z, @+$01

    rst $38
    rst $38
    rst $38
    ld a, a
    pop bc
    rst $38
    ldh a, [$df]
    jp z, $a7c5

    ret nz

    sub e
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$68
    ld a, a
    db $fc
    rrca
    pop af
    rrca
    or $09
    db $ed

jr_060_6e05:
    jr nc, jr_060_6e05

    nop
    sbc [hl]
    ldh [$1f], a
    ldh [$3f], a
    ldh [rSCX], a
    db $fc
    ld [bc], a
    db $fd
    ld [hl], b
    sbc a
    ld a, c
    sbc a
    nop
    rst $38
    and b
    ld e, a
    ldh a, [$cf]
    db $dd
    rst $20
    ld b, a
    ld hl, sp-$09
    dec e
    cp $03
    ld a, $c7
    ld h, e
    rst $38
    add h
    rst $38
    rla
    cp $ff
    ret c

    ld l, a
    sbc b
    ei
    adc a
    db $e4
    rst $18
    ld hl, $81ff
    rst $38
    ld [hl+], a
    db $fd
    call z, $ef3f
    ld a, a
    ei
    rst $38
    adc a
    rst $38
    adc $ff
    and c
    ld a, a
    ld sp, hl
    ccf
    ret z

    cp a
    cp [hl]
    rst $08
    nop
    rst $38
    ld a, [bc]
    push af
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
    rla
    jr jr_060_6e84

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_060_6e94

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_060_6ea4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_060_6eb4

    ld [hl-], a

jr_060_6e84:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_060_6ec4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_060_6e94:
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
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_060_6ea4:
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
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_060_6eb4:
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

jr_060_6ec4:
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
    dec d
    ld d, $17
    jr jr_060_6f84

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_060_6f94

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_060_6f84:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_060_6fc4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $01
    ld bc, $0101

jr_060_6f94:
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

jr_060_6fc4:
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
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld b, $03
    inc bc
    inc bc
    dec b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0400
    inc b
    ld b, $03
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    inc b
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $f4
    rst $38
    ld hl, sp-$01
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $10
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    and e
    rst $38
    sbc e
    rst $38
    sub e
    rst $38
    ld de, $19ff
    rst $38
    and c
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    cp h
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, a
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
    rst $38
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
    ld a, [c]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ccf
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38

Jump_060_718e:
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $ec
    rst $38
    ret z

    rst $38
    ld [$18ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    jr @+$01

    jr @+$01

    inc e
    rst $38
    ld a, $ff
    inc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, $ff
    jr nc, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    call nc, $d5ff
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    add e
    ld a, a
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    cp b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $db
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
    ld a, a
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    reti


    rst $38
    push af
    rst $38
    pop af
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    ld bc, $1fff
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    or $ff
    adc $ff
    adc [hl]
    rst $38
    adc $ff
    adc $ff
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    ld a, a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    inc c
    di
    ld [$39f7], sp
    rst $00
    ld a, e
    add a
    xor e
    rst $10
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    adc a
    rst $38
    and e
    rst $38
    and d
    rst $38
    sub b
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ld hl, sp-$01
    inc a
    rst $38
    inc e
    rst $38
    add l
    rst $38
    set 7, a
    add [hl]
    rst $38
    and e
    rst $38
    di
    rst $38
    ld a, [$ffff]
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
    rrca
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    db $e3
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    sbc e
    rst $38
    adc c
    rst $38
    sbc h
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    add c
    rst $38
    add b
    rst $38
    adc c
    rst $38
    add c
    rst $38
    ldh [rIE], a
    cp $ff
    cp $ff
    cp $ff
    cp h
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld l, $ff
    cpl
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld h, a
    rst $38
    ld e, a
    rst $38
    ld d, a
    rst $38
    ld [hl], a
    rst $38
    ld e, a
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
    rst $28
    rst $38
    xor $ff
    db $ec
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ld bc, $0bff
    rst $38
    ld de, $13ff
    rst $38
    dec bc
    rst $38
    cpl
    rst $38
    rst $38
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
    cp $ff
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
    cp $ff
    cp a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    inc sp
    rst $38
    pop af
    rst $38
    cp l
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_060_73ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld a, [$fbff]
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    ld e, $ff
    cp a
    rst $38
    ccf
    rst $38
    xor [hl]
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    cp a

Jump_060_743d:
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, l
    rst $38
    ld c, c
    rst $38
    add sp, -$01
    ld c, b
    rst $38
    add sp, -$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
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
    sbc $ff
    sbc $ff
    adc $ff
    rst $08
    rst $38
    rst $08
    rst $38
    add $ff
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    push bc
    rst $38
    db $e4

jr_060_748b:
    rst $38
    rst $20
    rst $38
    and c
    rst $38
    db $ec
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, [bc]
    db $fd
    jr @+$01

    db $10
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    sub b
    rst $28
    and b
    rst $18
    jr nz, jr_060_748b

    ret nz

    rst $38
    ldh a, [rIE]
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
    rst $28
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld c, a
    rst $38
    ld a, c
    rst $38
    add hl, de
    rst $38
    cp c
    rst $38
    cp l
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    xor $ff
    push de
    rst $38
    cp $ff
    db $ec
    rst $38
    call z, $c4ff
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    and c
    rst $38
    add c
    rst $38
    inc hl
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    ld e, [hl]
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    pop af
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    xor $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    dec a
    rst $38
    rla
    rst $38
    cpl
    rst $38
    daa
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, [$feff]
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
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    reti


    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $fd
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
    dec a
    rst $38
    dec a
    rst $38
    dec l
    rst $38
    inc [hl]
    rst $38
    add hl, sp
    rst $38
    inc bc
    rst $38
    inc sp
    rst $38
    ld de, $33ff
    rst $38
    or e
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    sbc a
    rst $38
    sbc b
    rst $38
    cp d
    db $fd
    sbc b
    rst $38
    sbc [hl]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld bc, $01ff
    rst $38
    pop bc
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp $ff
    db $fd
    cp $3c
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld d, $ff
    ld a, [bc]
    rst $38
    jp nz, $c0ff

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, [$dfff]
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    scf
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld a, e
    rst $38
    cp $ff
    rst $38
    rst $38
    db $db
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    sbc a
    rst $38
    sub [hl]
    rst $38
    and b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $28
    ret nz

    rst $38
    ld [c], a
    db $fd
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    rst $30
    ld hl, sp+$76
    ld hl, sp-$0c
    ld hl, sp-$4c
    ld hl, sp-$51
    ldh a, [rNR12]
    rst $38
    ld c, c
    cp $a2
    db $fc
    xor $f0
    db $ed
    ld a, [c]
    db $eb
    db $f4
    rst $20
    ld hl, sp-$09
    ld hl, sp-$13
    ld a, [$fef9]
    ld a, l
    cp $79
    cp $79
    cp $f8
    rst $38
    or h
    rst $38
    pop af
    cp $f1
    cp $a1
    cp $c1
    cp $e1
    cp $fb
    cp $fa
    rst $38
    cp c
    rst $38
    sbc h
    rst $38
    cp h
    rst $38
    or [hl]
    db $fd
    sbc [hl]
    db $fd
    sbc h
    rst $38
    db $ed
    cp $fd
    cp $3a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    cp h
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ret nc

    rst $38
    ld [de], a
    rst $38
    sub d
    rst $38
    ld [de], a
    rst $38
    sub [hl]
    rst $38
    jr @+$01

    jr nc, @+$01

    ld a, [$80f7]
    rst $38
    sbc h
    rst $38
    rla
    rst $38
    rra
    rst $38
    rst $10
    rst $28
    pop de
    rst $28
    add b
    rst $38
    ld bc, $01ff
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    jr nz, @-$1f

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
    nop
    rst $38
    jp $c0ff


    rst $38
    and [hl]
    rst $38
    and [hl]
    rst $38
    ldh [rIE], a
    inc b
    rst $38
    ld hl, $20fe
    rst $38
    nop
    rst $38
    ld l, e
    sub h
    nop
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ei
    rst $38

jr_060_76be:
    add d
    db $fd
    ld [hl], b
    rst $38
    jr nc, @+$01

    ld a, $ff
    ccf
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    cpl
    rst $38
    dec c
    rst $38
    nop
    rst $38
    inc sp
    db $fc
    db $10
    rst $38
    jr nc, @+$01

    cpl
    rst $38
    ld c, [hl]
    rst $38
    jp z, $c5ff

    ld a, [$ff80]
    adc [hl]
    pop af
    sbc e
    db $e4
    ld a, [de]
    push hl
    ld a, [de]
    push hl
    sbc [hl]
    pop hl
    sbc [hl]
    pop hl
    sbc $e0
    reti


    db $e4
    jp hl


    db $e4
    call z, $cfe4
    db $e4
    ld b, h
    rst $20
    ld [de], a
    db $e4
    jr nc, jr_060_76be

    inc b

jr_060_76ff:
    ldh [$d8], a
    db $e4
    db $d3
    db $e4
    sub a
    ld [c], a
    adc a
    ldh a, [$0d]
    ldh a, [rNR24]
    ldh [rNR11], a
    add sp, $14
    jp hl


    inc l
    ret nc

    ld c, c
    db $f4
    ld a, l
    db $e4
    add hl, bc
    db $e4
    db $db
    and h
    rrca
    db $e4
    rst $30
    db $eb
    ld h, c
    ei
    cp c
    ld b, e
    cp a
    ld b, e
    ld e, a
    db $e3
    ld c, e
    rst $20
    and a
    adc $a7
    rst $08
    rst $20
    rst $08
    ld d, a
    rst $28
    jr nc, jr_060_76ff

    ld h, b
    sbc e
    ld d, b
    cp l
    ld [hl], b
    sbc a
    ld a, a
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    cp a
    rra
    rlca
    ccf

jr_060_7742:
    inc sp
    rra
    add l
    rra
    ld bc, $019f
    sbc a
    add b
    sbc a
    sub b
    adc a
    and b
    sbc a
    cpl
    sbc a
    and a
    rra
    ld l, a
    sbc a
    rst $28
    rra
    rst $28
    rra
    rst $30
    rrca
    ld a, a
    add e
    ld a, e
    add a
    di
    rrca
    di
    rrca
    ld [hl], b
    adc a
    ld b, h
    cp a
    ld e, b
    xor a
    db $10
    call $f804
    ld a, b
    add b
    jr z, jr_060_7742

    rst $28
    ldh a, [$37]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$01
    cp $80
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld a, [bc]
    rst $30
    dec b
    ei
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $38ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    inc a
    rst $38
    sbc h
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld b, a
    cp a
    rra
    rst $38
    ld b, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld l, a
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    call Call_060_60ff
    rst $38
    ld hl, sp+$1f
    ret nz

    ccf
    ld c, $f1
    ld [hl], h
    ei
    ccf
    rst $38
    rra
    rst $38
    ret nz

    ccf
    ret nc

    ccf
    push bc
    ccf
    rlca
    rst $38
    call nc, $f92f
    ld b, $09
    or $e8
    rlca
    xor a
    rra
    rrca
    rra
    ld a, b
    rra
    add sp, $1f
    jp c, $fb3f

    ld a, h
    sub b
    ld a, b
    jr z, @+$12

    inc e
    nop
    jr z, jr_060_7810

    ld a, [$1b04]
    rlca
    sub c
    rrca
    ld [hl], e
    add b
    jr c, jr_060_780a

jr_060_780a:
    rra
    ldh [rIE], a
    pop hl
    rst $38
    pop hl

jr_060_7810:
    ret nz

    db $e3
    nop
    inc de
    nop
    stop
    nop
    nop
    inc e
    ld [$105e], sp
    sbc $98
    rst $18
    rst $38
    inc e
    cp h
    inc c
    cp [hl]
    jr jr_060_7866

    rra
    dec sp
    rra
    ld a, [$fabf]
    rst $38
    ld a, [$fa2f]
    rrca
    cp d
    rrca
    cp d
    rrca
    cp d
    cpl
    ld a, [$fb2f]
    cp a
    ei
    sbc a
    ld sp, hl
    cp a
    ei
    rst $28
    ei
    rst $08
    ei
    rst $08
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
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
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rrca
    ccf

jr_060_7866:
    rrca
    ld a, a
    cpl
    rst $38
    rrca
    ccf
    inc b
    rrca
    ld b, $07
    nop
    nop
    ret nz

    jr nc, @-$7e

    ld h, b
    ld h, b
    sbc c
    cpl
    rst $18
    add a
    ld a, a
    dec sp
    rst $30
    nop

Call_060_787f:
    rst $38
    ld bc, $1fff
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    jp $e0ff


    rst $38
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    rst $18
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc [hl]
    rst $38
    jr nc, @+$01

    ld bc, $81ff
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ld a, [hl]
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $28
    inc sp
    rst $08
    ld [hl], c
    adc a
    db $e4
    rra
    inc c
    rst $38
    ld [$f8ff], a
    rst $38
    ld a, [$fffd]
    ld hl, sp+$1e
    ld sp, hl
    jr @+$01

    inc b
    ei
    sbc c
    ld a, [hl]
    call z, $ee3f
    rra
    ld c, h
    cp a
    push af
    rst $38
    or l
    ld b, b
    rra
    ldh [rNR23], a
    rst $38
    ld a, [c]
    ld sp, hl
    inc de
    db $fc
    add hl, de
    jr nz, jr_060_791c

    nop
    di
    inc e
    ret nz

    jr nc, jr_060_7928

    jr jr_060_7914

    ldh [$f0], a
    ret z

    or c
    ld c, a
    xor a
    ld a, a
    ld l, b
    rst $38
    ld sp, hl
    rst $38
    cp h
    rst $38
    sbc l
    cp $8b
    db $fc

jr_060_7914:
    adc c
    db $fc
    call c, $dde0
    ld h, b
    cp $20

jr_060_791c:
    rst $38
    jr c, @+$01

    ld a, b
    rrca
    rrca
    cpl
    cpl
    ld b, c
    ld b, c
    nop
    nop

jr_060_7928:
    ld bc, $7c00
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    rrca
    ld hl, sp+$07
    ld a, h
    inc bc
    ld a, $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    rst $18
    nop
    ccf
    nop
    cp a
    nop
    ld d, a
    nop
    ld d, $00
    inc e
    nop
    jr z, jr_060_7958

jr_060_7958:
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
    inc b
    ld a, a
    ld [de], a
    ld a, a
    di
    nop
    ei
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ld hl, sp-$71
    db $fc
    rst $38
    db $fc
    rst $38
    rst $30
    rst $38
    pop bc
    cp $ce
    rst $30
    and $ff
    xor $ff
    db $fc
    rst $38
    rst $38
    cp $04
    rst $38
    ldh [rIE], a
    jr c, @+$01

    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    or c
    rst $38
    and $f9
    rrca
    ldh a, [$57]
    xor b
    ld b, e
    cp h
    ld h, b
    rst $38
    ld a, [$beff]

jr_060_79a9:
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38

jr_060_79b0:
    adc b
    rst $30
    add h
    ei
    dec b
    ld a, [$fd02]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, c

jr_060_79c1:
    rst $38
    add [hl]
    rst $38
    jp $f0ff


    rst $38
    sbc l
    rst $38
    ld d, $ff
    add hl, de
    rst $38
    db $e3
    rst $18
    scf
    rst $08
    rla

jr_060_79d3:
    rst $28
    jr c, @-$37

    ld b, $f9
    jr nc, jr_060_79a9

    inc h
    rst $18
    ld h, b
    rst $38
    nop
    rst $38
    jr z, jr_060_79c1

    ld bc, $87fe
    ld a, b
    add $39
    add b
    ld a, a
    jr jr_060_79d3

    rst $00
    ld hl, sp-$69

Jump_060_79ef:
    jr c, jr_060_79b0

    ld a, b
    ld a, d
    db $fd
    sbc [hl]
    rst $38
    cp $03
    ld l, c
    sub b
    db $fd
    nop
    ld a, a
    add b
    ldh [rP1], a
    pop bc
    inc bc
    add a
    inc bc
    rrca
    rra
    sub a
    rrca
    cp a
    nop
    inc h
    ld [$00ae], sp
    adc d
    ld bc, $0000
    ld [hl], b
    rst $08
    add hl, hl
    rst $00
    call nz, $a103
    ld [bc], a
    ret z

    nop
    ld b, c
    nop
    ld [c], a
    nop
    dec [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $ffff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $c2
    inc a
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, [hl]
    nop
    ld e, $00
    ld e, $00
    ld e, $00
    ld a, $00
    ld a, $00
    jp $c1ff


    rst $38
    jp $bfff


    rst $38
    cp a
    rst $30
    rst $38
    ret nz

    ld hl, sp+$10
    dec b
    nop
    rst $38
    ld b, $ff
    db $10
    rra
    ldh [$1f], a
    ldh [rDIV], a
    ei
    ld h, [hl]
    sbc a
    add hl, hl
    rst $18
    add [hl]
    rst $38
    ret z

    scf
    ld hl, $3fde
    ret nz

    ccf
    ret nz

    adc a
    ldh a, [$60]
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    push bc
    ld a, [$fffc]
    add c
    rst $38
    ld [c], a
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    dec a
    rst $38
    rra
    rst $38
    ld [bc], a
    rst $38
    daa
    rst $18
    and e
    ld e, a
    db $e3
    rra
    rst $30
    rrca
    di
    rrca
    rst $30
    rrca
    rst $38
    rlca
    ld [hl], e
    adc a
    ld e, e
    cp a
    db $dd
    ccf
    db $dd
    ccf
    ld c, a
    cp a
    ld de, $f8ff
    rst $38
    rst $38
    rst $38
    or c
    rst $38

jr_060_7ac2:
    nop
    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    ldh a, [rIE]
    cp b
    rst $38
    add hl, de
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $09ff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    jp $c23f


    ccf
    add sp, $1f
    inc c
    rst $38
    db $ec
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    add $3f
    inc e
    rst $38
    ld a, h
    rst $38
    ld a, e
    rst $38
    jr @+$01

    add c
    ld e, $d1
    adc [hl]
    ldh a, [rIF]
    adc a
    ld bc, $245b
    add hl, sp
    nop
    sbc l
    ld h, b
    ret z

    scf
    ld [$e5c7], sp
    ld a, [de]
    or h
    rrca
    inc a
    call nz, Call_000_00d5
    ld d, a
    nop
    add hl, bc
    scf
    pop de
    ccf
    add hl, de
    rst $38
    jr @+$01

    inc e
    rst $38
    add b
    ld a, [hl]
    ld c, b
    nop
    xor $00
    or $00
    db $fc

Jump_060_7b27:
    ret nz

    ld a, l
    ret nz

    ccf
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    inc a
    db $fc
    ld a, [hl]
    cp [hl]
    ld a, a
    cp a
    ccf
    rst $38
    ld a, $fe
    ld a, h
    db $fc
    ld a, l
    db $fd
    ld a, a
    rst $38
    jr nz, jr_060_7ac2

    db $10
    add b
    inc d
    add b
    inc b
    add b
    ld bc, $1080
    add b
    add hl, de
    add b
    inc c
    add b
    nop
    add b
    sbc e
    add c
    rst $38
    rst $08
    rst $08
    add a
    rst $00
    add [hl]
    rst $00
    add d
    rst $00
    add d
    add e
    add d
    add e
    add e
    add c
    add e
    add c
    add c
    add b
    add c
    add b
    xor b
    nop
    add b
    ld bc, $01b0
    cp $0e
    ccf
    jr @+$41

    ld h, d
    rra
    ld c, [hl]
    ccf
    sbc l
    ld a, [hl]
    ld l, [hl]
    sbc a
    sbc $3f
    db $10
    rst $38
    ld [hl], b
    adc a
    ld de, $0aef
    rst $38
    ld h, b
    rst $38
    add b
    ld a, a
    jr @+$01

Jump_060_7b8c:
    add b
    ld a, a
    inc e
    rst $38
    adc h
    ld a, e
    ld e, b
    rst $38
    sbc $ff
    rrca
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    sbc c
    rst $20
    ld bc, $02ff
    rst $38
    add h
    ei
    add b
    rst $38
    db $10
    rst $28
    adc [hl]
    pop af
    add d
    db $fd
    db $e3
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    rst $20
    rst $38
    rst $38
    rst $38
    jr @+$01

    pop bc
    cp [hl]
    and c
    sbc $86
    ld sp, hl
    sbc a
    rst $38
    ccf
    rst $38
    add hl, sp
    rst $38
    jr c, @+$01

    ld a, $ff
    dec de
    rst $38
    nop
    rst $38
    ld d, d
    rst $38
    ret nc

    rst $38
    adc b
    rst $38
    db $e4
    rst $38
    sbc h
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    ret nz

    ld d, $e1
    nop
    rst $38
    inc c
    rst $38
    inc h
    rst $18
    inc sp
    call z, $b847
    inc a
    rst $38
    ld b, l
    cp a
    dec bc
    rst $38
    adc e
    rra
    pop bc
    ccf
    ld b, d
    ccf
    ld c, b
    cp a
    adc b
    ld a, a
    ld a, [$377d]
    ld a, h
    ld hl, $007e
    ld a, a
    or b
    ld c, a
    ld a, l
    rrca
    ld l, a
    rrca
    ld l, [hl]
    rrca
    ld [hl], $c0
    jr z, jr_060_7c54

    or h
    ld c, b
    sub $a8
    ld c, e
    or h
    dec b
    ld hl, sp-$3f
    jr c, jr_060_7c52

    nop
    ld [hl], a
    jp z, Jump_060_7b8c

    jr nc, jr_060_7c75

    or d
    dec c
    ld l, b
    adc l
    ld l, b
    adc l
    ld sp, $b98f
    add a
    adc b
    rst $10
    push hl
    jp c, Jump_060_60df

    cp h
    ld b, b
    ld hl, sp-$7c
    ld a, [c]
    adc l
    push hl
    dec bc
    cp a
    inc bc
    ld sp, $378e
    adc b
    ld a, [hl]
    add c
    di
    inc c
    ldh a, [rIF]
    ld l, [hl]
    sub l
    sub c
    ccf
    or e
    ld a, a
    adc a
    ld d, c

jr_060_7c52:
    ld c, [hl]
    sub c

jr_060_7c54:
    cp $01
    ld e, h
    inc hl
    ret nz

    ccf
    call $7636
    dec b
    ld [hl], e
    inc b
    dec a
    rst $20
    inc a
    rst $20
    sub h
    rst $28
    add h
    rst $38
    dec [hl]
    rst $18
    add $39
    adc $01
    ld a, b
    add b
    db $d3
    inc c
    ld d, a
    cp b
    rra

jr_060_7c75:
    ldh a, [$f8]
    rlca
    sbc a
    ld a, a
    cp b
    rst $38
    add [hl]
    rst $38
    cpl
    rst $38
    cp $ff
    db $fc

Call_060_7c83:
    rst $38
    ld e, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $80ff
    ld a, a
    nop
    rst $38
    ret nz

    rst $38
    call nz, $e7fb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    db $ec
    di
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    ret nz

    db $fc
    inc bc
    ld c, d
    or l
    pop hl
    ld e, $e0
    rra
    ret nz

    rst $38
    ldh [rIE], a
    pop af
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    adc c
    cp $68
    rst $38
    pop bc

jr_060_7cd5:
    cp $c3
    db $fc
    db $fd
    cp $e0
    rst $38
    ldh [rIE], a
    xor b
    rst $10
    ld c, b
    or a
    or h
    ld c, a
    ld [$411d], a
    cp a
    ld l, b
    sbc a
    ret c

    ccf
    cp c
    ld a, [hl]
    cp a
    ld a, h
    cp l
    ld a, [hl]
    ld b, h
    rst $38
    ld hl, sp-$39
    ld a, h
    add e
    ld a, h
    add e
    ld a, [$e007]
    rra
    di
    rrca
    or e
    ld c, a
    inc hl
    ld e, a
    rst $00
    ccf
    ld c, a
    cp a
    ld [hl], c
    adc a
    ld a, c
    add a
    jr c, jr_060_7cd5

    add hl, sp
    add $31
    adc $a1
    ld e, [hl]
    and c
    ld e, [hl]
    sub d
    ld a, l
    jp nz, Jump_060_5a3d

    dec l
    ld d, e
    inc l
    push de
    ld l, $d5
    ld l, $d5
    ld l, $bd
    ld b, [hl]
    or l
    ld c, [hl]
    add c
    ld a, [hl]
    add hl, de
    cp $e0
    ccf
    adc [hl]
    ld [hl], c
    or $09
    ld a, [hl]
    ld bc, $032c
    ld [hl], h
    dec bc
    ld e, h
    inc hl
    call nc, $d02b
    xor a
    jp Jump_060_57fc


    add sp, $0f
    ld h, b
    ld c, [hl]
    ld hl, $255a
    reti


    daa
    inc hl
    rst $18
    ld h, d
    rst $18
    ld [hl], d
    rst $08
    cp $c3
    cp $c3
    cp $c3
    jp c, Jump_000_0ae7

    rst $30
    or b
    ld e, a
    and h
    ld e, a
    and h
    ld e, a
    ldh a, [$1f]
    ldh a, [$1f]
    or h
    ld e, a
    sbc b
    ld a, a
    inc c

jr_060_7d69:
    rst $38
    ld b, h
    rst $38
    cp b
    ld c, a
    jr c, jr_060_7d77

    cp [hl]
    ld bc, $01fe
    db $fd
    ld [bc], a
    rst $38

jr_060_7d77:
    add b
    add c
    cp $0e
    rst $38
    ld l, h
    rst $38
    ld hl, sp-$01
    jr jr_060_7d69

    add a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    ld b, c
    rst $38
    add [hl]
    rst $38
    ld hl, sp-$01
    db $e3
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld h, e
    sbc a
    ld [hl], b
    adc a
    sub h
    rst $28
    rst $20
    rst $38
    pop bc
    rst $38
    ld b, $f9
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, h
    rst $38
    ld a, b
    rst $38
    cp $ff
    cp $ff
    ld a, b
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp b
    ld a, a
    inc l
    rst $18
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld bc, $10ff
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    rst $28
    rst $38
    ld c, a
    rst $38
    cpl
    rst $18
    ld c, a
    cp a
    rra
    rst $38
    ld e, [hl]
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    sub l
    rst $38
    add hl, sp
    rst $38
    inc sp
    rst $38
    sub a
    ld a, a
    sbc a
    ld a, a
    adc h
    ld a, a
    add b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    sub c
    ld l, a
    ld [hl], d
    adc a
    ld [hl], e
    adc a
    add e
    rst $38
    add a
    rst $38
    adc l
    rst $38
    add hl, bc
    rst $38
    ld bc, $21ff
    rst $18
    sub c
    ld l, a
    inc de
    rst $28
    ld sp, $19cf
    rst $20
    push de
    cpl
    jp $c33f


    ccf
    jp $d53e


    ld a, $d0
    ccf
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $28
    ld d, $ef
    ld d, $ef
    ld e, $ef
    rla
    rst $28
    rrca
    rst $38
    ld c, [hl]
    rst $38
    ld c, b
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $18
    ld [bc], a
    rst $38
    nop
    rst $38
    ld h, b
    cp a
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $38
    ld a, $ff
    cp $ff
    ld [$66ff], a
    rst $38
    ld h, b
    rst $38
    ld l, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld h, [hl]
    rst $38
    ld a, e
    rst $38
    ld a, c
    rst $38
    ld d, c
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    ld [hl-], a
    rst $38
    ld a, $ff
    cp [hl]
    ld a, a
    sbc $3f
    db $eb
    inc e
    ret z

    scf
    nop
    rst $38
    nop
    rst $38
    ld de, $f8fe

Call_060_7e81:
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    add d
    rst $38
    inc c

jr_060_7e97:
    di
    nop

jr_060_7e99:
    rst $38
    ld [bc], a
    db $fd
    inc b
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    ld b, e
    cp a
    inc bc
    rst $38
    ld b, $ff
    add b
    rst $38
    ret z

    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_060_7e97

    jr nz, jr_060_7e99

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    db $db
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    dec sp
    rst $38
    jr c, @+$01

    ld a, c
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
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
    ld a, a
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    db $e3
    rst $38
    and e
    rst $38
    daa
    rst $38
    ld de, $18ff
    rst $38
    ld a, [de]
    rst $38
    ld bc, $81ff
    rst $38
    add b
    rst $38
    jp $c4ff


    rst $38
    call nz, $f2ff
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld d, [hl]
    rst $28
    ld b, [hl]
    rst $38
    ld b, l
    rst $38
    ld bc, $06ff
    rst $38
    ld b, [hl]
    cp a
    ld c, e
    cp a
    ld b, a
    cp a
    inc de
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    and d
    rst $38
    jp nz, Jump_060_46ff

    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec c
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    scf
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld h, a
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    db $eb
    rst $38
    db $db
    rst $38
    ld sp, hl
    rst $38
    call $6fff
    rst $38
    ccf
    rst $38
    add c
    rst $38
    inc b
    rst $38
    ld [bc], a
    db $fd

Call_060_7f7e:
    and a
    ld e, b
    inc bc
    db $fc
    rst $00
    ld hl, sp+$03
    rst $38
    ld a, b
    rst $38
    ei
    db $fc
    db $fd
    cp $fe
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    nop
    rst $38
    or $ff
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld h, a
    rst $38
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
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
    rst $28
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    db $ed
    rst $38
    call z, $88ff
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    di
    rst $38
    or e
    rst $38
    inc sp
    rst $38
    scf
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
