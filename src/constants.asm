; 0x01 - A button
; 0x02 - B button
; 0x04 - select button
; 0x08 - start button
; 0x10 - right dpad
; 0x20 - left dpad
; 0x40 - up dpad
; 0x80 - down dpad
DEF PRESSED_BUTTON EQU $c100
DEF GAME_VARIABLE_BASE EQU $c100
DEF CURRENT_BANK_NUMBER EQU $c102
DEF FADE_TIMER EQU $c105
DEF IMAGE_TILESET_BASE EQU $c106
DEF CURRENT_TILE_INDEX EQU $c108
DEF CURRENT_PALETTE_INDEX EQU $c109
DEF MENU_CURSOR_OPTION EQU $c10e
DEF SPRITE_TABLE_INDEX EQU $c118
DEF SELECTED_CHARACTER_INDEX EQU $c11b
DEF CAMERA_NUMBER EQU $c11f

; 0x00 for map, 0x02 for file, 0x03 for exit
; 0x04 - 0x0b for item index
; when file is selected, value is 0x0c
; when radio is selected, value is 0x0d
; when map is selected, value is 0x0e
; when item is selected, 0x80 for use/equip, 0x81 for check, 0x82 for combine
; 0x84 view item description
DEF INVENTORY_CURSOR_OPTION EQU $c123

DEF BANK00A_TILEMAP_INDEX EQU $c128

; 0x00 to hide, 0xff to show option in inventory screen
DEF INVENTORY_FLAG_MAP EQU $c124 
DEF INVENTORY_FLAG_RADIO EQU $c125
DEF INVENTORY_FLAG_FILE EQU $c126
DEF INVENTORY_FLAG_EXIT EQU $c127

DEF CAMERA0_POS_X EQU $c132
DEF CAMERA0_POS_Y EQU $c134
DEF CAMERA0_POS_Z EQU $c136
DEF CAMERA1_POS_X EQU $c138
DEF CAMERA1_POS_Y EQU $c13a
DEF CAMERA1_POS_Z EQU $c13c

DEF SPRITE_VARIABLE_X EQU $c13e
DEF SPRITE_VARIABLE_Y EQU $c140
DEF SPRITE_VARIABLE_ZOOM EQU $c142

DEF SPRITE_VARIABLE_TILE_INDEX EQU $c160
DEF SPRITE_VARIABLE_PALETTE EQU $c161

DEF ROOM_NUMBER EQU $c17c

; 0x0 for normal
; 0x1 for door transition
; 0x2 for save screen
; 0x3 for picking up items
; 0x4 for item box
DEF GAME_STATE EQU $c17e

DEF SOUND_ID EQU $c17f

DEF PLAYER_SAVE_COUNT EQU $c181
DEF ITEM_BOX_CURSOR_OPTION EQU $c185

DEF SELECTED_FILE_DOCUMENT_INDEX EQU $c1ae

DEF DOOR_INDEX_LEFT_BITS EQU $c1b6
DEF DOOR_PALETTE_INDEX EQU $c1b7
DEF CUTSCENE_NUMBER EQU $c1bf

DEF CUTSCENE_MODE EQU $c1c0
DEF CURRENT_RENDER_SPRITE_ID EQU $c1c2
DEF DOOR_TRANSITION_TYPE EQU $c1c3
DEF PREVIEW_SCENE_TIMER EQU $c1c4
DEF PREVIEW_SCENE_INDEX EQU $c1c5
DEF PICKED_ITEM_INDEX EQU $c1c7

DEF INVENTORY_TILESET_BASE EQU $c1d2
; 0 for file 1, 1 for file 2, 2 for file 3
DEF SELECTED_FILE_BOOK_INDEX EQU $c1d4

; 0xc1e7 to 0xc1ee
DEF INVENTORY_ITEM_ID_BASE EQU $c1e7 ; takes up to 8 bytes, 1 byte for each item id
DEF INVENTORY_EQUIPPED_ITEM EQU $c1ef

; if other inventory menu shows up for an item, the cursor option for current item and item id is stored
DEF INVENTORY_CURSOR_OPTION_ITEM_INDEX EQU $c1f3
DEF INVENTORY_CURSOR_OPTION_ITEM_ID EQU $c1f4

DEF ITEM_BOX_BASE EQU $c280

DEF PLAYER_POS_ZOOM EQU $c301
DEF PLAYER_STATE EQU $c306
DEF PLAYER_ANIM_FRAME EQU $c307
DEF PLAYER_POS_ROTATE EQU $c309
; 0x92 for chris, 0x93 for jill
DEF PLAYER_CHARACTER_MODEL EQU $c30b
DEF PLAYER_HEALTH EQU $c30e

; the values used to store player position
DEF PLAYER_POS_Y_VAR EQU $c311
DEF PLAYER_POS_X_VAR EQU $c313
; the variables that show up on the debug screen in game
DEF PLAYER_POS_RENDER_Y EQU $c315
DEF PLAYER_POS_RENDER_X EQU $c317

DEF PLAYER_POS_Z_VAR EQU $c319

DEF FLAG_PLAYER_CAN_RETURN_ENTRANCE EQU $c400

DEF FLAG_PLAYER_CUTSCENE_BASE EQU $c480
DEF FLAG_SEEN_FIRST_ZOMBIE EQU $c480
DEF FLAG_PLAYER_CUTSCENE_c481 EQU $c481
DEF FLAG_PLAYER_CUTSCENE_c482 EQU $c482
DEF FLAG_PLAYER_CUTSCENE_c483 EQU $c483
DEF FLAG_PLAYER_CUTSCENE_c484 EQU $c484
DEF FLAG_PLAYER_CUTSCENE_c485 EQU $c485
DEF FLAG_PLAYER_CUTSCENE_c486 EQU $c486
DEF FLAG_PLAYER_CUTSCENE_FINDS_BRAD EQU $c497

DEF PICKED_ITEM_BASE EQU $c500
DEF PICKED_WOOD_EMBLEM EQU $c502
DEF PICKED_MAP EQU $c507
DEF PICKED_ROOM04_INK_RIBBON EQU $c508
DEF PICKED_ROOM05_CLIP EQU $c509

; each sprite has four bytes
; byte 0 - source y
; byte 1 - source x
; byte 2 - tile index
; byte 3 - source attributes
DEF SPRITE_RAM_BASE EQU $c900

; sound
DEF SOUND_CHANNEL1_BASE_RAM_ADDR EQU $dd00
DEF SOUND_CHANNEL1_ADDR1 EQU $dd02
DEF SOUND_CHANNEL2_BASE_RAM_ADDR EQU $dd18
DEF SOUND_CHANNEL2_ADDR1 EQU $dd1a
DEF SOUND_CHANNEL3_BASE_RAM_ADDR EQU $dd30
DEF SOUND_CHANNEL3_ADDR1 EQU $dd32
DEF SOUND_CHANNEL4_BASE_RAM_ADDR EQU $dd48
DEF SOUND_CHANNEL4_ADDR1 EQU $dd4a
DEF SOUND_ADDR_dd60 EQU $dd60
DEF SOUND_ADDR_dd62 EQU $dd62
DEF SOUND_CHANNEL1_LAST_SEEN_ADDR EQU $dd68
DEF SOUND_CHANNEL1_CYCLES EQU $dd6a
DEF SOUND_CHANNEL2_LAST_SEEN_ADDR EQU $dd6b
DEF SOUND_CHANNEL2_CYCLES EQU $dd6d
DEF SOUND_CHANNEL3_LAST_SEEN_ADDR EQU $dd6e
DEF SOUND_CHANNEL3_CYCLES EQU $dd70
DEF SOUND_CHANNEL4_LAST_SEEN_ADDR EQU $dd71
DEF SOUND_CHANNEL4_CYCLES EQU $dd73
DEF SOUND_GENERAL_LAST_SEEN_ADDR EQU $dd74

; sram
DEF SRAM_VARIABLE_BASE1 EQU $a000
DEF SRAM_VARIABLE_BASE2 EQU $a600
DEF SRAM_SAVE_LOCATION_BASE EQU $bf14

; character ids
DEF CHARACTER_ID_CHRIS EQU $92
DEF CHARACTER_ID_JILL EQU $93
DEF CHARACTER_ID_WESKER EQU $94
DEF CHARACTER_ID_REBECCA EQU $95
DEF CHARACTER_ID_BARRY EQU $96
DEF CHARACTER_ID_ZOMBIE EQU $98
DEF CHARACTER_ID_SNAKE EQU $a0

; item ids
DEF ITEM_ID_FIRST_AID_SPRAY EQU $0e
DEF ITEM_ID_MO_DISK EQU $0f
DEF ITEM_ID_BATTERY EQU $14
DEF ITEM_ID_RED_BOOK EQU $18
DEF ITEM_ID_COMBAT_KNIFE EQU $19
DEF ITEM_ID_RED_HERB EQU $1c
DEF ITEM_ID_WOOD_EMBLEM EQU $1d
DEF ITEM_ID_CHEMICAL EQU $1e
DEF ITEM_ID_BERETTA EQU $1f
DEF ITEM_ID_BLUE_HERB EQU $22
DEF ITEM_ID_GOLD_EMBLEM EQU $23
DEF ITEM_ID_CRANK EQU $26
DEF ITEM_ID_GREEN_HERB EQU $28
DEF ITEM_ID_RED_JEWEL EQU $29
DEF ITEM_ID_BROKEN_SHOTGUN EQU $31
DEF ITEM_ID_SHEET_MUSIC EQU $35
DEF ITEM_ID_SHOTGUN EQU $37
DEF ITEM_ID_MOON_CREST EQU $39
DEF ITEM_ID_BLUE_JEWEL EQU $3b
DEF ITEM_ID_SUN_CREST EQU $3f
DEF ITEM_ID_FLAMETHROWER EQU $41
DEF ITEM_ID_STAR_CREST EQU $45
DEF ITEM_ID_WIND_CREST EQU $47

; button press
DEF BUTTON_PRESS_RIGHT EQU $10
DEF BUTTON_PRESS_LEFT EQU $20
DEF BUTTON_PRESS_UP EQU $40
DEF BUTTON_PRESS_DOWN EQU $80

; script commands in bank 0xe
DEF script_cmd_init_room_camera EQU $00
DEF script_cmd_init_chris EQU $01
DEF script_cmd_init_jill EQU $02
DEF script_cmd_init_wesker EQU $03
DEF script_cmd_init_rebecca EQU $04
DEF script_cmd_wait_frames EQU $06
DEF script_cmd_change_camera EQU $07
DEF script_cmd_set_anim_chris EQU $08
DEF script_cmd_set_anim_jill EQU $09
DEF script_cmd_set_anim_wesker EQU $0a
DEF script_cmd_set_anim_rebecca EQU $0b
DEF script_cmd_dialogue_chris EQU $0c
DEF script_cmd_dialogue_jill EQU $0d
DEF script_cmd_dialogue_wesker EQU $0e
DEF script_cmd_dialogue_rebecca EQU $0f
DEF script_cmd_rotate_chris EQU $10
DEF script_cmd_rotate_jill EQU $11
DEF script_cmd_rotate_wesker EQU $12
DEF script_cmd_rotate_rebecca EQU $13
DEF script_cmd_walk_chris EQU $14
DEF script_cmd_walk_jill EQU $15
DEF script_cmd_walk_wesker EQU $16
DEF script_cmd_walk_rebecca EQU $17
DEF script_cmd_run_chris EQU $18
DEF script_cmd_run_jill EQU $19
DEF script_cmd_run_wesker EQU $1a
DEF script_cmd_run_rebecca EQU $1b
DEF script_cmd_play_sound EQU $1c
DEF script_cmd_end EQU $1d
DEF script_cmd_cutscene_mode EQU $1f
DEF script_cmd_door_transition EQU $21
DEF script_cmd_walk_barry EQU $23
DEF script_cmd_walk_zombie EQU $25
DEF script_cmd_walk_backwards_chris EQU $26
DEF script_cmd_walk_backwards_jill EQU $27
DEF script_cmd_walk_backwards_rebecca EQU $28
DEF script_cmd_run_barry EQU $2c
DEF script_cmd_dialogue_enrico EQU $2d
DEF script_cmd_dialogue_barry EQU $2e
DEF script_cmd_rotate_barry EQU $30
DEF script_cmd_init_barry EQU $32
DEF script_cmd_init_zombie EQU $33
DEF script_cmd_set_anim_barry EQU $35
DEF script_cmd_rotate_zombie EQU $37
DEF script_cmd_set_anim_zombie EQU $38
DEF script_cmd_reset_scene EQU $39
DEF script_cmd_copy_jill_entity_data EQU $3b

; these registers are used differently during cutscenes
DEF cutscene_entity_chris_base EQU $c300
DEF cutscene_entity_jill_base EQU $c320
DEF cutscene_entity_wesker_base EQU $c340
DEF cutscene_entity_rebecca_base EQU $c360
DEF cutscene_entity_barry_base EQU $c380
DEF cutscene_entity_zombie_base EQU $c3c0