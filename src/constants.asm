DEF CURRENT_BANK_NUMBER EQU $c102
DEF IMAGE_TILESET_BASE EQU $c106
DEF MENU_CURSOR_OPTION EQU $c10e
DEF SELECTED_CHARACTER_INDEX EQU $c11b

; 0x00 for map, 0x02 for file, 0x03 for exit
; 0x04 - 0x0b for item index
; when file is selected, value is 0x0c
; when radio is selected, value is 0x0d
; when map is selected, value is 0x0e
; when item is selected, 0x80 for use/equip, 0x81 for check, 0x82 for combine
; 0x84 view item description
DEF INVENTORY_CURSOR_OPTION EQU $c123 

; 0x00 to hide, 0xff to show option in inventory screen
DEF INVENTORY_FLAG_MAP EQU $c124 
DEF INVENTORY_FLAG_RADIO EQU $c125
DEF INVENTORY_FLAG_FILE EQU $c126
DEF INVENTORY_FLAG_EXIT EQU $c127

DEF DOOR_TRANSITION_TYPE EQU $c1c3

; 0 for file 1, 1 for file 2, 2 for file 3
DEF SELECTED_FILE_BOOK_INDEX EQU $c1d4

DEF INVENTORY_ITEM_ID_BASE EQU $c1e7 ; takes up to 8 bytes, 1 byte for each item id

; if other inventory menu shows up for an item, the cursor option for current item and item id is stored
DEF INVENTORY_CURSOR_OPTION_ITEM_INDEX EQU $c1f3
DEF INVENTORY_CURSOR_OPTION_ITEM_ID EQU $c1f4

DEF SELECTED_FILE_DOCUMENT_INDEX EQU $c1ae

DEF INVENTORY_TILESET_BASE EQU $c1d2

DEF INVENTORY_EQUIPPED_ITEM EQU $c1ef

DEF PLAYER_HEALTH EQU $c30e