SECTION "ROM Bank $0c4", ROMX[$4000], BANK[$c4]

FirstZombieTileset:: ; 0x4000
    INCBIN "gfx/bank0c4_firstzombie_4000.2bpp"

FirstZombieTilemap:: ; 0x4cd0
    db $00, $00, $00, $00, $00, $00, $00, $01, $02, $00, $00, $00, $00, $03, $04, $05, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $06, $07, $00, $00, $00, $00, $08, $09, $0a, $00, $00
    db $0b, $0c, $0d, $00, $00, $00, $00, $00, $0e, $00, $00, $00, $00, $0f, $10, $00, $00, $00
    db $11, $00, $00, $12, $13, $14, $00, $00, $15, $00, $00, $00, $00, $16, $17, $18, $00, $00
    db $00, $00, $00, $00, $00, $19, $00, $00, $1a, $1b, $00, $00, $00, $1c, $1d, $00, $00, $00
    db $00, $00, $00, $00, $00, $1e, $00, $00, $1f, $20, $00, $00, $00, $21, $22, $23, $00, $00
    db $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $00, $00, $00, $2e, $2f, $30, $00, $00
    db $00, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $00, $00
    db $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $00, $00
    db $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $00, $00, $00, $00, $00
    db $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $00, $00, $00, $00, $00
    db $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $00, $00, $00, $00
    db $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $00, $00, $00, $00
    db $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $00, $00, $00, $00, $00
    db $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $00, $00, $00, $00, $00
    db $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8, $a9, $aa, $ab, $ac, $00, $00, $00, $00, $00
    db $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b5, $b6, $b7, $b8, $00, $00, $00, $00, $00
    db $00, $b9, $1d, $b5, $b5, $b5, $b5, $ba, $bb, $bc, $bd, $be, $bf, $00, $00, $00, $00, $00
    db $00, $00, $c0, $c1, $c2, $c3, $c4, $c5, $00, $01, $c6, $00, $c7, $00, $00, $00, $00, $00
    db $00, $00, $c8, $00, $00, $c9, $00, $00, $00, $ca, $cb, $00, $00, $cc, $00, $00, $00, $00

FirstZombiePaletteIndex:: ; 0x4e38
    db $00, $00, $00, $00, $00, $00, $00, $01, $02, $02, $02, $02, $02, $02, $02, $04, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $01, $02, $02, $02, $02, $02, $04, $04, $04, $01, $01
    db $01, $01, $01, $00, $00, $00, $00, $00, $02, $02, $02, $02, $02, $04, $04, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $00, $00, $02, $02, $02, $02, $02, $04, $04, $04, $01, $01
    db $01, $01, $01, $01, $01, $01, $00, $00, $01, $02, $02, $02, $02, $04, $04, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $00, $00, $01, $02, $02, $02, $02, $04, $04, $04, $01, $01
    db $02, $02, $05, $07, $05, $00, $00, $00, $01, $02, $02, $02, $02, $04, $04, $04, $01, $01
    db $02, $05, $07, $00, $00, $00, $00, $00, $03, $03, $03, $03, $04, $04, $04, $04, $01, $01
    db $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $03, $06, $04, $04, $04, $01, $01
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $01, $01, $01, $01
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $07, $01, $01, $01, $01, $01
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $01, $01, $01, $01, $01
    db $02, $03, $03, $00, $00, $00, $00, $00, $00, $01, $06, $03, $01, $01, $01, $01, $01, $01
    db $02, $02, $05, $01, $01, $00, $00, $00, $00, $01, $02, $02, $02, $01, $01, $01, $01, $01
    db $02, $02, $02, $01, $01, $01, $00, $00, $00, $01, $02, $02, $02, $02, $01, $01, $01, $01

FirstZombiePaletteBGP:: ; 0x4fa0
    db $7f, $4b, $b7, $42, $13, $00, $08, $21
    db $cd, $16, $08, $21, $a4, $08, $13, $00
    db $13, $00, $a4, $08, $31, $06, $cd, $16
    db $7f, $4b, $b7, $42, $31, $06, $08, $21
    db $31, $06, $cd, $16, $88, $01, $a4, $08
    db $b7, $42, $08, $21, $31, $06, $a4, $08
    db $31, $06, $cd, $16, $13, $00, $08, $21
    db $08, $21, $7f, $4b, $b7, $42, $a4, $08

FallingStatueTileset:: ; 0x4fe0
    INCBIN "gfx/bank0c4_fallingstatue_4fe0.2bpp"

FallingStatueTilemap:: ; 0x5f70
    db $00, $00, $00, $01, $02, $03, $04, $05, $06, $06, $06, $06, $07, $06, $08, $09, $06, $06
    db $00, $00, $0a, $0b, $0c, $0d, $0e, $0f, $06, $06, $06, $06, $10, $06, $11, $09, $06, $06
    db $12, $13, $06, $14, $15, $16, $17, $18, $06, $06, $06, $06, $19, $1a, $09, $09, $06, $06
    db $1b, $1c, $06, $06, $1d, $1e, $1f, $20, $21, $06, $22, $23, $24, $25, $09, $09, $06, $06
    db $26, $27, $06, $06, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $09, $09, $06, $06
    db $32, $33, $34, $06, $06, $35, $36, $37, $38, $06, $06, $39, $06, $3a, $09, $09, $06, $06
    db $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $44, $45, $46, $47, $09, $48, $06, $06
    db $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $52, $52, $53, $09, $09, $54, $06, $06
    db $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $09, $48, $62, $06, $06
    db $63, $64, $65, $66, $67, $68, $06, $69, $6a, $6b, $5f, $6c, $6d, $09, $54, $00, $06, $06
    db $6e, $6f, $70, $71, $72, $73, $74, $06, $06, $38, $06, $07, $11, $48, $75, $76, $06, $06
    db $77, $78, $79, $7a, $7b, $7c, $7d, $06, $7e, $7f, $80, $81, $09, $82, $83, $84, $06, $06
    db $85, $86, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $06, $06, $06, $06
    db $93, $94, $95, $96, $97, $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $06, $a1, $06, $06
    db $a2, $a3, $a4, $a5, $a6, $a7, $a8, $06, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $06, $06
    db $06, $06, $06, $06, $b1, $b2, $b3, $06, $06, $b4, $b5, $b6, $b7, $b8, $b9, $ba, $06, $06
    db $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $06, $06
    db $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da, $06, $06
    db $db, $dc, $52, $dd, $de, $06, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6, $e7, $e8, $06, $06
    db $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $06, $06

FallingStatuePaletteIndex:: ; 0x60d8
    db $01, $01, $01, $05, $00, $00, $05, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $05, $00, $00, $05, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $01, $01, $03, $03, $00, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $01, $01, $03, $00, $03, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $03, $01, $01, $03, $03, $00, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $03, $03, $01, $01, $03, $00, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $03, $03, $03, $03, $00, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $03, $03, $03, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $05, $05, $03, $03, $03, $03, $03, $00, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $05, $05, $03, $03, $03, $01, $03, $03, $02, $00, $00, $00, $00, $00, $00, $00, $00
    db $03, $03, $05, $05, $03, $03, $03, $01, $01, $02, $00, $00, $00, $00, $04, $03, $00, $00
    db $05, $03, $03, $05, $05, $03, $03, $01, $01, $02, $00, $00, $00, $04, $03, $03, $00, $00
    db $05, $05, $05, $03, $03, $05, $03, $03, $01, $00, $00, $00, $07, $06, $01, $01, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $00, $00, $07, $07, $01, $01, $02, $00, $00
    db $03, $03, $03, $03, $03, $03, $03, $01, $03, $01, $00, $07, $07, $03, $03, $03, $00, $00
    db $01, $01, $01, $01, $03, $05, $03, $01, $01, $01, $07, $06, $06, $05, $05, $05, $00, $00
    db $01, $01, $01, $01, $05, $05, $05, $05, $01, $07, $07, $06, $00, $00, $03, $00, $00, $00
    db $01, $01, $01, $01, $05, $01, $01, $01, $07, $07, $01, $06, $03, $03, $03, $00, $00, $00
    db $01, $01, $00, $01, $05, $01, $01, $07, $07, $01, $01, $06, $02, $03, $05, $03, $00, $00
    db $01, $01, $01, $01, $06, $07, $07, $01, $01, $01, $01, $06, $02, $03, $05, $05, $00, $00

FallingStatuePaletteBGP:: ; 0x6240
    db $d2, $66, $eb, $10, $09, $00, $00, $00
    db $00, $00, $98, $3e, $b1, $25, $e5, $3c
    db $98, $3e, $b1, $25, $09, $00, $00, $00
    db $b1, $25, $09, $00, $00, $00, $eb, $10
    db $b1, $25, $eb, $10, $d2, $66, $e5, $3c
    db $98, $3e, $b1, $25, $eb, $10, $00, $00
    db $d2, $66, $b1, $25, $eb, $10, $00, $00
    db $d2, $66, $e5, $3c, $00, $00, $b1, $25

bank0c4_6280:
    ld hl, $000f
    add hl, de
    ld a, [hl]
    or a
    jp z, Jump_0c4_62ff

    cp $01
    jp z, Jump_0c4_630f

    cp $02
    jp z, Jump_0c4_631f

    cp $03
    jp z, Jump_0c4_632a

    cp $04
    jp z, Jump_0c4_6335

    cp $05
    jp z, Jump_0c4_633f

    cp $06
    jp z, Jump_0c4_634a

    cp $07
    jp z, Jump_0c4_6355

    cp $08
    jp z, Jump_0c4_6360

    cp $09
    jp z, Jump_0c4_636b

    cp $2e
    jp z, Jump_0c4_637b

    cp $2f
    jp z, Jump_0c4_6386

    cp $30
    jp z, Jump_0c4_6396

    cp $31
    jp z, Jump_0c4_63a0

    cp $32
    jp z, Jump_0c4_63b0

    cp $33
    jp z, Jump_0c4_63c0

    cp $34
    jp z, Jump_0c4_63cb

    cp $35
    jp z, Jump_0c4_63d6

    cp $36
    jp z, Jump_0c4_63e0

    cp $37
    jp z, Jump_0c4_63eb

    cp $3c
    jp z, Jump_0c4_63fb

    cp $3d
    jp z, Jump_0c4_6406

    cp $3e
    jp z, Jump_0c4_6416

    ld a, $ff
    ret


Jump_0c4_62fa:
    ld a, $ff
    ret


Jump_0c4_62fd:
    xor a
    ret


Jump_0c4_62ff:
    ld a, [CAMERA_NUMBER]
    cp $04
    jp z, Jump_0c4_62fa

    cp $05
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_630f:
    ld a, [CAMERA_NUMBER]
    cp $01
    jp z, Jump_0c4_62fa

    cp $03
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_631f:
    ld a, [CAMERA_NUMBER]
    cp $02
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_632a:
    ld a, [CAMERA_NUMBER]
    cp $04
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_6335:
    ld a, [FLAG_SEEN_FIRST_ZOMBIE]
    or a
    jp z, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_633f:
    ld a, [CAMERA_NUMBER]
    cp $01
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_634a:
    ld a, [CAMERA_NUMBER]
    cp $02
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_6355:
    ld a, [CAMERA_NUMBER]
    cp $04
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_6360:
    ld a, [CAMERA_NUMBER]
    cp $00
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_636b:
    ld a, [CAMERA_NUMBER]
    cp $01
    jp z, Jump_0c4_62fa

    cp $02
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_637b:
    ld a, [CAMERA_NUMBER]
    cp $06
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_6386:
    ld a, [CAMERA_NUMBER]
    cp $01
    jp z, Jump_0c4_62fa

    cp $03
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_6396:
    ld a, [CAMERA_NUMBER]
    or a
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_63a0:
    ld a, [CAMERA_NUMBER]
    cp $04
    jp z, Jump_0c4_62fa

    cp $05
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_63b0:
    ld a, [CAMERA_NUMBER]
    cp $01
    jp z, Jump_0c4_62fa

    cp $02
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_63c0:
    ld a, [CAMERA_NUMBER]
    cp $03
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_63cb:
    ld a, [CAMERA_NUMBER]
    cp $02
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_63d6:
    ld a, [CAMERA_NUMBER]
    or a
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_63e0:
    ld a, [CAMERA_NUMBER]
    cp $01
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_63eb:
    ld a, [CAMERA_NUMBER]
    cp $03
    jp z, Jump_0c4_62fa

    cp $04
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_63fb:
    ld a, [CAMERA_NUMBER]
    cp $05
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa


Jump_0c4_6406:
    ld a, [CAMERA_NUMBER]
    cp $01
    jp z, Jump_0c4_62fa

    cp $02
    jp z, Jump_0c4_62fa

    jp Jump_0c4_62fd


Jump_0c4_6416:
    ld a, [CAMERA_NUMBER]
    cp $03
    jp nz, Jump_0c4_62fd

    jp Jump_0c4_62fa

bank0c4_6421:
    ld a, [$c1c2]
    cp $e0
    jp z, Jump_0c4_6445

    cp $ec
    jp z, Jump_0c4_6450

    cp $ee
    jp z, Jump_0c4_645b

    cp $f0
    jp z, Jump_0c4_6466

    cp $f1
    jp z, Jump_0c4_6480

    ld a, $ff
    ret


Jump_0c4_6440:
    ld a, $ff
    ret


Jump_0c4_6443:
    xor a
    ret


Jump_0c4_6445:
    ld a, [CAMERA_NUMBER]
    cp $02
    jp z, Jump_0c4_6440

    jp Jump_0c4_6443


Jump_0c4_6450:
    ld a, [CAMERA_NUMBER]
    cp $02
    jp z, Jump_0c4_6440

    jp Jump_0c4_6443


Jump_0c4_645b:
    ld a, [CAMERA_NUMBER]
    cp $03
    jp z, Jump_0c4_6440

    jp Jump_0c4_6443


Jump_0c4_6466:
    ld a, [CAMERA_NUMBER]
    cp $02
    jp z, Jump_0c4_6440

    cp $04
    jp z, Jump_0c4_6440

    cp $06
    jp z, Jump_0c4_6440

    cp $07
    jp z, Jump_0c4_6440

    jp Jump_0c4_6443


Jump_0c4_6480:
    ld a, [CAMERA_NUMBER]
    cp $05
    jp z, Jump_0c4_6440

    jp Jump_0c4_6443


    ldh a, [rIE]
    dec b
    nop
    ld c, $00
    stop
    ld b, $00
    dec b
    nop
    ld c, $00
    stop
    ld a, [$dcff]
    rst $38
    ld a, [de]
    nop
    ld h, b
    nop
    cp d
    rst $38
    add sp, -$01
    inc c
    nop
    jr nc, jr_0c4_64ab

jr_0c4_64ab:
    ld a, [de]
    nop
    and b
    rst $38
    jr z, jr_0c4_64b1

jr_0c4_64b1:
    jr nc, jr_0c4_64b3

jr_0c4_64b3:
    ld h, h
    nop
    sbc d
    rst $38
    jr z, jr_0c4_64b9

jr_0c4_64b9:
    adc h
    nop
    db $ec
    rst $38
    sbc h
    rst $38
    jr z, jr_0c4_64c1

jr_0c4_64c1:
    ld e, $00
    ret c

    rst $38
    ldh a, [rIE]
    ld e, $00
    jr jr_0c4_64cb

jr_0c4_64cb:
    ldh [rIE], a
    and b
    rst $38
    ld l, $00
    ld l, $00
    cp b
    rst $38
    ld [$2800], sp
    nop
    jr nz, jr_0c4_64db

jr_0c4_64db:
    ld [hl], d
    nop
    dec bc
    nop
    jr jr_0c4_64e1

jr_0c4_64e1:
    ld a, [de]
    nop
    jr z, jr_0c4_64e5

jr_0c4_64e5:
    push hl
    rst $38
    jr jr_0c4_64e9

jr_0c4_64e9:
    dec l
    nop
    inc h
    nop
    xor $ff
    jr jr_0c4_64f1

jr_0c4_64f1:
    jr jr_0c4_64f3

jr_0c4_64f3:
    inc h
    nop
    ldh [rIE], a
    jr jr_0c4_64f9

jr_0c4_64f9:
    jr jr_0c4_64fb

bank0c4_64fb:
jr_0c4_64fb:
    ld a, [ROOM_NUMBER]
    cp $04
    jp z, Jump_0c4_653b

    cp $06
    jp z, Jump_0c4_654c

    cp $07
    jp z, Jump_0c4_6557

    cp $32
    jp z, Jump_0c4_656d

    cp $37
    jp z, Jump_0c4_6578

    cp $38
    jp z, Jump_0c4_6583

    cp $3b
    jp z, Jump_0c4_658e

    cp $3e
    jp z, Jump_0c4_6599

    cp $3f
    jp z, Jump_0c4_65a5

    cp $4c
    jp z, Jump_0c4_65b1

    cp $58
    jp z, Jump_0c4_65bc

    cp $5d
    jp z, Jump_0c4_65c7

    ret


Jump_0c4_653b:
    ld a, [$c31f]
    or a
    ret z

    ld hl, $648b
    call Call_0c4_65d6
    ld hl, $6493
    jp Jump_0c4_65d6


Jump_0c4_654c:
    ld a, [$c487]
    or a
    ret nz

    ld hl, $649b
    jp Jump_0c4_65d6


Jump_0c4_6557:
    ld a, [$c485]
    or a
    jr z, jr_0c4_6567

    ld a, [$c513]
    ld c, a
    ld a, [$c530]
    add c
    or a
    ret nz

jr_0c4_6567:
    ld hl, $64a3
    jp Jump_0c4_65d6


Jump_0c4_656d:
    ld a, [$c4d8]
    or a
    ret nz

    ld hl, $64ab
    jp Jump_0c4_65d6


Jump_0c4_6578:
    ld a, [$c498]
    or a
    ret nz

    ld hl, $64b3
    jp Jump_0c4_65d6


Jump_0c4_6583:
    ld a, [$c498]
    or a
    ret z

    ld hl, $64bb
    jp Jump_0c4_65d6


Jump_0c4_658e:
    ld a, [$c4c2]
    or a
    ret z

    ld hl, $64c3
    jp Jump_0c4_65d6


Jump_0c4_6599:
    ld a, [$c2e1]
    cp $02
    ret z

    ld hl, $64cb
    jp Jump_0c4_65d6


Jump_0c4_65a5:
    ld a, [$c2e2]
    cp $04
    ret z

    ld hl, $64d3
    jp Jump_0c4_65d6


Jump_0c4_65b1:
    ld a, [$c4de]
    or a
    ret nz

    ld hl, $64db
    jp Jump_0c4_65d6


Jump_0c4_65bc:
    ld a, [$c49c]
    or a
    ret nz

    ld hl, $64e3
    jp Jump_0c4_65d6


Jump_0c4_65c7:
    ld hl, $64eb
    ld a, [$c4a6]
    or a
    jr z, jr_0c4_65d3

    ld hl, $64f3

jr_0c4_65d3:
    jp Jump_0c4_65d6


Call_0c4_65d6:
Jump_0c4_65d6:
    ld a, [hl+]
    ld [$c170], a
    ld c, a
    ld a, [hl+]
    ld [$c171], a
    ld b, a
    inc hl
    inc hl
    ld a, [hl+]
    add c
    ld [$c172], a
    ld a, [hl-]
    adc b
    ld [$c173], a
    dec hl
    dec hl
    ld a, [hl+]
    ld [$c174], a
    ld c, a
    ld a, [hl+]
    ld [$c175], a
    ld b, a
    inc hl
    inc hl
    ld a, [hl+]
    add c
    ld [$c176], a
    ld a, [hl+]
    adc b
    ld [$c177], a
    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_0c4_66e7
    push de
    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_0c4_66e7
    ld l, e
    ld h, d
    pop de
    jp Jump_0c4_6621


Jump_0c4_6621:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    cp $ff
    ret nz

    ld a, [$c172]
    sub e
    ld a, [$c173]
    sbc d
    or a
    ret nz

    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    cp $ff
    ret nz

    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    or a
    ret nz

    push de
    push hl
    ld a, [$c315]
    ld e, a
    ld a, [$c316]
    ld d, a
    ld a, [$c317]
    ld l, a
    ld a, [$c318]
    ld h, a
    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    or a
    jr nz, jr_0c4_6682

    ld a, [$c174]
    ld e, a
    ld a, [$c175]
    ld d, a
    call Call_0c4_670c
    ld a, e
    sub $01
    ld [$c313], a
    ld a, d
    sbc $00
    ld [$c314], a
    pop hl
    pop de
    ret


jr_0c4_6682:
    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    cp $ff
    jr nz, jr_0c4_66a8

    ld a, [$c176]
    ld e, a
    ld a, [$c177]
    ld d, a
    call Call_0c4_670c
    ld a, e
    add $08
    ld [$c313], a
    ld a, d
    adc $00
    ld [$c314], a
    pop hl
    pop de
    ret


jr_0c4_66a8:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    or a
    jr nz, jr_0c4_66cd

    ld a, [$c170]
    ld e, a
    ld a, [$c171]
    ld d, a
    call Call_0c4_670c
    ld a, e
    sub $01
    ld [$c311], a
    ld a, d
    sbc $00
    ld [$c312], a
    pop hl
    pop de
    ret


jr_0c4_66cd:
    ld a, [$c172]
    ld e, a
    ld a, [$c173]
    ld d, a
    call Call_0c4_670c
    ld a, e
    add $08
    ld [$c311], a
    ld a, d
    adc $00
    ld [$c312], a
    pop hl
    pop de
    ret


Call_0c4_66e7:
    ld a, d
    cp $80
    jr c, jr_0c4_66ff

    call Call_0c4_672b
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_0c4_672b
    ret


jr_0c4_66ff:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_0c4_670c:
    ld a, d
    cp $80
    jr c, jr_0c4_6721

    call Call_0c4_672b
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    call Call_0c4_672b
    ret


jr_0c4_6721:
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    ret


Call_0c4_672b:
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret

    ds $18cc, $00
