SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

Bank007RoomTable:: ; 0x4000
    dw $40e8
    dw $4168
    dw $41e8
    dw $4256
    dw $42d6
    dw $4368
    dw $43e8
    dw $4456
    dw $44e8
    dw $4556
    dw $45a0
    dw $4620
    dw $467c
    dw $46c6
    dw $4710
    dw $475a
    dw $47b6
    dw $4812
    dw $485c
    dw $48a6
    dw $4902
    dw $4928
    dw $4960
    dw $4998
    dw $49be
    dw $49f6
    dw $4a40
    dw $4aae
    dw $4b1c
    dw $4b8a
    dw $4be6
    dw $4c54
    dw $4c8c
    dw $4d0c
    dw $4d44
    dw $4d7c
    dw $4dc6
    dw $4e46
    dw $4ea2
    dw $4eda
    dw $4f36
    dw $4f92
    dw $4fdc
    dw $5026
    dw $5070
    dw $50f0
    dw $513a
    dw $5160
    dw $51bc
    dw $5206
    dw $5274
    dw $5306
    dw $532c
    dw $5364
    dw $53f6
    dw $5476
    dw $5508
    dw $559a
    dw $562c
    dw $569a
    dw $56e4
    dw $5776
    dw $5808
    dw $589a
    dw $591a
    dw $5976
    dw $5a08
    dw $5a1c
    dw $5a8a
    dw $5b1c
    dw $5b66
    dw $5bc2
    dw $5c30
    dw $5cc2
    dw $5ce8
    dw $5d20
    dw $5d8e
    dw $5e20
    dw $5e7c
    dw $5f0e
    dw $5fa0
    dw $6032
    dw $6058
    dw $60ea
    dw $6134
    dw $61b4
    dw $61da
    dw $626c
    dw $6292
    dw $62ee
    dw $6380
    dw $63dc
    dw $6426
    dw $6494
    dw $64f0
    dw $6582
    dw $65de
    dw $6670
    dw $66cc
    dw $673a
    dw $6796
    dw $67e0
    dw $6872
    dw $6886
    dw $68ac
    dw $693e
    dw $69d0
    dw $6a3e
    dw $6a52
    dw $6aae
    dw $6b2e
    dw $6bc0
    dw $6c52
    dw $6c78
    dw $6c9e
    dw $6cb2

Bank007Room00CameraTable:: ; 0x40e8
    db $07
Room00Camera00Table::
    dw 0, 0, 0, 2048, 432, 0, 380, 132
    db $00, $28
Room00Camera01Table::
    dw 0, 0, 0, 3324, 890, -216, 138, 141
    db $18, $28
Room00Camera02Table::
    dw 0, 0, 0, 3780, 978, -309, 133, 100
    db $14, $28
Room00Camera03Table::
    dw 0, 0, 0, 2956, 986, 357, 69, 62
    db $18, $28
Room00Camera04Table::
    dw 0, 0, 0, 1104, 1096, -354, 101, 58
    db $08, $28
Room00Camera05Table::
    dw 0, 0, 0, 256, 1030, 291, 132, 81
    db $10, $28
Room00Camera06Table::
    dw 0, 0, 0, 872, 924, 251, 158, 122
    db $08, $28
    db $ff

Bank007Room01CameraTable:: ; 0x4168
    db $07
Room01Camera00Table::
    dw 105, 0, -9, 3174, 528, -26, 44, 110
    db $18, $28
Room01Camera01Table::
    dw 15, 0, 0, 3192, 1112, 35, 173, 110
    db $18, $28
Room01Camera02Table::
    dw -88, -9, -3, 924, 1076, -7, 118, 110
    db $08, $28
Room01Camera03Table::
    dw -137, 54, -29, 892, 632, 107, 171, 111
    db $08, $28
Room01Camera04Table::
    dw -17, 41, 47, 2254, 554, -74, 180, 110
    db $00, $28
Room01Camera05Table::
    dw 10, 21, -93, 3834, 492, 0, 0, 110
    db $14, $28
Room01Camera06Table::
    dw 0, 0, 0, 0, 0, 251, 158, 122
    db $00, $28
    db $ff

Bank007Room02CameraTable:: ; 0x41e8
    db $06
Room02Camera00Table::
    dw -6, 0, -54, 142, 952, 18, 98, 110
    db $10, $28
Room02Camera01Table::
    dw -19, 0, 68, 1866, 924, 50, 74, 110
    db $04, $28
Room02Camera02Table::
    dw 77, 0, -97, 3570, 822, 16, 0, 122
    db $14, $28
Room02Camera03Table::
    dw -71, 0, -75, 650, 1230, 12, 176, 110
    db $18, $28
Room02Camera04Table::
    dw -65, 47, 28, 1264, 412, 59, 11, 110
    db $08, $28
Room02Camera05Table::
    dw 32, 57, 66, 2182, 228, -14, -45, 110
    db $00, $28
    db $ff

Bank007Room03CameraTable:: ; 0x4256
    db $07
Room03Camera00Table::
    dw 93, 0, -102, 70, 764, -24, -10, 110
    db $10, $28
Room03Camera01Table::
    dw 99, 0, 52, 2002, 802, -6, 10, 110
    db $00, $28
Room03Camera02Table::
    dw 18, 25, 0, 1166, 660, -9, 43, 110
    db $08, $28
Room03Camera03Table::
    dw 142, 0, 93, 3242, 852, -4, 39, 110
    db $18, $28
Room03Camera04Table::
    dw 14, 0, 26, 868, 886, 286, 60, 110
    db $08, $28
Room03Camera05Table::
    dw -142, 0, 78, 924, 852, -14, -3, 186
    db $08, $28
Room03Camera06Table::
    dw -111, 0, -3, 78, 582, 0, -58, 120
    db $10, $28
    db $ff

Bank007Room04CameraTable:: ; 0x42d6
    db $08
Room04Camera00Table::
    dw 3, 0, 61, 2200, 582, -9, -8, 110
    db $00, $28
Room04Camera01Table::
    dw 0, 0, -45, 3938, 1092, -56, 133, 110
    db $10, $28
Room04Camera02Table::
    dw 0, 0, -21, 3978, 398, 27, 98, 73
    db $10, $28
Room04Camera03Table::
    dw -4, 0, -93, 260, 1138, 35, 67, 21
    db $10, $28
Room04Camera04Table::
    dw 0, 0, -118, 3834, 470, 224, -21, 81
    db $10, $28
Room04Camera05Table::
    dw -18, 0, 28, 2208, 748, -81, -102, 171
    db $00, $28
Room04Camera06Table::
    dw -9, 0, -65, 3906, 540, 19, 52, 62
    db $00, $28
Room04Camera07Table::
    dw -62, 0, -108, 1786, 1226, 176, 88, 39
    db $00, $28
    db $ff

Bank007Room05CameraTable:: ; 0x4368
    db $06
Room05Camera00Table::
    dw 19, 11, 0, 3070, 408, 6, -163, 110
    db $18, $28
Room05Camera01Table::
    dw -152, 8, 7, 1108, 876, 15, 73, 120
    db $08, $28
Room05Camera02Table::
    dw 68, 4, 2, 3098, 800, 22, 21, 120
    db $18, $28
Room05Camera03Table::
    dw 176, 17, 0, 3356, 652, 134, 3, 110
    db $14, $28
Room05Camera04Table::
    dw -116, 8, -67, 6, 706, 3, 30, 110
    db $10, $28
Room05Camera05Table::
    dw 0, 0, 0, 256, 1030, 291, 132, 81
    db $00, $28
Room05Camera06Table::
    dw 0, 0, 0, 872, 924, 251, 158, 122
    db $00, $28
    db $ff

Bank007Room06CameraTable:: ; 0x43e8
    db $06
Room06Camera00Table::
    dw 111, 0, -84, 3436, 542, -122, -94, 110
    db $14, $28
Room06Camera01Table::
    dw 56, 0, -20, 3280, 904, -14, 82, 110
    db $18, $28
Room06Camera02Table::
    dw -38, 8, -6, 878, 908, -43, 115, 110
    db $08, $28
Room06Camera03Table::
    dw -54, 37, 10, 900, 736, -42, 208, 110
    db $08, $28
Room06Camera04Table::
    dw 94, 83, -26, 3486, 78, -13, -5, 110
    db $08, $28
Room06Camera05Table::
    dw -69, 57, -11, 894, 212, 9, -45, 110
    db $10, $68
    db $ff

Bank007Room07CameraTable:: ; 0x4456
    db $08
Room07Camera00Table::
    dw -12, -43, 89, 1964, 1140, -101, -60, 110
    db $00, $28
Room07Camera01Table::
    dw 3, 0, -13, 3702, 362, 4, -4, 110
    db $14, $68
Room07Camera02Table::
    dw 66, 58, 80, 3126, 164, 2, 29, 110
    db $18, $68
Room07Camera03Table::
    dw 16, 0, -8, 970, 1122, 0, 123, 110
    db $08, $28
Room07Camera04Table::
    dw 175, -20, -16, 3260, 1134, 33, 43, 110
    db $18, $28
Room07Camera05Table::
    dw -93, -35, 87, 1310, 872, -106, -99, 121
    db $10, $28
Room07Camera06Table::
    dw 25, 0, -51, 3788, 574, -52, -88, 110
    db $08, $28
Room07Camera07Table::
    dw 122, 6, -36, 3450, 518, 0, -63, 110
    db $08, $28
    db $ff

Bank007Room08CameraTable:: ; 0x44e8
    db $06
Room08Camera00Table::
    dw -150, -24, 72, 936, 1062, 5, 1, 110
    db $08, $28
Room08Camera01Table::
    dw 1, -44, 68, 3180, 1084, -12, -64, 110
    db $18, $28
Room08Camera02Table::
    dw 20, -19, -13, 76, 930, -6, 10, 110
    db $10, $28
Room08Camera03Table::
    dw 13, 0, -115, 260, 850, 50, 62, 110
    db $10, $28
Room08Camera04Table::
    dw -70, -19, -87, 872, 814, -6, -36, 110
    db $08, $28
Room08Camera05Table::
    dw -119, -19, -132, 682, 1078, -13, 39, 110
    db $0c, $28
    db $ff

Bank007Room09CameraTable:: ; 0x4556
    db $04
Room09Camera00Table::
    dw -11, 3, -81, 286, 1230, 70, 209, 120
    db $10, $28
Room09Camera01Table::
    dw 0, 0, 67, 1836, 1186, -32, 151, 102
    db $00, $28
Room09Camera02Table::
    dw -11, 0, -108, 232, 484, 27, -164, 110
    db $0c, $28
Room09Camera03Table::
    dw 0, 0, 0, 2956, 986, 357, 69, 62
    db $18, $28
    db $ff

Bank007Room0aCameraTable:: ; 0x45a0
    db $07
Room0aCamera00Table::
    dw 150, 3, -126, 3072, 1006, 117, 91, 99
    db $18, $28
Room0aCamera01Table::
    dw 80, 33, -155, 3148, 166, -20, -113, 110
    db $18, $68
Room0aCamera02Table::
    dw -20, 0, -85, 1860, 540, 23, -77, 100
    db $00, $28
Room0aCamera03Table::
    dw -68, 0, -91, 918, 782, 18, -24, 110
    db $08, $28
Room0aCamera04Table::
    dw -20, 0, 1, 2136, 1080, -61, 141, 110
    db $00, $28
Room0aCamera05Table::
    dw -50, 52, 51, 2168, 44, 4, 0, 110
    db $00, $68
Room0aCamera06Table::
    dw -47, 37, 43, 1266, 152, 105, -76, 110
    db $08, $68
    db $ff

Bank007Room0bCameraTable:: ; 0x4620
    db $05
Room0bCamera00Table::
    dw 79, 0, -2, 3248, 878, 54, 34, 110
    db $18, $28
Room0bCamera01Table::
    dw -77, 0, -4, 866, 946, -29, 53, 110
    db $08, $28
Room0bCamera02Table::
    dw -116, 6, 0, 974, 642, -2, -31, 110
    db $08, $28
Room0bCamera03Table::
    dw -80, 0, -85, 102, 978, -3, 80, 110
    db $10, $28
Room0bCamera04Table::
    dw -82, 36, -117, 108, 420, -31, -54, 120
    db $10, $28
    db $ff

Bank007Room0cCameraTable:: ; 0x467c
    db $04
Room0cCamera00Table::
    dw 82, -5, -56, 2908, 1062, -35, 90, 110
    db $18, $28
Room0cCamera01Table::
    dw -78, 0, -56, 1168, 1070, 42, 124, 138
    db $08, $28
Room0cCamera02Table::
    dw -31, 0, -40, 3916, 776, 64, 53, 110
    db $10, $28
Room0cCamera03Table::
    dw -41, 21, 88, 2228, 780, -25, 107, 110
    db $00, $28
    db $ff

Bank007Room0dCameraTable:: ; 0x46c6
    db $04
Room0dCamera00Table::
    dw -127, -26, -15, 1172, 1170, -19, 59, 110
    db $08, $28
Room0dCamera01Table::
    dw -12, 0, -14, 2926, 1154, 14, 148, 110
    db $18, $28
Room0dCamera02Table::
    dw 5, 11, 0, 2504, 130, -5, 0, 110
    db $1c, $68
Room0dCamera03Table::
    dw -10, 53, 66, 2394, 148, 48, -43, 110
    db $1c, $68
    db $ff

Bank007Room0eCameraTable:: ; 0x4710
    db $04
Room0eCamera00Table::
    dw 67, 0, 0, 3256, 858, 68, 68, 110
    db $18, $28
Room0eCamera01Table::
    dw -56, 0, 2, 848, 906, -44, 86, 112
    db $08, $28
Room0eCamera02Table::
    dw -72, 24, -25, 692, 416, 27, 35, 110
    db $0c, $28
Room0eCamera03Table::
    dw -45, -2, -66, 178, 852, 42, 47, 110
    db $00, $28
    db $ff

Bank007Room0fCameraTable:: ; 0x475a
    db $05
Room0fCamera00Table::
    dw 62, 44, -80, 3986, 430, 7, -5, 110
    db $10, $28
Room0fCamera01Table::
    dw 56, -23, 33, 2122, 1302, 6, 4, 110
    db $00, $28
Room0fCamera02Table::
    dw 77, 20, -24, 3576, 426, 40, -84, 110
    db $14, $28
Room0fCamera03Table::
    dw -75, 0, 7, 890, 878, -4, 56, 110
    db $08, $28
Room0fCamera04Table::
    dw -58, 0, -70, 88, 800, -2, -6, 110
    db $10, $28
    db $ff

Bank007Room10CameraTable:: ; 0x47b6
    db $05
Room10Camera00Table::
    dw -22, 10, -116, 280, 858, -8, 72, 110
    db $10, $28
Room10Camera01Table::
    dw -7, 0, 5, 1796, 888, -42, 29, 110
    db $00, $28
Room10Camera02Table::
    dw 47, 0, 23, 1922, 702, -19, -27, 110
    db $00, $28
Room10Camera03Table::
    dw 0, 0, 0, 2956, 986, 357, 69, 62
    db $00, $28
Room10Camera04Table::
    dw 39, 11, -124, 120, 716, -16, 18, 110
    db $10, $28
    db $ff

Bank007Room11CameraTable:: ; 0x4812
    db $04
Room11Camera00Table::
    dw -2, -3, -84, 306, 678, 0, 0, 110
    db $10, $28
Room11Camera01Table::
    dw -16, 0, 40, 1650, 614, -1, 12, 110
    db $04, $28
Room11Camera02Table::
    dw -49, 54, -46, 360, 132, 0, 0, 110
    db $0c, $68
Room11Camera03Table::
    dw 0, 0, 0, 2956, 986, 357, 69, 62
    db $00, $28
    db $ff

Bank007Room12CameraTable:: ; 0x485c
    db $04
Room12Camera00Table::
    dw 27, -21, 30, 1904, 1096, -22, 24, 110
    db $00, $28
Room12Camera01Table::
    dw 82, -32, -45, 2848, 854, -18, -71, 110
    db $18, $28
Room12Camera02Table::
    dw -59, 0, -47, 1214, 900, -12, 85, 110
    db $08, $28
Room12Camera03Table::
    dw -74, 37, -16, 1598, 412, 22, -26, 110
    db $04, $28
    db $ff

Bank007Room13CameraTable:: ; 0x48a6
    db $05
Room13Camera00Table::
    dw -8, 33, -113, 330, 390, 1, 0, 110
    db $0c, $28
Room13Camera01Table::
    dw 0, -9, -56, 220, 706, 14, -15, 110
    db $10, $28
Room13Camera02Table::
    dw 0, -39, 63, 1884, 1148, 35, 5, 110
    db $00, $28
Room13Camera03Table::
    dw -64, 14, 120, 1144, 722, 2, 42, 110
    db $08, $28
Room13Camera04Table::
    dw -74, 37, -16, 1598, 412, 22, -26, 110
    db $00, $28
    db $ff

Bank007Room14CameraTable:: ; 0x4902
    db $02
Room14Camera00Table::
    dw 0, 60, 0, 82, 154, 0, 77, 110
    db $10, $68
Room14Camera01Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room15CameraTable:: ; 0x4928
    db $03
Room15Camera00Table::
    dw -63, 3, -40, 678, 564, 5, 2, 110
    db $08, $28
Room15Camera01Table::
    dw 68, -10, -14, 3300, 816, 37, 18, 110
    db $18, $28
Room15Camera02Table::
    dw 57, 45, -11, 3276, 228, 0, 0, 110
    db $18, $28
    db $ff

Bank007Room16CameraTable:: ; 0x4960
    db $03
Room16Camera00Table::
    dw -43, 0, -48, 374, 982, -56, 65, 110
    db $0c, $28
Room16Camera01Table::
    dw -13, 0, 67, 1746, 958, -34, 59, 110
    db $00, $28
Room16Camera02Table::
    dw -87, 29, 18, 1112, 508, -18, 20, 110
    db $08, $28
    db $ff

Bank007Room17CameraTable:: ; 0x4998
    db $02
Room17Camera00Table::
    dw -10, 18, -16, 280, 418, -39, 53, 110
    db $10, $28
Room17Camera01Table::
    dw 9, 0, 61, 1864, 816, -29, 22, 95
    db $00, $28
    db $ff

Bank007Room18CameraTable:: ; 0x49be
    db $03
Room18Camera00Table::
    dw -38, 17, 43, 1718, 684, 90, 63, 110
    db $00, $28
Room18Camera01Table::
    dw 6, 0, -68, 262, 678, 84, -22, 110
    db $10, $28
Room18Camera02Table::
    dw 6, 0, -68, 262, 678, 84, -22, 110
    db $10, $28
    db $ff

Bank007Room19CameraTable:: ; 0x49f6
    db $04
Room19Camera00Table::
    dw -4, 22, 10, 1680, 110, -7, -4, 110
    db $04, $68
Room19Camera01Table::
    dw -2, -38, -58, 122, 1300, 20, 51, 110
    db $10, $28
Room19Camera02Table::
    dw -12, -51, 58, 1942, 1270, 2, -7, 110
    db $00, $28
Room19Camera03Table::
    dw 0, 0, 0, 0, 0, 0, 0, 110
    db $00, $28
    db $ff

Bank007Room1aCameraTable:: ; 0x4a40
    db $06
Room1aCamera00Table::
    dw -80, -38, -26, 1160, 1216, 6, 16, 110
    db $08, $28
Room1aCamera01Table::
    dw -12, -9, -25, 1152, 1072, -1, 39, 96
    db $08, $28
Room1aCamera02Table::
    dw -8, -14, 57, 1930, 1080, 18, 34, 110
    db $00, $28
Room1aCamera03Table::
    dw -85, -15, 50, 1146, 1098, 25, 41, 110
    db $08, $28
Room1aCamera04Table::
    dw 100, -32, -20, 2936, 1086, 10, -35, 110
    db $18, $28
Room1aCamera05Table::
    dw 148, 10, -22, 2968, 634, 11, -11, 110
    db $18, $28
    db $ff

Bank007Room1bCameraTable:: ; 0x4aae
    db $06
Room1bCamera00Table::
    dw -134, -5, 58, 1180, 800, 6, 0, 110
    db $08, $28
Room1bCamera01Table::
    dw -64, -15, 55, 1848, 834, 5, -23, 110
    db $00, $28
Room1bCamera02Table::
    dw -63, -14, -20, 1194, 882, -8, 8, 110
    db $08, $28
Room1bCamera03Table::
    dw 82, -17, -26, 2942, 882, 9, -3, 110
    db $18, $28
Room1bCamera04Table::
    dw 169, 15, -29, 2956, 598, -9, -6, 110
    db $18, $28
Room1bCamera05Table::
    dw -145, 16, -25, 1160, 548, 4, 0, 110
    db $08, $28
    db $ff

Bank007Room1cCameraTable:: ; 0x4b1c
    db $06
Room1cCamera00Table::
    dw 111, 0, 0, 3308, 770, -3, 24, 110
    db $18, $28
Room1cCamera01Table::
    dw -30, 0, -2, 810, 792, -2, -2, 110
    db $08, $28
Room1cCamera02Table::
    dw -141, 0, -5, 886, 1144, -23, 61, 110
    db $08, $28
Room1cCamera03Table::
    dw -36, 43, 22, 838, 478, 5, 4, 110
    db $00, $28
Room1cCamera04Table::
    dw 0, -39, 11, 1398, 1190, 0, 0, 110
    db $00, $28
Room1cCamera05Table::
    dw 111, 0, 46, 3010, 628, -18, -88, 110
    db $18, $28
    db $ff

Bank007Room1dCameraTable:: ; 0x4b8a
    db $05
Room1dCamera00Table::
    dw -19, 0, -14, 182, 506, -109, 52, 110
    db $10, $28
Room1dCamera01Table::
    dw -109, 0, -20, 726, 458, -7, 7, 110
    db $0c, $28
Room1dCamera02Table::
    dw -120, 0, 95, 1958, 728, -25, -65, 110
    db $00, $28
Room1dCamera03Table::
    dw 98, 0, -64, 3616, 564, -94, -44, 110
    db $14, $28
Room1dCamera04Table::
    dw 123, 0, 67, 2836, 434, 8, 11, 110
    db $18, $28
    db $ff

Bank007Room1eCameraTable:: ; 0x4be6
    db $06
Room1eCamera00Table::
    dw 58, 0, -33, 2974, 928, 27, 66, 119
    db $18, $28
Room1eCamera01Table::
    dw -54, 0, -57, 1106, 940, 46, 65, 110
    db $08, $28
Room1eCamera02Table::
    dw -26, 0, 42, 1904, 488, -1, -96, 110
    db $00, $28
Room1eCamera03Table::
    dw -43, 0, 48, 2122, 850, -14, 31, 110
    db $00, $28
Room1eCamera04Table::
    dw -36, 0, 103, 2130, 886, -7, -11, 110
    db $00, $28
Room1eCamera05Table::
    dw -77, 73, 59, 1616, 292, 0, -7, 110
    db $00, $28
    db $ff

Bank007Room1fCameraTable:: ; 0x4c54
    db $03
Room1fCamera00Table::
    dw -14, -34, -61, 268, 1194, 17, 20, 110
    db $10, $28
Room1fCamera01Table::
    dw -9, -46, 56, 1794, 1226, -6, -18, 110
    db $00, $28
Room1fCamera02Table::
    dw -44, 29, 87, 1640, 388, 0, -88, 110
    db $00, $28
    db $ff

Bank007Room20CameraTable:: ; 0x4c8c
    db $07
Room20Camera00Table::
    dw -29, 3, 154, 2236, 818, -37, 3, 110
    db $00, $28
Room20Camera01Table::
    dw -45, 0, 1, 3976, 864, 16, 16, 128
    db $10, $28
Room20Camera02Table::
    dw 32, 30, 43, 3278, 470, 7, -50, 110
    db $18, $28
Room20Camera03Table::
    dw -50, 0, -14, 3970, 790, 0, 76, 110
    db $10, $28
Room20Camera04Table::
    dw 30, -21, -19, 3002, 954, -4, 5, 110
    db $18, $28
Room20Camera05Table::
    dw 34, 25, 60, 2294, 568, 9, -15, 110
    db $00, $28
Room20Camera06Table::
    dw 97, 0, 3, 3002, 850, -43, 38, 110
    db $18, $28
    db $ff

Bank007Room21CameraTable:: ; 0x4d0c
    db $03
Room21Camera00Table::
    dw 76, 26, -14, 3228, 358, 2, -35, 110
    db $18, $28
Room21Camera01Table::
    dw -60, -32, -15, 870, 1026, -5, -31, 110
    db $08, $28
Room21Camera02Table::
    dw -64, 16, -19, 704, 270, -7, 9, 81
    db $08, $28
    db $ff

Bank007Room22CameraTable:: ; 0x4d44
    db $03
Room22Camera00Table::
    dw 55, 0, -11, 3244, 716, -11, 68, 110
    db $18, $28
Room22Camera01Table::
    dw -33, 0, -14, 804, 776, 10, 89, 110
    db $08, $28
Room22Camera02Table::
    dw 31, 48, -41, 2652, 86, 0, 0, 110
    db $1c, $68
    db $ff

Bank007Room23CameraTable:: ; 0x4d7c
    db $04
Room23Camera00Table::
    dw -91, 0, 0, 934, 590, -13, -52, 108
    db $08, $28
Room23Camera01Table::
    dw 36, 0, 0, 3138, 702, 0, 5, 110
    db $18, $28
Room23Camera02Table::
    dw 108, 0, -6, 3236, 456, 31, -132, 110
    db $18, $28
Room23Camera03Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room24CameraTable:: ; 0x4dc6
    db $07
Room24Camera00Table::
    dw 108, 21, -19, 1740, 918, 0, 0, 110
    db $00, $28
Room24Camera01Table::
    dw 87, 0, 18, 2254, 604, -5, -100, 110
    db $00, $28
Room24Camera02Table::
    dw 52, -23, 55, 2026, 848, 0, -44, 110
    db $00, $28
Room24Camera03Table::
    dw -28, -41, 112, 1010, 1210, 0, -16, 110
    db $08, $28
Room24Camera04Table::
    dw 35, -27, -59, 1168, 936, 0, -17, 110
    db $08, $28
Room24Camera05Table::
    dw -39, -38, -108, 912, 1084, 8, -44, 110
    db $08, $28
Room24Camera06Table::
    dw 53, 0, 139, 1988, 838, -3, 50, 110
    db $00, $28
    db $ff

Bank007Room25CameraTable:: ; 0x4e46
    db $05
Room25Camera00Table::
    dw -38, 30, -102, 590, 106, 12, 3, 110
    db $0c, $68
Room25Camera01Table::
    dw 0, -17, -129, 108, 966, 15, -9, 110
    db $10, $28
Room25Camera02Table::
    dw 4, -9, 27, 1972, 920, -4, -9, 110
    db $00, $28
Room25Camera03Table::
    dw 12, 11, 107, 2044, 662, -2, -37, 110
    db $00, $28
Room25Camera04Table::
    dw 96, 0, 40, 3150, 864, -15, 51, 110
    db $18, $28
    db $ff

Bank007Room26CameraTable:: ; 0x4ea2
    db $03
Room26Camera00Table::
    dw -26, 0, -56, 340, 672, -26, -51, 110
    db $10, $28
Room26Camera01Table::
    dw -15, 0, 64, 1724, 680, -18, -43, 110
    db $04, $28
Room26Camera02Table::
    dw -52, 31, -79, 398, 388, 0, 0, 110
    db $0c, $28
    db $ff

Bank007Room27CameraTable:: ; 0x4eda
    db $05
Room27Camera00Table::
    dw 73, -31, -83, 3194, 1080, 16, -36, 110
    db $18, $28
Room27Camera01Table::
    dw -58, -28, -84, 918, 1084, -1, -21, 110
    db $08, $28
Room27Camera02Table::
    dw -78, -39, -11, 4012, 794, -9, -73, 110
    db $10, $28
Room27Camera03Table::
    dw -30, -11, 100, 1182, 770, -25, 36, 110
    db $08, $28
Room27Camera04Table::
    dw 89, -4, 91, 2936, 722, 3, 11, 110
    db $18, $28
    db $ff

Bank007Room28CameraTable:: ; 0x4f36
    db $05
Room28Camera00Table::
    dw 37, -25, -46, 3908, 884, 44, -20, 110
    db $10, $28
Room28Camera01Table::
    dw -88, -21, -37, 988, 892, 0, -36, 110
    db $08, $28
Room28Camera02Table::
    dw 43, -6, 46, 2178, 874, -89, 29, 111
    db $00, $28
Room28Camera03Table::
    dw -52, 0, 40, 1214, 800, 8, 34, 110
    db $08, $28
Room28Camera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room29CameraTable:: ; 0x4f92
    db $04
Room29Camera00Table::
    dw 13, -24, -54, 3876, 964, 13, 8, 110
    db $10, $28
Room29Camera01Table::
    dw 12, -26, 53, 2272, 1040, -6, 0, 110
    db $00, $28
Room29Camera02Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room29Camera03Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room2aCameraTable:: ; 0x4fdc
    db $04
Room2aCamera00Table::
    dw -20, -36, -99, 162, 1308, -6, 60, 112
    db $10, $28
Room2aCamera01Table::
    dw -11, -24, 55, 1880, 1114, -15, 20, 110
    db $00, $28
Room2aCamera02Table::
    dw -13, 63, 11, 250, 278, -55, 114, 110
    db $10, $28
Room2aCamera03Table::
    dw 0, -64, -67, 0, 1304, 14, -16, 110
    db $00, $28
    db $ff

Bank007Room2bCameraTable:: ; 0x5026
    db $04
Room2bCamera00Table::
    dw 17, -26, -62, 3802, 986, 7, 3, 110
    db $10, $28
Room2bCamera01Table::
    dw 7, -36, 35, 2344, 1026, 34, -34, 110
    db $00, $28
Room2bCamera02Table::
    dw -4, 24, 74, 2164, 316, -3, 1, 110
    db $00, $28
Room2bCamera03Table::
    dw -86, -25, 79, 1222, 1118, 0, 11, 110
    db $08, $28
    db $ff

Bank007Room2cCameraTable:: ; 0x5070
    db $07
Room2cCamera00Table::
    dw 56, 31, -82, 3746, 582, 22, 68, 113
    db $14, $28
Room2cCamera01Table::
    dw 15, -27, -61, 3892, 942, -23, -52, 110
    db $10, $28
Room2cCamera02Table::
    dw 19, -11, 47, 2268, 924, 12, 9, 110
    db $00, $28
Room2cCamera03Table::
    dw 58, 25, 79, 2308, 674, -14, 20, 110
    db $00, $28
Room2cCamera04Table::
    dw 6, 49, 117, 2248, 196, 13, -41, 110
    db $00, $68
Room2cCamera05Table::
    dw 77, 59, 140, 2574, 402, 8, -50, 110
    db $00, $28
Room2cCamera06Table::
    dw 19, -24, 112, 2256, 1004, -7, -13, 110
    db $00, $28
    db $ff

Bank007Room2dCameraTable:: ; 0x50f0
    db $04
Room2dCamera00Table::
    dw 0, 0, -59, 3940, 652, -17, -69, 110
    db $10, $28
Room2dCamera01Table::
    dw -17, -30, 80, 2132, 1162, 35, 15, 110
    db $00, $28
Room2dCamera02Table::
    dw 84, -9, -2, 3148, 842, -17, -18, 110
    db $18, $28
Room2dCamera03Table::
    dw 119, 21, -2, 3222, 546, 25, -4, 110
    db $18, $28
    db $ff

Bank007Room2eCameraTable:: ; 0x513a
    db $02
Room2eCamera00Table::
    dw -10, 35, -27, 388, 152, 0, -8, 110
    db $0c, $68
Room2eCamera01Table::
    dw 6, -43, 84, 1942, 1050, -28, -67, 110
    db $00, $28
    db $ff

Bank007Room2fCameraTable:: ; 0x5160
    db $05
Room2fCamera00Table::
    dw 58, -30, -54, 3674, 976, 4, -19, 110
    db $14, $28
Room2fCamera01Table::
    dw 68, -23, 50, 2500, 910, -45, -29, 110
    db $1c, $28
Room2fCamera02Table::
    dw -72, -24, 24, 1224, 752, 41, -49, 110
    db $08, $28
Room2fCamera03Table::
    dw 119, 21, -2, 3222, 546, 25, -4, 110
    db $00, $28
Room2fCamera04Table::
    dw -40, 0, 32, 2596, 676, 40, 74, 110
    db $00, $28
    db $ff

Bank007Room30CameraTable:: ; 0x51bc
    db $04
Room30Camera00Table::
    dw -85, 0, -61, 620, 668, 3, -57, 110
    db $0c, $28
Room30Camera01Table::
    dw -25, 4, -51, 302, 724, -25, 56, 110
    db $10, $28
Room30Camera02Table::
    dw -15, 0, 66, 1810, 826, 0, 62, 110
    db $00, $28
Room30Camera03Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room31CameraTable:: ; 0x5206
    db $06
Room31Camera00Table::
    dw 0, -19, 52, 2230, 874, 61, -43, 110
    db $00, $28
Room31Camera01Table::
    dw 0, -7, -62, 3986, 886, -3, -5, 110
    db $10, $28
Room31Camera02Table::
    dw -99, 0, -13, 1072, 904, -84, 47, 110
    db $08, $28
Room31Camera03Table::
    dw -120, 33, -48, 1060, 450, 53, 8, 110
    db $08, $28
Room31Camera04Table::
    dw -77, 44, 19, 1070, 38, -9, 10, 110
    db $08, $68
Room31Camera05Table::
    dw -121, -56, 64, 870, 860, -49, -193, 110
    db $08, $28
    db $ff

Bank007Room32CameraTable:: ; 0x5274
    db $08
Room32Camera00Table::
    dw -39, 20, -58, 3986, 790, 2, 70, 110
    db $10, $28
Room32Camera01Table::
    dw -4, 0, -56, 68, 758, 4, -13, 110
    db $10, $28
Room32Camera02Table::
    dw -6, 0, 82, 1986, 786, 2, 11, 110
    db $00, $28
Room32Camera03Table::
    dw -42, 7, 88, 2210, 766, 35, 4, 110
    db $00, $28
Room32Camera04Table::
    dw -6, 44, 92, 1916, 368, -9, 10, 110
    db $00, $28
Room32Camera05Table::
    dw -113, 42, 79, 1090, 306, -8, -108, 110
    db $08, $28
Room32Camera06Table::
    dw -6, 0, 82, 1986, 786, 2, 11, 110
    db $00, $28
Room32Camera07Table::
    dw -6, 44, 92, 1916, 368, -9, 10, 110
    db $00, $28
    db $ff

Bank007Room33CameraTable:: ; 0x5306
    db $02
Room33Camera00Table::
    dw -6, 13, -67, 106, 590, 7, -18, 110
    db $10, $28
Room33Camera01Table::
    dw -16, 45, 51, 1762, 210, 0, 0, 110
    db $04, $68
    db $ff

Bank007Room34CameraTable:: ; 0x532c
    db $03
Room34Camera00Table::
    dw -16, -3, -52, 324, 714, 0, -6, 110
    db $10, $28
Room34Camera01Table::
    dw 0, -46, 62, 1768, 1096, -36, -74, 110
    db $00, $28
Room34Camera02Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room35CameraTable:: ; 0x5364
    db $08
Room35Camera00Table::
    dw -15, 55, 89, 1394, 198, -125, -43, 115
    db $04, $68
Room35Camera01Table::
    dw 1, -3, 51, 2910, 600, 9, -38, 110
    db $18, $28
Room35Camera02Table::
    dw -116, 26, 59, 1340, 624, 3, 45, 110
    db $08, $28
Room35Camera03Table::
    dw 17, 1, 154, 2134, 700, 10, -29, 110
    db $00, $28
Room35Camera04Table::
    dw 79, 44, 123, 3008, 298, 14, 16, 110
    db $18, $28
Room35Camera05Table::
    dw -1, -2, -68, 94, 818, -14, 6, 110
    db $10, $28
Room35Camera06Table::
    dw -8, 37, -127, 80, 680, -62, 122, 110
    db $10, $28
Room35Camera07Table::
    dw 122, 6, 28, 3450, 518, 0, -63, 110
    db $00, $28
    db $ff

Bank007Room36CameraTable:: ; 0x53f6
    db $07
Room36Camera00Table::
    dw -80, -16, -103, 3902, 898, -35, -74, 110
    db $10, $28
Room36Camera01Table::
    dw -2, -47, -40, 3018, 974, 67, -80, 110
    db $18, $28
Room36Camera02Table::
    dw 105, 46, -59, 1086, 394, 3, 64, 110
    db $08, $28
Room36Camera03Table::
    dw -52, -22, 1, 4020, 678, 99, -49, 110
    db $10, $28
Room36Camera04Table::
    dw -67, -22, 105, 2066, 844, -49, 17, 110
    db $00, $28
Room36Camera05Table::
    dw -10, -19, 108, 2910, 744, -32, -32, 110
    db $18, $28
Room36Camera06Table::
    dw -10, -19, 108, 2910, 744, -32, -32, 110
    db $18, $28
    db $ff

Bank007Room37CameraTable:: ; 0x5476
    db $08
Room37Camera00Table::
    dw -93, 3, -85, 3936, 872, 4, -25, 110
    db $10, $28
Room37Camera01Table::
    dw -116, -11, -42, 2074, 666, -25, 39, 110
    db $00, $28
Room37Camera02Table::
    dw -102, -25, -13, 3564, 716, 8, 0, 110
    db $14, $28
Room37Camera03Table::
    dw -130, -23, 112, 1440, 1044, 0, 5, 190
    db $00, $28
Room37Camera04Table::
    dw -106, 13, 52, 2614, 814, 0, 21, 110
    db $1c, $28
Room37Camera05Table::
    dw -85, 0, 128, 2378, 720, -4, 4, 110
    db $1c, $28
Room37Camera06Table::
    dw 31, -16, 70, 3148, 666, -32, -79, 110
    db $18, $28
Room37Camera07Table::
    dw 99, -16, 37, 2098, 580, -36, -105, 110
    db $00, $28
    db $ff

Bank007Room38CameraTable:: ; 0x5508
    db $08
Room38Camera00Table::
    dw -102, 7, 145, 1814, 900, 40, 5, 110
    db $00, $28
Room38Camera01Table::
    dw -70, 18, 34, 934, 460, 22, -10, 110
    db $08, $28
Room38Camera02Table::
    dw 12, 0, 67, 2338, 840, -29, 33, 110
    db $00, $28
Room38Camera03Table::
    dw 0, 56, 119, 2138, 284, 10, 17, 110
    db $00, $28
Room38Camera04Table::
    dw 0, 14, -18, 78, 654, 6, -60, 110
    db $10, $28
Room38Camera05Table::
    dw 62, 13, 39, 2968, 642, 0, -15, 110
    db $18, $28
Room38Camera06Table::
    dw 0, 10, -73, 82, 660, 0, -13, 110
    db $10, $28
Room38Camera07Table::
    dw -90, 24, -94, 856, 660, 6, 22, 110
    db $08, $28
    db $ff

Bank007Room39CameraTable:: ; 0x559a
    db $08
Room39Camera00Table::
    dw 105, -65, -103, 3474, 1044, 61, -143, 110
    db $14, $28
Room39Camera01Table::
    dw 4, 0, -35, 16, 808, 21, -25, 110
    db $10, $28
Room39Camera02Table::
    dw 18, 2, 5, 3022, 850, 15, -6, 110
    db $18, $28
Room39Camera03Table::
    dw -64, 0, 52, 2240, 858, 0, -3, 110
    db $00, $28
Room39Camera04Table::
    dw -32, 0, 7, 1024, 742, 8, 8, 110
    db $08, $28
Room39Camera05Table::
    dw 18, 2, 18, 3188, 254, 5, -42, 110
    db $00, $28
Room39Camera06Table::
    dw 118, -50, 104, 2338, 1176, -34, -57, 110
    db $00, $28
Room39Camera07Table::
    dw 104, 17, -154, 3620, 780, -23, 70, 110
    db $14, $28
    db $ff

Bank007Room3aCameraTable:: ; 0x562c
    db $06
Room3aCamera00Table::
    dw -118, 45, -120, 2048, 58, 27, -12, 110
    db $00, $68
Room3aCamera01Table::
    dw -97, 0, -43, 2130, 776, 4, -31, 110
    db $00, $28
Room3aCamera02Table::
    dw -9, 0, -20, 2984, 616, -38, -71, 110
    db $18, $28
Room3aCamera03Table::
    dw 100, 41, 19, 2048, 190, 0, -21, 110
    db $00, $68
Room3aCamera04Table::
    dw 95, 6, 66, 2058, 824, -2, 16, 110
    db $00, $28
Room3aCamera05Table::
    dw 93, -6, 190, 2086, 644, 36, -60, 110
    db $00, $28
    db $ff

Bank007Room3bCameraTable:: ; 0x569a
    db $04
Room3bCamera00Table::
    dw 14, -13, 52, 2254, 906, 0, 0, 110
    db $00, $28
Room3bCamera01Table::
    dw 51, 0, 62, 2540, 882, 24, 32, 110
    db $1c, $28
Room3bCamera02Table::
    dw -64, 0, 78, 1634, 774, 4, -29, 110
    db $04, $28
Room3bCamera03Table::
    dw 1, 0, -69, 4044, 780, 0, -8, 110
    db $10, $28
    db $ff

Bank007Room3cCameraTable:: ; 0x56e4
    db $08
Room3cCamera00Table::
    dw 43, -27, 78, 1942, 1140, -34, 9, 110
    db $00, $28
Room3cCamera01Table::
    dw 47, -23, -47, 158, 1092, 45, 0, 92
    db $10, $28
Room3cCamera02Table::
    dw -46, 8, -60, 1256, 850, 22, 73, 110
    db $08, $28
Room3cCamera03Table::
    dw -38, -20, -63, 78, 760, 31, -55, 110
    db $10, $28
Room3cCamera04Table::
    dw -45, 3, 55, 1976, 656, -16, -62, 110
    db $00, $28
Room3cCamera05Table::
    dw -69, -12, 68, 1778, 912, 1, -26, 110
    db $00, $28
Room3cCamera06Table::
    dw 52, -12, -198, 20, 980, -6, 15, 171
    db $00, $28
Room3cCamera07Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room3dCameraTable:: ; 0x5776
    db $08
Room3dCamera00Table::
    dw -5, 0, 110, 2196, 692, 4, -50, 110
    db $00, $28
Room3dCamera01Table::
    dw -65, 0, 35, 1172, 778, 0, 9, 110
    db $00, $28
Room3dCamera02Table::
    dw 28, -12, 27, 3010, 1042, -13, 12, 110
    db $18, $28
Room3dCamera03Table::
    dw 125, 0, 20, 3014, 1046, -13, 59, 110
    db $18, $28
Room3dCamera04Table::
    dw 108, 22, -56, 88, 356, 11, -85, 110
    db $10, $28
Room3dCamera05Table::
    dw -56, 46, 21, 1092, 260, 3, 10, 110
    db $00, $28
Room3dCamera06Table::
    dw -82, 0, -72, 52, 918, -2, 17, 110
    db $10, $28
Room3dCamera07Table::
    dw -70, -4, 38, 1206, 758, 11, -17, 110
    db $08, $28
    db $ff

Bank007Room3eCameraTable:: ; 0x5808
    db $08
Room3eCamera00Table::
    dw -86, 46, -9, 2010, 22, 2, 0, 110
    db $00, $68
Room3eCamera01Table::
    dw -69, 10, -111, 2, 714, 0, 1, 110
    db $10, $28
Room3eCamera02Table::
    dw -80, 18, 82, 2066, 790, 0, 71, 110
    db $00, $28
Room3eCamera03Table::
    dw -21, -6, 74, 3136, 958, 0, 0, 110
    db $18, $28
Room3eCamera04Table::
    dw -140, 0, 68, 960, 888, 21, 22, 110
    db $08, $28
Room3eCamera05Table::
    dw 62, -9, 68, 3120, 914, 0, 0, 109
    db $18, $28
Room3eCamera06Table::
    dw 12, 14, -5, 4028, 694, -12, 25, 110
    db $10, $28
Room3eCamera07Table::
    dw 112, 51, 41, 0, 236, 5, -13, 110
    db $10, $28
    db $ff

Bank007Room3fCameraTable:: ; 0x589a
    db $07
Room3fCamera00Table::
    dw -50, -6, -137, 50, 946, 3, 3, 110
    db $10, $28
Room3fCamera01Table::
    dw -49, -25, 1, 2156, 952, 9, -25, 110
    db $00, $28
Room3fCamera02Table::
    dw -46, 0, 80, 2110, 976, 16, 50, 110
    db $00, $28
Room3fCamera03Table::
    dw 50, 0, 63, 3258, 730, 20, -81, 110
    db $18, $28
Room3fCamera04Table::
    dw 47, 0, -17, 42, 668, -4, -62, 110
    db $10, $28
Room3fCamera05Table::
    dw 54, -34, -53, 0, 1054, 0, 0, 110
    db $10, $28
Room3fCamera06Table::
    dw 52, -12, -198, 20, 980, -6, 15, 171
    db $10, $28
    db $ff

Bank007Room40CameraTable:: ; 0x591a
    db $05
Room40Camera00Table::
    dw 0, -5, -68, 0, 700, 0, -29, 110
    db $10, $28
Room40Camera01Table::
    dw 4, -3, 66, 2064, 856, 0, 7, 110
    db $00, $28
Room40Camera02Table::
    dw 103, -29, 13, 3160, 1122, 6, -18, 110
    db $00, $28
Room40Camera03Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room40Camera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room41CameraTable:: ; 0x5976
    db $08
Room41Camera00Table::
    dw 73, -9, 80, 2112, 896, -13, 3, 110
    db $00, $28
Room41Camera01Table::
    dw 59, 23, 48, 3286, 648, 0, 0, 110
    db $18, $28
Room41Camera02Table::
    dw -16, 6, 1, 250, 730, 0, 0, 110
    db $10, $28
Room41Camera03Table::
    dw -117, -44, -89, 1170, 962, -17, -127, 110
    db $08, $28
Room41Camera04Table::
    dw -142, 0, 2, 2118, 718, 4, -22, 110
    db $00, $28
Room41Camera05Table::
    dw -73, 44, -52, 3948, 170, 0, 0, 110
    db $00, $28
Room41Camera06Table::
    dw -16, 6, 1, 250, 730, 0, 0, 110
    db $00, $28
Room41Camera07Table::
    dw -142, 0, 2, 2118, 718, 4, -22, 110
    db $00, $28
    db $ff

Bank007Room42CameraTable:: ; 0x5a08
    db $01
Room42Camera00Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room43CameraTable:: ; 0x5a1c
    db $06
Room43Camera00Table::
    dw 67, 17, -6, 2936, 492, -29, -25, 110
    db $18, $28
Room43Camera01Table::
    dw -27, 0, 39, 1976, 768, -18, 59, 110
    db $00, $28
Room43Camera02Table::
    dw -28, 0, 131, 1928, 626, 0, 0, 110
    db $00, $28
Room43Camera03Table::
    dw -83, 38, 116, 1142, 570, -5, 86, 110
    db $08, $28
Room43Camera04Table::
    dw -17, -21, -48, 4034, 926, -7, -5, 110
    db $10, $28
Room43Camera05Table::
    dw -36, -37, -122, 196, 1058, 1, -17, 110
    db $10, $28
    db $ff

Bank007Room44CameraTable:: ; 0x5a8a
    db $08
Room44Camera00Table::
    dw 127, 8, -79, 3180, 942, 5, 6, 110
    db $18, $28
Room44Camera01Table::
    dw -23, -15, -66, 1010, 962, 7, -27, 110
    db $08, $28
Room44Camera02Table::
    dw 27, -5, 10, 2264, 914, 16, 50, 110
    db $00, $28
Room44Camera03Table::
    dw -16, 11, 49, 778, 642, 3, -15, 110
    db $08, $28
Room44Camera04Table::
    dw -2, 0, 108, 1142, 852, -4, 23, 110
    db $08, $28
Room44Camera05Table::
    dw 82, 0, 56, 2966, 742, 0, 3, 110
    db $18, $28
Room44Camera06Table::
    dw -39, 47, 64, 3086, 208, -2, 15, 110
    db $18, $28
Room44Camera07Table::
    dw -150, 0, 59, 1012, 968, 5, 42, 110
    db $08, $28
    db $ff

Bank007Room45CameraTable:: ; 0x5b1c
    db $04
Room45Camera00Table::
    dw 0, -18, 23, 2230, 856, -12, -22, 110
    db $00, $28
Room45Camera01Table::
    dw 2, 4, 72, 2054, 304, -7, 0, 110
    db $00, $28
Room45Camera02Table::
    dw -1, -2, -62, 268, 822, 16, 23, 110
    db $10, $28
Room45Camera03Table::
    dw -100, -8, 3, 1094, 912, 0, -9, 110
    db $08, $28
    db $ff

Bank007Room46CameraTable:: ; 0x5b66
    db $05
Room46Camera00Table::
    dw -62, -29, -16, 832, 1156, 0, -5, 110
    db $08, $28
Room46Camera01Table::
    dw -139, -21, 0, 970, 922, 6, 26, 110
    db $08, $28
Room46Camera02Table::
    dw 72, -21, 0, 3160, 1134, 5, 14, 110
    db $18, $28
Room46Camera03Table::
    dw 129, -5, -19, 3262, 854, 4, 0, 110
    db $18, $28
Room46Camera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room47CameraTable:: ; 0x5bc2
    db $06
Room47Camera00Table::
    dw 120, 18, 16, 3978, 542, 5, 0, 110
    db $10, $28
Room47Camera01Table::
    dw 119, 11, 143, 2180, 648, 18, 29, 110
    db $00, $28
Room47Camera02Table::
    dw 12, -10, 84, 1148, 788, 11, 0, 110
    db $08, $28
Room47Camera03Table::
    dw -37, 19, 62, 924, 610, -5, 8, 110
    db $08, $28
Room47Camera04Table::
    dw -34, 12, -16, 262, 520, 20, -13, 110
    db $10, $28
Room47Camera05Table::
    dw -24, 35, 68, 1948, 268, 7, 0, 110
    db $00, $28
    db $ff

Bank007Room48CameraTable:: ; 0x5c30
    db $08
Room48Camera00Table::
    dw -22, 43, -108, 3830, 324, -7, 0, 110
    db $10, $28
Room48Camera01Table::
    dw -41, 38, -30, 4030, 650, -5, 87, 110
    db $10, $28
Room48Camera02Table::
    dw 24, 26, 38, 2736, 468, -17, 20, 110
    db $1c, $28
Room48Camera03Table::
    dw 31, 68, 46, 1326, 24, 0, 0, 110
    db $00, $28
Room48Camera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room48Camera05Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room48Camera06Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room48Camera07Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room49CameraTable:: ; 0x5cc2
    db $02
Room49Camera00Table::
    dw 33, 28, -40, 3608, 460, 25, 34, 110
    db $14, $28
Room49Camera01Table::
    dw -35, 1, 73, 1640, 810, -3, 0, 110
    db $04, $28
    db $ff

Bank007Room4aCameraTable:: ; 0x5ce8
    db $03
Room4aCamera00Table::
    dw 40, 0, 54, 2416, 546, 8, -79, 110
    db $1c, $28
Room4aCamera01Table::
    dw -14, -5, -40, 262, 762, 0, 0, 110
    db $10, $28
Room4aCamera02Table::
    dw -59, 59, -9, 1184, 172, 0, 0, 110
    db $08, $28
    db $ff

Bank007Room4bCameraTable:: ; 0x5d20
    db $06
Room4bCamera00Table::
    dw -87, -15, 12, 3954, 846, -40, 86, 110
    db $10, $28
Room4bCamera01Table::
    dw -80, -46, 64, 2174, 890, 4, -23, 110
    db $00, $28
Room4bCamera02Table::
    dw 91, -7, 91, 3266, 640, 8, -37, 110
    db $18, $28
Room4bCamera03Table::
    dw -12, -24, 94, 904, 812, 21, -29, 110
    db $08, $28
Room4bCamera04Table::
    dw 103, -28, -11, 2132, 864, 41, 1, 110
    db $00, $28
Room4bCamera05Table::
    dw 31, -32, -97, 2928, 872, -48, 5, 110
    db $18, $28
    db $ff

Bank007Room4cCameraTable:: ; 0x5d8e
    db $08
Room4cCamera00Table::
    dw 109, -16, 153, 1964, 922, -36, 1, 110
    db $00, $28
Room4cCamera01Table::
    dw 89, 38, 45, 156, 508, -43, 57, 110
    db $10, $28
Room4cCamera02Table::
    dw 93, -8, 68, 2874, 798, -20, -7, 110
    db $18, $28
Room4cCamera03Table::
    dw 36, -24, 28, 826, 984, -14, -6, 110
    db $08, $28
Room4cCamera04Table::
    dw -82, 62, 54, 3142, 174, 27, 0, 110
    db $18, $68
Room4cCamera05Table::
    dw -101, 8, -66, 2138, 520, -25, 4, 110
    db $00, $28
Room4cCamera06Table::
    dw -98, 5, -128, 1170, 568, -15, 21, 110
    db $08, $28
Room4cCamera07Table::
    dw 6, -2, -139, 2996, 578, -14, -80, 110
    db $18, $28
    db $ff

Bank007Room4dCameraTable:: ; 0x5e20
    db $05
Room4dCamera00Table::
    dw 21, 21, -54, 4048, 696, 20, 71, 110
    db $10, $28
Room4dCamera01Table::
    dw -2, 0, 63, 2070, 766, 2, -28, 110
    db $00, $28
Room4dCamera02Table::
    dw -31, -79, 61, 1410, 1328, -28, -50, 110
    db $00, $28
Room4dCamera03Table::
    dw 74, 22, 61, 2552, 574, -3, 8, 110
    db $1c, $28
Room4dCamera04Table::
    dw 74, 22, 61, 2552, 574, -3, 8, 110
    db $00, $28
    db $ff

Bank007Room4eCameraTable:: ; 0x5e7c
    db $08
Room4eCamera00Table::
    dw 26, 17, -61, 104, 836, 15, 100, 110
    db $10, $28
Room4eCamera01Table::
    dw 94, -3, -119, 3072, 562, -67, -50, 110
    db $18, $28
Room4eCamera02Table::
    dw 3, 13, 32, 2324, 592, 42, 38, 110
    db $1c, $28
Room4eCamera03Table::
    dw -5, -38, 124, 1222, 896, -100, -47, 110
    db $08, $28
Room4eCamera04Table::
    dw 76, 19, 104, 1784, 690, 6, 50, 110
    db $00, $28
Room4eCamera05Table::
    dw 93, 20, -13, 62, 766, 8, 34, 110
    db $10, $28
Room4eCamera06Table::
    dw -96, -8, 163, 2148, 658, 5, 3, 110
    db $00, $28
Room4eCamera07Table::
    dw -97, -31, -82, 1296, 1126, -5, 8, 110
    db $00, $28
    db $ff

Bank007Room4fCameraTable:: ; 0x5f0e
    db $08
Room4fCamera00Table::
    dw 118, 5, -88, 2856, 728, 6, 11, 110
    db $18, $28
Room4fCamera01Table::
    dw 69, -18, -95, 2904, 938, -6, -9, 110
    db $18, $28
Room4fCamera02Table::
    dw -75, -11, -94, 1220, 922, 5, 8, 110
    db $08, $28
Room4fCamera03Table::
    dw -93, -7, -113, 122, 844, 5, 2, 110
    db $10, $28
Room4fCamera04Table::
    dw -59, -18, 33, 2222, 1040, -4, -3, 110
    db $00, $28
Room4fCamera05Table::
    dw -145, -39, 114, 1438, 1150, 18, -24, 110
    db $04, $28
Room4fCamera06Table::
    dw -96, -8, 163, 2148, 658, 5, 3, 110
    db $00, $28
Room4fCamera07Table::
    dw -97, -31, -82, 1296, 1126, -5, 8, 110
    db $08, $28
    db $ff

Bank007Room50CameraTable:: ; 0x5fa0
    db $08
Room50Camera00Table::
    dw 66, 58, 18, 3272, 232, -6, -19, 110
    db $1c, $28
Room50Camera01Table::
    dw -41, -44, -122, 4058, 1254, 0, -1, 110
    db $10, $28
Room50Camera02Table::
    dw -38, -30, -64, 4056, 988, -7, -39, 110
    db $10, $28
Room50Camera03Table::
    dw 41, 25, 49, 2728, 614, 2, 18, 110
    db $1c, $28
Room50Camera04Table::
    dw -75, 7, -26, 698, 646, 73, -44, 110
    db $0c, $28
Room50Camera05Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room50Camera06Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room50Camera07Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room51CameraTable:: ; 0x6032
    db $02
Room51Camera00Table::
    dw -13, -20, 85, 1732, 1044, -52, -2, 110
    db $04, $28
Room51Camera01Table::
    dw 0, 33, -14, 68, 150, 0, 0, 110
    db $10, $68
    db $ff

Bank007Room52CameraTable:: ; 0x6058
    db $08
Room52Camera00Table::
    dw 94, -24, -71, 2858, 1002, -3, 0, 110
    db $18, $28
Room52Camera01Table::
    dw -12, -30, -71, 1344, 1002, 7, 8, 110
    db $08, $28
Room52Camera02Table::
    dw -101, -15, -97, 1116, 852, -9, -22, 110
    db $08, $28
Room52Camera03Table::
    dw -22, -32, 100, 1880, 980, -6, -31, 110
    db $00, $28
Room52Camera04Table::
    dw -43, -72, -2, 252, 1302, -61, -81, 110
    db $10, $28
Room52Camera05Table::
    dw -12, -30, -71, 1344, 1002, 7, 8, 110
    db $00, $28
Room52Camera06Table::
    dw -12, -30, -71, 1344, 1002, 7, 8, 110
    db $00, $28
Room52Camera07Table::
    dw -19, 18, -76, 2740, 656, -14, -11, 110
    db $18, $28
    db $ff

Bank007Room53CameraTable:: ; 0x60ea
    db $04
Room53Camera00Table::
    dw 71, 3, -21, 3328, 738, 12, 33, 110
    db $00, $28
Room53Camera01Table::
    dw 71, 3, -21, 3328, 738, 12, 33, 110
    db $18, $28
Room53Camera02Table::
    dw -68, 0, 15, 1092, 862, -5, 31, 110
    db $08, $28
Room53Camera03Table::
    dw 2, 57, 73, 1910, 522, -12, 54, 110
    db $00, $28
    db $ff

Bank007Room54CameraTable:: ; 0x6134
    db $07
Room54Camera00Table::
    dw -30, 27, -92, 3902, 462, -6, 28, 110
    db $10, $28
Room54Camera01Table::
    dw -25, -32, 42, 2178, 1142, -4, -4, 110
    db $00, $28
Room54Camera02Table::
    dw -1, -33, 73, 2404, 1120, 14, 7, 110
    db $00, $28
Room54Camera03Table::
    dw 70, -17, 37, 2946, 944, 13, -8, 110
    db $18, $28
Room54Camera04Table::
    dw -79, 42, 54, 3142, 202, 17, 0, 110
    db $00, $28
Room54Camera05Table::
    dw -3, -43, 88, 2354, 1224, -8, 17, 110
    db $1c, $28
Room54Camera06Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room55CameraTable:: ; 0x61b4
    db $02
Room55Camera00Table::
    dw 61, 12, -26, 3188, 744, 18, 12, 110
    db $18, $28
Room55Camera01Table::
    dw -56, 0, 12, 912, 732, -30, -39, 110
    db $08, $28
    db $ff

Bank007Room56CameraTable:: ; 0x61da
    db $08
Room56Camera00Table::
    dw -30, -56, -3, 4026, 940, 74, -28, 110
    db $10, $28
Room56Camera01Table::
    dw -7, -56, 65, 964, 910, 15, -89, 110
    db $08, $28
Room56Camera02Table::
    dw 30, -51, -41, 1770, 1100, 23, 58, 110
    db $00, $28
Room56Camera03Table::
    dw -22, -32, 100, 1880, 980, -6, -31, 110
    db $00, $28
Room56Camera04Table::
    dw -47, -46, 10, 2154, 908, -5, -11, 110
    db $00, $28
Room56Camera05Table::
    dw 30, -36, 36, 2584, 1172, -8, 141, 110
    db $1c, $28
Room56Camera06Table::
    dw -46, -69, -71, 3768, 1168, 10, -96, 110
    db $10, $28
Room56Camera07Table::
    dw -19, 18, -76, 2740, 656, -14, -11, 110
    db $00, $28
    db $ff

Bank007Room57CameraTable:: ; 0x626c
    db $02
Room57Camera00Table::
    dw -62, 0, -23, 814, 970, 10, 99, 110
    db $08, $28
Room57Camera01Table::
    dw 68, 0, 0, 3168, 950, 10, 101, 110
    db $18, $28
    db $ff

Bank007Room58CameraTable:: ; 0x6292
    db $05
Room58Camera00Table::
    dw 77, -16, -16, 3312, 814, 7, -24, 110
    db $18, $28
Room58Camera01Table::
    dw -55, -8, -12, 708, 868, -26, 35, 110
    db $08, $28
Room58Camera02Table::
    dw -97, -19, 0, 910, 854, -1, 7, 110
    db $08, $28
Room58Camera03Table::
    dw 57, 24, -83, 3810, 542, -20, 0, 110
    db $14, $28
Room58Camera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room59CameraTable:: ; 0x62ee
    db $08
Room59Camera00Table::
    dw -129, -22, -83, 1224, 924, -25, 14, 110
    db $08, $28
Room59Camera01Table::
    dw -66, -46, -68, 2740, 1136, 26, -25, 110
    db $18, $28
Room59Camera02Table::
    dw 16, -11, -44, 4054, 624, -12, -86, 110
    db $10, $28
Room59Camera03Table::
    dw 1, -25, 11, 818, 988, 0, -7, 110
    db $08, $28
Room59Camera04Table::
    dw 78, -30, 42, 174, 988, 77, -19, 110
    db $10, $28
Room59Camera05Table::
    dw 37, 44, 77, 600, 510, -16, 17, 110
    db $0c, $28
Room59Camera06Table::
    dw 170, 2, 138, 2790, 770, -4, -3, 110
    db $18, $28
Room59Camera07Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room5aCameraTable:: ; 0x6380
    db $05
Room5aCamera00Table::
    dw -49, 39, -117, 186, 552, 10, 41, 110
    db $10, $28
Room5aCamera01Table::
    dw -35, -32, 0, 776, 1026, -18, -13, 110
    db $08, $28
Room5aCamera02Table::
    dw 45, -26, 0, 3304, 1010, 19, -13, 110
    db $18, $28
Room5aCamera03Table::
    dw 55, 22, -82, 3840, 448, 1, 12, 110
    db $10, $28
Room5aCamera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room5bCameraTable:: ; 0x63dc
    db $04
Room5bCamera00Table::
    dw 0, -43, -41, 128, 1206, -3, 2, 110
    db $10, $28
Room5bCamera01Table::
    dw 0, -42, 47, 1900, 1208, -10, 10, 110
    db $00, $28
Room5bCamera02Table::
    dw -59, 25, -60, 726, 474, 42, -11, 110
    db $0c, $28
Room5bCamera03Table::
    dw -45, 42, -83, 290, 566, 11, 24, 110
    db $00, $28
    db $ff

Bank007Room5cCameraTable:: ; 0x6426
    db $06
Room5cCamera00Table::
    dw -67, -34, -29, 1204, 954, 3, -7, 110
    db $08, $28
Room5cCamera01Table::
    dw -1, -31, -16, 2872, 940, 43, -26, 110
    db $18, $28
Room5cCamera02Table::
    dw 0, -11, 53, 2204, 828, 34, -4, 110
    db $00, $28
Room5cCamera03Table::
    dw 112, 0, 43, 3270, 850, 27, 27, 110
    db $18, $28
Room5cCamera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room5cCamera05Table::
    dw 157, 59, 51, 3218, 278, -3, 19, 110
    db $18, $28
    db $ff

Bank007Room5dCameraTable:: ; 0x6494
    db $05
Room5dCamera00Table::
    dw 0, -9, -40, 224, 796, 36, 7, 110
    db $10, $28
Room5dCamera01Table::
    dw -6, -14, 42, 1922, 832, 2, 0, 110
    db $00, $28
Room5dCamera02Table::
    dw -75, 2, -5, 838, 676, -7, 45, 110
    db $08, $28
Room5dCamera03Table::
    dw 81, 40, 62, 2590, 532, -21, 73, 110
    db $1c, $28
Room5dCamera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room5eCameraTable:: ; 0x64f0
    db $08
Room5eCamera00Table::
    dw 109, -21, 62, 2240, 1060, -1, 1, 110
    db $00, $28
Room5eCamera01Table::
    dw 103, -23, -41, 3908, 1050, -10, -2, 110
    db $10, $28
Room5eCamera02Table::
    dw 61, -32, -102, 2936, 1156, 0, 23, 110
    db $18, $28
Room5eCamera03Table::
    dw 0, -47, -93, 1184, 1152, 6, -32, 110
    db $08, $28
Room5eCamera04Table::
    dw -85, 6, -84, 1360, 514, 11, 28, 110
    db $08, $28
Room5eCamera05Table::
    dw -88, -30, -18, 2236, 1164, -5, 7, 110
    db $00, $28
Room5eCamera06Table::
    dw -95, -36, 112, 2232, 996, 11, -43, 110
    db $00, $28
Room5eCamera07Table::
    dw -25, -54, 96, 2940, 998, 14, -72, 110
    db $18, $28
    db $ff

Bank007Room5fCameraTable:: ; 0x6582
    db $05
Room5fCamera00Table::
    dw -51, -26, -5, 924, 906, 15, -24, 110
    db $08, $28
Room5fCamera01Table::
    dw 40, -18, 0, 3188, 876, -19, -7, 110
    db $18, $28
Room5fCamera02Table::
    dw 97, 23, 9, 3194, 464, 15, 24, 110
    db $18, $28
Room5fCamera03Table::
    dw -99, 36, 24, 1152, 406, 1, 43, 110
    db $08, $28
Room5fCamera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room60CameraTable:: ; 0x65de
    db $08
Room60Camera00Table::
    dw -2, -20, 35, 1106, 916, 0, 14, 110
    db $08, $28
Room60Camera01Table::
    dw 138, -12, 42, 2918, 916, -4, 21, 110
    db $18, $28
Room60Camera02Table::
    dw 7, -17, -63, 160, 826, -2, -9, 110
    db $10, $28
Room60Camera03Table::
    dw 128, 64, 31, 2976, 446, 26, 176, 110
    db $18, $28
Room60Camera04Table::
    dw -59, 18, -60, 232, 428, 25, -33, 110
    db $10, $28
Room60Camera05Table::
    dw -43, 8, 38, 1986, 254, 0, 0, 110
    db $00, $28
Room60Camera06Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room60Camera07Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room61CameraTable:: ; 0x6670
    db $05
Room61Camera00Table::
    dw 128, 6, -7, 3166, 678, 8, -5, 110
    db $18, $28
Room61Camera01Table::
    dw 78, -21, -6, 3168, 1046, 4, 5, 110
    db $18, $28
Room61Camera02Table::
    dw -61, -25, -6, 946, 1060, 8, -5, 110
    db $08, $28
Room61Camera03Table::
    dw -137, 10, -13, 878, 666, 5, 16, 110
    db $08, $28
Room61Camera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room62CameraTable:: ; 0x66cc
    db $06
Room62Camera00Table::
    dw 47, -20, -60, 3974, 846, -15, -24, 110
    db $10, $28
Room62Camera01Table::
    dw 90, -37, 31, 3024, 634, -11, -209, 110
    db $18, $28
Room62Camera02Table::
    dw -30, 10, -54, 182, 664, 49, -1, 110
    db $10, $28
Room62Camera03Table::
    dw -52, 21, 57, 1838, 650, 52, 77, 110
    db $00, $28
Room62Camera04Table::
    dw -45, 71, -55, 144, 152, 12, -26, 110
    db $10, $28
Room62Camera05Table::
    dw 103, 61, -4, 3482, 414, 0, -3, 110
    db $14, $28
    db $ff

Bank007Room63CameraTable:: ; 0x673a
    db $05
Room63Camera00Table::
    dw -51, -38, -47, 680, 1004, 1, -4, 110
    db $0c, $28
Room63Camera01Table::
    dw 65, -35, -34, 3264, 1012, 0, 4, 110
    db $18, $28
Room63Camera02Table::
    dw -3, -12, 55, 2052, 770, -12, 5, 110
    db $00, $28
Room63Camera03Table::
    dw -137, 10, -13, 878, 666, 5, 16, 110
    db $00, $28
Room63Camera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room64CameraTable:: ; 0x6796
    db $04
Room64Camera00Table::
    dw 36, -23, -123, 142, 1040, 0, 0, 110
    db $10, $28
Room64Camera01Table::
    dw 48, -20, 21, 1910, 1018, -48, 9, 110
    db $00, $28
Room64Camera02Table::
    dw -46, -32, 47, 936, 1022, -18, -44, 110
    db $08, $28
Room64Camera03Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room65CameraTable:: ; 0x67e0
    db $08
Room65Camera00Table::
    dw -3, 23, 154, 2004, 456, 3, 0, 110
    db $00, $28
Room65Camera01Table::
    dw 1, -4, 96, 1984, 850, -10, 25, 110
    db $00, $28
Room65Camera02Table::
    dw -42, -10, 10, 1070, 914, 0, 12, 110
    db $08, $28
Room65Camera03Table::
    dw -115, -18, -79, 96, 992, 18, 16, 110
    db $10, $28
Room65Camera04Table::
    dw 108, -16, 21, 2936, 926, -11, 0, 110
    db $18, $28
Room65Camera05Table::
    dw 185, 0, 20, 2946, 720, -7, -7, 110
    db $18, $28
Room65Camera06Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room65Camera07Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room66CameraTable:: ; 0x6872
    db $01
Room66Camera00Table::
    dw 0, -52, -75, 4030, 1324, -18, 6, 110
    db $08, $28
    db $ff

Bank007Room67CameraTable:: ; 0x6886
    db $02
Room67Camera00Table::
    dw -26, -62, 45, 1918, 1012, -16, -104, 110
    db $00, $28
Room67Camera01Table::
    dw 16, -41, -40, 3840, 1008, -2, -35, 110
    db $10, $28
    db $ff

Bank007Room68CameraTable:: ; 0x68ac
    db $08
Room68Camera00Table::
    dw 32, -20, 76, 3168, 944, 4, -8, 110
    db $18, $28
Room68Camera01Table::
    dw 72, -23, -10, 4022, 948, -8, -14, 110
    db $10, $28
Room68Camera02Table::
    dw 114, 51, -134, 3548, 372, 3, 6, 110
    db $14, $28
Room68Camera03Table::
    dw -101, -12, 76, 944, 872, 0, -14, 110
    db $08, $28
Room68Camera04Table::
    dw -42, -9, 51, 1948, 880, -13, -2, 110
    db $00, $28
Room68Camera05Table::
    dw -45, -11, -105, 66, 884, 0, -7, 110
    db $10, $28
Room68Camera06Table::
    dw -88, 0, -8, 4010, 898, -5, 44, 110
    db $10, $28
Room68Camera07Table::
    dw -71, 26, -103, 3850, 414, -8, -7, 110
    db $10, $28
    db $ff

Bank007Room69CameraTable:: ; 0x693e
    db $08
Room69Camera00Table::
    dw -97, -21, 15, 2122, 914, -31, 0, 110
    db $00, $28
Room69Camera01Table::
    dw -98, -9, -102, 3966, 796, 2, 0, 110
    db $10, $28
Room69Camera02Table::
    dw -54, 27, -94, 3298, 314, 0, -3, 110
    db $18, $28
Room69Camera03Table::
    dw -21, -23, -10, 3148, 926, 0, 0, 110
    db $18, $28
Room69Camera04Table::
    dw 62, -31, 31, 2262, 920, 35, -51, 110
    db $00, $28
Room69Camera05Table::
    dw 76, -25, -50, 2952, 898, 4, -55, 110
    db $18, $28
Room69Camera06Table::
    dw -66, -20, -49, 1116, 950, -4, 0, 110
    db $08, $28
Room69Camera07Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room6aCameraTable:: ; 0x69d0
    db $06
Room6aCamera00Table::
    dw 3, -15, 27, 3274, 622, 8, -5, 110
    db $18, $28
Room6aCamera01Table::
    dw 83, -40, -43, 126, 1106, -13, -33, 110
    db $10, $28
Room6aCamera02Table::
    dw 28, 43, -44, 1126, 280, 20, -23, 110
    db $08, $68
Room6aCamera03Table::
    dw -8, -12, -39, 1078, 924, 13, -6, 110
    db $08, $28
Room6aCamera04Table::
    dw -70, -29, -45, 3836, 950, -9, -46, 110
    db $10, $28
Room6aCamera05Table::
    dw -80, -16, 66, 2240, 964, -17, 13, 110
    db $00, $28
    db $ff

Bank007Room6bCameraTable:: ; 0x6a3e
    db $01
Room6bCamera00Table::
    dw 0, 56, -13, 3698, 98, -9, 7, 110
    db $0c, $68
    db $ff

Bank007Room6cCameraTable:: ; 0x6a52
    db $05
Room6cCamera00Table::
    dw -71, -19, 23, 830, 986, -3, -2, 110
    db $08, $28
Room6cCamera01Table::
    dw 66, -23, 30, 3252, 1016, 27, 3, 110
    db $18, $28
Room6cCamera02Table::
    dw 70, -25, -55, 130, 1006, 5, -7, 110
    db $10, $28
Room6cCamera03Table::
    dw 97, 3, -55, 3842, 634, -3, -11, 110
    db $10, $28
Room6cCamera04Table::
    dw 108, -16, 21, 2936, 926, -11, 0, 110
    db $00, $28
    db $ff

Bank007Room6dCameraTable:: ; 0x6aae
    db $07
Room6dCamera00Table::
    dw 0, -25, -46, 222, 952, 41, -14, 110
    db $10, $28
Room6dCamera01Table::
    dw 0, -36, 53, 1804, 972, -48, -51, 110
    db $00, $28
Room6dCamera02Table::
    dw -58, -35, -36, 824, 1088, -8, -14, 110
    db $08, $28
Room6dCamera03Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room6dCamera04Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room6dCamera05Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room6dCamera06Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room6eCameraTable:: ; 0x6b2e
    db $08
Room6eCamera00Table::
    dw 47, -19, 92, 2900, 966, -3, 30, 110
    db $18, $28
Room6eCamera01Table::
    dw 84, -27, -1, 2216, 950, 10, 0, 110
    db $00, $28
Room6eCamera02Table::
    dw 31, -29, -105, 3366, 1076, 15, 35, 110
    db $18, $28
Room6eCamera03Table::
    dw -58, -41, -64, 4020, 1064, 18, -3, 110
    db $10, $28
Room6eCamera04Table::
    dw -45, -42, 125, 2128, 1108, -36, 40, 185
    db $00, $28
Room6eCamera05Table::
    dw 34, 30, -74, 2498, 428, 24, 94, 110
    db $00, $28
Room6eCamera06Table::
    dw 90, -45, 52, 2268, 1188, -28, 20, 110
    db $00, $28
Room6eCamera07Table::
    dw 54, -26, -136, 3710, 1100, 0, 0, 110
    db $00, $28
    db $ff

Bank007Room6fCameraTable:: ; 0x6bc0
    db $08
Room6fCamera00Table::
    dw 70, -58, 2, 3234, 1320, -23, 0, 110
    db $18, $28
Room6fCamera01Table::
    dw -18, -47, 10, 822, 1240, -22, 0, 110
    db $08, $28
Room6fCamera02Table::
    dw -64, -9, 1, 792, 608, 10, 23, 110
    db $08, $28
Room6fCamera03Table::
    dw -56, -33, -17, 1114, 712, 6, -32, 110
    db $08, $28
Room6fCamera04Table::
    dw 69, -29, -3, 2900, 710, -1, -29, 110
    db $18, $28
Room6fCamera05Table::
    dw 122, -3, -7, 2946, 514, -3, 0, 110
    db $18, $28
Room6fCamera06Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
Room6fCamera07Table::
    dw 0, 0, 0, 0, 0, 0, 0, 0
    db $00, $28
    db $ff

Bank007Room70CameraTable:: ; 0x6c52
    db $02
Room70Camera00Table::
    dw -7, -49, -53, 3930, 1134, -45, -25, 110
    db $10, $28
Room70Camera01Table::
    dw 0, -41, 53, 2218, 1124, 4, 3, 110
    db $00, $28
    db $ff

Bank007Room71CameraTable:: ; 0x6c78
    db $02
Room71Camera00Table::
    dw 0, 14, -46, 78, 456, 20, -19, 110
    db $10, $28
Room71Camera01Table::
    dw -16, 7, 73, 1920, 566, 6, -21, 110
    db $00, $28
    db $ff

Bank007Room72CameraTable:: ; 0x6c9e
    db $01
Room72Camera00Table::
    dw 2, 38, -11, 3540, 74, 0, 15, 110
    db $0c, $68
    db $ff

Bank007Room73CameraTable:: ; 0x6cb2
    db $05
Room73Camera00Table::
    dw 105, 0, 85, 2272, 758, 0, 2, 110
    db $00, $28
Room73Camera01Table::
    dw 67, -14, 7, 2830, 894, -10, 0, 110
    db $18, $28
Room73Camera02Table::
    dw -54, -15, 0, 1244, 894, 26, 13, 110
    db $08, $28
Room73Camera03Table::
    dw -153, 9, 1, 1208, 552, -2, 0, 110
    db $08, $28
Room73Camera04Table::
    dw -111, 40, 59, 2148, 408, 0, 0, 110
    db $00, $28
    db $ff

bank007_6d0e:
    ds $12f2, $00
