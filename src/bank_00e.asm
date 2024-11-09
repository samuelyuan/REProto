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
    ld a, [SELECTED_CHARACTER_INDEX]
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
    cp script_cmd_end
    jp z, Jump_00e_420f

    cp $3c
    jp z, Command3c_00e_4212

    ld de, $420c
    push de
    cp script_cmd_init_room_camera ; 2 bytes
    jp z, init_room_camera

    cp script_cmd_init_chris ; 10 bytes
    jp z, sprite_chris_init

    cp script_cmd_init_jill ; 10 bytes
    jp z, sprite_jill_init

    cp script_cmd_init_wesker ; 10 bytes
    jp z, sprite_wesker_init

    cp script_cmd_init_rebecca ; 10 bytes
    jp z, sprite_rebecca_init

    cp script_cmd_init_barry ; 10 bytes
    jp z, sprite_barry_init

    cp $34 ; 10 bytes
    jp z, sprite_c3a0_init

    cp script_cmd_init_zombie ; 10 bytes
    jp z, sprite_zombie_init

    cp $05 ; render screen, 0 bytes
    jp z, Jump_00e_615b

    cp script_cmd_wait_frames ; 1 byte
    jp z, wait_frames

    cp script_cmd_change_camera ; change camera view
    jp z, change_room_camera

    cp script_cmd_set_anim_chris ; 2 bytes
    jp z, sprite_chris_set_anim

    cp script_cmd_set_anim_jill ; 2 bytes
    jp z, sprite_jill_set_anim

    cp script_cmd_set_anim_wesker ; 2 bytes
    jp z, sprite_wesker_set_anim

    cp script_cmd_set_anim_rebecca ; 2 bytes
    jp z, sprite_rebecca_set_anim

    cp script_cmd_set_anim_barry ; 2 bytes
    jp z, sprite_barry_set_anim

    cp script_cmd_set_anim_zombie ; 2 bytes
    jp z, sprite_zombie_set_anim

    cp script_cmd_dialogue_chris ; Show name for Chris
    jp z, dialogue_name_chris

    cp script_cmd_dialogue_jill ; Show name for Jill
    jp z, dialogue_name_jill

    cp script_cmd_dialogue_wesker ; Show name for Wesker
    jp z, dialogue_name_wesker

    cp script_cmd_dialogue_rebecca ; Show name for Rebecca
    jp z, dialogue_name_rebecca

    cp script_cmd_dialogue_barry ; Show name for Barry
    jp z, dialogue_name_barry

    cp script_cmd_dialogue_enrico ; Show name for Enrico
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
    cp script_cmd_rotate_chris
    jp z, sprite_chris_rotate

    cp script_cmd_rotate_jill
    jp z, sprite_jill_rotate

    cp script_cmd_rotate_wesker
    jp z, rotate_wesker

    cp script_cmd_rotate_rebecca
    jp z, sprite_rebecca_rotate

    cp script_cmd_rotate_barry
    jp z, rotate_barry

    cp $37
    jp z, sprite_zombie_rotate

    ;
    cp $1c
    jp z, Jump_00e_629a

    ; sprite anim walk
    cp script_cmd_walk_chris
    jp z, sprite_chris_walk

    cp script_cmd_walk_jill
    jp z, sprite_jill_walk

    cp script_cmd_walk_wesker
    jp z, sprite_wesker_walk

    cp script_cmd_walk_rebecca
    jp z, sprite_rebecca_walk

    cp script_cmd_walk_barry
    jp z, sprite_barry_walk

    cp $24
    jp z, sprite_c3a0_walk

    cp script_cmd_walk_zombie
    jp z, sprite_zombie_walk

    ; sprite anim run
    cp script_cmd_run_chris
    jp z, sprite_chris_run

    cp script_cmd_run_jill
    jp z, sprite_jill_run

    cp $1a
    jp z, sprite_wesker_run

    cp $1b
    jp z, sprite_rebecca_run

    cp script_cmd_run_barry
    jp z, sprite_barry_run

    ; sprite walks backwards
    cp $26
    jp z, Jump_00e_62b1

    cp script_cmd_walk_backwards_jill
    jp z, sprite_jill_walk_backwards

    cp script_cmd_walk_backwards_rebecca
    jp z, Jump_00e_62c0

    cp $29
    jp z, Jump_00e_62bb

    cp $2a
    jp z, Jump_00e_62a2

    cp $2b
    jp z, Jump_00e_62a7

    cp script_cmd_cutscene_mode ; 0 bytes
    jp z, set_cutscene_mode

    cp $1e
    jp z, Jump_00e_608c

    cp $20
    jp z, cmd_20

    cp script_cmd_door_transition
    jp z, door_transition

    cp $36
    jp z, Jump_00e_603b

    cp $22
    jp z, Jump_00e_63cc

    cp script_cmd_reset_scene
    jp z, scene_var_reset

    cp $3a ; 1 byte
    jp z, cmd_3a

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


Command3c_00e_4212:
    ld a, [hl+]
    ld [$c1f4], a
    ld a, [hl+]
    ld [PICKED_ITEM_INDEX], a
    ret

SceneScriptIntroChris:: ; 0x421b
    db script_cmd_init_room_camera, $00, $00
    db script_cmd_init_chris
    dw $0100, $fd00, $0018, $0000, $0000
    db script_cmd_init_jill
    dw $ff40, $fdc0, $000c, $0803, $0000
    db script_cmd_init_wesker
    dw $ff80, $fca0, $0004, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_change_camera, $06
    db script_cmd_wait_frames, $3c
    db script_cmd_set_anim_jill, $03, $10
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_wait_frames, $0f
    db script_cmd_dialogue_jill
    dw $418f
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $01
    db script_cmd_rotate_chris, $04
    db script_cmd_dialogue_chris
    dw $4192
    db script_cmd_wait_frames, $19
    db script_cmd_rotate_chris, $84
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_wesker
    dw $4195
    db script_cmd_wait_frames, $14
    db script_cmd_change_camera, $02
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_jill
    dw $4198
    db script_cmd_wait_frames, $32
    db script_cmd_change_camera, $01
    db $1c, $0f
    db script_cmd_dialogue_jill
    dw $419b
    db script_cmd_rotate_chris, $04
    db script_cmd_wait_frames, $1e
    db script_cmd_run_chris, $10
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_rotate_chris, $84
    db script_cmd_dialogue_chris
    dw $419e
    db script_cmd_wait_frames, $32
    db script_cmd_walk_wesker, $18
    db script_cmd_set_anim_wesker, $00, $00
    db script_cmd_dialogue_wesker
    dw $41a1
    db script_cmd_wait_frames, $1e
    db script_cmd_rotate_chris, $04
    db script_cmd_walk_chris, $10
    db script_cmd_rotate_chris, $02
    db script_cmd_walk_chris, $28
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_change_camera, $05
    db script_cmd_rotate_jill, $84
    db script_cmd_dialogue_jill
    dw $41a4
    db script_cmd_rotate_chris, $88
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $06
    db script_cmd_dialogue_jill
    dw $41a7
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $05
    db script_cmd_rotate_chris, $08
    db script_cmd_walk_chris, $1c
    db script_cmd_rotate_chris, $02
    db script_cmd_walk_chris, $20
    db script_cmd_door_transition, $40
    db script_cmd_init_chris
    dw $fc70, $0000, $0008, $0000, $0000
    db script_cmd_init_room_camera, $01, $00
    db script_cmd_end

SceneScriptChrisReturnsToEntranceBeforeFirstZombie:: ; 0x42cd
    db script_cmd_init_room_camera, $00, $05
    db script_cmd_init_chris
    dw $03d0, $0058, $0014, $0000, $0000
    db script_cmd_init_jill
    dw $ff40, $fdc0, $000c, $1800, $0000
    db script_cmd_init_wesker
    dw $ff80, $fca0, $0004, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_chris, $46
    db script_cmd_change_camera, $06
    db script_cmd_wait_frames, $32
    db script_cmd_walk_wesker, $1e
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_wesker
    dw $41aa
    db script_cmd_wait_frames, $96
    db script_cmd_rotate_chris, $08
    db script_cmd_walk_chris, $46
    db script_cmd_door_transition, $40
    db script_cmd_init_chris
    dw $fc70, $0000, $0008, $0000, $0000
    db script_cmd_init_room_camera, $01, $00
    db script_cmd_end

SceneScriptChrisReturnsToEntranceAfterFirstZombie:: ; 0x431c
    db script_cmd_init_room_camera, $00, $05
    db script_cmd_init_chris
    dw $03d0, $0058, $0014, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_chris, $28
    db script_cmd_rotate_chris, $02
    db script_cmd_change_camera, $06
    db script_cmd_walk_chris, $50
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $64
    db script_cmd_run_chris, $10
    db script_cmd_run_chris, $0a
    db script_cmd_rotate_chris, $06
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $1e
    db script_cmd_dialogue_chris
    dw $41ad
    db script_cmd_wait_frames, $78
    db script_cmd_rotate_chris, $86
    db script_cmd_rotate_chris, $82
    db script_cmd_run_chris, $10
    db script_cmd_change_camera, $02
    db script_cmd_run_chris, $03
    db script_cmd_rotate_chris, $04
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $64
    db script_cmd_rotate_chris, $88
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_wait_frames, $3c
    db script_cmd_dialogue_chris
    dw $41b0
    db script_cmd_wait_frames, $64
    db $1e
    db script_cmd_end

SceneScriptChrisMeetsRebecca:: ; 0x436d
    db script_cmd_init_room_camera, $02, $02
    db script_cmd_init_chris
    dw $ffa0, $0180, $000c, $0000, $0000
    db script_cmd_init_rebecca
    dw $0098, $fff8, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_chris
    dw $41b3
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $00
    db script_cmd_walk_rebecca, $18
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_wait_frames, $28
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_dialogue_rebecca
    dw $41b6
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $41b9
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $01
    db script_cmd_dialogue_rebecca
    dw $41bc
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $41bf
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_dialogue_chris
    dw $41c2
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $41c5
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $01
    db script_cmd_dialogue_rebecca
    dw $41c8
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_chris
    dw $41cb
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $01
    db script_cmd_dialogue_rebecca
    dw $41ce
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_dialogue_rebecca
    dw $41d1
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $41d4
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $00
    db script_cmd_wait_frames, $96
    db script_cmd_end

SceneScript_43ed:: ; 0x43ed
    db script_cmd_init_room_camera, $02, $00
    db script_cmd_init_chris
    dw $0050, $00e8, $0008, $0000, $0000
    db script_cmd_init_rebecca
    dw $00a0, $00e8, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_wait_frames, $1e
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_dialogue_rebecca
    dw $41d7
    db script_cmd_wait_frames, $96
    db script_cmd_end

SceneScript_441e:: ; 0x441e
    db script_cmd_init_room_camera, $02, $02
    db script_cmd_init_chris
    dw $ff90, $0150, $0000, $0000, $0000
    db script_cmd_init_rebecca
    dw $0050, $ffb0, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $64
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $64
    db script_cmd_rotate_chris, $06
    db script_cmd_wait_frames, $1e
    db script_cmd_change_camera, $01
    db script_cmd_dialogue_rebecca
    dw $41da
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $41dd
    db script_cmd_wait_frames, $82
    db script_cmd_init_room_camera, $02, $00
    db script_cmd_init_chris
    dw $0050, $00e8, $0008, $0000, $0000
    db script_cmd_init_rebecca
    dw $00a0, $00e8, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $41e0
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $41e3
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_dialogue_rebecca
    dw $41e6
    db script_cmd_rotate_chris, $84
    db script_cmd_wait_frames, $96
    db $20
    db $1e
    db script_cmd_end

SceneScript_4488:: ; 0x4488
    db script_cmd_init_room_camera, $07, $01
    db script_cmd_init_chris
    dw $ff88, $0008, $0000, $0000, $0000
    db script_cmd_init_rebecca
    dw $01a0, $fdb8, $0000, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db $1c, $04
    db script_cmd_wait_frames, $0f
    db $1c, $05
    db script_cmd_change_camera, $05
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $41e9
    db script_cmd_wait_frames, $96
    db script_cmd_walk_rebecca, $28
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $41ec
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $01
    db script_cmd_walk_rebecca, $3c
    db script_cmd_rotate_rebecca, $84
    db script_cmd_walk_rebecca, $3c
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_rotate_chris, $04
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $1e
    db script_cmd_dialogue_rebecca
    dw $41ef
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $41f2
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $06
    db script_cmd_rotate_chris, $02
    db script_cmd_set_anim_chris, $00, $18
    db $26, $28
    db script_cmd_walk_rebecca, $28
    db script_cmd_rotate_rebecca, $84
    db script_cmd_walk_rebecca, $0a
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_chris
    dw $41f5
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $41f8
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_dialogue_rebecca
    dw $41fb
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $41fe
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $4201
    db script_cmd_change_camera, $01
    db script_cmd_wait_frames, $96
    db script_cmd_end

SceneScript_4512:: ; 0x4512
    db script_cmd_init_room_camera, $07, $00
    db script_cmd_init_chris
    dw $01d0, $fdb8, $0018, $0000, $0000
    db script_cmd_init_rebecca
    dw $ff58, $0008, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db $1c, $05
    db script_cmd_dialogue_rebecca
    dw $4204
    db script_cmd_wait_frames, $3c
    db script_cmd_rotate_chris, $02
    db script_cmd_walk_chris, $28
    db script_cmd_change_camera, $01
    db script_cmd_walk_chris, $14
    db script_cmd_rotate_chris, $02
    db script_cmd_walk_chris, $28
    db script_cmd_rotate_chris, $84
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $1e
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $4207
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $06
    db script_cmd_wait_frames, $3c
    db script_cmd_wait_frames, $3c
    db script_cmd_dialogue_chris
    dw $420a
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $01
    db script_cmd_wait_frames, $1e
    db script_cmd_run_chris, $28
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $64
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $420d
    db script_cmd_wait_frames, $96
    db script_cmd_end

SceneScript_4574:: ; 0x4574
    db script_cmd_init_room_camera, $2d, $01
    db script_cmd_init_chris
    dw $0058, $feb0, $0000, $0000, $0000
    db script_cmd_init_rebecca
    dw $0090, $0150, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_chris, $14
    db script_cmd_walk_chris, $0a
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $05
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_wait_frames, $05
    db script_cmd_set_anim_chris, $07, $00
    db script_cmd_dialogue_chris
    dw $4339
    db script_cmd_wait_frames, $96
    db $1c, $05
    db script_cmd_walk_rebecca, $17
    db script_cmd_wait_frames, $50
    db script_cmd_end

SceneScript_45b1:: ; 0x45b1
    db script_cmd_init_room_camera, $02, $04
    db script_cmd_init_chris
    dw $0068, $ffa8, $0000, $0007, $0000
    db script_cmd_init_rebecca
    dw $ff70, $0150, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $64
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_rebecca
    dw $4204
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_dialogue_chris
    dw $4210
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_rebecca
    dw $4213
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $04
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_dialogue_chris
    dw $4216
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_dialogue_rebecca
    dw $4219
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $04
    db script_cmd_dialogue_chris
    dw $421c
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_rebecca
    dw $421f
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $04
    db script_cmd_dialogue_chris
    dw $4222
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $96
    db script_cmd_end

SceneScript_4612:: ; 0x4612
    db script_cmd_init_room_camera, $4f, $03
    db script_cmd_init_chris
    dw $02c8, $0210, $0018, $0000, $0000
    db script_cmd_init_wesker
    dw $0098, $0328, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $64
    db script_cmd_set_anim_chris, $00, $00
    db $1c, $0f
    db script_cmd_wait_frames, $14
    db script_cmd_rotate_chris, $04
    db script_cmd_run_chris, $1e
    db script_cmd_change_camera, $02
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_rotate_chris, $84
    db $1c, $0f
    db script_cmd_set_anim_wesker, $03, $00
    db script_cmd_wait_frames, $32
    db $1c, $0f
    db script_cmd_dialogue_chris
    dw $43d2
    db script_cmd_set_anim_wesker, $03, $10
    db script_cmd_set_anim_wesker, $00, $00
    db script_cmd_wait_frames, $78
    db script_cmd_change_camera, $07
    db script_cmd_rotate_wesker, $08
    db script_cmd_dialogue_wesker
    dw $43d5
    db script_cmd_wait_frames, $64
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_dialogue_chris
    dw $43d8
    db script_cmd_walk_chris, $28
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_chris
    dw $43db
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_wesker
    dw $43de
    db script_cmd_wait_frames, $64
    db script_cmd_set_anim_wesker, $00, $18
    db script_cmd_dialogue_chris
    dw $43e1
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $01
    db script_cmd_walk_wesker, $0a
    db script_cmd_change_camera, $02
    db script_cmd_walk_wesker, $3f
    db script_cmd_rotate_wesker, $08
    db script_cmd_wait_frames, $0a
    db script_cmd_dialogue_wesker
    dw $43e4
    db script_cmd_wait_frames, $50
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_rotate_wesker, $84
    db script_cmd_walk_wesker, $06
    db script_cmd_init_wesker
    dw $fd30, $03d0, $0010, $0000, $0000
    db $22
    db script_cmd_end

SceneScript_46a3:: ; 0x46a3
    db script_cmd_init_room_camera, $13, $01
    db script_cmd_init_chris
    dw $ff88, $ffb0, $0000, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_chris, $14
    db script_cmd_dialogue_chris
    dw $4444
    db script_cmd_set_anim_chris, $07, $00
    db script_cmd_dialogue_chris
    dw $4537
    db script_cmd_wait_frames, $64
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $64
    db script_cmd_end

SceneScript_46cb:: ; 0x46cb
    db script_cmd_init_room_camera, $0b, $02
    db script_cmd_init_chris
    dw $0210, $0030, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_dialogue_chris
    dw $455e
    db script_cmd_wait_frames, $64
    db script_cmd_rotate_chris, $02
    db script_cmd_wait_frames, $05
    db script_cmd_rotate_chris, $84
    db script_cmd_wait_frames, $05
    db script_cmd_rotate_chris, $02
    db script_cmd_dialogue_chris
    dw $453a
    db script_cmd_wait_frames, $64
    db script_cmd_end

SceneScript_46f8:: ; 0x46f8
    db script_cmd_init_room_camera, $08, $04
    db script_cmd_init_chris
    dw $fec0, $0300, $0008, $0000, $0000
    db script_cmd_init_zombie
    dw $01f8, $01f8, $0000, $0000, $0000
    db script_cmd_init_rebecca
    dw $01f8, $02b0, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_backwards_rebecca, $05
    db script_cmd_walk_zombie, $05
    db script_cmd_walk_backwards_rebecca, $05
    db script_cmd_walk_zombie, $05
    db script_cmd_walk_backwards_rebecca, $05
    db script_cmd_walk_zombie, $05
    db script_cmd_walk_backwards_rebecca, $05
    db script_cmd_walk_zombie, $05
    db script_cmd_walk_backwards_rebecca, $05
    db script_cmd_walk_zombie, $05
    db script_cmd_walk_backwards_rebecca, $05
    db script_cmd_walk_zombie, $05
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $05
    db script_cmd_walk_backwards_rebecca, $02
    db script_cmd_walk_zombie, $05
    db script_cmd_walk_backwards_rebecca, $02
    db script_cmd_walk_zombie, $05
    db script_cmd_walk_backwards_rebecca, $02
    db script_cmd_walk_zombie, $05
    db script_cmd_walk_backwards_rebecca, $02
    db script_cmd_walk_zombie, $05
    db script_cmd_set_anim_zombie, $03, $00
    db script_cmd_wait_frames, $28
    db script_cmd_set_anim_chris, $03, $10
    db script_cmd_set_anim_chris, $03, $08
    db script_cmd_dialogue_chris
    dw $4420
    db $37, $86
    db script_cmd_wait_frames, $14
    db script_cmd_walk_zombie, $14
    db script_cmd_change_camera, $03
    db $37, $02
    db script_cmd_walk_zombie, $32
    db script_cmd_wait_frames, $64
    db script_cmd_init_room_camera, $08, $05
    db script_cmd_init_chris
    dw $01d8, $02c0, $0000, $0803, $0000
    db script_cmd_init_rebecca
    dw $0248, $0390, $0014, $0003, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_chris, $03, $10
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_dialogue_chris
    dw $453d
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $4540
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $4543
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_dialogue_rebecca
    dw $4546
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_dialogue_chris
    dw $4549
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $454c
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $4552
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_dialogue_rebecca
    dw $454f
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $4555
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $4558
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $455b
    db script_cmd_wait_frames, $96
    db script_cmd_rotate_chris, $84
    db script_cmd_change_camera, $02
    db script_cmd_wait_frames, $14
    db $20
    db $1e
    db script_cmd_end

SceneScript_47dd:: ; 0x47dd
    db script_cmd_init_room_camera, $3c, $03
    db script_cmd_init_chris
    dw $0220, $02d0, $0008, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_chris, $05
    db script_cmd_rotate_chris, $04
    db script_cmd_walk_chris, $0a
    db script_cmd_dialogue_chris
    dw $438a
    db script_cmd_walk_chris, $32
    db script_cmd_rotate_chris, $02
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_walk_chris, $28
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_dialogue_enrico
    dw $4345
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $4348
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_enrico
    dw $434b
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $434e
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $07
    db $1c, $0f
    db script_cmd_dialogue_enrico
    dw $4354
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $04
    db script_cmd_rotate_chris, $04
    db script_cmd_dialogue_chris
    dw $4351
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db script_cmd_wait_frames, $32
    db script_cmd_change_camera, $03
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db $1c, $0c
    db script_cmd_wait_frames, $14
    db script_cmd_wait_frames, $0a
    db script_cmd_change_camera, $05
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_dialogue_chris
    dw $4357
    db script_cmd_wait_frames, $96
    db script_cmd_end

SceneScript_4869:: ; 0x4869
    db script_cmd_init_room_camera, $64, $02
    db script_cmd_init_chris
    dw $00c0, $ff08, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_jill
    dw $43f0
    db script_cmd_wait_frames, $32
    db script_cmd_rotate_chris, $08
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_chris
    dw $43f3
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $43f6
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $43f9
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $43fc
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_wait_frames, $96
    db $20
    db script_cmd_end

SceneScript_48a3:: ; 0x48a3
    db script_cmd_init_room_camera, $65, $03
    db script_cmd_init_chris
    dw $0390, $00d0, $0018, $0000, $0000
    db script_cmd_init_rebecca
    dw $0000, $fe48, $0000, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_rebecca
    dw $4399
    db $1b, $0f
    db script_cmd_rotate_rebecca, $04
    db $1b, $46
    db script_cmd_rotate_rebecca, $84
    db $1b, $1e
    db script_cmd_rotate_rebecca, $84
    db script_cmd_wait_frames, $3c
    db script_cmd_change_camera, $03
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_dialogue_chris
    dw $43ea
    db script_cmd_wait_frames, $64
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_dialogue_rebecca
    dw $43ed
    db script_cmd_wait_frames, $64
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_dialogue_chris
    dw $43ff
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_rebecca
    dw $453d
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_dialogue_rebecca
    dw $454f
    db script_cmd_rotate_chris, $84
    db script_cmd_rotate_rebecca, $04
    db script_cmd_walk_rebecca, $0a
    db script_cmd_wait_frames, $64
    db $20
    db $1e
    db script_cmd_init_room_camera, $6b, $00
    db script_cmd_init_chris
    dw $0000, $ffc0, $0018, $0000, $0000
    db script_cmd_init_rebecca
    dw $0000, $0040, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $96
    db script_cmd_init_room_camera, $6c, $00
    db script_cmd_init_chris
    dw $02d0, $ff78, $0018, $0000, $0000
    db script_cmd_init_rebecca
    dw $02d0, $fec8, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $32
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_walk_chris, $05
    db script_cmd_walk_rebecca, $05
    db script_cmd_wait_frames, $5a
    db script_cmd_change_camera, $01
    db script_cmd_wait_frames, $64
    db script_cmd_init_room_camera, $6c, $03
    db script_cmd_init_chris
    dw $fec8, $0000, $0018, $0000, $0000
    db script_cmd_init_rebecca
    dw $fec8, $fe50, $0018, $0000, $0000
    db script_cmd_init_wesker
    dw $fda0, $01d0, $0010, $1800, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_chris, $28
    db script_cmd_rotate_rebecca, $02
    db script_cmd_walk_rebecca, $14
    db script_cmd_rotate_rebecca, $02
    db script_cmd_rotate_chris, $04
    db script_cmd_dialogue_wesker
    dw $4402
    db script_cmd_set_anim_wesker, $03, $10
    db script_cmd_set_anim_wesker, $03, $08
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_chris
    dw $4405
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_wesker
    dw $4408
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_chris
    dw $440b
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_wesker
    dw $440e
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_chris
    dw $4411
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_wesker
    dw $4414
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_chris
    dw $4417
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $441a
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_wesker
    dw $441d
    db $1c, $0f
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_rotate_rebecca, $02
    db script_cmd_walk_rebecca, $0b
    db script_cmd_rotate_rebecca, $02
    db script_cmd_set_anim_rebecca, $03, $00
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_dialogue_chris
    dw $4420
    db script_cmd_wait_frames, $96
    db script_cmd_init_rebecca
    dw $02d0, $fe30, $0018, $0000, $0000
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_wesker
    dw $4423
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $4426
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $4429
    db $20
    db $1e
    db script_cmd_init_room_camera, $6e, $02
    db script_cmd_init_chris
    dw $ff28, $0298, $0000, $0000, $0000
    db script_cmd_init_wesker
    dw $fe48, $0208, $0004, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_change_camera, $05
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $06
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_dialogue_chris
    dw $442c
    db script_cmd_walk_wesker, $0a
    db script_cmd_rotate_wesker, $82
    db script_cmd_walk_wesker, $14
    db script_cmd_rotate_wesker, $02
    db script_cmd_walk_wesker, $14
    db script_cmd_rotate_wesker, $04
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $442f
    db script_cmd_set_anim_wesker, $03, $08
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $4432
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $4435
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $4438
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $443b
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $443e
    db script_cmd_set_anim_wesker, $00, $00
    db script_cmd_rotate_wesker, $08
    db script_cmd_walk_wesker, $0f
    db script_cmd_rotate_wesker, $08
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $06
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db $26, $1e
    db script_cmd_dialogue_wesker
    dw $4441
    db $29, $0a
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $4444
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $4447
    db script_cmd_rotate_wesker, $04
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $07
    db script_cmd_wait_frames, $32
    db script_cmd_change_camera, $05
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_chris
    dw $444a
    db script_cmd_wait_frames, $96
    db $1e
    db script_cmd_end

SceneScript_4ae3:: ; 0x4ae3
    db script_cmd_init_room_camera, $6c, $02
    db script_cmd_init_chris
    dw $fdb0, $01d0, $0010, $0000, $0000
    db script_cmd_init_rebecca
    dw $0060, $fef0, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_chris, $32
    db script_cmd_rotate_chris, $82
    db script_cmd_walk_chris, $28
    db script_cmd_rotate_chris, $82
    db script_cmd_change_camera, $01
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_dialogue_chris
    dw $444d
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_dialogue_rebecca
    dw $4450
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_dialogue_chris
    dw $4453
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_rebecca
    dw $4456
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $4459
    db script_cmd_run_chris, $30
    db script_cmd_change_camera, $00
    db script_cmd_rotate_rebecca, $08
    db script_cmd_run_chris, $06
    db $1b, $06
    db script_cmd_run_chris, $06
    db $1b, $06
    db script_cmd_run_chris, $06
    db $1b, $06
    db script_cmd_run_chris, $06
    db $1b, $06
    db script_cmd_init_room_camera, $6b, $00
    db script_cmd_init_chris
    dw $0000, $ffc0, $0018, $0000, $0000
    db script_cmd_init_rebecca
    dw $0000, $0040, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $96
    db script_cmd_init_room_camera, $65, $03
    db script_cmd_init_chris
    dw $0338, $00d0, $0010, $0000, $0000
    db script_cmd_init_rebecca
    dw $03c0, $00d0, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $32
    db script_cmd_run_chris, $14
    db script_cmd_set_anim_rebecca, $00, $18
    db script_cmd_dialogue_rebecca
    dw $445c
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_rotate_chris, $08
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_chris
    dw $445f
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_rebecca
    dw $4462
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_chris
    dw $4465
    db script_cmd_wait_frames, $64
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_dialogue_rebecca
    dw $4468
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_chris
    dw $446b
    db script_cmd_rotate_rebecca, $02
    db $1b, $14
    db script_cmd_rotate_chris, $84
    db script_cmd_change_camera, $02
    db script_cmd_rotate_rebecca, $02
    db $1b, $60
    db $1c, $05
    db $1e
    db script_cmd_end

SceneScript_4bbd:: ; 0x4bbd
    db script_cmd_init_room_camera, $5e, $04
    db script_cmd_init_chris
    dw $0320, $0340, $0014, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_chris, $00, $00
    db $2f
    dw $446e
    db script_cmd_wait_frames, $c8
    db $1e
    db script_cmd_end

SceneScript_4bdc:: ; 0x4bdc
    db script_cmd_init_room_camera, $6d, $00
    db script_cmd_init_chris
    dw $0000, $0100, $0010, $0000, $0000
    db script_cmd_init_jill
    dw $0000, $fe20, $0000, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_chris
    dw $4471
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_jill
    dw $4474
    db script_cmd_run_jill, $24
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $02
    db script_cmd_run_jill, $0c
    db script_cmd_dialogue_jill
    dw $4477
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $00
    db script_cmd_dialogue_chris
    dw $447a
    db script_cmd_rotate_chris, $08
    db script_cmd_wait_frames, $64
    db script_cmd_end

SceneScript_4c1b:: ; 0x4c1b
    db script_cmd_init_room_camera, $61, $03
    db script_cmd_init_chris
    dw $02d0, $ffc0, $0018, $0000, $0000
    db script_cmd_init_jill
    dw $02d0, $0060, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $32
    db script_cmd_change_camera, $02
    db script_cmd_run_jill, $3c
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_rotate_jill, $86
    db script_cmd_dialogue_jill
    dw $43e7
    db script_cmd_rotate_jill, $06
    db script_cmd_run_jill, $60
    db script_cmd_change_camera, $03
    db script_cmd_end

SceneScript_4c50:: ; 0x4c50
    db script_cmd_init_room_camera, $5b, $01
    db script_cmd_init_chris
    dw $fff0, $feb0, $0000, $0000, $0000
    db script_cmd_init_jill
    dw $ff30, $0020, $0008, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_rotate_jill, $02
    db script_cmd_dialogue_jill
    dw $44a1
    db script_cmd_run_jill, $0e
    db script_cmd_end

SceneScript_4c78:: ; 0x4c78
    db script_cmd_init_room_camera, $59, $02
    db script_cmd_init_chris
    dw $00c8, $0250, $0010, $0000, $0000
    db script_cmd_init_jill
    dw $0078, $0310, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db $40
    dw $447d
    db script_cmd_wait_frames, $64
    db script_cmd_end

SceneScript_4c9e:: ; 0x4c9e
    db script_cmd_init_room_camera, $59, $05
    db script_cmd_init_chris
    dw $fcb8, $fc30, $0018, $0000, $0000
    db script_cmd_init_rebecca
    dw $fd78, $ffd8, $0010, $0000, $0000
    db script_cmd_init_jill
    dw $fd98, $fc30, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_chris, $14
    db script_cmd_change_camera, $04
    db $1b, $37
    db script_cmd_change_camera, $05
    db script_cmd_set_anim_rebecca, $00, $00
    db script_cmd_dialogue_rebecca
    dw $4480
    db script_cmd_rotate_chris, $04
    db script_cmd_walk_chris, $14
    db script_cmd_rotate_chris, $04
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $06
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_dialogue_chris
    dw $4483
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $05
    db script_cmd_rotate_rebecca, $06
    db script_cmd_rotate_jill, $04
    db script_cmd_wait_frames, $0a
    db script_cmd_rotate_rebecca, $84
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_rebecca
    dw $4486
    db script_cmd_rotate_rebecca, $84
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_jill
    dw $4489
    db script_cmd_set_anim_jill, $03, $10
    db script_cmd_set_anim_jill, $03, $08
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $06
    db script_cmd_dialogue_chris
    dw $4492
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_jill
    dw $448c
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $06
    db script_cmd_dialogue_chris
    dw $448f
    db script_cmd_rotate_chris, $86
    db script_cmd_wait_frames, $64
    db script_cmd_end

SceneScript_4d1f:: ; 0x4d1f
    db script_cmd_init_room_camera, $39, $01
    db script_cmd_init_chris
    dw $00f0, $0020, $0018, $0007, $0000
    db $34
    dw $07f8, $07f8, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $1e
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_rotate_chris, $08
    db script_cmd_wait_frames, $0a
    db script_cmd_rotate_chris, $02
    db script_cmd_wait_frames, $05
    db script_cmd_rotate_chris, $82
    db script_cmd_wait_frames, $14
    db script_cmd_change_camera, $01
    db script_cmd_change_camera, $02
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $03
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $01
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $04
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $00
    db script_cmd_end

SceneScriptIntroJill:: ; 0x4d65
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $00, $00
    db script_cmd_init_barry
    dw $0080, $fbc8, $0000, $0803, $0000
    db script_cmd_init_jill
    dw $ff80, $fbc8, $0000, $0803, $0000
    db script_cmd_init_wesker
    dw $0000, $fbc8, $0000, $0803, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_wesker, $03, $10
    db script_cmd_set_anim_wesker, $00, $00
    db script_cmd_set_anim_barry, $03, $10
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_set_anim_jill, $03, $10
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_rotate_jill, $82
    db script_cmd_rotate_barry, $02
    db script_cmd_walk_jill, $14
    db script_cmd_walk_barry, $14
    db script_cmd_wait_frames, $0a
    db script_cmd_change_camera, $01
    db script_cmd_walk_wesker, $0f
    db script_cmd_set_anim_wesker, $00, $00
    db script_cmd_walk_jill, $37
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_walk_barry, $0f
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_dialogue_barry
    dw $4225
    db script_cmd_wait_frames, $96
    db script_cmd_walk_barry, $04
    db script_cmd_rotate_jill, $82
    db script_cmd_walk_jill, $04
    db script_cmd_dialogue_wesker
    dw $4228
    db script_cmd_wait_frames, $96
    db script_cmd_walk_jill, $03
    db script_cmd_rotate_barry, $86
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_change_camera, $02
    db script_cmd_rotate_jill, $88
    db script_cmd_run_jill, $03
    db script_cmd_change_camera, $06
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_jill
    dw $422b
    db script_cmd_wait_frames, $96
    db script_cmd_rotate_jill, $04
    db script_cmd_run_jill, $02
    db script_cmd_dialogue_wesker
    dw $422e
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4231
    db script_cmd_wait_frames, $96
    db $1c, $0f
    db script_cmd_rotate_jill, $84
    db script_cmd_dialogue_barry
    dw $4234
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $4237
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $423a
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $423d
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $4240
    db script_cmd_wait_frames, $96
    db script_cmd_walk_jill, $32
    db script_cmd_rotate_jill, $82
    db script_cmd_change_camera, $01
    db script_cmd_rotate_barry, $04
    db script_cmd_dialogue_wesker
    dw $4243
    db script_cmd_wait_frames, $96
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_rotate_barry, $02
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_rotate_jill, $02
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_change_camera, $05
    db script_cmd_run_jill, $05
    db script_cmd_rotate_jill, $82
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_jill, $05
    db script_cmd_wait_frames, $96
    db script_cmd_door_transition, $40
    db script_cmd_init_jill
    dw $fc70, $0000, $0008, $0000, $0000
    db script_cmd_init_room_camera, $01, $ff
    db $3b
    db script_cmd_end

SceneScriptJillAndBarryEnterDiningHall:: ; 0x4e79
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $01, $00
    db script_cmd_init_jill
    dw $fc70, $ff98, $0008, $0000, $0000
    db script_cmd_init_barry
    dw $fc70, $0060, $0008, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_barry, $14
    db script_cmd_dialogue_barry
    dw $4246
    db script_cmd_wait_frames, $96
    db script_cmd_rotate_barry, $82
    db script_cmd_walk_barry, $1e
    db script_cmd_rotate_barry, $02
    db script_cmd_walk_barry, $3c
    db script_cmd_change_camera, $01
    db script_cmd_walk_barry, $3c
    db $3b
    db script_cmd_end

SceneScriptBarryChecksFireplace:: ; 0x4eaf
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $01, $02
    db script_cmd_init_jill
    dw $01f8, $0100, $000c, $1800, $0000
    db script_cmd_init_barry
    dw $0390, $ffe8, $000c, $0005, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $0a
    db script_cmd_dialogue_barry
    dw $4249
    db script_cmd_wait_frames, $96
    db script_cmd_walk_jill, $14
    db script_cmd_change_camera, $03
    db script_cmd_walk_jill, $0c
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_dialogue_jill
    dw $424c
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $424f
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4252
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScriptBarryKillsFirstZombie:: ; 0x4ef1
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $01, $02
    db script_cmd_init_jill
    dw $02c0, $0150, $0010, $1800, $0000
    db script_cmd_init_barry
    dw $0390, $ff60, $000c, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_run_jill, $16
    db script_cmd_rotate_jill, $82
    db script_cmd_run_jill, $04
    db script_cmd_change_camera, $03
    db script_cmd_init_zombie
    dw $0310, $0150, $000c, $0000, $0000
    db $22
    db script_cmd_rotate_jill, $02
    db script_cmd_walk_jill, $14
    db script_cmd_rotate_jill, $86
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_dialogue_jill
    dw $4255
    db $1c, $04
    db script_cmd_wait_frames, $32
    db $1c, $05
    db script_cmd_walk_zombie, $0a
    db $37, $02
    db script_cmd_rotate_barry, $88
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_barry
    dw $4258
    db script_cmd_walk_zombie, $0f
    db script_cmd_dialogue_jill
    dw $425b
    db script_cmd_walk_zombie, $14
    db script_cmd_walk_backwards_jill, $14
    db script_cmd_wait_frames, $46
    db script_cmd_dialogue_barry
    dw $425e
    db script_cmd_rotate_barry, $02
    db script_cmd_set_anim_barry, $03, $10
    db script_cmd_set_anim_barry, $03, $08
    db $1c, $0f
    db script_cmd_wait_frames, $1e
    db $1c, $0f
    db script_cmd_wait_frames, $1e
    db $1c, $0f
    db script_cmd_wait_frames, $1e
    db script_cmd_set_anim_zombie, $02, $00
    db script_cmd_rotate_barry, $82
    db script_cmd_set_anim_barry, $03, $10
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_walk_barry, $0a
    db script_cmd_walk_jill, $0a
    db script_cmd_rotate_barry, $86
    db script_cmd_dialogue_barry
    dw $4261
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4264
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4267
    db script_cmd_rotate_barry, $04
    db script_cmd_run_barry, $28
    db script_cmd_change_camera, $01
    db script_cmd_run_barry, $32
    db $20
    db $1c, $04
    db script_cmd_wait_frames, $1e
    db $1c, $05
    db $3b
    db script_cmd_end

SceneScriptJilLAndBarryReturnEntrance:: ; 0x4f92
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $00, $06
    db script_cmd_init_jill
    dw $03d0, $0090, $0014, $0000, $0000
    db script_cmd_init_barry
    dw $03d0, $0040, $0014, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $14
    db script_cmd_walk_barry, $14
    db script_cmd_rotate_barry, $82
    db script_cmd_walk_jill, $0a
    db script_cmd_walk_barry, $0a
    db script_cmd_rotate_barry, $02
    db script_cmd_walk_jill, $0f
    db script_cmd_walk_barry, $0f
    db script_cmd_change_camera, $05
    db script_cmd_rotate_jill, $02
    db script_cmd_rotate_barry, $02
    db script_cmd_walk_jill, $28
    db script_cmd_walk_barry, $28
    db script_cmd_dialogue_jill
    dw $426a
    db script_cmd_wait_frames, $96
    db script_cmd_walk_jill, $14
    db script_cmd_rotate_jill, $86
    db script_cmd_rotate_barry, $04
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_dialogue_barry
    dw $426d
    db script_cmd_wait_frames, $64
    db script_cmd_rotate_barry, $84
    db script_cmd_run_barry, $0a
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_run_barry, $32
    db script_cmd_rotate_jill, $82
    db script_cmd_walk_jill, $0a
    db script_cmd_rotate_jill, $84
    db script_cmd_walk_jill, $78
    db script_cmd_change_camera, $04
    db script_cmd_rotate_jill, $84
    db script_cmd_walk_jill, $32
    db script_cmd_init_barry
    dw $fda8, $fe10, $0004, $1800, $0000
    db $22
    db script_cmd_change_camera, $03
    db script_cmd_walk_jill, $32
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_walk_jill, $0a
    db script_cmd_rotate_jill, $84
    db script_cmd_change_camera, $02
    db script_cmd_walk_jill, $96
    db script_cmd_rotate_jill, $02
    db script_cmd_walk_jill, $0a
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_barry
    dw $4270
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_jill
    dw $4273
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $01
    db script_cmd_dialogue_jill
    dw $4276
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4279
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $427c
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $427f
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4282
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4285
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_barry
    dw $4288
    db script_cmd_wait_frames, $96
    db script_cmd_walk_jill, $09
    db script_cmd_dialogue_jill
    dw $428b
    db script_cmd_walk_backwards_jill, $0a
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_wait_frames, $46
    db script_cmd_rotate_barry, $02
    db script_cmd_change_camera, $06
    db script_cmd_run_barry, $3c
    db script_cmd_rotate_barry, $82
    db script_cmd_run_barry, $0a
    db script_cmd_change_camera, $05
    db script_cmd_rotate_barry, $86
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_dialogue_barry
    dw $4291
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $06
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_dialogue_barry
    dw $4294
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_rotate_barry, $06
    db script_cmd_walk_barry, $28
    db $20
    db $1c, $04
    db script_cmd_wait_frames, $32
    db $1c, $05
    db $3b
    db script_cmd_end

SceneScript_508a:: ; 0x508a
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $00, $02
    db script_cmd_init_barry
    dw $fda8, $fe10, $0004, $1800, $0000
    db script_cmd_init_jill
    dw $fe98, $ff00, $0010, $1800, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_barry
    dw $4270
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_jill
    dw $4273
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $01
    db script_cmd_dialogue_jill
    dw $4276
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4279
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $427c
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $427f
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4282
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4285
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4288
    db script_cmd_wait_frames, $96
    db script_cmd_walk_jill, $1e
    db script_cmd_dialogue_jill
    dw $428b
    db script_cmd_walk_backwards_jill, $1e
    db script_cmd_wait_frames, $46
    db script_cmd_rotate_barry, $02
    db script_cmd_change_camera, $06
    db script_cmd_run_barry, $3c
    db script_cmd_rotate_barry, $82
    db script_cmd_run_barry, $0a
    db script_cmd_change_camera, $05
    db script_cmd_rotate_barry, $86
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_dialogue_barry
    dw $4291
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $06
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_dialogue_barry
    dw $4294
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_rotate_barry, $06
    db script_cmd_walk_barry, $28
    db script_cmd_change_camera, $02
    db script_cmd_wait_frames, $50
    db $1c, $04
    db script_cmd_wait_frames, $32
    db $1c, $05
    db $3b
    db script_cmd_end

SceneScript_5118:: ; 0x5118
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $19, $01
    db script_cmd_init_jill
    dw $ff70, $ff30, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_jill
    dw $4297
    db script_cmd_wait_frames, $96
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $0a, $06
    db script_cmd_init_barry
    dw $0018, $fee8, $0004, $0000, $0000
    db $22
    db $05
    db script_cmd_dialogue_barry
    dw $429a
    db script_cmd_wait_frames, $96
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $19, $01
    db script_cmd_init_jill
    dw $ff70, $ff30, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_rotate_jill, $88
    db script_cmd_dialogue_jill
    dw $429d
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42a0
    db script_cmd_wait_frames, $96
    db $1c, $04
    db script_cmd_door_transition, $40
    db script_cmd_init_room_camera, $19, $01
    db script_cmd_init_jill
    dw $ff70, $0000, $0000, $0000, $0000
    db script_cmd_init_barry
    dw $0000, $00d0, $0004, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_barry
    dw $42a3
    db script_cmd_rotate_barry, $06
    db script_cmd_rotate_jill, $02
    db script_cmd_run_barry, $02
    db script_cmd_run_jill, $02
    db script_cmd_run_barry, $02
    db script_cmd_run_jill, $04
    db script_cmd_wait_frames, $50
    db script_cmd_door_transition, $40
    db script_cmd_init_room_camera, $0a, $06
    db script_cmd_init_jill
    dw $0030, $fee8, $0010, $1800, $0000
    db $3b
    db script_cmd_end

SceneScript_51ad:: ; 0x51ad
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $2f, $00
    db script_cmd_init_barry
    dw $ffa8, $0028, $000c, $0000, $0000
    db script_cmd_init_jill
    dw $fed8, $00d0, $000c, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_rotate_barry, $08
    db script_cmd_set_anim_barry, $03, $10
    db script_cmd_set_anim_barry, $03, $08
    db script_cmd_dialogue_barry
    dw $42e2
    db script_cmd_wait_frames, $0a
    db script_cmd_set_anim_barry, $03, $10
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42e5
    db script_cmd_wait_frames, $96
    db script_cmd_walk_jill, $01
    db script_cmd_dialogue_jill
    dw $42e8
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42eb
    db script_cmd_rotate_barry, $86
    db script_cmd_rotate_jill, $02
    db script_cmd_walk_barry, $14
    db script_cmd_change_camera, $01
    db script_cmd_walk_barry, $0a
    db script_cmd_rotate_barry, $84
    db script_cmd_walk_barry, $1e
    db script_cmd_walk_jill, $23
    db script_cmd_rotate_jill, $84
    db script_cmd_walk_jill, $19
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_barry
    dw $42ee
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_jill
    dw $42f1
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_barry, $05, $00
    db script_cmd_dialogue_barry
    dw $42f4
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $42f7
    db script_cmd_rotate_jill, $88
    db script_cmd_walk_jill, $01
    db script_cmd_dialogue_barry
    dw $42fa
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_rotate_jill, $08
    db $1e
    db $3b
    db $3c
    db $2b, $54
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $0a, $06
    db script_cmd_init_barry
    dw $fff8, $fe28, $0004, $1800, $0000
    db script_cmd_init_jill
    dw $fff8, $fee8, $000c, $1800, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_jill
    dw $42a6
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42a9
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $42ac
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $42af
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42b2
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42b5
    db script_cmd_wait_frames, $96
    db script_cmd_walk_barry, $14
    db script_cmd_rotate_barry, $02
    db script_cmd_walk_barry, $19
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_rotate_barry, $84
    db script_cmd_change_camera, $06
    db script_cmd_dialogue_jill
    dw $42b8
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_barry
    dw $42bb
    db script_cmd_rotate_barry, $04
    db script_cmd_walk_barry, $14
    db script_cmd_rotate_barry, $84
    db script_cmd_walk_barry, $28
    db script_cmd_init_room_camera, $01, $00
    db $3b
    db script_cmd_end

SceneScript_5295:: ; 0x5295
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $00, $01
    db script_cmd_init_barry
    dw $0010, $ffb8, $0008, $1800, $0000
    db script_cmd_init_jill
    dw $fc30, $fed0, $0008, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $1e
    db script_cmd_dialogue_jill
    dw $42be
    db script_cmd_wait_frames, $96
    db script_cmd_rotate_barry, $08
    db script_cmd_walk_jill, $28
    db script_cmd_walk_barry, $32
    db script_cmd_change_camera, $02
    db script_cmd_rotate_barry, $82
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_dialogue_barry
    dw $42c1
    db script_cmd_wait_frames, $96
    db script_cmd_rotate_jill, $82
    db script_cmd_dialogue_jill
    dw $42c4
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42c7
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42ca
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $42cd
    db script_cmd_wait_frames, $96
    db script_cmd_rotate_jill, $86
    db script_cmd_dialogue_barry
    dw $42d0
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_jill
    dw $42d3
    db script_cmd_rotate_jill, $06
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42d6
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $42d9
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42dc
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_barry, $03, $10
    db script_cmd_set_anim_barry, $03, $08
    db script_cmd_wait_frames, $28
    db script_cmd_set_anim_barry, $03, $10
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_dialogue_jill
    dw $42df
    db script_cmd_wait_frames, $96
    db script_cmd_rotate_barry, $82
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $0f
    db script_cmd_walk_backwards_jill, $14
    db script_cmd_rotate_barry, $84
    db script_cmd_run_barry, $28
    db script_cmd_change_camera, $01
    db script_cmd_run_barry, $14
    db script_cmd_wait_frames, $3c
    db script_cmd_change_camera, $02
    db script_cmd_wait_frames, $50
    db $1c, $04
    db $1c, $05
    db $3b
    db script_cmd_end

SceneScript_5334:: ; 0x5334
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $29, $00
    db script_cmd_init_barry
    dw $0090, $ffc8, $000c, $1800, $0000
    db script_cmd_init_jill
    dw $ffe0, $00f0, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $01
    db script_cmd_rotate_barry, $08
    db script_cmd_dialogue_barry
    dw $42fd
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $00
    db script_cmd_walk_jill, $0a
    db script_cmd_change_camera, $01
    db script_cmd_walk_jill, $05
    db script_cmd_rotate_jill, $82
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_jill
    dw $4300
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4303
    db script_cmd_walk_jill, $14
    db script_cmd_set_anim_jill, $03, $10
    db script_cmd_wait_frames, $0a
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_walk_backwards_jill, $0a
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4306
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4309
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $430c
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $430f
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4312
    db script_cmd_rotate_barry, $82
    db script_cmd_walk_barry, $28
    db script_cmd_rotate_barry, $04
    db script_cmd_walk_barry, $28
    db script_cmd_change_camera, $00
    db script_cmd_rotate_jill, $08
    db script_cmd_walk_backwards_jill, $0a
    db script_cmd_walk_barry, $14
    db script_cmd_rotate_barry, $06
    db script_cmd_wait_frames, $14
    db script_cmd_rotate_barry, $86
    db script_cmd_wait_frames, $46
    db script_cmd_door_transition, $40
    db $3b
    db script_cmd_end

SceneScript_53b7:: ; 0x53b7
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $1e, $01
    db script_cmd_init_jill
    dw $0010, $01b0, $0008, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $40
    db script_cmd_rotate_jill, $04
    db script_cmd_change_camera, $02
    db script_cmd_run_jill, $14
    db script_cmd_change_camera, $03
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_jill
    dw $4315
    db script_cmd_run_jill, $14
    db script_cmd_rotate_jill, $04
    db script_cmd_set_anim_jill, $07, $00
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $04
    db $3d
    dw $4318
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $431b
    db script_cmd_wait_frames, $96
    db $3d
    dw $431e
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4321
    db script_cmd_wait_frames, $96
    db $3d
    dw $4324
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4327
    db script_cmd_wait_frames, $96
    db $3d
    dw $432a
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_rotate_jill, $04
    db script_cmd_change_camera, $03
    db script_cmd_run_jill, $14
    db script_cmd_change_camera, $02
    db script_cmd_run_jill, $0a
    db script_cmd_change_camera, $01
    db script_cmd_run_jill, $0a
    db script_cmd_rotate_jill, $84
    db script_cmd_run_jill, $28
    db script_cmd_change_camera, $00
    db script_cmd_run_jill, $0a
    db script_cmd_door_transition, $40
    db script_cmd_init_room_camera, $27, $00
    db script_cmd_init_jill
    dw $00c8, $02d0, $0010, $0000, $0000
    db $3b
    db script_cmd_end

SceneScript_5436:: ; 0x5436
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $1e, $04
    db script_cmd_init_jill
    dw $01d0, $0040, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_run_jill, $14
    db script_cmd_rotate_jill, $04
    db script_cmd_set_anim_jill, $07, $00
    db script_cmd_dialogue_jill
    dw $432d
    db script_cmd_wait_frames, $96
    db $3d
    dw $4330
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4333
    db script_cmd_wait_frames, $96
    db $3d
    dw $4336
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_5470:: ; 0x5470
    db script_cmd_init_room_camera, $2d, $01
    db script_cmd_init_jill
    dw $0058, $feb0, $0000, $0000, $0000
    db script_cmd_init_barry
    dw $0090, $0150, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $14
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_wait_frames, $05
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_wait_frames, $05
    db script_cmd_set_anim_jill, $07, $00
    db script_cmd_dialogue_jill
    dw $4339
    db script_cmd_wait_frames, $96
    db $1c, $05
    db script_cmd_walk_barry, $17
    db script_cmd_wait_frames, $50
    db $20
    db $3b
    db script_cmd_end

SceneScript_54ad:: ; 0x54ad
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $36, $01
    db script_cmd_init_jill
    dw $0220, $0180, $0004, $1800, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db $40
    dw $433c
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4390
    db script_cmd_wait_frames, $96
    db $40
    dw $433f
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4393
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_54d9:: ; 0x54d9
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $4f, $05
    db script_cmd_init_jill
    dw $0370, $fd78, $000c, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_rotate_jill, $84
    db script_cmd_walk_backwards_jill, $0a
    db script_cmd_rotate_jill, $84
    db script_cmd_wait_frames, $50
    db script_cmd_dialogue_barry
    dw $439c
    db script_cmd_wait_frames, $96
    db $41
    dw $439f
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $43a2
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_wait_frames, $96
    db $41
    dw $43a5
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $43a8
    db script_cmd_wait_frames, $96
    db $41
    dw $43ab
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $43ae
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_5522:: ; 0x5522
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $50, $01
    db script_cmd_init_barry
    dw $0080, $ff28, $0004, $0803, $0000
    db script_cmd_init_jill
    dw $0168, $0250, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $28
    db script_cmd_change_camera, $02
    db script_cmd_walk_jill, $1e
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_walk_barry, $14
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_dialogue_barry
    dw $43b1
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $04
    db script_cmd_dialogue_jill
    dw $43b4
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $43b7
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $43ba
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $43bd
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_walk_barry, $05
    db script_cmd_rotate_barry, $82
    db script_cmd_walk_barry, $0a
    db script_cmd_change_camera, $02
    db script_cmd_walk_barry, $14
    db script_cmd_rotate_jill, $04
    db script_cmd_rotate_barry, $02
    db script_cmd_walk_barry, $0a
    db script_cmd_rotate_barry, $82
    db script_cmd_walk_barry, $0a
    db script_cmd_rotate_jill, $04
    db script_cmd_wait_frames, $14
    db script_cmd_change_camera, $01
    db script_cmd_walk_barry, $14
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_rotate_barry, $08
    db script_cmd_dialogue_barry
    dw $43c0
    db script_cmd_wait_frames, $96
    db script_cmd_rotate_barry, $88
    db script_cmd_init_barry
    dw $ff68, $ff28, $0004, $0803, $0000
    db script_cmd_change_camera, $04
    db $22
    db $1c, $04
    db script_cmd_wait_frames, $64
    db $1c, $05
    db script_cmd_rotate_jill, $88
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_wait_frames, $32
    db $3b
    db script_cmd_end

SceneScript_55b4:: ; 0x55b4
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $4f, $03
    db script_cmd_init_jill
    dw $02c8, $0210, $0018, $0000, $0000
    db script_cmd_init_wesker
    dw $0098, $0370, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $64
    db script_cmd_set_anim_jill, $00, $00
    db $1c, $0f
    db script_cmd_wait_frames, $14
    db script_cmd_rotate_jill, $04
    db script_cmd_run_jill, $1e
    db script_cmd_change_camera, $02
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_rotate_jill, $84
    db $1c, $0f
    db script_cmd_set_anim_wesker, $03, $00
    db script_cmd_wait_frames, $32
    db $1c, $0f
    db script_cmd_dialogue_jill
    dw $43d2
    db script_cmd_set_anim_wesker, $03, $10
    db script_cmd_set_anim_wesker, $00, $00
    db script_cmd_wait_frames, $78
    db script_cmd_change_camera, $07
    db script_cmd_rotate_wesker, $08
    db script_cmd_dialogue_wesker
    dw $43c3
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_dialogue_jill
    dw $43c6
    db script_cmd_walk_jill, $28
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_set_anim_wesker, $00, $18
    db script_cmd_dialogue_wesker
    dw $43c9
    db script_cmd_dialogue_jill
    dw $43cc
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $01
    db script_cmd_walk_wesker, $03
    db script_cmd_change_camera, $02
    db script_cmd_walk_wesker, $3f
    db script_cmd_rotate_wesker, $08
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_jill
    dw $43cf
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_rotate_wesker, $84
    db script_cmd_walk_wesker, $06
    db script_cmd_init_wesker
    dw $fd30, $03d0, $0010, $0000, $0000
    db $22
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_563e:: ; 0x563e
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $3a, $04
    db script_cmd_init_jill
    dw $fcd8, $fef8, $0000, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db $40
    dw $4342
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_dialogue_jill
    dw $4396
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_5663:: ; 0x5663
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $2b, $02
    db script_cmd_init_jill
    dw $0078, $fe08, $000c, $0007, $0000
    db script_cmd_init_barry
    dw $fef0, $0290, $0010, $1800, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db $1c, $04
    db script_cmd_wait_frames, $32
    db $1c, $05
    db script_cmd_wait_frames, $33
    db script_cmd_change_camera, $00
    db script_cmd_walk_barry, $50
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_change_camera, $02
    db script_cmd_rotate_barry, $82
    db script_cmd_walk_barry, $1e
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_walk_barry, $28
    db script_cmd_set_anim_barry, $05, $00
    db script_cmd_dialogue_barry
    dw $4561
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4564
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4567
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $456a
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $456d
    db script_cmd_wait_frames, $64
    db script_cmd_door_transition, $85
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $2a, $00
    db script_cmd_init_jill
    dw $0050, $0100, $000c, $0007, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_jill
    dw $4570
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_rotate_jill, $08
    db script_cmd_wait_frames, $96
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $2b, $02
    db script_cmd_init_barry
    dw $0078, $fe08, $000c, $0005, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_barry
    dw $4573
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_rotate_barry, $08
    db script_cmd_walk_barry, $1e
    db script_cmd_wait_frames, $32
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $2a, $00
    db script_cmd_init_jill
    dw $0050, $0100, $001c, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_jill
    dw $4576
    db script_cmd_rotate_jill, $88
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_wait_frames, $a0
    db $3b
    db script_cmd_end

SceneScript_571c:: ; 0x571c
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $2b, $02
    db script_cmd_init_barry
    dw $ffa0, $00d0, $000c, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db $1c, $04
    db script_cmd_run_barry, $19
    db script_cmd_rotate_barry, $02
    db script_cmd_run_barry, $0a
    db script_cmd_set_anim_barry, $05, $00
    db script_cmd_dialogue_barry
    dw $4579
    db script_cmd_wait_frames, $96
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $2a, $00
    db script_cmd_init_jill
    dw $0050, $0100, $001c, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $96
    db $20
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $2b, $02
    db script_cmd_init_jill
    dw $0078, $fe08, $0000, $0000, $0000
    db script_cmd_init_barry
    dw $00a8, $fed8, $000c, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_barry
    dw $457c
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $457f
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_dialogue_barry
    dw $4582
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $4585
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4588
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $42d0
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_jill
    dw $42df
    db script_cmd_rotate_barry, $08
    db script_cmd_walk_barry, $46
    db script_cmd_rotate_jill, $82
    db $1c, $04
    db script_cmd_wait_frames, $1e
    db $1c, $05
    db script_cmd_wait_frames, $64
    db $3b
    db script_cmd_end

SceneScript_57ab:: ; 0x57ab
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $43, $00
    db script_cmd_init_jill
    dw $fef0, $0018, $0008, $0803, $0000
    db script_cmd_init_barry
    dw $ffc0, $0008, $0008, $0803, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_jill, $03, $10
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_rotate_barry, $88
    db script_cmd_set_anim_barry, $03, $10
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_dialogue_barry
    dw $435a
    db script_cmd_dialogue_jill
    dw $435d
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4360
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4363
    db script_cmd_wait_frames, $96
    db script_cmd_wait_frames, $96
    db $1e
    db $3b
    db script_cmd_end

SceneScript_57f1:: ; 0x57f1
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $3c, $03
    db script_cmd_init_jill
    dw $0220, $02d0, $0008, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $05
    db script_cmd_rotate_jill, $04
    db script_cmd_walk_jill, $0a
    db script_cmd_dialogue_enrico
    dw $4366
    db script_cmd_walk_jill, $32
    db script_cmd_rotate_jill, $02
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_walk_jill, $28
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_jill
    dw $4369
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_enrico
    dw $436c
    db script_cmd_wait_frames, $96
    db script_cmd_walk_jill, $1e
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_jill
    dw $436f
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_enrico
    dw $4372
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $04
    db script_cmd_dialogue_jill
    dw $4375
    db script_cmd_wait_frames, $96
    db script_cmd_init_barry
    dw $0250, $0268, $0010, $0000, $0000
    db $22
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_barry
    dw $4378
    db script_cmd_wait_frames, $96
    db script_cmd_run_barry, $1e
    db script_cmd_rotate_barry, $02
    db script_cmd_run_barry, $14
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_enrico
    dw $437b
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $04
    db script_cmd_dialogue_barry
    dw $437e
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_enrico
    dw $4381
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_enrico
    dw $4384
    db $1c, $0f
    db script_cmd_dialogue_enrico
    dw $4387
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_run_barry, $0a
    db script_cmd_set_anim_barry, $05, $00
    db script_cmd_dialogue_jill
    dw $438a
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_588c:: ; 0x588c
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $64, $02
    db script_cmd_init_jill
    dw $0120, $ff08, $000c, $1800, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_chris
    dw $42fd
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_jill
    dw $43d5
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $44a4
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $44a7
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $44aa
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_chris
    dw $44ad
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_58ce:: ; 0x58ce
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $65, $03
    db script_cmd_init_jill
    dw $0390, $0038, $0018, $0000, $0000
    db script_cmd_init_barry
    dw $0000, $fe48, $0000, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_run_barry, $0a
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $02
    db script_cmd_run_barry, $05
    db script_cmd_rotate_barry, $04
    db script_cmd_run_barry, $46
    db script_cmd_rotate_barry, $84
    db script_cmd_run_barry, $05
    db script_cmd_change_camera, $03
    db script_cmd_run_barry, $19
    db script_cmd_rotate_jill, $04
    db script_cmd_walk_jill, $0a
    db script_cmd_rotate_barry, $84
    db script_cmd_wait_frames, $3c
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_dialogue_barry
    dw $4498
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $449b
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $449e
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $44a1
    db script_cmd_rotate_jill, $84
    db script_cmd_rotate_barry, $04
    db script_cmd_walk_barry, $0a
    db script_cmd_wait_frames, $64
    db $20
    db $1e
    db script_cmd_init_room_camera, $6b, $00
    db script_cmd_init_jill
    dw $0000, $ffc0, $0018, $0000, $0000
    db script_cmd_init_barry
    dw $0000, $0040, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $96
    db script_cmd_init_room_camera, $6c, $00
    db script_cmd_init_jill
    dw $02d0, $ff78, $0018, $0000, $0000
    db script_cmd_init_barry
    dw $02d0, $fec8, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_wait_frames, $5a
    db script_cmd_change_camera, $01
    db script_cmd_wait_frames, $64
    db script_cmd_init_room_camera, $6c, $03
    db script_cmd_init_jill
    dw $fec8, $0000, $0018, $0000, $0000
    db script_cmd_init_barry
    dw $fec8, $fe50, $0018, $0000, $0000
    db script_cmd_init_wesker
    dw $fda0, $01d0, $0010, $1800, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $28
    db script_cmd_rotate_barry, $02
    db script_cmd_walk_barry, $14
    db script_cmd_rotate_barry, $02
    db script_cmd_rotate_jill, $04
    db script_cmd_dialogue_jill
    dw $426a
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $44b0
    db script_cmd_rotate_barry, $82
    db script_cmd_set_anim_barry, $03, $10
    db script_cmd_set_anim_barry, $03, $08
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_jill
    dw $44b3
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_wesker
    dw $44b6
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_jill
    dw $44b9
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_wesker
    dw $44bc
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_jill
    dw $44bf
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_wesker
    dw $44c2
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_jill
    dw $44c5
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $44c8
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_wesker
    dw $44cb
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_rotate_barry, $06
    db script_cmd_walk_barry, $05
    db script_cmd_wait_frames, $32
    db script_cmd_change_camera, $03
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_wesker
    dw $44ce
    db script_cmd_run_barry, $32
    db script_cmd_wait_frames, $64
    db script_cmd_dialogue_jill
    dw $44d1
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_wesker
    dw $44d1
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $44d4
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_wesker
    dw $44d7
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_dialogue_jill
    dw $44da
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_walk_wesker, $28
    db script_cmd_rotate_wesker, $02
    db script_cmd_walk_wesker, $14
    db script_cmd_rotate_wesker, $82
    db script_cmd_walk_wesker, $0a
    db script_cmd_rotate_wesker, $82
    db script_cmd_walk_wesker, $14
    db script_cmd_rotate_jill, $88
    db script_cmd_rotate_wesker, $86
    db script_cmd_dialogue_wesker
    dw $4534
    db script_cmd_rotate_barry, $88
    db script_cmd_run_barry, $32
    db script_cmd_wait_frames, $78
    db script_cmd_dialogue_jill
    dw $44dd
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_wesker
    dw $44e0
    db script_cmd_run_barry, $14
    db script_cmd_rotate_barry, $04
    db script_cmd_run_barry, $0a
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_set_anim_wesker, $00, $18
    db script_cmd_rotate_wesker, $04
    db script_cmd_walk_wesker, $0f
    db script_cmd_set_anim_wesker, $05, $00
    db script_cmd_dialogue_jill
    dw $452e
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $44e3
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $44e6
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $44e9
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $44ec
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $43f3
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $44ef
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $44f2
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $44f5
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $44f8
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $44fb
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $44fe
    db script_cmd_rotate_jill, $08
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_wait_frames, $96
    db script_cmd_door_transition, $40
    db script_cmd_init_jill
    dw $fd90, $fd38, $0000, $0000, $0000
    db script_cmd_init_room_camera, $6e, $01
    db $3b
    db script_cmd_end

SceneScript_5b2f:: ; 0x5b2f
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $6e, $01
    db script_cmd_init_jill
    dw $fe00, $ffd0, $0000, $0000, $0000
    db script_cmd_init_barry
    dw $fd70, $ffd0, $0000, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_change_camera, $02
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_rotate_jill, $02
    db script_cmd_rotate_barry, $02
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_change_camera, $05
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $06
    db script_cmd_wait_frames, $78
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_jill
    dw $4504
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4507
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $450a
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $450d
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4510
    db script_cmd_walk_barry, $28
    db script_cmd_rotate_barry, $82
    db script_cmd_walk_barry, $0a
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db $2a, $14
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_walk_backwards_jill, $14
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_jill
    dw $4513
    db script_cmd_set_anim_barry, $05, $00
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $05
    db script_cmd_dialogue_jill
    dw $4501
    db script_cmd_walk_backwards_jill, $14
    db script_cmd_wait_frames, $64
    db $3b
    db script_cmd_end

SceneScript_5bec:: ; 0x5bec
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $6e, $05
    db script_cmd_init_jill
    dw $fdc0, $0280, $001c, $0007, $0000
    db script_cmd_init_barry
    dw $fd90, $02f0, $0000, $0005, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_jill, $07, $00
    db script_cmd_dialogue_jill
    dw $4576
    db script_cmd_wait_frames, $96
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_dialogue_jill
    dw $436f
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $438d
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $43e7
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $02
    db script_cmd_rotate_barry, $06
    db script_cmd_rotate_jill, $88
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_5c34:: ; 0x5c34
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $6c, $02
    db script_cmd_init_jill
    dw $fe00, $0100, $0010, $1800, $0000
    db script_cmd_init_barry
    dw $fd38, $0100, $0010, $1800, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_walk_jill, $05
    db script_cmd_walk_barry, $05
    db script_cmd_dialogue_jill
    dw $4516
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $446e
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_barry
    dw $4519
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $19
    db script_cmd_rotate_jill, $84
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_rotate_barry, $84
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_wait_frames, $0f
    db script_cmd_change_camera, $01
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_change_camera, $00
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_run_barry, $05
    db script_cmd_run_jill, $05
    db script_cmd_door_transition, $40
    db $3b
    db script_cmd_end

SceneScript_5cb4:: ; 0x5cb4
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $6d, $02
    db script_cmd_init_chris
    dw $fff0, $ff00, $0000, $1800, $0000
    db script_cmd_init_jill
    dw $fff0, $0100, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $32
    db script_cmd_change_camera, $01
    db script_cmd_dialogue_chris
    dw $451c
    db script_cmd_walk_chris, $32
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_jill
    dw $4528
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $4516
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_jill
    dw $452b
    db script_cmd_rotate_jill, $88
    db script_cmd_walk_jill, $05
    db script_cmd_walk_chris, $0a
    db script_cmd_door_transition, $40
    db $3b
    db script_cmd_end

SceneScript_5cfc:: ; 0x5cfc
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $6d, $02
    db script_cmd_init_chris
    dw $fff0, $ff00, $0000, $1800, $0000
    db script_cmd_init_jill
    dw $fff0, $0100, $0010, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $32
    db script_cmd_change_camera, $01
    db script_cmd_dialogue_chris
    dw $451c
    db script_cmd_walk_chris, $32
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $02
    db script_cmd_dialogue_jill
    dw $451f
    db script_cmd_wait_frames, $96
    db script_cmd_dialogue_chris
    dw $4522
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_jill
    dw $4525
    db script_cmd_rotate_jill, $88
    db script_cmd_walk_jill, $05
    db script_cmd_walk_chris, $0a
    db script_cmd_door_transition, $40
    db $3b
    db script_cmd_end

SceneScript_5d44:: ; 0x5d44
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $61, $03
    db script_cmd_init_chris
    dw $02d0, $0040, $0018, $0000, $0000
    db script_cmd_init_jill
    dw $02d0, $ffa0, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_wait_frames, $96
    db script_cmd_run_chris, $14
    db script_cmd_change_camera, $02
    db script_cmd_run_chris, $1e
    db script_cmd_change_camera, $01
    db script_cmd_run_chris, $14
    db script_cmd_change_camera, $00
    db script_cmd_run_chris, $14
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_rotate_chris, $86
    db script_cmd_dialogue_chris
    dw $43e7
    db script_cmd_wait_frames, $50
    db script_cmd_rotate_chris, $06
    db script_cmd_set_anim_chris, $00, $18
    db script_cmd_wait_frames, $96
    db script_cmd_change_camera, $03
    db script_cmd_wait_frames, $64
    db $3b
    db script_cmd_end

SceneScript_5d8c:: ; 0x5d8c
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $5b, $01
    db script_cmd_init_chris
    dw $0068, $0120, $0010, $0000, $0000
    db script_cmd_init_jill
    dw $ffe8, $feb0, $0000, $1800, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_run_chris, $14
    db script_cmd_set_anim_chris, $00, $00
    db script_cmd_dialogue_chris
    dw $44a1
    db script_cmd_wait_frames, $50
    db script_cmd_rotate_chris, $88
    db script_cmd_run_chris, $32
    db script_cmd_wait_frames, $64
    db $3b
    db script_cmd_end

SceneScript_5dbf:: ; 0x5dbf
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $5a, $02
    db script_cmd_init_barry
    dw $0090, $ff70, $000c, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_dialogue_barry
    dw $42a3
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_wait_frames, $14
    db script_cmd_set_anim_barry, $00, $00
    db script_cmd_wait_frames, $0a
    db script_cmd_set_anim_barry, $00, $18
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_5de9:: ; 0x5de9
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $59, $02
    db script_cmd_init_jill
    dw $00a8, $0200, $000c, $0000, $0000
    db script_cmd_init_barry
    dw $0048, $02b0, $000c, $1800, $0000
    db script_cmd_init_chris
    dw $00c8, $03d0, $000c, $0803, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db $2f
    dw $4531
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_5e1c:: ; 0x5e1c
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $39, $01
    db script_cmd_init_jill
    dw $00f0, $0020, $0018, $0007, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_jill, $00, $00
    db script_cmd_wait_frames, $32
    db script_cmd_set_anim_jill, $00, $18
    db script_cmd_rotate_jill, $08
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $04
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $02
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $05
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $02
    db script_cmd_wait_frames, $64
    db script_cmd_change_camera, $00
    db script_cmd_wait_frames, $96
    db $3b
    db script_cmd_end

SceneScript_5e54:: ; 0x5e54
    db script_cmd_reset_scene
    db script_cmd_init_room_camera, $39, $05
    db $22
    db $05
    db script_cmd_wait_frames, $32
    db script_cmd_cutscene_mode
    db script_cmd_wait_frames, $32
    db $3b
    db script_cmd_end

SceneScript_5e61:: ; 0x5e61
    db script_cmd_init_room_camera, $72, $00
    db script_cmd_init_chris
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $64
    db $36
    db script_cmd_wait_frames, $0a
    db $20
    db script_cmd_init_room_camera, $6c, $00
    db script_cmd_init_chris
    dw $02d0, $ff00, $0018, $0000, $0000
    db script_cmd_end

SceneScript_5e86:: ; 0x5e86
    db script_cmd_init_room_camera, $72, $00
    db script_cmd_init_chris
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $64
    db $36
    db script_cmd_wait_frames, $0a
    db $20
    db script_cmd_init_room_camera, $65, $00
    db script_cmd_init_chris
    dw $0378, $00d0, $0010, $0000, $0000
    db script_cmd_end

SceneScript_5eab:: ; 0x5eab
    db script_cmd_init_room_camera, $72, $00
    db script_cmd_init_chris
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $64
    db $36
    db script_cmd_wait_frames, $0a
    db $20
    db script_cmd_init_room_camera, $73, $00
    db script_cmd_init_chris
    dw $0398, $ffa8, $0008, $0000, $0000
    db script_cmd_end

SceneScript_5ed0:: ; 0x5ed0
    db script_cmd_init_room_camera, $72, $00
    db script_cmd_init_chris
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $64
    db $36
    db script_cmd_wait_frames, $0a
    db $20
    db script_cmd_init_room_camera, $20, $00
    db script_cmd_init_chris
    dw $01c8, $ff00, $0008, $0000, $0000
    db script_cmd_end

SceneScript_5ef5:: ; 0x5ef5
    db script_cmd_init_room_camera, $66, $00
    db script_cmd_init_chris
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $64
    db $36
    db script_cmd_wait_frames, $0a
    db $20
    db script_cmd_init_room_camera, $39, $00
    db script_cmd_init_chris
    dw $fdc8, $0300, $0008, $0000, $0000
    db script_cmd_end

SceneScript_5f1a:: ; 0x5f1a
    db script_cmd_init_room_camera, $66, $00
    db script_cmd_init_chris
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $64
    db $36
    db script_cmd_wait_frames, $0a
    db $20
    db script_cmd_init_room_camera, $59, $00
    db script_cmd_init_chris
    dw $fc30, $fcb0, $0008, $0000, $0000
    db script_cmd_end

SceneScript_5f3f:: ; 0x5f3f
    db script_cmd_init_room_camera, $6b, $00
    db script_cmd_init_chris
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $64
    db $36
    db script_cmd_wait_frames, $0a
    db $20
    db script_cmd_init_room_camera, $65, $00
    db script_cmd_init_chris
    dw $0378, $00d0, $0010, $0000, $0000
    db script_cmd_end

SceneScript_5f64:: ; 0x5f64
    db script_cmd_init_room_camera, $6b, $00
    db script_cmd_init_chris
    dw $0000, $0000, $0018, $0000, $0000
    db $22
    db $05
    db script_cmd_wait_frames, $64
    db $36
    db script_cmd_wait_frames, $0a
    db $20
    db script_cmd_init_room_camera, $65, $00
    db script_cmd_init_chris
    dw $0378, $00d0, $0010, $0000, $0000
    db script_cmd_end

SceneScriptFirstZombie:: ; 0x5f89
    db $3a, $01
    db $05
    db script_cmd_wait_frames, $dc
    db $20
    db script_cmd_end

SceneScript_5f90:: ; 0x5f90
    db script_cmd_init_room_camera, $14, $01
    db $22
    db $05
    db script_cmd_wait_frames, $64
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
    db script_cmd_init_room_camera, $14, $00
    db script_cmd_end

SceneScript_5fab:: ; 0x5fab
    db script_cmd_init_room_camera, $14, $01
    db $22
    db $05
    db script_cmd_wait_frames, $64
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
    db script_cmd_init_room_camera, $14, $00
    db script_cmd_end

SceneScript_5fc6:: ; 0x5fc6
    db $3a, $02
    db $05
    db script_cmd_wait_frames, $dc
    db $20
    db $1c, $23
    db $3e, $02
    db script_cmd_end

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
    call GameboyHalt
    ld a, [CUTSCENE_MODE]
    sub $01
    ld [CUTSCENE_MODE], a
    call Call_00e_63cc
    call GameboyHalt
    ld a, [CUTSCENE_MODE]
    add $02
    ld [CUTSCENE_MODE], a
    call Call_00e_63cc
    call GameboyHalt
    ld a, [CUTSCENE_MODE]
    sub $02
    ld [CUTSCENE_MODE], a
    call Call_00e_63cc
    call GameboyHalt
    ld a, [CUTSCENE_MODE]
    add $01
    ld [CUTSCENE_MODE], a
    call Call_00e_63cc
    ret


set_cutscene_mode:
    ld b, $10

jr_00e_6076:
    push bc
    ld a, [CUTSCENE_MODE]
    inc a
    ld [CUTSCENE_MODE], a
    call Call_00e_63cc
    call GameboyHalt
    call GameboyHalt
    pop bc
    dec b
    jr nz, jr_00e_6076

    ret


Jump_00e_608c:
    ld b, $10

jr_00e_608e:
    push bc
    ld a, [CUTSCENE_MODE]
    dec a
    ld [CUTSCENE_MODE], a
    call Call_00e_63cc
    call GameboyHalt
    call GameboyHalt
    pop bc
    dec b
    jr nz, jr_00e_608e

    ret


init_room_camera:
    ld a, [hl+]
    ld [ROOM_NUMBER], a
    xor a
    ld [ROOM_NUMBER + 1], a
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
    ld de, cutscene_entity_barry_base
    ld a, CHARACTER_ID_BARRY
    jr sprite_anim_init

sprite_c3a0_init:
    ld de, $c3a0
    ld a, $9e
    jr sprite_anim_init

sprite_zombie_init:
    ld de, cutscene_entity_zombie_base
    ld a, CHARACTER_ID_ZOMBIE
    jr sprite_anim_init

sprite_chris_init:
    ld de, cutscene_entity_chris_base
    ld a, CHARACTER_ID_CHRIS
    jr sprite_anim_init

sprite_jill_init:
    ld de, cutscene_entity_jill_base
    ld a, CHARACTER_ID_JILL
    jr sprite_anim_init

sprite_wesker_init:
    ld de, cutscene_entity_wesker_base
    ld a, CHARACTER_ID_WESKER
    jr sprite_anim_init

sprite_rebecca_init:
    ld de, cutscene_entity_rebecca_base
    ld a, CHARACTER_ID_REBECCA

sprite_anim_init:
    push hl
    ld c, l
    ld b, h
    push af
    pop af

    ; offset 0x0b character id
    ld hl, $000b
    add hl, de
    ld [hl], a

    ; offset 0x0e health
    ld a, [PLAYER_HEALTH]
    ld hl, $000e
    add hl, de
    ld [hl], a
    
    ; offset 0x0 unknown 0xc0
    ld hl, $0000
    add hl, de
    ld [hl], $c0

    ; offset 0x11 and 0x12 position y
    ld hl, $0011
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc

    ; offset 0x13 and 0x14 position x
    ld hl, $0013
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc

    ; offset 0x9 rotation
    ld hl, $0009
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    inc bc

    ; offset 0x06 and 0x07 state and animation frame
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

    ; offset 0x0f set to 0xff
    ld hl, $000f
    add hl, de
    ld [hl], $ff

    ; offset 0x1d and 0x1e unknown
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


door_transition:
    ld a, [hl]
    ld [DOOR_TRANSITION_TYPE], a
    srl a
    srl a
    srl a
    ld [DOOR_INDEX_LEFT_BITS], a
    ld a, [hl+]
    and $07
    ld [DOOR_PALETTE_INDEX], a
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


cmd_20:
    push hl
    ld c, $40
    call Call_000_067a
    pop hl
    ret


wait_frames:
    ld a, [hl+]
    ld b, a

jr_00e_616d:
    push bc
    call GameboyHalt
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
    ld de, cutscene_entity_barry_base
    jr set_anime_frame

    ld de, $c3a0
    jr set_anime_frame

sprite_zombie_set_anim:
    ld de, cutscene_entity_zombie_base
    jr set_anime_frame

sprite_chris_set_anim:
    ld de, cutscene_entity_chris_base
    jr set_anime_frame

sprite_jill_set_anim:
    ld de, cutscene_entity_jill_base
    jr set_anime_frame

sprite_wesker_set_anim:
    ld de, cutscene_entity_wesker_base
    jr set_anime_frame

sprite_rebecca_set_anim:
    ld de, cutscene_entity_rebecca_base

set_anime_frame:
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

dialogue_name_chris:
    ld de, $4000
    ld c, $f8
    jr jr_00e_6202

dialogue_name_jill:
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
    ld de, cutscene_entity_barry_base
    jr rotate_sprite

    ld de, $c3a0
    jr rotate_sprite

sprite_zombie_rotate:
    ld de, cutscene_entity_zombie_base
    jr rotate_sprite

sprite_chris_rotate:
    ld de, cutscene_entity_chris_base
    jr rotate_sprite

sprite_jill_rotate:
    ld de, cutscene_entity_jill_base
    jr rotate_sprite

rotate_wesker:
    ld de, cutscene_entity_wesker_base
    jr rotate_sprite

sprite_rebecca_rotate:
    ld de, cutscene_entity_rebecca_base

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

    ; rotation angle stored at offset 0x09
    ld hl, $0009
    add hl, de
    ld a, [hl]
    sub $02
    and $1f
    ld [hl], a
    call GameboyHalt
    call GameboyHalt
    call GameboyHalt
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

    ; rotation angle stored at offset 0x09
    ld hl, $0009
    add hl, de
    ld a, [hl]
    add $02
    and $1f
    ld [hl], a
    call GameboyHalt
    call GameboyHalt
    call GameboyHalt
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
    ld de, cutscene_entity_barry_base
    jr sprite_anim_walk_backwards

Jump_00e_62a7:
    ld de, $c3a0
    jr sprite_anim_walk_backwards

    ld de, cutscene_entity_zombie_base
    jr sprite_anim_walk_backwards

Jump_00e_62b1:
    ld de, cutscene_entity_chris_base
    jr sprite_anim_walk_backwards

sprite_jill_walk_backwards:
    ld de, cutscene_entity_jill_base
    jr sprite_anim_walk_backwards

Jump_00e_62bb:
    ld de, cutscene_entity_wesker_base
    jr sprite_anim_walk_backwards

Jump_00e_62c0:
    ld de, cutscene_entity_rebecca_base

sprite_anim_walk_backwards:
    ld a, [hl+]
    push hl
    ld b, a

jr_00e_62c6:
    push bc
    push de
    ; rotation angle stored at offset 0x09
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
    ; position stored at 0x11 to 0x14
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
    ; animation state and frame stored at 0x06 and 0x7
    ld hl, $0006
    add hl, de
    ld [hl], $01
    ld hl, $0007
    add hl, de
    ld a, [hl]
    sub $02 ; move back 2 frames
    and $3f
    ld [hl], a
    call GameboyHalt
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_62c6

    pop hl
    ret


sprite_barry_walk:
    ld de, cutscene_entity_barry_base
    jr sprite_anim_walk

sprite_c3a0_walk:
    ld de, $c3a0
    jr sprite_anim_walk

sprite_zombie_walk:
    ld de, cutscene_entity_zombie_base
    jr sprite_anim_walk

sprite_chris_walk:
    ld de, cutscene_entity_chris_base
    jr sprite_anim_walk

sprite_jill_walk:
    ld de, cutscene_entity_jill_base
    jr sprite_anim_walk

sprite_wesker_walk:
    ld de, cutscene_entity_wesker_base
    jr sprite_anim_walk

sprite_rebecca_walk:
    ld de, cutscene_entity_rebecca_base

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
    ; position stored at 0x11 to 0x14
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
    ; animation state and frame stored at 0x06 and 0x7
    ld hl, $0006
    add hl, de
    ld [hl], $01
    ld hl, $0007
    add hl, de
    ld a, [hl]
    add $02 ; advance 2 frames
    and $3f
    ld [hl], a
    call GameboyHalt
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_632e

    pop hl
    ret


sprite_barry_run:
    ld de, cutscene_entity_barry_base
    jr sprite_anim_run

sprite_chris_run:
    ld de, cutscene_entity_chris_base
    jr sprite_anim_run

sprite_jill_run:
    ld de, cutscene_entity_jill_base
    jr sprite_anim_run

sprite_wesker_run:
    ld de, cutscene_entity_wesker_base
    jr sprite_anim_run

sprite_rebecca_run:
    ld de, cutscene_entity_rebecca_base

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
    call GameboyHalt
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

scene_var_reset:
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


cmd_3a:
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
