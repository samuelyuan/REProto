SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

CompanyLogoTileset:: ; 0x4000:
    INCBIN "gfx/bank00f_companylogo_4000.2bpp"

CompanyLogoTilemap:: ; 0x49a0
    db $00, $00, $00, $01, $02, $02, $02, $02, $02, $02, $02, $02, $03, $00, $00, $00, $00, $00
    db $00, $00, $00, $04, $05, $05, $05, $06, $07, $05, $05, $05, $08, $00, $00, $00, $00, $00
    db $00, $00, $00, $09, $0a, $0a, $0a, $0b, $0c, $0a, $0a, $0a, $0d, $00, $00, $00, $00, $00
    db $00, $00, $00, $0e, $0f, $10, $10, $10, $10, $10, $10, $11, $12, $00, $00, $00, $00, $00
    db $00, $00, $00, $13, $14, $15, $15, $15, $15, $15, $15, $16, $17, $00, $00, $00, $00, $00
    db $00, $00, $00, $18, $19, $1a, $1a, $1a, $1a, $1a, $1a, $1b, $1c, $00, $00, $00, $00, $00
    db $00, $00, $00, $1d, $1e, $1f, $1f, $1f, $1f, $1f, $1f, $20, $21, $00, $00, $00, $00, $00
    db $00, $00, $00, $22, $23, $24, $24, $24, $24, $24, $24, $24, $0d, $00, $00, $00, $00, $00
    db $00, $00, $00, $22, $25, $26, $26, $26, $26, $26, $26, $26, $12, $00, $00, $00, $00, $00
    db $00, $00, $00, $27, $28, $29, $29, $29, $29, $2a, $2b, $2c, $2d, $15, $15, $00, $00, $00
    db $00, $00, $00, $00, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $00, $00, $00
    db $00, $00, $00, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $00, $00, $00
    db $00, $00, $00, $45, $46, $47, $00, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $00, $00, $00
    db $00, $00, $00, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $00, $00, $00
    db $00, $00, $00, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $00, $00, $00
    db $00, $00, $00, $68, $69, $00, $00, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $00, $00, $00
    db $00, $00, $00, $72, $73, $74, $75, $76, $77, $78, $79, $3b, $7a, $7b, $7c, $00, $00, $00
    db $00, $00, $00, $7d, $7e, $7e, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $00, $00, $00
    db $00, $00, $00, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $00, $00, $00
    db $00, $00, $00, $93, $5f, $94, $95, $96, $97, $00, $00, $00, $4d, $98, $99, $00, $00, $00
    
CompanyLogoPaletteIndex:: ; 0x4b08
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01
    
CompanyLogoPaletteBGP:: ; 0x4c70
    db $cc, $7e, $ff, $7f, $a0, $7d, $f8, $7f
    db $1f, $00, $1f, $00, $1f, $00, $00, $00
    db $1f, $00, $1f, $00, $1f, $00, $1f, $00
    db $1f, $00, $1f, $00, $1f, $00, $1f, $00
    db $1f, $00, $1f, $00, $1f, $00, $1f, $00
    db $1f, $00, $1f, $00, $1f, $00, $1f, $00
    db $1f, $00, $1f, $00, $1f, $00, $1f, $00
    db $1f, $00, $1f, $00, $1f, $00, $1f, $00

FontImageTileset:: ; 0x4cb0
    INCBIN "gfx/bank00f_font_4cb0.2bpp"

bank00f_5bb0:
    xor a
    ld [$c319], a
    ld [$c31a], a
    ld a, [ROOM_NUMBER]
    cp $04
    jp z, Jump_00f_5d0e

    cp $0f
    jp z, Jump_00f_5ce4

    cp $16
    jp z, Jump_00f_5d3a

    cp $1d
    jp z, Jump_00f_5c7e

    cp $24
    jp z, Jump_00f_5c4b

    cp $2d
    jp z, Jump_00f_5c1a

    cp $37
    jp z, Jump_00f_5be3

    cp $60
    jp z, Jump_00f_5d71

    ret


Jump_00f_5be3:
    ld a, [PLAYER_POS_Y_VAR]
    ld e, a
    ld a, [PLAYER_POS_Y_VAR + 1]
    ld d, a
    call Call_00f_5d9d
    ld a, d
    or a
    ret nz

    ld a, e
    cp $50
    ret c

    ld a, [PLAYER_POS_X_VAR]
    ld e, a
    ld a, [PLAYER_POS_X_VAR + 1]
    ld d, a
    call Call_00f_5d9d
    ld a, d
    or a
    jr z, jr_00f_5c0a

    ld a, e
    cp $9e
    ret c

    jr jr_00f_5c0e

jr_00f_5c0a:
    ld a, e
    cp $20
    ret nc

jr_00f_5c0e:
    ld de, $ffe0
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a
    ret


Jump_00f_5c1a:
    ld a, [CAMERA_NUMBER]
    cp $01
    ret nz

    ld a, [PLAYER_POS_X_VAR]
    ld e, a
    ld a, [PLAYER_POS_X_VAR + 1]
    ld d, a
    call Call_00f_5d9d
    ld hl, $0014
    add hl, de
    ld e, l
    ld d, h
    ld a, d
    cp $ff
    ret nz

    ld a, $00
    sub e
    inc a
    cp $10
    jr c, jr_00f_5c3f

    ld a, $0f

jr_00f_5c3f:
    ld e, a
    ld d, $00
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a
    ret


Jump_00f_5c4b:
    ld a, [CAMERA_NUMBER]
    or a
    ret nz

    ld a, [PLAYER_POS_Y_VAR]
    ld e, a
    ld a, [PLAYER_POS_Y_VAR + 1]
    ld d, a
    call Call_00f_5d9d
    ld hl, $0050
    add hl, de
    ld e, l
    ld d, h
    ld a, d
    cp $ff
    ret nz

    ld a, $00
    sub e
    inc a
    cp $2e
    jr c, jr_00f_5c6f

    ld a, $2d

jr_00f_5c6f:
    ld e, a
    ld d, $00
    call Call_00f_5dc2
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a
    ret


Jump_00f_5c7e:
    ld a, [CAMERA_NUMBER]
    or a
    ret nz

    ld a, [PLAYER_POS_X_VAR]
    ld e, a
    ld a, [PLAYER_POS_X_VAR + 1]
    ld d, a
    call Call_00f_5d9d
    ld a, d
    or a
    ret nz

    ld a, e
    cp $40
    ret c

    ld a, [PLAYER_POS_Y_VAR]
    ld e, a
    ld a, [PLAYER_POS_Y_VAR + 1]
    ld d, a
    call Call_00f_5d9d
    ld a, d
    cp $ff
    jr z, jr_00f_5cc4

    or a
    ret nz

    ld a, e
    cp $44
    ret nc

    ld e, a
    ld a, $44
    sub e
    cp $28
    jr c, jr_00f_5cb5

    ld a, $27

jr_00f_5cb5:
    ld e, a
    ld d, $00
    call Call_00f_5dc2
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a
    ret


jr_00f_5cc4:
    ld a, $00
    sub e
    inc a
    cp $44
    ret nc

    ld e, a
    ld a, $44
    sub e
    cp $28
    jr c, jr_00f_5cd5

    ld a, $27

jr_00f_5cd5:
    ld e, a
    ld d, $00
    call Call_00f_5dc2
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a
    ret


Jump_00f_5ce4:
    ld a, [CAMERA_NUMBER]
    cp $02
    jr nc, jr_00f_5d0d

    ld a, [PLAYER_POS_X_VAR]
    ld e, a
    ld a, [PLAYER_POS_X_VAR + 1]
    ld d, a
    call Call_00f_5d9d
    ld a, d
    cp $80
    jr nc, jr_00f_5d0d

    ld a, e
    cp $30
    jr c, jr_00f_5d02

    ld e, $2f

jr_00f_5d02:
    call Call_00f_5dc2
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a

jr_00f_5d0d:
    ret


Jump_00f_5d0e:
    ld a, [$c31f]
    or a
    ret z

    ld a, [PLAYER_POS_X_VAR]
    ld e, a
    ld a, [PLAYER_POS_X_VAR + 1]
    ld d, a
    call Call_00f_5d9d
    ld bc, $0014
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    or a
    ret nz

    ld a, c
    cp $07
    jr c, jr_00f_5d30

    ld a, $07

jr_00f_5d30:
    add a
    add a
    ld [$c319], a
    xor a
    ld [$c31a], a
    ret


Jump_00f_5d3a:
    ld a, [$c31f]
    or a
    ret z

    ld a, [PLAYER_POS_Y_VAR]
    ld e, a
    ld a, [PLAYER_POS_Y_VAR + 1]
    ld d, a
    call Call_00f_5d9d
    ld bc, $0008
    ld a, e
    sub c
    ld c, a
    ld a, d
    sbc b
    ld b, a
    or a
    ret nz

    ld a, c
    cp $0c
    jr c, jr_00f_5d5c

    ld a, $0c

jr_00f_5d5c:
    srl a
    srl a
    inc a
    add a
    add a
    cp $04
    jr nz, jr_00f_5d69

    ld a, $08

jr_00f_5d69:
    ld [$c319], a
    xor a
    ld [$c31a], a
    ret


Jump_00f_5d71:
    ld a, [$c31f]
    or a
    ret z

    ld a, [PLAYER_POS_Y_VAR]
    ld e, a
    ld a, [PLAYER_POS_Y_VAR + 1]
    ld d, a
    call Call_00f_5d9d
    ld bc, $001c
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    or a
    ret nz

    ld a, c
    cp $08
    jr c, jr_00f_5d93

    ld a, $08

jr_00f_5d93:
    add a
    add a
    ld [$c319], a
    xor a
    ld [$c31a], a
    ret


Call_00f_5d9d:
    ld a, d
    cp $80
    jr c, jr_00f_5db5

    call Call_00f_5dc2
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_00f_5dc2
    ret


jr_00f_5db5:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_00f_5dc2:
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


    ld hl, $cb00
    ld de, $5e3f
    ld bc, $0140

jr_00f_5dd4:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_00f_5dd4

    ld hl, SPRITE_RAM_BASE
    call Call_000_3d85
    ld de, $0004
    ld b, $28

jr_00f_5de7:
    ld [hl], $c0
    add hl, de
    dec b
    jr nz, jr_00f_5de7

    ld hl, SPRITE_RAM_BASE
    call Call_000_3d85
    ld de, $c2c0
    ld b, $09

jr_00f_5df8:
    ld a, [de]
    or a
    jr z, jr_00f_5e01

    inc de
    inc de
    inc de
    jr jr_00f_5e0e

jr_00f_5e01:
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a

jr_00f_5e0e:
    dec b
    jr nz, jr_00f_5df8

    ld de, $5e2d
    ld a, [$c2e0]
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, [$c2e0]
    inc a
    add a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ret


    ld e, [hl]
    ld c, b
    ld e, [hl]
    ld d, h
    ld e, [hl]
    ld h, b
    ld l, d
    ld c, b
    ld l, d
    ld d, h
    ld l, d
    ld h, b
    db $76
    ld c, b
    db $76
    ld d, h

jr_00f_5e3d:
    db $76
    ld h, b
    inc a
    inc a
    ld b, d
    ld a, [hl]
    adc c
    rst $30
    sbc l
    db $e3

jr_00f_5e47:
    cp l
    jp $e799


    ld b, d
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop

jr_00f_5e53:
    nop
    nop
    nop
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
    db $10
    rst $08
    jr nc, jr_00f_5e53

    db $10
    rst $28
    db $10
    rst $28
    db $10
    add $38
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
    nop
    nop
    nop
    nop
    nop

jr_00f_5e7d:
    nop
    nop
    ld b, [hl]
    jr c, jr_00f_5e3d

    ld b, h
    ei
    inc b
    rst $00
    jr c, jr_00f_5e47

    ld b, b
    add d
    ld a, h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, h
    cp e
    ld b, h
    rst $30
    ld [$04fb], sp
    cp e
    ld b, h
    add $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $76
    ld [$18e7], sp
    rst $10
    jr z, jr_00f_5e7d

    ld c, b
    add e
    ld a, h
    or $08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, h
    cp a
    ld b, b
    add a
    ld a, b
    ei
    inc b
    cp e
    ld b, h
    add $38
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
    nop
    nop
    nop
    nop
    nop

jr_00f_5efd:
    nop
    nop
    ld b, [hl]
    jr c, @-$3f

    ld b, b
    add a
    ld a, b
    cp e
    ld b, h
    cp e
    ld b, h
    add $38
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
    nop
    nop
    nop
    nop
    nop

jr_00f_5f1d:
    nop
    nop
    ld [bc], a
    ld a, h
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    xor $10
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    jr c, jr_00f_5efd

    ld b, h
    rst $00
    jr c, @-$43

    ld b, h
    cp e
    ld b, h
    add $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    jr c, jr_00f_5f1d

    ld b, h
    cp e
    ld b, h
    jp $fb3c


    inc b
    add $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$c100]
    and $20
    jp nz, Jump_00f_60c0

    xor a
    ld [$c16b], a
    ld a, [$c100]
    and $10
    jp nz, Jump_00f_60de

    xor a
    ld [$c16c], a
    ld a, [$c100]
    and $40
    jp nz, Jump_00f_60fd

    xor a
    ld [$c110], a
    ld a, [$c100]
    and $80
    jp nz, Jump_00f_6117

    xor a
    ld [$c111], a
    ld a, [$c100]
    and $01
    jp nz, Jump_00f_5fbc

    xor a
    ld [$c1fb], a
    ret


Jump_00f_5fbc:
    ld a, [$c1fb]
    or a
    ret nz

    ld a, $ff
    ld [$c1fb], a
    ld a, $02
    call Call_000_026b
    ld a, [$c2e0]
    or a
    jp z, Jump_00f_60a9

    cp $01
    jp z, Jump_00f_6091

    cp $02
    jp z, Jump_00f_607f

    cp $03
    jp z, Jump_00f_6067

    cp $04
    jp z, Jump_00f_6049

    cp $05
    jp z, Jump_00f_6031

    cp $06
    jp z, Jump_00f_601f

    cp $07
    jp z, Jump_00f_6007

    ld hl, $c2cf
    call Call_00f_60bb
    ld hl, $c2d5
    call Call_00f_60bb
    ld hl, $c2d8
    jp Jump_00f_60bb


Jump_00f_6007:
    ld hl, $c2cc
    call Call_00f_60bb
    ld hl, $c2d2
    call Call_00f_60bb
    ld hl, $c2d5
    call Call_00f_60bb
    ld hl, $c2d8
    jp Jump_00f_60bb


Jump_00f_601f:
    ld hl, $c2c9
    call Call_00f_60bb
    ld hl, $c2d2
    call Call_00f_60bb
    ld hl, $c2d5
    jp Jump_00f_60bb


Jump_00f_6031:
    ld hl, $c2c6
    call Call_00f_60bb
    ld hl, $c2cc
    call Call_00f_60bb
    ld hl, $c2cf
    call Call_00f_60bb
    ld hl, $c2d8
    jp Jump_00f_60bb


Jump_00f_6049:
    ld hl, $c2c3
    call Call_00f_60bb
    ld hl, $c2c9
    call Call_00f_60bb
    ld hl, $c2cc
    call Call_00f_60bb
    ld hl, $c2cf
    call Call_00f_60bb
    ld hl, $c2d5
    jp Jump_00f_60bb


Jump_00f_6067:
    ld hl, $c2c0
    call Call_00f_60bb
    ld hl, $c2c9
    call Call_00f_60bb
    ld hl, $c2cc
    call Call_00f_60bb
    ld hl, $c2d2
    jp Jump_00f_60bb


Jump_00f_607f:
    ld hl, $c2c3
    call Call_00f_60bb
    ld hl, $c2c6
    call Call_00f_60bb
    ld hl, $c2cf
    jp Jump_00f_60bb


Jump_00f_6091:
    ld hl, $c2c0
    call Call_00f_60bb
    ld hl, $c2c3
    call Call_00f_60bb
    ld hl, $c2c6
    call Call_00f_60bb
    ld hl, $c2cc
    jp Jump_00f_60bb


Jump_00f_60a9:
    ld hl, $c2c0
    call Call_00f_60bb
    ld hl, $c2c3
    call Call_00f_60bb
    ld hl, $c2c9
    jp Jump_00f_60bb


Call_00f_60bb:
Jump_00f_60bb:
    ld a, [hl]
    xor $ff
    ld [hl], a
    ret


Jump_00f_60c0:
    ld a, [$c16b]
    or a
    ret nz

    ld a, $ff
    ld [$c16b], a
    ld a, [$c2e0]
    or a
    ret z

    cp $03
    ret z

    cp $06
    ret z

    dec a
    ld [$c2e0], a
    ld a, $01
    jp Jump_000_026b


Jump_00f_60de:
    ld a, [$c16c]
    or a
    ret nz

    ld a, $ff
    ld [$c16c], a
    ld a, [$c2e0]
    cp $02
    ret z

    cp $05
    ret z

    cp $08
    ret z

    inc a
    ld [$c2e0], a
    ld a, $01
    jp Jump_000_026b


Jump_00f_60fd:
    ld a, [$c110]
    or a
    ret nz

    ld a, $ff
    ld [$c110], a
    ld a, [$c2e0]
    cp $03
    ret c

    sub $03
    ld [$c2e0], a
    ld a, $01
    jp Jump_000_026b


Jump_00f_6117:
    ld a, [$c111]
    or a
    ret nz

    ld a, $ff
    ld [$c111], a
    ld a, [$c2e0]
    cp $06
    ret nc

    add $03
    ld [$c2e0], a
    ld a, $01
    jp Jump_000_026b


    ds $1ecf, $00
