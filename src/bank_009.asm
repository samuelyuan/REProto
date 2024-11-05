SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    rst $38
    ld a, a
    rst $28
    ld a, a
    ld b, h
    ld c, d
    rra

jr_009_4007:
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    nop
    nop
    ldh [$03], a
    nop
    ld [bc], a
    ldh [rP1], a
    nop
    ld [hl], h
    nop
    ld d, b
    nop
    jr nc, jr_009_403e

    nop
    or $7f
    rst $28
    ld l, l
    nop
    jr nc, jr_009_4007

    nop
    cp a
    ld e, d
    push de
    inc e
    dec bc
    nop
    ldh [rP1], a
    rst $38
    ld l, a
    sub h
    ld b, [hl]
    adc h
    ld hl, $00e0
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h

jr_009_403e:
    nop
    ld a, h
    rst $38
    ld a, a
    rst $28
    ld a, a
    ld b, h
    ld c, d
    rra
    nop
    rst $38
    ld a, a
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    nop
    nop
    ldh [$03], a
    nop
    ld [bc], a
    ldh [rP1], a
    nop
    ld [hl], h
    nop
    ld d, b
    nop
    jr nc, jr_009_407e

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    rra
    nop
    ldh [$7f], a
    ld h, b
    dec l

jr_009_407e:
    nop
    ld a, h

InventoryFile1PaletteBGP:: ; 0x4080
    db $ff, $7f, $ef, $7f, $44, $4a, $1f, $00, $ff, $7f, $94, $52, $4a, $29, $00, $00
    db $00, $00, $e0, $03, $00, $02, $e0, $00, $00, $74, $00, $50, $00, $30, $1f, $00
    db $f6, $7f, $ef, $6d, $00, $30, $e0, $00, $d5, $1c, $50, $08, $0b, $00, $e0, $00
    db $94, $46, $8c, $21, $0b, $00, $e0, $00, $00, $7c, $00, $7c, $00, $7c, $00, $7c
    
InventoryFile2PaletteBGP:: ; 0x40c0
    db $ff, $7f, $ef, $7f, $44, $4a, $1f, $00, $ff, $7f, $94, $52, $4a, $29, $00, $00
    db $00, $00, $e0, $03, $00, $02, $e0, $00, $00, $74, $00, $50, $00, $30, $1f, $00
    db $f6, $7f, $ef, $6d, $00, $30, $e0, $00, $2f, $4a, $e4, $30, $00, $14, $e0, $00
    db $94, $46, $8c, $21, $00, $14, $e0, $00, $00, $7c, $00, $7c, $00, $7c, $00, $7c

InventoryFile3PaletteBGP:: ; 0x4100
    db $ff, $7f, $ef, $7f, $44, $4a, $1f, $00, $ff, $7f, $94, $52, $4a, $29, $00, $00
    db $00, $00, $e0, $03, $00, $02, $e0, $00, $00, $74, $00, $50, $00, $30, $1f, $00
    db $f6, $7f, $ef, $6d, $00, $30, $e0, $00, $f5, $36, $ab, $11, $a0, $00, $e0, $00
    db $94, $46, $8c, $21, $a0, $00, $e0, $00, $00, $7c, $00, $7c, $00, $7c, $00, $7c

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    add b
    ld a, a
    add b
    ld h, c
    add b
    ld [hl], e
    add b
    db $10
    ldh [$1f], a
    ldh [$c0], a
    ld a, a
    ret nz

    rst $38
    rst $38
    ld [$ffff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ei
    db $fc
    ei
    db $fc
    ld a, [$3bfc]
    db $fc
    cp b
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    xor d
    ldh a, [rIE]
    rst $30
    ld hl, sp-$09
    ld hl, sp+$05
    ld hl, sp+$7c
    add b
    ld a, h
    add b
    ld d, h
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld a, a
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rlca
    ei
    rlca
    add sp, $07
    sbc a
    nop
    adc a
    nop
    push de
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    ld b, b
    add b
    ld a, a
    add b
    ldh a, [rIF]
    ret nc

    rrca
    db $10
    rrca
    rst $30
    ld a, [bc]
    rlca
    rst $38
    nop
    rst $38
    rst $30
    xor b
    rlca
    ld hl, sp-$03
    nop
    db $fc
    nop
    ld d, h
    nop
    nop
    nop
    nop
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
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    rra
    push af
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    inc bc
    nop
    ld bc, $1f00
    nop
    ld bc, $0300
    nop
    pop bc
    nop
    ld b, e
    add b
    ld b, c
    add b
    ld b, e
    add b
    ld b, c
    add b
    ld b, e
    add b
    ld b, c
    add b
    jp $c100


    nop
    ld b, e
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    nop
    ld a, a
    nop
    ld b, b
    ccf
    add b
    ld a, a
    ld bc, $3fff
    db $eb
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
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
    ld bc, $0002
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0000], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    rrca
    db $10
    ld de, $1312
    nop
    nop
    nop
    inc d
    dec d
    dec d
    ld d, $00
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
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    db $fc
    db $fc
    rst $38
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
    db $fd
    cp $f8
    rst $38
    ldh a, [rIE]
    db $e4
    ei
    call z, $94f3
    db $e3
    inc [hl]
    jp $a354


    inc [hl]
    jp $a354


    inc [hl]
    jp $a354


    inc [hl]
    jp $a354


    inc [hl]
    jp $0314


    db $f4
    inc bc
    push de
    inc hl
    or [hl]
    ld b, b
    ld d, l
    and d
    or l
    ld b, d
    ld d, h
    and e
    or h
    ld b, e
    ld d, h
    and e
    inc [hl]
    jp $a354


    ld [hl+], a
    pop bc
    ld h, d

jr_009_43d3:
    add c
    ld b, c
    add b
    ld b, c
    add b
    inc e
    add b
    inc hl
    sbc h
    ld e, l
    cp [hl]
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    cp a
    jr nz, jr_009_43d3

    db $10
    rst $28
    ld [$04f7], sp
    ei
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    jr @+$01

    ld h, b
    rst $38
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
    rst $38
    nop
    ld a, a
    add b
    nop
    add b
    ccf
    ret nz

    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    add b
    ld a, a
    adc b
    ld [hl], a
    sbc h
    ld h, e
    cp [hl]
    ld b, c
    rst $38
    nop
    add hl, hl
    sub $ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    add b
    ld a, a
    add b
    ld h, c
    add b
    ld [hl], e
    add b
    db $10
    ldh [$1f], a
    ldh [$c0], a
    ld a, a
    ret nz

    rst $38
    rst $38
    ld [$ffff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ei
    db $fc
    ei
    db $fc
    ld a, [$3bfc]
    db $fc
    cp b
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    xor d
    ldh a, [rIE]
    rst $30
    ld hl, sp-$09
    ld hl, sp+$05
    ld hl, sp+$7c
    add b
    ld a, h
    add b
    ld d, h
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld a, a
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rlca
    ei
    rlca
    add sp, $07
    sbc a
    nop
    adc a
    nop
    push de
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    ld b, b
    add b
    ld a, a
    add b
    ldh a, [rIF]
    ret nc

    rrca
    db $10
    rrca
    rst $30
    ld a, [bc]
    rlca
    rst $38
    nop
    rst $38
    rst $30
    xor b
    rlca
    ld hl, sp-$03
    nop
    db $fc
    nop
    ld d, h
    nop
    nop
    nop
    nop
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
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    rra
    push af
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    inc bc
    nop
    ld bc, $1f00
    nop
    ld bc, $0300
    nop
    pop bc
    nop
    ld b, e
    add b
    ld b, c
    add b
    ld b, e
    add b
    ld b, c
    add b
    ld b, e
    add b
    ld b, c
    add b
    jp $c100


    nop
    ld b, e
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    nop
    ld a, a
    nop
    ld b, b
    ccf
    add b
    ld a, a
    ld bc, $3fff
    db $eb
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    nop
    nop
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    nop
    nop
    ld d, $17
    jr jr_009_45fe

    ld a, [de]
    dec de
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_009_45f0

jr_009_45f0:
    nop
    nop
    ld hl, $2222
    inc hl
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a

jr_009_45fe:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
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
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    db $fc
    db $fc
    rst $38
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
    db $fd
    cp $f8
    rst $38
    ldh a, [rIE]
    db $e4
    ei
    call z, $94f3
    db $e3
    inc [hl]
    jp $a354


    inc [hl]
    jp $a354


    inc [hl]
    jp $a354


    inc [hl]
    jp $a354


    inc [hl]
    jp $0314


    db $f4
    inc bc
    push de
    inc hl
    or [hl]
    ld b, b
    ld d, l
    and d
    or l
    ld b, d
    ld d, h
    and e
    or h
    ld b, e
    ld d, h
    and e
    inc [hl]
    jp $a354


    ld [hl+], a
    pop bc
    ld h, d

jr_009_46c3:
    add c
    ld b, c
    add b
    ld b, c
    add b
    inc e
    add b
    inc hl
    sbc h
    ld e, l
    cp [hl]
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    cp a
    jr nz, jr_009_46c3

    db $10
    rst $28
    ld [$04f7], sp
    ei
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    jr @+$01

    ld h, b
    rst $38
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
    rst $38
    nop
    ld a, a
    add b
    nop
    add b
    ccf
    ret nz

    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    add b
    ld a, a
    adc b
    ld [hl], a
    sbc h
    ld h, e
    cp [hl]
    ld b, c
    rst $38
    nop
    add hl, hl
    sub $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fc
    db $fc
    db $fd
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$04
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    or $ff
    rst $30
    rst $30
    ei
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    inc bc
    ld bc, $ffff
    rst $38
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
    rrca
    rrca
    rst $28
    rrca
    rst $28
    nop
    rst $28
    rlca
    rst $28
    rlca
    rrca
    rlca
    ld a, a
    rlca
    ld a, a
    ld a, a
    ld a, a
    ld [hl], b
    ld a, b
    ld [hl], a
    ld [$fc07], sp
    inc bc
    db $fc
    ei
    db $fc
    di
    db $fc
    inc bc
    db $fc
    ei
    db $fc
    ei
    db $fc
    inc bc
    nop
    rst $38
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    rst $20
    rst $38
    rst $30
    rst $28
    rst $30
    rst $28
    rst $20
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
    ld l, a
    rst $38
    rrca
    sbc a
    ld h, b
    sub c
    ld h, b
    sub l
    ld h, b
    sbc l
    ld h, b
    db $fd
    add hl, bc
    db $fd
    ld l, c
    ei
    db $fd
    ei
    db $fd
    ei
    dec e
    dec sp
    db $dd
    ccf
    pop bc
    ld bc, $01ff
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
    nop
    cp $00
    cp $a6
    cp $fe
    cp $fe
    cp $fe
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
    rra
    rst $38
    rra
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld h, c
    add b
    ld [hl], e
    add b
    db $10
    ldh [$1f], a
    ldh [$c0], a
    ld a, a
    ret nz

    rst $38
    rst $38
    ld [$ffff], a
    rst $38
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
    cp $00
    nop
    cp $00
    cp $00
    cp $00
    nop
    ld [hl], l
    adc d
    cp e
    xor $ff
    rst $38
    rst $38
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
    ld hl, sp-$01
    ei
    db $fc
    ei
    db $fc
    ld a, [$3bfc]
    db $fc
    cp b
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    xor d
    ldh a, [rIE]
    rst $30
    ld hl, sp-$09
    ld hl, sp+$05
    ld hl, sp+$7c
    add b
    ld a, h
    add b
    ld d, h
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld a, a
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rlca
    ei
    rlca
    add sp, $07
    sbc a
    nop
    adc a
    nop
    push de
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    ld b, b
    add b
    ld a, a
    add b
    ldh a, [rIF]
    ret nc

    rrca
    db $10
    rrca
    rst $30
    ld a, [bc]
    rlca
    rst $38
    nop
    rst $38
    rst $30
    xor b
    rlca
    ld hl, sp-$03
    nop
    db $fc
    nop
    ld d, h
    nop
    nop
    nop
    nop
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
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    rra
    push af
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    inc bc
    nop
    ld bc, $1f00
    nop
    ld bc, $0300
    nop
    pop bc
    nop
    ld b, e
    add b
    ld b, c
    add b
    ld b, e
    add b
    ld b, c
    add b
    ld b, e
    add b
    ld b, c
    add b
    jp $c100


    nop
    ld b, e
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    nop
    ld a, a
    nop
    ld b, b
    ccf
    add b
    ld a, a
    ld bc, $3fff
    db $eb
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_009_49b7

    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    nop
    ld e, $1f
    jr nz, jr_009_49ce

    ld [hl+], a
    inc hl
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_009_49e0

jr_009_49b7:
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    cpl
    jr nc, @+$32

    ld sp, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a

jr_009_49ce:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a

jr_009_49e0:
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $05
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    db $fc
    db $fc
    rst $38
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
    db $fd
    cp $f8
    rst $38
    ldh a, [rIE]
    db $e4
    ei
    call z, $94f3
    db $e3
    inc [hl]
    jp $a354


    inc [hl]
    jp $a354


    inc [hl]
    jp $a354


    inc [hl]
    jp $a354


    inc [hl]
    jp $0314


    db $f4
    inc bc
    push de
    inc hl
    or [hl]
    ld b, b
    ld d, l
    and d
    or l
    ld b, d
    ld d, h
    and e
    or h
    ld b, e
    ld d, h
    and e
    inc [hl]
    jp $a354


    ld [hl+], a
    pop bc
    ld h, d

jr_009_4a93:
    add c
    ld b, c
    add b
    ld b, c
    add b
    inc e
    add b
    inc hl
    sbc h
    ld e, l
    cp [hl]
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    cp a
    jr nz, jr_009_4a93

    db $10
    rst $28
    ld [$04f7], sp
    ei
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    jr @+$01

    ld h, b
    rst $38
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
    rst $38
    nop
    ld a, a
    add b
    nop
    add b
    ccf
    ret nz

    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    add b
    ld a, a
    adc b
    ld [hl], a
    sbc h
    ld h, e
    cp [hl]
    ld b, c
    rst $38
    nop
    add hl, hl
    sub $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fc
    db $fc
    db $fd
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$04
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    or $ff
    rst $30
    rst $30
    ei
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    inc bc
    ld bc, $ffff
    rst $38
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
    rrca
    rrca
    rst $28
    rrca
    rst $28
    nop
    rst $28
    rlca
    rst $28
    rlca
    rrca
    rlca
    ld a, a
    rlca
    ld a, a
    ld a, a
    ld a, a
    ld [hl], b
    ld a, b
    ld [hl], a
    ld [$fc07], sp
    inc bc
    db $fc
    ei
    db $fc
    di
    db $fc
    inc bc
    db $fc
    ei
    db $fc
    ei
    db $fc
    inc bc
    nop
    rst $38
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    rst $20
    rst $38
    rst $30
    rst $28
    rst $30
    rst $28
    rst $20
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
    ld l, a
    rst $38
    rrca
    sbc a
    ld h, b
    sub c
    ld h, b
    sub l
    ld h, b
    sbc l
    ld h, b
    db $fd
    add hl, bc
    db $fd
    ld l, c
    ei
    db $fd
    ei
    db $fd
    ei
    dec e
    dec sp
    db $dd
    ccf
    pop bc
    ld bc, $01ff
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
    nop
    cp $00
    cp $a6
    cp $fe
    cp $fe
    cp $fe
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
    rra
    rst $38
    rra
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld h, c
    add b
    ld [hl], e
    add b
    db $10
    ldh [$1f], a
    ldh [$c0], a
    ld a, a
    ret nz

    rst $38
    rst $38
    ld [$fffc], a
    ei
    db $fc
    db $f4
    ld hl, sp-$17
    ldh a, [$e9]
    ldh a, [$e9]
    ldh a, [rP1]
    nop
    cp $00
    nop
    cp $00
    cp $00
    cp $00
    nop
    ld [hl], l
    adc d
    cp e
    xor $ff
    rst $38
    rst $38
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
    ld hl, sp-$01
    ei
    db $fc
    ei
    db $fc
    ld a, [$3bfc]
    db $fc
    cp b
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    xor d
    db $10
    rst $38
    rst $20
    jr jr_009_4c50

    ld [$f805], sp
    ld a, h
    add b
    ld a, h
    add b
    ld d, h
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38

jr_009_4c50:
    nop
    rst $38
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rlca
    ei
    rlca
    add sp, $07
    sbc a
    nop
    adc a
    nop
    push de
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    ld b, b
    add b
    ld a, a
    add b
    ldh a, [rIF]
    ret nc

    rrca
    db $10
    rrca
    rst $30
    ld a, [bc]
    rlca
    rst $38
    nop
    rst $38
    rst $30
    xor b
    rlca
    ld hl, sp-$03
    nop
    db $fc
    nop
    ld d, h
    nop
    nop
    nop
    nop
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
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    rra
    push af
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    inc bc
    nop
    ld bc, $1f00
    nop
    ld bc, $0300
    nop
    pop bc
    nop
    ld b, e
    add b
    ld b, c
    add b
    ld b, e
    add b
    ld b, c
    add b
    ld b, e
    add b
    ld b, c
    add b
    jp $c100


    nop
    ld b, e
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    nop
    ld a, a
    nop
    ld b, b
    ccf
    add b
    ld a, a
    ld bc, $3fff
    db $eb
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_009_4d87

    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    nop
    ld e, $1f
    jr nz, jr_009_4d9e

    ld [hl+], a
    inc hl
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_009_4db0

jr_009_4d87:
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    cpl
    jr nc, @+$32

    ld sp, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a

jr_009_4d9e:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a

jr_009_4db0:
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $05
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a

InventoryFile1BookTileset:: ; 0x4df0
    INCBIN "gfx/bank009_inventoryfile1_4df0.2bpp"

InventoryFile1BookTilemap:: ; 0x4f90
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $01, $02, $02, $03, $04, $05, $00
    db $00, $06, $07, $08, $09, $0a, $0b, $00
    db $00, $06, $0c, $0d, $0e, $0f, $0b, $00
    db $00, $10, $11, $12, $13, $14, $0b, $00
    db $00, $15, $16, $16, $16, $16, $17, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $18, $19, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

InventoryFile1BookPaletteIndex:: ; 0x4fe8
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $06, $06, $06, $06, $06, $06, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02

InventoryFile2BookTileset:: ; 0x5040
    INCBIN "gfx/bank009_inventoryfile2_5040.2bpp"

InventoryFile2BookTilemap:: ; 0x5200
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $02, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $03, $04, $04, $05, $06, $07, $00
    db $00, $08, $09, $0a, $0b, $0c, $0d, $00
    db $00, $08, $0e, $0f, $10, $11, $0d, $00
    db $00, $12, $13, $14, $15, $16, $0d, $00
    db $00, $17, $18, $18, $18, $18, $19, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $1a, $1b, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

InventoryFile2BookPaletteIndex:: ; 0x5258
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $06, $06, $06, $06, $06, $06, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02

InventoryFile3BookTileset:: ; 0x52b0
    INCBIN "gfx/bank009_inventoryfile3_52b0.2bpp"

InventoryFile3BookTilemap:: ; 0x5450
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $01, $02, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $03, $04, $04, $05, $06, $07, $00
    db $00, $08, $09, $0a, $0b, $0c, $0d, $00
    db $00, $08, $0e, $0f, $10, $11, $0d, $00
    db $00, $12, $13, $14, $15, $16, $0d, $00
    db $00, $17, $18, $18, $18, $18, $19, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

InventoryFile3BookPaletteIndex:: ; 0x54a8
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $05, $05, $05, $05, $05, $06, $02
    db $02, $06, $06, $06, $06, $06, $06, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02

ItemOptionsCheckTileset::
    INCBIN "gfx/bank009_itemoptioncheck_5500.2bpp"

ItemOptionsCheckTilemap:: ; 0x5600
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $01, $02, $03
    db $00, $00, $00, $00, $00, $04, $05, $06
    db $00, $00, $00, $00, $00, $07, $08, $09
    db $00, $00, $00, $00, $00, $0a, $0b, $0c
    db $00, $00, $00, $00, $00, $0d, $0e, $0f

ItemOptionsCheckPaletteIndex:: ; 0x5658
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00

ItemOptionsCombineTileset:: ; 0x56b0
    INCBIN "gfx/bank009_itemoptioncombine_56b0.2bpp"

ItemOptionsCombineTilemap:: ; 0x57b0
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $01, $02, $03
    db $00, $00, $00, $00, $00, $04, $05, $06
    db $00, $00, $00, $00, $00, $07, $08, $09
    db $00, $00, $00, $00, $00, $0a, $0b, $0c
    db $00, $00, $00, $00, $00, $0d, $0e, $0f

ItemOptionsCombinePaletteIndex::
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00

ItemOptionsUseTileset::
    INCBIN "gfx/bank009_itemoptionuse_5860.2bpp"

ItemOptionsUseTilemap::
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $01, $02, $03
    db $00, $00, $00, $00, $00, $04, $05, $06
    db $00, $00, $00, $00, $00, $07, $08, $09
    db $00, $00, $00, $00, $00, $0a, $0b, $0c
    db $00, $00, $00, $00, $00, $0d, $0e, $0f

ItemOptionsUsePaletteIndex::
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $02, $02, $02
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00
    db $02, $02, $02, $02, $02, $00, $00, $00

    ds $25f0, $00