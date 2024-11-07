SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

; Addresses are in bank 0xe
SceneScriptTable:: ; 0x4000
    dw $421b
    dw $42cd
    dw $431c
    dw $436d
    dw $43ed
    dw $441e
    dw $4451
    dw $4488
    dw $4512
    dw $4574
    dw $45b1
    dw $4612
    dw $46a3
    dw $46cb
    dw $476b
    dw $47dd
    dw $4869
    dw $48a3
    dw $4999
    dw $4ae3
    dw $4b65
    dw $4bbd
    dw $4bdc
    dw $4c1b
    dw $4c50
    dw $4c78
    dw $4c9e
    dw $4d1f
    dw $4d65
    dw $4d65
    dw $4e79
    dw $4eaf
    dw $4ef1
    dw $4f92
    dw $0000
    dw $5118
    dw $51ad
    dw $5232
    dw $5295
    dw $5334
    dw $53b7
    dw $5436
    dw $5470
    dw $54ad
    dw $54d9
    dw $5522
    dw $55b4
    dw $563e
    dw $5663
    dw $571c
    dw $57ab
    dw $57f1
    dw $588c
    dw $58ce
    dw $59be
    dw $5b2f
    dw $5bec
    dw $5c34
    dw $5cb4
    dw $5d44
    dw $5d8c
    dw $5dbf
    dw $5de9
    dw $5e1c
    dw $5e54
    dw $5e61
    dw $5e86
    dw $5eab
    dw $5ed0
    dw $5ef5
    dw $5f1a
    dw $5f3f
    dw $5f64
    dw $5f89
    dw $5f90
    dw $5fab
    dw $5fc6

bank00e_409a:
    xor a
    ld [$c1c6], a
    ld hl, $4000
    ld a, [$c11b]
    or a
    jr z, jr_00e_40aa

    ld hl, $403a

jr_00e_40aa:
    ld a, [CUTSCENE_NUMBER]
    cp $80
    jr c, jr_00e_40b6

    ld hl, $4082
    sub $7f

jr_00e_40b6:
    dec a
    add a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Jump_00e_40bf:
    ld a, [hl+]
    cp $1d
    jp z, Jump_00e_420f

    cp $3c
    jp z, Jump_00e_4212

    ld de, $420c
    push de
    cp $00 ; 2 bytes
    jp z, init_room_camera

    cp $01 ; 10 bytes
    jp z, sprite_chris_init

    cp $02 ; 10 bytes
    jp z, sprite_jill_init

    cp $03 ; 10 bytes
    jp z, sprite_wesker_init

    cp $04 ; 10 bytes
    jp z, sprite_c360_init

    cp $32 ; 10 bytes
    jp z, sprite_barry_init

    cp $34 ; 10 bytes
    jp z, sprite_c3a0_init

    cp $33 ; 10 bytes
    jp z, sprite_c3c0_init

    cp $05 ; render screen, 0 bytes
    jp z, Jump_00e_615b

    cp $06
    jp z, Jump_00e_616b

    cp $07 ; change camera view
    jp z, change_room_camera

    cp $08 ; 2 bytes
    jp z, Jump_00e_6195

    cp $09 ; 2 bytes
    jp z, Jump_00e_619a

    cp $0a ; 2 bytes
    jp z, Jump_00e_619f

    cp $0b ; 2 bytes
    jp z, Jump_00e_61a4

    cp $35 ; 2 bytes
    jp z, sprite_barry_set_anim

    cp $38 ; 2 bytes
    jp z, sprite_zombie_set_anim

    cp $0c ; Show name for Jill
    jp z, dialogue_name_jill

    cp $0d ; Show name for Chris
    jp z, dialogue_name_chris

    cp $0e ; Show name for Wesker
    jp z, dialogue_name_wesker

    cp $0f ; Show name for Rebecca
    jp z, dialogue_name_rebecca

    cp $2e ; Show name for Barry
    jp z, dialogue_name_barry

    cp $2d ; Show name for Enrico
    jp z, dialogue_name_enrico

    cp $2f ; Show string
    jp z, dialogue_name_6485

    cp $3d ; Show name for Richard
    jp z, dialogue_name_richard

    cp $40 ; Show name for Brad
    jp z, dialogue_name_brad

    cp $41
    jp z, dialogue_name_unknown

    ; sprite anim rotate
    cp $10
    jp z, rotate_chris

    cp $11
    jp z, rotate_jill

    cp $12
    jp z, rotate_wesker

    cp $13
    jp z, sprite_c360_rotate

    cp $30
    jp z, rotate_barry

    cp $37
    jp z, sprite_c3c0_rotate

    ;
    cp $1c
    jp z, Jump_00e_629a

    ; sprite anim walk
    cp $14 
    jp z, sprite_chris_walk

    cp $15 
    jp z, sprite_jill_walk

    cp $16
    jp z, sprite_wesker_walk

    cp $17
    jp z, sprite_c360_walk

    cp $23
    jp z, sprite_barry_walk

    cp $24
    jp z, sprite_c3a0_walk

    cp $25
    jp z, sprite_zombie_walk

    ; sprite anim run
    cp $18
    jp z, sprite_chris_run

    cp $19
    jp z, sprite_jill_run

    cp $1a
    jp z, sprite_wesker_run

    cp $1b
    jp z, Jump_00e_6384

    cp $2c
    jp z, sprite_barry_run

    ; sprite walks backwards
    cp $26
    jp z, Jump_00e_62b1

    cp $27
    jp z, sprite_jill_walk_backwards

    cp $28
    jp z, Jump_00e_62c0

    cp $29
    jp z, Jump_00e_62bb

    cp $2a
    jp z, Jump_00e_62a2

    cp $2b
    jp z, Jump_00e_62a7

    cp $1f ; 0 bytes
    jp z, Jump_00e_6074

    cp $1e
    jp z, Jump_00e_608c

    cp $20
    jp z, Jump_00e_6163

    cp $21
    jp z, Jump_00e_6142

    cp $36
    jp z, Jump_00e_603b

    cp $22
    jp z, Jump_00e_63cc

    cp $39
    jp z, Jump_00e_6412

    cp $3a ; 1 byte
    jp z, Jump_00e_6429

    cp $3b
    jp z, Jump_00e_5fd1

    cp $3e ; 1 byte
    jp z, Jump_00e_5fe2

    cp $3f
    jp z, Jump_00e_60b6

    jp Jump_000_016b


    jp Jump_00e_40bf


Jump_00e_420f:
    ld a, $ff
    ret


Jump_00e_4212:
    ld a, [hl+]
    ld [$c1f4], a
    ld a, [hl+]
    ld [$c1c7], a
    ret

SceneScriptIntroChris:: ; 0x421b
    db $00, $00, $00
    db $01
    dw $0100, $fd00, $0018, $0000, $0000
    db $02
    dw $ff40, $fdc0, $000c, $0803, $0000
    db $03
    dw $ff80, $fca0, $0004, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $07, $06
    db $06, $3c
    db $09, $03, $10
    db $09, $00, $00
    db $06, $0f
    db $0d
    dw $418f
    db $06, $64
    db $07, $01
    db $10, $04
    db $0c
    dw $4192
    db $06, $19
    db $10, $84
    db $06, $32
    db $0e
    dw $4195
    db $06, $14
    db $07, $02
    db $06, $32
    db $0d
    dw $4198
    db $06, $32
    db $07, $01
    db $1c, $0f
    db $0d
    dw $419b
    db $10, $04
    db $06, $1e
    db $18, $10
    db $06, $32
    db $08, $00, $00
    db $10, $84
    db $0c
    dw $419e
    db $06, $32
    db $16, $18
    db $0a, $00, $00
    db $0e
    dw $41a1
    db $06, $1e
    db $10, $04
    db $14, $10
    db $10, $02
    db $14, $28
    db $08, $00, $00
    db $07, $05
    db $11, $84
    db $0d
    dw $41a4
    db $10, $88
    db $06, $96
    db $07, $06
    db $0d
    dw $41a7
    db $06, $64
    db $07, $05
    db $10, $08
    db $14, $1c
    db $10, $02
    db $14, $20
    db $21, $40
    db $01
    dw $fc70, $0000, $0008, $0000, $0000
    db $00, $01, $00
    db $1d

SceneScriptChrisReturnsToEntranceBeforeFirstZombie:: ; 0x42cd
    db $00, $00, $05
    db $01
    dw $03d0, $0058, $0014, $0000, $0000
    db $02
    dw $ff40, $fdc0, $000c, $1800, $0000
    db $03
    dw $ff80, $fca0, $0004, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $14, $46
    db $07, $06
    db $06, $32
    db $16, $1e
    db $06, $32
    db $0e
    dw $41aa
    db $06, $96
    db $10, $08
    db $14, $46
    db $21, $40
    db $01
    dw $fc70, $0000, $0008, $0000, $0000
    db $00, $01, $00
    db $1d

SceneScriptChrisReturnsToEntranceAfterFirstZombie:: ; 0x431c
    db $00, $00, $05
    db $01
    dw $03d0, $0058, $0014, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $14, $28
    db $10, $02
    db $07, $06
    db $14, $50
    db $08, $00, $00
    db $06, $64
    db $18, $10
    db $18, $0a
    db $10, $06
    db $08, $00, $00
    db $06, $1e
    db $0c
    dw $41ad
    db $06, $78
    db $10, $86
    db $10, $82
    db $18, $10
    db $07, $02
    db $18, $03
    db $10, $04
    db $08, $00, $00
    db $06, $64
    db $10, $88
    db $08, $00, $18
    db $06, $3c
    db $0c
    dw $41b0
    db $06, $64
    db $1e
    db $1d

SceneScript_436d:: ; 0x436d
    db $00, $02, $02
    db $01
    dw $ffa0, $0180, $000c, $0000, $0000
    db $04
    dw $0098, $fff8, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $0c
    dw $41b3
    db $06, $64
    db $07, $00
    db $17, $18
    db $0b, $00, $00
    db $06, $28
    db $0b, $00, $18
    db $0f
    dw $41b6
    db $06, $96
    db $0c
    dw $41b9
    db $06, $96
    db $07, $01
    db $0f
    dw $41bc
    db $06, $96
    db $0f
    dw $41bf
    db $06, $96
    db $07, $02
    db $08, $00, $18
    db $0c
    dw $41c2
    db $06, $96
    db $0c
    dw $41c5
    db $06, $96
    db $07, $01
    db $0f
    dw $41c8
    db $06, $96
    db $07, $02
    db $0c
    dw $41cb
    db $06, $96
    db $07, $01
    db $0f
    dw $41ce
    db $0b, $00, $00
    db $06, $96
    db $0b, $00, $18
    db $0f
    dw $41d1
    db $06, $96
    db $0f
    dw $41d4
    db $06, $96
    db $07, $00
    db $06, $96
    db $1d

SceneScript_43ed:: ; 0x43ed
    db $00, $02, $00
    db $01
    dw $0050, $00e8, $0008, $0000, $0000
    db $04
    dw $00a0, $00e8, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $08, $00, $00
    db $0b, $00, $00
    db $06, $1e
    db $0b, $00, $18
    db $0f
    dw $41d7
    db $06, $96
    db $1d

SceneScript_441e:: ; 0x441e
    db $00, $02, $02
    db $01
    dw $ff90, $0150, $0000, $0000, $0000
    db $04
    dw $0050, $ffb0, $0018, $0000, $0000
    db $22
    db $05
    db $06, $64
    db $1f
    db $06, $64
    db $10, $06
    db $06, $1e
    db $07, $01
    db $0f
    dw $41da
    db $0b, $00, $18
    db $06, $96
    db $0f
    dw $41dd
    db $06, $82
    db $00, $02, $00
    db $01
    dw $0050, $00e8, $0008, $0000, $0000
    db $04
    dw $00a0, $00e8, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $96
    db $0c
    dw $41e0
    db $06, $96
    db $0f
    dw $41e3
    db $06, $96
    db $0b, $00, $18
    db $0f
    dw $41e6
    db $10, $84
    db $06, $96
    db $20
    db $1e
    db $1d

SceneScript_4488:: ; 0x4488
    db $00, $07, $01
    db $01
    dw $ff88, $0008, $0000, $0000, $0000
    db $04
    dw $01a0, $fdb8, $0000, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $1c, $04
    db $06, $0f
    db $1c, $05
    db $07, $05
    db $06, $96
    db $0f
    dw $41e9
    db $06, $96
    db $17, $28
    db $0b, $00, $00
    db $06, $96
    db $0c
    dw $41ec
    db $06, $96
    db $07, $01
    db $17, $3c
    db $13, $84
    db $17, $3c
    db $0b, $00, $00
    db $10, $04
    db $08, $00, $00
    db $06, $1e
    db $0f
    dw $41ef
    db $06, $96
    db $0c
    dw $41f2
    db $06, $96
    db $07, $06
    db $10, $02
    db $08, $00, $18
    db $26, $28
    db $17, $28
    db $13, $84
    db $17, $0a
    db $0b, $00, $00
    db $06, $64
    db $0c
    dw $41f5
    db $06, $96
    db $0f
    dw $41f8
    db $06, $96
    db $0b, $00, $18
    db $0f
    dw $41fb
    db $06, $96
    db $0c
    dw $41fe
    db $06, $96
    db $0f
    dw $4201
    db $07, $01
    db $06, $96
    db $1d

SceneScript_4512:: ; 0x4512
    db $00, $07, $00
    db $01
    dw $01d0, $fdb8, $0018, $0000, $0000
    db $04
    dw $ff58, $0008, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $1c, $05
    db $0f
    dw $4204
    db $06, $3c
    db $10, $02
    db $14, $28
    db $07, $01
    db $14, $14
    db $10, $02
    db $14, $28
    db $10, $84
    db $08, $00, $00
    db $06, $1e
    db $08, $00, $18
    db $06, $96
    db $0f
    dw $4207
    db $06, $96
    db $07, $06
    db $06, $3c
    db $06, $3c
    db $0c
    dw $420a
    db $06, $96
    db $07, $01
    db $06, $1e
    db $18, $28
    db $08, $00, $00
    db $06, $64
    db $06, $96
    db $0f
    dw $420d
    db $06, $96
    db $1d

SceneScript_4574:: ; 0x4574
    db $00, $2d, $01
    db $01
    dw $0058, $feb0, $0000, $0000, $0000
    db $04
    dw $0090, $0150, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $14, $14
    db $14, $0a
    db $08, $00, $00
    db $06, $05
    db $08, $00, $18
    db $06, $05
    db $08, $07, $00
    db $0c
    dw $4339
    db $06, $96
    db $1c, $05
    db $17, $17
    db $06, $50
    db $1d

SceneScript_45b1:: ; 0x45b1
    db $00, $02, $04
    db $01
    dw $0068, $ffa8, $0000, $0007, $0000
    db $04
    dw $ff70, $0150, $0010, $0000, $0000
    db $22
    db $05
    db $06, $64
    db $1f
    db $06, $64
    db $0f
    dw $4204
    db $06, $96
    db $08, $00, $00
    db $0c
    dw $4210
    db $06, $96
    db $07, $02
    db $0f
    dw $4213
    db $06, $96
    db $07, $04
    db $08, $00, $00
    db $0c
    dw $4216
    db $06, $96
    db $07, $02
    db $0b, $00, $18
    db $0f
    dw $4219
    db $06, $96
    db $07, $04
    db $0c
    dw $421c
    db $06, $96
    db $07, $02
    db $0f
    dw $421f
    db $06, $96
    db $07, $04
    db $0c
    dw $4222
    db $08, $00, $00
    db $06, $96
    db $1d

SceneScript_4612:: ; 0x4612
    db $00, $4f, $03
    db $01
    dw $02c8, $0210, $0018, $0000, $0000
    db $03
    dw $0098, $0328, $0018, $0000, $0000
    db $22
    db $05
    db $1f
    db $06, $64
    db $08, $00, $00
    db $1c, $0f
    db $06, $14
    db $10, $04
    db $18, $1e
    db $07, $02
    db $08, $00, $00
    db $10, $84
    db $1c, $0f
    db $0a, $03, $00
    db $06, $32
    db $1c, $0f
    db $0c
    dw $43d2
    db $0a, $03, $10
    db $0a, $00, $00
    db $06, $78
    db $07, $07
    db $12, $08
    db $0e
    dw $43d5
    db $06, $64
    db $08, $00, $18
    db $0c
    dw $43d8
    db $14, $28
    db $08, $00, $00
    db $06, $64
    db $0c
    dw $43db
    db $06, $64
    db $0e
    dw $43de
    db $06, $64
    db $0a, $00, $18
    db $0c
    dw $43e1
    db $06, $64
    db $07, $01
    db $16, $0a
    db $07, $02
    db $16, $3f
    db $12, $08
    db $06, $0a
    db $0e
    dw $43e4
    db $06, $50
    db $08, $00, $18
    db $12, $84
    db $16, $06
    db $03
    dw $fd30, $03d0, $0010, $0000, $0000
    db $22
    db $1d

SceneScript_46a3:: ; 0x46a3
    db $00, $13, $01
    db $01
    dw $ff88, $ffb0, $0000, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $14, $14
    db $0c
    dw $4444
    db $08, $07, $00
    db $0c
    dw $4537
    db $06, $64
    db $08, $00, $00
    db $06, $64
    db $1d

SceneScript_46cb:: ; 0x46cb
    db $00, $0b, $02
    db $01
    dw $0210, $0030, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $08, $00, $00
    db $0c
    dw $455e
    db $06, $64
    db $10, $02
    db $06, $05
    db $10, $84
    db $06, $05
    db $10, $02
    db $0c
    dw $453a
    db $06, $64
    db $1d

SceneScript_46f8:: ; 0x46f8
    db $00, $08, $04
    db $01
    dw $fec0, $0300, $0008, $0000, $0000
    db $33
    dw $01f8, $01f8, $0000, $0000, $0000
    db $04
    dw $01f8, $02b0, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $28, $05
    db $25, $05
    db $28, $05
    db $25, $05
    db $28, $05
    db $25, $05
    db $28, $05
    db $25, $05
    db $28, $05
    db $25, $05
    db $28, $05
    db $25, $05
    db $06, $64
    db $07, $05
    db $28, $02
    db $25, $05
    db $28, $02
    db $25, $05
    db $28, $02
    db $25, $05
    db $28, $02
    db $25, $05
    db $38, $03, $00
    db $06, $28
    db $08, $03, $10
    db $08, $03, $08
    db $0c
    dw $4420
    db $37, $86
    db $06, $14
    db $25, $14
    db $07, $03
    db $37, $02
    db $25, $32
    db $06, $64
    db $00, $08, $05
    db $01
    dw $01d8, $02c0, $0000, $0803, $0000
    db $04
    dw $0248, $0390, $0014, $0003, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $08, $03, $10
    db $08, $00, $00
    db $0c
    dw $453d
    db $06, $96
    db $0f
    dw $4540
    db $06, $96
    db $0c
    dw $4543
    db $06, $96
    db $0b, $00, $00
    db $0b, $00, $18
    db $0f
    dw $4546
    db $06, $96
    db $08, $00, $18
    db $0c
    dw $4549
    db $06, $96
    db $0c
    dw $454c
    db $06, $96
    db $0c
    dw $4552
    db $06, $96
    db $0b, $00, $00
    db $0f
    dw $454f
    db $06, $96
    db $0c
    dw $4555
    db $06, $96
    db $0f
    dw $4558
    db $06, $96
    db $0c
    dw $455b
    db $06, $96
    db $10, $84
    db $07, $02
    db $06, $14
    db $20
    db $1e
    db $1d

SceneScript_47dd:: ; 0x47dd
    db $00, $3c, $03
    db $01
    dw $0220, $02d0, $0008, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $14, $05
    db $10, $04
    db $14, $0a
    db $0c
    dw $438a
    db $14, $32
    db $10, $02
    db $06, $96
    db $07, $05
    db $14, $28
    db $08, $00, $00
    db $2d
    dw $4345
    db $06, $96
    db $0c
    dw $4348
    db $06, $96
    db $2d
    dw $434b
    db $06, $96
    db $0c
    dw $434e
    db $06, $96
    db $07, $07
    db $1c, $0f
    db $2d
    dw $4354
    db $06, $96
    db $07, $04
    db $10, $04
    db $0c
    dw $4351
    db $1c, $0c
    db $06, $14
    db $1c, $0c
    db $06, $14
    db $1c, $0c
    db $06, $14
    db $1c, $0c
    db $06, $14
    db $1c, $0c
    db $06, $14
    db $06, $32
    db $07, $03
    db $1c, $0c
    db $06, $14
    db $1c, $0c
    db $06, $14
    db $1c, $0c
    db $06, $14
    db $1c, $0c
    db $06, $14
    db $1c, $0c
    db $06, $14
    db $1c, $0c
    db $06, $14
    db $06, $0a
    db $07, $05
    db $08, $00, $18
    db $0c
    dw $4357
    db $06, $96
    db $1d

SceneScript_4869:: ; 0x4869
    db $00, $64, $02
    db $01
    dw $00c0, $ff08, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $0d
    dw $43f0
    db $06, $32
    db $10, $08
    db $06, $64
    db $07, $03
    db $0c
    dw $43f3
    db $06, $96
    db $0d
    dw $43f6
    db $06, $96
    db $0c
    dw $43f9
    db $06, $96
    db $0d
    dw $43fc
    db $06, $96
    db $07, $02
    db $06, $96
    db $20
    db $1d

SceneScript_48a3:: ; 0x48a3
    db $00, $65, $03
    db $01
    dw $0390, $00d0, $0018, $0000, $0000
    db $04
    dw $0000, $fe48, $0000, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $06, $64
    db $07, $02
    db $0f
    dw $4399
    db $1b, $0f
    db $13, $04
    db $1b, $46
    db $13, $84
    db $1b, $1e
    db $13, $84
    db $06, $3c
    db $07, $03
    db $0b, $00, $00
    db $0c
    dw $43ea
    db $06, $64
    db $0b, $00, $18
    db $0f
    dw $43ed
    db $06, $64
    db $08, $00, $18
    db $0c
    dw $43ff
    db $06, $64
    db $0f
    dw $453d
    db $0b, $00, $00
    db $0f
    dw $454f
    db $10, $84
    db $13, $04
    db $17, $0a
    db $06, $64
    db $20
    db $1e
    db $00, $6b, $00
    db $01
    dw $0000, $ffc0, $0018, $0000, $0000
    db $04
    dw $0000, $0040, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $06, $96
    db $00, $6c, $00
    db $01
    dw $02d0, $ff78, $0018, $0000, $0000
    db $04
    dw $02d0, $fec8, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $06, $32
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $14, $05
    db $17, $05
    db $06, $5a
    db $07, $01
    db $06, $64
    db $00, $6c, $03
    db $01
    dw $fec8, $0000, $0018, $0000, $0000
    db $04
    dw $fec8, $fe50, $0018, $0000, $0000
    db $03
    dw $fda0, $01d0, $0010, $1800, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $14, $28
    db $13, $02
    db $17, $14
    db $13, $02
    db $10, $04
    db $0e
    dw $4402
    db $0a, $03, $10
    db $0a, $03, $08
    db $08, $00, $18
    db $06, $96
    db $07, $05
    db $0c
    dw $4405
    db $06, $96
    db $07, $02
    db $0e
    dw $4408
    db $06, $96
    db $07, $05
    db $0c
    dw $440b
    db $06, $96
    db $07, $03
    db $0e
    dw $440e
    db $06, $96
    db $07, $05
    db $0c
    dw $4411
    db $06, $96
    db $07, $02
    db $0e
    dw $4414
    db $06, $96
    db $07, $05
    db $0c
    dw $4417
    db $06, $96
    db $0f
    dw $441a
    db $06, $96
    db $07, $03
    db $0e
    dw $441d
    db $1c, $0f
    db $06, $96
    db $07, $05
    db $0b, $00, $18
    db $13, $02
    db $17, $0b
    db $13, $02
    db $0b, $03, $00
    db $08, $00, $00
    db $0c
    dw $4420
    db $06, $96
    db $04
    dw $02d0, $fe30, $0018, $0000, $0000
    db $07, $03
    db $0e
    dw $4423
    db $06, $96
    db $0e
    dw $4426
    db $06, $96
    db $0e
    dw $4429
    db $20
    db $1e
    db $00, $6e, $02
    db $01
    dw $ff28, $0298, $0000, $0000, $0000
    db $03
    dw $fe48, $0208, $0004, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $07, $05
    db $06, $96
    db $07, $06
    db $06, $96
    db $07, $03
    db $06, $96
    db $07, $05
    db $08, $00, $18
    db $0c
    dw $442c
    db $16, $0a
    db $12, $82
    db $16, $14
    db $12, $02
    db $16, $14
    db $12, $04
    db $06, $96
    db $0e
    dw $442f
    db $0a, $03, $08
    db $06, $96
    db $0e
    dw $4432
    db $06, $96
    db $0e
    dw $4435
    db $06, $96
    db $0c
    dw $4438
    db $06, $96
    db $0c
    dw $443b
    db $06, $96
    db $0e
    dw $443e
    db $0a, $00, $00
    db $12, $08
    db $16, $0f
    db $12, $08
    db $06, $96
    db $07, $06
    db $06, $96
    db $07, $02
    db $26, $1e
    db $0e
    dw $4441
    db $29, $0a
    db $06, $96
    db $0e
    dw $4444
    db $06, $96
    db $0e
    dw $4447
    db $12, $04
    db $06, $96
    db $07, $07
    db $06, $32
    db $07, $05
    db $07, $02
    db $0c
    dw $444a
    db $06, $96
    db $1e
    db $1d

SceneScript_4ae3:: ; 0x4ae3
    db $00, $6c, $02
    db $01
    dw $fdb0, $01d0, $0010, $0000, $0000
    db $04
    dw $0060, $fef0, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $14, $32
    db $10, $82
    db $14, $28
    db $10, $82
    db $07, $01
    db $08, $00, $00
    db $0b, $00, $00
    db $0c
    dw $444d
    db $06, $96
    db $0b, $00, $18
    db $0f
    dw $4450
    db $06, $96
    db $08, $00, $18
    db $0c
    dw $4453
    db $06, $96
    db $0f
    dw $4456
    db $06, $96
    db $0c
    dw $4459
    db $18, $30
    db $07, $00
    db $13, $08
    db $18, $06
    db $1b, $06
    db $18, $06
    db $1b, $06
    db $18, $06
    db $1b, $06
    db $18, $06
    db $1b, $06
    db $00, $6b, $00
    db $01
    dw $0000, $ffc0, $0018, $0000, $0000
    db $04
    dw $0000, $0040, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $06, $96
    db $00, $65, $03
    db $01
    dw $0338, $00d0, $0010, $0000, $0000
    db $04
    dw $03c0, $00d0, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $06, $32
    db $18, $14
    db $0b, $00, $18
    db $0f
    dw $445c
    db $08, $00, $00
    db $10, $08
    db $06, $64
    db $0c
    dw $445f
    db $06, $64
    db $0f
    dw $4462
    db $06, $64
    db $0c
    dw $4465
    db $06, $64
    db $0b, $00, $00
    db $0f
    dw $4468
    db $06, $64
    db $0c
    dw $446b
    db $13, $02
    db $1b, $14
    db $10, $84
    db $07, $02
    db $13, $02
    db $1b, $60
    db $1c, $05
    db $1e
    db $1d

SceneScript_4bbd:: ; 0x4bbd
    db $00, $5e, $04
    db $01
    dw $0320, $0340, $0014, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $08, $00, $00
    db $2f
    dw $446e
    db $06, $c8
    db $1e
    db $1d

SceneScript_4bdc:: ; 0x4bdc
    db $00, $6d, $00
    db $01
    dw $0000, $0100, $0010, $0000, $0000
    db $02
    dw $0000, $fe20, $0000, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $0c
    dw $4471
    db $06, $64
    db $0d
    dw $4474
    db $19, $24
    db $06, $64
    db $07, $02
    db $19, $0c
    db $0d
    dw $4477
    db $06, $64
    db $07, $00
    db $0c
    dw $447a
    db $10, $08
    db $06, $64
    db $1d

SceneScript_4c1b:: ; 0x4c1b
    db $00, $61, $03
    db $01
    dw $02d0, $ffc0, $0018, $0000, $0000
    db $02
    dw $02d0, $0060, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $06, $32
    db $07, $02
    db $19, $3c
    db $09, $00, $18
    db $11, $86
    db $0d
    dw $43e7
    db $11, $06
    db $19, $60
    db $07, $03
    db $1d

SceneScript_4c50:: ; 0x4c50
    db $00, $5b, $01
    db $01
    dw $fff0, $feb0, $0000, $0000, $0000
    db $02
    dw $ff30, $0020, $0008, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $11, $02
    db $0d
    dw $44a1
    db $19, $0e
    db $1d

SceneScript_4c78:: ; 0x4c78
    db $00, $59, $02
    db $01
    dw $00c8, $0250, $0010, $0000, $0000
    db $02
    dw $0078, $0310, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $40
    dw $447d
    db $06, $64
    db $1d

SceneScript_4c9e:: ; 0x4c9e
    db $00, $59, $05
    db $01
    dw $fcb8, $fc30, $0018, $0000, $0000
    db $04
    dw $fd78, $ffd8, $0010, $0000, $0000
    db $02
    dw $fd98, $fc30, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $14, $14
    db $07, $04
    db $1b, $37
    db $07, $05
    db $0b, $00, $00
    db $0f
    dw $4480
    db $10, $04
    db $14, $14
    db $10, $04
    db $06, $64
    db $07, $06
    db $09, $00, $18
    db $0c
    dw $4483
    db $06, $64
    db $07, $05
    db $13, $06
    db $11, $04
    db $06, $0a
    db $13, $84
    db $06, $64
    db $0f
    dw $4486
    db $13, $84
    db $06, $64
    db $0d
    dw $4489
    db $09, $03, $10
    db $09, $03, $08
    db $06, $64
    db $07, $06
    db $0c
    dw $4492
    db $06, $64
    db $07, $05
    db $0d
    dw $448c
    db $06, $64
    db $07, $06
    db $0c
    dw $448f
    db $10, $86
    db $06, $64
    db $1d

SceneScript_4d1f:: ; 0x4d1f
    db $00, $39, $01
    db $01
    dw $00f0, $0020, $0018, $0007, $0000
    db $34
    dw $07f8, $07f8, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $06, $1e
    db $08, $00, $00
    db $10, $08
    db $06, $0a
    db $10, $02
    db $06, $05
    db $10, $82
    db $06, $14
    db $07, $01
    db $07, $02
    db $06, $64
    db $07, $03
    db $06, $64
    db $07, $01
    db $06, $64
    db $07, $04
    db $06, $64
    db $07, $00
    db $1d

SceneScriptIntroJill:: ; 0x4d65
    db $39
    db $00, $00, $00
    db $32
    dw $0080, $fbc8, $0000, $0803, $0000
    db $02
    dw $ff80, $fbc8, $0000, $0803, $0000
    db $03
    dw $0000, $fbc8, $0000, $0803, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $0a, $03, $10
    db $0a, $00, $00
    db $35, $03, $10
    db $35, $00, $00
    db $09, $03, $10
    db $09, $00, $18
    db $11, $82
    db $30, $02
    db $15, $14
    db $23, $14
    db $06, $0a
    db $07, $01
    db $16, $0f
    db $0a, $00, $00
    db $15, $37
    db $09, $00, $00
    db $23, $0f
    db $35, $00, $00
    db $2e
    dw $4225
    db $06, $96
    db $23, $04
    db $11, $82
    db $15, $04
    db $0e
    dw $4228
    db $06, $96
    db $15, $03
    db $30, $86
    db $35, $00, $00
    db $07, $02
    db $11, $88
    db $19, $03
    db $07, $06
    db $09, $00, $00
    db $0d
    dw $422b
    db $06, $96
    db $11, $04
    db $19, $02
    db $0e
    dw $422e
    db $06, $96
    db $0d
    dw $4231
    db $06, $96
    db $1c, $0f
    db $11, $84
    db $2e
    dw $4234
    db $06, $96
    db $0e
    dw $4237
    db $06, $96
    db $0e
    dw $423a
    db $06, $96
    db $2e
    dw $423d
    db $06, $96
    db $0e
    dw $4240
    db $06, $96
    db $15, $32
    db $11, $82
    db $07, $01
    db $30, $04
    db $0e
    dw $4243
    db $06, $96
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $30, $02
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $2c, $05
    db $19, $05
    db $19, $05
    db $19, $05
    db $19, $05
    db $19, $05
    db $19, $05
    db $11, $02
    db $19, $05
    db $19, $05
    db $07, $05
    db $19, $05
    db $11, $82
    db $19, $05
    db $19, $05
    db $19, $05
    db $19, $05
    db $19, $05
    db $19, $05
    db $19, $05
    db $06, $96
    db $21, $40
    db $02
    dw $fc70, $0000, $0008, $0000, $0000
    db $00, $01, $ff
    db $3b
    db $1d

SceneScriptJillAndBarryEnterDiningHall:: ; 0x4e79
    db $39
    db $00, $01, $00
    db $02
    dw $fc70, $ff98, $0008, $0000, $0000
    db $32
    dw $fc70, $0060, $0008, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $23, $14
    db $2e
    dw $4246
    db $06, $96
    db $30, $82
    db $23, $1e
    db $30, $02
    db $23, $3c
    db $07, $01
    db $23, $3c
    db $3b
    db $1d

SceneScriptBarryChecksFireplace:: ; 0x4eaf
    db $39
    db $00, $01, $02
    db $02
    dw $01f8, $0100, $000c, $1800, $0000
    db $32
    dw $0390, $ffe8, $000c, $0005, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $15, $0a
    db $2e
    dw $4249
    db $06, $96
    db $15, $14
    db $07, $03
    db $15, $0c
    db $09, $00, $18
    db $0d
    dw $424c
    db $06, $96
    db $2e
    dw $424f
    db $06, $96
    db $2e
    dw $4252
    db $06, $96
    db $3b
    db $1d

SceneScriptBarryKillsFirstZombie:: ; 0x4ef1
    db $39
    db $00, $01, $02
    db $02
    dw $02c0, $0150, $0010, $1800, $0000
    db $32
    dw $0390, $ff60, $000c, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $19, $16
    db $11, $82
    db $19, $04
    db $07, $03
    db $33
    dw $0310, $0150, $000c, $0000, $0000
    db $22
    db $11, $02
    db $15, $14
    db $11, $86
    db $09, $00, $18
    db $0d
    dw $4255
    db $1c, $04
    db $06, $32
    db $1c, $05
    db $25, $0a
    db $37, $02
    db $30, $88
    db $07, $02
    db $2e
    dw $4258
    db $25, $0f
    db $0d
    dw $425b
    db $25, $14
    db $27, $14
    db $06, $46
    db $2e
    dw $425e
    db $30, $02
    db $35, $03, $10
    db $35, $03, $08
    db $1c, $0f
    db $06, $1e
    db $1c, $0f
    db $06, $1e
    db $1c, $0f
    db $06, $1e
    db $38, $02, $00
    db $30, $82
    db $35, $03, $10
    db $35, $00, $00
    db $23, $0a
    db $15, $0a
    db $30, $86
    db $2e
    dw $4261
    db $06, $96
    db $0d
    dw $4264
    db $06, $96
    db $0d
    dw $4267
    db $30, $04
    db $2c, $28
    db $07, $01
    db $2c, $32
    db $20
    db $1c, $04
    db $06, $1e
    db $1c, $05
    db $3b
    db $1d

SceneScriptJilLAndBarryReturnEntrance:: ; 0x4f92
    db $39
    db $00, $00, $06
    db $02
    dw $03d0, $0090, $0014, $0000, $0000
    db $32
    dw $03d0, $0040, $0014, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $15, $14
    db $23, $14
    db $30, $82
    db $15, $0a
    db $23, $0a
    db $30, $02
    db $15, $0f
    db $23, $0f
    db $07, $05
    db $11, $02
    db $30, $02
    db $15, $28
    db $23, $28
    db $0d
    dw $426a
    db $06, $96
    db $15, $14
    db $11, $86
    db $30, $04
    db $09, $00, $18
    db $2e
    dw $426d
    db $06, $64
    db $30, $84
    db $2c, $0a
    db $09, $00, $00
    db $2c, $32
    db $11, $82
    db $15, $0a
    db $11, $84
    db $15, $78
    db $07, $04
    db $11, $84
    db $15, $32
    db $32
    dw $fda8, $fe10, $0004, $1800, $0000
    db $22
    db $07, $03
    db $15, $32
    db $35, $00, $18
    db $15, $0a
    db $11, $84
    db $07, $02
    db $15, $96
    db $11, $02
    db $15, $0a
    db $09, $00, $18
    db $06, $32
    db $2e
    dw $4270
    db $06, $96
    db $09, $00, $00
    db $0d
    dw $4273
    db $06, $96
    db $07, $01
    db $0d
    dw $4276
    db $06, $96
    db $2e
    dw $4279
    db $06, $96
    db $0d
    dw $427c
    db $06, $96
    db $2e
    dw $427f
    db $06, $96
    db $0d
    dw $4282
    db $06, $96
    db $2e
    dw $4285
    db $06, $96
    db $07, $02
    db $2e
    dw $4288
    db $06, $96
    db $15, $09
    db $0d
    dw $428b
    db $27, $0a
    db $09, $00, $00
    db $06, $46
    db $30, $02
    db $07, $06
    db $2c, $3c
    db $30, $82
    db $2c, $0a
    db $07, $05
    db $30, $86
    db $35, $00, $00
    db $2e
    dw $4291
    db $06, $96
    db $07, $06
    db $35, $00, $18
    db $2e
    dw $4294
    db $06, $96
    db $07, $05
    db $30, $06
    db $23, $28
    db $20
    db $1c, $04
    db $06, $32
    db $1c, $05
    db $3b
    db $1d

SceneScript_508a:: ; 0x508a
    db $39
    db $00, $00, $02
    db $32
    dw $fda8, $fe10, $0004, $1800, $0000
    db $02
    dw $fe98, $ff00, $0010, $1800, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $2e
    dw $4270
    db $06, $96
    db $09, $00, $00
    db $0d
    dw $4273
    db $06, $96
    db $07, $01
    db $0d
    dw $4276
    db $06, $96
    db $2e
    dw $4279
    db $06, $96
    db $0d
    dw $427c
    db $06, $96
    db $2e
    dw $427f
    db $06, $96
    db $0d
    dw $4282
    db $06, $96
    db $2e
    dw $4285
    db $06, $96
    db $2e
    dw $4288
    db $06, $96
    db $15, $1e
    db $0d
    dw $428b
    db $27, $1e
    db $06, $46
    db $30, $02
    db $07, $06
    db $2c, $3c
    db $30, $82
    db $2c, $0a
    db $07, $05
    db $30, $86
    db $35, $00, $00
    db $2e
    dw $4291
    db $06, $96
    db $07, $06
    db $35, $00, $18
    db $2e
    dw $4294
    db $06, $96
    db $07, $05
    db $30, $06
    db $23, $28
    db $07, $02
    db $06, $50
    db $1c, $04
    db $06, $32
    db $1c, $05
    db $3b
    db $1d

SceneScript_5118:: ; 0x5118
    db $39
    db $00, $19, $01
    db $02
    dw $ff70, $ff30, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $09, $00, $00
    db $0d
    dw $4297
    db $06, $96
    db $39
    db $00, $0a, $06
    db $32
    dw $0018, $fee8, $0004, $0000, $0000
    db $22
    db $05
    db $2e
    dw $429a
    db $06, $96
    db $39
    db $00, $19, $01
    db $02
    dw $ff70, $ff30, $0010, $0000, $0000
    db $22
    db $05
    db $11, $88
    db $0d
    dw $429d
    db $06, $96
    db $2e
    dw $42a0
    db $06, $96
    db $1c, $04
    db $21, $40
    db $00, $19, $01
    db $02
    dw $ff70, $0000, $0000, $0000, $0000
    db $32
    dw $0000, $00d0, $0004, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $2e
    dw $42a3
    db $30, $06
    db $11, $02
    db $2c, $02
    db $19, $02
    db $2c, $02
    db $19, $04
    db $06, $50
    db $21, $40
    db $00, $0a, $06
    db $02
    dw $0030, $fee8, $0010, $1800, $0000
    db $3b
    db $1d

SceneScript_51ad:: ; 0x51ad
    db $39
    db $00, $2f, $00
    db $32
    dw $ffa8, $0028, $000c, $0000, $0000
    db $02
    dw $fed8, $00d0, $000c, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $30, $08
    db $35, $03, $10
    db $35, $03, $08
    db $2e
    dw $42e2
    db $06, $0a
    db $35, $03, $10
    db $35, $00, $18
    db $06, $96
    db $2e
    dw $42e5
    db $06, $96
    db $15, $01
    db $0d
    dw $42e8
    db $06, $96
    db $2e
    dw $42eb
    db $30, $86
    db $11, $02
    db $23, $14
    db $07, $01
    db $23, $0a
    db $30, $84
    db $23, $1e
    db $15, $23
    db $11, $84
    db $15, $19
    db $07, $03
    db $2e
    dw $42ee
    db $06, $96
    db $07, $02
    db $0d
    dw $42f1
    db $06, $96
    db $35, $05, $00
    db $2e
    dw $42f4
    db $06, $96
    db $0d
    dw $42f7
    db $11, $88
    db $15, $01
    db $2e
    dw $42fa
    db $06, $96
    db $35, $00, $00
    db $11, $08
    db $1e
    db $3b
    db $3c
    db $2b, $54
    db $39
    db $00, $0a, $06
    db $32
    dw $fff8, $fe28, $0004, $1800, $0000
    db $02
    dw $fff8, $fee8, $000c, $1800, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $0d
    dw $42a6
    db $06, $96
    db $2e
    dw $42a9
    db $06, $96
    db $0d
    dw $42ac
    db $06, $96
    db $0d
    dw $42af
    db $06, $96
    db $2e
    dw $42b2
    db $06, $96
    db $2e
    dw $42b5
    db $06, $96
    db $23, $14
    db $30, $02
    db $23, $19
    db $35, $00, $18
    db $30, $84
    db $07, $06
    db $0d
    dw $42b8
    db $06, $96
    db $07, $05
    db $2e
    dw $42bb
    db $30, $04
    db $23, $14
    db $30, $84
    db $23, $28
    db $00, $01, $00
    db $3b
    db $1d

SceneScript_5295:: ; 0x5295
    db $39
    db $00, $00, $01
    db $32
    dw $0010, $ffb8, $0008, $1800, $0000
    db $02
    dw $fc30, $fed0, $0008, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $15, $1e
    db $0d
    dw $42be
    db $06, $96
    db $30, $08
    db $15, $28
    db $23, $32
    db $07, $02
    db $30, $82
    db $35, $00, $18
    db $2e
    dw $42c1
    db $06, $96
    db $11, $82
    db $0d
    dw $42c4
    db $06, $96
    db $2e
    dw $42c7
    db $06, $96
    db $2e
    dw $42ca
    db $06, $96
    db $0d
    dw $42cd
    db $06, $96
    db $11, $86
    db $2e
    dw $42d0
    db $06, $96
    db $09, $00, $00
    db $0d
    dw $42d3
    db $11, $06
    db $06, $96
    db $2e
    dw $42d6
    db $06, $96
    db $0d
    dw $42d9
    db $06, $96
    db $2e
    dw $42dc
    db $06, $96
    db $35, $03, $10
    db $35, $03, $08
    db $06, $28
    db $35, $03, $10
    db $35, $00, $18
    db $0d
    dw $42df
    db $06, $96
    db $30, $82
    db $23, $05
    db $15, $0f
    db $27, $14
    db $30, $84
    db $2c, $28
    db $07, $01
    db $2c, $14
    db $06, $3c
    db $07, $02
    db $06, $50
    db $1c, $04
    db $1c, $05
    db $3b
    db $1d

SceneScript_5334:: ; 0x5334
    db $39
    db $00, $29, $00
    db $32
    dw $0090, $ffc8, $000c, $1800, $0000
    db $02
    dw $ffe0, $00f0, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $64
    db $07, $01
    db $30, $08
    db $2e
    dw $42fd
    db $06, $96
    db $07, $00
    db $15, $0a
    db $07, $01
    db $15, $05
    db $11, $82
    db $09, $00, $00
    db $0d
    dw $4300
    db $06, $96
    db $2e
    dw $4303
    db $15, $14
    db $09, $03, $10
    db $06, $0a
    db $09, $00, $00
    db $27, $0a
    db $09, $00, $18
    db $06, $96
    db $2e
    dw $4306
    db $06, $96
    db $0d
    dw $4309
    db $06, $96
    db $2e
    dw $430c
    db $06, $96
    db $0d
    dw $430f
    db $06, $96
    db $2e
    dw $4312
    db $30, $82
    db $23, $28
    db $30, $04
    db $23, $28
    db $07, $00
    db $11, $08
    db $27, $0a
    db $23, $14
    db $30, $06
    db $06, $14
    db $30, $86
    db $06, $46
    db $21, $40
    db $3b
    db $1d

SceneScript_53b7:: ; 0x53b7
    db $39
    db $00, $1e, $01
    db $02
    dw $0010, $01b0, $0008, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $15, $40
    db $11, $04
    db $07, $02
    db $19, $14
    db $07, $03
    db $09, $00, $00
    db $0d
    dw $4315
    db $19, $14
    db $11, $04
    db $09, $07, $00
    db $06, $96
    db $07, $04
    db $3d
    dw $4318
    db $06, $96
    db $0d
    dw $431b
    db $06, $96
    db $3d
    dw $431e
    db $06, $96
    db $0d
    dw $4321
    db $06, $96
    db $3d
    dw $4324
    db $06, $96
    db $0d
    dw $4327
    db $06, $96
    db $3d
    dw $432a
    db $06, $96
    db $09, $00, $00
    db $11, $04
    db $07, $03
    db $19, $14
    db $07, $02
    db $19, $0a
    db $07, $01
    db $19, $0a
    db $11, $84
    db $19, $28
    db $07, $00
    db $19, $0a
    db $21, $40
    db $00, $27, $00
    db $02
    dw $00c8, $02d0, $0010, $0000, $0000
    db $3b
    db $1d

SceneScript_5436:: ; 0x5436
    db $39
    db $00, $1e, $04
    db $02
    dw $01d0, $0040, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $19, $14
    db $11, $04
    db $09, $07, $00
    db $0d
    dw $432d
    db $06, $96
    db $3d
    dw $4330
    db $06, $96
    db $0d
    dw $4333
    db $06, $96
    db $3d
    dw $4336
    db $06, $96
    db $07, $03
    db $09, $00, $00
    db $06, $96
    db $3b
    db $1d

SceneScript_5470:: ; 0x5470
    db $00, $2d, $01
    db $02
    dw $0058, $feb0, $0000, $0000, $0000
    db $32
    dw $0090, $0150, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $15, $14
    db $09, $00, $00
    db $06, $05
    db $09, $00, $18
    db $06, $05
    db $09, $07, $00
    db $0d
    dw $4339
    db $06, $96
    db $1c, $05
    db $23, $17
    db $06, $50
    db $20
    db $3b
    db $1d

SceneScript_54ad:: ; 0x54ad
    db $39
    db $00, $36, $01
    db $02
    dw $0220, $0180, $0004, $1800, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $40
    dw $433c
    db $06, $96
    db $0d
    dw $4390
    db $06, $96
    db $40
    dw $433f
    db $06, $96
    db $0d
    dw $4393
    db $06, $96
    db $3b
    db $1d

SceneScript_54d9:: ; 0x54d9
    db $39
    db $00, $4f, $05
    db $02
    dw $0370, $fd78, $000c, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $11, $84
    db $27, $0a
    db $11, $84
    db $06, $50
    db $2e
    dw $439c
    db $06, $96
    db $41
    dw $439f
    db $06, $96
    db $2e
    dw $43a2
    db $09, $00, $18
    db $06, $96
    db $41
    dw $43a5
    db $06, $96
    db $2e
    dw $43a8
    db $06, $96
    db $41
    dw $43ab
    db $06, $96
    db $2e
    dw $43ae
    db $09, $00, $00
    db $06, $96
    db $3b
    db $1d

SceneScript_5522:: ; 0x5522
    db $39
    db $00, $50, $01
    db $32
    dw $0080, $ff28, $0004, $0803, $0000
    db $02
    dw $0168, $0250, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $15, $28
    db $07, $02
    db $15, $1e
    db $09, $00, $18
    db $23, $14
    db $35, $00, $00
    db $2e
    dw $43b1
    db $06, $96
    db $07, $04
    db $0d
    dw $43b4
    db $06, $96
    db $2e
    dw $43b7
    db $06, $96
    db $0d
    dw $43ba
    db $06, $96
    db $2e
    dw $43bd
    db $06, $96
    db $09, $00, $00
    db $23, $05
    db $30, $82
    db $23, $0a
    db $07, $02
    db $23, $14
    db $11, $04
    db $30, $02
    db $23, $0a
    db $30, $82
    db $23, $0a
    db $11, $04
    db $06, $14
    db $07, $01
    db $23, $14
    db $35, $00, $00
    db $30, $08
    db $2e
    dw $43c0
    db $06, $96
    db $30, $88
    db $32
    dw $ff68, $ff28, $0004, $0803, $0000
    db $07, $04
    db $22
    db $1c, $04
    db $06, $64
    db $1c, $05
    db $11, $88
    db $09, $00, $18
    db $06, $32
    db $3b
    db $1d

SceneScript_55b4:: ; 0x55b4
    db $39
    db $00, $4f, $03
    db $02
    dw $02c8, $0210, $0018, $0000, $0000
    db $03
    dw $0098, $0370, $0018, $0000, $0000
    db $22
    db $05
    db $1f
    db $06, $64
    db $09, $00, $00
    db $1c, $0f
    db $06, $14
    db $11, $04
    db $19, $1e
    db $07, $02
    db $09, $00, $00
    db $11, $84
    db $1c, $0f
    db $0a, $03, $00
    db $06, $32
    db $1c, $0f
    db $0d
    dw $43d2
    db $0a, $03, $10
    db $0a, $00, $00
    db $06, $78
    db $07, $07
    db $12, $08
    db $0e
    dw $43c3
    db $06, $96
    db $09, $00, $18
    db $0d
    dw $43c6
    db $15, $28
    db $09, $00, $00
    db $0a, $00, $18
    db $0e
    dw $43c9
    db $0d
    dw $43cc
    db $06, $64
    db $07, $01
    db $16, $03
    db $07, $02
    db $16, $3f
    db $12, $08
    db $06, $64
    db $0d
    dw $43cf
    db $09, $00, $18
    db $12, $84
    db $16, $06
    db $03
    dw $fd30, $03d0, $0010, $0000, $0000
    db $22
    db $06, $96
    db $3b
    db $1d

SceneScript_563e:: ; 0x563e
    db $39
    db $00, $3a, $04
    db $02
    dw $fcd8, $fef8, $0000, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $40
    dw $4342
    db $06, $96
    db $09, $00, $18
    db $0d
    dw $4396
    db $06, $96
    db $3b
    db $1d

SceneScript_5663:: ; 0x5663
    db $39
    db $00, $2b, $02
    db $02
    dw $0078, $fe08, $000c, $0007, $0000
    db $32
    dw $fef0, $0290, $0010, $1800, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $1c, $04
    db $06, $32
    db $1c, $05
    db $06, $33
    db $07, $00
    db $23, $50
    db $09, $00, $00
    db $07, $02
    db $30, $82
    db $23, $1e
    db $09, $00, $00
    db $09, $00, $18
    db $23, $28
    db $35, $05, $00
    db $2e
    dw $4561
    db $06, $96
    db $0d
    dw $4564
    db $06, $96
    db $2e
    dw $4567
    db $06, $96
    db $0d
    dw $456a
    db $06, $96
    db $2e
    dw $456d
    db $06, $64
    db $21, $85
    db $39
    db $00, $2a, $00
    db $02
    dw $0050, $0100, $000c, $0007, $0000
    db $22
    db $05
    db $06, $32
    db $0d
    dw $4570
    db $09, $00, $00
    db $11, $08
    db $06, $96
    db $39
    db $00, $2b, $02
    db $32
    dw $0078, $fe08, $000c, $0005, $0000
    db $22
    db $05
    db $06, $32
    db $2e
    dw $4573
    db $06, $96
    db $35, $00, $00
    db $30, $08
    db $23, $1e
    db $06, $32
    db $39
    db $00, $2a, $00
    db $02
    dw $0050, $0100, $001c, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $0d
    dw $4576
    db $11, $88
    db $09, $00, $18
    db $06, $a0
    db $3b
    db $1d

SceneScript_571c:: ; 0x571c
    db $39
    db $00, $2b, $02
    db $32
    dw $ffa0, $00d0, $000c, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $1c, $04
    db $2c, $19
    db $30, $02
    db $2c, $0a
    db $35, $05, $00
    db $2e
    dw $4579
    db $06, $96
    db $39
    db $00, $2a, $00
    db $02
    dw $0050, $0100, $001c, $0000, $0000
    db $22
    db $05
    db $06, $96
    db $20
    db $39
    db $00, $2b, $02
    db $02
    dw $0078, $fe08, $0000, $0000, $0000
    db $32
    dw $00a8, $fed8, $000c, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $2e
    dw $457c
    db $09, $00, $18
    db $06, $96
    db $0d
    dw $457f
    db $06, $96
    db $35, $00, $18
    db $2e
    dw $4582
    db $06, $96
    db $0d
    dw $4585
    db $06, $96
    db $2e
    dw $4588
    db $06, $96
    db $2e
    dw $42d0
    db $06, $64
    db $0d
    dw $42df
    db $30, $08
    db $23, $46
    db $11, $82
    db $1c, $04
    db $06, $1e
    db $1c, $05
    db $06, $64
    db $3b
    db $1d

SceneScript_57ab:: ; 0x57ab
    db $39
    db $00, $43, $00
    db $02
    dw $fef0, $0018, $0008, $0803, $0000
    db $32
    dw $ffc0, $0008, $0008, $0803, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $09, $03, $10
    db $09, $00, $18
    db $30, $88
    db $35, $03, $10
    db $35, $00, $18
    db $2e
    dw $435a
    db $0d
    dw $435d
    db $06, $96
    db $2e
    dw $4360
    db $06, $96
    db $2e
    dw $4363
    db $06, $96
    db $06, $96
    db $1e
    db $3b
    db $1d

SceneScript_57f1:: ; 0x57f1
    db $39
    db $00, $3c, $03
    db $02
    dw $0220, $02d0, $0008, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $15, $05
    db $11, $04
    db $15, $0a
    db $2d
    dw $4366
    db $15, $32
    db $11, $02
    db $06, $96
    db $07, $05
    db $15, $28
    db $09, $00, $00
    db $0d
    dw $4369
    db $06, $96
    db $2d
    dw $436c
    db $06, $96
    db $15, $1e
    db $09, $00, $00
    db $0d
    dw $436f
    db $06, $96
    db $2d
    dw $4372
    db $06, $96
    db $07, $04
    db $0d
    dw $4375
    db $06, $96
    db $32
    dw $0250, $0268, $0010, $0000, $0000
    db $22
    db $07, $03
    db $2e
    dw $4378
    db $06, $96
    db $2c, $1e
    db $30, $02
    db $2c, $14
    db $35, $00, $18
    db $07, $05
    db $2d
    dw $437b
    db $06, $96
    db $07, $04
    db $2e
    dw $437e
    db $06, $96
    db $07, $05
    db $2d
    dw $4381
    db $06, $96
    db $07, $03
    db $2d
    dw $4384
    db $1c, $0f
    db $2d
    dw $4387
    db $06, $96
    db $07, $05
    db $2c, $0a
    db $35, $05, $00
    db $0d
    dw $438a
    db $06, $96
    db $07, $03
    db $06, $96
    db $3b
    db $1d

SceneScript_588c:: ; 0x588c
    db $39
    db $00, $64, $02
    db $02
    dw $0120, $ff08, $000c, $1800, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $06, $64
    db $07, $03
    db $0c
    dw $42fd
    db $06, $96
    db $07, $02
    db $0d
    dw $43d5
    db $06, $96
    db $0c
    dw $44a4
    db $06, $96
    db $0d
    dw $44a7
    db $06, $96
    db $0d
    dw $44aa
    db $06, $96
    db $07, $03
    db $0c
    dw $44ad
    db $06, $96
    db $07, $02
    db $06, $96
    db $3b
    db $1d

SceneScript_58ce:: ; 0x58ce
    db $39
    db $00, $65, $03
    db $02
    dw $0390, $0038, $0018, $0000, $0000
    db $32
    dw $0000, $fe48, $0000, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $2c, $0a
    db $06, $64
    db $07, $02
    db $2c, $05
    db $30, $04
    db $2c, $46
    db $30, $84
    db $2c, $05
    db $07, $03
    db $2c, $19
    db $11, $04
    db $15, $0a
    db $30, $84
    db $06, $3c
    db $35, $00, $00
    db $2e
    dw $4498
    db $06, $96
    db $0d
    dw $449b
    db $06, $96
    db $2e
    dw $449e
    db $06, $96
    db $0d
    dw $44a1
    db $11, $84
    db $30, $04
    db $23, $0a
    db $06, $64
    db $20
    db $1e
    db $00, $6b, $00
    db $02
    dw $0000, $ffc0, $0018, $0000, $0000
    db $32
    dw $0000, $0040, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $06, $96
    db $00, $6c, $00
    db $02
    dw $02d0, $ff78, $0018, $0000, $0000
    db $32
    dw $02d0, $fec8, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $06, $32
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $06, $5a
    db $07, $01
    db $06, $64
    db $00, $6c, $03
    db $02
    dw $fec8, $0000, $0018, $0000, $0000
    db $32
    dw $fec8, $fe50, $0018, $0000, $0000
    db $03
    dw $fda0, $01d0, $0010, $1800, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $15, $28
    db $30, $02
    db $23, $14
    db $30, $02
    db $11, $04
    db $0d
    dw $426a
    db $06, $96
    db $0e
    dw $44b0
    db $30, $82
    db $35, $03, $10
    db $35, $03, $08
    db $09, $00, $18
    db $06, $96
    db $07, $05
    db $0d
    dw $44b3
    db $06, $96
    db $07, $02
    db $0e
    dw $44b6
    db $06, $96
    db $07, $05
    db $0d
    dw $44b9
    db $06, $96
    db $07, $03
    db $0e
    dw $44bc
    db $06, $96
    db $07, $05
    db $0d
    dw $44bf
    db $06, $96
    db $07, $02
    db $0e
    dw $44c2
    db $06, $96
    db $07, $05
    db $0d
    dw $44c5
    db $06, $96
    db $0e
    dw $44c8
    db $06, $96
    db $07, $03
    db $0e
    dw $44cb
    db $06, $96
    db $07, $05
    db $35, $00, $18
    db $30, $06
    db $23, $05
    db $06, $32
    db $07, $03
    db $09, $00, $00
    db $0e
    dw $44ce
    db $2c, $32
    db $06, $64
    db $0d
    dw $44d1
    db $06, $96
    db $07, $03
    db $0e
    dw $44d1
    db $06, $96
    db $0d
    dw $44d4
    db $06, $96
    db $0e
    dw $44d7
    db $06, $96
    db $07, $03
    db $0d
    dw $44da
    db $06, $96
    db $07, $02
    db $16, $28
    db $12, $02
    db $16, $14
    db $12, $82
    db $16, $0a
    db $12, $82
    db $16, $14
    db $11, $88
    db $12, $86
    db $0e
    dw $4534
    db $30, $88
    db $2c, $32
    db $06, $78
    db $0d
    dw $44dd
    db $06, $96
    db $07, $05
    db $0e
    dw $44e0
    db $2c, $14
    db $30, $04
    db $2c, $0a
    db $06, $96
    db $07, $02
    db $35, $00, $00
    db $0a, $00, $18
    db $12, $04
    db $16, $0f
    db $0a, $05, $00
    db $0d
    dw $452e
    db $06, $96
    db $2e
    dw $44e3
    db $06, $96
    db $2e
    dw $44e6
    db $06, $96
    db $2e
    dw $44e9
    db $06, $96
    db $0d
    dw $44ec
    db $06, $96
    db $2e
    dw $43f3
    db $06, $96
    db $2e
    dw $44ef
    db $06, $96
    db $0d
    dw $44f2
    db $06, $96
    db $2e
    dw $44f5
    db $06, $96
    db $0d
    dw $44f8
    db $06, $96
    db $2e
    dw $44fb
    db $06, $96
    db $0d
    dw $44fe
    db $11, $08
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $06, $96
    db $21, $40
    db $02
    dw $fd90, $fd38, $0000, $0000, $0000
    db $00, $6e, $01
    db $3b
    db $1d

SceneScript_5b2f:: ; 0x5b2f
    db $39
    db $00, $6e, $01
    db $02
    dw $fe00, $ffd0, $0000, $0000, $0000
    db $32
    dw $fd70, $ffd0, $0000, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $07, $02
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $11, $02
    db $30, $02
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $15, $05
    db $23, $05
    db $07, $05
    db $06, $64
    db $07, $06
    db $06, $78
    db $07, $05
    db $0d
    dw $4504
    db $06, $96
    db $2e
    dw $4507
    db $06, $96
    db $0d
    dw $450a
    db $06, $96
    db $2e
    dw $450d
    db $06, $96
    db $2e
    dw $4510
    db $23, $28
    db $30, $82
    db $23, $0a
    db $06, $96
    db $07, $05
    db $2a, $14
    db $06, $96
    db $07, $05
    db $27, $14
    db $06, $96
    db $07, $02
    db $0d
    dw $4513
    db $35, $05, $00
    db $06, $96
    db $07, $05
    db $0d
    dw $4501
    db $27, $14
    db $06, $64
    db $3b
    db $1d

SceneScript_5bec:: ; 0x5bec
    db $39
    db $00, $6e, $05
    db $02
    dw $fdc0, $0280, $001c, $0007, $0000
    db $32
    dw $fd90, $02f0, $0000, $0005, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $09, $07, $00
    db $0d
    dw $4576
    db $06, $96
    db $09, $00, $00
    db $0d
    dw $436f
    db $06, $96
    db $2e
    dw $438d
    db $35, $00, $00
    db $06, $96
    db $0d
    dw $43e7
    db $06, $96
    db $07, $02
    db $30, $06
    db $11, $88
    db $06, $96
    db $3b
    db $1d

SceneScript_5c34:: ; 0x5c34
    db $39
    db $00, $6c, $02
    db $02
    dw $fe00, $0100, $0010, $1800, $0000
    db $32
    dw $fd38, $0100, $0010, $1800, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $15, $05
    db $23, $05
    db $0d
    dw $4516
    db $06, $96
    db $0c
    dw $446e
    db $06, $96
    db $2e
    dw $4519
    db $2c, $05
    db $19, $19
    db $11, $84
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $30, $84
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $06, $0f
    db $07, $01
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $07, $00
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $2c, $05
    db $19, $05
    db $21, $40
    db $3b
    db $1d

SceneScript_5cb4:: ; 0x5cb4
    db $39
    db $00, $6d, $02
    db $01
    dw $fff0, $ff00, $0000, $1800, $0000
    db $02
    dw $fff0, $0100, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $06, $32
    db $07, $01
    db $0c
    dw $451c
    db $14, $32
    db $08, $00, $00
    db $06, $64
    db $07, $02
    db $0d
    dw $4528
    db $06, $96
    db $0c
    dw $4516
    db $06, $96
    db $0d
    dw $452b
    db $11, $88
    db $15, $05
    db $14, $0a
    db $21, $40
    db $3b
    db $1d

SceneScript_5cfc:: ; 0x5cfc
    db $39
    db $00, $6d, $02
    db $01
    dw $fff0, $ff00, $0000, $1800, $0000
    db $02
    dw $fff0, $0100, $0010, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $06, $32
    db $07, $01
    db $0c
    dw $451c
    db $14, $32
    db $08, $00, $00
    db $06, $64
    db $07, $02
    db $0d
    dw $451f
    db $06, $96
    db $0c
    dw $4522
    db $06, $32
    db $0d
    dw $4525
    db $11, $88
    db $15, $05
    db $14, $0a
    db $21, $40
    db $3b
    db $1d

SceneScript_5d44:: ; 0x5d44
    db $39
    db $00, $61, $03
    db $01
    dw $02d0, $0040, $0018, $0000, $0000
    db $02
    dw $02d0, $ffa0, $0018, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $06, $96
    db $18, $14
    db $07, $02
    db $18, $1e
    db $07, $01
    db $18, $14
    db $07, $00
    db $18, $14
    db $08, $00, $00
    db $10, $86
    db $0c
    dw $43e7
    db $06, $50
    db $10, $06
    db $08, $00, $18
    db $06, $96
    db $07, $03
    db $06, $64
    db $3b
    db $1d

SceneScript_5d8c:: ; 0x5d8c
    db $39
    db $00, $5b, $01
    db $01
    dw $0068, $0120, $0010, $0000, $0000
    db $02
    dw $ffe8, $feb0, $0000, $1800, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $18, $14
    db $08, $00, $00
    db $0c
    dw $44a1
    db $06, $50
    db $10, $88
    db $18, $32
    db $06, $64
    db $3b
    db $1d

SceneScript_5dbf:: ; 0x5dbf
    db $39
    db $00, $5a, $02
    db $32
    dw $0090, $ff70, $000c, $0000, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $2e
    dw $42a3
    db $35, $00, $18
    db $06, $14
    db $35, $00, $00
    db $06, $0a
    db $35, $00, $18
    db $06, $96
    db $3b
    db $1d

SceneScript_5de9:: ; 0x5de9
    db $39
    db $00, $59, $02
    db $02
    dw $00a8, $0200, $000c, $0000, $0000
    db $32
    dw $0048, $02b0, $000c, $1800, $0000
    db $01
    dw $00c8, $03d0, $000c, $0803, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $2f
    dw $4531
    db $06, $96
    db $3b
    db $1d

SceneScript_5e1c:: ; 0x5e1c
    db $39
    db $00, $39, $01
    db $02
    dw $00f0, $0020, $0018, $0007, $0000
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $09, $00, $00
    db $06, $32
    db $09, $00, $18
    db $11, $08
    db $06, $64
    db $07, $04
    db $06, $64
    db $07, $02
    db $06, $64
    db $07, $05
    db $06, $64
    db $07, $02
    db $06, $64
    db $07, $00
    db $06, $96
    db $3b
    db $1d

SceneScript_5e54:: ; 0x5e54
    db $39
    db $00, $39, $05
    db $22
    db $05
    db $06, $32
    db $1f
    db $06, $32
    db $3b
    db $1d

SceneScript_5e61:: ; 0x5e61
    db $00, $72, $00
    db $01
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db $06, $64
    db $36
    db $06, $0a
    db $20
    db $00, $6c, $00
    db $01
    dw $02d0, $ff00, $0018, $0000, $0000
    db $1d

SceneScript_5e86:: ; 0x5e86
    db $00, $72, $00
    db $01
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db $06, $64
    db $36
    db $06, $0a
    db $20
    db $00, $65, $00
    db $01
    dw $0378, $00d0, $0010, $0000, $0000
    db $1d

SceneScript_5eab:: ; 0x5eab
    db $00, $72, $00
    db $01
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db $06, $64
    db $36
    db $06, $0a
    db $20
    db $00, $73, $00
    db $01
    dw $0398, $ffa8, $0008, $0000, $0000
    db $1d

SceneScript_5ed0:: ; 0x5ed0
    db $00, $72, $00
    db $01
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db $06, $64
    db $36
    db $06, $0a
    db $20
    db $00, $20, $00
    db $01
    dw $01c8, $ff00, $0008, $0000, $0000
    db $1d

SceneScript_5ef5:: ; 0x5ef5
    db $00, $66, $00
    db $01
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db $06, $64
    db $36
    db $06, $0a
    db $20
    db $00, $39, $00
    db $01
    dw $fdc8, $0300, $0008, $0000, $0000
    db $1d

SceneScript_5f1a:: ; 0x5f1a
    db $00, $66, $00
    db $01
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db $06, $64
    db $36
    db $06, $0a
    db $20
    db $00, $59, $00
    db $01
    dw $fc30, $fcb0, $0008, $0000, $0000
    db $1d

SceneScript_5f3f:: ; 0x5f3f
    db $00, $6b, $00
    db $01
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db $06, $64
    db $36
    db $06, $0a
    db $20
    db $00, $65, $00
    db $01
    dw $0378, $00d0, $0010, $0000, $0000
    db $1d

SceneScript_5f64:: ; 0x5f64
    db $00, $6b, $00
    db $01
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db $06, $64
    db $36
    db $06, $0a
    db $20
    db $00, $65, $00
    db $01
    dw $0378, $00d0, $0010, $0000, $0000
    db $1d

SceneScriptFirstZombie:: ; 0x5f89
    db $3a, $01
    db $05
    db $06, $dc
    db $20
    db $1d

SceneScript_5f90:: ; 0x5f90
    db $00, $14, $01
    db $22
    db $05
    db $06, $64
    db $3e, $00
    db $3f
    dw $3206
    db $3e, $00
    db $3f
    dw $3206
    db $3e, $00
    db $3f
    dw $3206
    db $20
    db $00, $14, $00
    db $1d

SceneScript_5fab:: ; 0x5fab
    db $00, $14, $01
    db $22
    db $05
    db $06, $64
    db $3e, $01
    db $3f
    dw $3206
    db $3e, $01
    db $3f
    dw $3206
    db $3e, $01
    db $3f
    dw $3206
    db $20
    db $00, $14, $00
    db $1d

SceneScript_5fc6:: ; 0x5fc6
    db $3a, $02
    db $05
    db $06, $dc
    db $20
    db $1c, $23
    db $3e, $02
    db $1d

Jump_00e_5fd1:
    push hl
    ld hl, $c320
    ld de, $c300
    ld b, $20

jr_00e_5fda:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_5fda

    pop hl
    ret


Jump_00e_5fe2:
    ld a, [hl+]
    or a
    jp z, Jump_00e_5ff2

    cp $01

jr_00e_5fe9:
    jp z, Jump_00e_5ffa

    cp $02
    jp z, Jump_00e_6002

    ret


Jump_00e_5ff2:
    ld a, [$c184]
    dec a
    ld [$c184], a
    ret


Jump_00e_5ffa:
    ld a, [$c184]
    inc a
    ld [$c184], a
    ret


Jump_00e_6002:
    xor a
    ld [$c6f1], a
    ld a, $ff
    ld [$c504], a
    ld [$c48b], a
    push hl
    ld de, $c320
    ld b, $07

jr_00e_6014:
    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $80
    jr z, jr_00e_6026

    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $e1
    jr z, jr_00e_6033

jr_00e_6026:
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_00e_6014

    pop hl
    ret


jr_00e_6033:
    ld hl, $0000
    add hl, de
    ld [hl], $00
    pop hl
    ret


Jump_00e_603b:
    call Call_000_3ed2
    ld a, [$c1c0]
    sub $01
    ld [$c1c0], a
    call Call_00e_63cc
    call Call_000_3ed2
    ld a, [$c1c0]
    add $02
    ld [$c1c0], a
    call Call_00e_63cc
    call Call_000_3ed2
    ld a, [$c1c0]
    sub $02
    ld [$c1c0], a
    call Call_00e_63cc
    call Call_000_3ed2
    ld a, [$c1c0]
    add $01
    ld [$c1c0], a
    call Call_00e_63cc
    ret


Jump_00e_6074:
    ld b, $10

jr_00e_6076:
    push bc
    ld a, [$c1c0]
    inc a
    ld [$c1c0], a
    call Call_00e_63cc
    call Call_000_3ed2
    call Call_000_3ed2
    pop bc
    dec b
    jr nz, jr_00e_6076

    ret


Jump_00e_608c:
    ld b, $10

jr_00e_608e:
    push bc
    ld a, [$c1c0]
    dec a
    ld [$c1c0], a
    call Call_00e_63cc
    call Call_000_3ed2
    call Call_000_3ed2
    pop bc
    dec b
    jr nz, jr_00e_608e

    ret


init_room_camera:
    ld a, [hl+]
    ld [ROOM_NUMBER], a
    xor a
    ld [$c17d], a
    ld a, [hl+]
    ld [CAMERA_NUMBER], a
    push hl
    call Call_000_0664
    pop hl
    ret


Jump_00e_60b6:
    push hl
    call Call_000_06fb
    pop hl
    ret


sprite_barry_init:
    ld de, $c380
    ld a, $96
    jr sprite_anim_init

sprite_c3a0_init:
    ld de, $c3a0
    ld a, $9e
    jr sprite_anim_init

sprite_c3c0_init:
    ld de, $c3c0
    ld a, $98
    jr sprite_anim_init

sprite_chris_init:
    ld de, $c300
    ld a, $92
    jr sprite_anim_init

sprite_jill_init:
    ld de, $c320
    ld a, $93
    jr sprite_anim_init

sprite_wesker_init:
    ld de, $c340
    ld a, $94
    jr sprite_anim_init

sprite_c360_init:
    ld de, $c360
    ld a, $95

sprite_anim_init:
    push hl
    ld c, l
    ld b, h
    push af
    pop af
    ld hl, $000b
    add hl, de
    ld [hl], a
    ld a, [PLAYER_HEALTH]
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld hl, $0000
    add hl, de
    ld [hl], $c0
    ld hl, $0011
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $0013
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $0009
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    inc bc
    ld hl, $0006
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $0007
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $000f
    add hl, de
    ld [hl], $ff
    ld hl, $001d
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    pop hl
    ld de, $000a
    add hl, de
    ret


Jump_00e_6142:
    ld a, [hl]
    ld [DOOR_TRANSITION_TYPE], a
    srl a
    srl a
    srl a
    ld [$c1b6], a
    ld a, [hl+]
    and $07
    ld [$c1b7], a
    push hl
    call Call_000_06b5
    pop hl
    ret


Jump_00e_615b:
    push hl
    ld c, $1f
    call Call_000_067a
    pop hl
    ret


Jump_00e_6163:
    push hl
    ld c, $40
    call Call_000_067a
    pop hl
    ret


Jump_00e_616b:
    ld a, [hl+]
    ld b, a

jr_00e_616d:
    push bc
    call Call_000_3ed2
    pop bc
    dec b
    jr nz, jr_00e_616d

    ret


change_room_camera:
    ld a, [hl+]
    ld [CAMERA_NUMBER], a
    push hl
    call Call_000_0641
    pop hl
    call Call_00e_63cc
    call Call_00e_63cc
    ret


sprite_barry_set_anim:
    ld de, $c380
    jr jr_00e_61a7

    ld de, $c3a0
    jr jr_00e_61a7

sprite_zombie_set_anim:
    ld de, $c3c0
    jr jr_00e_61a7

Jump_00e_6195:
    ld de, $c300
    jr jr_00e_61a7

Jump_00e_619a:
    ld de, $c320
    jr jr_00e_61a7

Jump_00e_619f:
    ld de, $c340
    jr jr_00e_61a7

Jump_00e_61a4:
    ld de, $c360

jr_00e_61a7:
    push hl
    ld c, l
    ld b, h
    ld hl, $0006
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $0007
    add hl, de
    ld a, [bc]
    ld [hl], a
    pop hl
    inc hl
    inc hl
    call Call_00e_63cc
    ret


dialogue_name_6485:
    ld de, $6485
    ld c, $f8
    jr jr_00e_6202

dialogue_name_unknown:
    ld de, $404d
    ld c, $f8
    jr jr_00e_6202

dialogue_name_brad:
    ld de, $4046
    ld c, $f8
    jr jr_00e_6202

dialogue_name_richard:
    ld de, $403c
    ld c, $f8
    jr jr_00e_6202

dialogue_name_enrico:
    ld de, $4033
    ld c, $f8
    jr jr_00e_6202

dialogue_name_barry:
    ld de, $4022
    ld c, $f8
    jr jr_00e_6202

dialogue_name_jill:
    ld de, $4000
    ld c, $f8
    jr jr_00e_6202

dialogue_name_chris:
    ld de, $4008
    ld c, $f8
    jr jr_00e_6202

dialogue_name_wesker:
    ld de, $400f
    ld c, $f8
    jr jr_00e_6202

dialogue_name_rebecca:
    ld de, $4018
    ld c, $f8

jr_00e_6202:
    call Call_00e_621f
    push hl
    ld hl, $1000
    call Call_000_0610
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld a, [$c1f8]
    ld l, a
    ld a, [$c1f9]
    ld h, a
    call Call_000_0623
    pop hl
    ret


Call_00e_621f:
    push bc
    push de
    push hl
    ld hl, $1000
    ld de, $6431
    ld c, $fa
    call Call_000_0610
    pop hl
    pop de
    pop bc
    ret


rotate_barry:
    ld de, $c380
    jr rotate_sprite

    ld de, $c3a0
    jr rotate_sprite

sprite_c3c0_rotate:
    ld de, $c3c0
    jr rotate_sprite

rotate_chris:
    ld de, $c300
    jr rotate_sprite

rotate_jill:
    ld de, $c320
    jr rotate_sprite

rotate_wesker:
    ld de, $c340
    jr rotate_sprite

sprite_c360_rotate:
    ld de, $c360

rotate_sprite:
    ld a, [hl+]
    push hl
    cp $80
    jr c, jr_00e_627a

    and $7f
    ld b, a

jr_00e_625b:
    push bc
    push de
    ld hl, $0009
    add hl, de
    ld a, [hl]
    sub $02
    and $1f
    ld [hl], a
    call Call_000_3ed2
    call Call_000_3ed2
    call Call_000_3ed2
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_625b

    pop hl
    ret


jr_00e_627a:
    ld b, a

jr_00e_627b:
    push bc
    push de
    ld hl, $0009
    add hl, de
    ld a, [hl]
    add $02
    and $1f
    ld [hl], a
    call Call_000_3ed2
    call Call_000_3ed2
    call Call_000_3ed2
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_627b

    pop hl
    ret


Jump_00e_629a:
    ld a, [hl+]
    ld c, a
    push hl
    call Call_000_026b
    pop hl
    ret


Jump_00e_62a2:
    ld de, $c380
    jr sprite_anim_walk_backwards

Jump_00e_62a7:
    ld de, $c3a0
    jr sprite_anim_walk_backwards

    ld de, $c3c0
    jr sprite_anim_walk_backwards

Jump_00e_62b1:
    ld de, $c300
    jr sprite_anim_walk_backwards

sprite_jill_walk_backwards:
    ld de, $c320
    jr sprite_anim_walk_backwards

Jump_00e_62bb:
    ld de, $c340
    jr sprite_anim_walk_backwards

Jump_00e_62c0:
    ld de, $c360

sprite_anim_walk_backwards:
    ld a, [hl+]
    push hl
    ld b, a

jr_00e_62c6:
    push bc
    push de
    ld hl, $0009
    add hl, de
    ld a, [hl]
    add $10
    and $1c
    ld bc, $63d2
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld hl, $0011
    add hl, de
    ld a, [bc]
    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl+], a
    ld hl, $0006
    add hl, de
    ld [hl], $01
    ld hl, $0007
    add hl, de
    ld a, [hl]
    sub $02
    and $3f
    ld [hl], a
    call Call_000_3ed2
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_62c6

    pop hl
    ret


sprite_barry_walk:
    ld de, $c380
    jr sprite_anim_walk

sprite_c3a0_walk:
    ld de, $c3a0
    jr sprite_anim_walk

sprite_zombie_walk:
    ld de, $c3c0
    jr sprite_anim_walk

sprite_chris_walk:
    ld de, $c300
    jr sprite_anim_walk

sprite_jill_walk:
    ld de, $c320
    jr sprite_anim_walk

sprite_wesker_walk:
    ld de, $c340
    jr sprite_anim_walk

sprite_c360_walk:
    ld de, $c360

sprite_anim_walk:
    ld a, [hl+]
    push hl
    ld b, a

jr_00e_632e:
    push bc
    push de
    ld hl, $0009
    add hl, de
    ld a, [hl]
    and $1c
    ld bc, $63d2
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld hl, $0011
    add hl, de
    ld a, [bc]
    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl+], a
    ld hl, $0006
    add hl, de
    ld [hl], $01
    ld hl, $0007
    add hl, de
    ld a, [hl]
    add $02
    and $3f
    ld [hl], a
    call Call_000_3ed2
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_632e

    pop hl
    ret


sprite_barry_run:
    ld de, $c380
    jr sprite_anim_run

sprite_chris_run:
    ld de, $c300
    jr sprite_anim_run

sprite_jill_run:
    ld de, $c320
    jr sprite_anim_run

sprite_wesker_run:
    ld de, $c340
    jr sprite_anim_run

Jump_00e_6384:
    ld de, $c360

sprite_anim_run:
    ld a, [hl+]
    push hl
    ld b, a

jr_00e_638a:
    push bc
    push de
    ld hl, $0009
    add hl, de
    ld a, [hl]
    and $1c
    ld bc, $63f2
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    ld hl, $0011
    add hl, de
    ld a, [bc]
    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl+], a
    ld hl, $0006
    add hl, de
    ld [hl], $02
    ld hl, $0007
    add hl, de
    ld a, [hl]
    add $02
    and $3f
    ld [hl], a
    call Call_000_3ed2
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_638a

    pop hl
    ret


Call_00e_63cc:
Jump_00e_63cc:
    push hl
    call Call_000_06d6
    pop hl
    ret


    nop
    nop
    rlca
    nop
    ld b, $00
    ld b, $00
    rlca
    nop
    nop
    nop
    ld b, $00
    ld a, [$00ff]
    nop
    ld sp, hl
    rst $38
    ld a, [$faff]
    rst $38
    ld sp, hl
    rst $38
    nop
    nop
    ld a, [$06ff]
    nop
    nop
    nop
    ld c, $00
    inc c
    nop
    inc c
    nop
    ld c, $00
    nop
    nop
    inc c
    nop
    db $f4
    rst $38
    nop
    nop
    ld a, [c]
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    ld a, [c]
    rst $38
    nop
    nop
    db $f4
    rst $38
    inc c
    nop

Jump_00e_6412:
    ld a, [PLAYER_HEALTH]
    push af
    ld de, $c300
    ld bc, $0100

jr_00e_641c:
    xor a
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_00e_641c

    pop af
    ld [PLAYER_HEALTH], a
    ret


Jump_00e_6429:
    ld a, [hl+]
    ld [$c1c6], a
    push hl
    call Call_000_0713
    pop hl
    ret


    ld b, d
    ld b, c
    ld c, [hl]
    ld c, e
    ld b, l

    ds $1bc8, $00
